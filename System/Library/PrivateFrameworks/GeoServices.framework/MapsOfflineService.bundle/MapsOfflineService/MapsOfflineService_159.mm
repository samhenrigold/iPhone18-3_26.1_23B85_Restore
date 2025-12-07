void sub_9BE608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

void sub_9BE670(_BYTE *result, uint64_t *a2)
{
  if (*result == 1)
  {
    if (*(a2 + 75))
    {
      v3 = *a2;
      v4 = a2[1];
      if (*a2 != v4)
      {
        do
        {
          sub_9BE6DC(result, v3, *(a2 + 75));
          v3 += 3296;
        }

        while (v3 != v4);
      }
    }
  }
}

void sub_9BE6DC(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 36);
  if (v3 == 0x7FFFFFFF)
  {
    v4 = *(a2 + 40);
    if (v4 == 0x7FFFFFFF)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (a3 < 0)
    {
      v25 = -5;
    }

    else
    {
      v25 = 5;
    }

    *(a2 + 36) = a3 / -10 + v3 + (((-103 * (v25 + a3 % 10)) >> 15) & 1) + ((-103 * (v25 + a3 % 10)) >> 10);
    v4 = *(a2 + 40);
    if (v4 == 0x7FFFFFFF)
    {
LABEL_3:
      v5 = *(a2 + 24);
      if (v5 == 0x7FFFFFFF)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  if (a3 < 0)
  {
    v26 = -5;
  }

  else
  {
    v26 = 5;
  }

  *(a2 + 40) = a3 / -10 + v4 + (((-103 * (v26 + a3 % 10)) >> 15) & 1) + ((-103 * (v26 + a3 % 10)) >> 10);
  v5 = *(a2 + 24);
  if (v5 == 0x7FFFFFFF)
  {
LABEL_4:
    v6 = *(a2 + 28);
    if (v6 == 0x7FFFFFFF)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

LABEL_49:
  if (a3 < 0)
  {
    v27 = -5;
  }

  else
  {
    v27 = 5;
  }

  *(a2 + 24) = a3 / -10 + v5 + (((-103 * (v27 + a3 % 10)) >> 15) & 1) + ((-103 * (v27 + a3 % 10)) >> 10);
  v6 = *(a2 + 28);
  if (v6 != 0x7FFFFFFF)
  {
LABEL_5:
    if (a3 < 0)
    {
      v7 = -5;
    }

    else
    {
      v7 = 5;
    }

    *(a2 + 28) = a3 / -10 + v6 + (((-103 * (v7 + a3 % 10)) >> 15) & 1) + ((-103 * (v7 + a3 % 10)) >> 10);
  }

LABEL_9:
  v8 = *(a2 + 1080);
  v9 = *(a2 + 1088);
  if (v8 != v9)
  {
    if (a3 < 0)
    {
      v10 = -5;
    }

    else
    {
      v10 = 5;
    }

    v11 = a3 / -10 + (((-103 * (v10 + a3 % 10)) >> 15) & 1) + ((-103 * (v10 + a3 % 10)) >> 10);
    do
    {
      if (*v8 == 0x7FFFFFFF)
      {
        v12 = v8[1];
        if (v12 != 0x7FFFFFFF)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v8 += v11;
        v12 = v8[1];
        if (v12 != 0x7FFFFFFF)
        {
LABEL_19:
          v8[1] = v12 + v11;
        }
      }

      v8 += 3;
    }

    while (v8 != v9);
  }

  v13 = *(a2 + 1104);
  v14 = *(a2 + 1112);
  if (v13 != v14)
  {
    if (a3 < 0)
    {
      v15 = -5;
    }

    else
    {
      v15 = 5;
    }

    v16 = a3 / -10 + (((-103 * (v15 + a3 % 10)) >> 15) & 1) + ((-103 * (v15 + a3 % 10)) >> 10);
    do
    {
      if (*v13 == 0x7FFFFFFF)
      {
        v17 = v13[1];
        if (v17 != 0x7FFFFFFF)
        {
          goto LABEL_30;
        }
      }

      else
      {
        *v13 += v16;
        v17 = v13[1];
        if (v17 != 0x7FFFFFFF)
        {
LABEL_30:
          v13[1] = v17 + v16;
        }
      }

      v13 += 3;
    }

    while (v13 != v14);
  }

  v18 = *a2;
  v19 = *(a2 + 8);
  if (*a2 != v19)
  {
    do
    {
      v21 = *v18;
      v22 = v18[1];
      while (v21 != v22)
      {
        v23 = *(v21 + 8);
        for (i = *(v21 + 16); v23 != i; v23 += 5704)
        {
          sub_9BEAF4(result, v23, a3);
        }

        v21 += 104;
      }

      v18 += 4;
    }

    while (v18 != v19);
  }
}

void sub_9BEAF4(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 40);
  if (v3 != 0x7FFFFFFF)
  {
    if (a3 < 0)
    {
      v4 = -5;
    }

    else
    {
      v4 = 5;
    }

    *(a2 + 40) = a3 / -10 + v3 + (((-103 * (v4 + a3 % 10)) >> 15) & 1) + ((-103 * (v4 + a3 % 10)) >> 10);
  }

  if (*(a2 + 792) != 1)
  {
    return;
  }

  v5 = *(a2 + 116);
  if (v5 == 0x7FFFFFFF)
  {
    v6 = *(a2 + 120);
    if (v6 == 0x7FFFFFFF)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (a3 < 0)
    {
      v12 = -5;
    }

    else
    {
      v12 = 5;
    }

    *(a2 + 116) = a3 / -10 + v5 + (((-103 * (v12 + a3 % 10)) >> 15) & 1) + ((-103 * (v12 + a3 % 10)) >> 10);
    v6 = *(a2 + 120);
    if (v6 == 0x7FFFFFFF)
    {
LABEL_9:
      v7 = *(a2 + 88);
      if (v7 == 0x7FFFFFFF)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  if (a3 < 0)
  {
    v13 = -5;
  }

  else
  {
    v13 = 5;
  }

  *(a2 + 120) = a3 / -10 + v6 + (((-103 * (v13 + a3 % 10)) >> 15) & 1) + ((-103 * (v13 + a3 % 10)) >> 10);
  v7 = *(a2 + 88);
  if (v7 == 0x7FFFFFFF)
  {
LABEL_10:
    v8 = *(a2 + 92);
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_22:
  if (a3 < 0)
  {
    v14 = -5;
  }

  else
  {
    v14 = 5;
  }

  *(a2 + 88) = a3 / -10 + v7 + (((-103 * (v14 + a3 % 10)) >> 15) & 1) + ((-103 * (v14 + a3 % 10)) >> 10);
  v8 = *(a2 + 92);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_11:
    v9 = *(a2 + 152);
    if (v9 == 0x7FFFFFFF)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_26:
  if (a3 < 0)
  {
    v15 = -5;
  }

  else
  {
    v15 = 5;
  }

  *(a2 + 92) = a3 / -10 + v8 + (((-103 * (v15 + a3 % 10)) >> 15) & 1) + ((-103 * (v15 + a3 % 10)) >> 10);
  v9 = *(a2 + 152);
  if (v9 == 0x7FFFFFFF)
  {
LABEL_12:
    v10 = *(a2 + 440);
    v11 = *(a2 + 448);
    if (v10 == v11)
    {
      goto LABEL_44;
    }

    goto LABEL_34;
  }

LABEL_30:
  if (a3 < 0)
  {
    v16 = -5;
  }

  else
  {
    v16 = 5;
  }

  *(a2 + 152) = a3 / -10 + v9 + (((-103 * (v16 + a3 % 10)) >> 15) & 1) + ((-103 * (v16 + a3 % 10)) >> 10);
  v10 = *(a2 + 440);
  v11 = *(a2 + 448);
  if (v10 != v11)
  {
LABEL_34:
    if (a3 < 0)
    {
      v17 = -5;
    }

    else
    {
      v17 = 5;
    }

    v18 = a3 / -10 + (((-103 * (v17 + a3 % 10)) >> 15) & 1) + ((-103 * (v17 + a3 % 10)) >> 10);
    do
    {
      if (*v10 == 0x7FFFFFFF)
      {
        v19 = v10[1];
        if (v19 != 0x7FFFFFFF)
        {
          goto LABEL_43;
        }
      }

      else
      {
        *v10 += v18;
        v19 = v10[1];
        if (v19 != 0x7FFFFFFF)
        {
LABEL_43:
          v10[1] = v19 + v18;
        }
      }

      v10 += 7;
    }

    while (v10 != v11);
  }

LABEL_44:
  v20 = *(a2 + 464);
  v21 = *(a2 + 472);
  if (v20 != v21)
  {
    if (a3 < 0)
    {
      v22 = -5;
    }

    else
    {
      v22 = 5;
    }

    v23 = a3 / -10 + (((-103 * (v22 + a3 % 10)) >> 15) & 1) + ((-103 * (v22 + a3 % 10)) >> 10);
    do
    {
      if (*v20 == 0x7FFFFFFF)
      {
        v24 = v20[1];
        if (v24 != 0x7FFFFFFF)
        {
          goto LABEL_54;
        }
      }

      else
      {
        *v20 += v23;
        v24 = v20[1];
        if (v24 != 0x7FFFFFFF)
        {
LABEL_54:
          v20[1] = v24 + v23;
        }
      }

      v20 += 7;
    }

    while (v20 != v21);
  }

  v25 = *(a2 + 488);
  v26 = *(a2 + 496);
  if (v25 != v26)
  {
    if (a3 < 0)
    {
      v27 = -5;
    }

    else
    {
      v27 = 5;
    }

    v28 = a3 / -10 + (((-103 * (v27 + a3 % 10)) >> 15) & 1) + ((-103 * (v27 + a3 % 10)) >> 10);
    do
    {
      if (*v25 == 0x7FFFFFFF)
      {
        v29 = v25[1];
        if (v29 != 0x7FFFFFFF)
        {
          goto LABEL_65;
        }
      }

      else
      {
        *v25 += v28;
        v29 = v25[1];
        if (v29 != 0x7FFFFFFF)
        {
LABEL_65:
          v25[1] = v29 + v28;
        }
      }

      v25 += 7;
    }

    while (v25 != v26);
  }
}

void sub_9BF048()
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
  xmmword_27B3330 = 0u;
  unk_27B3340 = 0u;
  dword_27B3350 = 1065353216;
  sub_3A9A34(&xmmword_27B3330, v0, v0);
  sub_3A9A34(&xmmword_27B3330, v3, v3);
  sub_3A9A34(&xmmword_27B3330, __p, __p);
  sub_3A9A34(&xmmword_27B3330, v9, v9);
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
    qword_27B3308 = 0;
    qword_27B3310 = 0;
    qword_27B3300 = 0;
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

void sub_9BF290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3318)
  {
    qword_27B3320 = qword_27B3318;
    operator delete(qword_27B3318);
  }

  _Unwind_Resume(exception_object);
}

void sub_9BF33C(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  v4 = sub_3AF4C0(a2);
  sub_21E2C18(v4, 5, *(a3 + 968));
}

void sub_9BF3AC(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_9BF67C(a5, 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  v23 = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
  v10 = *(a1 + 3);
  v26 = *(a1 + 2);
  v19 = a1;
  v11 = *a1;
  v22 = a2 + 3;
  v24 = a2 + 36;
  v25 = v11;
  v27 = v10;
  v28 = *(a1 + 4);
  v29 = a1[10];
  v12 = *a3;
  if (a3[1] != *a3)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      if (0xEEEEEEEEEEEEEEEFLL * ((a4[1] - *a4) >> 4) <= v15)
      {
        sub_6FAB4();
      }

      v16 = *(*a4 + v13);
      v17 = a5[1];
      if (v17 >= a5[2])
      {
        v18 = sub_9C0F60(a5);
      }

      else
      {
        bzero(a5[1], 0x428uLL);
        sub_9C11B8((v17 + 56));
        *(v17 + 1032) = 0u;
        *(v17 + 1048) = 0u;
        *(v17 + 1016) = 0u;
        v18 = (v17 + 1064);
      }

      a5[1] = v18;
      *(v18 - 1064) = v16;
      if (!v16)
      {
        if (0xDAB7EC1DD3431B57 * ((a2[1] - *a2) >> 5))
        {
          sub_9BF860(v19, *a2, v12 + v14, &v22, v18 - 1064);
        }

        sub_6FAB4();
      }

      __p[0] = 0;
      __p[1] = 0;
      v21 = 0;
      sub_9BFE20(v18, v12 + v14, __p, v18 - 1064);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }

      ++v15;
      v12 = *a3;
      v14 += 48;
      v13 += 240;
    }

    while (v15 < 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  }
}

void sub_9BF610(_Unwind_Exception *a1)
{
  sub_1AB28(v2 + 8);
  *(v1 + 8) = v2;
  sub_9C1268(v1);
  _Unwind_Resume(a1);
}

void sub_9BF630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_9C1268(v17);
    _Unwind_Resume(a1);
  }

  sub_9C1268(v17);
  _Unwind_Resume(a1);
}

void sub_9BF67C(void **a1, unint64_t a2)
{
  if (0x133F84CFE133F84DLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x3D980F6603D981)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_9BF958(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_9BF998(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_A21D28(v74, a2);
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v20 = vnegq_f64(v6);
  while (1)
  {
    sub_A21D2C(v74, v64);
    v7 = sub_A21B4C(v74, v64);
    sub_98ED24(v64);
    if (!v7)
    {
      return sub_98ED24(v74);
    }

    v8 = sub_A21B20(v74);
    if (*(v8 + 8) == -1)
    {
      goto LABEL_2;
    }

    if ((*(v8 + 39) & 0x8000000000000000) != 0)
    {
      if (!*(v8 + 24))
      {
        goto LABEL_2;
      }
    }

    else if (!*(v8 + 39))
    {
      goto LABEL_2;
    }

    v9 = sub_A21B20(v74);
    sub_9C12C4(v64, v9 + 8);
    if (*sub_A21B20(v74) == 2)
    {
      v10 = sub_A21B20(v74);
      if (*(v10 + 2152) != *(v10 + 2160))
      {
        v11 = sub_A21B20(v74);
        if (&__p != (v11 + 2152))
        {
          sub_35354C(&__p, *(v11 + 2152), *(v11 + 2160), 0xAAAAAAAAAAAAAAABLL * ((*(v11 + 2160) - *(v11 + 2152)) >> 2));
        }
      }
    }

    v21 = -1;
    v22 = 0x7FFFFFFF;
    v23 = -1;
    v24 = -1;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    v26 = 0;
    v27 = -1935635296;
    v28[0] = 0;
    *(v28 + 7) = 0;
    memset(&v28[2], 0, 24);
    v29 = 0;
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    v31 = 100;
    v32 = 0;
    v33 = 0;
    v34 = v20;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 1;
    v39 = 0;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0;
    v53 = -1;
    v54 = -1;
    v55 = 0;
    v56 = 0;
    v58 = 0;
    v57 = 0;
    v59 = 0;
    v60 = 0;
    sub_A186C4(v74, a3, &v63);
    sub_44FDEC(&v21);
    sub_9BFF50(&v63, &v21);
    sub_9C13A0(v66, &v21);
    sub_9C1568(v67, v61);
    sub_53D784(v68, v62);
    v68[160] = v62[160];
    sub_53A868(v62);
    sub_973B5C(v61);
    sub_973C60(&v21);
    v12 = sub_A21B20(v74);
    if (*(v12 + 2224) != *(v12 + 2232))
    {
      v13 = sub_A21B20(v74);
      sub_9C019C((v13 + 2224), &v63, &v21);
      sub_9C04E0(v73, &v21);
      sub_974F1C(&v21);
    }

    if (__p != v70 || sub_9C1704(v66) || v73[0] != v73[1])
    {
      v14 = sub_A21B20(v74);
      v71 = *(v14 + 2176);
      v72 = *(v14 + 2192);
      v15 = *(a4 + 1024);
      if (v15 >= *(a4 + 1032))
      {
        v16 = sub_9C17E8((a4 + 1016), v64);
      }

      else
      {
        sub_9C193C(*(a4 + 1024), v64);
        v16 = (v15 + 2128);
        *(a4 + 1024) = v15 + 2128;
      }

      *(a4 + 1024) = v16;
    }

    v17 = v63.n128_u64[1];
    if (!v63.n128_u64[1] || atomic_fetch_add((v63.n128_u64[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      sub_974F1C(v73);
      v18 = __p;
      if (!__p)
      {
        goto LABEL_26;
      }

LABEL_25:
      v70 = v18;
      operator delete(v18);
      goto LABEL_26;
    }

    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    sub_974F1C(v73);
    v18 = __p;
    if (__p)
    {
      goto LABEL_25;
    }

LABEL_26:
    sub_53A868(v68);
    sub_973B5C(v67);
    sub_973C60(v66);
    if (v65 < 0)
    {
      operator delete(v64[1]);
    }

LABEL_2:
    sub_A21708(v74);
  }
}

void sub_9BFD78(_Unwind_Exception *a1)
{
  *(v1 + 1024) = v2;
  sub_1F1A8(&STACK[0x4D8]);
  sub_9C27F4(&STACK[0x4E8]);
  sub_98ED24((v3 - 248));
  _Unwind_Resume(a1);
}

void **sub_9BFE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + 8;
  result = (a4 + 32);
  if (a4 + 32 != a2 + 24)
  {
    v9 = *(a2 + 47);
    if (*(a4 + 55) < 0)
    {
      if (v9 >= 0)
      {
        v11 = (a2 + 24);
      }

      else
      {
        v11 = *(a2 + 24);
      }

      if (v9 >= 0)
      {
        v12 = *(a2 + 47);
      }

      else
      {
        v12 = *(a2 + 32);
      }

      result = sub_13B38(result, v11, v12);
    }

    else if ((*(a2 + 47) & 0x80) != 0)
    {
      result = sub_13A68(result, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v10 = *(a2 + 24);
      *(a4 + 48) = *(a2 + 40);
      *result = v10;
    }
  }

  v13 = *(a3 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a3 + 8);
  }

  if (v13)
  {
    v14 = a3;
  }

  else
  {
    v14 = a2;
  }

  if (v7 != v14)
  {
    v15 = *(v14 + 23);
    if (*(a4 + 31) < 0)
    {
      if (v15 >= 0)
      {
        v17 = v14;
      }

      else
      {
        v17 = *v14;
      }

      if (v15 >= 0)
      {
        v18 = *(v14 + 23);
      }

      else
      {
        v18 = *(v14 + 8);
      }

      return sub_13B38(v7, v17, v18);
    }

    else if ((*(v14 + 23) & 0x80) != 0)
    {
      v19 = *v14;
      v20 = *(v14 + 8);

      return sub_13A68(v7, v19, v20);
    }

    else
    {
      v16 = *v14;
      *(v7 + 16) = *(v14 + 16);
      *v7 = v16;
    }
  }

  return result;
}

uint64_t sub_9BFF50@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_9C0638(a2);
  if ((*(**a1 + 64))(*a1, 5, 2))
  {
    (*(**a1 + 24))(v5);
    sub_53D784(a2 + 256, v5);
    sub_53D784(a2 + 416, v6);
    *(a2 + 576) = v6[160];
    sub_53A868(v6);
    sub_53A868(v5);
  }

  if ((*(**a1 + 64))(*a1, 4, 1))
  {
    (*(**a1 + 32))(v5);
    sub_53D784(a2 + 680, v5);
    *(a2 + 840) = v6[0];
    sub_53A868(v5);
  }

  if ((*(**a1 + 64))(*a1, 6, 2))
  {
    (*(**a1 + 40))(v5);
    sub_53D784(a2 + 96, v5);
    sub_53A868(v5);
  }

  sub_9C0710((a2 + 48), a1, 2, 2);
  sub_9C0710((a2 + 632), a1, 2, 1);
  return sub_9C0710((a2 + 24), a1, 1, 2);
}

uint64_t sub_9C019C@<X0>(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_18:
    bzero(a3, 0x4B0uLL);

    return sub_9C2868(a3);
  }

  else
  {
    v7 = v4 + 696;
    do
    {
      v8 = *(v7 - 8);
      if (*(v7 - 8))
      {
        v9 = 1;
      }

      else
      {
        v9 = v7 == v5;
      }

      v7 += 696;
    }

    while (!v9);
    while (1)
    {
      v10 = *(v4 + 8);
      if (v10 == 1)
      {
        break;
      }

      v4 += 696;
      if (v4 == v5)
      {
        if (!v8)
        {
          goto LABEL_18;
        }

        break;
      }
    }

    sub_974500(a3, a1);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    memset(__p, 0, sizeof(__p));
    sub_64B998(&v14);
    *(a3 + 24) = 0;
    v11 = *(a3 + 32);
    if (v11)
    {
      *(a3 + 40) = v11;
      operator delete(v11);
    }

    *(a3 + 32) = *&__p[1];
    *(a3 + 48) = __p[3];
    memset(&__p[1], 0, 24);
    sub_53D784(a3 + 56, &v14);
    sub_53A868(&v14);
    result = (*(**a2 + 80))(*a2, a3);
    if (v10 != 1)
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      memset(__p, 0, sizeof(__p));
      sub_64B998(__p);
      sub_64B998(&v22);
      LOBYTE(v32) = 0;
      sub_53D784(a3 + 216, __p);
      sub_53D784(a3 + 376, &v22);
      *(a3 + 536) = v32;
      sub_53A868(&v22);
      sub_53A868(__p);
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      memset(__p, 0, sizeof(__p));
      sub_64B998(__p);
      sub_64B998(&v22);
      LOBYTE(v32) = 0;
      sub_53D784(a3 + 544, __p);
      sub_53D784(a3 + 704, &v22);
      *(a3 + 864) = v32;
      sub_53A868(&v22);
      sub_53A868(__p);
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      memset(__p, 0, sizeof(__p));
      sub_64B998(__p);
      sub_64B998(&v22);
      LOBYTE(v32) = 0;
      sub_53D784(a3 + 872, __p);
      sub_53D784(a3 + 1032, &v22);
      *(a3 + 1192) = v32;
      sub_53A868(&v22);
      return sub_53A868(__p);
    }
  }

  return result;
}

void sub_9C0478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_53A868(&a9);
  sub_974F1C(v9);
  _Unwind_Resume(a1);
}

void sub_9C04BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    sub_974F1C(v11);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x9C04ACLL);
}

char **sub_9C04E0(char **a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        sub_53A868((v5 - 176));
        sub_53A868((v5 - 336));
        sub_53A868((v5 - 504));
        sub_53A868((v5 - 664));
        v5 -= 696;
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = *a2;
  v7 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = a1[4];
  a1[3] = v7;
  if (v8)
  {
    a1[5] = v8;
    operator delete(v8);
    a1[4] = 0;
    a1[5] = 0;
    a1[6] = 0;
  }

  *(a1 + 2) = *(a2 + 32);
  a1[6] = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  sub_53D784((a1 + 7), a2 + 56);
  sub_53D784((a1 + 27), a2 + 216);
  sub_53D784((a1 + 47), a2 + 376);
  *(a1 + 536) = *(a2 + 536);
  sub_53D784((a1 + 68), a2 + 544);
  sub_53D784((a1 + 88), a2 + 704);
  *(a1 + 864) = *(a2 + 864);
  sub_53D784((a1 + 109), a2 + 872);
  sub_53D784((a1 + 129), a2 + 1032);
  *(a1 + 1192) = *(a2 + 1192);
  return a1;
}

uint64_t sub_9C0638(uint64_t a1)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_64B998(a1 + 96);
  sub_64B998(a1 + 256);
  sub_64B998(a1 + 416);
  *(a1 + 576) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  sub_64B998(a1 + 680);
  *(a1 + 840) = 0;
  return a1;
}

void sub_9C06A4(_Unwind_Exception *a1)
{
  v3 = v2;
  sub_973B5C(v3);
  sub_973C60(v1);
  _Unwind_Resume(a1);
}

void sub_9C06C4(_Unwind_Exception *a1)
{
  sub_53A868((v1 + 32));
  sub_53A868((v1 + 12));
  sub_5C0ED8(v1 + 9);
  sub_5C0ED8(v1 + 6);
  sub_5C0ED8(v1 + 3);
  sub_5C0ED8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_9C0710(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = (*(**a2 + 64))(*a2, a3, a4);
  if (result)
  {
    (*(**a2 + 16))(v11);
    if (!sub_4D1F6C(v11) || (*(**a2 + 72))(*a2, a3, a4))
    {
      v9 = a1[1];
      if (v9 >= a1[2])
      {
        v10 = sub_5C489C(a1, v11);
      }

      else
      {
        sub_55BD50(a1[1], v11);
        v10 = v9 + 160;
        a1[1] = v9 + 160;
      }

      a1[1] = v10;
    }

    return sub_53A868(v11);
  }

  return result;
}

void sub_9C0830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_53A868(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_9C085C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1064;
    sub_9C0DEC(i - 1064);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_9C08B0(uint64_t a1, uint64_t a2)
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
  *(a2 + 928) = 0;
  *(a2 + 920) = 0;
  result = *(a2 + 936);
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 936) = result;
  *(a2 + 952) = 0;
  *(a2 + 944) = 0;
  *(a2 + 936) = 0;
  return result;
}

uint64_t sub_9C0DEC(uint64_t a1)
{
  v2 = *(a1 + 1040);
  if (v2)
  {
    v3 = *(a1 + 1048);
    v4 = *(a1 + 1040);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        sub_53A868(v3 - 184);
        sub_53A868(v3 - 344);
        v3 -= 344;
      }

      while (v3 != v2);
      v4 = *(a1 + 1040);
    }

    *(a1 + 1048) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 1016);
  if (v5)
  {
    v6 = *(a1 + 1024);
    v7 = *(a1 + 1016);
    if (v6 != v5)
    {
      v8 = v6 - 2120;
      do
      {
        sub_974F1C((v8 + 920));
        v10 = *(v8 + 872);
        if (v10)
        {
          *(v8 + 880) = v10;
          operator delete(v10);
        }

        sub_53A868(v8 + 704);
        sub_973B5C((v8 + 608));
        sub_973C60((v8 + 24));
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
        }

        v9 = v8 - 8;
        v8 -= 2128;
      }

      while (v9 != v5);
      v7 = *(a1 + 1016);
    }

    *(a1 + 1024) = v5;
    operator delete(v7);
  }

  sub_53A868(a1 + 856);
  sub_53A868(a1 + 696);
  sub_53A868(a1 + 536);
  sub_53A868(a1 + 376);
  sub_53A868(a1 + 216);
  sub_53A868(a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_9C0F60(void **a1)
{
  v1 = 0x133F84CFE133F84DLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x3D980F6603D980)
  {
    sub_1794();
  }

  if (0x267F099FC267F09ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x267F099FC267F09ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x133F84CFE133F84DLL * ((a1[2] - *a1) >> 3)) >= 0x1ECC07B301ECC0)
  {
    v4 = 0x3D980F6603D980;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x3D980F6603D980)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 8 * ((a1[1] - *a1) >> 3);
  bzero(v5, 0x428uLL);
  sub_9C11B8(1064 * v1 + 56);
  v6 = *a1;
  v7 = a1[1];
  v8 = v5 - (v7 - *a1);
  v9 = 0uLL;
  *(v5 + 1032) = 0u;
  *(v5 + 1048) = 0u;
  *(v5 + 1016) = 0u;
  if (v7 != v6)
  {
    v10 = (v6 + 56);
    v11 = v5 - 8 * ((v7 - v6) >> 3) + 56;
    do
    {
      *(v11 - 56) = *(v10 - 56);
      v12 = v11 - 56;
      v13 = *(v10 - 48);
      *(v11 - 32) = *(v10 - 32);
      *(v11 - 48) = v13;
      *(v10 - 40) = v9;
      *(v10 - 48) = 0;
      v14 = *(v10 - 24);
      *(v11 - 8) = *(v10 - 8);
      *(v11 - 24) = v14;
      *(v10 - 16) = v9;
      *(v10 - 24) = 0;
      sub_9C08B0(v11, v10);
      v9 = 0uLL;
      *(v15 + 976) = 0;
      *(v15 + 960) = 0u;
      *(v15 + 960) = *(v10 + 960);
      *(v12 + 1024) = *(v10 + 968);
      *(v10 + 976) = 0;
      *(v10 + 960) = 0u;
      *(v15 + 1000) = 0;
      *(v12 + 1040) = 0u;
      *(v12 + 1040) = *(v10 + 984);
      *(v15 + 1000) = *(v10 + 1000);
      *(v10 + 1000) = 0;
      *(v10 + 984) = 0u;
      v16 = v10 + 1008;
      v10 += 1064;
      v11 = v15 + 1064;
    }

    while (v16 != v7);
    do
    {
      sub_9C0DEC(v6);
      v6 += 1064;
    }

    while (v6 != v7);
    v6 = *a1;
  }

  *a1 = v8;
  a1[1] = (v5 + 1064);
  a1[2] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return v5 + 1064;
}

void sub_9C119C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AB28(v3 + 8);
  sub_9C085C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9C11B8(uint64_t a1)
{
  sub_64B998(a1);
  sub_64B998(v2 + 160);
  sub_64B998(a1 + 320);
  sub_64B998(a1 + 480);
  sub_64B998(a1 + 640);
  sub_64B998(a1 + 800);
  return a1;
}

void sub_9C1208(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 640);
  sub_53A868(v1 + 480);
  sub_53A868(v1 + 320);
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void **sub_9C1268(void **a1)
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
        v3 = sub_9C0DEC(v3 - 1064);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_9C12C4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v3 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v3;
  }

  sub_9C0638(a1 + 32);
  *(a1 + 896) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 904) = 0xFFFFFFFF00000000;
  *(a1 + 912) = 0x8000000080000000;
  *(a1 + 920) = -1;
  sub_9C2868(a1 + 928);
  return a1;
}

void sub_9C1360(_Unwind_Exception *a1)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 888) = v6;
    operator delete(v6);
  }

  sub_9750B4((v2 + 32));
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_9C13A0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = v4;
    if (v5 != v4)
    {
      do
      {
        v5 = sub_53A868(v5 - 160);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = (a1 + 24);
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 24);
    if (v9 != v8)
    {
      do
      {
        v9 = sub_53A868(v9 - 160);
      }

      while (v9 != v8);
      v10 = *v7;
    }

    *(a1 + 32) = v8;
    operator delete(v10);
    *v7 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v11 = (a1 + 48);
  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = *(a1 + 56);
    v14 = *(a1 + 48);
    if (v13 != v12)
    {
      do
      {
        v13 = sub_53A868(v13 - 160);
      }

      while (v13 != v12);
      v14 = *v11;
    }

    *(a1 + 56) = v12;
    operator delete(v14);
    *v11 = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v15 = (a1 + 72);
  v16 = *(a1 + 72);
  if (v16)
  {
    v17 = *(a1 + 80);
    v18 = *(a1 + 72);
    if (v17 != v16)
    {
      do
      {
        v17 = sub_53A868(v17 - 160);
      }

      while (v17 != v16);
      v18 = *v15;
    }

    *(a1 + 80) = v16;
    operator delete(v18);
    *v15 = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  sub_53D784(a1 + 96, a2 + 96);
  sub_53D784(a1 + 256, a2 + 256);
  sub_53D784(a1 + 416, a2 + 416);
  *(a1 + 576) = *(a2 + 576);
  return a1;
}

void *sub_9C1568(void *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = v4;
    if (v5 != v4)
    {
      do
      {
        v5 = sub_53A868(v5 - 160);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = (a1 + 3);
  v8 = a1[3];
  if (v8)
  {
    v9 = a1[4];
    v10 = a1[3];
    if (v9 != v8)
    {
      do
      {
        v9 = sub_53A868(v9 - 160);
      }

      while (v9 != v8);
      v10 = *v7;
    }

    a1[4] = v8;
    operator delete(v10);
    *v7 = 0;
    a1[4] = 0;
    a1[5] = 0;
  }

  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v11 = (a1 + 6);
  v12 = a1[6];
  if (v12)
  {
    v13 = a1[7];
    v14 = a1[6];
    if (v13 != v12)
    {
      do
      {
        v13 = sub_53A868(v13 - 160);
      }

      while (v13 != v12);
      v14 = *v11;
    }

    a1[7] = v12;
    operator delete(v14);
    *v11 = 0;
    a1[7] = 0;
    a1[8] = 0;
  }

  *(a1 + 3) = *(a2 + 48);
  a1[8] = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v15 = (a1 + 9);
  v16 = a1[9];
  if (v16)
  {
    v17 = a1[10];
    v18 = a1[9];
    if (v17 != v16)
    {
      do
      {
        v17 = sub_53A868(v17 - 160);
      }

      while (v17 != v16);
      v18 = *v15;
    }

    a1[10] = v16;
    operator delete(v18);
    *v15 = 0;
    a1[10] = 0;
    a1[11] = 0;
  }

  *(a1 + 9) = *(a2 + 72);
  a1[11] = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return a1;
}

BOOL sub_9C1704(void *a1)
{
  if (*a1 != a1[1] || a1[3] != a1[4] || a1[6] != a1[7] || a1[9] != a1[10])
  {
    return 1;
  }

  if (sub_4D1F6C(a1 + 12) && sub_4D1F6C(a1 + 32) && sub_4D1F6C(a1 + 52) && a1[73] == a1[74] && a1[76] == a1[77] && a1[79] == a1[80] && a1[82] == a1[83])
  {
    return !sub_4D1F6C(a1 + 85);
  }

  return 1;
}

void *sub_9C17E8(void **a1, uint64_t a2)
{
  v2 = 0x133F84CFE133F84DLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1ECC07B301ECC0)
  {
    sub_1794();
  }

  if (0x267F099FC267F09ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x267F099FC267F09ALL * ((a1[2] - *a1) >> 4);
  }

  if ((0x133F84CFE133F84DLL * ((a1[2] - *a1) >> 4)) >= 0xF6603D980F660)
  {
    v5 = 0x1ECC07B301ECC0;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1ECC07B301ECC0)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 16 * ((a1[1] - *a1) >> 4);
  sub_9C193C(v11, a2);
  v6 = (2128 * v2 + 2128);
  v7 = a1[1];
  v8 = (v11 + *a1 - v7);
  sub_9C1AE4(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_9C1928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9C271C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9C193C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  sub_9738C8(a1 + 32, a2 + 32);
  sub_973A4C((a1 + 616), (a2 + 616));
  sub_55BD50(a1 + 712, a2 + 712);
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 880) = 0;
  *(a1 + 896) = 0;
  *(a1 + 888) = 0;
  v5 = *(a2 + 880);
  v6 = *(a2 + 888);
  if (v6 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = *(a2 + 904);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 904) = v7;
  sub_974500(a1 + 928, a2 + 928);
  return a1;
}

void sub_9C1A84(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 888) = v5;
    operator delete(v5);
  }

  sub_9750B4((v2 + 32));
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_9C1AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 8) = v8;
      *(v7 + 16) = 0u;
      *(v7 + 8) = 0;
      sub_9C1C00(a4 + 32, v7 + 32);
      *(a4 + 896) = 0;
      *(a4 + 880) = 0u;
      *(a4 + 880) = *(v7 + 880);
      *(a4 + 896) = *(v7 + 896);
      *(v7 + 896) = 0;
      *(v7 + 880) = 0u;
      v9 = *(v7 + 904);
      *(a4 + 920) = *(v7 + 920);
      *(a4 + 904) = v9;
      sub_9C209C(a4 + 928, v7 + 928);
      v7 += 2128;
      a4 += 2128;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_974F1C((v6 + 928));
      v10 = *(v6 + 880);
      if (v10)
      {
        *(v6 + 888) = v10;
        operator delete(v10);
      }

      sub_53A868(v6 + 712);
      sub_973B5C((v6 + 616));
      sub_973C60((v6 + 32));
      if (*(v6 + 31) < 0)
      {
        operator delete(*(v6 + 8));
      }

      v6 += 2128;
    }
  }
}

__n128 sub_9C1C00(uint64_t a1, uint64_t a2)
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
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a2 + 72) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a2 + 96) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = 0;
  *(a2 + 120) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a2 + 144) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 168) = *(a2 + 168);
  v2 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a1 + 192) = v2;
  v3 = *(a2 + 200);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 200) = v3;
  v4 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = v4;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0u;
  v5 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v5;
  *(a2 + 240) = 0u;
  *(a2 + 232) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 272) = 0;
  *(a2 + 256) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 296) = 0;
  *(a2 + 280) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 320) = 0;
  *(a2 + 304) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 328) = 0u;
  v6 = *(a2 + 352);
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  *(a1 + 352) = v6;
  LODWORD(v6) = *(a2 + 360);
  *(a1 + 364) = *(a2 + 364);
  *(a1 + 360) = v6;
  v7 = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 368) = v7;
  *(a2 + 368) = 0;
  *(a2 + 376) = 0u;
  v8 = *(a2 + 392);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 392) = v8;
  *(a2 + 400) = 0u;
  *(a2 + 392) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = *(a2 + 432);
  *(a2 + 432) = 0;
  *(a2 + 416) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  *(a2 + 456) = 0;
  *(a2 + 440) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a2 + 480) = 0;
  *(a2 + 464) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a2 + 488) = 0u;
  v9 = *(a2 + 512);
  *(a2 + 504) = 0;
  *(a2 + 512) = 0;
  *(a1 + 512) = v9;
  LODWORD(v9) = *(a2 + 520);
  *(a1 + 524) = *(a2 + 524);
  *(a1 + 520) = v9;
  v10 = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 528) = v10;
  *(a2 + 528) = 0;
  *(a2 + 536) = 0u;
  v11 = *(a2 + 552);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 552) = v11;
  *(a2 + 560) = 0u;
  *(a2 + 552) = 0;
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 584) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 592) = *(a2 + 592);
  *(a2 + 600) = 0;
  *(a2 + 584) = 0u;
  *(a1 + 624) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 624) = *(a2 + 624);
  *(a2 + 624) = 0;
  *(a2 + 608) = 0u;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);
  *(a2 + 648) = 0;
  *(a2 + 632) = 0u;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 672) = *(a2 + 672);
  *(a2 + 672) = 0;
  *(a2 + 656) = 0u;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 688) = *(a2 + 688);
  *(a2 + 696) = 0;
  *(a2 + 680) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = 0;
  *(a2 + 704) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 736) = *(a2 + 736);
  *(a2 + 744) = 0;
  *(a2 + 728) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  *(a1 + 752) = *(a2 + 752);
  *(a1 + 768) = *(a2 + 768);
  *(a2 + 768) = 0;
  *(a2 + 752) = 0u;
  v12 = *(a2 + 776);
  *(a2 + 776) = 0;
  *(a1 + 776) = v12;
  LODWORD(v12) = *(a2 + 784);
  *(a1 + 788) = *(a2 + 788);
  *(a1 + 784) = v12;
  v13 = *(a2 + 792);
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 792) = v13;
  *(a2 + 792) = 0;
  *(a2 + 808) = 0;
  *(a2 + 800) = 0;
  result = *(a2 + 816);
  *(a1 + 832) = *(a2 + 832);
  *(a1 + 816) = result;
  *(a2 + 832) = 0;
  *(a2 + 824) = 0;
  *(a2 + 816) = 0;
  *(a1 + 840) = *(a2 + 840);
  return result;
}

__n128 sub_9C209C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = 0u;
  *a1 = *a2;
  v2 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *a2 = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = v2;
  *(a1 + 32) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 32) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = 0;
  *(a2 + 80) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a2 + 104) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 128) = *(a2 + 128);
  v3 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a1 + 152) = v3;
  v4 = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 160) = v4;
  v5 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v5;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0u;
  v6 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 192) = v6;
  *(a2 + 200) = 0u;
  *(a2 + 192) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 232) = 0;
  *(a2 + 216) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 256) = 0;
  *(a2 + 240) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 280) = 0;
  *(a2 + 264) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 288) = *(a2 + 288);
  v7 = *(a2 + 312);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a1 + 312) = v7;
  v8 = *(a2 + 320);
  *(a1 + 324) = *(a2 + 324);
  *(a1 + 320) = v8;
  v9 = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 328) = v9;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0u;
  v10 = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 352) = v10;
  *(a2 + 360) = 0u;
  *(a2 + 352) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a2 + 392) = 0;
  *(a2 + 376) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 416) = 0;
  *(a2 + 400) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a2 + 440) = 0;
  *(a2 + 424) = 0u;
  *(a1 + 464) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 448) = *(a2 + 448);
  v11 = *(a2 + 472);
  *(a1 + 464) = *(a2 + 464);
  *(a2 + 448) = 0u;
  *(a2 + 464) = 0;
  *(a2 + 472) = 0;
  *(a1 + 472) = v11;
  v12 = *(a2 + 480);
  *(a1 + 484) = *(a2 + 484);
  *(a1 + 480) = v12;
  v13 = *(a2 + 488);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 488) = v13;
  *(a2 + 488) = 0;
  *(a2 + 496) = 0u;
  v14 = *(a2 + 512);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 512) = v14;
  *(a2 + 520) = 0u;
  *(a2 + 512) = 0;
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *(a2 + 560) = 0;
  *(a2 + 544) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a2 + 584) = 0;
  *(a2 + 568) = 0u;
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
  v15 = *(a2 + 640);
  *(a2 + 640) = 0;
  *(a1 + 640) = v15;
  LODWORD(v15) = *(a2 + 648);
  *(a1 + 652) = *(a2 + 652);
  *(a1 + 648) = v15;
  v16 = *(a2 + 656);
  *(a1 + 672) = *(a2 + 672);
  *(a1 + 656) = v16;
  *(a2 + 656) = 0;
  *(a2 + 664) = 0u;
  v17 = *(a2 + 680);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 680) = v17;
  *(a2 + 688) = 0u;
  *(a2 + 680) = 0;
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = 0;
  *(a2 + 704) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 736) = *(a2 + 736);
  *(a2 + 744) = 0;
  *(a2 + 728) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  *(a1 + 752) = *(a2 + 752);
  *(a1 + 768) = *(a2 + 768);
  *(a2 + 768) = 0;
  *(a2 + 752) = 0u;
  *(a1 + 792) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 776) = *(a2 + 776);
  *(a1 + 784) = *(a2 + 784);
  *(a2 + 792) = 0;
  *(a2 + 776) = 0u;
  v18 = *(a2 + 800);
  *(a2 + 800) = 0;
  *(a1 + 800) = v18;
  LODWORD(v18) = *(a2 + 808);
  *(a1 + 812) = *(a2 + 812);
  *(a1 + 808) = v18;
  v19 = *(a2 + 816);
  *(a1 + 832) = *(a2 + 832);
  *(a1 + 816) = v19;
  *(a2 + 816) = 0;
  *(a2 + 824) = 0u;
  v20 = *(a2 + 840);
  *(a1 + 856) = *(a2 + 856);
  *(a1 + 840) = v20;
  *(a2 + 848) = 0u;
  *(a2 + 840) = 0;
  *(a1 + 864) = *(a2 + 864);
  *(a1 + 872) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 880) = *(a2 + 880);
  *(a2 + 888) = 0;
  *(a2 + 872) = 0u;
  *(a1 + 912) = 0;
  *(a1 + 896) = 0u;
  *(a1 + 896) = *(a2 + 896);
  *(a1 + 912) = *(a2 + 912);
  *(a2 + 912) = 0;
  *(a2 + 896) = 0u;
  *(a1 + 936) = 0;
  *(a1 + 920) = 0u;
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);
  *(a2 + 936) = 0;
  *(a2 + 920) = 0u;
  *(a1 + 960) = 0;
  *(a1 + 944) = 0u;
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 960) = *(a2 + 960);
  *(a2 + 960) = 0;
  *(a2 + 944) = 0u;
  v21 = *(a2 + 968);
  *(a2 + 968) = 0;
  *(a1 + 968) = v21;
  LODWORD(v21) = *(a2 + 976);
  *(a1 + 980) = *(a2 + 980);
  *(a1 + 976) = v21;
  v22 = *(a2 + 984);
  *(a1 + 1000) = *(a2 + 1000);
  *(a1 + 984) = v22;
  *(a2 + 984) = 0;
  *(a2 + 992) = 0u;
  v23 = *(a2 + 1008);
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1008) = v23;
  *(a2 + 1016) = 0u;
  *(a2 + 1008) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1032) = 0u;
  *(a1 + 1032) = *(a2 + 1032);
  *(a1 + 1040) = *(a2 + 1040);
  *(a2 + 1048) = 0;
  *(a2 + 1032) = 0u;
  *(a1 + 1072) = 0;
  *(a1 + 1056) = 0u;
  *(a1 + 1056) = *(a2 + 1056);
  *(a1 + 1072) = *(a2 + 1072);
  *(a2 + 1072) = 0;
  *(a2 + 1056) = 0u;
  *(a1 + 1096) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1080) = *(a2 + 1080);
  *(a1 + 1088) = *(a2 + 1088);
  *(a2 + 1096) = 0;
  *(a2 + 1080) = 0u;
  *(a1 + 1120) = 0;
  *(a1 + 1104) = 0u;
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1120) = *(a2 + 1120);
  *(a2 + 1120) = 0;
  *(a2 + 1104) = 0u;
  v24 = *(a2 + 1128);
  *(a2 + 1128) = 0;
  *(a1 + 1128) = v24;
  LODWORD(v24) = *(a2 + 1136);
  *(a1 + 1140) = *(a2 + 1140);
  *(a1 + 1136) = v24;
  v25 = *(a2 + 1144);
  *(a1 + 1160) = *(a2 + 1160);
  *(a1 + 1144) = v25;
  *(a2 + 1144) = 0;
  *(a2 + 1160) = 0;
  *(a2 + 1152) = 0;
  result = *(a2 + 1168);
  *(a1 + 1184) = *(a2 + 1184);
  *(a1 + 1168) = result;
  *(a2 + 1184) = 0;
  *(a2 + 1176) = 0;
  *(a2 + 1168) = 0;
  *(a1 + 1192) = *(a2 + 1192);
  return result;
}

void **sub_9C271C(void **a1)
{
  sub_9C2750(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_9C2750(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 2128;
    sub_974F1C((i - 1200));
    v4 = *(i - 1248);
    if (v4)
    {
      *(i - 1240) = v4;
      operator delete(v4);
    }

    sub_53A868(i - 1416);
    sub_973B5C((i - 1512));
    sub_973C60((i - 2096));
    if (*(i - 2097) < 0)
    {
      operator delete(*(i - 2120));
    }
  }
}

uint64_t sub_9C27F4(uint64_t a1)
{
  sub_974F1C((a1 + 928));
  v2 = *(a1 + 880);
  if (v2)
  {
    *(a1 + 888) = v2;
    operator delete(v2);
  }

  sub_53A868(a1 + 712);
  sub_973B5C((a1 + 616));
  sub_973C60((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_9C2868(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_64B998(a1 + 56);
  sub_64B998(a1 + 216);
  sub_64B998(a1 + 376);
  *(a1 + 536) = 0;
  sub_64B998(a1 + 544);
  sub_64B998(a1 + 704);
  *(a1 + 864) = 0;
  sub_64B998(a1 + 872);
  sub_64B998(a1 + 1032);
  *(a1 + 1192) = 0;
  return a1;
}

void sub_9C28DC(_Unwind_Exception *a1)
{
  sub_53A868((v1 + 109));
  sub_53A868((v1 + 88));
  sub_53A868((v1 + 68));
  sub_53A868((v1 + 47));
  sub_53A868((v1 + 27));
  sub_9749E0((v1 + 3));
  sub_974A1C(v1);
  _Unwind_Resume(a1);
}

void sub_9C2948(_Unwind_Exception *a1)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    *(v1 + 40) = v3;
    operator delete(v3);
    sub_974A1C(v1);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x9C2930);
}

void sub_9C296C()
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
  xmmword_27B3388 = 0u;
  unk_27B3398 = 0u;
  dword_27B33A8 = 1065353216;
  sub_3A9A34(&xmmword_27B3388, v0, v0);
  sub_3A9A34(&xmmword_27B3388, v3, v3);
  sub_3A9A34(&xmmword_27B3388, __p, __p);
  sub_3A9A34(&xmmword_27B3388, v9, v9);
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
    qword_27B3360 = 0;
    qword_27B3368 = 0;
    qword_27B3358 = 0;
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

void sub_9C2BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3370)
  {
    qword_27B3378 = qword_27B3370;
    operator delete(qword_27B3370);
  }

  _Unwind_Resume(exception_object);
}

void sub_9C2C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = sub_3B0030(a2);
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 32) = 11;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 11;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  operator new();
}

void sub_9C2D50(_Unwind_Exception *exception_object)
{
  v4 = v2;
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
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

  *(v1 + 48) = v7;
  operator delete(v7);
  _Unwind_Resume(exception_object);
}

void sub_9C2D94(uint64_t *a1, uint64_t *a2, unsigned int **a3, uint64_t *a4)
{
  if (!*(*a1 + 11688))
  {
    return;
  }

  v8 = *a4;
  *(a1 + 8) = *a4;
  *(a1 + 6) = v8;
  if (a1 + 4 == a4)
  {
    *(a1 + 16) = *(a4 + 8);
    *(a1 + 120) = *(a4 + 88);
    if (!a1[20])
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  sub_61532C(a1 + 5, a4[1], a4[2], (a4[2] - a4[1]) >> 3);
  *(a1 + 16) = *(a4 + 8);
  sub_146EC(a1 + 9, a4[5], a4[6], (a4[6] - a4[5]) >> 2);
  v9 = *(a4 + 87);
  if (*(a1 + 119) < 0)
  {
    if (v9 >= 0)
    {
      v11 = (a4 + 8);
    }

    else
    {
      v11 = a4[8];
    }

    if (v9 >= 0)
    {
      v12 = *(a4 + 87);
    }

    else
    {
      v12 = a4[9];
    }

    sub_13B38(a1 + 12, v11, v12);
    *(a1 + 120) = *(a4 + 88);
    if (!a1[20])
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if ((*(a4 + 87) & 0x80) == 0)
  {
    v10 = *(a4 + 4);
    a1[14] = a4[10];
    *(a1 + 6) = v10;
    *(a1 + 120) = *(a4 + 88);
    if (!a1[20])
    {
      goto LABEL_23;
    }

LABEL_18:
    v13 = a1[19];
    if (v13)
    {
      do
      {
        v14 = *v13;
        operator delete(v13);
        v13 = v14;
      }

      while (v14);
    }

    a1[19] = 0;
    v15 = a1[18];
    if (v15)
    {
      bzero(a1[17], 8 * v15);
    }

    a1[20] = 0;
    goto LABEL_23;
  }

  sub_13A68(a1 + 12, a4[8], a4[9]);
  *(a1 + 120) = *(a4 + 88);
  if (a1[20])
  {
    goto LABEL_18;
  }

LABEL_23:
  v16 = a1[22];
  v21 = a2;
    ;
  }

  a1[23] = v16;
  sub_9C341C((a1 + 25));
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v18 = a3[1];
  if (v18 != *a3)
  {
    if (((v18 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v20 = *a2;
  v19 = v21[1];
  if (*v21 != v19)
  {
    do
    {
      sub_9C3A5C(a1, v20, &v22);
      v20 += 412;
    }

    while (v20 != v19);
  }

  if (v21 + 27 != a1 + 22)
  {
    sub_9C58D8(v21 + 27, a1[22], a1[23], 0x823EE08FB823EE09 * ((a1[23] - a1[22]) >> 3));
  }

  if (v21 != a1)
  {
    sub_9C63F8(v21 + 30, a1[30], a1[31], 0xAAAAAAAAAAAAAAABLL * ((a1[31] - a1[30]) >> 4));
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_9C33A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
    v22 = a20;
    if (!a20)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v22 = a20;
    if (!a20)
    {
      goto LABEL_3;
    }
  }

  operator delete(v22);
  _Unwind_Resume(exception_object);
}

void sub_9C341C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      do
      {
        v8 = *v2;
        v9 = *(v2 + 5);
        if (v9)
        {
          *(v2 + 6) = v9;
          operator delete(v9);
        }

        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v8;
      }

      while (v8);
    }

    *(a1 + 16) = 0;
    v3 = *(a1 + 8);
    if (v3)
    {
      bzero(*a1, 8 * v3);
    }

    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v5 != v4)
  {
    do
    {
      v6 = *(v5 - 3);
      if (v6)
      {
        *(v5 - 2) = v6;
        operator delete(v6);
      }

      v7 = v5 - 6;
      if (*(v5 - 25) < 0)
      {
        operator delete(*v7);
      }

      v5 -= 6;
    }

    while (v7 != v4);
  }

  *(a1 + 48) = v4;
}

__n128 sub_9C34EC@<Q0>(void *a1@<X0>, unint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v6 = *a2;
  v7 = a2[1];
  v17[0] = a1;
  if (v7 - v6 < 129)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v8 = v7 - v6;
    while (1)
    {
      v9 = operator new(8 * v8, &std::nothrow);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  sub_9C7C98(v6, v7, v17, v7 - v6, v12, v8);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = **a2;
  v14 = a1[22];
  if (0x823EE08FB823EE09 * ((a1[23] - v14) >> 3) <= v13)
  {
    sub_6FAB4();
  }

  sub_9D6E68(v14 + 456 * v13 + 272, v17);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = *v17;
  *(a3 + 16) = v18;
  HIBYTE(v18) = 0;
  LOBYTE(v17[0]) = 0;
  if (v20 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }
  }

  v15 = *(a3 + 24);
  if (v15)
  {
    *(a3 + 32) = v15;
    operator delete(v15);
  }

  result = *a2;
  *(a3 + 24) = *a2;
  *(a3 + 40) = a2[2];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return result;
}

void sub_9C36A4(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  sub_B8580(v1);
  _Unwind_Resume(a1);
}

void sub_9C36C4(void *a1@<X0>, unint64_t **a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if ((a4 + 24) != a2)
  {
    sub_31F64((a4 + 24), *a2, a2[1], a2[1] - *a2);
  }

  v8 = a2[1] - *a2;
  if (v8 == 8)
  {
    v9 = **a2;
    v10 = a1[22];
    if (0x823EE08FB823EE09 * ((a1[23] - v10) >> 3) <= v9)
    {
      sub_6FAB4();
    }

    v11 = v10 + 456 * v9;
    if (a3)
    {
      if (a3 != 1)
      {
LABEL_16:
        v12 = *(a4 + 23);
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(a4 + 8);
        }

        if (!v12)
        {
          sub_9D6E68(v11 + 144, v13);
          if (*(a4 + 23) < 0)
          {
            operator delete(*a4);
          }

          *a4 = *v13;
          *(a4 + 16) = v14;
          HIBYTE(v14) = 0;
          LOBYTE(v13[0]) = 0;
          if (v16 < 0)
          {
            operator delete(__p);
            if (SHIBYTE(v14) < 0)
            {
              operator delete(v13[0]);
            }
          }
        }

        return;
      }

      sub_9D6E68(v11 + 336, v13);
    }

    else
    {
      sub_9D6E68(v11 + 208, v13);
    }

    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = *v13;
    *(a4 + 16) = v14;
    HIBYTE(v14) = 0;
    LOBYTE(v13[0]) = 0;
    if (v16 < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(v13[0]);
      }
    }

    goto LABEL_16;
  }

  if (v8 >= 9)
  {
    operator new();
  }
}

void sub_9C3A5C(__int128 **a1, void *a2, char **a3)
{
  sub_9C3B8C(a1, a2, &v15);
  v6 = a2[296];
  if (v6)
  {
    a2[297] = v6;
    operator delete(v6);
    a2[296] = 0;
    a2[297] = 0;
    a2[298] = 0;
  }

  v7 = *(&v15 + 1);
  *(a2 + 148) = v15;
  a2[298] = v16;
  sub_2CE7AC(a2 + 296, v7, *a3, a3[1], (a3[1] - *a3) >> 3);
  v8 = a2[296];
  v9 = a2[297];
  *&v15 = a1;
  if (v9 - v8 < 129)
  {
    v14 = 0;
    v10 = 0;
  }

  else
  {
    v10 = v9 - v8;
    while (1)
    {
      v11 = operator new(8 * v10, &std::nothrow);
      if (v11)
      {
        break;
      }

      v12 = v10 >> 1;
      v13 = v10 > 1;
      v10 >>= 1;
      if (!v13)
      {
        v14 = 0;
        v10 = v12;
        goto LABEL_10;
      }
    }

    v14 = v11;
  }

LABEL_10:
  sub_9C9648(v8, v9, &v15, v9 - v8, v14, v10);
  if (v14)
  {
    operator delete(v14);
  }
}

void sub_9C3B74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_9C3B8C(__int128 **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v88 = 0u;
  v89 = 0u;
  v90 = 1065353216;
  sub_A21C90(v87, a2);
  v5 = 0x924924924924924;
  while (1)
  {
    sub_A21CE8(v87, __p);
    v6 = sub_A21B4C(v87, __p);
    sub_98ED24(__p);
    if (!v6)
    {
      break;
    }

    v86 = 0;
    v85 = 0u;
    *__p = 0u;
    memset(v84, 0, sizeof(v84));
    v7 = *sub_A21CB8(v87);
    if (v7 <= 5)
    {
      if (v7 == 2)
      {
        v22 = sub_A21CB8(v87);
        sub_A21730(v87, &v77);
        sub_9C4A38(a1, v22, &v77, __src);
      }

      else
      {
        if (v7 != 4)
        {
          goto LABEL_45;
        }

        sub_A21730(v87, &v77);
        sub_9C507C(&v77, __src);
      }
    }

    else
    {
      switch(v7)
      {
        case 6:
          v9 = sub_A21CB8(v87);
          sub_A21834(v87, 2uLL, &v77);
          sub_9C51E4(a1, v9, &v77, __src);
          break;
        case 7:
          v10 = sub_A21CB8(v87);
          sub_A21730(v87, &v77);
          v82 = 0;
          v81 = 0u;
          *__src = 0u;
          memset(v80, 0, sizeof(v80));
          v11 = *(v10 + 2000);
          v12 = *(v10 + 2008);
          if (v11 == v12)
          {
            v13 = 0;
          }

          else if (**(v78 - 1))
          {
            v13 = 0;
            do
            {
              if (*(v11 + 27))
              {
                if (v13 < v80[0])
                {
                  v14 = *v11;
                  *(v13 + 12) = *(v11 + 12);
                  *v13 = v14;
                  v13 = (v13 + 28);
                }

                else
                {
                  v15 = __src[0];
                  v16 = 0x6DB6DB6DB6DB6DB7 * ((v13 - __src[0]) >> 2);
                  v17 = v16 + 1;
                  if ((v16 + 1) > 0x924924924924924)
                  {
                    sub_1794();
                  }

                  if (0xDB6DB6DB6DB6DB6ELL * ((v80[0] - __src[0]) >> 2) > v17)
                  {
                    v17 = 0xDB6DB6DB6DB6DB6ELL * ((v80[0] - __src[0]) >> 2);
                  }

                  if ((0x6DB6DB6DB6DB6DB7 * ((v80[0] - __src[0]) >> 2)) < 0x492492492492492)
                  {
                    v5 = v17;
                  }

                  if (v5)
                  {
                    if (v5 <= 0x924924924924924)
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v18 = v13;
                  v19 = (4 * ((v13 - __src[0]) >> 2));
                  v20 = *v11;
                  *(v19 + 12) = *(v11 + 12);
                  *v19 = v20;
                  v13 = (28 * v16 + 28);
                  v21 = (28 * v16 - (v18 - v15));
                  memcpy(v19 - (v18 - v15), v15, v18 - v15);
                  __src[0] = v21;
                  __src[1] = v13;
                  v80[0] = 0;
                  if (v15)
                  {
                    operator delete(v15);
                  }

                  v5 = 0x924924924924924;
                }

                __src[1] = v13;
              }

              v11 = (v11 + 28);
            }

            while (v11 != v12);
          }

          else
          {
            v13 = 0;
            do
            {
              while (v13 < v80[0])
              {
                v66 = *v11;
                *(v13 + 12) = *(v11 + 12);
                *v13 = v66;
                v13 = (v13 + 28);
                __src[1] = v13;
                v11 = (v11 + 28);
                if (v11 == v12)
                {
                  goto LABEL_174;
                }
              }

              v67 = __src[0];
              v68 = 0x6DB6DB6DB6DB6DB7 * ((v13 - __src[0]) >> 2);
              v69 = v68 + 1;
              if ((v68 + 1) > 0x924924924924924)
              {
                sub_1794();
              }

              if (0xDB6DB6DB6DB6DB6ELL * ((v80[0] - __src[0]) >> 2) > v69)
              {
                v69 = 0xDB6DB6DB6DB6DB6ELL * ((v80[0] - __src[0]) >> 2);
              }

              if ((0x6DB6DB6DB6DB6DB7 * ((v80[0] - __src[0]) >> 2)) < 0x492492492492492)
              {
                v5 = v69;
              }

              if (v5)
              {
                if (v5 <= 0x924924924924924)
                {
                  operator new();
                }

                sub_1808();
              }

              v70 = v13;
              v71 = (4 * ((v13 - __src[0]) >> 2));
              v72 = *v11;
              *(v71 + 12) = *(v11 + 12);
              *v71 = v72;
              v13 = (28 * v68 + 28);
              v73 = (28 * v68 - (v70 - v67));
              memcpy(v71 - (v70 - v67), v67, v70 - v67);
              __src[0] = v73;
              __src[1] = v13;
              v80[0] = 0;
              if (v67)
              {
                operator delete(v67);
              }

              v5 = 0x924924924924924;
              __src[1] = v13;
              v11 = (v11 + 28);
            }

            while (v11 != v12);
          }

LABEL_174:
          sub_981D00(&v80[1], v80[2], __src[0], v13, 0x6DB6DB6DB6DB6DB7 * ((v13 - __src[0]) >> 2));
          v23 = __p[0];
          if (!__p[0])
          {
            goto LABEL_35;
          }

LABEL_34:
          __p[1] = v23;
          operator delete(v23);
          goto LABEL_35;
        case 8:
          v8 = sub_A21CB8(v87);
          sub_A21730(v87, &v77);
          sub_9C4DBC(v8, &v77, __src);
          break;
        default:
          goto LABEL_45;
      }
    }

    v23 = __p[0];
    if (__p[0])
    {
      goto LABEL_34;
    }

LABEL_35:
    *__p = *__src;
    v84[0] = v80[0];
    __src[1] = 0;
    v80[0] = 0;
    __src[0] = 0;
    if (v84[1])
    {
      v84[2] = v84[1];
      operator delete(v84[1]);
    }

    *&v84[1] = *&v80[1];
    v84[3] = v80[3];
    memset(&v80[1], 0, 24);
    v24 = v85;
    if (v85)
    {
      *(&v85 + 1) = v85;
      operator delete(v85);
      v24 = v80[1];
    }

    v85 = v81;
    v86 = v82;
    v82 = 0;
    v81 = 0uLL;
    if (v24)
    {
      v80[2] = v24;
      operator delete(v24);
    }

    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }

    if (v77)
    {
      v78 = v77;
      operator delete(v77);
    }

LABEL_45:
    if (__p[0] == __p[1])
    {
      goto LABEL_83;
    }

    sub_9C47F0(a1, __p, &v77);
    sub_9C36C4(a1, &v77, 1u, __src);
    v25 = sub_9C70F4(a1 + 25, __src);
    if (v25)
    {
      v26 = v25[8];
    }

    else
    {
      v27 = a1[31];
      v91[0] = 0xAAAAAAAAAAAAAAABLL * ((v27 - a1[30]) >> 4);
      if (v27 >= a1[32])
      {
        v28 = sub_9C73E8(a1 + 30, __src);
      }

      else
      {
        sub_9C75AC(v27, __src);
        v28 = v27 + 48;
        a1[31] = (v27 + 48);
      }

      a1[31] = v28;
      sub_9C7720(a1 + 25, __src, __src, v91);
      v26 = v91[0];
    }

    *(sub_A21CB8(v87) + 1992) = v26;
    v30 = v77;
    v29 = v78;
    while (v30 != v29)
    {
      v31 = *v30;
      v91[0] = *v30;
      if (*(&v88 + 1))
      {
        v32 = vcnt_s8(*(&v88 + 8));
        v32.i16[0] = vaddlv_u8(v32);
        if (v32.u32[0] > 1uLL)
        {
          v33 = v31;
          if (*(&v88 + 1) <= v31)
          {
            v33 = v31 % *(&v88 + 1);
          }
        }

        else
        {
          v33 = (*(&v88 + 1) - 1) & v31;
        }

        v34 = *(v88 + 8 * v33);
        if (v34)
        {
          v35 = *v34;
          if (v35)
          {
            if (v32.u32[0] < 2uLL)
            {
              while (1)
              {
                v36 = v35[1];
                if (v36 == v31)
                {
                  if (v35[2] == v31)
                  {
                    goto LABEL_53;
                  }
                }

                else if ((v36 & (*(&v88 + 1) - 1)) != v33)
                {
                  goto LABEL_75;
                }

                v35 = *v35;
                if (!v35)
                {
                  goto LABEL_75;
                }
              }
            }

            do
            {
              v37 = v35[1];
              if (v37 == v31)
              {
                if (v35[2] == v31)
                {
                  goto LABEL_53;
                }
              }

              else
              {
                if (v37 >= *(&v88 + 1))
                {
                  v37 %= *(&v88 + 1);
                }

                if (v37 != v33)
                {
                  break;
                }
              }

              v35 = *v35;
            }

            while (v35);
          }
        }
      }

LABEL_75:
      sub_9C6938(&v88, v91, v91);
      sub_2512DC(a3, v30);
LABEL_53:
      ++v30;
    }

    v38 = (sub_A21CB8(v87) + 3448);
    if (v38 != &v77)
    {
      sub_31F64(v38, v77, v78, (v78 - v77) >> 3);
    }

    if (v80[1])
    {
      v80[2] = v80[1];
      operator delete(v80[1]);
    }

    if ((SHIBYTE(v80[0]) & 0x80000000) == 0)
    {
      v39 = v77;
      if (!v77)
      {
        goto LABEL_83;
      }

LABEL_82:
      v78 = v39;
      operator delete(v39);
      goto LABEL_83;
    }

    operator delete(__src[0]);
    v39 = v77;
    if (v77)
    {
      goto LABEL_82;
    }

LABEL_83:
    if (v84[1] == v84[2])
    {
      goto LABEL_123;
    }

    sub_9C47F0(a1, &v84[1], &v77);
    sub_9C36C4(a1, &v77, 1u, __src);
    v40 = sub_9C70F4(a1 + 25, __src);
    if (v40)
    {
      v41 = v40[8];
    }

    else
    {
      v42 = a1[31];
      v91[0] = 0xAAAAAAAAAAAAAAABLL * ((v42 - a1[30]) >> 4);
      if (v42 >= a1[32])
      {
        v43 = sub_9C73E8(a1 + 30, __src);
      }

      else
      {
        sub_9C75AC(v42, __src);
        v43 = v42 + 48;
        a1[31] = (v42 + 48);
      }

      a1[31] = v43;
      sub_9C7720(a1 + 25, __src, __src, v91);
      v41 = v91[0];
    }

    *(sub_A21CB8(v87) + 1984) = v41;
    v45 = v77;
    v44 = v78;
    while (v45 != v44)
    {
      v46 = *v45;
      v91[0] = *v45;
      if (*(&v88 + 1))
      {
        v47 = vcnt_s8(*(&v88 + 8));
        v47.i16[0] = vaddlv_u8(v47);
        if (v47.u32[0] > 1uLL)
        {
          v48 = v46;
          if (*(&v88 + 1) <= v46)
          {
            v48 = v46 % *(&v88 + 1);
          }
        }

        else
        {
          v48 = (*(&v88 + 1) - 1) & v46;
        }

        v49 = *(v88 + 8 * v48);
        if (v49)
        {
          v50 = *v49;
          if (v50)
          {
            if (v47.u32[0] < 2uLL)
            {
              while (1)
              {
                v52 = v50[1];
                if (v52 == v46)
                {
                  if (v50[2] == v46)
                  {
                    goto LABEL_93;
                  }
                }

                else if ((v52 & (*(&v88 + 1) - 1)) != v48)
                {
                  goto LABEL_115;
                }

                v50 = *v50;
                if (!v50)
                {
                  goto LABEL_115;
                }
              }
            }

            do
            {
              v51 = v50[1];
              if (v51 == v46)
              {
                if (v50[2] == v46)
                {
                  goto LABEL_93;
                }
              }

              else
              {
                if (v51 >= *(&v88 + 1))
                {
                  v51 %= *(&v88 + 1);
                }

                if (v51 != v48)
                {
                  break;
                }
              }

              v50 = *v50;
            }

            while (v50);
          }
        }
      }

LABEL_115:
      sub_9C6938(&v88, v91, v91);
      sub_2512DC(a3, v45);
LABEL_93:
      ++v45;
    }

    v53 = (sub_A21CB8(v87) + 3472);
    if (v53 != &v77)
    {
      sub_31F64(v53, v77, v78, (v78 - v77) >> 3);
    }

    if (v80[1])
    {
      v80[2] = v80[1];
      operator delete(v80[1]);
    }

    if ((SHIBYTE(v80[0]) & 0x80000000) == 0)
    {
      v54 = v77;
      if (!v77)
      {
        goto LABEL_123;
      }

LABEL_122:
      v78 = v54;
      operator delete(v54);
      goto LABEL_123;
    }

    operator delete(__src[0]);
    v54 = v77;
    if (v77)
    {
      goto LABEL_122;
    }

LABEL_123:
    v55 = v85;
    if (v85 != *(&v85 + 1))
    {
      sub_9C47F0(a1, &v85, __src);
      v57 = __src[0];
      v56 = __src[1];
      if (__src[0] != __src[1])
      {
        v58 = __src[0];
        do
        {
          v59 = *v58;
          v77 = *v58;
          if (*(&v88 + 1))
          {
            v60 = vcnt_s8(*(&v88 + 8));
            v60.i16[0] = vaddlv_u8(v60);
            if (v60.u32[0] > 1uLL)
            {
              v61 = v59;
              if (*(&v88 + 1) <= v59)
              {
                v61 = v59 % *(&v88 + 1);
              }
            }

            else
            {
              v61 = (*(&v88 + 1) - 1) & v59;
            }

            v62 = *(v88 + 8 * v61);
            if (v62)
            {
              v63 = *v62;
              if (v63)
              {
                if (v60.u32[0] < 2uLL)
                {
                  while (1)
                  {
                    v65 = v63[1];
                    if (v65 == v59)
                    {
                      if (v63[2] == v59)
                      {
                        goto LABEL_147;
                      }
                    }

                    else if ((v65 & (*(&v88 + 1) - 1)) != v61)
                    {
                      goto LABEL_146;
                    }

                    v63 = *v63;
                    if (!v63)
                    {
                      goto LABEL_146;
                    }
                  }
                }

                do
                {
                  v64 = v63[1];
                  if (v64 == v59)
                  {
                    if (v63[2] == v59)
                    {
                      goto LABEL_147;
                    }
                  }

                  else
                  {
                    if (v64 >= *(&v88 + 1))
                    {
                      v64 %= *(&v88 + 1);
                    }

                    if (v64 != v61)
                    {
                      break;
                    }
                  }

                  v63 = *v63;
                }

                while (v63);
              }
            }
          }

LABEL_146:
          sub_9C6938(&v88, &v77, &v77);
          sub_2512DC(a3, v58);
LABEL_147:
          ++v58;
        }

        while (v58 != v56);
      }

      if (v57)
      {
        operator delete(v57);
      }

      v55 = v85;
    }

    if (v55)
    {
      *(&v85 + 1) = v55;
      operator delete(v55);
    }

    if (v84[1])
    {
      v84[2] = v84[1];
      operator delete(v84[1]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    sub_A21708(v87);
  }

  sub_98ED24(v87);
  v74 = v89;
  if (v89)
  {
    do
    {
      v75 = *v74;
      operator delete(v74);
      v74 = v75;
    }

    while (v75);
  }

  v76 = v88;
  *&v88 = 0;
  if (v76)
  {
    operator delete(v76);
  }
}

void sub_9C46D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  sub_11BD8(v43 - 144);
  v45 = *v42;
  if (*v42)
  {
    *(v42 + 8) = v45;
    operator delete(v45);
  }

  _Unwind_Resume(a1);
}

void sub_9C47F0(uint64_t a1@<X0>, unsigned int **a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(*a1 + 11688);
      v10 = *v3;
      if (*(v3 + 4) == 1)
      {
        v12 = v9[1];
        v11 = v9[2];
      }

      else
      {
        v12 = v9[4];
        v11 = v9[5];
      }

      if (0x823EE08FB823EE09 * ((v11 - v12) >> 3) <= v10)
      {
        sub_6FAB4();
      }

      v13 = sub_9C6C6C((a1 + 136), v3);
      if (v13)
      {
        v14 = v13[3];
        if (v8 >= v7)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v15 = v12 + 456 * v10;
        v16 = *(a1 + 184);
        v23 = 0x823EE08FB823EE09 * ((v16 - *(a1 + 176)) >> 3);
        if (v16 >= *(a1 + 192))
        {
          v17 = sub_399DB8((a1 + 176), v15);
        }

        else
        {
          sub_39A0FC(v16, v15);
          v17 = (v16 + 456);
          *(a1 + 184) = v16 + 456;
        }

        *(a1 + 184) = v17;
        sub_9C6D84((a1 + 136), v3, v3, &v23);
        v14 = v23;
        v8 = a3[1];
        v7 = a3[2];
        if (v8 >= v7)
        {
LABEL_16:
          v18 = *a3;
          v19 = v8 - *a3;
          v20 = (v19 >> 3) + 1;
          if (v20 >> 61)
          {
            sub_1794();
          }

          if ((v7 - v18) >> 2 > v20)
          {
            v20 = (v7 - v18) >> 2;
          }

          if ((v7 - v18) >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            if (!(v21 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v22 = (8 * (v19 >> 3));
          v7 = 0;
          *v22 = v14;
          v8 = v22 + 1;
          memcpy(0, v18, v19);
          *a3 = 0;
          a3[2] = 0;
          if (v18)
          {
            operator delete(v18);
          }

          goto LABEL_4;
        }
      }

      *v8++ = v14;
LABEL_4:
      a3[1] = v8;
      v3 += 7;
    }

    while (v3 != v4);
  }
}

void sub_9C4A08(_Unwind_Exception *exception_object)
{
  *(v2 + 184) = v3;
  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_9C4A38(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v7 = a3[1];
  if (v7 == *a3 || (v8 = *(v7 - 8), *v8 != 6) && (v7 - 8 == *a3 || (v8 = *(v7 - 16), *v8 != 6)))
  {
    v11 = 1;
    v12 = *(a2 + 2000);
    v13 = *(a2 + 2008);
    if (v12 == v13)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  if (*(*(a1 + 16) + 1444) >= 2u)
  {
    v9 = *(v8 + 2000);
    v10 = *(v8 + 2008);
    if (v9 != v10)
    {
      do
      {
        if (*(v9 + 27) == 1)
        {
          sub_981B9C(a4 + 24, v9);
        }

        v9 += 28;
      }

      while (v9 != v10);
      v14 = *(v8 + 2000);
      for (i = *(v8 + 2008); v14 != i; v14 += 28)
      {
        if (*(v14 + 27) == 1)
        {
          sub_981B9C(a4, v14);
        }
      }
    }
  }

  v11 = 0;
  v12 = *(a2 + 2000);
  v13 = *(a2 + 2008);
  if (v12 != v13)
  {
    do
    {
LABEL_19:
      if (((*(v12 + 24) & 1) != 0 || (*(v12 + 25) & 1) != 0 || *(v12 + 26) == 1) && (*(v12 + 19) != 1 || (*(v12 + 21) & 1) != 0 || (*(v12 + 17) & 1) != 0 || (*(v12 + 20) & 1) != 0 || (*(v12 + 18) & 1) != 0 || (*(v12 + 22) & 1) != 0 || *(v12 + 16) == 1))
      {
        sub_981B9C(a4 + 24, v12);
      }

      v12 += 28;
    }

    while (v12 != v13);
    v12 = *(a2 + 2000);
    v13 = *(a2 + 2008);
    if (v12 == v13)
    {
      goto LABEL_53;
    }

    while (1)
    {
LABEL_37:
      if (((*(*(a1 + 16) + 1444) < 2u) & ~v11) != 0)
      {
        if (*(v12 + 24))
        {
          goto LABEL_36;
        }
      }

      else if (*(v12 + 24))
      {
        goto LABEL_43;
      }

      if ((*(v12 + 25) & 1) != 0 || *(v12 + 26) == 1)
      {
LABEL_43:
        if (*(v12 + 19) != 1 || (*(v12 + 21) & 1) != 0 || (*(v12 + 17) & 1) != 0 || (*(v12 + 20) & 1) != 0 || (*(v12 + 18) & 1) != 0 || (*(v12 + 22) & 1) != 0 || *(v12 + 16) == 1)
        {
          sub_981B9C(a4, v12);
        }
      }

LABEL_36:
      v12 += 28;
      if (v12 == v13)
      {
        v12 = *(a2 + 2000);
        v13 = *(a2 + 2008);
        goto LABEL_53;
      }
    }
  }

LABEL_15:
  if (v12 != v13)
  {
    goto LABEL_37;
  }

LABEL_53:
  while (v12 != v13)
  {
    if (*(v12 + 19) == 1 && (*(v12 + 21) & 1) == 0 && (*(v12 + 17) & 1) == 0 && (*(v12 + 20) & 1) == 0 && (*(v12 + 18) & 1) == 0 && (*(v12 + 22) & 1) == 0 && (*(v12 + 16) & 1) == 0)
    {
      sub_981B9C(a4 + 48, v12);
    }

    v12 += 28;
  }
}

uint64_t sub_9C4D68(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_9C4DBC(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v6 = *a2;
  v5 = a2[1];
  while (v5 != v6)
  {
    v8 = *(v5 - 8);
    v5 -= 8;
    v7 = v8;
    v9 = *v8;
    if (*v8 == 8 || v9 == 2)
    {
      goto LABEL_10;
    }
  }

  v7 = *(v6 - 8);
LABEL_10:
  __p = 0;
  v19 = 0;
  v20 = 0;
  v11 = *(v7 + 251);
  v12 = *(v7 + 250);
  if (v11 != v12)
  {
    if (!((0x6DB6DB6DB6DB6DB7 * ((v11 - v12) >> 2)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  p_p = &__p;
  v13 = *(a1 + 2000);
  v14 = *(a1 + 2008);
  while (v13 != v14)
  {
    if (*(v13 + 23) != 1 || (*(v13 + 24) & 1) != 0 || (*(v13 + 25) & 1) != 0 || *(v13 + 26) == 1) && (*(v13 + 19) != 1 || (*(v13 + 21) & 1) != 0 || (*(v13 + 17) & 1) != 0 || (*(v13 + 20) & 1) != 0 || (*(v13 + 18) & 1) != 0 || (*(v13 + 22) & 1) != 0 || (*(v13 + 16)))
    {
      v15 = __p;
      if (__p != v19)
      {
        while (*v15 != *v13 || *(v15 + 4) != *(v13 + 4))
        {
          v15 += 2;
          if (v15 == v19)
          {
            goto LABEL_14;
          }
        }
      }

      if (v15 == v19)
      {
LABEL_14:
        sub_981B9C(a3, v13);
      }
    }

    v13 += 28;
  }

  sub_981D00((a3 + 24), *(a3 + 32), *a3, *(a3 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 8) - *a3) >> 2));
  v16 = *(a1 + 2000);
  v17 = *(a1 + 2008);
  while (v16 != v17)
  {
    if (*(v16 + 19) == 1 && (*(v16 + 21) & 1) == 0 && (*(v16 + 17) & 1) == 0 && (*(v16 + 20) & 1) == 0 && (*(v16 + 18) & 1) == 0 && (*(v16 + 22) & 1) == 0 && (*(v16 + 16) & 1) == 0)
    {
      sub_981B9C(a3 + 48, v16);
    }

    v16 += 28;
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

void sub_9C5038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_9C4D68(v11);
  _Unwind_Resume(a1);
}

char *sub_9C507C@<X0>(uint64_t *a1@<X1>, __int128 *a2@<X8>)
{
  *(a2 + 8) = 0;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v4 = *a1;
  v3 = a1[1];
  while (v3 != v4)
  {
    v6 = *(v3 - 8);
    v3 -= 8;
    v5 = v6;
    v7 = *v6;
    if (*v6 == 8 || v7 == 2)
    {
      v9 = *(v5 + 250);
      v10 = *(v5 + 251);
      if (v9 == v10)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  v11 = *(v4 - 8);
  v9 = *(v11 + 2000);
  v10 = *(v11 + 2008);
  if (v9 == v10)
  {
LABEL_11:
    v12 = 0;
    v13 = 0uLL;
    return sub_981D00(a2 + 3, v12, v13, *(&v13 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v13 + 1) - v13) >> 2));
  }

  do
  {
LABEL_14:
    if (*(v9 + 23) == 1 && (*(v9 + 24) & 1) == 0 && (*(v9 + 25) & 1) == 0 && (*(v9 + 26) & 1) == 0 && (*(v9 + 19) != 1 || (*(v9 + 21) & 1) != 0 || (*(v9 + 17) & 1) != 0 || (*(v9 + 20) & 1) != 0 || (*(v9 + 18) & 1) != 0 || (*(v9 + 22) & 1) != 0 || *(v9 + 16) == 1))
    {
      sub_981B9C(a2, v9);
    }

    v9 += 28;
  }

  while (v9 != v10);
  v12 = *(a2 + 4);
  v13 = *a2;
  return sub_981D00(a2 + 3, v12, v13, *(&v13 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v13 + 1) - v13) >> 2));
}

void sub_9C51E4(uint64_t a1@<X0>, uint64_t a2@<X1>, int ***a3@<X2>, size_t *a4@<X8>)
{
  if (*(*(a1 + 16) + 1444) >= 2u)
  {
    a4[8] = 0;
    *(a4 + 2) = 0u;
    *(a4 + 3) = 0u;
    *a4 = 0u;
    *(a4 + 1) = 0u;
  }

  else
  {
    v5 = *a3;
    v6 = *(a2 + 2000);
    v7 = *(a2 + 2008);
    if (v6 == v7)
    {
      v8 = 0;
      v9 = 0;
      v18 = a3[1];
      if (v5 != v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = **v5;
      do
      {
        if (v10 == 9 || (*(v6 + 27) & 1) != 0)
        {
          v11 = v8 - v9;
          v12 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v9) >> 2);
          v13 = v12 + 1;
          if ((v12 + 1) > 0x924924924924924)
          {
            sub_1794();
          }

          if (0xDB6DB6DB6DB6DB6ELL * (-v9 >> 2) > v13)
          {
            v13 = 0xDB6DB6DB6DB6DB6ELL * (-v9 >> 2);
          }

          if ((0x6DB6DB6DB6DB6DB7 * (-v9 >> 2)) >= 0x492492492492492)
          {
            v14 = 0x924924924924924;
          }

          else
          {
            v14 = v13;
          }

          if (v14)
          {
            if (v14 <= 0x924924924924924)
            {
              operator new();
            }

            sub_1808();
          }

          v15 = 28 * v12;
          v16 = *v6;
          *(v15 + 12) = *(v6 + 12);
          *v15 = v16;
          v8 = (28 * v12 + 28);
          v17 = (v15 + 28 * (v11 / -28));
          memcpy(v17, v9, v11);
          if (v9)
          {
            operator delete(v9);
          }

          v9 = v17;
        }

        v6 = (v6 + 28);
      }

      while (v6 != v7);
      v5 = *a3;
      v18 = a3[1];
      if (*a3 != v18)
      {
LABEL_23:
        while (**v5 != 2)
        {
          if (++v5 == v18)
          {
            goto LABEL_50;
          }
        }
      }
    }

    if (v5 == v18 || (v19 = *v5, v20 = *(v19 + 250), v21 = *(v19 + 251), v20 == v21))
    {
LABEL_50:
      v23 = 0;
      v22 = 0;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      do
      {
        if (*(v20 + 24) == 1 && (*(v20 + 19) != 1 || (*(v20 + 21) & 1) != 0 || (*(v20 + 17) & 1) != 0 || (*(v20 + 20) & 1) != 0 || (*(v20 + 18) & 1) != 0 || (*(v20 + 22) & 1) != 0 || *(v20 + 16) == 1))
        {
          v24 = v22 - v23;
          v25 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v23) >> 2);
          v26 = v25 + 1;
          if ((v25 + 1) > 0x924924924924924)
          {
            sub_1794();
          }

          if (0xDB6DB6DB6DB6DB6ELL * (-v23 >> 2) > v26)
          {
            v26 = 0xDB6DB6DB6DB6DB6ELL * (-v23 >> 2);
          }

          if ((0x6DB6DB6DB6DB6DB7 * (-v23 >> 2)) >= 0x492492492492492)
          {
            v27 = 0x924924924924924;
          }

          else
          {
            v27 = v26;
          }

          if (v27)
          {
            if (v27 <= 0x924924924924924)
            {
              operator new();
            }

            sub_1808();
          }

          v28 = 28 * v25;
          v29 = *v20;
          *(v28 + 12) = *(v20 + 12);
          *v28 = v29;
          v22 = (28 * v25 + 28);
          v30 = (v28 + 28 * (v24 / -28));
          memcpy(v30, v23, v24);
          if (v23)
          {
            operator delete(v23);
          }

          v23 = v30;
        }

        v20 = (v20 + 28);
      }

      while (v20 != v21);
    }

    a4[8] = 0;
    *(a4 + 2) = 0u;
    *(a4 + 3) = 0u;
    *a4 = 0u;
    *(a4 + 1) = 0u;
    v31 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v9) >> 2);
    sub_981D00(a4 + 3, 0, v9, v8, v31);
    v33 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v23) >> 2);
    if (0x6DB6DB6DB6DB6DB7 * ((a4[2] - *a4) >> 2) < (v33 + v31))
    {
      if ((v33 + v31) <= 0x924924924924924)
      {
        operator new();
      }

      sub_1794();
    }

    sub_981D00(a4, a4[1], v9, v8, v31);
    sub_981D00(a4, a4[1], v23, v22, v33);
    if (v23)
    {
      operator delete(v23);
    }

    if (v9)
    {

      operator delete(v9);
    }
  }
}

void sub_9C572C(_Unwind_Exception *a1)
{
  sub_9C4D68(v2);
  if (v3)
  {
    operator delete(v3);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_9C5794(uint64_t a1)
{
  v1 = *(a1 + 424);
  v2 = *(a1 + 432);
  if (v1 != v2)
  {
    v3 = v1 + 16;
    LODWORD(v4) = -1;
    while (1)
    {
      v5 = v3 - 16;
      v10 = *(v3 - 8);
      LOBYTE(v11[0]) = 0;
      v16 = 0;
      v6 = *(v3 + 80);
      if (v6 == 1)
      {
        sub_398970(v11, v3);
        v16 = 1;
      }

      v7 = v10 - 1;
      if (v10 - 1) < 7 && ((0x77u >> v7))
      {
        v8 = dword_22A5D04[v7];
        if (v6)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v10 == 4)
        {
          v8 = 14;
        }

        else
        {
          v8 = 0;
        }

        if (v6)
        {
LABEL_17:
          if (__p)
          {
            v15 = __p;
            operator delete(__p);
          }

          if (v12)
          {
            v13 = v12;
            operator delete(v12);
          }

          if (v11[0])
          {
            v11[1] = v11[0];
            operator delete(v11[0]);
          }
        }
      }

      if (v8 <= v4)
      {
        v4 = v4;
      }

      else
      {
        v4 = v8;
      }

      v3 += 104;
      if (v5 + 104 == v2)
      {
        return v4;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void **sub_9C58D8(void **result, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x823EE08FB823EE09 * ((v7 - *result) >> 3) < a4)
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
          v10 = sub_399184(v10 - 456);
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

    if (a4 <= 0x8FB823EE08FB82)
    {
      v12 = 0x823EE08FB823EE09 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x47DC11F7047DC1)
      {
        v14 = 0x8FB823EE08FB82;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x8FB823EE08FB82)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = &v15[-v8];
  if (0x823EE08FB823EE09 * (&v15[-v8] >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_9C5B78(v8, v5);
        v5 += 456;
        v8 += 456;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 456;
      result = sub_399184(v15);
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
        result = sub_9C5B78(v8, v5);
        v5 += 456;
        v8 += 456;
        v16 -= 456;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_39A0FC(&v15[v19], &v17[v19]);
        v19 += 456;
      }

      while (&v17[v19] != a3);
      v18 = &v15[v19];
    }

    v6[1] = v18;
  }

  return result;
}

void sub_9C5B4C(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 456;
    v7 = -v4;
    do
    {
      v6 = sub_399184(v6) - 456;
      v7 += 456;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_9C5B78(uint64_t result, void *a2)
{
  v3 = result;
  *result = *a2;
  if (result == a2)
  {
    *(result + 40) = *(a2 + 5);
    *(result + 104) = *(a2 + 13);
    *(result + 168) = *(a2 + 21);
    *(result + 232) = *(a2 + 29);
    *(result + 296) = *(a2 + 37);
    *(result + 360) = *(a2 + 45);
    v6 = *(a2 + 25);
    *(result + 416) = a2[52];
    *(result + 400) = v6;
    *(result + 448) = *(a2 + 224);
  }

  else
  {
    v4 = *(a2 + 39);
    if (*(result + 39) < 0)
    {
      if (v4 >= 0)
      {
        v7 = a2 + 2;
      }

      else
      {
        v7 = a2[2];
      }

      if (v4 >= 0)
      {
        v8 = *(a2 + 39);
      }

      else
      {
        v8 = a2[3];
      }

      sub_13B38((result + 16), v7, v8);
    }

    else if ((*(a2 + 39) & 0x80) != 0)
    {
      sub_13A68((result + 16), a2[2], a2[3]);
    }

    else
    {
      v5 = *(a2 + 1);
      *(result + 32) = a2[4];
      *(result + 16) = v5;
    }

    *(v3 + 40) = *(a2 + 5);
    sub_398424((v3 + 56), a2[7], a2[8], (a2[8] - a2[7]) >> 5);
    v9 = *(a2 + 103);
    if (*(v3 + 103) < 0)
    {
      if (v9 >= 0)
      {
        v11 = a2 + 10;
      }

      else
      {
        v11 = a2[10];
      }

      if (v9 >= 0)
      {
        v12 = *(a2 + 103);
      }

      else
      {
        v12 = a2[11];
      }

      sub_13B38((v3 + 80), v11, v12);
    }

    else if ((*(a2 + 103) & 0x80) != 0)
    {
      sub_13A68((v3 + 80), a2[10], a2[11]);
    }

    else
    {
      v10 = *(a2 + 5);
      *(v3 + 96) = a2[12];
      *(v3 + 80) = v10;
    }

    *(v3 + 104) = *(a2 + 13);
    sub_398424((v3 + 120), a2[15], a2[16], (a2[16] - a2[15]) >> 5);
    v13 = *(a2 + 167);
    if (*(v3 + 167) < 0)
    {
      if (v13 >= 0)
      {
        v15 = a2 + 18;
      }

      else
      {
        v15 = a2[18];
      }

      if (v13 >= 0)
      {
        v16 = *(a2 + 167);
      }

      else
      {
        v16 = a2[19];
      }

      sub_13B38((v3 + 144), v15, v16);
    }

    else if ((*(a2 + 167) & 0x80) != 0)
    {
      sub_13A68((v3 + 144), a2[18], a2[19]);
    }

    else
    {
      v14 = *(a2 + 9);
      *(v3 + 160) = a2[20];
      *(v3 + 144) = v14;
    }

    *(v3 + 168) = *(a2 + 21);
    sub_398424((v3 + 184), a2[23], a2[24], (a2[24] - a2[23]) >> 5);
    v17 = *(a2 + 231);
    if (*(v3 + 231) < 0)
    {
      if (v17 >= 0)
      {
        v19 = a2 + 26;
      }

      else
      {
        v19 = a2[26];
      }

      if (v17 >= 0)
      {
        v20 = *(a2 + 231);
      }

      else
      {
        v20 = a2[27];
      }

      sub_13B38((v3 + 208), v19, v20);
    }

    else if ((*(a2 + 231) & 0x80) != 0)
    {
      sub_13A68((v3 + 208), a2[26], a2[27]);
    }

    else
    {
      v18 = *(a2 + 13);
      *(v3 + 224) = a2[28];
      *(v3 + 208) = v18;
    }

    *(v3 + 232) = *(a2 + 29);
    sub_398424((v3 + 248), a2[31], a2[32], (a2[32] - a2[31]) >> 5);
    v21 = *(a2 + 295);
    if (*(v3 + 295) < 0)
    {
      if (v21 >= 0)
      {
        v23 = a2 + 34;
      }

      else
      {
        v23 = a2[34];
      }

      if (v21 >= 0)
      {
        v24 = *(a2 + 295);
      }

      else
      {
        v24 = a2[35];
      }

      sub_13B38((v3 + 272), v23, v24);
    }

    else if ((*(a2 + 295) & 0x80) != 0)
    {
      sub_13A68((v3 + 272), a2[34], a2[35]);
    }

    else
    {
      v22 = *(a2 + 17);
      *(v3 + 288) = a2[36];
      *(v3 + 272) = v22;
    }

    *(v3 + 296) = *(a2 + 37);
    sub_398424((v3 + 312), a2[39], a2[40], (a2[40] - a2[39]) >> 5);
    v25 = *(a2 + 359);
    if (*(v3 + 359) < 0)
    {
      if (v25 >= 0)
      {
        v27 = a2 + 42;
      }

      else
      {
        v27 = a2[42];
      }

      if (v25 >= 0)
      {
        v28 = *(a2 + 359);
      }

      else
      {
        v28 = a2[43];
      }

      sub_13B38((v3 + 336), v27, v28);
    }

    else if ((*(a2 + 359) & 0x80) != 0)
    {
      sub_13A68((v3 + 336), a2[42], a2[43]);
    }

    else
    {
      v26 = *(a2 + 21);
      *(v3 + 352) = a2[44];
      *(v3 + 336) = v26;
    }

    *(v3 + 360) = *(a2 + 45);
    sub_398424((v3 + 376), a2[47], a2[48], (a2[48] - a2[47]) >> 5);
    v29 = *(a2 + 25);
    *(v3 + 416) = a2[52];
    *(v3 + 400) = v29;
    sub_9C5F08((v3 + 424), a2[53], a2[54], 0x4EC4EC4EC4EC4EC5 * ((a2[54] - a2[53]) >> 3));
    *(v3 + 448) = *(a2 + 224);
    return v3;
  }

  return result;
}

void sub_9C5F08(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          if (*(v10 - 8) == 1)
          {
            v12 = *(v10 - 32);
            if (v12)
            {
              *(v10 - 24) = v12;
              operator delete(v12);
            }

            v13 = *(v10 - 56);
            if (v13)
            {
              *(v10 - 48) = v13;
              operator delete(v13);
            }

            v14 = *(v10 - 88);
            if (v14)
            {
              *(v10 - 80) = v14;
              operator delete(v14);
            }
          }

          v10 -= 104;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x276276276276276)
    {
      v28 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 3);
      v29 = 2 * v28;
      if (2 * v28 <= a4)
      {
        v29 = a4;
      }

      if (v28 >= 0x13B13B13B13B13BLL)
      {
        v30 = 0x276276276276276;
      }

      else
      {
        v30 = v29;
      }

      if (v30 <= 0x276276276276276)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  if (0x4EC4EC4EC4EC4EC5 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v24 = *v5;
        *(v8 + 8) = *(v5 + 2);
        *v8 = v24;
        sub_9C62E0(v8 + 16, (v5 + 2));
        v8 += 104;
        v5 += 13;
      }

      while (v5 != a3);
      v15 = a1[1];
    }

    while (v15 != v8)
    {
      if (*(v15 - 8) == 1)
      {
        v25 = *(v15 - 32);
        if (v25)
        {
          *(v15 - 24) = v25;
          operator delete(v25);
        }

        v26 = *(v15 - 56);
        if (v26)
        {
          *(v15 - 48) = v26;
          operator delete(v26);
        }

        v27 = *(v15 - 88);
        if (v27)
        {
          *(v15 - 80) = v27;
          operator delete(v27);
        }
      }

      v15 -= 104;
    }

    a1[1] = v8;
  }

  else
  {
    v16 = (a2 + v15 - v8);
    v17 = v15 - v8;
    if (v15 != v8)
    {
      v18 = a2;
      do
      {
        v19 = *v18;
        *(v8 + 8) = *(v18 + 2);
        *v8 = v19;
        sub_9C62E0(v8 + 16, (v18 + 2));
        v18 += 13;
        v8 += 104;
      }

      while (v18 != v16);
      v15 = a1[1];
    }

    v31 = v15;
    v20 = v15;
    if (v16 != a3)
    {
      v21 = v5 + v17 + 16;
      v20 = v15;
      do
      {
        v23 = v21 - 16;
        v22 = *(v21 - 16);
        *(v20 + 8) = *(v21 - 8);
        *v20 = v22;
        *(v20 + 16) = 0;
        *(v20 + 96) = 0;
        if (*(v21 + 80) == 1)
        {
          sub_398970(v20 + 16, v21);
          *(v20 + 96) = 1;
          v20 = v31;
        }

        v20 += 104;
        v31 = v20;
        v21 += 104;
      }

      while ((v23 + 104) != a3);
    }

    a1[1] = v20;
  }
}

void sub_9C62A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_398D68(v10);
  sub_39A6A8(&a9);
  *(v9 + 8) = v11;
  _Unwind_Resume(a1);
}

void sub_9C62C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_398D68(v11);
  sub_39A6A8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_9C62E0(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 80) == *(a2 + 80))
  {
    if (!*(result + 80))
    {
      return v2;
    }

    if (result != a2)
    {
      sub_31F64(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
      v4 = *(a2 + 24);
      *(v2 + 26) = *(a2 + 26);
      *(v2 + 24) = v4;
      sub_3865E0((v2 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
      sub_3865E0((v2 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 4);
      return v2;
    }

    v8 = *(a2 + 24);
    *(result + 26) = *(a2 + 26);
    *(result + 24) = v8;
  }

  else if (*(result + 80))
  {
    v5 = *(result + 56);
    if (v5)
    {
      *(v2 + 64) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 32);
    if (v6)
    {
      *(v2 + 40) = v6;
      operator delete(v6);
    }

    v7 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v7;
      operator delete(v7);
    }

    *(v2 + 80) = 0;
    return v2;
  }

  else
  {
    result = sub_398970(result, a2);
    *(v2 + 80) = 1;
  }

  return result;
}

void sub_9C63F8(void ***a1, void **a2, void **a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 24);
          if (v12)
          {
            *(v10 - 16) = v12;
            operator delete(v12);
          }

          v13 = (v10 - 48);
          if (*(v10 - 25) < 0)
          {
            operator delete(*v13);
          }

          v10 -= 48;
        }

        while (v13 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x555555555555555)
    {
      v31 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v32 = 2 * v31;
      if (2 * v31 <= a4)
      {
        v32 = a4;
      }

      if (v31 >= 0x2AAAAAAAAAAAAAALL)
      {
        v33 = 0x555555555555555;
      }

      else
      {
        v33 = v32;
      }

      if (v33 <= 0x555555555555555)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = a1[1];
  v15 = v14 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v14 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v24 = 0;
      do
      {
        if (a2 != v8)
        {
          v27 = &v8[v24];
          v28 = &a2[v24];
          v29 = HIBYTE(a2[v24 + 2]);
          if (SHIBYTE(v8[v24 + 2]) < 0)
          {
            if (v29 >= 0)
            {
              v25 = &a2[v24];
            }

            else
            {
              v25 = a2[v24];
            }

            if (v29 >= 0)
            {
              v26 = HIBYTE(a2[v24 + 2]);
            }

            else
            {
              v26 = a2[v24 + 1];
            }

            sub_13B38(v27, v25, v26);
          }

          else if ((HIBYTE(a2[v24 + 2]) & 0x80) != 0)
          {
            sub_13A68(v27, a2[v24], a2[v24 + 1]);
          }

          else
          {
            v30 = *v28;
            v27[2] = v28[2];
            *v27 = v30;
          }

          sub_31F64(&v8[v24 + 3], a2[v24 + 3], a2[v24 + 4], (a2[v24 + 4] - a2[v24 + 3]) >> 3);
        }

        v24 += 6;
      }

      while (&a2[v24] != a3);
      v14 = a1[1];
      v8 = (v8 + v24 * 8);
    }

    if (v14 != v8)
    {
      do
      {
        v35 = *(v14 - 24);
        if (v35)
        {
          *(v14 - 16) = v35;
          operator delete(v35);
        }

        v36 = (v14 - 48);
        if (*(v14 - 25) < 0)
        {
          operator delete(*v36);
        }

        v14 -= 48;
      }

      while (v36 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    v16 = (a2 + v15);
    if (v14 != v8)
    {
      v17 = 0;
      do
      {
        if (a2 != v8)
        {
          v20 = &v8[v17 / 8];
          v21 = &a2[v17 / 8];
          v22 = HIBYTE(a2[v17 / 8 + 2]);
          if (SHIBYTE(v8[v17 / 8 + 2]) < 0)
          {
            if (v22 >= 0)
            {
              v18 = &a2[v17 / 8];
            }

            else
            {
              v18 = a2[v17 / 8];
            }

            if (v22 >= 0)
            {
              v19 = HIBYTE(a2[v17 / 8 + 2]);
            }

            else
            {
              v19 = a2[v17 / 8 + 1];
            }

            sub_13B38(v20, v18, v19);
          }

          else if ((HIBYTE(a2[v17 / 8 + 2]) & 0x80) != 0)
          {
            sub_13A68(v20, a2[v17 / 8], a2[v17 / 8 + 1]);
          }

          else
          {
            v23 = *v21;
            v20[2] = v21[2];
            *v20 = v23;
          }

          sub_31F64(&v8[v17 / 8 + 3], a2[v17 / 8 + 3], a2[v17 / 8 + 4], (a2[v17 / 8 + 4] - a2[v17 / 8 + 3]) >> 3);
        }

        v17 += 48;
      }

      while (v15 != v17);
      v14 = a1[1];
    }

    v37 = v14;
    v34 = v14;
    if (v16 != a3)
    {
      v34 = v14;
      do
      {
        sub_9C683C(v34, v16);
        v16 += 3;
        v34 = v37 + 48;
        v37 += 48;
      }

      while (v16 != a3);
    }

    a1[1] = v34;
  }
}

void sub_9C6790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9C67C0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_9C67A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9C67C0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_9C67C0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v7 = *(v4 - 3);
        if (v7)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v8 = v4 - 6;
        if (*(v4 - 25) < 0)
        {
          operator delete(*v8);
        }

        v4 -= 6;
      }

      while (v8 != v5);
    }
  }

  return a1;
}

uint64_t sub_9C683C(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v10 = *(a2 + 3);
    v9 = *(a2 + 4);
    v7 = v9 - v10;
    if (v9 == v10)
    {
      return a1;
    }

LABEL_5:
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  v7 = v5 - v6;
  if (v5 != v6)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_9C6914(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_21E1600(v1);
  _Unwind_Resume(a1);
}

void *sub_9C6938(void *a1, unint64_t *a2, void *a3)
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

uint64_t *sub_9C6C6C(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *(a2 + 4);
  v4 = *a2;
  v5 = (v4 + ((v3 ^ 0x385FFF1BDBLL) << 6) + 0xEB63740AFLL) ^ v3 ^ 0x385FFF1BDBLL;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v4 + ((v3 ^ 0x385FFF1BDBLL) << 6) + 0xEB63740AFLL) ^ v3 ^ 0x385FFF1BDBLL;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 + 0xFFFFFFFFFFFLL);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v12 == v5)
        {
          if (*(result + 4) == v4 && *(result + 20) == v3)
          {
            return result;
          }
        }

        else if ((v12 & v10) != v7)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v14 = result[1];
      if (v14 == v5)
      {
        if (*(result + 4) == v4 && *(result + 20) == v3)
        {
          return result;
        }
      }

      else
      {
        if (v14 >= *&v2)
        {
          v14 %= *&v2;
        }

        if (v14 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *sub_9C6D84(void *a1, unsigned int *a2, void *a3, uint64_t *a4)
{
  v4 = *(a2 + 4);
  v5 = *a2;
  v6 = (v5 + ((v4 ^ 0x385FFF1BDBLL) << 6) + 0xEB63740AFLL) ^ v4 ^ 0x385FFF1BDBLL;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v5 + ((v4 ^ 0x385FFF1BDBLL) << 6) + 0xEB63740AFLL) ^ v4 ^ 0x385FFF1BDBLL;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 + 0xFFFFFFFFFFFLL);
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
        if (*(v11 + 4) == v5 && *(v11 + 20) == v4)
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

  if (*(v11 + 4) != v5 || *(v11 + 20) != v4)
  {
    goto LABEL_12;
  }

  return v11;
}

uint64_t **sub_9C70F4(void *a1, const void **a2)
{
  v4 = sub_9C730C(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    v11 = *(a2 + 23);
    if (v11 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = a2[1];
    }

    if (v11 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    v15 = a2 + 3;
    v14 = a2[3];
    v16 = v15[1] - v14;
    if (v7.u32[0] < 2uLL)
    {
      v17 = *&v5 - 1;
      while (1)
      {
        v18 = v10[1];
        if (v18 == v6)
        {
          v19 = *(v10 + 39);
          v20 = v19;
          if (v19 < 0)
          {
            v19 = v10[3];
          }

          if (v19 == v12)
          {
            v21 = v20 >= 0 ? (v10 + 2) : v10[2];
            if (!memcmp(v21, v13, v12))
            {
              v23 = v10[5];
              v22 = v10[6];
              if (v22 - v23 == v16)
              {
                if (v23 == v22)
                {
                  return v10;
                }

                for (i = v14; *v23 == *i; ++i)
                {
                  v23 += 8;
                  if (v23 == v22)
                  {
                    return v10;
                  }
                }
              }
            }
          }
        }

        else if ((v18 & v17) != v8)
        {
          return 0;
        }

        v10 = *v10;
        if (!v10)
        {
          return v10;
        }
      }
    }

    do
    {
      v25 = v10[1];
      if (v25 == v6)
      {
        v26 = *(v10 + 39);
        v27 = v26;
        if (v26 < 0)
        {
          v26 = v10[3];
        }

        if (v26 == v12)
        {
          v28 = v27 >= 0 ? (v10 + 2) : v10[2];
          if (!memcmp(v28, v13, v12))
          {
            v30 = v10[5];
            v29 = v10[6];
            if (v29 - v30 == v16)
            {
              if (v30 == v29)
              {
                return v10;
              }

              for (j = v14; *v30 == *j; ++j)
              {
                v30 += 8;
                if (v30 == v29)
                {
                  return v10;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v25 >= *&v5)
        {
          v25 %= *&v5;
        }

        if (v25 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

unint64_t sub_9C730C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v11 = *(a2 + 16);
  }

  if (v11 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (v11 >= 0)
  {
    v4 = HIBYTE(v11);
  }

  else
  {
    v4 = __p[1];
  }

  v5 = (sub_AAD8(&v12, v3, v4) + 0x388152A534) ^ 0xDEADBEEF;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(a2 + 24);
  for (i = *(a2 + 32); v6 != i; v5 ^= (v5 << 6) + (v5 >> 2) + 2654435769u + v8)
  {
    v8 = *v6++;
  }

  return v5;
}

uint64_t sub_9C73E8(__int128 **a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v3)
  {
    v3 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = a1[1] - *a1;
  sub_9C75AC(v15 * 16, a2);
  v6 = 48 * v2 + 48;
  v7 = *a1;
  v8 = a1[1];
  v9 = &(*a1)[v15] - v8;
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = &(*a1)[v15] - v8;
    do
    {
      v12 = *v10;
      *(v11 + 16) = *(v10 + 2);
      *v11 = v12;
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      *(v11 + 24) = *(v10 + 24);
      *(v11 + 40) = *(v10 + 5);
      *(v10 + 3) = 0;
      *(v10 + 4) = 0;
      *(v10 + 5) = 0;
      v10 += 3;
      v11 += 48;
    }

    while (v10 != v8);
    do
    {
      v13 = *(v7 + 3);
      if (v13)
      {
        *(v7 + 4) = v13;
        operator delete(v13);
      }

      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v7 += 3;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_9C7598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9C76A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9C75AC(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v10 = *(a2 + 3);
    v9 = *(a2 + 4);
    v7 = v9 - v10;
    if (v9 == v10)
    {
      return a1;
    }

LABEL_5:
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  v7 = v5 - v6;
  if (v5 != v6)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_9C7684(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_21E1600(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_9C76A8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t **sub_9C7720(void *a1, const void **a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_9C730C(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_51;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_51:
    operator new();
  }

  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = a2[1];
  }

  if (v13 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  v17 = a2 + 3;
  v16 = a2[3];
  v33 = v17[1] - v16;
  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v25 = v12[1];
      if (v25 == v7)
      {
        v26 = *(v12 + 39);
        v27 = v26;
        if (v26 < 0)
        {
          v26 = v12[3];
        }

        if (v26 == v14)
        {
          v28 = v27 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v28, v15, v14))
          {
            v30 = v12[5];
            v29 = v12[6];
            if (v29 - v30 == v33)
            {
              if (v30 == v29)
              {
                return v12;
              }

              for (i = v16; *v30 == *i; ++i)
              {
                v30 += 8;
                if (v30 == v29)
                {
                  return v12;
                }
              }
            }
          }
        }
      }

      else if ((v25 & (*&v8 - 1)) != v10)
      {
        goto LABEL_51;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
    v18 = v12[1];
    if (v18 == v7)
    {
      break;
    }

    if (v18 >= *&v8)
    {
      v18 %= *&v8;
    }

    if (v18 != v10)
    {
      goto LABEL_51;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_51;
    }
  }

  v19 = *(v12 + 39);
  v20 = v19;
  if (v19 < 0)
  {
    v19 = v12[3];
  }

  if (v19 != v14)
  {
    goto LABEL_18;
  }

  v21 = v20 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v21, v15, v14))
  {
    goto LABEL_18;
  }

  v23 = v12[5];
  v22 = v12[6];
  if (v22 - v23 != v33)
  {
    goto LABEL_18;
  }

  if (v23 != v22)
  {
    for (j = v16; *v23 == *j; ++j)
    {
      v23 += 8;
      if (v23 == v22)
      {
        return v12;
      }
    }

    goto LABEL_18;
  }

  return v12;
}

void sub_9C7B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2D5CBC(va);
  _Unwind_Resume(a1);
}

void sub_9C7B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2D5CBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9C7B98(uint64_t a1, __int128 *a2, void *a3)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v8 = *(a2 + 3);
    v7 = *(a2 + 4);
    v9 = v7 - v8;
    if (v7 == v8)
    {
      goto LABEL_7;
    }

LABEL_5:
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_325C(a1, *a2, *(a2 + 1));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v11 = *(a2 + 3);
  v10 = *(a2 + 4);
  v9 = v10 - v11;
  if (v10 != v11)
  {
    goto LABEL_5;
  }

LABEL_7:
  *(a1 + 48) = *a3;
  return a1;
}

void sub_9C7C74(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_21E1600(v1);
  _Unwind_Resume(a1);
}

void sub_9C7C98(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t a4, unint64_t *a5, int64_t a6)
{
  v94 = a1;
  if (a4 < 2)
  {
    return;
  }

  if (a4 == 2)
  {
    v6 = *(a2 - 1);
    v7 = *(*a3 + 176);
    v8 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v7) >> 3);
    if (v8 <= v6 || v8 <= *a1)
    {
LABEL_121:
      sub_6FAB4();
    }

    v9 = v7 + 456 * *a1;
    v10 = sub_9C5794(v7 + 456 * v6);
    if (v10 > sub_9C5794(v9))
    {
      v11 = *v94;
      *v94 = *(a2 - 1);
      *(a2 - 1) = v11;
    }

    return;
  }

  if (a4 <= 128)
  {
    if (a1 == a2)
    {
      return;
    }

    v12 = a1 + 1;
    if (a1 + 1 == a2)
    {
      return;
    }

    v13 = a1;
    while (1)
    {
      v91 = v12;
      v15 = *v12;
      v16 = *(*a3 + 176);
      v17 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v16) >> 3);
      if (v17 <= v15 || v17 <= *v13)
      {
        goto LABEL_121;
      }

      v18 = v16 + 456 * *v13;
      v19 = sub_9C5794(v16 + 456 * v15);
      if (v19 > sub_9C5794(v18))
      {
        v20 = v91;
        v21 = *v91;
        v92 = *v91;
        while (1)
        {
          *v20 = *v13;
          if (v13 == v94)
          {
            break;
          }

          v24 = *(*a3 + 176);
          v25 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v24) >> 3);
          if (v25 <= v21 || v25 <= *(v13 - 1))
          {
            goto LABEL_121;
          }

          v96 = v13 - 1;
          v97 = *(v13 - 1);
          v95 = v13;
          v98 = *(*a3 + 176);
          v26 = v24 + 456 * v21;
          v27 = *(v26 + 424);
          v28 = *(v26 + 432);
          if (v27 != v28)
          {
            v29 = v27 + 40;
            v30 = -1;
            v99 = *(v26 + 432);
            while (1)
            {
              v31 = v29 - 40;
              v101 = *(v29 - 32);
              LOBYTE(v103) = 0;
              if (*(v29 + 56) == 1)
              {
                v103 = 0;
                v33 = *(v29 - 24);
                v32 = *(v29 - 16);
                if (v32 != v33)
                {
                  if (((v32 - v33) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_1794();
                }

                v104 = 0;
                v35 = *(v29 + 8);
                v34 = *(v29 + 16);
                if (v34 != v35)
                {
                  if (((v34 - v35) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_1794();
                }

                __p = 0;
                v37 = *(v29 + 32);
                v36 = *(v29 + 40);
                if (v36 != v37)
                {
                  if (((v36 - v37) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_1794();
                }

                v28 = v99;
              }

              v38 = v101 - 1;
              if (v101 - 1) < 7 && ((0x77u >> v38))
              {
                v39 = dword_22A5D04[v38];
                if (*(v29 + 56))
                {
                  goto LABEL_48;
                }
              }

              else
              {
                if (v101 == 4)
                {
                  v39 = 14;
                }

                else
                {
                  v39 = 0;
                }

                if (*(v29 + 56))
                {
LABEL_48:
                  if (__p)
                  {
                    operator delete(__p);
                  }

                  if (v104)
                  {
                    operator delete(v104);
                  }

                  if (v103)
                  {
                    operator delete(v103);
                  }
                }
              }

              if (v39 > v30)
              {
                v30 = v39;
              }

              v29 += 104;
              if (v31 + 104 == v28)
              {
                goto LABEL_55;
              }
            }
          }

          v30 = -1;
LABEL_55:
          v40 = v98 + 456 * v97;
          v41 = *(v40 + 424);
          v42 = *(v40 + 432);
          if (v41 != v42)
          {
            v43 = v41 + 40;
            v22 = -1;
            v100 = *(v40 + 432);
            while (1)
            {
              v44 = v43 - 40;
              v102 = *(v43 - 32);
              LOBYTE(v103) = 0;
              if (*(v43 + 56) == 1)
              {
                v103 = 0;
                v46 = *(v43 - 24);
                v45 = *(v43 - 16);
                if (v45 != v46)
                {
                  if (((v45 - v46) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_1794();
                }

                v104 = 0;
                v48 = *(v43 + 8);
                v47 = *(v43 + 16);
                if (v47 != v48)
                {
                  if (((v47 - v48) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_1794();
                }

                __p = 0;
                v50 = *(v43 + 32);
                v49 = *(v43 + 40);
                if (v49 != v50)
                {
                  if (((v49 - v50) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_1794();
                }

                v42 = v100;
              }

              v51 = v102 - 1;
              if (v102 - 1) < 7 && ((0x77u >> v51))
              {
                v52 = dword_22A5D04[v51];
                if (*(v43 + 56))
                {
                  goto LABEL_79;
                }
              }

              else
              {
                if (v102 == 4)
                {
                  v52 = 14;
                }

                else
                {
                  v52 = 0;
                }

                if (*(v43 + 56))
                {
LABEL_79:
                  if (__p)
                  {
                    operator delete(__p);
                  }

                  if (v104)
                  {
                    operator delete(v104);
                  }

                  if (v103)
                  {
                    operator delete(v103);
                  }
                }
              }

              if (v52 > v22)
              {
                v22 = v52;
              }

              v43 += 104;
              if (v44 + 104 == v42)
              {
                goto LABEL_20;
              }
            }
          }

          v22 = -1;
LABEL_20:
          v14 = v95;
          v20 = v95;
          v23 = v30 <= v22;
          v13 = v96;
          v21 = v92;
          if (v23)
          {
            goto LABEL_13;
          }
        }

        v14 = v94;
LABEL_13:
        *v14 = v21;
      }

      v12 = v91 + 1;
      v13 = v91;
      if (v91 + 1 == a2)
      {
        return;
      }
    }
  }

  v54 = a4 >> 1;
  v55 = a4 >> 1;
  v56 = a4 - (a4 >> 1);
  if (a4 <= a6)
  {
    v58 = a1;
    sub_9C8690(a1, &a1[v55], a3, a4 >> 1, a5);
    v60 = &a5[v54];
    sub_9C8690(&v94[v55], a2, a3, v56, v60);
    v61 = v60;
    v62 = a5;
    v63 = &a5[a4];
    do
    {
      if (v61 == v63)
      {
        if (v62 == v60)
        {
          return;
        }

        v81 = &a5[v55] - v62 - 8;
        if (v81 >= 0x38)
        {
          if ((v94 - v62) >= 0x20)
          {
            v83 = v58 + 2;
            v84 = (v81 >> 3) + 1;
            v85 = v84 & 0x3FFFFFFFFFFFFFFCLL;
            v82 = &v62[v85];
            v58 = (v58 + v85 * 8);
            v86 = (v62 + 2);
            v87 = v84 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v88 = *v86;
              *(v83 - 1) = *(v86 - 1);
              *v83 = v88;
              v83 += 2;
              v86 += 2;
              v87 -= 4;
            }

            while (v87);
            if (v84 == (v84 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v82 = v62;
          }
        }

        else
        {
          v82 = v62;
        }

        do
        {
          v89 = *v82++;
          *v58++ = v89;
        }

        while (v82 != v60);
        return;
      }

      v64 = v61;
      v65 = *v61;
      v66 = *(*a3 + 176);
      v67 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v66) >> 3);
      if (v67 <= v65 || v67 <= *v62)
      {
        goto LABEL_121;
      }

      v68 = v66 + 456 * *v62;
      v69 = sub_9C5794(v66 + 456 * v65);
      v70 = sub_9C5794(v68);
      if (v69 <= v70)
      {
        v71 = v62;
      }

      else
      {
        v71 = v64;
      }

      v62 += v69 <= v70;
      v72 = v69 > v70;
      v61 = &v64[v72];
      *v58++ = *v71;
      ++v94;
    }

    while (v62 != v60);
    if (v61 != v63)
    {
      v73 = v63 - v64 - v72 * 8 - 8;
      if (v73 <= 0x57)
      {
        goto LABEL_124;
      }

      if ((v94 - v64 - v72 * 8) < 0x20)
      {
        goto LABEL_124;
      }

      v74 = v58 + 2;
      v75 = (v73 >> 3) + 1;
      v76 = 8 * (v75 & 0x3FFFFFFFFFFFFFFCLL);
      v61 = (v61 + v76);
      v58 = (v58 + v76);
      v77 = &v64[v72 + 2];
      v78 = v75 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v79 = *v77;
        *(v74 - 1) = *(v77 - 1);
        *v74 = v79;
        v74 += 2;
        v77 += 4;
        v78 -= 4;
      }

      while (v78);
      if (v75 != (v75 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_124:
        do
        {
          v80 = *v61++;
          *v58++ = v80;
        }

        while (v61 != v63);
      }
    }
  }

  else
  {
    sub_9C7C98(a1, &a1[v55], a3, a4 >> 1, a5, a6);
    sub_9C7C98(&v94[v55], a2, a3, v56, a5, a6);

    sub_9C8DB4(v94, &v94[v55], a2, a3, v54, v56, a5, a6);
  }
}

void sub_9C85D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (v28)
  {
    operator delete(v28);
  }

  sub_398D68(a20);
  _Unwind_Resume(a1);
}

void sub_9C8690(unint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v6 = a1;
    if (a4 == 1)
    {
LABEL_11:
      *v5 = *v6;
      return;
    }

    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v7 = a2 - 1;
      v8 = v9;
      v10 = *(*a3 + 176);
      v11 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v10) >> 3);
      if (v11 <= v9 || v11 <= *a1)
      {
LABEL_90:
        sub_6FAB4();
      }

      v12 = v7;
      v13 = v10 + 456 * *a1;
      v14 = sub_9C5794(v10 + 456 * v8);
      v15 = sub_9C5794(v13);
      if (v14 <= v15)
      {
        v16 = v6;
      }

      else
      {
        v16 = v12;
      }

      *v5++ = *v16;
      if (v14 <= v15)
      {
        v6 = v12;
      }

      goto LABEL_11;
    }

    v88 = a5;
    if (a4 <= 8)
    {
      if (a1 == a2)
      {
        return;
      }

      v17 = a1 + 1;
      *a5 = *a1;
      if (a1 + 1 == a2)
      {
        return;
      }

      v18 = a5;
LABEL_20:
      v21 = v18;
      v22 = *(*a3 + 176);
      v23 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v22) >> 3);
      if (v23 <= *v17 || v23 <= *v18)
      {
        goto LABEL_90;
      }

      v24 = v22 + 456 * *v18;
      v25 = sub_9C5794(v22 + 456 * *v17);
      v26 = sub_9C5794(v24);
      v19 = v21 + 1;
      v18 = v21 + 1;
      if (v25 <= v26)
      {
        goto LABEL_19;
      }

      v21[1] = *v21;
      v19 = v5;
      if (v21 == v5)
      {
        goto LABEL_19;
      }

      v82 = v21 + 1;
      v84 = v17;
LABEL_25:
      v27 = *(*a3 + 176);
      v28 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v27) >> 3);
      if (v28 <= *v17)
      {
        goto LABEL_90;
      }

      v29 = *(v21 - 1);
      if (v28 <= v29)
      {
        goto LABEL_90;
      }

      v30 = v27 + 456 * *v17;
      v31 = *(v30 + 424);
      v32 = *(v30 + 432);
      if (v31 == v32)
      {
        sub_9C5794(v27 + 456 * v29);
        v19 = v21;
        goto LABEL_18;
      }

      v85 = v21 - 1;
      v86 = v27 + 456 * v29;
      v87 = v21;
      v33 = v31 + 40;
      v34 = -1;
      v90 = *(v30 + 432);
      while (1)
      {
        v35 = v33 - 40;
        v91 = *(v33 - 32);
        LOBYTE(v92) = 0;
        if (*(v33 + 56) == 1)
        {
          v92 = 0;
          v37 = *(v33 - 24);
          v36 = *(v33 - 16);
          if (v36 != v37)
          {
            if (((v36 - v37) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v93 = 0;
          v39 = *(v33 + 8);
          v38 = *(v33 + 16);
          if (v38 != v39)
          {
            if (((v38 - v39) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          __p = 0;
          v41 = *(v33 + 32);
          v40 = *(v33 + 40);
          if (v40 != v41)
          {
            if (((v40 - v41) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v32 = v90;
        }

        v42 = v91 - 1;
        if (v91 - 1) < 7 && ((0x77u >> v42))
        {
          v43 = dword_22A5D04[v42];
          if (*(v33 + 56))
          {
            goto LABEL_51;
          }
        }

        else
        {
          if (v91 == 4)
          {
            v43 = 14;
          }

          else
          {
            v43 = 0;
          }

          if (*(v33 + 56))
          {
LABEL_51:
            if (__p)
            {
              operator delete(__p);
            }

            if (v93)
            {
              operator delete(v93);
            }

            if (v92)
            {
              operator delete(v92);
            }
          }
        }

        if (v43 > v34)
        {
          v34 = v43;
        }

        v33 += 104;
        if (v35 + 104 == v32)
        {
          if (v34 > sub_9C5794(v86))
          {
            v5 = v88;
            *v87 = *(v87 - 1);
            v17 = v84;
            v21 = v85;
            if (v85 == v88)
            {
              v19 = v88;
              goto LABEL_18;
            }

            goto LABEL_25;
          }

          v19 = v87;
          v5 = v88;
          v17 = v84;
LABEL_18:
          v18 = v82;
LABEL_19:
          v20 = *v17++;
          *v19 = v20;
          if (v17 == a2)
          {
            return;
          }

          goto LABEL_20;
        }
      }
    }

    v44 = a4 >> 1;
    v45 = a4 >> 1;
    v46 = &a1[v45];
    v47 = a1;
    sub_9C7C98(a1, &a1[v45], a3, v44, a5, v44);
    sub_9C7C98(v46, a2, a3, a4 - v44, &v5[v45], a4 - v44);
    v50 = v5;
    v51 = v46;
    do
    {
      v52 = v51;
      if (v51 == a2)
      {
        v72 = v88;
        if (v47 == v46)
        {
          return;
        }

        v73 = v46 - v47 - 8;
        if (v73 >= 0x38)
        {
          if ((v50 - v47) >= 0x20)
          {
            v75 = v88 + 2;
            v76 = (v73 >> 3) + 1;
            v77 = v76 & 0x3FFFFFFFFFFFFFFCLL;
            v72 = &v88[v77];
            v74 = &v47[v77];
            v78 = (v47 + 2);
            v79 = v76 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v80 = *v78;
              *(v75 - 1) = *(v78 - 1);
              *v75 = v80;
              v78 += 2;
              v75 += 2;
              v79 -= 4;
            }

            while (v79);
            if (v76 == (v76 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v74 = v47;
          }
        }

        else
        {
          v74 = v47;
        }

        do
        {
          v81 = *v74++;
          *v72++ = v81;
        }

        while (v74 != v46);
        return;
      }

      v53 = *(*a3 + 176);
      v54 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v53) >> 3);
      if (v54 <= *v51 || v54 <= *v47)
      {
        goto LABEL_90;
      }

      v55 = v53 + 456 * *v47;
      v56 = sub_9C5794(v53 + 456 * *v51);
      v57 = sub_9C5794(v55);
      if (v56 <= v57)
      {
        v58 = v47;
      }

      else
      {
        v58 = v52;
      }

      v59 = v56 > v57;
      v51 = &v52[v59];
      *v88++ = *v58;
      ++v50;
      v47 += v56 <= v57;
    }

    while (v47 != v46);
    v60 = a2;
    v61 = v88;
    if (v51 != a2)
    {
      v62 = a2 - v52 - v59 * 8 - 8;
      if (v62 < 0x58)
      {
        goto LABEL_93;
      }

      v60 = a2;
      if (v50 - v52 - v59 * 8 < 0x20)
      {
        goto LABEL_93;
      }

      v63 = 0;
      v64 = (v62 >> 3) + 1;
      v65 = v64 & 0x3FFFFFFFFFFFFFFCLL;
      v66 = &v88[v65];
      v51 = (v51 + v65 * 8);
      v67 = &v52[v59 + 2];
      v68 = v64 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v69 = &v88[v63];
        v70 = *v67;
        *v69 = *(v67 - 1);
        *(v69 + 1) = v70;
        v67 += 4;
        v63 += 4;
        v68 -= 4;
      }

      while (v68);
      v61 = v66;
      v60 = a2;
      if (v64 != (v64 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_93:
        do
        {
          v71 = *v51++;
          *v61++ = v71;
        }

        while (v51 != v60);
      }
    }
  }
}

void sub_9C8D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (!v27)
  {
    sub_398D68(v26 + 16);
    _Unwind_Resume(a1);
  }

  operator delete(v27);
  sub_398D68(v26 + 16);
  _Unwind_Resume(a1);
}

__n128 sub_9C8DB4(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v102 = a6;
  if (!a6)
  {
    return result;
  }

  while (1)
  {
    v105 = a2;
    if (v102 <= a8 || a5 <= a8)
    {
      break;
    }

    if (!a5)
    {
      return result;
    }

    v12 = 0;
    v13 = -a5;
    while (1)
    {
      v14 = *(*a4 + 176);
      v15 = 0x823EE08FB823EE09 * ((*(*a4 + 184) - v14) >> 3);
      if (v15 <= *a2)
      {
        goto LABEL_93;
      }

      v16 = a1;
      v17 = a1[v12 / 8];
      if (v15 <= v17)
      {
        goto LABEL_93;
      }

      v18 = v14 + 456 * v17;
      v19 = sub_9C5794(v14 + 456 * *a2);
      if (v19 > sub_9C5794(v18))
      {
        break;
      }

      v12 += 8;
      v21 = __CFADD__(v13++, 1);
      a2 = v105;
      if (v21)
      {
        return result;
      }
    }

    v22 = v102;
    v23 = v105;
    __src = a7;
    v100 = a3;
    v104 = a4;
    if (-v13 >= v102)
    {
      if (v13 == -1)
      {
        v78 = a1[v12 / 8];
        a1[v12 / 8] = *v105;
        *v105 = v78;
        return result;
      }

      v33 = -v13 / 2;
      v103 = &a1[v33];
      v25 = v105;
      if (v105 != a3)
      {
        v34 = *v104;
        v35 = a3 - v105;
        v25 = v105;
        do
        {
          v36 = &v25[v35 >> 1];
          v37 = *(v34 + 176);
          v38 = 0x823EE08FB823EE09 * ((*(v34 + 184) - v37) >> 3);
          if (v38 <= *v36)
          {
            goto LABEL_93;
          }

          v39 = v103[v12 / 8];
          if (v38 <= v39)
          {
            goto LABEL_93;
          }

          v40 = v37 + 456 * v39;
          v41 = sub_9C5794(v37 + 456 * *v36);
          v42 = sub_9C5794(v40);
          if (v41 <= v42)
          {
            v35 >>= 1;
          }

          else
          {
            v35 += ~(v35 >> 1);
          }

          if (v41 > v42)
          {
            v25 = v36 + 1;
          }
        }

        while (v35);
        v23 = v105;
        v22 = v102;
        v33 = -v13 / 2;
      }

      v24 = (v25 - v23) >> 3;
      v26 = &v103[v12 / 8];
    }

    else
    {
      v24 = v102 / 2;
      v25 = &v105[v102 / 2];
      v26 = v105;
      if (v105 - a1 != v12)
      {
        v27 = (v105 - a1 - v12) >> 3;
        v26 = &a1[v12 / 8];
        do
        {
          v28 = *(*v104 + 176);
          v29 = 0x823EE08FB823EE09 * ((*(*v104 + 184) - v28) >> 3);
          if (v29 <= *v25)
          {
            goto LABEL_93;
          }

          v30 = &v26[8 * (v27 >> 1)];
          if (v29 <= *v30)
          {
            goto LABEL_93;
          }

          v31 = v28 + 456 * *v30;
          v32 = sub_9C5794(v28 + 456 * *v25);
          if (v32 > sub_9C5794(v31))
          {
            v27 >>= 1;
          }

          else
          {
            v26 = (v30 + 1);
            v27 += ~(v27 >> 1);
          }
        }

        while (v27);
        v23 = v105;
        v16 = a1;
        v22 = v102;
        v24 = v102 / 2;
      }

      v33 = (v26 - v16 - v12) >> 3;
    }

    a5 = -(v33 + v13);
    v43 = v22 - v24;
    v44 = v22;
    v45 = v24;
    v46 = sub_9C948C(v26, v23, v25);
    v47 = v45;
    a3 = v46;
    if (v33 + v47 >= v44 - (v33 + v47) - v13)
    {
      v50 = v43;
      v51 = v47;
      result.n128_u64[0] = sub_9C8DB4(v46, v25, v100, v104, -(v33 + v13), v50, __src, a8).n128_u64[0];
      a5 = v33;
      a7 = __src;
      v102 = v51;
      a1 = (a1 + v12);
      a2 = v26;
      a4 = v104;
      if (!v51)
      {
        return result;
      }
    }

    else
    {
      v48 = v33;
      a7 = __src;
      result.n128_u64[0] = sub_9C8DB4(&a1[v12 / 8], v26, v46, v104, v48, v47, __src, a8).n128_u64[0];
      v49 = a3;
      a3 = v100;
      v102 = v43;
      a1 = v49;
      a2 = v25;
      a4 = v104;
      if (!v43)
      {
        return result;
      }
    }
  }

  if (a5 <= v102)
  {
    if (a2 != a1)
    {
      v61 = a2 - a1 - 8;
      v62 = a7;
      v63 = a1;
      if (v61 < 0x18)
      {
        goto LABEL_96;
      }

      v62 = a7;
      v63 = a1;
      if ((a7 - a1) <= 0x1F)
      {
        goto LABEL_96;
      }

      v64 = (v61 >> 3) + 1;
      v65 = v64 & 0x3FFFFFFFFFFFFFFCLL;
      v62 = &a7[v65];
      v63 = &a1[v65];
      v66 = a1 + 2;
      v67 = a7 + 2;
      v68 = v64 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v69 = *v66;
        *(v67 - 1) = *(v66 - 1);
        *v67 = v69;
        v66 += 4;
        v67 += 4;
        v68 -= 4;
      }

      while (v68);
      if (v64 != (v64 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_96:
        do
        {
          v70 = *v63++;
          *v62++ = v70;
        }

        while (v63 != a2);
      }

      while (a2 != a3)
      {
        v71 = *(*a4 + 176);
        v72 = 0x823EE08FB823EE09 * ((*(*a4 + 184) - v71) >> 3);
        if (v72 <= *a2 || v72 <= *a7)
        {
LABEL_93:
          sub_6FAB4();
        }

        v73 = a2;
        v74 = v71 + 456 * *a7;
        v75 = sub_9C5794(v71 + 456 * *a2);
        v76 = sub_9C5794(v74);
        if (v75 <= v76)
        {
          v77 = a7;
        }

        else
        {
          v77 = v73;
        }

        a2 = &v73[v75 > v76];
        a7 += v75 <= v76;
        *a1++ = *v77;
        if (a7 == v62)
        {
          return result;
        }
      }

      memmove(a1, a7, v62 - a7);
    }

    return result;
  }

  if (a2 == a3)
  {
    return result;
  }

  v52 = a3 - a2 - 8;
  if (v52 < 0x18)
  {
    v54 = a7;
    v53 = a2;
  }

  else
  {
    v53 = a2;
    v54 = a7;
    if ((a7 - a2) > 0x1F)
    {
      v55 = (v52 >> 3) + 1;
      v56 = v55 & 0x3FFFFFFFFFFFFFFCLL;
      v54 = &a7[v56];
      v53 = &a2[v56];
      v57 = a2 + 2;
      v58 = a7 + 2;
      v59 = v55 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = *(v57 - 1);
        v60 = *v57;
        *(v58 - 1) = result;
        *v58 = v60;
        v57 += 4;
        v58 += 4;
        v59 -= 4;
      }

      while (v59);
      if (v55 == (v55 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_70;
      }
    }
  }

  do
  {
    v79 = *v53++;
    *v54++ = v79;
  }

  while (v53 != a3);
LABEL_70:
  v80 = a3;
  v81 = a2;
  while (v81 != a1)
  {
    v82 = *(v54 - 1);
    v83 = *(*a4 + 176);
    v84 = 0x823EE08FB823EE09 * ((*(*a4 + 184) - v83) >> 3);
    if (v84 <= v82)
    {
      goto LABEL_93;
    }

    v85 = *(v81 - 1);
    if (v84 <= v85)
    {
      goto LABEL_93;
    }

    v86 = v83 + 456 * v85;
    v87 = sub_9C5794(v83 + 456 * v82);
    v88 = sub_9C5794(v86);
    if (v87 <= v88)
    {
      v89 = v54;
    }

    else
    {
      v89 = v81;
    }

    if (v87 <= v88)
    {
      --v54;
    }

    else
    {
      --v81;
    }

    *--a3 = *(v89 - 1);
    --v80;
    if (v54 == a7)
    {
      return result;
    }
  }

  if (v54 != a7)
  {
    v90 = v54 - a7 - 8;
    if (v90 < 0x48 || (v54 - v80) < 0x20)
    {
      v91 = v54;
LABEL_86:
      v92 = a3 - 1;
      do
      {
        v93 = *--v91;
        *v92-- = v93;
      }

      while (v91 != a7);
      return result;
    }

    v94 = (a3 - 2);
    v95 = (v90 >> 3) + 1;
    v96 = 8 * (v95 & 0x3FFFFFFFFFFFFFFCLL);
    v91 = &v54[v96 / 0xFFFFFFFFFFFFFFF8];
    a3 = (a3 - v96);
    v97 = (v54 - 2);
    v98 = v95 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = *v97;
      v94[-1] = v97[-1];
      *v94 = result;
      v94 -= 2;
      v97 -= 2;
      v98 -= 4;
    }

    while (v98);
    if (v95 != (v95 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_86;
    }
  }

  return result;
}

char *sub_9C948C(char *__src, uint64_t a2, void *__dst)
{
  v4 = __dst;
  v5 = a2 - __src;
  if (a2 == __src)
  {
    return v4;
  }

  v6 = __dst - a2;
  if (__dst == a2)
  {
    return __src;
  }

  if (__src + 8 == a2)
  {
    v8 = *__src;
    v9 = __src;
    memmove(__src, __src + 8, v6);
    v10 = &v9[v6];
    *v10 = v8;
    return v10;
  }

  else if ((a2 + 8) == __dst)
  {
    v11 = *(__dst - 1);
    v12 = __src + 8;
    v13 = (__dst - 1) - __src;
    if (__dst - 1 != __src)
    {
      v14 = __src;
      memmove(__src + 8, __src, v13);
      __src = v14;
    }

    *__src = v11;
    return v12;
  }

  else
  {
    v15 = v5 >> 3;
    v16 = v6 >> 3;
    if (v5 >> 3 == v6 >> 3)
    {
      v17 = __src + 8;
      v18 = (a2 + 8);
      do
      {
        v19 = *(v17 - 1);
        *(v17 - 1) = *(v18 - 1);
        *(v18 - 1) = v19;
        if (v17 == a2)
        {
          break;
        }

        v17 += 8;
      }

      while (v18++ != __dst);
      return a2;
    }

    else
    {
      v21 = v5 >> 3;
      do
      {
        v22 = v21;
        v21 = v16;
        v16 = v22 % v16;
      }

      while (v16);
      v23 = &__src[8 * v21];
      do
      {
        v25 = *(v23 - 1);
        v23 -= 8;
        v24 = v25;
        v26 = &v23[v5];
        v27 = v23;
        do
        {
          v28 = v26;
          *v27 = *v26;
          v29 = (__dst - v26) >> 3;
          v30 = __OFSUB__(v15, v29);
          v32 = v15 - v29;
          v31 = (v32 < 0) ^ v30;
          v26 = &__src[8 * v32];
          if (v31)
          {
            v26 = &v28[8 * v15];
          }

          v27 = v28;
        }

        while (v26 != v23);
        *v28 = v24;
      }

      while (v23 != __src);
      return &__src[v6];
    }
  }
}

double sub_9C9648(unint64_t *result, unint64_t *a2, uint64_t *a3, unint64_t a4, unint64_t *a5, int64_t a6)
{
  if (a4 < 2)
  {
    return v30.n128_f64[0];
  }

  if (a4 == 2)
  {
    v6 = *(a2 - 1);
    v7 = *(*a3 + 176);
    v8 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v7) >> 3);
    if (v8 > v6)
    {
      v9 = *result;
      if (v8 > *result)
      {
        if (*(v7 + 456 * v6 + 449) > *(v7 + 456 * v9 + 449))
        {
          *result = v6;
          *(a2 - 1) = v9;
        }

        return v30.n128_f64[0];
      }
    }

LABEL_55:
    sub_6FAB4();
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return v30.n128_f64[0];
    }

    v10 = result + 1;
    if (result + 1 == a2)
    {
      return v30.n128_f64[0];
    }

    v11 = 0;
    v12 = *(*a3 + 176);
    v13 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v12) >> 3);
    v14 = result;
    while (1)
    {
      v16 = v10;
      v17 = *v10;
      if (v13 <= v17)
      {
        goto LABEL_55;
      }

      v18 = *v14;
      if (v13 <= v18)
      {
        goto LABEL_55;
      }

      v19 = *(v12 + 456 * v17 + 449);
      if (v19 > *(v12 + 456 * v18 + 449))
      {
        v20 = v11;
        do
        {
          *(result + v20 + 8) = v18;
          if (!v20)
          {
            v15 = result;
            goto LABEL_13;
          }

          v18 = *(result + v20 - 8);
          if (v13 <= v18)
          {
            goto LABEL_55;
          }

          v20 -= 8;
        }

        while (v19 > *(v12 + 456 * v18 + 449));
        v15 = (result + v20 + 8);
LABEL_13:
        *v15 = v17;
      }

      v10 = v16 + 1;
      v11 += 8;
      v14 = v16;
      if (v16 + 1 == a2)
      {
        return v30.n128_f64[0];
      }
    }
  }

  v22 = a4 >> 1;
  v23 = 8 * (a4 >> 1);
  v24 = a4 - (a4 >> 1);
  v25 = &result[v23 / 8];
  v26 = result;
  if (a4 <= a6)
  {
    sub_9C9A58(result, v25, a3, a4 >> 1, a5);
    v34 = &a5[v22];
    sub_9C9A58(&v26[v23], a2, a3, v24, v34);
    v35 = *a3;
    v36 = v34;
    v37 = a5;
    v38 = v26;
    v39 = &a5[a4];
    do
    {
      if (v36 == v39)
      {
        if (v37 == v34)
        {
          return v30.n128_f64[0];
        }

        v59 = &a5[v23 / 8] - v37 - 8;
        if (v59 >= 0x38)
        {
          if ((v26 - v37) >= 0x20)
          {
            v61 = (v38 + 2);
            v62 = (v59 >> 3) + 1;
            v63 = v62 & 0x3FFFFFFFFFFFFFFCLL;
            v60 = &v37[v63];
            v38 = (v38 + v63 * 8);
            v64 = (v37 + 2);
            v65 = v62 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v30 = v64[-1];
              v66 = *v64;
              v61[-1] = v30;
              *v61 = v66;
              v61 += 2;
              v64 += 2;
              v65 -= 4;
            }

            while (v65);
            if (v62 == (v62 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return v30.n128_f64[0];
            }
          }

          else
          {
            v60 = v37;
          }
        }

        else
        {
          v60 = v37;
        }

        do
        {
          v67 = *v60++;
          *v38++ = v67;
        }

        while (v60 != v34);
        return v30.n128_f64[0];
      }

      v40 = v36;
      v41 = *v36;
      v42 = *(v35 + 176);
      v43 = 0x823EE08FB823EE09 * ((*(v35 + 184) - v42) >> 3);
      if (v43 <= v41)
      {
        goto LABEL_55;
      }

      v44 = *v37;
      if (v43 <= *v37)
      {
        goto LABEL_55;
      }

      v45 = *(v42 + 456 * v41 + 449);
      v46 = *(v42 + 456 * v44 + 449);
      v47 = v45 > v46;
      v48 = v45 <= v46;
      v49 = v47;
      if (v47)
      {
        v44 = v41;
      }

      v37 += v48;
      v50 = v49;
      v36 = &v40[v50];
      *v38++ = v44;
      v26 += 8;
    }

    while (v37 != v34);
    if (v36 != v39)
    {
      v51 = v39 - v40 - v50 * 8 - 8;
      if (v51 <= 0x57)
      {
        goto LABEL_59;
      }

      if ((v26 - v40 - v50 * 8) < 0x20)
      {
        goto LABEL_59;
      }

      v52 = (v38 + 2);
      v53 = (v51 >> 3) + 1;
      v54 = 8 * (v53 & 0x3FFFFFFFFFFFFFFCLL);
      v36 = (v36 + v54);
      v38 = (v38 + v54);
      v55 = &v40[v50 + 2];
      v56 = v53 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v30 = v55[-1];
        v57 = *v55;
        v52[-1] = v30;
        *v52 = v57;
        v52 += 2;
        v55 += 2;
        v56 -= 4;
      }

      while (v56);
      if (v53 != (v53 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_59:
        do
        {
          v58 = *v36++;
          *v38++ = v58;
        }

        while (v36 != v39);
      }
    }
  }

  else
  {
    sub_9C9648(result, v25, a3, a4 >> 1, a5, a6);
    sub_9C9648(&v26[v23], a2, a3, v24, a5, a6);

    v30.n128_u64[0] = sub_9C9E20(v26, &v26[v23], a2, a3, v22, v24, a5, a6).n128_u64[0];
  }

  return v30.n128_f64[0];
}

unint64_t *sub_9C9A58(unint64_t *result, unint64_t *a2, uint64_t *a3, unint64_t a4, unint64_t *a5)
{
  if (a4)
  {
    if (a4 == 1)
    {
LABEL_10:
      *a5 = *result;
      return result;
    }

    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v5 = a2 - 1;
      v6 = v7;
      v8 = *(*a3 + 176);
      v9 = 0x823EE08FB823EE09 * ((*(*a3 + 184) - v8) >> 3);
      if (v9 > v7 && v9 > *result)
      {
        v10 = *(v8 + 456 * v6 + 449);
        v11 = *(v8 + 456 * *result + 449);
        if (v10 <= v11)
        {
          v6 = *result;
        }

        *a5++ = v6;
        if (v10 <= v11)
        {
          result = v5;
        }

        goto LABEL_10;
      }

LABEL_58:
      sub_6FAB4();
    }

    if (a4 <= 8)
    {
      if (result == a2)
      {
        return result;
      }

      v12 = *a3;
      v13 = *result++;
      *a5 = v13;
      if (result == a2)
      {
        return result;
      }

      v14 = 0;
      v15 = *(v12 + 176);
      v16 = 0x823EE08FB823EE09 * ((*(v12 + 184) - v15) >> 3);
      v17 = a5;
      while (1)
      {
        v18 = *result;
        if (v16 <= *result)
        {
          goto LABEL_58;
        }

        v19 = v17 + 1;
        v20 = *v17;
        if (v16 <= *v17)
        {
          goto LABEL_58;
        }

        if (*(v15 + 456 * v18 + 449) <= *(v15 + 456 * v20 + 449))
        {
          *v19 = v18;
          ++result;
          v14 += 8;
          ++v17;
          if (result == a2)
          {
            return result;
          }
        }

        else
        {
          v17[1] = v20;
          v21 = a5;
          if (v17 != a5)
          {
            v22 = v14;
            while (1)
            {
              if (v16 <= *result)
              {
                goto LABEL_58;
              }

              v23 = *(a5 + v22 - 8);
              if (v16 <= v23)
              {
                goto LABEL_58;
              }

              if (*(v15 + 456 * *result + 449) <= *(v15 + 456 * v23 + 449))
              {
                break;
              }

              *(a5 + v22) = v23;
              v22 -= 8;
              if (!v22)
              {
                v21 = a5;
                goto LABEL_28;
              }
            }

            v21 = (a5 + v22);
          }

LABEL_28:
          v24 = *result++;
          *v21 = v24;
          v14 += 8;
          v17 = v19;
          if (result == a2)
          {
            return result;
          }
        }
      }
    }

    v25 = a4 >> 1;
    v26 = a4 >> 1;
    v27 = &result[v26];
    v28 = result;
    v32 = a5;
    sub_9C9648(result, &result[v26], a3, v25, a5, v25);
    result = sub_9C9648(v27, a2, a3, a4 - v25, &v32[v26], a4 - v25);
    v33 = *a3;
    v34 = v32;
    v35 = v27;
    do
    {
      if (v35 == a2)
      {
        if (v28 == v27)
        {
          return result;
        }

        v57 = v27 - v28 - 8;
        if (v57 >= 0x38)
        {
          if ((v34 - v28) >= 0x20)
          {
            v59 = v32 + 2;
            v60 = (v57 >> 3) + 1;
            v61 = v60 & 0x3FFFFFFFFFFFFFFCLL;
            v32 = (v32 + v61 * 8);
            v58 = &v28[v61];
            v62 = (v28 + 2);
            v63 = v60 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v64 = *v62;
              *(v59 - 1) = *(v62 - 1);
              *v59 = v64;
              v62 += 2;
              v59 += 2;
              v63 -= 4;
            }

            while (v63);
            if (v60 == (v60 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v58 = v28;
          }
        }

        else
        {
          v58 = v28;
        }

        do
        {
          v65 = *v58++;
          *v32++ = v65;
        }

        while (v58 != v27);
        return result;
      }

      v36 = v35;
      v37 = *v35;
      v38 = *(v33 + 176);
      v39 = 0x823EE08FB823EE09 * ((*(v33 + 184) - v38) >> 3);
      if (v39 <= v37)
      {
        goto LABEL_58;
      }

      v40 = *v28;
      if (v39 <= *v28)
      {
        goto LABEL_58;
      }

      v41 = *(v38 + 456 * v37 + 449);
      v42 = *(v38 + 456 * v40 + 449);
      v43 = v41 > v42;
      v44 = v41 <= v42;
      v45 = v43;
      if (v43)
      {
        v40 = v37;
      }

      v46 = v45;
      v35 = &v36[v46];
      v28 += v44;
      *v32++ = v40;
      ++v34;
    }

    while (v28 != v27);
    if (v35 != a2)
    {
      v47 = a2 - v36 - v46 * 8 - 8;
      if (v47 < 0x58)
      {
        goto LABEL_61;
      }

      if (v34 - v36 - v46 * 8 < 0x20)
      {
        goto LABEL_61;
      }

      v48 = 0;
      v49 = (v47 >> 3) + 1;
      v50 = v49 & 0x3FFFFFFFFFFFFFFCLL;
      v51 = &v32[v50];
      v35 = (v35 + v50 * 8);
      v52 = &v36[v46 + 2];
      v53 = v49 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v54 = &v32[v48];
        v55 = *v52;
        *v54 = *(v52 - 1);
        *(v54 + 1) = v55;
        v52 += 4;
        v48 += 4;
        v53 -= 4;
      }

      while (v53);
      v32 = v51;
      if (v49 != (v49 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_61:
        do
        {
          v56 = *v35++;
          *v32++ = v56;
        }

        while (v35 != a2);
      }
    }
  }

  return result;
}

__n128 sub_9C9E20(char *a1, char *a2, char *a3, uint64_t *a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (a6 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v11 = *a2;
    v12 = *(*a4 + 176);
    v13 = 0x823EE08FB823EE09 * ((*(*a4 + 184) - v12) >> 3);
    if (v13 <= *a2)
    {
      goto LABEL_95;
    }

    v14 = 0;
    v15 = -a5;
    while (1)
    {
      v16 = *&a1[v14];
      if (v13 <= v16)
      {
        goto LABEL_95;
      }

      if (*(v12 + 456 * v11 + 449) > *(v12 + 456 * v16 + 449))
      {
        break;
      }

      v14 += 8;
      if (__CFADD__(v15++, 1))
      {
        return result;
      }
    }

    v18 = -v15;
    v101 = a3;
    __src = a7;
    v99 = a8;
    v100 = a4;
    if (-v15 >= a6)
    {
      if (v15 == -1)
      {
        *&a1[v14] = v11;
        *a2 = v16;
        return result;
      }

      v34 = v18 / 2;
      v35 = &a1[8 * (v18 / 2)];
      v20 = a2;
      if (a2 != a3)
      {
        v36 = (a3 - a2) >> 3;
        v37 = v35[v14 / 8];
        if (v13 > v37)
        {
          v38 = v12 + 456 * v37;
          v20 = a2;
          while (1)
          {
            v39 = v36 >> 1;
            v40 = &v20[v36 >> 1];
            if (v13 <= *v40)
            {
              break;
            }

            v41 = *(v12 + 456 * *v40 + 449);
            v42 = v40 + 1;
            v36 += ~v39;
            if (v41 > *(v38 + 449))
            {
              v20 = v42;
            }

            else
            {
              v36 = v39;
            }

            if (!v36)
            {
              goto LABEL_37;
            }
          }
        }

LABEL_95:
        sub_6FAB4();
      }

LABEL_37:
      v19 = (v20 - a2) >> 3;
      v21 = &v35[v14 / 8];
    }

    else
    {
      v19 = a6 / 2;
      v20 = &a2[8 * (a6 / 2)];
      v21 = a2;
      v22 = a2 - a1 - v14;
      if (a2 - a1 != v14)
      {
        if (v13 <= *v20)
        {
          goto LABEL_95;
        }

        v23 = v22 >> 3;
        v24 = (v22 >> 3) >> 1;
        v25 = &a1[8 * v24 + v14];
        if (v13 <= *v25)
        {
          goto LABEL_95;
        }

        v26 = *(v12 + 456 * *v20 + 449);
        v27 = *(v12 + 456 * *v25 + 449);
        v28 = v25 + 1;
        v29 = v23 + ~v24;
        if (v26 <= v27)
        {
          v21 = v28;
        }

        else
        {
          v21 = &a1[v14];
        }

        if (v26 <= v27)
        {
          v24 = v29;
        }

        while (v24)
        {
          v30 = v24 >> 1;
          v31 = &v21[v24 >> 1];
          if (v13 <= *v31)
          {
            goto LABEL_95;
          }

          v32 = *(v12 + 456 * *v31 + 449);
          v33 = v31 + 1;
          v24 += ~v30;
          if (v26 > v32)
          {
            v24 = v30;
          }

          else
          {
            v21 = v33;
          }
        }
      }

      v34 = (v21 - a1 - v14) >> 3;
    }

    a5 = -(v34 + v15);
    v98 = a6 - v19;
    v43 = a6;
    v44 = v34;
    v45 = sub_9C948C(v21, a2, v20);
    v46 = v45;
    if (v44 + v19 >= v43 - (v44 + v19) - v15)
    {
      v97 = v45;
      v51 = v44;
      a7 = __src;
      result.n128_u64[0] = sub_9C9E20(v45, v20, v101, v100, a5, v98, __src, v99).n128_u64[0];
      a3 = v97;
      a1 += v14;
      v20 = v21;
      a8 = v99;
      a4 = v100;
      a5 = v51;
    }

    else
    {
      v47 = &a1[v14];
      v48 = v46;
      v49 = v44;
      a7 = __src;
      result.n128_u64[0] = sub_9C9E20(v47, v21, v46, v100, v49, v19, __src, v99).n128_u64[0];
      a8 = v99;
      a4 = v100;
      a1 = v48;
      a3 = v101;
      v19 = v98;
    }

    a6 = v19;
    a2 = v20;
    if (!v19)
    {
      return result;
    }
  }

  if (a5 <= a6)
  {
    if (a2 != a1)
    {
      v61 = a2 - a1 - 8;
      v62 = a7;
      v63 = a1;
      if (v61 < 0x18)
      {
        goto LABEL_98;
      }

      v62 = a7;
      v63 = a1;
      if ((a7 - a1) <= 0x1F)
      {
        goto LABEL_98;
      }

      v64 = (v61 >> 3) + 1;
      v65 = v64 & 0x3FFFFFFFFFFFFFFCLL;
      v62 = &a7[v65];
      v63 = &a1[v65 * 8];
      v66 = (a1 + 16);
      v67 = a7 + 2;
      v68 = v64 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = *(v66 - 1);
        v69 = *v66;
        *(v67 - 1) = result;
        *v67 = v69;
        v66 += 4;
        v67 += 4;
        v68 -= 4;
      }

      while (v68);
      if (v64 != (v64 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_98:
        do
        {
          v70 = *v63++;
          *v62++ = v70;
        }

        while (v63 != a2);
      }

      v71 = *a4;
      while (a2 != a3)
      {
        v72 = *a2;
        v73 = *(v71 + 176);
        v74 = 0x823EE08FB823EE09 * ((*(v71 + 184) - v73) >> 3);
        if (v74 <= *a2 || v74 <= *a7)
        {
          goto LABEL_95;
        }

        v75 = *(v73 + 456 * v72 + 449);
        v76 = *(v73 + 456 * *a7 + 449);
        v77 = v75 > v76;
        v78 = v75 <= v76;
        v79 = v77;
        if (!v77)
        {
          v72 = *a7;
        }

        a2 += 8 * v79;
        a7 += v78;
        *a1 = v72;
        a1 += 8;
        if (a7 == v62)
        {
          return result;
        }
      }

      memmove(a1, a7, v62 - a7);
    }

    return result;
  }

  if (a2 == a3)
  {
    return result;
  }

  v52 = a3 - a2 - 8;
  if (v52 < 0x18)
  {
    v53 = a7;
    v54 = a2;
  }

  else
  {
    v53 = a7;
    v54 = a2;
    if ((a7 - a2) > 0x1F)
    {
      v55 = (v52 >> 3) + 1;
      v56 = v55 & 0x3FFFFFFFFFFFFFFCLL;
      v53 = &a7[v56];
      v54 = &a2[v56 * 8];
      v57 = (a2 + 16);
      v58 = a7 + 2;
      v59 = v55 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = *(v57 - 1);
        v60 = *v57;
        *(v58 - 1) = result;
        *v58 = v60;
        v57 += 4;
        v58 += 4;
        v59 -= 4;
      }

      while (v59);
      if (v55 == (v55 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_75;
      }
    }
  }

  do
  {
    v80 = *v54++;
    *v53++ = v80;
  }

  while (v54 != a3);
LABEL_75:
  v81 = *a4;
  v82 = a3;
  while (a2 != a1)
  {
    v83 = *(v53 - 1);
    v84 = *(v81 + 176);
    v85 = 0x823EE08FB823EE09 * ((*(v81 + 184) - v84) >> 3);
    if (v85 <= v83)
    {
      goto LABEL_95;
    }

    v86 = *(a2 - 1);
    if (v85 <= v86)
    {
      goto LABEL_95;
    }

    if (*(v84 + 456 * v83 + 449) <= *(v84 + 456 * v86 + 449))
    {
      --v53;
    }

    else
    {
      v83 = *(a2 - 1);
      a2 -= 8;
    }

    *(a3 - 1) = v83;
    a3 -= 8;
    v82 -= 8;
    if (v53 == a7)
    {
      return result;
    }
  }

  v87 = v53 - a7;
  if (v53 != a7)
  {
    v88 = v87 - 8;
    if ((v87 - 8) < 0x48 || (v53 - v82) < 0x20)
    {
      v89 = v53;
LABEL_88:
      v90 = a3 - 8;
      do
      {
        v91 = *--v89;
        *v90 = v91;
        v90 -= 8;
      }

      while (v89 != a7);
      return result;
    }

    v92 = (a3 - 16);
    v93 = (v88 >> 3) + 1;
    v94 = 8 * (v93 & 0x3FFFFFFFFFFFFFFCLL);
    v89 = &v53[v94 / 0xFFFFFFFFFFFFFFF8];
    a3 -= v94;
    v95 = (v53 - 2);
    v96 = v93 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = *v95;
      v92[-1] = v95[-1];
      *v92 = result;
      v92 -= 2;
      v95 -= 2;
      v96 -= 4;
    }

    while (v96);
    if (v93 != (v93 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_88;
    }
  }

  return result;
}

void sub_9CA410()
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
  xmmword_27B33E0 = 0u;
  *algn_27B33F0 = 0u;
  dword_27B3400 = 1065353216;
  sub_3A9A34(&xmmword_27B33E0, v0, v0);
  sub_3A9A34(&xmmword_27B33E0, v3, v3);
  sub_3A9A34(&xmmword_27B33E0, __p, __p);
  sub_3A9A34(&xmmword_27B33E0, v9, v9);
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
    qword_27B33B8 = 0;
    qword_27B33C0 = 0;
    qword_27B33B0 = 0;
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

void sub_9CA658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B33C8)
  {
    qword_27B33D0 = qword_27B33C8;
    operator delete(qword_27B33C8);
  }

  _Unwind_Resume(exception_object);
}

void sub_9CA704(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_9CEAD0(a3, &v4);
}

__n128 sub_9CA83C(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 4);
  v9 = *(result + 3);
  result[2] = a2 + 3;
  result[3] = a3;
  result[4] = a4;
  result[5] = a2 + 36;
  v5 = *result;
  v8[0] = a2 + 3;
  v8[1] = v5;
  v8[2] = a3;
  v8[3] = a2 + 36;
  v10 = v4;
  v6 = *(result + 5);
  v11 = v6;
  v7 = result[12];
  v8[4] = result[13];
  v12 = v7;
  if (*a2 != a2[1])
  {
    sub_9CAB30(result, *a2, v8);
  }

  return v6;
}

void sub_9CAAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_98ED24(&a9);
  sub_98ED24(&a28);
  _Unwind_Resume(a1);
}

void sub_9CACA4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  *(v1 - 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_9CACF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_A186C4(a2, a3, &v20);
  if (v20.n128_u64[0] && !sub_A19B28(v20.n128_i64[0]))
  {
    v5 = sub_A21CB8(a2);
    v6 = *(a1 + 24);
    v7 = *(v6 + 1072);
    v8 = *(v6 + 1080);
    v9 = v7;
    if (v7 != v8)
    {
      v9 = v7;
      while (*v9 != 2)
      {
        if (++v9 == v8)
        {
          goto LABEL_12;
        }
      }
    }

    if (v9 != v8)
    {
      sub_9CB3E4(a1, &v20, 2, v5);
      v10 = *(a1 + 24);
      v7 = *(v10 + 1072);
      v8 = *(v10 + 1080);
    }

LABEL_12:
    while (v7 != v8)
    {
      if (*v7 == 1)
      {
        if (v7 != v8)
        {
          sub_9CB3E4(a1, &v20, 1, v5);
        }

        break;
      }

      ++v7;
    }

    (*(*v20.n128_u64[0] + 32))(v18);
    sub_53D784(v5 + 1696, v18);
    *(v5 + 1856) = v19[0];
    sub_6081F0(v18);
    (*(*v20.n128_u64[0] + 24))(v18);
    sub_53D784(v5 + 1272, v18);
    sub_53D784(v5 + 1432, v19);
    *(v5 + 1592) = v19[160];
    sub_6081F0(v19);
    sub_6081F0(v18);
    (*(*v20.n128_u64[0] + 40))(v18);
    sub_53D784(v5 + 1112, v18);
    sub_6081F0(v18);
    v11 = sub_A21CB8(a2);
    if (*(v11 + 2224) != *(v11 + 2232))
    {
      v12 = v20.n128_u64[0];
      v13 = sub_A21CB8(a2);
      (*(*v12 + 80))(v12, v13 + 2224);
    }

    v14 = sub_A21CB8(a2);
    if (*(v14 + 3424) != *(v14 + 3432))
    {
      v15 = v20.n128_u64[0];
      v16 = sub_A21CB8(a2);
      (*(*v15 + 88))(v15, v16 + 3424);
    }
  }

  v17 = v20.n128_u64[1];
  if (v20.n128_u64[1])
  {
    if (!atomic_fetch_add((v20.n128_u64[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }
}