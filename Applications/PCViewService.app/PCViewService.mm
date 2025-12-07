int64x2_t sub_1000020D0@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a4;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 48) = 0u;
  *(a1 + 64) = result;
  return result;
}

int64x2_t sub_100002130@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v13 = 0;
  v14 = 0;
  sub_10000242C(&v14, &v13, a5, a6);
  v11 = v13;
  v10 = v14;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = a4;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 48) = 0u;
  *(a1 + 64) = result;
  return result;
}

double sub_1000021B8(uint64_t a1, double a2, double a3)
{
  v6 = 0;
  v7 = 0.0;
  sub_10000242C(&v7, &v6, a2, a3);
  v5 = v6;
  result = v7;
  *(a1 + 24) = v7;
  *(a1 + 32) = v5;
  return result;
}

void sub_1000021F8(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 40);
  if (vabdd_f64(*a1, v6) <= *(a1 + 48) && fabs(v5) <= *(a1 + 56))
  {
    v27 = *(a1 + 80);
    *(a2 + 64) = *(a1 + 64);
    *(a2 + 80) = v27;
    *(a2 + 96) = *(a1 + 96);
    v28 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v28;
    v29 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v29;
    return;
  }

  v7 = *a1 - v6;
  v8 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v8;
  v9 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v9;
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v33 = v10;
  v34 = v6;
  v32 = v11;
  if (v10 == *(a1 + 64) && v11 == *(a1 + 72))
  {
    v12 = *(a1 + 80);
    v13 = *(a1 + 88);
    v15 = *(a1 + 96);
    v35 = *(a1 + 104);
    v14 = -v12;
  }

  else
  {
    v12 = v11 * 0.5;
    v13 = sqrt(v10);
    v14 = -(v11 * 0.5);
    v15 = sqrt(v13 * v13 - v12 * v12);
    v35 = sqrt(v12 * v12 - v13 * v13);
  }

  v16 = exp(v14 * a3);
  v17 = v16;
  v18 = v5 + v12 * v7;
  if (v12 >= v13)
  {
    if (v12 <= v13)
    {
      v21 = v7 + v18 * a3;
      v26 = v21 * (v16 * v14) + v16 * v18;
      goto LABEL_13;
    }

    v23 = v35 * a3;
    __x = v35 * a3;
    v24 = v18 / v35;
    v31 = cosh(v23);
    v25 = sinh(__x);
    v21 = v24 * v25 + v7 * v31;
    v22 = v35 * (v24 * v31) + v7 * v25 * v35;
  }

  else
  {
    v19 = v18 / v15;
    v20 = __sincos_stret(v15 * a3);
    v21 = v20.__sinval * v19 + v7 * v20.__cosval;
    v22 = v15 * (v20.__cosval * v19) + -(v20.__sinval * v7) * v15;
  }

  v26 = v17 * v14 * v21 + v17 * v22;
LABEL_13:
  *a2 = v34 + v17 * v21;
  *(a2 + 8) = v26;
  *(a2 + 64) = v33;
  *(a2 + 72) = v32;
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  *(a2 + 96) = v15;
  *(a2 + 104) = v35;
}

double sub_1000023C8(double *a1, double *a2, double a3, double a4)
{
  result = sqrt(a3);
  if (a1)
  {
    *a1 = a4 / (result + result);
  }

  if (a2)
  {
    result = 6.28318531 / result;
    *a2 = result;
  }

  return result;
}

double sub_1000023F4(double *a1, double *a2, double result, double a4, double a5)
{
  if (a1)
  {
    v5 = sqrt(result * a4);
    *a1 = a5 / (v5 + v5);
  }

  if (a2)
  {
    result = 6.28318531 / sqrt(a4 / result);
    *a2 = result;
  }

  return result;
}

double sub_10000242C(double *a1, double *a2, double result, double a4)
{
  v4 = 6.28318531 / a4 * (6.28318531 / a4);
  if (a1)
  {
    *a1 = v4;
  }

  if (a2)
  {
    v5 = sqrt(v4);
    result = (v5 + v5) * result;
    *a2 = result;
  }

  return result;
}

double sub_10000245C(double *a1, double *a2, double result, double a4, double a5)
{
  v5 = sqrt(a4 / result);
  v6 = 6.28318531 / (6.28318531 / v5) * (6.28318531 / (6.28318531 / v5));
  if (a1)
  {
    *a1 = v6;
  }

  if (a2)
  {
    v7 = sqrt(result * a4);
    v8 = sqrt(v6);
    result = a5 / (v7 + v7) * (v8 + v8);
    *a2 = result;
  }

  return result;
}

__n128 sub_1000024A8@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D3>, double a5@<D4>)
{
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 16) = 0u;
  v9 = a1 + 16;
  *a1 = a2;
  *(a1 + 8) = a3;
  v23 = 0.0;
  v24 = 0.0;
  sub_10000242C(&v24, &v23, 1.0, 0.5);
  sub_1000020D0(v9, a4, 0.0, a4, v24, v23);
  sub_1000020D0(&v16, a5, 0.0, a5, v24, v23);
  v10 = v21;
  *(a1 + 192) = v20;
  *(a1 + 208) = v10;
  *(a1 + 224) = v22;
  v11 = v17;
  *(a1 + 128) = v16;
  *(a1 + 144) = v11;
  v12 = v19;
  *(a1 + 160) = v18;
  *(a1 + 176) = v12;
  sub_1000020D0(&v16, a2, 0.0, a2, v24, v23);
  v13 = v21;
  *(a1 + 304) = v20;
  *(a1 + 320) = v13;
  *(a1 + 336) = v22;
  v14 = v17;
  *(a1 + 240) = v16;
  *(a1 + 256) = v14;
  result = v19;
  *(a1 + 272) = v18;
  *(a1 + 288) = result;
  return result;
}

uint64_t sub_1000025C8(uint64_t result, double a2)
{
  *(result + 280) = a2;
  *(result + 240) = a2;
  *(result + 248) = 0;
  return result;
}

void sub_1000025D8(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 240) = a3;
    *(a1 + 248) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    sub_10000242C(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 264) = v7;
    *(a1 + 272) = v5;
    a3 = a2;
  }

  *(a1 + 280) = a3;
}

void sub_100002644(uint64_t a1, double a2, double a3, double a4)
{
  if (a4 == 0.0)
  {
    *(a1 + 280) = a2;
  }

  else
  {
    sub_1000025D8(a1, a2, a4);
    a2 = a3;
  }

  *(a1 + 240) = a2;
  *(a1 + 248) = 0;
}

uint64_t sub_100002698(uint64_t result, double a2)
{
  *(result + 56) = a2;
  *(result + 16) = a2;
  *(result + 24) = 0;
  return result;
}

void sub_1000026A8(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 16) = a2;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    sub_10000242C(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 40) = v7;
    *(a1 + 48) = v5;
  }

  *(a1 + 56) = a2;
}

uint64_t sub_100002710(uint64_t result, double a2)
{
  *(result + 168) = a2;
  *(result + 128) = a2;
  *(result + 136) = 0;
  return result;
}

void sub_100002720(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 128) = a2;
    *(a1 + 136) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    sub_10000242C(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 152) = v7;
    *(a1 + 160) = v5;
  }

  *(a1 + 168) = a2;
}

double sub_100002788@<D0>(void *__src@<X0>, double *a2@<X8>, double a3@<D0>)
{
  memcpy(a2, __src, 0x170uLL);
  v6 = *(__src + 6);
  v39 = *(__src + 5);
  v40 = v6;
  v41 = *(__src + 7);
  v7 = *(__src + 2);
  v35 = *(__src + 1);
  v36 = v7;
  v8 = *(__src + 4);
  v37 = *(__src + 3);
  v38 = v8;
  sub_1000021F8(&v35, (a2 + 2), a3);
  v9 = *(a2 + 13);
  v32 = *(a2 + 12);
  v33 = v9;
  v34 = *(a2 + 14);
  v10 = *(a2 + 9);
  v28 = *(a2 + 8);
  v29 = v10;
  v11 = *(a2 + 11);
  v30 = *(a2 + 10);
  v31 = v11;
  sub_1000021F8(&v28, &v35, a3);
  v12 = v40;
  *(a2 + 12) = v39;
  *(a2 + 13) = v12;
  *(a2 + 14) = v41;
  v13 = v36;
  *(a2 + 8) = v35;
  *(a2 + 9) = v13;
  v14 = v38;
  *(a2 + 10) = v37;
  *(a2 + 11) = v14;
  v15 = *(a2 + 20);
  v32 = *(a2 + 19);
  v33 = v15;
  v34 = *(a2 + 21);
  v16 = *(a2 + 16);
  v28 = *(a2 + 15);
  v29 = v16;
  v17 = *(a2 + 18);
  v30 = *(a2 + 17);
  v31 = v17;
  sub_1000021F8(&v28, &v35, a3);
  v18 = v40;
  *(a2 + 19) = v39;
  *(a2 + 20) = v18;
  *(a2 + 21) = v41;
  v19 = v36;
  *(a2 + 15) = v35;
  *(a2 + 16) = v19;
  v20 = v38;
  *(a2 + 17) = v37;
  *(a2 + 18) = v20;
  *&v20 = *a2;
  *&v19 = a2[1];
  v21 = a2[2];
  v22 = a2[16];
  v23 = a2[30];
  v24 = *(a2 + 44);
  v25 = *(a2 + 45);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  sub_100002130(&v35, *&v20, *&v19, v23, v21, v22);
  *&v38 = v24;
  *(&v38 + 1) = v25;
  v27[4] = v39;
  v27[5] = v40;
  v27[6] = v41;
  v27[0] = v35;
  v27[1] = v36;
  v27[2] = v37;
  v27[3] = v38;
  sub_1000021F8(v27, &v28, a3);
  result = *&v28;
  *a2 = v28;
  return result;
}

__n128 sub_10000293C@<Q0>(__n128 *a1@<X0>, _OWORD *a2@<X8>)
{
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  sub_100002130(a2, a1->n128_f64[0], a1->n128_f64[1], a1[15].n128_f64[0], a1[1].n128_f64[0], a1[8].n128_f64[0]);
  result = a1[22];
  a2[3] = result;
  return result;
}

BOOL sub_100002990(void *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = a1[44];
  v4 = a1[45];
  v5 = (a1 + 2);
  v6 = *(a1 + 2);
  v7 = (a1 + 16);
  v8 = *(a1 + 16);
  v9 = (a1 + 30);
  v10 = *(a1 + 30);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  sub_100002130(&v28, v1, v2, v10, v6, v8);
  *&v31 = v3;
  *(&v31 + 1) = v4;
  v25 = v32;
  v26 = v33;
  v27 = v34;
  v21 = v28;
  v22 = v29;
  v23 = v30;
  v24 = v31;
  result = sub_1000020FC(&v21);
  if (result)
  {
    v12 = v9[5];
    v25 = v9[4];
    v26 = v12;
    v27 = v9[6];
    v13 = v9[1];
    v21 = *v9;
    v22 = v13;
    v14 = v9[3];
    v23 = v9[2];
    v24 = v14;
    result = sub_1000020FC(&v21);
    if (result)
    {
      v15 = v5[5];
      v25 = v5[4];
      v26 = v15;
      v27 = v5[6];
      v16 = v5[1];
      v21 = *v5;
      v22 = v16;
      v17 = v5[3];
      v23 = v5[2];
      v24 = v17;
      result = sub_1000020FC(&v21);
      if (result)
      {
        v18 = v7[5];
        v25 = v7[4];
        v26 = v18;
        v27 = v7[6];
        v19 = v7[1];
        v21 = *v7;
        v22 = v19;
        v20 = v7[3];
        v23 = v7[2];
        v24 = v20;
        return sub_1000020FC(&v21);
      }
    }
  }

  return result;
}

double sub_1000034E8(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    return a2;
  }

  if (a1 < a2)
  {
    a3 = -a3;
  }

  return a2 + (1.0 - 1.0 / (a4 * ((a1 - a2) / a3) + 1.0)) * a3;
}

double sub_100003524(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    return a2;
  }

  if (a1 < a2)
  {
    a3 = -a3;
  }

  return a2 + (-1.0 / ((a1 - a2) / a3 + -1.0) + -1.0) / a4 * a3;
}

void *sub_1000035B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_1000035D4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1000035F0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003668(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000036E8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100003748@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003774(uint64_t a1)
{
  v2 = sub_100003CF0(&qword_1000D99D8, type metadata accessor for NSKeyValueChangeKey, &unk_100090D54);
  v3 = sub_100003CF0(&unk_1000D99E0, type metadata accessor for NSKeyValueChangeKey, &unk_100090B50);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003830@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003878(uint64_t a1)
{
  v2 = sub_100003CF0(&qword_1000DBBC0, type metadata accessor for LaunchOptionsKey, &unk_100090D10);
  v3 = sub_100003CF0(&qword_1000D99D0, type metadata accessor for LaunchOptionsKey, &unk_100090C64);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003934(uint64_t a1)
{
  v2 = sub_100003CF0(&qword_1000D9958, type metadata accessor for CAMediaTimingFunctionName, &unk_100090764);
  v3 = sub_100003CF0(&qword_1000D9960, type metadata accessor for CAMediaTimingFunctionName, &unk_100090704);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000039F0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100003A2C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003A80(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100003AF4(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

__n128 initializeBufferWithCopyOfBuffer for SpringState(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SpringState(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SpringState(uint64_t result, int a2, int a3)
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

uint64_t sub_100003CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100003DF8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100004038(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000040F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000041BC(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100004238()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000D9B10);
  sub_1000047A0(v0, qword_1000D9B10);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000042B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 alternateBundleForAssetType:a1];

  if (v9)
  {
    v10 = [v9 URLForResource:SFDeviceAssetNameAdjustments withExtension:0];
    if (v10)
    {
      v11 = v10;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = String._bridgeToObjectiveC()();
      v13 = [v9 pathForResource:v12 ofType:0];

      if (v13)
      {
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        *a2 = v14;
        a2[1] = v16;
        v17 = type metadata accessor for AdjustedMovie(0);
        (*(v5 + 32))(a2 + *(v17 + 20), v7, v4);
        return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
      }

      else
      {
        if (qword_1000D9730 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_1000047A0(v29, qword_1000D9B10);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "### Could not find movie path", v32, 2u);
        }

        (*(v5 + 8))(v7, v4);
        v33 = type metadata accessor for AdjustedMovie(0);
        return (*(*(v33 - 8) + 56))(a2, 1, 1, v33);
      }
    }

    if (qword_1000D9730 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000047A0(v23, qword_1000D9B10);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "### Could not find adjustment url", v26, 2u);
    }
  }

  else
  {
    if (qword_1000D9730 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000047A0(v19, qword_1000D9B10);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "### Could not find asset bundle", v22, 2u);
    }
  }

  v27 = type metadata accessor for AdjustedMovie(0);
  v28 = *(*(v27 - 8) + 56);

  return v28(a2, 1, 1, v27);
}

uint64_t sub_1000047A0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_1000047D8()
{
  if (qword_1000D9730 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000D9B10);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000343F8(0xD000000000000014, 0x80000001000A0CE0, &v12);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000529C(v4);
  }

  v5 = [objc_allocWithZone(SFMediaPlayerView) init];
  v6 = [v5 layer];
  [v6 setShouldRasterize:1];

  v7 = [v5 layer];
  v8 = [objc_opt_self() mainScreen];
  [v8 scale];
  v10 = v9;

  [v7 setRasterizationScale:v10 + v10];
  return v5;
}

uint64_t sub_1000049D8(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D9730 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000D9B10);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000343F8(0xD000000000000018, 0x80000001000A0CC0, &v24);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_10000529C(v10);
  }

  URL.init(fileURLWithPath:isDirectory:)();
  [a1 setPausesAfterEachItem:1];
  v11 = objc_allocWithZone(SFMediaPlayerItem);
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v15 = [v11 initWithURL:v13];

  [a1 addMovieItem:v15];
  [a1 play];
  v16 = [objc_opt_self() currentTraitCollection];
  v17 = [v16 userInterfaceStyle];

  if (v17 == 2)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  v19 = type metadata accessor for AdjustedMovie(0);
  URL._bridgeToObjectiveC()(*(v19 + 20));
  v21 = v20;
  [a1 updateViewForAssetType:v18 adjustmentsURL:v20];

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100004D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000050F8(&qword_1000D9C50, &unk_100090DC8);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100004DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000050F8(&qword_1000D9C50, &unk_100090DC8);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100004E48(uint64_t a1)
{
  sub_1000050F8(&qword_1000D9C50, &unk_100090DC8);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t *sub_100004E8C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100004F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdjustedMovie(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100004F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdjustedMovie(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100005014(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000504C(uint64_t a1)
{
  result = type metadata accessor for AdjustedMovie(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000050F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MovieView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10000513C(void *a1)
{
  if (qword_1000D9730 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000D9B10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000343F8(0xD00000000000001FLL, 0x80000001000A0CA0, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000529C(v6);
  }

  return [a1 stop];
}

uint64_t sub_10000529C(void *a1)
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

__n128 sub_1000052E8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000052F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005314(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for BlurModifier(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BlurModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BlurModifier(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100005458()
{
  result = qword_1000D9C58;
  if (!qword_1000D9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C58);
  }

  return result;
}

double sub_1000054AC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_1000054B8(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_1000054C4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1000054F0;
}

double sub_1000054F0(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

uint64_t sub_100005520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100005734();

  return static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_1000055A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100005734();

  return static ViewModifier<>._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_100005644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = sub_1000056EC(&qword_1000D9C60, &qword_100090FF8);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = sub_1000056EC(&qword_1000D9C68, qword_100091000);
  v9 = a2 + *(result + 36);
  *v9 = v5;
  *(v9 + 8) = v6;
  return result;
}

uint64_t sub_1000056EC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005734()
{
  result = qword_1000D9C70;
  if (!qword_1000D9C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C70);
  }

  return result;
}

unint64_t sub_10000578C()
{
  result = qword_1000D9C78;
  if (!qword_1000D9C78)
  {
    sub_100005818(&qword_1000D9C68, qword_100091000);
    sub_100005860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C78);
  }

  return result;
}

uint64_t sub_100005818(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005860()
{
  result = qword_1000D9C80;
  if (!qword_1000D9C80)
  {
    sub_100005818(&qword_1000D9C60, &qword_100090FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9C80);
  }

  return result;
}

uint64_t sub_1000058D8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100005998(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for NearbySharingInteractionDisplayContext(uint64_t a1)
{
  result = qword_1000D9CE0;
  if (!qword_1000D9CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005A88(uint64_t a1)
{
  sub_100005B0C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SFAirDrop.NearbySharingInteraction();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100005B0C()
{
  if (!qword_1000D9CF0)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D9CF0);
    }
  }
}

uint64_t sub_100005B5C(uint64_t a1, int a2)
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

uint64_t sub_100005BA4(uint64_t result, int a2, int a3)
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

uint64_t sub_100005BF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_1000056EC(&qword_1000D9D80, &qword_100091148);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100006768(a1, a1[3]);
  sub_100006C08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100005D88(void *a1)
{
  v3 = v1;
  v5 = sub_1000056EC(&qword_1000D9D50, &qword_100091138);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100006768(a1, a1[3]);
  sub_1000067AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[7] = 0;
  sub_1000056EC(&qword_1000D9D30, &qword_100091130);
  sub_100006914(&qword_1000D9D58, sub_10000698C, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for NearbySharingInteractionDisplayContext(0);
    v10[6] = 1;
    type metadata accessor for SFAirDrop.NearbySharingInteraction();
    sub_1000069E0(&qword_1000D9D68, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100005F88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000056EC(&qword_1000D9D20, &qword_100091128);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v18 - v6;
  v8 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006768(a1, a1[3]);
  sub_1000067AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000529C(a1);
  }

  v21 = a1;
  v11 = v10;
  v13 = v24;
  v12 = v25;
  sub_1000056EC(&qword_1000D9D30, &qword_100091130);
  v28 = 0;
  sub_100006914(&qword_1000D9D38, sub_100006800, &protocol conformance descriptor for <A> [A]);
  v14 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v11;
  v20 = v29;
  *v11 = v29;
  v27 = 1;
  sub_1000069E0(&qword_1000D9D48, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v7, v14);
  v15 = *(v8 + 20);
  v16 = v19;
  (*(v22 + 32))(&v19[v15], v5, v12);
  sub_100006854(v16, v23);
  sub_10000529C(v21);
  return sub_1000068B8(v16);
}

uint64_t sub_1000062E8()
{
  if (*v0)
  {
    return 0x656C746974;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100006314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000063E4(uint64_t a1)
{
  v2 = sub_100006C08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100006420(uint64_t a1)
{
  v2 = sub_100006C08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000645C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100006A24(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

Swift::Int sub_1000064C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100006540(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100006584()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x53746E65746E6F63;
  }
}

uint64_t sub_1000065CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x53746E65746E6F63 && a2 == 0xEC00000073627574;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000A0D00 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000066C0(uint64_t a1)
{
  v2 = sub_1000067AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000066FC(uint64_t a1)
{
  v2 = sub_1000067AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100006768(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1000067AC()
{
  result = qword_1000D9D28;
  if (!qword_1000D9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9D28);
  }

  return result;
}

unint64_t sub_100006800()
{
  result = qword_1000D9D40;
  if (!qword_1000D9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9D40);
  }

  return result;
}

uint64_t sub_100006854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000068B8(uint64_t a1)
{
  v2 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006914(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005818(&qword_1000D9D30, &qword_100091130);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000698C()
{
  result = qword_1000D9D60;
  if (!qword_1000D9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9D60);
  }

  return result;
}

uint64_t sub_1000069E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SFAirDrop.NearbySharingInteraction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006A24(void *a1)
{
  v3 = sub_1000056EC(&qword_1000D9D70, &qword_100091140);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_100006C08();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000529C(a1);
  return v7;
}

unint64_t sub_100006C08()
{
  result = qword_1000D9D78;
  if (!qword_1000D9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9D78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RepeatingTimer.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RepeatingTimer.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100006DE8()
{
  result = qword_1000D9D88;
  if (!qword_1000D9D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9D88);
  }

  return result;
}

unint64_t sub_100006E40()
{
  result = qword_1000D9D90;
  if (!qword_1000D9D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9D90);
  }

  return result;
}

unint64_t sub_100006E98()
{
  result = qword_1000D9D98;
  if (!qword_1000D9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9D98);
  }

  return result;
}

unint64_t sub_100006EF0()
{
  result = qword_1000D9DA0;
  if (!qword_1000D9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9DA0);
  }

  return result;
}

unint64_t sub_100006F48()
{
  result = qword_1000D9DA8;
  if (!qword_1000D9DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9DA8);
  }

  return result;
}

unint64_t sub_100006FA0()
{
  result = qword_1000D9DB0[0];
  if (!qword_1000D9DB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000D9DB0);
  }

  return result;
}

uint64_t sub_100007018@<X0>(uint64_t a1@<X8>)
{
  v3 = (swift_isaMask & *v1);
  v4 = v3;
  v5 = v3[10];
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v64 - v12;
  __chkstk_darwin(v11);
  v15 = &v64 - v14;
  v16 = *(v1 + v3[14]);
  if (v16)
  {
    v72 = a1;
    v73 = v5;
    v17 = (v1 + v3[13]);
    v18 = *v17;
    v19 = v17[1];
    v20 = v16;
    v70 = v18;
    v71 = v19;
    v21 = v20;
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 objectForKey:v22];

    if (v23)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10000A150(v75, v74);
      v24 = v73;
      if (swift_dynamicCast())
      {
        sub_10000529C(v75);

        v25 = *(v24 - 8);
        (*(v25 + 56))(v15, 0, 1, v24);
        return (*(v25 + 32))(v72, v15, v24);
      }

      else
      {
        v68 = *(v24 - 8);
        v69 = v1;
        (*(v68 + 56))(v15, 1, 1, v24);
        v66 = *(v7 + 8);
        v67 = v7 + 8;
        v66(v15, v6);
        v29 = v24;
        v30 = v70;
        v31 = String._bridgeToObjectiveC()();
        v32 = [v21 stringForKey:v31];

        if (v32)
        {
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          (*(v4[11] + 16))(v33, v35, v29);
          v36 = v68;
          if ((*(v68 + 48))(v13, 1, v29) == 1)
          {
            v66(v13, v6);
            v37 = v69;
            v38 = Logger.logObject.getter();
            v39 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              v41 = swift_slowAlloc();
              v74[0] = v41;
              *v40 = 136315138;
              *(v40 + 4) = sub_1000343F8(v70, v71, v74);
              _os_log_impl(&_mh_execute_header, v38, v39, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v40, 0xCu);
              sub_10000529C(v41);
            }

            sub_10000529C(v75);
            return (*(v36 + 16))(v72, v37 + *((swift_isaMask & *v37) + 0x60), v73);
          }

          else
          {
            sub_10000529C(v75);

            return (*(v36 + 32))(v72, v13, v29);
          }
        }

        else
        {
          v42 = String._bridgeToObjectiveC()();
          v65 = v21;
          v43 = [v21 dataForKey:v42];

          if (v43)
          {
            v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v46 = v45;

            v47 = v4[11];
            v48 = *(v47 + 24);
            sub_10000A1AC(v44, v46);
            v49 = v73;
            v48(v44, v46, v73, v47);
            v50 = v68;
            if ((*(v68 + 48))(v10, 1, v49) == 1)
            {
              v66(v10, v6);
              v51 = v69;
              v52 = Logger.logObject.getter();
              v53 = static os_log_type_t.error.getter();

              v54 = os_log_type_enabled(v52, v53);
              v55 = v65;
              if (v54)
              {
                v56 = swift_slowAlloc();
                v57 = swift_slowAlloc();
                v74[0] = v57;
                *v56 = 136315138;
                *(v56 + 4) = sub_1000343F8(v70, v71, v74);
                _os_log_impl(&_mh_execute_header, v52, v53, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v56, 0xCu);
                sub_10000529C(v57);

                sub_100008A9C(v44, v46);
              }

              else
              {

                sub_100008A9C(v44, v46);
              }

              sub_10000529C(v75);
              return (*(v50 + 16))(v72, v51 + *((swift_isaMask & *v51) + 0x60), v73);
            }

            else
            {
              sub_10000529C(v75);

              sub_100008A9C(v44, v46);
              return (*(v50 + 32))(v72, v10, v49);
            }
          }

          else
          {
            v58 = v30;
            v59 = v69;
            v60 = Logger.logObject.getter();
            v61 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              v74[0] = v63;
              *v62 = 136315138;
              *(v62 + 4) = sub_1000343F8(v58, v71, v74);
              _os_log_impl(&_mh_execute_header, v60, v61, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v62, 0xCu);
              sub_10000529C(v63);
            }

            sub_10000529C(v75);
            return (*(v68 + 16))(v72, v59 + *((swift_isaMask & *v59) + 0x60), v73);
          }
        }
      }
    }

    v3 = (swift_isaMask & *v1);
    a1 = v72;
    v5 = v73;
  }

  v27 = *(*(v5 - 8) + 16);
  v28 = v1 + v3[12];

  return v27(a1, v28, v5);
}

id sub_10000799C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (swift_isaMask & *v4);
  v6 = *(v4 + v5[14]);
  if (v6)
  {
    v7 = v6;

    v8 = String._bridgeToObjectiveC()();

    [v7 removeObserver:v4 forKeyPath:v8 context:0];
  }

  v9 = type metadata accessor for UserDefault(0, v5[10], v5[11], a4);
  v11.receiver = v4;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_100007AC4(char *a1)
{
  (*(*(*((swift_isaMask & *a1) + 0x50) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0x60)]);

  v2 = *((swift_isaMask & *a1) + 0x80);
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&a1[v2], v3);
}

uint64_t sub_100007C20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    v10 = a5;
    v11 = a1;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_10000A708(&qword_1000D99D8, type metadata accessor for NSKeyValueChangeKey, &unk_100090D54);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_7:
  sub_10000A4E4(v13);

  return sub_10000A628(v13, &qword_1000D9E38, &qword_100091570);
}

uint64_t sub_100007D90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100009F88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100007DBC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100008A9C(a1, a2);
  *a3 = 0;
  *(a3 + 8) = 1;
  return result;
}

double sub_100007DEC@<D0>(_OWORD *a2@<X8>)
{

  result = 0.0;
  *a2 = xmmword_100091370;
  return result;
}

double sub_100007E20@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_100008A9C(a1, a2);
  result = 0.0;
  *a3 = xmmword_100091370;
  return result;
}

uint64_t sub_100007E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date.ISO8601FormatStyle();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[2] = a1;
  v12[3] = a2;
  static ParseStrategy<>.iso8601.getter();
  sub_10000A708(&unk_1000D9E50, &type metadata accessor for Date.ISO8601FormatStyle, &protocol conformance descriptor for Date.ISO8601FormatStyle);
  Date.init<A>(_:strategy:)();
  (*(v8 + 32))(a3, v10, v7);
  return (*(v8 + 56))(a3, 0, 1, v7);
}

uint64_t sub_100008010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v4 = sub_10002A76C(a1, a2, &v7);

  v6 = v7;
  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  *(a3 + 8) = !v4;
  return result;
}

uint64_t sub_10000807C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v4 = sub_100009B90(a1, a2, &v7);

  v6 = v7;
  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  *(a3 + 4) = !v4;
  return result;
}

uint64_t sub_1000080E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100008A9C(a1, a2);
  *a3 = 0;
  *(a3 + 4) = 1;
  return result;
}

unint64_t sub_100008118@<X0>(uint64_t a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_100009C88(a2, a3);
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_100008148@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_100008150@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_100008A9C(a1, a2);
  *a3 = 0;
  a3[1] = 0;
  return result;
}

unint64_t sub_100008178@<X0>(uint64_t a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_10000A208(a2, a3);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1000081FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, void (*a6)(uint64_t, uint64_t)@<X6>, uint64_t a7@<X8>)
{
  v14 = sub_1000056EC(a4, a5);
  __chkstk_darwin(v14 - 8);
  v16 = &v20 - v15;
  a6(a1, a2);

  v17 = *(a3 - 8);
  if ((*(v17 + 48))(v16, 1, a3) == 1)
  {
    sub_10000A628(v16, a4, a5);
    v18 = 1;
  }

  else
  {
    (*(v17 + 32))(a7, v16, a3);
    v18 = 0;
  }

  return (*(v17 + 56))(a7, v18, 1, a3);
}

uint64_t sub_100008358@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100008A9C(a1, a2);
  v6 = *(*(a3 - 8) + 56);

  return v6(a4, 1, 1, a3);
}

uint64_t sub_1000083C4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100008A9C(a1, a2);

  return v10;
}

uint64_t sub_1000084D8@<X0>(uint64_t *a4@<X8>)
{
  v5 = sub_10000A200();

  *a4 = v5;
  return result;
}

uint64_t sub_100008530@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  result = sub_1000083C4(a1, a2, a3[2], a3[3], *(a4 - 8), a5, a3[4]);
  *a6 = result;
  return result;
}

uint64_t sub_100008574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v9 = *(a3 - 8);
  __chkstk_darwin(a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  (*(a4 + 16))(a1, a2, a3, a4);
  if ((*(v9 + 48))(v16, 1, a3) == 1)
  {
    (*(v13 + 8))(v16, v12);
    v19 = 1;
  }

  else
  {
    v20 = *(v9 + 32);
    v20(v11, v16, a3);
    v20(v18, v11, a3);
    v19 = 0;
  }

  (*(v9 + 56))(v18, v19, 1, a3);
  v21 = v24;
  (*(v13 + 32))(v24, v18, v12);
  return (*(v13 + 56))(v21, 0, 1, v12);
}

uint64_t sub_1000087E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a4@<X8>)
{
  sub_100008A9C(a1, a2);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 56);

  return v6(a4, 1, 1, v5);
}

uint64_t sub_100008874(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100008974@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000089B4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_100008A9C(a1, a2);
  *a3 = 0;
  return result;
}

uint64_t sub_1000089E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100008A9C(a1, a2);
  *a3 = 2;
  return result;
}

unint64_t sub_100008A14@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100045530(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100008A3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100008A9C(a1, a2);
  *a3 = 5;
  return result;
}

unint64_t sub_100008A74@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10004557C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100008A9C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100008B08@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100008B68(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unsigned __int8 *sub_100008C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000971C(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1000091A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000971C(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10000971C(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10000979C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10000979C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100034838(v9, 0), v12 = sub_1000098F4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000098F4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100009B14(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100009B14(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_100009B14(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_100009B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtof_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t sub_100009C88(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100008C14(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100009F88(uint64_t a1, uint64_t a2)
{
  v10 = String.lowercased()();
  v9 = &v10;
  v2 = sub_100008B68(sub_10000A0DC, v8, &off_1000C6C20);

  if (v2)
  {

    swift_arrayDestroy();
    return v2 & 1;
  }

  v3 = String.lowercased()();

  v10 = v3;
  __chkstk_darwin(v4);
  v7[2] = &v10;
  v5 = sub_100008B68(sub_10000A790, v7, &off_1000C6C90);
  swift_arrayDestroy();

  if (v5)
  {
    return v2 & 1;
  }

  return 2;
}

uint64_t sub_10000A0F8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10000A150(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000A1AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_10000A208(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000091A0(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_10000A4E4(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x50);
  v3 = *(v2 - 8);
  result = __chkstk_darwin(a1);
  v6 = &v9 - v5;
  if (*(v1 + *((v8 & v7) + 0x88)))
  {

    sub_100007018(v6);
    CurrentValueSubject.send(_:)();

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_10000A628(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000056EC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_BYTE *sub_10000A688@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10000A708(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000A7B4()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v1 = sub_10000A814(v0);
    *(v0 + 56) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_10000A814(uint64_t a1)
{
  v33 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v1 - 8);
  v39 = v1;
  __chkstk_darwin(v1);
  v35 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v34 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v7 = (v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchTime();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v28 - v12;
  v14 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = sub_10000B02C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000B0D0(&qword_1000D9F88, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_1000056EC(&qword_1000D9F90, &unk_100091650);
  sub_10000B118(&qword_1000D9F98, &qword_1000D9F90, &unk_100091650);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v15 + 8))(v17, v14);
  swift_getObjectType();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = v30;
  v20 = *(v29 + 8);
  v20(v11, v30);
  *v7 = 0;
  v22 = v31;
  v21 = v32;
  (*(v31 + 104))(v7, enum case for DispatchTimeInterval.nanoseconds(_:), v32);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  (*(v22 + 8))(v7, v21);
  v20(v13, v19);
  v23 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10000B0B0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035630;
  aBlock[3] = &unk_1000C7798;
  v24 = _Block_copy(aBlock);

  v25 = v34;
  static DispatchQoS.unspecified.getter();
  v26 = v35;
  sub_10000ADF4();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v24);
  (*(v38 + 8))(v26, v39);
  (*(v36 + 8))(v25, v37);

  return v18;
}

uint64_t sub_10000AD70(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 16);
    v3 = *(result + 24);
    sub_10000B16C(v2, v3);

    if (v2)
    {
      v2(result);
      return sub_10000B17C(v2, v3);
    }
  }

  return result;
}

uint64_t sub_10000ADF4()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000B0D0(&qword_1000D9FA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000056EC(&qword_1000D9FA8, &unk_100091780);
  sub_10000B118(&qword_1000D9FB0, &qword_1000D9FA8, &unk_100091780);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10000AECC()
{
  sub_10000A7B4();
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  if ((*(v0 + 40) & 1) == 0)
  {
    *(v0 + 40) = 1;
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.resume()();
    swift_unknownObjectRelease();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_10000B17C(v1, v2);
  sub_10000B17C(*(v0 + 16), *(v0 + 24));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10000AF6C()
{
  sub_10000AECC();

  return _swift_deallocClassInstance(v0, 64, 7);
}

unint64_t sub_10000AFD8()
{
  result = qword_1000D9F78;
  if (!qword_1000D9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9F78);
  }

  return result;
}

unint64_t sub_10000B02C()
{
  result = qword_1000D9F80;
  if (!qword_1000D9F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D9F80);
  }

  return result;
}

uint64_t sub_10000B078()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B0B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000B0D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000B118(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005818(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000B16C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000B17C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000B18C()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10000B1F0()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10000B254()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DA160);
  sub_1000047A0(v0, qword_1000DA160);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000B2D4()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1000056EC(&qword_1000DA1C8, &qword_100091770);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000A628(v5, &qword_1000D9E38, &qword_100091570);
    return 0;
  }
}

id sub_10000B3A4()
{
  v1 = v0;
  if (qword_1000D9738 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DA160);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for MainViewController();
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_10000B524(void *a1, void (*a2)(void))
{
  if (qword_1000D9738 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000047A0(v4, qword_1000DA160);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = &Spring;
  if (os_log_type_enabled(v6, v7))
  {
    v38 = a2;
    v9 = 7104878;
    v10 = swift_slowAlloc();
    v39[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_1000343F8(0xD00000000000001BLL, 0x80000001000A1160, v39);
    *(v10 + 12) = 2080;
    if (a1 && (v11 = [v5 userInfo]) != 0)
    {
      v12 = v11;
      v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v40[0] = v13;
      sub_1000056EC(qword_1000DA200, &unk_100091790);
      v9 = String.init<A>(describing:)();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    v16 = sub_1000343F8(v9, v15, v39);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: context=%s", v10, 0x16u);
    swift_arrayDestroy();

    a2 = v38;
    v8 = &Spring;
  }

  else
  {
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_37;
  }

  v17 = [v5 v8[6].base_meths];
  if (!v17)
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "### No userInfo?", v29, 2u);
    }

    v26 = sub_10000B2D4();
    if (v26)
    {
      [v26 invalidate];
      v26 = swift_unknownObjectRelease();
    }

    if (a2)
    {
      goto LABEL_35;
    }

    __break(1u);
LABEL_28:
    sub_10000EEEC(v39);
    goto LABEL_29;
  }

  v18 = v17;
  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (*(v19 + 16) && (v20 = sub_1000450CC(v39), (v21 & 1) != 0))
  {
    sub_10000A150(*(v19 + 56) + 32 * v20, v40);
    sub_10000EEEC(v39);
    if (swift_dynamicCast())
    {

      v22 = 0xD00000000000001DLL;
      v23 = 0x80000001000A1110;
      sub_10000C960(0xD00000000000001DLL, 0x80000001000A1110);
LABEL_21:
      v26 = sub_100008A9C(v22, v23);
      goto LABEL_34;
    }
  }

  else
  {
    sub_10000EEEC(v39);
  }

  AnyHashable.init<A>(_:)();
  if (!*(v19 + 16))
  {
    goto LABEL_28;
  }

  v24 = sub_1000450CC(v39);
  if ((v25 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_10000A150(*(v19 + 56) + 32 * v24, v40);
  sub_10000EEEC(v39);
  if (swift_dynamicCast())
  {

    v22 = 0xD00000000000002ALL;
    v23 = 0x80000001000A1130;
    sub_10000D05C(0xD00000000000002ALL, 0x80000001000A1130);
    goto LABEL_21;
  }

LABEL_29:

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39[0] = v33;
    *v32 = 136315138;
    v34 = Dictionary.description.getter();
    v36 = v35;

    v37 = sub_1000343F8(v34, v36, v39);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "### No context found: userInfo=%s", v32, 0xCu);
    sub_10000529C(v33);
  }

  else
  {
  }

  v26 = sub_10000B2D4();
  if (v26)
  {
    [v26 invalidate];
    v26 = swift_unknownObjectRelease();
  }

LABEL_34:
  if (a2)
  {
LABEL_35:
    a2(v26);
    return;
  }

LABEL_37:
  __break(1u);
}

void sub_10000BBDC()
{
  if (qword_1000D9738 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000047A0(v1, qword_1000DA160);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000343F8(0xD00000000000001DLL, 0x80000001000A10F0, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000529C(v5);
  }

  v6 = (v0 + OBJC_IVAR___MainViewController_environment);
  if (*(v0 + OBJC_IVAR___MainViewController_environment))
  {
    v7 = v6[1];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v9(0, ObjectType, v7);
    (*(v7 + 32))(ObjectType, v7);
    swift_unknownObjectRelease();
    *v6 = 0;
    v6[1] = 0;

    swift_unknownObjectRelease();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "### Invalidated with no environment", v11, 2u);
    }
  }
}

uint64_t sub_10000BE94(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D9738 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000047A0(v8, qword_1000DA160);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v11 = 136315394;
    *(v11 + 4) = sub_1000343F8(0x5F28656C646E6168, 0xEA0000000000293ALL, aBlock);
    *(v11 + 12) = 2080;
    sub_10000ED88(0, &qword_1000DA1E0, SBUIRemoteAlertButtonAction_ptr);
    sub_10000EDD0();
    v12 = Set.description.getter();
    v14 = sub_1000343F8(v12, v13, aBlock);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: buttonActions=%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000C3B4(a1);
  v16 = *(v15 + 16);
  v17 = 32;
  while (v16)
  {
    v18 = *(v15 + v17);
    v17 += 8;
    --v16;
    if (v18 == 16)
    {

      if (qword_1000D9800 != -1)
      {
        swift_once();
      }

      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_10000EE38;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100035630;
      aBlock[3] = &unk_1000C7858;
      v20 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v26 = _swiftEmptyArrayStorage;
      sub_10000EC18(&qword_1000D9FA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000056EC(&qword_1000D9FA8, &unk_100091780);
      sub_10000EE58(&qword_1000D9FB0, &qword_1000D9FA8, &unk_100091780, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v20);
      (*(v25 + 8))(v4, v2);
      (*(v23 + 8))(v7, v24);
    }
  }
}

void sub_10000C3B4(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_100084E3C(0, v2 & ~(v2 >> 63), 0);
    v32 = _swiftEmptyArrayStorage;
    if (v31)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v34 = v3;
    v35 = v4;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v34;
        v8 = v35;
        v10 = v36;
        v11 = v1;
        sub_1000850C8(v34, v35, v36, v1);
        v13 = v12;
        v14 = [v12 events];

        v15 = v32;
        v37 = v32;
        v17 = v32[2];
        v16 = v32[3];
        if (v17 >= v16 >> 1)
        {
          sub_100084E3C((v16 > 1), v17 + 1, 1);
          v15 = v37;
        }

        v15[2] = v17 + 1;
        v15[v17 + 4] = v14;
        v32 = v15;
        if (v31)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          sub_1000056EC(&qword_1000DA1F8, &qword_10009BA80);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v33, 0);
          if (v5 == v30)
          {
LABEL_32:
            sub_10000EEA0(v34, v35, v36);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v18 = 1 << *(v11 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(v29 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_10000EEA0(v9, v8, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_10000EEA0(v9, v8, 0);
          }

LABEL_31:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_10000C708(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR___MainViewController_environment))
    {

      sub_1000056EC(&qword_1000DA1D0, &qword_100091778);
      sub_10000EE58(&qword_1000DA1F0, &qword_1000DA1D0, &qword_100091778, &protocol conformance descriptor for PassthroughSubject<A, B>);
      Subject<>.send()();
    }

    else
    {
      if (qword_1000D9738 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_1000047A0(v3, qword_1000DA160);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "### No environment? Invalidating...", v6, 2u);
      }

      v7 = sub_10000B2D4();
      if (v7)
      {
        [v7 invalidate];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_10000C960(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ClassicCardViewServiceContext(0);
  v7 = __chkstk_darwin(v6);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v47 - v11;
  __chkstk_darwin(v10);
  v14 = v47 - v13;
  if (qword_1000D9738 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_1000047A0(v15, qword_1000DA160);
  sub_10000A1AC(a1, a2);
  v48 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  sub_100008A9C(a1, a2);
  v19 = os_log_type_enabled(v17, v18);
  v47[1] = a1;
  v47[2] = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    v49[0] = v47[0];
    *v20 = 136315394;
    *(v20 + 4) = sub_1000343F8(0xD00000000000001ALL, 0x80000001000A1060, v49);
    *(v20 + 12) = 2080;
    v21 = Data.description.getter();
    v23 = v14;
    v24 = sub_1000343F8(v21, v22, v49);

    *(v20 + 14) = v24;
    v14 = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s: contextData=%s", v20, 0x16u);
    swift_arrayDestroy();
  }

  v25 = sub_10000B2D4();
  if (v25)
  {
    v26 = v25;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10000EC18(&qword_1000DA1C0, type metadata accessor for ClassicCardViewServiceContext, &unk_100099A68);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_10000EC60(v14, v12, type metadata accessor for ClassicCardViewServiceContext);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 136315138;
      v48 = v3;
      v49[0] = v33;
      sub_10000EC60(v12, v9, type metadata accessor for ClassicCardViewServiceContext);
      v34 = v9;
      v35 = String.init<A>(describing:)();
      v36 = v12;
      v37 = v14;
      v39 = v38;
      sub_10000ECC8(v36, type metadata accessor for ClassicCardViewServiceContext);
      v40 = v35;
      v9 = v34;
      v41 = sub_1000343F8(v40, v39, v49);
      v14 = v37;

      *(v32 + 4) = v41;
      v3 = v48;
      _os_log_impl(&_mh_execute_header, v30, v31, "Found context: %s", v32, 0xCu);
      sub_10000529C(v33);
    }

    else
    {

      sub_10000ECC8(v12, type metadata accessor for ClassicCardViewServiceContext);
    }

    sub_10000EC60(v14, v9, type metadata accessor for ClassicCardViewServiceContext);
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = v26;
    type metadata accessor for ClassicCardAlertEnvironment(0);
    swift_allocObject();
    swift_unknownObjectRetain();

    v44 = v3;
    v45 = sub_10005B13C(v9, v26, v44, sub_10000ED6C, v43);
    sub_10000ECC8(v14, type metadata accessor for ClassicCardViewServiceContext);

    v46 = (v44 + OBJC_IVAR___MainViewController_environment);
    *v46 = v45;
    v46[1] = &off_1000CA668;
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v48, v27, "### No host?", v28, 2u);
    }

    v29 = v48;
  }
}

void sub_10000D05C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NearbySharingInteractionViewServiceContext(0);
  v7 = __chkstk_darwin(v6);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v47 - v11;
  __chkstk_darwin(v10);
  v14 = v47 - v13;
  if (qword_1000D9738 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_1000047A0(v15, qword_1000DA160);
  sub_10000A1AC(a1, a2);
  v48 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  sub_100008A9C(a1, a2);
  v19 = os_log_type_enabled(v17, v18);
  v47[1] = a1;
  v47[2] = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    v49[0] = v47[0];
    *v20 = 136315394;
    *(v20 + 4) = sub_1000343F8(0xD000000000000027, 0x80000001000A1030, v49);
    *(v20 + 12) = 2080;
    v21 = Data.description.getter();
    v23 = v14;
    v24 = sub_1000343F8(v21, v22, v49);

    *(v20 + 14) = v24;
    v14 = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s: contextData=%s", v20, 0x16u);
    swift_arrayDestroy();
  }

  v25 = sub_10000B2D4();
  if (v25)
  {
    v26 = v25;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10000EC18(&qword_1000DA1B8, type metadata accessor for NearbySharingInteractionViewServiceContext, &unk_100093444);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_10000EC60(v14, v12, type metadata accessor for NearbySharingInteractionViewServiceContext);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 136315138;
      v48 = v3;
      v49[0] = v33;
      sub_10000EC60(v12, v9, type metadata accessor for NearbySharingInteractionViewServiceContext);
      v34 = v9;
      v35 = String.init<A>(describing:)();
      v36 = v12;
      v37 = v14;
      v39 = v38;
      sub_10000ECC8(v36, type metadata accessor for NearbySharingInteractionViewServiceContext);
      v40 = v35;
      v9 = v34;
      v41 = sub_1000343F8(v40, v39, v49);
      v14 = v37;

      *(v32 + 4) = v41;
      v3 = v48;
      _os_log_impl(&_mh_execute_header, v30, v31, "Found context: %s", v32, 0xCu);
      sub_10000529C(v33);
    }

    else
    {

      sub_10000ECC8(v12, type metadata accessor for NearbySharingInteractionViewServiceContext);
    }

    sub_10000EC60(v14, v9, type metadata accessor for NearbySharingInteractionViewServiceContext);
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = v26;
    type metadata accessor for NearbySharingInteractionAlertEnvironment(0);
    swift_allocObject();
    swift_unknownObjectRetain();

    v44 = v3;
    v45 = sub_10008945C(v9, v26, v44, sub_10000EF44, v43);
    sub_10000ECC8(v14, type metadata accessor for NearbySharingInteractionViewServiceContext);

    v46 = (v44 + OBJC_IVAR___MainViewController_environment);
    *v46 = v45;
    v46[1] = &off_1000CC788;
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v48, v27, "### No host?", v28, 2u);
    }

    v29 = v48;
  }
}

id sub_10000D758(uint64_t a1, void *a2)
{
  if (qword_1000D9738 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000047A0(v3, qword_1000DA160);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Environment finished", v6, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR___MainViewController_environment);
    v9 = *(Strong + OBJC_IVAR___MainViewController_environment + 8);
    v10 = Strong;
    swift_unknownObjectRetain();

    if (v8)
    {
      ObjectType = swift_getObjectType();
      (*(v9 + 32))(ObjectType, v9);
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = &v12[OBJC_IVAR___MainViewController_environment];
    *v13 = 0;
    *(v13 + 1) = 0;

    swift_unknownObjectRelease();
  }

  return [a2 invalidate];
}

void sub_10000D910(uint64_t a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for MainViewController();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  if (qword_1000D9738 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000047A0(v3, qword_1000DA160);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000343F8(0xD00000000000001CLL, 0x80000001000A10D0, &v14);
    *(v7 + 12) = 2080;
    v8 = [v4 traitCollection];
    [v8 _backlightLuminance];

    type metadata accessor for _UIBacklightLuminance(0);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000343F8(v9, v10, &v14);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: _backlightLimunance=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v12 = [v4 traitCollection];
  v13 = [v12 _backlightLuminance];

  if (v13 == 1)
  {
    PassthroughSubject.send(_:)();
  }
}

id sub_10000DBB8(char a1)
{
  v2 = v1;
  if (qword_1000D9738 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000047A0(v4, qword_1000DA160);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_1000343F8(0xD000000000000011, 0x80000001000A10B0, &v11);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: animated=%{BOOL}d", v7, 0x12u);
    sub_10000529C(v8);
  }

  v9 = type metadata accessor for MainViewController();
  v12.receiver = v2;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
}

void sub_10000DD80()
{
  v1 = v0;
  if (qword_1000D9738 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DA160);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000343F8(0x4C64694477656976, 0xED0000292864616FLL, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000529C(v6);
  }

  v7 = type metadata accessor for MainViewController();
  v12.receiver = v1;
  v12.super_class = v7;
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor:v10];
  }

  else
  {
    __break(1u);
  }
}

void sub_10000DF90(void *a1, char a2)
{
  v3 = v2;
  if (qword_1000D9738 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000DA160);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_1000343F8(0xD000000000000028, 0x80000001000A1080, &v22);
    *(v10 + 12) = 2080;
    if (a1)
    {
      sub_10000ED88(0, &qword_1000DA1D8, UIWindow_ptr);
      v11 = v7;
      v12 = String.init<A>(describing:)();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = sub_1000343F8(v12, v14, &v22);

    *(v10 + 14) = v15;
    *(v10 + 22) = 1024;
    *(v10 + 24) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: window=%s, shouldAppearOrDisappear=%{BOOL}d", v10, 0x1Cu);
    swift_arrayDestroy();

    v3 = v2;
  }

  else
  {
  }

  v16 = type metadata accessor for MainViewController();
  v23.receiver = v3;
  v23.super_class = v16;
  objc_msgSendSuper2(&v23, "viewDidMoveToWindow:shouldAppearOrDisappear:", v7, a2 & 1);
  if (a1)
  {
    v17 = v7;
    v18 = [v17 _rootSheetPresentationController];
    if (v18)
    {
      v19 = v18;
      [v18 _setShouldScaleDownBehindDescendantSheets:0];
    }

    else
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "### Could not get window._rootSheetPresentationController", v21, 2u);
      }
    }
  }
}

void sub_10000E2D4(void *a1, char a2)
{
  v3 = v2;
  if (qword_1000D9738 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000DA160);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41 = v12;
    *v10 = 136315650;
    *(v10 + 4) = sub_1000343F8(0xD000000000000025, 0x80000001000A1000, &v41);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    *(v10 + 22) = 1024;
    *(v10 + 24) = a2 & 1;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: vc=%@, front=%{BOOL}d", v10, 0x1Cu);
    sub_10000A628(v11, &qword_1000DA8D0, &qword_100091B60);

    sub_10000529C(v12);
  }

  v14 = [v7 parentViewController];
  if (v14)
  {
    v15 = v14;
    sub_10000ED88(0, &qword_1000DA950, UIViewController_ptr);
    v16 = v3;
    v17 = static NSObject.== infix(_:_:)();

    if (v17)
    {
      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v18, "### Could not add - already my child", v19, 2u);
      }

      return;
    }
  }

  [v7 willMoveToParentViewController:v3];
  [v3 addChildViewController:v7];
  v20 = [v3 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_24;
  }

  v21 = v20;
  v22 = [v7 view];
  if (!v22)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v23 = v22;
  [v21 addSubview:v22];

  if ((a2 & 1) == 0)
  {
    v24 = [v3 view];
    if (!v24)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v25 = v24;
    v26 = [v7 view];
    if (!v26)
    {
LABEL_28:
      __break(1u);
      return;
    }

    v27 = v26;
    [v25 sendSubviewToBack:v26];
  }

  v28 = [v7 view];
  if (!v28)
  {
    goto LABEL_25;
  }

  v29 = v28;
  v30 = [v3 view];
  if (!v30)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v31 = v30;
  [v30 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [v29 setFrame:{v33, v35, v37, v39}];

  [v7 didMoveToParentViewController:v3];
}

id sub_10000E750(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = &v3[OBJC_IVAR___MainViewController_environment];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR___MainViewController_backlightLuminanceBecameReducedSubject;
  sub_1000056EC(&qword_1000DA1D0, &qword_100091778);
  swift_allocObject();
  *&v3[v8] = PassthroughSubject.init()();
  v9 = OBJC_IVAR___MainViewController_homeGestureEventSubject;
  swift_allocObject();
  *&v3[v9] = PassthroughSubject.init()();
  if (a2)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for MainViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id sub_10000E8BC(void *a1)
{
  v3 = &v1[OBJC_IVAR___MainViewController_environment];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR___MainViewController_backlightLuminanceBecameReducedSubject;
  sub_1000056EC(&qword_1000DA1D0, &qword_100091778);
  swift_allocObject();
  *&v1[v4] = PassthroughSubject.init()();
  v5 = OBJC_IVAR___MainViewController_homeGestureEventSubject;
  swift_allocObject();
  *&v1[v5] = PassthroughSubject.init()();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for MainViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_10000E9E8()
{
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1000F3C58 + 984);
  v1 = sub_100025080();
  v3 = v2;

  if (v3)
  {
    if (qword_1000D9738 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000047A0(v4, qword_1000DA160);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000343F8(v1, v3, &v10);
      _os_log_impl(&_mh_execute_header, v5, v6, "Forced localDeviceModel: %s", v7, 0xCu);
      sub_10000529C(v8);
    }
  }

  else
  {
    v5 = sub_10000EBA8();
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v1;
}

id sub_10000EBA8()
{
  v0 = GestaltCopyAnswer();

  return v0;
}

uint64_t sub_10000EBE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EC18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000EC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000ECC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000ED2C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000ED88(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_10000EDD0()
{
  result = qword_1000DA1E8;
  if (!qword_1000DA1E8)
  {
    sub_10000ED88(255, &qword_1000DA1E0, SBUIRemoteAlertButtonAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA1E8);
  }

  return result;
}

uint64_t sub_10000EE40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000EE58(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005818(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000EEA0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10000EEAC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10000EF90(uint64_t *a1, unsigned int a2)
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

uint64_t sub_10000EFEC(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_10000F054(uint64_t a1)
{
  result = swift_dynamicCastTypeToObjCProtocolConditional();
  if (result)
  {
    return [swift_getObjCClassFromMetadata() supportsSecureCoding];
  }

  return result;
}

uint64_t sub_10000F09C(void *a1, uint64_t a2)
{
  sub_100006768(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    sub_100006768(v12, v12[3]);
    sub_10000F73C();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = objc_allocWithZone(NSKeyedUnarchiver);
    sub_10000A1AC(v10, v11);
    v6 = sub_10000F790();
    sub_100008A9C(v10, v11);
    [v6 setRequiresSecureCoding:sub_10000F054(a2) & 1];
    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder:v6];
    if (v8)
    {
      a2 = v8;

      sub_100008A9C(v10, v11);
      sub_10000529C(v12);
      sub_10000529C(a1);
      return a2;
    }

    sub_10000F850();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 16) = 7;
    swift_willThrow();

    sub_100008A9C(v10, v11);
    sub_10000529C(v12);
  }

  sub_10000529C(a1);
  return a2;
}

uint64_t sub_10000F25C(void *a1, void *a2, uint64_t a3)
{
  sub_100006768(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v5 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:sub_10000F054(a3) & 1];
  [a2 encodeWithCoder:v5];
  [v5 finishEncoding];
  v6 = [v5 encodedData];
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  sub_10000F8A4(v11, v11[3]);
  sub_10000F8F4();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();

  sub_100008A9C(v7, v9);
  return sub_10000529C(v11);
}

uint64_t sub_10000F3D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10000F09C(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_10000F440(void *a1, uint64_t a2)
{
  v5 = sub_100006768(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    sub_10000529C(a1);
  }

  else
  {
    sub_100006768(v8, v8[3]);
    if (dispatch thunk of SingleValueDecodingContainer.decodeNil()())
    {
      v5 = 0;
    }

    else
    {
      sub_10000F6D8(a1, v7);
      v5 = sub_10000F09C(v7, a2);
    }

    sub_10000529C(v8);
    sub_10000529C(a1);
  }

  return v5;
}

uint64_t sub_10000F530(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_10000F25C(a1, a2, a3);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_100006768(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    sub_10000F8A4(v7, v7[3]);
    dispatch thunk of SingleValueEncodingContainer.encodeNil()();
    return sub_10000529C(v7);
  }
}

uint64_t sub_10000F5EC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      swift_unknownObjectRetain();
      v2 = dispatch thunk of static Equatable.== infix(_:_:)();
      swift_unknownObjectRelease();
      if (v2)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10000F670@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10000F440(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_10000F6D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000F73C()
{
  result = qword_1000DA2E8;
  if (!qword_1000DA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA2E8);
  }

  return result;
}

id sub_10000F790()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_10000F850()
{
  result = qword_1000DA2F0;
  if (!qword_1000DA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA2F0);
  }

  return result;
}

uint64_t sub_10000F8A4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_10000F8F4()
{
  result = qword_1000DA358[0];
  if (!qword_1000DA358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000DA358);
  }

  return result;
}

uint64_t sub_10000F948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_10000F9A4(uint64_t a1)
{
  sub_10000FE40();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ClosedRange();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_10000FE8C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10000FA64(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v7 + ((v7 + v6 + ((v7 + v6) & ~v6) + ((v6 + 8) & ~v6)) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v8;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v18 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_10000FBC0(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + v8) & ~v8) + v9;
  v11 = ((v9 + ((((v8 + 8) | v8) + v10) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v15 = 0;
    v16 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = a3 - v7;
    if (((v9 + ((((v8 + 8) | v8) + v10) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v15)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        if ((v6 & 0x80000000) != 0)
        {
          v21 = ((a1 + v8 + 8) & ~v8);
          if (v6 >= a2)
          {
            v25 = *(v5 + 56);
            v26 = (a1 + v8 + 8) & ~v8;

            v25(v26);
          }

          else
          {
            if (v10 <= 3)
            {
              v22 = ~(-1 << (8 * v10));
            }

            else
            {
              v22 = -1;
            }

            if (v10)
            {
              v23 = v22 & (~v6 + a2);
              if (v10 <= 3)
              {
                v24 = v10;
              }

              else
              {
                v24 = 4;
              }

              bzero(v21, v10);
              if (v24 > 2)
              {
                if (v24 == 3)
                {
                  *v21 = v23;
                  v21[2] = BYTE2(v23);
                }

                else
                {
                  *v21 = v23;
                }
              }

              else if (v24 == 1)
              {
                *v21 = v23;
              }

              else
              {
                *v21 = v23;
              }
            }
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v20 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v20 = a2 - 1;
          }

          *a1 = v20;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }
  }

  if (v11)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  if (v11)
  {
    v18 = ~v7 + a2;
    v19 = a1;
    bzero(a1, v11);
    a1 = v19;
    *v19 = v18;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *(a1 + v11) = v17;
    }

    else
    {
      *(a1 + v11) = v17;
    }
  }

  else if (v15)
  {
    *(a1 + v11) = v17;
  }
}

unint64_t sub_10000FE40()
{
  result = qword_1000DA460;
  if (!qword_1000DA460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DA460);
  }

  return result;
}

void sub_10000FE8C(uint64_t a1)
{
  if (!qword_1000DA468)
  {
    sub_100005818(&unk_1000DA470, qword_1000919F0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DA468);
    }
  }
}

uint64_t sub_10000FEF0()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DA480);
  sub_1000047A0(v0, qword_1000DA480);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000FF74()
{
  sub_10001A6B0(v0 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_cardInfo, _s8CardInfoOMa);
  swift_unknownObjectRelease();
  sub_100019FD8(*(v0 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_initialMediaTransferStatus));

  return v0;
}

uint64_t sub_100010068()
{
  sub_10000FF74();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000100E8(uint64_t a1)
{
  result = _s8CardInfoOMa(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void *sub_1000101EC()
{
  v1 = OBJC_IVAR____TtC13PCViewService13CardPresenter____lazy_storage___homeAccessoryViewHandle;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService13CardPresenter____lazy_storage___homeAccessoryViewHandle))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PCViewService13CardPresenter____lazy_storage___homeAccessoryViewHandle);
  }

  else
  {
    v3 = v0;
    v4 = sub_10001029C();
    v5 = *(v0 + OBJC_IVAR____TtC13PCViewService13CardPresenter_homeAccessoryViewHandleState);
    type metadata accessor for HomeAccessoryViewHandle();
    swift_allocObject();

    v2 = sub_10006CD78(v4, v5);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10001029C()
{
  v1 = _s8CardInfoOMa(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC13PCViewService13CardPresenter____lazy_storage___homeAccessoryViewHandleModel;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService13CardPresenter____lazy_storage___homeAccessoryViewHandleModel))
  {
    v5 = *(v0 + OBJC_IVAR____TtC13PCViewService13CardPresenter____lazy_storage___homeAccessoryViewHandleModel);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC13PCViewService13CardPresenter_model);
    sub_10001A5E0(v6 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_cardInfo, v3, _s8CardInfoOMa);
    v7 = *(v6 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel__mediaTransferStatus);
    v8 = *(v6 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel__mrResponse);
    type metadata accessor for HomeAccessoryViewHandleModel(0);
    v5 = swift_allocObject();
    v9 = OBJC_IVAR____TtC13PCViewService28HomeAccessoryViewHandleModel__mrResponse;
    sub_1000056EC(&qword_1000DAB50, &unk_100091EE0);
    swift_allocObject();

    *(v5 + v9) = sub_1000550FC(0, 0, 0, 0, 0, 0);
    sub_10001A648(v3, v5 + OBJC_IVAR____TtC13PCViewService28HomeAccessoryViewHandleModel_cardInfo, _s8CardInfoOMa);
    *(v5 + OBJC_IVAR____TtC13PCViewService28HomeAccessoryViewHandleModel__mediaTransferStatus) = v7;
    *(v5 + OBJC_IVAR____TtC13PCViewService28HomeAccessoryViewHandleModel__mrResponse) = v8;

    *(v0 + v4) = v5;
  }

  return v5;
}

uint64_t sub_100010470()
{
  v1 = type metadata accessor for ActivityDisplayContext(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC13PCViewService13CardPresenter____lazy_storage___proximityCardHeaderViewModel;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService13CardPresenter____lazy_storage___proximityCardHeaderViewModel))
  {
    v5 = *(v0 + OBJC_IVAR____TtC13PCViewService13CardPresenter____lazy_storage___proximityCardHeaderViewModel);
  }

  else
  {
    sub_10001A5E0(v0 + OBJC_IVAR____TtC13PCViewService13CardPresenter_initialActivityDisplayContext, v3, type metadata accessor for ActivityDisplayContext);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for ProximityCardHeaderViewModel(0);
    swift_allocObject();
    v5 = sub_10007AF84(v3, sub_10001A5D4, v6);

    *(v0 + v4) = v5;
  }

  return v5;
}

void sub_1000105B8(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100015198(a1 & 1);
  }
}

id sub_100010614()
{
  v1 = v0;
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DA480);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for CardPresenter(0);
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100010898()
{
  v1 = v0;
  v2 = sub_1000056EC(&qword_1000DA980, &qword_100091D28);
  v129 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v123 - v3;
  v128 = sub_1000056EC(&qword_1000DA988, &qword_100091D30);
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = v123 - v5;
  v6 = sub_1000056EC(&qword_1000DA990, &qword_100091D38);
  v162 = *(v6 - 8);
  __chkstk_darwin(v6);
  v161 = v123 - v7;
  v157 = sub_1000056EC(&qword_1000DA998, &qword_100091D40);
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v155 = v123 - v8;
  v160 = sub_1000056EC(&qword_1000DA9A0, &qword_100091D48);
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = v123 - v9;
  v154 = sub_1000056EC(&qword_1000DA9A8, &qword_100091D50);
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v152 = v123 - v10;
  v148 = sub_1000056EC(&qword_1000DA9B0, &qword_100091D58);
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v146 = v123 - v11;
  v151 = sub_1000056EC(&qword_1000DA9B8, &qword_100091D60);
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v149 = v123 - v12;
  v142 = sub_1000056EC(&qword_1000DA9C0, &qword_100091D68);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = v123 - v13;
  v145 = sub_1000056EC(&qword_1000DA9C8, &qword_100091D70);
  v144 = *(v145 - 1);
  __chkstk_darwin(v145);
  v143 = v123 - v14;
  v139 = sub_1000056EC(&qword_1000DA9D0, &qword_100091D78);
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v137 = v123 - v15;
  v16 = type metadata accessor for Logger();
  v180 = *(v16 - 8);
  __chkstk_darwin(v16);
  v171 = v17;
  v179 = v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1000056EC(&qword_1000DA9D8, &qword_100091D80);
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = v123 - v18;
  v19 = sub_1000056EC(&qword_1000DA9E0, &qword_100091D88);
  __chkstk_darwin(v19 - 8);
  v177 = v123 - v20;
  v133 = sub_1000056EC(&qword_1000DA9E8, &unk_100091D90);
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = v123 - v21;
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v181 = v16;
  v178 = sub_1000047A0(v16, qword_1000DA480);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v186 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1000343F8(0x6574617669746361, 0xEA00000000002928, &v186);
    _os_log_impl(&_mh_execute_header, v22, v23, "%s", v24, 0xCu);
    sub_10000529C(v25);
  }

  v26 = *(v1 + OBJC_IVAR____TtC13PCViewService13CardPresenter_model);
  v27 = OBJC_IVAR____TtC13PCViewService18CardPresenterModel_host;
  [*(v26 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_host) setAllowsAlertStacking:1];
  [*(v26 + v27) setDesiredHardwareButtonEvents:16];
  [*(v26 + v27) setOrientationChangedEventsEnabled:0];
  v28 = *(v1 + OBJC_IVAR____TtC13PCViewService13CardPresenter_blurView);
  v29 = OBJC_IVAR____TtC13PCViewService18CardPresenterModel_rootViewController;
  v184 = v26;
  v30 = [*(v26 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_rootViewController) view];
  if (!v30)
  {
    __break(1u);
    goto LABEL_13;
  }

  v31 = v30;
  v130 = v6;
  v124 = v4;
  v125 = v2;
  [v30 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [v28 setFrame:{v33, v35, v37, v39}];
  v40 = [*(v184 + v29) view];
  if (!v40)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v41 = v40;
  [v40 addSubview:v28];

  v42 = sub_10001029C();
  v43 = *(v1 + OBJC_IVAR____TtC13PCViewService13CardPresenter_homeAccessoryViewHandleState);
  type metadata accessor for HomeAccessoryViewHandle();
  swift_allocObject();

  v44 = sub_10006CD78(v42, v43);
  v123[1] = OBJC_IVAR____TtC13PCViewService13CardPresenter____lazy_storage___homeAccessoryViewHandle;
  *(v1 + OBJC_IVAR____TtC13PCViewService13CardPresenter____lazy_storage___homeAccessoryViewHandle) = v44;

  v186 = *(v43 + 16);

  sub_1000056EC(&qword_1000DA8B8, &qword_100091B50);
  sub_10000EE58(&qword_1000DA9F0, &qword_1000DA8B8, &qword_100091B50, &protocol conformance descriptor for PassthroughSubject<A, B>);
  Publisher<>.sink(receiveValue:)();

  v45 = OBJC_IVAR____TtC13PCViewService13CardPresenter_tasks;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v186 = *(*(v1 + OBJC_IVAR____TtC13PCViewService13CardPresenter_educationViewModel) + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_educationViewEventSubject);
  sub_1000056EC(&qword_1000DA9F8, &qword_1000922B0);
  sub_10000EE58(&qword_1000DAA00, &qword_1000DA9F8, &qword_1000922B0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v186 = Publisher.eraseToAnyPublisher()();

  sub_1000056EC(&qword_1000DAA08, &qword_100091DA0);
  sub_10000EE58(&qword_1000DAA10, &qword_1000DAA08, &qword_100091DA0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v186 = sub_1000231D8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000056EC(&qword_1000DAA18, &qword_100091DA8);
  v176 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000EE58(&qword_1000DAA20, &qword_1000DAA18, &qword_100091DA8, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  dispatch thunk of UIHostingController.rootView.getter();
  v46 = sub_100026BF8();

  v186 = v46;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000056EC(&qword_1000DAA28, &qword_100091DB0);
  sub_10000EE58(&qword_1000DAA30, &qword_1000DAA28, &qword_100091DB0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  v182 = v45;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v47 = sub_1000101EC();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = v47[6];
  v50 = v47[7];
  v47[6] = sub_10001A018;
  v47[7] = v48;

  sub_10000B17C(v49, v50);

  v186 = *(v184 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel__activityDisplayContext);
  v51 = sub_10000ED88(0, &qword_1000DA460, OS_dispatch_queue_ptr);

  v170 = v51;
  v52 = static OS_dispatch_queue.main.getter();
  v185 = v52;
  v183 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v53 = *(v183 - 8);
  v174 = *(v53 + 56);
  v175 = v53 + 56;
  v54 = v177;
  v174();
  sub_1000056EC(&qword_1000DAA38, &qword_100091DB8);
  v172 = &unk_100096B58;
  sub_10000EE58(&qword_1000DAA40, &qword_1000DAA38, &qword_100091DB8, &unk_100096B58);
  v173 = sub_10001A020();
  v55 = v131;
  Publisher.receive<A>(on:options:)();
  sub_10000A628(v54, &qword_1000DA9E0, &qword_100091D88);

  LOBYTE(v47) = static os_log_type_t.info.getter();
  v56 = v180;
  v57 = *(v180 + 16);
  v167 = v180 + 16;
  v166 = v57;
  v58 = v179;
  v59 = v181;
  v57(v179, v178, v181);
  v165 = *(v56 + 80);
  v60 = (v165 + 64) & ~v165;
  v168 = v60;
  v61 = &v171[v60];
  v169 = &v171[v60];
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  *(v62 + 32) = 0xD00000000000001CLL;
  *(v62 + 40) = 0x80000001000A1750;
  *(v62 + 48) = 0;
  *(v62 + 56) = 0xE000000000000000;
  v63 = *(v56 + 32);
  v180 = v56 + 32;
  v164 = v63;
  v63(v62 + v60, v58, v59);
  v61[v62] = v47;
  type metadata accessor for ActivityDisplayContext(0);
  v171 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10000EE58(&qword_1000DAA50, &qword_1000DA9E8, &unk_100091D90, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v64 = v134;
  v65 = v133;
  Publisher.map<A>(_:)();

  v163 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000EE58(&qword_1000DAA58, &qword_1000DA9D8, &qword_100091D80, &protocol conformance descriptor for Publishers.Map<A, B>);
  v66 = v136;
  v67 = Publisher.eraseToAnyPublisher()();
  (*(v135 + 8))(v64, v66);
  (*(v132 + 8))(v55, v65);
  v186 = v67;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000056EC(&qword_1000DAA60, &qword_100091DC0);
  v68 = v176;
  sub_10000EE58(&qword_1000DAA68, &qword_1000DAA60, &qword_100091DC0, v176);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v186 = *(v184 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_homeGestureEventPublisher);

  v69 = static OS_dispatch_queue.main.getter();
  v185 = v69;
  v70 = v177;
  (v174)(v177, 1, 1, v183);
  sub_1000056EC(&qword_1000DAA70, &qword_100091DC8);
  sub_10000EE58(&qword_1000DAA78, &qword_1000DAA70, &qword_100091DC8, v68);
  v71 = v137;
  Publisher.receive<A>(on:options:)();
  sub_10000A628(v70, &qword_1000DA9E0, &qword_100091D88);

  v72 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v73 = swift_allocObject();
  *(v73 + 16) = sub_10001A140;
  *(v73 + 24) = v72;
  sub_10000EE58(&qword_1000DAA80, &qword_1000DA9D0, &qword_100091D78, v171);
  v74 = v139;
  Publisher<>.sink(receiveValue:)();

  (*(v138 + 8))(v71, v74);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v186 = *(v184 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel__mediaTransferStatus);
  sub_1000056EC(&qword_1000DAA88, &unk_100091DD0);
  sub_10000EE58(&qword_1000DAA90, &qword_1000DAA88, &unk_100091DD0, v172);
  v75 = v140;
  Publisher.dropFirst(_:)();
  v76 = static OS_dispatch_queue.main.getter();
  v186 = v76;
  v77 = v70;
  v78 = v70;
  v79 = v174;
  (v174)(v78, 1, 1, v183);
  sub_10000EE58(&qword_1000DAA98, &qword_1000DA9C0, &qword_100091D68, &protocol conformance descriptor for Publishers.Drop<A>);
  v80 = v143;
  v81 = v142;
  Publisher.receive<A>(on:options:)();
  sub_10000A628(v77, &qword_1000DA9E0, &qword_100091D88);

  (*(v141 + 8))(v75, v81);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v82 = v171;
  sub_10000EE58(&qword_1000DAAA0, &qword_1000DA9C8, &qword_100091D70, v171);
  v83 = v145;
  Publisher<>.sink(receiveValue:)();

  (*(v144 + 8))(v80, v83);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v186 = *(v184 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel__progress);
  sub_1000056EC(&qword_1000DAAA8, qword_100097940);
  sub_10000EE58(&qword_1000DAAB0, &qword_1000DAAA8, qword_100097940, v172);
  v84 = v146;
  Publisher<>.removeDuplicates()();
  v85 = static OS_dispatch_queue.main.getter();
  v186 = v85;
  v86 = v177;
  (v79)(v177, 1, 1, v183);
  v145 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_10000EE58(&qword_1000DAAB8, &qword_1000DA9B0, &qword_100091D58, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v87 = v149;
  v88 = v148;
  Publisher.receive<A>(on:options:)();
  v89 = v86;
  sub_10000A628(v86, &qword_1000DA9E0, &qword_100091D88);

  (*(v147 + 8))(v84, v88);
  LOBYTE(v72) = static os_log_type_t.info.getter();
  v90 = v179;
  v91 = v181;
  v166(v179, v178, v181);
  v92 = v169;
  v93 = swift_allocObject();
  *(v93 + 16) = 0;
  *(v93 + 24) = 0;
  strcpy((v93 + 32), "New progress: ");
  *(v93 + 47) = -18;
  *(v93 + 48) = 0;
  *(v93 + 56) = 0xE000000000000000;
  v164(v93 + v168, v90, v91);
  v92[v93] = v72;
  sub_10000EE58(&qword_1000DAAC0, &qword_1000DA9B8, &qword_100091D60, v82);
  v94 = v152;
  v95 = v151;
  Publisher.map<A>(_:)();

  sub_10000EE58(&qword_1000DAAC8, &qword_1000DA9A8, &qword_100091D50, v163);
  v96 = v154;
  v97 = Publisher.eraseToAnyPublisher()();
  (*(v153 + 8))(v94, v96);
  (*(v150 + 8))(v87, v95);
  v186 = v97;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000056EC(&qword_1000DAAD0, &unk_100091DE0);
  sub_10000EE58(&qword_1000DAAD8, &qword_1000DAAD0, &unk_100091DE0, v176);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v186 = *(v184 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel__cardMode);
  sub_1000056EC(&qword_1000DAAE0, &unk_100097930);
  sub_10000EE58(&qword_1000DAAE8, &qword_1000DAAE0, &unk_100097930, v172);
  sub_10001A258();
  v98 = v155;
  Publisher<>.removeDuplicates()();
  v99 = static OS_dispatch_queue.main.getter();
  v186 = v99;
  (v174)(v89, 1, 1, v183);
  sub_10000EE58(&qword_1000DAAF8, &qword_1000DA998, &qword_100091D40, v145);
  v100 = v158;
  v101 = v157;
  Publisher.receive<A>(on:options:)();
  sub_10000A628(v89, &qword_1000DA9E0, &qword_100091D88);

  (*(v156 + 8))(v98, v101);
  LOBYTE(v72) = static os_log_type_t.info.getter();
  v102 = v179;
  v103 = v181;
  v166(v179, v178, v181);
  v104 = v169;
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *(v105 + 24) = 0;
  strcpy((v105 + 32), "New cardMode: ");
  *(v105 + 47) = -18;
  *(v105 + 48) = 0;
  *(v105 + 56) = 0xE000000000000000;
  v164(v105 + v168, v102, v103);
  v104[v105] = v72;
  sub_10000EE58(&qword_1000DAB00, &qword_1000DA9A0, &qword_100091D48, v171);
  v106 = v161;
  v107 = v160;
  Publisher.map<A>(_:)();

  sub_10000EE58(&qword_1000DAB08, &qword_1000DA990, &qword_100091D38, v163);
  v108 = v130;
  v109 = Publisher.eraseToAnyPublisher()();
  (*(v162 + 8))(v106, v108);
  (*(v159 + 8))(v100, v107);
  v186 = v109;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000056EC(&qword_1000DAB10, &unk_100091DF0);
  sub_10000EE58(&qword_1000DAB18, &qword_1000DAB10, &unk_100091DF0, v176);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v110 = *(qword_1000F3C58 + 504);
  v111 = sub_100025508();

  if (v111)
  {

    v186 = sub_10006BCE8();
    sub_1000056EC(&qword_1000DAB20, &qword_100099A00);
    sub_10000EE58(&qword_1000DAB28, &qword_1000DAB20, &qword_100099A00, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v112 = Publisher.eraseToAnyPublisher()();

    v186 = v112;
    sub_1000056EC(&qword_1000DAB30, &qword_100091E00);
    sub_10000EE58(&qword_1000DAB38, &qword_1000DAB30, &qword_100091E00, &protocol conformance descriptor for AnyPublisher<A, B>);
    v113 = v126;
    Publisher.map<A>(_:)();

    v114 = static os_log_type_t.info.getter();
    v115 = v179;
    v116 = v181;
    v166(v179, v178, v181);
    v117 = v169;
    v118 = swift_allocObject();
    *(v118 + 16) = 0;
    *(v118 + 24) = 0;
    *(v118 + 32) = 0xD00000000000001DLL;
    *(v118 + 40) = 0x80000001000A1770;
    *(v118 + 48) = 0;
    *(v118 + 56) = 0xE000000000000000;
    v164(v118 + v168, v115, v116);
    v117[v118] = v114;
    sub_10000EE58(&qword_1000DAB40, &qword_1000DA988, &qword_100091D30, &protocol conformance descriptor for Publishers.Map<A, B>);
    v119 = v124;
    v120 = v128;
    Publisher.map<A>(_:)();

    sub_10000EE58(&qword_1000DAB48, &qword_1000DA980, &qword_100091D28, &protocol conformance descriptor for Publishers.Map<A, B>);
    v121 = v125;
    v122 = Publisher.eraseToAnyPublisher()();
    (*(v129 + 8))(v119, v121);
    (*(v127 + 8))(v113, v120);
    v186 = v122;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000056EC(&qword_1000DA8F8, &unk_100091BC8);
    sub_10000EE58(&qword_1000DA900, &qword_1000DA8F8, &unk_100091BC8, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }
}

uint64_t sub_100012BB8(__int128 *a1)
{
  *&v10[9] = *(a1 + 41);
  v1 = a1[2];
  v9 = a1[1];
  *v10 = v1;
  v8 = *a1;
  v3 = v8;
  v4 = v9;
  v5 = v1;
  *&v6 = *&v10[16];
  BYTE8(v6) = v10[24] & 3 | 0x40;
  *&v7 = 0xD000000000000026;
  *(&v7 + 1) = 0x80000001000A17E0;
  sub_10001A578(&v8, v11);
  PassthroughSubject.send(_:)();
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  v11[0] = v3;
  v11[1] = v4;
  return sub_10000A628(v11, &qword_1000DA8C8, &qword_100091B58);
}

uint64_t sub_100012C80(unsigned __int8 *a1)
{
  *&v2 = *a1;
  BYTE8(v5) = 96;
  *&v6 = 0xD000000000000025;
  *(&v6 + 1) = 0x80000001000A17B0;
  PassthroughSubject.send(_:)();
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = v6;
  v7[0] = v2;
  v7[1] = v3;
  return sub_10000A628(v7, &qword_1000DA8C8, &qword_100091B58);
}

void sub_100012D0C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100017260(v2, v3, v4);
  }
}

void sub_100012D80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000170A0();
  }
}

void sub_100012DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10001681C(0xD00000000000001FLL, 0x80000001000A1790, a1, a2);
  }
}

void *sub_100012E5C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ActivityDisplayContext(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_100010470();

    sub_10001A5E0(a1, v8, type metadata accessor for ActivityDisplayContext);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10001A5E0(v8, v6, type metadata accessor for ActivityDisplayContext);
    static Published.subscript.setter();
    return sub_10001A6B0(v8, type metadata accessor for ActivityDisplayContext);
  }

  return result;
}

void sub_100012FC8(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1000131E0(v2, v3);
  }
}

void *sub_100013034(int *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

void sub_1000130D8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100013678(v2);
  }
}

void *sub_100013148(char *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_100010470();

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

void sub_1000131E0(void *a1, uint64_t a2)
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000047A0(v3, qword_1000DA480);
  sub_100019FE8(a1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_100019FD8(a1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_1000343F8(0xD000000000000020, 0x80000001000A1720, &v15);
    *(v6 + 12) = 2080;
    sub_100019FE8(a1);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000343F8(v7, v8, &v15);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: mediaTransferStatus=%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v10 = *(qword_1000F3C58 + 520);
  v11 = sub_100025508();

  if (v11)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "### Skipping due to Defaults.shared.skipMRCoordinator == true", v14, 2u);
    }
  }

  else if (a1 == 1)
  {
    sub_1000134A0();
  }

  else
  {
    sub_1000101EC();
    sub_10006DDF4(a1);
  }
}

void sub_1000134A0()
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DA480);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000343F8(0xD00000000000001BLL, 0x80000001000A1700, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000529C(v4);
  }

  CurrentValueSubject.value.getter();
  v5 = v6;
  if (v6 == 2)
  {
    CurrentValueSubject.value.getter();

    v5 = v7;
    if (v7 != 1)
    {
LABEL_7:
      sub_100019FD8(v5);
      return;
    }
  }

  else
  {

    if (v6 != 1)
    {
      goto LABEL_7;
    }
  }

  sub_1000101EC();
  sub_10006E250();
}

void sub_100013678(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000047A0(v4, qword_1000DA480);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *&v60 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000343F8(0xD000000000000012, 0x80000001000A16A0, &v60);
    *(v7 + 12) = 2080;
    v8 = sub_100037BDC(v3);
    v10 = sub_1000343F8(v8, v9, &v60);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: cardMode=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (v3 != 4)
  {
    if (v3 == 3)
    {
      sub_1000101EC();
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = 3;

      sub_10006D178(sub_100019E00, v12);

      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v60) = v3;

    static Published.subscript.setter();
    swift_retain_n();
    sub_10004BE00(&v60);
    LOBYTE(v55[0]) = 0;
    State.init(wrappedValue:)();
    type metadata accessor for HandoffFeatureEducationViewModel(0);
    sub_100019B48(&qword_1000DA908, type metadata accessor for HandoffFeatureEducationViewModel, &unk_100092240);
    v15 = ObservedObject.init(wrappedValue:)();
    v17 = v16;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = *&v2[OBJC_IVAR____TtC13PCViewService13CardPresenter_model];
    v20 = OBJC_IVAR____TtC13PCViewService18CardPresenterModel_rootViewController;
    v21 = [*(v19 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_rootViewController) view];
    if (v21)
    {
      v22 = v21;
      v51 = v56;
      osloga = *(&v56 + 1);
      [v21 frame];
      v24 = v23;

      v56 = v60;
      v57 = v61;
      v58 = v62;
      v59 = v63;
      v25 = objc_allocWithZone(sub_1000056EC(&qword_1000DA910, &qword_100091C20));
      sub_100019BA0(&v60, v55);
      v26 = UIHostingController.init(rootView:)();
      dispatch thunk of UIHostingController.sizeThatFits(in:)();
      v28 = v27;

      if (qword_1000D9778 != -1)
      {
        swift_once();
      }

      v29 = *(qword_1000F3C58 + 648);
      sub_100025A38();
      v31 = v30;

      v32 = v24 + v28 + v31 + 8.0;
      sub_10000ED88(0, &qword_1000DA8C0, UISheetPresentationControllerDetent_ptr);
      *(swift_allocObject() + 16) = v32;
      v50 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

      v33 = v2;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v34, v35))
      {

        goto LABEL_22;
      }

      v36 = swift_slowAlloc();
      *&v56 = swift_slowAlloc();
      *v36 = 136315650;
      v37 = [*(v19 + v20) view];

      if (v37)
      {
        [v37 frame];

        v38 = CGSize.description.getter();
        v40 = sub_1000343F8(v38, v39, &v56);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2080;
        v41 = CGSize.description.getter();
        v43 = sub_1000343F8(v41, v42, &v56);

        *(v36 + 14) = v43;
        *(v36 + 22) = 2048;
        *(v36 + 24) = v32;
        _os_log_impl(&_mh_execute_header, v34, v35, "Size: %s -> %s -> %f", v36, 0x20u);
        swift_arrayDestroy();

LABEL_22:

        v44 = *&v33[OBJC_IVAR____TtC13PCViewService13CardPresenter_cardViewController];
        dispatch thunk of UIHostingController.rootView.getter();
        v55[3] = &type metadata for HandoffFeatureEducationViewHeader;
        v55[4] = sub_100019C14();
        v45 = swift_allocObject();
        v55[0] = v45;
        v46 = v61;
        *(v45 + 16) = v60;
        *(v45 + 32) = v46;
        *(v45 + 48) = v62;
        *(v45 + 64) = v63;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10001A510(v55, v54, &qword_1000DA920, &qword_100091C70);
        sub_100019BA0(&v60, &v56);
        static Published.subscript.setter();
        sub_10000A628(v55, &qword_1000DA920, &qword_100091C70);
        dispatch thunk of UIHostingController.rootView.getter();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v56) = 0;
        static Published.subscript.setter();
        dispatch thunk of UIHostingController.rootView.getter();
        *(&v57 + 1) = &type metadata for HandoffFeatureEducationView;
        *&v58 = sub_100019CC8();
        v47 = swift_allocObject();
        *&v56 = v47;
        *(v47 + 16) = v15;
        *(v47 + 24) = v17;
        *(v47 + 32) = v51;
        *(v47 + 40) = osloga;
        *(v47 + 48) = sub_100019B98;
        *(v47 + 56) = v18;
        *(&v58 + 1) = 0x6F69746163756465;
        v59 = 0xE90000000000006ELL;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10001A510(&v56, v55, &qword_1000DA930, &qword_100091D08);

        static Published.subscript.setter();
        sub_10000A628(&v56, &qword_1000DA930, &qword_100091D08);
        sub_1000056EC(&qword_1000DA8E0, &qword_100091BB8);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_100091A40;
        *(v48 + 32) = v50;
        v49 = v50;
        sub_100015CEC(v44, 0, v48, 0, 0);

        sub_1000101EC();
        sub_10006D018();

        sub_100019D74(&v60);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
  }
}

void sub_10001404C(void *a1, char a2, uint64_t a3, unsigned int a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v75 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchQoS();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DispatchTime();
  v72 = *(v78 - 8);
  v11 = __chkstk_darwin(v78);
  v71 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = &v63 - v13;
  v14 = type metadata accessor for ActivityIcon(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v63 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = Strong;
  v70 = v8;
  if ((a2 & 1) == 0)
  {
    v69 = a4;
    v67 = OBJC_IVAR____TtC13PCViewService13CardPresenter_cardViewController;
    v68 = v7;
    dispatch thunk of UIHostingController.rootView.getter();
    v66 = *(&v81 + 1);
    sub_100010470();
    UUID.init()();
    *&v19[*(v14 + 20)] = 0;
    v28 = sub_1000056EC(&qword_1000DA938, &qword_100091D10);
    *(&v82 + 1) = v28;
    *&v83 = sub_10000EE58(&qword_1000DA940, &qword_1000DA938, &qword_100091D10, &unk_10009A9F8);
    v29 = sub_100019E28(&v81);
    *v29 = 0x4032000000000000;
    type metadata accessor for ProximityCardHeaderViewModel(0);
    sub_100019B48(&qword_1000DA948, type metadata accessor for ProximityCardHeaderViewModel, &unk_10009A774);
    v29[1] = ObservedObject.init(wrappedValue:)();
    v29[2] = v30;
    sub_10001A5E0(v19, v17, type metadata accessor for ActivityIcon);
    State.init(wrappedValue:)();
    sub_10001A6B0(v19, type metadata accessor for ActivityIcon);
    v31 = v29 + *(v28 + 44);
    LOBYTE(v86[0]) = 0;
    State.init(wrappedValue:)();
    v32 = *(&v79[0] + 1);
    *v31 = v79[0];
    *(v31 + 1) = v32;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10001A510(&v81, v79, &qword_1000DA920, &qword_100091C70);
    static Published.subscript.setter();
    sub_10000A628(&v81, &qword_1000DA920, &qword_100091C70);
    dispatch thunk of UIHostingController.rootView.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v81) = 1;
    static Published.subscript.setter();
    *&v79[0] = a1;
    sub_10000ED88(0, &qword_1000DA950, UIViewController_ptr);
    v33 = a1;
    State.init(wrappedValue:)();
    v34 = v81;
    dispatch thunk of UIHostingController.rootView.getter();
    *(&v82 + 1) = sub_1000056EC(&qword_1000DA958, &qword_100091D18);
    v35 = sub_100019E8C();
    v81 = v34;
    LOWORD(v82) = 0;
    *&v83 = v35;
    *(&v83 + 1) = 0x726F737365636361;
    *&v84 = 0xE900000000000079;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10001A510(&v81, v79, &qword_1000DA930, &qword_100091D08);
    v67 = *(&v34 + 1);

    v66 = v34;
    static Published.subscript.setter();
    sub_10000A628(&v81, &qword_1000DA930, &qword_100091D08);
    v36 = OBJC_IVAR____TtC13PCViewService13CardPresenter_model;

    CurrentValueSubject.value.getter();
    v37 = *&v79[0];
    if (*&v79[0] == 2)
    {
      CurrentValueSubject.value.getter();

      v37 = v81;
    }

    else
    {
    }

    if (v37 == 1)
    {
      if (qword_1000D9740 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_1000047A0(v38, qword_1000DA480);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Using current MRNowPlayingPlayerResponse for HomePod", v41, 2u);
      }

      CurrentValueSubject.value.getter();
      v37 = *&v79[0];
      if (*&v79[0] == 1)
      {
        CurrentValueSubject.value.getter();

        v37 = v81;
        if (!v81)
        {
          goto LABEL_31;
        }
      }

      else
      {

        if (!v37)
        {
LABEL_31:
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            *v62 = 0;
            _os_log_impl(&_mh_execute_header, v60, v61, "### No environment.mrResponse", v62, 2u);
          }

          v37 = 0;
          goto LABEL_26;
        }
      }
    }

    else
    {
      if (qword_1000D9740 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_1000047A0(v42, qword_1000DA480);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Using MRNowPlayingPlayerResponse specified by initialMediaTransferStatus", v45, 2u);
      }
    }

    v46 = v37;
LABEL_26:
    sub_1000101EC();
    sub_10006DDF4(v37);

    v47 = (*&v21[v36] + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_initialMediaTransferStatus);
    v48 = *v47 == 1;
    v65 = v37;
    if (v48)
    {
      v49 = 0;
    }

    else
    {
      v49 = (v47[1] < 3uLL) & v47[1];
    }

    sub_10006E80C(v49);

    sub_10000ED88(0, &qword_1000DA460, OS_dispatch_queue_ptr);
    v64 = static OS_dispatch_queue.main.getter();
    v50 = v71;
    static DispatchTime.now()();
    + infix(_:_:)();
    v72 = *(v72 + 8);
    (v72)(v50, v78);
    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v83 = sub_100019F98;
    *(&v83 + 1) = v51;
    *&v81 = _NSConcreteStackBlock;
    *(&v81 + 1) = 1107296256;
    *&v82 = sub_100035630;
    *(&v82 + 1) = &unk_1000C7C28;
    v52 = _Block_copy(&v81);

    v53 = v73;
    static DispatchQoS.unspecified.getter();
    *&v81 = _swiftEmptyArrayStorage;
    sub_100019B48(&qword_1000D9FA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000056EC(&qword_1000D9FA8, &unk_100091780);
    sub_10000EE58(&qword_1000D9FB0, &qword_1000D9FA8, &unk_100091780, &protocol conformance descriptor for [A]);
    v54 = v21;
    v55 = v75;
    v56 = v68;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = v77;
    v58 = v64;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v52);

    (*(v70 + 8))(v55, v56);
    (*(v74 + 8))(v53, v76);
    (v72)(v57, v78);
    *&v81 = 0x65646F4D64726163;
    *(&v81 + 1) = 0xE90000000000003DLL;

    v59._countAndFlagsBits = sub_100037BDC(v69);
    String.append(_:)(v59);

    *&v79[0] = 3;
    *(v79 + 8) = 0u;
    *(&v79[1] + 8) = 0u;
    *(&v79[2] + 8) = 0u;
    BYTE8(v79[3]) = 66;
    *(&v79[3] + 9) = v86[0];
    HIDWORD(v79[3]) = *(v86 + 3);
    v80 = v81;
    PassthroughSubject.send(_:)();

    v83 = v79[2];
    v84 = v79[3];
    v85 = v80;
    v81 = v79[0];
    v82 = v79[1];
    sub_10000A628(&v81, &qword_1000DA8C8, &qword_100091B58);

    return;
  }

  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000047A0(v22, qword_1000DA480);
  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  sub_100019E10(a1, 1);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v27;
    *v26 = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "### Failed to load homeCard: error=%@", v25, 0xCu);
    sub_10000A628(v26, &qword_1000DA8D0, &qword_100091B60);
  }

  sub_100019E1C(a1, 1);

  sub_1000816E8(a1, v86);
  v79[0] = v86[0];
  v79[1] = v86[1];
  *&v79[2] = v87;
  *(&v79[2] + 8) = v88;
  BYTE8(v79[3]) = 32;
  *&v80 = 0xD000000000000017;
  *(&v80 + 1) = 0x80000001000A16C0;
  PassthroughSubject.send(_:)();

  v83 = v79[2];
  v84 = v79[3];
  v85 = v80;
  v81 = v79[0];
  v82 = v79[1];
  sub_10000A628(&v81, &qword_1000DA8C8, &qword_100091B58);
  sub_10001681C(0xD000000000000017, 0x80000001000A16C0, 0, 0);
}

char *sub_100014E38(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *&result[OBJC_IVAR____TtC13PCViewService13CardPresenter_cardViewController];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v3;

    sub_100015CEC(v5, 1, 0, sub_100019FA0, v4);
  }

  return result;
}

void *sub_100014F08(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_1000101EC();

    sub_10006E450(sub_100019FA8, a1);
  }

  return result;
}

void sub_100014FA0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void *sub_100014FFC(uint64_t a1)
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000047A0(v1, qword_1000DA480);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Education view continue invoked", v4, 2u);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;

    *&v7 = 0;
    BYTE8(v10) = 96;
    *&v11 = 0xD000000000000015;
    *(&v11 + 1) = 0x80000001000A16E0;
    PassthroughSubject.send(_:)();

    v12[2] = v9;
    v12[3] = v10;
    v12[4] = v11;
    v12[0] = v7;
    v12[1] = v8;
    return sub_10000A628(v12, &qword_1000DA8C8, &qword_100091B58);
  }

  return result;
}

void sub_100015198(char a1)
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DA480);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *&v11[0] = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000343F8(0xD000000000000026, 0x80000001000A1670, v11);
    *(v5 + 12) = 2080;
    v6 = String.init<A>(describing:)();
    v8 = sub_1000343F8(v6, v7, v11);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: event=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (a1)
  {
    *v9 = 5;
    memset(&v9[8], 0, 48);
    v9[56] = 66;
    *&v10 = 0xD00000000000001CLL;
    *(&v10 + 1) = 0x80000001000A1650;

    PassthroughSubject.send(_:)();

    v11[2] = *&v9[32];
    v11[3] = *&v9[48];
    v11[4] = v10;
    v11[0] = *v9;
    v11[1] = *&v9[16];
    sub_10000A628(v11, &qword_1000DA8C8, &qword_100091B58);
  }

  else
  {
    sub_10001681C(0x61742065736F6C43, 0xEC00000064657070, 0, 0);
  }
}

uint64_t sub_100015400()
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000047A0(v1, qword_1000DA480);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000343F8(0xD000000000000018, 0x80000001000A1630, &v19);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000529C(v5);
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = *(*&v7[OBJC_IVAR____TtC13PCViewService13CardPresenter__isAnimatingIn] + 24);
    _os_log_impl(&_mh_execute_header, v8, v9, "Is animating in = %{BOOL}d", v10, 8u);
  }

  if (*(*&v7[OBJC_IVAR____TtC13PCViewService13CardPresenter__isAnimatingIn] + 24) == 1)
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "### Still animating in, waiting for it to be done before dismissing.", v13, 2u);
    }

    v19 = sub_10006BD88();
    sub_1000056EC(&qword_1000DA8E8, &qword_100091BC0);
    sub_10000EE58(&qword_1000DA8F0, &qword_1000DA8E8, &qword_100091BC0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v14 = Publisher.eraseToAnyPublisher()();

    v19 = v14;
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = sub_100019AEC;
    v16[4] = v6;

    sub_1000056EC(&qword_1000DA8F8, &unk_100091BC8);
    sub_10000EE58(&qword_1000DA900, &qword_1000DA8F8, &unk_100091BC8, &protocol conformance descriptor for AnyPublisher<A, B>);
    v17 = Publisher<>.sink(receiveValue:)();

    *&v7[OBJC_IVAR____TtC13PCViewService13CardPresenter_animatingInListener] = v17;
  }

  else
  {
    sub_100015838(v7);
  }
}

uint64_t sub_100015838(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ED88(0, &qword_1000DA460, OS_dispatch_queue_ptr);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100019B40;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035630;
  aBlock[3] = &unk_1000C7B60;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100019B48(&qword_1000D9FA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000056EC(&qword_1000D9FA8, &unk_100091780);
  sub_10000EE58(&qword_1000D9FB0, &qword_1000D9FA8, &unk_100091780, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v12 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v11);
}

void sub_100015B30(uint64_t a1)
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000047A0(v1, qword_1000DA480);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Triggering Dismissal", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10001681C(0x74756220656D6F48, 0xEB000000006E6F74, 0, 0);
  }
}

_BYTE *sub_100015C64(_BYTE *result, uint64_t a2, uint64_t (*a3)(char *))
{
  if ((*result & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *&Strong[OBJC_IVAR____TtC13PCViewService13CardPresenter_animatingInListener] = 0;
    }

    return a3(Strong);
  }

  return result;
}

uint64_t sub_100015CEC(void *a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000047A0(v10, qword_1000DA480);

  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v45 = v6;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_1000343F8(0xD00000000000002FLL, 0x80000001000A1600, &aBlock);
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v11;
    *(v14 + 22) = 2080;
    v16 = a2;
    if (a3)
    {
      v48 = a3;
      v17 = v11;

      sub_1000056EC(&qword_1000DA8D8, &qword_100091BB0);
      v18 = String.init<A>(describing:)();
      v20 = v19;
    }

    else
    {
      v21 = v11;
      v20 = 0xE300000000000000;
      v18 = 7104878;
    }

    v22 = sub_1000343F8(v18, v20, &aBlock);

    *(v14 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s: viewController=%@, detents=%s", v14, 0x20u);
    sub_10000A628(v15, &qword_1000DA8D0, &qword_100091B60);

    swift_arrayDestroy();

    v6 = v45;
    a2 = v16;
  }

  else
  {
  }

  v23 = *(v6 + OBJC_IVAR____TtC13PCViewService13CardPresenter_model);

  CurrentValueSubject.value.getter();
  if (v48 == 2)
  {
    CurrentValueSubject.value.getter();

    if (aBlock != 1)
    {
      return result;
    }
  }

  else
  {

    if ((v48 & 1) == 0)
    {
      return result;
    }
  }

  v25 = v6;
  v26 = [v11 sheetPresentationController];
  if (!v26)
  {
    goto LABEL_16;
  }

  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = a2 & 1;
  *(v28 + 32) = a3;
  v29 = swift_allocObject();
  v30 = sub_100019A6C;
  *(v29 + 16) = sub_100019A6C;
  *(v29 + 24) = v28;
  v53 = sub_100019A8C;
  v54 = v29;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_10001651C;
  v52 = &unk_1000C7AE8;
  v31 = _Block_copy(&aBlock);

  v32 = v27;

  [v32 animateChanges:v31];

  _Block_release(v31);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
LABEL_16:
    v30 = 0;
    v28 = 0;
  }

  v33 = [v11 presentingViewController];
  if (v33)
  {

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Already presented - no presentation needed", v36, 2u);
    }

    if (a4)
    {
      a4();
    }
  }

  else
  {
    v37 = *(v25 + OBJC_IVAR____TtC13PCViewService13CardPresenter__isAnimatingIn);
    *(v37 + 24) = 1;

    sub_10006BD88();
    LOBYTE(aBlock) = *(v37 + 24);
    CurrentValueSubject.send(_:)();

    sub_100010470();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 0;
    static Published.subscript.setter();
    v38 = (v25 + OBJC_IVAR____TtC13PCViewService13CardPresenter_cardPresentingAnimationBlock);
    v39 = *(v25 + OBJC_IVAR____TtC13PCViewService13CardPresenter_cardPresentingAnimationBlock);
    v40 = *(v25 + OBJC_IVAR____TtC13PCViewService13CardPresenter_cardPresentingAnimationBlock + 8);
    *v38 = a4;
    v38[1] = a5;
    sub_10000B17C(v39, v40);
    v41 = *(v23 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_rootViewController);
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = sub_100019A24;
    v54 = v42;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_100035630;
    v52 = &unk_1000C7A70;
    v43 = _Block_copy(&aBlock);
    sub_10000B16C(a4, a5);
    v44 = v41;

    [v44 presentViewController:v11 animated:1 completion:v43];
    _Block_release(v43);
  }

  return sub_10000B17C(v30, v28);
}

void sub_100016350(void *a1, char a2, uint64_t a3)
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000DA480);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Animating changes...", v9, 2u);
  }

  [a1 setPrefersGrabberVisible:a2 & 1];
  if (!a3)
  {
    sub_1000056EC(&qword_1000DA8E0, &qword_100091BB8);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100091A40;
    *(v10 + 32) = [objc_opt_self() largeDetent];
  }

  sub_10000ED88(0, &qword_1000DA8C0, UISheetPresentationControllerDetent_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setDetents:isa];
}

void sub_100016544(uint64_t a1)
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000047A0(v1, qword_1000DA480);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished presenting sheet", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;

    *v16 = 1;
    memset(&v16[8], 0, 48);
    v16[56] = 0x80;
    *&v17 = 0x65746E6573657270;
    *(&v17 + 1) = 0xE900000000000064;
    PassthroughSubject.send(_:)();

    v18[2] = *&v16[32];
    v18[3] = *&v16[48];
    v18[4] = v17;
    v18[0] = *v16;
    v18[1] = *&v16[16];
    sub_10000A628(v18, &qword_1000DA8C8, &qword_100091B58);
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    *(*(v7 + OBJC_IVAR____TtC13PCViewService13CardPresenter__isAnimatingIn) + 24) = 0;
    v8 = v7;

    sub_10006BD88();
    CurrentValueSubject.send(_:)();
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    sub_100010470();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = (v11 + OBJC_IVAR____TtC13PCViewService13CardPresenter_cardPresentingAnimationBlock);
    v14 = *(v11 + OBJC_IVAR____TtC13PCViewService13CardPresenter_cardPresentingAnimationBlock);
    v13 = *(v11 + OBJC_IVAR____TtC13PCViewService13CardPresenter_cardPresentingAnimationBlock + 8);
    *v12 = 0;
    v12[1] = 0;
    v15 = v11;
    sub_10000B17C(v14, v13);
  }
}

void sub_10001681C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000047A0(v10, qword_1000DA480);

  sub_10000B16C(a3, a4);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  sub_10000B17C(a3, a4);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_1000343F8(0xD00000000000001BLL, 0x80000001000A15E0, aBlock);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1000343F8(a1, a2, aBlock);
    *(v13 + 22) = 2080;
    if (a3)
    {
      v14 = 0x3E656D6F733CLL;
    }

    else
    {
      v14 = 7104878;
    }

    v15 = a1;
    if (a3)
    {
      v16 = 0xE600000000000000;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v17 = sub_1000343F8(v14, v16, aBlock);
    a1 = v15;

    *(v13 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s: reason=%s, completion=%s", v13, 0x20u);
    swift_arrayDestroy();

    v5 = v4;
  }

  v18 = *(v5 + OBJC_IVAR____TtC13PCViewService13CardPresenter_cardViewController);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;
  aBlock[4] = sub_100019A0C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035630;
  aBlock[3] = &unk_1000C7A48;
  v21 = _Block_copy(aBlock);

  sub_10000B16C(a3, a4);

  [v18 dismissViewControllerAnimated:1 completion:v21];
  _Block_release(v21);
  v22 = [v18 transitionCoordinator];
  if (v22)
  {
    sub_100016E44(v22);
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "### No transitionCoordinator", v25, 2u);
    }
  }
}

void *sub_100016BC8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000047A0(v7, qword_1000DA480);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "HomeCard finished dismissing - Purging home card", v10, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;

    *&v18 = a2;
    *(&v18 + 1) = a3;
    BYTE8(v21) = 0;
    *&v22 = a2;
    *(&v22 + 1) = a3;
    swift_bridgeObjectRetain_n();
    PassthroughSubject.send(_:)();

    v23[2] = v20;
    v23[3] = v21;
    v23[4] = v22;
    v23[0] = v18;
    v23[1] = v19;
    sub_10000A628(v23, &qword_1000DA8C8, &qword_100091B58);
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = *(v13 + OBJC_IVAR____TtC13PCViewService13CardPresenter_blurView);

    [v15 removeFromSuperview];
  }

  if (a4)
  {
    a4();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;

    PassthroughSubject.send(_:)();
  }

  return result;
}

void sub_100016E44(void *a1)
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DA480);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000343F8(0xD000000000000017, 0x80000001000A1560, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000529C(v6);
  }

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_100019994;
  v15 = v7;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100017F7C;
  v13 = &unk_1000C7980;
  v8 = _Block_copy(&v10);

  v14 = sub_100018294;
  v15 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100017F7C;
  v13 = &unk_1000C79A8;
  v9 = _Block_copy(&v10);
  [a1 animateAlongsideTransition:v8 completion:v9];
  _Block_release(v9);
  _Block_release(v8);
}

void sub_1000170A0()
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DA480);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v3 = 136315394;
    *(v3 + 4) = sub_1000343F8(0xD000000000000017, 0x80000001000A15C0, &v7);
    *(v3 + 12) = 2080;
    v4 = String.init<A>(describing:)();
    v6 = sub_1000343F8(v4, v5, &v7);

    *(v3 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: event=%s", v3, 0x16u);
    swift_arrayDestroy();
  }

  sub_10001681C(0x61742065736F6C43, 0xEC00000064657070, 0, 0);
}

void sub_100017260(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000DA480);
  sub_10001992C(a2, a3);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_100019944(a2, a3);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v23 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_1000343F8(0xD000000000000031, 0x80000001000A14E0, &v23);
    *(v10 + 12) = 2080;
    *&v28 = a2;
    *(&v28 + 1) = a3;
    sub_10001992C(a2, a3);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000343F8(v12, v13, &v23);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2112;
    *(v10 + 24) = v7;
    *v11 = v7;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: event=%s, controller=%@", v10, 0x20u);
    sub_10000A628(v11, &qword_1000DA8D0, &qword_100091B60);

    swift_arrayDestroy();
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        return;
      }

LABEL_12:
      v16 = swift_unknownObjectRetain();
      sub_10001771C(v16);
      *&v26 = 0;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      BYTE8(v26) = 0x80;
      *&v27 = 0x69746E6573657270;
      *(&v27 + 1) = 0xEA0000000000676ELL;

      PassthroughSubject.send(_:)();

      sub_100019944(a2, a3);
      v30 = v25;
      v31 = v26;
      v32 = v27;
      v28 = v23;
      v29 = v24;
      sub_10000A628(&v28, &qword_1000DA8C8, &qword_100091B58);
      return;
    }

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_20;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "### No transitionCoordinator?";
    goto LABEL_19;
  }

  if (a3 != 3)
  {
    if (a3 == 2)
    {
      *&v23 = 0xD000000000000010;
      *(&v23 + 1) = 0x80000001000A14C0;
      BYTE8(v26) = 0;
      *&v27 = 0xD000000000000010;
      *(&v27 + 1) = 0x80000001000A14C0;

      PassthroughSubject.send(_:)();

      v30 = v25;
      v31 = v26;
      v32 = v27;
      v28 = v23;
      v29 = v24;
      sub_10000A628(&v28, &qword_1000DA8C8, &qword_100091B58);
      *&v23 = 0xD000000000000010;
      *(&v23 + 1) = 0x80000001000A14C0;

      PassthroughSubject.send(_:)();

      return;
    }

    goto LABEL_12;
  }

  v21 = [v7 presentedViewController];
  v22 = [v21 transitionCoordinator];

  if (v22)
  {
    sub_100016E44(v22);
    swift_unknownObjectRelease();
    return;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "### No transitionCoordinator";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v17, v18, v20, v19, 2u);
  }

LABEL_20:
}

void sub_10001771C(void *a1)
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DA480);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000343F8(0xD00000000000001ALL, 0x80000001000A15A0, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000529C(v6);
  }

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_1000199B4;
  v15 = v7;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100017F7C;
  v13 = &unk_1000C79D0;
  v8 = _Block_copy(&v10);

  v14 = sub_100017FDC;
  v15 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100017F7C;
  v13 = &unk_1000C79F8;
  v9 = _Block_copy(&v10);
  [a1 animateAlongsideTransition:v8 completion:v9];
  _Block_release(v9);
  _Block_release(v8);
}

uint64_t sub_1000179A8(uint64_t a1)
{
  result = type metadata accessor for ActivityDisplayContext(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100017A84(uint64_t a1, uint64_t a2)
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DA480);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Transition animation starting", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100017C3C(1);
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v10 = *(v8 + OBJC_IVAR____TtC13PCViewService13CardPresenter_cardPresentingAnimationBlock);
    v9 = *(v8 + OBJC_IVAR____TtC13PCViewService13CardPresenter_cardPresentingAnimationBlock + 8);
    v11 = v8;
    sub_10000B16C(v10, v9);

    if (v10)
    {
      v10();
      sub_10000B17C(v10, v9);
    }
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = (v12 + OBJC_IVAR____TtC13PCViewService13CardPresenter_cardPresentingAnimationBlock);
    v15 = *(v12 + OBJC_IVAR____TtC13PCViewService13CardPresenter_cardPresentingAnimationBlock);
    v14 = *(v12 + OBJC_IVAR____TtC13PCViewService13CardPresenter_cardPresentingAnimationBlock + 8);
    *v13 = 0;
    v13[1] = 0;
    v16 = v12;
    sub_10000B17C(v15, v14);
  }
}

void sub_100017C3C(char a1)
{
  v2 = v1;
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000047A0(v4, qword_1000DA480);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000343F8(0xD00000000000001FLL, 0x80000001000A1580, &v23);
    *(v7 + 12) = 2080;
    v8 = String.init<A>(describing:)();
    v10 = sub_1000343F8(v8, v9, &v23);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: state=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if ((a1 & 1) == 0)
  {
    [*(v2 + OBJC_IVAR____TtC13PCViewService13CardPresenter_blurView) setEffect:0];
    return;
  }

  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v11 = qword_1000F3C58;
  v12 = *(qword_1000F3C58 + 616);
  v13 = sub_100025A44();

  if ((v13 & 1) == 0)
  {
    v21 = *(v11 + 624);
    v22 = sub_100025A58();

    v17 = [objc_opt_self() effectWithStyle:v22];
    goto LABEL_15;
  }

  v14 = *(v11 + 632);
  sub_100025A38();
  v16 = v15;

  v17 = [objc_opt_self() effectWithBlurRadius:v16];
  if (v17)
  {
LABEL_15:
    [*(v2 + OBJC_IVAR____TtC13PCViewService13CardPresenter_blurView) setEffect:v17];

    return;
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "### Could not create UIBlurEffect", v20, 2u);
  }
}