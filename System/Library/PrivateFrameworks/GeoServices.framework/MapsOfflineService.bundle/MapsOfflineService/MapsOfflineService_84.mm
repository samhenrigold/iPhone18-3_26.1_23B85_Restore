void sub_5538DC(_Unwind_Exception *a1)
{
  if (*(v2 - 41) < 0)
  {
    operator delete(*(v2 - 64));
  }

  sub_55A8B4(v1);
  _Unwind_Resume(a1);
}

void sub_553934(uint64_t a1, uint64_t a2)
{
  if (sub_659540(a2 + 32))
  {
    v3 = *(a2 + 1175);
    if ((v3 & 0x80u) != 0)
    {
      v3 = *(a2 + 1160);
    }

    if (v3)
    {
      v4 = *(a2 + 832);
      if (v4 > 0x16)
      {
LABEL_6:
        v5 = 4;
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  if (sub_659BD0(a2 + 1488))
  {
    v4 = *(a2 + 2288);
    if (v4 > 0x16)
    {
      goto LABEL_6;
    }

LABEL_9:
    v5 = (dword_2298D9C[v4] | dword_2298D40[v4]);
    goto LABEL_10;
  }

  if (*(a2 + 1248) == 2)
  {
    v6 = *(a2 + 1176);
    v7 = *(a2 + 1184);
    if (v6 != v7)
    {
      __p[0] = 0;
      __p[1] = 0;
      v16 = 0;
      v17 = __p;
      v18 = 0;
      if (0xCF3CF3CF3CF3CF3DLL * ((v7 - v6) >> 3) < 0x186186186186187)
      {
        operator new();
      }

      sub_1794();
    }

    if (*(a2 + 1200) != *(a2 + 1208) || *(a2 + 1224) != *(a2 + 1232))
    {
      sub_587F3C(4);
    }

    if (*a2 == 45)
    {
LABEL_23:
      v5 = 39;
      goto LABEL_10;
    }

    if ((*(a2 + 1304) - 2) >= 0xC)
    {
      v5 = 5;
    }

    else
    {
      if (*(a2 + 1376) == *(a2 + 1384))
      {
        if (!sub_53BB38(a2))
        {
          if ((*a2 - 48) >= 2)
          {
            if (*a2 == 51)
            {
              v5 = 38;
            }

            else
            {
              v5 = 4;
            }
          }

          else
          {
            v5 = 51;
          }

          goto LABEL_10;
        }

        goto LABEL_23;
      }

      v5 = 6;
    }

LABEL_10:

    sub_587F3C(v5);
  }

  v8 = (a2 + 1280);
  if (*(a2 + 1303) < 0)
  {
    v10 = *(a2 + 1288);
    if (v10)
    {
      v11 = *v8;
      goto LABEL_39;
    }
  }

  else if (*(a2 + 1303))
  {
    *__p = *v8;
    v9 = *(a2 + 1296);
LABEL_35:
    v16 = v9;
    goto LABEL_40;
  }

  v12 = *(a2 + 1256);
  v13 = *(a2 + 1264);
  if (v12 != v13)
  {
    while (1)
    {
      v14 = *(v12 + 159);
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v12 + 144);
      }

      if (v14)
      {
        break;
      }

      v12 += 168;
      if (v12 == v13)
      {
        goto LABEL_36;
      }
    }
  }

  if (v12 == v13)
  {
LABEL_36:
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    goto LABEL_40;
  }

  if ((*(v12 + 159) & 0x80000000) == 0)
  {
    *__p = *(v12 + 136);
    v9 = *(v12 + 152);
    goto LABEL_35;
  }

  v11 = *(v12 + 136);
  v10 = *(v12 + 144);
LABEL_39:
  sub_325C(__p, v11, v10);
LABEL_40:
  sub_5885E4(__p);
}

void sub_553CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_553CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_52A6FC(va);
  _Unwind_Resume(a1);
}

void sub_553CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v10)
  {
    v12 = v9 - 168;
    v13 = -v10;
    do
    {
      v12 = sub_52A624(v12) - 168;
      v13 += 168;
    }

    while (v13);
  }

  sub_52A6FC(va);
  _Unwind_Resume(a1);
}

void sub_55407C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_56C570(a2, &v19);
  __p = 0uLL;
  v18 = 0;
  sub_64FB18(a3 + 432, &unk_2298CB0, &__p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  nullsub_1();
  v7 = *v6;
  v8 = v6[1];
  while (v7 != v8)
  {
    v9 = sub_58BBC(&v19);
    sub_65DED0((a1 + 3168), v7, v9, 0, &__p);
    sub_64C184(a3 + 432, &__p);
    sub_558B8C(a1, a2, &__p, (a3 + 432));
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    v7 += 24;
  }

  v10 = v22;
  if (v22)
  {
    do
    {
      v11 = *v10;
      sub_55F7FC((v10 + 2));
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = v21;
  v21 = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }
}

void sub_5541E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_5541F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_53A58C(&a15);
    _Unwind_Resume(a1);
  }

  sub_53A58C(&a15);
  _Unwind_Resume(a1);
}

void sub_554230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_56CAE4(a2, &v19);
  __p = 0uLL;
  v18 = 0;
  sub_64FB18(a3 + 592, &unk_2298C98, &__p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  nullsub_1();
  v7 = *v6;
  v8 = v6[1];
  while (v7 != v8)
  {
    v9 = sub_58BBC(&v19);
    sub_65DED0((a1 + 3168), v7, v9, 0, &__p);
    sub_64C184(a3 + 592, &__p);
    sub_558B8C(a1, a2, &__p, (a3 + 592));
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    v7 += 24;
  }

  v10 = v22;
  if (v22)
  {
    do
    {
      v11 = *v10;
      sub_55F7FC((v10 + 2));
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = v21;
  v21 = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }
}

void sub_554394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_5543A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_53A58C(&a15);
    _Unwind_Resume(a1);
  }

  sub_53A58C(&a15);
  _Unwind_Resume(a1);
}

void sub_5543E4(uint64_t a1)
{
  sub_64B998(v16);
  sub_64B998(v17);
  *&v17[192] = 0;
  memset(&v17[200], 255, 7);
  v19 = 0;
  v18 = 0uLL;
  v20 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  sub_64B998(v25);
  sub_64B998(v26);
  v26[10] = xmmword_2291330;
  sub_56CC5C(&v15);
  sub_67F320(&v15, &v8);
  v4 = sub_58BBC(&v15);
  sub_65DED0((a1 + 3168), &v8, v4, 0, &__p);
  sub_64BC20(v14, &__p);
  sub_53D784(v16, v14);
  sub_53A868(v14);
  if (v13 < 0)
  {
    operator delete(__p);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v8);
LABEL_3:
  sub_56CC6C(&__p);
  sub_67F320(&__p, v6);
  v5 = sub_58BBC(&__p);
  sub_65DED0((a1 + 3168), v6, v5, 0, &v8);
  sub_64BC20(v14, &v8);
  sub_53D784(v17, v14);
  sub_53A868(v14);
  if (v9 < 0)
  {
    operator delete(v8);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_5:
      if ((byte_2792647 & 0x80000000) == 0)
      {
LABEL_6:
        *v10 = xmmword_2792630;
        v11 = unk_2792640;
        goto LABEL_12;
      }

LABEL_11:
      sub_325C(v10, xmmword_2792630, *(&xmmword_2792630 + 1));
LABEL_12:
      sub_64BC20(v14, v10);
      sub_53D784(v25, v14);
      sub_53A868(v14);
      sub_56CC7C();
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v6[0]);
  if ((byte_2792647 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  goto LABEL_11;
}

void sub_554978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      if ((a14 & 0x80000000) == 0)
      {
LABEL_9:
        sub_53A58C(&a31);
        if (a45 < 0)
        {
          operator delete(a40);
        }

        sub_53A58C(&a47);
        sub_53A58C(&a65);
        sub_53F5F4(&STACK[0x200]);
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a9);
      goto LABEL_9;
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_554B7C(uint64_t a1)
{
  sub_64B998(v16);
  sub_64B998(v17);
  *&v17[192] = 0;
  memset(&v17[200], 255, 7);
  v19 = 0;
  v18 = 0uLL;
  v20 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  sub_64B998(v25);
  sub_64B998(v26);
  v26[10] = xmmword_2291330;
  sub_56CD38(&v15);
  sub_67F320(&v15, &v8);
  v4 = sub_58BBC(&v15);
  sub_65DED0((a1 + 3168), &v8, v4, 0, &__p);
  sub_64BC20(v14, &__p);
  sub_53D784(v16, v14);
  sub_53A868(v14);
  if (v13 < 0)
  {
    operator delete(__p);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v8);
LABEL_3:
  sub_56CD48(&__p);
  sub_67F320(&__p, v6);
  v5 = sub_58BBC(&__p);
  sub_65DED0((a1 + 3168), v6, v5, 0, &v8);
  sub_64BC20(v14, &v8);
  sub_53D784(v17, v14);
  sub_53A868(v14);
  if (v9 < 0)
  {
    operator delete(v8);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_5:
      if ((byte_279265F & 0x80000000) == 0)
      {
LABEL_6:
        *v10 = xmmword_2792648;
        v11 = unk_2792658;
        goto LABEL_12;
      }

LABEL_11:
      sub_325C(v10, xmmword_2792648, *(&xmmword_2792648 + 1));
LABEL_12:
      sub_64BC20(v14, v10);
      sub_53D784(v25, v14);
      sub_53A868(v14);
      sub_56CC7C();
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v6[0]);
  if ((byte_279265F & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  goto LABEL_11;
}

void sub_555110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      if ((a14 & 0x80000000) == 0)
      {
LABEL_9:
        sub_53A58C(&a31);
        if (a45 < 0)
        {
          operator delete(a40);
        }

        sub_53A58C(&a47);
        sub_53A58C(&a65);
        sub_53F5F4(&STACK[0x200]);
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a9);
      goto LABEL_9;
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_555314(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(v31);
  sub_64B998(v32);
  *&v32[192] = 0;
  memset(&v32[200], 255, 7);
  v34 = 0;
  v33 = 0uLL;
  v35 = 0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v39 = 0;
  sub_64B998(&__s);
  sub_64B998(v42);
  v42[10] = xmmword_2291330;
  sub_56A230(a2, &v30);
  HIBYTE(v27) = 0;
  LOBYTE(__p[0]) = 0;
  sub_67ECF8(&v30, "{OptionalPeriod}", __p);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  sub_67F320(&v30, &v22);
  v6 = sub_58BBC(&v30);
  sub_65DED0((a1 + 3168), &v22, v6, 0, &v24);
  sub_64BC20(__p, &v24);
  sub_53D784(v31, __p);
  sub_53A868(__p);
  if (v25 < 0)
  {
    operator delete(v24);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v22);
LABEL_5:
  sub_56CD58(a2, &v24);
  sub_550BFC(a1, 1, &v24);
  sub_67F320(&v24, v18);
  v7 = sub_58BBC(&v24);
  sub_65DED0((a1 + 3168), v18, v7, 0, &v22);
  sub_64BC20(__p, &v22);
  sub_53D784(v32, __p);
  sub_53A868(__p);
  if (v23 < 0)
  {
    operator delete(v22);
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v18[0]);
LABEL_7:
  sub_56CEA8(a2, &v22);
  if (!sub_6F390(&v22))
  {
    goto LABEL_10;
  }

  sub_67F320(&v22, v20);
  v8 = sub_58BBC(&v22);
  sub_65DED0((a1 + 3168), v20, v8, 0, v18);
  sub_64BC20(__p, v18);
  sub_53D784(&__s, __p);
  sub_53A868(__p);
  if (v19 < 0)
  {
    operator delete(v18[0]);
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
LABEL_10:
      v9 = __s;
      if (__s == v41)
      {
        goto LABEL_52;
      }

LABEL_11:
      v10 = *(v9 + 23);
      if (v10 < 0)
      {
        v11 = v9;
        v9 = *v9;
        v10 = v11[1];
        if (v10 < 21)
        {
          goto LABEL_52;
        }
      }

      else if (v10 < 21)
      {
        goto LABEL_52;
      }

      v12 = v9 + v10;
      v13 = v9;
      while (1)
      {
        v14 = memchr(v13, 123, v10 - 20);
        if (!v14)
        {
          goto LABEL_52;
        }

        v15 = *v14 == 0x636E49616572417BLL && *(v14 + 1) == 0x626557746E656469;
        if (v15 && *(v14 + 13) == 0x7D6B6E696C626557)
        {
          break;
        }

        v13 = (v14 + 1);
        v10 = v12 - v13;
        if (v12 - v13 < 21)
        {
          goto LABEL_52;
        }
      }

      if (v14 != v12 && v14 - v9 != -1)
      {
        if (*(a2 + 2471) < 0)
        {
          sub_325C(__p, *(a2 + 2448), *(a2 + 2456));
        }

        else
        {
          *__p = *(a2 + 2448);
          v27 = *(a2 + 2464);
        }

        if (*(a2 + 2495) < 0)
        {
          sub_325C(&v28, *(a2 + 2472), *(a2 + 2480));
        }

        else
        {
          v28 = *(a2 + 2472);
          v29 = *(a2 + 2488);
        }

        if (v29 >= 0)
        {
          v17 = HIBYTE(v29);
        }

        else
        {
          v17 = *(&v28 + 1);
        }

        if (v17)
        {
          if (SHIBYTE(v29) < 0)
          {
            sub_325C(v20, v28, *(&v28 + 1));
          }

          else
          {
            *v20 = v28;
            v21 = v29;
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(v28);
          }

          v28 = *v20;
          v29 = v21;
          HIBYTE(v21) = 0;
          LOBYTE(v20[0]) = 0;
          sub_64F700(&__s, "{AreaIncidentWeblink}", __p);
        }

        operator new();
      }

LABEL_52:
      sub_552E24(a1, a2, a3);
    }
  }

  else if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(v20[0]);
  v9 = __s;
  if (__s == v41)
  {
    goto LABEL_52;
  }

  goto LABEL_11;
}

void sub_555A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void **a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1AB28(&a39);
  sub_53A58C(&a21);
  sub_53A58C(&a30);
  sub_53A58C(&a59);
  sub_53F5F4(&a65);
  _Unwind_Resume(a1);
}

void sub_555C70(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = 0;
  v4 = 0uLL;
  v60 = 0u;
  v59 = 0;
  v58 = 0u;
  v51[0] = 0;
  v57 = 0;
  v44[0] = 0;
  v50 = 0;
  v37[0] = 0;
  v43 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    while (1)
    {
      v8 = sub_659540(v5 + 32);
      _X8 = v5 + 3783;
      __asm { PRFM            #0, [X8] }

      if (!v8)
      {
        goto LABEL_11;
      }

      if ((*(v5 + 1175) & 0x8000000000000000) != 0)
      {
        if (!*(v5 + 1160))
        {
          goto LABEL_11;
        }
      }

      else if (!*(v5 + 1175))
      {
        goto LABEL_11;
      }

      if (sub_659608(v5 + 32))
      {
        sub_553934(a1, v5);
      }

LABEL_11:
      if (sub_659BD0(v5 + 1488))
      {
        goto LABEL_12;
      }

      if (!sub_659540(v5 + 32))
      {
        goto LABEL_19;
      }

      if ((*(v5 + 1175) & 0x8000000000000000) != 0)
      {
        if (*(v5 + 1160))
        {
LABEL_18:
          if (sub_6595D0(v5 + 32))
          {
LABEL_12:
            sub_553934(a1, v5);
          }
        }
      }

      else if (*(v5 + 1175))
      {
        goto LABEL_18;
      }

LABEL_19:
      _X8 = v5 + 3856;
      __asm { PRFM            #0, [X8] }

      if (*(v5 + 1248) == 1 && *(v5 + 1256) != *(v5 + 1264))
      {
        sub_553934(a1, v5);
      }

      if (*(v5 + 1176) != *(v5 + 1184) || *(v5 + 1200) != *(v5 + 1208) || *(v5 + 1224) != *(v5 + 1232))
      {
        sub_553934(a1, v5);
      }

      _X8 = v5 + 2608;
      __asm { PRFM            #0, [X8] }

      if ((*v5 & 0xFFFFFFFE) == 0x30)
      {
        sub_553934(a1, v5);
      }

      v5 += 2608;
      if (v5 == v6)
      {
        v4 = v60;
        break;
      }
    }
  }

  v19 = sub_5623F4(v4, *(&v4 + 1));
  sub_5621D8(&v60, v19, *(&v60 + 1));
  v20 = sub_5623F4(v58, *(&v58 + 1));
  sub_5621D8(&v58, v20, *(&v58 + 1));
  v22 = *(&v60 + 1);
  v21 = v60;
  if (v60 != *(&v60 + 1) || (v22 = *(&v58 + 1), v21 = v58, v58 != *(&v58 + 1)))
  {
    if (v22 - v21 == 112)
    {
      goto LABEL_33;
    }

LABEL_31:
    sub_587F3C(4);
  }

  if (v43 != 1)
  {
    goto LABEL_31;
  }

  v21 = v37;
LABEL_33:
  sub_55F1E8(a3, v21);
  if (v43 != 1)
  {
    goto LABEL_41;
  }

  if ((v42 & 0x80000000) == 0)
  {
    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_39:
    operator delete(v39);
    v23 = v38;
    if (v38 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  operator delete(v41);
  if (v40 < 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  v23 = v38;
  if (v38 != -1)
  {
LABEL_40:
    (off_266B1F0[v23])(&v36, v37);
  }

LABEL_41:
  if (v50 != 1)
  {
    goto LABEL_49;
  }

  if ((v49 & 0x80000000) == 0)
  {
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_47:
    operator delete(v46);
    v24 = v45;
    if (v45 == -1)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  operator delete(v48);
  if (v47 < 0)
  {
    goto LABEL_47;
  }

LABEL_44:
  v24 = v45;
  if (v45 != -1)
  {
LABEL_48:
    (off_266B1F0[v24])(v37, v44);
  }

LABEL_49:
  if (v57 == 1)
  {
    if (v56 < 0)
    {
      operator delete(v55);
      if ((v54 & 0x80000000) == 0)
      {
LABEL_52:
        v25 = v52;
        if (v52 == -1)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }
    }

    else if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    operator delete(v53);
    v25 = v52;
    if (v52 != -1)
    {
LABEL_56:
      (off_266B1F0[v25])(v44, v51);
    }
  }

LABEL_57:
  v26 = v58;
  if (!v58)
  {
    goto LABEL_70;
  }

  v27 = *(&v58 + 1);
  v28 = v58;
  if (*(&v58 + 1) == v58)
  {
    goto LABEL_69;
  }

  do
  {
    if (*(v27 - 9) < 0)
    {
      operator delete(*(v27 - 32));
      if (*(v27 - 41) < 0)
      {
LABEL_66:
        operator delete(*(v27 - 64));
        v29 = v27 - 112;
        v30 = *(v27 - 80);
        if (v30 == -1)
        {
          goto LABEL_60;
        }

LABEL_67:
        (off_266B1F0[v30])(v51, v29);
        goto LABEL_60;
      }
    }

    else if (*(v27 - 41) < 0)
    {
      goto LABEL_66;
    }

    v29 = v27 - 112;
    v30 = *(v27 - 80);
    if (v30 != -1)
    {
      goto LABEL_67;
    }

LABEL_60:
    *(v27 - 80) = -1;
    v27 = v29;
  }

  while (v29 != v26);
  v28 = v58;
LABEL_69:
  *(&v58 + 1) = v26;
  operator delete(v28);
LABEL_70:
  v31 = v60;
  if (!v60)
  {
    return;
  }

  v32 = *(&v60 + 1);
  v33 = v60;
  if (*(&v60 + 1) == v60)
  {
    goto LABEL_82;
  }

  while (2)
  {
    if (*(v32 - 9) < 0)
    {
      operator delete(*(v32 - 32));
      if (*(v32 - 41) < 0)
      {
        goto LABEL_79;
      }

LABEL_76:
      v34 = v32 - 112;
      v35 = *(v32 - 80);
      if (v35 != -1)
      {
LABEL_80:
        (off_266B1F0[v35])(v51, v34);
      }
    }

    else
    {
      if ((*(v32 - 41) & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

LABEL_79:
      operator delete(*(v32 - 64));
      v34 = v32 - 112;
      v35 = *(v32 - 80);
      if (v35 != -1)
      {
        goto LABEL_80;
      }
    }

    *(v32 - 80) = -1;
    v32 = v34;
    if (v34 != v31)
    {
      continue;
    }

    break;
  }

  v33 = v60;
LABEL_82:
  *(&v60 + 1) = v31;
  operator delete(v33);
}

void sub_556480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  sub_53E440(&a9);
  sub_5427D0(&a23);
  sub_5427D0(&a38);
  sub_5427D0(va);
  sub_542870((v52 - 152));
  sub_542870((v52 - 128));
  _Unwind_Resume(a1);
}

void sub_556518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v100 = v10;
  v102 = v11;
  v12 = v9;
  v154 = 0;
  v13 = 0uLL;
  v153 = 0u;
  v152 = 0;
  v151 = 0u;
  v149[0] = 0;
  v150 = 0;
  LOBYTE(v147[0]) = 0;
  v148 = 0;
  v145[0] = 0;
  v146 = 0;
  v143[0] = 0;
  v144 = 0;
  v103 = v8;
  v142 = v8;
  v16 = *v14;
  v15 = v14[1];
  if (*v14 != v15)
  {
    v101 = v9;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v21 = sub_659540(v16 + 32);
      _X8 = v16 + 3783;
      __asm { PRFM            #0, [X8] }

      if (!v21)
      {
        goto LABEL_15;
      }

      if ((*(v16 + 1175) & 0x8000000000000000) != 0)
      {
        if (!*(v16 + 1160))
        {
          goto LABEL_15;
        }
      }

      else if (!*(v16 + 1175))
      {
        goto LABEL_15;
      }

      if (sub_659608(v16 + 32))
      {
        sub_5578F4(&v142, v16, __p);
        v28 = *(&v153 + 1);
        if (*(&v153 + 1) >= v154)
        {
          v42 = v153;
          v43 = *(&v153 + 1) - v153;
          v44 = 0xAAAAAAAAAAAAAAABLL * ((*(&v153 + 1) - v153) >> 3);
          v45 = v44 + 1;
          if (v44 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v154 - v153) >> 3) > v45)
          {
            v45 = 0x5555555555555556 * ((v154 - v153) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v154 - v153) >> 3) >= 0x555555555555555)
          {
            v46 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v46 = v45;
          }

          if (v46)
          {
            if (v46 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v47 = 8 * ((*(&v153 + 1) - v153) >> 3);
          *v47 = *__p;
          *(v47 + 16) = v106;
          *&v106 = 0;
          __p[0] = 0;
          __p[1] = 0;
          v48 = 24 * v44 + 24;
          v49 = 24 * v44 - v43;
          memcpy((v47 - v43), v42, v43);
          *&v153 = v49;
          *(&v153 + 1) = v48;
          v154 = 0;
          if (v42)
          {
            operator delete(v42);
            *(&v153 + 1) = v48;
            if (SBYTE7(v106) < 0)
            {
              operator delete(__p[0]);
            }

            ++v17;
          }

          else
          {
            *(&v153 + 1) = v48;
            ++v17;
          }
        }

        else
        {
          v29 = *__p;
          *(*(&v153 + 1) + 16) = v106;
          *v28 = v29;
          *(&v153 + 1) = v28 + 24;
          ++v17;
        }

        goto LABEL_6;
      }

LABEL_15:
      if (sub_659BD0(v16 + 1488))
      {
        goto LABEL_16;
      }

      if (sub_659540(v16 + 32))
      {
        if ((*(v16 + 1175) & 0x8000000000000000) != 0)
        {
          if (!*(v16 + 1160))
          {
            goto LABEL_36;
          }
        }

        else if (!*(v16 + 1175))
        {
          goto LABEL_36;
        }

        if (sub_6595D0(v16 + 32))
        {
LABEL_16:
          sub_5578F4(&v142, v16, __p);
          v30 = *(&v151 + 1);
          if (*(&v151 + 1) < v152)
          {
            v19 = *__p;
            *(*(&v151 + 1) + 16) = v106;
            *v30 = v19;
            v20 = v30 + 24;
          }

          else
          {
            v31 = v151;
            v32 = *(&v151 + 1) - v151;
            v33 = 0xAAAAAAAAAAAAAAABLL * ((*(&v151 + 1) - v151) >> 3);
            v34 = v33 + 1;
            if (v33 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            if (0x5555555555555556 * ((v152 - v151) >> 3) > v34)
            {
              v34 = 0x5555555555555556 * ((v152 - v151) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v152 - v151) >> 3) >= 0x555555555555555)
            {
              v35 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v35 = v34;
            }

            if (v35)
            {
              if (v35 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1808();
            }

            v36 = 8 * ((*(&v151 + 1) - v151) >> 3);
            *v36 = *__p;
            *(v36 + 16) = v106;
            *&v106 = 0;
            __p[0] = 0;
            __p[1] = 0;
            v20 = 24 * v33 + 24;
            v37 = 24 * v33 - v32;
            memcpy((v36 - v32), v31, v32);
            *&v151 = v37;
            *(&v151 + 1) = v20;
            v152 = 0;
            if (v31)
            {
              operator delete(v31);
              *(&v151 + 1) = v20;
              if (SBYTE7(v106) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_5;
            }
          }

          *(&v151 + 1) = v20;
LABEL_5:
          ++v18;
          goto LABEL_6;
        }
      }

LABEL_36:
      _X8 = v16 + 3856;
      __asm { PRFM            #0, [X8] }

      if (*(v16 + 1248) != 1 || *(v16 + 1256) == *(v16 + 1264))
      {
        if (*(v16 + 1176) == *(v16 + 1184) && *(v16 + 1200) == *(v16 + 1208) && *(v16 + 1224) == *(v16 + 1232))
        {
          _X8 = v16 + 2608;
          __asm { PRFM            #0, [X8] }

          if (*v16 == 49)
          {
            if (v144 != 1)
            {
              sub_52DA74(v143, v16);
              v144 = 1;
              goto LABEL_6;
            }

            v40 = v143;
          }

          else
          {
            if (*v16 != 48)
            {
              goto LABEL_6;
            }

            if ((v146 & 1) == 0)
            {
              sub_52DA74(v145, v16);
              v41 = v145;
              goto LABEL_57;
            }

            v40 = v145;
          }
        }

        else
        {
          if ((v148 & 1) == 0)
          {
            sub_52DA74(v147, v16);
            v41 = v147;
LABEL_57:
            v41[2608] = 1;
            goto LABEL_6;
          }

          v40 = v147;
        }
      }

      else
      {
        if ((v150 & 1) == 0)
        {
          sub_52DA74(v149, v16);
          v41 = v149;
          goto LABEL_57;
        }

        v40 = v149;
      }

      sub_52EA78(v40, v16);
LABEL_6:
      v16 += 2608;
      if (v16 == v15)
      {
        v13 = v153;
        v12 = v101;
        v52 = v17;
        goto LABEL_73;
      }
    }
  }

  v18 = 0;
  v52 = 0;
LABEL_73:
  v53 = sub_95EB4(v13, *(&v13 + 1));
  v54 = *(&v153 + 1);
  if (v53 != *(&v153 + 1))
  {
    while (v54 != v53)
    {
      v55 = *(v54 - 1);
      v54 -= 3;
      if (v55 < 0)
      {
        operator delete(*v54);
      }
    }

    *(&v153 + 1) = v53;
  }

  v56 = sub_95EB4(v151, *(&v151 + 1));
  v57 = *(&v151 + 1);
  if (v56 != *(&v151 + 1))
  {
    while (v57 != v56)
    {
      v58 = *(v57 - 1);
      v57 -= 3;
      if (v58 < 0)
      {
        operator delete(*v57);
      }
    }

    *(&v151 + 1) = v56;
  }

  if (v52 < 1)
  {
    if (v150 == 1)
    {
      sub_52DA74(v104, v149);
      sub_56A8B0(v104, v102 > 1, &v138);
      sub_52E078(v104);
      sub_67F320(&v138, v136);
      v68 = sub_58BBC(&v138);
      v134 = 0u;
      v132 = 1uLL;
      v128 = 0;
      v127 = 0;
      v123 = 0u;
      v120 = 0;
      v115 = 0;
      v114 = 0u;
      *&v113[8] = 0u;
      v112 = 0x7FFFFFFFLL;
      v111 = 0u;
      v107 = 0;
      v69.f64[0] = NAN;
      v69.f64[1] = NAN;
      v108 = vnegq_f64(v69);
      v109 = v108;
      *v113 = v108;
      __p[0] = 0xFFFFFFFFLL;
      __p[1] = 0;
      v106 = 0uLL;
      v110 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v111) = 0;
      *&v113[16] = 0x7FFFFFFF;
      LODWORD(v114) = 0x7FFFFFFF;
      *(&v114 + 4) = 0x7FFFFFFF7FFFFFFFLL;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0x8000000080000000;
      v121 = 0x8000000080000000;
      v122 = 0x7FFFFFFF;
      v124 = xmmword_2297C00;
      v125 = 0x7FFFFFFF;
      v126 = 0x7FFFFFFF7FFFFFFFLL;
      v129 = 0xBFF0000000000000;
      v130 = 0xBFF0000000000000;
      v131 = 0uLL;
      v133 = 0uLL;
      LOWORD(v134) = 0;
      DWORD1(v134) = -1;
      v135 = 0x7FFFFFFFFFFFFFFFuLL;
      sub_660FE4((v103 + 3168), v136, v68, __p, v12);
      sub_55D550(__p);
      if (v137 < 0)
      {
        operator delete(v136[0]);
      }

      v70 = v141;
      if (v141)
      {
        do
        {
          v71 = *v70;
          sub_55F7FC((v70 + 2));
          operator delete(v70);
          v70 = v71;
        }

        while (v71);
      }

      v72 = v140;
      v140 = 0;
      if (v72)
      {
        operator delete(v72);
      }

      v64 = v138;
      if (v138)
      {
        v73 = v139;
        v66 = v138;
        if (v139 == v138)
        {
          goto LABEL_138;
        }

        do
        {
          v74 = *(v73 - 1);
          v73 -= 3;
          if (v74 < 0)
          {
            operator delete(*v73);
          }
        }

        while (v73 != v64);
        goto LABEL_137;
      }
    }

    else if (v148 == 1)
    {
      sub_56A988(v103 + 1576, v147, v102 > 1, &v138);
      sub_67F320(&v138, v136);
      v75 = sub_58BBC(&v138);
      v134 = 0u;
      v132 = 1uLL;
      v128 = 0;
      v127 = 0;
      v123 = 0u;
      v120 = 0;
      v115 = 0;
      v114 = 0u;
      *&v113[8] = 0u;
      v112 = 0x7FFFFFFFLL;
      v111 = 0u;
      v107 = 0;
      v76.f64[0] = NAN;
      v76.f64[1] = NAN;
      v108 = vnegq_f64(v76);
      v109 = v108;
      *v113 = v108;
      __p[0] = 0xFFFFFFFFLL;
      __p[1] = 0;
      v106 = 0uLL;
      v110 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v111) = 0;
      *&v113[16] = 0x7FFFFFFF;
      LODWORD(v114) = 0x7FFFFFFF;
      *(&v114 + 4) = 0x7FFFFFFF7FFFFFFFLL;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0x8000000080000000;
      v121 = 0x8000000080000000;
      v122 = 0x7FFFFFFF;
      v124 = xmmword_2297C00;
      v125 = 0x7FFFFFFF;
      v126 = 0x7FFFFFFF7FFFFFFFLL;
      v129 = 0xBFF0000000000000;
      v130 = 0xBFF0000000000000;
      v131 = 0uLL;
      v133 = 0uLL;
      LOWORD(v134) = 0;
      DWORD1(v134) = -1;
      v135 = 0x7FFFFFFFFFFFFFFFuLL;
      sub_660FE4((v103 + 3168), v136, v75, __p, v12);
      sub_55D550(__p);
      if (v137 < 0)
      {
        operator delete(v136[0]);
      }

      v77 = v141;
      if (v141)
      {
        do
        {
          v78 = *v77;
          sub_55F7FC((v77 + 2));
          operator delete(v77);
          v77 = v78;
        }

        while (v78);
      }

      v79 = v140;
      v140 = 0;
      if (v79)
      {
        operator delete(v79);
      }

      v64 = v138;
      if (v138)
      {
        v80 = v139;
        v66 = v138;
        if (v139 == v138)
        {
          goto LABEL_138;
        }

        do
        {
          v81 = *(v80 - 1);
          v80 -= 3;
          if (v81 < 0)
          {
            operator delete(*v80);
          }
        }

        while (v80 != v64);
        goto LABEL_137;
      }
    }

    else
    {
      if (v18 < 1)
      {
        if (v146)
        {
          v96 = v145;
          v97 = v103;
        }

        else
        {
          v97 = v103;
          if (v144 != 1)
          {
            sub_56AFC8(v103 + 1576, v100, &v138);
            sub_67F320(&v138, v136);
            v98 = sub_58BBC(&v138);
            v134 = 0u;
            v132 = 1uLL;
            v128 = 0;
            v127 = 0;
            v123 = 0u;
            v120 = 0;
            v115 = 0;
            v114 = 0u;
            *&v113[8] = 0u;
            v112 = 0x7FFFFFFFLL;
            v111 = 0u;
            v107 = 0;
            v99.f64[0] = NAN;
            v99.f64[1] = NAN;
            v108 = vnegq_f64(v99);
            v109 = v108;
            *v113 = v108;
            __p[0] = 0xFFFFFFFFLL;
            __p[1] = 0;
            v106 = 0uLL;
            v110 = 0x7FFFFFFFFFFFFFFFLL;
            BYTE8(v111) = 0;
            *&v113[16] = 0x7FFFFFFF;
            LODWORD(v114) = 0x7FFFFFFF;
            *(&v114 + 4) = 0x7FFFFFFF7FFFFFFFLL;
            v117 = 0u;
            v118 = 0u;
            v119 = 0u;
            v116 = 0x8000000080000000;
            v121 = 0x8000000080000000;
            v122 = 0x7FFFFFFF;
            v124 = xmmword_2297C00;
            v125 = 0x7FFFFFFF;
            v126 = 0x7FFFFFFF7FFFFFFFLL;
            v129 = 0xBFF0000000000000;
            v130 = 0xBFF0000000000000;
            v131 = 0uLL;
            v133 = 0uLL;
            LOWORD(v134) = 0;
            DWORD1(v134) = -1;
            v135 = 0x7FFFFFFFFFFFFFFFuLL;
            sub_660FE4((v103 + 3168), v136, v98, __p, v12);
            sub_55D550(__p);
            if (v137 < 0)
            {
              operator delete(v136[0]);
            }

            sub_53A58C(&v138);
            goto LABEL_139;
          }

          v96 = v143;
        }

        sub_557B54(v97, v96, v12);
        goto LABEL_139;
      }

      sub_56A308(v103 + 1576, v18, &v151, v18 != v102, 1, &v138);
      sub_67F320(&v138, v136);
      v82 = sub_58BBC(&v138);
      v134 = 0u;
      v132 = 1uLL;
      v128 = 0;
      v127 = 0;
      v123 = 0u;
      v120 = 0;
      v115 = 0;
      v114 = 0u;
      *&v113[8] = 0u;
      v112 = 0x7FFFFFFFLL;
      v111 = 0u;
      v107 = 0;
      v83.f64[0] = NAN;
      v83.f64[1] = NAN;
      v108 = vnegq_f64(v83);
      v109 = v108;
      *v113 = v108;
      __p[0] = 0xFFFFFFFFLL;
      __p[1] = 0;
      v106 = 0uLL;
      v110 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v111) = 0;
      *&v113[16] = 0x7FFFFFFF;
      LODWORD(v114) = 0x7FFFFFFF;
      *(&v114 + 4) = 0x7FFFFFFF7FFFFFFFLL;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0x8000000080000000;
      v121 = 0x8000000080000000;
      v122 = 0x7FFFFFFF;
      v124 = xmmword_2297C00;
      v125 = 0x7FFFFFFF;
      v126 = 0x7FFFFFFF7FFFFFFFLL;
      v129 = 0xBFF0000000000000;
      v130 = 0xBFF0000000000000;
      v131 = 0uLL;
      v133 = 0uLL;
      LOWORD(v134) = 0;
      DWORD1(v134) = -1;
      v135 = 0x7FFFFFFFFFFFFFFFuLL;
      sub_660FE4((v103 + 3168), v136, v82, __p, v12);
      sub_55D550(__p);
      if (v137 < 0)
      {
        operator delete(v136[0]);
      }

      v84 = v141;
      if (v141)
      {
        do
        {
          v85 = *v84;
          sub_55F7FC((v84 + 2));
          operator delete(v84);
          v84 = v85;
        }

        while (v85);
      }

      v86 = v140;
      v140 = 0;
      if (v86)
      {
        operator delete(v86);
      }

      v64 = v138;
      if (v138)
      {
        v87 = v139;
        v66 = v138;
        if (v139 == v138)
        {
          goto LABEL_138;
        }

        do
        {
          v88 = *(v87 - 1);
          v87 -= 3;
          if (v88 < 0)
          {
            operator delete(*v87);
          }
        }

        while (v87 != v64);
        goto LABEL_137;
      }
    }
  }

  else
  {
    sub_56A308(v103 + 1576, v52, &v153, v52 != v102, 0, &v138);
    sub_67F320(&v138, v136);
    v59 = sub_58BBC(&v138);
    v134 = 0u;
    v132 = 1uLL;
    v128 = 0;
    v127 = 0;
    v123 = 0u;
    v120 = 0;
    v115 = 0;
    v114 = 0u;
    *&v113[8] = 0u;
    v112 = 0x7FFFFFFFLL;
    v111 = 0u;
    v107 = 0;
    v60.f64[0] = NAN;
    v60.f64[1] = NAN;
    v108 = vnegq_f64(v60);
    v109 = v108;
    *v113 = v108;
    __p[0] = 0xFFFFFFFFLL;
    __p[1] = 0;
    v106 = 0uLL;
    v110 = 0x7FFFFFFFFFFFFFFFLL;
    BYTE8(v111) = 0;
    *&v113[16] = 0x7FFFFFFF;
    LODWORD(v114) = 0x7FFFFFFF;
    *(&v114 + 4) = 0x7FFFFFFF7FFFFFFFLL;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0x8000000080000000;
    v121 = 0x8000000080000000;
    v122 = 0x7FFFFFFF;
    v124 = xmmword_2297C00;
    v125 = 0x7FFFFFFF;
    v126 = 0x7FFFFFFF7FFFFFFFLL;
    v129 = 0xBFF0000000000000;
    v130 = 0xBFF0000000000000;
    v131 = 0uLL;
    v133 = 0uLL;
    LOWORD(v134) = 0;
    DWORD1(v134) = -1;
    v135 = 0x7FFFFFFFFFFFFFFFuLL;
    sub_660FE4((v103 + 3168), v136, v59, __p, v12);
    sub_55D550(__p);
    if (v137 < 0)
    {
      operator delete(v136[0]);
    }

    v61 = v141;
    if (v141)
    {
      do
      {
        v62 = *v61;
        sub_55F7FC((v61 + 2));
        operator delete(v61);
        v61 = v62;
      }

      while (v62);
    }

    v63 = v140;
    v140 = 0;
    if (v63)
    {
      operator delete(v63);
    }

    v64 = v138;
    if (v138)
    {
      v65 = v139;
      v66 = v138;
      if (v139 == v138)
      {
        goto LABEL_138;
      }

      do
      {
        v67 = *(v65 - 1);
        v65 -= 3;
        if (v67 < 0)
        {
          operator delete(*v65);
        }
      }

      while (v65 != v64);
LABEL_137:
      v66 = v138;
LABEL_138:
      v139 = v64;
      operator delete(v66);
    }
  }

LABEL_139:
  if (v144 == 1)
  {
    sub_52E078(v143);
    if (v146 != 1)
    {
      goto LABEL_141;
    }
  }

  else if (v146 != 1)
  {
LABEL_141:
    if (v148 == 1)
    {
      goto LABEL_142;
    }

    goto LABEL_152;
  }

  sub_52E078(v145);
  if (v148 == 1)
  {
LABEL_142:
    sub_52E078(v147);
    if (v150 != 1)
    {
      goto LABEL_143;
    }

    goto LABEL_153;
  }

LABEL_152:
  if (v150 != 1)
  {
LABEL_143:
    v89 = v151;
    if (v151)
    {
      goto LABEL_144;
    }

LABEL_154:
    v91 = v153;
    if (!v153)
    {
      return;
    }

    goto LABEL_157;
  }

LABEL_153:
  sub_52E078(v149);
  v89 = v151;
  if (!v151)
  {
    goto LABEL_154;
  }

LABEL_144:
  v90 = *(&v151 + 1);
  if (*(&v151 + 1) == v89)
  {
    *(&v151 + 1) = v89;
    operator delete(v89);
    v91 = v153;
    if (!v153)
    {
      return;
    }

    goto LABEL_157;
  }

  do
  {
    v92 = *(v90 - 1);
    v90 -= 3;
    if (v92 < 0)
    {
      operator delete(*v90);
    }
  }

  while (v90 != v89);
  *(&v151 + 1) = v89;
  operator delete(v151);
  v91 = v153;
  if (v153)
  {
LABEL_157:
    v93 = *(&v153 + 1);
    v94 = v91;
    if (*(&v153 + 1) != v91)
    {
      do
      {
        v95 = *(v93 - 1);
        v93 -= 3;
        if (v95 < 0)
        {
          operator delete(*v93);
        }
      }

      while (v93 != v91);
      v94 = v153;
    }

    *(&v153 + 1) = v91;
    operator delete(v94);
  }
}

void sub_557710(_Unwind_Exception *a1)
{
  sub_55D550(&STACK[0xA50]);
  if (SLOBYTE(STACK[0xBE7]) < 0)
  {
    operator delete(STACK[0xBD0]);
  }

  sub_53A58C(&STACK[0xBE8]);
  if (LOBYTE(STACK[0x1668]) == 1)
  {
    sub_52E078(&STACK[0xC38]);
    if (LOBYTE(STACK[0x20A0]) != 1)
    {
      goto LABEL_5;
    }
  }

  else if (LOBYTE(STACK[0x20A0]) != 1)
  {
LABEL_5:
    if (LOBYTE(STACK[0x2AD8]) == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  sub_52E078(&STACK[0x1670]);
  if (LOBYTE(STACK[0x2AD8]) == 1)
  {
LABEL_6:
    sub_52E078(&STACK[0x20A8]);
    if (LOBYTE(STACK[0x3510]) != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (LOBYTE(STACK[0x3510]) != 1)
  {
LABEL_7:
    sub_1A104((v1 - 152));
    sub_1A104((v1 - 128));
    _Unwind_Resume(a1);
  }

LABEL_11:
  sub_52E078(&STACK[0x2AE0]);
  sub_1A104((v1 - 152));
  sub_1A104((v1 - 128));
  _Unwind_Resume(a1);
}

void sub_5578F4(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (sub_659540(a2 + 32))
  {
    v6 = *(a2 + 1175);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a2 + 1160);
    }

    if (v6)
    {
      sub_56B3A4(&v15);
    }
  }

  sub_56A230(a2, &v15);
  v20 = 0;
  LOBYTE(v19[0]) = 0;
  sub_67ECF8(&v15, "{OptionalPeriod}", v19);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  sub_67F320(&v15, v19);
  v7 = sub_58BBC(&v15);
  sub_65DED0((v5 + 3168), v19, v7, 0, a3);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v8 = v18;
  if (v18)
  {
    do
    {
      v9 = *v8;
      sub_55F7FC((v8 + 2));
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = __p;
  __p = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = v15;
  if (v15)
  {
    v12 = v16;
    v13 = v15;
    if (v16 != v15)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = v15;
    }

    v16 = v11;
    operator delete(v13);
  }
}

void sub_557B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (*(v9 - 33) < 0)
  {
    operator delete(*(v9 - 56));
  }

  sub_53A58C(&a9);
  _Unwind_Resume(a1);
}

void sub_557B54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_5678AC(a1 + 1576, a2, &v23);
  v20 = 0;
  LOBYTE(__p) = 0;
  sub_67ECF8(&v23, "{OptionalPeriod}", &__p);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  sub_67F320(&v23, &__p);
  v6 = sub_58BBC(&v23);
  sub_65DED0((a1 + 3168), &__p, v6, 0, v21);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  sub_64B998(a3);
  if ((*a2 & 0xFFFFFFFE) == 0x30 && *(a1 + 1450) == 1)
  {
    sub_64C184(a3, "{SFSymbol}");
    sub_588170(0, &__p);
    sub_64BF94(a3, "{SFSymbol}", &__p);
  }

  sub_64C184(a3, v21);
  if (*(a2 + 1416) == 1 && *(a2 + 1408) == 1)
  {
    v7 = *(a2 + 1400);
    if (v7 != 0x7FFFFFFF && *(a2 + 1404) < v7 && *(a2 + 1412) != 0x7FFFFFFF)
    {
      LODWORD(__p) = *(a2 + 1412);
      sub_64E308(a3, "{DepartureTime}", &__p, a1 + 1496, 0);
    }
  }

  if (sub_64FA0C(a3, "{ChargePercentage}"))
  {
    v8 = sub_4470E4(a2 + 1312);
    sub_64F510(a3, "{ChargePercentage}", v8);
  }

  if (sub_64FA0C(a3, &qword_2791E50))
  {
    v9 = sub_4470E4(a2 + 1312);
    sub_64F510(a3, &qword_2791E50, v9);
  }

  if (*(a2 + 1304) != 13 && sub_64FA0C(a3, "{duration}"))
  {
    v10 = *(a2 + 1344);
    if (v10 >= 36000)
    {
      if (v10 >> 8 > 0xD2E)
      {
        v10 = 864000 * vcvtmd_s64_f64(v10 / 864000.0);
      }

      else
      {
        if ((v10 % 0x8CA0) >> 4 <= 0x464)
        {
          v11 = v10 / 0x8CA0;
        }

        else
        {
          v11 = v10 / 0x8CA0 + 1;
        }

        v10 = 36000 * v11;
      }
    }

    sub_64EA58(a3, "{duration}", v10);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  v12 = v26;
  if (v26)
  {
    do
    {
      v13 = *v12;
      sub_55F7FC((v12 + 2));
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = v25;
  v25 = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = v23;
  if (v23)
  {
    v16 = v24;
    v17 = v23;
    if (v24 != v23)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v23;
    }

    v24 = v15;
    operator delete(v17);
  }
}

void sub_557EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v32);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  sub_53A58C((v33 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_557F74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_558320(a1, a2, 1, a4);
  sub_5586D8(a3, &v20);
  *__p = 0u;
  v16 = 0u;
  v17 = 1065353216;
  sub_65DED0((a1 + 3168), "Advisory_Separator", __p, 0, v18);
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  sub_64FB18(a4, v18, v13);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    operator delete(v18[0]);
    v7 = v16;
    if (!v16)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  operator delete(v13[0]);
  if (v19 < 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  v7 = v16;
  if (!v16)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_4:
    v8 = *v7;
    sub_55F7FC((v7 + 2));
    operator delete(v7);
    v7 = v8;
  }

  while (v8);
LABEL_5:
  v9 = __p[0];
  __p[0] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = v20;
  for (i = v21; v10 != i; v10 = (v10 + 24))
  {
    sub_64C184(a4, v10);
  }

  return sub_53A868(&v20);
}

void sub_5580A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  sub_540798(&a16);
  sub_53A868(&a27);
  sub_53A868(v27);
  _Unwind_Resume(a1);
}

void sub_558100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_53A868(va);
  sub_53A868(v20);
  _Unwind_Resume(a1);
}

void sub_55811C(uint64_t a1@<X0>, void *a2@<X1>, char ***a3@<X8>)
{
  if ((0x1F693A1C451AB30BLL * ((a2[1] - *a2) >> 4)) <= 1)
  {
    v3 = "Advisory_Title_Notice";
  }

  else
  {
    v3 = "Advisory_Title_Notices";
  }

  v42 = *v3;
  v43 = *(v3 + 2);
  v39 = 0u;
  v40 = 0u;
  v41 = 1065353216;
  v37 = 0u;
  v35 = 1uLL;
  v30 = 0;
  v31 = 0;
  v14 = 0x7FFFFFFFLL;
  v16 = 0x7FFFFFFFLL;
  v13 = 0u;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v10 = vnegq_f64(v4);
  v11 = v10;
  v15 = v10;
  v26 = 0u;
  v23 = 0;
  v17 = 0u;
  v18 = 0;
  v8[0] = 0xFFFFFFFFuLL;
  v8[1] = 0uLL;
  v9 = 0;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  BYTE8(v13) = 0;
  LODWORD(v17) = 0x7FFFFFFF;
  *(&v17 + 4) = 0x7FFFFFFF7FFFFFFFLL;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0x8000000080000000;
  v24 = 0x8000000080000000;
  v25 = 0x7FFFFFFF;
  v27 = xmmword_2297C00;
  v28 = 0x7FFFFFFF;
  v29 = 0x7FFFFFFF7FFFFFFFLL;
  v32 = 0xBFF0000000000000;
  v33 = 0xBFF0000000000000;
  v34 = 0uLL;
  v36 = 0uLL;
  LOWORD(v37) = 0;
  DWORD1(v37) = -1;
  v38 = 0x7FFFFFFFFFFFFFFFuLL;
  sub_660FE4((a1 + 3168), &v42, &v39, v8, a3);
  sub_55D550(v8);
  v5 = v40;
  if (v40)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = v39;
  *&v39 = 0;
  if (v7)
  {
    operator delete(v7);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }
}

void sub_5582F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_55D550(&a9);
  sub_540798(v9 - 112);
  if (*(v9 - 41) < 0)
  {
    operator delete(*(v9 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_558320(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_64B998(a4);
  *__p = 0u;
  *v23 = 0u;
  v24 = 1065353216;
  sub_65DED0((a1 + 3168), "Advisory_Separator", __p, 0, v28);
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  sub_64FB18(a4, v28, v26);
  if ((SHIBYTE(v27) & 0x80000000) == 0)
  {
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_46:
    operator delete(v28[0]);
    v8 = v23[0];
    if (!v23[0])
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  operator delete(v26[0]);
  if (v29 < 0)
  {
    goto LABEL_46;
  }

LABEL_3:
  v8 = v23[0];
  if (!v23[0])
  {
    goto LABEL_5;
  }

  do
  {
LABEL_4:
    v9 = *v8;
    sub_55F7FC((v8 + 2));
    operator delete(v8);
    v8 = v9;
  }

  while (v9);
LABEL_5:
  v10 = __p[0];
  __p[0] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    while (1)
    {
      sub_5678AC(a1 + 1576, v11, __p);
      v14 = (a3 & 1) != 0 || (0x1F693A1C451AB30BLL * ((a2[1] - *a2) >> 4)) > 1;
      sub_550BFC(a1, v14, __p);
      sub_67F320(__p, v26);
      v15 = sub_58BBC(__p);
      sub_65DED0((a1 + 3168), v26, v15, 0, v28);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(v26[0]);
      }

      sub_64C184(a4, v28);
      if ((v29 & 0x80000000) == 0)
      {
        v16 = v25;
        if (v25)
        {
          goto LABEL_24;
        }

        goto LABEL_36;
      }

      operator delete(v28[0]);
      v16 = v25;
      if (v25)
      {
        break;
      }

LABEL_36:
      v18 = v23[1];
      v23[1] = 0;
      if (v18)
      {
        operator delete(v18);
      }

      v19 = __p[0];
      if (__p[0])
      {
        v20 = __p[1];
        v13 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v21 = *(v20 - 1);
            v20 -= 3;
            if (v21 < 0)
            {
              operator delete(*v20);
            }
          }

          while (v20 != v19);
          v13 = __p[0];
        }

        __p[1] = v19;
        operator delete(v13);
      }

      v11 += 2608;
      if (v11 == v12)
      {
        return;
      }
    }

    while (1)
    {
LABEL_24:
      v17 = *v16;
      if (*(v16 + 191) < 0)
      {
        operator delete(v16[21]);
        if (*(v16 + 159) < 0)
        {
          goto LABEL_31;
        }

LABEL_26:
        if ((*(v16 + 135) & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

LABEL_32:
        operator delete(v16[14]);
        if (*(v16 + 95) < 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        if ((*(v16 + 63) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

LABEL_22:
        operator delete(v16[5]);
        if (*(v16 + 39) < 0)
        {
          goto LABEL_35;
        }

LABEL_23:
        operator delete(v16);
        v16 = v17;
        if (!v17)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if ((*(v16 + 159) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

LABEL_31:
        operator delete(v16[17]);
        if (*(v16 + 135) < 0)
        {
          goto LABEL_32;
        }

LABEL_27:
        if ((*(v16 + 95) & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_33:
        operator delete(v16[9]);
        if (*(v16 + 63) < 0)
        {
          goto LABEL_22;
        }

LABEL_34:
        if ((*(v16 + 39) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

LABEL_35:
        operator delete(v16[2]);
        operator delete(v16);
        v16 = v17;
        if (!v17)
        {
          goto LABEL_36;
        }
      }
    }
  }
}

void sub_55860C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
    sub_540798(&a9);
    sub_53A868(v30);
    _Unwind_Resume(a1);
  }

  sub_540798(&a9);
  sub_53A868(v30);
  _Unwind_Resume(a1);
}

void sub_558678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_53A58C(&a9);
  sub_53A868(v9);
  _Unwind_Resume(a1);
}

void sub_558698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C(&a9);
  sub_53A868(v30);
  _Unwind_Resume(a1);
}

void sub_5586D8(uint64_t *a2@<X1>, uint64_t a4@<X8>)
{
  sub_64B998(a4);
  v5 = a2[1];
  if (*a2 != v5)
  {
    if ((0x1F693A1C451AB30BLL * ((v5 - *a2) >> 4)) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_558A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void **a30)
{
  sub_540798(&__p);
  sub_53A58C(&a30);
  if (*(v31 - 113) < 0)
  {
    operator delete(*(v31 - 136));
  }

  sub_6E3B8((v31 - 112));
  sub_1A104((v31 - 104));
  sub_53A868(v30);
  _Unwind_Resume(a1);
}

void sub_558B40(_Unwind_Exception *a1)
{
  sub_1A104((v2 - 104));
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_558B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_1A104((v27 - 104));
  sub_53A868(v26);
  _Unwind_Resume(a1);
}

void sub_558B8C(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v4 = a3[23];
  v5 = v4;
  v6 = *a3;
  v7 = *(a3 + 1);
  if ((v4 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if ((v4 & 0x80u) == 0)
  {
    v9 = a3[23];
  }

  else
  {
    v9 = *(a3 + 1);
  }

  if (v9 < 21)
  {
    v10 = a3;
    v11 = a2;
    goto LABEL_21;
  }

  v12 = &v8[v9];
  v13 = v8;
  while (1)
  {
    v14 = memchr(v13, 123, v9 - 20);
    if (!v14)
    {
LABEL_19:
      v11 = a2;
LABEL_20:
      v10 = a3;
      goto LABEL_21;
    }

    v15 = *v14 == 0x636E49616572417BLL && v14[1] == 0x626557746E656469;
    if (v15 && *(v14 + 13) == 0x7D6B6E696C626557)
    {
      break;
    }

    v13 = v14 + 1;
    v9 = v12 - v13;
    if (v12 - v13 < 21)
    {
      goto LABEL_19;
    }
  }

  v11 = a2;
  if (v14 == v12)
  {
    goto LABEL_20;
  }

  v10 = a3;
  if (v14 - v8 != -1)
  {
    v27 = *(a2 + 1112);
    if (*(v27 + 223) < 0)
    {
      sub_325C(&v80, *(v27 + 200), *(v27 + 208));
      if (*(v27 + 247) < 0)
      {
        goto LABEL_177;
      }

LABEL_45:
      v82 = *(v27 + 224);
      v83 = *(v27 + 240);
    }

    else
    {
      v80 = *(v27 + 200);
      v81 = *(v27 + 216);
      if ((*(v27 + 247) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

LABEL_177:
      sub_325C(&v82, *(v27 + 224), *(v27 + 232));
    }

    if (*(a2 + 1015) < 0)
    {
      sub_325C(v76, *(a2 + 992), *(a2 + 1000));
    }

    else
    {
      *v76 = *(a2 + 992);
      v77 = *(a2 + 1008);
    }

    if (*(a2 + 1039) < 0)
    {
      sub_325C(&v78, *(a2 + 1016), *(a2 + 1024));
    }

    else
    {
      v78 = *(a2 + 1016);
      v79 = *(a2 + 1032);
    }

    if (v83 >= 0)
    {
      v65 = HIBYTE(v83);
    }

    else
    {
      v65 = *(&v82 + 1);
    }

    if (v65)
    {
      if (SHIBYTE(v83) < 0)
      {
        sub_325C(v72, v82, *(&v82 + 1));
      }

      else
      {
        *v72 = v82;
        *&v73 = v83;
      }

      if (SHIBYTE(v83) < 0)
      {
        operator delete(v82);
      }

      v82 = *v72;
      v83 = v73;
      BYTE7(v73) = 0;
      LOBYTE(v72[0]) = 0;
      if (v79 >= 0)
      {
        v66 = HIBYTE(v79);
      }

      else
      {
        v66 = *(&v78 + 1);
      }

      if (v66)
      {
        if (SHIBYTE(v79) < 0)
        {
          sub_325C(&v74, v78, *(&v78 + 1));
        }

        else
        {
          v74 = v78;
          v75 = v79;
        }

        if (SHIBYTE(v79) < 0)
        {
          operator delete(v78);
        }

        v78 = v74;
        v79 = v75;
        HIBYTE(v75) = 0;
        LOBYTE(v74) = 0;
        v67 = HIBYTE(v81);
        if (v81 < 0)
        {
          v67 = *(&v80 + 1);
        }

        if (v67)
        {
          v68 = &v80;
        }

        else
        {
          v68 = v76;
        }

        sub_64F700(a4, "{AreaIncidentWeblink}", v68);
      }

      operator new();
    }

    operator new();
  }

LABEL_21:
  if ((v4 & 0x80u) == 0)
  {
    v17 = v10;
  }

  else
  {
    v17 = v6;
  }

  if ((v4 & 0x80u) == 0)
  {
    v18 = v4;
  }

  else
  {
    v18 = v7;
  }

  if (byte_2791E97 >= 0)
  {
    v19 = &qword_2791E80;
  }

  else
  {
    v19 = qword_2791E80;
  }

  if (byte_2791E97 >= 0)
  {
    v20 = byte_2791E97;
  }

  else
  {
    v20 = unk_2791E88;
  }

  if (!v20)
  {
LABEL_48:
    v28 = *(v11 + 920);
    if (v28 >= 0.0)
    {
      if (v28 < 8388600.0)
      {
        v29 = (v28 + v28) + 1;
        goto LABEL_53;
      }
    }

    else if (v28 > -8388600.0)
    {
      v29 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
LABEL_53:
      v28 = (v29 >> 1);
    }

    sub_64F510(a4, &qword_2791E80, v28);
    v4 = v10[23];
    v6 = *v10;
    v7 = *(v10 + 1);
    v5 = v10[23];
    goto LABEL_55;
  }

  if (v18 >= v20)
  {
    v21 = &v17[v18];
    v22 = *v19;
    v23 = v17;
    while (1)
    {
      v24 = v18 - v20;
      if (v24 == -1 || (v25 = memchr(v23, v22, v24 + 1)) == 0)
      {
LABEL_40:
        v11 = a2;
        v10 = a3;
        goto LABEL_55;
      }

      v26 = v25;
      if (!memcmp(v25, v19, v20))
      {
        break;
      }

      v23 = v26 + 1;
      v18 = v21 - (v26 + 1);
      if (v18 < v20)
      {
        goto LABEL_40;
      }
    }

    v11 = a2;
    if (v26 == v21)
    {
      v10 = a3;
    }

    else
    {
      v10 = a3;
      if (v26 - v17 != -1)
      {
        goto LABEL_48;
      }
    }
  }

LABEL_55:
  if (v5 >= 0)
  {
    v30 = v10;
  }

  else
  {
    v30 = v6;
  }

  if (v5 >= 0)
  {
    v31 = v4;
  }

  else
  {
    v31 = v7;
  }

  if (byte_2791EAF >= 0)
  {
    v32 = &qword_2791E98;
  }

  else
  {
    v32 = qword_2791E98;
  }

  if (byte_2791EAF >= 0)
  {
    v33 = byte_2791EAF;
  }

  else
  {
    v33 = unk_2791EA0;
  }

  if (v33)
  {
    if (v31 >= v33)
    {
      v34 = &v30[v31];
      v35 = *v32;
      v36 = v30;
      while (1)
      {
        v37 = v31 - v33;
        if (v37 == -1 || (v38 = memchr(v36, v35, v37 + 1)) == 0)
        {
LABEL_74:
          v11 = a2;
          goto LABEL_75;
        }

        v39 = v38;
        if (!memcmp(v38, v32, v33))
        {
          break;
        }

        v36 = v39 + 1;
        v31 = v34 - (v39 + 1);
        if (v31 < v33)
        {
          goto LABEL_74;
        }
      }

      v11 = a2;
      if (v39 != v34)
      {
        v10 = a3;
        if (v39 - v30 == -1)
        {
          goto LABEL_86;
        }

        goto LABEL_85;
      }

LABEL_75:
      v10 = a3;
      if (v5 >= 0)
      {
        v40 = a3;
      }

      else
      {
        v40 = v6;
      }

      if (v5 >= 0)
      {
        v41 = v4;
      }

      else
      {
        v41 = v7;
      }

      if (v41 >= 12)
      {
        goto LABEL_93;
      }

LABEL_104:
      if (v5 >= 0)
      {
        v46 = v10;
      }

      else
      {
        v46 = v6;
      }

      if (v5 >= 0)
      {
        v47 = v4;
      }

      else
      {
        v47 = v7;
      }

      if (v47 > 11)
      {
        goto LABEL_119;
      }

LABEL_130:
      if (v5 >= 0)
      {
        v52 = v10;
      }

      else
      {
        v52 = v6;
      }

      if (v5 >= 0)
      {
        v53 = v4;
      }

      else
      {
        v53 = v7;
      }

      if (v53 >= 11)
      {
        goto LABEL_145;
      }

      goto LABEL_157;
    }
  }

  else
  {
LABEL_85:
    sub_64E308(a4, &qword_2791E98, (v11 + 924), v11 + 1152, 4);
    v4 = v10[23];
    v6 = *v10;
    v7 = *(v10 + 1);
    v5 = v10[23];
  }

LABEL_86:
  if (v5 >= 0)
  {
    v40 = v10;
  }

  else
  {
    v40 = v6;
  }

  if (v5 >= 0)
  {
    v41 = v4;
  }

  else
  {
    v41 = v7;
  }

  if (v41 < 12)
  {
    goto LABEL_104;
  }

LABEL_93:
  v42 = &v40[v41];
  v43 = v40;
  do
  {
    v44 = memchr(v43, 123, v41 - 11);
    if (!v44)
    {
      break;
    }

    if (*v44 == 0x546574616470557BLL && *(v44 + 2) == 2103799145)
    {
      if (v44 != v42)
      {
        v10 = a3;
        if (v44 - v40 != -1)
        {
          sub_64E308(a4, "{UpdateTime}", (*(v11 + 1112) + 124), v11 + 1152, 0);
          v4 = a3[23];
          v6 = *a3;
          v7 = *(a3 + 1);
          v5 = a3[23];
        }

        goto LABEL_104;
      }

      break;
    }

    v43 = v44 + 1;
    v41 = v42 - v43;
  }

  while (v42 - v43 >= 12);
  v10 = a3;
  if (v5 >= 0)
  {
    v46 = a3;
  }

  else
  {
    v46 = v6;
  }

  if (v5 >= 0)
  {
    v47 = v4;
  }

  else
  {
    v47 = v7;
  }

  if (v47 <= 11)
  {
    goto LABEL_130;
  }

LABEL_119:
  v48 = &v46[v47];
  v49 = v46;
  do
  {
    v50 = memchr(v49, 123, v47 - 11);
    if (!v50)
    {
      break;
    }

    if (*v50 == 0x446574616470557BLL && *(v50 + 2) == 2103800929)
    {
      if (v50 != v48)
      {
        v10 = a3;
        if (v50 - v46 != -1)
        {
          sub_64E308(a4, "{UpdateDate}", (*(v11 + 1112) + 124), v11 + 1152, 3);
          v4 = a3[23];
          v6 = *a3;
          v7 = *(a3 + 1);
          v5 = a3[23];
        }

        goto LABEL_130;
      }

      break;
    }

    v49 = v50 + 1;
    v47 = v48 - v49;
  }

  while (v48 - v49 > 11);
  v10 = a3;
  if (v5 >= 0)
  {
    v52 = a3;
  }

  else
  {
    v52 = v6;
  }

  if (v5 >= 0)
  {
    v53 = v4;
  }

  else
  {
    v53 = v7;
  }

  if (v53 < 11)
  {
    goto LABEL_157;
  }

LABEL_145:
  v54 = &v52[v53];
  v55 = v52;
  while (1)
  {
    v56 = memchr(v55, 123, v53 - 10);
    if (!v56)
    {
      goto LABEL_156;
    }

    if (*v56 == 0x695465757373497BLL && *(v56 + 3) == 0x7D656D6954657573)
    {
      break;
    }

    v55 = v56 + 1;
    v53 = v54 - v55;
    if (v54 - v55 < 11)
    {
      goto LABEL_156;
    }
  }

  if (v56 == v54)
  {
LABEL_156:
    v10 = a3;
    goto LABEL_157;
  }

  v10 = a3;
  if (v56 - v52 != -1)
  {
    sub_64E308(a4, "{IssueTime}", (*(v11 + 1112) + 120), v11 + 1152, 0);
    v4 = a3[23];
    v6 = *a3;
    v7 = *(a3 + 1);
    v5 = a3[23];
  }

LABEL_157:
  v58 = v5;
  if (v5 >= 0)
  {
    v59 = v10;
  }

  else
  {
    v59 = v6;
  }

  if (v58 >= 0)
  {
    v60 = v4;
  }

  else
  {
    v60 = v7;
  }

  if (v60 >= 11)
  {
    v61 = &v59[v60];
    v62 = v59;
    do
    {
      v63 = memchr(v62, 123, v60 - 10);
      if (!v63)
      {
        break;
      }

      if (*v63 == 0x614465757373497BLL && *(v63 + 3) == 0x7D65746144657573)
      {
        if (v63 != v61 && v63 - v59 != -1)
        {
          sub_64E308(a4, "{IssueDate}", (*(v11 + 1112) + 120), v11 + 1152, 3);
        }

        return;
      }

      v62 = v63 + 1;
      v60 = v61 - v62;
    }

    while (v61 - v62 >= 11);
  }
}

void sub_559574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_1AB28(&a39);
  sub_1AB28(v44 - 144);
  _Unwind_Resume(a1);
}

void sub_559760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_5597A0(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_5598DC(a1 + 32);
  *(a1 + 2600) = 11;
  *(a1 + 2608) = 0;
  *(a1 + 2624) = 0;
  *(a1 + 2616) = 0;
  *(a1 + 2632) = 11;
  *(a1 + 2640) = 0;
  *(a1 + 2656) = 0;
  *(a1 + 2648) = 0;
  operator new();
}

void sub_559848(_Unwind_Exception *a1)
{
  v4 = v2;
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 2648) = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      if ((*(v1 + 2407) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
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

  *(v1 + 2616) = v7;
  operator delete(v7);
  if ((*(v1 + 2407) & 0x80000000) == 0)
  {
LABEL_4:
    sub_1F1A8(v1 + 16);
    sub_1F1A8(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v1 + 2384));
  sub_1F1A8(v1 + 16);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

void sub_5598C0(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + 16);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

float64x2_t sub_5598DC(uint64_t a1)
{
  *a1 = 0;
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  result = vnegq_f64(v1);
  *(a1 + 8) = result;
  *(a1 + 24) = result;
  *(a1 + 40) = result;
  *(a1 + 56) = result;
  *(a1 + 72) = result;
  *(a1 + 88) = result;
  *(a1 + 104) = result;
  *(a1 + 120) = result;
  *(a1 + 136) = 0x7FFFFFFFFFFFFFFFLL;
  *&v3 = 0x8000000080000000;
  *(&v3 + 1) = 0x8000000080000000;
  *(a1 + 144) = v3;
  *(a1 + 160) = v3;
  *(a1 + 176) = v3;
  *(a1 + 192) = v3;
  *(a1 + 208) = 0x7FFFFFFF;
  *(a1 + 216) = result;
  *(a1 + 232) = result;
  *(a1 + 248) = v3;
  *(a1 + 264) = v3;
  *(a1 + 280) = 0x8000000080000000;
  *(a1 + 288) = result;
  *(a1 + 304) = result;
  *(a1 + 320) = result;
  *(a1 + 336) = result;
  *(a1 + 352) = result;
  *(a1 + 368) = result;
  *(a1 + 384) = result;
  *(a1 + 400) = result;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 440) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 448) = result;
  *(a1 + 464) = result;
  *(a1 + 480) = result;
  *(a1 + 496) = result;
  *(a1 + 512) = result;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
  *(a1 + 560) = result;
  *(a1 + 576) = result;
  *(a1 + 592) = result;
  *(a1 + 608) = result;
  *(a1 + 624) = result;
  *(a1 + 640) = result;
  *(a1 + 656) = result;
  *(a1 + 672) = result;
  *(a1 + 688) = result;
  *(a1 + 704) = result;
  *(a1 + 720) = result;
  *(a1 + 736) = result;
  *(a1 + 752) = result;
  *(a1 + 768) = result;
  *(a1 + 784) = result;
  *(a1 + 800) = result;
  *(a1 + 816) = result;
  *(a1 + 832) = result;
  *(a1 + 848) = result;
  *(a1 + 864) = result;
  *(a1 + 880) = result;
  *(a1 + 896) = result;
  *(a1 + 912) = result;
  *(a1 + 928) = result;
  *(a1 + 944) = result;
  *(a1 + 960) = result;
  *(a1 + 976) = result;
  *(a1 + 992) = result;
  *(a1 + 1008) = result;
  *(a1 + 1024) = result;
  *(a1 + 1040) = result;
  *(a1 + 1056) = result;
  *(a1 + 1072) = result;
  *(a1 + 1088) = result;
  *(a1 + 1104) = result;
  *(a1 + 1120) = result;
  *(a1 + 1136) = result;
  *(a1 + 1152) = result;
  *(a1 + 1168) = result;
  *(a1 + 1184) = result;
  *(a1 + 1200) = result;
  *(a1 + 1216) = result;
  *(a1 + 1232) = result;
  *(a1 + 1248) = result;
  *(a1 + 1264) = result;
  *(a1 + 1280) = result;
  *(a1 + 1296) = result;
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = result;
  *(a1 + 1360) = result;
  *(a1 + 1376) = result;
  *(a1 + 1392) = result;
  *(a1 + 1408) = result;
  *(a1 + 1424) = result;
  *(a1 + 1440) = result;
  *(a1 + 1456) = result;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = result;
  *(a1 + 1520) = result;
  *(a1 + 1536) = result;
  *(a1 + 1552) = result;
  *(a1 + 1568) = result;
  *(a1 + 1584) = result;
  *(a1 + 1600) = result;
  *(a1 + 1616) = result;
  *(a1 + 1632) = result;
  *(a1 + 1648) = result;
  *(a1 + 1664) = result;
  *(a1 + 1680) = result;
  *(a1 + 1696) = 0;
  *(a1 + 1704) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1712) = result;
  *(a1 + 1728) = result;
  *(a1 + 1744) = result;
  *(a1 + 1760) = result;
  *(a1 + 1776) = result;
  *(a1 + 1792) = result;
  *(a1 + 1808) = result;
  *(a1 + 1824) = result;
  *(a1 + 1840) = result;
  *(a1 + 1856) = result;
  *(a1 + 1872) = result;
  *(a1 + 1888) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1896) = 0;
  *(a1 + 1904) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1912) = 0;
  *(a1 + 1920) = result;
  *(a1 + 1984) = -1;
  *(a1 + 1968) = v1;
  *(a1 + 1952) = v1;
  *(a1 + 1936) = v1;
  *(a1 + 1992) = 0;
  *(a1 + 2000) = result;
  *(a1 + 2016) = result;
  *(a1 + 2032) = result;
  *(a1 + 2048) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2056) = 0;
  *(a1 + 2060) = 0x7FFFFFFF;
  *(a1 + 2064) = 0;
  *(a1 + 2072) = 0;
  *(a1 + 2080) = result;
  *(a1 + 2096) = result;
  *(a1 + 2112) = result;
  *(a1 + 2128) = result;
  *(a1 + 2144) = result;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = result;
  *(a1 + 2208) = result;
  *(a1 + 2224) = result;
  *(a1 + 2240) = result;
  *(a1 + 2256) = result;
  *(a1 + 2272) = result;
  *(a1 + 2288) = result;
  *(a1 + 2320) = 0;
  *(a1 + 2304) = 0u;
  *(a1 + 2328) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2336) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2344) = 0;
  *(a1 + 2368) = 0;
  *(a1 + 2373) = 0;
  *(a1 + 2352) = 0u;
  *(a1 + 2384) = result;
  *(a1 + 2400) = result;
  *(a1 + 2416) = 1;
  *(a1 + 2417) = 0;
  *(a1 + 2425) = 0;
  *(a1 + 2432) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2440) = 0;
  *(a1 + 2448) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2456) = 0u;
  *(a1 + 2472) = 0;
  *(a1 + 2480) = result;
  *(a1 + 2504) = 0;
  *(a1 + 2496) = 0;
  *(a1 + 2512) = result;
  *(a1 + 2528) = result;
  *(a1 + 2544) = 0;
  *(a1 + 2548) = 4294967297000000000;
  *(a1 + 2560) = 0x7FFFFFFFFFFFFFFELL;
  return result;
}

uint64_t sub_559B98(uint64_t a1)
{
  if (*(a1 + 2687) < 0)
  {
    operator delete(*(a1 + 2664));
  }

  v2 = *(a1 + 2640);
  if (v2)
  {
    *(a1 + 2648) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 2608);
  if (v3)
  {
    *(a1 + 2616) = v3;
    operator delete(v3);
  }

  if (*(a1 + 2407) < 0)
  {
    operator delete(*(a1 + 2384));
  }

  v4 = *(a1 + 24);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 8);
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

uint64_t sub_559C9C(uint64_t a1)
{
  bzero(a1, 0x220uLL);
  sub_64B998(a1 + 48);
  *(a1 + 216) = 0;
  *(a1 + 208) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  sub_64B998(a1 + 240);
  *(a1 + 432) = 0;
  *(a1 + 440) = -1;
  *(a1 + 443) = -1;
  *(a1 + 455) = 0;
  *(a1 + 463) = 0;
  *(a1 + 447) = 0;
  *(a1 + 471) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  *(a1 + 504) = 0;
  bzero((a1 + 512), 0x210uLL);
  sub_64B998(a1 + 544);
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 728) = 0;
  *(a1 + 720) = 0;
  sub_64B998(a1 + 736);
  *(a1 + 928) = 0;
  *(a1 + 936) = -1;
  *(a1 + 939) = -1;
  *(a1 + 951) = 0;
  *(a1 + 959) = 0;
  *(a1 + 943) = 0;
  *(a1 + 967) = 0;
  *(a1 + 976) = 0;
  *(a1 + 992) = 0;
  *(a1 + 984) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  return a1;
}

void sub_559D8C(_Unwind_Exception *a1)
{
  sub_55AA68((v1 + 712));
  sub_53A868(v1 + 544);
  sub_55A8B4(v1 + 48);
  sub_559E14((v1 + 24));
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

void sub_559DC8(_Unwind_Exception *a1)
{
  v3 = v2;
  sub_55AA68(v3);
  sub_53A868(v1 + 48);
  sub_559E14((v1 + 24));
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

void sub_559DF8(_Unwind_Exception *a1)
{
  sub_559E14((v1 + 24));
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

void **sub_559E14(void **a1)
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
        v3 = sub_55A8B4(v3 - 496);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void ***sub_559E70(void ***a1)
{
  v2 = a1[133];
  if (v2)
  {
    v3 = a1[134];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_55A8B4((v3 - 62));
      }

      while (v3 != v2);
      v4 = a1[133];
    }

    a1[134] = v2;
    operator delete(v4);
  }

  v5 = a1[130];
  if (v5)
  {
    v6 = a1[131];
    v7 = a1[130];
    if (v6 != v5)
    {
      do
      {
        v6 = sub_55A8B4((v6 - 62));
      }

      while (v6 != v5);
      v7 = a1[130];
    }

    a1[131] = v5;
    operator delete(v7);
  }

  sub_55A8B4((a1 + 68));
  sub_55A8B4((a1 + 6));
  v8 = a1[3];
  if (v8)
  {
    v9 = a1[4];
    v10 = a1[3];
    if (v9 != v8)
    {
      do
      {
        v9 = sub_55A8B4((v9 - 62));
      }

      while (v9 != v8);
      v10 = a1[3];
    }

    a1[4] = v8;
    operator delete(v10);
  }

  v11 = *a1;
  if (*a1)
  {
    v12 = a1[1];
    v13 = *a1;
    if (v12 != v11)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = *a1;
    }

    a1[1] = v11;
    operator delete(v13);
  }

  return a1;
}

uint64_t *sub_559F9C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_53A868(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_559FF0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_53A868(result);

    operator delete();
  }

  return result;
}

char **sub_55A03C(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; sub_55A0A0(a1, i))
    {
      i -= 144;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_55A0A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  *(a2 + 128) = 0;
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      v5 = v3[1];
      v6 = *v3;
      if (v5 != v4)
      {
        do
        {
          v5 = sub_53A868(v5 - 168);
        }

        while (v5 != v4);
        v6 = *v3;
      }

      v3[1] = v4;
      operator delete(v6);
    }

    operator delete();
  }

  v7 = *(a2 + 120);
  *(a2 + 120) = 0;
  if (v7)
  {
    if (*(v7 + 24) == 1 && *(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    operator delete();
  }

  v8 = *(a2 + 112);
  *(a2 + 112) = 0;
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      *(v8 + 16) = v9;
      operator delete(v9);
    }

    operator delete();
  }

  v10 = *(a2 + 104);
  *(a2 + 104) = 0;
  if (v10)
  {
    if (*(v10 + 47) < 0)
    {
      operator delete(*(v10 + 24));
      if ((*(v10 + 23) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    else if ((*(v10 + 23) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    operator delete(*v10);
LABEL_20:
    operator delete();
  }

  v11 = a2 + 88;
  v12 = *(a2 + 88);
  *(a2 + 88) = 0;
  if (v12)
  {
    sub_55CE04(v11, v12);
  }

  v13 = *(a2 + 64);
  if (v13)
  {
    v14 = *(a2 + 72);
    v15 = *(a2 + 64);
    if (v14 != v13)
    {
      do
      {
        if (*(v14 - 9) < 0)
        {
          operator delete(*(v14 - 32));
        }

        v14 -= 40;
      }

      while (v14 != v13);
      v15 = *(a2 + 64);
    }

    *(a2 + 72) = v13;
    operator delete(v15);
  }

  v16 = *(a2 + 56);
  *(a2 + 56) = 0;
  if (v16)
  {
    if (*(v16 + 103) < 0)
    {
      operator delete(*(v16 + 80));
      if ((*(v16 + 71) & 0x80000000) == 0)
      {
LABEL_34:
        v17 = *(v16 + 32);
        if (v17 == -1)
        {
LABEL_41:
          *(v16 + 32) = -1;
          operator delete();
        }

LABEL_40:
        (off_266B1F0[v17])(&v20, v16);
        goto LABEL_41;
      }
    }

    else if ((*(v16 + 71) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    operator delete(*(v16 + 48));
    v17 = *(v16 + 32);
    if (v17 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v18 = *(a2 + 48);
  *(a2 + 48) = 0;
  if (v18)
  {
    if (*(v18 + 31) < 0)
    {
      operator delete(*(v18 + 8));
    }

    operator delete();
  }

  v19 = *(a2 + 40);
  *(a2 + 40) = 0;
  if (v19)
  {
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    operator delete();
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void *sub_55A36C(void **a1, uint64_t a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x84210842108421)
  {
    sub_1794();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 4) >= 0x42108421084210)
  {
    v5 = 0x84210842108421;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x84210842108421)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  sub_55A4D0(v6, a2);
  v7 = (496 * v2 + 496);
  v8 = *a1;
  v9 = a1[1];
  v10 = (v6 + *a1 - v9);
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      sub_55A4D0(v12, v11);
      v11 += 496;
      v12 = v13 + 496;
    }

    while (v11 != v9);
    do
    {
      sub_55A8B4(v8);
      v8 += 496;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

__n128 sub_55A4D0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  v3 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 96) = v3;
  v4 = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = v4;
  v5 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v5;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  v6 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v6;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  v7 = *(a2 + 288);
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a1 + 288) = v7;
  LODWORD(v7) = *(a2 + 296);
  *(a1 + 300) = *(a2 + 300);
  *(a1 + 296) = v7;
  v8 = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 304) = v8;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  *(a2 + 304) = 0;
  v9 = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 328) = v9;
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  *(a2 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 384) = -1;
  v10 = *(a2 + 384);
  if (v10 != -1)
  {
    v11 = a1;
    v15 = a1 + 352;
    (off_266B218[v10])(&v15, a2 + 352);
    a1 = v11;
    *(v11 + 384) = v10;
  }

  *(a1 + 392) = *(a2 + 392);
  v12 = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 400) = v12;
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  *(a2 + 400) = 0;
  *(a1 + 424) = *(a2 + 424);
  v13 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 432) = v13;
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  *(a2 + 432) = 0;
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0;
  result = *(a2 + 464);
  *(a1 + 464) = result;
  *(a1 + 480) = *(a2 + 480);
  *(a2 + 464) = 0;
  *(a2 + 472) = 0;
  *(a2 + 480) = 0;
  *(a1 + 488) = *(a2 + 488);
  return result;
}

void sub_55A778(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }
}

void sub_55A78C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    *(a2 + 16) = v2;
    operator delete(v2);
  }
}

void sub_55A7A0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_55A7B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

__n128 sub_55A7CC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  result = *(a2 + 8);
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  return result;
}

__n128 sub_55A7F4(void **a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  result = *(a2 + 8);
  *(v2 + 1) = result;
  v2[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

__n128 sub_55A820(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 0;
  return result;
}

__n128 sub_55A840(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 0;
  return result;
}

uint64_t sub_55A860(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 496;
    sub_55A8B4(i - 496);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_55A8B4(uint64_t a1)
{
  v2 = *(a1 + 464);
  if (v2)
  {
    v3 = *(a1 + 472);
    v4 = *(a1 + 464);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 464);
    }

    *(a1 + 472) = v2;
    operator delete(v4);
  }

  if ((*(a1 + 455) & 0x80000000) == 0)
  {
    if ((*(a1 + 423) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(*(a1 + 400));
    v6 = *(a1 + 384);
    if (v6 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  operator delete(*(a1 + 432));
  if (*(a1 + 423) < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v6 = *(a1 + 384);
  if (v6 != -1)
  {
LABEL_15:
    (off_266B1F0[v6])(&v17, a1 + 352);
  }

LABEL_16:
  *(a1 + 384) = -1;
  sub_53A868(a1 + 192);
  v7 = *(a1 + 168);
  if (v7)
  {
    v8 = *(a1 + 176);
    v9 = *(a1 + 168);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 24);
        if (v10)
        {
          v11 = *(v8 - 16);
          v12 = *(v8 - 24);
          if (v11 != v10)
          {
            do
            {
              v13 = *(v11 - 1);
              v11 -= 3;
              if (v13 < 0)
              {
                operator delete(*v11);
              }
            }

            while (v11 != v10);
            v12 = *(v8 - 24);
          }

          *(v8 - 16) = v10;
          operator delete(v12);
        }

        v14 = v8 - 800;
        v15 = *(v8 - 32);
        if (v15 != -1)
        {
          (off_266B240[v15])(&v18, v8 - 800);
        }

        *(v8 - 32) = -1;
        v8 -= 800;
      }

      while (v14 != v7);
      v9 = *(a1 + 168);
    }

    *(a1 + 176) = v7;
    operator delete(v9);
  }

  return sub_53A868(a1);
}

char **sub_55AA68(char **a1)
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
          (off_266B240[v10])(&v12, v3 - 800);
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

uint64_t sub_55AB60(uint64_t a1)
{
  v2 = *(a1 + 768);
  if (v2 != -1)
  {
    (off_266B240[v2])(&v4, a1);
  }

  *(a1 + 768) = -1;
  return a1;
}

uint64_t sub_55ABBC(uint64_t a1)
{
  v2 = *(a1 + 768);
  if (v2 != -1)
  {
    (off_266B240[v2])(&v4, a1);
  }

  *(a1 + 768) = -1;
  return a1;
}

void sub_55AC1C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_55AC30(uint64_t a1, uint64_t a2)
{
  sub_53A868(a2 + 592);
  sub_53A868(a2 + 432);
  if (*(a2 + 423) < 0)
  {
    operator delete(*(a2 + 400));
    if ((*(a2 + 391) & 0x80000000) == 0)
    {
LABEL_3:
      v3 = *(a2 + 352);
      if (v3 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a2 + 391) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a2 + 368));
  v3 = *(a2 + 352);
  if (v3 != -1)
  {
LABEL_7:
    (off_266B1F0[v3])(&v5, a2 + 320);
  }

LABEL_8:
  *(a2 + 352) = -1;
  sub_53A868(a2 + 160);
  return sub_53A868(a2);
}

void sub_55ACE4(unint64_t *a1, uint64_t a2)
{
  v3 = a1[2];
  v4 = v3;
  if (v3 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      v9 = 0xDEF7BDEF7BDEF7BELL * ((v3 - *a1) >> 4);
      if (v3 == *a1)
      {
        v9 = 1;
      }

      if (v9 < 0x84210842108422)
      {
        operator new();
      }

      sub_1808();
    }

    v7 = (0xEF7BDEF7BDEF7BDFLL * (v6 >> 4) + 1) / -2;
    v4 = v5 - 496 * ((0xEF7BDEF7BDEF7BDFLL * (v6 >> 4) + 1) / 2);
    if (v5 != v3)
    {
      v8 = a2;
      do
      {
        sub_53B8B8(v4, v5);
        v5 += 496;
        v4 += 496;
      }

      while (v5 != v3);
      v5 = a1[1];
      a2 = v8;
    }

    a1[1] = v5 + 496 * v7;
    a1[2] = v4;
  }

  sub_55A4D0(v4, a2);
  a1[2] += 496;
}

uint64_t sub_55AEB4(unint64_t *a1, uint64_t a2)
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

  v18 = a1;
  if (v5)
  {
    if (v5 <= 0x51EB851EB851EBLL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 800 * v2;
  v15 = 0;
  v16 = v6;
  v17 = v6;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v6, *a2, *(a2 + 8));
    v7 = v16;
    v8 = v17;
  }

  else
  {
    *v6 = *a2;
    *(v6 + 16) = *(a2 + 16);
    v7 = v6;
    v8 = v6;
  }

  *(v6 + 768) = 1;
  *(v6 + 776) = 0;
  *(v6 + 792) = 0;
  *(v6 + 784) = 0;
  *&v17 = v8 + 800;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_55B144(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_55B054(&v15);
  return v14;
}

void sub_55B040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_55B054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_55B054(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
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
      (off_266B240[v8])(&v10, i - 800);
    }

    *(i - 32) = -1;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_55B144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = v6 + v7;
      *v8 = 0;
      *(v8 + 768) = -1;
      v10 = *(v6 + v7 + 768);
      if (v10 != -1)
      {
        v16 = a4 + v7;
        (off_266B260[v10])(&v16, v6 + v7);
        *(v8 + 768) = v10;
      }

      *(v8 + 792) = 0;
      *(v8 + 776) = 0u;
      *(v8 + 776) = *(v9 + 776);
      *(v8 + 784) = *(v9 + 784);
      *(v9 + 792) = 0;
      *(v9 + 776) = 0u;
      v7 += 800;
    }

    while (v6 + v7 != a3);
    for (; v6 != a3; v6 += 800)
    {
      v11 = *(v6 + 776);
      if (v11)
      {
        v12 = *(v6 + 784);
        v13 = *(v6 + 776);
        if (v12 != v11)
        {
          do
          {
            v14 = *(v12 - 1);
            v12 -= 3;
            if (v14 < 0)
            {
              operator delete(*v12);
            }
          }

          while (v12 != v11);
          v13 = *(v6 + 776);
        }

        *(v6 + 784) = v11;
        operator delete(v13);
      }

      v15 = *(v6 + 768);
      if (v15 != -1)
      {
        (off_266B240[v15])(&v17, v6);
      }

      *(v6 + 768) = -1;
    }
  }
}

__n128 sub_55B2C0(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 0;
  return result;
}

__n128 sub_55B2F8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  v3 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 96) = v3;
  v4 = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = v4;
  v5 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v5;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  v6 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v6;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = *(a2 + 232);
  v7 = *(a2 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a1 + 256) = v7;
  v8 = *(a2 + 264);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 264) = v8;
  v9 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v9;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 272) = 0;
  v10 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 296) = v10;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 296) = 0;
  *(a1 + 320) = 0;
  *(a1 + 352) = -1;
  v11 = *(a2 + 352);
  if (v11 != -1)
  {
    v12 = a1;
    v22 = a1 + 320;
    (off_266B218[v11])(&v22, a2 + 320);
    a1 = v12;
    *(v12 + 352) = v11;
  }

  *(a1 + 360) = *(a2 + 360);
  v13 = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 368) = v13;
  *(a2 + 376) = 0u;
  *(a2 + 368) = 0;
  *(a1 + 392) = *(a2 + 392);
  v14 = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 400) = v14;
  *(a2 + 408) = 0u;
  *(a2 + 400) = 0;
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 440) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a2 + 448) = 0;
  *(a2 + 432) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  *(a2 + 472) = 0;
  *(a2 + 456) = 0u;
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
  v15 = *(a2 + 528);
  *(a2 + 528) = 0;
  *(a1 + 528) = v15;
  LODWORD(v15) = *(a2 + 536);
  *(a1 + 540) = *(a2 + 540);
  *(a1 + 536) = v15;
  v16 = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 544) = v16;
  *(a2 + 544) = 0;
  *(a2 + 552) = 0u;
  v17 = *(a2 + 568);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 568) = v17;
  *(a2 + 576) = 0u;
  *(a2 + 568) = 0;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *(a2 + 608) = 0;
  *(a2 + 592) = 0u;
  *(a1 + 632) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a2 + 632) = 0;
  *(a2 + 616) = 0u;
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
  v18 = *(a2 + 688);
  *(a2 + 688) = 0;
  *(a1 + 688) = v18;
  LODWORD(v18) = *(a2 + 696);
  *(a1 + 700) = *(a2 + 700);
  *(a1 + 696) = v18;
  v19 = *(a2 + 704);
  *(a1 + 720) = *(a2 + 720);
  *(a1 + 704) = v19;
  *(a2 + 704) = 0;
  *(a2 + 720) = 0;
  *(a2 + 712) = 0;
  v20 = *(a2 + 728);
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 728) = v20;
  *(a2 + 744) = 0;
  *(a2 + 736) = 0;
  *(a2 + 728) = 0;
  result = *(a2 + 752);
  *(a1 + 752) = result;
  return result;
}

_DWORD *sub_55B734@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  switch(*result)
  {
    case 1:
      a2[23] = 8;
      strcpy(a2, "BLIZZARD");
      break;
    case 2:
      a2[23] = 11;
      strcpy(a2, "FLASH_FLOOD");
      break;
    case 3:
      a2[23] = 5;
      *a2 = 1330596934;
      a2[4] = 68;
      a2[5] = 0;
      break;
    case 4:
      a2[23] = 9;
      strcpy(a2, "HURRICANE");
      break;
    case 5:
      a2[23] = 10;
      strcpy(a2, "SNOW_STORM");
      break;
    case 6:
      a2[23] = 8;
      strcpy(a2, "WILDFIRE");
      break;
    case 7:
      a2[23] = 7;
      strcpy(a2, "CYCLONE");
      break;
    case 8:
      a2[23] = 10;
      strcpy(a2, "EARTHQUAKE");
      break;
    case 9:
      a2[23] = 9;
      strcpy(a2, "HAILSTORM");
      break;
    case 0xA:
      a2[23] = 9;
      strcpy(a2, "ICE_STORM");
      break;
    case 0xB:
      a2[23] = 12;
      strcpy(a2, "THUNDERSTORM");
      break;
    case 0xC:
      a2[23] = 14;
      strcpy(a2, "TROPICAL_STORM");
      break;
    case 0xD:
      a2[23] = 7;
      strcpy(a2, "TSUNAMI");
      break;
    case 0xE:
      a2[23] = 7;
      strcpy(a2, "TYPHOON");
      break;
    case 0xF:
    case 0x10:
      a2[23] = 9;
      strcpy(a2, "LANDSLIDE");
      break;
    case 0x11:
      a2[23] = 7;
      strcpy(a2, "TORNADO");
      break;
    case 0x12:
      a2[23] = 17;
      strcpy(a2, "VOLCANIC_ERUPTION");
      break;
    case 0x13:
      a2[23] = 10;
      strcpy(a2, "SNOW_CHAIN");
      break;
    case 0x14:
      a2[23] = 14;
      strcpy(a2, "SPORTING_EVENT");
      break;
    case 0x15:
      a2[23] = 6;
      strcpy(a2, "PARADE");
      break;
    case 0x16:
      a2[23] = 8;
      strcpy(a2, "FESTIVAL");
      break;
    default:
      a2[23] = 7;
      strcpy(a2, "UNKNOWN");
      break;
  }

  return result;
}

uint64_t sub_55BB20(uint64_t *a1, uint64_t a2)
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

  v16 = a1;
  if (v5)
  {
    if (v5 <= 0x51EB851EB851EBLL)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 0;
  v14 = 800 * v2;
  v15 = 800 * v2;
  v6 = sub_55BC9C(800 * v2, a2);
  *(v6 + 768) = 2;
  *(v6 + 776) = 0;
  *(v6 + 792) = 0;
  *(v6 + 784) = 0;
  *&v15 = v15 + 800;
  v7 = a1[1];
  v8 = v14 + *a1 - v7;
  sub_55B144(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_55B054(&v13);
  return v12;
}

void sub_55BC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_55B054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_55BC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_55BD50(a1, a2);
  sub_55BD50(v4 + 160, a2 + 160);
  sub_55F1E8(a1 + 320, a2 + 320);
  sub_55BD50(a1 + 432, a2 + 432);
  sub_55BD50(a1 + 592, a2 + 592);
  *(a1 + 752) = *(a2 + 752);
  return a1;
}

void sub_55BD00(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 432);
  sub_53E440(v1 + 320);
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_55BD50(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_353184(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v5 != v4)
  {
    if (0x8E38E38E38E38E39 * ((v5 - v4) >> 4) < 0x1C71C71C71C71C8)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_353184(a1 + 48, *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
  sub_55D140((a1 + 72), (a2 + 72));
  if (*(a2 + 96))
  {
    operator new();
  }

  *(a1 + 96) = 0;
  v6 = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = v6;
  if (*(a2 + 135) < 0)
  {
    sub_325C((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v7 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v7;
  }

  if (*(a2 + 159) < 0)
  {
    sub_325C((a1 + 136), *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v8 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v8;
  }

  return a1;
}

void sub_55BF54(_Unwind_Exception *a1)
{
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  sub_559F9C((v1 + 96));
  sub_4B98C4((v1 + 72));
  sub_1A104(v3);
  sub_55A03C(v2);
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

void sub_55BFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_55D0CC(&a9);
  sub_1A104(v9);
  _Unwind_Resume(a1);
}

void sub_55BFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_55D064(va);
  *(v10 + 32) = v11;
  sub_55D0CC(&a9);
  sub_1A104(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_55C01C(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    v6 = *(a2 + 3);
    *(a1 + 32) = *(a2 + 8);
    *(a1 + 24) = v6;
    if (*(a2 + 5))
    {
LABEL_3:
      operator new();
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    v5 = *(a2 + 3);
    *(a1 + 32) = *(a2 + 8);
    *(a1 + 24) = v5;
    if (*(a2 + 5))
    {
      goto LABEL_3;
    }
  }

  *(a1 + 40) = 0;
  if (*(a2 + 6))
  {
    operator new();
  }

  *(a1 + 48) = 0;
  if (*(a2 + 7))
  {
    operator new();
  }

  *(a1 + 56) = 0;
  sub_55C568((a1 + 64), a2 + 8);
  if (*(a2 + 11))
  {
    operator new();
  }

  *(a1 + 88) = 0;
  v7 = *(a2 + 24);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 96) = v7;
  if (*(a2 + 13))
  {
    operator new();
  }

  *(a1 + 104) = 0;
  if (*(a2 + 14))
  {
    operator new();
  }

  *(a1 + 112) = 0;
  sub_55CA20((a1 + 120), a2 + 15);
  if (*(a2 + 16))
  {
    operator new();
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = *(a2 + 34);
  return a1;
}

void sub_55C3B8(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  operator delete();
}

uint64_t *sub_55C568(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_55C6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_55C6CC(va);
  *(v10 + 8) = v11;
  sub_55C730(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_55C6CC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 32));
      }

      v3 -= 40;
    }
  }

  return a1;
}

void ***sub_55C730(void ***a1)
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
          if (*(v4 - 9) < 0)
          {
            operator delete(*(v4 - 4));
          }

          v4 -= 5;
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

uint64_t sub_55C7B4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_55C8F0((a1 + 24), (a2 + 24));
  if (*(a2 + 71) < 0)
  {
    sub_325C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
  }

  if (*(a2 + 95) < 0)
  {
    sub_325C((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v6;
  }

  return a1;
}

void sub_55C8A8(_Unwind_Exception *a1)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  sub_4B98C4((v1 + 24));
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_55C8F0(uint64_t *a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_55CA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_49A814(va);
  *(v10 + 8) = v11;
  sub_49A874(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_55CA20(uint64_t *result, __int128 **a2)
{
  if (*a2)
  {
    operator new();
  }

  *result = 0;
  return result;
}

void sub_55CAE4(_Unwind_Exception *a1)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  operator delete();
}

void sub_55CB18(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x186186186186187)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_55CC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = v11 - 168;
    v15 = -v12;
    do
    {
      v14 = sub_53A868(v14) - 168;
      v15 += 168;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_55CC48(&a9);
  _Unwind_Resume(a1);
}

void ***sub_55CC48(void ***result)
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
          v4 = sub_53A868(v4 - 168);
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

void *sub_55CCC0(void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 24) == 1 && *(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_55CD38(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      *(v1 + 16) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_55CD90(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((*(v1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*v1);
LABEL_4:
    operator delete();
  }

  return a1;
}

void sub_55CE04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 95) < 0)
    {
      operator delete(*(a2 + 72));
      if ((*(a2 + 71) & 0x80000000) == 0)
      {
LABEL_4:
        v3 = *(a2 + 24);
        if (!v3)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 71) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a2 + 48));
    v3 = *(a2 + 24);
    if (!v3)
    {
LABEL_5:
      v4 = *a2;
      if (!*a2)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

LABEL_13:
    v5 = *(a2 + 32);
    if (v5 == v3)
    {
      *(a2 + 32) = v3;
      operator delete(v3);
      v4 = *a2;
      if (!*a2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      do
      {
        v6 = *(v5 - 9);
        v5 -= 4;
        if (v6 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v3);
      v7 = *(a2 + 24);
      *(a2 + 32) = v3;
      operator delete(v7);
      v4 = *a2;
      if (!*a2)
      {
LABEL_7:

        operator delete();
      }
    }

LABEL_6:
    *(a2 + 8) = v4;
    operator delete(v4);
    goto LABEL_7;
  }
}

uint64_t *sub_55CEFC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 103) < 0)
    {
      operator delete(*(v1 + 80));
      if ((*(v1 + 71) & 0x80000000) == 0)
      {
LABEL_4:
        v2 = *(v1 + 32);
        if (v2 == -1)
        {
LABEL_9:
          *(v1 + 32) = -1;
          operator delete();
        }

LABEL_8:
        (off_266B1F0[v2])(&v3, v1);
        goto LABEL_9;
      }
    }

    else if ((*(v1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(v1 + 48));
    v2 = *(v1 + 32);
    if (v2 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return a1;
}

void *sub_55CFB4(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

void *sub_55D00C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_55D064(uint64_t a1)
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
        v4 -= 144;
        sub_55A0A0(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void ***sub_55D0CC(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      for (i = v2[1]; i != v3; sub_55A0A0(v2, i))
      {
        i -= 144;
      }

      v2[1] = v3;
      operator delete(**a1);
    }
  }

  return a1;
}

uint64_t *sub_55D140(uint64_t *a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_55D250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_49A814(va);
  *(v10 + 8) = v11;
  sub_49A874(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_55D270(uint64_t a1)
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
    (off_266B1F0[v2])(&v4, a1 + 320);
  }

LABEL_8:
  *(a1 + 352) = -1;
  sub_53A868(a1 + 160);
  return sub_53A868(a1);
}

uint64_t sub_55D320(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 - *a1;
  v4 = 0x8F5C28F5C28F5C29 * (v3 >> 5) + 1;
  if (v4 > 0x51EB851EB851EBLL)
  {
    sub_1794();
  }

  if (0x1EB851EB851EB852 * ((a1[2] - v1) >> 5) > v4)
  {
    v4 = 0x1EB851EB851EB852 * ((a1[2] - v1) >> 5);
  }

  if (0x8F5C28F5C28F5C29 * ((a1[2] - v1) >> 5) >= 0x28F5C28F5C28F5)
  {
    v6 = 0x51EB851EB851EBLL;
  }

  else
  {
    v6 = v4;
  }

  v16 = a1;
  if (v6)
  {
    if (v6 <= 0x51EB851EB851EBLL)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * (v3 >> 5);
  v13 = 0;
  v14 = v7;
  *(v7 + 768) = 0;
  *(v7 + 776) = 0;
  *(v7 + 792) = 0;
  *(v7 + 784) = 0;
  v15 = (v7 + 800);
  v8 = v7 - v3;
  sub_55B144(a1, v1, v2, v7 - v3);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_55B054(&v13);
  return v12;
}

void sub_55D46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_55B054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_55D480(uint64_t a1)
{
  bzero(a1, 0x300uLL);
  sub_64B998(a1);
  sub_64B998(a1 + 160);
  *(a1 + 352) = 0;
  *(a1 + 360) = -1;
  *(a1 + 363) = -1;
  *(a1 + 375) = 0;
  *(a1 + 383) = 0;
  *(a1 + 367) = 0;
  *(a1 + 391) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  sub_64B998(a1 + 432);
  sub_64B998(a1 + 592);
  *(a1 + 752) = xmmword_2291330;
  return a1;
}

void sub_55D508(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 432);
  sub_53E440(v1 + 320);
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void *sub_55D550(void *a1)
{
  v2 = a1[41];
  if (v2)
  {
    a1[42] = v2;
    operator delete(v2);
  }

  v3 = a1[37];
  if (v3)
  {
    v4 = a1[38];
    v5 = a1[37];
    if (v4 == v3)
    {
LABEL_37:
      a1[38] = v3;
      operator delete(v5);
      goto LABEL_38;
    }

    while (1)
    {
      v7 = *(v4 - 2);
      if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = *(v4 - 8);
        if (v8)
        {
          goto LABEL_23;
        }

        goto LABEL_12;
      }

      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v8 = *(v4 - 8);
      if (v8)
      {
        break;
      }

LABEL_12:
      v9 = *(v4 - 10);
      *(v4 - 10) = 0;
      if (v9)
      {
        operator delete(v9);
      }

      v10 = v4 - 13;
      v11 = *(v4 - 13);
      if (v11)
      {
        v12 = *(v4 - 12);
        v6 = *(v4 - 13);
        if (v12 != v11)
        {
          do
          {
            v13 = *(v12 - 1);
            v12 -= 3;
            if (v13 < 0)
            {
              operator delete(*v12);
            }
          }

          while (v12 != v11);
          v6 = *v10;
        }

        *(v4 - 12) = v11;
        operator delete(v6);
      }

      v4 -= 13;
      if (v10 == v3)
      {
        v5 = a1[37];
        goto LABEL_37;
      }
    }

    while (1)
    {
LABEL_23:
      v14 = *v8;
      if (*(v8 + 191) < 0)
      {
        operator delete(v8[21]);
        if ((*(v8 + 159) & 0x80000000) == 0)
        {
LABEL_25:
          if ((*(v8 + 135) & 0x80000000) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_32;
        }
      }

      else if ((*(v8 + 159) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      operator delete(v8[17]);
      if ((*(v8 + 135) & 0x80000000) == 0)
      {
LABEL_26:
        if ((*(v8 + 95) & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }

LABEL_32:
      operator delete(v8[14]);
      if ((*(v8 + 95) & 0x80000000) == 0)
      {
LABEL_27:
        if ((*(v8 + 63) & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_34;
      }

LABEL_33:
      operator delete(v8[9]);
      if ((*(v8 + 63) & 0x80000000) == 0)
      {
LABEL_28:
        if (*(v8 + 39) < 0)
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }

LABEL_34:
      operator delete(v8[5]);
      if (*(v8 + 39) < 0)
      {
LABEL_35:
        operator delete(v8[2]);
      }

LABEL_22:
      operator delete(v8);
      v8 = v14;
      if (!v14)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_38:
  v15 = a1[23];
  if (v15)
  {
    a1[24] = v15;
    operator delete(v15);
  }

  v16 = a1[20];
  if (v16)
  {
    a1[21] = v16;
    operator delete(v16);
  }

  v17 = a1[1];
  if (v17)
  {
    v18 = a1[2];
    v19 = a1[1];
    if (v18 != v17)
    {
      do
      {
        v18 = sub_53A868(v18 - 160);
      }

      while (v18 != v17);
      v19 = a1[1];
    }

    a1[2] = v17;
    operator delete(v19);
  }

  return a1;
}

uint64_t *sub_55D784(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 32);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_266B1F0[v2])(&v3, v1);
  }

  *(v1 + 32) = 0;
  return result;
}

__n128 sub_55D7DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 1)
  {
    (off_266B1F0[v5])(&v8, v4);
LABEL_7:
    *(v4 + 32) = -1;
    *v4 = *a3;
    result = *(a3 + 8);
    *(v4 + 24) = *(a3 + 24);
    *(v4 + 8) = result;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    *(v4 + 32) = 1;
    return result;
  }

  *a2 = *a3;
  if (*(a2 + 31) < 0)
  {
    v6 = a2;
    operator delete(*(a2 + 8));
    a2 = v6;
  }

  result = *(a3 + 8);
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 8) = result;
  *(a3 + 31) = 0;
  *(a3 + 8) = 0;
  return result;
}

__n128 sub_55D8B0(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 2)
  {
    (off_266B1F0[v5])(&v10, v4);
LABEL_7:
    *(v4 + 32) = -1;
    *v4 = *a3;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    result = *(a3 + 8);
    *(v4 + 8) = result;
    *(v4 + 24) = *(a3 + 24);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(v4 + 32) = 2;
    return result;
  }

  *a2 = *a3;
  v7 = a2 + 1;
  v6 = a2[1];
  if (v6)
  {
    a2[2] = v6;
    v8 = a2;
    operator delete(v6);
    a2 = v8;
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  result = *(a3 + 8);
  *(a2 + 1) = result;
  a2[3] = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return result;
}

__n128 sub_55D9A0(__n128 **a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 3)
  {
    (off_266B1F0[v5])(&v8, v4);
LABEL_7:
    v4[2].n128_u32[0] = -1;
    result = *a3;
    v4[1].n128_u64[0] = a3[1].n128_u64[0];
    *v4 = result;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    a3->n128_u64[0] = 0;
    v4[2].n128_u32[0] = 3;
    return result;
  }

  if (*(a2 + 23) < 0)
  {
    v6 = a2;
    operator delete(*a2);
    a2 = v6;
  }

  result = *a3;
  *(a2 + 16) = a3[1].n128_u64[0];
  *a2 = result;
  a3[1].n128_u8[7] = 0;
  a3->n128_u8[0] = 0;
  return result;
}

__n128 sub_55DA64(__n128 **a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[2].n128_u32[0];
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 4)
  {
    (off_266B1F0[v5])(&v8, v4);
LABEL_7:
    v4[2].n128_u32[0] = -1;
    result = *a3;
    v4[1].n128_u64[0] = a3[1].n128_u64[0];
    *v4 = result;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    a3->n128_u64[0] = 0;
    v4[2].n128_u32[0] = 4;
    return result;
  }

  if (*(a2 + 23) < 0)
  {
    v6 = a2;
    operator delete(*a2);
    a2 = v6;
  }

  result = *a3;
  *(a2 + 16) = a3[1].n128_u64[0];
  *a2 = result;
  a3[1].n128_u8[7] = 0;
  a3->n128_u8[0] = 0;
  return result;
}

uint64_t sub_55DB28(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_266B1F0[v2])(&v4, a1);
  }

  *(a1 + 32) = -1;
  return a1;
}

uint64_t sub_55DB84(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_266B1F0[v2])(&v4, a1);
  }

  *(a1 + 32) = -1;
  return a1;
}

uint64_t sub_55DBE0(uint64_t *a1, uint64_t a2)
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

  v16 = a1;
  if (v5)
  {
    if (v5 <= 0x51EB851EB851EBLL)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 0;
  v14 = 800 * v2;
  v15 = 800 * v2;
  v6 = sub_55BC9C(800 * v2, a2);
  *(v6 + 768) = 2;
  *(v6 + 776) = 0;
  *(v6 + 792) = 0;
  *(v6 + 784) = 0;
  *&v15 = v15 + 800;
  v7 = a1[1];
  v8 = v14 + *a1 - v7;
  sub_55B144(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_55B054(&v13);
  return v12;
}

void sub_55DD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_55B054(va);
  _Unwind_Resume(a1);
}

BOOL sub_55DD5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 103);
  if (v2 >= 0)
  {
    v3 = *(a1 + 103);
  }

  else
  {
    v3 = *(a1 + 88);
  }

  v4 = *(a2 + 103);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 88);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v7 = (a1 + 80);
  }

  else
  {
    v7 = *(a1 + 80);
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 80);
  }

  else
  {
    v9 = *(a2 + 80);
  }

  if (memcmp(v7, v9, v3))
  {
    return 0;
  }

  if (*(a1 + 104) != *(a2 + 104))
  {
    return 0;
  }

  v11 = *(a1 + 32);
  if (v11 <= 1)
  {
    if (!v11)
    {
      return *(a2 + 32) == 0;
    }

    if (v11 != 1)
    {
      return 0;
    }

    if (*(a2 + 32) != 1 || *a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5) || *(a1 + 6) != *(a2 + 6) || *(a1 + 7) != *(a2 + 7))
    {
      return 0;
    }

    v12 = *(a1 + 31);
    if (v12 >= 0)
    {
      v13 = *(a1 + 31);
    }

    else
    {
      v13 = *(a1 + 16);
    }

    v14 = *(a2 + 31);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a2 + 16);
    }

    if (v13 != v14)
    {
      return 0;
    }

    v16 = (a1 + 8);
    if (v12 < 0)
    {
      v16 = *(a1 + 8);
    }

    v17 = (a2 + 8);
    if (v15 < 0)
    {
      v17 = *(a2 + 8);
    }

    return memcmp(v16, v17, v13) == 0;
  }

  else
  {
    if (v11 != 2)
    {
      if (v11 == 3)
      {
        if (*(a2 + 32) != 3)
        {
          return 0;
        }

        goto LABEL_56;
      }

      if (v11 == 4)
      {
        if (*(a2 + 32) != 4)
        {
          return 0;
        }

LABEL_56:

        return sub_BB4E4(a1, a2);
      }

      return 0;
    }

    if (*(a2 + 32) != 2)
    {
      return 0;
    }

    if (*a1 != *a2)
    {
      return 0;
    }

    if (*(a1 + 4) != *(a2 + 4))
    {
      return 0;
    }

    v19 = *(a1 + 8);
    v18 = *(a1 + 16);
    v20 = *(a2 + 8);
    if (v18 - v19 != *(a2 + 16) - v20)
    {
      return 0;
    }

    if (v19 != v18)
    {
      while (*v19 == *v20 && *(v19 + 1) == v20[1])
      {
        v19 += 8;
        v20 += 2;
        if (v19 == v18)
        {
          goto LABEL_52;
        }
      }

      return 0;
    }

LABEL_52:

    return sub_55DFE8(a1 + 40, a2 + 40);
  }
}

BOOL sub_55DFE8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5) || *(a1 + 6) != *(a2 + 6) || *(a1 + 7) != *(a2 + 7))
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v11 = *(a2 + 8);
  v9 = (a2 + 8);
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  return memcmp(v6, v9, v3) == 0;
}

uint64_t *sub_55E0AC(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 32);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_266B1F0[v2])(&v3, v1);
  }

  *(v1 + 32) = 0;
  return result;
}

char *sub_55E10C(char *result, uint64_t a2, uint64_t *a3)
{
  v3 = *result;
  v4 = *(*result + 32);
  v5 = *a3;
  if (v4 == 2)
  {
    *a2 = v5;
    if (a2 != a3)
    {
      v7 = a3[1];
      v6 = a3[2];

      return sub_31F64((a2 + 8), v7, v6, (v6 - v7) >> 3);
    }
  }

  else
  {
    v9 = a3[1];
    v8 = a3[2];
    if (v8 != v9)
    {
      if (((v8 - v9) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    if (v4 != -1)
    {
      result = (off_266B1F0[v4])(&v10, v3);
    }

    *v3 = v5;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 2;
  }

  return result;
}

void **sub_55E238(void **result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 != 1)
  {
    v6 = result;
    v11 = *a3;
    if (*(a3 + 31) < 0)
    {
      result = sub_325C(&v12, *(a3 + 8), *(a3 + 16));
      v3 = *(v6 + 8);
      if (v3 == -1)
      {
LABEL_12:
        *v6 = v11;
        *(v6 + 1) = v12;
        v6[3] = v13;
        *(v6 + 8) = 1;
        return result;
      }
    }

    else
    {
      v12 = *(a3 + 8);
      v13 = *(a3 + 24);
      if (v3 == -1)
      {
        goto LABEL_12;
      }
    }

    result = (off_266B1F0[v3])(&v14, v6);
    goto LABEL_12;
  }

  *a2 = *a3;
  result = (a2 + 8);
  if (a2 != a3)
  {
    v4 = *(a3 + 31);
    if (*(a2 + 31) < 0)
    {
      if (v4 >= 0)
      {
        v7 = (a3 + 8);
      }

      else
      {
        v7 = *(a3 + 8);
      }

      if (v4 >= 0)
      {
        v8 = *(a3 + 31);
      }

      else
      {
        v8 = *(a3 + 16);
      }

      return sub_13B38(result, v7, v8);
    }

    else if ((*(a3 + 31) & 0x80) != 0)
    {
      v9 = *(a3 + 8);
      v10 = *(a3 + 16);

      return sub_13A68(result, v9, v10);
    }

    else
    {
      v5 = *(a3 + 8);
      *(a2 + 24) = *(a3 + 24);
      *result = v5;
    }
  }

  return result;
}

void **sub_55E390(void **result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 8);
  if (v3 != 3)
  {
    v6 = result;
    if (*(a3 + 23) < 0)
    {
      result = sub_325C(&v11, *a3, *(a3 + 1));
      v3 = *(v6 + 8);
      if (v3 == -1)
      {
LABEL_12:
        *v6 = v11;
        v6[2] = v12;
        *(v6 + 8) = 3;
        return result;
      }
    }

    else
    {
      v11 = *a3;
      v12 = *(a3 + 2);
      if (v3 == -1)
      {
        goto LABEL_12;
      }
    }

    result = (off_266B1F0[v3])(&v13, v6);
    goto LABEL_12;
  }

  if (a2 != a3)
  {
    v4 = *(a3 + 23);
    if (*(a2 + 23) < 0)
    {
      if (v4 >= 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = *a3;
      }

      if (v4 >= 0)
      {
        v8 = *(a3 + 23);
      }

      else
      {
        v8 = *(a3 + 1);
      }

      return sub_13B38(a2, v7, v8);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      v10 = *a3;
      v9 = *(a3 + 1);

      return sub_13A68(a2, v10, v9);
    }

    else
    {
      v5 = *a3;
      *(a2 + 16) = *(a3 + 2);
      *a2 = v5;
    }
  }

  return result;
}

void **sub_55E4D4(void **result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 8);
  if (v3 != 4)
  {
    v6 = result;
    if (*(a3 + 23) < 0)
    {
      result = sub_325C(&v11, *a3, *(a3 + 1));
      v3 = *(v6 + 8);
      if (v3 == -1)
      {
LABEL_12:
        *v6 = v11;
        v6[2] = v12;
        *(v6 + 8) = 4;
        return result;
      }
    }

    else
    {
      v11 = *a3;
      v12 = *(a3 + 2);
      if (v3 == -1)
      {
        goto LABEL_12;
      }
    }

    result = (off_266B1F0[v3])(&v13, v6);
    goto LABEL_12;
  }

  if (a2 != a3)
  {
    v4 = *(a3 + 23);
    if (*(a2 + 23) < 0)
    {
      if (v4 >= 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = *a3;
      }

      if (v4 >= 0)
      {
        v8 = *(a3 + 23);
      }

      else
      {
        v8 = *(a3 + 1);
      }

      return sub_13B38(a2, v7, v8);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      v10 = *a3;
      v9 = *(a3 + 1);

      return sub_13A68(a2, v10, v9);
    }

    else
    {
      v5 = *a3;
      *(a2 + 16) = *(a3 + 2);
      *a2 = v5;
    }
  }

  return result;
}

uint64_t sub_55E618(uint64_t *a1, uint64_t a2)
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
    v6 = 0x51EB851EB851EBLL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    if (v6 <= 0x51EB851EB851EBLL)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 800 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  *v7 = 0;
  *(v7 + 768) = -1;
  v8 = *(a2 + 768);
  if (v8 != -1)
  {
    v19 = v7;
    (off_266B2D0[v8])(&v19, a2);
    *(v7 + 768) = v8;
  }

  *(v7 + 792) = 0;
  *(v7 + 776) = 0u;
  sub_353184(v7 + 776, *(a2 + 776), *(a2 + 784), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 784) - *(a2 + 776)) >> 3));
  *&v17 = v17 + 800;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_55B144(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_55B054(&v15);
  return v14;
}

void sub_55E7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_55ABBC(v5);
  sub_55B054(va);
  _Unwind_Resume(a1);
}

void sub_55E7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_55B054(va);
  _Unwind_Resume(a1);
}

void sub_55E7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_55AB60(v5);
  sub_55B054(va);
  _Unwind_Resume(a1);
}

void *sub_55E818(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_325C(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

__int128 *sub_55E85C(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * (&v10[-*a1] >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v28 = 8 * ((a2 - v11) >> 3);
    v62 = v28;
    v29 = 24 * a5;
    v30 = (v28 + 24 * a5);
    do
    {
      if (*(v7 + 23) < 0)
      {
        sub_325C(v28, *v7, *(v7 + 1));
      }

      else
      {
        v31 = *v7;
        *(v28 + 16) = *(v7 + 2);
        *v28 = v31;
      }

      v28 += 24;
      v7 = (v7 + 24);
      v29 -= 24;
    }

    while (v29);
    v32 = *(a1 + 8) - v5;
    memcpy(v30, v5, v32);
    *(a1 + 8) = v5;
    v33 = v5 - *a1;
    v34 = v62 - v33;
    memcpy((v62 - v33), *a1, v33);
    v35 = *a1;
    *a1 = v34;
    *(a1 + 8) = &v30[v32];
    *(a1 + 16) = 0;
    if (v35)
    {
      operator delete(v35);
    }

    return v62;
  }

  v15 = v10 - a2;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) < a5)
  {
    v16 = a3 + v15;
    v17 = sub_55ECE0(a1, (a3 + v15), a4, *(a1 + 8));
    v18 = v17;
    *(a1 + 8) = v17;
    if (v15 >= 1)
    {
      v19 = v17 - 24 * a5;
      if (v19 >= v10)
      {
        v21 = v17;
      }

      else
      {
        v20 = v17 - 24 * a5;
        v21 = v17;
        do
        {
          v22 = *v20;
          *(v21 + 16) = *(v20 + 16);
          *v21 = v22;
          v21 += 24;
          *(v20 + 8) = 0;
          *(v20 + 16) = 0;
          *v20 = 0;
          v20 += 24;
        }

        while (v20 < v10);
      }

      *(a1 + 8) = v21;
      if (v17 != (v5 + 24 * a5))
      {
        v50 = 0;
        v51 = v5 + 24 * a5 - v17;
        do
        {
          v54 = &v50[v18 - 24];
          if (v50[v18 - 1] < 0)
          {
            operator delete(*v54);
          }

          v52 = &v50[v19 - 24];
          v53 = *v52;
          *&v50[v18 - 8] = *(v52 + 16);
          *v54 = v53;
          v50[v19 - 1] = 0;
          *v52 = 0;
          v50 -= 24;
        }

        while (v51 != v50);
      }

      v55 = 0;
      do
      {
        if (v7 != v5)
        {
          v58 = (v5 + v55);
          v59 = v7 + v55;
          v60 = *(v7 + v55 + 23);
          if (*(v5 + v55 + 23) < 0)
          {
            if (v60 >= 0)
            {
              v56 = v7 + v55;
            }

            else
            {
              v56 = *(v7 + v55);
            }

            if (v60 >= 0)
            {
              v57 = *(v7 + v55 + 23);
            }

            else
            {
              v57 = *(v7 + v55 + 8);
            }

            sub_13B38(v58, v56, v57);
          }

          else if ((*(v7 + v55 + 23) & 0x80) != 0)
          {
            sub_13A68(v58, *(v7 + v55), *(v7 + v55 + 8));
          }

          else
          {
            v61 = *v59;
            v58[2] = *(v59 + 2);
            *v58 = v61;
          }
        }

        v55 += 24;
      }

      while (v7 + v55 != v16);
    }

    return v5;
  }

  v23 = a2 + 24 * a5;
  v24 = &v10[-24 * a5];
  if (v24 >= v10)
  {
    *(a1 + 8) = v10;
    if (v10 == v23)
    {
      goto LABEL_37;
    }

LABEL_33:
    v37 = 0;
    v38 = (a2 + 24 * a5 - v10);
    do
    {
      v41 = &v37[v10 - 24];
      if (v37[v10 - 1] < 0)
      {
        operator delete(*v41);
      }

      v39 = &v24[(v37 - 24)];
      v40 = *v39;
      *&v37[v10 - 8] = *(v39 + 2);
      *v41 = v40;
      v37[v24 - 1] = 0;
      *v39 = 0;
      v37 -= 24;
    }

    while (v38 != v37);
    goto LABEL_37;
  }

  v25 = &v10[-24 * a5];
  v26 = *(a1 + 8);
  do
  {
    v27 = *v25;
    *(v26 + 16) = *(v25 + 2);
    *v26 = v27;
    v26 += 24;
    *(v25 + 1) = 0;
    *(v25 + 2) = 0;
    *v25 = 0;
    v25 += 24;
  }

  while (v25 < v10);
  *(a1 + 8) = v26;
  if (v10 != v23)
  {
    goto LABEL_33;
  }

LABEL_37:
  v42 = 0;
  v43 = (v7 + 24 * a5);
  do
  {
    if (v7 != v5)
    {
      v46 = (v5 + v42);
      v47 = v7 + v42;
      v48 = *(v7 + v42 + 23);
      if (*(v5 + v42 + 23) < 0)
      {
        if (v48 >= 0)
        {
          v44 = v7 + v42;
        }

        else
        {
          v44 = *(v7 + v42);
        }

        if (v48 >= 0)
        {
          v45 = *(v7 + v42 + 23);
        }

        else
        {
          v45 = *(v7 + v42 + 8);
        }

        sub_13B38(v46, v44, v45);
      }

      else if ((*(v7 + v42 + 23) & 0x80) != 0)
      {
        sub_13A68(v46, *(v7 + v42), *(v7 + v42 + 8));
      }

      else
      {
        v49 = *v47;
        v46[2] = *(v47 + 2);
        *v46 = v49;
      }
    }

    v42 += 24;
  }

  while ((v7 + v42) != v43);
  return v5;
}

void sub_55ECC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_55ECE0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v8 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      while ((*(v5 + 23) & 0x80000000) == 0)
      {
        v6 = *v5;
        *(a4 + 16) = *(v5 + 2);
        *a4 = v6;
        a4 += 24;
        v5 = (v5 + 24);
        v8 = a4;
        if (v5 == a3)
        {
          return a4;
        }
      }

      sub_325C(a4, *v5, *(v5 + 1));
      v5 = (v5 + 24);
      a4 = v8 + 24;
      v8 += 24;
    }

    while (v5 != a3);
  }

  return a4;
}

double sub_55ED98(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x249249249249249)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v5 = 0x249249249249249;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x249249249249249)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *(&v12 + 1) = 0;
  *v6 = 0;
  *(v6 + 32) = -1;
  v7 = *(a2 + 32);
  if (v7 != -1)
  {
    v13 = v6;
    (off_266B218[v7])(&v13, a2);
    *(v6 + 32) = v7;
  }

  *(v6 + 40) = *(a2 + 40);
  *(v6 + 48) = *(a2 + 48);
  *(v6 + 64) = *(a2 + 64);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(v6 + 72) = *(a2 + 72);
  *(v6 + 80) = *(a2 + 80);
  *(v6 + 96) = *(a2 + 96);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  *(v6 + 104) = *(a2 + 104);
  v8 = a1[1];
  v9 = v6 + *a1 - v8;
  *&v12 = v6 + 112;
  sub_55EF68(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  *&result = v6 + 112;
  *(a1 + 1) = v12;
  if (v10)
  {
    operator delete(v10);
    *&result = v6 + 112;
  }

  return result;
}

void sub_55EF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_55F0EC(va);
  _Unwind_Resume(a1);
}

void sub_55EF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v10 = a4 + v7;
      v11 = v6 + v7;
      *v10 = 0;
      *(v10 + 32) = -1;
      v12 = *(v6 + v7 + 32);
      if (v12 != -1)
      {
        v14 = a4 + v7;
        (off_266B218[v12])(&v14, v6 + v7);
        *(v10 + 32) = v12;
      }

      *(v10 + 40) = *(v11 + 40);
      v8 = *(v11 + 48);
      *(v10 + 64) = *(v11 + 64);
      *(v10 + 48) = v8;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      *(v11 + 48) = 0;
      *(v10 + 72) = *(v11 + 72);
      v9 = *(v11 + 80);
      *(v10 + 96) = *(v11 + 96);
      *(v10 + 80) = v9;
      *(v11 + 88) = 0;
      *(v11 + 96) = 0;
      *(v11 + 80) = 0;
      *(v10 + 104) = *(v11 + 104);
      v7 += 112;
    }

    while (v6 + v7 != a3);
    for (; v6 != a3; v6 += 112)
    {
      if (*(v6 + 103) < 0)
      {
        operator delete(*(v6 + 80));
        if ((*(v6 + 71) & 0x80000000) == 0)
        {
LABEL_11:
          v13 = *(v6 + 32);
          if (v13 == -1)
          {
            goto LABEL_8;
          }

LABEL_15:
          (off_266B1F0[v13])(&v15, v6);
          goto LABEL_8;
        }
      }

      else if ((*(v6 + 71) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      operator delete(*(v6 + 48));
      v13 = *(v6 + 32);
      if (v13 != -1)
      {
        goto LABEL_15;
      }

LABEL_8:
      *(v6 + 32) = -1;
    }
  }
}

void **sub_55F0EC(void **a1)
{
  sub_55F120(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_55F120(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
      if ((*(i - 41) & 0x80000000) == 0)
      {
LABEL_6:
        v4 = *(i - 80);
        if (v4 == -1)
        {
          goto LABEL_3;
        }

LABEL_10:
        (off_266B1F0[v4])(&v5, i - 112);
        goto LABEL_3;
      }
    }

    else if ((*(i - 41) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(i - 64));
    v4 = *(i - 80);
    if (v4 != -1)
    {
      goto LABEL_10;
    }

LABEL_3:
    *(i - 80) = -1;
  }
}

uint64_t sub_55F1E8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  v4 = *(a2 + 32);
  if (v4 != -1)
  {
    v8 = a1;
    (off_266B2F0[v4])(&v8, a2);
    *(a1 + 32) = v4;
  }

  *(a1 + 40) = *(a2 + 40);
  if (*(a2 + 71) < 0)
  {
    sub_325C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
  }

  *(a1 + 72) = *(a2 + 72);
  if (*(a2 + 103) < 0)
  {
    sub_325C((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v6 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v6;
  }

  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void sub_55F2C0(_Unwind_Exception *a1)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
    sub_55DB28(v1);
    _Unwind_Resume(a1);
  }

  sub_55DB28(v1);
  _Unwind_Resume(a1);
}

void *sub_55F310(void **a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  result = v2 + 1;
  if (*(a2 + 31) < 0)
  {
    return sub_325C(result, *(a2 + 8), *(a2 + 16));
  }

  v4 = *(a2 + 8);
  result[2] = *(a2 + 24);
  *result = v4;
  return result;
}

void *sub_55F344(void *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *(*result + 8) = 0;
  *v2 = v3;
  v2[2] = 0;
  v2[3] = 0;
  v5 = a2[1];
  v4 = a2[2];
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_55F3CC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_55F3E8(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_325C(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

void *sub_55F414(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_325C(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

uint64_t sub_55F440(uint64_t a1)
{
  if (*(a1 + 1143) < 0)
  {
    operator delete(*(a1 + 1120));
  }

  sub_529324(a1 + 744);
  *(a1 + 704) = off_26696C8;
  if (*(a1 + 735) < 0)
  {
    operator delete(*(a1 + 712));
    if ((*(a1 + 655) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 623) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a1 + 655) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 632));
  if ((*(a1 + 623) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 599) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(a1 + 600));
  if ((*(a1 + 599) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(a1 + 559) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(a1 + 576));
  if ((*(a1 + 559) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(a1 + 527) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(a1 + 536));
  if ((*(a1 + 527) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(a1 + 503) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(a1 + 504));
  if ((*(a1 + 503) & 0x80000000) == 0)
  {
LABEL_10:
    v2 = a1;

    return sub_2C0F28(v2);
  }

LABEL_19:
  operator delete(*(a1 + 480));
  v2 = a1;

  return sub_2C0F28(v2);
}

uint64_t sub_55F56C(void **a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 8);
  v2 = v1 + 1;
  if (v1 + 1 > 0x55555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 8) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 8);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 8) >= 0x2AAAAAAAAAAAAALL)
  {
    v4 = 0x55555555555555;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x55555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v14 = (a1[1] - *a1) >> 8 << 8;
  sub_55F6D8(v14);
  v5 = 768 * v1 + 768;
  v6 = *a1;
  v7 = a1[1];
  v8 = *a1 - v7;
  v9 = &v8[v14];
  if (v7 != *a1)
  {
    v10 = *a1;
    v11 = &v8[v14];
    do
    {
      sub_55B2F8(v11, v10);
      v10 += 768;
      v11 = v12 + 768;
    }

    while (v10 != v7);
    do
    {
      sub_55D270(v6);
      v6 += 768;
    }

    while (v6 != v7);
    v6 = *a1;
  }

  *a1 = v9;
  a1[1] = v5;
  a1[2] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return v5;
}

void sub_55F6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_55F7A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_55F6D8(uint64_t a1)
{
  bzero(a1, 0x300uLL);
  sub_64B998(a1);
  sub_64B998(a1 + 160);
  *(a1 + 352) = 0;
  *(a1 + 360) = -1;
  *(a1 + 363) = -1;
  *(a1 + 375) = 0;
  *(a1 + 383) = 0;
  *(a1 + 367) = 0;
  *(a1 + 391) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  sub_64B998(a1 + 432);
  sub_64B998(a1 + 592);
  *(a1 + 752) = xmmword_2291330;
  return a1;
}

void sub_55F760(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 432);
  sub_53E440(v1 + 320);
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_55F7A8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 768;
    sub_55D270(i - 768);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_55F7FC(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
    if ((*(a1 + 143) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 119) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a1 + 143) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 120));
  if ((*(a1 + 119) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(a1 + 96));
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  operator delete(*(a1 + 56));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return;
  }

LABEL_13:
  v2 = *a1;

  operator delete(v2);
}

void ***sub_55F8BC(void ***result)
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
          v4 = sub_52E078(v4 - 2608);
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

int *sub_55F934(int *result, _DWORD *a2, uint64_t a3, unint64_t a4, int *a5, int64_t a6)
{
  v24 = a2;
  v25 = result;
  if (a4 >= 2)
  {
    v6 = result;
    if (a4 == 2)
    {
      v24 = a2 - 652;
      if ((*(a2 - 652) & 0xFFFFFFFE) == 0x30 && (*result - 50) <= 0xFFFFFFFD)
      {
        return sub_531F40(&v25, &v24);
      }
    }

    else if (a4 <= 0)
    {

      return sub_55FBD4(result, a2);
    }

    else
    {
      v8 = a5;
      v10 = a4 >> 1;
      v11 = &result[652 * (a4 >> 1)];
      if (a4 <= a6)
      {
        sub_55FE8C(result, &result[652 * (a4 >> 1)], a3, a4 >> 1, a5);
        v17 = a4 - v10;
        v18 = &v8[652 * v10];
        sub_55FE8C(v11, a2, a3, v17, v18);
        v19 = &v8[652 * a4];
        v20 = v18;
        while (v20 != v19)
        {
          if ((*v20 & 0xFFFFFFFE) != 0x30 || (*v8 - 50) > 0xFFFFFFFD)
          {
            sub_52E7E8(v6, v8);
            v8 += 652;
            v6 += 652;
            if (v8 == v18)
            {
              goto LABEL_30;
            }
          }

          else
          {
            sub_52E7E8(v6, v20);
            v20 += 652;
            v6 += 652;
            if (v8 == v18)
            {
LABEL_30:
              while (v20 != v19)
              {
                sub_52E7E8(v6, v20);
                v20 += 652;
                v6 += 652;
              }

              goto LABEL_31;
            }
          }
        }

        while (v8 != v18)
        {
          sub_52E7E8(v6, v8);
          v8 += 652;
          v6 += 652;
        }

LABEL_31:
        result = a5;
        if (a5)
        {
          v22 = 0;
          do
          {
            ++v22;
            result = (sub_52E078(result) + 2608);
          }

          while (v22 < a4);
        }
      }

      else
      {
        sub_55F934(result, &result[652 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v15 = a4 - v10;
        sub_55F934(v11, a2, a3, v15, v8, a6);

        return sub_5609C4(v6, v11, a2, a3, v10, v15, v8, a6);
      }
    }
  }

  return result;
}

void sub_55FBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_560964(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_55FBD4(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    v54[151] = v2;
    v54[152] = v3;
    v5 = result;
    v6 = result + 652;
    if (result + 652 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = v6;
        v11 = *v6;
        if ((v11 & 0xFFFFFFFE) == 0x30 && (*v8 - 50) <= 0xFFFFFFFD)
        {
          v25 = v11;
          v27 = *(v8 + 329);
          v26 = *(v8 + 654);
          *(v8 + 164) = 0u;
          *(v8 + 327) = 0;
          sub_529850(v28, (v8 + 660));
          v28[70] = *(v8 + 235);
          v29 = *(v8 + 472);
          *(v8 + 235) = 0u;
          v13 = *(v8 + 473);
          *(v8 + 236) = 0u;
          v30 = v13;
          v31 = *(v8 + 237);
          *(v8 + 237) = 0u;
          v32 = *(v8 + 238);
          v33 = *(v8 + 478);
          v14 = *(v8 + 479);
          *(v8 + 239) = 0u;
          *(v8 + 238) = 0u;
          v34 = v14;
          v35 = *(v8 + 240);
          *(v8 + 240) = 0u;
          v36 = v8[964];
          v37 = *(v8 + 483);
          v38 = *(v8 + 242);
          *(v8 + 483) = 0;
          *(v8 + 242) = 0u;
          v15 = *(v8 + 243);
          v40 = *(v8 + 488);
          v39 = v15;
          *(v8 + 488) = 0;
          *(v8 + 243) = 0u;
          v16 = *(v8 + 978);
          v17 = *(v8 + 982);
          *(v42 + 12) = *(v8 + 985);
          v41 = v16;
          v42[0] = v17;
          v18 = *(v8 + 990);
          v43 = *(v8 + 497);
          v42[2] = v18;
          *(v8 + 497) = 0;
          *(v8 + 990) = 0u;
          v44 = *(v8 + 249);
          v45 = *(v8 + 500);
          *(v8 + 249) = 0u;
          *(v8 + 500) = 0;
          v19 = *(v8 + 1002);
          v47 = v8[1006];
          v46 = v19;
          v20 = *(v8 + 252);
          v49 = *(v8 + 506);
          v48 = v20;
          *(v8 + 506) = 0;
          *(v8 + 252) = 0u;
          v21 = *(v8 + 507);
          v51 = v8[1016];
          v50 = v21;
          v22 = *(v8 + 1018);
          v53 = *(v8 + 511);
          v52 = v22;
          *(v8 + 511) = 0;
          *(v8 + 1018) = 0u;
          sub_529850(v54, (v8 + 1024));
          v23 = v7;
          do
          {
            sub_52E7E8(v5 + v23 + 2608, v5 + v23);
            if (!v23)
            {
              v9 = v5;
              goto LABEL_5;
            }

            v23 -= 2608;
          }

          while ((v25 & 0xFFFFFFFE) == 0x30 && (*(v5 + v23) - 50) < 0xFFFFFFFE);
          v9 = v5 + v23 + 2608;
LABEL_5:
          sub_52E7E8(v9, &v25);
          result = sub_52E078(&v25);
        }

        v6 = v10 + 652;
        v7 += 2608;
        v8 = v10;
      }

      while (v10 + 652 != a2);
    }
  }

  return result;
}

uint64_t sub_55FE8C(uint64_t result, _DWORD *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  switch(a4)
  {
    case 0uLL:
      return result;
    case 2uLL:
      v19 = a5 + 1176;
      v20 = a2 - 652;
      v21 = *(a2 - 652);
      v22 = a5 + 1152;
      v23 = a5 + 1200;
      if ((v21 & 0xFFFFFFFE) != 0x30 || (*result - 50) > 0xFFFFFFFD)
      {
        *a5 = *result;
        v25 = *(result + 8);
        *(a5 + 24) = *(result + 24);
        *(a5 + 8) = v25;
        *(result + 16) = 0u;
        *(result + 8) = 0;
        v26 = result;
        sub_529850(a5 + 32, result + 32);
        v29 = *(v26 + 1152);
        *(v22 + 16) = *(v26 + 1168);
        *v22 = v29;
        *(v26 + 1152) = 0u;
        *(v26 + 1168) = 0;
        *(v19 + 16) = 0;
        *v19 = 0u;
        *(a5 + 1176) = *(v26 + 1176);
        *(a5 + 1184) = *(v26 + 1184);
        *(v26 + 1192) = 0;
        *(v26 + 1176) = 0u;
        *(v23 + 16) = 0;
        *v23 = 0u;
        *(a5 + 1200) = *(v26 + 1200);
        *(a5 + 1216) = *(v26 + 1216);
        *(v26 + 1216) = 0;
        *(v26 + 1200) = 0u;
        *(a5 + 1240) = 0;
        *(a5 + 1224) = 0u;
        *(a5 + 1224) = *(v26 + 1224);
        *(a5 + 1232) = *(v26 + 1232);
        *(v26 + 1240) = 0;
        *(v26 + 1224) = 0u;
        *(a5 + 1248) = *(v26 + 1248);
        *(a5 + 1264) = 0u;
        *(a5 + 1256) = 0;
        *(a5 + 1256) = *(v26 + 1256);
        *(a5 + 1264) = *(v26 + 1264);
        *(v26 + 1272) = 0;
        *(v26 + 1256) = 0u;
        v30 = *(v26 + 1280);
        *(a5 + 1296) = *(v26 + 1296);
        *(a5 + 1280) = v30;
        *(v26 + 1280) = 0;
        *(v26 + 1288) = 0u;
        v31 = *(v26 + 1304);
        v32 = *(v26 + 1320);
        *(a5 + 1332) = *(v26 + 1332);
        *(a5 + 1304) = v31;
        *(a5 + 1320) = v32;
        v33 = *(v26 + 1352);
        *(a5 + 1368) = *(v26 + 1368);
        *(a5 + 1352) = v33;
        *(v26 + 1360) = 0u;
        *(v26 + 1352) = 0;
        *(a5 + 1392) = 0;
        *(a5 + 1376) = 0u;
        *(a5 + 1376) = *(v26 + 1376);
        *(a5 + 1392) = *(v26 + 1392);
        *(v26 + 1392) = 0;
        *(v26 + 1376) = 0u;
        v34 = *(v26 + 1400);
        *(a5 + 1416) = *(v26 + 1416);
        *(a5 + 1400) = v34;
        v35 = *(v26 + 1424);
        *(a5 + 1440) = *(v26 + 1440);
        *(a5 + 1424) = v35;
        *(v26 + 1432) = 0u;
        *(v26 + 1424) = 0;
        v36 = *(v26 + 1448);
        *(a5 + 1456) = *(v26 + 1456);
        *(a5 + 1448) = v36;
        v37 = *(v26 + 1464);
        *(a5 + 1480) = *(v26 + 1480);
        *(a5 + 1464) = v37;
        *(v26 + 1480) = 0;
        *(v26 + 1464) = 0u;
        sub_529850(a5 + 1488, v26 + 1488);
        *(a5 + 2608) = *v20;
        v38 = a2 - 650;
        v39 = *(a2 - 650);
        *(a5 + 2632) = *(a2 - 323);
        *(a5 + 2616) = v39;
        *(v38 + 2) = 0u;
        *v38 = 0;
        sub_529850(a5 + 2640, (a2 - 644));
        v40 = a2 - 364;
        v41 = *(a2 - 91);
        *(a5 + 3776) = *(a2 - 180);
        *(a5 + 3760) = v41;
        *v40 = 0u;
        *(v40 + 2) = 0;
        v42 = a2 - 358;
        *(v19 + 2624) = 0;
        *(v19 + 2608) = 0u;
        *(v19 + 2608) = *(a2 - 358);
        *(a5 + 3800) = *(a2 - 177);
        *(v42 + 2) = 0;
        *v42 = 0u;
        v43 = a2 - 352;
        *(a5 + 3824) = 0;
        *(a5 + 3808) = 0u;
        *(a5 + 3808) = *(a2 - 88);
        *(a5 + 3824) = *(a2 - 174);
        *(v43 + 2) = 0;
        *v43 = 0u;
        v44 = a2 - 346;
        *(v19 + 2672) = 0;
        *(v19 + 2656) = 0u;
        *(v19 + 2656) = *(a2 - 346);
        *(a5 + 3848) = *(a2 - 171);
        *(v44 + 2) = 0;
        *v44 = 0u;
        *(a5 + 3856) = *(a2 - 340);
        v45 = a2 - 338;
        *(v19 + 2696) = 0u;
        *(v19 + 2688) = 0;
        *(v19 + 2688) = *(a2 - 338);
        *(a5 + 3880) = *(a2 - 167);
        *(v45 + 2) = 0;
        *v45 = 0u;
        v46 = a2 - 332;
        v47 = *(a2 - 83);
        *(a5 + 3904) = *(a2 - 164);
        *(a5 + 3888) = v47;
        *v46 = 0;
        *(v46 + 2) = 0u;
        v48 = *(a2 - 326);
        v49 = *(a2 - 322);
        *(a5 + 3940) = *(a2 - 319);
        *(a5 + 3912) = v48;
        *(a5 + 3928) = v49;
        v50 = a2 - 314;
        v51 = *(a2 - 314);
        *(a5 + 3976) = *(a2 - 155);
        *(a5 + 3960) = v51;
        *(v50 + 2) = 0u;
        *v50 = 0;
        v52 = a2 - 308;
        *(a5 + 4000) = 0;
        *(a5 + 3984) = 0u;
        *(a5 + 3984) = *(a2 - 77);
        *(a5 + 4000) = *(a2 - 152);
        *(v52 + 2) = 0;
        *v52 = 0u;
        v53 = *(a2 - 302);
        *(a5 + 4024) = *(a2 - 298);
        *(a5 + 4008) = v53;
        v54 = a2 - 296;
        v55 = *(a2 - 74);
        *(a5 + 4048) = *(a2 - 146);
        *(a5 + 4032) = v55;
        *(v54 + 2) = 0u;
        *v54 = 0;
        v56 = *(a2 - 145);
        *(a5 + 4064) = *(a2 - 288);
        *(a5 + 4056) = v56;
        v57 = a2 - 286;
        v58 = *(a2 - 286);
        *(a5 + 4088) = *(a2 - 141);
        *(a5 + 4072) = v58;
        *(v57 + 2) = 0;
        *v57 = 0u;
        v18 = (a2 - 280);
        v17 = a5 + 4096;
      }

      else
      {
        *a5 = v21;
        v59 = a2 - 650;
        v60 = *(a2 - 650);
        *(a5 + 24) = *(a2 - 323);
        *(a5 + 8) = v60;
        *(v59 + 2) = 0u;
        *v59 = 0;
        v61 = result;
        sub_529850(a5 + 32, (a2 - 644));
        v64 = a2 - 364;
        v65 = *(a2 - 91);
        *(v22 + 16) = *(a2 - 180);
        *v22 = v65;
        *v64 = 0u;
        *(v64 + 2) = 0;
        v66 = a2 - 358;
        *(v19 + 16) = 0;
        *v19 = 0u;
        *v19 = *(a2 - 358);
        *(a5 + 1192) = *(a2 - 177);
        *(v66 + 2) = 0;
        *v66 = 0u;
        v67 = a2 - 352;
        *(v23 + 16) = 0;
        *v23 = 0u;
        *(a5 + 1200) = *(a2 - 88);
        *(a5 + 1216) = *(a2 - 174);
        *(v67 + 2) = 0;
        *v67 = 0u;
        v68 = a2 - 346;
        *(v19 + 64) = 0;
        *(v19 + 48) = 0u;
        *(v19 + 48) = *(a2 - 346);
        *(a5 + 1240) = *(a2 - 171);
        *(v68 + 2) = 0;
        *v68 = 0u;
        *(a5 + 1248) = *(a2 - 340);
        v69 = a2 - 338;
        *(v19 + 88) = 0u;
        *(v19 + 80) = 0;
        *(v19 + 80) = *(a2 - 338);
        *(a5 + 1272) = *(a2 - 167);
        *(v69 + 2) = 0;
        *v69 = 0u;
        v70 = a2 - 332;
        v71 = *(a2 - 83);
        *(a5 + 1296) = *(a2 - 164);
        *(a5 + 1280) = v71;
        *v70 = 0;
        *(v70 + 2) = 0u;
        v72 = *(a2 - 326);
        v73 = *(a2 - 322);
        *(a5 + 1332) = *(a2 - 319);
        *(a5 + 1304) = v72;
        *(a5 + 1320) = v73;
        v74 = a2 - 314;
        v75 = *(a2 - 314);
        *(a5 + 1368) = *(a2 - 155);
        *(a5 + 1352) = v75;
        *(v74 + 2) = 0u;
        *v74 = 0;
        v76 = a2 - 308;
        *(a5 + 1392) = 0;
        *(a5 + 1376) = 0u;
        *(a5 + 1376) = *(a2 - 77);
        *(a5 + 1392) = *(a2 - 152);
        *(v76 + 2) = 0;
        *v76 = 0u;
        v77 = *(a2 - 302);
        *(a5 + 1416) = *(a2 - 298);
        *(a5 + 1400) = v77;
        v78 = a2 - 296;
        v79 = *(a2 - 74);
        *(a5 + 1440) = *(a2 - 146);
        *(a5 + 1424) = v79;
        *(v78 + 2) = 0u;
        *v78 = 0;
        v80 = *(a2 - 145);
        *(a5 + 1456) = *(a2 - 288);
        *(a5 + 1448) = v80;
        v81 = a2 - 286;
        v82 = *(a2 - 286);
        *(a5 + 1480) = *(a2 - 141);
        *(a5 + 1464) = v82;
        *(v81 + 2) = 0;
        *v81 = 0u;
        sub_529850(a5 + 1488, (a2 - 280));
        *(a5 + 2608) = *v61;
        v83 = *(v61 + 8);
        *(a5 + 2632) = *(v61 + 24);
        *(a5 + 2616) = v83;
        *(v61 + 16) = 0u;
        *(v61 + 8) = 0;
        sub_529850(a5 + 2640, v61 + 32);
        v84 = *(v61 + 1152);
        *(a5 + 3776) = *(v61 + 1168);
        *(a5 + 3760) = v84;
        *(v61 + 1152) = 0u;
        *(v61 + 1168) = 0;
        *(a5 + 3800) = 0;
        *(a5 + 3784) = 0u;
        *(a5 + 3784) = *(v61 + 1176);
        *(a5 + 3792) = *(v61 + 1184);
        *(v61 + 1192) = 0;
        *(v61 + 1176) = 0u;
        *(a5 + 3824) = 0;
        *(a5 + 3808) = 0u;
        *(a5 + 3808) = *(v61 + 1200);
        *(a5 + 3824) = *(v61 + 1216);
        *(v61 + 1216) = 0;
        *(v61 + 1200) = 0u;
        *(a5 + 3848) = 0;
        *(a5 + 3832) = 0u;
        *(a5 + 3832) = *(v61 + 1224);
        *(a5 + 3840) = *(v61 + 1232);
        *(v61 + 1240) = 0;
        *(v61 + 1224) = 0u;
        *(a5 + 3856) = *(v61 + 1248);
        *(a5 + 3872) = 0u;
        *(a5 + 3864) = 0;
        *(a5 + 3864) = *(v61 + 1256);
        *(a5 + 3872) = *(v61 + 1264);
        *(v61 + 1272) = 0;
        *(v61 + 1256) = 0u;
        v85 = *(v61 + 1280);
        *(a5 + 3904) = *(v61 + 1296);
        *(a5 + 3888) = v85;
        *(v61 + 1280) = 0;
        *(v61 + 1288) = 0u;
        v86 = *(v61 + 1304);
        v87 = *(v61 + 1320);
        *(a5 + 3940) = *(v61 + 1332);
        *(a5 + 3912) = v86;
        *(a5 + 3928) = v87;
        v88 = *(v61 + 1352);
        *(a5 + 3976) = *(v61 + 1368);
        *(a5 + 3960) = v88;
        *(v61 + 1360) = 0u;
        *(v61 + 1352) = 0;
        *(a5 + 4000) = 0;
        *(a5 + 3984) = 0u;
        *(a5 + 3984) = *(v61 + 1376);
        *(a5 + 4000) = *(v61 + 1392);
        *(v61 + 1392) = 0;
        *(v61 + 1376) = 0u;
        v89 = *(v61 + 1400);
        *(a5 + 4024) = *(v61 + 1416);
        *(a5 + 4008) = v89;
        v90 = *(v61 + 1424);
        *(a5 + 4048) = *(v61 + 1440);
        *(a5 + 4032) = v90;
        *(v61 + 1432) = 0u;
        *(v61 + 1424) = 0;
        v91 = *(v61 + 1448);
        *(a5 + 4064) = *(v61 + 1456);
        *(a5 + 4056) = v91;
        v92 = *(v61 + 1464);
        *(a5 + 4088) = *(v61 + 1480);
        *(a5 + 4072) = v92;
        *(v61 + 1480) = 0;
        *(v61 + 1464) = 0u;
        v17 = a5 + 4096;
        v18 = v61 + 1488;
      }

      goto LABEL_16;
    case 1uLL:
      *a5 = *result;
      v5 = *(result + 8);
      *(a5 + 24) = *(result + 24);
      *(a5 + 8) = v5;
      *(result + 16) = 0u;
      *(result + 8) = 0;
      v6 = result;
      sub_529850(a5 + 32, result + 32);
      v8 = *(v6 + 1152);
      *(a5 + 1168) = *(v6 + 1168);
      *(a5 + 1152) = v8;
      *(v6 + 1152) = 0u;
      *(v6 + 1168) = 0;
      *(a5 + 1192) = 0;
      *(a5 + 1176) = 0u;
      *(a5 + 1176) = *(v6 + 1176);
      *(a5 + 1184) = *(v6 + 1184);
      *(v6 + 1192) = 0;
      *(v6 + 1176) = 0u;
      *(a5 + 1216) = 0;
      *(a5 + 1200) = 0u;
      *(a5 + 1200) = *(v6 + 1200);
      *(a5 + 1216) = *(v6 + 1216);
      *(v6 + 1216) = 0;
      *(v6 + 1200) = 0u;
      *(a5 + 1240) = 0;
      *(a5 + 1224) = 0u;
      *(a5 + 1224) = *(v6 + 1224);
      *(a5 + 1232) = *(v6 + 1232);
      *(v6 + 1240) = 0;
      *(v6 + 1224) = 0u;
      *(a5 + 1248) = *(v6 + 1248);
      *(a5 + 1264) = 0u;
      *(a5 + 1256) = 0;
      *(a5 + 1256) = *(v6 + 1256);
      *(a5 + 1264) = *(v6 + 1264);
      *(v6 + 1272) = 0;
      *(v6 + 1256) = 0u;
      v9 = *(v6 + 1280);
      *(a5 + 1296) = *(v6 + 1296);
      *(a5 + 1280) = v9;
      *(v6 + 1280) = 0;
      *(v6 + 1288) = 0u;
      v10 = *(v6 + 1304);
      v11 = *(v6 + 1320);
      *(a5 + 1332) = *(v6 + 1332);
      *(a5 + 1304) = v10;
      *(a5 + 1320) = v11;
      v12 = *(v6 + 1352);
      *(a5 + 1368) = *(v6 + 1368);
      *(a5 + 1352) = v12;
      *(v6 + 1360) = 0u;
      *(v6 + 1352) = 0;
      *(a5 + 1392) = 0;
      *(a5 + 1376) = 0u;
      *(a5 + 1376) = *(v6 + 1376);
      *(a5 + 1392) = *(v6 + 1392);
      *(v6 + 1392) = 0;
      *(v6 + 1376) = 0u;
      v13 = *(v6 + 1400);
      *(a5 + 1416) = *(v6 + 1416);
      *(a5 + 1400) = v13;
      v14 = *(v6 + 1424);
      *(a5 + 1440) = *(v6 + 1440);
      *(a5 + 1424) = v14;
      *(v6 + 1432) = 0u;
      *(v6 + 1424) = 0;
      v15 = *(v6 + 1448);
      *(a5 + 1456) = *(v6 + 1456);
      *(a5 + 1448) = v15;
      v16 = *(v6 + 1464);
      *(a5 + 1480) = *(v6 + 1480);
      *(a5 + 1464) = v16;
      *(v6 + 1480) = 0;
      *(v6 + 1464) = 0u;
      v17 = a5 + 1488;
      v18 = v6 + 1488;
LABEL_16:

      return sub_529850(v17, v18);
  }

  if (a4 > 8)
  {
    v93 = a4 >> 1;
    v94 = 2608 * (a4 >> 1);
    v96 = result;
    sub_55F934(result, v94 + result, a3, v93, a5, v93);
    sub_55F934((v94 + v96), a2, a3, a4 - v93, (a5 + v94), a4 - v93);

    return sub_561318(v96, v94 + v96, v94 + v96, a2, a5);
  }

  else
  {

    return sub_560CE0(result, a2, a5);
  }
}

uint64_t *sub_560964(uint64_t *a1)
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
        v2 = sub_52E078(v2) + 2608;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

int *sub_5609C4(int *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v36 = a2;
  v37 = result;
  if (a6)
  {
    v10 = v36;
    while (a6 > a8 && a5 > a8)
    {
      if (!a5 || (*a2 & 0xFFFFFFFE) != 0x30)
      {
        goto LABEL_37;
      }

      v11 = 0;
      v12 = -a5;
      while ((result[v11 / 4] - 50) >= 0xFFFFFFFE)
      {
        v11 += 2608;
        if (__CFADD__(v12++, 1))
        {
          goto LABEL_37;
        }
      }

      v37 = &result[v11 / 4];
      v34 = a4;
      v35 = a7;
      v32 = a3;
      v33 = a8;
      v31 = &result[v11 / 4];
      if (-v12 >= a6)
      {
        if (v12 == -1)
        {
          v36 = v10;
          return sub_531F40(&v37, &v36);
        }

        v21 = -v12 / 2;
        if (a3 == a2)
        {
          v10 = a3;
        }

        else
        {
          v10 = a2;
          if ((result[652 * v21 + v11 / 4] - 50) <= 0xFFFFFFFD)
          {
            v22 = 0x1F693A1C451AB30BLL * ((a3 - a2) >> 4);
            v10 = a2;
            do
            {
              v23 = v22 >> 1;
              v24 = &v10[2608 * (v22 >> 1)];
              v25 = *v24 & 0xFFFFFFFE;
              v26 = v24 + 2608;
              v22 += ~(v22 >> 1);
              if (v25 == 48)
              {
                v10 = v26;
              }

              else
              {
                v22 = v23;
              }
            }

            while (v22);
          }
        }

        v14 = 0x1F693A1C451AB30BLL * ((v10 - a2) >> 4);
        v15 = &result[652 * v21 + v11 / 4];
      }

      else
      {
        v14 = a6 / 2;
        v10 = &a2[2608 * (a6 / 2)];
        v15 = &result[v11 / 4];
        if (a2 - result != v11)
        {
          v16 = 0x1F693A1C451AB30BLL * ((a2 - result - v11) >> 4);
          v15 = &result[v11 / 4];
          if ((*v10 & 0xFFFFFFFE) == 0x30)
          {
            do
            {
              v17 = v16 >> 1;
              v18 = &v15[652 * (v16 >> 1)];
              v19 = *v18 - 50;
              v20 = v18 + 652;
              v16 += ~(v16 >> 1);
              if (v19 < 0xFFFFFFFE)
              {
                v16 = v17;
              }

              else
              {
                v15 = v20;
              }
            }

            while (v16);
          }

          else
          {
            do
            {
              v15 += 652 * (v16 >> 1) + 652;
              v16 += ~(v16 >> 1);
            }

            while (v16);
          }
        }

        v21 = 0x1F693A1C451AB30BLL * ((v15 - result - v11) >> 4);
      }

      a5 = -v12 - v21;
      v27 = a6 - v14;
      v28 = a6;
      v29 = sub_562108(v15, a2, v10);
      v30 = v29;
      if (v21 + v14 >= v28 - (v21 + v14) - v12)
      {
        a7 = v35;
        sub_5609C4(v29, v10, v32, v34, a5, v27, v35, v33);
        v10 = v15;
        a4 = v34;
        v27 = v14;
        a8 = v33;
        a5 = v21;
        a3 = v30;
        result = v31;
      }

      else
      {
        a7 = v35;
        sub_5609C4(v31, v15, v29, v34, v21, v14, v35, v33);
        a8 = v33;
        a4 = v34;
        v37 = v30;
        result = v30;
        a3 = v32;
      }

      a2 = v10;
      a6 = v27;
      if (!v27)
      {
LABEL_37:
        v36 = v10;
        return result;
      }
    }

    v36 = v10;

    return sub_561B6C(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_560CE0(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    *a3 = *result;
    v6 = *(result + 8);
    *(a3 + 24) = *(result + 24);
    *(a3 + 8) = v6;
    *(result + 16) = 0u;
    *(result + 8) = 0;
    sub_529850(a3 + 32, result + 32);
    v7 = *(v5 + 1152);
    *(a3 + 1168) = *(v5 + 1168);
    *(a3 + 1152) = v7;
    *(v5 + 1152) = 0u;
    *(v5 + 1168) = 0;
    *(a3 + 1192) = 0;
    *(a3 + 1176) = 0u;
    *(a3 + 1176) = *(v5 + 1176);
    *(a3 + 1184) = *(v5 + 1184);
    *(v5 + 1192) = 0;
    *(v5 + 1176) = 0u;
    *(a3 + 1216) = 0;
    *(a3 + 1200) = 0u;
    *(a3 + 1200) = *(v5 + 1200);
    *(a3 + 1216) = *(v5 + 1216);
    *(v5 + 1216) = 0;
    *(v5 + 1200) = 0u;
    *(a3 + 1240) = 0;
    *(a3 + 1224) = 0u;
    *(a3 + 1224) = *(v5 + 1224);
    *(a3 + 1232) = *(v5 + 1232);
    *(v5 + 1240) = 0;
    *(v5 + 1224) = 0u;
    *(a3 + 1248) = *(v5 + 1248);
    *(a3 + 1264) = 0u;
    *(a3 + 1256) = 0;
    *(a3 + 1256) = *(v5 + 1256);
    *(a3 + 1264) = *(v5 + 1264);
    *(v5 + 1272) = 0;
    *(v5 + 1256) = 0u;
    v8 = *(v5 + 1280);
    *(a3 + 1296) = *(v5 + 1296);
    *(a3 + 1280) = v8;
    *(v5 + 1280) = 0;
    *(v5 + 1288) = 0u;
    v9 = *(v5 + 1304);
    v10 = *(v5 + 1320);
    *(a3 + 1332) = *(v5 + 1332);
    *(a3 + 1304) = v9;
    *(a3 + 1320) = v10;
    v11 = *(v5 + 1352);
    *(a3 + 1368) = *(v5 + 1368);
    *(a3 + 1352) = v11;
    *(v5 + 1360) = 0u;
    *(v5 + 1352) = 0;
    *(a3 + 1392) = 0;
    *(a3 + 1376) = 0u;
    *(a3 + 1376) = *(v5 + 1376);
    *(a3 + 1392) = *(v5 + 1392);
    *(v5 + 1392) = 0;
    *(v5 + 1376) = 0u;
    v12 = *(v5 + 1400);
    *(a3 + 1416) = *(v5 + 1416);
    *(a3 + 1400) = v12;
    v13 = *(v5 + 1424);
    *(a3 + 1440) = *(v5 + 1440);
    *(a3 + 1424) = v13;
    *(v5 + 1432) = 0u;
    *(v5 + 1424) = 0;
    v14 = *(v5 + 1448);
    *(a3 + 1456) = *(v5 + 1456);
    *(a3 + 1448) = v14;
    v15 = *(v5 + 1464);
    *(a3 + 1480) = *(v5 + 1480);
    *(a3 + 1464) = v15;
    *(v5 + 1480) = 0;
    *(v5 + 1464) = 0u;
    result = sub_529850(a3 + 1488, v5 + 1488);
    v16 = (v5 + 2608);
    if ((v5 + 2608) != a2)
    {
      v17 = 0;
      v18 = a3;
      do
      {
        while (1)
        {
          v29 = v16;
          v30 = *v16;
          v31 = *v16 & 0xFFFFFFFE;
          v32 = (v18 + 2616);
          v33 = (v18 + 3760);
          if (v31 == 48 && (*v18 - 50) <= 0xFFFFFFFD)
          {
            break;
          }

          *(v18 + 2608) = v30;
          v19 = *(v5 + 2616);
          *(v18 + 2632) = *(v5 + 2632);
          *v32 = v19;
          *(v5 + 2624) = 0u;
          *(v5 + 2616) = 0;
          sub_529850(v18 + 2640, v5 + 2640);
          v20 = *(v5 + 3760);
          *(v18 + 3776) = *(v5 + 3776);
          *v33 = v20;
          *(v5 + 3760) = 0u;
          *(v5 + 3776) = 0;
          *(v18 + 3800) = 0;
          *(v18 + 3784) = 0u;
          *(v18 + 3784) = *(v5 + 3784);
          *(v18 + 3792) = *(v5 + 3792);
          *(v5 + 3800) = 0;
          *(v5 + 3784) = 0u;
          *(v18 + 3824) = 0;
          *(v18 + 3808) = 0u;
          *(v18 + 3808) = *(v5 + 3808);
          *(v18 + 3824) = *(v5 + 3824);
          *(v5 + 3824) = 0;
          *(v5 + 3808) = 0u;
          *(v18 + 3848) = 0;
          *(v18 + 3832) = 0u;
          *(v18 + 3832) = *(v5 + 3832);
          *(v18 + 3840) = *(v5 + 3840);
          *(v5 + 3848) = 0;
          *(v5 + 3832) = 0u;
          *(v18 + 3856) = *(v5 + 3856);
          *(v18 + 3872) = 0u;
          *(v18 + 3864) = 0;
          *(v18 + 3864) = *(v5 + 3864);
          *(v18 + 3872) = *(v5 + 3872);
          *(v5 + 3880) = 0;
          *(v5 + 3864) = 0u;
          v21 = *(v5 + 3888);
          *(v18 + 3904) = *(v5 + 3904);
          *(v18 + 3888) = v21;
          *(v5 + 3888) = 0;
          *(v5 + 3896) = 0u;
          v22 = *(v5 + 3912);
          v23 = *(v5 + 3928);
          *(v18 + 3940) = *(v5 + 3940);
          *(v18 + 3912) = v22;
          *(v18 + 3928) = v23;
          v24 = *(v5 + 3960);
          *(v18 + 3976) = *(v5 + 3976);
          *(v18 + 3960) = v24;
          *(v5 + 3968) = 0u;
          *(v5 + 3960) = 0;
          *(v18 + 4000) = 0;
          *(v18 + 3984) = 0u;
          *(v18 + 3984) = *(v5 + 3984);
          *(v18 + 4000) = *(v5 + 4000);
          *(v5 + 4000) = 0;
          *(v5 + 3984) = 0u;
          v25 = *(v5 + 4008);
          *(v18 + 4024) = *(v5 + 4024);
          *(v18 + 4008) = v25;
          v26 = *(v5 + 4032);
          *(v18 + 4048) = *(v5 + 4048);
          *(v18 + 4032) = v26;
          *(v5 + 4040) = 0u;
          *(v5 + 4032) = 0;
          v27 = *(v5 + 4056);
          *(v18 + 4064) = *(v5 + 4064);
          *(v18 + 4056) = v27;
          v28 = *(v5 + 4072);
          *(v18 + 4088) = *(v5 + 4088);
          *(v18 + 4072) = v28;
          *(v5 + 4088) = 0;
          *(v5 + 4072) = 0u;
          result = sub_529850(v18 + 4096, v5 + 4096);
          v18 += 2608;
          v16 = v29 + 652;
          v17 += 2608;
          v5 = v29;
          if (v29 + 652 == a2)
          {
            return result;
          }
        }

        *(v18 + 2608) = *v18;
        *v32 = *(v18 + 8);
        *(v18 + 2632) = *(v18 + 24);
        *(v18 + 16) = 0u;
        *(v18 + 8) = 0;
        sub_529850(v18 + 2640, v18 + 32);
        *v33 = *(v18 + 1152);
        *(v18 + 3776) = *(v18 + 1168);
        *(v18 + 1152) = 0;
        *(v18 + 1160) = 0u;
        *(v18 + 3784) = *(v18 + 1176);
        *(v18 + 3800) = *(v18 + 1192);
        *(v18 + 1176) = 0u;
        *(v18 + 1192) = 0;
        *(v18 + 3808) = *(v18 + 1200);
        *(v18 + 3824) = *(v18 + 1216);
        *(v18 + 1216) = 0;
        *(v18 + 1200) = 0u;
        *(v18 + 3832) = *(v18 + 1224);
        *(v18 + 3840) = *(v18 + 1232);
        *(v18 + 1224) = 0;
        *(v18 + 1232) = 0u;
        *(v18 + 3856) = *(v18 + 1248);
        *(v18 + 3864) = *(v18 + 1256);
        *(v18 + 3872) = *(v18 + 1264);
        *(v18 + 1256) = 0;
        *(v18 + 1264) = 0u;
        v35 = *(v18 + 1280);
        *(v18 + 3904) = *(v18 + 1296);
        *(v18 + 3888) = v35;
        *(v18 + 1296) = 0;
        *(v18 + 1280) = 0u;
        v36 = *(v18 + 1304);
        v37 = *(v18 + 1320);
        *(v18 + 3940) = *(v18 + 1332);
        *(v18 + 3912) = v36;
        *(v18 + 3928) = v37;
        v38 = *(v18 + 1352);
        *(v18 + 3976) = *(v18 + 1368);
        *(v18 + 3960) = v38;
        *(v18 + 1368) = 0;
        *(v18 + 1352) = 0u;
        *(v18 + 3984) = *(v18 + 1376);
        *(v18 + 4000) = *(v18 + 1392);
        *(v18 + 1376) = 0u;
        *(v18 + 1392) = 0;
        v39 = *(v18 + 1400);
        *(v18 + 4024) = *(v18 + 1416);
        *(v18 + 4008) = v39;
        v40 = *(v18 + 1424);
        *(v18 + 4048) = *(v18 + 1440);
        *(v18 + 4032) = v40;
        *(v18 + 1440) = 0;
        *(v18 + 1424) = 0u;
        v41 = *(v18 + 1448);
        *(v18 + 4064) = *(v18 + 1456);
        *(v18 + 4056) = v41;
        v42 = *(v18 + 1464);
        *(v18 + 4088) = *(v18 + 1480);
        *(v18 + 4072) = v42;
        *(v18 + 1480) = 0;
        *(v18 + 1464) = 0u;
        sub_529850(v18 + 4096, v18 + 1488);
        v43 = a3;
        if (v18 != a3)
        {
          v44 = v17;
          while (1)
          {
            v43 = a3 + v44;
            v45 = (a3 + v44 - 2608);
            if ((*v29 & 0xFFFFFFFE) != 0x30 || (*v45 - 50) > 0xFFFFFFFD)
            {
              break;
            }

            sub_52E7E8(v43, v45);
            v44 -= 2608;
            if (!v44)
            {
              v43 = a3;
              break;
            }
          }
        }

        result = sub_52E7E8(v43, v29);
        v18 += 2608;
        v16 = v29 + 652;
        v17 += 2608;
        v5 = v29;
      }

      while (v29 + 652 != a2);
    }
  }

  return result;
}