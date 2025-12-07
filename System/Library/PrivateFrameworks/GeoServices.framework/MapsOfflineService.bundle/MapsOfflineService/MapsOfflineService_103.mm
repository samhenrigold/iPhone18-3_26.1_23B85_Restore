void sub_691C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_334D18(&a9);
  sub_334D18(&a17);
  sub_334D18(&a33);
  sub_334D18((v33 - 160));
  _Unwind_Resume(a1);
}

uint64_t *sub_691D1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = 0;
  v17 = 0uLL;
  v3 = a1[1];
  if (v3 != *a1)
  {
    if (!((0x5DDB1ADCB91F64A7 * ((v3 - *a1) >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v18 = &v14;
  v5 = vdupq_n_s64(0);
  *a2 = 0;
  *(a2 + 8) = 0;
  v6 = v16;
  *(a2 + 16) = v16;
  v7 = v17;
  *(a2 + 24) = v17;
  v16 = 0;
  v17 = 0uLL;
  *(a2 + 40) = v5;
  *(a2 + 56) = 0;
  v15 = 0;
  v14 = 0uLL;
  if (v6 != v7)
  {
    v8 = v7 - v6;
    v9 = v8 - 1;
    if (v8 == 1)
    {
      v10 = 0;
    }

    else
    {
      if (*v6 == *v5.i64[0])
      {
        v10 = 0;
        v11 = v8 - 2;
        while (v11 != v10)
        {
          v12 = v6[v10 + 1];
          v13 = *(v5.i64[0] + 8 + 8 * v10++);
          if (v12 != v13)
          {
            goto LABEL_14;
          }
        }

        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

LABEL_14:
      *(a2 + 8) = v10;
    }

    *a2 = v6[v10];
  }

  return result;
}

void sub_691F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_691F84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = 0;
  v9 = 0uLL;
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    if (!((0x5DDB1ADCB91F64A7 * ((v3 - *a1) >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v10 = v7;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = v8;
  *(a2 + 16) = v8;
  v6 = v9;
  *(a2 + 24) = v9;
  v8 = 0;
  v9 = 0uLL;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = v3 - v2;
  memset(v7, 0, sizeof(v7));
  if (v5 != v6)
  {
    *(a2 + 8) = -1;
    *a2 = MEMORY[0xFFFFFFFFFFFFFFF8];
  }

  return result;
}

void sub_692158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_692190(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 144);
  if (v2 - v1 < 1)
  {
    v7 = 0;
    v3 = 0;
  }

  else
  {
    v3 = 0x7E3F1F8FC7E3F1F9 * ((v2 - v1) >> 4);
    while (1)
    {
      v4 = operator new(1168 * v3, &std::nothrow);
      if (v4)
      {
        break;
      }

      v5 = v3 >> 1;
      v6 = v3 > 1;
      v3 >>= 1;
      if (!v6)
      {
        v7 = 0;
        v3 = v5;
        goto LABEL_8;
      }
    }

    v7 = v4;
  }

LABEL_8:
  sub_697D50(v1, v2, &v8, 0x7E3F1F8FC7E3F1F9 * ((v2 - v1) >> 4), v7, v3);
  if (v7)
  {
    operator delete(v7);
  }
}

void sub_692260(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_692278(uint64_t *a1, uint64_t a2)
{
  v3 = a1[18];
  if (v3 >= a1[19])
  {
    result = sub_692CB8(a1 + 17, a2);
    a1[18] = result;
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = 0;
    *(v3 + 1136) = 0;
    if (*(a2 + 1136) == 1)
    {
      v4 = a2;
      sub_52B7D8(v3 + 16, a2 + 16);
      *(v3 + 1136) = 1;
      a2 = v4;
    }

    v5 = *(a2 + 1144);
    *(v3 + 1159) = *(a2 + 1159);
    *(v3 + 1144) = v5;
    result = v3 + 1168;
    a1[18] = v3 + 1168;
    a1[18] = v3 + 1168;
  }

  return result;
}

void sub_692330(_Unwind_Exception *exception_object)
{
  if (*(v3 + 1136) == 1)
  {
    sub_3A9518(v2);
  }

  *(v1 + 144) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t sub_692354(uint64_t *a1, uint64_t a2, int a3)
{
  sub_64E914(a1 + 22, a2, a3);
  v6 = a1[23];
  if (v6 >= a1[24])
  {
    v8 = sub_1CEE8((a1 + 22), a2);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(a1[23], *a2, *(a2 + 8));
    }

    else
    {
      v7 = *a2;
      *(v6 + 16) = *(a2 + 16);
      *v6 = v7;
    }

    v8 = v6 + 24;
    a1[23] = v6 + 24;
  }

  a1[23] = v8;
  sub_64E914((*a1 + 9456), a2, a3);
  v9 = *a1;
  v10 = *(*a1 + 9464);
  if (v10 >= *(v9 + 9472))
  {
    result = sub_1CEE8(v9 + 9456, a2);
    *(v9 + 9464) = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(v10, *a2, *(a2 + 8));
    }

    else
    {
      v11 = *a2;
      *(v10 + 16) = *(a2 + 16);
      *v10 = v11;
    }

    result = v10 + 24;
    *(v9 + 9464) = v10 + 24;
    *(v9 + 9464) = v10 + 24;
  }

  return result;
}

uint64_t *sub_692474@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      result = sub_530314(a2, a2[1], *(v2 + 11880), *(v2 + 11888), 0xCF3CF3CF3CF3CF3DLL * ((*(v2 + 11888) - *(v2 + 11880)) >> 3));
      v2 += 12656;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t *sub_69250C@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      result = sub_530314(a2, a2[1], *(v2 + 11856), *(v2 + 11864), 0xCF3CF3CF3CF3CF3DLL * ((*(v2 + 11864) - *(v2 + 11856)) >> 3));
      v2 += 12656;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t *sub_6925A4@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      result = sub_530314(a2, a2[1], *(v2 + 11928), *(v2 + 11936), 0xCF3CF3CF3CF3CF3DLL * ((*(v2 + 11936) - *(v2 + 11928)) >> 3));
      v2 += 12656;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t *sub_69263C@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      result = sub_530314(a2, a2[1], *(v2 + 11904), *(v2 + 11912), 0xCF3CF3CF3CF3CF3DLL * ((*(v2 + 11912) - *(v2 + 11904)) >> 3));
      v2 += 12656;
    }

    while (v2 != v3);
  }

  return result;
}

void ***sub_6926D4(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_17:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 4));
        if ((*(v3 - 41) & 0x80000000) == 0)
        {
LABEL_7:
          if ((*(v3 - 65) & 0x80000000) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v3 - 41) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v3 - 8));
      if ((*(v3 - 65) & 0x80000000) == 0)
      {
LABEL_8:
        if ((*(v3 - 105) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }

LABEL_13:
      operator delete(*(v3 - 11));
      if ((*(v3 - 105) & 0x80000000) == 0)
      {
LABEL_9:
        v5 = v3 - 20;
        if (*(v3 - 137) < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_4;
      }

LABEL_14:
      operator delete(*(v3 - 16));
      v5 = v3 - 20;
      if (*(v3 - 137) < 0)
      {
LABEL_15:
        operator delete(*v5);
      }

LABEL_4:
      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_17;
      }
    }
  }

  return a1;
}

void sub_6927B4(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  v10 = *a1;
  *v11 = v3;
  v12 = *(a1 + 4);
  a1[1] = 0uLL;
  *v13 = *(a1 + 40);
  v14 = *(a1 + 7);
  a1[2] = 0uLL;
  a1[3] = 0uLL;
  v4 = a2[1];
  v5 = *a2;
  *v6 = v4;
  v7 = *(a2 + 4);
  a2[1] = 0uLL;
  *__p = *(a2 + 40);
  v9 = *(a2 + 7);
  a2[2] = 0uLL;
  a2[3] = 0uLL;
  sub_69289C(&v10, &v5, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }
}

void sub_692880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_334D18(&a9);
  sub_334D18(&a17);
  _Unwind_Resume(a1);
}

void sub_69289C(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t x8_0@<X8>)
{
  v16 = 0;
  v4 = a1[1];
  v11 = *a1;
  *v12 = v4;
  v13 = *(a1 + 4);
  a1[1] = 0uLL;
  *v14 = *(a1 + 40);
  v15 = *(a1 + 7);
  a1[2] = 0uLL;
  a1[3] = 0uLL;
  v5 = a2[1];
  v6 = *a2;
  *v7 = v5;
  v8 = *(a2 + 4);
  a2[1] = 0uLL;
  *__p = *(a2 + 40);
  v10 = *(a2 + 7);
  a2[2] = 0uLL;
  a2[3] = 0uLL;
  sub_692988(&v11, &v6, x8_0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_69296C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_334D18(&a9);
  sub_334D18(&a17);
  _Unwind_Resume(a1);
}

void sub_692988(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = a1 + 5;
  v9 = a2[5];
  v10 = a2[6];
  if (v8 == v6 || v9 == v10)
  {
    if ((v8 == v6) != (v9 == v10))
    {
      goto LABEL_10;
    }

LABEL_15:
    v15 = a1[1];
    *a3 = *a1;
    *(a3 + 16) = v15;
    v16 = *(a1 + 4);
    a1[1] = 0uLL;
    *(a1 + 4) = 0;
    *(a3 + 32) = v16;
    *(a3 + 40) = v8;
    v17 = *(a1 + 7);
    *(a3 + 48) = v6;
    *(a3 + 56) = v17;
    *v7 = 0;
    a1[3] = 0uLL;
    return;
  }

  if (*(a1 + 1) == a2[1] && *a1 == *a2)
  {
    goto LABEL_15;
  }

LABEL_10:
  v12 = a1 + 1;
  v13 = *(a1 + 2);
  v29 = *a1;
  v31 = 0;
  v32 = 0;
  __p = 0;
  v14 = *(a1 + 3);
  if (v14 != v13)
  {
    if (((v14 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  if (v6 != v8)
  {
    if (((v6 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v18 = 0;
  v19 = 0;
LABEL_18:
  v20 = ((v19 - v18) >> 3) - 1;
  v21 = *(&v29 + 1);
  v22 = v29;
  v23 = __p + 8;
  while (1)
  {
    *&v29 = ++v22;
    if (v21 < v20)
    {
      while (v22 == *&v18[8 * v21])
      {
        v22 = *&v23[8 * v21];
        v24 = v21 + 1;
        *&v29 = v22;
        *(&v29 + 1) = v24;
        ++v21;
        if (v20 == v24)
        {
          v21 = v24;
          v25 = ((v19 - v18) >> 3) - 1;
          v26 = a2[5];
          v27 = a2[6];
          if (v18 != v19)
          {
            goto LABEL_25;
          }

          goto LABEL_29;
        }
      }
    }

    v25 = v21;
    v26 = a2[5];
    v27 = a2[6];
    if (v18 == v19)
    {
LABEL_29:
      if ((v18 == v19) == (v26 == v27))
      {
        break;
      }

      goto LABEL_30;
    }

LABEL_25:
    if (v26 == v27)
    {
      goto LABEL_29;
    }

    if (v25 == a2[1] && v22 == *a2)
    {
      break;
    }

LABEL_30:
    if (*v22 < **a1)
    {
      *a1 = v29;
      if (&v29 != a1)
      {
        sub_61532C(a1 + 2, __p, v31, (v31 - __p) >> 3);
        sub_61532C(v7, v33, v34, (v34 - v33) >> 3);
        v18 = v33;
        v19 = v34;
        goto LABEL_18;
      }
    }
  }

  v28 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v28;
  *(a3 + 32) = *(a1 + 4);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *v12 = 0;
  *(a3 + 40) = *(a1 + 40);
  *(a3 + 56) = *(a1 + 7);
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  if (v18)
  {
    v34 = v18;
    operator delete(v18);
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }
}

void sub_692C8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_692CB8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x7E3F1F8FC7E3F1F9 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x381C0E070381C0)
  {
    sub_1794();
  }

  if (0xFC7E3F1F8FC7E3F2 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xFC7E3F1F8FC7E3F2 * ((a1[2] - *a1) >> 4);
  }

  if ((0x7E3F1F8FC7E3F1F9 * ((a1[2] - *a1) >> 4)) >= 0x1C0E070381C0E0)
  {
    v6 = 0x381C0E070381C0;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x381C0E070381C0)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  v8 = 1168 * v2;
  *(v8 + 16) = 0;
  v9 = v8 + 16;
  *(v7 + 1136) = 0;
  if (*(a2 + 1136) == 1)
  {
    sub_52B7D8(v9, a2 + 16);
    *(v7 + 1136) = 1;
  }

  *(v7 + 1144) = *(a2 + 1144);
  *(v7 + 1159) = *(a2 + 1159);
  v10 = v7 + 1168;
  v19 = v7 + 1168;
  v11 = *a1;
  v12 = a1[1];
  v13 = v7 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = 0;
    do
    {
      v16 = &v11[v14];
      v17 = v13 + v14;
      *v17 = *&v11[v14];
      *(v17 + 8) = *&v11[v14 + 8];
      *(v13 + v14 + 16) = 0;
      *(v17 + 1136) = 0;
      if (v11[v14 + 1136] == 1)
      {
        sub_529850(v13 + v14 + 16, (v16 + 16));
        *(v17 + 1136) = 1;
      }

      v15 = *(v16 + 1144);
      *(v17 + 1159) = *(v16 + 1159);
      *(v17 + 1144) = v15;
      v14 += 1168;
    }

    while (v16 + 1168 != v12);
    do
    {
      if (v11[1136] == 1)
      {
        sub_3A9518((v11 + 16));
      }

      v11 += 1168;
    }

    while (v11 != v12);
    v11 = *a1;
    v10 = v19;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_692EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v4 + 1136) == 1)
  {
    sub_3A9518(v3);
  }

  sub_692F1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_692F1C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 1168;
      *(a1 + 16) = v2 - 1168;
      if (*(v2 - 32) == 1)
      {
        sub_3A9518(v2 - 1152);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_692F88(void **a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v5 = 0x1745D1745D1745DLL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v19 = (16 * ((a1[1] - *a1) >> 4));
  sub_5139E8(v19, a2);
  v19[19] = 0;
  v19[20] = 0;
  v19[21] = 0;
  v7 = *(a2 + 152);
  v6 = *(a2 + 160);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = *a1;
  v9 = a1[1];
  v10 = v19 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v19 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 2) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      *(v12 + 3) = *(v11 + 3);
      v14 = *(v11 + 2);
      *(v12 + 6) = *(v11 + 6);
      *(v12 + 2) = v14;
      *(v11 + 5) = 0;
      *(v11 + 6) = 0;
      *(v11 + 4) = 0;
      *(v12 + 7) = *(v11 + 7);
      *(v12 + 16) = *(v11 + 16);
      v15 = *(v11 + 72);
      *(v12 + 11) = *(v11 + 11);
      *(v12 + 72) = v15;
      *(v11 + 10) = 0;
      *(v11 + 11) = 0;
      *(v11 + 9) = 0;
      v16 = *(v11 + 6);
      *(v12 + 14) = *(v11 + 14);
      *(v12 + 6) = v16;
      *(v11 + 13) = 0;
      *(v11 + 14) = 0;
      *(v11 + 12) = 0;
      *(v12 + 30) = *(v11 + 30);
      v17 = *(v11 + 8);
      *(v12 + 18) = *(v11 + 18);
      *(v12 + 8) = v17;
      *(v11 + 17) = 0;
      *(v11 + 18) = 0;
      *(v11 + 16) = 0;
      *(v12 + 19) = 0;
      *(v12 + 20) = 0;
      *(v12 + 21) = 0;
      *(v12 + 152) = *(v11 + 152);
      *(v12 + 21) = *(v11 + 21);
      *(v11 + 19) = 0;
      *(v11 + 20) = 0;
      *(v11 + 21) = 0;
      v11 += 176;
      v12 += 176;
    }

    while (v11 != v9);
    do
    {
      sub_5C17B4(v8);
      v8 += 176;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v19 + 22;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v19 + 22;
}

void sub_693208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_693248(va);
  _Unwind_Resume(a1);
}

void sub_69321C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 160) = v6;
    operator delete(v6);
  }

  sub_3E5388(v3);
  sub_693248(va);
  _Unwind_Resume(a1);
}

uint64_t sub_693248(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 176;
    sub_5C17B4(i - 176);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unsigned int *sub_69329C(char **a1, uint64_t a2)
{
  v2 = 0x70913F8BCD29C245 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x3A196B1EDD80E8)
  {
    sub_1794();
  }

  if (0xE1227F179A53848ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xE1227F179A53848ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x70913F8BCD29C245 * ((a1[2] - *a1) >> 3)) >= 0x1D0CB58F6EC074)
  {
    v4 = 0x3A196B1EDD80E8;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x3A196B1EDD80E8)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 8 * ((a1[1] - *a1) >> 3);
  *v5 = 0;
  *(v5 + 1120) = -1;
  v6 = *(a2 + 1120);
  if (v6 != -1)
  {
    v17 = v5;
    (off_266C0A0[v6])(&v17, a2);
    *(v5 + 1120) = v6;
  }

  v7 = (v5 + 1128);
  v8 = *a1;
  v9 = a1[1];
  v10 = (*a1 - v9);
  v11 = &v10[v5];
  if (*a1 != v9)
  {
    v12 = &v10[v5];
    v13 = *a1;
    do
    {
      *v12 = 0;
      *(v12 + 280) = -1;
      v14 = *(v13 + 280);
      if (v14 != -1)
      {
        v17 = v12;
        (off_266C0B0[v14])(&v17, v13);
        *(v12 + 280) = v14;
      }

      v13 += 1128;
      v12 += 1128;
    }

    while (v13 != v9);
    do
    {
      v15 = *(v8 + 280);
      if (v15 != -1)
      {
        (off_266C068[v15])(&v17, v8);
      }

      *(v8 + 280) = -1;
      v8 += 1128;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v11;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_6934B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_5EBFA8(v5);
  sub_6934F8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_6934E0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *(v2 + 8) = *(a2 + 2);
  *v2 = v3;
  return result;
}

uint64_t sub_6934F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 1128;
      *(a1 + 16) = v3 - 1128;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        (off_266C068[v5])(&v7);
        v4 = *(a1 + 16);
      }

      *(v3 - 8) = -1;
      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_693598(uint64_t a1)
{
  v2 = *(a1 + 12624);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 12600);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(a1 + 12584);
  *(a1 + 12584) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = (a1 + 11791);
  v7 = *(a1 + 12560);
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *(a1 + 12544);
  *(a1 + 12544) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  *(a1 + 12504) = off_26696C8;
  if (*(a1 + 12535) < 0)
  {
    operator delete(*(a1 + 12512));
    *(a1 + 12464) = off_26696C8;
    if ((*(a1 + 12495) & 0x80000000) == 0)
    {
LABEL_13:
      v10 = *(a1 + 12440);
      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }
  }

  else
  {
    *(a1 + 12464) = off_26696C8;
    if ((*(a1 + 12495) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  operator delete(*(a1 + 12472));
  v10 = *(a1 + 12440);
  if (!v10)
  {
    goto LABEL_17;
  }

  do
  {
LABEL_23:
    v15 = *v10;
    v16 = v10[4];
    if (v16)
    {
      v10[5] = v16;
      operator delete(v16);
    }

    operator delete(v10);
    v10 = v15;
  }

  while (v15);
LABEL_17:
  v11 = *(a1 + 12424);
  *(a1 + 12424) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 12400);
  if (v12)
  {
    v13 = *(a1 + 12408);
    v14 = *(a1 + 12400);
    if (v13 != v12)
    {
      do
      {
        v17 = *(v13 - 40);
        if (v17)
        {
          *(v13 - 32) = v17;
          operator delete(v17);
        }

        v13 -= 48;
      }

      while (v13 != v12);
      v14 = *(a1 + 12400);
    }

    *(a1 + 12408) = v12;
    operator delete(v14);
  }

  v18 = *(a1 + 12376);
  if (v18)
  {
    *(a1 + 12384) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 12344);
  if (v19)
  {
    *(a1 + 12352) = v19;
    operator delete(v19);
  }

  if (*(a1 + 12343) < 0)
  {
    operator delete(*(a1 + 12320));
  }

  v20 = *(a1 + 12296);
  if (v20)
  {
    v21 = *(a1 + 12304);
    v22 = *(a1 + 12296);
    if (v21 != v20)
    {
      do
      {
        if (*(v21 - 1) < 0)
        {
          operator delete(*(v21 - 24));
        }

        v21 -= 40;
      }

      while (v21 != v20);
      v22 = *(a1 + 12296);
    }

    *(a1 + 12304) = v20;
    operator delete(v22);
  }

  v23 = *(a1 + 12272);
  if (v23)
  {
    v24 = *(a1 + 12280);
    v25 = *(a1 + 12272);
    if (v24 != v23)
    {
      do
      {
        v24 -= 616;
        sub_5C2320(v24);
      }

      while (v24 != v23);
      v25 = *(a1 + 12272);
    }

    *(a1 + 12280) = v23;
    operator delete(v25);
  }

  v26 = *(a1 + 12240);
  if (v26)
  {
    *(a1 + 12248) = v26;
    operator delete(v26);
  }

  sub_53A868(a1 + 12080);
  v27 = *(a1 + 12056);
  if (v27)
  {
    v28 = *(a1 + 12064);
    v29 = *(a1 + 12056);
    if (v28 != v27)
    {
      do
      {
        v30 = v28 - 176;
        sub_53A868(v28 - 160);
        v28 = v30;
      }

      while (v30 != v27);
      v29 = *(a1 + 12056);
    }

    *(a1 + 12064) = v27;
    operator delete(v29);
  }

  v31 = *(a1 + 12024);
  if (v31)
  {
    *(a1 + 12032) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 11984);
  if (v32)
  {
    *(a1 + 11992) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 11952);
  if (v33)
  {
    *(a1 + 11960) = v33;
    operator delete(v33);
  }

  sub_5C23C8((a1 + 11856));
  v34 = *(a1 + 11832);
  if (v34)
  {
    *(a1 + 11840) = v34;
    operator delete(v34);
  }

  if ((*(a1 + 11823) & 0x80000000) == 0)
  {
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_69:
    operator delete(*(a1 + 11768));
    v35 = *(a1 + 11752);
    if (v35 == -1)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  operator delete(*(a1 + 11800));
  if (*v6 < 0)
  {
    goto LABEL_69;
  }

LABEL_66:
  v35 = *(a1 + 11752);
  if (v35 != -1)
  {
LABEL_70:
    (off_266C078[v35])(&v102, a1 + 11720);
  }

LABEL_71:
  v36 = (a1 + 7463);
  *(a1 + 11752) = -1;
  sub_53A868(a1 + 11560);
  v37 = *(a1 + 11528);
  if (v37)
  {
    *(a1 + 11536) = v37;
    operator delete(v37);
  }

  sub_44FDEC(a1 + 11088);
  if ((*(a1 + 11079) & 0x80000000) == 0)
  {
    if ((*(a1 + 11047) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_78:
    operator delete(*(a1 + 11024));
    v38 = *(a1 + 11008);
    if (v38 == -1)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  operator delete(*(a1 + 11056));
  if (*(a1 + 11047) < 0)
  {
    goto LABEL_78;
  }

LABEL_75:
  v38 = *(a1 + 11008);
  if (v38 != -1)
  {
LABEL_79:
    (off_266C078[v38])(&v103, a1 + 10976);
  }

LABEL_80:
  *(a1 + 11008) = -1;
  sub_53A868(a1 + 10816);
  v39 = *(a1 + 10784);
  if (v39)
  {
    *(a1 + 10792) = v39;
    operator delete(v39);
  }

  sub_44FDEC(a1 + 10344);
  v40 = *(a1 + 10320);
  if (v40)
  {
    v41 = *(a1 + 10328);
    v42 = *(a1 + 10320);
    if (v41 != v40)
    {
      do
      {
        v41 -= 104;
        sub_5C24CC(v41);
      }

      while (v41 != v40);
      v42 = *(a1 + 10320);
    }

    *(a1 + 10328) = v40;
    operator delete(v42);
  }

  v43 = *(a1 + 10288);
  if (v43)
  {
    v44 = *(a1 + 10296);
    v45 = *(a1 + 10288);
    if (v44 != v43)
    {
      do
      {
        v47 = *(v44 - 48);
        if (v47)
        {
          v48 = *(v44 - 40);
          v46 = *(v44 - 48);
          if (v48 != v47)
          {
            v49 = *(v44 - 40);
            do
            {
              v51 = *(v49 - 24);
              v49 -= 24;
              v50 = v51;
              if (v51)
              {
                *(v48 - 16) = v50;
                operator delete(v50);
              }

              v48 = v49;
            }

            while (v49 != v47);
            v46 = *(v44 - 48);
          }

          *(v44 - 40) = v47;
          operator delete(v46);
        }

        v44 -= 64;
      }

      while (v44 != v43);
      v45 = *(a1 + 10288);
    }

    *(a1 + 10296) = v43;
    operator delete(v45);
  }

  v52 = *(a1 + 10264);
  if (v52)
  {
    *(a1 + 10272) = v52;
    operator delete(v52);
  }

  if (*(a1 + 10247) < 0)
  {
    operator delete(*(a1 + 10224));
  }

  sub_5EC548((a1 + 10200));
  sub_5EC548((a1 + 10176));
  sub_5EC548((a1 + 10152));
  v53 = *(a1 + 10128);
  if (v53)
  {
    v54 = *(a1 + 10136);
    v55 = *(a1 + 10128);
    if (v54 != v53)
    {
      v56 = *(a1 + 10136);
      do
      {
        v58 = *(v56 - 40);
        v56 -= 40;
        v57 = v58;
        if (v58)
        {
          *(v54 - 32) = v57;
          operator delete(v57);
        }

        v54 = v56;
      }

      while (v56 != v53);
      v55 = *(a1 + 10128);
    }

    *(a1 + 10136) = v53;
    operator delete(v55);
  }

  v59 = *(a1 + 10096);
  if (v59)
  {
    v60 = *(a1 + 10104);
    v61 = *(a1 + 10096);
    if (v60 != v59)
    {
      do
      {
        v62 = *(v60 - 208);
        if (v62)
        {
          *(v60 - 200) = v62;
          operator delete(v62);
        }

        v63 = v60 - 248;
        v64 = *(v60 - 248);
        if (v64)
        {
          *(v60 - 240) = v64;
          operator delete(v64);
        }

        v60 -= 248;
      }

      while (v63 != v59);
      v61 = *(a1 + 10096);
    }

    *(a1 + 10104) = v59;
    operator delete(v61);
  }

  sub_53A868(a1 + 9936);
  sub_53A868(a1 + 9776);
  sub_53A868(a1 + 9616);
  sub_53A868(a1 + 9456);
  sub_53A868(a1 + 9296);
  sub_5936E4((a1 + 8440));
  sub_5936E4((a1 + 7584));
  v65 = *(a1 + 7560);
  if (v65)
  {
    v66 = *(a1 + 7568);
    v67 = *(a1 + 7560);
    if (v66 != v65)
    {
      do
      {
        v66 = sub_5936E4(v66 - 107);
      }

      while (v66 != v65);
      v67 = *(a1 + 7560);
    }

    *(a1 + 7568) = v65;
    operator delete(v67);
  }

  v68 = *(a1 + 7536);
  if (v68)
  {
    v69 = *(a1 + 7544);
    v70 = *(a1 + 7536);
    if (v69 != v68)
    {
      do
      {
        v71 = *(v69 - 6);
        if (v71)
        {
          *(v69 - 5) = v71;
          operator delete(v71);
        }

        v69 -= 56;
        sub_55D550(v69);
      }

      while (v69 != v68);
      v70 = *(a1 + 7536);
    }

    *(a1 + 7544) = v68;
    operator delete(v70);
  }

  v72 = *(a1 + 7512);
  if (v72)
  {
    v73 = *(a1 + 7520);
    v74 = *(a1 + 7512);
    if (v73 != v72)
    {
      do
      {
        v73 = sub_5938B0((v73 - 140));
      }

      while (v73 != v72);
      v74 = *(a1 + 7512);
    }

    *(a1 + 7520) = v72;
    operator delete(v74);
  }

  v75 = *(a1 + 7488);
  if (v75)
  {
    v76 = *(a1 + 7496);
    v77 = *(a1 + 7488);
    if (v76 != v75)
    {
      do
      {
        v78 = *(v76 - 1);
        v76 -= 3;
        if (v78 < 0)
        {
          operator delete(*v76);
        }
      }

      while (v76 != v75);
      v77 = *(a1 + 7488);
    }

    *(a1 + 7496) = v75;
    operator delete(v77);
  }

  if (*(a1 + 7487) < 0)
  {
    operator delete(*(a1 + 7464));
    if ((*v36 & 0x80000000) == 0)
    {
LABEL_151:
      v79 = *(a1 + 7416);
      if (!v79)
      {
        goto LABEL_152;
      }

      goto LABEL_191;
    }
  }

  else if ((*v36 & 0x80000000) == 0)
  {
    goto LABEL_151;
  }

  operator delete(*(a1 + 7440));
  v79 = *(a1 + 7416);
  if (!v79)
  {
LABEL_152:
    v80 = *(a1 + 7392);
    if (!v80)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

LABEL_191:
  v100 = *(a1 + 7424);
  v101 = v79;
  if (v100 != v79)
  {
    do
    {
      v100 = sub_3A9518(v100 - 1120);
    }

    while (v100 != v79);
    v101 = *(a1 + 7416);
  }

  *(a1 + 7424) = v79;
  operator delete(v101);
  v80 = *(a1 + 7392);
  if (v80)
  {
LABEL_153:
    *(a1 + 7400) = v80;
    operator delete(v80);
  }

LABEL_154:
  sub_53A868(a1 + 7232);
  v81 = *(a1 + 7208);
  if (v81)
  {
    v82 = *(a1 + 7216);
    v83 = *(a1 + 7208);
    if (v82 != v81)
    {
      do
      {
        v84 = *(v82 - 1);
        v82 -= 3;
        if (v84 < 0)
        {
          operator delete(*v82);
        }
      }

      while (v82 != v81);
      v83 = *(a1 + 7208);
    }

    *(a1 + 7216) = v81;
    operator delete(v83);
  }

  sub_5C1688(a1 + 2408);
  sub_559E70((a1 + 1320));
  if (*(a1 + 1319) < 0)
  {
    operator delete(*(a1 + 1296));
    if ((*(a1 + 1295) & 0x80000000) == 0)
    {
LABEL_164:
      sub_6926D4((a1 + 1248));
      v85 = *(a1 + 1224);
      if (!v85)
      {
        goto LABEL_166;
      }

      goto LABEL_165;
    }
  }

  else if ((*(a1 + 1295) & 0x80000000) == 0)
  {
    goto LABEL_164;
  }

  operator delete(*(a1 + 1272));
  sub_6926D4((a1 + 1248));
  v85 = *(a1 + 1224);
  if (v85)
  {
LABEL_165:
    *(a1 + 1232) = v85;
    operator delete(v85);
  }

LABEL_166:
  v86 = *(a1 + 1200);
  if (v86)
  {
    *(a1 + 1208) = v86;
    operator delete(v86);
  }

  v87 = *(a1 + 1176);
  if (v87)
  {
    v88 = *(a1 + 1184);
    v89 = *(a1 + 1176);
    if (v88 != v87)
    {
      do
      {
        v88 -= 176;
        sub_5C17B4(v88);
      }

      while (v88 != v87);
      v89 = *(a1 + 1176);
    }

    *(a1 + 1184) = v87;
    operator delete(v89);
  }

  v90 = *(a1 + 1152);
  if (v90)
  {
    v91 = *(a1 + 1160);
    v92 = *(a1 + 1152);
    if (v91 != v90)
    {
      do
      {
        v91 -= 176;
        sub_5C17B4(v91);
      }

      while (v91 != v90);
      v92 = *(a1 + 1152);
    }

    *(a1 + 1160) = v90;
    operator delete(v92);
  }

  v93 = *(a1 + 1128);
  if (v93)
  {
    v94 = *(a1 + 1136);
    v95 = *(a1 + 1128);
    if (v94 != v93)
    {
      do
      {
        v94 = sub_5C25A8(v94 - 2616);
      }

      while (v94 != v93);
      v95 = *(a1 + 1128);
    }

    *(a1 + 1136) = v93;
    operator delete(v95);
  }

  v96 = *(a1 + 1104);
  if (v96)
  {
    v97 = *(a1 + 1112);
    v98 = *(a1 + 1104);
    if (v97 != v96)
    {
      do
      {
        v97 = sub_5C25A8(v97 - 2616);
      }

      while (v97 != v96);
      v98 = *(a1 + 1104);
    }

    *(a1 + 1112) = v96;
    operator delete(v98);
  }

  return sub_3EEA68(a1);
}

uint64_t sub_693F0C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 12656;
    sub_693598(i - 12656);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_693F6C(void **a1, uint64_t a2)
{
  v2 = 0x5DDB1ADCB91F64A7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x52DA224E52346)
  {
    sub_1794();
  }

  if (0xBBB635B9723EC94ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xBBB635B9723EC94ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x5DDB1ADCB91F64A7 * ((a1[2] - *a1) >> 4)) >= 0x296D1127291A3)
  {
    v5 = 0x52DA224E52346;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x52DA224E52346)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 16 * ((a1[1] - *a1) >> 4);
  sub_69A180(v15, a2, 0);
  v6 = 12656 * v2 + 12656;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = &v9[v15];
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = &v9[v15];
    do
    {
      v13 = sub_60F014(v12, v11);
      v11 += 12656;
      v12 = v13 + 12656;
    }

    while (v11 != v8);
    do
    {
      sub_693598(v7);
      v7 += 12656;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_6940FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_693F0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_694110(uint64_t a1)
{
  v2 = *(a1 + 12624);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 12600);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(a1 + 12584);
  *(a1 + 12584) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = (a1 + 11791);
  v7 = *(a1 + 12560);
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *(a1 + 12544);
  *(a1 + 12544) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  *(a1 + 12504) = off_26696C8;
  if (*(a1 + 12535) < 0)
  {
    operator delete(*(a1 + 12512));
    *(a1 + 12464) = off_26696C8;
    if ((*(a1 + 12495) & 0x80000000) == 0)
    {
LABEL_13:
      v10 = *(a1 + 12440);
      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }
  }

  else
  {
    *(a1 + 12464) = off_26696C8;
    if ((*(a1 + 12495) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  operator delete(*(a1 + 12472));
  v10 = *(a1 + 12440);
  if (!v10)
  {
    goto LABEL_17;
  }

  do
  {
LABEL_23:
    v15 = *v10;
    v16 = v10[4];
    if (v16)
    {
      v10[5] = v16;
      operator delete(v16);
    }

    operator delete(v10);
    v10 = v15;
  }

  while (v15);
LABEL_17:
  v11 = *(a1 + 12424);
  *(a1 + 12424) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 12400);
  if (v12)
  {
    v13 = *(a1 + 12408);
    v14 = *(a1 + 12400);
    if (v13 != v12)
    {
      do
      {
        v17 = *(v13 - 40);
        if (v17)
        {
          *(v13 - 32) = v17;
          operator delete(v17);
        }

        v13 -= 48;
      }

      while (v13 != v12);
      v14 = *(a1 + 12400);
    }

    *(a1 + 12408) = v12;
    operator delete(v14);
  }

  v18 = *(a1 + 12376);
  if (v18)
  {
    *(a1 + 12384) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 12344);
  if (v19)
  {
    *(a1 + 12352) = v19;
    operator delete(v19);
  }

  if (*(a1 + 12343) < 0)
  {
    operator delete(*(a1 + 12320));
  }

  v20 = *(a1 + 12296);
  if (v20)
  {
    v21 = *(a1 + 12304);
    v22 = *(a1 + 12296);
    if (v21 != v20)
    {
      do
      {
        if (*(v21 - 1) < 0)
        {
          operator delete(*(v21 - 24));
        }

        v21 -= 40;
      }

      while (v21 != v20);
      v22 = *(a1 + 12296);
    }

    *(a1 + 12304) = v20;
    operator delete(v22);
  }

  v23 = *(a1 + 12272);
  if (v23)
  {
    v24 = *(a1 + 12280);
    v25 = *(a1 + 12272);
    if (v24 != v23)
    {
      do
      {
        v24 -= 616;
        sub_5C2320(v24);
      }

      while (v24 != v23);
      v25 = *(a1 + 12272);
    }

    *(a1 + 12280) = v23;
    operator delete(v25);
  }

  v26 = *(a1 + 12240);
  if (v26)
  {
    *(a1 + 12248) = v26;
    operator delete(v26);
  }

  sub_53A868(a1 + 12080);
  v27 = *(a1 + 12056);
  if (v27)
  {
    v28 = *(a1 + 12064);
    v29 = *(a1 + 12056);
    if (v28 != v27)
    {
      do
      {
        v30 = v28 - 176;
        sub_53A868(v28 - 160);
        v28 = v30;
      }

      while (v30 != v27);
      v29 = *(a1 + 12056);
    }

    *(a1 + 12064) = v27;
    operator delete(v29);
  }

  v31 = *(a1 + 12024);
  if (v31)
  {
    *(a1 + 12032) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 11984);
  if (v32)
  {
    *(a1 + 11992) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 11952);
  if (v33)
  {
    *(a1 + 11960) = v33;
    operator delete(v33);
  }

  sub_5C23C8((a1 + 11856));
  v34 = *(a1 + 11832);
  if (v34)
  {
    *(a1 + 11840) = v34;
    operator delete(v34);
  }

  if ((*(a1 + 11823) & 0x80000000) == 0)
  {
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_69:
    operator delete(*(a1 + 11768));
    v35 = *(a1 + 11752);
    if (v35 == -1)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  operator delete(*(a1 + 11800));
  if (*v6 < 0)
  {
    goto LABEL_69;
  }

LABEL_66:
  v35 = *(a1 + 11752);
  if (v35 != -1)
  {
LABEL_70:
    (off_266C078[v35])(&v102, a1 + 11720);
  }

LABEL_71:
  v36 = (a1 + 7463);
  *(a1 + 11752) = -1;
  sub_53A868(a1 + 11560);
  v37 = *(a1 + 11528);
  if (v37)
  {
    *(a1 + 11536) = v37;
    operator delete(v37);
  }

  sub_44FDEC(a1 + 11088);
  if ((*(a1 + 11079) & 0x80000000) == 0)
  {
    if ((*(a1 + 11047) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_78:
    operator delete(*(a1 + 11024));
    v38 = *(a1 + 11008);
    if (v38 == -1)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  operator delete(*(a1 + 11056));
  if (*(a1 + 11047) < 0)
  {
    goto LABEL_78;
  }

LABEL_75:
  v38 = *(a1 + 11008);
  if (v38 != -1)
  {
LABEL_79:
    (off_266C078[v38])(&v103, a1 + 10976);
  }

LABEL_80:
  *(a1 + 11008) = -1;
  sub_53A868(a1 + 10816);
  v39 = *(a1 + 10784);
  if (v39)
  {
    *(a1 + 10792) = v39;
    operator delete(v39);
  }

  sub_44FDEC(a1 + 10344);
  v40 = *(a1 + 10320);
  if (v40)
  {
    v41 = *(a1 + 10328);
    v42 = *(a1 + 10320);
    if (v41 != v40)
    {
      do
      {
        v41 -= 104;
        sub_5C24CC(v41);
      }

      while (v41 != v40);
      v42 = *(a1 + 10320);
    }

    *(a1 + 10328) = v40;
    operator delete(v42);
  }

  v43 = *(a1 + 10288);
  if (v43)
  {
    v44 = *(a1 + 10296);
    v45 = *(a1 + 10288);
    if (v44 != v43)
    {
      do
      {
        v47 = *(v44 - 48);
        if (v47)
        {
          v48 = *(v44 - 40);
          v46 = *(v44 - 48);
          if (v48 != v47)
          {
            v49 = *(v44 - 40);
            do
            {
              v51 = *(v49 - 24);
              v49 -= 24;
              v50 = v51;
              if (v51)
              {
                *(v48 - 16) = v50;
                operator delete(v50);
              }

              v48 = v49;
            }

            while (v49 != v47);
            v46 = *(v44 - 48);
          }

          *(v44 - 40) = v47;
          operator delete(v46);
        }

        v44 -= 64;
      }

      while (v44 != v43);
      v45 = *(a1 + 10288);
    }

    *(a1 + 10296) = v43;
    operator delete(v45);
  }

  v52 = *(a1 + 10264);
  if (v52)
  {
    *(a1 + 10272) = v52;
    operator delete(v52);
  }

  if (*(a1 + 10247) < 0)
  {
    operator delete(*(a1 + 10224));
  }

  sub_5EC548((a1 + 10200));
  sub_5EC548((a1 + 10176));
  sub_5EC548((a1 + 10152));
  v53 = *(a1 + 10128);
  if (v53)
  {
    v54 = *(a1 + 10136);
    v55 = *(a1 + 10128);
    if (v54 != v53)
    {
      v56 = *(a1 + 10136);
      do
      {
        v58 = *(v56 - 40);
        v56 -= 40;
        v57 = v58;
        if (v58)
        {
          *(v54 - 32) = v57;
          operator delete(v57);
        }

        v54 = v56;
      }

      while (v56 != v53);
      v55 = *(a1 + 10128);
    }

    *(a1 + 10136) = v53;
    operator delete(v55);
  }

  v59 = *(a1 + 10096);
  if (v59)
  {
    v60 = *(a1 + 10104);
    v61 = *(a1 + 10096);
    if (v60 != v59)
    {
      do
      {
        v62 = *(v60 - 208);
        if (v62)
        {
          *(v60 - 200) = v62;
          operator delete(v62);
        }

        v63 = v60 - 248;
        v64 = *(v60 - 248);
        if (v64)
        {
          *(v60 - 240) = v64;
          operator delete(v64);
        }

        v60 -= 248;
      }

      while (v63 != v59);
      v61 = *(a1 + 10096);
    }

    *(a1 + 10104) = v59;
    operator delete(v61);
  }

  sub_53A868(a1 + 9936);
  sub_53A868(a1 + 9776);
  sub_53A868(a1 + 9616);
  sub_53A868(a1 + 9456);
  sub_53A868(a1 + 9296);
  sub_5936E4((a1 + 8440));
  sub_5936E4((a1 + 7584));
  v65 = *(a1 + 7560);
  if (v65)
  {
    v66 = *(a1 + 7568);
    v67 = *(a1 + 7560);
    if (v66 != v65)
    {
      do
      {
        v66 = sub_5936E4(v66 - 107);
      }

      while (v66 != v65);
      v67 = *(a1 + 7560);
    }

    *(a1 + 7568) = v65;
    operator delete(v67);
  }

  v68 = *(a1 + 7536);
  if (v68)
  {
    v69 = *(a1 + 7544);
    v70 = *(a1 + 7536);
    if (v69 != v68)
    {
      do
      {
        v71 = *(v69 - 6);
        if (v71)
        {
          *(v69 - 5) = v71;
          operator delete(v71);
        }

        v69 -= 56;
        sub_55D550(v69);
      }

      while (v69 != v68);
      v70 = *(a1 + 7536);
    }

    *(a1 + 7544) = v68;
    operator delete(v70);
  }

  v72 = *(a1 + 7512);
  if (v72)
  {
    v73 = *(a1 + 7520);
    v74 = *(a1 + 7512);
    if (v73 != v72)
    {
      do
      {
        v73 = sub_5938B0((v73 - 140));
      }

      while (v73 != v72);
      v74 = *(a1 + 7512);
    }

    *(a1 + 7520) = v72;
    operator delete(v74);
  }

  v75 = *(a1 + 7488);
  if (v75)
  {
    v76 = *(a1 + 7496);
    v77 = *(a1 + 7488);
    if (v76 != v75)
    {
      do
      {
        v78 = *(v76 - 1);
        v76 -= 3;
        if (v78 < 0)
        {
          operator delete(*v76);
        }
      }

      while (v76 != v75);
      v77 = *(a1 + 7488);
    }

    *(a1 + 7496) = v75;
    operator delete(v77);
  }

  if (*(a1 + 7487) < 0)
  {
    operator delete(*(a1 + 7464));
    if ((*v36 & 0x80000000) == 0)
    {
LABEL_151:
      v79 = *(a1 + 7416);
      if (!v79)
      {
        goto LABEL_152;
      }

      goto LABEL_191;
    }
  }

  else if ((*v36 & 0x80000000) == 0)
  {
    goto LABEL_151;
  }

  operator delete(*(a1 + 7440));
  v79 = *(a1 + 7416);
  if (!v79)
  {
LABEL_152:
    v80 = *(a1 + 7392);
    if (!v80)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

LABEL_191:
  v100 = *(a1 + 7424);
  v101 = v79;
  if (v100 != v79)
  {
    do
    {
      v100 = sub_3A9518(v100 - 1120);
    }

    while (v100 != v79);
    v101 = *(a1 + 7416);
  }

  *(a1 + 7424) = v79;
  operator delete(v101);
  v80 = *(a1 + 7392);
  if (v80)
  {
LABEL_153:
    *(a1 + 7400) = v80;
    operator delete(v80);
  }

LABEL_154:
  sub_53A868(a1 + 7232);
  v81 = *(a1 + 7208);
  if (v81)
  {
    v82 = *(a1 + 7216);
    v83 = *(a1 + 7208);
    if (v82 != v81)
    {
      do
      {
        v84 = *(v82 - 1);
        v82 -= 3;
        if (v84 < 0)
        {
          operator delete(*v82);
        }
      }

      while (v82 != v81);
      v83 = *(a1 + 7208);
    }

    *(a1 + 7216) = v81;
    operator delete(v83);
  }

  sub_5C1688(a1 + 2408);
  sub_559E70((a1 + 1320));
  if (*(a1 + 1319) < 0)
  {
    operator delete(*(a1 + 1296));
    if ((*(a1 + 1295) & 0x80000000) == 0)
    {
LABEL_164:
      sub_6926D4((a1 + 1248));
      v85 = *(a1 + 1224);
      if (!v85)
      {
        goto LABEL_166;
      }

      goto LABEL_165;
    }
  }

  else if ((*(a1 + 1295) & 0x80000000) == 0)
  {
    goto LABEL_164;
  }

  operator delete(*(a1 + 1272));
  sub_6926D4((a1 + 1248));
  v85 = *(a1 + 1224);
  if (v85)
  {
LABEL_165:
    *(a1 + 1232) = v85;
    operator delete(v85);
  }

LABEL_166:
  v86 = *(a1 + 1200);
  if (v86)
  {
    *(a1 + 1208) = v86;
    operator delete(v86);
  }

  v87 = *(a1 + 1176);
  if (v87)
  {
    v88 = *(a1 + 1184);
    v89 = *(a1 + 1176);
    if (v88 != v87)
    {
      do
      {
        v88 -= 176;
        sub_5C17B4(v88);
      }

      while (v88 != v87);
      v89 = *(a1 + 1176);
    }

    *(a1 + 1184) = v87;
    operator delete(v89);
  }

  v90 = *(a1 + 1152);
  if (v90)
  {
    v91 = *(a1 + 1160);
    v92 = *(a1 + 1152);
    if (v91 != v90)
    {
      do
      {
        v91 -= 176;
        sub_5C17B4(v91);
      }

      while (v91 != v90);
      v92 = *(a1 + 1152);
    }

    *(a1 + 1160) = v90;
    operator delete(v92);
  }

  v93 = *(a1 + 1128);
  if (v93)
  {
    v94 = *(a1 + 1136);
    v95 = *(a1 + 1128);
    if (v94 != v93)
    {
      do
      {
        v94 = sub_5C25A8(v94 - 2616);
      }

      while (v94 != v93);
      v95 = *(a1 + 1128);
    }

    *(a1 + 1136) = v93;
    operator delete(v95);
  }

  v96 = *(a1 + 1104);
  if (v96)
  {
    v97 = *(a1 + 1112);
    v98 = *(a1 + 1104);
    if (v97 != v96)
    {
      do
      {
        v97 = sub_5C25A8(v97 - 2616);
      }

      while (v97 != v96);
      v98 = *(a1 + 1104);
    }

    *(a1 + 1112) = v96;
    operator delete(v98);
  }

  return sub_3EEA68(a1);
}

uint64_t sub_694A84(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 12656;
    sub_694110(i - 12656);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_694AE4(void **a1, uint64_t a2)
{
  v2 = 0x5DDB1ADCB91F64A7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x52DA224E52346)
  {
    sub_1794();
  }

  if (0xBBB635B9723EC94ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xBBB635B9723EC94ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x5DDB1ADCB91F64A7 * ((a1[2] - *a1) >> 4)) >= 0x296D1127291A3)
  {
    v5 = 0x52DA224E52346;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x52DA224E52346)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 16 * ((a1[1] - *a1) >> 4);
  sub_69DE24(v15, a2, 0);
  v6 = 12656 * v2 + 12656;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = &v9[v15];
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = &v9[v15];
    do
    {
      v13 = sub_60F014(v12, v11);
      v11 += 12656;
      v12 = v13 + 12656;
    }

    while (v11 != v8);
    do
    {
      sub_694110(v7);
      v7 += 12656;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_694C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_694A84(va);
  _Unwind_Resume(a1);
}

void sub_694C88(int *result, unsigned int *a2, uint64_t a3, unint64_t a4, _DWORD *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = (a2 - 292);
      v8 = sub_7FD764(a2 - 292);
      if (v8 > sub_7FD764(result))
      {

        sub_695B8C(result, v7);
      }
    }

    else if (a4 <= 0)
    {

      sub_694ECC(result, a2);
    }

    else
    {
      v10 = a4 >> 1;
      v11 = &result[292 * (a4 >> 1)];
      if (a4 <= a6)
      {
        sub_69511C(result, &result[292 * (a4 >> 1)], a3, a4 >> 1, a5);
        v19 = a4 - v10;
        v20 = &a5[292 * v10];
        sub_69511C(v11, a2, a3, v19, v20);
        sub_69541C(a5, v20, v20, &a5[292 * a4], result);
        if (a5)
        {
          v21 = a4;
          v22 = 0;
          v23 = a5 + 284;
          do
          {
            if (*v23 == 1)
            {
              sub_3A9518((v23 - 1120));
              v21 = a4;
            }

            ++v22;
            v23 += 1168;
          }

          while (v22 < v21);
        }
      }

      else
      {
        sub_694C88(result, &result[292 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v16 = a4 - v10;
        sub_694C88(v11, a2, a3, v16, a5, a6);

        sub_69573C(result, v11, a2, a3, v10, v16, a5, a6);
      }
    }
  }
}

void sub_694EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

unsigned int *sub_694ECC(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 292;
    if (result + 292 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v4;
        v8 = sub_7FD764(v4);
        result = sub_7FD764(v6);
        if (v8 > result)
        {
          v9 = *(v6 + 1176);
          v21 = *v7;
          v22 = v9;
          v23[0] = 0;
          v24 = 0;
          if (*(v6 + 2304) == 1)
          {
            result = sub_529850(v23, v6 + 1184);
            v24 = 1;
          }

          v25[0] = *(v6 + 2312);
          *(v25 + 15) = *(v6 + 2327);
          v10 = v5;
          while (1)
          {
            v11 = v3 + v10;
            *(v11 + 292) = *(v3 + v10);
            *(v11 + 294) = *(v3 + v10 + 8);
            if (*(v3 + v10 + 2304) == *(v3 + v10 + 1136))
            {
              if (*(v3 + v10 + 2304))
              {
                result = sub_52BE74((v11 + 1184), (v11 + 16));
              }
            }

            else
            {
              v12 = (v11 + 1184);
              if (*(v3 + v10 + 2304))
              {
                result = sub_3A9518(v12);
                v11[2304] = 0;
              }

              else
              {
                result = sub_529850(v12, (v11 + 16));
                v11[2304] = 1;
              }
            }

            v13 = (v3 + v10);
            v14 = v3 + v10 + 2312;
            v15 = v3 + v10 + 1144;
            *v14 = *v15;
            *(v14 + 15) = *(v3 + v10 + 1159);
            if (!v10)
            {
              break;
            }

            v16 = sub_7FD764(&v21);
            result = sub_7FD764(v13 - 292);
            v10 -= 1168;
            if (v16 <= result)
            {
              v17 = v3 + v10 + 1168;
              goto LABEL_19;
            }
          }

          v17 = v3;
LABEL_19:
          v18 = v22;
          *v17 = v21;
          *(v17 + 8) = v18;
          if (*(v17 + 1136) == v24)
          {
            if (*(v17 + 1136))
            {
              result = sub_52BE74((v13 + 4), v23);
            }
          }

          else
          {
            v19 = (v13 + 4);
            if (*(v17 + 1136))
            {
              result = sub_3A9518(v19);
              *(v17 + 1136) = 0;
            }

            else
            {
              result = sub_529850(v19, v23);
              *(v17 + 1136) = 1;
            }
          }

          v20 = v25[0];
          *(v15 + 15) = *(v25 + 15);
          *v15 = v20;
          if (v24 == 1)
          {
            result = sub_3A9518(v23);
          }
        }

        v4 = v7 + 292;
        v5 += 1168;
        v6 = v7;
      }

      while (v7 + 292 != a2);
    }
  }

  return result;
}

void sub_69511C(_DWORD *result, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v9 = a2 - 292;
      v10 = sub_7FD764(a2 - 292);
      if (v10 <= sub_7FD764(result))
      {
        *a5 = *result;
        *(a5 + 8) = result[2];
        *(a5 + 16) = 0;
        *(a5 + 1136) = 0;
        if (*(result + 1136) == 1)
        {
          sub_529850(a5 + 16, (result + 4));
          *(a5 + 1136) = 1;
        }

        v18 = *(result + 286);
        *(a5 + 1159) = *(result + 1159);
        *(a5 + 1144) = v18;
        *(a5 + 1168) = *v9;
        *(a5 + 1176) = *(a2 - 290);
        *(a5 + 1184) = 0;
        *(a5 + 2304) = 0;
        if (*(a2 - 32) == 1)
        {
          sub_529850(a5 + 1184, (a2 - 288));
          *(a5 + 2304) = 1;
        }

        v8 = a5 + 2312;
        v12 = *(a2 - 6);
        v13 = *(a2 - 9);
        goto LABEL_26;
      }

      *a5 = *v9;
      *(a5 + 8) = *(a2 - 290);
      *(a5 + 16) = 0;
      *(a5 + 1136) = 0;
      if (*(a2 - 32) == 1)
      {
        sub_529850(a5 + 16, (a2 - 288));
        *(a5 + 1136) = 1;
      }

      v11 = *(a2 - 6);
      *(a5 + 1159) = *(a2 - 9);
      *(a5 + 1144) = v11;
      *(a5 + 1168) = *result;
      *(a5 + 1176) = result[2];
      *(a5 + 1184) = 0;
      *(a5 + 2304) = 0;
      if (*(result + 1136) == 1)
      {
        sub_529850(a5 + 1184, (result + 4));
        *(a5 + 2304) = 1;
      }

      v8 = a5 + 2312;
LABEL_13:
      v12 = *(result + 286);
      v13 = *(result + 1159);
LABEL_26:
      *(v8 + 15) = v13;
      *v8 = v12;
      return;
    }

    if (a4 == 1)
    {
      *a5 = *result;
      *(a5 + 8) = result[2];
      *(a5 + 16) = 0;
      *(a5 + 1136) = 0;
      if (*(result + 1136) == 1)
      {
        sub_529850(a5 + 16, (result + 4));
        *(a5 + 1136) = 1;
      }

      v8 = a5 + 1144;
      goto LABEL_13;
    }

    if (a4 > 8)
    {
      v14 = a4 >> 1;
      v15 = 292 * (a4 >> 1);
      sub_694C88(result, &result[v15], a3, v14, a5, v14);
      sub_694C88(&result[v15], a2, a3, a4 - v14, a5 + v15 * 4, a4 - v14);

      sub_696034(result, &result[v15], &result[v15], a2, a5);
    }

    else
    {

      sub_695D04(result, a2, a5);
    }
  }
}

void sub_695408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

__n128 sub_69541C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a2)
  {
LABEL_19:
    if (a3 != a4)
    {
      v14 = a3 + 16;
      do
      {
        v15 = v14 - 16;
        *a5 = *(v14 - 16);
        *(a5 + 8) = *(v14 - 8);
        if (*(a5 + 1136) == *(v14 + 1120))
        {
          if (*(a5 + 1136))
          {
            sub_52BE74(a5 + 16, v14);
          }
        }

        else
        {
          v16 = a5 + 16;
          if (*(a5 + 1136))
          {
            sub_3A9518(v16);
            *(a5 + 1136) = 0;
          }

          else
          {
            sub_529850(v16, v14);
            *(a5 + 1136) = 1;
          }
        }

        result = *(v14 + 1128);
        *(a5 + 1159) = *(v14 + 1143);
        *(a5 + 1144) = result;
        a5 += 1168;
        v14 += 1168;
      }

      while (v15 + 1168 != a4);
    }
  }

  else
  {
    v9 = a1;
    while (a3 != a4)
    {
      v11 = sub_7FD764(a3);
      if (v11 <= sub_7FD764(v9))
      {
        *a5 = *v9;
        *(a5 + 8) = *(v9 + 8);
        if (*(a5 + 1136) == *(v9 + 1136))
        {
          if (*(a5 + 1136))
          {
            sub_52BE74(a5 + 16, v9 + 16);
          }
        }

        else
        {
          v13 = a5 + 16;
          if (*(a5 + 1136))
          {
            sub_3A9518(v13);
            *(a5 + 1136) = 0;
          }

          else
          {
            sub_529850(v13, v9 + 16);
            *(a5 + 1136) = 1;
          }
        }

        result = *(v9 + 1144);
        *(a5 + 1159) = *(v9 + 1159);
        *(a5 + 1144) = result;
        v9 += 1168;
        a5 += 1168;
        if (v9 == a2)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *a5 = *a3;
        *(a5 + 8) = *(a3 + 8);
        if (*(a5 + 1136) == *(a3 + 1136))
        {
          if (*(a5 + 1136))
          {
            sub_52BE74(a5 + 16, a3 + 16);
          }
        }

        else
        {
          v12 = a5 + 16;
          if (*(a5 + 1136))
          {
            sub_3A9518(v12);
            *(a5 + 1136) = 0;
          }

          else
          {
            sub_529850(v12, a3 + 16);
            *(a5 + 1136) = 1;
          }
        }

        result = *(a3 + 1144);
        *(a5 + 1159) = *(a3 + 1159);
        *(a5 + 1144) = result;
        a3 += 1168;
        a5 += 1168;
        if (v9 == a2)
        {
          goto LABEL_19;
        }
      }
    }

    if (v9 != a2)
    {
      v17 = v9 + 16;
      do
      {
        v18 = v17 - 16;
        *a5 = *(v17 - 16);
        *(a5 + 8) = *(v17 - 8);
        if (*(a5 + 1136) == *(v17 + 1120))
        {
          if (*(a5 + 1136))
          {
            sub_52BE74(a5 + 16, v17);
          }
        }

        else
        {
          v19 = a5 + 16;
          if (*(a5 + 1136))
          {
            sub_3A9518(v19);
            *(a5 + 1136) = 0;
          }

          else
          {
            sub_529850(v19, v17);
            *(a5 + 1136) = 1;
          }
        }

        result = *(v17 + 1128);
        *(a5 + 1159) = *(v17 + 1143);
        *(a5 + 1144) = result;
        a5 += 1168;
        v17 += 1168;
      }

      while (v18 + 1168 != a2);
    }
  }

  return result;
}

uint64_t *sub_6956C0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    v4 = *v3;
    if (*v3)
    {
      v5 = 0;
      v6 = (v2 + 1136);
      do
      {
        if (*v6 == 1)
        {
          sub_3A9518((v6 - 1120));
          v4 = *v3;
        }

        ++v5;
        v6 += 1168;
      }

      while (v5 < v4);
    }
  }

  return a1;
}

void sub_69573C(int *result, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v49 = a6;
  if (!a6)
  {
    return;
  }

  while (v49 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return;
    }

    v13 = 0;
    v14 = -a5;
    while (1)
    {
      v15 = &result[v13 / 4];
      v16 = sub_7FD764(a2);
      if (v16 > sub_7FD764(&result[v13 / 4]))
      {
        break;
      }

      v13 += 1168;
      if (__CFADD__(v14++, 1))
      {
        return;
      }
    }

    v18 = -v14;
    v19 = v49;
    v46 = a8;
    v47 = a3;
    if (-v14 >= v49)
    {
      if (v14 == -1)
      {

        sub_695B8C(&result[v13 / 4], a2);
        return;
      }

      v25 = v18 / 2;
      v22 = &result[292 * (v18 / 2) + v13 / 4];
      v27 = a3;
      v21 = a2;
      if (a2 != v27)
      {
        v42 = v25;
        v44 = a7;
        v28 = 0x7E3F1F8FC7E3F1F9 * ((v47 - a2) >> 4);
        v21 = a2;
        do
        {
          v29 = &v21[292 * (v28 >> 1)];
          v30 = sub_7FD764(v29);
          v31 = sub_7FD764(v22);
          if (v30 <= v31)
          {
            v28 >>= 1;
          }

          else
          {
            v28 += ~(v28 >> 1);
          }

          if (v30 > v31)
          {
            v21 = v29 + 292;
          }
        }

        while (v28);
        v25 = v42;
        a7 = v44;
        v19 = v49;
      }

      v20 = 0x7E3F1F8FC7E3F1F9 * ((v21 - a2) >> 4);
      v26 = v21;
      if (a2 != v22)
      {
LABEL_31:
        v26 = v22;
        if (a2 != v21)
        {
          v45 = v20;
          v43 = v25;
          sub_695B8C(v22, a2);
          v26 = (v22 + 292);
          for (i = a2 + 292; i != v21; i += 292)
          {
            if (v26 == a2)
            {
              a2 = i;
            }

            sub_695B8C(v26, i);
            v26 += 292;
          }

          if (v26 != a2)
          {
            v33 = v26;
            v34 = a2;
            while (1)
            {
              sub_695B8C(v33, v34);
              v34 += 292;
              v35 = v33 + 292 == a2;
              if (v34 == v21)
              {
                if (v33 + 292 == a2)
                {
                  break;
                }

                v34 = a2 + 292;
                v33 += 584;
                while (1)
                {
                  sub_695B8C(v33 - 292, a2);
                  v35 = v33 == a2;
                  if (v34 != v21)
                  {
                    break;
                  }

                  v36 = v33 == a2;
                  v33 += 292;
                  if (v36)
                  {
                    goto LABEL_48;
                  }
                }
              }

              else
              {
                v33 += 292;
              }

              if (v35)
              {
                a2 = v34;
              }
            }
          }

LABEL_48:
          v19 = v49;
          v25 = v43;
          v20 = v45;
        }
      }
    }

    else
    {
      v20 = v49 / 2;
      v21 = &a2[292 * (v49 / 2)];
      v22 = a2;
      if (a2 - result != v13)
      {
        v23 = 0x7E3F1F8FC7E3F1F9 * ((a2 - result - v13) >> 4);
        v22 = &result[v13 / 4];
        do
        {
          v24 = sub_7FD764(v21);
          if (v24 > sub_7FD764(&v22[292 * (v23 >> 1)]))
          {
            v23 >>= 1;
          }

          else
          {
            v22 += 292 * (v23 >> 1) + 292;
            v23 += ~(v23 >> 1);
          }
        }

        while (v23);
        v20 = v49 / 2;
        v19 = v49;
      }

      v25 = 0x7E3F1F8FC7E3F1F9 * ((v22 - result - v13) >> 4);
      v26 = &a2[292 * (v49 / 2)];
      if (a2 != v22)
      {
        goto LABEL_31;
      }
    }

    a5 = -(v25 + v14);
    v37 = v19 - v20;
    if (v25 + v20 >= v19 - (v25 + v20) - v14)
    {
      v39 = v25;
      v40 = -(v25 + v14);
      v41 = v20;
      sub_69573C(v26, v21, v47, a4, v40, v19 - v20, a7, v46);
      a2 = v22;
      a8 = v46;
      a5 = v39;
      a3 = v26;
      v49 = v41;
      result = v15;
      if (!v41)
      {
        return;
      }
    }

    else
    {
      v38 = v22;
      a8 = v46;
      sub_69573C(&result[v13 / 4], v38, v26, a4, v25, v20, a7, v46);
      a2 = v21;
      a3 = v47;
      v49 = v37;
      result = v26;
      if (!v37)
      {
        return;
      }
    }
  }

  sub_6962CC(result, a2, a3, a4, a5, v49, a7);
}

int *sub_695B8C(int *result, uint64_t a2)
{
  v3 = result;
  v8 = *result;
  v9 = result[2];
  v10[0] = 0;
  v11 = 0;
  v4 = *(result + 1136);
  if (v4 == 1)
  {
    result = sub_529850(v10, (result + 4));
    v11 = 1;
    v4 = *(v3 + 1136);
  }

  *v12 = *(v3 + 1144);
  *&v12[15] = *(v3 + 1159);
  *v3 = *a2;
  *(v3 + 8) = *(a2 + 8);
  if (v4 == *(a2 + 1136))
  {
    if (v4)
    {
      result = sub_52BE74(v3 + 16, a2 + 16);
    }
  }

  else
  {
    v5 = v3 + 16;
    if (v4)
    {
      result = sub_3A9518(v5);
      *(v3 + 1136) = 0;
    }

    else
    {
      result = sub_529850(v5, a2 + 16);
      *(v3 + 1136) = 1;
    }
  }

  v6 = *(a2 + 1144);
  *(v3 + 1159) = *(a2 + 1159);
  *(v3 + 1144) = v6;
  *a2 = v8;
  *(a2 + 8) = v9;
  if (*(a2 + 1136) == v11)
  {
    if (*(a2 + 1136))
    {
      result = sub_52BE74(a2 + 16, v10);
    }
  }

  else
  {
    v7 = a2 + 16;
    if (*(a2 + 1136))
    {
      result = sub_3A9518(v7);
      *(a2 + 1136) = 0;
    }

    else
    {
      result = sub_529850(v7, v10);
      *(a2 + 1136) = 1;
    }
  }

  *(a2 + 1144) = *v12;
  *(a2 + 1159) = *&v12[15];
  if (v11 == 1)
  {
    return sub_3A9518(v10);
  }

  return result;
}

__n128 sub_695D04(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    *a3 = *a1;
    *(a3 + 8) = *(a1 + 8);
    *(a3 + 16) = 0;
    *(a3 + 1136) = 0;
    if (*(a1 + 1136) == 1)
    {
      sub_529850(a3 + 16, a1 + 16);
      *(a3 + 1136) = 1;
    }

    result = *(v5 + 1144);
    *(a3 + 1159) = *(v5 + 1159);
    *(a3 + 1144) = result;
    v20 = 1;
    v7 = (v5 + 1168);
    if ((v5 + 1168) != a2)
    {
      v8 = 0;
      v9 = a3;
      do
      {
        while (1)
        {
          v10 = v7;
          v11 = sub_7FD764(v7);
          if (v11 > sub_7FD764(v9))
          {
            break;
          }

          *(v9 + 1168) = *v10;
          *(v9 + 1176) = *(v5 + 1176);
          *(v9 + 1184) = 0;
          *(v9 + 2304) = 0;
          if (*(v5 + 2304) == 1)
          {
            sub_529850(v9 + 1184, v5 + 1184);
            *(v9 + 2304) = 1;
          }

          result = *(v5 + 2312);
          *(v9 + 2327) = *(v5 + 2327);
          *(v9 + 2312) = result;
          ++v20;
          v9 += 1168;
          v7 = v10 + 292;
          v8 += 1168;
          v5 = v10;
          if (v10 + 292 == a2)
          {
            return result;
          }
        }

        *(v9 + 1168) = *v9;
        *(v9 + 1176) = *(v9 + 8);
        *(v9 + 1184) = 0;
        *(v9 + 2304) = 0;
        if (*(v9 + 1136) == 1)
        {
          sub_529850(v9 + 1184, v9 + 16);
          *(v9 + 2304) = 1;
        }

        *(v9 + 2312) = *(v9 + 1144);
        *(v9 + 2327) = *(v9 + 1159);
        ++v20;
        v12 = a3;
        if (v9 != a3)
        {
          v13 = v8;
          do
          {
            v15 = sub_7FD764(v10);
            if (v15 <= sub_7FD764((a3 + v13 - 1168)))
            {
              v12 = a3 + v13;
              goto LABEL_24;
            }

            v16 = a3 + v13;
            *v16 = *(a3 + v13 - 1168);
            *(v16 + 8) = *(a3 + v13 - 1160);
            v17 = a3 + v13 - 1152;
            if (*(a3 + v13 + 1136) == *(a3 + v13 - 32))
            {
              if (*(a3 + v13 + 1136))
              {
                sub_52BE74(v16 + 16, v17);
              }
            }

            else
            {
              v18 = v16 + 16;
              if (*(a3 + v13 + 1136))
              {
                sub_3A9518(v18);
                *(v16 + 1136) = 0;
              }

              else
              {
                sub_529850(v18, v17);
                *(v16 + 1136) = 1;
              }
            }

            v14 = a3 + v13 + 1144;
            *v14 = *(a3 + v13 - 24);
            *(v14 + 15) = *(a3 + v13 - 9);
            v13 -= 1168;
          }

          while (v13);
          v12 = a3;
        }

LABEL_24:
        *v12 = *v10;
        *(v12 + 8) = *(v5 + 1176);
        if (*(v12 + 1136) == *(v5 + 2304))
        {
          if (*(v12 + 1136))
          {
            sub_52BE74(v12 + 16, v5 + 1184);
          }
        }

        else
        {
          v19 = v12 + 16;
          if (*(v12 + 1136))
          {
            sub_3A9518(v19);
            *(v12 + 1136) = 0;
          }

          else
          {
            sub_529850(v19, v5 + 1184);
            *(v12 + 1136) = 1;
          }
        }

        result = *(v5 + 2312);
        *(v12 + 1159) = *(v5 + 2327);
        *(v12 + 1144) = result;
        v9 += 1168;
        v7 = v10 + 292;
        v8 += 1168;
        v5 = v10;
      }

      while (v10 + 292 != a2);
    }
  }

  return result;
}

void sub_69600C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_696020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

__n128 sub_696034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v19 = 0;
  if (a1 == a2)
  {
    v8 = 0;
LABEL_3:
    if (v7 != a4)
    {
      v9 = 0;
      do
      {
        v11 = a5 + v9;
        v12 = v7 + v9;
        *v11 = *(v7 + v9);
        *(v11 + 8) = *(v7 + v9 + 8);
        *(a5 + v9 + 16) = 0;
        *(v11 + 1136) = 0;
        if (*(v7 + v9 + 1136) == 1)
        {
          sub_529850(a5 + v9 + 16, v12 + 16);
          *(v11 + 1136) = 1;
          v8 = v19;
        }

        result = *(v12 + 1144);
        *(v11 + 1159) = *(v12 + 1159);
        *(v11 + 1144) = result;
        v19 = ++v8;
        v9 += 1168;
      }

      while (v12 + 1168 != a4);
    }
  }

  else
  {
    v14 = a1;
    if (a3 != a4)
    {
      while (1)
      {
        v15 = sub_7FD764(v7);
        if (v15 <= sub_7FD764(v14))
        {
          *a5 = *v14;
          *(a5 + 8) = *(v14 + 8);
          *(a5 + 16) = 0;
          *(a5 + 1136) = 0;
          if (*(v14 + 1136) == 1)
          {
            sub_529850(a5 + 16, v14 + 16);
            *(a5 + 1136) = 1;
          }

          result = *(v14 + 1144);
          *(a5 + 1159) = *(v14 + 1159);
          *(a5 + 1144) = result;
          v8 = ++v19;
          v14 += 1168;
          a5 += 1168;
          if (v14 == a2)
          {
            goto LABEL_3;
          }
        }

        else
        {
          *a5 = *v7;
          *(a5 + 8) = *(v7 + 8);
          *(a5 + 16) = 0;
          *(a5 + 1136) = 0;
          if (*(v7 + 1136) == 1)
          {
            sub_529850(a5 + 16, v7 + 16);
            *(a5 + 1136) = 1;
          }

          result = *(v7 + 1144);
          *(a5 + 1159) = *(v7 + 1159);
          *(a5 + 1144) = result;
          v8 = ++v19;
          v7 += 1168;
          a5 += 1168;
          if (v14 == a2)
          {
            goto LABEL_3;
          }
        }

        if (v7 == a4)
        {
          goto LABEL_19;
        }
      }
    }

    v8 = 0;
LABEL_19:
    if (v14 != a2)
    {
      v16 = 0;
      do
      {
        v17 = a5 + v16;
        v18 = v14 + v16;
        *v17 = *(v14 + v16);
        *(v17 + 8) = *(v14 + v16 + 8);
        *(a5 + v16 + 16) = 0;
        *(v17 + 1136) = 0;
        if (*(v14 + v16 + 1136) == 1)
        {
          sub_529850(a5 + v16 + 16, v18 + 16);
          *(v17 + 1136) = 1;
          v8 = v19;
        }

        result = *(v18 + 1144);
        *(v17 + 1159) = *(v18 + 1159);
        *(v17 + 1144) = result;
        v19 = ++v8;
        v16 += 1168;
      }

      while (v18 + 1168 != a2);
    }
  }

  return result;
}

void sub_6962B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_6962CC(_DWORD *a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v27 = 0;
  if (a5 <= a6)
  {
    v17 = a7;
    if (a1 != a2)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v21 = &a7[v18];
        v22 = &a1[v18];
        *v21 = a1[v18];
        v21[2] = a1[v18 + 2];
        LOBYTE(a7[v18 + 4]) = 0;
        *(v21 + 1136) = 0;
        if (LOBYTE(a1[v18 + 284]) == 1)
        {
          sub_529850(&a7[v18 + 4], (v22 + 4));
          *(v21 + 1136) = 1;
          v19 = v27;
        }

        v20 = *(v22 + 286);
        *(v21 + 1159) = *(v22 + 1159);
        *(v21 + 286) = v20;
        v27 = ++v19;
        v18 += 292;
      }

      while (v22 + 292 != a2);
      v17 = &a7[v18];
    }

    sub_696524(a7, v17, a2, a3, a1);
  }

  else
  {
    v11 = a7;
    if (a2 != a3)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v15 = &a7[v12];
        v16 = &a2[v12];
        *v15 = a2[v12];
        v15[2] = a2[v12 + 2];
        LOBYTE(a7[v12 + 4]) = 0;
        *(v15 + 1136) = 0;
        if (LOBYTE(a2[v12 + 284]) == 1)
        {
          sub_529850(&a7[v12 + 4], (v16 + 4));
          *(v15 + 1136) = 1;
          v13 = v27;
        }

        v14 = *(v16 + 286);
        *(v15 + 1159) = *(v16 + 1159);
        *(v15 + 286) = v14;
        v27 = ++v13;
        v12 += 292;
      }

      while (v16 + 292 != a3);
      v11 = &a7[v12];
    }

    sub_69672C(v11, v11, a7, a7, a2, a2, a1, a1, a3, a3);
  }

  if (a7)
  {
    v23 = v27;
    if (v27)
    {
      v24 = 0;
      v25 = a7 + 284;
      do
      {
        if (*v25 == 1)
        {
          sub_3A9518((v25 - 1120));
          v23 = v27;
        }

        ++v24;
        v25 += 1168;
      }

      while (v24 < v23);
    }
  }
}

void sub_6964FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_696510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

__n128 sub_696524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != a2)
  {
    v9 = a1;
    while (a3 != a4)
    {
      v11 = sub_7FD764(a3);
      if (v11 <= sub_7FD764(v9))
      {
        *a5 = *v9;
        *(a5 + 8) = *(v9 + 8);
        if (*(a5 + 1136) == *(v9 + 1136))
        {
          if (*(a5 + 1136))
          {
            sub_52BE74(a5 + 16, v9 + 16);
          }
        }

        else
        {
          v13 = a5 + 16;
          if (*(a5 + 1136))
          {
            sub_3A9518(v13);
            *(a5 + 1136) = 0;
          }

          else
          {
            sub_529850(v13, v9 + 16);
            *(a5 + 1136) = 1;
          }
        }

        result = *(v9 + 1144);
        *(a5 + 1159) = *(v9 + 1159);
        *(a5 + 1144) = result;
        v9 += 1168;
        a5 += 1168;
        if (v9 == a2)
        {
          return result;
        }
      }

      else
      {
        *a5 = *a3;
        *(a5 + 8) = *(a3 + 8);
        if (*(a5 + 1136) == *(a3 + 1136))
        {
          if (*(a5 + 1136))
          {
            sub_52BE74(a5 + 16, a3 + 16);
          }
        }

        else
        {
          v12 = a5 + 16;
          if (*(a5 + 1136))
          {
            sub_3A9518(v12);
            *(a5 + 1136) = 0;
          }

          else
          {
            sub_529850(v12, a3 + 16);
            *(a5 + 1136) = 1;
          }
        }

        result = *(a3 + 1144);
        *(a5 + 1159) = *(a3 + 1159);
        *(a5 + 1144) = result;
        a3 += 1168;
        a5 += 1168;
        if (v9 == a2)
        {
          return result;
        }
      }
    }

    v14 = v9 + 16;
    do
    {
      v15 = v14 - 16;
      *a5 = *(v14 - 16);
      *(a5 + 8) = *(v14 - 8);
      if (*(a5 + 1136) == *(v14 + 1120))
      {
        if (*(a5 + 1136))
        {
          sub_52BE74(a5 + 16, v14);
        }
      }

      else
      {
        v16 = a5 + 16;
        if (*(a5 + 1136))
        {
          sub_3A9518(v16);
          *(a5 + 1136) = 0;
        }

        else
        {
          sub_529850(v16, v14);
          *(a5 + 1136) = 1;
        }
      }

      result = *(v14 + 1128);
      *(a5 + 1159) = *(v14 + 1143);
      *(a5 + 1144) = result;
      a5 += 1168;
      v14 += 1168;
    }

    while (v15 + 1168 != a2);
  }

  return result;
}

void sub_69672C(uint64_t a1, _DWORD *a2, uint64_t a3, _DWORD *a4, uint64_t a5, _DWORD *a6, uint64_t a7, _DWORD *a8, uint64_t a9, uint64_t a10)
{
  if (a2 != a4)
  {
    v13 = a2;
    v14 = (a10 - 32);
    while (a6 != a8)
    {
      v16 = a6 - 292;
      v18 = sub_7FD764(v13 - 292);
      v19 = sub_7FD764(a6 - 292);
      v20 = v14 - 1136;
      v21 = v14 - 1128;
      v22 = (v14 - 1120);
      if (v18 <= v19)
      {
        *v20 = *(v13 - 292);
        *v21 = *(v13 - 290);
        v24 = (v13 - 288);
        if (*v14 == *(v13 - 32))
        {
          if (*v14)
          {
            sub_52BE74(v22, v24);
          }
        }

        else if (*v14)
        {
          sub_3A9518(v22);
          *v14 = 0;
        }

        else
        {
          sub_529850(v22, v24);
          *v14 = 1;
        }

        v15 = v13;
        v16 = a6;
        v13 -= 292;
      }

      else
      {
        *v20 = *v16;
        *v21 = *(a6 - 290);
        v23 = a6 - 288;
        if (*v14 == *(a6 - 32))
        {
          if (*v14)
          {
            sub_52BE74(v22, v23);
          }

          v15 = a6;
        }

        else
        {
          if (*v14)
          {
            sub_3A9518(v22);
            *v14 = 0;
          }

          else
          {
            sub_529850(v22, v23);
            *v14 = 1;
          }

          v15 = a6;
        }
      }

      v17 = *(v15 - 6);
      *(v14 + 23) = *(v15 - 9);
      *(v14 + 8) = v17;
      v14 -= 1168;
      a6 = v16;
      if (v13 == a4)
      {
        return;
      }
    }

    if (a4 != v13)
    {
      v25 = 0;
      do
      {
        v28 = &v14[v25 * 4];
        *&v14[v25 * 4 - 1136] = v13[v25 - 292];
        *&v14[v25 * 4 - 1128] = v13[v25 - 290];
        v29 = &v14[v25 * 4 - 1120];
        v30 = &v13[v25 - 288];
        if (v14[v25 * 4] == LOBYTE(v13[v25 - 8]))
        {
          if (v14[v25 * 4])
          {
            sub_52BE74(v29, v30);
          }
        }

        else if (v14[v25 * 4])
        {
          sub_3A9518(v29);
          *v28 = 0;
        }

        else
        {
          sub_529850(v29, v30);
          *v28 = 1;
        }

        v26 = &v14[v25 * 4];
        v27 = *&v13[v25 - 6];
        *(v26 + 23) = *(&v13[v25 - 2] - 1);
        *(v26 + 8) = v27;
        v25 -= 292;
      }

      while (&v13[v25] != a4);
    }
  }
}

void sub_69694C(int *a1, unsigned int *a2, uint64_t a3, unint64_t a4, _DWORD *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = (a2 - 292);
      v8 = sub_7FD764(a2 - 292);
      if (v8 > sub_7FD764(a1))
      {

        sub_695B8C(a1, v7);
      }
    }

    else if (a4 <= 0)
    {

      sub_696B90(a1, a2);
    }

    else
    {
      v10 = a4 >> 1;
      v11 = &a1[292 * (a4 >> 1)];
      if (a4 <= a6)
      {
        sub_696DE0(a1, &a1[292 * (a4 >> 1)], a3, a4 >> 1, a5);
        v19 = a4 - v10;
        v20 = &a5[292 * v10];
        sub_696DE0(v11, a2, a3, v19, v20);
        sub_69541C(a5, v20, v20, &a5[292 * a4], a1);
        if (a5)
        {
          v21 = a4;
          v22 = 0;
          v23 = a5 + 284;
          do
          {
            if (*v23 == 1)
            {
              sub_3A9518((v23 - 1120));
              v21 = a4;
            }

            ++v22;
            v23 += 1168;
          }

          while (v22 < v21);
        }
      }

      else
      {
        sub_69694C(a1, &a1[292 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v16 = a4 - v10;
        sub_69694C(v11, a2, a3, v16, a5, a6);

        sub_6970E0(a1, v11, a2, a3, v10, v16, a5, a6);
      }
    }
  }
}

void sub_696B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

unsigned int *sub_696B90(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 292;
    if (result + 292 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v4;
        v8 = sub_7FD764(v4);
        result = sub_7FD764(v6);
        if (v8 > result)
        {
          v9 = *(v6 + 1176);
          v21 = *v7;
          v22 = v9;
          v23[0] = 0;
          v24 = 0;
          if (*(v6 + 2304) == 1)
          {
            result = sub_529850(v23, v6 + 1184);
            v24 = 1;
          }

          v25[0] = *(v6 + 2312);
          *(v25 + 15) = *(v6 + 2327);
          v10 = v5;
          while (1)
          {
            v11 = v3 + v10;
            *(v11 + 292) = *(v3 + v10);
            *(v11 + 294) = *(v3 + v10 + 8);
            if (*(v3 + v10 + 2304) == *(v3 + v10 + 1136))
            {
              if (*(v3 + v10 + 2304))
              {
                result = sub_52BE74((v11 + 1184), (v11 + 16));
              }
            }

            else
            {
              v12 = (v11 + 1184);
              if (*(v3 + v10 + 2304))
              {
                result = sub_3A9518(v12);
                v11[2304] = 0;
              }

              else
              {
                result = sub_529850(v12, (v11 + 16));
                v11[2304] = 1;
              }
            }

            v13 = (v3 + v10);
            v14 = v3 + v10 + 2312;
            v15 = v3 + v10 + 1144;
            *v14 = *v15;
            *(v14 + 15) = *(v3 + v10 + 1159);
            if (!v10)
            {
              break;
            }

            v16 = sub_7FD764(&v21);
            result = sub_7FD764(v13 - 292);
            v10 -= 1168;
            if (v16 <= result)
            {
              v17 = v3 + v10 + 1168;
              goto LABEL_19;
            }
          }

          v17 = v3;
LABEL_19:
          v18 = v22;
          *v17 = v21;
          *(v17 + 8) = v18;
          if (*(v17 + 1136) == v24)
          {
            if (*(v17 + 1136))
            {
              result = sub_52BE74((v13 + 4), v23);
            }
          }

          else
          {
            v19 = (v13 + 4);
            if (*(v17 + 1136))
            {
              result = sub_3A9518(v19);
              *(v17 + 1136) = 0;
            }

            else
            {
              result = sub_529850(v19, v23);
              *(v17 + 1136) = 1;
            }
          }

          v20 = v25[0];
          *(v15 + 15) = *(v25 + 15);
          *v15 = v20;
          if (v24 == 1)
          {
            result = sub_3A9518(v23);
          }
        }

        v4 = v7 + 292;
        v5 += 1168;
        v6 = v7;
      }

      while (v7 + 292 != a2);
    }
  }

  return result;
}

void sub_696DE0(_DWORD *result, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v9 = a2 - 292;
      v10 = sub_7FD764(a2 - 292);
      if (v10 <= sub_7FD764(result))
      {
        *a5 = *result;
        *(a5 + 8) = result[2];
        *(a5 + 16) = 0;
        *(a5 + 1136) = 0;
        if (*(result + 1136) == 1)
        {
          sub_529850(a5 + 16, (result + 4));
          *(a5 + 1136) = 1;
        }

        v18 = *(result + 286);
        *(a5 + 1159) = *(result + 1159);
        *(a5 + 1144) = v18;
        *(a5 + 1168) = *v9;
        *(a5 + 1176) = *(a2 - 290);
        *(a5 + 1184) = 0;
        *(a5 + 2304) = 0;
        if (*(a2 - 32) == 1)
        {
          sub_529850(a5 + 1184, (a2 - 288));
          *(a5 + 2304) = 1;
        }

        v8 = a5 + 2312;
        v12 = *(a2 - 6);
        v13 = *(a2 - 9);
        goto LABEL_26;
      }

      *a5 = *v9;
      *(a5 + 8) = *(a2 - 290);
      *(a5 + 16) = 0;
      *(a5 + 1136) = 0;
      if (*(a2 - 32) == 1)
      {
        sub_529850(a5 + 16, (a2 - 288));
        *(a5 + 1136) = 1;
      }

      v11 = *(a2 - 6);
      *(a5 + 1159) = *(a2 - 9);
      *(a5 + 1144) = v11;
      *(a5 + 1168) = *result;
      *(a5 + 1176) = result[2];
      *(a5 + 1184) = 0;
      *(a5 + 2304) = 0;
      if (*(result + 1136) == 1)
      {
        sub_529850(a5 + 1184, (result + 4));
        *(a5 + 2304) = 1;
      }

      v8 = a5 + 2312;
LABEL_13:
      v12 = *(result + 286);
      v13 = *(result + 1159);
LABEL_26:
      *(v8 + 15) = v13;
      *v8 = v12;
      return;
    }

    if (a4 == 1)
    {
      *a5 = *result;
      *(a5 + 8) = result[2];
      *(a5 + 16) = 0;
      *(a5 + 1136) = 0;
      if (*(result + 1136) == 1)
      {
        sub_529850(a5 + 16, (result + 4));
        *(a5 + 1136) = 1;
      }

      v8 = a5 + 1144;
      goto LABEL_13;
    }

    if (a4 > 8)
    {
      v14 = a4 >> 1;
      v15 = 292 * (a4 >> 1);
      sub_69694C(result, &result[v15], a3, v14, a5, v14);
      sub_69694C(&result[v15], a2, a3, a4 - v14, a5 + v15 * 4, a4 - v14);

      sub_697860(result, &result[v15], &result[v15], a2, a5);
    }

    else
    {

      sub_697530(result, a2, a5);
    }
  }
}

void sub_6970CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_6970E0(int *result, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v49 = a6;
  if (!a6)
  {
    return;
  }

  while (v49 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return;
    }

    v13 = 0;
    v14 = -a5;
    while (1)
    {
      v15 = &result[v13 / 4];
      v16 = sub_7FD764(a2);
      if (v16 > sub_7FD764(&result[v13 / 4]))
      {
        break;
      }

      v13 += 1168;
      if (__CFADD__(v14++, 1))
      {
        return;
      }
    }

    v18 = -v14;
    v19 = v49;
    v46 = a8;
    v47 = a3;
    if (-v14 >= v49)
    {
      if (v14 == -1)
      {

        sub_695B8C(&result[v13 / 4], a2);
        return;
      }

      v25 = v18 / 2;
      v22 = &result[292 * (v18 / 2) + v13 / 4];
      v27 = a3;
      v21 = a2;
      if (a2 != v27)
      {
        v42 = v25;
        v44 = a7;
        v28 = 0x7E3F1F8FC7E3F1F9 * ((v47 - a2) >> 4);
        v21 = a2;
        do
        {
          v29 = &v21[292 * (v28 >> 1)];
          v30 = sub_7FD764(v29);
          v31 = sub_7FD764(v22);
          if (v30 <= v31)
          {
            v28 >>= 1;
          }

          else
          {
            v28 += ~(v28 >> 1);
          }

          if (v30 > v31)
          {
            v21 = v29 + 292;
          }
        }

        while (v28);
        v25 = v42;
        a7 = v44;
        v19 = v49;
      }

      v20 = 0x7E3F1F8FC7E3F1F9 * ((v21 - a2) >> 4);
      v26 = v21;
      if (a2 != v22)
      {
LABEL_31:
        v26 = v22;
        if (a2 != v21)
        {
          v45 = v20;
          v43 = v25;
          sub_695B8C(v22, a2);
          v26 = (v22 + 292);
          for (i = a2 + 292; i != v21; i += 292)
          {
            if (v26 == a2)
            {
              a2 = i;
            }

            sub_695B8C(v26, i);
            v26 += 292;
          }

          if (v26 != a2)
          {
            v33 = v26;
            v34 = a2;
            while (1)
            {
              sub_695B8C(v33, v34);
              v34 += 292;
              v35 = v33 + 292 == a2;
              if (v34 == v21)
              {
                if (v33 + 292 == a2)
                {
                  break;
                }

                v34 = a2 + 292;
                v33 += 584;
                while (1)
                {
                  sub_695B8C(v33 - 292, a2);
                  v35 = v33 == a2;
                  if (v34 != v21)
                  {
                    break;
                  }

                  v36 = v33 == a2;
                  v33 += 292;
                  if (v36)
                  {
                    goto LABEL_48;
                  }
                }
              }

              else
              {
                v33 += 292;
              }

              if (v35)
              {
                a2 = v34;
              }
            }
          }

LABEL_48:
          v19 = v49;
          v25 = v43;
          v20 = v45;
        }
      }
    }

    else
    {
      v20 = v49 / 2;
      v21 = &a2[292 * (v49 / 2)];
      v22 = a2;
      if (a2 - result != v13)
      {
        v23 = 0x7E3F1F8FC7E3F1F9 * ((a2 - result - v13) >> 4);
        v22 = &result[v13 / 4];
        do
        {
          v24 = sub_7FD764(v21);
          if (v24 > sub_7FD764(&v22[292 * (v23 >> 1)]))
          {
            v23 >>= 1;
          }

          else
          {
            v22 += 292 * (v23 >> 1) + 292;
            v23 += ~(v23 >> 1);
          }
        }

        while (v23);
        v20 = v49 / 2;
        v19 = v49;
      }

      v25 = 0x7E3F1F8FC7E3F1F9 * ((v22 - result - v13) >> 4);
      v26 = &a2[292 * (v49 / 2)];
      if (a2 != v22)
      {
        goto LABEL_31;
      }
    }

    a5 = -(v25 + v14);
    v37 = v19 - v20;
    if (v25 + v20 >= v19 - (v25 + v20) - v14)
    {
      v39 = v25;
      v40 = -(v25 + v14);
      v41 = v20;
      sub_6970E0(v26, v21, v47, a4, v40, v19 - v20, a7, v46);
      a2 = v22;
      a8 = v46;
      a5 = v39;
      a3 = v26;
      v49 = v41;
      result = v15;
      if (!v41)
      {
        return;
      }
    }

    else
    {
      v38 = v22;
      a8 = v46;
      sub_6970E0(&result[v13 / 4], v38, v26, a4, v25, v20, a7, v46);
      a2 = v21;
      a3 = v47;
      v49 = v37;
      result = v26;
      if (!v37)
      {
        return;
      }
    }
  }

  sub_697AF8(result, a2, a3, a4, a5, v49, a7);
}

__n128 sub_697530(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    *a3 = *a1;
    *(a3 + 8) = *(a1 + 8);
    *(a3 + 16) = 0;
    *(a3 + 1136) = 0;
    if (*(a1 + 1136) == 1)
    {
      sub_529850(a3 + 16, a1 + 16);
      *(a3 + 1136) = 1;
    }

    result = *(v5 + 1144);
    *(a3 + 1159) = *(v5 + 1159);
    *(a3 + 1144) = result;
    v20 = 1;
    v7 = (v5 + 1168);
    if ((v5 + 1168) != a2)
    {
      v8 = 0;
      v9 = a3;
      do
      {
        while (1)
        {
          v10 = v7;
          v11 = sub_7FD764(v7);
          if (v11 > sub_7FD764(v9))
          {
            break;
          }

          *(v9 + 1168) = *v10;
          *(v9 + 1176) = *(v5 + 1176);
          *(v9 + 1184) = 0;
          *(v9 + 2304) = 0;
          if (*(v5 + 2304) == 1)
          {
            sub_529850(v9 + 1184, v5 + 1184);
            *(v9 + 2304) = 1;
          }

          result = *(v5 + 2312);
          *(v9 + 2327) = *(v5 + 2327);
          *(v9 + 2312) = result;
          ++v20;
          v9 += 1168;
          v7 = v10 + 292;
          v8 += 1168;
          v5 = v10;
          if (v10 + 292 == a2)
          {
            return result;
          }
        }

        *(v9 + 1168) = *v9;
        *(v9 + 1176) = *(v9 + 8);
        *(v9 + 1184) = 0;
        *(v9 + 2304) = 0;
        if (*(v9 + 1136) == 1)
        {
          sub_529850(v9 + 1184, v9 + 16);
          *(v9 + 2304) = 1;
        }

        *(v9 + 2312) = *(v9 + 1144);
        *(v9 + 2327) = *(v9 + 1159);
        ++v20;
        v12 = a3;
        if (v9 != a3)
        {
          v13 = v8;
          do
          {
            v15 = sub_7FD764(v10);
            if (v15 <= sub_7FD764((a3 + v13 - 1168)))
            {
              v12 = a3 + v13;
              goto LABEL_24;
            }

            v16 = a3 + v13;
            *v16 = *(a3 + v13 - 1168);
            *(v16 + 8) = *(a3 + v13 - 1160);
            v17 = a3 + v13 - 1152;
            if (*(a3 + v13 + 1136) == *(a3 + v13 - 32))
            {
              if (*(a3 + v13 + 1136))
              {
                sub_52BE74(v16 + 16, v17);
              }
            }

            else
            {
              v18 = v16 + 16;
              if (*(a3 + v13 + 1136))
              {
                sub_3A9518(v18);
                *(v16 + 1136) = 0;
              }

              else
              {
                sub_529850(v18, v17);
                *(v16 + 1136) = 1;
              }
            }

            v14 = a3 + v13 + 1144;
            *v14 = *(a3 + v13 - 24);
            *(v14 + 15) = *(a3 + v13 - 9);
            v13 -= 1168;
          }

          while (v13);
          v12 = a3;
        }

LABEL_24:
        *v12 = *v10;
        *(v12 + 8) = *(v5 + 1176);
        if (*(v12 + 1136) == *(v5 + 2304))
        {
          if (*(v12 + 1136))
          {
            sub_52BE74(v12 + 16, v5 + 1184);
          }
        }

        else
        {
          v19 = v12 + 16;
          if (*(v12 + 1136))
          {
            sub_3A9518(v19);
            *(v12 + 1136) = 0;
          }

          else
          {
            sub_529850(v19, v5 + 1184);
            *(v12 + 1136) = 1;
          }
        }

        result = *(v5 + 2312);
        *(v12 + 1159) = *(v5 + 2327);
        *(v12 + 1144) = result;
        v9 += 1168;
        v7 = v10 + 292;
        v8 += 1168;
        v5 = v10;
      }

      while (v10 + 292 != a2);
    }
  }

  return result;
}

void sub_697838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_69784C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

__n128 sub_697860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v19 = 0;
  if (a1 == a2)
  {
    v8 = 0;
LABEL_3:
    if (v7 != a4)
    {
      v9 = 0;
      do
      {
        v11 = a5 + v9;
        v12 = v7 + v9;
        *v11 = *(v7 + v9);
        *(v11 + 8) = *(v7 + v9 + 8);
        *(a5 + v9 + 16) = 0;
        *(v11 + 1136) = 0;
        if (*(v7 + v9 + 1136) == 1)
        {
          sub_529850(a5 + v9 + 16, v12 + 16);
          *(v11 + 1136) = 1;
          v8 = v19;
        }

        result = *(v12 + 1144);
        *(v11 + 1159) = *(v12 + 1159);
        *(v11 + 1144) = result;
        v19 = ++v8;
        v9 += 1168;
      }

      while (v12 + 1168 != a4);
    }
  }

  else
  {
    v14 = a1;
    if (a3 != a4)
    {
      while (1)
      {
        v15 = sub_7FD764(v7);
        if (v15 <= sub_7FD764(v14))
        {
          *a5 = *v14;
          *(a5 + 8) = *(v14 + 8);
          *(a5 + 16) = 0;
          *(a5 + 1136) = 0;
          if (*(v14 + 1136) == 1)
          {
            sub_529850(a5 + 16, v14 + 16);
            *(a5 + 1136) = 1;
          }

          result = *(v14 + 1144);
          *(a5 + 1159) = *(v14 + 1159);
          *(a5 + 1144) = result;
          v8 = ++v19;
          v14 += 1168;
          a5 += 1168;
          if (v14 == a2)
          {
            goto LABEL_3;
          }
        }

        else
        {
          *a5 = *v7;
          *(a5 + 8) = *(v7 + 8);
          *(a5 + 16) = 0;
          *(a5 + 1136) = 0;
          if (*(v7 + 1136) == 1)
          {
            sub_529850(a5 + 16, v7 + 16);
            *(a5 + 1136) = 1;
          }

          result = *(v7 + 1144);
          *(a5 + 1159) = *(v7 + 1159);
          *(a5 + 1144) = result;
          v8 = ++v19;
          v7 += 1168;
          a5 += 1168;
          if (v14 == a2)
          {
            goto LABEL_3;
          }
        }

        if (v7 == a4)
        {
          goto LABEL_19;
        }
      }
    }

    v8 = 0;
LABEL_19:
    if (v14 != a2)
    {
      v16 = 0;
      do
      {
        v17 = a5 + v16;
        v18 = v14 + v16;
        *v17 = *(v14 + v16);
        *(v17 + 8) = *(v14 + v16 + 8);
        *(a5 + v16 + 16) = 0;
        *(v17 + 1136) = 0;
        if (*(v14 + v16 + 1136) == 1)
        {
          sub_529850(a5 + v16 + 16, v18 + 16);
          *(v17 + 1136) = 1;
          v8 = v19;
        }

        result = *(v18 + 1144);
        *(v17 + 1159) = *(v18 + 1159);
        *(v17 + 1144) = result;
        v19 = ++v8;
        v16 += 1168;
      }

      while (v18 + 1168 != a2);
    }
  }

  return result;
}

void sub_697AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_697AF8(_DWORD *a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v27 = 0;
  if (a5 <= a6)
  {
    v17 = a7;
    if (a1 != a2)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v21 = &a7[v18];
        v22 = &a1[v18];
        *v21 = a1[v18];
        v21[2] = a1[v18 + 2];
        LOBYTE(a7[v18 + 4]) = 0;
        *(v21 + 1136) = 0;
        if (LOBYTE(a1[v18 + 284]) == 1)
        {
          sub_529850(&a7[v18 + 4], (v22 + 4));
          *(v21 + 1136) = 1;
          v19 = v27;
        }

        v20 = *(v22 + 286);
        *(v21 + 1159) = *(v22 + 1159);
        *(v21 + 286) = v20;
        v27 = ++v19;
        v18 += 292;
      }

      while (v22 + 292 != a2);
      v17 = &a7[v18];
    }

    sub_696524(a7, v17, a2, a3, a1);
  }

  else
  {
    v11 = a7;
    if (a2 != a3)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v15 = &a7[v12];
        v16 = &a2[v12];
        *v15 = a2[v12];
        v15[2] = a2[v12 + 2];
        LOBYTE(a7[v12 + 4]) = 0;
        *(v15 + 1136) = 0;
        if (LOBYTE(a2[v12 + 284]) == 1)
        {
          sub_529850(&a7[v12 + 4], (v16 + 4));
          *(v15 + 1136) = 1;
          v13 = v27;
        }

        v14 = *(v16 + 286);
        *(v15 + 1159) = *(v16 + 1159);
        *(v15 + 286) = v14;
        v27 = ++v13;
        v12 += 292;
      }

      while (v16 + 292 != a3);
      v11 = &a7[v12];
    }

    sub_69672C(v11, v11, a7, a7, a2, a2, a1, a1, a3, a3);
  }

  if (a7)
  {
    v23 = v27;
    if (v27)
    {
      v24 = 0;
      v25 = a7 + 284;
      do
      {
        if (*v25 == 1)
        {
          sub_3A9518((v25 - 1120));
          v23 = v27;
        }

        ++v24;
        v25 += 1168;
      }

      while (v24 < v23);
    }
  }
}

void sub_697D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_697D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_697D50(int *a1, unsigned int *a2, uint64_t a3, unint64_t a4, _DWORD *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = (a2 - 292);
      v8 = sub_7FD764(a2 - 292);
      if (v8 > sub_7FD764(a1))
      {

        sub_695B8C(a1, v7);
      }
    }

    else if (a4 <= 0)
    {

      sub_697F94(a1, a2);
    }

    else
    {
      v10 = a4 >> 1;
      v11 = &a1[292 * (a4 >> 1)];
      if (a4 <= a6)
      {
        sub_6981E4(a1, &a1[292 * (a4 >> 1)], a3, a4 >> 1, a5);
        v19 = a4 - v10;
        v20 = &a5[292 * v10];
        sub_6981E4(v11, a2, a3, v19, v20);
        sub_69541C(a5, v20, v20, &a5[292 * a4], a1);
        if (a5)
        {
          v21 = a4;
          v22 = 0;
          v23 = a5 + 284;
          do
          {
            if (*v23 == 1)
            {
              sub_3A9518((v23 - 1120));
              v21 = a4;
            }

            ++v22;
            v23 += 1168;
          }

          while (v22 < v21);
        }
      }

      else
      {
        sub_697D50(a1, &a1[292 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v16 = a4 - v10;
        sub_697D50(v11, a2, a3, v16, a5, a6);

        sub_6984E4(a1, v11, a2, a3, v10, v16, a5, a6);
      }
    }
  }
}

void sub_697F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

unsigned int *sub_697F94(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 292;
    if (result + 292 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v4;
        v8 = sub_7FD764(v4);
        result = sub_7FD764(v6);
        if (v8 > result)
        {
          v9 = *(v6 + 1176);
          v21 = *v7;
          v22 = v9;
          v23[0] = 0;
          v24 = 0;
          if (*(v6 + 2304) == 1)
          {
            result = sub_529850(v23, v6 + 1184);
            v24 = 1;
          }

          v25[0] = *(v6 + 2312);
          *(v25 + 15) = *(v6 + 2327);
          v10 = v5;
          while (1)
          {
            v11 = v3 + v10;
            *(v11 + 292) = *(v3 + v10);
            *(v11 + 294) = *(v3 + v10 + 8);
            if (*(v3 + v10 + 2304) == *(v3 + v10 + 1136))
            {
              if (*(v3 + v10 + 2304))
              {
                result = sub_52BE74((v11 + 1184), (v11 + 16));
              }
            }

            else
            {
              v12 = (v11 + 1184);
              if (*(v3 + v10 + 2304))
              {
                result = sub_3A9518(v12);
                v11[2304] = 0;
              }

              else
              {
                result = sub_529850(v12, (v11 + 16));
                v11[2304] = 1;
              }
            }

            v13 = (v3 + v10);
            v14 = v3 + v10 + 2312;
            v15 = v3 + v10 + 1144;
            *v14 = *v15;
            *(v14 + 15) = *(v3 + v10 + 1159);
            if (!v10)
            {
              break;
            }

            v16 = sub_7FD764(&v21);
            result = sub_7FD764(v13 - 292);
            v10 -= 1168;
            if (v16 <= result)
            {
              v17 = v3 + v10 + 1168;
              goto LABEL_19;
            }
          }

          v17 = v3;
LABEL_19:
          v18 = v22;
          *v17 = v21;
          *(v17 + 8) = v18;
          if (*(v17 + 1136) == v24)
          {
            if (*(v17 + 1136))
            {
              result = sub_52BE74((v13 + 4), v23);
            }
          }

          else
          {
            v19 = (v13 + 4);
            if (*(v17 + 1136))
            {
              result = sub_3A9518(v19);
              *(v17 + 1136) = 0;
            }

            else
            {
              result = sub_529850(v19, v23);
              *(v17 + 1136) = 1;
            }
          }

          v20 = v25[0];
          *(v15 + 15) = *(v25 + 15);
          *v15 = v20;
          if (v24 == 1)
          {
            result = sub_3A9518(v23);
          }
        }

        v4 = v7 + 292;
        v5 += 1168;
        v6 = v7;
      }

      while (v7 + 292 != a2);
    }
  }

  return result;
}

void sub_6981E4(_DWORD *result, unsigned int *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v9 = a2 - 292;
      v10 = sub_7FD764(a2 - 292);
      if (v10 <= sub_7FD764(result))
      {
        *a5 = *result;
        *(a5 + 8) = result[2];
        *(a5 + 16) = 0;
        *(a5 + 1136) = 0;
        if (*(result + 1136) == 1)
        {
          sub_529850(a5 + 16, (result + 4));
          *(a5 + 1136) = 1;
        }

        v18 = *(result + 286);
        *(a5 + 1159) = *(result + 1159);
        *(a5 + 1144) = v18;
        *(a5 + 1168) = *v9;
        *(a5 + 1176) = *(a2 - 290);
        *(a5 + 1184) = 0;
        *(a5 + 2304) = 0;
        if (*(a2 - 32) == 1)
        {
          sub_529850(a5 + 1184, (a2 - 288));
          *(a5 + 2304) = 1;
        }

        v8 = a5 + 2312;
        v12 = *(a2 - 6);
        v13 = *(a2 - 9);
        goto LABEL_26;
      }

      *a5 = *v9;
      *(a5 + 8) = *(a2 - 290);
      *(a5 + 16) = 0;
      *(a5 + 1136) = 0;
      if (*(a2 - 32) == 1)
      {
        sub_529850(a5 + 16, (a2 - 288));
        *(a5 + 1136) = 1;
      }

      v11 = *(a2 - 6);
      *(a5 + 1159) = *(a2 - 9);
      *(a5 + 1144) = v11;
      *(a5 + 1168) = *result;
      *(a5 + 1176) = result[2];
      *(a5 + 1184) = 0;
      *(a5 + 2304) = 0;
      if (*(result + 1136) == 1)
      {
        sub_529850(a5 + 1184, (result + 4));
        *(a5 + 2304) = 1;
      }

      v8 = a5 + 2312;
LABEL_13:
      v12 = *(result + 286);
      v13 = *(result + 1159);
LABEL_26:
      *(v8 + 15) = v13;
      *v8 = v12;
      return;
    }

    if (a4 == 1)
    {
      *a5 = *result;
      *(a5 + 8) = result[2];
      *(a5 + 16) = 0;
      *(a5 + 1136) = 0;
      if (*(result + 1136) == 1)
      {
        sub_529850(a5 + 16, (result + 4));
        *(a5 + 1136) = 1;
      }

      v8 = a5 + 1144;
      goto LABEL_13;
    }

    if (a4 > 8)
    {
      v14 = a4 >> 1;
      v15 = 292 * (a4 >> 1);
      sub_697D50(result, &result[v15], a3, v14, a5, v14);
      sub_697D50(&result[v15], a2, a3, a4 - v14, a5 + v15 * 4, a4 - v14);

      sub_698C64(result, &result[v15], &result[v15], a2, a5);
    }

    else
    {

      sub_698934(result, a2, a5);
    }
  }
}

void sub_6984D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_6984E4(int *result, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v49 = a6;
  if (!a6)
  {
    return;
  }

  while (v49 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return;
    }

    v13 = 0;
    v14 = -a5;
    while (1)
    {
      v15 = &result[v13 / 4];
      v16 = sub_7FD764(a2);
      if (v16 > sub_7FD764(&result[v13 / 4]))
      {
        break;
      }

      v13 += 1168;
      if (__CFADD__(v14++, 1))
      {
        return;
      }
    }

    v18 = -v14;
    v19 = v49;
    v46 = a8;
    v47 = a3;
    if (-v14 >= v49)
    {
      if (v14 == -1)
      {

        sub_695B8C(&result[v13 / 4], a2);
        return;
      }

      v25 = v18 / 2;
      v22 = &result[292 * (v18 / 2) + v13 / 4];
      v27 = a3;
      v21 = a2;
      if (a2 != v27)
      {
        v42 = v25;
        v44 = a7;
        v28 = 0x7E3F1F8FC7E3F1F9 * ((v47 - a2) >> 4);
        v21 = a2;
        do
        {
          v29 = &v21[292 * (v28 >> 1)];
          v30 = sub_7FD764(v29);
          v31 = sub_7FD764(v22);
          if (v30 <= v31)
          {
            v28 >>= 1;
          }

          else
          {
            v28 += ~(v28 >> 1);
          }

          if (v30 > v31)
          {
            v21 = v29 + 292;
          }
        }

        while (v28);
        v25 = v42;
        a7 = v44;
        v19 = v49;
      }

      v20 = 0x7E3F1F8FC7E3F1F9 * ((v21 - a2) >> 4);
      v26 = v21;
      if (a2 != v22)
      {
LABEL_31:
        v26 = v22;
        if (a2 != v21)
        {
          v45 = v20;
          v43 = v25;
          sub_695B8C(v22, a2);
          v26 = (v22 + 292);
          for (i = a2 + 292; i != v21; i += 292)
          {
            if (v26 == a2)
            {
              a2 = i;
            }

            sub_695B8C(v26, i);
            v26 += 292;
          }

          if (v26 != a2)
          {
            v33 = v26;
            v34 = a2;
            while (1)
            {
              sub_695B8C(v33, v34);
              v34 += 292;
              v35 = v33 + 292 == a2;
              if (v34 == v21)
              {
                if (v33 + 292 == a2)
                {
                  break;
                }

                v34 = a2 + 292;
                v33 += 584;
                while (1)
                {
                  sub_695B8C(v33 - 292, a2);
                  v35 = v33 == a2;
                  if (v34 != v21)
                  {
                    break;
                  }

                  v36 = v33 == a2;
                  v33 += 292;
                  if (v36)
                  {
                    goto LABEL_48;
                  }
                }
              }

              else
              {
                v33 += 292;
              }

              if (v35)
              {
                a2 = v34;
              }
            }
          }

LABEL_48:
          v19 = v49;
          v25 = v43;
          v20 = v45;
        }
      }
    }

    else
    {
      v20 = v49 / 2;
      v21 = &a2[292 * (v49 / 2)];
      v22 = a2;
      if (a2 - result != v13)
      {
        v23 = 0x7E3F1F8FC7E3F1F9 * ((a2 - result - v13) >> 4);
        v22 = &result[v13 / 4];
        do
        {
          v24 = sub_7FD764(v21);
          if (v24 > sub_7FD764(&v22[292 * (v23 >> 1)]))
          {
            v23 >>= 1;
          }

          else
          {
            v22 += 292 * (v23 >> 1) + 292;
            v23 += ~(v23 >> 1);
          }
        }

        while (v23);
        v20 = v49 / 2;
        v19 = v49;
      }

      v25 = 0x7E3F1F8FC7E3F1F9 * ((v22 - result - v13) >> 4);
      v26 = &a2[292 * (v49 / 2)];
      if (a2 != v22)
      {
        goto LABEL_31;
      }
    }

    a5 = -(v25 + v14);
    v37 = v19 - v20;
    if (v25 + v20 >= v19 - (v25 + v20) - v14)
    {
      v39 = v25;
      v40 = -(v25 + v14);
      v41 = v20;
      sub_6984E4(v26, v21, v47, a4, v40, v19 - v20, a7, v46);
      a2 = v22;
      a8 = v46;
      a5 = v39;
      a3 = v26;
      v49 = v41;
      result = v15;
      if (!v41)
      {
        return;
      }
    }

    else
    {
      v38 = v22;
      a8 = v46;
      sub_6984E4(&result[v13 / 4], v38, v26, a4, v25, v20, a7, v46);
      a2 = v21;
      a3 = v47;
      v49 = v37;
      result = v26;
      if (!v37)
      {
        return;
      }
    }
  }

  sub_698EFC(result, a2, a3, a4, a5, v49, a7);
}

__n128 sub_698934(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    *a3 = *a1;
    *(a3 + 8) = *(a1 + 8);
    *(a3 + 16) = 0;
    *(a3 + 1136) = 0;
    if (*(a1 + 1136) == 1)
    {
      sub_529850(a3 + 16, a1 + 16);
      *(a3 + 1136) = 1;
    }

    result = *(v5 + 1144);
    *(a3 + 1159) = *(v5 + 1159);
    *(a3 + 1144) = result;
    v20 = 1;
    v7 = (v5 + 1168);
    if ((v5 + 1168) != a2)
    {
      v8 = 0;
      v9 = a3;
      do
      {
        while (1)
        {
          v10 = v7;
          v11 = sub_7FD764(v7);
          if (v11 > sub_7FD764(v9))
          {
            break;
          }

          *(v9 + 1168) = *v10;
          *(v9 + 1176) = *(v5 + 1176);
          *(v9 + 1184) = 0;
          *(v9 + 2304) = 0;
          if (*(v5 + 2304) == 1)
          {
            sub_529850(v9 + 1184, v5 + 1184);
            *(v9 + 2304) = 1;
          }

          result = *(v5 + 2312);
          *(v9 + 2327) = *(v5 + 2327);
          *(v9 + 2312) = result;
          ++v20;
          v9 += 1168;
          v7 = v10 + 292;
          v8 += 1168;
          v5 = v10;
          if (v10 + 292 == a2)
          {
            return result;
          }
        }

        *(v9 + 1168) = *v9;
        *(v9 + 1176) = *(v9 + 8);
        *(v9 + 1184) = 0;
        *(v9 + 2304) = 0;
        if (*(v9 + 1136) == 1)
        {
          sub_529850(v9 + 1184, v9 + 16);
          *(v9 + 2304) = 1;
        }

        *(v9 + 2312) = *(v9 + 1144);
        *(v9 + 2327) = *(v9 + 1159);
        ++v20;
        v12 = a3;
        if (v9 != a3)
        {
          v13 = v8;
          do
          {
            v15 = sub_7FD764(v10);
            if (v15 <= sub_7FD764((a3 + v13 - 1168)))
            {
              v12 = a3 + v13;
              goto LABEL_24;
            }

            v16 = a3 + v13;
            *v16 = *(a3 + v13 - 1168);
            *(v16 + 8) = *(a3 + v13 - 1160);
            v17 = a3 + v13 - 1152;
            if (*(a3 + v13 + 1136) == *(a3 + v13 - 32))
            {
              if (*(a3 + v13 + 1136))
              {
                sub_52BE74(v16 + 16, v17);
              }
            }

            else
            {
              v18 = v16 + 16;
              if (*(a3 + v13 + 1136))
              {
                sub_3A9518(v18);
                *(v16 + 1136) = 0;
              }

              else
              {
                sub_529850(v18, v17);
                *(v16 + 1136) = 1;
              }
            }

            v14 = a3 + v13 + 1144;
            *v14 = *(a3 + v13 - 24);
            *(v14 + 15) = *(a3 + v13 - 9);
            v13 -= 1168;
          }

          while (v13);
          v12 = a3;
        }

LABEL_24:
        *v12 = *v10;
        *(v12 + 8) = *(v5 + 1176);
        if (*(v12 + 1136) == *(v5 + 2304))
        {
          if (*(v12 + 1136))
          {
            sub_52BE74(v12 + 16, v5 + 1184);
          }
        }

        else
        {
          v19 = v12 + 16;
          if (*(v12 + 1136))
          {
            sub_3A9518(v19);
            *(v12 + 1136) = 0;
          }

          else
          {
            sub_529850(v19, v5 + 1184);
            *(v12 + 1136) = 1;
          }
        }

        result = *(v5 + 2312);
        *(v12 + 1159) = *(v5 + 2327);
        *(v12 + 1144) = result;
        v9 += 1168;
        v7 = v10 + 292;
        v8 += 1168;
        v5 = v10;
      }

      while (v10 + 292 != a2);
    }
  }

  return result;
}

void sub_698C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_698C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

__n128 sub_698C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v19 = 0;
  if (a1 == a2)
  {
    v8 = 0;
LABEL_3:
    if (v7 != a4)
    {
      v9 = 0;
      do
      {
        v11 = a5 + v9;
        v12 = v7 + v9;
        *v11 = *(v7 + v9);
        *(v11 + 8) = *(v7 + v9 + 8);
        *(a5 + v9 + 16) = 0;
        *(v11 + 1136) = 0;
        if (*(v7 + v9 + 1136) == 1)
        {
          sub_529850(a5 + v9 + 16, v12 + 16);
          *(v11 + 1136) = 1;
          v8 = v19;
        }

        result = *(v12 + 1144);
        *(v11 + 1159) = *(v12 + 1159);
        *(v11 + 1144) = result;
        v19 = ++v8;
        v9 += 1168;
      }

      while (v12 + 1168 != a4);
    }
  }

  else
  {
    v14 = a1;
    if (a3 != a4)
    {
      while (1)
      {
        v15 = sub_7FD764(v7);
        if (v15 <= sub_7FD764(v14))
        {
          *a5 = *v14;
          *(a5 + 8) = *(v14 + 8);
          *(a5 + 16) = 0;
          *(a5 + 1136) = 0;
          if (*(v14 + 1136) == 1)
          {
            sub_529850(a5 + 16, v14 + 16);
            *(a5 + 1136) = 1;
          }

          result = *(v14 + 1144);
          *(a5 + 1159) = *(v14 + 1159);
          *(a5 + 1144) = result;
          v8 = ++v19;
          v14 += 1168;
          a5 += 1168;
          if (v14 == a2)
          {
            goto LABEL_3;
          }
        }

        else
        {
          *a5 = *v7;
          *(a5 + 8) = *(v7 + 8);
          *(a5 + 16) = 0;
          *(a5 + 1136) = 0;
          if (*(v7 + 1136) == 1)
          {
            sub_529850(a5 + 16, v7 + 16);
            *(a5 + 1136) = 1;
          }

          result = *(v7 + 1144);
          *(a5 + 1159) = *(v7 + 1159);
          *(a5 + 1144) = result;
          v8 = ++v19;
          v7 += 1168;
          a5 += 1168;
          if (v14 == a2)
          {
            goto LABEL_3;
          }
        }

        if (v7 == a4)
        {
          goto LABEL_19;
        }
      }
    }

    v8 = 0;
LABEL_19:
    if (v14 != a2)
    {
      v16 = 0;
      do
      {
        v17 = a5 + v16;
        v18 = v14 + v16;
        *v17 = *(v14 + v16);
        *(v17 + 8) = *(v14 + v16 + 8);
        *(a5 + v16 + 16) = 0;
        *(v17 + 1136) = 0;
        if (*(v14 + v16 + 1136) == 1)
        {
          sub_529850(a5 + v16 + 16, v18 + 16);
          *(v17 + 1136) = 1;
          v8 = v19;
        }

        result = *(v18 + 1144);
        *(v17 + 1159) = *(v18 + 1159);
        *(v17 + 1144) = result;
        v19 = ++v8;
        v16 += 1168;
      }

      while (v18 + 1168 != a2);
    }
  }

  return result;
}

void sub_698EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_698EFC(_DWORD *a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v27 = 0;
  if (a5 <= a6)
  {
    v17 = a7;
    if (a1 != a2)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v21 = &a7[v18];
        v22 = &a1[v18];
        *v21 = a1[v18];
        v21[2] = a1[v18 + 2];
        LOBYTE(a7[v18 + 4]) = 0;
        *(v21 + 1136) = 0;
        if (LOBYTE(a1[v18 + 284]) == 1)
        {
          sub_529850(&a7[v18 + 4], (v22 + 4));
          *(v21 + 1136) = 1;
          v19 = v27;
        }

        v20 = *(v22 + 286);
        *(v21 + 1159) = *(v22 + 1159);
        *(v21 + 286) = v20;
        v27 = ++v19;
        v18 += 292;
      }

      while (v22 + 292 != a2);
      v17 = &a7[v18];
    }

    sub_696524(a7, v17, a2, a3, a1);
  }

  else
  {
    v11 = a7;
    if (a2 != a3)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v15 = &a7[v12];
        v16 = &a2[v12];
        *v15 = a2[v12];
        v15[2] = a2[v12 + 2];
        LOBYTE(a7[v12 + 4]) = 0;
        *(v15 + 1136) = 0;
        if (LOBYTE(a2[v12 + 284]) == 1)
        {
          sub_529850(&a7[v12 + 4], (v16 + 4));
          *(v15 + 1136) = 1;
          v13 = v27;
        }

        v14 = *(v16 + 286);
        *(v15 + 1159) = *(v16 + 1159);
        *(v15 + 286) = v14;
        v27 = ++v13;
        v12 += 292;
      }

      while (v16 + 292 != a3);
      v11 = &a7[v12];
    }

    sub_69672C(v11, v11, a7, a7, a2, a2, a1, a1, a3, a3);
  }

  if (a7)
  {
    v23 = v27;
    if (v27)
    {
      v24 = 0;
      v25 = a7 + 284;
      do
      {
        if (*v25 == 1)
        {
          sub_3A9518((v25 - 1120));
          v23 = v27;
        }

        ++v24;
        v25 += 1168;
      }

      while (v24 < v23);
    }
  }
}

void sub_69912C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_699140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_699154()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27A18D0 = 0u;
  unk_27A18E0 = 0u;
  dword_27A18F0 = 1065353216;
  sub_3A9A34(&xmmword_27A18D0, v0, v0);
  sub_3A9A34(&xmmword_27A18D0, v3, v3);
  sub_3A9A34(&xmmword_27A18D0, __p, __p);
  sub_3A9A34(&xmmword_27A18D0, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27A18A8 = 0;
    qword_27A18B0 = 0;
    qword_27A18A0 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_69939C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A18B8)
  {
    qword_27A18C0 = qword_27A18B8;
    operator delete(qword_27A18B8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_699448(uint64_t a1, uint64_t a2, char a3)
{
  nullsub_1();
  v17 = v5;
  v6 = sub_3CF22C(a2);
  v24 = sub_4D1DB8(a2);
  v7 = sub_4D20D0(a2);
  v8 = sub_4D20D8(a2);
  v9 = sub_3EB950(a2);
  v10 = sub_4D1DB0(a2);
  v11 = sub_4D1E30(a2);
  v12 = sub_4D1E38(a2);
  v22 = 0;
  v23 = 0;
  v21 = 0;
  if (v12 != v11)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = sub_4D27A4(a2);
  sub_4D1E70(a2, v18);
  sub_4D27B4(a1, v17, v6, &v24, v7, v8, v9, v10, &v21, v13, v18);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  *(a1 + 1096) = 3;
  *(a1 + 1097) = sub_4D20E0(a2);
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0;
  sub_43EDEC((a1 + 1224));
  *(a1 + 1312) = 0;
  *(a1 + 1296) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1248) = 0u;
  sub_559C9C(a1 + 1320);
  sub_60AEEC(a1 + 2408);
  *(a1 + 7224) = 0;
  *(a1 + 7208) = 0u;
  sub_64B998(a1 + 7232);
  *(a1 + 7568) = 0u;
  *(a1 + 7552) = 0u;
  *(a1 + 7536) = 0u;
  *(a1 + 7520) = 0u;
  *(a1 + 7504) = 0u;
  *(a1 + 7488) = 0u;
  *(a1 + 7472) = 0u;
  *(a1 + 7456) = 0u;
  *(a1 + 7440) = 0u;
  *(a1 + 7424) = 0u;
  *(a1 + 7408) = 0u;
  *(a1 + 7392) = 0u;
  sub_608080(a1 + 7584);
  sub_608080(a1 + 8440);
  sub_64B998(a1 + 9296);
  sub_64B998(a1 + 9456);
  sub_64B998(a1 + 9616);
  sub_64B998(a1 + 9776);
  sub_64B998(a1 + 9936);
  *(a1 + 10112) = 0;
  *(a1 + 10096) = 0u;
  *(a1 + 10120) = 0;
  *(a1 + 10121) = a3;
  *(a1 + 10128) = 0u;
  *(a1 + 10144) = 0u;
  *(a1 + 10160) = 0u;
  *(a1 + 10176) = 0u;
  *(a1 + 10192) = 0u;
  *(a1 + 10208) = 0u;
  *(a1 + 10224) = 0u;
  *(a1 + 10240) = 0;
  *(a1 + 10248) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10256) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10312) = 0;
  *(a1 + 10264) = 0u;
  *(a1 + 10280) = 0u;
  *(a1 + 10296) = 0u;
  *(a1 + 10336) = 0;
  *(a1 + 10320) = 0u;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  *(a1 + 10344) = -1;
  *(a1 + 10352) = 0x7FFFFFFF;
  *(a1 + 10360) = -1;
  *(a1 + 10368) = -1;
  *(a1 + 10376) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10384) = 0;
  *(a1 + 10392) = -1935635296;
  *(a1 + 10400) = 0;
  *(a1 + 10407) = 0;
  *(a1 + 10432) = 0;
  *(a1 + 10440) = 0;
  *(a1 + 10416) = 0u;
  *(a1 + 10448) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10456) = 100;
  *(a1 + 10464) = 0u;
  *(a1 + 10480) = vnegq_f64(v14);
  *(a1 + 10512) = 0;
  *(a1 + 10496) = 0u;
  *(a1 + 10520) = 1;
  *(a1 + 10528) = 0;
  *(a1 + 10632) = 0;
  *(a1 + 10536) = 0u;
  *(a1 + 10552) = 0u;
  *(a1 + 10568) = 0u;
  *(a1 + 10584) = 0u;
  *(a1 + 10600) = 0u;
  *(a1 + 10616) = 0u;
  *(a1 + 10720) = 0;
  *(a1 + 10704) = 0u;
  *(a1 + 10688) = 0u;
  *(a1 + 10672) = 0u;
  *(a1 + 10656) = 0u;
  *(a1 + 10640) = 0u;
  *(a1 + 10728) = -1;
  *(a1 + 10736) = -1;
  *(a1 + 10744) = 0u;
  *(a1 + 10768) = 0;
  *(a1 + 10760) = 0;
  *(a1 + 10776) = 0;
  *(a1 + 10780) = 0u;
  *(a1 + 10796) = 0u;
  sub_64B998(a1 + 10816);
  *(a1 + 11008) = 0;
  *(a1 + 11016) = -1;
  *(a1 + 11019) = -1;
  *(a1 + 11023) = 0;
  *(a1 + 11031) = 0u;
  *(a1 + 11047) = 0;
  *(a1 + 11056) = 0;
  *(a1 + 11064) = 0u;
  *(a1 + 11080) = 0;
  *(a1 + 11088) = -1;
  *(a1 + 11096) = 0x7FFFFFFF;
  *(a1 + 11104) = -1;
  *(a1 + 11112) = -1;
  *(a1 + 11120) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11128) = 0;
  *(a1 + 11136) = -1935635296;
  *(a1 + 11144) = 0;
  *(a1 + 11151) = 0;
  *(a1 + 11160) = 0u;
  *(a1 + 11184) = 0;
  *(a1 + 11176) = 0;
  *(a1 + 11192) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11200) = 100;
  *(a1 + 11208) = 0u;
  *(a1 + 11224) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11232) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11240) = 0u;
  *(a1 + 11256) = 0;
  *(a1 + 11264) = 1;
  *(a1 + 11272) = 0;
  *(a1 + 11280) = 0u;
  *(a1 + 11296) = 0u;
  *(a1 + 11312) = 0u;
  *(a1 + 11328) = 0u;
  *(a1 + 11344) = 0u;
  *(a1 + 11360) = 0u;
  *(a1 + 11376) = 0;
  *(a1 + 11464) = 0;
  *(a1 + 11432) = 0u;
  *(a1 + 11448) = 0u;
  *(a1 + 11400) = 0u;
  *(a1 + 11416) = 0u;
  *(a1 + 11384) = 0u;
  *(a1 + 11480) = -1;
  *(a1 + 11472) = -1;
  *(a1 + 11488) = 0u;
  *(a1 + 11512) = 0;
  *(a1 + 11504) = 0;
  *(a1 + 11520) = 0;
  *(a1 + 11524) = 0u;
  *(a1 + 11540) = 0u;
  sub_64B998(a1 + 11560);
  *(a1 + 11752) = 0;
  *(a1 + 11760) = -1;
  *(a1 + 11763) = -1;
  *(a1 + 11767) = 0;
  *(a1 + 11775) = 0u;
  *(a1 + 11791) = 0;
  *(a1 + 11800) = 0;
  *(a1 + 11808) = 0u;
  *(a1 + 11824) = 0;
  *(a1 + 11832) = 0u;
  *(a1 + 11848) = 0u;
  *(a1 + 11864) = 0u;
  *(a1 + 11880) = 0u;
  *(a1 + 11896) = 0u;
  *(a1 + 11912) = 0u;
  *(a1 + 11928) = 0u;
  *(a1 + 11944) = 0u;
  *(a1 + 11960) = 0u;
  *(a1 + 11976) = 0u;
  *(a1 + 11992) = 0u;
  *(a1 + 12008) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 12016) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 12040) = 0;
  *(a1 + 12024) = 0u;
  *(a1 + 12048) = 0x8000000080000000;
  *(a1 + 12072) = 0;
  *(a1 + 12056) = 0u;
  sub_64B998(a1 + 12080);
  *(a1 + 12256) = 0;
  *(a1 + 12240) = 0u;
  *(a1 + 12264) = 0;
  *(a1 + 12265) = 1;
  *(a1 + 12272) = 0u;
  *(a1 + 12288) = 0u;
  *(a1 + 12304) = 0u;
  *(a1 + 12320) = 0u;
  *(a1 + 12336) = 0u;
  *(a1 + 12352) = 0u;
  *(a1 + 12368) = 0u;
  *(a1 + 12384) = 0u;
  *(a1 + 12400) = 0u;
  *(a1 + 12416) = 0u;
  *(a1 + 12432) = 0u;
  *(a1 + 12448) = 0;
  *(a1 + 12456) = 1065353216;
  *(a1 + 12472) = 0u;
  *(a1 + 12488) = 0;
  *(a1 + 12464) = off_266BBB8;
  *(a1 + 12496) = 0;
  *(a1 + 12528) = 0;
  *(a1 + 12512) = 0u;
  *(a1 + 12504) = off_266BBF0;
  *(a1 + 12536) = 0;
  *(a1 + 12544) = 0u;
  *(a1 + 12560) = 0u;
  *(a1 + 12576) = 1065353216;
  *(a1 + 12584) = 0u;
  *(a1 + 12600) = 0u;
  *(a1 + 12616) = 1065353216;
  *(a1 + 12640) = 0;
  *(a1 + 12624) = 0u;
  *(a1 + 12648) = 0;
  sub_699FB0(a1);
  sub_3E428((a1 + 1048), a2 + 1048);
  if (a1 != a2)
  {
    sub_31F64((a1 + 1072), *(a2 + 1072), *(a2 + 1080), (*(a2 + 1080) - *(a2 + 1072)) >> 3);
  }

  return a1;
}

void sub_699B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_5ECB64((v22 + v25));
  v29 = *(v22 + v23);
  if (v29)
  {
    *(v22 + 12032) = v29;
    operator delete(v29);
    v30 = *(v22 + 11984);
    if (!v30)
    {
LABEL_3:
      v31 = *(v22 + 11952);
      if (!v31)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v30 = *(v22 + 11984);
    if (!v30)
    {
      goto LABEL_3;
    }
  }

  *(v22 + 11992) = v30;
  operator delete(v30);
  v31 = *(v22 + 11952);
  if (!v31)
  {
LABEL_4:
    sub_5C23C8((v22 + 11856));
    v32 = *v26;
    if (!*v26)
    {
LABEL_6:
      sub_5EC498(v22 + 11088);
      sub_5EC498(v22 + 10344);
      sub_69A11C((v22 + 10320));
      sub_5ECD28((v22 + 10248));
      if (v27[2784] < 0)
      {
        operator delete(*(v22 + 10224));
      }

      sub_5EC548((v22 + 10200));
      sub_5EC548((v22 + 10176));
      sub_5EC548((v22 + 10152));
      sub_5ECEBC((v22 + 10128));
      sub_5ECF34(v24);
      sub_53A868(v22 + 9936);
      sub_53A868(v22 + 9776);
      sub_53A868(v22 + 9616);
      sub_53A868(v22 + 9456);
      sub_53A868(v22 + 9296);
      sub_5936E4((v22 + 8440));
      sub_5936E4((v22 + 7584));
      sub_5ED1D0((v22 + 7560));
      sub_5EC5AC((v22 + 7536));
      sub_5EC628((v22 + 7512));
      sub_1A104((v22 + 7488));
      if (v27[24] < 0)
      {
        operator delete(*(v22 + 7464));
        if ((*v27 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((*v27 & 0x80000000) == 0)
      {
LABEL_13:
        sub_5706DC((v22 + 7416));
        v33 = *(v22 + 7392);
        if (!v33)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      operator delete(*(v22 + 7440));
      sub_5706DC((v22 + 7416));
      v33 = *(v22 + 7392);
      if (!v33)
      {
LABEL_15:
        sub_53A868(v22 + 7232);
        sub_1A104((v22 + 7208));
        sub_5C1688(v22 + 2408);
        sub_559E70((v22 + 1320));
        if (*(v22 + 1319) < 0)
        {
          operator delete(*(v22 + 1296));
        }

        if (*(v22 + 1295) < 0)
        {
          operator delete(*(v22 + 1272));
          sub_6926D4((v22 + 1248));
          v34 = *a14;
          if (*a14)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_6926D4((v22 + 1248));
          v34 = *a14;
          if (*a14)
          {
LABEL_19:
            *(v22 + 1232) = v34;
            operator delete(v34);
            v35 = *(v22 + 1200);
            if (!v35)
            {
LABEL_24:
              sub_5EBF44((v22 + 1176));
              sub_5EBF44((v22 + 1152));
              sub_5EC684((v22 + 1128));
              sub_5EC684((v22 + 1104));
              sub_3EEA68(v22);
              _Unwind_Resume(a1);
            }

LABEL_23:
            *(v22 + 1208) = v35;
            operator delete(v35);
            goto LABEL_24;
          }
        }

        v35 = *(v22 + 1200);
        if (!v35)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_14:
      *(v22 + 7400) = v33;
      operator delete(v33);
      goto LABEL_15;
    }

LABEL_5:
    *(v22 + 11840) = v32;
    operator delete(v32);
    goto LABEL_6;
  }

LABEL_29:
  *(v22 + 11960) = v31;
  operator delete(v31);
  sub_5C23C8((v22 + 11856));
  v32 = *v26;
  if (!*v26)
  {
    goto LABEL_6;
  }

  goto LABEL_5;
}

unint64_t sub_699FB0(void *a1)
{
  v2 = sub_4D1DC0(a1);
  sub_3D41C((a1 + 1578), v2);
  result = sub_4D1DC0(a1);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      while (1)
      {
        v5 = sub_4D27A4(a1);
        v6 = *v5;
        v7 = *(v5 + 8);
        if (*v5 != v7)
        {
          break;
        }

        v9 = 0;
        v10 = a1[1579];
        v11 = a1[1580];
        if (v10 != v11 << 6)
        {
          goto LABEL_14;
        }

LABEL_17:
        if ((v10 + 1) < 0)
        {
          sub_1794();
        }

        v15 = v11 << 7;
        if (v15 <= (v10 & 0x3FFFFFFFFFFFFFC0) + 64)
        {
          v15 = (v10 & 0x3FFFFFFFFFFFFFC0) + 64;
        }

        if (v10 <= 0x3FFFFFFFFFFFFFFELL)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        sub_3D41C((a1 + 1578), v16);
        v17 = a1[1579];
        a1[1579] = v17 + 1;
        v12 = a1[1578];
        v13 = v17 >> 6;
        v14 = 1 << v17;
        if (v9)
        {
          goto LABEL_24;
        }

LABEL_3:
        *(v12 + 8 * v13) &= ~v14;
        ++i;
        result = sub_4D1DC0(a1);
        if (i >= result)
        {
          return result;
        }
      }

      do
      {
        v8 = *v6 <= i && v6[1] >= i;
        v9 = v8;
        if (v8)
        {
          break;
        }

        v6 += 8;
      }

      while (v6 != v7);
      v10 = a1[1579];
      v11 = a1[1580];
      if (v10 == v11 << 6)
      {
        goto LABEL_17;
      }

LABEL_14:
      a1[1579] = v10 + 1;
      v12 = a1[1578];
      v13 = v10 >> 6;
      v14 = 1 << v10;
      if (!v9)
      {
        goto LABEL_3;
      }

LABEL_24:
      *(v12 + 8 * v13) |= v14;
      result = sub_4D1DC0(a1);
    }
  }

  return result;
}

char **sub_69A11C(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 104;
        sub_5C24CC(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_69A184(uint64_t a1)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = -1;
  *(a1 + 128) = 0xFFFF;
  *(a1 + 136) = -1;
  *(a1 + 138) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 158) = 0;
  *(a1 + 168) = 0x7FFFFFFF;
  *(a1 + 176) = 0x7FFFFFFF;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 180) = 0x7FFFFFFF7FFFFFFFLL;
  *&v2 = 0x8000000080000000;
  *(a1 + 200) = 0x8000000080000000;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 260) = 0x7FFFFFFF;
  *(a1 + 264) = 0x8000000080000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = xmmword_2297C00;
  *(a1 + 304) = -1;
  *(a1 + 312) = -1;
  *(a1 + 314) = 0;
  *(a1 + 334) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 344) = 0x7FFFFFFF;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0x7FFFFFFF;
  *(a1 + 356) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 376) = 0x8000000080000000;
  *(a1 + 432) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 436) = 0x7FFFFFFF;
  *(a1 + 440) = 0x8000000080000000;
  *(a1 + 456) = 0;
  *(a1 + 464) = xmmword_2297C00;
  *(a1 + 480) = -1;
  *(a1 + 488) = 0x7FFFFFFF;
  *(a1 + 492) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0x8000000080000000;
  *(a1 + 536) = 0x7FFFFFFF;
  *(a1 + 544) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 552) = 0x8000000080000000;
  *(a1 + 560) = 0x7FFFFFFF;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 568) = 0u;
  *(&v2 + 1) = 0x8000000080000000;
  *(a1 + 808) = v2;
  *(a1 + 824) = v2;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 1096) = 259;
  *(a1 + 1312) = 0;
  *(a1 + 1296) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  sub_559C9C(a1 + 1320);
  sub_60AEEC(a1 + 2408);
  *(a1 + 7224) = 0;
  *(a1 + 7208) = 0u;
  sub_64B998(a1 + 7232);
  *(a1 + 7568) = 0u;
  *(a1 + 7552) = 0u;
  *(a1 + 7536) = 0u;
  *(a1 + 7520) = 0u;
  *(a1 + 7504) = 0u;
  *(a1 + 7488) = 0u;
  *(a1 + 7472) = 0u;
  *(a1 + 7456) = 0u;
  *(a1 + 7440) = 0u;
  *(a1 + 7424) = 0u;
  *(a1 + 7408) = 0u;
  *(a1 + 7392) = 0u;
  sub_608080(a1 + 7584);
  sub_608080(a1 + 8440);
  sub_64B998(a1 + 9296);
  sub_64B998(a1 + 9456);
  sub_64B998(a1 + 9616);
  sub_64B998(a1 + 9776);
  sub_64B998(a1 + 9936);
  *(a1 + 10112) = 0;
  *(a1 + 10096) = 0u;
  *(a1 + 10120) = 0;
  *(a1 + 10128) = 0u;
  *(a1 + 10144) = 0u;
  *(a1 + 10160) = 0u;
  *(a1 + 10176) = 0u;
  *(a1 + 10192) = 0u;
  *(a1 + 10208) = 0u;
  *(a1 + 10224) = 0u;
  *(a1 + 10240) = 0;
  *(a1 + 10248) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10256) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10312) = 0;
  *(a1 + 10264) = 0u;
  *(a1 + 10280) = 0u;
  *(a1 + 10296) = 0u;
  *(a1 + 10336) = 0;
  *(a1 + 10320) = 0u;
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  *(a1 + 10344) = -1;
  *(a1 + 10352) = 0x7FFFFFFF;
  *(a1 + 10360) = -1;
  *(a1 + 10368) = -1;
  *(a1 + 10376) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10384) = 0;
  *(a1 + 10392) = -1935635296;
  *(a1 + 10400) = 0;
  *(a1 + 10407) = 0;
  *(a1 + 10432) = 0;
  *(a1 + 10440) = 0;
  *(a1 + 10416) = 0u;
  *(a1 + 10448) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10456) = 100;
  *(a1 + 10464) = 0u;
  *(a1 + 10480) = vnegq_f64(v3);
  *(a1 + 10512) = 0;
  *(a1 + 10496) = 0u;
  *(a1 + 10520) = 1;
  *(a1 + 10528) = 0;
  *(a1 + 10632) = 0;
  *(a1 + 10536) = 0u;
  *(a1 + 10552) = 0u;
  *(a1 + 10568) = 0u;
  *(a1 + 10584) = 0u;
  *(a1 + 10600) = 0u;
  *(a1 + 10616) = 0u;
  *(a1 + 10720) = 0;
  *(a1 + 10704) = 0u;
  *(a1 + 10688) = 0u;
  *(a1 + 10672) = 0u;
  *(a1 + 10656) = 0u;
  *(a1 + 10640) = 0u;
  *(a1 + 10728) = -1;
  *(a1 + 10736) = -1;
  *(a1 + 10744) = 0u;
  *(a1 + 10768) = 0;
  *(a1 + 10760) = 0;
  *(a1 + 10776) = 0;
  *(a1 + 10780) = 0u;
  *(a1 + 10796) = 0u;
  sub_64B998(a1 + 10816);
  *(a1 + 11008) = 0;
  *(a1 + 11016) = -1;
  *(a1 + 11019) = -1;
  *(a1 + 11023) = 0;
  *(a1 + 11031) = 0u;
  *(a1 + 11047) = 0;
  *(a1 + 11056) = 0;
  *(a1 + 11064) = 0u;
  *(a1 + 11080) = 0;
  *(a1 + 11088) = -1;
  *(a1 + 11096) = 0x7FFFFFFF;
  *(a1 + 11104) = -1;
  *(a1 + 11112) = -1;
  *(a1 + 11120) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11128) = 0;
  *(a1 + 11136) = -1935635296;
  *(a1 + 11144) = 0;
  *(a1 + 11151) = 0;
  *(a1 + 11160) = 0u;
  *(a1 + 11184) = 0;
  *(a1 + 11176) = 0;
  *(a1 + 11192) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11200) = 100;
  *(a1 + 11208) = 0u;
  *(a1 + 11224) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11232) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11240) = 0u;
  *(a1 + 11256) = 0;
  *(a1 + 11264) = 1;
  *(a1 + 11272) = 0;
  *(a1 + 11280) = 0u;
  *(a1 + 11296) = 0u;
  *(a1 + 11312) = 0u;
  *(a1 + 11328) = 0u;
  *(a1 + 11344) = 0u;
  *(a1 + 11360) = 0u;
  *(a1 + 11376) = 0;
  *(a1 + 11464) = 0;
  *(a1 + 11432) = 0u;
  *(a1 + 11448) = 0u;
  *(a1 + 11400) = 0u;
  *(a1 + 11416) = 0u;
  *(a1 + 11384) = 0u;
  *(a1 + 11480) = -1;
  *(a1 + 11472) = -1;
  *(a1 + 11488) = 0u;
  *(a1 + 11512) = 0;
  *(a1 + 11504) = 0;
  *(a1 + 11520) = 0;
  *(a1 + 11524) = 0u;
  *(a1 + 11540) = 0u;
  sub_64B998(a1 + 11560);
  *(a1 + 11752) = 0;
  *(a1 + 11760) = -1;
  *(a1 + 11763) = -1;
  *(a1 + 11767) = 0;
  *(a1 + 11775) = 0u;
  *(a1 + 11791) = 0;
  *(a1 + 11800) = 0;
  *(a1 + 11808) = 0u;
  *(a1 + 11824) = 0;
  *(a1 + 11832) = 0u;
  *(a1 + 11848) = 0u;
  *(a1 + 11864) = 0u;
  *(a1 + 11880) = 0u;
  *(a1 + 11896) = 0u;
  *(a1 + 11912) = 0u;
  *(a1 + 11928) = 0u;
  *(a1 + 11944) = 0u;
  *(a1 + 11960) = 0u;
  *(a1 + 11976) = 0u;
  *(a1 + 11992) = 0u;
  *(a1 + 12008) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 12016) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 12040) = 0;
  *(a1 + 12024) = 0u;
  *(a1 + 12048) = 0x8000000080000000;
  *(a1 + 12072) = 0;
  *(a1 + 12056) = 0u;
  sub_64B998(a1 + 12080);
  *(a1 + 12256) = 0;
  *(a1 + 12240) = 0u;
  *(a1 + 12264) = 0;
  *(a1 + 12265) = 1;
  *(a1 + 12272) = 0u;
  *(a1 + 12288) = 0u;
  *(a1 + 12304) = 0u;
  *(a1 + 12320) = 0u;
  *(a1 + 12336) = 0u;
  *(a1 + 12352) = 0u;
  *(a1 + 12368) = 0u;
  *(a1 + 12384) = 0u;
  *(a1 + 12400) = 0u;
  *(a1 + 12416) = 0u;
  *(a1 + 12432) = 0u;
  *(a1 + 12448) = 0;
  *(a1 + 12456) = 1065353216;
  *(a1 + 12472) = 0u;
  *(a1 + 12488) = 0;
  *(a1 + 12464) = off_266BBB8;
  *(a1 + 12496) = 0;
  *(a1 + 12528) = 0;
  *(a1 + 12512) = 0u;
  *(a1 + 12504) = off_266BBF0;
  *(a1 + 12536) = 0;
  *(a1 + 12544) = 0u;
  *(a1 + 12560) = 0u;
  *(a1 + 12576) = 1065353216;
  *(a1 + 12584) = 0u;
  *(a1 + 12600) = 0u;
  *(a1 + 12616) = 1065353216;
  *(a1 + 12640) = 0;
  *(a1 + 12624) = 0u;
  *(a1 + 12648) = 0;
  *(sub_3AF234(a1) + 16) = 1000000000;
  *(sub_73F1C(a1) + 16) = 1000000000;
  return a1;
}

void sub_69A838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (*v12)
  {
    operator delete(*v12);
  }

  sub_5EC6E0(v10 + 12544);
  sub_5EC754(v13);
  sub_5EC808((v10 + 12400));
  v18 = *(v10 + 12376);
  if (v18)
  {
    *(v10 + 12384) = v18;
    operator delete(v18);
    v19 = *(v10 + 12344);
    if (!v19)
    {
LABEL_5:
      if ((*(v17 + 78) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v19 = *(v10 + 12344);
    if (!v19)
    {
      goto LABEL_5;
    }
  }

  *(v10 + 12352) = v19;
  operator delete(v19);
  if ((*(v17 + 78) & 0x80000000) == 0)
  {
LABEL_7:
    sub_528FAC((v10 + 12296));
    sub_5EC9F0((v10 + 12272));
    sub_5ECA54((v10 + 12008));
    v20 = *(v10 + 11984);
    if (v20)
    {
      *(v10 + 11992) = v20;
      operator delete(v20);
      v21 = *(v10 + 11952);
      if (v21)
      {
LABEL_17:
        *(v10 + 11960) = v21;
        operator delete(v21);
        sub_5C23C8((v10 + 11856));
        v22 = *v16;
        if (!*v16)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v21 = *(v10 + 11952);
      if (v21)
      {
        goto LABEL_17;
      }
    }

    sub_5C23C8((v10 + 11856));
    v22 = *v16;
    if (!*v16)
    {
LABEL_15:
      sub_5EC498(v10 + 11088);
      sub_5EC498(v10 + 10344);
      sub_69A11C((v10 + 10320));
      sub_5ECD28((v10 + 10248));
      if (v14[2784] < 0)
      {
        operator delete(*(v10 + 10224));
      }

      sub_5EC548((v10 + 10200));
      sub_5EC548((v10 + 10176));
      sub_5EC548((v10 + 10152));
      sub_5ECEBC((v10 + 10128));
      sub_5ECF34(v11);
      sub_53A868(v10 + v15);
      sub_53A868(v10 + 9776);
      sub_53A868(v10 + 9616);
      sub_53A868(v10 + 9456);
      sub_53A868(v10 + 9296);
      sub_5936E4((v10 + 8440));
      sub_5936E4((v10 + 7584));
      sub_5ED1D0((v10 + 7560));
      sub_5EC5AC((v10 + 7536));
      sub_5EC628((v10 + 7512));
      sub_1A104((v10 + 7488));
      if (v14[24] < 0)
      {
        operator delete(*(v10 + 7464));
        if ((*v14 & 0x80000000) == 0)
        {
LABEL_23:
          sub_5706DC((v10 + 7416));
          v23 = *(v10 + 7392);
          if (!v23)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else if ((*v14 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      operator delete(*(v10 + 7440));
      sub_5706DC((v10 + 7416));
      v23 = *(v10 + 7392);
      if (!v23)
      {
LABEL_25:
        sub_53A868(v10 + 7232);
        sub_1A104((v10 + 7208));
        sub_5C1688(v10 + 2408);
        sub_559E70((v10 + 1320));
        if (*(v10 + 1319) < 0)
        {
          operator delete(*(v10 + 1296));
        }

        if (*(v10 + 1295) < 0)
        {
          operator delete(*(v10 + 1272));
          sub_6926D4((v10 + 1248));
          v24 = *(v10 + 1224);
          if (!v24)
          {
LABEL_29:
            v25 = *(v10 + 1200);
            if (!v25)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }
        }

        else
        {
          sub_6926D4((v10 + 1248));
          v24 = *(v10 + 1224);
          if (!v24)
          {
            goto LABEL_29;
          }
        }

        *(v10 + 1232) = v24;
        operator delete(v24);
        v25 = *(v10 + 1200);
        if (!v25)
        {
LABEL_31:
          sub_5EBF44((v10 + 1176));
          sub_5EBF44((v10 + 1152));
          sub_5EC684((v10 + 1128));
          sub_5EC684((v10 + 1104));
          sub_3EEA68(v10);
          _Unwind_Resume(a1);
        }

LABEL_30:
        *(v10 + 1208) = v25;
        operator delete(v25);
        goto LABEL_31;
      }

LABEL_24:
      *(v10 + 7400) = v23;
      operator delete(v23);
      goto LABEL_25;
    }

LABEL_14:
    *(v10 + 11840) = v22;
    operator delete(v22);
    goto LABEL_15;
  }

LABEL_6:
  operator delete(*(v10 + 12320));
  goto LABEL_7;
}

void sub_69AC08()
{
  sub_559E70((v0 + 1320));
  if ((*(v0 + 1319) & 0x80000000) == 0)
  {
    JUMPOUT(0x69AB18);
  }

  JUMPOUT(0x69AB10);
}

void sub_69AC20()
{
  if ((*(v0 + 1319) & 0x80000000) == 0)
  {
    JUMPOUT(0x69AB18);
  }

  JUMPOUT(0x69AB10);
}

_DWORD *sub_69AC34@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 154);
  if (*(result + 153) == v3)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0x7FFFFFFF;
    *(a2 + 4) = 0x7FFFFFFF7FFFFFFFLL;
  }

  else
  {
    v4 = *(v3 - 4);
    v5 = sub_4D2130(result);
    v7 = *(v5 + 8);
    v8 = *(v5 + 24);
    v6 = sub_588E0(&v7);
    if (v4 == 0x7FFFFFFF)
    {
      return sub_446F48(v6, a2);
    }

    else
    {
      return sub_446DA0(a2, v4, v6);
    }
  }

  return result;
}

uint64_t sub_69AD00(uint64_t a1)
{
  v1 = sub_4D2130(a1);
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  return sub_588E0(&v3);
}

uint64_t sub_69AD38(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 11984);
  v3 = *(a1 + 11992);
  if (v3 != v2)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3);
    v3 = *(a1 + 11984);
    do
    {
      v5 = v4 >> 1;
      v6 = v3 + 24 * (v4 >> 1);
      v7 = *(v6 + 8);
      v8 = v6 + 24;
      v4 += ~(v4 >> 1);
      if (v7 > a2)
      {
        v4 = v5;
      }

      else
      {
        v3 = v8;
      }
    }

    while (v4);
  }

  if (v3 == v2)
  {
    return 0;
  }

  else
  {
    return *(v3 - 24);
  }
}

void sub_69ADA0(uint64_t a1)
{
  if (*(a1 + 10128) == *(a1 + 10136))
  {
    if ((atomic_load_explicit(&qword_2732F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2732F50))
    {
      qword_2732F38 = 0;
      unk_2732F40 = 0;
      qword_2732F48 = 0;
      __cxa_guard_release(&qword_2732F50);
    }
  }

  else
  {

    nullsub_1();
  }
}

BOOL sub_69AE68(uint64_t a1)
{
  v1 = sub_4D1DB0(a1);
  if (v1[8] == 0x7FFFFFFF || v1[17] == 0x7FFFFFFF)
  {
    return 0;
  }

  v3 = v1;
  result = sub_4566B4(v1 + 10);
  if (result)
  {
    v5 = v3[36];
    if (v5)
    {
      if (v5 == 2)
      {
        v6 = *(v3 + 17);
        return v6 < 0xFFFFFFFF00000000 && v6 != 0;
      }

      else
      {
        if (v5 != 1)
        {
          sub_5AF20();
        }

        return *(v3 + 17) != -1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_69AF18(uint64_t a1)
{
  v1 = sub_3EB950(a1);
  if (v1[8] == 0x7FFFFFFF || v1[17] == 0x7FFFFFFF)
  {
    return 0;
  }

  v3 = v1;
  result = sub_4566B4(v1 + 10);
  if (result)
  {
    v5 = v3[36];
    if (v5)
    {
      if (v5 == 2)
      {
        v6 = *(v3 + 17);
        return v6 < 0xFFFFFFFF00000000 && v6 != 0;
      }

      else
      {
        if (v5 != 1)
        {
          sub_5AF20();
        }

        return *(v3 + 17) != -1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_69AFE0(uint64_t a1)
{
  v1 = sub_4D2130(a1);
  sub_4566AC(v1 + 8);
  return 0;
}

BOOL sub_69B01C(uint64_t a1)
{
  if (*(a1 + 10809) != 1)
  {
    return 0;
  }

  v1 = sub_3EB950(a1);
  if (v1[8] == 0x7FFFFFFF || v1[17] == 0x7FFFFFFF)
  {
    return 0;
  }

  v3 = v1;
  result = sub_4566B4(v1 + 10);
  if (result)
  {
    v5 = v3[36];
    if (v5)
    {
      if (v5 == 2)
      {
        v6 = *(v3 + 17);
        return v6 < 0xFFFFFFFF00000000 && v6 != 0;
      }

      else
      {
        if (v5 != 1)
        {
          sub_5AF20();
        }

        return *(v3 + 17) != -1;
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_69B0E0(uint64_t a1)
{
  if (*(a1 + 11553) != 1)
  {
    return 0;
  }

  v1 = sub_4D1DB0(a1);
  if (v1[8] == 0x7FFFFFFF || v1[17] == 0x7FFFFFFF)
  {
    return 0;
  }

  v3 = v1;
  result = sub_4566B4(v1 + 10);
  if (result)
  {
    v5 = v3[36];
    if (v5)
    {
      if (v5 == 2)
      {
        v6 = *(v3 + 17);
        return v6 < 0xFFFFFFFF00000000 && v6 != 0;
      }

      else
      {
        if (v5 != 1)
        {
          sub_5AF20();
        }

        return *(v3 + 17) != -1;
      }
    }

    return 0;
  }

  return result;
}

void sub_69B1E0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v10 = v9 + 1;
  if (v9 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x333333333333333)
  {
    v12 = 0x666666666666666;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 8 * ((v3 - *a1) >> 3);
  v14 = a2[1];
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a2 + 4);
  v7 = 40 * v9 + 40;
  v15 = 40 * v9 - (v3 - v8);
  memcpy((v13 - (v3 - v8)), v8, v3 - v8);
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

BOOL sub_69B330(uint64_t a1)
{
  v1 = *(a1 + 1112);
  if (*(a1 + 1104) == v1)
  {
    return 0;
  }

  v2 = *(v1 - 2232);
  return v2 != 3 && v2 != 5;
}

BOOL sub_69B360(uint64_t a1, int a2)
{
  v2 = *(a1 + 1112);
  if (*(a1 + 1104) == v2)
  {
    return 1;
  }

  v3 = *(v2 - 2232);
  return a2 == 3 && v3 == 5 || v3 == a2;
}

uint64_t sub_69B394@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_52A348(a2, *(a1 + 11880), *(a1 + 11888), 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 11888) - *(a1 + 11880)) >> 3));
  sub_530314(a2, a2[1], *(a1 + 11904), *(a1 + 11912), 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 11912) - *(a1 + 11904)) >> 3));
  return sub_530314(a2, a2[1], *(a1 + 11928), *(a1 + 11936), 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 11936) - *(a1 + 11928)) >> 3));
}

uint64_t sub_69B45C(uint64_t a1, uint64_t a2, char a3)
{
  nullsub_1();
  v17 = v5;
  v6 = sub_3CF22C(a2);
  v24 = sub_4D1DB8(a2);
  v7 = sub_4D20D0(a2);
  v8 = sub_4D20D8(a2);
  v9 = sub_3EB950(a2);
  v10 = sub_4D1DB0(a2);
  v11 = sub_4D1E30(a2);
  v12 = sub_4D1E38(a2);
  v22 = 0;
  v23 = 0;
  v21 = 0;
  if (v12 != v11)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = sub_4D27A4(a2);
  sub_4D1E70(a2, v18);
  sub_4D4738(a1, v17, v6, &v24, v7, v8, v9, v10, &v21, v13, v18);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  *(a1 + 1096) = 0;
  *(a1 + 1097) = sub_4D20E0(a2);
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0;
  sub_453918(a2, (a1 + 1224));
  *(a1 + 1312) = 0;
  *(a1 + 1296) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1248) = 0u;
  sub_559C9C(a1 + 1320);
  sub_60AEEC(a1 + 2408);
  *(a1 + 7224) = 0;
  *(a1 + 7208) = 0u;
  sub_64B998(a1 + 7232);
  *(a1 + 7568) = 0u;
  *(a1 + 7552) = 0u;
  *(a1 + 7536) = 0u;
  *(a1 + 7520) = 0u;
  *(a1 + 7504) = 0u;
  *(a1 + 7488) = 0u;
  *(a1 + 7472) = 0u;
  *(a1 + 7456) = 0u;
  *(a1 + 7440) = 0u;
  *(a1 + 7424) = 0u;
  *(a1 + 7408) = 0u;
  *(a1 + 7392) = 0u;
  sub_608080(a1 + 7584);
  sub_608080(a1 + 8440);
  sub_64B998(a1 + 9296);
  sub_64B998(a1 + 9456);
  sub_64B998(a1 + 9616);
  sub_64B998(a1 + 9776);
  sub_64B998(a1 + 9936);
  *(a1 + 10112) = 0;
  *(a1 + 10096) = 0u;
  *(a1 + 10120) = 0;
  *(a1 + 10121) = a3;
  *(a1 + 10128) = 0u;
  *(a1 + 10144) = 0u;
  *(a1 + 10160) = 0u;
  *(a1 + 10176) = 0u;
  *(a1 + 10192) = 0u;
  *(a1 + 10208) = 0u;
  *(a1 + 10224) = 0u;
  *(a1 + 10240) = 0;
  *(a1 + 10248) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10256) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10312) = 0;
  *(a1 + 10264) = 0u;
  *(a1 + 10280) = 0u;
  *(a1 + 10296) = 0u;
  *(a1 + 10336) = 0;
  *(a1 + 10320) = 0u;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  *(a1 + 10344) = -1;
  *(a1 + 10352) = 0x7FFFFFFF;
  *(a1 + 10360) = -1;
  *(a1 + 10368) = -1;
  *(a1 + 10376) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10384) = 0;
  *(a1 + 10392) = -1935635296;
  *(a1 + 10400) = 0;
  *(a1 + 10407) = 0;
  *(a1 + 10432) = 0;
  *(a1 + 10440) = 0;
  *(a1 + 10416) = 0u;
  *(a1 + 10448) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10456) = 100;
  *(a1 + 10464) = 0u;
  *(a1 + 10480) = vnegq_f64(v14);
  *(a1 + 10512) = 0;
  *(a1 + 10496) = 0u;
  *(a1 + 10520) = 1;
  *(a1 + 10528) = 0;
  *(a1 + 10632) = 0;
  *(a1 + 10536) = 0u;
  *(a1 + 10552) = 0u;
  *(a1 + 10568) = 0u;
  *(a1 + 10584) = 0u;
  *(a1 + 10600) = 0u;
  *(a1 + 10616) = 0u;
  *(a1 + 10720) = 0;
  *(a1 + 10704) = 0u;
  *(a1 + 10688) = 0u;
  *(a1 + 10672) = 0u;
  *(a1 + 10656) = 0u;
  *(a1 + 10640) = 0u;
  *(a1 + 10728) = -1;
  *(a1 + 10736) = -1;
  *(a1 + 10744) = 0u;
  *(a1 + 10768) = 0;
  *(a1 + 10760) = 0;
  *(a1 + 10776) = 0;
  *(a1 + 10780) = 0u;
  *(a1 + 10796) = 0u;
  sub_64B998(a1 + 10816);
  *(a1 + 11008) = 0;
  *(a1 + 11016) = -1;
  *(a1 + 11019) = -1;
  *(a1 + 11023) = 0;
  *(a1 + 11031) = 0u;
  *(a1 + 11047) = 0;
  *(a1 + 11056) = 0;
  *(a1 + 11064) = 0u;
  *(a1 + 11080) = 0;
  *(a1 + 11088) = -1;
  *(a1 + 11096) = 0x7FFFFFFF;
  *(a1 + 11104) = -1;
  *(a1 + 11112) = -1;
  *(a1 + 11120) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11128) = 0;
  *(a1 + 11136) = -1935635296;
  *(a1 + 11144) = 0;
  *(a1 + 11151) = 0;
  *(a1 + 11160) = 0u;
  *(a1 + 11184) = 0;
  *(a1 + 11176) = 0;
  *(a1 + 11192) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11200) = 100;
  *(a1 + 11208) = 0u;
  *(a1 + 11224) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11232) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11240) = 0u;
  *(a1 + 11256) = 0;
  *(a1 + 11264) = 1;
  *(a1 + 11272) = 0;
  *(a1 + 11280) = 0u;
  *(a1 + 11296) = 0u;
  *(a1 + 11312) = 0u;
  *(a1 + 11328) = 0u;
  *(a1 + 11344) = 0u;
  *(a1 + 11360) = 0u;
  *(a1 + 11376) = 0;
  *(a1 + 11464) = 0;
  *(a1 + 11432) = 0u;
  *(a1 + 11448) = 0u;
  *(a1 + 11400) = 0u;
  *(a1 + 11416) = 0u;
  *(a1 + 11384) = 0u;
  *(a1 + 11480) = -1;
  *(a1 + 11472) = -1;
  *(a1 + 11488) = 0u;
  *(a1 + 11512) = 0;
  *(a1 + 11504) = 0;
  *(a1 + 11520) = 0;
  *(a1 + 11524) = 0u;
  *(a1 + 11540) = 0u;
  sub_64B998(a1 + 11560);
  *(a1 + 11752) = 0;
  *(a1 + 11760) = -1;
  *(a1 + 11763) = -1;
  *(a1 + 11767) = 0;
  *(a1 + 11775) = 0u;
  *(a1 + 11791) = 0;
  *(a1 + 11800) = 0;
  *(a1 + 11808) = 0u;
  *(a1 + 11824) = 0;
  *(a1 + 11832) = 0u;
  *(a1 + 11848) = 0u;
  *(a1 + 11864) = 0u;
  *(a1 + 11880) = 0u;
  *(a1 + 11896) = 0u;
  *(a1 + 11912) = 0u;
  *(a1 + 11928) = 0u;
  *(a1 + 11944) = 0u;
  *(a1 + 11960) = 0u;
  *(a1 + 11976) = 0u;
  *(a1 + 11992) = 0u;
  *(a1 + 12008) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 12016) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 12040) = 0;
  *(a1 + 12024) = 0u;
  *(a1 + 12048) = 0x8000000080000000;
  *(a1 + 12072) = 0;
  *(a1 + 12056) = 0u;
  sub_64B998(a1 + 12080);
  *(a1 + 12256) = 0;
  *(a1 + 12240) = 0u;
  *(a1 + 12264) = 0;
  *(a1 + 12265) = 1;
  *(a1 + 12272) = 0u;
  *(a1 + 12288) = 0u;
  *(a1 + 12304) = 0u;
  *(a1 + 12320) = 0u;
  *(a1 + 12336) = 0u;
  *(a1 + 12352) = 0u;
  *(a1 + 12368) = 0u;
  *(a1 + 12384) = 0u;
  *(a1 + 12400) = 0u;
  *(a1 + 12416) = 0u;
  *(a1 + 12432) = 0u;
  *(a1 + 12448) = 0;
  *(a1 + 12456) = 1065353216;
  *(a1 + 12472) = 0u;
  *(a1 + 12488) = 0;
  *(a1 + 12464) = off_266BBB8;
  *(a1 + 12496) = 0;
  *(a1 + 12528) = 0;
  *(a1 + 12512) = 0u;
  *(a1 + 12504) = off_266BBF0;
  *(a1 + 12536) = 0;
  *(a1 + 12544) = 0u;
  *(a1 + 12560) = 0u;
  *(a1 + 12576) = 1065353216;
  *(a1 + 12584) = 0u;
  *(a1 + 12600) = 0u;
  *(a1 + 12616) = 1065353216;
  *(a1 + 12640) = 0;
  *(a1 + 12624) = 0u;
  *(a1 + 12648) = 0;
  sub_699FB0(a1);
  sub_3E428((a1 + 1048), a2 + 1048);
  if (a1 != a2)
  {
    sub_31F64((a1 + 1072), *(a2 + 1072), *(a2 + 1080), (*(a2 + 1080) - *(a2 + 1072)) >> 3);
  }

  return a1;
}

void sub_69BB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_5ECB64((v22 + v25));
  v29 = *(v22 + v23);
  if (v29)
  {
    *(v22 + 12032) = v29;
    operator delete(v29);
    v30 = *(v22 + 11984);
    if (!v30)
    {
LABEL_3:
      v31 = *(v22 + 11952);
      if (!v31)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v30 = *(v22 + 11984);
    if (!v30)
    {
      goto LABEL_3;
    }
  }

  *(v22 + 11992) = v30;
  operator delete(v30);
  v31 = *(v22 + 11952);
  if (!v31)
  {
LABEL_4:
    sub_5C23C8((v22 + 11856));
    v32 = *v26;
    if (!*v26)
    {
LABEL_6:
      sub_5EC498(v22 + 11088);
      sub_5EC498(v22 + 10344);
      sub_69A11C((v22 + 10320));
      sub_5ECD28((v22 + 10248));
      if (v27[2784] < 0)
      {
        operator delete(*(v22 + 10224));
      }

      sub_5EC548((v22 + 10200));
      sub_5EC548((v22 + 10176));
      sub_5EC548((v22 + 10152));
      sub_5ECEBC((v22 + 10128));
      sub_5ECF34(v24);
      sub_53A868(v22 + 9936);
      sub_53A868(v22 + 9776);
      sub_53A868(v22 + 9616);
      sub_53A868(v22 + 9456);
      sub_53A868(v22 + 9296);
      sub_5936E4((v22 + 8440));
      sub_5936E4((v22 + 7584));
      sub_5ED1D0((v22 + 7560));
      sub_5EC5AC((v22 + 7536));
      sub_5EC628((v22 + 7512));
      sub_1A104((v22 + 7488));
      if (v27[24] < 0)
      {
        operator delete(*(v22 + 7464));
        if ((*v27 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((*v27 & 0x80000000) == 0)
      {
LABEL_13:
        sub_5706DC((v22 + 7416));
        v33 = *(v22 + 7392);
        if (!v33)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      operator delete(*(v22 + 7440));
      sub_5706DC((v22 + 7416));
      v33 = *(v22 + 7392);
      if (!v33)
      {
LABEL_15:
        sub_53A868(v22 + 7232);
        sub_1A104((v22 + 7208));
        sub_5C1688(v22 + 2408);
        sub_559E70((v22 + 1320));
        if (*(v22 + 1319) < 0)
        {
          operator delete(*(v22 + 1296));
        }

        if (*(v22 + 1295) < 0)
        {
          operator delete(*(v22 + 1272));
          sub_6926D4((v22 + 1248));
          v34 = *a14;
          if (*a14)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_6926D4((v22 + 1248));
          v34 = *a14;
          if (*a14)
          {
LABEL_19:
            *(v22 + 1232) = v34;
            operator delete(v34);
            v35 = *(v22 + 1200);
            if (!v35)
            {
LABEL_24:
              sub_5EBF44((v22 + 1176));
              sub_5EBF44((v22 + 1152));
              sub_5EC684((v22 + 1128));
              sub_5EC684((v22 + 1104));
              sub_3EEA68(v22);
              _Unwind_Resume(a1);
            }

LABEL_23:
            *(v22 + 1208) = v35;
            operator delete(v35);
            goto LABEL_24;
          }
        }

        v35 = *(v22 + 1200);
        if (!v35)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_14:
      *(v22 + 7400) = v33;
      operator delete(v33);
      goto LABEL_15;
    }

LABEL_5:
    *(v22 + 11840) = v32;
    operator delete(v32);
    goto LABEL_6;
  }

LABEL_29:
  *(v22 + 11960) = v31;
  operator delete(v31);
  sub_5C23C8((v22 + 11856));
  v32 = *v26;
  if (!*v26)
  {
    goto LABEL_6;
  }

  goto LABEL_5;
}

uint64_t sub_69BFC4(uint64_t a1)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = -1;
  *(a1 + 128) = 0xFFFF;
  *(a1 + 136) = -1;
  *(a1 + 138) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 158) = 0;
  *(a1 + 168) = 0x7FFFFFFF;
  *(a1 + 176) = 0x7FFFFFFF;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 180) = 0x7FFFFFFF7FFFFFFFLL;
  *&v2 = 0x8000000080000000;
  *(a1 + 200) = 0x8000000080000000;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 260) = 0x7FFFFFFF;
  *(a1 + 264) = 0x8000000080000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = xmmword_2297C00;
  *(a1 + 304) = -1;
  *(a1 + 312) = -1;
  *(a1 + 314) = 0;
  *(a1 + 334) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 344) = 0x7FFFFFFF;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0x7FFFFFFF;
  *(a1 + 356) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 376) = 0x8000000080000000;
  *(a1 + 432) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 436) = 0x7FFFFFFF;
  *(a1 + 440) = 0x8000000080000000;
  *(a1 + 456) = 0;
  *(a1 + 464) = xmmword_2297C00;
  *(a1 + 480) = -1;
  *(a1 + 488) = 0x7FFFFFFF;
  *(a1 + 492) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0x8000000080000000;
  *(a1 + 536) = 0x7FFFFFFF;
  *(a1 + 544) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 552) = 0x8000000080000000;
  *(a1 + 560) = 0x7FFFFFFF;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 568) = 0u;
  *(&v2 + 1) = 0x8000000080000000;
  *(a1 + 808) = v2;
  *(a1 + 824) = v2;
  *(a1 + 1096) = 0;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 1097) = 1;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0;
  sub_559C9C(a1 + 1320);
  sub_60AEEC(a1 + 2408);
  *(a1 + 7224) = 0;
  *(a1 + 7208) = 0u;
  sub_64B998(a1 + 7232);
  *(a1 + 7568) = 0u;
  *(a1 + 7552) = 0u;
  *(a1 + 7536) = 0u;
  *(a1 + 7520) = 0u;
  *(a1 + 7504) = 0u;
  *(a1 + 7488) = 0u;
  *(a1 + 7472) = 0u;
  *(a1 + 7456) = 0u;
  *(a1 + 7440) = 0u;
  *(a1 + 7424) = 0u;
  *(a1 + 7408) = 0u;
  *(a1 + 7392) = 0u;
  sub_608080(a1 + 7584);
  sub_608080(a1 + 8440);
  sub_64B998(a1 + 9296);
  sub_64B998(a1 + 9456);
  sub_64B998(a1 + 9616);
  sub_64B998(a1 + 9776);
  sub_64B998(a1 + 9936);
  *(a1 + 10112) = 0;
  *(a1 + 10096) = 0u;
  *(a1 + 10120) = 0;
  *(a1 + 10128) = 0u;
  *(a1 + 10144) = 0u;
  *(a1 + 10160) = 0u;
  *(a1 + 10176) = 0u;
  *(a1 + 10192) = 0u;
  *(a1 + 10208) = 0u;
  *(a1 + 10224) = 0u;
  *(a1 + 10240) = 0;
  *(a1 + 10248) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10256) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10312) = 0;
  *(a1 + 10264) = 0u;
  *(a1 + 10280) = 0u;
  *(a1 + 10296) = 0u;
  *(a1 + 10336) = 0;
  *(a1 + 10320) = 0u;
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  *(a1 + 10344) = -1;
  *(a1 + 10352) = 0x7FFFFFFF;
  *(a1 + 10360) = -1;
  *(a1 + 10368) = -1;
  *(a1 + 10376) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10384) = 0;
  *(a1 + 10392) = -1935635296;
  *(a1 + 10400) = 0;
  *(a1 + 10407) = 0;
  *(a1 + 10432) = 0;
  *(a1 + 10440) = 0;
  *(a1 + 10416) = 0u;
  *(a1 + 10448) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10456) = 100;
  *(a1 + 10464) = 0u;
  *(a1 + 10480) = vnegq_f64(v3);
  *(a1 + 10512) = 0;
  *(a1 + 10496) = 0u;
  *(a1 + 10520) = 1;
  *(a1 + 10528) = 0;
  *(a1 + 10632) = 0;
  *(a1 + 10536) = 0u;
  *(a1 + 10552) = 0u;
  *(a1 + 10568) = 0u;
  *(a1 + 10584) = 0u;
  *(a1 + 10600) = 0u;
  *(a1 + 10616) = 0u;
  *(a1 + 10720) = 0;
  *(a1 + 10704) = 0u;
  *(a1 + 10688) = 0u;
  *(a1 + 10672) = 0u;
  *(a1 + 10656) = 0u;
  *(a1 + 10640) = 0u;
  *(a1 + 10728) = -1;
  *(a1 + 10736) = -1;
  *(a1 + 10744) = 0u;
  *(a1 + 10768) = 0;
  *(a1 + 10760) = 0;
  *(a1 + 10776) = 0;
  *(a1 + 10780) = 0u;
  *(a1 + 10796) = 0u;
  sub_64B998(a1 + 10816);
  *(a1 + 11008) = 0;
  *(a1 + 11016) = -1;
  *(a1 + 11019) = -1;
  *(a1 + 11023) = 0;
  *(a1 + 11031) = 0u;
  *(a1 + 11047) = 0;
  *(a1 + 11056) = 0;
  *(a1 + 11064) = 0u;
  *(a1 + 11080) = 0;
  *(a1 + 11088) = -1;
  *(a1 + 11096) = 0x7FFFFFFF;
  *(a1 + 11104) = -1;
  *(a1 + 11112) = -1;
  *(a1 + 11120) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11128) = 0;
  *(a1 + 11136) = -1935635296;
  *(a1 + 11144) = 0;
  *(a1 + 11151) = 0;
  *(a1 + 11160) = 0u;
  *(a1 + 11184) = 0;
  *(a1 + 11176) = 0;
  *(a1 + 11192) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11200) = 100;
  *(a1 + 11208) = 0u;
  *(a1 + 11224) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11232) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11240) = 0u;
  *(a1 + 11256) = 0;
  *(a1 + 11264) = 1;
  *(a1 + 11272) = 0;
  *(a1 + 11280) = 0u;
  *(a1 + 11296) = 0u;
  *(a1 + 11312) = 0u;
  *(a1 + 11328) = 0u;
  *(a1 + 11344) = 0u;
  *(a1 + 11360) = 0u;
  *(a1 + 11376) = 0;
  *(a1 + 11464) = 0;
  *(a1 + 11432) = 0u;
  *(a1 + 11448) = 0u;
  *(a1 + 11400) = 0u;
  *(a1 + 11416) = 0u;
  *(a1 + 11384) = 0u;
  *(a1 + 11480) = -1;
  *(a1 + 11472) = -1;
  *(a1 + 11488) = 0u;
  *(a1 + 11512) = 0;
  *(a1 + 11504) = 0;
  *(a1 + 11520) = 0;
  *(a1 + 11524) = 0u;
  *(a1 + 11540) = 0u;
  sub_64B998(a1 + 11560);
  *(a1 + 11752) = 0;
  *(a1 + 11760) = -1;
  *(a1 + 11763) = -1;
  *(a1 + 11767) = 0;
  *(a1 + 11775) = 0u;
  *(a1 + 11791) = 0;
  *(a1 + 11800) = 0;
  *(a1 + 11808) = 0u;
  *(a1 + 11824) = 0;
  *(a1 + 11832) = 0u;
  *(a1 + 11848) = 0u;
  *(a1 + 11864) = 0u;
  *(a1 + 11880) = 0u;
  *(a1 + 11896) = 0u;
  *(a1 + 11912) = 0u;
  *(a1 + 11928) = 0u;
  *(a1 + 11944) = 0u;
  *(a1 + 11960) = 0u;
  *(a1 + 11976) = 0u;
  *(a1 + 11992) = 0u;
  *(a1 + 12008) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 12016) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 12040) = 0;
  *(a1 + 12024) = 0u;
  *(a1 + 12048) = 0x8000000080000000;
  *(a1 + 12072) = 0;
  *(a1 + 12056) = 0u;
  sub_64B998(a1 + 12080);
  *(a1 + 12256) = 0;
  *(a1 + 12240) = 0u;
  *(a1 + 12264) = 0;
  *(a1 + 12265) = 1;
  *(a1 + 12272) = 0u;
  *(a1 + 12288) = 0u;
  *(a1 + 12304) = 0u;
  *(a1 + 12320) = 0u;
  *(a1 + 12336) = 0u;
  *(a1 + 12352) = 0u;
  *(a1 + 12368) = 0u;
  *(a1 + 12384) = 0u;
  *(a1 + 12400) = 0u;
  *(a1 + 12416) = 0u;
  *(a1 + 12432) = 0u;
  *(a1 + 12448) = 0;
  *(a1 + 12456) = 1065353216;
  *(a1 + 12472) = 0u;
  *(a1 + 12488) = 0;
  *(a1 + 12464) = off_266BBB8;
  *(a1 + 12496) = 0;
  *(a1 + 12528) = 0;
  *(a1 + 12512) = 0u;
  *(a1 + 12504) = off_266BBF0;
  *(a1 + 12536) = 0;
  *(a1 + 12544) = 0u;
  *(a1 + 12560) = 0u;
  *(a1 + 12576) = 1065353216;
  *(a1 + 12584) = 0u;
  *(a1 + 12600) = 0u;
  *(a1 + 12616) = 1065353216;
  *(a1 + 12640) = 0;
  *(a1 + 12624) = 0u;
  *(a1 + 12648) = 0;
  *(sub_3AF234(a1) + 16) = 1000000000;
  *(sub_73F1C(a1) + 16) = 1000000000;
  return a1;
}

void sub_69C67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (*v12)
  {
    operator delete(*v12);
  }

  sub_5EC6E0(v10 + 12544);
  sub_5EC754(v13);
  sub_5EC808((v10 + 12400));
  v18 = *(v10 + 12376);
  if (v18)
  {
    *(v10 + 12384) = v18;
    operator delete(v18);
    v19 = *(v10 + 12344);
    if (!v19)
    {
LABEL_5:
      if ((*(v17 + 78) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v19 = *(v10 + 12344);
    if (!v19)
    {
      goto LABEL_5;
    }
  }

  *(v10 + 12352) = v19;
  operator delete(v19);
  if ((*(v17 + 78) & 0x80000000) == 0)
  {
LABEL_7:
    sub_528FAC((v10 + 12296));
    sub_5EC9F0((v10 + 12272));
    sub_5ECA54((v10 + 12008));
    v20 = *(v10 + 11984);
    if (v20)
    {
      *(v10 + 11992) = v20;
      operator delete(v20);
      v21 = *(v10 + 11952);
      if (v21)
      {
LABEL_17:
        *(v10 + 11960) = v21;
        operator delete(v21);
        sub_5C23C8((v10 + 11856));
        v22 = *v16;
        if (!*v16)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v21 = *(v10 + 11952);
      if (v21)
      {
        goto LABEL_17;
      }
    }

    sub_5C23C8((v10 + 11856));
    v22 = *v16;
    if (!*v16)
    {
LABEL_15:
      sub_5EC498(v10 + 11088);
      sub_5EC498(v10 + 10344);
      sub_69A11C((v10 + 10320));
      sub_5ECD28((v10 + 10248));
      if (v14[2784] < 0)
      {
        operator delete(*(v10 + 10224));
      }

      sub_5EC548((v10 + 10200));
      sub_5EC548((v10 + 10176));
      sub_5EC548((v10 + 10152));
      sub_5ECEBC((v10 + 10128));
      sub_5ECF34(v11);
      sub_53A868(v10 + v15);
      sub_53A868(v10 + 9776);
      sub_53A868(v10 + 9616);
      sub_53A868(v10 + 9456);
      sub_53A868(v10 + 9296);
      sub_5936E4((v10 + 8440));
      sub_5936E4((v10 + 7584));
      sub_5ED1D0((v10 + 7560));
      sub_5EC5AC((v10 + 7536));
      sub_5EC628((v10 + 7512));
      sub_1A104((v10 + 7488));
      if (v14[24] < 0)
      {
        operator delete(*(v10 + 7464));
        if ((*v14 & 0x80000000) == 0)
        {
LABEL_23:
          sub_5706DC((v10 + 7416));
          v23 = *(v10 + 7392);
          if (!v23)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else if ((*v14 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      operator delete(*(v10 + 7440));
      sub_5706DC((v10 + 7416));
      v23 = *(v10 + 7392);
      if (!v23)
      {
LABEL_25:
        sub_53A868(v10 + 7232);
        sub_1A104((v10 + 7208));
        sub_5C1688(v10 + 2408);
        sub_559E70((v10 + 1320));
        if (*(v10 + 1319) < 0)
        {
          operator delete(*(v10 + 1296));
        }

        if (*(v10 + 1295) < 0)
        {
          operator delete(*(v10 + 1272));
          sub_6926D4((v10 + 1248));
          v24 = *(v10 + 1224);
          if (!v24)
          {
LABEL_29:
            v25 = *(v10 + 1200);
            if (!v25)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }
        }

        else
        {
          sub_6926D4((v10 + 1248));
          v24 = *(v10 + 1224);
          if (!v24)
          {
            goto LABEL_29;
          }
        }

        *(v10 + 1232) = v24;
        operator delete(v24);
        v25 = *(v10 + 1200);
        if (!v25)
        {
LABEL_31:
          sub_5EBF44((v10 + 1176));
          sub_5EBF44((v10 + 1152));
          sub_5EC684((v10 + 1128));
          sub_5EC684((v10 + 1104));
          sub_3EEA68(v10);
          _Unwind_Resume(a1);
        }

LABEL_30:
        *(v10 + 1208) = v25;
        operator delete(v25);
        goto LABEL_31;
      }

LABEL_24:
      *(v10 + 7400) = v23;
      operator delete(v23);
      goto LABEL_25;
    }

LABEL_14:
    *(v10 + 11840) = v22;
    operator delete(v22);
    goto LABEL_15;
  }

LABEL_6:
  operator delete(*(v10 + 12320));
  goto LABEL_7;
}

void sub_69CA4C()
{
  sub_559E70((v0 + 1320));
  if ((*(v0 + 1319) & 0x80000000) == 0)
  {
    JUMPOUT(0x69C95CLL);
  }

  JUMPOUT(0x69C954);
}

void sub_69CA64()
{
  if ((*(v0 + 1319) & 0x80000000) == 0)
  {
    JUMPOUT(0x69C95CLL);
  }

  JUMPOUT(0x69C954);
}

_DWORD *sub_69CA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(*(a1 + 1224) + 4 * a2);
  v5 = sub_4D2130(a1);
  v8 = *(v5 + 8);
  v9 = *(v5 + 24);
  v6 = sub_588E0(&v8);
  if (v4 == 0x7FFFFFFF)
  {
    return sub_446F48(v6, a3);
  }

  else
  {
    return sub_446DA0(a3, v4, v6);
  }
}

void sub_69CB14(uint64_t a1)
{
  if (*(a1 + 10128) == *(a1 + 10136))
  {
    if ((atomic_load_explicit(&qword_2732F70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2732F70))
    {
      qword_2732F58 = 0;
      unk_2732F60 = 0;
      qword_2732F68 = 0;
      __cxa_guard_release(&qword_2732F70);
    }
  }

  else
  {

    nullsub_1();
  }
}

BOOL sub_69CC18(void *a1)
{
  v2 = sub_4D2130(a1);
  v3 = sub_4566AC(v2 + 8);
  if (v3 == 0x7FFFFFFF)
  {
    return 0;
  }

  if (HIDWORD(v3) == 0x7FFFFFFF || v3 > SHIDWORD(v3))
  {
    return 0;
  }

  if (!sub_4D20C0(a1, 8))
  {
    v6 = a1[154] - a1[153];
    if (sub_4D1DC0(a1) != v6 >> 2)
    {
      return 0;
    }
  }

  sub_69AC34(a1, v7);
  return sub_4566B4(v7);
}

BOOL sub_69CCC0(void *a1)
{
  if (sub_4D20C0(a1, 8))
  {
    return 1;
  }

  v3 = a1[154] - a1[153];
  return sub_4D1DC0(a1) == v3 >> 2;
}

uint64_t sub_69CD18(void *a1, unint64_t a2, unint64_t a3)
{
  v6 = sub_50EA30(a1 + 138, a2);
  v8 = v6;
  if (*(v6 + 24) == a3)
  {
    return *(v6 + 112);
  }

  result = sub_4D23F8(a1, a3, v7);
  if (*(v8 + 40) == a3 && a2)
  {
    v10 = result;
    v11 = a2 - 1;
    if (*(sub_50EA30(a1 + 138, v11) + 104) == *(v8 + 40))
    {
      return v10 - *(sub_50EA30(a1 + 138, v11) + 112);
    }

    else
    {
      return v10;
    }
  }

  return result;
}

uint64_t sub_69CDF8(void *a1, unint64_t a2)
{
  if (sub_4D1DC0(a1) <= a2)
  {
    return a1[139];
  }

  v4 = a1[138];
  v5 = a1[139];
  if (v5 != v4)
  {
    v6 = 0x3795876FF3795877 * ((v5 - v4) >> 3);
    do
    {
      v7 = v6 >> 1;
      v8 = v4 + 2616 * (v6 >> 1);
      v9 = *(v8 + 40);
      v10 = v8 + 2616;
      v6 += ~(v6 >> 1);
      if (v9 > a2)
      {
        v6 = v7;
      }

      else
      {
        v4 = v10;
      }
    }

    while (v6);
    v5 = v4;
  }

  return v5 - 2616;
}

uint64_t sub_69CE94(void *a1, void *a2)
{
  if (sub_4D1F6C(a1) || sub_4D1F6C(a2))
  {
    return -1;
  }

  sub_4D0560();
  v5 = v4;
  v7 = v6;
  sub_4D0568();
  v9 = v8;
  v11 = v10;
  sub_4D0560();
  v13 = v12;
  v15 = v14;
  sub_4D0568();
  sub_4E6E5C(v5, v7, v9, v11, v13, v15, v16, v17, v29);
  v19 = v29[0];
  v18 = v29[1];
  sub_4D0568();
  v22 = v20;
  v23 = v21;
  if (!v19)
  {
    if (!v20 || v21 >= sub_4D1DC0(v20))
    {
      return -1;
    }

    goto LABEL_17;
  }

  v24 = sub_4D1DC0(v19);
  v25 = v24;
  if (v22)
  {
    v26 = sub_4D1DC0(v22);
    if (v18 < v25 && v23 < v26)
    {
      v27 = sub_4D1F50(v19, v18);
      if (v27 == sub_4D1F50(v22, v23))
      {
        return -1;
      }

LABEL_17:
      sub_4D0560();
      return v18 - v28;
    }

    if (v18 < v25 != v23 < v26)
    {
      goto LABEL_17;
    }
  }

  else if (v18 < v24)
  {
    goto LABEL_17;
  }

  return -1;
}

uint64_t sub_69D014(void *a1, void *a2)
{
  if (sub_4D1F6C(a1))
  {
    return -1;
  }

  if (sub_4D1F6C(a2))
  {
    return -1;
  }

  v5 = sub_4D1F60(a1);
  v6 = *(sub_4D1F60(a2) + 32);
  if (*(v5 + 32) != v6)
  {
    return -1;
  }

  result = -1;
  if (*(v5 + 36) == WORD2(v6) && *(v5 + 38) == BYTE6(v6))
  {
    sub_4D1E00(a1, v11);
    sub_4D1E24(a1, v10);
    sub_4D1E00(a2, v9);
    sub_4D1E24(a2, v8);
    v15[0] = v11[0];
    v15[1] = v11[1];
    v14[0] = v10[0];
    v14[1] = v10[1];
    v13[0] = v9[0];
    v13[1] = v9[1];
    v12[0] = v8[0];
    v12[1] = v8[1];
    sub_69F33C(v15, v14, v13, v12, v16);
    v7 = v17;
    sub_4D1E24(a1, v16);
    return v7 - v17;
  }

  return result;
}

BOOL sub_69D160(uint64_t a1)
{
  v1 = *(a1 + 1112);
  if (*(a1 + 1104) == v1)
  {
    return 0;
  }

  v2 = *(v1 - 2232);
  if (v2)
  {
    v3 = v2 == 5;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

BOOL sub_69D190(uint64_t a1, int a2)
{
  v2 = *(a1 + 1112);
  if (*(a1 + 1104) == v2)
  {
    return 1;
  }

  v3 = *(v2 - 2232);
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 == 5;
  }

  return v4 || v3 == a2;
}

uint64_t sub_69D1D4(uint64_t result, int a2)
{
  *(result + 136) = a2;
  *(result + 138) = BYTE2(a2);
  return result;
}

uint64_t sub_69D1E4(uint64_t result, int a2)
{
  *(result + 312) = a2;
  *(result + 314) = BYTE2(a2);
  return result;
}

uint64_t sub_69D1F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_52A348(a2, *(a1 + 11880), *(a1 + 11888), 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 11888) - *(a1 + 11880)) >> 3));
  sub_530314(a2, a2[1], *(a1 + 11904), *(a1 + 11912), 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 11912) - *(a1 + 11904)) >> 3));
  return sub_530314(a2, a2[1], *(a1 + 11928), *(a1 + 11936), 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 11936) - *(a1 + 11928)) >> 3));
}

uint64_t sub_69D2BC(uint64_t a1, uint64_t a2, char a3)
{
  nullsub_1();
  v17 = v5;
  v6 = sub_3CF22C(a2);
  v24 = sub_4D1DB8(a2);
  v7 = sub_4D20D0(a2);
  v8 = sub_4D20D8(a2);
  v9 = sub_3EB950(a2);
  v10 = sub_4D1DB0(a2);
  v11 = sub_4D1E30(a2);
  v12 = sub_4D1E38(a2);
  v22 = 0;
  v23 = 0;
  v21 = 0;
  if (v12 != v11)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = sub_4D27A4(a2);
  sub_4D1E70(a2, v18);
  sub_4D6978(a1, v17, v6, &v24, v7, v8, v9, v10, &v21, v13, v18);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  *(a1 + 1096) = 2;
  *(a1 + 1097) = sub_4D20E0(a2);
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0;
  sub_43EDEC((a1 + 1224));
  *(a1 + 1312) = 0;
  *(a1 + 1296) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1248) = 0u;
  sub_559C9C(a1 + 1320);
  sub_60AEEC(a1 + 2408);
  *(a1 + 7224) = 0;
  *(a1 + 7208) = 0u;
  sub_64B998(a1 + 7232);
  *(a1 + 7568) = 0u;
  *(a1 + 7552) = 0u;
  *(a1 + 7536) = 0u;
  *(a1 + 7520) = 0u;
  *(a1 + 7504) = 0u;
  *(a1 + 7488) = 0u;
  *(a1 + 7472) = 0u;
  *(a1 + 7456) = 0u;
  *(a1 + 7440) = 0u;
  *(a1 + 7424) = 0u;
  *(a1 + 7408) = 0u;
  *(a1 + 7392) = 0u;
  sub_608080(a1 + 7584);
  sub_608080(a1 + 8440);
  sub_64B998(a1 + 9296);
  sub_64B998(a1 + 9456);
  sub_64B998(a1 + 9616);
  sub_64B998(a1 + 9776);
  sub_64B998(a1 + 9936);
  *(a1 + 10112) = 0;
  *(a1 + 10096) = 0u;
  *(a1 + 10120) = 0;
  *(a1 + 10121) = a3;
  *(a1 + 10128) = 0u;
  *(a1 + 10144) = 0u;
  *(a1 + 10160) = 0u;
  *(a1 + 10176) = 0u;
  *(a1 + 10192) = 0u;
  *(a1 + 10208) = 0u;
  *(a1 + 10224) = 0u;
  *(a1 + 10240) = 0;
  *(a1 + 10248) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10256) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10312) = 0;
  *(a1 + 10264) = 0u;
  *(a1 + 10280) = 0u;
  *(a1 + 10296) = 0u;
  *(a1 + 10336) = 0;
  *(a1 + 10320) = 0u;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  *(a1 + 10344) = -1;
  *(a1 + 10352) = 0x7FFFFFFF;
  *(a1 + 10360) = -1;
  *(a1 + 10368) = -1;
  *(a1 + 10376) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10384) = 0;
  *(a1 + 10392) = -1935635296;
  *(a1 + 10400) = 0;
  *(a1 + 10407) = 0;
  *(a1 + 10432) = 0;
  *(a1 + 10440) = 0;
  *(a1 + 10416) = 0u;
  *(a1 + 10448) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 10456) = 100;
  *(a1 + 10464) = 0u;
  *(a1 + 10480) = vnegq_f64(v14);
  *(a1 + 10512) = 0;
  *(a1 + 10496) = 0u;
  *(a1 + 10520) = 1;
  *(a1 + 10528) = 0;
  *(a1 + 10632) = 0;
  *(a1 + 10536) = 0u;
  *(a1 + 10552) = 0u;
  *(a1 + 10568) = 0u;
  *(a1 + 10584) = 0u;
  *(a1 + 10600) = 0u;
  *(a1 + 10616) = 0u;
  *(a1 + 10720) = 0;
  *(a1 + 10704) = 0u;
  *(a1 + 10688) = 0u;
  *(a1 + 10672) = 0u;
  *(a1 + 10656) = 0u;
  *(a1 + 10640) = 0u;
  *(a1 + 10728) = -1;
  *(a1 + 10736) = -1;
  *(a1 + 10744) = 0u;
  *(a1 + 10768) = 0;
  *(a1 + 10760) = 0;
  *(a1 + 10776) = 0;
  *(a1 + 10780) = 0u;
  *(a1 + 10796) = 0u;
  sub_64B998(a1 + 10816);
  *(a1 + 11008) = 0;
  *(a1 + 11016) = -1;
  *(a1 + 11019) = -1;
  *(a1 + 11023) = 0;
  *(a1 + 11031) = 0u;
  *(a1 + 11047) = 0;
  *(a1 + 11056) = 0;
  *(a1 + 11064) = 0u;
  *(a1 + 11080) = 0;
  *(a1 + 11088) = -1;
  *(a1 + 11096) = 0x7FFFFFFF;
  *(a1 + 11104) = -1;
  *(a1 + 11112) = -1;
  *(a1 + 11120) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11128) = 0;
  *(a1 + 11136) = -1935635296;
  *(a1 + 11144) = 0;
  *(a1 + 11151) = 0;
  *(a1 + 11160) = 0u;
  *(a1 + 11184) = 0;
  *(a1 + 11176) = 0;
  *(a1 + 11192) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11200) = 100;
  *(a1 + 11208) = 0u;
  *(a1 + 11224) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11232) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 11240) = 0u;
  *(a1 + 11256) = 0;
  *(a1 + 11264) = 1;
  *(a1 + 11272) = 0;
  *(a1 + 11280) = 0u;
  *(a1 + 11296) = 0u;
  *(a1 + 11312) = 0u;
  *(a1 + 11328) = 0u;
  *(a1 + 11344) = 0u;
  *(a1 + 11360) = 0u;
  *(a1 + 11376) = 0;
  *(a1 + 11464) = 0;
  *(a1 + 11432) = 0u;
  *(a1 + 11448) = 0u;
  *(a1 + 11400) = 0u;
  *(a1 + 11416) = 0u;
  *(a1 + 11384) = 0u;
  *(a1 + 11480) = -1;
  *(a1 + 11472) = -1;
  *(a1 + 11488) = 0u;
  *(a1 + 11512) = 0;
  *(a1 + 11504) = 0;
  *(a1 + 11520) = 0;
  *(a1 + 11524) = 0u;
  *(a1 + 11540) = 0u;
  sub_64B998(a1 + 11560);
  *(a1 + 11752) = 0;
  *(a1 + 11760) = -1;
  *(a1 + 11763) = -1;
  *(a1 + 11767) = 0;
  *(a1 + 11775) = 0u;
  *(a1 + 11791) = 0;
  *(a1 + 11800) = 0;
  *(a1 + 11808) = 0u;
  *(a1 + 11824) = 0;
  *(a1 + 11832) = 0u;
  *(a1 + 11848) = 0u;
  *(a1 + 11864) = 0u;
  *(a1 + 11880) = 0u;
  *(a1 + 11896) = 0u;
  *(a1 + 11912) = 0u;
  *(a1 + 11928) = 0u;
  *(a1 + 11944) = 0u;
  *(a1 + 11960) = 0u;
  *(a1 + 11976) = 0u;
  *(a1 + 11992) = 0u;
  *(a1 + 12008) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 12016) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 12040) = 0;
  *(a1 + 12024) = 0u;
  *(a1 + 12048) = 0x8000000080000000;
  *(a1 + 12072) = 0;
  *(a1 + 12056) = 0u;
  sub_64B998(a1 + 12080);
  *(a1 + 12256) = 0;
  *(a1 + 12240) = 0u;
  *(a1 + 12264) = 0;
  *(a1 + 12265) = 1;
  *(a1 + 12272) = 0u;
  *(a1 + 12288) = 0u;
  *(a1 + 12304) = 0u;
  *(a1 + 12320) = 0u;
  *(a1 + 12336) = 0u;
  *(a1 + 12352) = 0u;
  *(a1 + 12368) = 0u;
  *(a1 + 12384) = 0u;
  *(a1 + 12400) = 0u;
  *(a1 + 12416) = 0u;
  *(a1 + 12432) = 0u;
  *(a1 + 12448) = 0;
  *(a1 + 12456) = 1065353216;
  *(a1 + 12472) = 0u;
  *(a1 + 12488) = 0;
  *(a1 + 12464) = off_266BBB8;
  *(a1 + 12496) = 0;
  *(a1 + 12528) = 0;
  *(a1 + 12512) = 0u;
  *(a1 + 12504) = off_266BBF0;
  *(a1 + 12536) = 0;
  *(a1 + 12544) = 0u;
  *(a1 + 12560) = 0u;
  *(a1 + 12576) = 1065353216;
  *(a1 + 12584) = 0u;
  *(a1 + 12600) = 0u;
  *(a1 + 12616) = 1065353216;
  *(a1 + 12640) = 0;
  *(a1 + 12624) = 0u;
  *(a1 + 12648) = 0;
  sub_699FB0(a1);
  sub_3E428((a1 + 1048), a2 + 1048);
  if (a1 != a2)
  {
    sub_31F64((a1 + 1072), *(a2 + 1072), *(a2 + 1080), (*(a2 + 1080) - *(a2 + 1072)) >> 3);
  }

  return a1;
}

void sub_69D9D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_5ECB64((v22 + v25));
  v29 = *(v22 + v23);
  if (v29)
  {
    *(v22 + 12032) = v29;
    operator delete(v29);
    v30 = *(v22 + 11984);
    if (!v30)
    {
LABEL_3:
      v31 = *(v22 + 11952);
      if (!v31)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v30 = *(v22 + 11984);
    if (!v30)
    {
      goto LABEL_3;
    }
  }

  *(v22 + 11992) = v30;
  operator delete(v30);
  v31 = *(v22 + 11952);
  if (!v31)
  {
LABEL_4:
    sub_5C23C8((v22 + 11856));
    v32 = *v26;
    if (!*v26)
    {
LABEL_6:
      sub_5EC498(v22 + 11088);
      sub_5EC498(v22 + 10344);
      sub_69A11C((v22 + 10320));
      sub_5ECD28((v22 + 10248));
      if (v27[2784] < 0)
      {
        operator delete(*(v22 + 10224));
      }

      sub_5EC548((v22 + 10200));
      sub_5EC548((v22 + 10176));
      sub_5EC548((v22 + 10152));
      sub_5ECEBC((v22 + 10128));
      sub_5ECF34(v24);
      sub_53A868(v22 + 9936);
      sub_53A868(v22 + 9776);
      sub_53A868(v22 + 9616);
      sub_53A868(v22 + 9456);
      sub_53A868(v22 + 9296);
      sub_5936E4((v22 + 8440));
      sub_5936E4((v22 + 7584));
      sub_5ED1D0((v22 + 7560));
      sub_5EC5AC((v22 + 7536));
      sub_5EC628((v22 + 7512));
      sub_1A104((v22 + 7488));
      if (v27[24] < 0)
      {
        operator delete(*(v22 + 7464));
        if ((*v27 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((*v27 & 0x80000000) == 0)
      {
LABEL_13:
        sub_5706DC((v22 + 7416));
        v33 = *(v22 + 7392);
        if (!v33)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      operator delete(*(v22 + 7440));
      sub_5706DC((v22 + 7416));
      v33 = *(v22 + 7392);
      if (!v33)
      {
LABEL_15:
        sub_53A868(v22 + 7232);
        sub_1A104((v22 + 7208));
        sub_5C1688(v22 + 2408);
        sub_559E70((v22 + 1320));
        if (*(v22 + 1319) < 0)
        {
          operator delete(*(v22 + 1296));
        }

        if (*(v22 + 1295) < 0)
        {
          operator delete(*(v22 + 1272));
          sub_6926D4((v22 + 1248));
          v34 = *a14;
          if (*a14)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_6926D4((v22 + 1248));
          v34 = *a14;
          if (*a14)
          {
LABEL_19:
            *(v22 + 1232) = v34;
            operator delete(v34);
            v35 = *(v22 + 1200);
            if (!v35)
            {
LABEL_24:
              sub_5EBF44((v22 + 1176));
              sub_5EBF44((v22 + 1152));
              sub_5EC684((v22 + 1128));
              sub_5EC684((v22 + 1104));
              sub_3EEA68(v22);
              _Unwind_Resume(a1);
            }

LABEL_23:
            *(v22 + 1208) = v35;
            operator delete(v35);
            goto LABEL_24;
          }
        }

        v35 = *(v22 + 1200);
        if (!v35)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_14:
      *(v22 + 7400) = v33;
      operator delete(v33);
      goto LABEL_15;
    }

LABEL_5:
    *(v22 + 11840) = v32;
    operator delete(v32);
    goto LABEL_6;
  }

LABEL_29:
  *(v22 + 11960) = v31;
  operator delete(v31);
  sub_5C23C8((v22 + 11856));
  v32 = *v26;
  if (!*v26)
  {
    goto LABEL_6;
  }

  goto LABEL_5;
}