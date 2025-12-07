void sub_656780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a30 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v30 - 33) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a25);
  if ((*(v30 - 33) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v30 - 56));
  _Unwind_Resume(exception_object);
}

void sub_656834(uint64_t a1@<X0>, __int128 **a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v7 = (**a1 + 704 * *(a1 + 8));
  sub_73B5F8(v7 + 72, a3, &v41);
  sub_73B5F8(v7 + 65, a3, &v39);
  sub_73B5F8(v7 + 68, a3, &v37);
  if (SHIBYTE(v40) < 0)
  {
    sub_325C(v15, v39, *(&v39 + 1));
  }

  else
  {
    *v15 = v39;
    v16 = v40;
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_325C(__p, v37, *(&v37 + 1));
  }

  else
  {
    *__p = v37;
    v18 = v38;
  }

  sub_6585C0(a4, (v7 + 64), &v41, v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v15[0]);
LABEL_9:
  v36 = a3;
  sub_656C18(&v36, a2, v15);
  v8 = a4[43];
  if (v8 >= a4[44])
  {
    sub_659C58(a4 + 42, v15);
    v13 = SHIBYTE(v35);
    a4[43] = v14;
    if (v13 < 0)
    {
      operator delete(v34[0]);
      if (SHIBYTE(v33) < 0)
      {
        goto LABEL_22;
      }
    }

    else if (SHIBYTE(v33) < 0)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (SHIBYTE(v31) < 0)
    {
      goto LABEL_23;
    }

LABEL_15:
    sub_33D5A0(v15);
    if (SHIBYTE(v38) < 0)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (SHIBYTE(v40) < 0)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *v8 = 0;
  *(v8 + 8) = 0;
  *v8 = *v15;
  *(v8 + 16) = v16;
  v15[0] = 0;
  v15[1] = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 24) = *__p;
  *(v8 + 40) = v18;
  *(v8 + 48) = 0;
  v16 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = v19;
  v19 = 0uLL;
  *(v8 + 64) = v20;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 72) = v21;
  *(v8 + 88) = v22;
  *(v8 + 96) = 0;
  v20 = 0;
  v21 = 0uLL;
  v22 = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = v23;
  *(v8 + 112) = v24;
  v23 = 0uLL;
  v9 = v26;
  *(v8 + 120) = v25;
  *(v8 + 136) = v9;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 144) = v27;
  *(v8 + 160) = v28;
  v24 = 0;
  v27 = 0uLL;
  v28 = 0;
  *(v8 + 168) = v29;
  v10 = *v30;
  *(v8 + 192) = v31;
  *(v8 + 176) = v10;
  v30[0] = 0;
  v30[1] = 0;
  v11 = *v32;
  *(v8 + 216) = v33;
  *(v8 + 200) = v11;
  v32[1] = 0;
  v33 = 0;
  v31 = 0;
  v32[0] = 0;
  v12 = *v34;
  *(v8 + 240) = v35;
  *(v8 + 224) = v12;
  v34[1] = 0;
  v35 = 0;
  v34[0] = 0;
  a4[43] = v8 + 248;
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_22:
  operator delete(v32[0]);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_23:
  operator delete(v30[0]);
  sub_33D5A0(v15);
  if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_24:
  operator delete(v37);
  if (SHIBYTE(v40) < 0)
  {
LABEL_25:
    operator delete(v39);
    if (v42 < 0)
    {
      goto LABEL_26;
    }

    return;
  }

LABEL_17:
  if (v42 < 0)
  {
LABEL_26:
    operator delete(v41);
  }
}

void sub_656B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v14 - 97) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v14 - 73) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v14 - 97) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v14 - 120));
  if ((*(v14 - 73) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v14 - 49) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*(v14 - 96));
  if ((*(v14 - 49) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v14 - 72));
  _Unwind_Resume(exception_object);
}

void sub_656C18(uint64_t *a1@<X0>, __int128 **a2@<X1>, uint64_t a3@<X8>)
{
  sub_73B5F8(a2 + 6, *a1, &v14);
  sub_73B5F8(a2 + 9, *a1, v12);
  sub_73B5F8(a2 + 12, *a1, v10);
  if (SHIBYTE(v13) < 0)
  {
    sub_325C(v6, v12[0], v12[1]);
  }

  else
  {
    *v6 = *v12;
    v7 = v13;
  }

  if (SHIBYTE(v11) < 0)
  {
    sub_325C(__p, v10[0], v10[1]);
  }

  else
  {
    *__p = *v10;
    v9 = v11;
  }

  sub_65833C(a3, a2, &v14, v6);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v7) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v11) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v6[0]);
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v10[0]);
  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
LABEL_11:
    if ((v15 & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(v14);
    return;
  }

LABEL_16:
  operator delete(v12[0]);
  if (v15 < 0)
  {
    goto LABEL_17;
  }
}

void sub_656D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a30 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v30 - 33) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a25);
  if ((*(v30 - 33) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v30 - 56));
  _Unwind_Resume(exception_object);
}

void sub_656E20(uint64_t a1@<X0>, __int128 **a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v7 = (**a1 + 704 * *(a1 + 8));
  sub_73E85C(v7 + 72, a3 + 968, &v41);
  sub_73E85C(v7 + 65, a3 + 968, &v39);
  sub_73E85C(v7 + 68, a3 + 968, &v37);
  if (SHIBYTE(v40) < 0)
  {
    sub_325C(v15, v39, *(&v39 + 1));
  }

  else
  {
    *v15 = v39;
    v16 = v40;
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_325C(__p, v37, *(&v37 + 1));
  }

  else
  {
    *__p = v37;
    v18 = v38;
  }

  sub_6585C0(a4, (v7 + 64), &v41, v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v15[0]);
LABEL_9:
  v36 = a3;
  sub_657204(&v36, a2, v15);
  v8 = a4[43];
  if (v8 >= a4[44])
  {
    sub_659C58(a4 + 42, v15);
    v13 = SHIBYTE(v35);
    a4[43] = v14;
    if (v13 < 0)
    {
      operator delete(v34[0]);
      if (SHIBYTE(v33) < 0)
      {
        goto LABEL_22;
      }
    }

    else if (SHIBYTE(v33) < 0)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (SHIBYTE(v31) < 0)
    {
      goto LABEL_23;
    }

LABEL_15:
    sub_33D5A0(v15);
    if (SHIBYTE(v38) < 0)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (SHIBYTE(v40) < 0)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *v8 = 0;
  *(v8 + 8) = 0;
  *v8 = *v15;
  *(v8 + 16) = v16;
  v15[0] = 0;
  v15[1] = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 24) = *__p;
  *(v8 + 40) = v18;
  *(v8 + 48) = 0;
  v16 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = v19;
  v19 = 0uLL;
  *(v8 + 64) = v20;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 72) = v21;
  *(v8 + 88) = v22;
  *(v8 + 96) = 0;
  v20 = 0;
  v21 = 0uLL;
  v22 = 0;
  *(v8 + 104) = 0;
  *(v8 + 112) = 0;
  *(v8 + 96) = v23;
  *(v8 + 112) = v24;
  v23 = 0uLL;
  v9 = v26;
  *(v8 + 120) = v25;
  *(v8 + 136) = v9;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 144) = v27;
  *(v8 + 160) = v28;
  v24 = 0;
  v27 = 0uLL;
  v28 = 0;
  *(v8 + 168) = v29;
  v10 = *v30;
  *(v8 + 192) = v31;
  *(v8 + 176) = v10;
  v30[0] = 0;
  v30[1] = 0;
  v11 = *v32;
  *(v8 + 216) = v33;
  *(v8 + 200) = v11;
  v32[1] = 0;
  v33 = 0;
  v31 = 0;
  v32[0] = 0;
  v12 = *v34;
  *(v8 + 240) = v35;
  *(v8 + 224) = v12;
  v34[1] = 0;
  v35 = 0;
  v34[0] = 0;
  a4[43] = v8 + 248;
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_22:
  operator delete(v32[0]);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_23:
  operator delete(v30[0]);
  sub_33D5A0(v15);
  if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_24:
  operator delete(v37);
  if (SHIBYTE(v40) < 0)
  {
LABEL_25:
    operator delete(v39);
    if (v42 < 0)
    {
      goto LABEL_26;
    }

    return;
  }

LABEL_17:
  if (v42 < 0)
  {
LABEL_26:
    operator delete(v41);
  }
}

void sub_657128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v14 - 97) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v14 - 73) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v14 - 97) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v14 - 120));
  if ((*(v14 - 73) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v14 - 49) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*(v14 - 96));
  if ((*(v14 - 49) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v14 - 72));
  _Unwind_Resume(exception_object);
}

void sub_657204(void *a1@<X0>, __int128 **a2@<X1>, uint64_t a3@<X8>)
{
  sub_73E85C(a2 + 6, *a1 + 968, &v14);
  sub_73E85C(a2 + 9, *a1 + 968, v12);
  sub_73E85C(a2 + 12, *a1 + 968, v10);
  if (SHIBYTE(v13) < 0)
  {
    sub_325C(v6, v12[0], v12[1]);
  }

  else
  {
    *v6 = *v12;
    v7 = v13;
  }

  if (SHIBYTE(v11) < 0)
  {
    sub_325C(__p, v10[0], v10[1]);
  }

  else
  {
    *__p = *v10;
    v9 = v11;
  }

  sub_65833C(a3, a2, &v14, v6);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v7) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v11) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v6[0]);
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v10[0]);
  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
LABEL_11:
    if ((v15 & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(v14);
    return;
  }

LABEL_16:
  operator delete(v12[0]);
  if (v15 < 0)
  {
    goto LABEL_17;
  }
}

void sub_657364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a30 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v30 - 33) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a25);
  if ((*(v30 - 33) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v30 - 56));
  _Unwind_Resume(exception_object);
}

void sub_657418(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  v4 = *(a1 + 88);
  if (v4 == v3)
  {
    return;
  }

  v7 = v4 + 8;
  while (*(v7 - 8) != 6)
  {
    v8 = v7 + 24;
    v7 += 32;
    if (v8 == v3)
    {
      goto LABEL_13;
    }
  }

  if (v7 - 8 != v3)
  {
    if (*v7 == *(v7 + 8))
    {
      v11 = 0;
      v10 = 0;
    }

    else
    {
      v9 = a3;
      sub_737E50(v7, a3 + 968, v41);
      v10 = *v41;
      *v36 = *&v41[8];
      *&v36[7] = *&v41[15];
      v11 = v42;
      a3 = v9;
    }

    *v41 = *v36;
    *&v41[7] = *&v36[7];
    *(a1 + 296) = 6;
    if (*(a1 + 327) < 0)
    {
      v12 = a3;
      operator delete(*(a1 + 304));
      a3 = v12;
    }

    v13 = *v41;
    *(a1 + 304) = v10;
    *(a1 + 312) = v13;
    *(a1 + 319) = *&v41[7];
    *(a1 + 327) = v11;
  }

LABEL_13:
  if (*(a1 + 329) == 1)
  {
    v14 = *(a1 + 328);
    if (*(a1 + 331) != 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
    if (*(a1 + 331) != 1)
    {
LABEL_15:
      v15 = 0;
      v16 = *(a1 + 88);
      v17 = *(a1 + 96);
      v18 = v16;
      if (v16 == v17)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  v15 = *(a1 + 330);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = v16;
  if (v16 == v17)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = v16;
  while (*v18 != 5)
  {
    v18 += 4;
    if (v18 == v17)
    {
      goto LABEL_24;
    }
  }

LABEL_23:
  if (!((v18 == v17) | (v14 | v15) & 1))
  {
    v21 = *v18;
    if (v18[1] == v18[2])
    {
      v23 = 0;
      v22 = 0;
      *(a1 + 264) = v21;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_737E50(v18 + 1, a3 + 968, v41);
      v22 = *v41;
      *v37 = *&v41[8];
      *&v37[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v21;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_38:
        v24 = a1 + 280;
        *(a1 + 272) = v22;
        *(a1 + 280) = *v37;
        v25 = *&v37[7];
LABEL_70:
        *(v24 + 7) = v25;
        *(a1 + 295) = v23;
        return;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_38;
  }

LABEL_24:
  v19 = v16;
  if (v16 != v17)
  {
    v19 = v16;
    while (*v19 != 3)
    {
      v19 += 4;
      if (v19 == v17)
      {
        goto LABEL_30;
      }
    }
  }

  if (!((v19 == v17 || (v14 & 1) == 0) | v15 & 1))
  {
    v29 = *v19;
    if (v19[1] == v19[2])
    {
      v23 = 0;
      v30 = 0;
      *(a1 + 264) = v29;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      sub_737E50(v19 + 1, a3 + 968, v41);
      v30 = *v41;
      *v38 = *&v41[8];
      *&v38[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v29;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_52:
        v24 = a1 + 280;
        *(a1 + 272) = v30;
        *(a1 + 280) = *v38;
        v25 = *&v38[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_52;
  }

LABEL_30:
  v20 = v16;
  if (v16 != v17)
  {
    v20 = v16;
    while (*v20 != 2)
    {
      v20 += 4;
      if (v20 == v17)
      {
        goto LABEL_44;
      }
    }
  }

  if (((v20 != v17) & (v14 ^ 1) & v15) == 1)
  {
    v26 = *v20;
    if (v20[1] == v20[2])
    {
      v23 = 0;
      v27 = 0;
      *(a1 + 264) = v26;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_737E50(v20 + 1, a3 + 968, v41);
      v27 = *v41;
      *v39 = *&v41[8];
      *&v39[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v26;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_43:
        v24 = a1 + 280;
        *(a1 + 272) = v27;
        *(a1 + 280) = *v39;
        v25 = *&v39[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_43;
  }

LABEL_44:
  v28 = v16;
  if (v16 != v17)
  {
    v28 = v16;
    while (*v28 != 4)
    {
      v28 += 4;
      if (v28 == v17)
      {
        goto LABEL_59;
      }
    }
  }

  if (v28 != v17 && a2)
  {
    v31 = *v28;
    if (v28[1] == v28[2])
    {
      v23 = 0;
      v32 = 0;
      *(a1 + 264) = v31;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      sub_737E50(v28 + 1, a3 + 968, v41);
      v32 = *v41;
      *v40 = *&v41[8];
      *&v40[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v31;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_58:
        v24 = a1 + 280;
        *(a1 + 272) = v32;
        *(a1 + 280) = *v40;
        v25 = *&v40[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_58;
  }

LABEL_59:
  if (v16 != v17)
  {
    while (*v16 != 1)
    {
      v16 += 4;
      if (v16 == v17)
      {
        return;
      }
    }
  }

  if (v16 != v17)
  {
    v33 = *v16;
    if (v16[1] == v16[2])
    {
      v23 = 0;
      v34 = 0;
      *(a1 + 264) = v33;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      sub_737E50(v16 + 1, a3 + 968, v41);
      v34 = *v41;
      v43[0] = *&v41[8];
      *(v43 + 7) = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v33;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_69:
        v24 = a1 + 280;
        v35 = v43[0];
        *(a1 + 272) = v34;
        *(a1 + 280) = v35;
        v25 = *(v43 + 7);
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_69;
  }
}

void sub_657924(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  v4 = *(a1 + 88);
  if (v4 == v3)
  {
    return;
  }

  v7 = v4 + 8;
  while (*(v7 - 8) != 6)
  {
    v8 = v7 + 24;
    v7 += 32;
    if (v8 == v3)
    {
      goto LABEL_13;
    }
  }

  if (v7 - 8 != v3)
  {
    if (*v7 == *(v7 + 8))
    {
      v11 = 0;
      v10 = 0;
    }

    else
    {
      v9 = a3;
      sub_73B5F8(v7, a3 + 968, v41);
      v10 = *v41;
      *v36 = *&v41[8];
      *&v36[7] = *&v41[15];
      v11 = v42;
      a3 = v9;
    }

    *v41 = *v36;
    *&v41[7] = *&v36[7];
    *(a1 + 296) = 6;
    if (*(a1 + 327) < 0)
    {
      v12 = a3;
      operator delete(*(a1 + 304));
      a3 = v12;
    }

    v13 = *v41;
    *(a1 + 304) = v10;
    *(a1 + 312) = v13;
    *(a1 + 319) = *&v41[7];
    *(a1 + 327) = v11;
  }

LABEL_13:
  if (*(a1 + 329) == 1)
  {
    v14 = *(a1 + 328);
    if (*(a1 + 331) != 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
    if (*(a1 + 331) != 1)
    {
LABEL_15:
      v15 = 0;
      v16 = *(a1 + 88);
      v17 = *(a1 + 96);
      v18 = v16;
      if (v16 == v17)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  v15 = *(a1 + 330);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = v16;
  if (v16 == v17)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = v16;
  while (*v18 != 5)
  {
    v18 += 4;
    if (v18 == v17)
    {
      goto LABEL_24;
    }
  }

LABEL_23:
  if (!((v18 == v17) | (v14 | v15) & 1))
  {
    v21 = *v18;
    if (v18[1] == v18[2])
    {
      v23 = 0;
      v22 = 0;
      *(a1 + 264) = v21;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_73B5F8(v18 + 1, a3 + 968, v41);
      v22 = *v41;
      *v37 = *&v41[8];
      *&v37[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v21;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_38:
        v24 = a1 + 280;
        *(a1 + 272) = v22;
        *(a1 + 280) = *v37;
        v25 = *&v37[7];
LABEL_70:
        *(v24 + 7) = v25;
        *(a1 + 295) = v23;
        return;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_38;
  }

LABEL_24:
  v19 = v16;
  if (v16 != v17)
  {
    v19 = v16;
    while (*v19 != 3)
    {
      v19 += 4;
      if (v19 == v17)
      {
        goto LABEL_30;
      }
    }
  }

  if (!((v19 == v17 || (v14 & 1) == 0) | v15 & 1))
  {
    v29 = *v19;
    if (v19[1] == v19[2])
    {
      v23 = 0;
      v30 = 0;
      *(a1 + 264) = v29;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      sub_73B5F8(v19 + 1, a3 + 968, v41);
      v30 = *v41;
      *v38 = *&v41[8];
      *&v38[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v29;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_52:
        v24 = a1 + 280;
        *(a1 + 272) = v30;
        *(a1 + 280) = *v38;
        v25 = *&v38[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_52;
  }

LABEL_30:
  v20 = v16;
  if (v16 != v17)
  {
    v20 = v16;
    while (*v20 != 2)
    {
      v20 += 4;
      if (v20 == v17)
      {
        goto LABEL_44;
      }
    }
  }

  if (((v20 != v17) & (v14 ^ 1) & v15) == 1)
  {
    v26 = *v20;
    if (v20[1] == v20[2])
    {
      v23 = 0;
      v27 = 0;
      *(a1 + 264) = v26;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_73B5F8(v20 + 1, a3 + 968, v41);
      v27 = *v41;
      *v39 = *&v41[8];
      *&v39[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v26;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_43:
        v24 = a1 + 280;
        *(a1 + 272) = v27;
        *(a1 + 280) = *v39;
        v25 = *&v39[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_43;
  }

LABEL_44:
  v28 = v16;
  if (v16 != v17)
  {
    v28 = v16;
    while (*v28 != 4)
    {
      v28 += 4;
      if (v28 == v17)
      {
        goto LABEL_59;
      }
    }
  }

  if (v28 != v17 && a2)
  {
    v31 = *v28;
    if (v28[1] == v28[2])
    {
      v23 = 0;
      v32 = 0;
      *(a1 + 264) = v31;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      sub_73B5F8(v28 + 1, a3 + 968, v41);
      v32 = *v41;
      *v40 = *&v41[8];
      *&v40[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v31;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_58:
        v24 = a1 + 280;
        *(a1 + 272) = v32;
        *(a1 + 280) = *v40;
        v25 = *&v40[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_58;
  }

LABEL_59:
  if (v16 != v17)
  {
    while (*v16 != 1)
    {
      v16 += 4;
      if (v16 == v17)
      {
        return;
      }
    }
  }

  if (v16 != v17)
  {
    v33 = *v16;
    if (v16[1] == v16[2])
    {
      v23 = 0;
      v34 = 0;
      *(a1 + 264) = v33;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      sub_73B5F8(v16 + 1, a3 + 968, v41);
      v34 = *v41;
      v43[0] = *&v41[8];
      *(v43 + 7) = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v33;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_69:
        v24 = a1 + 280;
        v35 = v43[0];
        *(a1 + 272) = v34;
        *(a1 + 280) = v35;
        v25 = *(v43 + 7);
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_69;
  }
}

void sub_657E30(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  v4 = *(a1 + 88);
  if (v4 == v3)
  {
    return;
  }

  v7 = v4 + 8;
  while (*(v7 - 8) != 6)
  {
    v8 = v7 + 24;
    v7 += 32;
    if (v8 == v3)
    {
      goto LABEL_13;
    }
  }

  if (v7 - 8 != v3)
  {
    if (*v7 == *(v7 + 8))
    {
      v11 = 0;
      v10 = 0;
    }

    else
    {
      v9 = a3;
      sub_73E85C(v7, a3 + 968, v41);
      v10 = *v41;
      *v36 = *&v41[8];
      *&v36[7] = *&v41[15];
      v11 = v42;
      a3 = v9;
    }

    *v41 = *v36;
    *&v41[7] = *&v36[7];
    *(a1 + 296) = 6;
    if (*(a1 + 327) < 0)
    {
      v12 = a3;
      operator delete(*(a1 + 304));
      a3 = v12;
    }

    v13 = *v41;
    *(a1 + 304) = v10;
    *(a1 + 312) = v13;
    *(a1 + 319) = *&v41[7];
    *(a1 + 327) = v11;
  }

LABEL_13:
  if (*(a1 + 329) == 1)
  {
    v14 = *(a1 + 328);
    if (*(a1 + 331) != 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
    if (*(a1 + 331) != 1)
    {
LABEL_15:
      v15 = 0;
      v16 = *(a1 + 88);
      v17 = *(a1 + 96);
      v18 = v16;
      if (v16 == v17)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  v15 = *(a1 + 330);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = v16;
  if (v16 == v17)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = v16;
  while (*v18 != 5)
  {
    v18 += 4;
    if (v18 == v17)
    {
      goto LABEL_24;
    }
  }

LABEL_23:
  if (!((v18 == v17) | (v14 | v15) & 1))
  {
    v21 = *v18;
    if (v18[1] == v18[2])
    {
      v23 = 0;
      v22 = 0;
      *(a1 + 264) = v21;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_73E85C(v18 + 1, a3 + 968, v41);
      v22 = *v41;
      *v37 = *&v41[8];
      *&v37[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v21;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_38:
        v24 = a1 + 280;
        *(a1 + 272) = v22;
        *(a1 + 280) = *v37;
        v25 = *&v37[7];
LABEL_70:
        *(v24 + 7) = v25;
        *(a1 + 295) = v23;
        return;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_38;
  }

LABEL_24:
  v19 = v16;
  if (v16 != v17)
  {
    v19 = v16;
    while (*v19 != 3)
    {
      v19 += 4;
      if (v19 == v17)
      {
        goto LABEL_30;
      }
    }
  }

  if (!((v19 == v17 || (v14 & 1) == 0) | v15 & 1))
  {
    v29 = *v19;
    if (v19[1] == v19[2])
    {
      v23 = 0;
      v30 = 0;
      *(a1 + 264) = v29;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      sub_73E85C(v19 + 1, a3 + 968, v41);
      v30 = *v41;
      *v38 = *&v41[8];
      *&v38[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v29;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_52:
        v24 = a1 + 280;
        *(a1 + 272) = v30;
        *(a1 + 280) = *v38;
        v25 = *&v38[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_52;
  }

LABEL_30:
  v20 = v16;
  if (v16 != v17)
  {
    v20 = v16;
    while (*v20 != 2)
    {
      v20 += 4;
      if (v20 == v17)
      {
        goto LABEL_44;
      }
    }
  }

  if (((v20 != v17) & (v14 ^ 1) & v15) == 1)
  {
    v26 = *v20;
    if (v20[1] == v20[2])
    {
      v23 = 0;
      v27 = 0;
      *(a1 + 264) = v26;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_73E85C(v20 + 1, a3 + 968, v41);
      v27 = *v41;
      *v39 = *&v41[8];
      *&v39[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v26;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_43:
        v24 = a1 + 280;
        *(a1 + 272) = v27;
        *(a1 + 280) = *v39;
        v25 = *&v39[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_43;
  }

LABEL_44:
  v28 = v16;
  if (v16 != v17)
  {
    v28 = v16;
    while (*v28 != 4)
    {
      v28 += 4;
      if (v28 == v17)
      {
        goto LABEL_59;
      }
    }
  }

  if (v28 != v17 && a2)
  {
    v31 = *v28;
    if (v28[1] == v28[2])
    {
      v23 = 0;
      v32 = 0;
      *(a1 + 264) = v31;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      sub_73E85C(v28 + 1, a3 + 968, v41);
      v32 = *v41;
      *v40 = *&v41[8];
      *&v40[7] = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v31;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_58:
        v24 = a1 + 280;
        *(a1 + 272) = v32;
        *(a1 + 280) = *v40;
        v25 = *&v40[7];
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_58;
  }

LABEL_59:
  if (v16 != v17)
  {
    while (*v16 != 1)
    {
      v16 += 4;
      if (v16 == v17)
      {
        return;
      }
    }
  }

  if (v16 != v17)
  {
    v33 = *v16;
    if (v16[1] == v16[2])
    {
      v23 = 0;
      v34 = 0;
      *(a1 + 264) = v33;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      sub_73E85C(v16 + 1, a3 + 968, v41);
      v34 = *v41;
      v43[0] = *&v41[8];
      *(v43 + 7) = *&v41[15];
      v23 = v42;
      *(a1 + 264) = v33;
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_69:
        v24 = a1 + 280;
        v35 = v43[0];
        *(a1 + 272) = v34;
        *(a1 + 280) = v35;
        v25 = *(v43 + 7);
        goto LABEL_70;
      }
    }

    operator delete(*(a1 + 272));
    goto LABEL_69;
  }
}

uint64_t sub_65833C(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  sub_382844(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_325C((a1 + 176), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 192) = *(a3 + 2);
    *(a1 + 176) = v7;
  }

  if (*(a4 + 23) < 0)
  {
    sub_325C((a1 + 200), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 216) = *(a4 + 2);
    *(a1 + 200) = v8;
  }

  if (*(a4 + 47) < 0)
  {
    sub_325C((a1 + 224), *(a4 + 3), *(a4 + 4));
  }

  else
  {
    v9 = *(a4 + 24);
    *(a1 + 240) = *(a4 + 5);
    *(a1 + 224) = v9;
  }

  return a1;
}

void sub_6583FC(_Unwind_Exception *a1)
{
  if (*(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
    if ((*(v1 + 199) & 0x80000000) == 0)
    {
LABEL_3:
      sub_33D5A0(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 199) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 176));
  sub_33D5A0(v1);
  _Unwind_Resume(a1);
}

BOOL sub_65846C(uint64_t a1, uint64_t a2)
{
  result = sub_38FD30(a1, a1);
  if (result)
  {
    v5 = *(a1 + 199);
    if (v5 >= 0)
    {
      v6 = *(a1 + 199);
    }

    else
    {
      v6 = *(a1 + 184);
    }

    v7 = *(a2 + 199);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 184);
    }

    if (v6 != v7)
    {
      return 0;
    }

    if (v5 >= 0)
    {
      v9 = (a1 + 176);
    }

    else
    {
      v9 = *(a1 + 176);
    }

    if (v8 >= 0)
    {
      v10 = (a2 + 176);
    }

    else
    {
      v10 = *(a2 + 176);
    }

    if (memcmp(v9, v10, v6))
    {
      return 0;
    }

    v11 = *(a1 + 223);
    if (v11 >= 0)
    {
      v12 = *(a1 + 223);
    }

    else
    {
      v12 = *(a1 + 208);
    }

    v13 = *(a2 + 223);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a2 + 208);
    }

    if (v12 != v13)
    {
      return 0;
    }

    v15 = v11 >= 0 ? (a1 + 200) : *(a1 + 200);
    v16 = v14 >= 0 ? (a2 + 200) : *(a2 + 200);
    if (memcmp(v15, v16, v12))
    {
      return 0;
    }

    v17 = *(a1 + 247);
    if (v17 >= 0)
    {
      v18 = *(a1 + 247);
    }

    else
    {
      v18 = *(a1 + 232);
    }

    v19 = *(a2 + 247);
    v20 = v19;
    if ((v19 & 0x80u) != 0)
    {
      v19 = *(a2 + 232);
    }

    if (v18 != v19)
    {
      return 0;
    }

    v23 = *(a1 + 224);
    v22 = (a1 + 224);
    v21 = v23;
    if (v17 >= 0)
    {
      v24 = v22;
    }

    else
    {
      v24 = v21;
    }

    v27 = *(a2 + 224);
    v26 = (a2 + 224);
    v25 = v27;
    if (v20 >= 0)
    {
      v28 = v26;
    }

    else
    {
      v28 = v25;
    }

    return memcmp(v24, v28, v18) == 0;
  }

  return result;
}

uint64_t sub_6585C0(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  sub_382D1C(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_325C((a1 + 192), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 208) = *(a3 + 2);
    *(a1 + 192) = v7;
  }

  if (*(a4 + 23) < 0)
  {
    sub_325C((a1 + 216), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 232) = *(a4 + 2);
    *(a1 + 216) = v8;
  }

  if (*(a4 + 47) < 0)
  {
    sub_325C((a1 + 240), *(a4 + 3), *(a4 + 4));
  }

  else
  {
    v9 = *(a4 + 24);
    *(a1 + 256) = *(a4 + 5);
    *(a1 + 240) = v9;
  }

  *(a1 + 264) = 0;
  *(a1 + 295) = 0;
  *(a1 + 272) = 0;
  *(a1 + 304) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0;
  *(a1 + 331) = 0;
  *(a1 + 327) = 0;
  return a1;
}

void sub_658698(_Unwind_Exception *a1)
{
  if (*(v1 + 239) < 0)
  {
    operator delete(*(v1 + 216));
    if ((*(v1 + 215) & 0x80000000) == 0)
    {
LABEL_3:
      sub_33D080(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 215) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 192));
  sub_33D080(v1);
  _Unwind_Resume(a1);
}

BOOL sub_658708(uint64_t a1, uint64_t a2)
{
  if (!sub_39018C(a1, a2))
  {
    return 0;
  }

  v4 = *(a1 + 215);
  if (v4 >= 0)
  {
    v5 = *(a1 + 215);
  }

  else
  {
    v5 = *(a1 + 200);
  }

  v6 = *(a2 + 215);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 200);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = v4 >= 0 ? (a1 + 192) : *(a1 + 192);
  v9 = v7 >= 0 ? (a2 + 192) : *(a2 + 192);
  if (memcmp(v8, v9, v5))
  {
    return 0;
  }

  v10 = *(a1 + 239);
  if (v10 >= 0)
  {
    v11 = *(a1 + 239);
  }

  else
  {
    v11 = *(a1 + 224);
  }

  v12 = *(a2 + 239);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 224);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v14 = v10 >= 0 ? (a1 + 216) : *(a1 + 216);
  v15 = v13 >= 0 ? (a2 + 216) : *(a2 + 216);
  if (memcmp(v14, v15, v11))
  {
    return 0;
  }

  v16 = *(a1 + 263);
  if (v16 >= 0)
  {
    v17 = *(a1 + 263);
  }

  else
  {
    v17 = *(a1 + 248);
  }

  v18 = *(a2 + 263);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 248);
  }

  if (v17 != v18)
  {
    return 0;
  }

  v20 = v16 >= 0 ? (a1 + 240) : *(a1 + 240);
  v21 = v19 >= 0 ? (a2 + 240) : *(a2 + 240);
  if (memcmp(v20, v21, v17) || *(a1 + 264) != *(a2 + 264))
  {
    return 0;
  }

  v22 = *(a1 + 295);
  if (v22 >= 0)
  {
    v23 = *(a1 + 295);
  }

  else
  {
    v23 = *(a1 + 280);
  }

  v24 = *(a2 + 295);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 280);
  }

  if (v23 != v24)
  {
    return 0;
  }

  v26 = v22 >= 0 ? (a1 + 272) : *(a1 + 272);
  v27 = v25 >= 0 ? (a2 + 272) : *(a2 + 272);
  if (memcmp(v26, v27, v23) || *(a1 + 296) != *(a2 + 296))
  {
    return 0;
  }

  v28 = *(a1 + 327);
  if (v28 >= 0)
  {
    v29 = *(a1 + 327);
  }

  else
  {
    v29 = *(a1 + 312);
  }

  v30 = *(a2 + 327);
  v31 = v30;
  if ((v30 & 0x80u) != 0)
  {
    v30 = *(a2 + 312);
  }

  if (v29 != v30)
  {
    return 0;
  }

  v32 = v28 >= 0 ? (a1 + 304) : *(a1 + 304);
  v33 = v31 >= 0 ? (a2 + 304) : *(a2 + 304);
  if (memcmp(v32, v33, v29))
  {
    return 0;
  }

  v34 = *(a1 + 329);
  v35 = *(a2 + 329);
  if (v34 == v35 && *(a1 + 329))
  {
    v34 = *(a1 + 328);
    v35 = *(a2 + 328);
  }

  if (v34 != v35)
  {
    return 0;
  }

  v36 = *(a1 + 331);
  v37 = *(a2 + 331);
  if (v36 == v37 && *(a1 + 331))
  {
    v36 = *(a1 + 330);
    v37 = *(a2 + 330);
  }

  if (v36 != v37)
  {
    return 0;
  }

  return sub_65897C((a1 + 336), (a2 + 336));
}

BOOL sub_65897C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_65846C(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 248;
    v4 += 248;
  }

  while (v2 != v3);
  return result;
}

BOOL sub_658A08(uint64_t a1, int a2)
{
  v2 = 264;
  if (a2)
  {
    v2 = 296;
  }

  return *(a1 + v2) != 0;
}

BOOL sub_658A28(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 327);
    if ((v2 & 0x8000000000000000) == 0)
    {
      return v2 != 0;
    }

    return *(a1 + 312) != 0;
  }

  else
  {
    v2 = *(a1 + 295);
    if ((v2 & 0x8000000000000000) == 0)
    {
      return v2 != 0;
    }

    return *(a1 + 280) != 0;
  }
}

char *sub_658A68@<X0>(char *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = 272;
  if (a2)
  {
    v3 = 304;
  }

  v4 = &result[v3];
  if (v4[23] < 0)
  {
    return sub_325C(a3, *v4, *(v4 + 1));
  }

  *a3 = *v4;
  *(a3 + 16) = *(v4 + 2);
  return result;
}

uint64_t sub_658AAC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 8)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x101010103040200uLL >> (8 * v1);
  }

  return v2 & 7;
}

uint64_t sub_658AD4(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = sub_382108(a1, a3);
  *(v5 + 464) = *a2;
  *(v5 + 503) = 0;
  *(v5 + 480) = 0;
  sub_734CE0(v5 + 504);
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 700) = 0;
  *(a1 + 712) = 0;
  *(a1 + 728) = 0;
  *(a1 + 720) = 0;
  *(a1 + 704) = off_266B180;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  return a1;
}

void sub_658B70(_Unwind_Exception *a1)
{
  if (*(v1 + 503) < 0)
  {
    operator delete(*(v1 + 480));
  }

  sub_2C0F28(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_658B94(uint64_t a1, _OWORD *a2, uint64_t a3, __int128 *a4)
{
  *(sub_382108(a1, a3) + 464) = *a2;
  if (*(a4 + 23) < 0)
  {
    sub_325C((a1 + 480), *a4, *(a4 + 1));
  }

  else
  {
    v6 = *a4;
    *(a1 + 496) = *(a4 + 2);
    *(a1 + 480) = v6;
  }

  sub_734CE0(a1 + 504);
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 700) = 0;
  *(a1 + 712) = 0;
  *(a1 + 728) = 0;
  *(a1 + 720) = 0;
  *(a1 + 704) = off_266B180;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  return a1;
}

void sub_658C70(_Unwind_Exception *a1)
{
  if (*(v1 + 503) < 0)
  {
    operator delete(*(v1 + 480));
  }

  sub_2C0F28(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_658C98(uint64_t a1, uint64_t a2, __int128 *a3, char a4)
{
  v7 = sub_382108(a1, a2);
  *(v7 + 464) = 0;
  *(v7 + 472) = 0;
  if (*(a3 + 23) < 0)
  {
    sub_325C((a1 + 480), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 496) = *(a3 + 2);
    *(a1 + 480) = v8;
  }

  sub_734CE0(a1 + 504);
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 700) = 0;
  *(a1 + 712) = 0;
  *(a1 + 728) = 0;
  *(a1 + 720) = 0;
  *(a1 + 704) = off_266B180;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = a4;
  return a1;
}

void sub_658D70(_Unwind_Exception *a1)
{
  if (*(v1 + 503) < 0)
  {
    operator delete(*(v1 + 480));
  }

  sub_2C0F28(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_658D98(uint64_t a1, _OWORD *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  *(sub_382108(a1, a3) + 464) = *a2;
  if (*(a4 + 23) < 0)
  {
    sub_325C((a1 + 480), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 496) = *(a4 + 2);
    *(a1 + 480) = v8;
  }

  sub_734CE0(a1 + 504);
  *(a1 + 656) = a5;
  *(a1 + 664) = 1;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 700) = 0;
  *(a1 + 712) = 0;
  *(a1 + 728) = 0;
  *(a1 + 720) = 0;
  *(a1 + 704) = off_266B180;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  return a1;
}

void sub_658E7C(_Unwind_Exception *a1)
{
  if (*(v1 + 503) < 0)
  {
    operator delete(*(v1 + 480));
  }

  sub_2C0F28(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_658EA4(uint64_t a1, _OWORD *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, _OWORD *a7)
{
  *(sub_382108(a1, a3) + 464) = *a2;
  if (*(a4 + 23) < 0)
  {
    sub_325C((a1 + 480), *a4, *(a4 + 1));
  }

  else
  {
    v12 = *a4;
    *(a1 + 496) = *(a4 + 2);
    *(a1 + 480) = v12;
  }

  sub_5139E8(a1 + 504, a5);
  *(a1 + 656) = a6;
  *(a1 + 664) = 1;
  *(a1 + 672) = *a7;
  *(a1 + 688) = 0;
  *(a1 + 700) = 0;
  *(a1 + 712) = 0;
  *(a1 + 728) = 0;
  *(a1 + 720) = 0;
  *(a1 + 704) = off_266B180;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  return a1;
}

void sub_658F9C(_Unwind_Exception *a1)
{
  if (*(v1 + 503) < 0)
  {
    operator delete(*(v1 + 480));
  }

  sub_2C0F28(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_658FC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 472);
  result = *(a2 + 472);
  if (v3 == result && v3 != 0)
  {
    if (*(a1 + 464) != *(a2 + 464))
    {
      goto LABEL_9;
    }

    return sub_38ECE8(a1, a2);
  }

  if (v3 == result)
  {
    return sub_38ECE8(a1, a2);
  }

LABEL_9:
  if (v3)
  {
    v6 = result == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return *(a1 + 464) < *(a2 + 464);
  }

  return result;
}

BOOL sub_65901C(uint64_t a1, uint64_t a2)
{
  result = sub_38E9BC(a1, a2);
  if (result)
  {
    v5 = *(a1 + 472);
    v6 = *(a2 + 472);
    if (v5 != v6 || v5 == 0)
    {
      if (v5 != v6)
      {
        return 0;
      }
    }

    else if (*(a1 + 464) != *(a2 + 464))
    {
      return 0;
    }

    v8 = *(a1 + 503);
    if (v8 >= 0)
    {
      v9 = *(a1 + 503);
    }

    else
    {
      v9 = *(a1 + 488);
    }

    v10 = *(a2 + 503);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 488);
    }

    if (v9 != v10)
    {
      return 0;
    }

    v12 = v8 >= 0 ? (a1 + 480) : *(a1 + 480);
    v13 = v11 >= 0 ? (a2 + 480) : *(a2 + 480);
    if (memcmp(v12, v13, v9))
    {
      return 0;
    }

    v14 = *(a1 + 1104);
    v15 = *(a2 + 1104);
    if (v14 == v15 && *(a1 + 1104))
    {
      if (!sub_658708(a1 + 744, a2 + 744))
      {
        return 0;
      }
    }

    else if (v14 != v15)
    {
      return 0;
    }

    v16 = *(a1 + 664);
    v17 = *(a2 + 664);
    if (v16 == v17 && *(a1 + 664))
    {
      if (*(a1 + 656) != *(a2 + 656))
      {
        return 0;
      }
    }

    else if (v16 != v17)
    {
      return 0;
    }

    v18 = *(a1 + 680);
    v19 = *(a2 + 680);
    if (v18 == v19 && *(a1 + 680))
    {
      if (*(a1 + 672) != *(a2 + 672))
      {
        return 0;
      }
    }

    else if (v18 != v19)
    {
      return 0;
    }

    v20 = *(a2 + 700);
    v21 = *(a1 + 700);
    result = v21 == v20;
    if (v21 == v20 && *(a1 + 700))
    {
      if (*(a1 + 688) == *(a2 + 688) && *(a1 + 692) == *(a2 + 692))
      {
        return *(a1 + 696) == *(a2 + 696);
      }

      return 0;
    }
  }

  return result;
}

void sub_6591E0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 71) < 0)
  {
    sub_325C(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  v3 = std::string::insert(&__p, 0, "IncidentsCausingDelay_", 0x16uLL);
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_659280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_65929C(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  if (sub_734C10(a1 + 504) && a3)
  {
    if (a2)
    {

      sub_734D90(a4);
      return;
    }

    if ((*(a1 + 655) & 0x80000000) == 0)
    {
      *a4 = *(a1 + 632);
      v12 = *(a1 + 648);
LABEL_29:
      a4[2] = v12;
      return;
    }

    v13 = *(a1 + 632);
    v14 = *(a1 + 640);
    goto LABEL_31;
  }

  v8 = *(a1 + 127);
  if (v8 >= 0)
  {
    v9 = (a1 + 104);
  }

  else
  {
    v9 = *(a1 + 104);
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 127);
  }

  else
  {
    v10 = *(a1 + 112);
  }

  if (!v10)
  {
LABEL_19:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  while (1)
  {
    v11 = *v9;
    if (v11 < 0)
    {
      break;
    }

    if ((_DefaultRuneLocale.__runetype[v11] & 0x4000) == 0)
    {
      goto LABEL_22;
    }

LABEL_18:
    ++v9;
    if (!--v10)
    {
      goto LABEL_19;
    }
  }

  if (__maskrune(v11, 0x4000uLL))
  {
    goto LABEL_18;
  }

LABEL_22:
  if (!a2)
  {
    if ((*(a1 + 127) & 0x80000000) == 0)
    {
      *a4 = *(a1 + 104);
      v12 = *(a1 + 120);
      goto LABEL_29;
    }

    v13 = *(a1 + 104);
    v14 = *(a1 + 112);
LABEL_31:

    sub_325C(a4, v13, v14);
    return;
  }

  sub_749C3C(a1 + 104, a4);
}

void sub_659448(uint64_t a1, int a2)
{
  if (sub_734C10(a1 + 504) && a2)
  {

    nullsub_1();
  }

  else
  {
    v6 = *(a1 + 104);
    v5 = (a1 + 104);
    v4 = v6;
    v7 = v5[23];
    if (v7 >= 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = v4;
    }

    if (v7 >= 0)
    {
      v9 = v5[23];
    }

    else
    {
      v9 = *(v5 + 1);
    }

    for (; v9; --v9)
    {
      v10 = *v8;
      if (v10 < 0)
      {
        if (!__maskrune(v10, 0x4000uLL))
        {
          return;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v10] & 0x4000) == 0)
      {
        return;
      }

      ++v8;
    }
  }
}

BOOL sub_659640(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 919);
  if (v2 < 0)
  {
    if (!*(a1 + 904))
    {
      return 0;
    }
  }

  else if (!*(a1 + 919))
  {
    return 0;
  }

  v3 = *(a2 + 919);
  if (v3 >= 0)
  {
    v4 = *(a2 + 919);
  }

  else
  {
    v4 = *(a2 + 904);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 904);
  if (v2 >= 0)
  {
    v5 = *(a1 + 919);
  }

  if (v5 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v6 = (a1 + 896);
  }

  else
  {
    v6 = *(a1 + 896);
  }

  if (v3 >= 0)
  {
    v7 = (a2 + 896);
  }

  else
  {
    v7 = *(a2 + 896);
  }

  return memcmp(v6, v7, v4) == 0;
}

uint64_t sub_6596D0(uint64_t a1, _DWORD *a2, double a3, double a4, double a5, double a6)
{
  v6 = *(a1 + 1080);
  v7 = *(a1 + 1088);
  if (v6 == v7)
  {
    return 0;
  }

  v8 = a2[1];
  LODWORD(a4) = *a2;
  v9 = *&a4;
LABEL_4:
  for (i = *v6; ; i += 24)
  {
    if (i == v6[1])
    {
      v6 += 31;
      if (v6 == v7)
      {
        return 0;
      }

      goto LABEL_4;
    }

    v11 = *i;
    v12 = *(i + 8);
    if (*i != v12)
    {
      v13 = 0;
      do
      {
        v14 = v11[1];
        v15 = (*v11 + 12);
        if (*v11 != v14 && v15 != v14)
        {
          do
          {
            v17 = *(v15 - 2);
            v18 = v15[1];
            if (v17 < v8 != v18 < v8)
            {
              LODWORD(a5) = *v15;
              LODWORD(a6) = *(v15 - 3);
              a6 = *&a6;
              a5 = (v8 - v17) / (v18 - v17) * (*&a5 - a6) + a6;
              if (a5 < v9)
              {
                v13 ^= 1u;
              }
            }

            v15 += 3;
          }

          while (v15 != v14);
        }

        v11 += 3;
      }

      while (v11 != v12);
      if (v13)
      {
        break;
      }
    }
  }

  return 1;
}

uint64_t sub_6597CC(uint64_t a1)
{
  if (*(a1 + 1104) == 1 && *(a1 + 1080) != *(a1 + 1088))
  {
    return 0;
  }

  if (sub_38F744(a1))
  {
    return *(a1 + 737) & 1;
  }

  return 1;
}

uint64_t sub_659844(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (a1[736] != 1 || (a2[1462] & 1) == 0)
  {
    return v2 & ~a2[1227] & 1;
  }

  if (a1[224] - 3 > 1)
  {
    goto LABEL_8;
  }

  v3 = 96;
  if (a1[232])
  {
    v3 = 228;
  }

  v4 = *&a1[v3];
  if (v4 > 0xF)
  {
    goto LABEL_8;
  }

  v2 = 1;
  if (((1 << v4) & 0xFEEC) != 0)
  {
    goto LABEL_8;
  }

  if (((1 << v4) & 0x11) != 0)
  {
    return v2 & ~a2[1227] & 1;
  }

  if (v4 != 1)
  {
LABEL_8:
    v2 = 0;
    return v2 & ~a2[1227] & 1;
  }

  return a2[1527] & ~a2[1227] & 1;
}

BOOL sub_6598E4(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = 0;
  v3 = 96;
  if (a1[232])
  {
    v3 = 228;
  }

  v4 = *&a1[v3];
  if (v4 > 0xF)
  {
    return v2;
  }

  if (((1 << v4) & 0xA031) == 0)
  {
    if (v4 != 1)
    {
      return v2;
    }

    if (a2[1527] != 1)
    {
      return 0;
    }
  }

  v5 = a1[224];
  if ((v5 - 3) <= 1 && ((a2[1227] & 1) != 0 || a2[1462] != 1 || (a1[736] & 1) == 0))
  {
    if (v4)
    {
      v6 = v4 == 4;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 1;
    }

    if (v4 == 1 && (a2[1527] & 1) != 0)
    {
      return 1;
    }
  }

  return v5 == 2;
}

uint64_t sub_6599A0(uint64_t a1)
{
  v1 = 96;
  if (*(a1 + 232))
  {
    v1 = 228;
  }

  return (*(a1 + v1) < 0x10u) & (3u >> *(a1 + v1));
}

uint64_t sub_6599D4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 1080);
  v3 = *(a2 + 1088);
  if (v2 != v3)
  {
    v4 = result;
    v5 = (result + 1080);
    v6 = *(result + 1088);
    do
    {
      v7 = *v5;
      if (*v5 != v6)
      {
        do
        {
          result = sub_38FD30(v7, v7);
          if (result)
          {
            v8 = *(v7 + 199);
            if (v8 >= 0)
            {
              v9 = *(v7 + 199);
            }

            else
            {
              v9 = *(v7 + 184);
            }

            v10 = *(v2 + 199);
            v11 = v10;
            if ((v10 & 0x80u) != 0)
            {
              v10 = *(v2 + 184);
            }

            if (v9 == v10)
            {
              v12 = v8 >= 0 ? (v7 + 176) : *(v7 + 176);
              v13 = v11 >= 0 ? (v2 + 176) : *(v2 + 176);
              result = memcmp(v12, v13, v9);
              if (!result)
              {
                v14 = *(v7 + 223);
                if (v14 >= 0)
                {
                  v15 = *(v7 + 223);
                }

                else
                {
                  v15 = *(v7 + 208);
                }

                v16 = *(v2 + 223);
                v17 = v16;
                if ((v16 & 0x80u) != 0)
                {
                  v16 = *(v2 + 208);
                }

                if (v15 == v16)
                {
                  v18 = v14 >= 0 ? (v7 + 200) : *(v7 + 200);
                  v19 = v17 >= 0 ? (v2 + 200) : *(v2 + 200);
                  result = memcmp(v18, v19, v15);
                  if (!result)
                  {
                    v20 = *(v7 + 247);
                    if (v20 >= 0)
                    {
                      v21 = *(v7 + 247);
                    }

                    else
                    {
                      v21 = *(v7 + 232);
                    }

                    v22 = *(v2 + 247);
                    v23 = v22;
                    if ((v22 & 0x80u) != 0)
                    {
                      v22 = *(v2 + 232);
                    }

                    if (v21 == v22)
                    {
                      v24 = v20 >= 0 ? (v7 + 224) : *(v7 + 224);
                      v25 = v23 >= 0 ? (v2 + 224) : *(v2 + 224);
                      result = memcmp(v24, v25, v21);
                      if (!result)
                      {
                        v6 = *(v4 + 1088);
                        if (v7 != v6)
                        {
                          goto LABEL_5;
                        }

                        goto LABEL_52;
                      }
                    }
                  }
                }
              }
            }
          }

          v7 += 248;
        }

        while (v7 != v6);
        v26 = v6;
        v6 = *(v4 + 1088);
        if (v26 != v6)
        {
          goto LABEL_5;
        }
      }

LABEL_52:
      if (v6 >= *(v4 + 1096))
      {
        result = sub_65A140(v5, v2);
        v6 = result;
      }

      else
      {
        result = sub_52BC98(v6, v2);
        v6 += 248;
        *(v4 + 1088) = v6;
      }

      *(v4 + 1088) = v6;
LABEL_5:
      v2 += 248;
    }

    while (v2 != v3);
  }

  return result;
}

BOOL sub_659BD0(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    sub_325C(&v4, *(a1 + 48), *(a1 + 56));
    v1 = SHIBYTE(v5);
    if ((SHIBYTE(v5) & 0x80000000) == 0)
    {
      return v1 != 0;
    }
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 64);
    v1 = SHIBYTE(v5);
    if ((SHIBYTE(v5) & 0x80000000) == 0)
    {
      return v1 != 0;
    }
  }

  v3 = *(&v4 + 1) != 0;
  operator delete(v4);
  return v3;
}

double sub_659C58(unint64_t *a1, uint64_t a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x108421084210842)
  {
    sub_1794();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 3) >= 0x84210842108421)
  {
    v5 = 0x108421084210842;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x108421084210842)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  *v15 = *a2;
  *(v15 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v15 + 24) = *(a2 + 24);
  *(v15 + 40) = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v15 + 48) = *(a2 + 48);
  *(v15 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v15 + 72) = *(a2 + 72);
  *(v15 + 88) = *(a2 + 88);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v15 + 96) = *(a2 + 96);
  *(v15 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v6 = *(a2 + 120);
  *(v15 + 136) = *(a2 + 136);
  *(v15 + 120) = v6;
  *(v15 + 144) = *(a2 + 144);
  *(v15 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(v15 + 168) = *(a2 + 168);
  v7 = *(a2 + 176);
  *(v15 + 192) = *(a2 + 192);
  *(v15 + 176) = v7;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v8 = *(a2 + 200);
  *(v15 + 216) = *(a2 + 216);
  *(v15 + 200) = v8;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v9 = *(a2 + 224);
  *(v15 + 240) = *(a2 + 240);
  *(v15 + 224) = v9;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  v10 = a1[1];
  v11 = 248 * v2 + *a1 - v10;
  sub_65A048(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = 248 * v2 + 248;
  *(a1 + 1) = v13;
  if (v12)
  {
    operator delete(v12);
    *&v13 = 248 * v2 + 248;
  }

  return *&v13;
}

void sub_659E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_659FA4(va);
  _Unwind_Resume(a1);
}

__n128 sub_659E84(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *(a2 + 88) = *(a3 + 88);
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = *(a3 + 96);
  *(a2 + 112) = *(a3 + 112);
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  v3 = *(a3 + 136);
  *(a2 + 120) = *(a3 + 120);
  *(a2 + 136) = v3;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 144) = *(a3 + 144);
  *(a2 + 160) = *(a3 + 160);
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a2 + 168) = *(a3 + 168);
  v4 = *(a3 + 176);
  *(a2 + 192) = *(a3 + 192);
  *(a2 + 176) = v4;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 176) = 0;
  v5 = *(a3 + 200);
  *(a2 + 216) = *(a3 + 216);
  *(a2 + 200) = v5;
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  *(a3 + 200) = 0;
  result = *(a3 + 224);
  *(a2 + 240) = *(a3 + 240);
  *(a2 + 224) = result;
  *(a3 + 232) = 0;
  *(a3 + 240) = 0;
  *(a3 + 224) = 0;
  return result;
}

uint64_t sub_659FA4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 248;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      if (*(i - 25) < 0)
      {
LABEL_9:
        operator delete(*(i - 48));
        if ((*(i - 49) & 0x80000000) == 0)
        {
          goto LABEL_2;
        }

        goto LABEL_10;
      }
    }

    else if (*(i - 25) < 0)
    {
      goto LABEL_9;
    }

    if ((*(i - 49) & 0x80000000) == 0)
    {
      goto LABEL_2;
    }

LABEL_10:
    operator delete(*(i - 72));
LABEL_2:
    sub_33D5A0((i - 248));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_65A048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_659E84(a1, a4, v7);
      v7 += 248;
      a4 = v8 + 248;
      v8 += 248;
    }

    while (v7 != a3);
    while (1)
    {
      if (v5 == a3)
      {
        return;
      }

      if (*(v5 + 247) < 0)
      {
        operator delete(*(v5 + 224));
        if (*(v5 + 223) < 0)
        {
LABEL_12:
          operator delete(*(v5 + 200));
          if ((*(v5 + 199) & 0x80000000) == 0)
          {
            goto LABEL_5;
          }

          goto LABEL_13;
        }
      }

      else if (*(v5 + 223) < 0)
      {
        goto LABEL_12;
      }

      if ((*(v5 + 199) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_13:
      operator delete(*(v5 + 176));
LABEL_5:
      sub_33D5A0(v5);
      v5 += 248;
    }
  }
}

uint64_t sub_65A140(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x108421084210842)
  {
    sub_1794();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 3) >= 0x84210842108421)
  {
    v5 = 0x108421084210842;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x108421084210842)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  sub_52BC98(v11, a2);
  v6 = 248 * v2 + 248;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_65A048(a1, *a1, v7, v8);
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

void sub_65A280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_659FA4(va);
  _Unwind_Resume(a1);
}

void sub_65A294()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  LODWORD(v2) = 0;
  HIBYTE(v4[0]) = 14;
  strcpy(v3, "ROUTES_THROUGH");
  LODWORD(v4[1]) = 1;
  v6 = 9;
  strcpy(v5, "ROUTES_TO");
  LODWORD(v7) = 3;
  v9 = 11;
  strcpy(__p, "ROUTES_FROM");
  LODWORD(v10) = 2;
  xmmword_279E7A8 = 0u;
  unk_279E7B8 = 0u;
  dword_279E7C8 = 1065353216;
  sub_3A9A34(&xmmword_279E7A8, v0, v0);
  sub_3A9A34(&xmmword_279E7A8, v3, v3);
  sub_3A9A34(&xmmword_279E7A8, v5, v5);
  sub_3A9A34(&xmmword_279E7A8, __p, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v4[0]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v5[0]);
  if ((SHIBYTE(v4[0]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
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

void sub_65D43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
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
LABEL_36:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_37:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_38:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_39:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_40:
              operator delete(a70);
              if ((a69 & 0x80000000) == 0)
              {
LABEL_41:
                if (a67 < 0)
                {
                  goto LABEL_42;
                }

                goto LABEL_44;
              }

LABEL_34:
              operator delete(a68);
              if (a67 < 0)
              {
LABEL_42:
                operator delete(a66);
                if ((a65 & 0x80000000) == 0)
                {
                  goto LABEL_43;
                }

                goto LABEL_45;
              }

LABEL_44:
              if ((a65 & 0x80000000) == 0)
              {
LABEL_43:
                _Unwind_Resume(a1);
              }

LABEL_45:
              operator delete(a63);
              _Unwind_Resume(a1);
            }

LABEL_33:
            if ((a69 & 0x80000000) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_40;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_36;
  }

  goto LABEL_29;
}

uint64_t sub_65D6B4(uint64_t a1, void *a2, void *a3, char *__src, int *a5, char a6)
{
  v10 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 24) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 32), __src, 0x92CuLL);
  if (__src[2375] < 0)
  {
    sub_325C((a1 + 2384), *(__src + 294), *(__src + 295));
  }

  else
  {
    v12 = *(__src + 147);
    *(a1 + 2400) = *(__src + 296);
    *(a1 + 2384) = v12;
  }

  v13 = *(__src + 2376);
  v14 = *(__src + 2392);
  v15 = *(__src + 2424);
  *(a1 + 2440) = *(__src + 2408);
  *(a1 + 2456) = v15;
  *(a1 + 2408) = v13;
  *(a1 + 2424) = v14;
  v16 = *(__src + 2440);
  v17 = *(__src + 2456);
  v18 = *(__src + 2488);
  *(a1 + 2504) = *(__src + 2472);
  *(a1 + 2520) = v18;
  *(a1 + 2472) = v16;
  *(a1 + 2488) = v17;
  v19 = *(__src + 2504);
  v20 = *(__src + 2520);
  v21 = *(__src + 2552);
  *(a1 + 2568) = *(__src + 2536);
  *(a1 + 2584) = v21;
  *(a1 + 2536) = v19;
  *(a1 + 2552) = v20;
  sub_528460(a1 + 2600, a5);
  *(a1 + 2696) = a6;
  return a1;
}

void sub_65D7B4(_Unwind_Exception *a1)
{
  sub_1F1A8(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

void sub_65D7D0(_Unwind_Exception *a1)
{
  if (*(v1 + 2407) < 0)
  {
    operator delete(*v3);
  }

  sub_1F1A8(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_65D7FC(uint64_t a1, uint64_t *a2, void *a3, char *a4, uint64_t a5)
{
  v6 = a2[1];
  v11 = *a2;
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  v10[0] = *a3;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_65D6B4(a1, &v11, v10, a4, (a5 + 968), *(a5 + 1528));
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_65D910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1F1A8(&a9);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_65D92C(uint64_t a1, uint64_t *a2, void *a3, char *a4, uint64_t a5)
{
  v6 = a2[1];
  v11 = *a2;
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  v10[0] = *a3;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_65D6B4(a1, &v11, v10, a4, (a5 + 64), *(a5 + 166));
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_65DA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1F1A8(&a9);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_65DA5C(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = a1[1];
  }

  if (v2 == 15)
  {
    if (v3 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    if (*v9 == 0x53647261776F547BLL && *(v9 + 7) == 0x7D31646C65696853)
    {
      strcpy(a2, "{TowardDirection1}");
      *(a2 + 19) = unk_229CFBB;
      *(a2 + 20) = unk_229CFBC;
      return;
    }

    v11 = *v9;
    v12 = *(v9 + 7);
    if (v11 == 0x53647261776F547BLL && v12 == 0x7D32646C65696853)
    {
      strcpy(a2, "{TowardDirection2}");
      *(a2 + 19) = unk_229CFD3;
      *(a2 + 20) = unk_229CFD4;
      return;
    }

LABEL_29:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return;
  }

  if (v2 != 9)
  {
    goto LABEL_29;
  }

  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (*v4 != 0x31646C656968537BLL || *(v4 + 8) != 125)
  {
    v6 = *v4;
    v7 = *(v4 + 8);
    if (v6 == 0x32646C656968537BLL && v7 == 125)
    {
      *(a2 + 16) = 0xC00000000000000;
      *a2 = *"{Direction2}";
      return;
    }

    goto LABEL_29;
  }

  *(a2 + 16) = 0xC00000000000000;
  *a2 = *"{Direction1}";
}

void sub_65DBB8(int a1, uint64_t a2, std::string *this)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    for (i = *(a2 + 16); i; i = *i)
    {
      v6 = (i + 2);
      v7 = *(i + 39);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = i[3];
      }

      if (v7 == 15)
      {
        v14 = *v6;
        if (v8 >= 0)
        {
          v14 = i + 2;
        }

        if (*v14 != 0x53647261776F547BLL || *(v14 + 7) != 0x7D31646C65696853)
        {
          v16 = *v14;
          v17 = *(v14 + 7);
          if (v16 != 0x53647261776F547BLL || v17 != 0x7D32646C65696853)
          {
LABEL_33:
            if (v8 < 0)
            {
              sub_325C(__p, *v6, i[3]);
            }

            else
            {
              *__p = *v6;
              v22 = i[4];
            }

            nullsub_1();
            v19 = v20;
            goto LABEL_38;
          }
        }
      }

      else
      {
        if (v7 != 9)
        {
          goto LABEL_33;
        }

        v9 = *v6;
        if (v8 >= 0)
        {
          v9 = (i + 2);
        }

        if (*v9 != 0x31646C656968537BLL || v9[8] != 125)
        {
          v11 = *v9;
          v12 = v9[8];
          if (v11 != 0x32646C656968537BLL || v12 != 125)
          {
            goto LABEL_33;
          }
        }
      }

      sub_65DA5C(v6, __p);
      v19 = (i + 17);
LABEL_38:
      sub_61BA64(this, __p, v19);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_61BA64(this, "{nonBrkSpace}", &unk_229CFF0);
    sub_61BA64(this, "{newLine}", &unk_229D020);
  }
}

void sub_65DD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_65DDB8(uint64_t a1, uint64_t a2, std::string *a3)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      sub_325C(v9, i[2], i[3]);
    }

    else
    {
      *v9 = *(i + 1);
      v10 = i[4];
    }

    sub_734D90(__p);
    sub_61BA64(a3, v9, __p);
    v5 = sub_6A5CEC(v9);
    v6 = a3[1].__r_.__value_.__s.__data_[0];
    if (v6 <= v5)
    {
      LOBYTE(v6) = v5;
    }

    a3[1].__r_.__value_.__s.__data_[0] = v6;
    if (v8 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v10) < 0)
      {
LABEL_13:
        operator delete(v9[0]);
      }
    }

    else if (SHIBYTE(v10) < 0)
    {
      goto LABEL_13;
    }
  }
}

void sub_65DE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_65DED0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  if (!v7)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    return;
  }

  v10 = sub_9274F4(v7, a2);
  if (*(v10 + 23) < 0)
  {
    LODWORD(v10) = sub_325C(a5, *v10, v10[1]);
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_25:
    sub_65DBB8(v10, a3, a5);
    return;
  }

  v11 = *v10;
  *(a5 + 16) = v10[2];
  *a5 = v11;
  if (!a4)
  {
    goto LABEL_25;
  }

LABEL_4:
  sub_6EDEC(v22, *(a1 + 650));
  sub_2E30(a5, v22, v19);
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  *a5 = *v19;
  *(a5 + 16) = v20;
  *v19 = 0u;
  v20 = 0u;
  v21 = 1065353216;
  v13 = *(a5 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a5 + 8);
  }

  if (v13)
  {
    if (v19 != a3)
    {
      v21 = *(a3 + 32);
      sub_5FA69C(v19, *(a3 + 16), 0);
    }

    for (i = *(a3 + 16); i; i = *i)
    {
      sub_2E30(i + 2, v22, __p);
      v26 = __p;
      v15 = sub_666FBC(v19, __p, &unk_229EB70, &v26);
      v12 = sub_52CB8C(v15 + 5, i + 5);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  sub_65DBB8(v12, v19, a5);
  v16 = v20;
  if (v20)
  {
    do
    {
      v17 = *v16;
      sub_55F7FC((v16 + 2));
      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v18 = v19[0];
  v19[0] = 0;
  if (v18)
  {
    operator delete(v18);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }
}

void sub_65E0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_540798(&a9);
  if (a20 < 0)
  {
    operator delete(__p);
    if ((*(v26 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v26 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v26);
  _Unwind_Resume(a1);
}

void sub_65E138(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (sub_68047C(a2))
  {
    if (*a1)
    {
      nullsub_1();
      v9 = *v8;
      v10 = v8[1];
      while (1)
      {
        if (v9 == v10)
        {
          return;
        }

        if ((sub_928074(*a1, v9, 0) & 1) == 0)
        {
          if ((*(v9 + 23) & 0x8000000000000000) != 0)
          {
            if (*(v9 + 8))
            {
              goto LABEL_4;
            }
          }

          else if (*(v9 + 23))
          {
            goto LABEL_4;
          }
        }

        v11 = sub_58BBC(a2);
        sub_65DED0(a1, v9, v11, a3, __p);
        v12 = a4[1];
        if (v12 >= a4[2])
        {
          break;
        }

        if ((SHIBYTE(v16) & 0x80000000) == 0)
        {
          v13 = *__p;
          *(v12 + 16) = v16;
          *v12 = v13;
          a4[1] = v12 + 24;
          if ((SHIBYTE(v16) & 0x80000000) == 0)
          {
            goto LABEL_4;
          }

LABEL_16:
          operator delete(__p[0]);
          goto LABEL_4;
        }

        sub_325C(a4[1], __p[0], __p[1]);
        a4[1] = v12 + 24;
        if (SHIBYTE(v16) < 0)
        {
          goto LABEL_16;
        }

LABEL_4:
        v9 += 24;
      }

      a4[1] = sub_1CEE8(a4, __p);
      if ((SHIBYTE(v16) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    nullsub_1();
    if (v14 != a4)
    {
      sub_74300(a4, *v14, v14[1], 0xAAAAAAAAAAAAAAABLL * (v14[1] - *v14));
    }
  }
}

void sub_65E304(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = 0;
  do
  {
    v5 = v4;
    v6 = (v4 >> 3) + 1;
    if (v6 >> 61)
    {
      sub_1794();
    }

    if (v4 >> 3 != -1)
    {
      if (!(v6 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v7 = (8 * (v4 >> 3));
    *v7 = a2;
    v4 = (v7 + 1);
    memcpy(0, 0, v5);
    v8 = a1;
    sub_681038(a2, __p);
    a2 = __p[0];
    v9 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  while (a2);
  v10 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  if (v4)
  {
    while (1)
    {
      v13 = *(v4 - 8);
      v12 = v4 - 8;
      v83 = v13;
      nullsub_1();
      sub_65E138(v8, v14, 0, &v112);
      sub_65F30C(v13, &v106);
      v15 = v107;
      if ((v107 & 0x80u) != 0)
      {
        v15 = *(&v106 + 1);
      }

      v82 = v12;
      if (v15)
      {
        break;
      }

      v16 = v109;
      if ((v109 & 0x80u) != 0)
      {
        v16 = *(&v108 + 1);
      }

      if (v16)
      {
        break;
      }

      v17 = v111;
      if ((v111 & 0x80u) != 0)
      {
        v17 = *(&v110 + 1);
      }

      if (v17)
      {
        break;
      }

      if (&v112 != v10)
      {
        sub_74300(v10, v112, v113, 0xAAAAAAAAAAAAAAABLL * (v113 - v112));
      }

      sub_681008(v83, __p);
      sub_65F704(v8, __p, &v114);
      v75 = __p[0];
      if (__p[0])
      {
        v76 = __p[1];
        v70 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v77 = *(v76 - 1);
            v76 -= 3;
            if (v77 < 0)
            {
              operator delete(*v76);
            }
          }

          while (v76 != v75);
          v70 = __p[0];
        }

        __p[1] = v75;
        goto LABEL_183;
      }

LABEL_184:
      if (v111 < 0)
      {
        operator delete(v110);
        if ((v109 & 0x80000000) == 0)
        {
LABEL_186:
          if ((v107 & 0x80000000) == 0)
          {
            goto LABEL_187;
          }

          goto LABEL_191;
        }
      }

      else if ((v109 & 0x80000000) == 0)
      {
        goto LABEL_186;
      }

      operator delete(v108);
      if ((v107 & 0x80000000) == 0)
      {
LABEL_187:
        v72 = v112;
        if (!v112)
        {
          goto LABEL_14;
        }

LABEL_192:
        v73 = v113;
        v11 = v72;
        if (v113 != v72)
        {
          do
          {
            v74 = *(v73 - 1);
            v73 -= 3;
            if (v74 < 0)
            {
              operator delete(*v73);
            }
          }

          while (v73 != v72);
          v11 = v112;
        }

        v113 = v72;
        operator delete(v11);
        goto LABEL_14;
      }

LABEL_191:
      operator delete(v106);
      v72 = v112;
      if (v112)
      {
        goto LABEL_192;
      }

LABEL_14:
      v4 = v82;
      if (!v82)
      {
        v78 = v114;
        if (v114)
        {
          v79 = v115;
          v80 = v114;
          if (v115 != v114)
          {
            do
            {
              v81 = *(v79 - 1);
              v79 -= 3;
              if (v81 < 0)
              {
                operator delete(*v79);
              }
            }

            while (v79 != v78);
            v80 = v114;
          }

          v115 = v78;
          operator delete(v80);
        }

        return;
      }
    }

    *__p = 0u;
    v93 = 0u;
    LODWORD(v94) = 1065353216;
    sub_67E4F8(&v102, &v106, __p);
    v18 = v93;
    if (!v93)
    {
LABEL_40:
      v20 = __p[0];
      __p[0] = 0;
      if (v20)
      {
        operator delete(v20);
      }

      v21 = v112;
      v84 = v113;
      if (v112 != v113)
      {
        v22 = 0;
        v23 = 0;
        while (1)
        {
          sub_734C34(__p, v21);
          sub_67F2AC(&v102, &v108, __p, 0);
          if (v101 < 0)
          {
            operator delete(v100);
            if ((v99 & 0x80000000) == 0)
            {
LABEL_47:
              if ((v97 & 0x80000000) == 0)
              {
                goto LABEL_48;
              }

              goto LABEL_118;
            }
          }

          else if ((v99 & 0x80000000) == 0)
          {
            goto LABEL_47;
          }

          operator delete(v98);
          if ((v97 & 0x80000000) == 0)
          {
LABEL_48:
            if (v95 < 0)
            {
              goto LABEL_119;
            }

            goto LABEL_49;
          }

LABEL_118:
          operator delete(v96);
          if (v95 < 0)
          {
LABEL_119:
            operator delete(v94);
            if ((SBYTE7(v93) & 0x80000000) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_120;
          }

LABEL_49:
          if ((SBYTE7(v93) & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

LABEL_120:
          operator delete(__p[0]);
LABEL_50:
          v24 = v111;
          if ((v111 & 0x80u) != 0)
          {
            v24 = *(&v110 + 1);
          }

          v87 = v21;
          if (v24)
          {
            v25 = sub_68128C(v83);
            v26 = v10[1] - *v10;
            if (v26)
            {
              v27 = v25;
              v28 = 0;
              v89 = 0xAAAAAAAAAAAAAAABLL * (v26 >> 3);
              v86 = v25;
              do
              {
                v29 = *v10;
                if (v10[1] - *v10 != v115 - v114)
                {
                  goto LABEL_65;
                }

                v30 = sub_53A634(&v114, v28);
                if (!*v8 || !sub_928074(*v8, v30, 0))
                {
                  goto LABEL_65;
                }

                v31 = *(v30 + 23);
                if ((v31 & 0x80u) != 0)
                {
                  v31 = *(v30 + 8);
                }

                if (v31)
                {
                  v32 = sub_9274F4(*v8, v30);
                  if (*(v32 + 23) < 0)
                  {
                    sub_325C(__p, *v32, v32[1]);
                  }

                  else
                  {
                    v33 = *v32;
                    *&v93 = v32[2];
                    *__p = v33;
                  }

                  v36 = qword_279EEC0;
                  v37 = unk_279EEC8;
                  v38 = BYTE7(v93);
                  if (qword_279EEC0 != unk_279EEC8)
                  {
                    if ((SBYTE7(v93) & 0x80u) == 0)
                    {
                      v39 = BYTE7(v93);
                    }

                    else
                    {
                      v39 = __p[1];
                    }

                    if ((SBYTE7(v93) & 0x80u) == 0)
                    {
                      v40 = __p;
                    }

                    else
                    {
                      v40 = __p[0];
                    }

                    while (1)
                    {
                      v41 = *(v36 + 23);
                      v42 = v41;
                      if ((v41 & 0x80u) != 0)
                      {
                        v41 = *(v36 + 8);
                      }

                      if (v41 == v39)
                      {
                        v43 = v42 >= 0 ? v36 : *v36;
                        if (!memcmp(v43, v40, v39))
                        {
                          break;
                        }
                      }

                      v36 += 24;
                      if (v36 == v37)
                      {
                        v44 = 0;
                        if ((v38 & 0x80) == 0)
                        {
                          goto LABEL_86;
                        }

                        goto LABEL_115;
                      }
                    }
                  }

                  v44 = v36 != v37;
                  if (v38 < 0)
                  {
LABEL_115:
                    operator delete(__p[0]);
                  }

LABEL_86:
                  v8 = a1;
                  v27 = v86;
                  v34 = v29 + 24 * v28;
                  if ((v86 | v44) == 1)
                  {
LABEL_66:
                    v10 = a3;
                    if (*(v34 + 23) < 0)
                    {
                      sub_325C(v90, *v34, *(v34 + 8));
                    }

                    else
                    {
                      v35 = *v34;
                      v91 = *(v34 + 16);
                      *v90 = v35;
                    }

                    goto LABEL_89;
                  }
                }

                else
                {
LABEL_65:
                  v34 = v29 + 24 * v28;
                  if (v27 == 1)
                  {
                    goto LABEL_66;
                  }
                }

                v10 = a3;
                sub_6EDEC(__p, *(v8 + 650));
                sub_2E30(v34, __p, v90);
                if (SBYTE7(v93) < 0)
                {
                  operator delete(__p[0]);
                }

LABEL_89:
                sub_734C34(__p, v90);
                sub_67F2AC(&v102, &v110, __p, 0);
                if (v101 < 0)
                {
                  operator delete(v100);
                  if ((v99 & 0x80000000) == 0)
                  {
LABEL_91:
                    if ((v97 & 0x80000000) == 0)
                    {
                      goto LABEL_92;
                    }

                    goto LABEL_105;
                  }
                }

                else if ((v99 & 0x80000000) == 0)
                {
                  goto LABEL_91;
                }

                operator delete(v98);
                if ((v97 & 0x80000000) == 0)
                {
LABEL_92:
                  if (v95 < 0)
                  {
                    goto LABEL_106;
                  }

                  goto LABEL_93;
                }

LABEL_105:
                operator delete(v96);
                if (v95 < 0)
                {
LABEL_106:
                  operator delete(v94);
                  if ((SBYTE7(v93) & 0x80000000) == 0)
                  {
                    goto LABEL_94;
                  }

                  goto LABEL_107;
                }

LABEL_93:
                if ((SBYTE7(v93) & 0x80000000) == 0)
                {
                  goto LABEL_94;
                }

LABEL_107:
                operator delete(__p[0]);
LABEL_94:
                v45 = sub_58BBC(&v102);
                sub_65DED0(v8, &v106, v45, 1, __p);
                v46 = v22 - v23;
                v47 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 3) + 1;
                if (v47 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_1794();
                }

                if (0x5555555555555556 * (-v23 >> 3) > v47)
                {
                  v47 = 0x5555555555555556 * (-v23 >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * (-v23 >> 3) >= 0x555555555555555)
                {
                  v48 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v48 = v47;
                }

                if (v48)
                {
                  if (v48 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v49 = 8 * ((v22 - v23) >> 3);
                *v49 = *__p;
                *(v49 + 16) = v93;
                __p[1] = 0;
                *&v93 = 0;
                __p[0] = 0;
                memcpy((v49 - v46), v23, v46);
                if (v23 && (operator delete(v23), SBYTE7(v93) < 0))
                {
                  operator delete(__p[0]);
                  v23 = v49 - v46;
                  if ((SHIBYTE(v91) & 0x80000000) == 0)
                  {
                    goto LABEL_56;
                  }
                }

                else
                {
                  v23 = v49 - v46;
                  if ((SHIBYTE(v91) & 0x80000000) == 0)
                  {
                    goto LABEL_56;
                  }
                }

                operator delete(v90[0]);
LABEL_56:
                v22 = v49 + 24;
                ++v28;
              }

              while (v28 != v89);
            }
          }

          else
          {
            v50 = sub_58BBC(&v102);
            if (*v8)
            {
              v51 = sub_9274F4(*v8, &v106);
              if (*(v51 + 23) < 0)
              {
                LODWORD(v51) = sub_325C(__p, *v51, v51[1]);
              }

              else
              {
                v52 = *v51;
                *&v93 = v51[2];
                *__p = v52;
              }

              sub_65DBB8(v51, v50, __p);
            }

            else
            {
              __p[0] = 0;
              __p[1] = 0;
              *&v93 = 0;
            }

            v53 = v22 - v23;
            v54 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 3) + 1;
            if (v54 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            if (0x5555555555555556 * (-v23 >> 3) > v54)
            {
              v54 = 0x5555555555555556 * (-v23 >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v23 >> 3) >= 0x555555555555555)
            {
              v55 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v55 = v54;
            }

            if (v55)
            {
              if (v55 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1808();
            }

            v56 = 8 * ((v22 - v23) >> 3);
            *v56 = *__p;
            *(v56 + 16) = v93;
            __p[1] = 0;
            *&v93 = 0;
            __p[0] = 0;
            memcpy((v56 - v53), v23, v53);
            if (v23)
            {
              operator delete(v23);
              if (SBYTE7(v93) < 0)
              {
                operator delete(__p[0]);
              }
            }

            v23 = v56 - v53;
            v22 = v56 + 24;
          }

          v21 = (v87 + 24);
          if ((v87 + 24) == v84)
          {
            goto LABEL_141;
          }
        }
      }

      v23 = 0;
      v22 = 0;
LABEL_141:
      v57 = *v10;
      if (*v10)
      {
        v58 = v10[1];
        v59 = *v10;
        if (v58 != v57)
        {
          do
          {
            v60 = *(v58 - 1);
            v58 -= 3;
            if (v60 < 0)
            {
              operator delete(*v58);
            }
          }

          while (v58 != v57);
          v59 = *v10;
        }

        v10[1] = v57;
        operator delete(v59);
      }

      *v10 = v23;
      v10[1] = v22;
      v10[2] = 0;
      sub_681008(v83, __p);
      sub_65F704(v8, __p, &v114);
      v61 = __p[0];
      if (__p[0])
      {
        v62 = __p[1];
        v63 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v64 = *(v62 - 1);
            v62 -= 3;
            if (v64 < 0)
            {
              operator delete(*v62);
            }
          }

          while (v62 != v61);
          v63 = __p[0];
        }

        __p[1] = v61;
        operator delete(v63);
      }

      v65 = v105;
      if (!v105)
      {
LABEL_173:
        v67 = v104;
        v104 = 0;
        if (v67)
        {
          operator delete(v67);
        }

        v68 = v102;
        if (v102)
        {
          v69 = v103;
          v70 = v102;
          if (v103 != v102)
          {
            do
            {
              v71 = *(v69 - 1);
              v69 -= 3;
              if (v71 < 0)
              {
                operator delete(*v69);
              }
            }

            while (v69 != v68);
            v70 = v102;
          }

          v103 = v68;
LABEL_183:
          operator delete(v70);
          goto LABEL_184;
        }

        goto LABEL_184;
      }

      while (1)
      {
        v66 = *v65;
        if (*(v65 + 191) < 0)
        {
          operator delete(v65[21]);
          if (*(v65 + 159) < 0)
          {
            goto LABEL_168;
          }

LABEL_163:
          if ((*(v65 + 135) & 0x80000000) == 0)
          {
            goto LABEL_164;
          }

LABEL_169:
          operator delete(v65[14]);
          if (*(v65 + 95) < 0)
          {
            goto LABEL_170;
          }

LABEL_165:
          if ((*(v65 + 63) & 0x80000000) == 0)
          {
            goto LABEL_171;
          }

LABEL_159:
          operator delete(v65[5]);
          if (*(v65 + 39) < 0)
          {
            goto LABEL_172;
          }

LABEL_160:
          operator delete(v65);
          v65 = v66;
          if (!v66)
          {
            goto LABEL_173;
          }
        }

        else
        {
          if ((*(v65 + 159) & 0x80000000) == 0)
          {
            goto LABEL_163;
          }

LABEL_168:
          operator delete(v65[17]);
          if (*(v65 + 135) < 0)
          {
            goto LABEL_169;
          }

LABEL_164:
          if ((*(v65 + 95) & 0x80000000) == 0)
          {
            goto LABEL_165;
          }

LABEL_170:
          operator delete(v65[9]);
          if (*(v65 + 63) < 0)
          {
            goto LABEL_159;
          }

LABEL_171:
          if ((*(v65 + 39) & 0x80000000) == 0)
          {
            goto LABEL_160;
          }

LABEL_172:
          operator delete(v65[2]);
          operator delete(v65);
          v65 = v66;
          if (!v66)
          {
            goto LABEL_173;
          }
        }
      }
    }

    while (1)
    {
      v19 = *v18;
      if (*(v18 + 191) < 0)
      {
        operator delete(v18[21]);
        if (*(v18 + 159) < 0)
        {
          goto LABEL_35;
        }

LABEL_30:
        if ((*(v18 + 135) & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

LABEL_36:
        operator delete(v18[14]);
        if (*(v18 + 95) < 0)
        {
          goto LABEL_37;
        }

LABEL_32:
        if ((*(v18 + 63) & 0x80000000) == 0)
        {
          goto LABEL_38;
        }

LABEL_26:
        operator delete(v18[5]);
        if (*(v18 + 39) < 0)
        {
          goto LABEL_39;
        }

LABEL_27:
        operator delete(v18);
        v18 = v19;
        if (!v19)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if ((*(v18 + 159) & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_35:
        operator delete(v18[17]);
        if (*(v18 + 135) < 0)
        {
          goto LABEL_36;
        }

LABEL_31:
        if ((*(v18 + 95) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

LABEL_37:
        operator delete(v18[9]);
        if (*(v18 + 63) < 0)
        {
          goto LABEL_26;
        }

LABEL_38:
        if ((*(v18 + 39) & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

LABEL_39:
        operator delete(v18[2]);
        operator delete(v18);
        v18 = v19;
        if (!v19)
        {
          goto LABEL_40;
        }
      }
    }
  }
}

void sub_65EFC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, uint64_t a54)
{
  if (*(v56 - 145) < 0)
  {
    operator delete(*(v56 - 168));
    if ((*(v56 - 169) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v56 - 169) & 0x80000000) == 0)
  {
LABEL_3:
    if (*(v56 - 193) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  operator delete(*(v56 - 192));
  if (*(v56 - 193) < 0)
  {
LABEL_4:
    operator delete(*(v56 - 216));
    v58 = *(v56 - 136);
    if (v58)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  v58 = *(v56 - 136);
  if (v58)
  {
LABEL_5:
    v59 = *(v56 - 128);
    v60 = v58;
    if (v59 != v58)
    {
      do
      {
        v61 = *(v59 - 1);
        v59 -= 3;
        if (v61 < 0)
        {
          operator delete(*v59);
        }
      }

      while (v59 != v58);
      v60 = *(v56 - 136);
    }

    *(v56 - 128) = v58;
    operator delete(v60);
    v62 = *(v56 - 112);
    if (v62)
    {
LABEL_12:
      v63 = *(v56 - 104);
      v64 = v62;
      if (v63 != v62)
      {
        do
        {
          v65 = *(v63 - 1);
          v63 -= 3;
          if (v65 < 0)
          {
            operator delete(*v63);
          }
        }

        while (v63 != v62);
        v64 = *(v56 - 112);
      }

      *(v56 - 104) = v62;
      operator delete(v64);
      v66 = *v55;
      if (*v55)
      {
LABEL_19:
        v67 = v55[1];
        v68 = v66;
        if (v67 != v66)
        {
          do
          {
            v69 = *(v67 - 1);
            v67 -= 3;
            if (v69 < 0)
            {
              operator delete(*v67);
            }
          }

          while (v67 != v66);
          v68 = *v55;
        }

        v55[1] = v66;
        operator delete(v68);
        if (v54)
        {
LABEL_26:
          operator delete(v54);
          _Unwind_Resume(a1);
        }

LABEL_33:
        _Unwind_Resume(a1);
      }

LABEL_32:
      if (v54)
      {
        goto LABEL_26;
      }

      goto LABEL_33;
    }

LABEL_31:
    v66 = *v55;
    if (*v55)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_30:
  v62 = *(v56 - 112);
  if (v62)
  {
    goto LABEL_12;
  }

  goto LABEL_31;
}

void sub_65F30C(__int128 **a1@<X1>, _OWORD *a2@<X8>)
{
  switch(sub_681030(a1))
  {
    case 2u:
      v14 = 0;
      LOBYTE(v13) = 0;
      sub_668238(a2, "Distance_Spoken", "{primaryInstruction}", &v13, 1);
      goto LABEL_28;
    case 3u:
      v4 = "Distance_And_Spoken";
      v5 = "{primaryInstruction}";
      v6 = "{secondaryInstruction}";
      v7 = a2;
      v8 = 1;

      goto LABEL_18;
    case 4u:
      v14 = 0;
      LOBYTE(v13) = 0;
      sub_668238(a2, "Continue_Stage_Spoken", "{continueInstruction}", &v13, 1);
      goto LABEL_28;
    case 5u:
      v4 = "Chain_Spoken";
      goto LABEL_21;
    case 6u:
      v4 = "Chain_To_Spoken";
      v5 = "{primaryInstruction}";
      v6 = &qword_279EE90;
      goto LABEL_24;
    case 7u:
    case 0xBu:
    case 0xCu:
      sub_67F320(a1, &v13);
      v12 = 0;
      LOBYTE(v11[0]) = 0;
      sub_668238(a2, &v13, v11, "{instruction}", 1);
      goto LABEL_14;
    case 8u:
      v14 = 0;
      LOBYTE(v13) = 0;
      sub_668238(a2, &qword_279EC08, "{primaryInstruction}", &v13, 0);
      goto LABEL_28;
    case 9u:
      v4 = &qword_279EBF0;
LABEL_21:
      v5 = "{primaryInstruction}";
      v6 = "{secondaryInstruction}";
      goto LABEL_24;
    case 0xAu:
      v4 = "And_Spoken";
      v5 = "{primaryInstruction}";
      v6 = &qword_279EE78;
      goto LABEL_24;
    case 0xDu:
      v4 = "Then_Spoken";
      v5 = "{primaryInstruction}";
      v6 = &qword_279EEA8;
      goto LABEL_24;
    case 0xEu:
      v4 = "Concatenate_Spoken";
      goto LABEL_23;
    case 0xFu:
      v4 = &qword_279EA70;
LABEL_23:
      v5 = "{instruction1}";
      v6 = "{instruction2}";
LABEL_24:
      v7 = a2;
      v8 = 0;

LABEL_18:
      sub_668238(v7, v4, v5, v6, v8);
      return;
    case 0x10u:
      v14 = 0;
      LOBYTE(v13) = 0;
      sub_668238(a2, &qword_279F6D0, "{primaryInstruction}", &v13, 0);
      goto LABEL_28;
    case 0x11u:
    case 0x12u:
    case 0x13u:
      a2[3] = 0u;
      a2[4] = 0u;
      a2[1] = 0u;
      a2[2] = 0u;
      *a2 = 0u;
      return;
    default:
      v14 = 0;
      LOBYTE(v13) = 0;
      v12 = 0;
      LOBYTE(v11[0]) = 0;
      v10 = 0;
      LOBYTE(__p) = 0;
      sub_668238(a2, &v13, v11, &__p, 0);
      if (v10 < 0)
      {
        operator delete(__p);
      }

LABEL_14:
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }

LABEL_28:
      if (v14 < 0)
      {
        operator delete(v13);
      }

      return;
  }
}

void sub_65F60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((*(v21 - 17) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v21 - 40));
  _Unwind_Resume(exception_object);
}

void sub_65F704(uint64_t **a1, uint64_t *a2, void ***a3)
{
  v6 = *a3;
  v7 = a3[1];
  while (v7 != v6)
  {
    v8 = *(v7 - 1);
    v7 -= 3;
    if (v8 < 0)
    {
      operator delete(*v7);
    }
  }

  a3[1] = v6;
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    v11 = *a1;
    if (*a1)
    {
LABEL_7:
      if (sub_928074(v11, v9, 0))
      {
        v12 = *(v9 + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v9 + 8);
        }

        if (v12)
        {
          v14 = a3[1];
          if (v14 >= a3[2])
          {
            v16 = sub_1CEE8(a3, v9);
          }

          else
          {
            if (v13 < 0)
            {
              sub_325C(a3[1], *v9, *(v9 + 8));
            }

            else
            {
              v15 = *v9;
              v14[2] = *(v9 + 16);
              *v14 = v15;
            }

            v16 = v14 + 3;
            a3[1] = v14 + 3;
          }

          a3[1] = v16;
        }
      }

      while (1)
      {
        v9 += 24;
        if (v9 == v10)
        {
          break;
        }

        v11 = *a1;
        if (*a1)
        {
          goto LABEL_7;
        }
      }
    }
  }
}

void sub_65F810(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (!*(a1 + 16))
  {
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  v10 = sub_6A58DC(a2);
  v11 = sub_9274F4(*(a1 + 16), a2);
  if (v11[23] < 0)
  {
    v11 = sub_325C(__p, *v11, *(v11 + 1));
    if (!a4)
    {
LABEL_4:
      v13 = SHIBYTE(v17);
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v12 = *v11;
    v17 = *(v11 + 2);
    *__p = v12;
    if (!a4)
    {
      goto LABEL_4;
    }
  }

  sub_74A744(__p, &v14);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = v14;
  v17 = v15;
  v13 = SHIBYTE(v15);
  if ((SHIBYTE(v15) & 0x80000000) == 0)
  {
LABEL_5:
    *a5 = *__p;
    *(a5 + 16) = v17;
    *(a5 + 24) = v10;
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_13:
  v11 = sub_325C(a5, __p[0], __p[1]);
  v13 = SHIBYTE(v17);
  *(a5 + 24) = v10;
  if ((v13 & 0x80000000) == 0)
  {
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (__p[1])
  {
LABEL_15:
    sub_65DDB8(v11, a3, a5);
    LOBYTE(v13) = HIBYTE(v17);
  }

LABEL_16:
  if ((v13 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }
}

void sub_65F96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if ((a18 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_65F9BC(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X8>)
{
  v4 = *(a1 + 16);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4)
  {
    nullsub_1();
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      do
      {
        while (1)
        {
          while (1)
          {
            v11 = sub_58BBC(a2);
            sub_65F810(a1, v8, v11, 0, __p);
            v12 = a3[1];
            if (v12 >= a3[2])
            {
              break;
            }

            v10 = *__p;
            *(v12 + 2) = v16;
            *v12 = v10;
            __p[1] = 0;
            v16 = 0;
            __p[0] = 0;
            *(v12 + 24) = v17;
            a3[1] = v12 + 2;
            v8 += 3;
            if (v8 == v9)
            {
              return;
            }
          }

          v13 = sub_667410(a3, __p);
          v14 = SHIBYTE(v16);
          a3[1] = v13;
          if (v14 < 0)
          {
            break;
          }

          v8 += 3;
          if (v8 == v9)
          {
            return;
          }
        }

        operator delete(__p[0]);
        v8 += 3;
      }

      while (v8 != v9);
    }
  }
}

void sub_65FAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_4B98C4(v14);
    _Unwind_Resume(a1);
  }

  sub_4B98C4(v14);
  _Unwind_Resume(a1);
}

void sub_65FB0C(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  v156 = 0u;
  v157 = 0u;
  v155 = 0u;
  do
  {
    v5 = *(&v155 + 1);
    if (v156 == *(&v155 + 1))
    {
      v6 = 0;
    }

    else
    {
      v6 = ((v156 - *(&v155 + 1)) << 6) - 1;
    }

    v7 = *(&v157 + 1);
    v8 = *(&v157 + 1) + v157;
    if (v6 == *(&v157 + 1) + v157)
    {
      sub_668354(&v155);
      v7 = *(&v157 + 1);
      v5 = *(&v155 + 1);
      v8 = v157 + *(&v157 + 1);
    }

    *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = a2;
    *(&v157 + 1) = v7 + 1;
    sub_681038(a2, &v158);
    v9 = *(&v158 + 1);
    a2 = v158;
    if (*(&v158 + 1) && !atomic_fetch_add((*(&v158 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  while (a2);
  sub_6EDEC(v153, *(a1 + 2632));
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v10 = *(&v157 + 1);
  if (*(&v157 + 1))
  {
    v135 = a3;
    while (1)
    {
      v12 = *(*(*(&v155 + 1) + (((v157 + v10 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v157 + v10 - 1) & 0x1FF));
      if (v156 == *(&v155 + 1))
      {
        v13 = 0;
      }

      else
      {
        v13 = ((v156 - *(&v155 + 1)) << 6) - 1;
      }

      *(&v157 + 1) = v10 - 1;
      if ((v13 - (v10 + v157) + 1) >= 0x400)
      {
        operator delete(*(v156 - 8));
        *&v156 = v156 - 8;
      }

      nullsub_1();
      sub_65F9BC(a1, v14, &__p);
      sub_65F30C(v12, v144);
      v15 = v145;
      if ((v145 & 0x80u) != 0)
      {
        v15 = v144[1];
      }

      if (v15)
      {
        break;
      }

      v16 = v147;
      if ((v147 & 0x80u) != 0)
      {
        v16 = *(&v146 + 1);
      }

      if (v16)
      {
        break;
      }

      v17 = v149;
      if ((v149 & 0x80u) != 0)
      {
        v17 = *(&v148 + 1);
      }

      if (v17)
      {
        break;
      }

      if (&__p != a3)
      {
        sub_668A40(a3, __p, v152, (v152 - __p) >> 5);
      }

LABEL_321:
      if (v149 < 0)
      {
        operator delete(v148);
        if ((v147 & 0x80000000) == 0)
        {
LABEL_323:
          if ((v145 & 0x80000000) == 0)
          {
            goto LABEL_324;
          }

          goto LABEL_328;
        }
      }

      else if ((v147 & 0x80000000) == 0)
      {
        goto LABEL_323;
      }

      operator delete(v146);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_324:
        v120 = __p;
        if (__p)
        {
          goto LABEL_329;
        }

        goto LABEL_15;
      }

LABEL_328:
      operator delete(v144[0]);
      v120 = __p;
      if (__p)
      {
LABEL_329:
        v121 = v152;
        v11 = v120;
        if (v152 != v120)
        {
          do
          {
            v122 = *(v121 - 9);
            v121 -= 4;
            if (v122 < 0)
            {
              operator delete(*v121);
            }
          }

          while (v121 != v120);
          v11 = __p;
        }

        v152 = v120;
        operator delete(v11);
      }

LABEL_15:
      v10 = *(&v157 + 1);
      if (!*(&v157 + 1))
      {
        goto LABEL_336;
      }
    }

    v18 = sub_58BBC(v12);
    sub_67E4F8(&v140, v144, v18);
    v19 = __p;
    v128 = v152;
    if (__p != v152)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      while (1)
      {
        v24 = v150;
        sub_734CE0(&v158);
        v162 = 0;
        if (&v160 != v19)
        {
          v25 = *(v19 + 23);
          if (SHIBYTE(v161) < 0)
          {
            if (v25 >= 0)
            {
              v27 = v19;
            }

            else
            {
              v27 = *v19;
            }

            if (v25 >= 0)
            {
              v28 = *(v19 + 23);
            }

            else
            {
              v28 = v19[1];
            }

            sub_13B38(&v160, v27, v28);
          }

          else if ((*(v19 + 23) & 0x80) != 0)
          {
            sub_13A68(&v160, *v19, v19[1]);
          }

          else
          {
            v26 = *v19;
            v161 = v19[2];
            v160 = v26;
          }
        }

        if (v24)
        {
          sub_2E30(&v160, v153, &v174);
          if (SHIBYTE(v161) < 0)
          {
            operator delete(v160);
          }

          v160 = v174;
          v161 = v175;
        }

        sub_67F2AC(&v140, &v146, &v158, 0);
        if (v168 < 0)
        {
          operator delete(v167);
          if ((v166 & 0x80000000) == 0)
          {
LABEL_55:
            if ((v164 & 0x80000000) == 0)
            {
              goto LABEL_56;
            }

            goto LABEL_188;
          }
        }

        else if ((v166 & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        operator delete(v165);
        if ((v164 & 0x80000000) == 0)
        {
LABEL_56:
          if (SHIBYTE(v161) < 0)
          {
            goto LABEL_189;
          }

          goto LABEL_57;
        }

LABEL_188:
        operator delete(v163);
        if (SHIBYTE(v161) < 0)
        {
LABEL_189:
          operator delete(v160);
          if ((SBYTE7(v159) & 0x80000000) == 0)
          {
            goto LABEL_58;
          }

          goto LABEL_190;
        }

LABEL_57:
        if ((SBYTE7(v159) & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

LABEL_190:
        operator delete(v158);
LABEL_58:
        v29 = v149;
        if ((v149 & 0x80u) != 0)
        {
          v29 = *(&v148 + 1);
        }

        v129 = v19;
        if (v29)
        {
          v31 = *a3;
          v30 = a3[1];
          for (i = v30; ; v30 = i)
          {
            if (v31 == v30)
            {
              goto LABEL_36;
            }

            sub_734CE0(&v158);
            v162 = 0;
            if (&v160 != v31)
            {
              v33 = *(v31 + 23);
              if (SHIBYTE(v161) < 0)
              {
                if (v33 >= 0)
                {
                  v35 = v31;
                }

                else
                {
                  v35 = *v31;
                }

                if (v33 >= 0)
                {
                  v36 = *(v31 + 23);
                }

                else
                {
                  v36 = *(v31 + 8);
                }

                sub_13B38(&v160, v35, v36);
              }

              else if ((*(v31 + 23) & 0x80) != 0)
              {
                sub_13A68(&v160, *v31, *(v31 + 8));
              }

              else
              {
                v34 = *v31;
                v161 = *(v31 + 16);
                v160 = v34;
              }
            }

            sub_67F2AC(&v140, &v148, &v158, 0);
            if (v168 < 0)
            {
              operator delete(v167);
              if ((v166 & 0x80000000) == 0)
              {
LABEL_83:
                if ((v164 & 0x80000000) == 0)
                {
                  goto LABEL_84;
                }

                goto LABEL_91;
              }
            }

            else if ((v166 & 0x80000000) == 0)
            {
              goto LABEL_83;
            }

            operator delete(v165);
            if ((v164 & 0x80000000) == 0)
            {
LABEL_84:
              if (SHIBYTE(v161) < 0)
              {
                goto LABEL_92;
              }

              goto LABEL_85;
            }

LABEL_91:
            operator delete(v163);
            if (SHIBYTE(v161) < 0)
            {
LABEL_92:
              operator delete(v160);
              if ((SBYTE7(v159) & 0x80000000) == 0)
              {
                goto LABEL_86;
              }

              goto LABEL_93;
            }

LABEL_85:
            if ((SBYTE7(v159) & 0x80000000) == 0)
            {
              goto LABEL_86;
            }

LABEL_93:
            operator delete(v158);
LABEL_86:
            v37 = sub_58BBC(&v140);
            if (*(a1 + 16))
            {
              v38 = v37;
              v39 = sub_6A58DC(v144);
              v40 = sub_9274F4(*(a1 + 16), v144);
              if (*(v40 + 23) < 0)
              {
                sub_325C(&v169, *v40, v40[1]);
              }

              else
              {
                v41 = *v40;
                v170 = v40[2];
                v169 = v41;
              }

              if (SHIBYTE(v170) < 0)
              {
                sub_325C(&v158, v169, *(&v169 + 1));
                v45 = HIBYTE(v170);
                BYTE8(v159) = v39;
                if (SHIBYTE(v170) < 0)
                {
                  v131 = v31;
                  v132 = v21;
                  if (!*(&v169 + 1))
                  {
                    goto LABEL_180;
                  }

LABEL_121:
                  v51 = *(v38 + 16);
                  if (!v51)
                  {
                    goto LABEL_180;
                  }

                  v136 = v22;
                  v138 = v20;
                  while (1)
                  {
                    if (*(v51 + 39) < 0)
                    {
                      sub_325C(&v174, v51[2], v51[3]);
                    }

                    else
                    {
                      v174 = *(v51 + 1);
                      v175 = v51[4];
                    }

                    sub_734D90(&v171);
                    v52 = SHIBYTE(v175);
                    v53 = *(&v174 + 1);
                    if (SHIBYTE(v175) >= 0)
                    {
                      v54 = SHIBYTE(v175);
                    }

                    else
                    {
                      v54 = *(&v174 + 1);
                    }

                    if (v54)
                    {
                      v55 = 0;
                      v56 = SHIBYTE(v175) >> 63;
                      v57 = BYTE7(v159);
                      if ((SBYTE7(v159) & 0x80u) == 0)
                      {
                        v58 = &v158;
                      }

                      else
                      {
                        v58 = v158;
                      }

                      if (SBYTE7(v159) < 0)
                      {
                        v57 = *(&v158 + 1);
                      }

                      if (SHIBYTE(v175) >= 0)
                      {
                        v59 = &v174;
                      }

                      else
                      {
                        v59 = v174;
                      }

                      while (!v54)
                      {
LABEL_150:
                        if (v55 != -1)
                        {
                          if (v56)
                          {
                            v66 = v53;
                          }

                          else
                          {
                            v66 = v52;
                          }

                          if ((v173 & 0x80u) == 0)
                          {
                            v67 = &v171;
                          }

                          else
                          {
                            v67 = v171;
                          }

                          if ((v173 & 0x80u) == 0)
                          {
                            v68 = v173;
                          }

                          else
                          {
                            v68 = v172;
                          }

                          std::string::replace(&v158, v55, v66, v67, v68);
                          v69 = v173;
                          if ((v173 & 0x80u) != 0)
                          {
                            v69 = v172;
                          }

                          v55 += v69;
                          v57 = BYTE7(v159);
                          if ((SBYTE7(v159) & 0x80u) == 0)
                          {
                            v58 = &v158;
                          }

                          else
                          {
                            v58 = v158;
                          }

                          if (SBYTE7(v159) < 0)
                          {
                            v57 = *(&v158 + 1);
                          }

                          v52 = SHIBYTE(v175);
                          v56 = SHIBYTE(v175) >> 63;
                          v53 = *(&v174 + 1);
                          v59 = SHIBYTE(v175) >= 0 ? &v174 : v174;
                          v54 = SHIBYTE(v175) >= 0 ? SHIBYTE(v175) : *(&v174 + 1);
                          if (v57 >= v55)
                          {
                            continue;
                          }
                        }

                        goto LABEL_174;
                      }

                      v60 = v57 - v55;
                      if ((v57 - v55) >= v54)
                      {
                        v61 = &v58[v57];
                        v62 = &v58[v55];
                        v63 = *v59;
                        do
                        {
                          if (v60 - v54 == -1)
                          {
                            break;
                          }

                          v64 = memchr(v62, v63, v60 - v54 + 1);
                          if (!v64)
                          {
                            break;
                          }

                          v65 = v64;
                          if (!memcmp(v64, v59, v54))
                          {
                            if (v65 == v61)
                            {
                              break;
                            }

                            v55 = v65 - v58;
                            goto LABEL_150;
                          }

                          v62 = v65 + 1;
                          v60 = v61 - (v65 + 1);
                        }

                        while (v60 >= v54);
                      }
                    }

LABEL_174:
                    v70 = sub_6A5CEC(&v174);
                    v71 = BYTE8(v159);
                    if (BYTE8(v159) <= v70)
                    {
                      v71 = v70;
                    }

                    BYTE8(v159) = v71;
                    v22 = v136;
                    v20 = v138;
                    if (v173 < 0)
                    {
                      operator delete(v171);
                      a3 = v135;
                      if ((SHIBYTE(v175) & 0x80000000) == 0)
                      {
                        goto LABEL_124;
                      }
                    }

                    else
                    {
                      a3 = v135;
                      if ((SHIBYTE(v175) & 0x80000000) == 0)
                      {
LABEL_124:
                        v51 = *v51;
                        if (!v51)
                        {
                          goto LABEL_179;
                        }

                        continue;
                      }
                    }

                    operator delete(v174);
                    v51 = *v51;
                    if (!v51)
                    {
LABEL_179:
                      v45 = HIBYTE(v170);
                      goto LABEL_180;
                    }
                  }
                }

                v131 = v31;
                v132 = v21;
                if (HIBYTE(v170))
                {
                  goto LABEL_121;
                }
              }

              else
              {
                v45 = HIBYTE(v170);
                v158 = v169;
                *&v159 = v170;
                BYTE8(v159) = v39;
                v131 = v31;
                v132 = v21;
                if (HIBYTE(v170))
                {
                  goto LABEL_121;
                }
              }

LABEL_180:
              if (v45 < 0)
              {
                operator delete(v169);
                v19 = v129;
                v31 = v131;
                v21 = v132;
                if (v22 < v132)
                {
LABEL_182:
                  v72 = v158;
                  v22[2] = v159;
                  *v22 = v72;
                  *&v159 = 0;
                  v158 = 0uLL;
                  *(v22 + 24) = BYTE8(v159);
                  v22 += 4;
                  if (SBYTE7(v159) < 0)
                  {
                    goto LABEL_62;
                  }

                  goto LABEL_63;
                }
              }

              else
              {
                v19 = v129;
                v31 = v131;
                v21 = v132;
                if (v22 < v132)
                {
                  goto LABEL_182;
                }
              }
            }

            else
            {
              v158 = 0u;
              v159 = 0u;
              if (v22 < v21)
              {
                goto LABEL_182;
              }
            }

            v42 = (v22 - v20) >> 5;
            v43 = v42 + 1;
            if ((v42 + 1) >> 59)
            {
              sub_1794();
            }

            if ((v21 - v20) >> 4 > v43)
            {
              v43 = (v21 - v20) >> 4;
            }

            if ((v21 - v20) >= 0x7FFFFFFFFFFFFFE0)
            {
              v44 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v44 = v43;
            }

            if (v44)
            {
              if (!(v44 >> 59))
              {
                operator new();
              }

              sub_1808();
            }

            v46 = 32 * v42;
            *v46 = v158;
            *(v46 + 16) = v159;
            *&v159 = 0;
            v158 = 0uLL;
            *(v46 + 24) = BYTE8(v159);
            if (v20 != v22)
            {
              v47 = v20;
              v48 = 0;
              do
              {
                v49 = *v47;
                *(v48 + 16) = v47[2];
                *v48 = v49;
                v47[1] = 0;
                v47[2] = 0;
                *v47 = 0;
                *(v48 + 24) = *(v47 + 24);
                v47 += 4;
                v48 += 32;
              }

              while (v47 != v22);
              v50 = v20;
              do
              {
                if (*(v50 + 23) < 0)
                {
                  operator delete(*v50);
                }

                v50 += 4;
              }

              while (v50 != v22);
            }

            v21 = 0;
            v22 = (v46 + 32);
            v20 = 0;
            if (SBYTE7(v159) < 0)
            {
LABEL_62:
              operator delete(v158);
            }

LABEL_63:
            v32 = *(v19 + 24);
            if (*(v22 - 8) > v32)
            {
              v32 = *(v22 - 8);
            }

            *(v22 - 8) = v32;
            if (v32 <= *(v31 + 24))
            {
              LOBYTE(v32) = *(v31 + 24);
            }

            *(v22 - 8) = v32;
            v31 += 32;
          }
        }

        v73 = sub_58BBC(&v140);
        v137 = v22;
        v139 = v20;
        if (*(a1 + 16))
        {
          v74 = v73;
          v75 = sub_6A58DC(v144);
          v76 = sub_9274F4(*(a1 + 16), v144);
          if (*(v76 + 23) < 0)
          {
            sub_325C(&v169, *v76, v76[1]);
          }

          else
          {
            v77 = *v76;
            v170 = v76[2];
            v169 = v77;
          }

          if (SHIBYTE(v170) < 0)
          {
            sub_325C(&v158, v169, *(&v169 + 1));
            v81 = HIBYTE(v170);
            BYTE8(v159) = v75;
            if (SHIBYTE(v170) < 0)
            {
              if (!*(&v169 + 1))
              {
                goto LABEL_280;
              }

LABEL_221:
              v87 = *(v74 + 16);
              if (!v87)
              {
                goto LABEL_280;
              }

              v133 = v21;
              while (1)
              {
                if (*(v87 + 39) < 0)
                {
                  sub_325C(&v174, v87[2], v87[3]);
                }

                else
                {
                  v174 = *(v87 + 1);
                  v175 = v87[4];
                }

                sub_734D90(&v171);
                v88 = SHIBYTE(v175);
                v89 = *(&v174 + 1);
                if (SHIBYTE(v175) >= 0)
                {
                  v90 = SHIBYTE(v175);
                }

                else
                {
                  v90 = *(&v174 + 1);
                }

                if (v90)
                {
                  v91 = 0;
                  v92 = SHIBYTE(v175) >> 63;
                  v93 = BYTE7(v159);
                  if ((SBYTE7(v159) & 0x80u) == 0)
                  {
                    v94 = &v158;
                  }

                  else
                  {
                    v94 = v158;
                  }

                  if (SBYTE7(v159) < 0)
                  {
                    v93 = *(&v158 + 1);
                  }

                  if (SHIBYTE(v175) >= 0)
                  {
                    v95 = &v174;
                  }

                  else
                  {
                    v95 = v174;
                  }

                  while (!v90)
                  {
LABEL_250:
                    if (v91 != -1)
                    {
                      if (v92)
                      {
                        v102 = v89;
                      }

                      else
                      {
                        v102 = v88;
                      }

                      if ((v173 & 0x80u) == 0)
                      {
                        v103 = &v171;
                      }

                      else
                      {
                        v103 = v171;
                      }

                      if ((v173 & 0x80u) == 0)
                      {
                        v104 = v173;
                      }

                      else
                      {
                        v104 = v172;
                      }

                      std::string::replace(&v158, v91, v102, v103, v104);
                      v105 = v173;
                      if ((v173 & 0x80u) != 0)
                      {
                        v105 = v172;
                      }

                      v91 += v105;
                      v93 = BYTE7(v159);
                      if ((SBYTE7(v159) & 0x80u) == 0)
                      {
                        v94 = &v158;
                      }

                      else
                      {
                        v94 = v158;
                      }

                      if (SBYTE7(v159) < 0)
                      {
                        v93 = *(&v158 + 1);
                      }

                      v88 = SHIBYTE(v175);
                      v92 = SHIBYTE(v175) >> 63;
                      v89 = *(&v174 + 1);
                      v95 = SHIBYTE(v175) >= 0 ? &v174 : v174;
                      v90 = SHIBYTE(v175) >= 0 ? SHIBYTE(v175) : *(&v174 + 1);
                      if (v93 >= v91)
                      {
                        continue;
                      }
                    }

                    goto LABEL_274;
                  }

                  v96 = v93 - v91;
                  if ((v93 - v91) >= v90)
                  {
                    v97 = &v94[v93];
                    v98 = &v94[v91];
                    v99 = *v95;
                    do
                    {
                      if (v96 - v90 == -1)
                      {
                        break;
                      }

                      v100 = memchr(v98, v99, v96 - v90 + 1);
                      if (!v100)
                      {
                        break;
                      }

                      v101 = v100;
                      if (!memcmp(v100, v95, v90))
                      {
                        if (v101 == v97)
                        {
                          break;
                        }

                        v91 = v101 - v94;
                        goto LABEL_250;
                      }

                      v98 = v101 + 1;
                      v96 = v97 - (v101 + 1);
                    }

                    while (v96 >= v90);
                  }
                }

LABEL_274:
                v106 = sub_6A5CEC(&v174);
                v19 = v129;
                v21 = v133;
                v107 = BYTE8(v159);
                if (BYTE8(v159) <= v106)
                {
                  v107 = v106;
                }

                BYTE8(v159) = v107;
                a3 = v135;
                v22 = v137;
                v20 = v139;
                if (v173 < 0)
                {
                  operator delete(v171);
                  if ((SHIBYTE(v175) & 0x80000000) == 0)
                  {
                    goto LABEL_224;
                  }
                }

                else if ((SHIBYTE(v175) & 0x80000000) == 0)
                {
LABEL_224:
                  v87 = *v87;
                  if (!v87)
                  {
                    goto LABEL_279;
                  }

                  continue;
                }

                operator delete(v174);
                v87 = *v87;
                if (!v87)
                {
LABEL_279:
                  v81 = HIBYTE(v170);
                  goto LABEL_280;
                }
              }
            }

            if (HIBYTE(v170))
            {
              goto LABEL_221;
            }
          }

          else
          {
            v81 = HIBYTE(v170);
            v158 = v169;
            *&v159 = v170;
            BYTE8(v159) = v75;
            if (HIBYTE(v170))
            {
              goto LABEL_221;
            }
          }

LABEL_280:
          if (v81 < 0)
          {
            operator delete(v169);
            if (v22 < v21)
            {
LABEL_282:
              v108 = v158;
              v22[2] = v159;
              *v22 = v108;
              *&v159 = 0;
              v158 = 0uLL;
              *(v22 + 24) = BYTE8(v159);
              v22 += 4;
              if (SBYTE7(v159) < 0)
              {
                goto LABEL_32;
              }

              goto LABEL_33;
            }
          }

          else if (v22 < v21)
          {
            goto LABEL_282;
          }
        }

        else
        {
          v158 = 0u;
          v159 = 0u;
          if (v22 < v21)
          {
            goto LABEL_282;
          }
        }

        v78 = (v22 - v20) >> 5;
        v79 = v78 + 1;
        if ((v78 + 1) >> 59)
        {
          sub_1794();
        }

        if ((v21 - v20) >> 4 > v79)
        {
          v79 = (v21 - v20) >> 4;
        }

        if ((v21 - v20) >= 0x7FFFFFFFFFFFFFE0)
        {
          v80 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v80 = v79;
        }

        if (v80)
        {
          if (!(v80 >> 59))
          {
            operator new();
          }

          sub_1808();
        }

        v82 = 32 * v78;
        *v82 = v158;
        *(v82 + 16) = v159;
        *&v159 = 0;
        v158 = 0uLL;
        *(v82 + 24) = BYTE8(v159);
        if (v20 != v22)
        {
          v83 = v20;
          v84 = 0;
          do
          {
            v85 = *v83;
            *(v84 + 16) = v83[2];
            *v84 = v85;
            v83[1] = 0;
            v83[2] = 0;
            *v83 = 0;
            *(v84 + 24) = *(v83 + 24);
            v83 += 4;
            v84 += 32;
          }

          while (v83 != v22);
          v86 = v20;
          do
          {
            if (*(v86 + 23) < 0)
            {
              operator delete(*v86);
            }

            v86 += 4;
          }

          while (v86 != v22);
        }

        v21 = 0;
        v22 = (v82 + 32);
        v20 = 0;
        if (SBYTE7(v159) < 0)
        {
LABEL_32:
          operator delete(v158);
        }

LABEL_33:
        v23 = *(v19 + 24);
        if (*(v22 - 8) > v23)
        {
          LOBYTE(v23) = *(v22 - 8);
        }

        *(v22 - 8) = v23;
LABEL_36:
        v19 += 4;
        if (v19 == v128)
        {
          goto LABEL_287;
        }
      }
    }

    v22 = 0;
    v21 = 0;
    v20 = 0;
LABEL_287:
    v109 = *a3;
    if (*a3)
    {
      v110 = a3[1];
      v111 = *a3;
      if (v110 != v109)
      {
        do
        {
          v112 = *(v110 - 9);
          v110 -= 4;
          if (v112 < 0)
          {
            operator delete(*v110);
          }
        }

        while (v110 != v109);
        v111 = *a3;
      }

      a3[1] = v109;
      operator delete(v111);
    }

    *a3 = v20;
    a3[1] = v22;
    a3[2] = v21;
    v113 = v143;
    if (!v143)
    {
LABEL_311:
      v115 = v142;
      v142 = 0;
      if (v115)
      {
        operator delete(v115);
      }

      v116 = v140;
      if (v140)
      {
        v117 = v141;
        v118 = v140;
        if (v141 != v140)
        {
          do
          {
            v119 = *(v117 - 1);
            v117 -= 3;
            if (v119 < 0)
            {
              operator delete(*v117);
            }
          }

          while (v117 != v116);
          v118 = v140;
        }

        v141 = v116;
        operator delete(v118);
      }

      goto LABEL_321;
    }

    while (1)
    {
      v114 = *v113;
      if (*(v113 + 191) < 0)
      {
        operator delete(v113[21]);
        if (*(v113 + 159) < 0)
        {
          goto LABEL_306;
        }

LABEL_301:
        if ((*(v113 + 135) & 0x80000000) == 0)
        {
          goto LABEL_302;
        }

LABEL_307:
        operator delete(v113[14]);
        if (*(v113 + 95) < 0)
        {
          goto LABEL_308;
        }

LABEL_303:
        if ((*(v113 + 63) & 0x80000000) == 0)
        {
          goto LABEL_309;
        }

LABEL_297:
        operator delete(v113[5]);
        if (*(v113 + 39) < 0)
        {
          goto LABEL_310;
        }

LABEL_298:
        operator delete(v113);
        v113 = v114;
        if (!v114)
        {
          goto LABEL_311;
        }
      }

      else
      {
        if ((*(v113 + 159) & 0x80000000) == 0)
        {
          goto LABEL_301;
        }

LABEL_306:
        operator delete(v113[17]);
        if (*(v113 + 135) < 0)
        {
          goto LABEL_307;
        }

LABEL_302:
        if ((*(v113 + 95) & 0x80000000) == 0)
        {
          goto LABEL_303;
        }

LABEL_308:
        operator delete(v113[9]);
        if (*(v113 + 63) < 0)
        {
          goto LABEL_297;
        }

LABEL_309:
        if ((*(v113 + 39) & 0x80000000) == 0)
        {
          goto LABEL_298;
        }

LABEL_310:
        operator delete(v113[2]);
        operator delete(v113);
        v113 = v114;
        if (!v114)
        {
          goto LABEL_311;
        }
      }
    }
  }

LABEL_336:
  if (v154 < 0)
  {
    operator delete(v153[0]);
    v123 = *(&v155 + 1);
    v124 = v156;
    *(&v157 + 1) = 0;
    v125 = (v156 - *(&v155 + 1)) >> 3;
    if (v125 < 3)
    {
      goto LABEL_339;
    }
  }

  else
  {
    v123 = *(&v155 + 1);
    v124 = v156;
    *(&v157 + 1) = 0;
    v125 = (v156 - *(&v155 + 1)) >> 3;
    if (v125 < 3)
    {
      goto LABEL_339;
    }
  }

  do
  {
    operator delete(*v123);
    v124 = v156;
    v123 = (*(&v155 + 1) + 8);
    *(&v155 + 1) = v123;
    v125 = (v156 - v123) >> 3;
  }

  while (v125 > 2);
LABEL_339:
  if (v125 == 1)
  {
    v126 = 256;
    goto LABEL_345;
  }

  if (v125 == 2)
  {
    v126 = 512;
LABEL_345:
    *&v157 = v126;
  }

  if (v123 != v124)
  {
    do
    {
      v127 = *v123++;
      operator delete(v127);
    }

    while (v123 != v124);
    if (v156 != *(&v155 + 1))
    {
      *&v156 = v156 + ((*(&v155 + 1) - v156 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v155)
  {
    operator delete(v155);
  }
}

void sub_660BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void **a48, void **a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, void **a58, uint64_t a59)
{
  if (a46 < 0)
  {
    operator delete(__p);
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a40 & 0x80000000) == 0)
  {
LABEL_3:
    if (a34 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  operator delete(a35);
  if (a34 < 0)
  {
LABEL_4:
    operator delete(a29);
    v61 = a48;
    if (a48)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  v61 = a48;
  if (a48)
  {
LABEL_5:
    v62 = a49;
    if (a49 == v61)
    {
      operator delete(v61);
      v63 = *v59;
      if (*v59)
      {
LABEL_7:
        v64 = v59[1];
        if (v64 == v63)
        {
          v59[1] = v63;
          operator delete(v63);
          if ((a56 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_32:
          operator delete(a51);
          v65 = a58;
          v66 = a59;
          v73 = (a59 - a58) >> 3;
          if (v73 < 3)
          {
            goto LABEL_18;
          }

          goto LABEL_10;
        }

        do
        {
          v69 = *(v64 - 9);
          v64 -= 4;
          if (v69 < 0)
          {
            operator delete(*v64);
          }
        }

        while (v64 != v63);
        v72 = *v59;
        v59[1] = v63;
        operator delete(v72);
        if (a56 < 0)
        {
          goto LABEL_32;
        }

LABEL_9:
        v65 = a58;
        v66 = a59;
        v67 = (a59 - a58) >> 3;
        if (v67 < 3)
        {
          goto LABEL_18;
        }

        do
        {
LABEL_10:
          operator delete(*v65);
          v66 = a59;
          v65 = a58 + 1;
          a58 = v65;
          v68 = (a59 - v65) >> 3;
        }

        while (v68 > 2);
LABEL_18:
        while (v65 != v66)
        {
          v71 = *v65++;
          operator delete(v71);
        }

        if (a57)
        {
          operator delete(a57);
        }

        _Unwind_Resume(a1);
      }
    }

    else
    {
      do
      {
        v70 = *(v62 - 9);
        v62 -= 4;
        if (v70 < 0)
        {
          operator delete(*v62);
        }
      }

      while (v62 != v61);
      operator delete(a48);
      v63 = *v59;
      if (*v59)
      {
        goto LABEL_7;
      }
    }

LABEL_31:
    if (a56 < 0)
    {
      goto LABEL_32;
    }

    goto LABEL_9;
  }

LABEL_30:
  v63 = *v59;
  if (*v59)
  {
    goto LABEL_7;
  }

  goto LABEL_31;
}

void sub_660FE4(uint64_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, char ***a5@<X8>)
{
  sub_64B998(a5);
  if (*a1)
  {
    v10 = sub_9274F4(*a1, a2);
    if (*(v10 + 23) < 0)
    {
      LODWORD(v10) = sub_325C(&__p, *v10, v10[1]);
    }

    else
    {
      v11 = *v10;
      __p.__r_.__value_.__r.__words[2] = v10[2];
      *&__p.__r_.__value_.__l.__data_ = v11;
    }

    sub_65DBB8(v10, a3, &__p);
  }

  else
  {
    memset(&__p, 0, sizeof(__p));
  }

  sub_64C184(a5, &__p);
  sub_66110C(a1, a4, a3, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_6610D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v14);
  _Unwind_Resume(a1);
}

void sub_66110C(uint64_t a1, void *a2, void *a3, char ***a4)
{
  sub_666470(a1, a3, a4);
  sub_666778(v6, a4);
  sub_666A24(v7, a2, a4);
  sub_666EE4(v8, a2, a4);
  v9 = sub_64FA0C(a4, "{ChargeDuration}");
  if (v9)
  {
    v10 = sub_4D27AC(a2);
    v9 = sub_64E914(a4, "{ChargeDuration}", v10);
  }

  sub_666DD0(v9, a2, a4);
}

void sub_6611A4(uint64_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = sub_58BBC(a2);
  nullsub_1();
  v9 = *v8;
  v10 = v8[1];
  if (*v8 != v10)
  {
    do
    {
      if ((*(v9 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v9 + 8))
        {
LABEL_12:
          v16 = a4[1];
          if (v16 >= a4[2])
          {
            v17 = sub_667568(a4);
          }

          else
          {
            sub_64B998(a4[1]);
            v17 = v16 + 160;
          }

          a4[1] = v17;
          HIBYTE(v19) = 0;
          LOBYTE(__p[0]) = 0;
          sub_64C184(v17 - 160, __p);
          if (SHIBYTE(v19) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_5;
        }
      }

      else if (!*(v9 + 23))
      {
        goto LABEL_12;
      }

      if (sub_928074(*a1, v9, 0))
      {
        sub_660FE4(a1, v9, v7, a3, __p);
        v15 = a4[1];
        if (v15 < a4[2])
        {
          *(v15 + 16) = 0;
          *(v15 + 24) = 0;
          *v15 = 0;
          *(v15 + 8) = 0;
          *v15 = *__p;
          *(v15 + 16) = v19;
          __p[0] = 0;
          __p[1] = 0;
          *(v15 + 32) = 0;
          *(v15 + 40) = 0;
          *(v15 + 24) = v20;
          v20 = 0uLL;
          *(v15 + 40) = v21;
          *(v15 + 48) = 0;
          *(v15 + 56) = 0;
          *(v15 + 64) = 0;
          *(v15 + 48) = v22;
          *(v15 + 64) = v23;
          *(v15 + 72) = 0;
          v21 = 0;
          v22 = 0uLL;
          v23 = 0;
          *(v15 + 80) = 0;
          *(v15 + 88) = 0;
          *(v15 + 72) = v24;
          *(v15 + 88) = v25;
          v24 = 0uLL;
          v25 = 0;
          v11 = v26;
          v19 = 0;
          v26 = 0;
          *(v15 + 96) = v11;
          LODWORD(v11) = v27;
          *(v15 + 108) = v28;
          *(v15 + 104) = v11;
          v12 = v29;
          *(v15 + 128) = v30;
          *(v15 + 112) = v12;
          v29 = 0uLL;
          v13 = v31;
          *(v15 + 152) = v32;
          *(v15 + 136) = v13;
          v32 = 0;
          v30 = 0;
          v31 = 0uLL;
          v14 = v15 + 160;
        }

        else
        {
          v14 = sub_5CE200(a4, __p);
        }

        a4[1] = v14;
        sub_53A868(__p);
      }

LABEL_5:
      v9 += 24;
    }

    while (v9 != v10);
  }
}

void sub_6613C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_53A868(&a9);
  sub_5C0ED8(v9);
  _Unwind_Resume(a1);
}

void sub_6613E4(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_5C0ED8(v1);
  _Unwind_Resume(a1);
}

void sub_661410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_5C0ED8(v14);
    _Unwind_Resume(a1);
  }

  sub_5C0ED8(v14);
  _Unwind_Resume(a1);
}

void sub_661448(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_681DA8(a2);
  v7 = *v6;
  v32 = *(v6 + 8);
  if (*v6 != v32)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    while (1)
    {
      v33 = v7;
      sub_65E304(a1, v7, &v35);
      v9 = v35;
      v10 = v36;
      if (v35 != v36)
      {
        break;
      }

      if (v35)
      {
        goto LABEL_29;
      }

LABEL_5:
      v7 = v33 + 104;
      if (v33 + 104 == v32)
      {
        return;
      }
    }

    do
    {
      sub_64BC20(v34, v9);
      v11 = sub_682384(a2);
      sub_66110C(a1, a2, v11, v34);
      v13 = a3[1];
      v12 = a3[2];
      if (v13 >= v12)
      {
        v15 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - *a3) >> 5);
        v16 = v15 + 1;
        if (v15 + 1 > 0x199999999999999)
        {
          sub_1794();
        }

        v17 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - *a3) >> 5);
        if (2 * v17 > v16)
        {
          v16 = 2 * v17;
        }

        if (v17 >= 0xCCCCCCCCCCCCCCLL)
        {
          v18 = 0x199999999999999;
        }

        else
        {
          v18 = v16;
        }

        v41 = a3;
        if (v18)
        {
          if (v18 <= 0x199999999999999)
          {
            operator new();
          }

          sub_1808();
        }

        v37 = 0;
        v38 = 160 * v15;
        v39 = 160 * v15;
        v40 = 0;
        sub_55BD50(160 * v15, v34);
        v19 = v39;
        v20 = *a3;
        v21 = a3[1];
        v22 = v38 + *a3 - v21;
        if (v21 != *a3)
        {
          v23 = *a3;
          v24 = v38 + *a3 - v21;
          do
          {
            *v24 = 0;
            *(v24 + 8) = 0;
            *(v24 + 16) = 0;
            *v24 = *v23;
            *(v24 + 16) = *(v23 + 16);
            *v23 = 0;
            *(v23 + 8) = 0;
            *(v23 + 16) = 0;
            *(v24 + 24) = 0;
            *(v24 + 32) = 0;
            *(v24 + 40) = 0;
            *(v24 + 24) = *(v23 + 24);
            *(v24 + 40) = *(v23 + 40);
            *(v23 + 24) = 0;
            *(v23 + 32) = 0;
            *(v23 + 40) = 0;
            *(v24 + 48) = 0;
            *(v24 + 56) = 0;
            *(v24 + 64) = 0;
            *(v24 + 48) = *(v23 + 48);
            *(v24 + 64) = *(v23 + 64);
            *(v23 + 48) = 0;
            *(v23 + 56) = 0;
            *(v23 + 64) = 0;
            *(v24 + 72) = 0;
            *(v24 + 80) = 0;
            *(v24 + 88) = 0;
            *(v24 + 72) = *(v23 + 72);
            v25 = *(v23 + 96);
            *(v24 + 88) = *(v23 + 88);
            *(v23 + 72) = 0;
            *(v23 + 80) = 0;
            *(v23 + 88) = 0;
            *(v23 + 96) = 0;
            *(v24 + 96) = v25;
            v26 = *(v23 + 104);
            *(v24 + 108) = *(v23 + 108);
            *(v24 + 104) = v26;
            v27 = *(v23 + 112);
            *(v24 + 128) = *(v23 + 128);
            *(v24 + 112) = v27;
            *(v23 + 120) = 0;
            *(v23 + 128) = 0;
            *(v23 + 112) = 0;
            v28 = *(v23 + 136);
            *(v24 + 152) = *(v23 + 152);
            *(v24 + 136) = v28;
            *(v23 + 144) = 0;
            *(v23 + 152) = 0;
            *(v23 + 136) = 0;
            v23 += 160;
            v24 += 160;
          }

          while (v23 != v21);
          do
          {
            v20 = (sub_53A868(v20) + 160);
          }

          while (v20 != v21);
          v20 = *a3;
        }

        v14 = v19 + 160;
        *a3 = v22;
        a3[1] = v14;
        v38 = v20;
        v39 = v20;
        a3[2] = v40;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        sub_55BD50(a3[1], v34);
        v14 = v13 + 160;
      }

      a3[1] = v14;
      sub_53A868(v34);
      v9 += 24;
    }

    while (v9 != v10);
    v9 = v35;
    if (!v35)
    {
      goto LABEL_5;
    }

LABEL_29:
    v29 = v36;
    v8 = v9;
    if (v36 != v9)
    {
      do
      {
        v30 = *(v29 - 1);
        v29 -= 3;
        if (v30 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v9);
      v8 = v35;
    }

    v36 = v9;
    operator delete(v8);
    goto LABEL_5;
  }

  v31 = sub_4EF5DC(a2);

  sub_6611A4(a1, v31, a2, a3);
}

void sub_6617E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5C4848(v8 - 128);
  sub_53A868(va);
  sub_1A104((v8 - 152));
  sub_5C0ED8(v7);
  _Unwind_Resume(a1);
}

void sub_661844(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v4 = sub_681DA8(a2);
  v5 = *v4;
  v6 = *(v4 + 8);
  if (*v4 == v6)
  {
    goto LABEL_53;
  }

  v57 = *(v4 + 8);
  while (2)
  {
    if (!sub_6810A0(v5))
    {
      goto LABEL_5;
    }

    sub_65E304(a1, v5, &v60);
    v9 = v60;
    v8 = v61;
    if (v60 == v61)
    {
      v6 = v57;
      if (v60)
      {
        goto LABEL_48;
      }

      goto LABEL_5;
    }

    do
    {
      sub_64BC20(v59, v9);
      v10 = sub_58BBC((a2 + 71));
      sub_666470(v10, v10, v59);
      sub_666778(v11, v59);
      sub_666A24(v12, a2, v59);
      sub_666EE4(v13, a2, v59);
      if (sub_64FA0C(v59, "{ChargeDuration}"))
      {
        v14 = sub_4D27AC(a2);
        sub_64E914(v59, "{ChargeDuration}", v14);
      }

      v15 = v59[0];
      if (v59[0] != v59[1])
      {
        v16 = *(v59[0] + 23);
        if (v16 < 0)
        {
          v15 = *v59[0];
          v16 = *(v59[0] + 1);
          if (v16 < 7)
          {
            goto LABEL_29;
          }
        }

        else if (v16 < 7)
        {
          goto LABEL_29;
        }

        v17 = &v15[v16];
        v18 = v15;
        do
        {
          v19 = memchr(v18, 123, v16 - 6);
          if (!v19)
          {
            break;
          }

          if (*v19 == 2003783803 && *(v19 + 3) == 2104649079)
          {
            if (v19 != v17 && v19 - v15 != -1)
            {
              v21 = sub_681D84(a2) / 1000000.0;
              sub_64F608(v59, "{Power}", v21);
            }

            break;
          }

          v18 = v19 + 1;
          v16 = v17 - v18;
        }

        while (v17 - v18 >= 7);
      }

LABEL_29:
      v22 = v63;
      if (v63 >= v64)
      {
        v24 = 0xCCCCCCCCCCCCCCCDLL * ((v63 - v62) >> 5) + 1;
        if (v24 > 0x199999999999999)
        {
          sub_1794();
        }

        if (0x999999999999999ALL * ((v64 - v62) >> 5) > v24)
        {
          v24 = 0x999999999999999ALL * ((v64 - v62) >> 5);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v64 - v62) >> 5) >= 0xCCCCCCCCCCCCCCLL)
        {
          v25 = 0x199999999999999;
        }

        else
        {
          v25 = v24;
        }

        v69 = &v62;
        if (v25)
        {
          if (v25 <= 0x199999999999999)
          {
            operator new();
          }

          sub_1808();
        }

        v65 = 0;
        v66 = 32 * ((v63 - v62) >> 5);
        v67 = v66;
        v68 = 0;
        sub_55BD50(v66, v59);
        v26 = v67;
        v27 = v62;
        v28 = v63;
        v29 = (v62 + v66 - v63);
        if (v63 != v62)
        {
          v30 = v62;
          v31 = v62 + v66 - v63;
          do
          {
            *v31 = 0;
            *(v31 + 1) = 0;
            *(v31 + 2) = 0;
            *v31 = *v30;
            *(v31 + 2) = v30[2];
            *v30 = 0;
            v30[1] = 0;
            v30[2] = 0;
            *(v31 + 3) = 0;
            *(v31 + 4) = 0;
            *(v31 + 5) = 0;
            *(v31 + 24) = *(v30 + 3);
            *(v31 + 5) = v30[5];
            v30[3] = 0;
            v30[4] = 0;
            v30[5] = 0;
            *(v31 + 6) = 0;
            *(v31 + 7) = 0;
            *(v31 + 8) = 0;
            *(v31 + 3) = *(v30 + 3);
            *(v31 + 8) = v30[8];
            v30[6] = 0;
            v30[7] = 0;
            v30[8] = 0;
            *(v31 + 9) = 0;
            *(v31 + 10) = 0;
            *(v31 + 11) = 0;
            *(v31 + 72) = *(v30 + 9);
            v32 = v30[12];
            *(v31 + 11) = v30[11];
            v30[9] = 0;
            v30[10] = 0;
            v30[11] = 0;
            v30[12] = 0;
            *(v31 + 12) = v32;
            v33 = *(v30 + 26);
            *(v31 + 54) = *(v30 + 54);
            *(v31 + 26) = v33;
            v34 = *(v30 + 7);
            *(v31 + 16) = v30[16];
            *(v31 + 7) = v34;
            v30[15] = 0;
            v30[16] = 0;
            v30[14] = 0;
            v35 = *(v30 + 17);
            *(v31 + 19) = v30[19];
            *(v31 + 136) = v35;
            v30[18] = 0;
            v30[19] = 0;
            v30[17] = 0;
            v30 += 20;
            v31 += 160;
          }

          while (v30 != v28);
          do
          {
            v27 = (sub_53A868(v27) + 160);
          }

          while (v27 != v28);
          v27 = v62;
        }

        v23 = v26 + 160;
        v62 = v29;
        v63 = v26 + 160;
        v66 = v27;
        v67 = v27;
        v64 = v68;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        sub_55BD50(v63, v59);
        v23 = v22 + 160;
      }

      v63 = v23;
      sub_53A868(v59);
      v9 += 24;
    }

    while (v9 != v8);
    v9 = v60;
    v6 = v57;
    if (v60)
    {
LABEL_48:
      v36 = v61;
      v7 = v9;
      if (v61 != v9)
      {
        do
        {
          v37 = *(v36 - 1);
          v36 -= 3;
          if (v37 < 0)
          {
            operator delete(*v36);
          }
        }

        while (v36 != v9);
        v7 = v60;
      }

      v61 = v9;
      operator delete(v7);
    }

LABEL_5:
    v5 += 13;
    if (v5 != v6)
    {
      continue;
    }

    break;
  }

LABEL_53:
  v38 = v62;
  if (v62 != v63)
  {
    v39 = a2[82];
    if (!v39 || *v62 == v62[1])
    {
LABEL_56:
      sub_55BD50(a3, v38);
      goto LABEL_83;
    }

    while (1)
    {
      v40 = *v38;
      v41 = v38[1];
      if (*v38 != v41)
      {
        break;
      }

LABEL_58:
      v39 = *v39;
      if (!v39)
      {
        goto LABEL_56;
      }
    }

    v42 = *(v39 + 39);
    if (v42 >= 0)
    {
      v43 = (v39 + 2);
    }

    else
    {
      v43 = v39[2];
    }

    if (v42 >= 0)
    {
      v44 = *(v39 + 39);
    }

    else
    {
      v44 = v39[3];
    }

    if (!v44)
    {
LABEL_57:
      sub_64F760(v38, v39 + 1, (v39 + 5));
    }

    while (2)
    {
      v45 = *(v40 + 23);
      if (v45 < 0)
      {
        v46 = *v40;
        v45 = *(v40 + 8);
        if (v45 >= v44)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v46 = v40;
        if (v45 >= v44)
        {
LABEL_73:
          v47 = &v46[v45];
          v48 = *v43;
          v49 = v46;
          while (1)
          {
            v50 = v45 - v44;
            if (v50 == -1)
            {
              goto LABEL_68;
            }

            v51 = memchr(v49, v48, v50 + 1);
            if (!v51)
            {
              goto LABEL_68;
            }

            v52 = v51;
            if (!memcmp(v51, v43, v44))
            {
              break;
            }

            v49 = v52 + 1;
            v45 = v47 - (v52 + 1);
            if (v45 < v44)
            {
              goto LABEL_68;
            }
          }

          if (v52 != v47 && v52 - v46 != -1)
          {
            goto LABEL_57;
          }
        }
      }

LABEL_68:
      v40 += 24;
      if (v40 == v41)
      {
        goto LABEL_58;
      }

      continue;
    }
  }

  sub_64B998(a3);
LABEL_83:
  v53 = v62;
  if (v62)
  {
    v54 = v63;
    v55 = v62;
    if (v63 != v62)
    {
      do
      {
        v54 = sub_53A868(v54 - 160);
      }

      while (v54 != v53);
      v55 = v62;
    }

    v63 = v53;
    operator delete(v55);
  }
}

void sub_661E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v10 - 144) = v9;
  sub_53A868(va);
  sub_1A104((v10 - 176));
  sub_5C0ED8((v10 - 152));
  _Unwind_Resume(a1);
}

void sub_661E6C(uint64_t *a1@<X0>, void *a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = sub_681DA8(a2);
  v7 = *v6;
  v31 = *(v6 + 8);
  if (*v6 != v31)
  {
    while (1)
    {
      v32 = v7;
      sub_65E304(a1, v7, &v34);
      v9 = v34;
      v10 = v35;
      if (v34 != v35)
      {
        break;
      }

      if (v34)
      {
        goto LABEL_29;
      }

LABEL_5:
      v7 = v32 + 104;
      if (v32 + 104 == v31)
      {
        return;
      }
    }

    do
    {
      sub_64B998(v33);
      sub_64C184(v33, v9);
      v11 = sub_682384(a2);
      sub_66110C(a1, a2, v11, v33);
      v13 = a3[1];
      v12 = a3[2];
      if (v13 >= v12)
      {
        v15 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - *a3) >> 5);
        v16 = v15 + 1;
        if (v15 + 1 > 0x199999999999999)
        {
          sub_1794();
        }

        v17 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - *a3) >> 5);
        if (2 * v17 > v16)
        {
          v16 = 2 * v17;
        }

        if (v17 >= 0xCCCCCCCCCCCCCCLL)
        {
          v18 = 0x199999999999999;
        }

        else
        {
          v18 = v16;
        }

        v40 = a3;
        if (v18)
        {
          if (v18 <= 0x199999999999999)
          {
            operator new();
          }

          sub_1808();
        }

        v36 = 0;
        v37 = 160 * v15;
        v38 = 160 * v15;
        v39 = 0;
        sub_55BD50(160 * v15, v33);
        v19 = v38;
        v20 = *a3;
        v21 = a3[1];
        v22 = (v37 + *a3 - v21);
        if (v21 != *a3)
        {
          v23 = *a3;
          v24 = (v37 + *a3 - v21);
          do
          {
            *v24 = 0;
            *(v24 + 1) = 0;
            *(v24 + 2) = 0;
            *v24 = *v23;
            *(v24 + 2) = *(v23 + 2);
            *v23 = 0;
            *(v23 + 1) = 0;
            *(v23 + 2) = 0;
            *(v24 + 3) = 0;
            *(v24 + 4) = 0;
            *(v24 + 5) = 0;
            *(v24 + 24) = *(v23 + 24);
            *(v24 + 5) = *(v23 + 5);
            *(v23 + 3) = 0;
            *(v23 + 4) = 0;
            *(v23 + 5) = 0;
            *(v24 + 6) = 0;
            *(v24 + 7) = 0;
            *(v24 + 8) = 0;
            *(v24 + 3) = *(v23 + 3);
            *(v24 + 8) = *(v23 + 8);
            *(v23 + 6) = 0;
            *(v23 + 7) = 0;
            *(v23 + 8) = 0;
            *(v24 + 9) = 0;
            *(v24 + 10) = 0;
            *(v24 + 11) = 0;
            *(v24 + 72) = *(v23 + 72);
            v25 = *(v23 + 12);
            *(v24 + 11) = *(v23 + 11);
            *(v23 + 9) = 0;
            *(v23 + 10) = 0;
            *(v23 + 11) = 0;
            *(v23 + 12) = 0;
            *(v24 + 12) = v25;
            v26 = *(v23 + 26);
            *(v24 + 54) = *(v23 + 54);
            *(v24 + 26) = v26;
            v27 = *(v23 + 7);
            *(v24 + 16) = *(v23 + 16);
            *(v24 + 7) = v27;
            *(v23 + 15) = 0;
            *(v23 + 16) = 0;
            *(v23 + 14) = 0;
            v28 = *(v23 + 136);
            *(v24 + 19) = *(v23 + 19);
            *(v24 + 136) = v28;
            *(v23 + 18) = 0;
            *(v23 + 19) = 0;
            *(v23 + 17) = 0;
            v23 += 160;
            v24 += 160;
          }

          while (v23 != v21);
          do
          {
            v20 = (sub_53A868(v20) + 160);
          }

          while (v20 != v21);
          v20 = *a3;
        }

        v14 = (v19 + 160);
        *a3 = v22;
        a3[1] = v14;
        v37 = v20;
        v38 = v20;
        a3[2] = v39;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        sub_55BD50(a3[1], v33);
        v14 = v13 + 160;
      }

      a3[1] = v14;
      sub_53A868(v33);
      v9 = (v9 + 24);
    }

    while (v9 != v10);
    v9 = v34;
    if (!v34)
    {
      goto LABEL_5;
    }

LABEL_29:
    v29 = v35;
    v8 = v9;
    if (v35 != v9)
    {
      do
      {
        v30 = *(v29 - 1);
        v29 -= 3;
        if (v30 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v9);
      v8 = v34;
    }

    v35 = v9;
    operator delete(v8);
    goto LABEL_5;
  }
}

void sub_6621D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  *(v7 + 8) = v8;
  sub_53A868(va);
  sub_1A104((v9 - 152));
  sub_5C0ED8(v7);
  _Unwind_Resume(a1);
}

void sub_662234(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(a3);
  v6 = sub_681DA8(a2);
  v7 = *v6;
  v8 = v6[1];
  while (v7 != v8)
  {
    v10 = sub_6815F8(v7);
    v11 = *(v10 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = v10[1];
    }

    if (v11)
    {
      v13 = *(a3 + 56);
      if (v13 >= *(a3 + 64))
      {
        *(a3 + 56) = sub_1CEE8(a3 + 48, v10);
        v7 += 104;
      }

      else
      {
        if (v12 < 0)
        {
          sub_325C(*(a3 + 56), *v10, v10[1]);
        }

        else
        {
          v14 = *v10;
          *(v13 + 16) = v10[2];
          *v13 = v14;
        }

        *(a3 + 56) = v13 + 24;
        v7 += 104;
      }
    }

    else
    {
      nullsub_1();
      sub_65E138(a1, v15, 0, &__p);
      v16 = sub_66242C(&__p, 0);
      sub_64C184(a3, v16);
      v17 = sub_682384(a2);
      sub_66110C(a1, a2, v17, a3);
      v18 = __p;
      if (__p)
      {
        v19 = v22;
        v9 = __p;
        if (v22 != __p)
        {
          do
          {
            v20 = *(v19 - 1);
            v19 -= 3;
            if (v20 < 0)
            {
              operator delete(*v19);
            }
          }

          while (v19 != v18);
          v9 = __p;
        }

        v22 = v18;
        operator delete(v9);
      }

      v7 += 104;
    }
  }
}

void sub_6623D0(_Unwind_Exception *a1)
{
  *(v1 + 56) = v2;
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_662410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  sub_53A868(v3);
  _Unwind_Resume(a1);
}

unint64_t sub_66242C(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 24 * a2;
}

void sub_662568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_662648(uint64_t **a1, uint64_t a2, char ***a3)
{
  if (sub_64FA0C(a3, "{Destination}"))
  {
    sub_67E710("{Destination}", &v36);
    v29 = 0;
    v30 = 0;
    sub_680484(&v31, &v36, 1, &v29);
    v6 = v30;
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = sub_681E08(a2);
    sub_649B9C(v27, "{Destination}", 17);
    v28 = v7;
    v24 = 0;
    v25 = 0;
    v26 = 0xC00000000000000;
    strcpy(__p, "Address_Sign");
    sub_662968(a1, &v31, __p, v27, 7, "{Address}", 2);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*__p);
    }

    sub_64BF34(a3, v27);
    sub_53F320(v27);
    v8 = v35;
    if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v9 = v34;
    if (v34)
    {
      do
      {
        v10 = *v9;
        sub_55F7FC((v9 + 2));
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    v11 = v33;
    v33 = 0;
    if (v11)
    {
      operator delete(v11);
    }

    v12 = v31;
    if (v31)
    {
      v13 = v32;
      v14 = v31;
      if (v32 != v31)
      {
        do
        {
          v15 = *(v13 - 1);
          v13 -= 3;
          if (v15 < 0)
          {
            operator delete(*v13);
          }
        }

        while (v13 != v12);
        v14 = v31;
      }

      v32 = v12;
      operator delete(v14);
    }

    v16 = v39;
    if (v39)
    {
      do
      {
        v17 = *v16;
        sub_55F7FC((v16 + 2));
        operator delete(v16);
        v16 = v17;
      }

      while (v17);
    }

    v18 = v38;
    v38 = 0;
    if (v18)
    {
      operator delete(v18);
    }

    v19 = v36;
    if (v36)
    {
      v20 = v37;
      v21 = v36;
      if (v37 != v36)
      {
        do
        {
          v22 = *(v20 - 1);
          v20 -= 3;
          if (v22 < 0)
          {
            operator delete(*v20);
          }
        }

        while (v20 != v19);
        v21 = v36;
      }

      v37 = v19;
      operator delete(v21);
    }
  }
}

void sub_6628F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void **a36)
{
  sub_53F320(&a16);
  sub_662AC8(&a36);
  sub_53A58C((v36 - 120));
  _Unwind_Resume(a1);
}

void sub_66292C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_662AC8(va);
  sub_53A58C((v32 - 120));
  _Unwind_Resume(a1);
}

void sub_66294C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_1F1A8(va);
  sub_53A58C((v30 - 120));
  _Unwind_Resume(a1);
}

void sub_662968(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (*(a6 + 23) < 0)
  {
    v12 = a7;
    sub_325C(v19, *a6, *(a6 + 8));
    a7 = v12;
  }

  else
  {
    *v19 = *a6;
    v20 = *(a6 + 16);
  }

  v21 = a7;
  sub_668DD8(&__p, v19, 1uLL);
  sub_663C3C(a1, a2, a3, a4, a5, &__p);
  v13 = __p;
  if (__p)
  {
    v14 = v18;
    v15 = __p;
    if (v18 != __p)
    {
      do
      {
        v16 = *(v14 - 9);
        v14 -= 4;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = __p;
    }

    v18 = v13;
    operator delete(v15);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }
}

void sub_662A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_4B98C4(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ***sub_662AC8(void ***a1)
{
  v2 = a1[11];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    do
    {
      v4 = *v3;
      sub_55F7FC((v3 + 2));
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    v7 = a1[1];
    v8 = *a1;
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
      v8 = *a1;
    }

    a1[1] = v6;
    operator delete(v8);
  }

  return a1;
}

void sub_662BB8(uint64_t a1, uint64_t a2, char ***a3)
{
  if (sub_64FA0C(a3, qword_279EF80) && sub_64FA0C(a3, "{Icon1}"))
  {
    v6 = sub_59E940(a2);
    if (*a3 != a3[1] && sub_64FA0C(a3, qword_279EF80))
    {
      v7 = sub_4470E4(v6);
      sub_64F510(a3, qword_279EF80, v7);
    }

    if (sub_4470E4(v6) <= *(a1 + 2016))
    {
      v8 = 47;
    }

    else if (sub_4470E4(v6) <= *(a1 + 2020))
    {
      v8 = 49;
    }

    else
    {
      v8 = 5;
    }

    sub_587F3C(v8);
  }
}

void sub_662D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

void sub_662D28(uint64_t *a1@<X0>, uint64_t a2@<X1>, char ***a3@<X8>)
{
  if (sub_681D38(a2) == 28)
  {

    sub_662DE8(a1, a2, a3);
  }

  else
  {
    sub_662FBC(a1, a2, a3);
    sub_662648(a1, a2, a3);
    v6 = sub_59E940(a2);
    if (sub_4566B4(v6))
    {
      sub_662BB8(a1, a2, a3);
    }
  }
}

uint64_t sub_662DE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_662FBC(a1, a2, a3);
  v6 = sub_59E940(a2);
  if (sub_4566B4(v6))
  {
    sub_662BB8(a1, a2, a3);
  }

  v7 = sub_681D90(a2);
  if (sub_4566B4((v7 + 8)))
  {
    v8 = sub_681D90(a2);
    if (*a3 != *(a3 + 8))
    {
      v9 = v8;
      if (sub_64FA0C(a3, "{ChargePercentage}"))
      {
        v10 = sub_4470E4(v9 + 8);
        sub_64F510(a3, "{ChargePercentage}", v10);
      }
    }

    sub_587F3C(48);
  }

  result = sub_4D27AC(a2);
  if (result != 0x7FFFFFFF)
  {
    result = sub_64FA0C(a3, "{ChargeDuration}");
    if (result)
    {
      v12 = sub_4D27AC(a2);
      return sub_64E914(a3, "{ChargeDuration}", v12);
    }
  }

  return result;
}

void sub_662F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53E440(va);
  sub_53A868(v3);
  _Unwind_Resume(a1);
}

void sub_662FBC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(a3);
  v6 = sub_681DA8(a2);
  v7 = *v6;
  v8 = v6[1];
  while (v7 != v8)
  {
    v10 = sub_6815F8(v7);
    v11 = *(v10 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = v10[1];
    }

    if (v11)
    {
      v13 = *(a3 + 56);
      if (v13 >= *(a3 + 64))
      {
        *(a3 + 56) = sub_1CEE8(a3 + 48, v10);
        v7 += 104;
      }

      else
      {
        if (v12 < 0)
        {
          sub_325C(*(a3 + 56), *v10, v10[1]);
        }

        else
        {
          v14 = *v10;
          *(v13 + 16) = v10[2];
          *v13 = v14;
        }

        *(a3 + 56) = v13 + 24;
        v7 += 104;
      }
    }

    else
    {
      nullsub_1();
      sub_65E138(a1, v15, 0, &__p);
      v16 = sub_66242C(&__p, 0);
      sub_64C184(a3, v16);
      v17 = __p;
      if (__p)
      {
        v18 = v21;
        v9 = __p;
        if (v21 != __p)
        {
          do
          {
            v19 = *(v18 - 1);
            v18 -= 3;
            if (v19 < 0)
            {
              operator delete(*v18);
            }
          }

          while (v18 != v17);
          v9 = __p;
        }

        v21 = v17;
        operator delete(v9);
      }

      v7 += 104;
    }
  }
}

void sub_663134(_Unwind_Exception *a1)
{
  *(v1 + 56) = v2;
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_66314C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  sub_53A868(v3);
  _Unwind_Resume(a1);
}

void sub_663190(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  sub_64BC20(a4, "{Destination}");
  sub_67E710("{Destination}", &v26);
  v23 = 0;
  v24 = 0;
  sub_680484(&v25, &v26, 1, &v23);
  v8 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  sub_649B9C(v21, "{Destination}", 17);
  v22 = a2;
  WORD5(v27[0]) = 0;
  HIDWORD(v27[0]) = 0;
  *&v27[1] = 0x900000000000000;
  strcpy(v27, "Home_Sign");
  HIBYTE(v20) = 0;
  LOBYTE(v19[0]) = 0;
  sub_662968(a1, &v25, v27, v21, 2, v19, 0);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  WORD5(v27[0]) = 0;
  HIDWORD(v27[0]) = 0;
  *&v27[1] = 0x900000000000000;
  strcpy(v27, "Work_Sign");
  HIBYTE(v20) = 0;
  LOBYTE(v19[0]) = 0;
  sub_662968(a1, &v25, v27, v21, 1, v19, 0);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  BYTE1(v27[1]) = 0;
  WORD1(v27[1]) = 0;
  DWORD1(v27[1]) = 0x10000000;
  strcpy(v27, "ContactHome_Sign");
  sub_662968(a1, &v25, v27, v21, 4, "{Name}", 3);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  BYTE1(v27[1]) = 0;
  WORD1(v27[1]) = 0;
  DWORD1(v27[1]) = 0x10000000;
  strcpy(v27, "ContactWork_Sign");
  sub_662968(a1, &v25, v27, v21, 3, "{Name}", 3);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  BYTE1(v27[1]) = 0;
  WORD1(v27[1]) = 0;
  DWORD1(v27[1]) = 301989888;
  strcpy(v27, "Other_Contact_Si");
  sub_662968(a1, &v25, v27, v21, 5, "{Name}", 3);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  BYTE13(v27[0]) = 0;
  HIWORD(v27[0]) = 0;
  *&v27[1] = 0xD00000000000000;
  strcpy(v27, "Business_Sig");
  sub_662968(a1, &v25, v27, v21, 6, "{Name}", 4);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  BYTE13(v27[0]) = 0;
  HIWORD(v27[0]) = 0;
  *&v27[1] = 0xC00000000000000;
  strcpy(v27, "Address_Sign");
  sub_662968(a1, &v25, v27, v21, 7, "{Address}", 2);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  BYTE9(v27[0]) = 0;
  WORD5(v27[0]) = 0;
  HIDWORD(v27[0]) = 0;
  *&v27[1] = 0xB00000000000000;
  strcpy(v27, "School_S");
  HIBYTE(v20) = 0;
  LOBYTE(v19[0]) = 0;
  sub_662968(a1, &v25, v27, v21, 10, v19, 0);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  BYTE1(v27[1]) = 0;
  WORD1(v27[1]) = 0;
  DWORD1(v27[1]) = 301989888;
  strcpy(v27, "ContactSchool_Si");
  sub_662968(a1, &v25, v27, v21, 11, "{Name}", 3);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
    if (*(a1 + 2696) != 1)
    {
      goto LABEL_48;
    }
  }

  else if (*(a1 + 2696) != 1)
  {
LABEL_48:
    sub_64BF34(a4, v21);
    if (a3 <= 1)
    {
      if (a3 == 1)
      {
        v15 = "Origin_Waypoint_List";
LABEL_54:
        *v19 = *v15;
        v20 = *(v15 + 2);
        goto LABEL_58;
      }

      goto LABEL_55;
    }

    if (a3 == 2)
    {
      v15 = &xmmword_279EEF0;
      if ((SHIBYTE(qword_279EF00) & 0x80000000) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (a3 != 3)
      {
LABEL_55:
        HIBYTE(v20) = 0;
        LOBYTE(v19[0]) = 0;
        goto LABEL_58;
      }

      v15 = &xmmword_279EF08;
      if ((byte_279EF1F & 0x80000000) == 0)
      {
        goto LABEL_54;
      }
    }

    sub_325C(v19, *v15, *(v15 + 1));
LABEL_58:
    memset(v27, 0, sizeof(v27));
    LODWORD(v28) = 1065353216;
    if (*a1)
    {
      v16 = sub_9274F4(*a1, v19);
      if (*(v16 + 23) < 0)
      {
        LODWORD(v16) = sub_325C(&__p, *v16, v16[1]);
      }

      else
      {
        v17 = *v16;
        __p.__r_.__value_.__r.__words[2] = v16[2];
        *&__p.__r_.__value_.__l.__data_ = v17;
      }

      sub_65DBB8(v16, v27, &__p);
    }

    else
    {
      memset(&__p, 0, sizeof(__p));
    }

    sub_64F488(a4, &__p);
  }

  BYTE1(v27[1]) = 0;
  WORD1(v27[1]) = 0;
  DWORD1(v27[1]) = 318767104;
  strcpy(v27, "PersonLocation_S");
  sub_662968(a1, &v25, v27, v21, 12, "{Name}", 3);
  if (SBYTE7(v27[1]) < 0)
  {
    operator delete(*&v27[0]);
  }

  if (byte_279EF4F >= 0)
  {
    v9 = byte_279EF4F;
  }

  else
  {
    v9 = qword_279EF40;
  }

  if (v9 + 5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v9 + 5 >= 0x17)
  {
    operator new();
  }

  v19[1] = 0;
  v20 = 0;
  v19[0] = 0;
  HIBYTE(v20) = v9 + 5;
  if (v9)
  {
    if (byte_279EF4F >= 0)
    {
      v10 = &qword_279EF38;
    }

    else
    {
      v10 = qword_279EF38;
    }

    memmove(v19, v10, v9);
  }

  strcpy(v19 + v9, "_Sign");
  v27[0] = *"{Name}";
  *&v27[1] = 0x600000000000000;
  BYTE8(v27[1]) = 3;
  v28 = *"{CustomLabel}";
  v29 = 0xD00000000000000;
  v30 = 5;
  sub_668DD8(&__p, v27, 2uLL);
  sub_663C3C(a1, &v25, v19, v21, 13, &__p);
  v11 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    size = __p.__r_.__value_.__l.__size_;
    v13 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
    {
      do
      {
        v14 = *(size - 9);
        size -= 4;
        if (v14 < 0)
        {
          operator delete(*size);
        }
      }

      while (size != v11);
      v13 = __p.__r_.__value_.__r.__words[0];
    }

    __p.__r_.__value_.__l.__size_ = v11;
    operator delete(v13);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
    if ((SBYTE7(v27[1]) & 0x80000000) == 0)
    {
LABEL_47:
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

LABEL_67:
      operator delete(v19[0]);
      goto LABEL_48;
    }
  }

  else if ((SBYTE7(v27[1]) & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

  operator delete(*&v27[0]);
  if ((SHIBYTE(v20) & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

  goto LABEL_67;
}