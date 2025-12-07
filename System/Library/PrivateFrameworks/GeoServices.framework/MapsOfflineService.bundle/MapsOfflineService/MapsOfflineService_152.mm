void sub_959720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_395478(&a10);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
    sub_395478(va);
    _Unwind_Resume(a1);
  }

  sub_395478(va);
  _Unwind_Resume(a1);
}

void sub_9597D0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_93D480(a1, a2, 0, "station");
  v5 = (v4 - *v4);
  if (*v5 >= 0x31u && (v6 = v5[24]) != 0)
  {
    v7 = (v4 + v6 + *(v4 + v6));
    v8 = a3;
  }

  else
  {
    v7 = 0;
    v8 = a3;
  }

  sub_509164(v7, v8);
}

void sub_959860(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_503310(a1, *a2, 0, "access point");
  v6 = (v5 - *v5);
  if (*v6 >= 0x11u && (v7 = v6[8]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v9 = *v8;
    if (v9)
    {
      v10 = 8 * v9;
      v11 = (v8 + 1);
      do
      {
        if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
        {
          v12 = *v11;
          sub_2512DC(a3, &v12);
        }

        ++v11;
        v10 -= 8;
      }

      while (v10);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_959938(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_959954@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 174);
  v4 = result[78];
  if (0xEEEEEEEEEEEEEEEFLL * ((result[79] - v4) >> 3) <= v3)
  {
    sub_6FAB4();
  }

  v5 = v4 + 120 * v3;
  v6 = *(v5 + 48);
  v8 = v5 + 24;
  v7 = *(v5 + 24);
  if (v6 >= (*(v8 + 8) - v7) >> 5)
  {
    sub_6FAB4();
  }

  v9 = v7 + 32 * v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v10 = *(v9 + 8);
  if (v10 != *v9)
  {
    if (((v10 - *v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a2 + 24) = *(v9 + 24);
  return result;
}

uint64_t sub_959A2C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a2)
  {
    v5 = *(a1 + 624);
    v6 = *(a1 + 632);
    for (i = a4; v5 != v6; v5 += 30)
    {
      v8 = *v5;
      v9 = v5[3];
      v10 = sub_3A231C(a3, v5[1] | (v8 << 32), 0);
      v11 = &v10[-*v10];
      if (*v11 < 5u)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(v11 + 2);
        if (*(v11 + 2))
        {
          v12 += &v10[*&v10[v12]];
        }
      }

      v13 = (v12 + 4 * v8 + 4 + *(v12 + 4 * v8 + 4));
      v14 = (v13 - *v13);
      if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
      {
        v16 = *(v13 + v15);
      }

      else
      {
        v16 = -1;
      }

      v20 = *&v10[24 * v16 + 4 + 24 * v9 + *(v11 + 3) + *&v10[*(v11 + 3)]];
      sub_A2324(&i, &v20);
    }
  }

  else if (!*(a1 + 584))
  {
    v17 = *(a1 + 24);
    v18 = *(a1 + 32);
    if (v17 != v18)
    {
      operator new();
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return sub_2CAA68(a4);
}

void sub_959C70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_959CC0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  result = sub_93C810(a1);
  v43 = result;
  v44 = v11;
  if (a2)
  {
    v12 = *(a1 + 632) - *(a1 + 624);
    if (v12)
    {
      if (!((0xEEEEEEEEEEEEEEEFLL * (v12 >> 3)) >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    v13 = *(a1 + 624);
    v14 = *(a1 + 632);
    for (__src = a5; v13 != v14; v13 += 30)
    {
      v15 = sub_3A25A8(a4, v13[1] | (*v13 << 32), 0, "trip");
      *&v41 = *(v15 + *(v15 - *v15 + 6));
      sub_A2324(&__src, &v41);
    }

    return sub_2CAA68(a5);
  }

  if (v11 > 2)
  {
    if (v11 > 4)
    {
      if (v11 == 5)
      {
        __src = result;
        sub_95AC54(a5, &__src, v46, 1uLL);
      }

      else if (v11 == 6)
      {
        v25 = sub_3A25A8(a4, result, 0, "trip");
        __src = *(v25 + *(v25 - *v25 + 6));
        sub_95AC54(a5, &__src, v46, 1uLL);
      }

      return sub_2CAA68(a5);
    }

    if (v11 != 3)
    {
      sub_959860(a3, &v43, &__src);
      v16 = __src;
      if (__src != v46[0])
      {
        sub_95A3B4(a3, __src, &v41);
        v17 = *a5;
        if (*a5)
        {
          a5[1] = v17;
          operator delete(v17);
        }

        *a5 = v41;
        a5[2] = v42;
        v16 = __src;
      }

      if (v16)
      {
        v46[0] = v16;
        operator delete(v16);
      }

      return sub_2CAA68(a5);
    }

    v26 = sub_93D480(a3, result, 0, "station");
    v27 = (v26 - *v26);
    if (*v27 >= 0xFu)
    {
      v28 = v27[7];
      if (v28)
      {
        v29 = (v26 + v28 + *(v26 + v28));
        v30 = *v29;
        if (v30)
        {
          v31 = 8 * v30;
          v32 = v29 + 1;
          do
          {
            if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
            {
              operator new();
            }

            v32 += 2;
            v31 -= 8;
          }

          while (v31);
        }
      }
    }

LABEL_44:
    v40 = *a5;
    if (*a5)
    {
      a5[1] = v40;
      operator delete(v40);
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return sub_2CAA68(a5);
  }

  switch(v11)
  {
    case 0:
      return result;
    case 1:
      v33 = sub_502FF8(a3, result, 0, "stop");
      v34 = (v33 - *v33);
      if (*v34 >= 0xFu)
      {
        v35 = v34[7];
        if (v35)
        {
          v36 = (v33 + v35 + *(v33 + v35));
          v37 = *v36;
          if (v37)
          {
            v38 = 8 * v37;
            v39 = v36 + 1;
            do
            {
              if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
              {
                operator new();
              }

              v39 += 2;
              v38 -= 8;
            }

            while (v38);
          }
        }
      }

      goto LABEL_44;
    case 2:
      v18 = sub_93D2F4(a3, result, 0, "hall");
      v19 = (v18 - *v18);
      if (*v19 >= 0xFu)
      {
        v20 = v19[7];
        if (v20)
        {
          v21 = (v18 + v20 + *(v18 + v20));
          v22 = *v21;
          if (v22)
          {
            v23 = 8 * v22;
            v24 = v21 + 1;
            do
            {
              if (*(a3 + 3888) != 1 || sub_2D5204(*(a3 + 3872)))
              {
                operator new();
              }

              v24 += 2;
              v23 -= 8;
            }

            while (v23);
          }
        }
      }

      goto LABEL_44;
  }

  return sub_2CAA68(a5);
}

void sub_95A33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  v18 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_95A3B4(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_93D480(a1, *a2, 0, "station");
  v6 = (v5 - *v5);
  if (*v6 >= 0xFu && (v7 = v6[7]) != 0)
  {
    v8 = (v5 + v7 + *(v5 + v7));
    v9 = a3;
    v10 = a1;
  }

  else
  {
    v8 = 0;
    v9 = a3;
    v10 = a1;
  }

  sub_95ABA0(v10, v8, v9);
}

uint64_t sub_95A454(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = a1[1];
  v6 = *a1;
  if (*a1 != v5)
  {
    v8 = *a1;
    while ((*(v8 + 1128) - 2) > 2)
    {
      v8 += 1136;
      if (v8 == v5)
      {
        goto LABEL_5;
      }
    }

    v11 = 0;
    while (1)
    {
      v32 = *(v6 + 1128);
      if (v32 == 3)
      {
        v31 = sub_4D1DB8(v6 + 32);
      }

      else
      {
        if (v32 != 2)
        {
          goto LABEL_43;
        }

        v31 = sub_5039D4(v6, a2);
      }

      v11 += v31;
LABEL_43:
      v6 += 1136;
      if (v6 == v5)
      {
        v9 = *a1;
        v10 = a1[1];
        if (*a1 == v10)
        {
          return v11;
        }

LABEL_7:
        v12 = 0;
        while (2)
        {
          v13 = *(v9 + 1128);
          if (v13 != 1)
          {
            if (v13 == 3)
            {
              v12 += *(sub_3CF22C(v9 + 32) + 4);
              goto LABEL_9;
            }

            if (v13 == 2)
            {
              v14 = *(v9 + 16);
              v41 = *v9;
              LODWORD(v42[0]) = v14;
              v47 = 2;
              v15 = sub_503828(&v41);
              v16 = *(v9 + 16);
              v34 = *v9;
              LODWORD(v35[0]) = v16;
              v40 = 2;
              v17 = sub_50360C(&v34);
              if (HIDWORD(v15) == 0x7FFFFFFF || HIDWORD(v17) == 0x7FFFFFFF)
              {
                v18 = 10 * (v15 - v17);
                v19 = v40;
                if (v40 == -1)
                {
LABEL_30:
                  if (v47 != -1)
                  {
LABEL_35:
                    (off_266DE90[v47])(&v34, &v41);
                  }

LABEL_36:
                  v12 += v18;
                  goto LABEL_9;
                }
              }

              else
              {
                v18 = 10 * (HIDWORD(v15) - HIDWORD(v17));
                v19 = v40;
                if (v40 == -1)
                {
                  goto LABEL_30;
                }
              }

              (off_266DE90[v19])(v48, &v34);
              goto LABEL_30;
            }

LABEL_9:
            v9 += 1136;
            if (v9 == v10)
            {
              return v11;
            }

            continue;
          }

          break;
        }

        if (!a3)
        {
          goto LABEL_9;
        }

        v20 = *v9;
        v21 = *(v9 + 16);
        *(v42 + 12) = *(v9 + 28);
        v42[0] = v21;
        v41 = v20;
        v44 = 0;
        v45 = 0;
        v43 = 0;
        v23 = *(v9 + 48);
        v22 = *(v9 + 56);
        if (v22 != v23)
        {
          if (((v22 - v23) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v46 = *(v9 + 72);
        v47 = 1;
        v24 = sub_503828(&v41);
        v25 = *v9;
        v26 = *(v9 + 16);
        *(v35 + 12) = *(v9 + 28);
        v34 = v25;
        v35[0] = v26;
        v37 = 0;
        v38 = 0;
        v36 = 0;
        v28 = *(v9 + 48);
        v27 = *(v9 + 56);
        if (v27 != v28)
        {
          if (((v27 - v28) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v39 = *(v9 + 72);
        v40 = 1;
        v29 = sub_50360C(&v34);
        if (HIDWORD(v24) == 0x7FFFFFFF || HIDWORD(v29) == 0x7FFFFFFF)
        {
          v18 = 10 * (v24 - v29);
          v30 = v40;
          if (v40 == -1)
          {
LABEL_34:
            if (v47 != -1)
            {
              goto LABEL_35;
            }

            goto LABEL_36;
          }
        }

        else
        {
          v18 = 10 * (HIDWORD(v24) - HIDWORD(v29));
          v30 = v40;
          if (v40 == -1)
          {
            goto LABEL_34;
          }
        }

        (off_266DE90[v30])(v48, &v34);
        goto LABEL_34;
      }
    }
  }

LABEL_5:
  if ((a3 & 1) == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = *a1;
  v10 = a1[1];
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (*a1 != v10)
  {
    goto LABEL_7;
  }

  return v11;
}

void sub_95A83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_95B404(&a9);
  sub_95B404(&STACK[0x470]);
  _Unwind_Resume(a1);
}

BOOL sub_95A88C(uint64_t a1)
{
  v1 = *(a1 + 624);
  v2 = *(a1 + 632);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = *(a1 + 696);
  if (0xEEEEEEEEEEEEEEEFLL * ((v2 - v1) >> 3) <= v3)
  {
    sub_6FAB4();
  }

  return *(v1 + 120 * v3 + 24) != *(v1 + 120 * v3 + 32);
}

BOOL sub_95A8EC(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v8 = **(a4 + 3896);
  if (v8 && (v11 = sub_39F47C(v8, a1, a2, *(a4 + 3904))) != 0 && (v12 = v11[5], 0xCCCCCCCCCCCCCCCDLL * ((v11[6] - v12) >> 2) > a3) && *(v12 + 20 * a3) != 255)
  {
    v13 = *(sub_95AE74(a4, a1, a2, a3, 0) + 18);
  }

  else
  {
    v14 = sub_3A231C(a5, a1, 0);
    v15 = &v14[-*v14];
    if (*v15 < 5u)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v15 + 2);
      if (*(v15 + 2))
      {
        v16 += &v14[*&v14[v16]];
      }
    }

    v17 = (v16 + 4 * HIDWORD(a1) + 4 + *(v16 + 4 * HIDWORD(a1) + 4));
    v18 = (v17 - *v17);
    if (*v18 >= 0xDu && (v19 = v18[6]) != 0)
    {
      v20 = *(v17 + v19);
    }

    else
    {
      v20 = -1;
    }

    v13 = v14[24 * v20 + 22 + 24 * a3 + *(v15 + 3) + *&v14[*(v15 + 3)]] != 0;
  }

  return (v13 & 1) == 0;
}

uint64_t sub_95AA48(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    v2 = *(a1 + 96);
    if (!v2)
    {
LABEL_3:
      v3 = *(a1 + 72);
      if (!v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v2 = *(a1 + 96);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  v5 = *(a1 + 104);
  v6 = v2;
  if (v5 == v2)
  {
    goto LABEL_22;
  }

  do
  {
    if (*(v5 - 1) < 0)
    {
      operator delete(*(v5 - 3));
      if ((*(v5 - 33) & 0x80000000) == 0)
      {
LABEL_14:
        if (*(v5 - 65) < 0)
        {
          goto LABEL_19;
        }

        goto LABEL_15;
      }
    }

    else if ((*(v5 - 33) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(*(v5 - 7));
    if (*(v5 - 65) < 0)
    {
LABEL_19:
      operator delete(*(v5 - 11));
      v7 = *(v5 - 26);
      if (v7 == -1)
      {
        goto LABEL_11;
      }

LABEL_20:
      (off_266DE68[v7])(&v8, v5 - 17);
      goto LABEL_11;
    }

LABEL_15:
    v7 = *(v5 - 26);
    if (v7 != -1)
    {
      goto LABEL_20;
    }

LABEL_11:
    *(v5 - 26) = -1;
    v5 -= 18;
  }

  while (v5 != v2);
  v6 = *(a1 + 96);
LABEL_22:
  *(a1 + 104) = v2;
  operator delete(v6);
  v3 = *(a1 + 72);
  if (v3)
  {
LABEL_4:
    *(a1 + 80) = v3;
    operator delete(v3);
  }

LABEL_5:
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_25:
    operator delete(*(a1 + 8));
    return a1;
  }

  if (*(a1 + 31) < 0)
  {
    goto LABEL_25;
  }

  return a1;
}

void sub_95ABA0(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    v4 = *a2;
    if (v4)
    {
      v6 = 8 * v4;
      v7 = a2 + 1;
      do
      {
        if (*(a1 + 3888) != 1 || sub_2D5204(*(a1 + 3872)))
        {
          v8 = *v7;
          sub_2512DC(a3, &v8);
        }

        v7 += 2;
        v6 -= 8;
      }

      while (v6);
    }
  }
}

void sub_95AC38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_95AC54(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v11 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 3)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 8;
    if (v21 >= 0x38)
    {
      v18 = v17;
      if (v8 + v17 - &__src[v14] >= 0x20)
      {
        v22 = (v21 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 4;
        }

        while (v26);
        if (v22 == (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 8;
      *v18 = v28;
      v18 += 8;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (v19)
  {
    result = memmove(*result, __src, v19);
  }

  v20 = v8 + v19;
LABEL_27:
  v6[1] = v20;
  return result;
}

uint64_t sub_95AE74(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v5 = a5;
  v9 = sub_95B1D4(a1, a2, a3, a5);
  if (v9)
  {
    v10 = a4;
    v11 = v9[5];
    if (0xCCCCCCCCCCCCCCCDLL * ((v9[6] - v11) >> 2) > a4 && *(v11 + 20 * a4) != 255)
    {
      return v11 + 20 * v10;
    }
  }

  if (v5 != 1)
  {
    if (!v5)
    {
      __val = a3;
      v13 = HIDWORD(a2);
      exception = __cxa_allocate_exception(0x40uLL);
      v15 = a2;
      v16 = exception;
      v30.__r_.__value_.__r.__words[0] = __PAIR64__(v15, v13);
      sub_2FF494(&v30, &v31);
      sub_23E08("Could not obtain stop time update for trip ", &v31, &v32);
      sub_30F54(&v33, ", schedule index ", &v32);
      std::to_string(&v30, __val);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v30;
      }

      else
      {
        v17 = v30.__r_.__value_.__r.__words[0];
      }

      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v30.__r_.__value_.__l.__size_;
      }

      v19 = std::string::append(&v33, v17, size);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      sub_30F54(&v35, ", and stop index ", &v34);
      std::to_string(&v29, a4);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v29;
      }

      else
      {
        v21 = v29.__r_.__value_.__r.__words[0];
      }

      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v22 = v29.__r_.__value_.__l.__size_;
      }

      v23 = std::string::append(&v35, v21, v22);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v37 = v23->__r_.__value_.__r.__words[2];
      v36 = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      if (v37 >= 0)
      {
        v25 = &v36;
      }

      else
      {
        v25 = v36;
      }

      if (v37 >= 0)
      {
        v26 = HIBYTE(v37);
      }

      else
      {
        v26 = *(&v36 + 1);
      }

      v27 = sub_2D390(v16, v25, v26);
    }

    v11 = v9[5];
    v10 = a4;
    return v11 + 20 * v10;
  }

  return 0;
}

void sub_95B070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v45 - 57) < 0)
  {
    operator delete(*(v45 - 80));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((*(v45 - 81) & 0x80000000) == 0)
    {
LABEL_5:
      if ((a45 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v45 - 81) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v45 - 104));
  if ((a45 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a40);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a16);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a34);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

LABEL_16:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_17:
    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(__p);
  goto LABEL_17;
}

uint64_t *sub_95B1D4(uint64_t a1, unint64_t a2, unsigned int a3, int a4)
{
  v8 = **(a1 + 3896);
  if (!v8 || (result = sub_39F47C(v8, a2, a3, *(a1 + 3904))) == 0)
  {
    if (!a4)
    {
      v10 = HIDWORD(a2);
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = a2;
      v13 = exception;
      v21.__r_.__value_.__r.__words[0] = __PAIR64__(v12, v10);
      sub_2FF494(&v21, &v22);
      sub_23E08("Could not obtain trip update for trip ", &v22, &v23);
      sub_30F54(&v24, " and schedule index ", &v23);
      std::to_string(&v21, a3);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v21;
      }

      else
      {
        v14 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      v16 = std::string::append(&v24, v14, size);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v26 = v16->__r_.__value_.__r.__words[2];
      v25 = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      if (v26 >= 0)
      {
        v18 = &v25;
      }

      else
      {
        v18 = v25;
      }

      if (v26 >= 0)
      {
        v19 = HIBYTE(v26);
      }

      else
      {
        v19 = *(&v25 + 1);
      }

      v20 = sub_2D390(v13, v18, v19);
    }

    return 0;
  }

  return result;
}

void sub_95B324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_95B404(uint64_t a1)
{
  v2 = *(a1 + 1128);
  if (v2 != -1)
  {
    (off_266DE90[v2])(&v4, a1);
  }

  *(a1 + 1128) = -1;
  return a1;
}

void sub_95B800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (qword_27B1A88)
  {
    qword_27B1A90 = qword_27B1A88;
    operator delete(qword_27B1A88);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_95B8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = a5;
  *&result = 0x8000000080000000;
  *(a1 + 156) = 0x8000000080000000;
  *(a1 + 164) = 0;
  *(a1 + 168) = 0;
  return result;
}

uint64_t sub_95B980(uint64_t a1, char **a2)
{
  sub_2CE7AC((a1 + 32), *(a1 + 40), *a2, a2[1], (a2[1] - *a2) >> 3);
  sub_2CE7AC((a1 + 80), *(a1 + 88), *a2, a2[1], (a2[1] - *a2) >> 3);
  return a1;
}

uint64_t *sub_95B9D8(uint64_t *a1, unint64_t a2, int a3)
{
  v6 = sub_3A25A8(a1[3], a2, 0, "trip");
  v7 = *(v6 + *(v6 - *v6 + 6));
  v8 = sub_3A25A8(a1[3], a2, 0, "trip");
  v9 = (v8 - *v8);
  if (*v9 >= 9u)
  {
    v10 = v9[4];
    if (v10)
    {
      if (a3 + 1 < *(v8 + v10))
      {
        v11 = sub_3A231C(a1[3], a2, 0);
        v12 = &v11[-*v11];
        if (*v12 < 5u)
        {
          v13 = 0;
        }

        else
        {
          v13 = *(v12 + 2);
          if (*(v12 + 2))
          {
            v13 += &v11[*&v11[v13]];
          }
        }

        v14 = (a2 >> 30) & 0x3FFFFFFFCLL;
        v15 = (v13 + v14 + 4 + *(v13 + v14 + 4));
        v16 = (v15 - *v15);
        if (*v16 >= 0xDu && (v17 = v16[6]) != 0)
        {
          v18 = *(v15 + v17);
        }

        else
        {
          v18 = -1;
        }

        v19 = *&v11[24 * (v18 + a3) + 4 + *(v12 + 3) + *&v11[*(v12 + 3)]];
        v20 = sub_3A231C(a1[3], a2, 0);
        v21 = &v20[-*v20];
        if (*v21 < 5u)
        {
          v22 = 0;
        }

        else
        {
          v22 = *(v21 + 2);
          if (*(v21 + 2))
          {
            v22 += &v20[*&v20[v22]];
          }
        }

        v23 = (v22 + v14 + 4 + *(v22 + v14 + 4));
        v24 = (v23 - *v23);
        if (*v24 >= 0xDu && (v25 = v24[6]) != 0)
        {
          v26 = *(v23 + v25);
        }

        else
        {
          v26 = -1;
        }

        v27 = *&v20[24 * (v26 + a3 + 1) + 4 + *(v21 + 3) + *&v20[*(v21 + 3)]];
        v29 = a1[5];
        v28 = a1[6];
        if (v29 >= v28)
        {
          v31 = a1[4];
          v32 = v29 - v31;
          v33 = (v29 - v31) >> 3;
          v34 = v33 + 1;
          if ((v33 + 1) >> 61)
          {
            sub_1794();
          }

          v35 = v28 - v31;
          if (v35 >> 2 > v34)
          {
            v34 = v35 >> 2;
          }

          if (v35 >= 0x7FFFFFFFFFFFFFF8)
          {
            v36 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v34;
          }

          if (v36)
          {
            if (!(v36 >> 61))
            {
              operator new();
            }

            goto LABEL_48;
          }

          v37 = (v29 - v31) >> 3;
          v38 = (8 * v33);
          v39 = (8 * v33 - 8 * v37);
          *v38 = v19;
          v30 = (v38 + 1);
          memcpy(v39, v31, v32);
          a1[4] = v39;
          a1[5] = v30;
          a1[6] = 0;
          if (v31)
          {
            operator delete(v31);
          }
        }

        else
        {
          *v29 = v19;
          v30 = (v29 + 8);
        }

        a1[5] = v30;
        v40 = a1[14];
        v41 = a1[15];
        if (v40 < v41)
        {
          *v40 = v7;
          *(v40 + 1) = v19;
          v42 = (v40 + 24);
          *(v40 + 2) = v27;
LABEL_46:
          a1[14] = v42;
          return a1;
        }

        v43 = a1[13];
        v44 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v43) >> 3) + 1;
        if (v44 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v45 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v43) >> 3);
        if (2 * v45 > v44)
        {
          v44 = 2 * v45;
        }

        if (v45 >= 0x555555555555555)
        {
          v46 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v46 = v44;
        }

        if (!v46)
        {
          v47 = (8 * ((v40 - v43) >> 3));
          *v47 = v7;
          v47[1] = v19;
          v47[2] = v27;
          v42 = (v47 + 3);
          v48 = v47 - (v40 - v43);
          memcpy(v48, v43, v40 - v43);
          a1[13] = v48;
          a1[14] = v42;
          a1[15] = 0;
          if (v43)
          {
            operator delete(v43);
          }

          goto LABEL_46;
        }

        if (v46 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

LABEL_48:
        sub_1808();
      }
    }
  }

  return a1;
}

void sub_95BD68(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  if (*(a1[1] + 11688))
  {
    v50 = 0;
    __dst = 0;
    v52 = 0;
    v5 = a1[16];
    v4 = a1[17];
    if (v4 != v5)
    {
      if (((v4 - v5) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v6 = a1[10];
    for (i = a1[11]; v6 != i; ++v6)
    {
      *&v53 = *v6;
      DWORD2(v54) = 1;
      sub_95C428(a1, &v53, &__p);
      sub_95F494(&v50, __dst, __p, v49, (v49 - __p) >> 3);
      if (__p)
      {
        v49 = __p;
        operator delete(__p);
      }
    }

    v8 = a1[7];
    v9 = a1[8];
    while (v8 != v9)
    {
      *&v53 = *v8;
      DWORD2(v54) = 0;
      sub_95C428(a1, &v53, &__p);
      sub_95F494(&v50, __dst, __p, v49, (v49 - __p) >> 3);
      if (__p)
      {
        v49 = __p;
        operator delete(__p);
      }

      ++v8;
    }

    v10 = a1[13];
    for (j = a1[14]; v10 != j; v10 += 24)
    {
      v53 = *v10;
      *&v54 = *(v10 + 16);
      DWORD2(v54) = 2;
      sub_95C428(a1, &v53, &__p);
      sub_95F494(&v50, __dst, __p, v49, (v49 - __p) >> 3);
      if (__p)
      {
        v49 = __p;
        operator delete(__p);
      }
    }

    v12 = 126 - 2 * __clz((__dst - v50) >> 3);
    if (__dst == v50)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    sub_95F8B4(v50, __dst, &v53, v13, 1);
    v14 = v50;
    v15 = __dst;
    if (v50 != __dst)
    {
      v16 = v50 - 8;
      while (v16 + 16 != __dst)
      {
        v17 = *(v16 + 2);
        v16 += 8;
        if (v17 == *(v16 + 2) && v16[4] == v16[12])
        {
          v19 = v16 + 16;
          if (v16 + 16 != __dst)
          {
            do
            {
              if (*v16 != *v19 || v16[4] != v19[4])
              {
                v21 = v19[4];
                *(v16 + 2) = *v19;
                v16 += 8;
                v16[4] = v21;
              }

              v19 += 8;
            }

            while (v19 != v15);
            v15 = __dst;
          }

          if (v16 + 8 != v15)
          {
            v15 = v16 + 8;
            __dst = v16 + 8;
          }

          break;
        }
      }
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    sub_960D0C(a2, (v15 - v14) >> 3);
    v22 = v50;
    v23 = __dst;
    if (v50 != __dst)
    {
      do
      {
        v32 = *v22;
        v33 = *(a1[1] + 11688);
        if (*(v22 + 4) == 1)
        {
          v36 = v33 + 8;
          v34 = *(v33 + 8);
          v35 = *(v36 + 8);
        }

        else
        {
          v37 = v33 + 32;
          v34 = *(v33 + 32);
          v35 = *(v37 + 8);
        }

        if (0x823EE08FB823EE09 * ((v35 - v34) >> 3) <= v32)
        {
          sub_6FAB4();
        }

        sub_39A0FC(&v53, v34 + 456 * v32);
        v38 = a2[1];
        if (v38 < a2[2])
        {
          *v38 = v53;
          v24 = v54;
          *(v38 + 32) = v55;
          *(v38 + 16) = v24;
          v55 = 0;
          v54 = 0uLL;
          *(v38 + 40) = v56;
          *(v38 + 64) = 0;
          *(v38 + 72) = 0;
          *(v38 + 56) = 0;
          *(v38 + 56) = v57;
          *(v38 + 72) = v58;
          v57 = 0uLL;
          v25 = v59;
          *(v38 + 96) = v60;
          *(v38 + 80) = v25;
          v58 = 0;
          v59 = 0uLL;
          v60 = 0;
          *(v38 + 104) = v61;
          *(v38 + 120) = 0;
          *(v38 + 128) = 0;
          *(v38 + 136) = 0;
          *(v38 + 120) = v62;
          *(v38 + 136) = v63;
          v62 = 0uLL;
          v26 = v64;
          *(v38 + 160) = v65;
          *(v38 + 144) = v26;
          v63 = 0;
          v64 = 0uLL;
          v65 = 0;
          *(v38 + 168) = v66;
          *(v38 + 184) = 0;
          *(v38 + 192) = 0;
          *(v38 + 200) = 0;
          *(v38 + 184) = v67;
          *(v38 + 200) = v68;
          v67 = 0uLL;
          v27 = v69;
          *(v38 + 224) = v70;
          *(v38 + 208) = v27;
          v68 = 0;
          v69 = 0uLL;
          v70 = 0;
          *(v38 + 232) = v71;
          *(v38 + 248) = 0;
          *(v38 + 256) = 0;
          *(v38 + 264) = 0;
          *(v38 + 248) = v72;
          *(v38 + 264) = v73;
          v72 = 0uLL;
          v28 = v74;
          *(v38 + 288) = v75;
          *(v38 + 272) = v28;
          v73 = 0;
          v74 = 0uLL;
          v75 = 0;
          *(v38 + 296) = v76;
          *(v38 + 312) = 0;
          *(v38 + 320) = 0;
          *(v38 + 328) = 0;
          *(v38 + 312) = v77;
          *(v38 + 320) = v78;
          v77 = 0;
          *&v78 = 0;
          v29 = v79;
          *(v38 + 352) = v80;
          *(v38 + 336) = v29;
          *(&v78 + 1) = 0;
          v79 = 0uLL;
          v80 = 0;
          *(v38 + 360) = v81;
          *(v38 + 376) = 0;
          *(v38 + 384) = 0;
          *(v38 + 392) = 0;
          *(v38 + 376) = v82;
          *(v38 + 384) = v83;
          v82 = 0;
          v83 = 0uLL;
          v30 = v85;
          *(v38 + 400) = v84;
          *(v38 + 416) = v30;
          *(v38 + 424) = 0;
          *(v38 + 432) = 0;
          *(v38 + 440) = 0;
          *(v38 + 424) = v86;
          *(v38 + 432) = v87;
          v86 = 0;
          v87 = 0uLL;
          *(v38 + 448) = v88;
          v31 = v38 + 456;
        }

        else
        {
          v31 = sub_961080(a2, &v53);
        }

        a2[1] = v31;
        sub_399184(&v53);
        v22 += 2;
      }

      while (v22 != v23);
    }

    sub_95C85C(a1, a2);
    if (*a1 == 1)
    {
      sub_39CE1C(a2);
    }

    v39 = *a2;
    v40 = a2[1];
    v41 = v40 - *a2;
    v42 = 0x823EE08FB823EE09 * (v41 >> 3);
    if (v41 < 1)
    {
      v47 = 0;
      v43 = 0;
    }

    else
    {
      v43 = 0x823EE08FB823EE09 * (v41 >> 3);
      while (1)
      {
        v44 = operator new(456 * v43, &std::nothrow);
        if (v44)
        {
          break;
        }

        v45 = v43 >> 1;
        v46 = v43 > 1;
        v43 >>= 1;
        if (!v46)
        {
          v47 = 0;
          v43 = v45;
          goto LABEL_63;
        }
      }

      v47 = v44;
    }

LABEL_63:
    sub_961334(v39, v40, v42, v47, v43);
    if (v47)
    {
      operator delete(v47);
    }

    if (v50)
    {
      __dst = v50;
      operator delete(v50);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_95C384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  if (v16)
  {
    operator delete(v16);
  }

  sub_94FC68(v15);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_95C428(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = (a1 + 156);
  if (*(a1 + 156) == 0x7FFFFFFF)
  {
    v5 = *(a1 + 152);
    v6 = *(a2 + 6);
    if (v6 != 2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = *a2;
    v10 = *(a1 + 8);
    *&v11 = 0xFFFFFFFF00000000;
    *(&v11 + 1) = 0xFFFFFFFF00000000;
    v46 = v11;
    v45 = *(a2 + 1);
    v44 = 0;
    v43 = 0uLL;
    sub_95DCF4(v10, v45, 0, v5, v5, 1, v8, &v46, &v45, &v43);
    v7 = v43;
    v12 = *(&v43 + 1);
    v13 = v43;
    v14 = a1;
    if (v43 == *(&v43 + 1))
    {
LABEL_29:
      if (v13 == *(&v43 + 1))
      {
        goto LABEL_51;
      }

      v28 = v13 + 7;
      if (v13 + 7 == *(&v43 + 1))
      {
        v29 = v13;
LABEL_49:
        if (v29 != v12)
        {
          *(&v7 + 1) = v29;
        }

        goto LABEL_51;
      }

      v29 = v13;
      while (1)
      {
        v31 = v13[7];
        v32 = *(v13 + 32);
        v13 = v28;
        v33 = *(*(v14 + 8) + 11688);
        if (v32 == 1)
        {
          v36 = v33 + 8;
          v34 = *(v33 + 8);
          v35 = *(v36 + 8);
        }

        else
        {
          v37 = v33 + 32;
          v34 = *(v33 + 32);
          v35 = *(v37 + 8);
        }

        if (0x823EE08FB823EE09 * ((v35 - v34) >> 3) <= v31)
        {
          break;
        }

        v38 = v34 + 456 * v31;
        v39 = *(v38 + 424);
        v40 = *(v38 + 432);
        while (v39 != v40)
        {
          if (*(v39 + 96) == 1)
          {
            v41 = *(v39 + 16);
            v42 = *(v39 + 24);
            if (v41 != v42)
            {
              while (*v41 != v8)
              {
                if (++v41 == v42)
                {
                  goto LABEL_40;
                }
              }
            }

            if (v41 != v42)
            {
              v30 = *v13;
              *(v29 + 3) = *(v13 + 3);
              *v29 = v30;
              v29 += 7;
              break;
            }
          }

LABEL_40:
          v39 += 104;
        }

        v28 = v13 + 7;
        if (v13 + 7 == v12)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      v15 = *(*(a1 + 8) + 11688);
      v13 = v43;
      while (1)
      {
        v16 = *v13;
        if (*(v13 + 4) == 1)
        {
          v17 = v15[1];
          v18 = v15[2];
        }

        else
        {
          v17 = v15[4];
          v18 = v15[5];
        }

        if (0x823EE08FB823EE09 * ((v18 - v17) >> 3) <= v16)
        {
          break;
        }

        v19 = v17 + 456 * v16;
        v20 = *(v19 + 424);
        v21 = *(v19 + 432);
        while (1)
        {
          if (v20 == v21)
          {
            goto LABEL_29;
          }

          if (*(v20 + 96) == 1)
          {
            v23 = *(v20 + 16);
            v22 = *(v20 + 24);
            if (v23 != v22)
            {
              while (*v23 != v8)
              {
                if (++v23 == v22)
                {
                  goto LABEL_17;
                }
              }
            }

            if (v23 != v22)
            {
              break;
            }
          }

LABEL_17:
          v20 += 104;
        }

        v13 += 7;
        if (v13 == *(&v43 + 1))
        {
          goto LABEL_51;
        }
      }
    }

    sub_6FAB4();
  }

  if (*(a1 + 160) == 0x7FFFFFFF)
  {
    v4 = (a1 + 152);
  }

  v5 = *v4;
  v6 = *(a2 + 6);
  if (v6 == 2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v6 == 1)
  {
    v24 = *(a1 + 8);
    v25 = *a2;
    v44 = 0;
    v43 = 0uLL;
    *&v26 = 0xFFFFFFFF00000000;
    *(&v26 + 1) = 0xFFFFFFFF00000000;
    v46 = v26;
    v45 = v26;
    sub_95DCF4(v24, v25, 0, v5, v5, 0, 0xFFFFFFFF00000000, &v46, &v45, &v43);
    v7 = v43;
  }

  else
  {
    if (v6)
    {
      v27 = 0;
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      goto LABEL_54;
    }

    sub_95D75C(*(a1 + 8), *a2, 0, v5, v5, &v43);
    v7 = v43;
  }

LABEL_51:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v27 = v7;
  if (*(&v7 + 1) != v7)
  {
    if (!((0x6DB6DB6DB6DB6DB7 * ((*(&v7 + 1) - v7) >> 2)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

LABEL_54:
  if (v27)
  {
    operator delete(v27);
  }
}

void sub_95C810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_95C85C(uint64_t *a1, uint64_t **a2)
{
  v4 = a1[4];
  v5 = a1[5];
  *v88 = 0u;
  *v89 = 0u;
  v90 = 1065353216;
  if (v4 == v5)
  {
    *v85 = 0u;
    *v86 = 0u;
    v87 = 1065353216;
    *v82 = 0u;
    *v83 = 0u;
    v84 = 1065353216;
  }

  else
  {
    do
    {
      sub_944524(v88, v4, v4);
      ++v4;
    }

    while (v4 != v5);
    v6 = v89[0];
    *v85 = 0u;
    *v86 = 0u;
    v87 = 1065353216;
    *v82 = 0u;
    *v83 = 0u;
    v84 = 1065353216;
    if (v89[0])
    {
      do
      {
        v7 = sub_502FF8(a1[2], v6[2], 0, "stop");
        v8 = *(v7 + *(v7 - *v7 + 10));
        v93 = v8;
        if (v8)
        {
          v9 = v8 > 0xFFFFFFFEFFFFFFFFLL;
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          sub_963BCC(v85, &v93, &v93);
          v10 = sub_93D2F4(a1[2], v93, 0, "hall");
          v103[0] = *(v10 + *(v10 - *v10 + 10));
          sub_963F44(v82, v103, v103);
        }

        v6 = *v6;
      }

      while (v6);
    }
  }

  v11 = *a2;
  v78 = a2[1];
  if (*a2 != v78)
  {
    do
    {
      *v79 = 0u;
      *v80 = 0u;
      v81 = 1065353216;
      v13 = v11[53];
      v12 = v11[54];
      if (v13 == v12)
      {
        goto LABEL_45;
      }

      do
      {
        LOBYTE(v93) = 0;
        BYTE8(v100) = 0;
        if (*(v13 + 96) == 1)
        {
          v94 = 0;
          *&v95 = 0;
          v93 = 0;
          v15 = *(v13 + 16);
          v14 = *(v13 + 24);
          if (v14 != v15)
          {
            if (((v14 - v15) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          WORD4(v95) = *(v13 + 40);
          BYTE10(v95) = *(v13 + 42);
          v97 = 0;
          *&v98 = 0;
          v96 = 0;
          v17 = *(v13 + 48);
          v16 = *(v13 + 56);
          if (v16 != v17)
          {
            if (((v16 - v17) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v99 = 0;
          *&v100 = 0;
          *(&v98 + 1) = 0;
          v19 = *(v13 + 72);
          v18 = *(v13 + 80);
          if (v18 != v19)
          {
            if (((v18 - v19) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          BYTE8(v100) = 1;
        }

        if (BYTE8(v100) == 1)
        {
          if (*(&v98 + 1))
          {
            v99 = *(&v98 + 1);
            operator delete(*(&v98 + 1));
          }

          if (v96)
          {
            v97 = v96;
            operator delete(v96);
          }

          if (v93)
          {
            v94 = v93;
            operator delete(v93);
          }
        }

        v13 += 104;
      }

      while (v13 != v12);
      v20 = v11[53];
      v12 = v11[54];
      if (v20 == v12)
      {
LABEL_45:
        v20 = v12;
      }

      else
      {
        v21 = (v20 + 200);
        while (*(v20 + 96) != 1 || *(v20 + 16) == *(v20 + 24))
        {
          v20 += 104;
          v21 += 104;
          if (v20 == v12)
          {
            goto LABEL_45;
          }
        }

        if (v20 != v12 && v20 + 104 != v12)
        {
          do
          {
            v58 = v21 - 80;
            if (*v21 != 1 || *(v21 - 10) == *(v21 - 9))
            {
              v60 = *(v21 - 12);
              *(v20 + 8) = *(v21 - 22);
              *v20 = v60;
              if (*(v20 + 96) == *v21)
              {
                if (*(v20 + 96))
                {
                  v61 = *(v20 + 16);
                  if (v61)
                  {
                    *(v20 + 24) = v61;
                    operator delete(v61);
                    *(v20 + 16) = 0;
                    *(v20 + 24) = 0;
                    *(v20 + 32) = 0;
                  }

                  *(v20 + 16) = *(v21 - 5);
                  *(v20 + 32) = *(v21 - 8);
                  *v58 = 0;
                  *(v21 - 9) = 0;
                  *(v21 - 8) = 0;
                  v62 = *(v21 - 28);
                  v63 = *(v20 + 48);
                  *(v20 + 42) = *(v21 - 54);
                  *(v20 + 40) = v62;
                  if (v63)
                  {
                    *(v20 + 56) = v63;
                    operator delete(v63);
                    *(v20 + 48) = 0;
                    *(v20 + 56) = 0;
                    *(v20 + 64) = 0;
                  }

                  v64 = v21 - 48;
                  *(v20 + 48) = *(v21 - 3);
                  *(v20 + 64) = *(v21 - 4);
                  *v64 = 0;
                  v64[1] = 0;
                  v64[2] = 0;
                  v65 = *(v20 + 72);
                  if (v65)
                  {
                    *(v20 + 80) = v65;
                    operator delete(v65);
                    *(v20 + 72) = 0;
                    *(v20 + 80) = 0;
                    *(v20 + 88) = 0;
                  }

                  *(v20 + 72) = *(v21 - 24);
                  *(v20 + 88) = *(v21 - 1);
                  *(v21 - 3) = 0;
                  *(v21 - 2) = 0;
                  *(v21 - 1) = 0;
                }
              }

              else if (*(v20 + 96))
              {
                v66 = *(v20 + 72);
                if (v66)
                {
                  *(v20 + 80) = v66;
                  operator delete(v66);
                }

                v67 = *(v20 + 48);
                if (v67)
                {
                  *(v20 + 56) = v67;
                  operator delete(v67);
                }

                v68 = *(v20 + 16);
                if (v68)
                {
                  *(v20 + 24) = v68;
                  operator delete(v68);
                }

                *(v20 + 96) = 0;
              }

              else
              {
                *(v20 + 16) = 0;
                *(v20 + 24) = 0;
                *(v20 + 32) = 0;
                *(v20 + 16) = *(v21 - 5);
                *(v20 + 32) = *(v21 - 8);
                *v58 = 0;
                *(v21 - 9) = 0;
                *(v21 - 8) = 0;
                v56 = *(v21 - 28);
                *(v20 + 42) = *(v21 - 54);
                *(v20 + 40) = v56;
                *(v20 + 56) = 0;
                *(v20 + 64) = 0;
                *(v20 + 48) = 0;
                *(v20 + 48) = *(v21 - 3);
                *(v20 + 64) = *(v21 - 4);
                *(v21 - 6) = 0;
                *(v21 - 5) = 0;
                *(v21 - 4) = 0;
                *(v20 + 72) = 0;
                *(v20 + 80) = 0;
                *(v20 + 88) = 0;
                *(v20 + 72) = *(v21 - 24);
                *(v20 + 88) = *(v21 - 1);
                *(v21 - 3) = 0;
                *(v21 - 2) = 0;
                *(v21 - 1) = 0;
                *(v20 + 96) = 1;
              }

              v20 += 104;
            }

            v57 = v21 + 8;
            v21 += 104;
          }

          while (v57 != v12);
          v12 = v11[54];
        }
      }

      sub_96463C(v11 + 53, v20, v12);
      v23 = v80[0];
      if (v80[0])
      {
        do
        {
          v24 = v23[2];
          v25 = v23[3];
          v26 = v23[4];
          if (v26 != v25)
          {
            if (((v26 - v25) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          *(v104 + 7) = 0;
          v91 = 0;
          v92 = 0;
          v103[0] = 0;
          v103[1] = 0;
          v104[0] = 0;
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v93 = v24;
          LODWORD(v94) = 6;
          v96 = 0;
          v95 = 0uLL;
          LOWORD(v97) = 0;
          BYTE2(v97) = 0;
          v98 = 0uLL;
          v99 = 0;
          v101 = 0;
          v100 = 0uLL;
          v102 = 1;
          v27 = v11[54];
          v28 = v11[55];
          if (v27 >= v28)
          {
            v32 = v11;
            v33 = v11[53];
            v34 = 0x4EC4EC4EC4EC4EC5 * ((v27 - v33) >> 3);
            v35 = v34 + 1;
            if ((v34 + 1) > 0x276276276276276)
            {
              sub_1794();
            }

            v36 = 0x4EC4EC4EC4EC4EC5 * ((v28 - v33) >> 3);
            if (2 * v36 > v35)
            {
              v35 = 2 * v36;
            }

            if (v36 >= 0x13B13B13B13B13BLL)
            {
              v37 = 0x276276276276276;
            }

            else
            {
              v37 = v35;
            }

            if (v37)
            {
              if (v37 <= 0x276276276276276)
              {
                operator new();
              }

              sub_1808();
            }

            v38 = 104 * v34;
            *v38 = v93;
            *(v38 + 8) = v94;
            *(v38 + 24) = 0;
            *(v38 + 32) = 0;
            *(v38 + 16) = 0;
            v96 = 0;
            v95 = 0uLL;
            *(v38 + 40) = v97;
            *(v38 + 42) = BYTE2(v97);
            *(v38 + 48) = 0;
            *(v38 + 56) = 0;
            *(v38 + 64) = 0;
            *(v38 + 72) = 0;
            *(v38 + 80) = 0;
            *(v38 + 88) = 0;
            v39 = v32[53];
            v40 = v32[54];
            v41 = v40 - v39;
            v98 = 0uLL;
            v99 = 0;
            v100 = 0uLL;
            v101 = 0;
            *(v38 + 96) = 1;
            if (v40 != v39)
            {
              v42 = 0;
              v43 = -8 * ((v40 - v39) >> 3) + 104 * v34;
              do
              {
                v44 = v43 + v42;
                v45 = v39 + v42;
                v46 = *(v39 + v42);
                *(v44 + 8) = *(v39 + v42 + 8);
                *v44 = v46;
                *(v43 + v42 + 16) = 0;
                *(v44 + 96) = 0;
                if (*(v39 + v42 + 96) == 1)
                {
                  *(v43 + v42 + 16) = 0;
                  *(v43 + v42 + 24) = 0;
                  *(v43 + v42 + 32) = 0;
                  *(v44 + 16) = *(v45 + 16);
                  *(v44 + 32) = *(v45 + 32);
                  *(v45 + 16) = 0;
                  *(v45 + 24) = 0;
                  *(v45 + 32) = 0;
                  v47 = *(v45 + 40);
                  *(v44 + 42) = *(v45 + 42);
                  *(v44 + 40) = v47;
                  *(v44 + 56) = 0;
                  *(v44 + 64) = 0;
                  *(v44 + 48) = 0;
                  *(v44 + 48) = *(v45 + 48);
                  *(v44 + 64) = *(v45 + 64);
                  *(v45 + 48) = 0;
                  *(v45 + 56) = 0;
                  *(v45 + 64) = 0;
                  *(v44 + 72) = 0;
                  *(v44 + 80) = 0;
                  *(v44 + 88) = 0;
                  *(v44 + 72) = *(v45 + 72);
                  *(v44 + 88) = *(v45 + 88);
                  *(v45 + 72) = 0;
                  *(v45 + 80) = 0;
                  *(v45 + 88) = 0;
                  *(v44 + 96) = 1;
                }

                v42 += 104;
              }

              while (v45 + 104 != v40);
              do
              {
                if (*(v39 + 96) == 1)
                {
                  v48 = *(v39 + 72);
                  if (v48)
                  {
                    *(v39 + 80) = v48;
                    operator delete(v48);
                  }

                  v49 = *(v39 + 48);
                  if (v49)
                  {
                    *(v39 + 56) = v49;
                    operator delete(v49);
                  }

                  v50 = *(v39 + 16);
                  if (v50)
                  {
                    *(v39 + 24) = v50;
                    operator delete(v50);
                  }
                }

                v39 += 104;
              }

              while (v39 != v40);
            }

            v11 = v32;
            v51 = v32[53];
            v31 = v38 + 104;
            v32[53] = v38 - v41;
            v32[54] = v38 + 104;
            v32[55] = 0;
            if (v51)
            {
              operator delete(v51);
            }
          }

          else
          {
            v29 = v93;
            *(v27 + 8) = v94;
            *v27 = v29;
            *(v27 + 16) = 0;
            *(v27 + 96) = 0;
            if (v102 == 1)
            {
              *(v27 + 16) = v95;
              *(v27 + 32) = v96;
              v95 = 0uLL;
              v96 = 0;
              v30 = BYTE2(v97);
              *(v27 + 40) = v97;
              *(v27 + 42) = v30;
              *(v27 + 48) = v98;
              *(v27 + 64) = v99;
              v98 = 0uLL;
              *(v27 + 72) = v100;
              *(v27 + 88) = v101;
              v99 = 0;
              v100 = 0uLL;
              v101 = 0;
              *(v27 + 96) = 1;
            }

            v31 = v27 + 104;
          }

          v11[54] = v31;
          if (v102 == 1)
          {
            if (v100)
            {
              *(&v100 + 1) = v100;
              operator delete(v100);
            }

            if (v98)
            {
              *(&v98 + 1) = v98;
              operator delete(v98);
            }

            if (v95)
            {
              operator delete(v95);
            }
          }

          v23 = *v23;
        }

        while (v23);
        v52 = v80[0];
        if (v80[0])
        {
          do
          {
            v54 = *v52;
            v55 = v52[3];
            if (v55)
            {
              v52[4] = v55;
              operator delete(v55);
            }

            operator delete(v52);
            v52 = v54;
          }

          while (v54);
        }
      }

      v53 = v79[0];
      v79[0] = 0;
      if (v53)
      {
        operator delete(v53);
      }

      v11 += 57;
    }

    while (v11 != v78);
  }

  v69 = v83[0];
  if (v83[0])
  {
    do
    {
      v70 = *v69;
      operator delete(v69);
      v69 = v70;
    }

    while (v70);
  }

  v71 = v82[0];
  v82[0] = 0;
  if (v71)
  {
    operator delete(v71);
  }

  v72 = v86[0];
  if (v86[0])
  {
    do
    {
      v73 = *v72;
      operator delete(v72);
      v72 = v73;
    }

    while (v73);
  }

  v74 = v85[0];
  v85[0] = 0;
  if (v74)
  {
    operator delete(v74);
  }

  v75 = v89[0];
  if (v89[0])
  {
    do
    {
      v76 = *v75;
      operator delete(v75);
      v75 = v76;
    }

    while (v76);
  }

  v77 = v88[0];
  v88[0] = 0;
  if (v77)
  {
    operator delete(v77);
  }
}

void sub_95D61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  sub_39AFC(&a11);
  sub_11BD8(&a17);
  sub_11BD8(&a23);
  sub_11BD8(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_95D748(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 161) = *(a2 + 5);
  *(result + 156) = v2;
  return result;
}

void sub_95D75C(int *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if (a2 <= 0xFFFFFFFEFFFFFFFFLL && a2)
  {
    v7 = a3;
    sub_95D844(result, a2, a3, a4, a5, a6);
    v12 = sub_92FC60((result + 1948), a2, 0, "line");
    v13 = *(v12 + *(v12 - *v12 + 6));
    if (v13 <= 0xFFFFFFFEFFFFFFFFLL && v13 != 0)
    {
      sub_95DA9C(result, v13, v7, a4, a5, a6);
    }
  }
}

void sub_95D828(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_95D844(uint64_t a1, uint64_t a2, int a3, int a4, int a5, void *a6)
{
  v33 = a2;
  v10 = sub_3A8760((*(a1 + 11688) + 144), &v33);
  v11 = &unk_22A4AB8;
  if (v10)
  {
    v11 = (v10 + 3);
  }

  v12 = *v11;
  v13 = v11[1];
  if (*v11 != v13)
  {
    v32 = a3;
    v30 = a4;
    v31 = a6;
    do
    {
      v15 = v12[2];
      if (v15 <= a5)
      {
        v16 = v12[3];
        if (v16 >= a4)
        {
          v17 = *(v12 + 4);
          if (!a3 || (v12[1] & 1) != 0)
          {
            v18 = *v12;
            v19 = v16 == 0x7FFFFFFF || v15 == 0x7FFFFFFF;
            if (!v19 && v18 != -1)
            {
              v21 = a6[1];
              v22 = a6[2];
              if (v21 < v22)
              {
                *v21 = v18;
                *(v21 + 4) = v17;
                *(v21 + 8) = v15;
                *(v21 + 12) = v16;
                *(v21 + 16) = 0;
                *(v21 + 18) = 1;
                *(v21 + 19) = 0;
                *(v21 + 22) = 0;
                v14 = v21 + 28;
                *(v21 + 26) = 1;
              }

              else
              {
                v23 = *a6;
                v24 = 0x6DB6DB6DB6DB6DB7 * ((v21 - *a6) >> 2);
                v25 = v24 + 1;
                if ((v24 + 1) > 0x924924924924924)
                {
                  sub_1794();
                }

                v26 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v23) >> 2);
                if (2 * v26 > v25)
                {
                  v25 = 2 * v26;
                }

                if (v26 >= 0x492492492492492)
                {
                  v27 = 0x924924924924924;
                }

                else
                {
                  v27 = v25;
                }

                if (v27)
                {
                  if (v27 <= 0x924924924924924)
                  {
                    operator new();
                  }

                  sub_1808();
                }

                a6 = v31;
                v28 = 28 * v24;
                *v28 = v18;
                *(v28 + 4) = v17;
                *(v28 + 8) = v15;
                *(v28 + 12) = v16;
                *(v28 + 16) = 0;
                *(v28 + 18) = 1;
                *(v28 + 19) = 0;
                *(v28 + 22) = 0;
                *(v28 + 26) = 1;
                v14 = 28 * v24 + 28;
                v29 = (28 * v24 - (v21 - v23));
                memcpy(v29, v23, v21 - v23);
                *v31 = v29;
                v31[1] = v14;
                v31[2] = 0;
                if (v23)
                {
                  operator delete(v23);
                }

                a4 = v30;
              }

              a6[1] = v14;
              a3 = v32;
            }
          }
        }
      }

      v12 += 4;
    }

    while (v12 != v13);
  }
}

void sub_95DA9C(uint64_t a1, uint64_t a2, int a3, int a4, int a5, void *a6)
{
  v33 = a2;
  v10 = sub_3A8760((*(a1 + 11688) + 304), &v33);
  v11 = &unk_22A4AD0;
  if (v10)
  {
    v11 = (v10 + 3);
  }

  v12 = *v11;
  v13 = v11[1];
  if (*v11 != v13)
  {
    v32 = a3;
    v30 = a4;
    v31 = a6;
    do
    {
      v15 = v12[2];
      if (v15 <= a5)
      {
        v16 = v12[3];
        if (v16 >= a4)
        {
          v17 = *(v12 + 4);
          if (!a3 || (v12[1] & 1) != 0)
          {
            v18 = *v12;
            v19 = v16 == 0x7FFFFFFF || v15 == 0x7FFFFFFF;
            if (!v19 && v18 != -1)
            {
              v21 = a6[1];
              v22 = a6[2];
              if (v21 < v22)
              {
                *v21 = v18;
                *(v21 + 4) = v17;
                *(v21 + 8) = v15;
                *(v21 + 12) = v16;
                *(v21 + 16) = 0;
                *(v21 + 20) = 0;
                *(v21 + 22) = 1;
                v14 = v21 + 28;
                *(v21 + 26) = 1;
              }

              else
              {
                v23 = *a6;
                v24 = 0x6DB6DB6DB6DB6DB7 * ((v21 - *a6) >> 2);
                v25 = v24 + 1;
                if ((v24 + 1) > 0x924924924924924)
                {
                  sub_1794();
                }

                v26 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v23) >> 2);
                if (2 * v26 > v25)
                {
                  v25 = 2 * v26;
                }

                if (v26 >= 0x492492492492492)
                {
                  v27 = 0x924924924924924;
                }

                else
                {
                  v27 = v25;
                }

                if (v27)
                {
                  if (v27 <= 0x924924924924924)
                  {
                    operator new();
                  }

                  sub_1808();
                }

                a6 = v31;
                v28 = 28 * v24;
                *v28 = v18;
                *(v28 + 4) = v17;
                *(v28 + 8) = v15;
                *(v28 + 12) = v16;
                *(v28 + 16) = 0;
                *(v28 + 20) = 0;
                *(v28 + 22) = 1;
                *(v28 + 26) = 1;
                v14 = 28 * v24 + 28;
                v29 = (28 * v24 - (v21 - v23));
                memcpy(v29, v23, v21 - v23);
                *v31 = v29;
                v31[1] = v14;
                v31[2] = 0;
                if (v23)
                {
                  operator delete(v23);
                }

                a4 = v30;
              }

              a6[1] = v14;
              a3 = v32;
            }
          }
        }
      }

      v12 += 4;
    }

    while (v12 != v13);
  }
}

void sub_95DCF4(int *result, unint64_t a2, uint64_t a3, int a4, int a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a2 <= 0xFFFFFFFEFFFFFFFFLL && a2 != 0)
  {
    v28 = a2;
    v27 = a7;
    v26 = a6;
    v25[0] = &v28;
    v25[1] = &v26;
    v25[2] = &v27;
    v25[3] = a8;
    v25[4] = a9;
    v25[5] = result;
    sub_95DFF8(result, a2, a3, a4, a5, v25, a10);
    v18 = sub_502FF8((result + 974), a2, 0, "stop");
    v19 = *(v18 + *(v18 - *v18 + 10));
    sub_95DE70(result, v19, a3, a4, a5, a6, a7, a8, a9, a10);
    if (v19 > 0xFFFFFFFEFFFFFFFFLL || v19 == 0)
    {
      v21 = sub_502FF8((result + 974), a2, 0, "stop");
      v22 = *(v21 + *(v21 - *v21 + 18));
      if (v22 <= 0xFFFFFFFEFFFFFFFFLL && v22 != 0)
      {
        sub_95F23C(result, v22, a3, a4, a5, a10);
      }
    }
  }
}

void sub_95DE70(int *result, unint64_t a2, uint64_t a3, int a4, int a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a2 <= 0xFFFFFFFEFFFFFFFFLL && a2 != 0)
  {
    v14 = a3;
    v32 = a7;
    v33 = a2;
    v31 = a6;
    v25 = &v33;
    v26 = &v31;
    v27 = &v32;
    v28 = a8;
    v29 = a9;
    v30 = result;
    sub_95E60C(result, a2, a3, a4, a5, &v25, a10);
    v19 = sub_93D2F4((result + 974), a2, 0, "hall");
    v20 = *(v19 + *(v19 - *v19 + 10));
    if (v20 <= 0xFFFFFFFEFFFFFFFFLL && v20 != 0)
    {
      v32 = a7;
      v33 = v20;
      v31 = a6;
      v25 = &v33;
      v26 = &v31;
      v27 = &v32;
      v28 = a8;
      v29 = a9;
      v30 = result;
      sub_95EC20(result, v20, v14, a4, a5, &v25, a10);
      v22 = sub_93D480((result + 974), v20, 0, "station");
      v23 = *(v22 + *(v22 - *v22 + 18));
      if (v23 <= 0xFFFFFFFEFFFFFFFFLL && v23 != 0)
      {
        sub_95F23C(result, v23, v14, a4, a5, a10);
      }
    }
  }
}

void sub_95DFF8(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  *v31 = a2;
  v12 = sub_3A8760((*(a1 + 11688) + 264), v31);
  v13 = &unk_22A4AE8;
  if (v12)
  {
    v13 = (v12 + 3);
  }

  v15 = *v13;
  v14 = v13[1];
  if (*v13 != v14)
  {
    v30 = a3;
    do
    {
      v18 = v15[2];
      if (v18 <= a5)
      {
        v19 = v15[3];
        if (v19 >= a4 && (!a3 || *(v15 + 4) == 1))
        {
          *&v31[20] = 0;
          v20 = *v15;
          v31[4] = *(v15 + 4);
          *v31 = v20;
          *&v31[16] = 0;
          v31[21] = 1;
          *&v31[8] = v18;
          *&v31[12] = v19;
          sub_95E288(*(a6 + 40), **a6, **(a6 + 8), **(a6 + 16), *(a6 + 24), *(a6 + 32), v31);
          if (*v31 != -1 && *&v31[8] != 0x7FFFFFFF && *&v31[12] != 0x7FFFFFFF && ((v31[23] & 1) != 0 || (v31[24] & 1) != 0 || (v31[25] & 1) != 0 || (v31[26] & 1) != 0 || v31[27] == 1))
          {
            v21 = *(a7 + 8);
            v22 = *(a7 + 16);
            if (v21 < v22)
            {
              v16 = *v31;
              *(v21 + 12) = *&v31[12];
              *v21 = v16;
              v17 = v21 + 28;
            }

            else
            {
              v23 = *a7;
              v24 = 0x6DB6DB6DB6DB6DB7 * ((v21 - *a7) >> 2);
              v25 = v24 + 1;
              if ((v24 + 1) > 0x924924924924924)
              {
                sub_1794();
              }

              v26 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v23) >> 2);
              if (2 * v26 > v25)
              {
                v25 = 2 * v26;
              }

              if (v26 >= 0x492492492492492)
              {
                v27 = 0x924924924924924;
              }

              else
              {
                v27 = v25;
              }

              if (v27)
              {
                if (v27 <= 0x924924924924924)
                {
                  operator new();
                }

                sub_1808();
              }

              v28 = (4 * ((v21 - *a7) >> 2));
              *v28 = *v31;
              *(v28 + 12) = *&v31[12];
              v17 = 28 * v24 + 28;
              v29 = 28 * v24 - (v21 - v23);
              memcpy(v28 - (v21 - v23), v23, v21 - v23);
              *a7 = v29;
              *(a7 + 8) = v17;
              *(a7 + 16) = 0;
              if (v23)
              {
                operator delete(v23);
              }

              a3 = v30;
            }

            *(a7 + 8) = v17;
          }
        }
      }

      v15 += 4;
    }

    while (v15 != v14);
  }
}

uint64_t sub_95E288(uint64_t result, uint64_t a2, int a3, unint64_t a4, int *a5, int *a6, unsigned int *a7)
{
  v7 = *(result + 11688);
  v8 = *a7;
  if (*(a7 + 4) == 1)
  {
    v11 = v7 + 8;
    v9 = *(v7 + 8);
    v10 = *(v11 + 8);
  }

  else
  {
    v12 = v7 + 32;
    v9 = *(v7 + 32);
    v10 = *(v12 + 8);
  }

  if (0x823EE08FB823EE09 * ((v10 - v9) >> 3) <= v8)
  {
    sub_6FAB4();
  }

  v13 = v9 + 456 * v8;
  v14 = *(v13 + 424);
  v15 = *(v13 + 432);
  if (v14 != v15)
  {
    if (a4)
    {
      v16 = HIDWORD(a4) == 0xFFFFFFFF;
    }

    else
    {
      v16 = 1;
    }

    v17 = !v16;
    v18 = *a5;
    v19 = *a6;
    while (1)
    {
      if (*(v14 + 8) != 3 || *v14 != a2)
      {
        goto LABEL_15;
      }

      if (*(v14 + 96) == 1)
      {
        break;
      }

      v20 = 0;
      *(a7 + 23) = 257;
LABEL_14:
      *(a7 + 25) |= v20;
LABEL_15:
      v14 += 104;
      if (v14 == v15)
      {
        return result;
      }
    }

    v21 = *(v14 + 24);
    v22 = *(v14 + 16);
    if (v22 != v21 && a3 != 0)
    {
      if (!v17)
      {
        goto LABEL_15;
      }

      while (1)
      {
        result = *v22;
        if (result == a4)
        {
          result = v22[1];
          if (result == HIDWORD(a4))
          {
            break;
          }
        }

        v22 += 2;
        if (v22 == v21)
        {
          goto LABEL_15;
        }
      }

      if (v22 == v21)
      {
        goto LABEL_15;
      }
    }

    if (*(v14 + 40) == 1)
    {
      v25 = *(v14 + 72);
      v24 = *(v14 + 80);
      result = 1;
      if (v25 != v24)
      {
        if (a3)
        {
          result = 0;
          if (v18)
          {
            v26 = a5[1];
            if (v26 != -1)
            {
              v27 = a5[2];
              if (v27)
              {
                v28 = a5[3];
                if (v28 != -1)
                {
                  while (*v25 != v18 || v25[1] != v26 || v25[2] != v27 || v25[3] != v28)
                  {
                    v25 += 4;
                    if (v25 == v24)
                    {
                      v25 = *(v14 + 80);
                      break;
                    }
                  }

                  result = v25 != v24;
                  *(a7 + 23) |= result;
                  if (*(v14 + 41) == 1)
                  {
LABEL_47:
                    v30 = *(v14 + 48);
                    v29 = *(v14 + 56);
                    if (v30 == v29 || a3 == 0)
                    {
                      *(a7 + 24) |= 1u;
                      if (*(v14 + 42) == 1)
                      {
                        goto LABEL_67;
                      }
                    }

                    else
                    {
                      v32 = 0;
                      if (v19)
                      {
                        result = a6[1];
                        if (result != -1)
                        {
                          v33 = a6[2];
                          if (v33)
                          {
                            v34 = a6[3];
                            if (v34 != -1)
                            {
                              while (*v30 != v19 || *(v30 + 4) != __PAIR64__(v33, result) || *(v30 + 12) != v34)
                              {
                                v30 += 16;
                                if (v30 == v29)
                                {
                                  v30 = *(v14 + 56);
                                  break;
                                }
                              }

                              v32 = v30 != v29;
                            }
                          }
                        }
                      }

                      *(a7 + 24) |= v32;
                      if (*(v14 + 42) == 1)
                      {
LABEL_67:
                        v36 = *(v14 + 48);
                        v35 = *(v14 + 56);
                        if (v36 == v35 || a3 == 0)
                        {
                          v20 = 1;
                        }

                        else
                        {
                          v20 = 0;
                          if (v19)
                          {
                            result = a6[1];
                            if (result != -1)
                            {
                              v38 = a6[2];
                              if (v38)
                              {
                                v39 = a6[3];
                                if (v39 != -1)
                                {
                                  while (*v36 != v19 || *(v36 + 4) != __PAIR64__(v38, result) || *(v36 + 12) != v39)
                                  {
                                    v36 += 16;
                                    if (v36 == v35)
                                    {
                                      v36 = *(v14 + 56);
                                      break;
                                    }
                                  }

                                  v20 = v36 != v35;
                                }
                              }
                            }
                          }
                        }

                        goto LABEL_14;
                      }
                    }

                    goto LABEL_88;
                  }

LABEL_87:
                  *(a7 + 24) = *(a7 + 24);
                  if (*(v14 + 42) == 1)
                  {
                    goto LABEL_67;
                  }

LABEL_88:
                  v20 = 0;
                  goto LABEL_14;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      result = 0;
    }

    *(a7 + 23) |= result;
    if (*(v14 + 41) == 1)
    {
      goto LABEL_47;
    }

    goto LABEL_87;
  }

  return result;
}

void sub_95E60C(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  *v31 = a2;
  v12 = sub_3A8760((*(a1 + 11688) + 104), v31);
  v13 = &unk_22A4B00;
  if (v12)
  {
    v13 = (v12 + 3);
  }

  v15 = *v13;
  v14 = v13[1];
  if (*v13 != v14)
  {
    v30 = a3;
    do
    {
      v18 = v15[2];
      if (v18 <= a5)
      {
        v19 = v15[3];
        if (v19 >= a4 && (!a3 || *(v15 + 4) == 1))
        {
          *&v31[20] = 0;
          v20 = *v15;
          v31[4] = *(v15 + 4);
          *v31 = v20;
          *&v31[16] = 256;
          *&v31[18] = 0;
          *&v31[8] = v18;
          *&v31[12] = v19;
          sub_95E89C(*(a6 + 40), **a6, **(a6 + 8), **(a6 + 16), *(a6 + 24), *(a6 + 32), v31);
          if (*v31 != -1 && *&v31[8] != 0x7FFFFFFF && *&v31[12] != 0x7FFFFFFF && ((v31[23] & 1) != 0 || (v31[24] & 1) != 0 || (v31[25] & 1) != 0 || (v31[26] & 1) != 0 || v31[27] == 1))
          {
            v21 = *(a7 + 8);
            v22 = *(a7 + 16);
            if (v21 < v22)
            {
              v16 = *v31;
              *(v21 + 12) = *&v31[12];
              *v21 = v16;
              v17 = v21 + 28;
            }

            else
            {
              v23 = *a7;
              v24 = 0x6DB6DB6DB6DB6DB7 * ((v21 - *a7) >> 2);
              v25 = v24 + 1;
              if ((v24 + 1) > 0x924924924924924)
              {
                sub_1794();
              }

              v26 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v23) >> 2);
              if (2 * v26 > v25)
              {
                v25 = 2 * v26;
              }

              if (v26 >= 0x492492492492492)
              {
                v27 = 0x924924924924924;
              }

              else
              {
                v27 = v25;
              }

              if (v27)
              {
                if (v27 <= 0x924924924924924)
                {
                  operator new();
                }

                sub_1808();
              }

              v28 = (4 * ((v21 - *a7) >> 2));
              *v28 = *v31;
              *(v28 + 12) = *&v31[12];
              v17 = 28 * v24 + 28;
              v29 = 28 * v24 - (v21 - v23);
              memcpy(v28 - (v21 - v23), v23, v21 - v23);
              *a7 = v29;
              *(a7 + 8) = v17;
              *(a7 + 16) = 0;
              if (v23)
              {
                operator delete(v23);
              }

              a3 = v30;
            }

            *(a7 + 8) = v17;
          }
        }
      }

      v15 += 4;
    }

    while (v15 != v14);
  }
}

uint64_t sub_95E89C(uint64_t result, uint64_t a2, int a3, unint64_t a4, int *a5, int *a6, unsigned int *a7)
{
  v7 = *(result + 11688);
  v8 = *a7;
  if (*(a7 + 4) == 1)
  {
    v11 = v7 + 8;
    v9 = *(v7 + 8);
    v10 = *(v11 + 8);
  }

  else
  {
    v12 = v7 + 32;
    v9 = *(v7 + 32);
    v10 = *(v12 + 8);
  }

  if (0x823EE08FB823EE09 * ((v10 - v9) >> 3) <= v8)
  {
    sub_6FAB4();
  }

  v13 = v9 + 456 * v8;
  v14 = *(v13 + 424);
  v15 = *(v13 + 432);
  if (v14 != v15)
  {
    if (a4)
    {
      v16 = HIDWORD(a4) == 0xFFFFFFFF;
    }

    else
    {
      v16 = 1;
    }

    v17 = !v16;
    v18 = *a5;
    v19 = *a6;
    while (1)
    {
      if (*(v14 + 8) != 2 || *v14 != a2)
      {
        goto LABEL_15;
      }

      if (*(v14 + 96) == 1)
      {
        break;
      }

      v20 = 0;
      *(a7 + 23) = 257;
LABEL_14:
      *(a7 + 25) |= v20;
LABEL_15:
      v14 += 104;
      if (v14 == v15)
      {
        return result;
      }
    }

    v21 = *(v14 + 24);
    v22 = *(v14 + 16);
    if (v22 != v21 && a3 != 0)
    {
      if (!v17)
      {
        goto LABEL_15;
      }

      while (1)
      {
        result = *v22;
        if (result == a4)
        {
          result = v22[1];
          if (result == HIDWORD(a4))
          {
            break;
          }
        }

        v22 += 2;
        if (v22 == v21)
        {
          goto LABEL_15;
        }
      }

      if (v22 == v21)
      {
        goto LABEL_15;
      }
    }

    if (*(v14 + 40) == 1)
    {
      v25 = *(v14 + 72);
      v24 = *(v14 + 80);
      result = 1;
      if (v25 != v24)
      {
        if (a3)
        {
          result = 0;
          if (v18)
          {
            v26 = a5[1];
            if (v26 != -1)
            {
              v27 = a5[2];
              if (v27)
              {
                v28 = a5[3];
                if (v28 != -1)
                {
                  while (*v25 != v18 || v25[1] != v26 || v25[2] != v27 || v25[3] != v28)
                  {
                    v25 += 4;
                    if (v25 == v24)
                    {
                      v25 = *(v14 + 80);
                      break;
                    }
                  }

                  result = v25 != v24;
                  *(a7 + 23) |= result;
                  if (*(v14 + 41) == 1)
                  {
LABEL_47:
                    v30 = *(v14 + 48);
                    v29 = *(v14 + 56);
                    if (v30 == v29 || a3 == 0)
                    {
                      *(a7 + 24) |= 1u;
                      if (*(v14 + 42) == 1)
                      {
                        goto LABEL_67;
                      }
                    }

                    else
                    {
                      v32 = 0;
                      if (v19)
                      {
                        result = a6[1];
                        if (result != -1)
                        {
                          v33 = a6[2];
                          if (v33)
                          {
                            v34 = a6[3];
                            if (v34 != -1)
                            {
                              while (*v30 != v19 || *(v30 + 4) != __PAIR64__(v33, result) || *(v30 + 12) != v34)
                              {
                                v30 += 16;
                                if (v30 == v29)
                                {
                                  v30 = *(v14 + 56);
                                  break;
                                }
                              }

                              v32 = v30 != v29;
                            }
                          }
                        }
                      }

                      *(a7 + 24) |= v32;
                      if (*(v14 + 42) == 1)
                      {
LABEL_67:
                        v36 = *(v14 + 48);
                        v35 = *(v14 + 56);
                        if (v36 == v35 || a3 == 0)
                        {
                          v20 = 1;
                        }

                        else
                        {
                          v20 = 0;
                          if (v19)
                          {
                            result = a6[1];
                            if (result != -1)
                            {
                              v38 = a6[2];
                              if (v38)
                              {
                                v39 = a6[3];
                                if (v39 != -1)
                                {
                                  while (*v36 != v19 || *(v36 + 4) != __PAIR64__(v38, result) || *(v36 + 12) != v39)
                                  {
                                    v36 += 16;
                                    if (v36 == v35)
                                    {
                                      v36 = *(v14 + 56);
                                      break;
                                    }
                                  }

                                  v20 = v36 != v35;
                                }
                              }
                            }
                          }
                        }

                        goto LABEL_14;
                      }
                    }

                    goto LABEL_88;
                  }

LABEL_87:
                  *(a7 + 24) = *(a7 + 24);
                  if (*(v14 + 42) == 1)
                  {
                    goto LABEL_67;
                  }

LABEL_88:
                  v20 = 0;
                  goto LABEL_14;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      result = 0;
    }

    *(a7 + 23) |= result;
    if (*(v14 + 41) == 1)
    {
      goto LABEL_47;
    }

    goto LABEL_87;
  }

  return result;
}

void sub_95EC20(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  *v31 = a2;
  v12 = sub_3A8760((*(a1 + 11688) + 224), v31);
  v13 = &unk_22A4B18;
  if (v12)
  {
    v13 = (v12 + 3);
  }

  v14 = *v13;
  v15 = v13[1];
  if (*v13 != v15)
  {
    v30 = a3;
    do
    {
      v18 = v14[2];
      if (v18 <= a5)
      {
        v19 = v14[3];
        if (v19 >= a4 && (!a3 || *(v14 + 4) == 1))
        {
          *&v31[20] = 0;
          v20 = *v14;
          v31[4] = *(v14 + 4);
          *v31 = v20;
          *&v31[12] = v19;
          *&v31[16] = 0;
          v31[20] = 1;
          *&v31[8] = v18;
          sub_95EEB8(*(a6 + 40), **a6, **(a6 + 8), **(a6 + 16), *(a6 + 24), *(a6 + 32), v31);
          if (*v31 != -1 && *&v31[8] != 0x7FFFFFFF && *&v31[12] != 0x7FFFFFFF && ((v31[23] & 1) != 0 || (v31[24] & 1) != 0 || (v31[25] & 1) != 0 || (v31[26] & 1) != 0 || v31[27] == 1))
          {
            v21 = *(a7 + 8);
            v22 = *(a7 + 16);
            if (v21 < v22)
            {
              v16 = *v31;
              *(v21 + 12) = *&v31[12];
              *v21 = v16;
              v17 = v21 + 28;
            }

            else
            {
              v23 = *a7;
              v24 = 0x6DB6DB6DB6DB6DB7 * ((v21 - *a7) >> 2);
              v25 = v24 + 1;
              if ((v24 + 1) > 0x924924924924924)
              {
                sub_1794();
              }

              v26 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v23) >> 2);
              if (2 * v26 > v25)
              {
                v25 = 2 * v26;
              }

              if (v26 >= 0x492492492492492)
              {
                v27 = 0x924924924924924;
              }

              else
              {
                v27 = v25;
              }

              if (v27)
              {
                if (v27 <= 0x924924924924924)
                {
                  operator new();
                }

                sub_1808();
              }

              v28 = (4 * ((v21 - *a7) >> 2));
              *v28 = *v31;
              *(v28 + 12) = *&v31[12];
              v17 = 28 * v24 + 28;
              v29 = 28 * v24 - (v21 - v23);
              memcpy(v28 - (v21 - v23), v23, v21 - v23);
              *a7 = v29;
              *(a7 + 8) = v17;
              *(a7 + 16) = 0;
              if (v23)
              {
                operator delete(v23);
              }

              a3 = v30;
            }

            *(a7 + 8) = v17;
          }
        }
      }

      v14 += 4;
    }

    while (v14 != v15);
  }
}

uint64_t sub_95EEB8(uint64_t result, uint64_t a2, int a3, unint64_t a4, int *a5, int *a6, unsigned int *a7)
{
  v7 = *(result + 11688);
  v8 = *a7;
  if (*(a7 + 4) == 1)
  {
    v11 = v7 + 8;
    v9 = *(v7 + 8);
    v10 = *(v11 + 8);
  }

  else
  {
    v12 = v7 + 32;
    v9 = *(v7 + 32);
    v10 = *(v12 + 8);
  }

  if (0x823EE08FB823EE09 * ((v10 - v9) >> 3) <= v8)
  {
    sub_6FAB4();
  }

  v13 = v9 + 456 * v8;
  v14 = *(v13 + 424);
  v15 = *(v13 + 432);
  if (v14 != v15)
  {
    if (a4)
    {
      v16 = HIDWORD(a4) == 0xFFFFFFFF;
    }

    else
    {
      v16 = 1;
    }

    v17 = !v16;
    v18 = *a5;
    v19 = *a6;
    while (1)
    {
      if (*(v14 + 8) != 1 || *v14 != a2)
      {
        goto LABEL_15;
      }

      if (*(v14 + 96) == 1)
      {
        break;
      }

      v20 = 0;
      *(a7 + 23) = 257;
LABEL_14:
      *(a7 + 25) |= v20;
LABEL_15:
      v14 += 104;
      if (v14 == v15)
      {
        return result;
      }
    }

    v21 = *(v14 + 24);
    v22 = *(v14 + 16);
    if (v22 != v21 && a3 != 0)
    {
      if (!v17)
      {
        goto LABEL_15;
      }

      while (1)
      {
        result = *v22;
        if (result == a4)
        {
          result = v22[1];
          if (result == HIDWORD(a4))
          {
            break;
          }
        }

        v22 += 2;
        if (v22 == v21)
        {
          goto LABEL_15;
        }
      }

      if (v22 == v21)
      {
        goto LABEL_15;
      }
    }

    if (*(v14 + 40) == 1)
    {
      v25 = *(v14 + 72);
      v24 = *(v14 + 80);
      result = 1;
      if (v25 != v24)
      {
        if (a3)
        {
          result = 0;
          if (v18)
          {
            v26 = a5[1];
            if (v26 != -1)
            {
              v27 = a5[2];
              if (v27)
              {
                v28 = a5[3];
                if (v28 != -1)
                {
                  while (*v25 != v18 || v25[1] != v26 || v25[2] != v27 || v25[3] != v28)
                  {
                    v25 += 4;
                    if (v25 == v24)
                    {
                      v25 = *(v14 + 80);
                      break;
                    }
                  }

                  result = v25 != v24;
                  *(a7 + 23) |= result;
                  if (*(v14 + 41) == 1)
                  {
LABEL_47:
                    v30 = *(v14 + 48);
                    v29 = *(v14 + 56);
                    if (v30 == v29 || a3 == 0)
                    {
                      *(a7 + 24) |= 1u;
                      if (*(v14 + 42) == 1)
                      {
                        goto LABEL_67;
                      }
                    }

                    else
                    {
                      v32 = 0;
                      if (v19)
                      {
                        result = a6[1];
                        if (result != -1)
                        {
                          v33 = a6[2];
                          if (v33)
                          {
                            v34 = a6[3];
                            if (v34 != -1)
                            {
                              while (*v30 != v19 || *(v30 + 4) != __PAIR64__(v33, result) || *(v30 + 12) != v34)
                              {
                                v30 += 16;
                                if (v30 == v29)
                                {
                                  v30 = *(v14 + 56);
                                  break;
                                }
                              }

                              v32 = v30 != v29;
                            }
                          }
                        }
                      }

                      *(a7 + 24) |= v32;
                      if (*(v14 + 42) == 1)
                      {
LABEL_67:
                        v36 = *(v14 + 48);
                        v35 = *(v14 + 56);
                        if (v36 == v35 || a3 == 0)
                        {
                          v20 = 1;
                        }

                        else
                        {
                          v20 = 0;
                          if (v19)
                          {
                            result = a6[1];
                            if (result != -1)
                            {
                              v38 = a6[2];
                              if (v38)
                              {
                                v39 = a6[3];
                                if (v39 != -1)
                                {
                                  while (*v36 != v19 || *(v36 + 4) != __PAIR64__(v38, result) || *(v36 + 12) != v39)
                                  {
                                    v36 += 16;
                                    if (v36 == v35)
                                    {
                                      v36 = *(v14 + 56);
                                      break;
                                    }
                                  }

                                  v20 = v36 != v35;
                                }
                              }
                            }
                          }
                        }

                        goto LABEL_14;
                      }
                    }

                    goto LABEL_88;
                  }

LABEL_87:
                  *(a7 + 24) = *(a7 + 24);
                  if (*(v14 + 42) == 1)
                  {
                    goto LABEL_67;
                  }

LABEL_88:
                  v20 = 0;
                  goto LABEL_14;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      result = 0;
    }

    *(a7 + 23) |= result;
    if (*(v14 + 41) == 1)
    {
      goto LABEL_47;
    }

    goto LABEL_87;
  }

  return result;
}

void sub_95F23C(uint64_t a1, uint64_t a2, int a3, int a4, int a5, void *a6)
{
  v33 = a2;
  v10 = sub_3A8760((*(a1 + 11688) + 184), &v33);
  v11 = &unk_22A4B30;
  if (v10)
  {
    v11 = (v10 + 3);
  }

  v12 = *v11;
  v13 = v11[1];
  if (*v11 != v13)
  {
    v32 = a3;
    v30 = a4;
    v31 = a6;
    do
    {
      v15 = v12[2];
      if (v15 <= a5)
      {
        v16 = v12[3];
        if (v16 >= a4)
        {
          v17 = *(v12 + 4);
          if (!a3 || (v12[1] & 1) != 0)
          {
            v18 = *v12;
            v19 = v16 == 0x7FFFFFFF || v15 == 0x7FFFFFFF;
            if (!v19 && v18 != -1)
            {
              v21 = a6[1];
              v22 = a6[2];
              if (v21 < v22)
              {
                *v21 = v18;
                *(v21 + 4) = v17;
                *(v21 + 8) = v15;
                *(v21 + 12) = v16;
                *(v21 + 16) = 0x100000001000000;
                v14 = v21 + 28;
                *(v21 + 24) = 257;
              }

              else
              {
                v23 = *a6;
                v24 = 0x6DB6DB6DB6DB6DB7 * ((v21 - *a6) >> 2);
                v25 = v24 + 1;
                if ((v24 + 1) > 0x924924924924924)
                {
                  sub_1794();
                }

                v26 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v23) >> 2);
                if (2 * v26 > v25)
                {
                  v25 = 2 * v26;
                }

                if (v26 >= 0x492492492492492)
                {
                  v27 = 0x924924924924924;
                }

                else
                {
                  v27 = v25;
                }

                if (v27)
                {
                  if (v27 <= 0x924924924924924)
                  {
                    operator new();
                  }

                  sub_1808();
                }

                a6 = v31;
                v28 = 28 * v24;
                *v28 = v18;
                *(v28 + 4) = v17;
                *(v28 + 8) = v15;
                *(v28 + 12) = v16;
                *(v28 + 16) = 0x100000001000000;
                *(v28 + 24) = 257;
                v14 = 28 * v24 + 28;
                v29 = (28 * v24 - (v21 - v23));
                memcpy(v29, v23, v21 - v23);
                *v31 = v29;
                v31[1] = v14;
                v31[2] = 0;
                if (v23)
                {
                  operator delete(v23);
                }

                a4 = v30;
              }

              a6[1] = v14;
              a3 = v32;
            }
          }
        }
      }

      v12 += 4;
    }

    while (v12 != v13);
  }
}

char *sub_95F494(size_t *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = a1[1];
  v7 = a1[2];
  if (a5 > (v7 - v8) >> 3)
  {
    v9 = *a1;
    v10 = a5 + ((v8 - *a1) >> 3);
    if (v10 >> 61)
    {
      sub_1794();
    }

    v11 = v7 - v9;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v31 = (__dst - v9);
    v32 = 8 * ((__dst - v9) >> 3);
    v33 = (v32 + 8 * a5);
    v34 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x1FFFFFFFFFFFFFFFuLL) >= 7 && (v31 - __src) >= 0x20)
    {
      v58 = v34 + 1;
      v59 = (v34 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v35 = (v32 + 8 * v59);
      v36 = &__src[8 * v59];
      v60 = __src + 16;
      v61 = (v32 + 16);
      v62 = v59;
      do
      {
        v63 = *v60;
        *(v61 - 1) = *(v60 - 1);
        *v61 = v63;
        v60 += 32;
        v61 += 2;
        v62 -= 4;
      }

      while (v62);
      if (v58 == v59)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v35 = v32;
      v36 = __src;
    }

    do
    {
      v37 = *v36;
      v36 += 8;
      *v35++ = v37;
    }

    while (v35 != v33);
LABEL_31:
    v38 = a1[1] - __dst;
    memcpy((v32 + 8 * a5), __dst, v38);
    v40 = v33 + v38;
    a1[1] = v5;
    v41 = *a1;
    v42 = &v5[-*a1];
    v43 = v32 - v42;
    memcpy((v32 - v42), *a1, v42);
    *a1 = v43;
    a1[1] = v40;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return v32;
  }

  v13 = v8 - __dst;
  v14 = (v8 - __dst) >> 3;
  if (v14 >= a5)
  {
    v17 = 8 * a5;
    v18 = &__dst[8 * a5];
    v19 = (v8 - 8 * a5);
    if (v19 >= v8)
    {
      v23 = a1[1];
    }

    else
    {
      v20 = v19 + 1;
      if (v8 > (v19 + 1))
      {
        v20 = a1[1];
      }

      v21 = &v20[v17 / 8] + ~v8;
      v22 = v21 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v23 = a1[1];
      if (v22)
      {
        goto LABEL_74;
      }

      v24 = (v21 >> 3) + 1;
      v25 = 8 * (v24 & 0x3FFFFFFFFFFFFFFCLL);
      v19 = (v19 + v25);
      v23 = (v8 + v25);
      v26 = (v8 + 16);
      v27 = (v8 + 16 - v17);
      v28 = v24 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v29 = *v27;
        *(v26 - 1) = *(v27 - 1);
        *v26 = v29;
        v26 += 2;
        v27 += 2;
        v28 -= 4;
      }

      while (v28);
      if (v24 != (v24 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_74:
        do
        {
          v30 = *v19++;
          *v23++ = v30;
        }

        while (v19 < v8);
      }
    }

    a1[1] = v23;
    if (v8 != v18)
    {
      v52 = v8 - v18;
      v53 = (v8 - v52);
      v54 = __src;
      memmove(v53, __dst, v52 - 3);
      __src = v54;
    }

    v55 = v5;
    v56 = __src;
    v57 = v17 - 3;
    goto LABEL_68;
  }

  v15 = &__src[v13];
  if (&__src[v13] == a4)
  {
    v16 = a1[1];
  }

  else
  {
    v44 = &__src[v13];
    v45 = a4 - v15 - 8;
    if (v45 < 0x18)
    {
      v16 = a1[1];
    }

    else
    {
      v16 = a1[1];
      if (v8 - v15 >= 0x20)
      {
        v46 = (v45 >> 3) + 1;
        v47 = 8 * (v46 & 0x3FFFFFFFFFFFFFFCLL);
        v44 = &v15[v47];
        v16 = v8 + v47;
        v48 = (v8 + 16);
        v49 = (v15 + 16);
        v50 = v46 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v51 = *v49;
          *(v48 - 1) = *(v49 - 1);
          *v48 = v51;
          v48 += 2;
          v49 += 2;
          v50 -= 4;
        }

        while (v50);
        if (v46 == (v46 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_50;
        }
      }
    }

    do
    {
      v64 = *v44;
      v44 += 8;
      *v16 = v64;
      v16 += 8;
    }

    while (v44 != a4);
  }

LABEL_50:
  a1[1] = v16;
  if (v14 >= 1)
  {
    v65 = a5;
    v66 = &__dst[8 * a5];
    v67 = (v16 - 8 * a5);
    v68 = __src;
    if (v67 >= v8)
    {
      v72 = v16;
    }

    else
    {
      v69 = v67 + 1;
      if (v8 > (v67 + 1))
      {
        v69 = v8;
      }

      v70 = &v69[v65] + ~v16;
      v71 = v70 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v72 = v16;
      if (v71)
      {
        goto LABEL_75;
      }

      v73 = (v70 >> 3) + 1;
      v74 = 8 * (v73 & 0x3FFFFFFFFFFFFFFCLL);
      v67 = (v67 + v74);
      v72 = (v16 + v74);
      v75 = (v16 + 16);
      v76 = (v16 + 16 - v65 * 8);
      v77 = v73 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v78 = *v76;
        *(v75 - 1) = *(v76 - 1);
        *v75 = v78;
        v75 += 2;
        v76 += 2;
        v77 -= 4;
      }

      while (v77);
      if (v73 != (v73 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_75:
        do
        {
          v79 = *v67++;
          *v72++ = v79;
        }

        while (v67 < v8);
      }
    }

    a1[1] = v72;
    if (v16 != v66)
    {
      memmove(v66, __dst, v16 - v66 - 3);
    }

    if (v8 != v5)
    {
      v57 = v13 - 3;
      v55 = v5;
      v56 = v68;
LABEL_68:
      memmove(v55, v56, v57);
    }
  }

  return v5;
}

uint64_t sub_95F8B4(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v28 = a2 - 1;
        v29 = *(a2 - 2);
        v30 = v29 == *v9;
        if (v29 >= *v9)
        {
          v31 = 1;
        }

        else
        {
          v31 = -1;
        }

        if (v30)
        {
          v32 = *(a2 - 4);
          v33 = *(v9 + 4);
          v34 = v32 >= v33;
          v35 = v32 == v33;
          v31 = -1;
          if (v34)
          {
            v31 = 1;
          }

          if (v35)
          {
            v31 = 0;
          }
        }

        if (v31 < 0)
        {
          v36 = *v9;
          v37 = *v28;
          *(v9 + 4) = *(a2 - 4);
          *v9 = v37;
          *v28 = v36;
          *(a2 - 4) = BYTE4(v36);
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      result = sub_95FEDC(v9, (v9 + 8), (v9 + 16));
      v38 = a2 - 1;
      v39 = *(a2 - 2);
      v40 = *(v9 + 16);
      v41 = v39 == v40;
      if (v39 >= v40)
      {
        v42 = 1;
      }

      else
      {
        v42 = -1;
      }

      if (v41)
      {
        v43 = *(a2 - 4);
        v44 = *(v9 + 20);
        v34 = v43 >= v44;
        v45 = v43 == v44;
        v42 = -1;
        if (v34)
        {
          v42 = 1;
        }

        if (v45)
        {
          v42 = 0;
        }
      }

      if (v42 < 0)
      {
        v46 = *(v9 + 16);
        v47 = *v38;
        *(v9 + 20) = *(a2 - 4);
        *(v9 + 16) = v47;
        *v38 = v46;
        *(a2 - 4) = BYTE4(v46);
        v48 = *(v9 + 16);
        LODWORD(v46) = *(v9 + 8);
        v49 = v48 == v46;
        if (v48 >= v46)
        {
          v50 = 1;
        }

        else
        {
          v50 = -1;
        }

        if (v49)
        {
          v51 = *(v9 + 20);
          v52 = *(v9 + 12);
          v34 = v51 >= v52;
          v53 = v51 == v52;
          v50 = -1;
          if (v34)
          {
            v50 = 1;
          }

          if (v53)
          {
            v50 = 0;
          }
        }

        if (v50 < 0)
        {
          v54 = *(v9 + 8);
          *(v9 + 12) = *(v9 + 20);
          *(v9 + 8) = *(v9 + 16);
          *(v9 + 16) = v54;
          *(v9 + 20) = BYTE4(v54);
          LODWORD(v54) = *(v9 + 8);
          v55 = v54 == *v9;
          if (v54 >= *v9)
          {
            v56 = 1;
          }

          else
          {
            v56 = -1;
          }

          if (v55)
          {
            v57 = *(v9 + 12);
            v58 = *(v9 + 4);
            v34 = v57 >= v58;
            v59 = v57 == v58;
            v56 = -1;
            if (v34)
            {
              v56 = 1;
            }

            if (v59)
            {
              v56 = 0;
            }
          }

          if (v56 < 0)
          {
            v60 = *v9;
            *v9 = *(v9 + 8);
            *(v9 + 4) = *(v9 + 12);
            *(v9 + 8) = v60;
            *(v9 + 12) = BYTE4(v60);
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return sub_960088(v9, (v9 + 8), (v9 + 16), (v9 + 24), a2 - 2);
    }

LABEL_11:
    if (v12 <= 23)
    {
      v61 = (v9 + 8);
      v63 = v9 == a2 || v61 == a2;
      if (a5)
      {
        if (v63)
        {
          return result;
        }

        v64 = 0;
        v65 = v9;
        while (2)
        {
          v67 = v61;
          v68 = *(v65 + 8);
          v69 = v68 == *v65;
          if (v68 >= *v65)
          {
            v70 = 1;
          }

          else
          {
            v70 = -1;
          }

          if (v69)
          {
            v71 = *(v65 + 12);
            v72 = *(v65 + 4);
            v73 = v71 == v72;
            if (v71 >= v72)
            {
              v74 = 1;
            }

            else
            {
              v74 = -1;
            }

            if (v73)
            {
              v74 = 0;
            }

            if (v74 < 0)
            {
              goto LABEL_112;
            }
          }

          else if (v70 < 0)
          {
LABEL_112:
            v75 = *v67;
            v76 = *(v67 + 4);
            v77 = v64;
            do
            {
              v78 = v9 + v77;
              *(v78 + 8) = *(v9 + v77);
              *(v78 + 12) = *(v9 + v77 + 4);
              if (!v77)
              {
                v66 = v9;
                goto LABEL_98;
              }

              v79 = *(v78 - 8);
              v80 = v79 == v75;
              if (v79 <= v75)
              {
                v81 = 1;
              }

              else
              {
                v81 = -1;
              }

              if (v80)
              {
                v82 = *(v9 + v77 - 4);
                v83 = v82 == v76;
                v81 = v82 <= v76 ? 1 : -1;
                if (v83)
                {
                  v81 = 0;
                }
              }

              v77 -= 8;
            }

            while (v81 < 0);
            v66 = v9 + v77 + 8;
LABEL_98:
            *v66 = v75;
            *(v66 + 4) = v76;
          }

          v61 = v67 + 1;
          v64 += 8;
          v65 = v67;
          if (v67 + 1 == a2)
          {
            return result;
          }

          continue;
        }
      }

      if (v63)
      {
        return result;
      }

      while (2)
      {
        v88 = v61;
        v89 = *(v8 + 8);
        v90 = v89 == *v8;
        if (v89 >= *v8)
        {
          v91 = 1;
        }

        else
        {
          v91 = -1;
        }

        if (v90)
        {
          v92 = *(v8 + 12);
          v93 = *(v8 + 4);
          v94 = v92 == v93;
          if (v92 >= v93)
          {
            v95 = 1;
          }

          else
          {
            v95 = -1;
          }

          if (v94)
          {
            v95 = 0;
          }

          if (v95 < 0)
          {
LABEL_149:
            v96 = *v88;
            v97 = *(v88 + 4);
            v98 = v88;
            do
            {
              *v98 = *(v98 - 8);
              *(v98 + 4) = *(v98 - 4);
              v99 = *(v98 - 16);
              v100 = v99 == v96;
              if (v99 <= v96)
              {
                v101 = 1;
              }

              else
              {
                v101 = -1;
              }

              if (v100)
              {
                v102 = *(v98 - 12);
                v103 = v102 == v97;
                v101 = v102 <= v97 ? 1 : -1;
                if (v103)
                {
                  v101 = 0;
                }
              }

              v98 -= 8;
            }

            while (v101 < 0);
            *v98 = v96;
            *(v98 + 4) = v97;
          }
        }

        else if (v91 < 0)
        {
          goto LABEL_149;
        }

        v61 = (v88 + 8);
        v8 = v88;
        if ((v88 + 8) == a2)
        {
          return result;
        }

        continue;
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v84 = (v12 - 2) >> 1;
        v85 = v84 + 1;
        v86 = (v9 + 8 * v84);
        do
        {
          sub_9609E8(v9, a3, (a2 - v9) >> 3, v86);
          v86 -= 2;
          --v85;
        }

        while (v85);
        do
        {
          result = sub_960B7C(v9, a2--, a3, v12);
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 8 * (v12 >> 1);
    if (v12 < 0x81)
    {
      sub_95FEDC((v8 + 8 * (v12 >> 1)), v8, a2 - 2);
      if (a5)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_95FEDC(v8, (v8 + 8 * (v12 >> 1)), a2 - 2);
      v15 = 8 * v13;
      v16 = (8 * v13 + v8 - 8);
      sub_95FEDC((v8 + 8), v16, a2 - 4);
      sub_95FEDC((v8 + 16), (v8 + 8 + v15), a2 - 6);
      sub_95FEDC(v16, v14, (v8 + 8 + v15));
      v17 = *v8;
      v18 = *(v14 + 4);
      *v8 = *v14;
      *(v8 + 4) = v18;
      *v14 = v17;
      *(v14 + 4) = BYTE4(v17);
      if (a5)
      {
        goto LABEL_28;
      }
    }

    v19 = *(v8 - 8);
    v20 = v19 == *v8;
    if (v19 >= *v8)
    {
      v21 = 1;
    }

    else
    {
      v21 = -1;
    }

    if (v20)
    {
      v22 = *(v8 - 4);
      v23 = *(v8 + 4);
      v24 = v22 == v23;
      v21 = v22 >= v23 ? 1 : -1;
      if (v24)
      {
        v21 = 0;
      }
    }

    if ((v21 & 0x80) == 0)
    {
      result = sub_96031C(v8, a2);
      v9 = result;
      goto LABEL_33;
    }

LABEL_28:
    v25 = sub_9604E0(v8, a2);
    if ((v26 & 1) == 0)
    {
      goto LABEL_31;
    }

    v27 = sub_96068C(v8, v25);
    v9 = (v25 + 2);
    result = sub_96068C((v25 + 2), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v25;
      if (v27)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v27)
    {
LABEL_31:
      result = sub_95F8B4(v8, v25, a3, -v11, a5 & 1);
      v9 = (v25 + 2);
LABEL_33:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return sub_95FEDC(v9, (v9 + 8), a2 - 2);
}

uint64_t sub_95FEDC(unint64_t *a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = -1;
  if (*a2 >= *a1)
  {
    v4 = 1;
  }

  if (v3 == *a1)
  {
    v5 = *(a2 + 4);
    v6 = *(a1 + 4);
    v7 = v5 >= v6;
    v8 = v5 == v6;
    v9 = -1;
    if (v7)
    {
      v9 = 1;
    }

    if (v8)
    {
      v4 = 0;
    }

    else
    {
      v4 = v9;
    }
  }

  v10 = *a3;
  v11 = -1;
  if (*a3 >= v3)
  {
    v11 = 1;
  }

  if (v4 < 0)
  {
    if (v10 == v3)
    {
      v17 = *(a3 + 4);
      v18 = *(a2 + 4);
      v7 = v17 >= v18;
      v19 = v17 == v18;
      v20 = -1;
      if (v7)
      {
        v20 = 1;
      }

      if (v19)
      {
        v11 = 0;
      }

      else
      {
        v11 = v20;
      }
    }

    v21 = *a1;
    if ((v11 & 0x80) == 0)
    {
      v22 = *a2;
      *(a1 + 4) = *(a2 + 4);
      *a1 = v22;
      v23 = HIDWORD(v21);
      *(a2 + 4) = BYTE4(v21);
      *a2 = v21;
      v24 = *a3 == v21;
      if (*a3 >= v21)
      {
        v25 = 1;
      }

      else
      {
        v25 = -1;
      }

      if (v24)
      {
        v26 = *(a3 + 4);
        v7 = v26 >= v23;
        v27 = v26 == v23;
        v25 = -1;
        if (v7)
        {
          v25 = 1;
        }

        if (v27)
        {
          v25 = 0;
        }
      }

      if (v25 < 0)
      {
        v28 = *a2;
        v29 = *a3;
        *(a2 + 4) = *(a3 + 4);
        *a2 = v29;
        *a3 = v28;
        *(a3 + 4) = BYTE4(v28);
        return 1;
      }

      return 1;
    }

    v36 = *a3;
    *(a1 + 4) = *(a3 + 4);
    *a1 = v36;
    *(a3 + 4) = BYTE4(v21);
    *a3 = v21;
    return 1;
  }

  else
  {
    if (v10 == v3)
    {
      v12 = *(a3 + 4);
      v13 = *(a2 + 4);
      v7 = v12 >= v13;
      v14 = v12 == v13;
      v15 = -1;
      if (v7)
      {
        v15 = 1;
      }

      if (v14)
      {
        v11 = 0;
      }

      else
      {
        v11 = v15;
      }
    }

    if ((v11 & 0x80) == 0)
    {
      return 0;
    }

    v30 = *a2;
    v31 = *a3;
    *(a2 + 4) = *(a3 + 4);
    *a2 = v31;
    *a3 = v30;
    *(a3 + 4) = BYTE4(v30);
    if (*a2 >= *a1)
    {
      v32 = 1;
    }

    else
    {
      v32 = -1;
    }

    if (*a2 == *a1)
    {
      v33 = *(a2 + 4);
      v34 = *(a1 + 4);
      v7 = v33 >= v34;
      v35 = v33 == v34;
      v32 = -1;
      if (v7)
      {
        v32 = 1;
      }

      if (v35)
      {
        v32 = 0;
      }
    }

    if ((v32 & 0x80) == 0)
    {
      return 1;
    }

    v37 = *a1;
    v38 = *a2;
    *(a1 + 4) = *(a2 + 4);
    *a1 = v38;
    *a2 = v37;
    *(a2 + 4) = BYTE4(v37);
    return 1;
  }
}

uint64_t sub_960088(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  result = sub_95FEDC(a1, a2, a3);
  if (*a4 >= *a3)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  if (*a4 == *a3)
  {
    v12 = *(a4 + 4);
    v13 = *(a3 + 4);
    v14 = v12 >= v13;
    v15 = v12 == v13;
    v11 = -1;
    if (v14)
    {
      v11 = 1;
    }

    if (v15)
    {
      v11 = 0;
    }
  }

  if (v11 < 0)
  {
    v16 = *a3;
    v17 = *a4;
    *(a3 + 4) = *(a4 + 4);
    *a3 = v17;
    *a4 = v16;
    *(a4 + 4) = BYTE4(v16);
    if (*a3 >= *a2)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (*a3 == *a2)
    {
      v19 = *(a3 + 4);
      v20 = *(a2 + 4);
      v14 = v19 >= v20;
      v21 = v19 == v20;
      v18 = -1;
      if (v14)
      {
        v18 = 1;
      }

      if (v21)
      {
        v18 = 0;
      }
    }

    if (v18 < 0)
    {
      v22 = *a2;
      v23 = *a3;
      *(a2 + 4) = *(a3 + 4);
      *a2 = v23;
      *a3 = v22;
      *(a3 + 4) = BYTE4(v22);
      if (*a2 >= *a1)
      {
        v24 = 1;
      }

      else
      {
        v24 = -1;
      }

      if (*a2 == *a1)
      {
        v25 = *(a2 + 4);
        v26 = *(a1 + 4);
        v14 = v25 >= v26;
        v27 = v25 == v26;
        v24 = -1;
        if (v14)
        {
          v24 = 1;
        }

        if (v27)
        {
          v24 = 0;
        }
      }

      if (v24 < 0)
      {
        v28 = *a1;
        v29 = *a2;
        *(a1 + 4) = *(a2 + 4);
        *a1 = v29;
        *a2 = v28;
        *(a2 + 4) = BYTE4(v28);
      }
    }
  }

  if (*a5 >= *a4)
  {
    v30 = 1;
  }

  else
  {
    v30 = -1;
  }

  if (*a5 == *a4)
  {
    v31 = *(a5 + 4);
    v32 = *(a4 + 4);
    v14 = v31 >= v32;
    v33 = v31 == v32;
    v30 = -1;
    if (v14)
    {
      v30 = 1;
    }

    if (v33)
    {
      v30 = 0;
    }
  }

  if (v30 < 0)
  {
    v34 = *a4;
    v35 = *a5;
    *(a4 + 4) = *(a5 + 4);
    *a4 = v35;
    *a5 = v34;
    *(a5 + 4) = BYTE4(v34);
    if (*a4 >= *a3)
    {
      v36 = 1;
    }

    else
    {
      v36 = -1;
    }

    if (*a4 == *a3)
    {
      v37 = *(a4 + 4);
      v38 = *(a3 + 4);
      v14 = v37 >= v38;
      v39 = v37 == v38;
      v36 = -1;
      if (v14)
      {
        v36 = 1;
      }

      if (v39)
      {
        v36 = 0;
      }
    }

    if (v36 < 0)
    {
      v40 = *a3;
      v41 = *a4;
      *(a3 + 4) = *(a4 + 4);
      *a3 = v41;
      *a4 = v40;
      *(a4 + 4) = BYTE4(v40);
      if (*a3 >= *a2)
      {
        v42 = 1;
      }

      else
      {
        v42 = -1;
      }

      if (*a3 == *a2)
      {
        v43 = *(a3 + 4);
        v44 = *(a2 + 4);
        v14 = v43 >= v44;
        v45 = v43 == v44;
        v42 = -1;
        if (v14)
        {
          v42 = 1;
        }

        if (v45)
        {
          v42 = 0;
        }
      }

      if (v42 < 0)
      {
        v46 = *a2;
        v47 = *a3;
        *(a2 + 4) = *(a3 + 4);
        *a2 = v47;
        *a3 = v46;
        *(a3 + 4) = BYTE4(v46);
        if (*a2 >= *a1)
        {
          v48 = 1;
        }

        else
        {
          v48 = -1;
        }

        if (*a2 == *a1)
        {
          v49 = *(a2 + 4);
          v50 = *(a1 + 4);
          v14 = v49 >= v50;
          v51 = v49 == v50;
          v48 = -1;
          if (v14)
          {
            v48 = 1;
          }

          if (v51)
          {
            v48 = 0;
          }
        }

        if (v48 < 0)
        {
          v52 = *a1;
          v53 = *a2;
          *(a1 + 4) = *(a2 + 4);
          *a1 = v53;
          *a2 = v52;
          *(a2 + 4) = BYTE4(v52);
        }
      }
    }
  }

  return result;
}

unsigned int *sub_96031C(unsigned int *a1, uint64_t *a2)
{
  v2 = *(a1 + 4);
  v3 = *a1;
  v4 = *(a2 - 2);
  v5 = v4 == *a1;
  if (v4 <= *a1)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    v7 = *(a2 - 4);
    v8 = v7 == v2;
    v9 = v7 > v2;
    v6 = -1;
    if (!v9)
    {
      v6 = 1;
    }

    if (v8)
    {
      v6 = 0;
    }
  }

  if (v6 < 0)
  {
    v15 = a1;
    v11 = a1;
    do
    {
      v16 = v11[2];
      v11 += 2;
      v17 = v16 == v3;
      if (v16 <= v3)
      {
        v18 = 1;
      }

      else
      {
        v18 = -1;
      }

      if (v17)
      {
        v19 = *(v15 + 12);
        v20 = v19 == v2;
        if (v19 <= v2)
        {
          v21 = 1;
        }

        else
        {
          v21 = -1;
        }

        if (v20)
        {
          v18 = 0;
        }

        else
        {
          v18 = v21;
        }
      }

      v15 = v11;
    }

    while ((v18 & 0x80) == 0);
  }

  else
  {
    v10 = a1 + 2;
    do
    {
      v11 = v10;
      if (v10 >= a2)
      {
        break;
      }

      if (*v10 <= v3)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      if (*v10 == v3)
      {
        v13 = *(v10 + 4);
        v14 = v13 == v2;
        v12 = v13 <= v2 ? 1 : -1;
        if (v14)
        {
          v12 = 0;
        }
      }

      v10 += 2;
    }

    while ((v12 & 0x80) == 0);
  }

  if (v11 >= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a2;
    do
    {
      v23 = *(v22-- - 2);
      v24 = v23 == v3;
      if (v23 <= v3)
      {
        v25 = 1;
      }

      else
      {
        v25 = -1;
      }

      if (v24)
      {
        v26 = *(a2 - 4);
        v27 = v26 == v2;
        v25 = v26 <= v2 ? 1 : -1;
        if (v27)
        {
          v25 = 0;
        }
      }

      a2 = v22;
    }

    while (v25 < 0);
  }

  while (v11 < v22)
  {
    v28 = *v11;
    v29 = *v22;
    *(v11 + 4) = *(v22 + 4);
    *v11 = v29;
    *v22 = v28;
    *(v22 + 4) = BYTE4(v28);
    v30 = v11;
    do
    {
      v31 = v11[2];
      v11 += 2;
      v32 = v31 == v3;
      if (v31 <= v3)
      {
        v33 = 1;
      }

      else
      {
        v33 = -1;
      }

      if (v32)
      {
        v34 = *(v30 + 12);
        v35 = v34 == v2;
        v33 = v34 <= v2 ? 1 : -1;
        if (v35)
        {
          v33 = 0;
        }
      }

      v30 = v11;
    }

    while ((v33 & 0x80) == 0);
    v36 = v22;
    do
    {
      v37 = *(v22-- - 2);
      v38 = v37 == v3;
      if (v37 <= v3)
      {
        v39 = 1;
      }

      else
      {
        v39 = -1;
      }

      if (v38)
      {
        v40 = *(v36 - 4);
        v41 = v40 == v2;
        v39 = v40 <= v2 ? 1 : -1;
        if (v41)
        {
          v39 = 0;
        }
      }

      v36 = v22;
    }

    while (v39 < 0);
  }

  if (v11 - 2 != a1)
  {
    v42 = *(v11 - 2);
    *(a1 + 4) = *(v11 - 4);
    *a1 = v42;
  }

  *(v11 - 2) = v3;
  *(v11 - 4) = v2;
  return v11;
}

unsigned int *sub_9604E0(unsigned int *a1, int *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 4);
  do
  {
    v5 = a1[v2 + 2];
    v6 = v5 == v3;
    if (v5 >= v3)
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }

    if (v6)
    {
      v8 = LOBYTE(a1[v2 + 3]);
      v9 = v8 == v4;
      v7 = v8 >= v4 ? 1 : -1;
      if (v9)
      {
        v7 = 0;
      }
    }

    v2 += 2;
  }

  while (v7 < 0);
  v10 = &a1[v2];
  if (v2 == 2)
  {
    while (v10 < a2)
    {
      v11 = a2 - 2;
      v17 = *(a2 - 2);
      v18 = v17 == v3;
      if (v17 >= v3)
      {
        v19 = 1;
      }

      else
      {
        v19 = -1;
      }

      if (v18)
      {
        v20 = *(a2 - 4);
        v21 = v20 == v4;
        v19 = v20 >= v4 ? 1 : -1;
        if (v21)
        {
          v19 = 0;
        }
      }

      a2 -= 2;
      if (v19 < 0)
      {
        goto LABEL_43;
      }
    }

    v11 = a2;
  }

  else
  {
    v11 = a2;
    do
    {
      v12 = *(v11 - 2);
      v11 -= 2;
      v13 = v12 == v3;
      if (v12 >= v3)
      {
        v14 = 1;
      }

      else
      {
        v14 = -1;
      }

      if (v13)
      {
        v15 = *(a2 - 4);
        v16 = v15 == v4;
        v14 = v15 >= v4 ? 1 : -1;
        if (v16)
        {
          v14 = 0;
        }
      }

      a2 = v11;
    }

    while ((v14 & 0x80) == 0);
  }

LABEL_43:
  if (v10 >= v11)
  {
    v22 = &a1[v2];
  }

  else
  {
    v22 = &a1[v2];
    v23 = v11;
    do
    {
      v24 = *v22;
      v25 = *v23;
      *(v22 + 4) = *(v23 + 4);
      *v22 = v25;
      *v23 = v24;
      *(v23 + 4) = BYTE4(v24);
      v26 = v22;
      do
      {
        v27 = v22[2];
        v22 += 2;
        v28 = v27 == v3;
        if (v27 >= v3)
        {
          v29 = 1;
        }

        else
        {
          v29 = -1;
        }

        if (v28)
        {
          v30 = *(v26 + 12);
          v31 = v30 == v4;
          v29 = v30 >= v4 ? 1 : -1;
          if (v31)
          {
            v29 = 0;
          }
        }

        v26 = v22;
      }

      while (v29 < 0);
      v32 = v23;
      do
      {
        v33 = *(v23 - 2);
        v23 -= 2;
        v34 = v33 == v3;
        if (v33 >= v3)
        {
          v35 = 1;
        }

        else
        {
          v35 = -1;
        }

        if (v34)
        {
          v36 = *(v32 - 4);
          v37 = v36 == v4;
          v35 = v36 >= v4 ? 1 : -1;
          if (v37)
          {
            v35 = 0;
          }
        }

        v32 = v23;
      }

      while ((v35 & 0x80) == 0);
    }

    while (v22 < v23);
  }

  if (v22 - 2 != a1)
  {
    v38 = *(v22 - 2);
    *(a1 + 4) = *(v22 - 4);
    *a1 = v38;
  }

  *(v22 - 2) = v3;
  *(v22 - 4) = v4;
  return v22 - 2;
}

BOOL sub_96068C(uint64_t a1, int *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_95FEDC(a1, (a1 + 8), a2 - 2);
        return 1;
      case 4:
        sub_95FEDC(a1, (a1 + 8), (a1 + 16));
        v36 = a2 - 2;
        v37 = *(a2 - 2);
        v38 = *(a1 + 16);
        v39 = v37 == v38;
        if (v37 >= v38)
        {
          v40 = 1;
        }

        else
        {
          v40 = -1;
        }

        if (v39)
        {
          v41 = *(a2 - 4);
          v42 = *(a1 + 20);
          v9 = v41 >= v42;
          v43 = v41 == v42;
          v40 = -1;
          if (v9)
          {
            v40 = 1;
          }

          if (v43)
          {
            v40 = 0;
          }
        }

        if (v40 < 0)
        {
          v44 = *(a1 + 16);
          v45 = *v36;
          *(a1 + 20) = *(a2 - 4);
          *(a1 + 16) = v45;
          *v36 = v44;
          *(a2 - 4) = BYTE4(v44);
          v46 = *(a1 + 16);
          LODWORD(v44) = *(a1 + 8);
          v47 = v46 == v44;
          if (v46 >= v44)
          {
            v48 = 1;
          }

          else
          {
            v48 = -1;
          }

          if (v47)
          {
            v49 = *(a1 + 20);
            v50 = *(a1 + 12);
            v9 = v49 >= v50;
            v51 = v49 == v50;
            v48 = -1;
            if (v9)
            {
              v48 = 1;
            }

            if (v51)
            {
              v48 = 0;
            }
          }

          if (v48 < 0)
          {
            v52 = *(a1 + 8);
            *(a1 + 12) = *(a1 + 20);
            *(a1 + 8) = *(a1 + 16);
            *(a1 + 16) = v52;
            *(a1 + 20) = BYTE4(v52);
            LODWORD(v52) = *(a1 + 8);
            v53 = v52 == *a1;
            if (v52 >= *a1)
            {
              v54 = 1;
            }

            else
            {
              v54 = -1;
            }

            if (v53)
            {
              v55 = *(a1 + 12);
              v56 = *(a1 + 4);
              v9 = v55 >= v56;
              v57 = v55 == v56;
              v54 = -1;
              if (v9)
              {
                v54 = 1;
              }

              if (v57)
              {
                v54 = 0;
              }
            }

            if (v54 < 0)
            {
              v58 = *a1;
              *a1 = *(a1 + 8);
              *(a1 + 4) = *(a1 + 12);
              *(a1 + 8) = v58;
              *(a1 + 12) = BYTE4(v58);
            }
          }
        }

        return 1;
      case 5:
        sub_960088(a1, (a1 + 8), (a1 + 16), (a1 + 24), a2 - 2);
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = a2 - 2;
      v4 = *(a2 - 2);
      v5 = v4 == *a1;
      if (v4 >= *a1)
      {
        v6 = 1;
      }

      else
      {
        v6 = -1;
      }

      if (v5)
      {
        v7 = *(a2 - 4);
        v8 = *(a1 + 4);
        v9 = v7 >= v8;
        v10 = v7 == v8;
        v6 = -1;
        if (v9)
        {
          v6 = 1;
        }

        if (v10)
        {
          v6 = 0;
        }
      }

      if (v6 < 0)
      {
        v11 = *a1;
        v12 = *v3;
        *(a1 + 4) = *(a2 - 4);
        *a1 = v12;
        *v3 = v11;
        *(a2 - 4) = BYTE4(v11);
        return 1;
      }

      return 1;
    }
  }

  v14 = (a1 + 16);
  sub_95FEDC(a1, (a1 + 8), (a1 + 16));
  v17 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    if (*v17 >= *v14)
    {
      v20 = 1;
    }

    else
    {
      v20 = -1;
    }

    if (*v17 == *v14)
    {
      v21 = *(v17 + 4);
      v22 = *(v14 + 4);
      v23 = v21 == v22;
      v20 = v21 >= v22 ? 1 : -1;
      if (v23)
      {
        v20 = 0;
      }
    }

    if (v20 < 0)
    {
      break;
    }

LABEL_50:
    v14 = v17;
    v18 += 8;
    v17 += 2;
    if (v17 == a2)
    {
      return 1;
    }
  }

  v24 = *v17;
  v25 = *(v17 + 4);
  v26 = v18;
  do
  {
    v27 = a1 + v26;
    *(v27 + 24) = *(a1 + v26 + 16);
    *(v27 + 28) = *(a1 + v26 + 20);
    if (v26 == -16)
    {
      *a1 = v24;
      *(a1 + 4) = v25;
      if (++v19 != 8)
      {
        goto LABEL_50;
      }

      return v17 + 2 == a2;
    }

    v28 = *(v27 + 8);
    v29 = v28 == v24;
    if (v28 <= v24)
    {
      v30 = 1;
    }

    else
    {
      v30 = -1;
    }

    if (v29)
    {
      v31 = *(a1 + v26 + 12);
      v32 = v31 == v25;
      v30 = v31 <= v25 ? 1 : -1;
      if (v32)
      {
        v30 = 0;
      }
    }

    v26 -= 8;
  }

  while (v30 < 0);
  v33 = a1 + v26;
  *(v33 + 24) = v24;
  *(v33 + 28) = v25;
  if (++v19 != 8)
  {
    goto LABEL_50;
  }

  return v17 + 2 == a2;
}

uint64_t sub_9609E8(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = result + 8 * v7;
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v11 = *(v8 + 8);
        v12 = *v8 == v11;
        if (*v8 >= v11)
        {
          v13 = 1;
        }

        else
        {
          v13 = -1;
        }

        if (v12)
        {
          v14 = *(v8 + 4);
          v15 = *(v8 + 12);
          v16 = v14 >= v15;
          v17 = v14 == v15;
          v13 = -1;
          if (v16)
          {
            v13 = 1;
          }

          if (v17)
          {
            v13 = 0;
          }
        }

        if (v13 < 0)
        {
          v8 += 8;
          v7 = v9;
        }

        if (*v8 >= *a4)
        {
          v10 = 1;
        }

        else
        {
          v10 = -1;
        }

        if (*v8 != *a4)
        {
LABEL_8:
          if (v10 < 0)
          {
            return result;
          }

          goto LABEL_32;
        }
      }

      else
      {
        if (*v8 >= *a4)
        {
          v10 = 1;
        }

        else
        {
          v10 = -1;
        }

        if (*v8 != *a4)
        {
          goto LABEL_8;
        }
      }

      v18 = *(v8 + 4);
      v19 = *(a4 + 4);
      v16 = v18 >= v19;
      v20 = v18 == v19;
      v21 = -1;
      if (v16)
      {
        v21 = 1;
      }

      if (v20)
      {
        v21 = 0;
      }

      if ((v21 & 0x80) == 0)
      {
LABEL_32:
        v22 = *a4;
        v23 = *(a4 + 4);
        while (1)
        {
          v24 = a4;
          a4 = v8;
          v25 = *v8;
          *(v24 + 4) = *(a4 + 4);
          *v24 = v25;
          if (v5 < v7)
          {
LABEL_64:
            *a4 = v22;
            *(a4 + 4) = v23;
            return result;
          }

          v26 = (2 * v7) | 1;
          v8 = result + 8 * v26;
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v7 = v26;
            if (*v8 >= v22)
            {
              v33 = 1;
            }

            else
            {
              v33 = -1;
            }

            if (*v8 != v22)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v27 = *(v8 + 8);
            v28 = *v8 == v27;
            if (*v8 >= v27)
            {
              v29 = 1;
            }

            else
            {
              v29 = -1;
            }

            if (v28)
            {
              v30 = *(v8 + 4);
              v31 = *(v8 + 12);
              v32 = v30 == v31;
              v29 = v30 >= v31 ? 1 : -1;
              if (v32)
              {
                v29 = 0;
              }
            }

            if (v29 < 0)
            {
              v8 += 8;
            }

            else
            {
              v7 = v26;
            }

            if (*v8 >= v22)
            {
              v33 = 1;
            }

            else
            {
              v33 = -1;
            }

            if (*v8 != v22)
            {
              goto LABEL_33;
            }
          }

          v34 = *(v8 + 4);
          v35 = v34 == v23;
          if (v34 >= v23)
          {
            v33 = 1;
          }

          else
          {
            v33 = -1;
          }

          if (v35)
          {
            v33 = 0;
          }

LABEL_33:
          if (v33 < 0)
          {
            goto LABEL_64;
          }
        }
      }
    }
  }

  return result;
}

void *sub_960B7C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = result;
    do
    {
      v8 = &v6[v4];
      v9 = v8 + 1;
      v10 = (2 * v4) | 1;
      v4 = 2 * v4 + 2;
      if (v4 >= a4)
      {
        v4 = v10;
      }

      else
      {
        v11 = v8 + 2;
        v12 = *(v8 + 4);
        v13 = *(v8 + 2);
        v14 = v13 == v12;
        if (v13 >= v12)
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
        }

        if (v14)
        {
          v16 = *(v8 + 12);
          v17 = *(v8 + 20);
          v18 = v16 == v17;
          if (v16 >= v17)
          {
            v19 = 1;
          }

          else
          {
            v19 = -1;
          }

          if (v18)
          {
            v15 = 0;
          }

          else
          {
            v15 = v19;
          }
        }

        if (v15 < 0)
        {
          v9 = v11;
        }

        else
        {
          v4 = v10;
        }
      }

      v7 = *v9;
      *(v6 + 4) = *(v9 + 4);
      *v6 = v7;
      v6 = v9;
    }

    while (v4 <= ((a4 - 2) >> 1));
    v20 = (a2 - 8);
    if (v9 == (a2 - 8))
    {
      *v9 = v5;
      *(v9 + 4) = BYTE4(v5);
    }

    else
    {
      v21 = *v20;
      *(v9 + 4) = *(a2 - 4);
      *v9 = v21;
      *(a2 - 4) = BYTE4(v5);
      *v20 = v5;
      v22 = (v9 - result + 8) >> 3;
      v23 = v22 < 2;
      v24 = v22 - 2;
      if (!v23)
      {
        v25 = v24 >> 1;
        v26 = &result[v25];
        if (*v26 >= *v9)
        {
          v27 = 1;
        }

        else
        {
          v27 = -1;
        }

        if (*v26 == *v9)
        {
          v28 = *(v26 + 4);
          v29 = *(v9 + 4);
          v30 = v28 >= v29;
          v31 = v28 == v29;
          v27 = -1;
          if (v30)
          {
            v27 = 1;
          }

          if (v31)
          {
            v27 = 0;
          }
        }

        if (v27 < 0)
        {
          v32 = *v9;
          v33 = *(v9 + 4);
          do
          {
            v34 = v9;
            v9 = v26;
            v35 = *v26;
            *(v34 + 4) = *(v9 + 4);
            *v34 = v35;
            if (!v25)
            {
              break;
            }

            v25 = (v25 - 1) >> 1;
            v26 = &result[v25];
            if (*v26 >= v32)
            {
              v36 = 1;
            }

            else
            {
              v36 = -1;
            }

            if (*v26 == v32)
            {
              v37 = *(v26 + 4);
              v38 = v37 == v33;
              if (v37 >= v33)
              {
                v36 = 1;
              }

              else
              {
                v36 = -1;
              }

              if (v38)
              {
                v36 = 0;
              }
            }
          }

          while (v36 < 0);
          *v9 = v32;
          *(v9 + 4) = v33;
        }
      }
    }
  }

  return result;
}

void sub_960D0C(void *a1, unint64_t a2)
{
  if (0x823EE08FB823EE09 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x8FB823EE08FB83)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_960DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_39A7E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_960E10(uint64_t *a1, void *a2)
{
  result = *a1;
  v5 = a1[1];
  v7 = a2[1] + result - v5;
  if (v5 != result)
  {
    v8 = result;
    v9 = a2[1] + result - v5;
    do
    {
      *v9 = *v8;
      v10 = *(v8 + 16);
      *(v9 + 32) = *(v8 + 32);
      *(v9 + 16) = v10;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 16) = 0;
      *(v9 + 40) = *(v8 + 40);
      *(v9 + 64) = 0;
      *(v9 + 72) = 0;
      *(v9 + 56) = 0;
      *(v9 + 56) = *(v8 + 56);
      *(v9 + 72) = *(v8 + 72);
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      v11 = *(v8 + 80);
      *(v9 + 96) = *(v8 + 96);
      *(v9 + 80) = v11;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 80) = 0;
      *(v9 + 104) = *(v8 + 104);
      *(v9 + 128) = 0;
      *(v9 + 136) = 0;
      *(v9 + 120) = 0;
      *(v9 + 120) = *(v8 + 120);
      *(v9 + 136) = *(v8 + 136);
      *(v8 + 120) = 0;
      *(v8 + 128) = 0;
      *(v8 + 136) = 0;
      v12 = *(v8 + 144);
      *(v9 + 160) = *(v8 + 160);
      *(v9 + 144) = v12;
      *(v8 + 152) = 0;
      *(v8 + 160) = 0;
      *(v8 + 144) = 0;
      *(v9 + 168) = *(v8 + 168);
      *(v9 + 192) = 0;
      *(v9 + 200) = 0;
      *(v9 + 184) = 0;
      *(v9 + 184) = *(v8 + 184);
      *(v9 + 200) = *(v8 + 200);
      *(v8 + 184) = 0;
      *(v8 + 192) = 0;
      *(v8 + 200) = 0;
      v13 = *(v8 + 208);
      *(v9 + 224) = *(v8 + 224);
      *(v9 + 208) = v13;
      *(v8 + 216) = 0;
      *(v8 + 224) = 0;
      *(v8 + 208) = 0;
      *(v9 + 232) = *(v8 + 232);
      *(v9 + 256) = 0;
      *(v9 + 264) = 0;
      *(v9 + 248) = 0;
      *(v9 + 248) = *(v8 + 248);
      *(v9 + 264) = *(v8 + 264);
      *(v8 + 248) = 0;
      *(v8 + 256) = 0;
      *(v8 + 264) = 0;
      v14 = *(v8 + 272);
      *(v9 + 288) = *(v8 + 288);
      *(v9 + 272) = v14;
      *(v8 + 280) = 0;
      *(v8 + 288) = 0;
      *(v8 + 272) = 0;
      *(v9 + 296) = *(v8 + 296);
      *(v9 + 320) = 0;
      *(v9 + 328) = 0;
      *(v9 + 312) = 0;
      *(v9 + 312) = *(v8 + 312);
      *(v9 + 320) = *(v8 + 320);
      *(v8 + 312) = 0;
      *(v8 + 320) = 0;
      *(v8 + 328) = 0;
      v15 = *(v8 + 336);
      *(v9 + 352) = *(v8 + 352);
      *(v9 + 336) = v15;
      *(v8 + 344) = 0;
      *(v8 + 352) = 0;
      *(v8 + 336) = 0;
      *(v9 + 360) = *(v8 + 360);
      *(v9 + 384) = 0;
      *(v9 + 392) = 0;
      *(v9 + 376) = 0;
      *(v9 + 376) = *(v8 + 376);
      *(v9 + 384) = *(v8 + 384);
      *(v8 + 376) = 0;
      *(v8 + 384) = 0;
      *(v8 + 392) = 0;
      v16 = *(v8 + 416);
      *(v9 + 400) = *(v8 + 400);
      *(v9 + 416) = v16;
      *(v9 + 424) = 0;
      *(v9 + 432) = 0;
      *(v9 + 440) = 0;
      *(v9 + 424) = *(v8 + 424);
      *(v9 + 432) = *(v8 + 432);
      *(v8 + 424) = 0;
      *(v8 + 432) = 0;
      *(v8 + 440) = 0;
      *(v9 + 448) = *(v8 + 448);
      v8 += 456;
      v9 += 456;
    }

    while (v8 != v5);
    do
    {
      result = sub_399184(result) + 456;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v17 = *a1;
  *a1 = v7;
  a1[1] = v17;
  a2[1] = v17;
  v18 = a1[1];
  a1[1] = a2[2];
  a2[2] = v18;
  v19 = a1[2];
  a1[2] = a2[3];
  a2[3] = v19;
  *a2 = a2[1];
  return result;
}

uint64_t sub_961080(uint64_t *a1, uint64_t a2)
{
  v2 = 0x823EE08FB823EE09 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x8FB823EE08FB82)
  {
    sub_1794();
  }

  if (0x47DC11F7047DC12 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x47DC11F7047DC12 * ((a1[2] - *a1) >> 3);
  }

  if (0x823EE08FB823EE09 * ((a1[2] - *a1) >> 3) >= 0x47DC11F7047DC1)
  {
    v5 = 0x8FB823EE08FB82;
  }

  else
  {
    v5 = v3;
  }

  v23 = a1;
  if (v5)
  {
    if (v5 <= 0x8FB823EE08FB82)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 456 * v2;
  __p = 0;
  v20 = v6;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(v6 + 40) = *(a2 + 40);
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(v6 + 80) = *(a2 + 80);
  *(v6 + 96) = *(a2 + 96);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(v6 + 104) = *(a2 + 104);
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(v6 + 144) = *(a2 + 144);
  *(v6 + 160) = *(a2 + 160);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(v6 + 168) = *(a2 + 168);
  *(v6 + 184) = *(a2 + 184);
  *(v6 + 200) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  v8 = *(a2 + 208);
  *(v6 + 224) = *(a2 + 224);
  *(v6 + 208) = v8;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(v6 + 232) = *(a2 + 232);
  *(v6 + 248) = *(a2 + 248);
  *(v6 + 264) = *(a2 + 264);
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  v9 = *(a2 + 272);
  *(v6 + 288) = *(a2 + 288);
  *(v6 + 272) = v9;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(v6 + 296) = *(a2 + 296);
  *(v6 + 312) = *(a2 + 312);
  v10 = *(a2 + 320);
  v11 = *(a2 + 336);
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  *(v6 + 352) = *(a2 + 352);
  *(v6 + 320) = v10;
  *(v6 + 336) = v11;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  *(v6 + 360) = *(a2 + 360);
  *(v6 + 376) = *(a2 + 376);
  v12 = *(a2 + 384);
  v13 = *(a2 + 400);
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 376) = 0;
  *(v6 + 384) = v12;
  *(v6 + 400) = v13;
  v14 = *(a2 + 424);
  *(v6 + 416) = *(a2 + 416);
  *(v6 + 424) = v14;
  *(v6 + 432) = *(a2 + 432);
  *(a2 + 432) = 0;
  *(a2 + 440) = 0;
  *(a2 + 424) = 0;
  *(v6 + 448) = *(a2 + 448);
  v21 = 456 * v2 + 456;
  v22 = 0;
  sub_960E10(a1, &__p);
  v15 = a1[1];
  v17 = v20;
  for (i = v21; v21 != v17; i = v21)
  {
    v21 = i - 456;
    sub_399184(i - 456);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v15;
}

void sub_961320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_39A7E8(va);
  _Unwind_Resume(a1);
}

__n128 *sub_961334(__n128 *result, __n128 *a2, unint64_t a3, uint64_t a4, int64_t a5)
{
  v40 = a2;
  v41 = result;
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      v40 = (a2 - 456);
      if (a2[-1].n128_u8[9] > result[28].n128_u8[1])
      {
        return sub_9617C4(&v41, &v40);
      }
    }

    else if (a3 <= 0)
    {
      if (result != a2)
      {
        v13 = &result[28].n128_i8[8];
        if (&result[28].n128_i8[8] != a2)
        {
          v14 = 0;
          v15 = result;
          do
          {
            v17 = v13;
            if (v15[56].n128_u8[9] > v15[28].n128_u8[1])
            {
              v42[0] = *v13;
              v42[1] = *(v15 + 472);
              v18 = v15[32];
              v44 = v15[31];
              v45 = v18;
              v47 = *(&v15[33] + 8);
              v19 = v15[36];
              v49 = v15[35];
              v50 = v19;
              v52 = *(&v15[37] + 8);
              v20 = v15[40];
              v54 = v15[39];
              v55 = v20;
              v57 = *(&v15[41] + 8);
              v21 = v15[44];
              v59 = v15[43];
              v60 = v21;
              v62 = *(&v15[45] + 8);
              v22 = v15[48];
              v64 = v15[47];
              v65 = v22;
              v67 = *(&v15[49] + 8);
              v23 = v15[52];
              v69 = v15[51];
              v43 = v15[30].n128_i64[1];
              v48 = v15[34].n128_i64[1];
              v24 = v15[33].n128_i64[0];
              *(&v15[33] + 8) = 0u;
              v25 = v15[37].n128_i64[0];
              v46 = v24;
              v51 = v25;
              v53 = v15[38].n128_i64[1];
              *(&v15[37] + 8) = 0u;
              v58 = v15[42].n128_i64[1];
              v26 = v15[41].n128_i64[0];
              *(&v15[41] + 8) = 0u;
              v27 = v15[45].n128_i64[0];
              v56 = v26;
              v61 = v27;
              v63 = v15[46].n128_i64[1];
              v15[30] = 0u;
              v15[29].n128_u64[1] = 0;
              v15[32] = 0u;
              v15[33].n128_u64[0] = 0;
              v15[34].n128_u64[1] = 0;
              v15[36] = 0u;
              v15[37].n128_u64[0] = 0;
              v15[38].n128_u64[1] = 0;
              v15[40] = 0u;
              v15[41].n128_u64[0] = 0;
              v15[42].n128_u64[1] = 0;
              v15[44] = 0u;
              v15[45].n128_u64[0] = 0;
              v15[46].n128_u64[1] = 0;
              *(&v15[45] + 8) = 0u;
              v68 = v15[50].n128_i64[1];
              v28 = v15[49].n128_i64[0];
              v15[48] = 0u;
              v15[49].n128_u64[0] = 0;
              v15[50].n128_u64[1] = 0;
              *(&v15[49] + 8) = 0u;
              v70 = v23;
              v29 = v15[53].n128_i64[0];
              v66 = v28;
              v71 = v29;
              v15[52] = 0u;
              v15[53].n128_u64[0] = 0;
              v30 = *(&v15[53] + 8);
              v73 = v15[54].n128_i64[1];
              v72 = v30;
              v74 = v15[55];
              v75 = v15[56].n128_i64[0];
              v15[55] = 0u;
              v15[56].n128_u64[0] = 0;
              v31 = v14;
              v76 = v15[56].n128_i16[4];
              do
              {
                sub_39C6A4(&v6[28].n128_i64[1] + v31, v6 + v31);
                if (!v31)
                {
                  v16 = v6;
                  goto LABEL_15;
                }

                v32 = v6->n128_u8[v31 - 7];
                v31 -= 456;
              }

              while (HIBYTE(v76) > v32);
              v16 = &v6[28].n128_i64[1] + v31;
LABEL_15:
              sub_39C6A4(v16, v42);
              result = sub_399184(v42);
            }

            v13 = &v17[28].n128_i8[8];
            v14 += 456;
            v15 = v17;
          }

          while (&v17[28].n128_i8[8] != a2);
        }
      }
    }

    else
    {
      v7 = a4;
      v8 = a3 >> 1;
      v9 = result + 456 * (a3 >> 1);
      if (a3 <= a5)
      {
        v39 = 0;
        *&v42[0] = a4;
        *(&v42[0] + 1) = &v39;
        sub_961990(result, (result + 456 * (a3 >> 1)), a3 >> 1, a4);
        v39 = v8;
        v33 = a3 - v8;
        v34 = v7 + 456 * v8;
        sub_961990(v9, a2, v33, v34);
        v39 = a3;
        v35 = v7 + 456 * a3;
        v36 = v34;
        while (v36 != v35)
        {
          if (*(v36 + 449) <= *(v7 + 449))
          {
            sub_39C6A4(v6, v7);
            v7 += 456;
            v6 = (v6 + 456);
            if (v7 == v34)
            {
              goto LABEL_32;
            }
          }

          else
          {
            sub_39C6A4(v6, v36);
            v36 += 456;
            v6 = (v6 + 456);
            if (v7 == v34)
            {
LABEL_32:
              while (v36 != v35)
              {
                sub_39C6A4(v6, v36);
                v36 += 456;
                v6 = (v6 + 456);
              }

              goto LABEL_33;
            }
          }
        }

        while (v7 != v34)
        {
          sub_39C6A4(v6, v7);
          v7 += 456;
          v6 = (v6 + 456);
        }

LABEL_33:
        result = *&v42[0];
        if (*&v42[0])
        {
          v37 = *(&v42[0] + 1);
          if (**(&v42[0] + 1))
          {
            v38 = 0;
            do
            {
              ++v38;
              result = (sub_399184(result) + 456);
            }

            while (v38 < *v37);
          }
        }
      }

      else
      {
        sub_961334(result, &result->n128_u64[57 * (a3 >> 1)], a3 >> 1, a4, a5);
        v12 = a3 - v8;
        sub_961334(v9, a2, v12, v7, a5);

        return sub_963270(v6, v9, a2, v8, v12, v7, a5);
      }
    }
  }

  return result;
}

void sub_9617B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_963210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9617C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(v2 + 32);
  v5 = *(v2 + 16);
  v16[0] = *v2;
  v16[1] = v5;
  v17 = v4;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  v18 = *(v2 + 40);
  v19 = *(v2 + 56);
  v20 = *(v2 + 72);
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 56) = 0;
  v6 = *(v2 + 80);
  v22 = *(v2 + 96);
  v21 = v6;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  v23 = *(v2 + 104);
  v24 = *(v2 + 120);
  v25 = *(v2 + 136);
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  v7 = *(v2 + 144);
  v27 = *(v2 + 160);
  v26 = v7;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  v28 = *(v2 + 168);
  v29 = *(v2 + 184);
  v30 = *(v2 + 200);
  *(v2 + 184) = 0;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  v8 = *(v2 + 208);
  v32 = *(v2 + 224);
  v31 = v8;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  *(v2 + 224) = 0;
  v33 = *(v2 + 232);
  v34 = *(v2 + 248);
  v35 = *(v2 + 264);
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 264) = 0;
  v9 = *(v2 + 272);
  v37 = *(v2 + 288);
  v36 = v9;
  *(v2 + 272) = 0;
  *(v2 + 280) = 0;
  *(v2 + 288) = 0;
  v38 = *(v2 + 296);
  v39 = *(v2 + 312);
  v10 = *(v2 + 336);
  v40 = *(v2 + 320);
  *(v2 + 312) = 0;
  *(v2 + 320) = 0;
  *(v2 + 328) = 0;
  v42 = *(v2 + 352);
  v41 = v10;
  *(v2 + 336) = 0;
  *(v2 + 344) = 0;
  *(v2 + 352) = 0;
  v43 = *(v2 + 360);
  v11 = *(v2 + 376);
  v12 = *(v2 + 400);
  v45 = *(v2 + 384);
  v44 = v11;
  *(v2 + 376) = 0;
  *(v2 + 384) = 0;
  *(v2 + 392) = 0;
  v13 = *(v2 + 416);
  v14 = *(v2 + 424);
  v46 = v12;
  v47 = v13;
  v48 = v14;
  v49 = *(v2 + 432);
  *(v2 + 424) = 0;
  *(v2 + 432) = 0;
  *(v2 + 440) = 0;
  v50 = *(v2 + 448);
  sub_39C6A4(v2, v3);
  sub_39C6A4(v3, v16);
  return sub_399184(v16);
}

__n128 sub_961990(uint64_t a1, __n128 *a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = a1;
    if (a3 == 2)
    {
      v17 = &a2[-29].n128_i8[8];
      if (a2[-1].n128_u8[9] <= *(a1 + 449))
      {
        *a4 = *a1;
        v72 = *(a1 + 16);
        *(a4 + 32) = *(a1 + 32);
        *(a4 + 16) = v72;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 16) = 0;
        *(a4 + 40) = *(a1 + 40);
        *(a4 + 64) = 0;
        *(a4 + 72) = 0;
        *(a4 + 56) = 0;
        *(a4 + 56) = *(a1 + 56);
        *(a4 + 72) = *(a1 + 72);
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        v73 = *(a1 + 80);
        *(a4 + 96) = *(a1 + 96);
        *(a4 + 80) = v73;
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        *(a1 + 80) = 0;
        *(a4 + 104) = *(a1 + 104);
        *(a4 + 128) = 0;
        *(a4 + 136) = 0;
        *(a4 + 120) = 0;
        *(a4 + 120) = *(a1 + 120);
        *(a4 + 136) = *(a1 + 136);
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
        *(a1 + 136) = 0;
        v74 = *(a1 + 144);
        *(a4 + 160) = *(a1 + 160);
        *(a4 + 144) = v74;
        *(a1 + 152) = 0;
        *(a1 + 160) = 0;
        *(a1 + 144) = 0;
        *(a4 + 168) = *(a1 + 168);
        *(a4 + 192) = 0;
        *(a4 + 200) = 0;
        *(a4 + 184) = 0;
        *(a4 + 184) = *(a1 + 184);
        *(a4 + 200) = *(a1 + 200);
        *(a1 + 184) = 0;
        *(a1 + 192) = 0;
        *(a1 + 200) = 0;
        v75 = *(a1 + 208);
        *(a4 + 224) = *(a1 + 224);
        *(a4 + 208) = v75;
        *(a1 + 216) = 0;
        *(a1 + 224) = 0;
        *(a1 + 208) = 0;
        *(a4 + 232) = *(a1 + 232);
        *(a4 + 256) = 0;
        *(a4 + 264) = 0;
        *(a4 + 248) = 0;
        *(a4 + 248) = *(a1 + 248);
        *(a4 + 264) = *(a1 + 264);
        *(a1 + 248) = 0;
        *(a1 + 256) = 0;
        *(a1 + 264) = 0;
        v76 = *(a1 + 272);
        *(a4 + 288) = *(a1 + 288);
        *(a4 + 272) = v76;
        *(a1 + 280) = 0;
        *(a1 + 288) = 0;
        *(a1 + 272) = 0;
        *(a4 + 296) = *(a1 + 296);
        *(a4 + 320) = 0;
        *(a4 + 328) = 0;
        *(a4 + 312) = 0;
        *(a4 + 312) = *(a1 + 312);
        *(a4 + 320) = *(a1 + 320);
        *(a1 + 312) = 0;
        *(a1 + 320) = 0;
        *(a1 + 328) = 0;
        v77 = *(a1 + 336);
        *(a4 + 352) = *(a1 + 352);
        *(a4 + 336) = v77;
        *(a1 + 344) = 0;
        *(a1 + 352) = 0;
        *(a1 + 336) = 0;
        *(a4 + 360) = *(a1 + 360);
        *(a4 + 384) = 0;
        *(a4 + 392) = 0;
        *(a4 + 376) = 0;
        *(a4 + 376) = *(a1 + 376);
        *(a4 + 384) = *(a1 + 384);
        *(a1 + 376) = 0;
        *(a1 + 384) = 0;
        *(a1 + 392) = 0;
        v78 = *(a1 + 416);
        *(a4 + 400) = *(a1 + 400);
        *(a4 + 416) = v78;
        *(a4 + 424) = 0;
        *(a4 + 432) = 0;
        *(a4 + 440) = 0;
        *(a4 + 424) = *(a1 + 424);
        *(a4 + 432) = *(a1 + 432);
        *(a1 + 424) = 0;
        *(a1 + 432) = 0;
        *(a1 + 440) = 0;
        *(a4 + 448) = *(a1 + 448);
        *(a4 + 456) = *v17;
        v79 = &a2[-28].n128_u64[1];
        v80 = *(&a2[-28] + 8);
        *(a4 + 488) = a2[-27].n128_u64[1];
        *(a4 + 472) = v80;
        v79[1] = 0;
        v79[2] = 0;
        *v79 = 0;
        *(a4 + 496) = a2[-26];
        v81 = a2 - 25;
        *(a4 + 520) = 0;
        *(a4 + 528) = 0;
        *(a4 + 512) = 0;
        *(a4 + 512) = a2[-25];
        *(a4 + 528) = a2[-24].n128_u64[0];
        a2[-25].n128_u64[1] = 0;
        v81->n128_u64[0] = 0;
        v81[1].n128_u64[0] = 0;
        v82 = &a2[-24].n128_u64[1];
        v83 = *(&a2[-24] + 8);
        *(a4 + 552) = a2[-23].n128_u64[1];
        *(a4 + 536) = v83;
        v82[1] = 0;
        v82[2] = 0;
        *v82 = 0;
        *(a4 + 560) = a2[-22];
        v84 = a2 - 21;
        *(a4 + 584) = 0;
        *(a4 + 592) = 0;
        *(a4 + 576) = 0;
        *(a4 + 576) = a2[-21];
        *(a4 + 592) = a2[-20].n128_u64[0];
        a2[-21].n128_u64[1] = 0;
        v84->n128_u64[0] = 0;
        v84[1].n128_u64[0] = 0;
        v85 = &a2[-20].n128_u64[1];
        v86 = *(&a2[-20] + 8);
        *(a4 + 616) = a2[-19].n128_u64[1];
        *(a4 + 600) = v86;
        v85[1] = 0;
        v85[2] = 0;
        *v85 = 0;
        *(a4 + 624) = a2[-18];
        *(a4 + 648) = 0;
        *(a4 + 656) = 0;
        *(a4 + 640) = 0;
        *(a4 + 640) = a2[-17];
        *(a4 + 656) = a2[-16].n128_u64[0];
        a2[-17].n128_u64[1] = 0;
        a2[-17].n128_u64[0] = 0;
        a2[-16].n128_u64[0] = 0;
        v87 = *(&a2[-16] + 8);
        *(a4 + 680) = a2[-15].n128_u64[1];
        *(a4 + 664) = v87;
        a2[-15].n128_u64[0] = 0;
        a2[-15].n128_u64[1] = 0;
        a2[-16].n128_u64[1] = 0;
        *(a4 + 688) = a2[-14];
        *(a4 + 712) = 0;
        *(a4 + 720) = 0;
        *(a4 + 704) = 0;
        *(a4 + 704) = a2[-13];
        *(a4 + 720) = a2[-12].n128_u64[0];
        a2[-13].n128_u64[0] = 0;
        a2[-13].n128_u64[1] = 0;
        a2[-12].n128_u64[0] = 0;
        v88 = *(&a2[-12] + 8);
        *(a4 + 744) = a2[-11].n128_u64[1];
        *(a4 + 728) = v88;
        a2[-11].n128_u64[0] = 0;
        a2[-11].n128_u64[1] = 0;
        a2[-12].n128_u64[1] = 0;
        *(a4 + 752) = a2[-10];
        *(a4 + 776) = 0;
        *(a4 + 784) = 0;
        *(a4 + 768) = 0;
        *(a4 + 768) = a2[-9];
        *(a4 + 784) = a2[-8].n128_u64[0];
        a2[-9].n128_u64[0] = 0;
        a2[-9].n128_u64[1] = 0;
        a2[-8].n128_u64[0] = 0;
        v89 = *(&a2[-8] + 8);
        *(a4 + 808) = a2[-7].n128_u64[1];
        *(a4 + 792) = v89;
        a2[-7].n128_u64[0] = 0;
        a2[-7].n128_u64[1] = 0;
        a2[-8].n128_u64[1] = 0;
        *(a4 + 816) = a2[-6];
        *(a4 + 840) = 0;
        *(a4 + 848) = 0;
        *(a4 + 832) = 0;
        *(a4 + 832) = a2[-5];
        *(a4 + 848) = a2[-4].n128_u64[0];
        a2[-5].n128_u64[0] = 0;
        a2[-5].n128_u64[1] = 0;
        a2[-4].n128_u64[0] = 0;
        v90 = *(&a2[-4] + 8);
        *(a4 + 872) = a2[-3].n128_u64[1];
        *(a4 + 856) = v90;
        *(a4 + 880) = 0;
        *(a4 + 896) = 0;
        *(a4 + 888) = 0;
        result = a2[-2];
        *(a4 + 880) = result;
        *(a4 + 896) = a2[-1].n128_u64[0];
        a2[-2].n128_u64[0] = 0;
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        v15 = (a4 + 904);
        v16 = &a2[-1].n128_u16[4];
      }

      else
      {
        *a4 = *v17;
        v18 = &a2[-28].n128_u64[1];
        v19 = *(&a2[-28] + 8);
        *(a4 + 32) = a2[-27].n128_u64[1];
        *(a4 + 16) = v19;
        v18[1] = 0;
        v18[2] = 0;
        *v18 = 0;
        *(a4 + 40) = a2[-26];
        v20 = a2 - 25;
        *(a4 + 64) = 0;
        *(a4 + 72) = 0;
        *(a4 + 56) = 0;
        *(a4 + 56) = a2[-25];
        *(a4 + 72) = a2[-24].n128_u64[0];
        a2[-25].n128_u64[1] = 0;
        v20->n128_u64[0] = 0;
        v20[1].n128_u64[0] = 0;
        v21 = &a2[-24].n128_u64[1];
        v22 = *(&a2[-24] + 8);
        *(a4 + 96) = a2[-23].n128_u64[1];
        *(a4 + 80) = v22;
        v21[1] = 0;
        v21[2] = 0;
        *v21 = 0;
        *(a4 + 104) = a2[-22];
        v23 = a2 - 21;
        *(a4 + 128) = 0;
        *(a4 + 136) = 0;
        *(a4 + 120) = 0;
        *(a4 + 120) = a2[-21];
        *(a4 + 136) = a2[-20].n128_u64[0];
        a2[-21].n128_u64[1] = 0;
        v23->n128_u64[0] = 0;
        v23[1].n128_u64[0] = 0;
        v24 = &a2[-20].n128_u64[1];
        v25 = *(&a2[-20] + 8);
        *(a4 + 160) = a2[-19].n128_u64[1];
        *(a4 + 144) = v25;
        v24[1] = 0;
        v24[2] = 0;
        *v24 = 0;
        *(a4 + 168) = a2[-18];
        *(a4 + 192) = 0;
        *(a4 + 200) = 0;
        *(a4 + 184) = 0;
        *(a4 + 184) = a2[-17];
        *(a4 + 200) = a2[-16].n128_u64[0];
        a2[-17].n128_u64[1] = 0;
        a2[-17].n128_u64[0] = 0;
        a2[-16].n128_u64[0] = 0;
        v26 = *(&a2[-16] + 8);
        *(a4 + 224) = a2[-15].n128_u64[1];
        *(a4 + 208) = v26;
        a2[-15].n128_u64[0] = 0;
        a2[-15].n128_u64[1] = 0;
        a2[-16].n128_u64[1] = 0;
        *(a4 + 232) = a2[-14];
        *(a4 + 256) = 0;
        *(a4 + 264) = 0;
        *(a4 + 248) = 0;
        *(a4 + 248) = a2[-13];
        *(a4 + 264) = a2[-12].n128_u64[0];
        a2[-13].n128_u64[0] = 0;
        a2[-13].n128_u64[1] = 0;
        a2[-12].n128_u64[0] = 0;
        v27 = *(&a2[-12] + 8);
        *(a4 + 288) = a2[-11].n128_u64[1];
        *(a4 + 272) = v27;
        a2[-11].n128_u64[0] = 0;
        a2[-11].n128_u64[1] = 0;
        a2[-12].n128_u64[1] = 0;
        *(a4 + 296) = a2[-10];
        *(a4 + 320) = 0;
        *(a4 + 328) = 0;
        *(a4 + 312) = 0;
        *(a4 + 312) = a2[-9];
        *(a4 + 328) = a2[-8].n128_u64[0];
        a2[-9].n128_u64[0] = 0;
        a2[-9].n128_u64[1] = 0;
        a2[-8].n128_u64[0] = 0;
        v28 = *(&a2[-8] + 8);
        *(a4 + 352) = a2[-7].n128_u64[1];
        *(a4 + 336) = v28;
        a2[-7].n128_u64[0] = 0;
        a2[-7].n128_u64[1] = 0;
        a2[-8].n128_u64[1] = 0;
        *(a4 + 360) = a2[-6];
        *(a4 + 384) = 0;
        *(a4 + 392) = 0;
        *(a4 + 376) = 0;
        *(a4 + 376) = a2[-5];
        *(a4 + 392) = a2[-4].n128_u64[0];
        a2[-5].n128_u64[0] = 0;
        a2[-5].n128_u64[1] = 0;
        a2[-4].n128_u64[0] = 0;
        v29 = *(&a2[-4] + 8);
        *(a4 + 416) = a2[-3].n128_u64[1];
        *(a4 + 400) = v29;
        *(a4 + 432) = 0;
        *(a4 + 440) = 0;
        *(a4 + 424) = 0;
        *(a4 + 424) = a2[-2];
        *(a4 + 440) = a2[-1].n128_u64[0];
        a2[-2].n128_u64[0] = 0;
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        *(a4 + 448) = a2[-1].n128_u16[4];
        *(a4 + 456) = *a1;
        v30 = *(a1 + 16);
        *(a4 + 488) = *(a1 + 32);
        *(a4 + 472) = v30;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 16) = 0;
        *(a4 + 496) = *(a1 + 40);
        *(a4 + 520) = 0;
        *(a4 + 528) = 0;
        *(a4 + 512) = 0;
        *(a4 + 512) = *(a1 + 56);
        *(a4 + 528) = *(a1 + 72);
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        v31 = *(a1 + 80);
        *(a4 + 552) = *(a1 + 96);
        *(a4 + 536) = v31;
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        *(a1 + 80) = 0;
        *(a4 + 560) = *(a1 + 104);
        *(a4 + 584) = 0;
        *(a4 + 592) = 0;
        *(a4 + 576) = 0;
        *(a4 + 576) = *(a1 + 120);
        *(a4 + 592) = *(a1 + 136);
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
        *(a1 + 136) = 0;
        v32 = *(a1 + 144);
        *(a4 + 616) = *(a1 + 160);
        *(a4 + 600) = v32;
        *(a1 + 152) = 0;
        *(a1 + 160) = 0;
        *(a1 + 144) = 0;
        *(a4 + 624) = *(a1 + 168);
        *(a4 + 648) = 0;
        *(a4 + 656) = 0;
        *(a4 + 640) = 0;
        *(a4 + 640) = *(a1 + 184);
        *(a4 + 656) = *(a1 + 200);
        *(a1 + 184) = 0;
        *(a1 + 192) = 0;
        *(a1 + 200) = 0;
        v33 = *(a1 + 208);
        *(a4 + 680) = *(a1 + 224);
        *(a4 + 664) = v33;
        *(a1 + 216) = 0;
        *(a1 + 224) = 0;
        *(a1 + 208) = 0;
        *(a4 + 688) = *(a1 + 232);
        *(a4 + 712) = 0;
        *(a4 + 720) = 0;
        *(a4 + 704) = 0;
        *(a4 + 704) = *(a1 + 248);
        *(a4 + 720) = *(a1 + 264);
        *(a1 + 248) = 0;
        *(a1 + 256) = 0;
        *(a1 + 264) = 0;
        v34 = *(a1 + 272);
        *(a4 + 744) = *(a1 + 288);
        *(a4 + 728) = v34;
        *(a1 + 280) = 0;
        *(a1 + 288) = 0;
        *(a1 + 272) = 0;
        *(a4 + 752) = *(a1 + 296);
        *(a4 + 776) = 0;
        *(a4 + 784) = 0;
        *(a4 + 768) = 0;
        *(a4 + 768) = *(a1 + 312);
        *(a4 + 784) = *(a1 + 328);
        *(a1 + 312) = 0;
        *(a1 + 320) = 0;
        *(a1 + 328) = 0;
        v35 = *(a1 + 336);
        *(a4 + 808) = *(a1 + 352);
        *(a4 + 792) = v35;
        *(a1 + 344) = 0;
        *(a1 + 352) = 0;
        *(a1 + 336) = 0;
        *(a4 + 816) = *(a1 + 360);
        *(a4 + 840) = 0;
        *(a4 + 848) = 0;
        *(a4 + 832) = 0;
        *(a4 + 832) = *(a1 + 376);
        *(a4 + 848) = *(a1 + 392);
        *(a1 + 376) = 0;
        *(a1 + 384) = 0;
        *(a1 + 392) = 0;
        v36 = *(a1 + 400);
        *(a4 + 872) = *(a1 + 416);
        *(a4 + 856) = v36;
        *(a4 + 880) = 0;
        *(a4 + 896) = 0;
        *(a4 + 888) = 0;
        result = *(a1 + 424);
        *(a4 + 880) = result;
        *(a4 + 896) = *(a1 + 440);
        *(a1 + 424) = 0;
        *(a1 + 432) = 0;
        *(a1 + 440) = 0;
        v15 = (a4 + 904);
        v16 = (a1 + 448);
      }

      goto LABEL_21;
    }

    if (a3 == 1)
    {
      *a4 = *a1;
      v7 = *(a1 + 16);
      *(a4 + 32) = *(a1 + 32);
      *(a4 + 16) = v7;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      *(a4 + 40) = *(a1 + 40);
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = 0;
      *(a4 + 56) = *(a1 + 56);
      *(a4 + 72) = *(a1 + 72);
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      v8 = *(a1 + 80);
      *(a4 + 96) = *(a1 + 96);
      *(a4 + 80) = v8;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      *(a1 + 80) = 0;
      *(a4 + 104) = *(a1 + 104);
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = 0;
      *(a4 + 120) = *(a1 + 120);
      *(a4 + 136) = *(a1 + 136);
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      v9 = *(a1 + 144);
      *(a4 + 160) = *(a1 + 160);
      *(a4 + 144) = v9;
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      *(a1 + 144) = 0;
      *(a4 + 168) = *(a1 + 168);
      *(a4 + 192) = 0;
      *(a4 + 200) = 0;
      *(a4 + 184) = 0;
      *(a4 + 184) = *(a1 + 184);
      *(a4 + 200) = *(a1 + 200);
      *(a1 + 184) = 0;
      *(a1 + 192) = 0;
      *(a1 + 200) = 0;
      v10 = *(a1 + 208);
      *(a4 + 224) = *(a1 + 224);
      *(a4 + 208) = v10;
      *(a1 + 216) = 0;
      *(a1 + 224) = 0;
      *(a1 + 208) = 0;
      *(a4 + 232) = *(a1 + 232);
      *(a4 + 256) = 0;
      *(a4 + 264) = 0;
      *(a4 + 248) = 0;
      *(a4 + 248) = *(a1 + 248);
      *(a4 + 264) = *(a1 + 264);
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      v11 = *(a1 + 272);
      *(a4 + 288) = *(a1 + 288);
      *(a4 + 272) = v11;
      *(a1 + 280) = 0;
      *(a1 + 288) = 0;
      *(a1 + 272) = 0;
      *(a4 + 296) = *(a1 + 296);
      *(a4 + 320) = 0;
      *(a4 + 328) = 0;
      *(a4 + 312) = 0;
      *(a4 + 312) = *(a1 + 312);
      *(a4 + 320) = *(a1 + 320);
      *(a1 + 312) = 0;
      *(a1 + 320) = 0;
      *(a1 + 328) = 0;
      v12 = *(a1 + 336);
      *(a4 + 352) = *(a1 + 352);
      *(a4 + 336) = v12;
      *(a1 + 344) = 0;
      *(a1 + 352) = 0;
      *(a1 + 336) = 0;
      *(a4 + 360) = *(a1 + 360);
      *(a4 + 384) = 0;
      *(a4 + 392) = 0;
      *(a4 + 376) = 0;
      *(a4 + 376) = *(a1 + 376);
      *(a4 + 384) = *(a1 + 384);
      *(a1 + 376) = 0;
      *(a1 + 384) = 0;
      *(a1 + 392) = 0;
      v13 = *(a1 + 416);
      *(a4 + 400) = *(a1 + 400);
      *(a4 + 416) = v13;
      *(a4 + 424) = 0;
      *(a4 + 432) = 0;
      *(a4 + 440) = 0;
      *(a4 + 424) = *(a1 + 424);
      result = *(a1 + 432);
      *(a4 + 432) = result;
      *(a1 + 424) = 0;
      *(a1 + 432) = 0;
      *(a1 + 440) = 0;
      v15 = (a4 + 448);
      v16 = (a1 + 448);
LABEL_21:
      *v15 = *v16;
      return result;
    }

    if (a3 > 8)
    {
      v91 = a3 >> 1;
      v92 = 456 * (a3 >> 1);
      v93 = (v92 + a1);
      sub_961334(a1, (v92 + a1), v91, a4, v91);
      sub_961334(v92 + v6, a2, a3 - v91, v4 + v92, a3 - v91);
      v95 = v92 + v6;
      while (v95 != a2)
      {
        if (*(v95 + 449) <= *(v6 + 449))
        {
          *v4 = *v6;
          v96 = *(v6 + 16);
          *(v4 + 32) = *(v6 + 32);
          *(v4 + 16) = v96;
          *(v6 + 24) = 0;
          *(v6 + 32) = 0;
          *(v6 + 16) = 0;
          *(v4 + 40) = *(v6 + 40);
          *(v4 + 64) = 0;
          *(v4 + 72) = 0;
          *(v4 + 56) = 0;
          *(v4 + 56) = *(v6 + 56);
          *(v4 + 72) = *(v6 + 72);
          *(v6 + 56) = 0;
          *(v6 + 64) = 0;
          *(v6 + 72) = 0;
          v97 = *(v6 + 80);
          *(v4 + 96) = *(v6 + 96);
          *(v4 + 80) = v97;
          *(v6 + 88) = 0;
          *(v6 + 96) = 0;
          *(v6 + 80) = 0;
          *(v4 + 104) = *(v6 + 104);
          *(v4 + 128) = 0;
          *(v4 + 136) = 0;
          *(v4 + 120) = 0;
          *(v4 + 120) = *(v6 + 120);
          *(v4 + 136) = *(v6 + 136);
          *(v6 + 120) = 0;
          *(v6 + 128) = 0;
          *(v6 + 136) = 0;
          v98 = *(v6 + 144);
          *(v4 + 160) = *(v6 + 160);
          *(v4 + 144) = v98;
          *(v6 + 152) = 0;
          *(v6 + 160) = 0;
          *(v6 + 144) = 0;
          *(v4 + 168) = *(v6 + 168);
          *(v4 + 192) = 0;
          *(v4 + 200) = 0;
          *(v4 + 184) = 0;
          *(v4 + 184) = *(v6 + 184);
          *(v4 + 200) = *(v6 + 200);
          *(v6 + 184) = 0;
          *(v6 + 192) = 0;
          *(v6 + 200) = 0;
          v99 = *(v6 + 208);
          *(v4 + 224) = *(v6 + 224);
          *(v4 + 208) = v99;
          *(v6 + 216) = 0;
          *(v6 + 224) = 0;
          *(v6 + 208) = 0;
          *(v4 + 232) = *(v6 + 232);
          *(v4 + 256) = 0;
          *(v4 + 264) = 0;
          *(v4 + 248) = 0;
          *(v4 + 248) = *(v6 + 248);
          *(v4 + 264) = *(v6 + 264);
          *(v6 + 248) = 0;
          *(v6 + 256) = 0;
          *(v6 + 264) = 0;
          v100 = *(v6 + 272);
          *(v4 + 288) = *(v6 + 288);
          *(v4 + 272) = v100;
          *(v6 + 280) = 0;
          *(v6 + 288) = 0;
          *(v6 + 272) = 0;
          *(v4 + 296) = *(v6 + 296);
          *(v4 + 320) = 0;
          *(v4 + 328) = 0;
          *(v4 + 312) = 0;
          *(v4 + 312) = *(v6 + 312);
          *(v4 + 320) = *(v6 + 320);
          *(v6 + 312) = 0;
          *(v6 + 320) = 0;
          *(v6 + 328) = 0;
          v101 = *(v6 + 336);
          *(v4 + 352) = *(v6 + 352);
          *(v4 + 336) = v101;
          *(v6 + 344) = 0;
          *(v6 + 352) = 0;
          *(v6 + 336) = 0;
          *(v4 + 360) = *(v6 + 360);
          *(v4 + 384) = 0;
          *(v4 + 392) = 0;
          *(v4 + 376) = 0;
          *(v4 + 376) = *(v6 + 376);
          *(v4 + 384) = *(v6 + 384);
          *(v6 + 376) = 0;
          *(v6 + 384) = 0;
          *(v6 + 392) = 0;
          v102 = *(v6 + 416);
          *(v4 + 400) = *(v6 + 400);
          *(v4 + 416) = v102;
          *(v4 + 424) = 0;
          *(v4 + 432) = 0;
          *(v4 + 440) = 0;
          *(v4 + 424) = *(v6 + 424);
          result = *(v6 + 432);
          *(v4 + 432) = result;
          *(v6 + 424) = 0;
          *(v6 + 432) = 0;
          *(v6 + 440) = 0;
          v103 = v6;
          v6 += 456;
          *(v4 + 448) = *(v103 + 448);
          v4 += 456;
          if (v6 == v93)
          {
            goto LABEL_28;
          }
        }

        else
        {
          *v4 = *v95;
          v104 = *(v95 + 16);
          *(v4 + 32) = *(v95 + 32);
          *(v4 + 16) = v104;
          *(v95 + 24) = 0;
          *(v95 + 32) = 0;
          *(v95 + 16) = 0;
          *(v4 + 40) = *(v95 + 40);
          *(v4 + 64) = 0;
          *(v4 + 72) = 0;
          *(v4 + 56) = 0;
          *(v4 + 56) = *(v95 + 56);
          *(v4 + 72) = *(v95 + 72);
          *(v95 + 56) = 0;
          *(v95 + 64) = 0;
          *(v95 + 72) = 0;
          v105 = *(v95 + 80);
          *(v4 + 96) = *(v95 + 96);
          *(v4 + 80) = v105;
          *(v95 + 88) = 0;
          *(v95 + 96) = 0;
          *(v95 + 80) = 0;
          *(v4 + 104) = *(v95 + 104);
          *(v4 + 128) = 0;
          *(v4 + 136) = 0;
          *(v4 + 120) = 0;
          *(v4 + 120) = *(v95 + 120);
          *(v4 + 136) = *(v95 + 136);
          *(v95 + 120) = 0;
          *(v95 + 128) = 0;
          *(v95 + 136) = 0;
          v106 = *(v95 + 144);
          *(v4 + 160) = *(v95 + 160);
          *(v4 + 144) = v106;
          *(v95 + 152) = 0;
          *(v95 + 160) = 0;
          *(v95 + 144) = 0;
          *(v4 + 168) = *(v95 + 168);
          *(v4 + 192) = 0;
          *(v4 + 200) = 0;
          *(v4 + 184) = 0;
          *(v4 + 184) = *(v95 + 184);
          *(v4 + 200) = *(v95 + 200);
          *(v95 + 184) = 0;
          *(v95 + 192) = 0;
          *(v95 + 200) = 0;
          v107 = *(v95 + 208);
          *(v4 + 224) = *(v95 + 224);
          *(v4 + 208) = v107;
          *(v95 + 216) = 0;
          *(v95 + 224) = 0;
          *(v95 + 208) = 0;
          *(v4 + 232) = *(v95 + 232);
          *(v4 + 256) = 0;
          *(v4 + 264) = 0;
          *(v4 + 248) = 0;
          *(v4 + 248) = *(v95 + 248);
          *(v4 + 264) = *(v95 + 264);
          *(v95 + 248) = 0;
          *(v95 + 256) = 0;
          *(v95 + 264) = 0;
          v108 = *(v95 + 272);
          *(v4 + 288) = *(v95 + 288);
          *(v4 + 272) = v108;
          *(v95 + 280) = 0;
          *(v95 + 288) = 0;
          *(v95 + 272) = 0;
          *(v4 + 296) = *(v95 + 296);
          *(v4 + 320) = 0;
          *(v4 + 328) = 0;
          *(v4 + 312) = 0;
          *(v4 + 312) = *(v95 + 312);
          *(v4 + 320) = *(v95 + 320);
          *(v95 + 312) = 0;
          *(v95 + 320) = 0;
          *(v95 + 328) = 0;
          v109 = *(v95 + 336);
          *(v4 + 352) = *(v95 + 352);
          *(v4 + 336) = v109;
          *(v95 + 344) = 0;
          *(v95 + 352) = 0;
          *(v95 + 336) = 0;
          *(v4 + 360) = *(v95 + 360);
          *(v4 + 384) = 0;
          *(v4 + 392) = 0;
          *(v4 + 376) = 0;
          *(v4 + 376) = *(v95 + 376);
          *(v4 + 384) = *(v95 + 384);
          *(v95 + 376) = 0;
          *(v95 + 384) = 0;
          *(v95 + 392) = 0;
          v110 = *(v95 + 416);
          *(v4 + 400) = *(v95 + 400);
          *(v4 + 416) = v110;
          *(v4 + 424) = 0;
          *(v4 + 432) = 0;
          *(v4 + 440) = 0;
          *(v4 + 424) = *(v95 + 424);
          result = *(v95 + 432);
          *(v4 + 432) = result;
          *(v95 + 424) = 0;
          *(v95 + 432) = 0;
          *(v95 + 440) = 0;
          v111 = v95;
          v95 += 456;
          *(v4 + 448) = *(v111 + 448);
          v4 += 456;
          if (v6 == v93)
          {
LABEL_28:
            if (v95 != a2)
            {
              v112 = 0;
              do
              {
                v113 = v95 + v112;
                v114 = v4 + v112;
                *v114 = *(v95 + v112);
                v115 = *(v95 + v112 + 16);
                *(v114 + 32) = *(v95 + v112 + 32);
                *(v114 + 16) = v115;
                *(v113 + 24) = 0;
                *(v113 + 32) = 0;
                *(v113 + 16) = 0;
                v116 = *(v95 + v112 + 40);
                *(v114 + 64) = 0;
                *(v114 + 72) = 0;
                *(v114 + 40) = v116;
                *(v114 + 56) = 0;
                *(v114 + 56) = *(v95 + v112 + 56);
                *(v114 + 72) = *(v95 + v112 + 72);
                *(v113 + 56) = 0;
                *(v113 + 64) = 0;
                *(v113 + 72) = 0;
                v117 = *(v95 + v112 + 80);
                *(v114 + 96) = *(v95 + v112 + 96);
                *(v114 + 80) = v117;
                *(v113 + 88) = 0;
                *(v113 + 96) = 0;
                *(v113 + 80) = 0;
                v118 = *(v95 + v112 + 104);
                *(v114 + 128) = 0;
                *(v114 + 136) = 0;
                *(v114 + 104) = v118;
                *(v114 + 120) = 0;
                *(v114 + 120) = *(v95 + v112 + 120);
                *(v114 + 136) = *(v95 + v112 + 136);
                *(v113 + 120) = 0;
                *(v113 + 128) = 0;
                *(v113 + 136) = 0;
                v119 = *(v95 + v112 + 144);
                *(v114 + 160) = *(v95 + v112 + 160);
                *(v114 + 144) = v119;
                *(v113 + 152) = 0;
                *(v113 + 160) = 0;
                *(v113 + 144) = 0;
                *(v114 + 168) = *(v95 + v112 + 168);
                *(v114 + 192) = 0;
                *(v114 + 200) = 0;
                *(v114 + 184) = 0;
                *(v114 + 184) = *(v95 + v112 + 184);
                *(v114 + 200) = *(v95 + v112 + 200);
                *(v113 + 184) = 0;
                *(v113 + 192) = 0;
                v120 = *(v95 + v112 + 208);
                v121 = *(v95 + v112 + 224);
                *(v113 + 200) = 0;
                *(v114 + 224) = v121;
                *(v114 + 208) = v120;
                *(v113 + 216) = 0;
                *(v113 + 224) = 0;
                v122 = *(v95 + v112 + 232);
                *(v113 + 208) = 0;
                *(v114 + 232) = v122;
                *(v114 + 256) = 0;
                *(v114 + 264) = 0;
                *(v114 + 248) = 0;
                *(v114 + 248) = *(v95 + v112 + 248);
                *(v114 + 264) = *(v95 + v112 + 264);
                *(v113 + 248) = 0;
                *(v113 + 256) = 0;
                *(v113 + 264) = 0;
                v123 = *(v95 + v112 + 272);
                *(v114 + 288) = *(v95 + v112 + 288);
                *(v114 + 272) = v123;
                *(v113 + 280) = 0;
                *(v113 + 288) = 0;
                *(v113 + 272) = 0;
                v124 = *(v95 + v112 + 296);
                *(v114 + 320) = 0;
                *(v114 + 328) = 0;
                *(v4 + v112 + 296) = v124;
                *(v114 + 312) = 0;
                *(v114 + 312) = *(v95 + v112 + 312);
                *(v114 + 320) = *(v95 + v112 + 320);
                *(v113 + 312) = 0;
                *(v113 + 320) = 0;
                *(v113 + 328) = 0;
                v125 = *(v95 + v112 + 336);
                *(v114 + 352) = *(v95 + v112 + 352);
                *(v114 + 336) = v125;
                *(v113 + 344) = 0;
                *(v113 + 352) = 0;
                v126 = *(v95 + v112 + 360);
                *(v113 + 336) = 0;
                *(v4 + v112 + 360) = v126;
                *(v114 + 384) = 0;
                *(v114 + 392) = 0;
                *(v114 + 376) = 0;
                *(v114 + 376) = *(v95 + v112 + 376);
                *(v114 + 384) = *(v95 + v112 + 384);
                *(v113 + 376) = 0;
                *(v113 + 384) = 0;
                *(v113 + 392) = 0;
                v127 = *(v95 + v112 + 416);
                *(v114 + 400) = *(v95 + v112 + 400);
                *(v114 + 432) = 0;
                *(v114 + 440) = 0;
                *(v114 + 416) = v127;
                *(v114 + 424) = 0;
                *(v114 + 424) = *(v95 + v112 + 424);
                result = *(v95 + v112 + 432);
                *(v114 + 432) = result;
                *(v113 + 424) = 0;
                *(v113 + 432) = 0;
                *(v113 + 440) = 0;
                *(v114 + 448) = *(v95 + v112 + 448);
                v112 += 456;
              }

              while ((v113 + 456) != a2);
            }

            return result;
          }
        }
      }

      if (v6 != v93)
      {
        v128 = 0;
        do
        {
          v129 = (v6 + v128);
          v130 = v4 + v128;
          *v130 = *(v6 + v128);
          v131 = *(v6 + v128 + 16);
          *(v130 + 32) = *(v6 + v128 + 32);
          *(v130 + 16) = v131;
          v129[3] = 0;
          v129[4] = 0;
          v129[2] = 0;
          v132 = *(v6 + v128 + 40);
          *(v130 + 64) = 0;
          *(v130 + 72) = 0;
          *(v130 + 40) = v132;
          *(v130 + 56) = 0;
          *(v130 + 56) = *(v6 + v128 + 56);
          *(v130 + 72) = *(v6 + v128 + 72);
          v129[7] = 0;
          v129[8] = 0;
          v129[9] = 0;
          v133 = *(v6 + v128 + 80);
          *(v130 + 96) = *(v6 + v128 + 96);
          *(v130 + 80) = v133;
          v129[11] = 0;
          v129[12] = 0;
          v129[10] = 0;
          v134 = *(v6 + v128 + 104);
          *(v130 + 128) = 0;
          *(v130 + 136) = 0;
          *(v130 + 104) = v134;
          *(v130 + 120) = 0;
          *(v130 + 120) = *(v6 + v128 + 120);
          *(v130 + 136) = *(v6 + v128 + 136);
          v129[15] = 0;
          v129[16] = 0;
          v129[17] = 0;
          v135 = *(v6 + v128 + 144);
          *(v130 + 160) = *(v6 + v128 + 160);
          *(v130 + 144) = v135;
          v129[19] = 0;
          v129[20] = 0;
          v129[18] = 0;
          *(v130 + 168) = *(v6 + v128 + 168);
          *(v130 + 192) = 0;
          *(v130 + 200) = 0;
          *(v130 + 184) = 0;
          *(v130 + 184) = *(v6 + v128 + 184);
          *(v130 + 200) = *(v6 + v128 + 200);
          v129[23] = 0;
          v129[24] = 0;
          v136 = *(v6 + v128 + 208);
          v137 = *(v6 + v128 + 224);
          v129[25] = 0;
          *(v130 + 224) = v137;
          *(v130 + 208) = v136;
          v129[27] = 0;
          v129[28] = 0;
          v138 = *(v6 + v128 + 232);
          v129[26] = 0;
          *(v130 + 232) = v138;
          *(v130 + 256) = 0;
          *(v130 + 264) = 0;
          *(v130 + 248) = 0;
          *(v130 + 248) = *(v6 + v128 + 248);
          *(v130 + 264) = *(v6 + v128 + 264);
          v129[31] = 0;
          v129[32] = 0;
          v129[33] = 0;
          v139 = *(v6 + v128 + 272);
          *(v130 + 288) = *(v6 + v128 + 288);
          *(v130 + 272) = v139;
          v129[35] = 0;
          v129[36] = 0;
          v129[34] = 0;
          v140 = *(v6 + v128 + 296);
          *(v130 + 320) = 0;
          *(v130 + 328) = 0;
          *(v4 + v128 + 296) = v140;
          *(v130 + 312) = 0;
          *(v130 + 312) = *(v6 + v128 + 312);
          *(v130 + 320) = *(v6 + v128 + 320);
          v129[39] = 0;
          v129[40] = 0;
          v129[41] = 0;
          v141 = *(v6 + v128 + 336);
          *(v130 + 352) = *(v6 + v128 + 352);
          *(v130 + 336) = v141;
          v129[43] = 0;
          v129[44] = 0;
          v142 = *(v6 + v128 + 360);
          v129[42] = 0;
          *(v4 + v128 + 360) = v142;
          *(v130 + 384) = 0;
          *(v130 + 392) = 0;
          *(v130 + 376) = 0;
          *(v130 + 376) = *(v6 + v128 + 376);
          *(v130 + 384) = *(v6 + v128 + 384);
          v129[47] = 0;
          v129[48] = 0;
          v129[49] = 0;
          v143 = *(v6 + v128 + 416);
          *(v130 + 400) = *(v6 + v128 + 400);
          *(v130 + 432) = 0;
          *(v130 + 440) = 0;
          *(v130 + 416) = v143;
          *(v130 + 424) = 0;
          *(v130 + 424) = *(v6 + v128 + 424);
          result = *(v6 + v128 + 432);
          *(v130 + 432) = result;
          v129[53] = 0;
          v129[54] = 0;
          v129[55] = 0;
          *(v130 + 448) = *(v6 + v128 + 448);
          v128 += 456;
        }

        while (v129 + 57 != v93);
      }
    }

    else if (a1 != a2)
    {
      *a4 = *a1;
      v37 = *(a1 + 16);
      *(a4 + 32) = *(a1 + 32);
      *(a4 + 16) = v37;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      *(a4 + 40) = *(a1 + 40);
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = 0;
      *(a4 + 56) = *(a1 + 56);
      *(a4 + 72) = *(a1 + 72);
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      v38 = *(a1 + 80);
      *(a4 + 96) = *(a1 + 96);
      *(a4 + 80) = v38;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      *(a1 + 80) = 0;
      *(a4 + 104) = *(a1 + 104);
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = 0;
      *(a4 + 120) = *(a1 + 120);
      *(a4 + 136) = *(a1 + 136);
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      v39 = *(a1 + 144);
      *(a4 + 160) = *(a1 + 160);
      *(a4 + 144) = v39;
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      *(a1 + 144) = 0;
      *(a4 + 168) = *(a1 + 168);
      *(a4 + 192) = 0;
      *(a4 + 200) = 0;
      *(a4 + 184) = 0;
      *(a4 + 184) = *(a1 + 184);
      *(a4 + 200) = *(a1 + 200);
      *(a1 + 184) = 0;
      *(a1 + 192) = 0;
      *(a1 + 200) = 0;
      v40 = *(a1 + 208);
      *(a4 + 224) = *(a1 + 224);
      *(a4 + 208) = v40;
      *(a1 + 216) = 0;
      *(a1 + 224) = 0;
      *(a1 + 208) = 0;
      *(a4 + 232) = *(a1 + 232);
      *(a4 + 256) = 0;
      *(a4 + 264) = 0;
      *(a4 + 248) = 0;
      *(a4 + 248) = *(a1 + 248);
      *(a4 + 264) = *(a1 + 264);
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      v41 = *(a1 + 272);
      *(a4 + 288) = *(a1 + 288);
      *(a4 + 272) = v41;
      *(a1 + 280) = 0;
      *(a1 + 288) = 0;
      *(a1 + 272) = 0;
      *(a4 + 296) = *(a1 + 296);
      *(a4 + 320) = 0;
      *(a4 + 328) = 0;
      *(a4 + 312) = 0;
      *(a4 + 312) = *(a1 + 312);
      *(a4 + 320) = *(a1 + 320);
      *(a1 + 312) = 0;
      *(a1 + 320) = 0;
      *(a1 + 328) = 0;
      v42 = *(a1 + 336);
      *(a4 + 352) = *(a1 + 352);
      *(a4 + 336) = v42;
      *(a1 + 344) = 0;
      *(a1 + 352) = 0;
      *(a1 + 336) = 0;
      *(a4 + 360) = *(a1 + 360);
      *(a4 + 384) = 0;
      *(a4 + 392) = 0;
      *(a4 + 376) = 0;
      *(a4 + 376) = *(a1 + 376);
      *(a4 + 384) = *(a1 + 384);
      *(a1 + 376) = 0;
      *(a1 + 384) = 0;
      *(a1 + 392) = 0;
      v43 = *(a1 + 416);
      *(a4 + 400) = *(a1 + 400);
      *(a4 + 416) = v43;
      *(a4 + 424) = 0;
      *(a4 + 432) = 0;
      *(a4 + 440) = 0;
      *(a4 + 424) = *(a1 + 424);
      result = *(a1 + 432);
      *(a4 + 432) = result;
      *(a1 + 424) = 0;
      *(a1 + 432) = 0;
      *(a1 + 440) = 0;
      *(a4 + 448) = *(a1 + 448);
      v44 = (a1 + 456);
      if ((a1 + 456) != a2)
      {
        v45 = 0;
        v46 = a4;
        do
        {
          v54 = v44;
          v55 = (v46 + 456);
          v56 = (v46 + 472);
          if (*(v6 + 905) <= *(v46 + 449))
          {
            *v55 = *v44;
            v47 = *(v6 + 472);
            *(v46 + 488) = *(v6 + 488);
            *v56 = v47;
            *(v6 + 480) = 0u;
            *(v6 + 472) = 0;
            *(v46 + 496) = *(v6 + 496);
            *(v46 + 520) = 0u;
            *(v46 + 512) = 0;
            *(v46 + 512) = *(v6 + 512);
            *(v46 + 528) = *(v6 + 528);
            *(v6 + 528) = 0;
            *(v6 + 512) = 0u;
            v48 = *(v6 + 536);
            *(v46 + 552) = *(v6 + 552);
            *(v46 + 536) = v48;
            *(v6 + 544) = 0u;
            *(v6 + 536) = 0;
            *(v46 + 560) = *(v6 + 560);
            *(v46 + 584) = 0u;
            *(v46 + 576) = 0;
            *(v46 + 576) = *(v6 + 576);
            *(v46 + 592) = *(v6 + 592);
            *(v6 + 592) = 0;
            *(v6 + 576) = 0u;
            v49 = *(v6 + 600);
            *(v46 + 616) = *(v6 + 616);
            *(v46 + 600) = v49;
            *(v6 + 608) = 0u;
            *(v6 + 600) = 0;
            *(v46 + 624) = *(v6 + 624);
            *(v46 + 648) = 0u;
            *(v46 + 640) = 0;
            *(v46 + 640) = *(v6 + 640);
            *(v46 + 656) = *(v6 + 656);
            *(v6 + 656) = 0;
            *(v6 + 640) = 0u;
            v50 = *(v6 + 664);
            *(v46 + 680) = *(v6 + 680);
            *(v46 + 664) = v50;
            *(v6 + 672) = 0u;
            *(v6 + 664) = 0;
            *(v46 + 688) = *(v6 + 688);
            *(v46 + 712) = 0u;
            *(v46 + 704) = 0;
            *(v46 + 704) = *(v6 + 704);
            *(v46 + 720) = *(v6 + 720);
            *(v6 + 720) = 0;
            *(v6 + 704) = 0u;
            v51 = *(v6 + 728);
            *(v46 + 744) = *(v6 + 744);
            *(v46 + 728) = v51;
            *(v6 + 736) = 0u;
            *(v6 + 728) = 0;
            *(v46 + 752) = *(v6 + 752);
            *(v46 + 776) = 0u;
            *(v46 + 768) = 0;
            *(v46 + 768) = *(v6 + 768);
            *(v46 + 784) = *(v6 + 784);
            *(v6 + 784) = 0;
            *(v6 + 768) = 0u;
            v52 = *(v6 + 792);
            *(v46 + 808) = *(v6 + 808);
            *(v46 + 792) = v52;
            *(v6 + 800) = 0u;
            *(v6 + 792) = 0;
            *(v46 + 816) = *(v6 + 816);
            *(v46 + 840) = 0u;
            *(v46 + 832) = 0;
            *(v46 + 832) = *(v6 + 832);
            *(v46 + 848) = *(v6 + 848);
            *(v6 + 848) = 0;
            *(v6 + 832) = 0u;
            v53 = *(v6 + 856);
            *(v46 + 872) = *(v6 + 872);
            *(v46 + 856) = v53;
            *(v46 + 880) = 0;
            *(v46 + 888) = 0u;
            result = *(v6 + 880);
            *(v46 + 880) = result;
            *(v46 + 896) = *(v6 + 896);
            *(v6 + 896) = 0;
            *(v6 + 880) = 0u;
            *(v46 + 904) = *(v6 + 904);
          }

          else
          {
            v57 = *(v46 + 16);
            *v55 = *v46;
            *v56 = v57;
            *(v46 + 488) = *(v46 + 32);
            *(v46 + 16) = 0;
            *(v46 + 24) = 0;
            *(v46 + 32) = 0;
            v58 = *(v46 + 56);
            *(v46 + 496) = *(v46 + 40);
            *(v46 + 512) = v58;
            *(v46 + 528) = *(v46 + 72);
            *(v46 + 56) = 0;
            *(v46 + 64) = 0;
            v59 = *(v46 + 80);
            *(v46 + 552) = *(v46 + 96);
            *(v46 + 536) = v59;
            *(v46 + 72) = 0;
            *(v46 + 80) = 0;
            *(v46 + 88) = 0;
            *(v46 + 96) = 0;
            v60 = *(v46 + 120);
            *(v46 + 560) = *(v46 + 104);
            *(v46 + 576) = v60;
            *(v46 + 592) = *(v46 + 136);
            *(v46 + 120) = 0;
            *(v46 + 128) = 0;
            v61 = *(v46 + 144);
            *(v46 + 616) = *(v46 + 160);
            *(v46 + 600) = v61;
            *(v46 + 136) = 0;
            *(v46 + 144) = 0;
            *(v46 + 152) = 0;
            *(v46 + 160) = 0;
            v62 = *(v46 + 184);
            *(v46 + 624) = *(v46 + 168);
            *(v46 + 640) = v62;
            *(v46 + 656) = *(v46 + 200);
            *(v46 + 184) = 0;
            *(v46 + 192) = 0;
            v63 = *(v46 + 208);
            *(v46 + 680) = *(v46 + 224);
            *(v46 + 664) = v63;
            *(v46 + 200) = 0;
            *(v46 + 208) = 0;
            *(v46 + 216) = 0;
            *(v46 + 224) = 0;
            v64 = *(v46 + 248);
            *(v46 + 688) = *(v46 + 232);
            *(v46 + 704) = v64;
            *(v46 + 720) = *(v46 + 264);
            *(v46 + 248) = 0;
            *(v46 + 256) = 0;
            v65 = *(v46 + 272);
            *(v46 + 744) = *(v46 + 288);
            *(v46 + 728) = v65;
            *(v46 + 264) = 0;
            *(v46 + 272) = 0;
            *(v46 + 280) = 0;
            *(v46 + 288) = 0;
            v66 = *(v46 + 312);
            *(v46 + 752) = *(v46 + 296);
            *(v46 + 768) = v66;
            *(v46 + 784) = *(v46 + 328);
            *(v46 + 312) = 0;
            *(v46 + 320) = 0;
            *(v46 + 328) = 0;
            v67 = *(v46 + 336);
            *(v46 + 808) = *(v46 + 352);
            *(v46 + 792) = v67;
            *(v46 + 336) = 0;
            *(v46 + 344) = 0;
            *(v46 + 352) = 0;
            v68 = *(v46 + 376);
            *(v46 + 816) = *(v46 + 360);
            *(v46 + 832) = v68;
            *(v46 + 848) = *(v46 + 392);
            *(v46 + 376) = 0;
            *(v46 + 384) = 0;
            *(v46 + 392) = 0;
            v69 = *(v46 + 400);
            *(v46 + 872) = *(v46 + 416);
            *(v46 + 856) = v69;
            *(v46 + 880) = *(v46 + 424);
            *(v46 + 896) = *(v46 + 440);
            *(v46 + 424) = 0;
            *(v46 + 432) = 0;
            *(v46 + 440) = 0;
            v70 = v4;
            *(v46 + 904) = *(v46 + 448);
            if (v46 != v4)
            {
              v71 = v45;
              while (1)
              {
                v70 = v4 + v71;
                if (*(v6 + 905) <= *(v4 + v71 - 7))
                {
                  break;
                }

                v71 -= 456;
                sub_39C6A4(v70, v71 + v4);
                if (!v71)
                {
                  v70 = v4;
                  break;
                }
              }
            }

            sub_39C6A4(v70, v54);
          }

          v44 = (v54 + 456);
          v45 += 456;
          v46 = v55;
          v6 = v54;
        }

        while ((v54 + 456) != a2);
      }
    }
  }

  return result;
}

uint64_t *sub_963210(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      do
      {
        ++v4;
        v2 = sub_399184(v2) + 456;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

void *sub_963270(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v82 = a2;
  v83 = result;
  if (!a5)
  {
    return result;
  }

  v8 = a5;
  v10 = a2;
  v11 = result;
  v12 = a2;
  while (v8 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v13 = 0;
    v14 = -a4;
    while (1)
    {
      v15 = &v11[v13 / 8];
      if (*(v12 + 449) > BYTE1(v11[v13 / 8 + 56]))
      {
        break;
      }

      v13 += 456;
      if (__CFADD__(v14++, 1))
      {
        return result;
      }
    }

    v83 = &v11[v13 / 8];
    v17 = -v14;
    v79 = a6;
    if (-v14 >= v8)
    {
      if (v14 == -1)
      {
        return sub_9617C4(&v83, &v82);
      }

      v25 = v17 / 2;
      v10 = &v11[57 * (v17 / 2) + v13 / 8];
      v19 = a3;
      if (a3 != v12)
      {
        v27 = 0x823EE08FB823EE09 * ((a3 - v12) >> 3);
        v19 = v12;
        do
        {
          v28 = v27 >> 1;
          v29 = &v19[57 * (v27 >> 1)];
          v30 = *(v29 + 449);
          v31 = v29 + 57;
          v27 += ~(v27 >> 1);
          if (v30 > *(v10 + 449))
          {
            v19 = v31;
          }

          else
          {
            v27 = v28;
          }
        }

        while (v27);
      }

      v18 = 0x823EE08FB823EE09 * ((v19 - v12) >> 3);
      if (v10 != v12)
      {
LABEL_19:
        if (v12 == v19)
        {
          v11 = v10;
        }

        else
        {
          v84 = v12;
          v85 = v10;
          while (1)
          {
            sub_9617C4(&v85, &v84);
            v11 = (v85 + 456);
            v26 = v84 + 456;
            v84 = v26;
            v85 += 456;
            if (v26 == v19)
            {
              break;
            }

            if (v11 == v12)
            {
              v12 = v26;
            }
          }

          if (v11 != v12)
          {
            do
            {
              v84 = v12;
              while (1)
              {
                sub_9617C4(&v85, &v84);
                v32 = v85 + 456;
                v33 = v84 + 456;
                v84 = v33;
                v85 += 456;
                if (v33 == v19)
                {
                  break;
                }

                if (v32 == v12)
                {
                  v12 = v33;
                }
              }
            }

            while (v32 != v12);
          }
        }

        goto LABEL_43;
      }
    }

    else
    {
      v18 = v8 / 2;
      v19 = (v10 + 456 * (v8 / 2));
      if (v10 - v11 != v13)
      {
        v20 = 0x823EE08FB823EE09 * ((v10 - v11 - v13) >> 3);
        v10 = &v11[v13 / 8];
        do
        {
          v21 = v20 >> 1;
          v22 = v10 + 456 * (v20 >> 1);
          v23 = *(v22 + 449);
          v24 = v22 + 456;
          v20 += ~(v20 >> 1);
          if (v23 < *(v19 + 449))
          {
            v20 = v21;
          }

          else
          {
            v10 = v24;
          }
        }

        while (v20);
      }

      v25 = 0x823EE08FB823EE09 * ((v10 - v11 - v13) >> 3);
      if (v10 != v12)
      {
        goto LABEL_19;
      }
    }

    v11 = v19;
LABEL_43:
    v34 = v25;
    a4 = -(v25 + v14);
    v35 = v8 - v18;
    if ((v34 + v18) >= (v8 - (v34 + v18) - v14))
    {
      v36 = v19;
      a6 = v79;
      result = sub_963270(v11, v36, a3, a4, v8 - v18, v79, a7);
      a4 = v34;
      a3 = v11;
      v82 = v10;
      v12 = v10;
      v11 = v15;
      v8 = v18;
      if (!v18)
      {
        return result;
      }
    }

    else
    {
      result = sub_963270(v15, v10, v11, v34, v18, v79, a7);
      v10 = v19;
      a6 = v79;
      v82 = v10;
      v83 = v11;
      v12 = v10;
      v8 -= v18;
      if (!v35)
      {
        return result;
      }
    }
  }

  if (a4 <= v8)
  {
    if (v11 == v12)
    {
      return result;
    }

    v59 = 0;
    v38 = 0;
    do
    {
      v60 = &v11[v59];
      v61 = a6 + v59 * 8;
      *v61 = *&v11[v59];
      v62 = *&v11[v59 + 2];
      *(v61 + 32) = v11[v59 + 4];
      *(v61 + 16) = v62;
      v60[3] = 0;
      v60[4] = 0;
      v60[2] = 0;
      v63 = *&v11[v59 + 5];
      *(v61 + 64) = 0;
      *(v61 + 72) = 0;
      *(v61 + 56) = 0;
      *(v61 + 40) = v63;
      *(v61 + 56) = *&v11[v59 + 7];
      *(v61 + 72) = v11[v59 + 9];
      v60[7] = 0;
      v60[8] = 0;
      v60[9] = 0;
      v64 = *&v11[v59 + 10];
      *(v61 + 96) = v11[v59 + 12];
      *(v61 + 80) = v64;
      v60[11] = 0;
      v60[12] = 0;
      v60[10] = 0;
      v65 = *&v11[v59 + 13];
      *(v61 + 128) = 0;
      *(v61 + 136) = 0;
      *(v61 + 104) = v65;
      *(v61 + 120) = 0;
      *(v61 + 120) = *&v11[v59 + 15];
      *(v61 + 136) = v11[v59 + 17];
      v60[15] = 0;
      v60[16] = 0;
      v60[17] = 0;
      v66 = *&v11[v59 + 18];
      *(v61 + 160) = v11[v59 + 20];
      *(v61 + 144) = v66;
      v60[19] = 0;
      v60[20] = 0;
      v60[18] = 0;
      v67 = *&v11[v59 + 21];
      *(v61 + 192) = 0;
      *(v61 + 200) = 0;
      *(v61 + 168) = v67;
      *(v61 + 184) = 0;
      *(v61 + 184) = *&v11[v59 + 23];
      *(v61 + 200) = v11[v59 + 25];
      v60[23] = 0;
      v60[24] = 0;
      v60[25] = 0;
      v68 = *&v11[v59 + 26];
      *(v61 + 224) = v11[v59 + 28];
      *(v61 + 208) = v68;
      v60[27] = 0;
      v60[28] = 0;
      v60[26] = 0;
      *(v61 + 232) = *&v11[v59 + 29];
      *(v61 + 256) = 0;
      *(v61 + 264) = 0;
      *(v61 + 248) = 0;
      *(v61 + 248) = *&v11[v59 + 31];
      *(v61 + 264) = v11[v59 + 33];
      v60[31] = 0;
      v60[32] = 0;
      v69 = *&v11[v59 + 34];
      v70 = v11[v59 + 36];
      v60[33] = 0;
      *(v61 + 288) = v70;
      *(v61 + 272) = v69;
      v60[35] = 0;
      v60[36] = 0;
      v60[34] = 0;
      v71 = *&v11[v59 + 37];
      *(v61 + 320) = 0;
      *(v61 + 328) = 0;
      *(v61 + 312) = 0;
      *(a6 + v59 * 8 + 296) = v71;
      *(v61 + 312) = v11[v59 + 39];
      *(v61 + 320) = *&v11[v59 + 40];
      v60[39] = 0;
      v60[40] = 0;
      v60[41] = 0;
      v72 = *&v11[v59 + 42];
      *(v61 + 352) = v11[v59 + 44];
      *(v61 + 336) = v72;
      v60[43] = 0;
      v60[44] = 0;
      v60[42] = 0;
      *(a6 + v59 * 8 + 360) = *&v11[v59 + 45];
      *(v61 + 384) = 0;
      *(v61 + 392) = 0;
      *(v61 + 376) = 0;
      *(v61 + 376) = v11[v59 + 47];
      *(v61 + 384) = *&v11[v59 + 48];
      v60[47] = 0;
      v60[48] = 0;
      v73 = *&v11[v59 + 50];
      v74 = v11[v59 + 52];
      v60[49] = 0;
      *(v61 + 400) = v73;
      *(v61 + 416) = v74;
      *(v61 + 424) = 0;
      *(v61 + 432) = 0;
      *(v61 + 440) = 0;
      *(v61 + 424) = v11[v59 + 53];
      *(v61 + 432) = *&v11[v59 + 54];
      v60[53] = 0;
      v60[54] = 0;
      v60[55] = 0;
      *(v61 + 448) = v11[v59 + 56];
      ++v38;
      v59 += 57;
    }

    while (v60 + 57 != v12);
    v75 = a6 + v59 * 8;
    v76 = a6 + v59 * 8 - 456;
    v77 = a6;
    while (v12 != a3)
    {
      if (*(v12 + 449) <= *(v77 + 449))
      {
        result = sub_39C6A4(v11, v77);
        v77 += 456;
        v11 += 57;
        if (v75 == v77)
        {
          goto LABEL_76;
        }
      }

      else
      {
        result = sub_39C6A4(v11, v12);
        v12 += 456;
        v11 += 57;
        if (v75 == v77)
        {
          goto LABEL_76;
        }
      }
    }

    do
    {
      result = sub_39C6A4(v11, v77);
      v11 += 57;
      v78 = v76 == v77;
      v77 += 456;
    }

    while (!v78);
  }

  else
  {
    if (v12 == a3)
    {
      return result;
    }

    v37 = 0;
    v38 = 0;
    do
    {
      v39 = a6 + v37;
      v40 = (v12 + v37);
      *v39 = *(v12 + v37);
      v41 = *(v12 + v37 + 16);
      *(v39 + 32) = *(v12 + v37 + 32);
      *(v39 + 16) = v41;
      v40[3] = 0;
      v40[4] = 0;
      v40[2] = 0;
      v42 = *(v12 + v37 + 40);
      *(v39 + 64) = 0;
      *(v39 + 72) = 0;
      *(v39 + 56) = 0;
      *(v39 + 40) = v42;
      *(v39 + 56) = *(v12 + v37 + 56);
      *(v39 + 72) = *(v12 + v37 + 72);
      v40[7] = 0;
      v40[8] = 0;
      v40[9] = 0;
      v43 = *(v12 + v37 + 80);
      *(v39 + 96) = *(v12 + v37 + 96);
      *(v39 + 80) = v43;
      v40[11] = 0;
      v40[12] = 0;
      v40[10] = 0;
      v44 = *(v12 + v37 + 104);
      *(v39 + 128) = 0;
      *(v39 + 136) = 0;
      *(v39 + 104) = v44;
      *(v39 + 120) = 0;
      *(v39 + 120) = *(v12 + v37 + 120);
      *(v39 + 136) = *(v12 + v37 + 136);
      v40[15] = 0;
      v40[16] = 0;
      v40[17] = 0;
      v45 = *(v12 + v37 + 144);
      *(v39 + 160) = *(v12 + v37 + 160);
      *(v39 + 144) = v45;
      v40[19] = 0;
      v40[20] = 0;
      v40[18] = 0;
      v46 = *(v12 + v37 + 168);
      *(v39 + 192) = 0;
      *(v39 + 200) = 0;
      *(v39 + 168) = v46;
      *(v39 + 184) = 0;
      *(v39 + 184) = *(v12 + v37 + 184);
      *(v39 + 200) = *(v12 + v37 + 200);
      v40[23] = 0;
      v40[24] = 0;
      v40[25] = 0;
      v47 = *(v12 + v37 + 208);
      *(v39 + 224) = *(v12 + v37 + 224);
      *(v39 + 208) = v47;
      v40[27] = 0;
      v40[28] = 0;
      v40[26] = 0;
      *(v39 + 232) = *(v12 + v37 + 232);
      *(v39 + 256) = 0;
      *(v39 + 264) = 0;
      *(v39 + 248) = 0;
      *(v39 + 248) = *(v12 + v37 + 248);
      *(v39 + 264) = *(v12 + v37 + 264);
      v40[31] = 0;
      v40[32] = 0;
      v48 = *(v12 + v37 + 272);
      v49 = *(v12 + v37 + 288);
      v40[33] = 0;
      *(v39 + 288) = v49;
      *(v39 + 272) = v48;
      v40[35] = 0;
      v40[36] = 0;
      v40[34] = 0;
      v50 = *(v12 + v37 + 296);
      *(v39 + 320) = 0;
      *(v39 + 328) = 0;
      *(v39 + 312) = 0;
      *(a6 + v37 + 296) = v50;
      *(v39 + 312) = *(v12 + v37 + 312);
      *(v39 + 320) = *(v12 + v37 + 320);
      v40[39] = 0;
      v40[40] = 0;
      v40[41] = 0;
      v51 = *(v12 + v37 + 336);
      *(v39 + 352) = *(v12 + v37 + 352);
      *(v39 + 336) = v51;
      v40[43] = 0;
      v40[44] = 0;
      v40[42] = 0;
      *(a6 + v37 + 360) = *(v12 + v37 + 360);
      *(v39 + 384) = 0;
      *(v39 + 392) = 0;
      *(v39 + 376) = 0;
      *(v39 + 376) = *(v12 + v37 + 376);
      *(v39 + 384) = *(v12 + v37 + 384);
      v40[47] = 0;
      v40[48] = 0;
      v52 = *(v12 + v37 + 400);
      v53 = *(v12 + v37 + 416);
      v40[49] = 0;
      *(v39 + 400) = v52;
      *(v39 + 416) = v53;
      *(v39 + 424) = 0;
      *(v39 + 432) = 0;
      *(v39 + 440) = 0;
      *(v39 + 424) = *(v12 + v37 + 424);
      *(v39 + 432) = *(v12 + v37 + 432);
      v40[53] = 0;
      v40[54] = 0;
      v40[55] = 0;
      *(v39 + 448) = *(v12 + v37 + 448);
      ++v38;
      v37 += 456;
    }

    while (v40 + 57 != a3);
    v54 = a3 - 57;
    v55 = a6 + v37;
    while (v12 != v11)
    {
      v56 = *(v12 - 7);
      v57 = *(v55 - 7);
      if (v57 <= v56)
      {
        v58 = v55 - 456;
      }

      else
      {
        v58 = v12 - 456;
      }

      if (v57 <= v56)
      {
        v55 -= 456;
      }

      else
      {
        v12 -= 456;
      }

      result = sub_39C6A4(v54, v58);
      v54 -= 57;
      if (v55 == a6)
      {
        goto LABEL_76;
      }
    }

    while (v55 != a6)
    {
      v55 -= 456;
      result = sub_39C6A4(v54, v55);
      v54 -= 57;
    }
  }

LABEL_76:
  if (a6)
  {
    do
    {
      result = sub_399184(a6);
      a6 += 456;
      --v38;
    }

    while (v38);
  }

  return result;
}

uint64_t *sub_963AA8(uint64_t *result, void *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 3;
    v8 = (v6 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(8 * v7) = *a2;
    v12 = 8 * v7 + 8;
    memcpy(0, v5, v6);
    *v2 = 0;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    result = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    *v4 = *a2;
    *(v2 + 8) = v4 + 1;
  }

  return result;
}

uint64_t *sub_963BCC(void *a1, void *a2, void *a3)
{
  v3 = *a2;
  v4 = __ROR8__(*a2, 32);
  v5 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) >> 33));
  v6 = v5 ^ (v5 >> 33);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5 ^ (v5 >> 33);
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v11[1];
      if (v14 == v6)
      {
        if (*(v11 + 4) == v3 && *(v11 + 5) == HIDWORD(v3))
        {
          return v11;
        }
      }

      else if ((v14 & (*&v7 - 1)) != v9)
      {
        goto LABEL_31;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_31;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_31;
    }
  }

  if (*(v11 + 4) != v3 || *(v11 + 5) != HIDWORD(v3))
  {
    goto LABEL_12;
  }

  return v11;
}

uint64_t *sub_963F44(void *a1, void *a2, void *a3)
{
  v3 = *a2;
  v4 = __ROR8__(*a2, 32);
  v5 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) >> 33));
  v6 = v5 ^ (v5 >> 33);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5 ^ (v5 >> 33);
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v11[1];
      if (v14 == v6)
      {
        if (*(v11 + 4) == v3 && *(v11 + 5) == HIDWORD(v3))
        {
          return v11;
        }
      }

      else if ((v14 & (*&v7 - 1)) != v9)
      {
        goto LABEL_31;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_31;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_31;
    }
  }

  if (*(v11 + 4) != v3 || *(v11 + 5) != HIDWORD(v3))
  {
    goto LABEL_12;
  }

  return v11;
}