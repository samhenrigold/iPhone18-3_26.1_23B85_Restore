void *sub_5DED70(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (v8[2] == v3)
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_12;
  }

  return v8;
}

void sub_5DF0A4()
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
  xmmword_2796FA0 = 0u;
  *algn_2796FB0 = 0u;
  dword_2796FC0 = 1065353216;
  sub_3A9A34(&xmmword_2796FA0, v0, v0);
  sub_3A9A34(&xmmword_2796FA0, v3, v3);
  sub_3A9A34(&xmmword_2796FA0, __p, __p);
  sub_3A9A34(&xmmword_2796FA0, v9, v9);
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
    qword_2796F78 = 0;
    qword_2796F80 = 0;
    qword_2796F70 = 0;
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

void sub_5DF2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2796F88)
  {
    qword_2796F90 = qword_2796F88;
    operator delete(qword_2796F88);
  }

  _Unwind_Resume(exception_object);
}

void sub_5DF398(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 32) == 1 && (v4 = *(a1 + 8), v4[1449] == 1) && v4[1463] == 1 && v4[1415] == 1 && sub_68C7DC(a2) > *(a1 + 40) && !sub_4D1F6C(a2) && (nullsub_1(), *(*(v7 + 8) - 1132) == 1) && sub_5E12AC(a1))
  {
    nullsub_1();
    v9 = *(v8 + 8);
    v10 = (v9 - 1376);
    v11 = *(v9 - 1568);
    v14 = *(v9 - 1560);
    v13 = v11;
    if (*(v9 - 1353) < 0)
    {
      sub_325C(&__p, *v10, *(v9 - 1368));
    }

    else
    {
      v12 = *v10;
      v16 = *(v9 - 1360);
      __p = v12;
    }

    sub_5E0DD0(a3, &v13);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    bzero(a3, 0xA30uLL);

    sub_5E0C58(a3);
  }
}

void sub_5DF4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5DF518(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 32) == 1 && (v4 = *(a1 + 8), v4[1449] == 1) && v4[1463] == 1 && v4[1415] == 1 && sub_68C7DC(a2) > *(a1 + 40) && !sub_4D1F6C(a2) && (nullsub_1(), *(*(v7 + 8) - 1132) == 1) && sub_5E12AC(a1))
  {
    nullsub_1();
    v9 = *(v8 + 8);
    v10 = (v9 - 1376);
    v11 = *(v9 - 1568);
    v14 = *(v9 - 1560);
    v13 = v11;
    if (*(v9 - 1353) < 0)
    {
      sub_325C(&__p, *v10, *(v9 - 1368));
    }

    else
    {
      v12 = *v10;
      v16 = *(v9 - 1360);
      __p = v12;
    }

    sub_5E0DD0(a3, &v13);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    bzero(a3, 0xA30uLL);

    sub_5E0C58(a3);
  }
}

void sub_5DF67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5DF698(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 32) == 1 && (v4 = *(a1 + 8), v4[1449] == 1) && v4[1463] == 1 && v4[1415] == 1 && sub_68C7DC(a2) > *(a1 + 40) && !sub_4D1F6C(a2) && (nullsub_1(), *(*(v7 + 8) - 1132) == 1) && sub_5E12AC(a1))
  {
    nullsub_1();
    v9 = *(v8 + 8);
    v10 = (v9 - 1376);
    v11 = *(v9 - 1568);
    v14 = *(v9 - 1560);
    v13 = v11;
    if (*(v9 - 1353) < 0)
    {
      sub_325C(&__p, *v10, *(v9 - 1368));
    }

    else
    {
      v12 = *v10;
      v16 = *(v9 - 1360);
      __p = v12;
    }

    sub_5E0DD0(a3, &v13);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    bzero(a3, 0xA30uLL);

    sub_5E0C58(a3);
  }
}

void sub_5DF7FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5DF818(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = a4;
  sub_21E2C18(a3, 0, *(a4 + 968));
}

void sub_5DF958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1F1A8(v17 + 16);
  _Unwind_Resume(a1);
}

void sub_5DF984(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_3AF4C0(a2);

  sub_5DF818(a1, a2, v6, a3);
}

void sub_5DF9E0(uint64_t a1, void *a2)
{
  v11 = 7;
  strcpy(__p, "enabled");
  v4 = sub_5F9D0(a2, __p);
  if (v11 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  strcpy(__p, "route_min_length_miles");
  v11 = 22;
  v6 = sub_63D34(a2, __p) * 160934.4;
  if (v6 >= 0.0)
  {
    v7 = v6;
    if (v6 >= 4.50359963e15)
    {
      goto LABEL_9;
    }

    v8 = (v6 + v6) + 1;
  }

  else
  {
    v7 = v6;
    if (v6 <= -4.50359963e15)
    {
      goto LABEL_9;
    }

    v8 = (v6 + v6) - 1 + (((v6 + v6) - 1) >> 63);
  }

  v7 = (v8 >> 1);
LABEL_9:
  if (v7 >= 9.22337204e18)
  {
    *(a1 + 8) = 0x7FFFFFFFFFFFFFFELL;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    operator delete(*__p);
LABEL_20:
    operator new();
  }

  if (v6 >= 0.0)
  {
    if (v6 >= 4.50359963e15)
    {
      goto LABEL_18;
    }

    v9 = (v6 + v6) + 1;
  }

  else
  {
    if (v6 <= -4.50359963e15)
    {
      goto LABEL_18;
    }

    v9 = (v6 + v6) - 1 + (((v6 + v6) - 1) >> 63);
  }

  v6 = (v9 >> 1);
LABEL_18:
  *(a1 + 8) = v6;
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  goto LABEL_19;
}

void sub_5DFECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_5DFEFC(uint64_t *a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_3AF6B4(*a1);
  sub_2B3C60(v4, (a2 + 2856), *(v3 + 16), &__p);
  v5 = __p;
  v6 = v28;
  v7 = 0.0;
  if (__p == v28)
  {
    goto LABEL_26;
  }

  v26 = v3;
  v8 = 0;
  v9 = 0;
  do
  {
    v11 = v5[2];
    v12 = *(v5 + 6);
    v13 = v11 | (v12 << 32);
    v14 = sub_2B51D8(v4, v13);
    if (*(v4 + 7772) == 1)
    {
      v15 = sub_30C50C(v4 + 3896, v11, 0);
      v16 = &v15[-*v15];
      if (*v16 < 5u)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(v16 + 2);
        if (v17)
        {
          v17 += &v15[*&v15[v17]];
        }
      }

      v18 = (v17 + 4 * v12 + 4 + *(v17 + 4 * v12 + 4));
    }

    else
    {
      v18 = 0;
    }

    sub_31D7E8(v4, v13, 1);
    v19 = (v14 - *v14);
    v20 = *v19;
    if (v20 < 9)
    {
      v21 = 0;
      v22 = (v18 - *v18);
      if (*v22 < 0x11u)
      {
        goto LABEL_5;
      }

LABEL_19:
      v23 = v22[8];
      if (v23 && (*(v18 + v23) & 8) != 0)
      {
        if (v20 < 9)
        {
          v10 = 0;
        }

        else
        {
          v10 = v19[4];
          if (v10)
          {
            v10 = *(v14 + v10);
          }
        }

        v8 += v10;
      }

      goto LABEL_5;
    }

    v21 = v19[4];
    if (v19[4])
    {
      v21 = *(v14 + v21);
    }

    v22 = (v18 - *v18);
    if (*v22 >= 0x11u)
    {
      goto LABEL_19;
    }

LABEL_5:
    v9 += v21;
    v5 += 12;
  }

  while (v5 != v6);
  v3 = v26;
  if (v9)
  {
    v7 = v8 / v9;
  }

LABEL_26:
  v24 = *(v3 + 9);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  return v7 > v24;
}

void sub_5E00E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5E00FC(uint64_t a4@<X8>)
{
  sub_64B998(a4);
  *(a4 + 168) = 0;
  *(a4 + 160) = 0;
  *(a4 + 176) = 0;
  *(a4 + 184) = 0;
  sub_64B998(a4 + 192);
  *(a4 + 384) = 0;
  *(a4 + 392) = -1;
  *(a4 + 395) = -1;
  *(a4 + 407) = 0;
  *(a4 + 415) = 0;
  *(a4 + 399) = 0;
  *(a4 + 423) = 0;
  *(a4 + 440) = 0;
  *(a4 + 448) = 0;
  *(a4 + 432) = 0;
  *(a4 + 456) = 0;
  *(a4 + 464) = 0u;
  *(a4 + 480) = 0u;
  *(a4 + 160) = 1;
  operator new();
}

void sub_5E06DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  *(v51 + 176) = v52;
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  sub_5E11FC(&a46);
  if (*(v53 - 105) < 0)
  {
    operator delete(*(v53 - 128));
  }

  sub_55A8B4(v51);
  _Unwind_Resume(a1);
}

void sub_5E09EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

double sub_5E0A1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 32) == 1)
  {
    v4 = *(a1 + 8);
    if (v4[1449] == 1 && v4[1463] == 1 && v4[1415] == 1 && sub_9BD118(a2) > *(a1 + 40) && *(a2 + 3292) == 1 && sub_5DFEFC(a1, a2))
    {

      sub_5E00FC(a3);
    }
  }

  sub_64B998(a3);
  *(a3 + 168) = 0;
  *(a3 + 160) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  sub_64B998(a3 + 192);
  result = 0.0;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 392) = -1;
  *(a3 + 395) = -1;
  *(a3 + 399) = 0;
  *(a3 + 407) = 0;
  *(a3 + 415) = 0;
  *(a3 + 423) = 0;
  *(a3 + 432) = 0;
  *(a3 + 440) = 0;
  *(a3 + 448) = 0;
  *(a3 + 456) = 0;
  *(a3 + 480) = 0u;
  return result;
}

void sub_5E0B44(_Unwind_Exception *a1)
{
  sub_5E0B60(v2);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

char **sub_5E0B60(char **a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            do
            {
              v8 = *(v6 - 1);
              v6 -= 3;
              if (v8 < 0)
              {
                operator delete(*v6);
              }
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v9 = v3 - 800;
        v10 = *(v3 - 8);
        if (v10 != -1)
        {
          (off_266BAA0[v10])(&v12, v3 - 800);
        }

        *(v3 - 8) = -1;
        v3 -= 800;
      }

      while (v9 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_5E0C58(uint64_t a1)
{
  *a1 = 52;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_529078(a1 + 32);
  *(a1 + 1152) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1175) = 0u;
  *(a1 + 1191) = 0u;
  *(a1 + 1207) = 0u;
  *(a1 + 1223) = 0u;
  *(a1 + 1248) = 2;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 13;
  *(a1 + 1312) = 0x7FFFFFFF;
  *(a1 + 1316) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 1328) = 0u;
  *(a1 + 1344) = 0x7FFFFFFF;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1400) = xmmword_22983D0;
  *(a1 + 1416) = 0;
  *(a1 + 1440) = 0;
  *(a1 + 1424) = 0u;
  *(a1 + 1448) = -1;
  *(a1 + 1456) = 0x7FFFFFFF;
  *(a1 + 1480) = 0;
  *(a1 + 1464) = 0u;
  sub_529078(a1 + 1488);
  return a1;
}

void sub_5E0D40(_Unwind_Exception *a1)
{
  if (*(v1 + 1487) < 0)
  {
    operator delete(*v5);
    if ((*(v1 + 1447) & 0x80000000) == 0)
    {
LABEL_3:
      sub_528FAC((v1 + 1376));
      if ((*(v1 + 1375) & 0x80000000) == 0)
      {
LABEL_5:
        sub_51B73C(v1 + 1248);
        sub_5294D8((v1 + 1176));
        sub_55F440(v1 + 32);
        if (*(v1 + 31) < 0)
        {
          operator delete(*v2);
        }

        _Unwind_Resume(a1);
      }

LABEL_4:
      operator delete(*v3);
      goto LABEL_5;
    }
  }

  else if ((*(v1 + 1447) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v4);
  sub_528FAC((v1 + 1376));
  if ((*(v1 + 1375) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

uint64_t sub_5E0DD0(uint64_t a1, uint64_t *a2)
{
  *a1 = 52;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_529078(a1 + 32);
  *(a1 + 1152) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1175) = 0u;
  *(a1 + 1191) = 0u;
  *(a1 + 1207) = 0u;
  *(a1 + 1223) = 0u;
  *(a1 + 1248) = 2;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 13;
  *(a1 + 1312) = 0x7FFFFFFF;
  *(a1 + 1316) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 1328) = 0u;
  *(a1 + 1344) = 0x7FFFFFFF;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1400) = xmmword_22983D0;
  *(a1 + 1416) = 0;
  *(a1 + 1440) = 0;
  *(a1 + 1424) = 0u;
  v4 = *a2;
  *(a1 + 1456) = *(a2 + 2);
  *(a1 + 1448) = v4;
  if (*(a2 + 39) < 0)
  {
    sub_325C((a1 + 1464), a2[2], a2[3]);
  }

  else
  {
    v5 = *(a2 + 1);
    *(a1 + 1480) = a2[4];
    *(a1 + 1464) = v5;
  }

  sub_529078(a1 + 1488);
  return a1;
}

void sub_5E0EDC(_Unwind_Exception *a1)
{
  if (*(v1 + 1447) < 0)
  {
    operator delete(*(v1 + 1424));
    sub_528FAC((v1 + 1376));
    if ((*(v1 + 1375) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_528FAC((v1 + 1376));
    if ((*(v1 + 1375) & 0x80000000) == 0)
    {
LABEL_4:
      sub_51B73C(v1 + 1248);
      sub_5294D8((v1 + 1176));
      sub_55F440(v1 + 32);
      if (*(v1 + 31) < 0)
      {
        operator delete(*v2);
      }

      _Unwind_Resume(a1);
    }
  }

  operator delete(*v3);
  goto LABEL_4;
}

uint64_t sub_5E0F80(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8F5C28F5C28F5C29 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x51EB851EB851EBLL)
  {
    sub_1794();
  }

  if (0x1EB851EB851EB852 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((a1[2] - *a1) >> 5);
  }

  if (0x8F5C28F5C28F5C29 * ((a1[2] - *a1) >> 5) >= 0x28F5C28F5C28F5)
  {
    v5 = 0x51EB851EB851EBLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x51EB851EB851EBLL)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 32 * ((a1[1] - *a1) >> 5);
  v6 = sub_55BC9C(v12, a2);
  *(v6 + 768) = 2;
  *(v6 + 776) = 0;
  *(v6 + 792) = 0;
  *(v6 + 784) = 0;
  v7 = 800 * v2 + 800;
  v8 = a1[1];
  v9 = v12 + *a1 - v8;
  sub_55B144(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  a1[1] = v7;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_5E10D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5E10E8(va);
  _Unwind_Resume(a1);
}

void **sub_5E10E8(void **a1)
{
  sub_5E111C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_5E111C(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 800;
    v4 = *(i - 24);
    if (v4)
    {
      v5 = *(i - 16);
      v6 = *(i - 24);
      if (v5 != v4)
      {
        do
        {
          v7 = *(v5 - 1);
          v5 -= 3;
          if (v7 < 0)
          {
            operator delete(*v5);
          }
        }

        while (v5 != v4);
        v6 = *(i - 24);
      }

      *(i - 16) = v4;
      operator delete(v6);
    }

    v8 = *(i - 32);
    if (v8 != -1)
    {
      (off_266BAA0[v8])(&v9, i - 800);
    }

    *(i - 32) = -1;
  }
}

uint64_t sub_5E11FC(uint64_t a1)
{
  sub_53A868(a1 + 592);
  sub_53A868(a1 + 432);
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
    if ((*(a1 + 391) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 352);
      if (v2 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 391) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 368));
  v2 = *(a1 + 352);
  if (v2 != -1)
  {
LABEL_7:
    (off_266BA50[v2])(&v4, a1 + 320);
  }

LABEL_8:
  *(a1 + 352) = -1;
  sub_53A868(a1 + 160);
  return sub_53A868(a1);
}

BOOL sub_5E12AC(uint64_t a1)
{
  nullsub_1();
  v3 = *(v2 + 8);
  sub_4D1E00((v3 - 12656), &v22);
  v4 = 0;
  sub_4D1E24(v3 - 12656, v19);
  v5 = v23;
  v7 = v20;
  v6 = v21;
  if (!v23)
  {
    goto LABEL_10;
  }

LABEL_2:
  v8 = v24;
  v9 = sub_4D1DC0(v5);
  v10 = v9;
  if (v7)
  {
    v11 = sub_4D1DC0(v7);
    if (v8 >= v10 || v6 >= v11)
    {
      if (v8 < v10 != v6 < v11)
      {
        do
        {
LABEL_16:
          v14 = *(sub_4D1F50(v23, v24 - 1) + 8);
          v16 = (v14 - *v14);
          if (*v16 < 0x11u)
          {
            break;
          }

          v17 = v16[8];
          if (!v17 || (*(v14 + v17) & 8) == 0)
          {
            break;
          }

          v4 += sub_4D23F8(v23, --v24, v15);
          sub_4D1E24(v3 - 12656, v19);
          v5 = v23;
          v7 = v20;
          v6 = v21;
          if (v23)
          {
            goto LABEL_2;
          }

LABEL_10:
          ;
        }

        while (v7 && v6 < sub_4D1DC0(v7));
      }
    }

    else
    {
      v13 = sub_4D1F50(v5, v8);
      if (v13 != sub_4D1F50(v7, v6))
      {
        goto LABEL_16;
      }
    }
  }

  else if (v8 < v9)
  {
    goto LABEL_16;
  }

  return v4 >= *(a1 + 48);
}

void sub_5E44E0(_Unwind_Exception *a1)
{
  if (qword_2798018)
  {
    qword_2798020 = qword_2798018;
    operator delete(qword_2798018);
  }

  _Unwind_Resume(a1);
}

void sub_5E47E0(_Unwind_Exception *a1)
{
  sub_5E58CC(v1 + 320);
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_5E4820(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_9274F4(a1, &qword_27988B0);
  if (*(v5 + 23) < 0)
  {
    sub_325C(&v24, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    v24.__r_.__value_.__r.__words[2] = v5[2];
    *&v24.__r_.__value_.__l.__data_ = v6;
  }

  size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v24;
  }

  else
  {
    v8 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  if (byte_279887F >= 0)
  {
    v9 = &qword_2798868;
  }

  else
  {
    v9 = qword_2798868;
  }

  if (byte_279887F >= 0)
  {
    v10 = byte_279887F;
  }

  else
  {
    v10 = unk_2798870;
  }

  if (v10)
  {
    if (size < v10)
    {
      goto LABEL_31;
    }

    v11 = v8 + size;
    v12 = *v9;
    v13 = v8;
    while (1)
    {
      v14 = size - v10;
      if (v14 == -1)
      {
        goto LABEL_31;
      }

      v15 = memchr(v13, v12, v14 + 1);
      if (!v15)
      {
        goto LABEL_31;
      }

      v16 = v15;
      if (!memcmp(v15, v9, v10))
      {
        break;
      }

      v13 = (v16 + 1);
      size = v11 - (v16 + 1);
      if (size < v10)
      {
        goto LABEL_31;
      }
    }

    if (v16 == v11 || (v17 = v16 - v8, v16 - v8 == -1))
    {
LABEL_31:
      sub_64BC20(a3, &v24);
      v22 = 11;
      strcpy(__p, "destination");
      sub_649C24(v23, "{ClientDest}", __p);
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a2 + 23);
  if (v18 >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  if (v18 >= 0)
  {
    v20 = *(a2 + 23);
  }

  else
  {
    v20 = *(a2 + 8);
  }

  std::string::replace(&v24, v17, v10, v19, v20);
  goto LABEL_31;
}

void sub_5E4A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_53F320(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v16);
  if (*(v17 - 89) < 0)
  {
    operator delete(*(v17 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_5E4A4C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1] - *a2;
  v6 = 273;
  if (v5 == 24)
  {
    v6 = 270;
  }

  v7 = &qword_27988E0;
  if (v5 == 24)
  {
    v7 = &qword_27988C8;
  }

  v8 = &unk_27988F7;
  if (v5 == 24)
  {
    v8 = &algn_27988D0[15];
  }

  if (*v8 < 0)
  {
    if (v5 == 24)
    {
      v9 = algn_27988D0;
    }

    else
    {
      v9 = &unk_27988E8;
    }

    v10 = a1;
    sub_325C(v43, qword_2798058[v6], *v9);
    a1 = v10;
  }

  else
  {
    *v43 = *v7;
    v44 = v7[2];
  }

  v11 = sub_9274F4(a1, v43);
  if (*(v11 + 23) < 0)
  {
    sub_325C(&__p, *v11, v11[1]);
  }

  else
  {
    v12 = *v11;
    __p.__r_.__value_.__r.__words[2] = v11[2];
    *&__p.__r_.__value_.__l.__data_ = v12;
  }

  v13 = *a2;
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (byte_2798897 >= 0)
  {
    v16 = &qword_2798880;
  }

  else
  {
    v16 = qword_2798880;
  }

  if (byte_2798897 >= 0)
  {
    v17 = byte_2798897;
  }

  else
  {
    v17 = unk_2798888;
  }

  if (v17)
  {
    if (size >= v17)
    {
      v18 = p_p + size;
      v19 = *v16;
      v20 = p_p;
      do
      {
        v21 = size - v17;
        if (v21 == -1)
        {
          break;
        }

        v22 = memchr(v20, v19, v21 + 1);
        if (!v22)
        {
          break;
        }

        v23 = v22;
        if (!memcmp(v22, v16, v17))
        {
          if (v23 != v18)
          {
            v24 = v23 - p_p;
            if (v23 - p_p != -1)
            {
              goto LABEL_36;
            }
          }

          break;
        }

        v20 = (v23 + 1);
        size = v18 - (v23 + 1);
      }

      while (size >= v17);
    }
  }

  else
  {
    v24 = 0;
LABEL_36:
    v25 = *(v13 + 23);
    if (v25 >= 0)
    {
      v26 = v13;
    }

    else
    {
      v26 = *v13;
    }

    if (v25 >= 0)
    {
      v27 = *(v13 + 23);
    }

    else
    {
      v27 = *(v13 + 8);
    }

    std::string::replace(&__p, v24, v17, v26, v27);
    v13 = *a2;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - v13) >> 3) >= 2)
  {
    v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &__p;
    }

    else
    {
      v29 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = __p.__r_.__value_.__l.__size_;
    }

    if (byte_27988AF >= 0)
    {
      v30 = &qword_2798898;
    }

    else
    {
      v30 = qword_2798898;
    }

    if (byte_27988AF >= 0)
    {
      v31 = byte_27988AF;
    }

    else
    {
      v31 = unk_27988A0;
    }

    if (v31)
    {
      if (v28 >= v31)
      {
        v32 = v29 + v28;
        v33 = *v30;
        v34 = v29;
        do
        {
          v35 = v28 - v31;
          if (v35 == -1)
          {
            break;
          }

          v36 = memchr(v34, v33, v35 + 1);
          if (!v36)
          {
            break;
          }

          v37 = v36;
          if (!memcmp(v36, v30, v31))
          {
            if (v37 != v32)
            {
              v38 = v37 - v29;
              if (v37 - v29 != -1)
              {
                goto LABEL_64;
              }
            }

            break;
          }

          v34 = (v37 + 1);
          v28 = v32 - (v37 + 1);
        }

        while (v28 >= v31);
      }
    }

    else
    {
      v38 = 0;
LABEL_64:
      v39 = *(v13 + 47);
      if (v39 >= 0)
      {
        v40 = (v13 + 24);
      }

      else
      {
        v40 = *(v13 + 24);
      }

      if (v39 >= 0)
      {
        v41 = *(v13 + 47);
      }

      else
      {
        v41 = *(v13 + 32);
      }

      std::string::replace(&__p, v38, v31, v40, v41);
    }
  }

  sub_64BC20(a3, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v44) & 0x80000000) == 0)
    {
      return;
    }

LABEL_75:
    operator delete(v43[0]);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v44) < 0)
  {
    goto LABEL_75;
  }
}

void sub_5E4D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_5E4DA4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_5E5940(a3);
  v6 = sub_9274F4(a1, &qword_27988F8);
  if (*(v6 + 23) < 0)
  {
    sub_325C(&v59, *v6, v6[1]);
  }

  else
  {
    v7 = *v6;
    v59.__r_.__value_.__r.__words[2] = v6[2];
    *&v59.__r_.__value_.__l.__data_ = v7;
  }

  size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v59;
  }

  else
  {
    v9 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v59.__r_.__value_.__l.__size_;
  }

  if (byte_279887F >= 0)
  {
    v10 = &qword_2798868;
  }

  else
  {
    v10 = qword_2798868;
  }

  if (byte_279887F >= 0)
  {
    v11 = byte_279887F;
  }

  else
  {
    v11 = unk_2798870;
  }

  if (v11)
  {
    if (size < v11)
    {
      goto LABEL_31;
    }

    v12 = v9 + size;
    v13 = *v10;
    v14 = v9;
    while (1)
    {
      v15 = size - v11;
      if (v15 == -1)
      {
        goto LABEL_31;
      }

      v16 = memchr(v14, v13, v15 + 1);
      if (!v16)
      {
        goto LABEL_31;
      }

      v17 = v16;
      if (!memcmp(v16, v10, v11))
      {
        break;
      }

      v14 = (v17 + 1);
      size = v12 - (v17 + 1);
      if (size < v11)
      {
        goto LABEL_31;
      }
    }

    if (v17 == v12 || (v18 = v17 - v9, v17 - v9 == -1))
    {
LABEL_31:
      sub_64C184(a3, &v59);
      v22 = sub_9274F4(a1, &qword_2798910);
      if (*(v22 + 23) < 0)
      {
        sub_325C(&v58, *v22, v22[1]);
      }

      else
      {
        v23 = *v22;
        v58.__r_.__value_.__r.__words[2] = v22[2];
        *&v58.__r_.__value_.__l.__data_ = v23;
      }

      v24 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v58;
      }

      else
      {
        v25 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = v58.__r_.__value_.__l.__size_;
      }

      if (byte_279887F >= 0)
      {
        v26 = &qword_2798868;
      }

      else
      {
        v26 = qword_2798868;
      }

      if (byte_279887F >= 0)
      {
        v27 = byte_279887F;
      }

      else
      {
        v27 = unk_2798870;
      }

      if (v27)
      {
        if (v24 < v27)
        {
          goto LABEL_61;
        }

        v28 = v25 + v24;
        v29 = *v26;
        v30 = v25;
        while (1)
        {
          v31 = v24 - v27;
          if (v31 == -1)
          {
            goto LABEL_61;
          }

          v32 = memchr(v30, v29, v31 + 1);
          if (!v32)
          {
            goto LABEL_61;
          }

          v33 = v32;
          if (!memcmp(v32, v26, v27))
          {
            break;
          }

          v30 = (v33 + 1);
          v24 = v28 - (v33 + 1);
          if (v24 < v27)
          {
            goto LABEL_61;
          }
        }

        if (v33 == v28 || (v34 = v33 - v25, v33 - v25 == -1))
        {
LABEL_61:
          sub_64C184(a3 + 160, &v58);
          v38 = sub_9274F4(a1, &qword_2798928);
          if (*(v38 + 23) < 0)
          {
            sub_325C(&v57, *v38, v38[1]);
          }

          else
          {
            v39 = *v38;
            v57.__r_.__value_.__r.__words[2] = v38[2];
            *&v57.__r_.__value_.__l.__data_ = v39;
          }

          v40 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v41 = &v57;
          }

          else
          {
            v41 = v57.__r_.__value_.__r.__words[0];
          }

          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v40 = v57.__r_.__value_.__l.__size_;
          }

          if (byte_279887F >= 0)
          {
            v42 = &qword_2798868;
          }

          else
          {
            v42 = qword_2798868;
          }

          if (byte_279887F >= 0)
          {
            v43 = byte_279887F;
          }

          else
          {
            v43 = unk_2798870;
          }

          if (v43)
          {
            if (v40 < v43)
            {
              goto LABEL_91;
            }

            v44 = v41 + v40;
            v45 = *v42;
            v46 = v41;
            while (1)
            {
              v47 = v40 - v43;
              if (v47 == -1)
              {
                goto LABEL_91;
              }

              v48 = memchr(v46, v45, v47 + 1);
              if (!v48)
              {
                goto LABEL_91;
              }

              v49 = v48;
              if (!memcmp(v48, v42, v43))
              {
                break;
              }

              v46 = (v49 + 1);
              v40 = v44 - (v49 + 1);
              if (v40 < v43)
              {
                goto LABEL_91;
              }
            }

            if (v49 == v44 || (v50 = v49 - v41, v49 - v41 == -1))
            {
LABEL_91:
              sub_64C184(a3 + 1280, &v57);
              v55 = 11;
              strcpy(__p, "destination");
              sub_649C24(v56, "{Name}", __p);
            }
          }

          else
          {
            v50 = 0;
          }

          v51 = *(a2 + 23);
          if (v51 >= 0)
          {
            v52 = a2;
          }

          else
          {
            v52 = *a2;
          }

          if (v51 >= 0)
          {
            v53 = *(a2 + 23);
          }

          else
          {
            v53 = *(a2 + 8);
          }

          std::string::replace(&v57, v50, v43, v52, v53);
          goto LABEL_91;
        }
      }

      else
      {
        v34 = 0;
      }

      v35 = *(a2 + 23);
      if (v35 >= 0)
      {
        v36 = a2;
      }

      else
      {
        v36 = *a2;
      }

      if (v35 >= 0)
      {
        v37 = *(a2 + 23);
      }

      else
      {
        v37 = *(a2 + 8);
      }

      std::string::replace(&v58, v34, v27, v36, v37);
      goto LABEL_61;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = *(a2 + 8);
  }

  std::string::replace(&v59, v18, v11, v20, v21);
  goto LABEL_31;
}

void sub_5E5378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  sub_53F320(&a23);
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v24 - 169) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((*(v24 - 169) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v24 - 137) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(*(v24 - 192));
  if ((*(v24 - 137) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v24 - 105) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(v24 - 160));
  if ((*(v24 - 105) & 0x80000000) == 0)
  {
LABEL_6:
    sub_5E58CC(v23);
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(*(v24 - 128));
  sub_5E58CC(v23);
  _Unwind_Resume(a1);
}

void sub_5E54C8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1];
  if (*a2 == v4)
  {

    sub_5E5940(a3);
    return;
  }

  v6 = v4 - *a2;
  v7 = 273;
  if (v6 == 24)
  {
    v7 = 270;
  }

  v8 = &qword_27988E0;
  if (v6 == 24)
  {
    v8 = &qword_27988C8;
  }

  v9 = &unk_27988F7;
  if (v6 == 24)
  {
    v9 = &algn_27988D0[15];
  }

  if (*v9 < 0)
  {
    if (v6 == 24)
    {
      v10 = algn_27988D0;
    }

    else
    {
      v10 = &unk_27988E8;
    }

    v11 = a1;
    sub_325C(v46, qword_2798058[v7], *v10);
    a1 = v11;
  }

  else
  {
    *v46 = *v8;
    v47 = v8[2];
  }

  v12 = sub_9274F4(a1, v46);
  if (*(v12 + 23) < 0)
  {
    sub_325C(&__p, *v12, v12[1]);
  }

  else
  {
    v13 = *v12;
    __p.__r_.__value_.__r.__words[2] = v12[2];
    *&__p.__r_.__value_.__l.__data_ = v13;
  }

  v14 = *a2;
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (byte_2798897 >= 0)
  {
    v17 = &qword_2798880;
  }

  else
  {
    v17 = qword_2798880;
  }

  if (byte_2798897 >= 0)
  {
    v18 = byte_2798897;
  }

  else
  {
    v18 = unk_2798888;
  }

  if (v18)
  {
    if (size >= v18)
    {
      v19 = p_p + size;
      v20 = *v17;
      v21 = p_p;
      do
      {
        v22 = size - v18;
        if (v22 == -1)
        {
          break;
        }

        v23 = memchr(v21, v20, v22 + 1);
        if (!v23)
        {
          break;
        }

        v24 = v23;
        if (!memcmp(v23, v17, v18))
        {
          if (v24 != v19)
          {
            v25 = v24 - p_p;
            if (v24 - p_p != -1)
            {
              goto LABEL_40;
            }
          }

          break;
        }

        v21 = (v24 + 1);
        size = v19 - (v24 + 1);
      }

      while (size >= v18);
    }
  }

  else
  {
    v25 = 0;
LABEL_40:
    v26 = *(v14 + 23);
    if (v26 >= 0)
    {
      v27 = v14;
    }

    else
    {
      v27 = *v14;
    }

    if (v26 >= 0)
    {
      v28 = *(v14 + 23);
    }

    else
    {
      v28 = *(v14 + 8);
    }

    std::string::replace(&__p, v25, v18, v27, v28);
    v14 = *a2;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - v14) >> 3) >= 2)
  {
    v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &__p;
    }

    else
    {
      v30 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v29 = __p.__r_.__value_.__l.__size_;
    }

    if (byte_27988AF >= 0)
    {
      v31 = &qword_2798898;
    }

    else
    {
      v31 = qword_2798898;
    }

    if (byte_27988AF >= 0)
    {
      v32 = byte_27988AF;
    }

    else
    {
      v32 = unk_27988A0;
    }

    if (v32)
    {
      if (v29 >= v32)
      {
        v33 = v30 + v29;
        v34 = *v31;
        v35 = v30;
        do
        {
          v36 = v29 - v32;
          if (v36 == -1)
          {
            break;
          }

          v37 = memchr(v35, v34, v36 + 1);
          if (!v37)
          {
            break;
          }

          v38 = v37;
          if (!memcmp(v37, v31, v32))
          {
            if (v38 != v33)
            {
              v39 = v38 - v30;
              if (v38 - v30 != -1)
              {
                goto LABEL_68;
              }
            }

            break;
          }

          v35 = (v38 + 1);
          v29 = v33 - (v38 + 1);
        }

        while (v29 >= v32);
      }
    }

    else
    {
      v39 = 0;
LABEL_68:
      v40 = *(v14 + 47);
      if (v40 >= 0)
      {
        v41 = (v14 + 24);
      }

      else
      {
        v41 = *(v14 + 24);
      }

      if (v40 >= 0)
      {
        v42 = *(v14 + 47);
      }

      else
      {
        v42 = *(v14 + 32);
      }

      std::string::replace(&__p, v39, v32, v41, v42);
    }
  }

  sub_5E5940(a3);
  v43 = *(a3 + 1128);
  if (v43 >= *(a3 + 1136))
  {
    *(a3 + 1128) = sub_5C416C(a3 + 1120, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_83;
    }
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_325C(*(a3 + 1128), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v44 = *&__p.__r_.__value_.__l.__data_;
      *(v43 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v43 = v44;
    }

    *(a3 + 1128) = v43 + 24;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_83:
      operator delete(__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(v47) < 0)
      {
        goto LABEL_84;
      }

      return;
    }
  }

  if (SHIBYTE(v47) < 0)
  {
LABEL_84:
    operator delete(v46[0]);
  }
}

void sub_5E5864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 + 1128) = v22;
  sub_5E58CC(v21);
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(a1);
}

uint64_t sub_5E58CC(uint64_t a1)
{
  sub_53A868(a1 + 1280);
  sub_53A868(a1 + 1120);
  sub_53A868(a1 + 960);
  sub_53A868(a1 + 800);
  sub_53A868(a1 + 640);
  sub_53A868(a1 + 480);
  sub_53A868(a1 + 320);
  sub_53A868(a1 + 160);

  return sub_53A868(a1);
}

uint64_t sub_5E5940(uint64_t a1)
{
  sub_64B998(a1);
  sub_64B998(v2 + 160);
  sub_64B998(a1 + 320);
  sub_64B998(a1 + 480);
  sub_64B998(a1 + 640);
  sub_64B998(a1 + 800);
  sub_64B998(a1 + 960);
  sub_64B998(a1 + 1120);
  sub_64B998(a1 + 1280);
  return a1;
}

void sub_5E59A8(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 1120);
  sub_53A868(v1 + 960);
  sub_53A868(v1 + 800);
  sub_53A868(v1 + 640);
  sub_53A868(v1 + 480);
  sub_53A868(v1 + 320);
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_5E5A1C(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_5E88F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_37:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_38:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_39:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_40:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_41:
              operator delete(a70);
              if ((a69 & 0x80000000) == 0)
              {
LABEL_42:
                if (a67 < 0)
                {
LABEL_43:
                  operator delete(a66);
                  if ((a65 & 0x80000000) == 0)
                  {
LABEL_44:
                    _Unwind_Resume(a1);
                  }

LABEL_36:
                  operator delete(a63);
                  _Unwind_Resume(a1);
                }

LABEL_35:
                if ((a65 & 0x80000000) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_36;
              }

LABEL_34:
              operator delete(a68);
              if (a67 < 0)
              {
                goto LABEL_43;
              }

              goto LABEL_35;
            }

LABEL_33:
            if ((a69 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_41;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_37;
  }

  goto LABEL_29;
}

void sub_5E8B10(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 7416);
  v7 = *(a3 + 7424);
  if (v6 != v7)
  {
    while (!sub_38F51C(v6, 0) || *(v6 + 96) != 2)
    {
      v6 += 1120;
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v7 = *(a3 + 7424);
  }

  if (v7 == v6)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  v9 = sub_3AF6B4(a1);
  sub_38F018(v6, &v68);
  sub_38F270(v6, &v63);
  v10 = v72 - v71 - 1;
  if (v72 == v71 || v66 == v67)
  {
    if ((v71 == v72) != (v66 == v67))
    {
      v14 = v68;
      v13 = v69;
      if (!*v68)
      {
        v15 = *(&v68 + 1);
        do
        {
          v14 += 2;
          *&v68 = v14;
          if (v15 < v10)
          {
            while (v14 == v71[v15])
            {
              *(&v68 + 1) = v15 + 1;
              v14 = v69[v15 + 1];
              *&v68 = v14;
              if (v10 == ++v15)
              {
                v15 = v72 - v71 - 1;
                break;
              }
            }
          }
        }

        while (!*v14);
      }
    }

    else
    {
      v13 = v69;
    }
  }

  else
  {
    v12 = *(&v68 + 1);
    v11 = v68;
    v13 = v69;
    if (v68 != v63)
    {
      do
      {
        if (*v11)
        {
          break;
        }

        v11 += 2;
        *&v68 = v11;
        if (v12 < v10)
        {
          while (v11 == v71[v12])
          {
            *(&v68 + 1) = v12 + 1;
            v11 = v69[v12 + 1];
            *&v68 = v11;
            if (v10 == ++v12)
            {
              v12 = v72 - v71 - 1;
              break;
            }
          }
        }
      }

      while (__PAIR128__(v12, v11) != v63);
    }
  }

  v74 = v68;
  v76 = v70;
  v69 = 0;
  v70 = 0uLL;
  v75 = v13;
  v77 = v71;
  v78 = v72;
  v79 = v73;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v69)
  {
    *&v70 = v69;
    operator delete(v69);
  }

  sub_38F270(v6, v49);
  if (v77 == v78 || v53 == v54)
  {
    v16 = (v77 == v78) == (v53 == v54);
    if (!v53)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (*(&v74 + 1) == v49[1])
  {
    v16 = v74 == v49[0];
    if (!v53)
    {
      goto LABEL_45;
    }

LABEL_44:
    v54 = v53;
    operator delete(v53);
    goto LABEL_45;
  }

  v16 = 0;
  if (v53)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v16)
  {
    if (!sub_7E7E4(1u))
    {
LABEL_81:
      if ((*(v6 + 127) & 0x80000000) == 0)
      {
        v35 = *(v6 + 104);
        *(a4 + 16) = *(v6 + 120);
        *a4 = v35;
        v36 = v77;
        if (!v77)
        {
          goto LABEL_121;
        }

LABEL_120:
        operator delete(v36);
        goto LABEL_121;
      }

      sub_325C(a4, *(v6 + 104), *(v6 + 112));
LABEL_119:
      v36 = v77;
      if (!v77)
      {
        goto LABEL_121;
      }

      goto LABEL_120;
    }

    sub_19594F8(v49);
    sub_4A5C(v49, "found incident with no valid geo id", 35);
    if ((v59 & 0x10) != 0)
    {
      v33 = v58;
      if (v58 < v55)
      {
        v58 = v55;
        v33 = v55;
      }

      v34 = v54;
      v17 = (v33 - v54);
      if ((v33 - v54) >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_125;
      }
    }

    else
    {
      if ((v59 & 8) == 0)
      {
        v17 = 0;
        v44 = 0;
LABEL_76:
        *(&__dst + v17) = 0;
        sub_7E854(&__dst, 1u);
        if (v44 < 0)
        {
          operator delete(__dst);
        }

        if (v57 < 0)
        {
          operator delete(v56);
        }

        std::locale::~locale(&v50);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_81;
      }

      v34 = v51;
      v17 = (v53 - v51);
      if ((v53 - v51) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_125:
        sub_3244();
      }
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    v44 = v17;
    if (v17)
    {
      memmove(&__dst, v34, v17);
    }

    goto LABEL_76;
  }

  v18 = *v74;
  v19 = sub_2B51D8(v9, *v74 & 0xFFFFFFFFFFFFLL);
  v20 = (v19 - *v19);
  if (*v20 >= 0xDu && (v21 = v20[6]) != 0)
  {
    v22 = 4 * *(v19 + v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_2AF704((v9 + 974), 1u, 0);
  v24 = &v23[-*v23];
  if (*v24 < 0xBu)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 5);
    if (v25)
    {
      v25 += &v23[*&v23[v25]];
    }
  }

  v26 = (v25 + v22 + 4 + *(v25 + v22 + 4));
  v27 = (v26 - *v26);
  if (*v27 >= 5u && (v28 = v27[2]) != 0)
  {
    v29 = (v26 + v28);
    v30 = *v29;
    v31 = *(v29 + v30);
    if (v31 >= 0x17)
    {
      operator new();
    }

    v48 = *(v29 + v30);
    if (v31)
    {
      memcpy(&v47, v29 + v30 + 4, v31);
    }

    v32 = (&v47 + v31);
  }

  else
  {
    v48 = 0;
    v32 = &v47;
  }

  *v32 = 0;
  sub_5E94A4(v9, v18, 1, &v45);
  HIBYTE(v50) = 0;
  LOBYTE(v49[0]) = 0;
  sub_64AC90(&__dst, v49, 0);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

  sub_5EB5B8(&__dst, &v47);
  sub_738918(&v45, v49);
  if (SHIBYTE(v50) < 0)
  {
    v38 = v49[1];
    if (v49[1])
    {
      v37 = v49;
      goto LABEL_98;
    }
  }

  else if (HIBYTE(v50))
  {
    v37 = v49;
LABEL_96:
    v39 = *v37;
    *(a4 + 16) = v37[2];
    *a4 = v39;
    goto LABEL_99;
  }

  v37 = (v6 + 104);
  if ((*(v6 + 127) & 0x80000000) == 0)
  {
    goto LABEL_96;
  }

  v38 = *(v6 + 112);
LABEL_98:
  sub_325C(a4, *v37, v38);
LABEL_99:
  if (v62 < 0)
  {
    operator delete(v61);
    if ((v60 & 0x80000000) == 0)
    {
LABEL_101:
      if ((v57 & 0x80000000) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_114;
    }
  }

  else if ((v60 & 0x80000000) == 0)
  {
    goto LABEL_101;
  }

  operator delete(v58);
  if ((v57 & 0x80000000) == 0)
  {
LABEL_102:
    if ((SHIBYTE(v54) & 0x80000000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_115;
  }

LABEL_114:
  operator delete(v56);
  if ((SHIBYTE(v54) & 0x80000000) == 0)
  {
LABEL_103:
    if ((SHIBYTE(v50) & 0x80000000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_116;
  }

LABEL_115:
  operator delete(v52);
  if ((SHIBYTE(v50) & 0x80000000) == 0)
  {
LABEL_104:
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_117;
  }

LABEL_116:
  operator delete(v49[0]);
  if ((v44 & 0x80000000) == 0)
  {
LABEL_105:
    v40 = v45;
    if (v45)
    {
      goto LABEL_106;
    }

LABEL_118:
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_110;
  }

LABEL_117:
  operator delete(__dst);
  v40 = v45;
  if (!v45)
  {
    goto LABEL_118;
  }

LABEL_106:
  v41 = v46;
  v42 = v40;
  if (v46 != v40)
  {
    do
    {
      v41 = sub_310F30(v41 - 144);
    }

    while (v41 != v40);
    v42 = v45;
  }

  v46 = v40;
  operator delete(v42);
  if ((v48 & 0x80000000) == 0)
  {
    goto LABEL_119;
  }

LABEL_110:
  operator delete(v47);
  v36 = v77;
  if (v77)
  {
    goto LABEL_120;
  }

LABEL_121:
  if (v75)
  {
    operator delete(v75);
  }
}

void sub_5E937C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_3E5388(&a28);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_5E9738(&a19);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_334D18((v33 - 144));
  _Unwind_Resume(a1);
}

void sub_5E94A4(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X8>)
{
  v4 = a3;
  v8 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v9 = (v8 - *v8);
  if (*v9 < 0x1Fu || (v10 = v9[15]) == 0 || (v11 = *(v8 + v10), v11 == -1))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    v12 = sub_31DF78(a1, a2);
    sub_5E9E60(a1, v12, v11, v4, a4);
    if (*a4 != a4[1])
    {
      return;
    }
  }

  v13 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v14 = (v13 - *v13);
  if (*v14 >= 0x2Fu)
  {
    v15 = v14[23];
    if (v15)
    {
      if (*(v13 + v15) == 44)
      {
        v16 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
        v17 = (v16 - *v16);
        v18 = *v17;
        if (v18 < 0x5F)
        {
          LODWORD(v19) = 0;
          LODWORD(v20) = 0;
        }

        else
        {
          v19 = v17[47];
          if (v17[47])
          {
            LODWORD(v19) = *(v16 + v19 + *(v16 + v19));
          }

          if (v18 < 0x61)
          {
            if (!v19)
            {
              return;
            }

LABEL_19:
            sub_31E068(a1, a2 & 0xFFFFFFFFFFFFLL, 8, &v28);
            if ((a2 & 0xFF000000000000) != 0)
            {
              sub_5E9D10(a1, v29, v28, 1, &v26);
              v21 = *a4;
              if (!*a4)
              {
                goto LABEL_31;
              }

              v22 = a4[1];
              v23 = *a4;
              if (v22 == v21)
              {
                goto LABEL_30;
              }

              do
              {
                v22 = sub_310F30(v22 - 144);
              }

              while (v22 != v21);
            }

            else
            {
              sub_5E9BBC(a1, v28, v29, 1, &v26);
              v21 = *a4;
              if (!*a4)
              {
                goto LABEL_31;
              }

              v24 = a4[1];
              v23 = *a4;
              if (v24 == v21)
              {
LABEL_30:
                a4[1] = v21;
                operator delete(v23);
                a4[1] = 0;
LABEL_31:
                *a4 = v26;
                v25 = v28;
                a4[2] = v27;
                if (v25)
                {
                  v29 = v25;
                  operator delete(v25);
                }

                return;
              }

              do
              {
                v24 = sub_310F30(v24 - 144);
              }

              while (v24 != v21);
            }

            v23 = *a4;
            goto LABEL_30;
          }

          v20 = v17[48];
          if (v20)
          {
            if (!(*(v16 + v20 + *(v16 + v20)) + v19))
            {
              return;
            }

            goto LABEL_19;
          }
        }

        if (!(v20 + v19))
        {
          return;
        }

        goto LABEL_19;
      }
    }
  }
}

void sub_5E96E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    sub_5E9738(v13);
    _Unwind_Resume(a1);
  }

  sub_5E9738(v13);
  _Unwind_Resume(a1);
}

void **sub_5E9738(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_310F30(v3 - 144);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_5E9794(uint64_t *a1@<X0>, unsigned int *a2@<X1>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = sub_3AF4C0(a1);
  sub_21E2C18(v5, 1, *a2);
}

void sub_5E9B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v17 - 112) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1A104((v17 - 120));
  sub_1F1A8(v17 - 96);
  sub_5EB268(v15);
  _Unwind_Resume(a1);
}

void sub_5E9BBC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void **a5@<X8>)
{
  if (a2 != a3)
  {
    v6 = a4;
    for (i = a2; i != a3; i = (i + 12))
    {
      v10 = *i;
      v11 = *i;
      if (*(a1 + 7774) == 1)
      {
        v12 = sub_2AF704(a1 + 3896, *i, 1);
        if (!v12)
        {
          continue;
        }

        v13 = &v12[-*v12];
        if (*v13 < 5u)
        {
          continue;
        }

        v14 = *(v13 + 2);
        if (!v14 || *&v12[v14 + *&v12[v14]] <= WORD2(v10) || !sub_2B817C(a1, v10 & 0xFFFFFFFFFFFFLL))
        {
          continue;
        }
      }

      v15 = sub_2B51D8(a1, v10 & 0xFFFFFFFFFFFFLL);
      v16 = (v15 - *v15);
      if (*v16 < 0x1Fu || (v17 = v16[15]) == 0 || (v18 = *(v15 + v17), v18 == -1))
      {
        *a5 = 0;
        a5[1] = 0;
        a5[2] = 0;
      }

      else
      {
        v19 = sub_31DF78(a1, v11);
        sub_5E9E60(a1, v19, v18, v6, a5);
        v20 = *a5;
        v21 = a5[1];
        if (*a5 != v21)
        {
          return;
        }

        if (v21)
        {
          a5[1] = v20;
          operator delete(v20);
        }
      }
    }
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
}

void sub_5E9D10(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, void **a5@<X8>)
{
  if (a2 != a3)
  {
    v6 = a4;
    v8 = a2;
    do
    {
      v11 = *(v8 - 12);
      v8 -= 12;
      v10 = v11;
      v12 = v11;
      if (*(a1 + 7774) == 1)
      {
        v13 = sub_2AF704(a1 + 3896, v12, 1);
        if (!v13)
        {
          continue;
        }

        v14 = &v13[-*v13];
        if (*v14 < 5u)
        {
          continue;
        }

        v15 = *(v14 + 2);
        if (!v15 || *&v13[v15 + *&v13[v15]] <= WORD2(v10) || !sub_2B817C(a1, v10 & 0xFFFFFFFFFFFFLL))
        {
          continue;
        }
      }

      v16 = sub_2B51D8(a1, v10 & 0xFFFFFFFFFFFFLL);
      v17 = (v16 - *v16);
      if (*v17 < 0x1Fu || (v18 = v17[15]) == 0 || (v19 = *(v16 + v18), v19 == -1))
      {
        *a5 = 0;
        a5[1] = 0;
        a5[2] = 0;
      }

      else
      {
        v20 = sub_31DF78(a1, v12);
        sub_5E9E60(a1, v20, v19, v6, a5);
        v21 = *a5;
        v22 = a5[1];
        if (*a5 != v22)
        {
          return;
        }

        if (v22)
        {
          a5[1] = v21;
          operator delete(v21);
        }
      }
    }

    while (v8 != a3);
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
}

uint64_t sub_5E9E60@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, char a4@<W3>, void **a5@<X8>)
{
  v8 = sub_31E394(a1 + 3896, a2, 0);
  v9 = &v8[-*v8];
  if (*v9 < 5u)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v9 + 2);
    if (v10)
    {
      v10 += &v8[*&v8[v10]];
    }
  }

  v11 = (v10 + 4 * a3 + 4 + *(v10 + 4 * a3 + 4));
  v12 = (v11 - *v11);
  if (*v12 >= 5u && (v13 = v12[2]) != 0)
  {
    v14 = (v11 + v13 + *(v11 + v13));
  }

  else
  {
    v14 = 0;
  }

  v16 = a4;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  sub_5E9F68(a5, *v14);
  return sub_5EA114(v14, a5, &v16);
}

void sub_5E9F68(void **a1, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x1C71C71C71C71C8)
    {
      operator new();
    }

    sub_1794();
  }
}

uint64_t sub_5EA114(unsigned int *a1, uint64_t a2, char *a3)
{
  v4 = *a1;
  if (v4)
  {
    v5 = a1;
    v6 = &a1[v4];
    v7 = *a3;
    do
    {
      v8 = v5[1];
      sub_30FA6C((++v5 + v8), v7 & 1, v20);
      v9 = *(a2 + 8);
      if (v9 >= *(a2 + 16))
      {
        v14 = sub_5EA34C(a2, v20);
        v15 = SHIBYTE(v33);
        *(a2 + 8) = v14;
        if (v15 < 0)
        {
          operator delete(__p);
          if (SHIBYTE(v29) < 0)
          {
LABEL_14:
            operator delete(v28);
            v16 = v26[0];
            if (!v26[0])
            {
LABEL_10:
              if (SHIBYTE(v24) < 0)
              {
                goto LABEL_25;
              }

              goto LABEL_11;
            }

            goto LABEL_15;
          }
        }

        else if (SHIBYTE(v29) < 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        *v9 = v20[0];
        v10 = v21;
        *(v9 + 24) = v22;
        *(v9 + 8) = v10;
        v21 = 0uLL;
        v11 = v24;
        *(v9 + 32) = v23;
        *(v9 + 48) = v11;
        v22 = 0;
        v23 = 0uLL;
        v24 = 0;
        *(v9 + 56) = v25;
        *(v9 + 64) = 0;
        *(v9 + 72) = 0;
        *(v9 + 80) = 0;
        *(v9 + 64) = *v26;
        *(v9 + 80) = v27;
        v26[0] = 0;
        v26[1] = 0;
        v12 = v28;
        *(v9 + 104) = v29;
        *(v9 + 88) = v12;
        v27 = 0;
        v28 = 0uLL;
        v29 = 0;
        LOWORD(v11) = v30;
        *(v9 + 114) = v31;
        *(v9 + 112) = v11;
        v13 = __p;
        *(v9 + 136) = v33;
        *(v9 + 120) = v13;
        v33 = 0;
        __p = 0uLL;
        *(a2 + 8) = v9 + 144;
        if (SHIBYTE(v29) < 0)
        {
          goto LABEL_14;
        }
      }

      v16 = v26[0];
      if (!v26[0])
      {
        goto LABEL_10;
      }

LABEL_15:
      v17 = v26[1];
      if (v26[1] == v16)
      {
        v26[1] = v16;
        operator delete(v16);
        if ((SHIBYTE(v24) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

LABEL_25:
        operator delete(v23);
        if (SHIBYTE(v22) < 0)
        {
          goto LABEL_26;
        }

        continue;
      }

      do
      {
        if (*(v17 - 9) < 0)
        {
          operator delete(*(v17 - 4));
          v18 = v17 - 7;
          if ((*(v17 - 33) & 0x80000000) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v18 = v17 - 7;
          if ((*(v17 - 33) & 0x80000000) == 0)
          {
            goto LABEL_18;
          }
        }

        operator delete(*v18);
LABEL_18:
        v17 = v18;
      }

      while (v18 != v16);
      v26[1] = v16;
      operator delete(v26[0]);
      if (SHIBYTE(v24) < 0)
      {
        goto LABEL_25;
      }

LABEL_11:
      if (SHIBYTE(v22) < 0)
      {
LABEL_26:
        operator delete(v21);
      }
    }

    while (v5 != v6);
  }

  return a2;
}

void *sub_5EA34C(void **a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v4 = 0x1C71C71C71C71C7;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 16 * ((a1[1] - *a1) >> 4);
  *v5 = *a2;
  *(v5 + 8) = *(a2 + 8);
  *(v5 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v5 + 48) = v6;
  *(v5 + 56) = v7;
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v8 = *(a2 + 88);
  *(v5 + 104) = *(a2 + 104);
  *(v5 + 88) = v8;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  LOWORD(v6) = *(a2 + 112);
  *(v5 + 114) = *(a2 + 114);
  *(v5 + 112) = v6;
  v9 = *(a2 + 120);
  *(v5 + 136) = *(a2 + 136);
  *(v5 + 120) = v9;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v10 = (v5 + 144);
  v11 = *a1;
  v12 = a1[1];
  v13 = (v5 + *a1 - v12);
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = (v5 + *a1 - v12);
    do
    {
      *v15 = *v14;
      v16 = *(v14 + 8);
      *(v15 + 3) = *(v14 + 3);
      *(v15 + 8) = v16;
      *(v14 + 2) = 0;
      *(v14 + 3) = 0;
      *(v14 + 1) = 0;
      v17 = *(v14 + 2);
      *(v15 + 6) = *(v14 + 6);
      *(v15 + 2) = v17;
      *(v14 + 5) = 0;
      *(v14 + 6) = 0;
      *(v14 + 4) = 0;
      *(v15 + 7) = *(v14 + 7);
      *(v15 + 9) = 0;
      *(v15 + 10) = 0;
      *(v15 + 4) = *(v14 + 4);
      *(v15 + 10) = *(v14 + 10);
      *(v14 + 8) = 0;
      *(v14 + 9) = 0;
      *(v14 + 10) = 0;
      v18 = *(v14 + 88);
      *(v15 + 13) = *(v14 + 13);
      *(v15 + 88) = v18;
      *(v14 + 12) = 0;
      *(v14 + 13) = 0;
      *(v14 + 11) = 0;
      v19 = *(v14 + 56);
      v15[114] = v14[114];
      *(v15 + 56) = v19;
      v20 = *(v14 + 120);
      *(v15 + 17) = *(v14 + 17);
      *(v15 + 120) = v20;
      *(v14 + 16) = 0;
      *(v14 + 17) = 0;
      *(v14 + 15) = 0;
      v14 += 144;
      v15 += 144;
    }

    while (v14 != v12);
    do
    {
      v11 = (sub_310F30(v11) + 144);
    }

    while (v11 != v12);
    v11 = *a1;
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

char *sub_5EA5AC(char **a1, uint64_t a2)
{
  v2 = 0x8F5C28F5C28F5C29 * ((a1[1] - *a1) >> 7);
  v3 = v2 + 1;
  if (v2 + 1 > 0x147AE147AE147ALL)
  {
    sub_1794();
  }

  if (0x1EB851EB851EB852 * ((a1[2] - *a1) >> 7) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((a1[2] - *a1) >> 7);
  }

  if (0x8F5C28F5C28F5C29 * ((a1[2] - *a1) >> 7) >= 0xA3D70A3D70A3DLL)
  {
    v5 = 0x147AE147AE147ALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x147AE147AE147ALL)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = (a1[1] - *a1) >> 7 << 7;
  sub_5EA77C(a1, v15, a2);
  v6 = (3200 * v2 + 3200);
  v7 = *a1;
  v8 = a1[1];
  v9 = (*a1 - v8);
  v10 = &v9[v15];
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = &v9[v15];
    do
    {
      sub_5EA77C(a1, v13, v12);
      v12 += 3200;
      v13 += 3200;
      v11 -= 3200;
    }

    while (v12 != v8);
    do
    {
      sub_5EB19C(v7);
      v7 += 3200;
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

void sub_5EA73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5EB148(va);
  _Unwind_Resume(a1);
}

void sub_5EA750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v4)
  {
    v6 = v3 - 3200;
    do
    {
      v6 = sub_5EB19C(v6) - 3200;
      v4 += 3200;
    }

    while (v4);
  }

  sub_5EB148(va);
  _Unwind_Resume(a1);
}

double sub_5EA77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = *a3;
  *(a2 + 16) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 40) = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 64) = *(a3 + 64);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = *(a3 + 72);
  v5 = *(a3 + 96);
  *(a2 + 88) = *(a3 + 88);
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a2 + 96) = v5;
  v6 = *(a3 + 104);
  *(a2 + 108) = *(a3 + 108);
  *(a2 + 104) = v6;
  v7 = *(a3 + 112);
  *(a2 + 128) = *(a3 + 128);
  *(a2 + 112) = v7;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 112) = 0;
  v8 = *(a3 + 136);
  *(a2 + 152) = *(a3 + 152);
  *(a2 + 136) = v8;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 136) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = *(a3 + 160);
  *(a2 + 176) = *(a3 + 176);
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  *(a3 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 184) = *(a3 + 184);
  *(a2 + 200) = *(a3 + 200);
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 208) = *(a3 + 208);
  *(a2 + 224) = *(a3 + 224);
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 232) = *(a3 + 232);
  v9 = *(a3 + 256);
  *(a2 + 248) = *(a3 + 248);
  *(a3 + 232) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 256) = 0;
  *(a2 + 256) = v9;
  v10 = *(a3 + 264);
  *(a2 + 268) = *(a3 + 268);
  *(a2 + 264) = v10;
  v11 = *(a3 + 272);
  *(a2 + 288) = *(a3 + 288);
  *(a2 + 272) = v11;
  *(a3 + 280) = 0;
  *(a3 + 288) = 0;
  *(a3 + 272) = 0;
  v12 = *(a3 + 296);
  *(a2 + 312) = *(a3 + 312);
  *(a2 + 296) = v12;
  *(a3 + 304) = 0;
  *(a3 + 312) = 0;
  *(a3 + 296) = 0;
  sub_5EA954(a2 + 320, a3 + 320);

  *&result = sub_5EA954(a2 + 1760, a3 + 1760).n128_u64[0];
  return result;
}

__n128 sub_5EA954(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *a2 = 0u;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a2 + 48) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 72) = *(a2 + 72);
  v2 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 96) = v2;
  v3 = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = v3;
  v4 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v4;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0u;
  v5 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v5;
  *(a2 + 144) = 0u;
  *(a2 + 136) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a2 + 160) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 200) = 0;
  *(a2 + 184) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = 0;
  *(a2 + 208) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 232) = *(a2 + 232);
  v6 = *(a2 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a1 + 256) = v6;
  v7 = *(a2 + 264);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 264) = v7;
  v8 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v8;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0u;
  v9 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 296) = v9;
  *(a2 + 304) = 0u;
  *(a2 + 296) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 336) = 0;
  *(a2 + 320) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 360) = 0;
  *(a2 + 344) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a2 + 384) = 0;
  *(a2 + 368) = 0u;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 392) = 0u;
  v10 = *(a2 + 416);
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  *(a1 + 416) = v10;
  LODWORD(v10) = *(a2 + 424);
  *(a1 + 428) = *(a2 + 428);
  *(a1 + 424) = v10;
  v11 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 432) = v11;
  *(a2 + 432) = 0;
  *(a2 + 440) = 0u;
  v12 = *(a2 + 456);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 456) = v12;
  *(a2 + 464) = 0u;
  *(a2 + 456) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0u;
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = *(a2 + 496);
  *(a2 + 496) = 0;
  *(a2 + 480) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  *(a2 + 520) = 0;
  *(a2 + 504) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a2 + 544) = 0;
  *(a2 + 528) = 0u;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a2 + 568) = 0;
  *(a2 + 552) = 0u;
  v13 = *(a2 + 576);
  *(a2 + 576) = 0;
  *(a1 + 576) = v13;
  LODWORD(v13) = *(a2 + 584);
  *(a1 + 588) = *(a2 + 588);
  *(a1 + 584) = v13;
  v14 = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 592) = v14;
  *(a2 + 592) = 0;
  *(a2 + 600) = 0u;
  v15 = *(a2 + 616);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 616) = v15;
  *(a2 + 624) = 0u;
  *(a2 + 616) = 0;
  *(a1 + 656) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 656) = *(a2 + 656);
  *(a2 + 656) = 0;
  *(a2 + 640) = 0u;
  *(a1 + 680) = 0;
  *(a1 + 664) = 0u;
  *(a1 + 664) = *(a2 + 664);
  *(a1 + 672) = *(a2 + 672);
  *(a2 + 680) = 0;
  *(a2 + 664) = 0u;
  *(a1 + 704) = 0;
  *(a1 + 688) = 0u;
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 704) = *(a2 + 704);
  *(a2 + 704) = 0;
  *(a2 + 688) = 0u;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 728) = 0;
  *(a2 + 712) = 0u;
  v16 = *(a2 + 736);
  *(a2 + 736) = 0;
  *(a1 + 736) = v16;
  LODWORD(v16) = *(a2 + 744);
  *(a1 + 748) = *(a2 + 748);
  *(a1 + 744) = v16;
  v17 = *(a2 + 752);
  *(a1 + 768) = *(a2 + 768);
  *(a1 + 752) = v17;
  *(a2 + 752) = 0;
  *(a2 + 760) = 0u;
  v18 = *(a2 + 776);
  *(a1 + 792) = *(a2 + 792);
  *(a1 + 776) = v18;
  *(a2 + 784) = 0u;
  *(a2 + 776) = 0;
  *(a1 + 816) = 0;
  *(a1 + 800) = 0u;
  *(a1 + 800) = *(a2 + 800);
  *(a1 + 816) = *(a2 + 816);
  *(a2 + 816) = 0;
  *(a2 + 800) = 0u;
  *(a1 + 840) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);
  *(a2 + 840) = 0;
  *(a2 + 824) = 0u;
  *(a1 + 864) = 0;
  *(a1 + 848) = 0u;
  *(a1 + 848) = *(a2 + 848);
  *(a1 + 864) = *(a2 + 864);
  *(a2 + 864) = 0;
  *(a2 + 848) = 0u;
  *(a1 + 888) = 0;
  *(a1 + 872) = 0u;
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 880) = *(a2 + 880);
  *(a2 + 888) = 0;
  *(a2 + 872) = 0u;
  v19 = *(a2 + 896);
  *(a2 + 896) = 0;
  *(a1 + 896) = v19;
  LODWORD(v19) = *(a2 + 904);
  *(a1 + 908) = *(a2 + 908);
  *(a1 + 904) = v19;
  v20 = *(a2 + 912);
  *(a1 + 928) = *(a2 + 928);
  *(a1 + 912) = v20;
  *(a2 + 912) = 0;
  *(a2 + 920) = 0u;
  v21 = *(a2 + 936);
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 936) = v21;
  *(a2 + 944) = 0u;
  *(a2 + 936) = 0;
  *(a1 + 976) = 0;
  *(a1 + 960) = 0u;
  *(a1 + 960) = *(a2 + 960);
  *(a1 + 976) = *(a2 + 976);
  *(a2 + 976) = 0;
  *(a2 + 960) = 0u;
  *(a1 + 1000) = 0;
  *(a1 + 984) = 0u;
  *(a1 + 984) = *(a2 + 984);
  *(a1 + 992) = *(a2 + 992);
  *(a2 + 1000) = 0;
  *(a2 + 984) = 0u;
  *(a1 + 1024) = 0;
  *(a1 + 1008) = 0u;
  *(a1 + 1008) = *(a2 + 1008);
  *(a1 + 1024) = *(a2 + 1024);
  *(a2 + 1024) = 0;
  *(a2 + 1008) = 0u;
  *(a1 + 1048) = 0;
  *(a1 + 1032) = 0u;
  *(a1 + 1032) = *(a2 + 1032);
  *(a1 + 1040) = *(a2 + 1040);
  *(a2 + 1048) = 0;
  *(a2 + 1032) = 0u;
  v22 = *(a2 + 1056);
  *(a2 + 1056) = 0;
  *(a1 + 1056) = v22;
  LODWORD(v22) = *(a2 + 1064);
  *(a1 + 1068) = *(a2 + 1068);
  *(a1 + 1064) = v22;
  v23 = *(a2 + 1072);
  *(a1 + 1088) = *(a2 + 1088);
  *(a1 + 1072) = v23;
  *(a2 + 1072) = 0;
  *(a2 + 1080) = 0u;
  v24 = *(a2 + 1096);
  *(a1 + 1112) = *(a2 + 1112);
  *(a1 + 1096) = v24;
  *(a2 + 1104) = 0u;
  *(a2 + 1096) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1120) = *(a2 + 1120);
  *(a1 + 1136) = *(a2 + 1136);
  *(a2 + 1136) = 0;
  *(a2 + 1120) = 0u;
  *(a1 + 1160) = 0;
  *(a1 + 1144) = 0u;
  *(a1 + 1144) = *(a2 + 1144);
  *(a1 + 1152) = *(a2 + 1152);
  *(a2 + 1160) = 0;
  *(a2 + 1144) = 0u;
  *(a1 + 1184) = 0;
  *(a1 + 1168) = 0u;
  *(a1 + 1168) = *(a2 + 1168);
  *(a1 + 1184) = *(a2 + 1184);
  *(a2 + 1184) = 0;
  *(a2 + 1168) = 0u;
  *(a1 + 1208) = 0;
  *(a1 + 1192) = 0u;
  *(a1 + 1192) = *(a2 + 1192);
  *(a1 + 1200) = *(a2 + 1200);
  *(a2 + 1208) = 0;
  *(a2 + 1192) = 0u;
  v25 = *(a2 + 1216);
  *(a2 + 1216) = 0;
  *(a1 + 1216) = v25;
  LODWORD(v25) = *(a2 + 1224);
  *(a1 + 1228) = *(a2 + 1228);
  *(a1 + 1224) = v25;
  v26 = *(a2 + 1232);
  *(a1 + 1248) = *(a2 + 1248);
  *(a1 + 1232) = v26;
  *(a2 + 1232) = 0;
  *(a2 + 1240) = 0u;
  v27 = *(a2 + 1256);
  *(a1 + 1272) = *(a2 + 1272);
  *(a1 + 1256) = v27;
  *(a2 + 1264) = 0u;
  *(a2 + 1256) = 0;
  *(a1 + 1296) = 0;
  *(a1 + 1280) = 0u;
  *(a1 + 1280) = *(a2 + 1280);
  *(a1 + 1296) = *(a2 + 1296);
  *(a2 + 1296) = 0;
  *(a2 + 1280) = 0u;
  *(a1 + 1320) = 0;
  *(a1 + 1304) = 0u;
  *(a1 + 1304) = *(a2 + 1304);
  *(a1 + 1312) = *(a2 + 1312);
  *(a2 + 1320) = 0;
  *(a2 + 1304) = 0u;
  *(a1 + 1344) = 0;
  *(a1 + 1328) = 0u;
  *(a1 + 1328) = *(a2 + 1328);
  *(a1 + 1344) = *(a2 + 1344);
  *(a2 + 1344) = 0;
  *(a2 + 1328) = 0u;
  *(a1 + 1368) = 0;
  *(a1 + 1352) = 0u;
  *(a1 + 1352) = *(a2 + 1352);
  *(a1 + 1360) = *(a2 + 1360);
  *(a2 + 1368) = 0;
  *(a2 + 1360) = 0;
  *(a2 + 1352) = 0;
  v28 = *(a2 + 1376);
  *(a2 + 1376) = 0;
  *(a1 + 1376) = v28;
  LODWORD(v28) = *(a2 + 1384);
  *(a1 + 1388) = *(a2 + 1388);
  *(a1 + 1384) = v28;
  v29 = *(a2 + 1392);
  *(a1 + 1408) = *(a2 + 1408);
  *(a1 + 1392) = v29;
  *(a2 + 1392) = 0;
  *(a2 + 1408) = 0;
  *(a2 + 1400) = 0;
  result = *(a2 + 1416);
  *(a1 + 1432) = *(a2 + 1432);
  *(a1 + 1416) = result;
  *(a2 + 1432) = 0;
  *(a2 + 1424) = 0;
  *(a2 + 1416) = 0;
  return result;
}

uint64_t sub_5EB148(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 3200;
    sub_5EB19C(i - 3200);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_5EB19C(uint64_t a1)
{
  sub_53A868(a1 + 3040);
  sub_53A868(a1 + 2880);
  sub_53A868(a1 + 2720);
  sub_53A868(a1 + 2560);
  sub_53A868(a1 + 2400);
  sub_53A868(a1 + 2240);
  sub_53A868(a1 + 2080);
  sub_53A868(a1 + 1920);
  sub_53A868(a1 + 1760);
  sub_53A868(a1 + 1600);
  sub_53A868(a1 + 1440);
  sub_53A868(a1 + 1280);
  sub_53A868(a1 + 1120);
  sub_53A868(a1 + 960);
  sub_53A868(a1 + 800);
  sub_53A868(a1 + 640);
  sub_53A868(a1 + 480);
  sub_53A868(a1 + 320);
  sub_53A868(a1 + 160);

  return sub_53A868(a1);
}

void **sub_5EB268(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_5EB19C(v3 - 3200);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_5EB2C4()
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
  xmmword_27990C0 = 0u;
  *algn_27990D0 = 0u;
  dword_27990E0 = 1065353216;
  sub_3A9A34(&xmmword_27990C0, v0, v0);
  sub_3A9A34(&xmmword_27990C0, v3, v3);
  sub_3A9A34(&xmmword_27990C0, __p, __p);
  sub_3A9A34(&xmmword_27990C0, v9, v9);
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
    qword_2799098 = 0;
    qword_27990A0 = 0;
    qword_2799090 = 0;
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

void sub_5EB50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27990A8)
  {
    qword_27990B0 = qword_27990A8;
    operator delete(qword_27990A8);
  }

  _Unwind_Resume(exception_object);
}

void **sub_5EB5B8(void **result, void ***a2)
{
  if (result != a2)
  {
    if (*(result + 23) < 0)
    {
      v3 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v4 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v4 = v3;
      }

      return sub_13B38(result, a2, v4);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      return sub_13A68(result, *a2, a2[1]);
    }

    else
    {
      v2 = *a2;
      result[2] = a2[2];
      *result = v2;
    }
  }

  return result;
}

uint64_t sub_5EB618(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v8 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v8;
    v9 = *(a2 + 80);
    v10 = *(a2 + 96);
    v11 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 96) = v10;
    *(a1 + 112) = v11;
    *(a1 + 80) = v9;
  }

  else
  {
    sub_5EDC9C(a1, *a2, *(a2 + 8), 0x5DDB1ADCB91F64A7 * ((*(a2 + 8) - *a2) >> 4));
    sub_601A50((a1 + 24), *(a2 + 24), *(a2 + 32), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 32) - *(a2 + 24)) >> 4));
    v4 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v4;
    v5 = *(a2 + 80);
    v6 = *(a2 + 96);
    v7 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 96) = v6;
    *(a1 + 112) = v7;
    *(a1 + 80) = v5;
    sub_601CBC(a1 + 136, *(a2 + 136), *(a2 + 144), 0x7E3F1F8FC7E3F1F9 * ((*(a2 + 144) - *(a2 + 136)) >> 4));
  }

  v12 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v12;
  sub_594568(a1 + 176, a2 + 176);
  sub_594568(a1 + 336, a2 + 336);
  sub_594568(a1 + 496, a2 + 496);
  sub_594568(a1 + 656, a2 + 656);
  sub_594568(a1 + 816, a2 + 816);
  if (a1 != a2)
  {
    sub_74300((a1 + 976), *(a2 + 976), *(a2 + 984), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 984) - *(a2 + 976)) >> 3));
  }

  sub_594568(a1 + 1000, a2 + 1000);
  *(a1 + 1160) = *(a2 + 1160);
  sub_5410A0(a1 + 1168, a2 + 1168);
  *(a1 + 1280) = *(a2 + 1280);
  sub_5EDA08((a1 + 1288), (a2 + 1288));
  sub_5EDB04(a1 + 2376, a2 + 2376);
  if (a1 == a2)
  {
    v20 = *(a2 + 7200);
    *(a1 + 7208) = *(a2 + 7208);
    *(a1 + 7200) = v20;
    sub_5410A0(a1 + 7264, a2 + 7264);
    goto LABEL_64;
  }

  sub_602DCC((a1 + 7176), *(a2 + 7176), *(a2 + 7184), (*(a2 + 7184) - *(a2 + 7176)) >> 5);
  v13 = *(a2 + 7200);
  *(a1 + 7208) = *(a2 + 7208);
  *(a1 + 7200) = v13;
  v14 = (a1 + 7216);
  v15 = *(a2 + 7239);
  if (*(a1 + 7239) < 0)
  {
    if (v15 >= 0)
    {
      v21 = (a2 + 7216);
    }

    else
    {
      v21 = *(a2 + 7216);
    }

    if (v15 >= 0)
    {
      v22 = *(a2 + 7239);
    }

    else
    {
      v22 = *(a2 + 7224);
    }

    sub_13B38(v14, v21, v22);
    v17 = (a1 + 7240);
    v18 = (a2 + 7240);
    v19 = *(a2 + 7263);
    if (*(a1 + 7263) < 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if ((*(a2 + 7239) & 0x80) == 0)
  {
    v16 = *(a2 + 7216);
    *(a1 + 7232) = *(a2 + 7232);
    *v14 = v16;
    v17 = (a1 + 7240);
    v18 = (a2 + 7240);
    v19 = *(a2 + 7263);
    if (*(a1 + 7263) < 0)
    {
      goto LABEL_22;
    }

LABEL_19:
    if ((v19 & 0x80) != 0)
    {
      sub_13A68(v17, *(a2 + 7240), *(a2 + 7248));
    }

    else
    {
      v23 = *v18;
      v17[2] = v18[2];
      *v17 = v23;
    }

    goto LABEL_30;
  }

  sub_13A68(v14, *(a2 + 7216), *(a2 + 7224));
  v17 = (a1 + 7240);
  v18 = (a2 + 7240);
  v19 = *(a2 + 7263);
  if ((*(a1 + 7263) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  if ((v19 & 0x80u) == 0)
  {
    v24 = v18;
  }

  else
  {
    v24 = *(a2 + 7240);
  }

  if ((v19 & 0x80u) == 0)
  {
    v25 = v19;
  }

  else
  {
    v25 = *(a2 + 7248);
  }

  sub_13B38(v17, v24, v25);
LABEL_30:
  sub_5410A0(a1 + 7264, a2 + 7264);
  sub_6038B8((a1 + 7376), *(a2 + 7376), *(a2 + 7384), 0xFAFAFAFAFAFAFAFBLL * ((*(a2 + 7384) - *(a2 + 7376)) >> 4));
  sub_52EE18((a1 + 7400), *(a2 + 7400), *(a2 + 7408), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 7408) - *(a2 + 7400)) >> 3));
  v26 = (a1 + 7424);
  v27 = *(a2 + 7447);
  if (*(a1 + 7447) < 0)
  {
    if (v27 >= 0)
    {
      v32 = (a2 + 7424);
    }

    else
    {
      v32 = *(a2 + 7424);
    }

    if (v27 >= 0)
    {
      v33 = *(a2 + 7447);
    }

    else
    {
      v33 = *(a2 + 7432);
    }

    sub_13B38(v26, v32, v33);
    v29 = a1 + 7448;
    v30 = (a2 + 7448);
    v31 = *(a2 + 7471);
    if (*(a1 + 7471) < 0)
    {
LABEL_45:
      if ((v31 & 0x80u) == 0)
      {
        v38 = v30;
      }

      else
      {
        v38 = *(a2 + 7448);
      }

      if ((v31 & 0x80u) == 0)
      {
        v39 = v31;
      }

      else
      {
        v39 = *(a2 + 7456);
      }

      sub_13B38(v29, v38, v39);
      v35 = a1 + 7472;
      v36 = (a2 + 7472);
      v37 = *(a2 + 7495);
      if ((*(a1 + 7495) & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

LABEL_55:
      if ((v37 & 0x80u) == 0)
      {
        v41 = v36;
      }

      else
      {
        v41 = *(a2 + 7472);
      }

      if ((v37 & 0x80u) == 0)
      {
        v42 = v37;
      }

      else
      {
        v42 = *(a2 + 7480);
      }

      sub_13B38(v35, v41, v42);
      goto LABEL_63;
    }
  }

  else if ((*(a2 + 7447) & 0x80) != 0)
  {
    sub_13A68(v26, *(a2 + 7424), *(a2 + 7432));
    v29 = a1 + 7448;
    v30 = (a2 + 7448);
    v31 = *(a2 + 7471);
    if (*(a1 + 7471) < 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v28 = *(a2 + 7424);
    *(a1 + 7440) = *(a2 + 7440);
    *v26 = v28;
    v29 = a1 + 7448;
    v30 = (a2 + 7448);
    v31 = *(a2 + 7471);
    if (*(a1 + 7471) < 0)
    {
      goto LABEL_45;
    }
  }

  if ((v31 & 0x80) != 0)
  {
    sub_13A68(v29, *(a2 + 7448), *(a2 + 7456));
    v35 = a1 + 7472;
    v36 = (a2 + 7472);
    v37 = *(a2 + 7495);
    if (*(a1 + 7495) < 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v34 = *v30;
    *(v29 + 16) = v30[2];
    *v29 = v34;
    v35 = a1 + 7472;
    v36 = (a2 + 7472);
    v37 = *(a2 + 7495);
    if (*(a1 + 7495) < 0)
    {
      goto LABEL_55;
    }
  }

LABEL_52:
  if ((v37 & 0x80) != 0)
  {
    sub_13A68(v35, *(a2 + 7472), *(a2 + 7480));
  }

  else
  {
    v40 = *v36;
    *(v35 + 16) = v36[2];
    *v35 = v40;
  }

LABEL_63:
  sub_146EC((a1 + 7496), *(a2 + 7496), *(a2 + 7504), (*(a2 + 7504) - *(a2 + 7496)) >> 2);
  sub_5D8C78((a1 + 7520), *(a2 + 7520), *(a2 + 7528), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 7528) - *(a2 + 7520)) >> 5));
  sub_5D8C78((a1 + 7544), *(a2 + 7544), *(a2 + 7552), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 7552) - *(a2 + 7544)) >> 5));
  sub_602F2C((a1 + 7568), *(a2 + 7568), *(a2 + 7576), 0x70913F8BCD29C245 * ((*(a2 + 7576) - *(a2 + 7568)) >> 3));
  sub_602F2C((a1 + 7592), *(a2 + 7592), *(a2 + 7600), 0x70913F8BCD29C245 * ((*(a2 + 7600) - *(a2 + 7592)) >> 3));
LABEL_64:
  *(a1 + 7616) = *(a2 + 7616);
  sub_594568(a1 + 7624, a2 + 7624);
  if (a1 != a2)
  {
    sub_5F9F30((a1 + 7784), *(a2 + 7784), *(a2 + 7792), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 7792) - *(a2 + 7784)) >> 5));
  }

  return a1;
}

uint64_t *sub_5EBBE8(uint64_t a1, uint64_t *a2)
{
  result = (a1 + 24);
  if (result != a2)
  {
    return sub_6044C4(result, *a2, a2[1], 0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7));
  }

  return result;
}

void **sub_5EBC34(uint64_t a1, uint64_t a2)
{
  result = (a1 + 7880);
  if (result != a2)
  {
    return sub_6038B8(result, *a2, *(a2 + 8), 0xFAFAFAFAFAFAFAFBLL * ((*(a2 + 8) - *a2) >> 4));
  }

  return result;
}

uint64_t sub_5EBC90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 7864);
  if (v3 >= *(a1 + 7872))
  {
    result = sub_603684((a1 + 7856), a2);
    *(a1 + 7864) = result;
  }

  else
  {
    sub_52B7D8(*(a1 + 7864), a2);
    result = v3 + 1120;
    *(a1 + 7864) = v3 + 1120;
    *(a1 + 7864) = v3 + 1120;
  }

  return result;
}

BOOL sub_5EBD00(uint64_t a1)
{
  if (sub_4D1F6C((a1 + 48)))
  {
    return 0;
  }

  nullsub_1();
  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
    return 1;
  }

  v5 = v3 + 12656;
  do
  {
    v6 = *(v3 + 1128);
    v7 = *(v3 + 1136);
    result = v6 != v7;
    v3 += 12656;
    v8 = v6 == v7 || v5 == v4;
    v5 += 12656;
  }

  while (!v8);
  return result;
}

uint64_t sub_5EBD80(uint64_t a1, uint64_t a2)
{
  sub_529324(a2 + 744);
  *(a2 + 704) = off_26696C8;
  if (*(a2 + 735) < 0)
  {
    operator delete(*(a2 + 712));
    if ((*(a2 + 655) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a2 + 623) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a2 + 655) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a2 + 632));
  if ((*(a2 + 623) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a2 + 599) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(*(a2 + 600));
  if ((*(a2 + 599) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a2 + 559) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(a2 + 576));
  if ((*(a2 + 559) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a2 + 527) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(a2 + 536));
  if ((*(a2 + 527) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(a2 + 503) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(a2 + 504));
  if ((*(a2 + 503) & 0x80000000) == 0)
  {
LABEL_8:
    v3 = a2;

    return sub_2C0F28(v3);
  }

LABEL_17:
  operator delete(*(a2 + 480));
  v3 = a2;

  return sub_2C0F28(v3);
}

char **sub_5EBE9C(char **a1)
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
        v5 = v3 - 1128;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_266BAE8[v6])(&v8, v3 - 1128);
        }

        *(v3 - 2) = -1;
        v3 -= 1128;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

char **sub_5EBF44(char **a1)
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
        v3 -= 176;
        sub_5C17B4(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_5EBFA8(uint64_t a1)
{
  v2 = *(a1 + 1120);
  if (v2 != -1)
  {
    (off_266BAE8[v2])(&v4, a1);
  }

  *(a1 + 1120) = -1;
  return a1;
}

void sub_5EC004(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        if (v6)
        {
          v7 = *(v4 - 2);
          v8 = *(v4 - 3);
          if (v7 != v6)
          {
            do
            {
              v9 = *(v7 - 1);
              v7 -= 3;
              if (v9 < 0)
              {
                operator delete(*v7);
              }
            }

            while (v7 != v6);
            v8 = *(v4 - 3);
          }

          *(v4 - 2) = v6;
          operator delete(v8);
        }

        v10 = v4 - 100;
        v11 = *(v4 - 8);
        if (v11 != -1)
        {
          (off_266BAF8[v11])(&v12, v4 - 100);
        }

        *(v4 - 8) = -1;
        v4 -= 100;
      }

      while (v10 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_5EC100(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 776);
  if (v3)
  {
    v4 = *(a2 + 784);
    v5 = *(a2 + 776);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(a2 + 776);
    }

    *(a2 + 784) = v3;
    operator delete(v5);
  }

  v7 = *(a2 + 768);
  if (v7 != -1)
  {
    (off_266BAF8[v7])(&v8, a2);
  }

  *(a2 + 768) = -1;
}

uint64_t sub_5EC1A8(uint64_t a1)
{
  v2 = *(a1 + 768);
  if (v2 != -1)
  {
    (off_266BAF8[v2])(&v4, a1);
  }

  *(a1 + 768) = -1;
  return a1;
}

char **sub_5EC204(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; sub_5EC268(a1, i))
    {
      i -= 1168;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_5EC268(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1136) == 1)
  {
    sub_529324(a2 + 760);
    *(a2 + 720) = off_26696C8;
    if (*(a2 + 751) < 0)
    {
      operator delete(*(a2 + 728));
      if ((*(a2 + 671) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(a2 + 639) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 671) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a2 + 648));
    if ((*(a2 + 639) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a2 + 615) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_15:
    operator delete(*(a2 + 616));
    if ((*(a2 + 615) & 0x80000000) == 0)
    {
LABEL_6:
      if ((*(a2 + 575) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }

LABEL_16:
    operator delete(*(a2 + 592));
    if ((*(a2 + 575) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a2 + 543) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    operator delete(*(a2 + 552));
    if ((*(a2 + 543) & 0x80000000) == 0)
    {
LABEL_8:
      if ((*(a2 + 519) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_18:
    operator delete(*(a2 + 520));
    if ((*(a2 + 519) & 0x80000000) == 0)
    {
LABEL_9:
      v4 = a2 + 16;

LABEL_11:
      sub_2C0F28(v4);
      return;
    }

LABEL_19:
    operator delete(*(a2 + 496));
    v4 = a2 + 16;

    goto LABEL_11;
  }
}

uint64_t sub_5EC394(uint64_t a1)
{
  if (*(a1 + 1120) == 1)
  {
    sub_529324(a1 + 744);
    *(a1 + 704) = off_26696C8;
    if (*(a1 + 735) < 0)
    {
      operator delete(*(a1 + 712));
      sub_3E5388(a1 + 504);
      if ((*(a1 + 503) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_3E5388(a1 + 504);
      if ((*(a1 + 503) & 0x80000000) == 0)
      {
LABEL_4:
        sub_2C0F28(a1);
        return a1;
      }
    }

    operator delete(*(a1 + 480));
    goto LABEL_4;
  }

  return a1;
}

void **sub_5EC430(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_5C186C(v3 - 12656);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_5EC498(uint64_t a1)
{
  if ((*(a1 + 735) & 0x80000000) == 0)
  {
    if ((*(a1 + 703) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 680));
    v2 = *(a1 + 664);
    if (v2 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 712));
  if (*(a1 + 703) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 664);
  if (v2 != -1)
  {
LABEL_7:
    (off_266BAC0[v2])(&v5, a1 + 632);
  }

LABEL_8:
  *(a1 + 664) = -1;
  sub_53A868(a1 + 472);
  v3 = *(a1 + 440);
  if (v3)
  {
    *(a1 + 448) = v3;
    operator delete(v3);
  }

  return sub_44FDEC(a1);
}

char **sub_5EC548(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; sub_5ECDEC(a1, i))
    {
      i -= 616;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

void *sub_5EC5AC(void *a1)
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
        v5 = *(v3 - 6);
        if (v5)
        {
          *(v3 - 5) = v5;
          operator delete(v5);
        }

        v3 -= 56;
        sub_55D550(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_5EC628(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_5938B0((v3 - 140));
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_5EC684(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_5C25A8(v3 - 2616);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_5EC6E0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_5EC754(uint64_t a1)
{
  *(a1 + 40) = off_26696C8;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    *a1 = off_26696C8;
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else
  {
    *a1 = off_26696C8;
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  operator delete(*(a1 + 8));
  return a1;
}

char **sub_5EC808(char **a1)
{
  v2 = a1[5];
  if (v2)
  {
    do
    {
      v7 = *v2;
      v8 = *(v2 + 4);
      if (v8)
      {
        *(v2 + 5) = v8;
        operator delete(v8);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v9 = *(v5 - 5);
        if (v9)
        {
          *(v5 - 4) = v9;
          operator delete(v9);
        }

        v5 -= 48;
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_5EC8BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[4];
      if (v6)
      {
        v2[5] = v6;
        operator delete(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_5EC928(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        v2[5] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

char **sub_5EC97C(char **a1)
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
        v5 = *(v3 - 5);
        if (v5)
        {
          *(v3 - 4) = v5;
          operator delete(v5);
        }

        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

char **sub_5EC9F0(char **a1)
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
        v3 -= 616;
        sub_5C2320(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_5ECA54(void *a1)
{
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  sub_53A868((a1 + 9));
  v3 = a1[6];
  if (v3)
  {
    v4 = a1[7];
    v5 = a1[6];
    if (v4 != v3)
    {
      do
      {
        v6 = v4 - 176;
        sub_53A868(v4 - 160);
        v4 = v6;
      }

      while (v6 != v3);
      v5 = a1[6];
    }

    a1[7] = v3;
    operator delete(v5);
  }

  v7 = a1[2];
  if (v7)
  {
    a1[3] = v7;
    operator delete(v7);
  }

  return a1;
}

void *sub_5ECAE4(void *a1)
{
  sub_53A868((a1 + 9));
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[6];
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 176;
        sub_53A868(v3 - 160);
        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[6];
    }

    a1[7] = v2;
    operator delete(v4);
  }

  v6 = a1[2];
  if (v6)
  {
    a1[3] = v6;
    operator delete(v6);
  }

  return a1;
}

char **sub_5ECB64(char **a1)
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
        v5 = v3 - 176;
        sub_53A868((v3 - 160));
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

char **sub_5ECBCC(char **a1)
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
        v5 = v3 - 104;
        v7 = (v3 - 72);
        sub_5ECC44(&v7);
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_5ECC44(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!v2)
  {
    return;
  }

  v4 = v1[1];
  v5 = **a1;
  if (v4 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    if (*(v4 - 9) < 0)
    {
      operator delete(*(v4 - 4));
      if (*(v4 - 41) < 0)
      {
LABEL_10:
        operator delete(*(v4 - 8));
        v6 = *(v4 - 20);
        if (v6 == -1)
        {
          goto LABEL_4;
        }

LABEL_11:
        (off_266BAC0[v6])(&v7, v4 - 14);
        goto LABEL_4;
      }
    }

    else if (*(v4 - 41) < 0)
    {
      goto LABEL_10;
    }

    v6 = *(v4 - 20);
    if (v6 != -1)
    {
      goto LABEL_11;
    }

LABEL_4:
    *(v4 - 20) = -1;
    v4 -= 23;
  }

  while (v4 != v2);
  v5 = **a1;
LABEL_13:
  v1[1] = v2;
  operator delete(v5);
}

void *sub_5ECD28(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[5];
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 48);
        if (v6)
        {
          v7 = *(v3 - 40);
          v5 = *(v3 - 48);
          if (v7 != v6)
          {
            v8 = *(v3 - 40);
            do
            {
              v10 = *(v8 - 24);
              v8 -= 24;
              v9 = v10;
              if (v10)
              {
                *(v7 - 16) = v9;
                operator delete(v9);
              }

              v7 = v8;
            }

            while (v8 != v6);
            v5 = *(v3 - 48);
          }

          *(v3 - 40) = v6;
          operator delete(v5);
        }

        v3 -= 64;
      }

      while (v3 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    operator delete(v4);
  }

  v11 = a1[2];
  if (v11)
  {
    a1[3] = v11;
    operator delete(v11);
  }

  return a1;
}

void sub_5ECDEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 552);
  if (v3)
  {
    *(a2 + 560) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 528);
  if (v4)
  {
    *(a2 + 536) = v4;
    operator delete(v4);
  }

  if ((*(a2 + 519) & 0x80000000) == 0)
  {
    if ((*(a2 + 487) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    operator delete(*(a2 + 464));
    v5 = *(a2 + 448);
    if (v5 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  operator delete(*(a2 + 496));
  if (*(a2 + 487) < 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v5 = *(a2 + 448);
  if (v5 != -1)
  {
LABEL_11:
    (off_266BAC0[v5])(&v7, a2 + 416);
  }

LABEL_12:
  *(a2 + 448) = -1;
  sub_53A868(a2 + 256);
  sub_53A868(a2 + 96);
  v6 = *(a2 + 56);
  if (v6)
  {
    *(a2 + 64) = v6;
    operator delete(v6);
  }
}

char **sub_5ECEBC(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 5);
        v5 -= 40;
        v6 = v7;
        if (v7)
        {
          *(v3 - 4) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

char **sub_5ECF34(char **a1)
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
        v5 = *(v3 - 26);
        if (v5)
        {
          *(v3 - 25) = v5;
          operator delete(v5);
        }

        v6 = v3 - 248;
        v7 = *(v3 - 31);
        if (v7)
        {
          *(v3 - 30) = v7;
          operator delete(v7);
        }

        v3 -= 248;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_5ECFBC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_5ED000(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_55F7FC((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void ****sub_5ED044(void ****a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; sub_5ED0A8(a1, i))
    {
      i -= 13;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_5ED0A8(uint64_t a1, void ***a2)
{
  v3 = a2[11];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a2[5];
  if (v4)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = a2[3];
  a2[3] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *a2;
  if (*a2)
  {
    v8 = a2[1];
    v9 = *a2;
    if (v8 == v7)
    {
      a2[1] = v7;
    }

    else
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = *a2;
      a2[1] = v7;
    }

    operator delete(v9);
  }
}

void **sub_5ED1D0(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_5936E4(v3 - 107);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_5ED22C(void **a1)
{
  if (*a1)
  {
    sub_5ED268(a1, *a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_5ED268(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      if (*(v4 - 9) < 0)
      {
        operator delete(*(v4 - 4));
        if ((*(v4 - 41) & 0x80000000) == 0)
        {
LABEL_6:
          if ((*(v4 - 65) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      else if ((*(v4 - 41) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      operator delete(*(v4 - 8));
      if ((*(v4 - 65) & 0x80000000) == 0)
      {
LABEL_7:
        if ((*(v4 - 105) & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

LABEL_12:
      operator delete(*(v4 - 11));
      if ((*(v4 - 105) & 0x80000000) == 0)
      {
LABEL_8:
        v5 = v4 - 20;
        if (*(v4 - 137) < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_3;
      }

LABEL_13:
      operator delete(*(v4 - 16));
      v5 = v4 - 20;
      if (*(v4 - 137) < 0)
      {
LABEL_14:
        operator delete(*v5);
      }

LABEL_3:
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_5ED330(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 151) < 0)
  {
    operator delete(*(a2 + 128));
    if ((*(a2 + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a2 + 95) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a2 + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a2 + 96));
  if ((*(a2 + 95) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator delete(*(a2 + 32));
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_9:
  operator delete(*(a2 + 72));
  if (*(a2 + 55) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    return;
  }

LABEL_11:
  v3 = *a2;

  operator delete(v3);
}

uint64_t sub_5ED3D8(uint64_t a1)
{
  *(a1 + 88) = off_266B8A8;
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
    if ((*(a1 + 151) & 0x80000000) == 0)
    {
LABEL_3:
      *(a1 + 88) = off_26696C8;
      if ((*(a1 + 119) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 151) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 128));
  *(a1 + 88) = off_26696C8;
  if ((*(a1 + 119) & 0x80000000) == 0)
  {
LABEL_4:
    *(a1 + 48) = off_26696C8;
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator delete(*(a1 + 56));
    *a1 = off_26696C8;
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_11;
  }

LABEL_9:
  operator delete(*(a1 + 96));
  *(a1 + 48) = off_26696C8;
  if (*(a1 + 79) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  *a1 = off_26696C8;
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_11:
  operator delete(*(a1 + 8));
  return a1;
}

void **sub_5ED54C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_5941F8(v3 - 432);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_5ED5A8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_5C3168(v3 - 360);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_5ED604(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v6 = *v2;
      v7 = v2[3];
      if (v7)
      {
        v8 = v2[4];
        v5 = v2[3];
        if (v8 != v7)
        {
          do
          {
            v9 = *(v8 - 1);
            v8 -= 3;
            if (v9 < 0)
            {
              operator delete(*v8);
            }
          }

          while (v8 != v7);
          v5 = v2[3];
        }

        v2[4] = v7;
        operator delete(v5);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_5ED6AC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v4 = *v2;
      v5 = v2[3];
      if (v5)
      {
        v6 = v2[4];
        v3 = v2[3];
        if (v6 != v5)
        {
          do
          {
            v7 = *(v6 - 1);
            v6 -= 3;
            if (v7 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v3 = v2[3];
        }

        v2[4] = v5;
        operator delete(v3);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }
}

void ***sub_5ED73C(void ***a1)
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
        v5 = *(v3 - 17);
        v3 -= 5;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_5ED7B0(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_5C3378((v3 - 88));
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_5ED80C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = *(v2 + 6);
      if (v6)
      {
        *(v2 + 7) = v6;
        operator delete(v6);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_5ED888(int a1, char *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = *(v2 + 6);
      if (v4)
      {
        *(v2 + 7) = v4;
        operator delete(v4);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_5ED8EC(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_5ED940(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 3));
        if ((*(v4 - 33) & 0x80000000) == 0)
        {
LABEL_6:
          if ((*(v4 - 57) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      else if ((*(v4 - 33) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      operator delete(*(v4 - 7));
      if ((*(v4 - 57) & 0x80000000) == 0)
      {
LABEL_7:
        if ((*(v4 - 97) & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

LABEL_12:
      operator delete(*(v4 - 10));
      if ((*(v4 - 97) & 0x80000000) == 0)
      {
LABEL_8:
        v5 = v4 - 19;
        if (*(v4 - 129) < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_3;
      }

LABEL_13:
      operator delete(*(v4 - 15));
      v5 = v4 - 19;
      if (*(v4 - 129) < 0)
      {
LABEL_14:
        operator delete(*v5);
      }

LABEL_3:
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t *sub_5EDA08(uint64_t *a1, const void ***a2)
{
  if (a1 == a2)
  {
    sub_60226C((a1 + 6), (a2 + 6));
    sub_60226C((a1 + 68), (a2 + 68));
  }

  else
  {
    sub_74300(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
    sub_602340(a1 + 3, a2[3], a2[4], 0xEF7BDEF7BDEF7BDFLL * ((a2[4] - a2[3]) >> 4));
    sub_60226C((a1 + 6), (a2 + 6));
    sub_60226C((a1 + 68), (a2 + 68));
    sub_602340(a1 + 130, a2[130], a2[131], 0xEF7BDEF7BDEF7BDFLL * ((a2[131] - a2[130]) >> 4));
    sub_602340(a1 + 133, a2[133], a2[134], 0xEF7BDEF7BDEF7BDFLL * ((a2[134] - a2[133]) >> 4));
  }

  return a1;
}

uint64_t sub_5EDB04(uint64_t a1, uint64_t a2)
{
  sub_594568(a1, a2);
  sub_594568(a1 + 160, a2 + 160);
  sub_594568(a1 + 320, a2 + 320);
  sub_594568(a1 + 480, a2 + 480);
  sub_594568(a1 + 640, a2 + 640);
  sub_594568(a1 + 800, a2 + 800);
  sub_594568(a1 + 960, a2 + 960);
  sub_594568(a1 + 1120, a2 + 1120);
  sub_594568(a1 + 1280, a2 + 1280);
  sub_594568(a1 + 1440, a2 + 1440);
  sub_594568(a1 + 1600, a2 + 1600);
  sub_594568(a1 + 1760, a2 + 1760);
  sub_594568(a1 + 1920, a2 + 1920);
  sub_594568(a1 + 2080, a2 + 2080);
  sub_594568(a1 + 2240, a2 + 2240);
  sub_594568(a1 + 2400, a2 + 2400);
  sub_594568(a1 + 2560, a2 + 2560);
  sub_594568(a1 + 2720, a2 + 2720);
  sub_594568(a1 + 2880, a2 + 2880);
  sub_594568(a1 + 3040, a2 + 3040);
  sub_594568(a1 + 3200, a2 + 3200);
  sub_594568(a1 + 3360, a2 + 3360);
  sub_594568(a1 + 3520, a2 + 3520);
  sub_594568(a1 + 3680, a2 + 3680);
  sub_594568(a1 + 3840, a2 + 3840);
  sub_594568(a1 + 4000, a2 + 4000);
  sub_594568(a1 + 4160, a2 + 4160);
  sub_594568(a1 + 4320, a2 + 4320);
  sub_594568(a1 + 4480, a2 + 4480);
  sub_594568(a1 + 4640, a2 + 4640);
  return a1;
}

void **sub_5EDC9C(void **result, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x5DDB1ADCB91F64A7 * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_5C186C(v10 - 12656);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x52DA224E52346)
    {
      v12 = 0x5DDB1ADCB91F64A7 * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x296D1127291A3)
      {
        v14 = 0x52DA224E52346;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x52DA224E52346)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = &v15[-v8];
  if (0x5DDB1ADCB91F64A7 * (&v15[-v8] >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5F7D68(v8, v5);
        v5 += 12656;
        v8 += 12656;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    for (; v15 != v8; result = sub_5C186C(v15))
    {
      v15 -= 12656;
    }

    v6[1] = v8;
  }

  else
  {
    v17 = &v16[a2];
    if (v15 != v8)
    {
      do
      {
        result = sub_5F7D68(v8, v5);
        v5 += 12656;
        v8 += 12656;
        v16 -= 12656;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      v20 = 12656;
      do
      {
        result = sub_5EDF7C(&v15[v19], &v17[v19]);
        v20 -= 12656;
        v19 += 12656;
      }

      while (&v17[v19] != a3);
      v18 = &v15[v19];
    }

    v6[1] = v18;
  }

  return result;
}

void sub_5EDF48(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    v6 = v2 - v4;
    v7 = -v3;
    do
    {
      v6 = sub_5C186C(v6) - 12656;
      v7 += 12656;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_5EDF7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3ED4B8(a1, a2);
  *(v4 + 1096) = *(a2 + 1096);
  *(v4 + 1104) = 0;
  *(v4 + 1120) = 0;
  *(v4 + 1112) = 0;
  sub_5EF174(v4 + 1104, *(a2 + 1104), *(a2 + 1112), 0x3795876FF3795877 * ((*(a2 + 1112) - *(a2 + 1104)) >> 3));
  *(a1 + 1144) = 0;
  *(a1 + 1128) = 0u;
  sub_5EF174(a1 + 1128, *(a2 + 1128), *(a2 + 1136), 0x3795876FF3795877 * ((*(a2 + 1136) - *(a2 + 1128)) >> 3));
  *(a1 + 1168) = 0;
  *(a1 + 1152) = 0u;
  v5 = *(a2 + 1152);
  v6 = *(a2 + 1160);
  if (v6 != v5)
  {
    if ((0x2E8BA2E8BA2E8BA3 * ((v6 - v5) >> 4)) <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1192) = 0;
  *(a1 + 1176) = 0u;
  v7 = *(a2 + 1176);
  v8 = *(a2 + 1184);
  if (v8 != v7)
  {
    if ((0x2E8BA2E8BA2E8BA3 * ((v8 - v7) >> 4)) <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1216) = 0;
  *(a1 + 1200) = 0u;
  v9 = *(a2 + 1200);
  v10 = *(a2 + 1208);
  if (v10 != v9)
  {
    if (((v10 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1240) = 0;
  *(a1 + 1224) = 0u;
  v11 = *(a2 + 1224);
  v12 = *(a2 + 1232);
  if (v12 != v11)
  {
    if (((v12 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1264) = 0;
  *(a1 + 1248) = 0u;
  sub_5F41F0(a1 + 1248, *(a2 + 1248), *(a2 + 1256), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1256) - *(a2 + 1248)) >> 5));
  if (*(a2 + 1295) < 0)
  {
    sub_325C((a1 + 1272), *(a2 + 1272), *(a2 + 1280));
  }

  else
  {
    v13 = *(a2 + 1272);
    *(a1 + 1288) = *(a2 + 1288);
    *(a1 + 1272) = v13;
  }

  if (*(a2 + 1319) < 0)
  {
    sub_325C((a1 + 1296), *(a2 + 1296), *(a2 + 1304));
  }

  else
  {
    v14 = *(a2 + 1296);
    *(a1 + 1312) = *(a2 + 1312);
    *(a1 + 1296) = v14;
  }

  sub_5F4380(a1 + 1320, (a2 + 1320));
  sub_5F49A4(a1 + 2408, a2 + 2408);
  *(a1 + 7224) = 0;
  *(a1 + 7208) = 0u;
  sub_353184(a1 + 7208, *(a2 + 7208), *(a2 + 7216), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7216) - *(a2 + 7208)) >> 3));
  sub_55BD50(a1 + 7232, a2 + 7232);
  *(a1 + 7408) = 0;
  *(a1 + 7392) = 0u;
  v15 = *(a2 + 7392);
  v16 = *(a2 + 7400);
  if (v16 != v15)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 7432) = 0;
  *(a1 + 7416) = 0u;
  sub_5713F4(a1 + 7416, *(a2 + 7416), *(a2 + 7424), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 7424) - *(a2 + 7416)) >> 5));
  if (*(a2 + 7463) < 0)
  {
    sub_325C((a1 + 7440), *(a2 + 7440), *(a2 + 7448));
  }

  else
  {
    v17 = *(a2 + 7440);
    *(a1 + 7456) = *(a2 + 7456);
    *(a1 + 7440) = v17;
  }

  v18 = (a1 + 7464);
  if (*(a2 + 7487) < 0)
  {
    sub_325C(v18, *(a2 + 7464), *(a2 + 7472));
  }

  else
  {
    v19 = *(a2 + 7464);
    *(a1 + 7480) = *(a2 + 7480);
    *v18 = v19;
  }

  *(a1 + 7504) = 0;
  *(a1 + 7488) = 0u;
  sub_353184(a1 + 7488, *(a2 + 7488), *(a2 + 7496), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7496) - *(a2 + 7488)) >> 3));
  *(a1 + 7512) = 0u;
  *(a1 + 7528) = 0;
  sub_5F4C04(a1 + 7512, *(a2 + 7512), *(a2 + 7520), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 7520) - *(a2 + 7512)) >> 5));
  *(a1 + 7552) = 0;
  *(a1 + 7536) = 0u;
  sub_5F50BC(a1 + 7536, *(a2 + 7536), *(a2 + 7544), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 7544) - *(a2 + 7536)) >> 6));
  *(a1 + 7576) = 0;
  *(a1 + 7560) = 0u;
  sub_5F53E0(a1 + 7560, *(a2 + 7560), *(a2 + 7568), 0x77A04C8F8D28AC43 * ((*(a2 + 7568) - *(a2 + 7560)) >> 3));
  sub_5F4F00(a1 + 7584, a2 + 7584);
  sub_5F4F00(a1 + 8440, a2 + 8440);
  sub_55BD50(a1 + 9296, a2 + 9296);
  sub_55BD50(a1 + 9456, a2 + 9456);
  sub_55BD50(a1 + 9616, a2 + 9616);
  sub_55BD50(a1 + 9776, a2 + 9776);
  sub_55BD50(a1 + 9936, a2 + 9936);
  *(a1 + 10112) = 0;
  *(a1 + 10096) = 0u;
  sub_5F5574(a1 + 10096, *(a2 + 10096), *(a2 + 10104), 0xEF7BDEF7BDEF7BDFLL * ((*(a2 + 10104) - *(a2 + 10096)) >> 3));
  *(a1 + 10120) = *(a2 + 10120);
  *(a1 + 10128) = 0;
  *(a1 + 10144) = 0;
  *(a1 + 10136) = 0;
  sub_5F57B4(a1 + 10128, *(a2 + 10128), *(a2 + 10136), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10136) - *(a2 + 10128)) >> 3));
  *(a1 + 10168) = 0;
  *(a1 + 10152) = 0u;
  sub_5F58D4(a1 + 10152, *(a2 + 10152), *(a2 + 10160), 0x4FCACE213F2B3885 * ((*(a2 + 10160) - *(a2 + 10152)) >> 3));
  *(a1 + 10192) = 0;
  *(a1 + 10176) = 0u;
  sub_5F58D4(a1 + 10176, *(a2 + 10176), *(a2 + 10184), 0x4FCACE213F2B3885 * ((*(a2 + 10184) - *(a2 + 10176)) >> 3));
  *(a1 + 10200) = 0u;
  *(a1 + 10216) = 0;
  sub_5F58D4(a1 + 10200, *(a2 + 10200), *(a2 + 10208), 0x4FCACE213F2B3885 * ((*(a2 + 10208) - *(a2 + 10200)) >> 3));
  if (*(a2 + 10247) < 0)
  {
    sub_325C((a1 + 10224), *(a2 + 10224), *(a2 + 10232));
  }

  else
  {
    v20 = *(a2 + 10224);
    *(a1 + 10240) = *(a2 + 10240);
    *(a1 + 10224) = v20;
  }

  sub_5F5AD4(a1 + 10248, (a2 + 10248));
  *(a1 + 10336) = 0;
  *(a1 + 10320) = 0u;
  sub_5F5F24(a1 + 10320, *(a2 + 10320), *(a2 + 10328), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 10328) - *(a2 + 10320)) >> 3));
  sub_5F618C(a1 + 10344, a2 + 10344);
  sub_5F618C(a1 + 11088, a2 + 11088);
  *(a1 + 11848) = 0;
  *(a1 + 11832) = 0u;
  v21 = *(a2 + 11832);
  v22 = *(a2 + 11840);
  if (v22 != v21)
  {
    if (((v22 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5F6420((a1 + 11856), (a2 + 11856));
  *(a1 + 11968) = 0;
  *(a1 + 11952) = 0u;
  v23 = *(a2 + 11952);
  v24 = *(a2 + 11960);
  if (v24 != v23)
  {
    if (((v24 - v23) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 11976) = *(a2 + 11976);
  *(a1 + 11984) = 0;
  *(a1 + 12000) = 0;
  *(a1 + 11992) = 0;
  v25 = *(a2 + 11984);
  v26 = *(a2 + 11992);
  if (v26 != v25)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5F6530(a1 + 12008, (a2 + 12008));
  *(a1 + 12256) = 0;
  *(a1 + 12240) = 0u;
  v27 = *(a2 + 12240);
  v28 = *(a2 + 12248);
  if (v28 != v27)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 12264) = *(a2 + 12264);
  *(a1 + 12272) = 0;
  *(a1 + 12288) = 0;
  *(a1 + 12280) = 0;
  sub_5F67E4(a1 + 12272, *(a2 + 12272), *(a2 + 12280), 0x4FCACE213F2B3885 * ((*(a2 + 12280) - *(a2 + 12272)) >> 3));
  *(a1 + 12312) = 0;
  *(a1 + 12296) = 0u;
  sub_52DE3C((a1 + 12296), *(a2 + 12296), *(a2 + 12304), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 12304) - *(a2 + 12296)) >> 3));
  if (*(a2 + 12343) < 0)
  {
    sub_325C((a1 + 12320), *(a2 + 12320), *(a2 + 12328));
  }

  else
  {
    v29 = *(a2 + 12320);
    *(a1 + 12336) = *(a2 + 12336);
    *(a1 + 12320) = v29;
  }

  *(a1 + 12360) = 0;
  *(a1 + 12344) = 0u;
  v30 = *(a2 + 12344);
  v31 = *(a2 + 12352);
  if (v31 != v30)
  {
    if (((v31 - v30) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 12368) = *(a2 + 12368);
  *(a1 + 12376) = 0;
  *(a1 + 12392) = 0;
  *(a1 + 12384) = 0;
  v32 = *(a2 + 12376);
  v33 = *(a2 + 12384);
  if (v33 != v32)
  {
    if (((v33 - v32) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5F6A1C(a1 + 12400, (a2 + 12400));
  *(a1 + 12464) = off_26696C8;
  if (*(a2 + 12495) < 0)
  {
    sub_325C((a1 + 12472), *(a2 + 12472), *(a2 + 12480));
  }

  else
  {
    v34 = *(a2 + 12472);
    *(a1 + 12488) = *(a2 + 12488);
    *(a1 + 12472) = v34;
  }

  *(a1 + 12464) = off_266BBB8;
  *(a1 + 12496) = *(a2 + 12496);
  *(a1 + 12504) = off_26696C8;
  v35 = (a1 + 12512);
  if (*(a2 + 12535) < 0)
  {
    sub_325C(v35, *(a2 + 12512), *(a2 + 12520));
  }

  else
  {
    v36 = *(a2 + 12512);
    *(a1 + 12528) = *(a2 + 12528);
    *v35 = v36;
  }

  *(a1 + 12504) = off_266BBF0;
  *(a1 + 12536) = *(a2 + 12536);
  sub_5F74A0(a1 + 12544, a2 + 12544);
  sub_81988((a1 + 12624), a2 + 12624);
  *(a1 + 12648) = *(a2 + 12648);
  return a1;
}

void sub_5EEC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, void **a14, void **a15, void **a16, char **a17, void **a18, char **a19, char *a20)
{
  *(v20 + 12464) = v23;
  if (*(v22 + 231) < 0)
  {
    operator delete(*v24);
  }

  sub_5EC808((v20 + v25));
  v27 = *(v20 + 12376);
  if (v27)
  {
    *(v20 + 12384) = v27;
    operator delete(v27);
    v28 = *(v20 + 12344);
    if (!v28)
    {
LABEL_5:
      if ((*(v22 + 79) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v28 = *(v20 + 12344);
    if (!v28)
    {
      goto LABEL_5;
    }
  }

  *(v20 + 12352) = v28;
  operator delete(v28);
  if ((*(v22 + 79) & 0x80000000) == 0)
  {
LABEL_7:
    sub_528FAC((v20 + 12296));
    sub_5EC9F0((v20 + 12272));
    sub_5ECA54((v20 + 12008));
    v29 = *(v20 + 11984);
    if (v29)
    {
      *(v20 + 11992) = v29;
      operator delete(v29);
    }

    v30 = *(v20 + 11952);
    if (v30)
    {
      *(v20 + 11960) = v30;
      operator delete(v30);
    }

    sub_5C23C8((v20 + 11856));
    v31 = *(v20 + 11832);
    if (v31)
    {
      *(v20 + 11840) = v31;
      operator delete(v31);
    }

    sub_5EC498(v20 + 11088);
    sub_5EC498(v20 + 10344);
    sub_5ECBCC((v20 + 10320));
    sub_5ECD28((v20 + 10248));
    if (a20[2784] < 0)
    {
      operator delete(*a10);
    }

    sub_5EC548((v20 + 10200));
    sub_5EC548((v20 + 10176));
    sub_5EC548((v20 + 10152));
    sub_5ECEBC((v20 + 10128));
    sub_5ECF34((v20 + 10096));
    sub_53A868(v20 + 9936);
    sub_53A868(v20 + 9776);
    sub_53A868(v20 + 9616);
    sub_53A868(v20 + 9456);
    sub_53A868(v20 + 9296);
    sub_5936E4((v20 + 8440));
    sub_5936E4((v20 + 7584));
    sub_5ED1D0((v20 + 7560));
    sub_5EC5AC((v20 + 7536));
    sub_5EC628((v20 + 7512));
    sub_1A104((v20 + 7488));
    if (a20[24] < 0)
    {
      operator delete(*a11);
    }

    if (*a20 < 0)
    {
      operator delete(*a12);
    }

    sub_5706DC((v20 + 7416));
    v32 = *(v20 + 7392);
    if (v32)
    {
      *(v20 + 7400) = v32;
      operator delete(v32);
    }

    sub_53A868(v20 + 7232);
    sub_1A104((v20 + 7208));
    sub_5C1688(v20 + 2408);
    sub_559E70((v20 + 1320));
    if (*(v20 + 1319) < 0)
    {
      operator delete(*a13);
    }

    if (*(v20 + 1295) < 0)
    {
      operator delete(*a14);
    }

    sub_5ED22C((v20 + 1248));
    v33 = *a15;
    if (*a15)
    {
      *(v20 + 1232) = v33;
      operator delete(v33);
    }

    v34 = *a16;
    if (*a16)
    {
      *(v20 + 1208) = v34;
      operator delete(v34);
    }

    sub_5EBF44(a19);
    sub_5EBF44(a17);
    sub_5EC684(a18);
    sub_5EC684((v20 + 1104));
    sub_3EEA68(v20);
    _Unwind_Resume(a1);
  }

LABEL_6:
  operator delete(*v21);
  goto LABEL_7;
}

void sub_5EF0B8()
{
  if (*(v0 + 12344))
  {
    JUMPOUT(0x5EF0A4);
  }

  JUMPOUT(0x5EEE0CLL);
}

void sub_5EF0CC()
{
  v2 = *(v0 + v1);
  if (v2)
  {
    *(v0 + 12248) = v2;
    operator delete(v2);
  }

  sub_5ECAE4((v0 + 12008));
  JUMPOUT(0x5EEE40);
}

void sub_5EF0F8()
{
  if (!*(v0 + 11952))
  {
    JUMPOUT(0x5EEE68);
  }

  JUMPOUT(0x5EEE60);
}

void sub_5EF10C()
{
  if (!*(v0 + 11832))
  {
    JUMPOUT(0x5EEE88);
  }

  JUMPOUT(0x5EEE80);
}

void sub_5EF120()
{
  if (!*(v0 + 7392))
  {
    JUMPOUT(0x5EEFE0);
  }

  JUMPOUT(0x5EEFD8);
}

void sub_5EF134()
{
  if (!*v0)
  {
    JUMPOUT(0x5EF04CLL);
  }

  JUMPOUT(0x5EF044);
}

void sub_5EF144()
{
  if (!*v0)
  {
    JUMPOUT(0x5EF060);
  }

  JUMPOUT(0x5EF058);
}

void sub_5EF154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_5F4178(va);
  JUMPOUT(0x5EF068);
}

void sub_5EF164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_5F4178(va);
  JUMPOUT(0x5EF070);
}

void sub_5EF174(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x190D4F120190D5)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5EF25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = v11 - 2616;
    v15 = -v12;
    do
    {
      v14 = sub_5C25A8(v14) - 2616;
      v15 += 2616;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_5F3FBC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5EF290(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 80) = v7;
  sub_5EF9A8(a1 + 136, a2 + 136);
  v10 = *(a2 + 384);
  *(a1 + 386) = *(a2 + 386);
  *(a1 + 384) = v10;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  sub_5EFB28(a1 + 392, *(a2 + 392), *(a2 + 400), 0x86BCA1AF286BCA1BLL * ((*(a2 + 400) - *(a2 + 392)) >> 3));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  sub_5EFB28(a1 + 416, *(a2 + 416), *(a2 + 424), 0x86BCA1AF286BCA1BLL * ((*(a2 + 424) - *(a2 + 416)) >> 3));
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  sub_5EFB28(a1 + 440, *(a2 + 440), *(a2 + 448), 0x86BCA1AF286BCA1BLL * ((*(a2 + 448) - *(a2 + 440)) >> 3));
  sub_5139E8(a1 + 464, (a2 + 464));
  v11 = *(a2 + 632);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 632) = v11;
  v12 = *(a2 + 648);
  v13 = *(a2 + 664);
  v14 = *(a2 + 680);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 664) = v13;
  *(a1 + 680) = v14;
  *(a1 + 648) = v12;
  sub_5EFD04(a1 + 704, (a2 + 704));
  *(a1 + 808) = 0;
  *(a1 + 792) = 0u;
  sub_52DE3C((a1 + 792), *(a2 + 792), *(a2 + 800), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 800) - *(a2 + 792)) >> 3));
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = 0;
  *(a1 + 840) = 0;
  *(a1 + 832) = 0;
  sub_5EFECC(a1 + 824, *(a2 + 824), *(a2 + 832), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 832) - *(a2 + 824)) >> 5));
  sub_5139E8(a1 + 848, (a2 + 848));
  *(a1 + 1000) = *(a2 + 1000);
  v15 = *(a2 + 1008);
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1008) = v15;
  sub_5F4F00(a1 + 1032, a2 + 1032);
  *(a1 + 1904) = 0;
  *(a1 + 1888) = 0u;
  sub_5F4C04(a1 + 1888, *(a2 + 1888), *(a2 + 1896), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 1896) - *(a2 + 1888)) >> 5));
  *(a1 + 1928) = 0;
  *(a1 + 1912) = 0u;
  sub_5F50BC(a1 + 1912, *(a2 + 1912), *(a2 + 1920), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1920) - *(a2 + 1912)) >> 6));
  *(a1 + 1952) = 0;
  *(a1 + 1936) = 0u;
  sub_5F00AC(a1 + 1936, *(a2 + 1936), *(a2 + 1944), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 1944) - *(a2 + 1936)) >> 6));
  *(a1 + 1976) = 0;
  *(a1 + 1960) = 0u;
  v16 = *(a2 + 1960);
  v17 = *(a2 + 1968);
  if (v17 != v16)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v17 - v16) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 2000) = 0;
  *(a1 + 1984) = 0u;
  sub_5F15E8((a1 + 1984), *(a2 + 1984), *(a2 + 1992), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1992) - *(a2 + 1984)) >> 3));
  *(a1 + 2024) = 0;
  *(a1 + 2008) = 0u;
  sub_5F1818(a1 + 2008, *(a2 + 2008), *(a2 + 2016), 0x4FA4FA4FA4FA4FA5 * ((*(a2 + 2016) - *(a2 + 2008)) >> 3));
  *(a1 + 2048) = 0;
  *(a1 + 2032) = 0u;
  v18 = *(a2 + 2032);
  v19 = *(a2 + 2040);
  if (v19 != v18)
  {
    if (0xF0F0F0F0F0F0F0F1 * ((v19 - v18) >> 4) < 0xF0F0F0F0F0F0F1)
    {
      operator new();
    }

    sub_1794();
  }

  v20 = *(a2 + 2056);
  *(a1 + 2058) = *(a2 + 2058);
  *(a1 + 2056) = v20;
  *(a1 + 2064) = 0;
  *(a1 + 2080) = 0;
  *(a1 + 2072) = 0;
  sub_5F304C(a1 + 2064, *(a2 + 2064), *(a2 + 2072), 0x84BDA12F684BDA13 * ((*(a2 + 2072) - *(a2 + 2064)) >> 4));
  v21 = *(a2 + 2104);
  *(a1 + 2088) = *(a2 + 2088);
  *(a1 + 2104) = v21;
  *(a1 + 2120) = 0;
  *(a1 + 2136) = 0;
  *(a1 + 2128) = 0;
  sub_5F3370(a1 + 2120, *(a2 + 2120), *(a2 + 2128), 0xD37A6F4DE9BD37A7 * ((*(a2 + 2128) - *(a2 + 2120)) >> 3));
  v22 = *(a2 + 2144);
  v23 = *(a2 + 2160);
  *(a1 + 2169) = *(a2 + 2169);
  *(a1 + 2160) = v23;
  *(a1 + 2144) = v22;
  *(a1 + 2192) = *(a2 + 2192);
  v24 = *(a2 + 2208);
  *(a1 + 2224) = *(a2 + 2224);
  *(a1 + 2208) = v24;
  sub_5F35A4(a1 + 2232, a2 + 2232);
  *(a1 + 2416) = *(a2 + 2416);
  *(a1 + 2424) = 0;
  *(a1 + 2440) = 0;
  *(a1 + 2432) = 0;
  v25 = *(a2 + 2424);
  v26 = *(a2 + 2432);
  if (v26 != v25)
  {
    if (((v26 - v25) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_3EDBB0(a1 + 2448, (a2 + 2448));
  v27 = *(a2 + 2584);
  *(a1 + 2593) = *(a2 + 2593);
  *(a1 + 2584) = v27;
  return a1;
}

void sub_5EF814(_Unwind_Exception *a1, uint64_t a2, void **a3, uint64_t a4, void ***a5, ...)
{
  va_start(va, a5);
  *(v5 + 1968) = v7;
  sub_5F1560(va);
  sub_5ED7B0((v5 + 1936));
  sub_5EC5AC(v6);
  sub_5EC628((v5 + 1888));
  sub_5936E4((v5 + 1032));
  sub_3E5388(v5 + 848);
  sub_5ED22C((v5 + 824));
  sub_528FAC(a5);
  sub_5ED8EC((v5 + 704));
  sub_3E5388(v5 + 464);
  sub_593FC8((v5 + 440));
  sub_593FC8((v5 + 416));
  sub_593FC8((v5 + 392));
  sub_5ECFBC(v5 + 136);
  _Unwind_Resume(a1);
}

uint64_t sub_5EF9A8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = *(a2 + 8);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v3 = *(a2 + 24);
  *(a1 + 40) = 0;
  *(a1 + 24) = v3;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v7;
  *(a1 + 72) = v6;
  v8 = *(a2 + 120);
  v9 = *(a2 + 136);
  v10 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v10;
  *(a1 + 136) = v9;
  *(a1 + 120) = v8;
  v11 = *(a2 + 184);
  v12 = *(a2 + 200);
  v13 = *(a2 + 216);
  *(a1 + 230) = *(a2 + 230);
  *(a1 + 216) = v13;
  *(a1 + 200) = v12;
  *(a1 + 184) = v11;
  return a1;
}

void sub_5EFAF4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_5EFB28(uint64_t result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1AF286BCA1AF287)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5EFC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_5EFC4C(va);
  *(v10 + 8) = v11;
  sub_5EFCB4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5EFC4C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 152;
        sub_5ED330(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void ****sub_5EFCB4(void ****result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = **result;
    if (v1)
    {
      v2 = result;
      sub_5ED940(*result, v1);
      operator delete(**v2);
      return v2;
    }
  }

  return result;
}

uint64_t sub_5EFD04(uint64_t a1, __int16 *a2)
{
  v2 = *a2;
  *(a1 + 8) = 0;
  *a1 = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = *(a2 + 1);
  v3 = *(a2 + 2);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v6 = *(a2 + 4);
  v5 = *(a2 + 5);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v8 = *(a2 + 7);
  v7 = *(a2 + 8);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 80) = *(a2 + 10);
  return a1;
}

void sub_5EFE5C(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[8] = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      v8 = *v2;
      if (!*v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[5] = v7;
  operator delete(v7);
  v8 = *v2;
  if (!*v2)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  v1[2] = v8;
  operator delete(v8);
  goto LABEL_5;
}

void sub_5EFEBC()
{
  if (!*v0)
  {
    JUMPOUT(0x5EFE80);
  }

  JUMPOUT(0x5EFE78);
}

void sub_5EFECC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x19999999999999ALL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5EFFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_5EFFF4(va);
  *(v10 + 8) = v11;
  sub_5F005C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5EFFF4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 160;
        sub_5ED330(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void ****sub_5F005C(void ****result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = **result;
    if (v1)
    {
      v2 = result;
      sub_5ED268(*result, v1);
      operator delete(**v2);
      return v2;
    }
  }

  return result;
}

void sub_5F00AC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x5D1745D1745D18)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5F0194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = (v11 - 704);
    v15 = -v12;
    do
    {
      v14 = sub_5C3378(v14) - 88;
      v15 += 704;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_5F13C8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5F01C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5F046C(a1, a2);
  *(v4 + 380) = *(a2 + 380);
  sub_55BD50(v4 + 384, a2 + 384);
  if (*(a2 + 567) < 0)
  {
    sub_325C((a1 + 544), *(a2 + 544), *(a2 + 552));
  }

  else
  {
    v5 = *(a2 + 544);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 544) = v5;
  }

  sub_5F0850(a1 + 568, a2 + 568);
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = *(a2 + 672);
  prime = *(a2 + 648);
  if (prime == 1)
  {
    prime = 2;
LABEL_20:
    sub_B07C(a1 + 640, prime);
    goto LABEL_21;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 648));
    v7 = *(a1 + 648);
    v8 = prime >= *&v7;
    if (prime > *&v7)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = 0;
    v8 = 1;
    if (prime)
    {
      goto LABEL_20;
    }
  }

  if (!v8)
  {
    v9 = vcvtps_u32_f32(*(a1 + 664) / *(a1 + 672));
    if (*&v7 < 3uLL || (v10 = vcnt_s8(v7), v10.i16[0] = vaddlv_u8(v10), v10.u32[0] > 1uLL))
    {
      v9 = std::__next_prime(v9);
    }

    else
    {
      v11 = 1 << -__clz(v9 - 1);
      if (v9 >= 2)
      {
        v9 = v11;
      }
    }

    if (prime <= v9)
    {
      prime = v9;
    }

    if (prime < *&v7)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  for (i = *(a2 + 656); i; i = *i)
  {
    sub_5F0E6C((a1 + 640), i + 2, (i + 2));
  }

  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  v13 = *(a2 + 680);
  v14 = *(a2 + 688);
  if (v14 != v13)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v14 - v13) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_5F03D4(_Unwind_Exception *a1)
{
  sub_53A868((v1 + 48));
  sub_55D550(v1);
  _Unwind_Resume(a1);
}

void sub_5F03F0(_Unwind_Exception *a1)
{
  if (*(v1 + 567) < 0)
  {
    operator delete(*v2);
  }

  sub_53A868(v1 + 384);
  sub_55D550(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_5F046C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_5CEC4C(a1 + 8, *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 5));
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  v7 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = v5;
  sub_3EDBB0(a1 + 120, (a2 + 120));
  v8 = *(a2 + 272);
  v9 = *(a2 + 288);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v8;
  *(a1 + 288) = v9;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  sub_5F061C(a1 + 296, *(a2 + 296), *(a2 + 304), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 304) - *(a2 + 296)) >> 3));
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  v11 = *(a2 + 328);
  v10 = *(a2 + 336);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = *(a2 + 352);
  *(a1 + 361) = *(a2 + 361);
  *(a1 + 352) = v12;
  return a1;
}

void sub_5F05B8(_Unwind_Exception *a1)
{
  sub_49A8F8((v1 + 120));
  sub_5C0ED8(v2);
  _Unwind_Resume(a1);
}

void sub_5F05E8(_Unwind_Exception *a1)
{
  v4 = *(v1 + 328);
  if (v4)
  {
    *(v1 + 336) = v4;
    operator delete(v4);
  }

  sub_5ED044((v1 + 296));
  sub_49A8F8((v1 + 120));
  sub_5C0ED8(v2);
  _Unwind_Resume(a1);
}

void sub_5F061C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x276276276276277)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5F0754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_5F0774(va);
  *(v10 + 8) = v11;
  sub_5F07DC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5F0774(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 13;
        sub_5ED0A8(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void *****sub_5F07DC(void *****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      for (i = v2[1]; i != v3; sub_5ED0A8(v2, i))
      {
        i -= 13;
      }

      v2[1] = v3;
      operator delete(**a1);
    }
  }

  return a1;
}

uint64_t sub_5F0850(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_353184(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = *(a2 + 56);
  prime = *(a2 + 32);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(a1 + 24, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 32));
    v5 = *(a1 + 32);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 48) / *(a1 + 56));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 40); i; i = *i)
  {
    sub_5F09CC((a1 + 24), i + 2, (i + 2));
  }

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

void sub_5F09AC(_Unwind_Exception *a1)
{
  sub_540798(v2);
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

uint64_t **sub_5F09CC(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_AAD8(&v25, a2, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_43;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_43:
    operator new();
  }

  v14 = *(v3 + 23);
  if (v14 >= 0)
  {
    v15 = *(v3 + 23);
  }

  else
  {
    v15 = v3[1];
  }

  if (v14 < 0)
  {
    v3 = *v3;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v13[1];
      if (v20 == v8)
      {
        v21 = *(v13 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v13[3];
        }

        if (v21 == v15)
        {
          v23 = v22 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v23, v3, v15))
          {
            return v13;
          }
        }
      }

      else if ((v20 & (*&v9 - 1)) != v11)
      {
        goto LABEL_43;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_43;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v3, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_5F0DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F0E20(va);
  _Unwind_Resume(a1);
}

void sub_5F0DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F0E20(va);
  _Unwind_Resume(a1);
}

void sub_5F0DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 39) < 0)
  {
    operator delete(*(v3 + 16));
  }

  sub_5F0E20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5F0E20(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_55F7FC(v1 + 16);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t **sub_5F0E6C(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_AAD8(&v25, a2, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_43;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_43:
    operator new();
  }

  v14 = *(v3 + 23);
  if (v14 >= 0)
  {
    v15 = *(v3 + 23);
  }

  else
  {
    v15 = v3[1];
  }

  if (v14 < 0)
  {
    v3 = *v3;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v13[1];
      if (v20 == v8)
      {
        v21 = *(v13 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v13[3];
        }

        if (v21 == v15)
        {
          v23 = v22 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v23, v3, v15))
          {
            return v13;
          }
        }
      }

      else if ((v20 & (*&v9 - 1)) != v11)
      {
        goto LABEL_43;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_43;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v3, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_5F1248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F1274(va);
  _Unwind_Resume(a1);
}

void sub_5F125C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F1274(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_5F1274(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 48);
      if (v3)
      {
        *(v2 + 56) = v3;
        operator delete(v3);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_5F12D8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_325C(a2, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a2 + 16) = *(a3 + 2);
    *a2 = v5;
  }

  v6 = *(a3 + 6);
  *(a2 + 32) = 0;
  *(a2 + 24) = v6;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v8 = *(a3 + 4);
  v7 = *(a3 + 5);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a2 + 56) = *(a3 + 14);
  *(a2 + 64) = *(a3 + 64);
}

void sub_5F13A4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  sub_21E1144(v1);
  _Unwind_Resume(a1);
}

void ***sub_5F13C8(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_5C3378((v4 - 88));
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_5F1440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      v7 = *(v5 + 8);
      if (v7 != *v5)
      {
        if (((v7 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v6 = *(v5 + 24);
      *(a4 + 32) = *(v5 + 32);
      *(a4 + 24) = v6;
      v5 += 40;
      a4 += 40;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_5F1538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_4E6B1C(&a9);
  _Unwind_Resume(a1);
}

void ***sub_5F1560(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 5);
          v6 -= 40;
          v7 = v8;
          if (v8)
          {
            *(v4 - 4) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_5F15E8(void *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5F1714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_5F1734(va);
  *(v10 + 8) = v11;
  sub_5F1794(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5F1734(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 17);
      v3 -= 5;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_5F1794(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 17);
          v4 -= 5;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_5F1818(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xB60B60B60B60B7)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5F1900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = v11 - 360;
    v15 = -v12;
    do
    {
      v14 = sub_5C3168(v14) - 360;
      v15 += 360;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_5F2DCC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5F1934(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_5F1EF0(a1, i + 16, i + 8);
  }

  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = *(a2 + 72);
  v11 = *(a2 + 48);
  if (v11 == 1)
  {
    v11 = 2;
LABEL_36:
    sub_B07C(a1 + 40, v11);
    goto LABEL_37;
  }

  if ((v11 & (v11 - 1)) != 0)
  {
    v11 = std::__next_prime(*(a2 + 48));
    v12 = *(a1 + 48);
    v13 = v11 >= *&v12;
    if (v11 > *&v12)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v12 = 0;
    v13 = 1;
    if (v11)
    {
      goto LABEL_36;
    }
  }

  if (!v13)
  {
    v14 = vcvtps_u32_f32(*(a1 + 64) / *(a1 + 72));
    if (*&v12 < 3uLL || (v15 = vcnt_s8(v12), v15.i16[0] = vaddlv_u8(v15), v15.u32[0] > 1uLL))
    {
      v14 = std::__next_prime(v14);
    }

    else
    {
      v16 = 1 << -__clz(v14 - 1);
      if (v14 >= 2)
      {
        v14 = v16;
      }
    }

    if (v11 <= v14)
    {
      v11 = v14;
    }

    if (v11 < *&v12)
    {
      goto LABEL_36;
    }
  }

LABEL_37:
  for (j = *(a2 + 56); j; j = *j)
  {
    sub_5F222C((a1 + 40), j + 16, (j + 16));
  }

  sub_5F1DAC(a1 + 80, a2 + 80);
  sub_5F1DAC(a1 + 120, a2 + 120);
  v18 = *(a2 + 160);
  *(a1 + 168) = 0;
  *(a1 + 160) = v18;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v19 = *(a2 + 168);
  v20 = *(a2 + 176);
  if (v20 != v19)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v21 = *(a2 + 192);
  v22 = *(a2 + 200);
  if (v22 != v21)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  v23 = *(a2 + 216);
  v24 = *(a2 + 223);
  *(a1 + 232) = 0;
  *(a1 + 223) = v24;
  *(a1 + 216) = v23;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  sub_5F2A94(a1 + 232, *(a2 + 232), *(a2 + 240), (*(a2 + 240) - *(a2 + 232)) >> 6);
  v25 = *(a2 + 256);
  v26 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v26;
  *(a1 + 256) = v25;
  v27 = *(a2 + 304);
  v28 = *(a2 + 320);
  v29 = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 320) = v28;
  *(a1 + 336) = v29;
  *(a1 + 304) = v27;
  return a1;
}

void sub_5F1CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 200) = v12;
  sub_35390(&a9);
  sub_34BE0(v11);
  sub_11BD8(v9 + 120);
  sub_11BD8(v9 + 80);
  sub_5ED604(v10);
  sub_11BD8(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_5F1DAC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_5F264C(a1, i + 16, i + 16);
  }

  return a1;
}

uint64_t **sub_5F1EF0(void *a1, unsigned __int8 *a2, _WORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % a1[1];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (v3 == *(v8 + 16))
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (v3 != *(v8 + 16))
  {
    goto LABEL_12;
  }

  return v8;
}

uint64_t sub_5F222C(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % a1[1];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (result = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = *(result + 8);
      if (v10 == v3)
      {
        if (v3 == *(result + 16))
        {
          return result;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = *(result + 8);
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (v3 != *(result + 16))
  {
    goto LABEL_12;
  }

  return result;
}

void sub_5F2590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F25B8(va);
  _Unwind_Resume(a1);
}

void sub_5F25A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F25B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5F25B8(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[3];
      if (v3)
      {
        v4 = v1[4];
        v5 = v1[3];
        if (v4 != v3)
        {
          do
          {
            v6 = *(v4 - 1);
            v4 -= 3;
            if (v6 < 0)
            {
              operator delete(*v4);
            }
          }

          while (v4 != v3);
          v5 = v1[3];
        }

        v1[4] = v3;
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}