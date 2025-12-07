void sub_523E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_51B6E0((v21 + 8));
  _Unwind_Resume(a1);
}

void sub_523EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  *(v24 + 8) = v25;
  _Unwind_Resume(exception_object);
}

void sub_523FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  *(v17 + 8) = v18;
  _Unwind_Resume(exception_object);
}

void sub_523FE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (!sub_6905BC(a2))
  {
    return;
  }

  if (sub_68D944(a2))
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = 8;
    v6 = a3[1];
    if (v6 >= a3[2])
    {
      v7 = sub_52B080(a3, v39);
    }

    else
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      v41 = 0;
      v40 = 0uLL;
      sub_52B230(v6, &v42);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v7 = v6 + 2608;
      a3[1] = v6 + 2608;
    }

    a3[1] = v7;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }
  }

  v8 = sub_E6F454(a1 + 1256);
  if (v8 == 0x7FFFFFFF || v8 < *(a1 + 2104))
  {
    goto LABEL_18;
  }

  v9 = sub_E6F454(a1 + 1256);
  *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
  *&v39[24] = 0uLL;
  v41 = 0;
  v40 = 0uLL;
  *&v39[8] = 0x7FFFFFFF;
  *v39 = 9;
  *&v39[40] = v9;
  v10 = a3[1];
  if (v10 >= a3[2])
  {
    v11 = sub_52B080(a3, v39);
  }

  else
  {
    v42 = *v39;
    v43[0] = *&v39[16];
    *(v43 + 12) = *&v39[28];
    __p[1] = 0;
    v45 = 0;
    __p[0] = 0;
    v41 = 0;
    v40 = 0uLL;
    sub_52B230(v10, &v42);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p[0]);
    }

    v11 = v10 + 2608;
    a3[1] = v10 + 2608;
  }

  a3[1] = v11;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
    if (!sub_68D954(a2))
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_18:
    if (!sub_68D954(a2))
    {
      goto LABEL_28;
    }
  }

  if (*(a1 + 1545))
  {
    goto LABEL_28;
  }

  *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
  *&v39[24] = 0uLL;
  *&v39[40] = 0x7FFFFFFF;
  v41 = 0;
  v40 = 0uLL;
  *&v39[8] = 0x7FFFFFFF;
  *v39 = 7;
  v12 = a3[1];
  if (v12 >= a3[2])
  {
    v13 = sub_52B080(a3, v39);
  }

  else
  {
    v42 = *v39;
    v43[0] = *&v39[16];
    *(v43 + 12) = *&v39[28];
    __p[1] = 0;
    v45 = 0;
    __p[0] = 0;
    v41 = 0;
    v40 = 0uLL;
    sub_52B230(v12, &v42);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p[0]);
    }

    v13 = v12 + 2608;
    a3[1] = v12 + 2608;
  }

  a3[1] = v13;
  if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
LABEL_28:
    if (*(a1 + 2111) != 1)
    {
      goto LABEL_40;
    }

    goto LABEL_29;
  }

  operator delete(v40);
  if (*(a1 + 2111) != 1)
  {
    goto LABEL_40;
  }

LABEL_29:
  if (sub_E6F0DC(a1 + 1256) && sub_E6F36C(a1 + 1256))
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = 10;
    v14 = a3[1];
    if (v14 >= a3[2])
    {
      v15 = sub_52B080(a3, v39);
    }

    else
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      v41 = 0;
      v40 = 0uLL;
      sub_52B230(v14, &v42);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v15 = v14 + 2608;
      a3[1] = v14 + 2608;
    }

    a3[1] = v15;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }
  }

LABEL_40:
  if (*(a1 + 2112) == 1 && *(a1 + 1545) == 1 && sub_68D938(a2))
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = 11;
    v16 = a3[1];
    if (v16 >= a3[2])
    {
      v17 = sub_52B080(a3, v39);
    }

    else
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      v41 = 0;
      v40 = 0uLL;
      sub_52B230(v16, &v42);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v17 = v16 + 2608;
      a3[1] = v16 + 2608;
    }

    a3[1] = v17;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }
  }

  v18 = sub_453478(a2);
  if (!v18)
  {
    sub_6900C0(a2, &v37);
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *v39 = 0;
    *&v39[8] = v37;
    *&v39[24] = v38;
    v23 = a3[1];
    if (v23 < a3[2])
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      sub_52B230(v23, &v42);
LABEL_84:
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      a3[1] = v23 + 2608;
      return;
    }

    v24 = sub_52B080(a3, v39);
    goto LABEL_94;
  }

  v19 = v18;
  if (*(a1 + 1545))
  {
    goto LABEL_65;
  }

  v20 = sub_68C454(a2, 0);
  v21 = sub_69B1BC(v20);
  *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
  *&v39[40] = 0x7FFFFFFF;
  v41 = 0;
  v40 = 0uLL;
  *&v39[8] = 0x7FFFFFFF;
  *v39 = 1;
  *&v39[24] = 0;
  *&v39[32] = v19;
  if (&v40 != v21)
  {
    if (*(v21 + 23) < 0)
    {
      sub_13A68(&v40, *v21, *(v21 + 8));
    }

    else
    {
      v22 = *v21;
      v41 = *(v21 + 16);
      v40 = v22;
    }
  }

  v25 = a3[1];
  if (v25 >= a3[2])
  {
    v26 = sub_52B080(a3, v39);
  }

  else
  {
    v42 = *v39;
    v43[0] = *&v39[16];
    *(v43 + 12) = *&v39[28];
    *__p = v40;
    v45 = v41;
    v40 = 0uLL;
    v41 = 0;
    sub_52B230(v25, &v42);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p[0]);
    }

    v26 = v25 + 2608;
    a3[1] = v25 + 2608;
  }

  a3[1] = v26;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
    if (sub_68F53C(a2))
    {
      goto LABEL_79;
    }
  }

  else
  {
LABEL_65:
    if (sub_68F53C(a2))
    {
      goto LABEL_79;
    }
  }

  if (sub_68F5E4(a2))
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    if (v19 == 1)
    {
      v27 = 2;
    }

    else
    {
      v27 = 3;
    }

    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = v27;
    v28 = a3[1];
    if (v28 >= a3[2])
    {
      v29 = sub_52B080(a3, v39);
    }

    else
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      v41 = 0;
      v40 = 0uLL;
      sub_52B230(v28, &v42);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      v29 = v28 + 2608;
      a3[1] = v28 + 2608;
    }

    a3[1] = v29;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }
  }

LABEL_79:
  v30 = sub_4536C8(a2, 10);
  v31 = sub_E6F808(a1 + 1256, 10);
  if (!sub_4D1F6C(a2))
  {
    v32 = sub_68C454(a2, 0);
    v33 = sub_73F54(v32);
    v34 = *(v33 + 64);
    v35 = *(v33 + 72);
    while (v34 != v35)
    {
      if (*v34 != 10 && (sub_96E04(v34) & 1) != 0)
      {
        return;
      }

      v34 += 16;
    }
  }

  if (!v31 && (*(a1 + 2113) & 1) != 0 && v30)
  {
    *&v39[12] = 0x7FFFFFFF7FFFFFFFLL;
    *&v39[24] = 0uLL;
    *&v39[40] = 0x7FFFFFFF;
    v41 = 0;
    v40 = 0uLL;
    *&v39[8] = 0x7FFFFFFF;
    *v39 = 12;
    v23 = a3[1];
    if (v23 < a3[2])
    {
      v42 = *v39;
      v43[0] = *&v39[16];
      *(v43 + 12) = *&v39[28];
      __p[1] = 0;
      v45 = 0;
      __p[0] = 0;
      sub_52B230(v23, &v42);
      goto LABEL_84;
    }

    v24 = sub_52B080(a3, v39);
LABEL_94:
    v36 = SHIBYTE(v41);
    a3[1] = v24;
    if (v36 < 0)
    {
      operator delete(v40);
    }
  }
}

void sub_5247AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_524920(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  v6 = sub_68C850(a2);
  if (v6 < 0)
  {
    v7 = -5;
  }

  else
  {
    v7 = 5;
  }

  v8 = ceil((v6 / 10 + (((103 * (v7 + v6 % 10)) >> 15) & 1) + ((103 * (v7 + v6 % 10)) >> 10)) / 60.0) * 60.0 * 10.0;
  if (v8 >= 0.0)
  {
    if (v8 >= 4.50359963e15)
    {
      goto LABEL_10;
    }

    v9 = (v8 + v8) + 1;
  }

  else
  {
    if (v8 <= -4.50359963e15)
    {
      goto LABEL_10;
    }

    v9 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
  }

  v8 = (v9 >> 1);
LABEL_10:
  v10 = v8;
  if (*(a1 + 1237) != 1)
  {
    v12 = 0;
    v11 = 0;
    if (*(a1 + 1238) != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (!sub_68EFF0(a2) || sub_68F064(a2))
  {
    v11 = 0;
    if (sub_68EFF0(a2))
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

  v11 = *(a1 + 2152) < v10;
  if (!sub_68EFF0(a2))
  {
LABEL_24:
    v12 = 0;
    if (*(a1 + 1238) != 1)
    {
      goto LABEL_25;
    }

LABEL_17:
    if (sub_68EF88(a2))
    {
      v13 = 0;
      v14 = 1;
      if (*(a1 + 1236) == 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v14 = 0;
      v13 = *(a1 + 2156) < v10;
      if (*(a1 + 1236) == 1)
      {
        goto LABEL_26;
      }
    }

LABEL_21:
    v15 = 0;
    v16 = 0;
    if (*(a1 + 1474) != 1)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

LABEL_14:
  v12 = sub_68F064(a2);
  if (*(a1 + 1238) == 1)
  {
    goto LABEL_17;
  }

LABEL_25:
  v14 = 0;
  v13 = 0;
  if (*(a1 + 1236) != 1)
  {
    goto LABEL_21;
  }

LABEL_26:
  v17 = sub_68F104(a2);
  v18 = *(a1 + 2088);
  v19 = v18 * sub_68C7DC(a2);
  if (v19 >= 0.0)
  {
    if (v19 >= 4.50359963e15)
    {
      goto LABEL_32;
    }

    v20 = (v19 + v19) + 1;
  }

  else
  {
    if (v19 <= -4.50359963e15)
    {
      goto LABEL_32;
    }

    v20 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
  }

  v19 = (v20 >> 1);
LABEL_32:
  if (v17 >= v19)
  {
    v15 = 0;
    v16 = 1;
    if (*(a1 + 1474) != 1)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v16 = 0;
    v15 = *(a1 + 2160) < v10;
    if (*(a1 + 1474) != 1)
    {
      goto LABEL_43;
    }
  }

LABEL_36:
  if (*(a1 + 2110) == 1)
  {
    v32 = 47;
    v21 = *(a3 + 8);
    if (v21 >= *(a3 + 16))
    {
      v22 = sub_528BA0(a3, &v32);
    }

    else
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v21, 47, &__p);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v22 = v21 + 2608;
      *(a3 + 8) = v21 + 2608;
    }

    *(a3 + 8) = v22;
  }

LABEL_43:
  if (v11 && v13 && v15)
  {
    v32 = 11;
    v23 = *(a3 + 8);
    if (v23 < *(a3 + 16))
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v23, 11, &__p);
      goto LABEL_55;
    }

    goto LABEL_58;
  }

  if (v11 && v13)
  {
    v32 = 9;
    v23 = *(a3 + 8);
    if (v23 < *(a3 + 16))
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v23, 9, &__p);
      goto LABEL_55;
    }

LABEL_58:
    p_p = &v32;
LABEL_59:
    *(a3 + 8) = sub_528BA0(a3, p_p);
    goto LABEL_60;
  }

  if (v11 && v15)
  {
    v32 = 10;
    v23 = *(a3 + 8);
    if (v23 >= *(a3 + 16))
    {
      goto LABEL_58;
    }

    __p = 0;
    v34 = 0;
    v35 = 0;
    sub_528DAC(v23, 10, &__p);
LABEL_55:
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_57;
  }

  if (v13 && v15)
  {
    v32 = 12;
    v23 = *(a3 + 8);
    if (v23 >= *(a3 + 16))
    {
      goto LABEL_58;
    }

    __p = 0;
    v34 = 0;
    v35 = 0;
    sub_528DAC(v23, 12, &__p);
    goto LABEL_55;
  }

  if (v11)
  {
    LODWORD(__p) = 6;
    v23 = *(a3 + 8);
    if (v23 < *(a3 + 16))
    {
      sub_528D34(a3, *(a3 + 8), &__p);
LABEL_57:
      *(a3 + 8) = v23 + 2608;
      *(a3 + 8) = v23 + 2608;
      goto LABEL_60;
    }

    p_p = &__p;
    goto LABEL_59;
  }

  if (v13)
  {
    v31 = 7;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_60;
    }

    v31 = 8;
  }

  LODWORD(__p) = v31;
  sub_519290(a3, &__p);
LABEL_60:
  if (v12)
  {
    v32 = 14;
    v25 = *(a3 + 8);
    if (v25 >= *(a3 + 16))
    {
      v26 = sub_528BA0(a3, &v32);
    }

    else
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v25, 14, &__p);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v26 = v25 + 2608;
      *(a3 + 8) = v25 + 2608;
    }

    *(a3 + 8) = v26;
  }

  if (v16)
  {
    v32 = 15;
    v27 = *(a3 + 8);
    if (v27 >= *(a3 + 16))
    {
      v28 = sub_528BA0(a3, &v32);
    }

    else
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v27, 15, &__p);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v28 = v27 + 2608;
      *(a3 + 8) = v27 + 2608;
    }

    *(a3 + 8) = v28;
  }

  if (v14)
  {
    v32 = 16;
    v29 = *(a3 + 8);
    if (v29 >= *(a3 + 16))
    {
      v30 = sub_528BA0(a3, &v32);
    }

    else
    {
      __p = 0;
      v34 = 0;
      v35 = 0;
      sub_528DAC(v29, 16, &__p);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v30 = v29 + 2608;
      *(a3 + 8) = v29 + 2608;
    }

    *(a3 + 8) = v30;
  }
}

void sub_524EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

unint64_t sub_524F18(unint64_t result, uint64_t *a2, uint64_t a3)
{
  if (*(result + 2099) == 1)
  {
    v5 = result;
    result = sub_68EF20(a2);
    if (result)
    {
      v9 = 40;
      v6 = *(a3 + 8);
      if (v6 >= *(a3 + 16))
      {
        result = sub_528BA0(a3, &v9);
      }

      else
      {
        __p = 0;
        v11 = 0;
        v12 = 0;
        sub_528DAC(v6, 40, &__p);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p);
        }

        result = v6 + 2608;
        *(a3 + 8) = v6 + 2608;
      }

      *(a3 + 8) = result;
    }

    if (*(v5 + 1246) == 1)
    {
      result = sub_68F064(a2);
      if (result)
      {
        v9 = 43;
        v7 = *(a3 + 8);
        if (v7 >= *(a3 + 16))
        {
          result = sub_528BA0(a3, &v9);
        }

        else
        {
          __p = 0;
          v11 = 0;
          v12 = 0;
          sub_528DAC(v7, 43, &__p);
          if (SHIBYTE(v12) < 0)
          {
            operator delete(__p);
          }

          result = v7 + 2608;
          *(a3 + 8) = v7 + 2608;
        }

        *(a3 + 8) = result;
      }
    }

    if (*(v5 + 1247) == 1)
    {
      result = sub_68EF88(a2);
      if (result)
      {
        v9 = 44;
        v8 = *(a3 + 8);
        if (v8 >= *(a3 + 16))
        {
          result = sub_528BA0(a3, &v9);
        }

        else
        {
          __p = 0;
          v11 = 0;
          v12 = 0;
          sub_528DAC(v8, 44, &__p);
          if (SHIBYTE(v12) < 0)
          {
            operator delete(__p);
          }

          result = v8 + 2608;
          *(a3 + 8) = v8 + 2608;
        }

        *(a3 + 8) = result;
      }
    }
  }

  return result;
}

void sub_5250A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

void sub_5250C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

void sub_5250E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_692474(a2, &v20);
  sub_69263C(a2, &__p);
  sub_6925A4(a2, &v16);
  if (v20 != v21 || __p != v19 || (v5 = v16, v16 != v17))
  {
    v6 = a3[1];
    if (v6 >= a3[2])
    {
      v7 = sub_529D50(a3, &v20, &__p, &v16);
    }

    else
    {
      sub_529EBC(a3[1], &v20, &__p, &v16);
      v7 = v6 + 2608;
      a3[1] = v6 + 2608;
    }

    a3[1] = v7;
    v5 = v16;
  }

  if (v5)
  {
    v8 = v17;
    v9 = v5;
    if (v17 != v5)
    {
      do
      {
        v8 = sub_52A624(v8 - 168);
      }

      while (v8 != v5);
      v9 = v16;
    }

    v17 = v5;
    operator delete(v9);
  }

  v10 = __p;
  if (__p)
  {
    v11 = v19;
    v12 = __p;
    if (v19 != __p)
    {
      do
      {
        v11 = sub_52A624(v11 - 168);
      }

      while (v11 != v10);
      v12 = __p;
    }

    v19 = v10;
    operator delete(v12);
  }

  v13 = v20;
  if (v20)
  {
    v14 = v21;
    v15 = v20;
    if (v21 != v20)
    {
      do
      {
        v14 = sub_52A624(v14 - 168);
      }

      while (v14 != v13);
      v15 = v20;
    }

    v21 = v13;
    operator delete(v15);
  }
}

void sub_525244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_51B6E0(va);
  sub_51B6E0(va1);
  sub_51B6E0((v3 - 40));
  _Unwind_Resume(a1);
}

void sub_525294(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_68C454(a2, 0);
  v7 = sub_45AC50(v6);
  v8 = (a1 + 1512);
  if (*(a1 + 1535) < 0)
  {
    v9 = *(a1 + 1520);
    if (v9)
    {
      sub_325C(v23, *v8, v9);
      goto LABEL_7;
    }
  }

  else if (*(a1 + 1535))
  {
    *v23 = *v8;
    v24 = *(a1 + 1528);
    goto LABEL_7;
  }

  sub_51B7A8(*(a1 + 8), *(v7 + 32) | ((*(v7 + 36) & 0x1FFFFFFF) << 32), v23);
LABEL_7:
  v10 = sub_68F328(a2);
  v22 = 0;
  v11 = 0uLL;
  *__p = 0u;
  v12 = *v10;
  v13 = v10[1];
  if (*v10 != v13)
  {
    do
    {
      if (sub_658A08(v12 + 744, 0))
      {
        v15 = __p[1];
        if (__p[1] >= v22)
        {
          v14 = sub_52B440(__p, v12, v23);
        }

        else
        {
          sub_52B5A4(__p[1], v12, v23);
          v14 = v15 + 2608;
        }

        __p[1] = v14;
      }

      v12 += 1120;
    }

    while (v12 != v13);
    v11 = *__p;
  }

  v16 = 126 - 2 * __clz(0x1F693A1C451AB30BLL * ((*(&v11 + 1) - v11) >> 4));
  if (*(&v11 + 1) == v11)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  sub_531B08(v11, *(&v11 + 1), &v25, v17, 1);
  sub_51B90C(__p[0], __p[1], a3);
  v18 = __p[0];
  if (__p[0])
  {
    v19 = __p[1];
    v20 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v19 = sub_52E078(v19 - 2608);
      }

      while (v19 != v18);
      v20 = __p[0];
    }

    __p[1] = v18;
    operator delete(v20);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }
}

void sub_525458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_525494(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 2122) == 1)
  {
    v4 = sub_68F370(a2);
    v14 = 0;
    v5 = 0uLL;
    *__p = 0u;
    v6 = *v4;
    v7 = v4[1];
    if (*v4 != v7)
    {
      do
      {
        if (sub_658A08(v6 + 744, 1))
        {
          v9 = __p[1];
          if (__p[1] >= v14)
          {
            v8 = sub_52C6A4(__p, v6);
          }

          else
          {
            sub_52C7F8(__p[1], v6);
            v8 = v9 + 2608;
          }

          __p[1] = v8;
        }

        v6 += 1120;
      }

      while (v6 != v7);
      v5 = *__p;
    }

    sub_51B90C(v5, *(&v5 + 1), a3);
    v10 = __p[0];
    if (__p[0])
    {
      v11 = __p[1];
      v12 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v11 = sub_52E078(v11 - 2608);
        }

        while (v11 != v10);
        v12 = __p[0];
      }

      __p[1] = v10;
      operator delete(v12);
    }
  }
}

uint64_t sub_5255CC(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (*(result + 1479) != 1)
  {
    return result;
  }

  v5 = result;
  result = sub_3B6890(*result);
  v7 = *result;
  v6 = *(result + 4);
  if (*result == 0x7FFFFFFF || v7 <= v6)
  {
    return result;
  }

  v9 = *(result + 8);
  result = sub_6910B0();
  if (result)
  {
    return result;
  }

  if (v9 == 1)
  {
    v11 = sub_68C848(a2);
    v12 = *(v5 + 2100);
    *&v15 = __PAIR64__(v6, v7);
    DWORD2(v15) = 1;
    HIDWORD(v15) = v11;
    v16 = v12;
    v10 = a3[1];
    if (v10 < a3[2])
    {
LABEL_13:
      result = sub_52D71C(a3[1], &v15);
      a3[1] = v10 + 2608;
      a3[1] = v10 + 2608;
      return result;
    }

LABEL_14:
    result = sub_52D5C8(a3, &v15);
    a3[1] = result;
    return result;
  }

  if (!v9)
  {
    v16 = 0;
    *&v15 = __PAIR64__(v6, v7);
    *(&v15 + 1) = 0x7FFFFFFF00000000;
    v10 = a3[1];
    if (v10 < a3[2])
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v15);
    sub_4A5C(&v15, "Unknown timepoint type given.", 29);
    sub_1959680(&v15, __p);
    sub_7E854(__p, 1u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    return sub_1959728(&v15);
  }

  return result;
}

void sub_525738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

_BYTE *sub_525794(_BYTE *result, uint64_t a2, void **a3)
{
  if (result[2108] == 1)
  {
    v4 = result;
    result = sub_6910B0();
    if (!result && *(v4 + 1479) == 1)
    {
      v5 = *a3;
      v6 = a3[1];
      if (*a3 != v6)
      {
        do
        {
          v7 = v5[352];
          if (v7)
          {
            if (v7 == 1)
            {
              v8 = v5[350];
              v9 = v8 != 0x7FFFFFFF && v5[351] < v8;
              if (v9 && v5[353] != 0x7FFFFFFF)
              {
                return result;
              }
            }
          }

          else
          {
            v10 = v5[350];
            if (v10 != 0x7FFFFFFF && v5[351] < v10)
            {
              return result;
            }
          }

          v5 += 652;
        }

        while (v5 != v6);
      }

      v11 = 45;
      if (v6 >= a3[2])
      {
        result = sub_528BA0(a3, &v11);
        a3[1] = result;
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v13 = 0;
        sub_528DAC(v6, 45, __p);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p[0]);
        }

        result = (v6 + 2608);
        a3[1] = (v6 + 2608);
        a3[1] = (v6 + 2608);
      }
    }
  }

  return result;
}

void sub_5258DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v15 + 8) = v16;
  _Unwind_Resume(exception_object);
}

void sub_5258FC(unsigned __int8 *a1, void *a2, uint64_t *a3)
{
  *__p = 0u;
  v14 = 0u;
  v15 = 1065353216;
  sub_525A5C(a1, a2, __p);
  v6 = sub_4D1DC0(a2);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      sub_525D18(a1, a2, i, __p);
    }
  }

  sub_52609C(a1, a2, __p);
  sub_5261F0(a1, a2, __p);
  sub_5262A4(a1, a2, __p);
  if (v14)
  {
    v8 = 0;
    v9 = v14;
    do
    {
      ++v8;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    v8 = 0;
  }

  sub_52E208(a3, a3[1], v14, 0, v8);
  v10 = v14;
  if (v14)
  {
    do
    {
      v11 = *v10;
      sub_52E078((v10 + 2));
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = __p[0];
  __p[0] = 0;
  if (v12)
  {
    operator delete(v12);
  }
}

void sub_525A5C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 2101) == 1)
  {
    v4 = *(a2 + 1112) - *(a2 + 1104);
    if (v4)
    {
      v6 = 0;
      v7 = 0x3795876FF3795877 * (v4 >> 3);
      while (1)
      {
        v8 = sub_50EA30((a2 + 1104), v6);
        if (*(v8 + 2352) != 1)
        {
          goto LABEL_4;
        }

        v9 = v8;
        v10 = *(v8 + 2383);
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(v8 + 2368);
        }

        if (!v10)
        {
          goto LABEL_4;
        }

        v11 = *(v8 + 2384);
        if (v11 != 3)
        {
          break;
        }

        if (v6 + 1 < 0x3795876FF3795877 * ((*(a2 + 1112) - *(a2 + 1104)) >> 3))
        {
          v12 = sub_50EA30((a2 + 1104), v6 + 1);
          v11 = *(v9 + 2384);
          if (v11 != 3 || *(v12 + 2384) != 2)
          {
            break;
          }

          v13 = *(v9 + 2351);
          if (v13 >= 0)
          {
            v14 = *(v9 + 2351);
          }

          else
          {
            v14 = *(v9 + 2336);
          }

          v15 = *(v12 + 2415);
          v16 = v15;
          if ((v15 & 0x80u) != 0)
          {
            v15 = *(v12 + 2400);
          }

          if (v14 == v15)
          {
            v17 = v13 >= 0 ? (v9 + 2328) : *(v9 + 2328);
            v18 = v16 >= 0 ? (v12 + 2392) : *(v12 + 2392);
            v19 = v12;
            if (!memcmp(v17, v18, v14))
            {
              v20 = *(v9 + 2415);
              if (v20 >= 0)
              {
                v21 = *(v9 + 2415);
              }

              else
              {
                v21 = *(v9 + 2400);
              }

              v22 = *(v19 + 2351);
              v23 = v22;
              if ((v22 & 0x80u) != 0)
              {
                v22 = *(v19 + 2336);
              }

              if (v21 == v22)
              {
                v24 = v20 >= 0 ? (v9 + 2392) : *(v9 + 2392);
                v25 = v23 >= 0 ? (v19 + 2328) : *(v19 + 2328);
                if (!memcmp(v24, v25, v21))
                {
                  __p[0] = 0;
                  __p[1] = 0;
                  v27 = 0;
                  if (__p != (v9 + 2360))
                  {
                    if (*(v9 + 2383) < 0)
                    {
                      sub_13A68(__p, *(v9 + 2360), *(v9 + 2368));
                    }

                    else
                    {
                      *__p = *(v9 + 2360);
                      v27 = *(v9 + 2376);
                    }
                  }

                  sub_51D17C(a3);
                }
              }
            }
          }
        }

LABEL_4:
        if (v7 == ++v6)
        {
          return;
        }
      }

      if (v11 == 1)
      {
        __p[0] = 0;
        __p[1] = 0;
        v27 = 0;
        if (__p != (v9 + 2360))
        {
          if (*(v9 + 2383) < 0)
          {
            sub_13A68(__p, *(v9 + 2360), *(v9 + 2368));
          }

          else
          {
            *__p = *(v9 + 2360);
            v27 = *(v9 + 2376);
          }
        }

        sub_51D17C(a3);
      }

      goto LABEL_4;
    }
  }
}

void sub_525CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_525D18(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_4D1F50(a2, a3);
  v9 = v8;
  v10 = (*v8 - **v8);
  if (*v10 >= 0x9Bu)
  {
    v11 = v10[77];
    if (v11)
    {
      if ((*(*v8 + v11) & 0x80000208) == 8)
      {
        if (*(a1 + 2099) == 1)
        {
          v12 = 41;
        }

        else
        {
          v12 = 33;
        }

        LODWORD(__p[0]) = v12;
        sub_51CB00(a4);
      }
    }
  }

  v13 = (*v8 - **v8);
  if (*v13 >= 0x9Bu)
  {
    v14 = v13[77];
    if (v14)
    {
      if ((*(*v8 + v14 + 1) & 2) != 0)
      {
        if (*(a1 + 2099) == 1)
        {
          v15 = 41;
        }

        else
        {
          v15 = 33;
        }

        if (*(a1 + 2114))
        {
          ++v15;
        }

        LODWORD(__p[0]) = v15;
        sub_51CB00(a4);
      }
    }
  }

  v16 = ((*(v8 + 9) >> 29) & 1) == 0;
  v17 = sub_2B51D8(*(a1 + 8), *(v8 + 8) | (*(v8 + 9) << 32));
  v18 = (v17 - *v17);
  if (*v18 >= 0x41u && (v19 = v18[32]) != 0)
  {
    v20 = (v17 + v19 + *(v17 + v19));
  }

  else
  {
    v20 = 0;
  }

  sub_40C268(v20, v16, 1, &v29);
  v21 = v29;
  if (v29 != v30)
  {
    sub_51B7A8(*(a1 + 8), *(v9 + 8) | ((*(v9 + 9) & 0x1FFFFFFF) << 32), __p);
    v22 = v27;
    if ((v27 & 0x80u) != 0)
    {
      v22 = __p[1];
    }

    if (v22)
    {
      sub_25BE0(v28, __p);
    }

    else
    {
      sub_25AE0(v28);
    }

    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    sub_386C(__p, *(a2[150] + 4 * a3), v28);
  }

  if (v29)
  {
    v23 = v30;
    v24 = v29;
    if (v30 != v29)
    {
      do
      {
        v25 = *(v23 - 1);
        v23 -= 3;
        if (v25 < 0)
        {
          operator delete(*v23);
        }
      }

      while (v23 != v21);
      v24 = v29;
    }

    v30 = v21;
    operator delete(v24);
  }
}

void sub_526020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25)
{
  sub_3874(&__p);
  sub_25F00(&a25);
  sub_1A104((v25 - 88));
  _Unwind_Resume(a1);
}

void sub_52609C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_52F220(*(a2 + 7488), *(a2 + 7496), &__p);
  sub_51D02C(&__p);
  v14 = 0;
  v13[0] = &v14;
  v13[1] = a1;
  v5 = __p;
  v6 = v16;
  if (__p != v16 && __p + 24 != v16)
  {
    do
    {
      sub_534F20(v13, v5, (v5 + 24));
      v8 = (v5 + 48);
      v5 += 24;
    }

    while (v8 != v6);
    if (v14)
    {
      LODWORD(v13[0]) = 22;
      sub_51CB00(a3);
    }
  }

  v9 = __p;
  if (__p)
  {
    v10 = v16;
    v11 = __p;
    if (v16 != __p)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p;
    }

    v16 = v9;
    operator delete(v11);
  }
}

void sub_5261A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_5261B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_5261C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_5261DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void *sub_5261F0(uint64_t a1, void *a2, uint64_t *a3)
{
  result = sub_4D1DC0(a2);
  if (result >= 3)
  {
    v7 = sub_3B2A90(*a1);
    v8 = sub_4B8018(v7, a2, *(a1 + 1448));
    v9 = sub_45AC50(a2);
    v11 = *(v9 + 32) | ((*(v9 + 36) & 0x1FFFFFFF) << 32);
    result = sub_4B79AC(v7, &v11, *(a1 + 1448));
    if (result == 2 && v8 != 2)
    {
      sub_51CB00(a3);
    }
  }

  return result;
}

void *sub_5262A4(unsigned __int8 *a1, void *a2, uint64_t *a3)
{
  if (sub_4D20B0(a2, 3) && a1[2120] == 1)
  {
    sub_51CB00(a3);
  }

  if ((sub_4D20B0(a2, 14) & 1) == 0 && !sub_4D20B0(a2, 16))
  {
    if (!sub_4D20B0(a2, 15) || (a1[2118] & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v6 = a1[2118];
  if (sub_4D20B0(a2, 15))
  {
    if (v6 && a1[2118])
    {
      sub_51CB00(a3);
    }

    if (v6)
    {
LABEL_16:
      sub_51CB00(a3);
    }

    if (!a1[2118])
    {
LABEL_21:
      if (*(sub_3AF234(a2) + 21) != 1)
      {
        goto LABEL_22;
      }

LABEL_18:
      v7 = a1[2117] ^ 1;
      if (*(sub_73F1C(a2) + 21))
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_14:
    sub_51CB00(a3);
  }

  if (v6)
  {
    goto LABEL_16;
  }

  if (*(sub_3AF234(a2) + 21) == 1)
  {
    goto LABEL_18;
  }

LABEL_22:
  v7 = 1;
  if (*(sub_73F1C(a2) + 21))
  {
    goto LABEL_25;
  }

LABEL_23:
  v8 = *(a2[139] - 2456);
  if (v8 != 39 && v8 != 16)
  {
    LOBYTE(v9) = 1;
    goto LABEL_28;
  }

LABEL_25:
  v9 = a1[2117] ^ 1;
  if (((v7 | v9) & 1) == 0)
  {
    sub_51CC78(a3);
  }

LABEL_28:
  if ((v7 & 1) == 0 || (v9 & 1) == 0)
  {
    sub_51CB00(a3);
  }

  result = sub_526524(a1, a2);
  if (result)
  {
    sub_51CB00(a3);
  }

  return result;
}

unint64_t sub_526524(uint64_t a1, void *a2)
{
  if (*(a1 + 2098) != 1)
  {
    return 0;
  }

  result = sub_4D1DC0(a2);
  if (result)
  {
    v5 = *(a1 + 8);
    v6 = sub_45AC50(a2);
    sub_51B7A8(v5, *(v6 + 32) | ((*(v6 + 36) & 0x1FFFFFFF) << 32), &__p);
    v7 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v7 = v19;
    }

    if (v7)
    {
      sub_25BE0(v17, &__p);
    }

    else
    {
      sub_25AE0(v17);
    }

    if (v20 < 0)
    {
      operator delete(__p);
    }

    v8 = *(a1 + 8);
    v9 = sub_4D1F60(a2);
    sub_51B7A8(v8, *(v9 + 32) | ((*(v9 + 36) & 0x1FFFFFFF) << 32), &__p);
    v10 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v10 = v19;
    }

    if (v10)
    {
      sub_25BE0(v16, &__p);
    }

    else
    {
      sub_25AE0(v16);
    }

    if (v20 < 0)
    {
      operator delete(__p);
    }

    LODWORD(__p) = sub_4D26AC(a2);
    v11 = *(a2[151] - 4);
    v15 = v11;
    if (__p == 0x7FFFFFFF)
    {
      v12 = 0;
      if (v11 == 0x7FFFFFFF)
      {
LABEL_21:
        v13 = 0;
LABEL_24:
        v14 = sub_29CB0(v17, v16) & (v12 | v13);
        sub_25F00(v16);
        sub_25F00(v17);
        return v14;
      }
    }

    else
    {
      v12 = !sub_259D8(v17, &__p, v16, &__p);
      if (v11 == 0x7FFFFFFF)
      {
        goto LABEL_21;
      }
    }

    v13 = !sub_259D8(v17, &v15, v16, &v15);
    goto LABEL_24;
  }

  return result;
}

void sub_5266E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, const void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_25F00(&a10);
  sub_25F00(&a12);
  _Unwind_Resume(a1);
}

void sub_52748C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1AA90((v21 + 16));
  _Unwind_Resume(a1);
}

void sub_5275CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x5275BCLL);
}

uint64_t *sub_5275EC(uint64_t *a1, __int128 *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_527704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_746A0(va);
  *(v10 + 8) = v11;
  sub_99B5C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_527724(uint64_t a1, uint64_t a2)
{
  v4 = sub_4F107C(a1, a2);
  sub_527CE4(v4 + 688, a2 + 688);
  sub_528460(a1 + 968, (a2 + 968));
  *(a1 + 1064) = *(a2 + 1064);
  *(a1 + 1072) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1080) = 0;
  v5 = *(a2 + 1072);
  v6 = *(a2 + 1080);
  if (v6 != v5)
  {
    if (((v6 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1096) = *(a2 + 1096);
  *(a1 + 1104) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1112) = 0;
  v7 = *(a2 + 1104);
  v8 = *(a2 + 1112);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_81988((a1 + 1128), a2 + 1128);
  sub_81988((a1 + 1152), a2 + 1152);
  v9 = *(a2 + 1176);
  *(a1 + 1180) = *(a2 + 1180);
  *(a1 + 1176) = v9;
  LOWORD(v9) = *(a2 + 1184);
  *(a1 + 1186) = *(a2 + 1186);
  *(a1 + 1184) = v9;
  if (*(a2 + 1215) < 0)
  {
    sub_325C((a1 + 1192), *(a2 + 1192), *(a2 + 1200));
  }

  else
  {
    v10 = *(a2 + 1192);
    *(a1 + 1208) = *(a2 + 1208);
    *(a1 + 1192) = v10;
  }

  v11 = *(a2 + 1216);
  *(a1 + 1232) = *(a2 + 1232);
  *(a1 + 1216) = v11;
  sub_44FC88(a1 + 1240, (a2 + 1240));
  v12 = *(a2 + 1400);
  v13 = *(a2 + 1416);
  v14 = *(a2 + 1448);
  *(a1 + 1432) = *(a2 + 1432);
  *(a1 + 1448) = v14;
  *(a1 + 1400) = v12;
  *(a1 + 1416) = v13;
  *(a1 + 1464) = 0;
  *(a1 + 1480) = 0;
  *(a1 + 1472) = 0;
  v15 = *(a2 + 1464);
  v16 = *(a2 + 1472);
  if (v16 != v15)
  {
    if (((v16 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v17 = *(a2 + 1488);
  *(a1 + 1490) = *(a2 + 1490);
  *(a1 + 1488) = v17;
  if (*(a2 + 1519) < 0)
  {
    sub_325C((a1 + 1496), *(a2 + 1496), *(a2 + 1504));
  }

  else
  {
    v18 = *(a2 + 1496);
    *(a1 + 1512) = *(a2 + 1512);
    *(a1 + 1496) = v18;
  }

  v19 = *(a2 + 1520);
  *(a1 + 1527) = *(a2 + 1527);
  *(a1 + 1520) = v19;
  *(a1 + 1536) = 0;
  *(a1 + 1552) = 0;
  *(a1 + 1544) = 0;
  v20 = *(a2 + 1536);
  v21 = *(a2 + 1544);
  if (v21 != v20)
  {
    if (((v21 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1560) = *(a2 + 1560);
  return a1;
}

void sub_527A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  v22 = *v15;
  if (*v15)
  {
    *(v11 + 1472) = v22;
    operator delete(v22);
  }

  sub_44FA80((v11 + 1240));
  if (*(v11 + 1215) < 0)
  {
    operator delete(*v14);
    v17 = *v13;
    if (!*v13)
    {
LABEL_5:
      v18 = *v12;
      if (!*v12)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v17 = *v13;
    if (!*v13)
    {
      goto LABEL_5;
    }
  }

  operator delete(v17);
  v18 = *v12;
  if (!*v12)
  {
LABEL_6:
    v19 = *a11;
    if (!*a11)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  operator delete(v18);
  v19 = *a11;
  if (!*a11)
  {
LABEL_8:
    v20 = *v16;
    if (*v16)
    {
      *(v11 + 1080) = v20;
      operator delete(v20);
    }

    sub_5285C8(v11 + 968);
    sub_52861C(v11 + 688);
    sub_5287C0(v11);
    _Unwind_Resume(a1);
  }

LABEL_7:
  *(v11 + 1112) = v19;
  operator delete(v19);
  goto LABEL_8;
}

void sub_527BC8()
{
  if (!*v0)
  {
    JUMPOUT(0x527B2CLL);
  }

  JUMPOUT(0x527B24);
}

void sub_527BDC()
{
  if (!*v0)
  {
    JUMPOUT(0x527B40);
  }

  JUMPOUT(0x527B38);
}

uint64_t *sub_527BEC(uint64_t *a1)
{
  if ((a1[3] & 1) == 0)
  {
    v3 = a1[1];
    v2 = a1[2];
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 16;
        sub_527C54(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_527C54(uint64_t a1, void *a2)
{
  v3 = a2[13];
  if (v3)
  {
    a2[14] = v3;
    operator delete(v3);
  }

  v4 = a2[9];
  if (v4)
  {
    v5 = a2[10];
    v6 = a2[9];
    if (v5 != v4)
    {
      do
      {
        v5 = sub_4F0FB4(v5 - 144);
      }

      while (v5 != v4);
      v6 = a2[9];
    }

    a2[10] = v4;
    operator delete(v6);
  }

  v7 = a2[3];
  if (v7)
  {
    a2[4] = v7;

    operator delete(v7);
  }
}

uint64_t sub_527CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_527F68(a1, a2);
  sub_527F68(v4 + 40, a2 + 40);
  sub_527F68(a1 + 80, a2 + 80);
  sub_527F68(a1 + 120, a2 + 120);
  sub_527F68(a1 + 160, a2 + 160);
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = *(a2 + 232);
  prime = *(a2 + 208);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(a1 + 200, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 208));
    v6 = *(a1 + 208);
    v7 = prime >= *&v6;
    if (prime > *&v6)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 0;
    v7 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v7)
  {
    v8 = vcvtps_u32_f32(*(a1 + 224) / *(a1 + 232));
    if (*&v6 < 3uLL || (v9 = vcnt_s8(v6), v9.i16[0] = vaddlv_u8(v9), v9.u32[0] > 1uLL))
    {
      v8 = std::__next_prime(v8);
    }

    else
    {
      v10 = 1 << -__clz(v8 - 1);
      if (v8 >= 2)
      {
        v8 = v10;
      }
    }

    if (prime <= v8)
    {
      prime = v8;
    }

    if (prime < *&v6)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 216); i; i = *i)
  {
    sub_5280AC((a1 + 200), i + 4, (i + 4));
  }

  v12 = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 240) = v12;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  v14 = *(a2 + 256);
  v13 = *(a2 + 264);
  if (v13 != v14)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_527EC8(_Unwind_Exception *a1)
{
  sub_23D9C(v1 + 120);
  sub_23D9C(v1 + 80);
  sub_23D9C(v1 + 40);
  sub_23D9C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_527F68(uint64_t a1, uint64_t a2)
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
    sub_23914(a1, i + 2, (i + 2));
  }

  return a1;
}

uint64_t *sub_5280AC(void *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = (v4 + (((v3 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v3 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v3 + 0x388152A534) ^ 0xDEADBEEFLL;
  v6 = a2[2];
  v7 = (v6 + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_25;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = (v6 + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_25:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        if (*(v12 + 4) == v3 && *(v12 + 20) == __PAIR64__(v6, v4))
        {
          return v12;
        }
      }

      else if ((v13 & (*&v8 - 1)) != v10)
      {
        goto LABEL_25;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_25;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  if (*(v12 + 4) != v3 || *(v12 + 20) != __PAIR64__(v6, v4))
  {
    goto LABEL_18;
  }

  return v12;
}

uint64_t sub_528460(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 8) = 0;
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = a2[8];
  *(a1 + 40) = 0;
  *(a1 + 32) = v7;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v9 = *(a2 + 5);
  v8 = *(a2 + 6);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a2 + 87) < 0)
  {
    sub_325C((a1 + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v10 = *(a2 + 4);
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v10;
  }

  *(a1 + 88) = *(a2 + 88);
  return a1;
}

void sub_528590(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5285C8(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_52861C(uint64_t a1)
{
  v2 = *(a1 + 256);
  if (v2)
  {
    *(a1 + 264) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 216);
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

  v5 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 176);
  if (v6)
  {
    do
    {
      v17 = *v6;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v17;
    }

    while (v17);
  }

  v7 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 136);
  if (v8)
  {
    do
    {
      v18 = *v8;
      if (*(v8 + 39) < 0)
      {
        operator delete(v8[2]);
      }

      operator delete(v8);
      v8 = v18;
    }

    while (v18);
  }

  v9 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(a1 + 96);
  if (v10)
  {
    do
    {
      v19 = *v10;
      if (*(v10 + 39) < 0)
      {
        operator delete(v10[2]);
      }

      operator delete(v10);
      v10 = v19;
    }

    while (v19);
  }

  v11 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    do
    {
      v20 = *v12;
      if (*(v12 + 39) < 0)
      {
        operator delete(v12[2]);
      }

      operator delete(v12);
      v12 = v20;
    }

    while (v20);
  }

  v13 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    do
    {
      v21 = *v14;
      if (*(v14 + 39) < 0)
      {
        operator delete(v14[2]);
      }

      operator delete(v14);
      v14 = v21;
    }

    while (v21);
  }

  v15 = *a1;
  *a1 = 0;
  if (v15)
  {
    operator delete(v15);
  }

  return a1;
}

uint64_t sub_5287C0(uint64_t a1)
{
  if (*(a1 + 615) < 0)
  {
    operator delete(*(a1 + 592));
    if ((*(a1 + 591) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 544);
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 591) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 568));
  v2 = *(a1 + 544);
  if (v2)
  {
LABEL_4:
    *(a1 + 552) = v2;
    operator delete(v2);
  }

LABEL_5:
  sub_4F0D1C(a1 + 488);
  v3 = *(a1 + 456);
  if (v3)
  {
    v4 = *(a1 + 464);
    v5 = *(a1 + 456);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 6);
        if (v6)
        {
          *(v4 - 5) = v6;
          operator delete(v6);
        }

        v7 = v4 - 10;
        if (*(v4 - 57) < 0)
        {
          operator delete(*v7);
        }

        v4 -= 10;
      }

      while (v7 != v3);
      v5 = *(a1 + 456);
    }

    *(a1 + 464) = v3;
    operator delete(v5);
  }

  sub_4F0E40(a1 + 400);
  v8 = *(a1 + 352);
  if (v8)
  {
    v9 = *(a1 + 360);
    v10 = *(a1 + 352);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = *(a1 + 352);
    }

    *(a1 + 360) = v8;
    operator delete(v10);
  }

  v12 = *(a1 + 328);
  if (v12)
  {
    *(a1 + 336) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 304);
  if (v13)
  {
    v14 = *(a1 + 312);
    v15 = *(a1 + 304);
    if (v14 != v13)
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
      v15 = *(a1 + 304);
    }

    *(a1 + 312) = v13;
    operator delete(v15);
  }

  if (*(a1 + 272))
  {
    sub_4ECA7C((a1 + 272));
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 264) == 1)
  {
    v17 = *(a1 + 240);
    if (v17)
    {
      *(a1 + 248) = v17;
      operator delete(v17);
    }

    v18 = *(a1 + 208);
    if (v18)
    {
      v19 = *(a1 + 216);
      v20 = *(a1 + 208);
      if (v19 != v18)
      {
        do
        {
          v19 = sub_4F0FB4(v19 - 144);
        }

        while (v19 != v18);
        v20 = *(a1 + 208);
      }

      *(a1 + 216) = v18;
      operator delete(v20);
    }

    v21 = *(a1 + 160);
    if (v21)
    {
      *(a1 + 168) = v21;
      operator delete(v21);
    }
  }

  if (*(a1 + 128) == 1)
  {
    v22 = *(a1 + 104);
    if (v22)
    {
      *(a1 + 112) = v22;
      operator delete(v22);
    }

    v23 = *(a1 + 72);
    if (v23)
    {
      v24 = *(a1 + 80);
      v25 = *(a1 + 72);
      if (v24 != v23)
      {
        do
        {
          v24 = sub_4F0FB4(v24 - 144);
        }

        while (v24 != v23);
        v25 = *(a1 + 72);
      }

      *(a1 + 80) = v23;
      operator delete(v25);
    }

    v26 = *(a1 + 24);
    if (v26)
    {
      *(a1 + 32) = v26;
      operator delete(v26);
    }
  }

  return a1;
}

uint64_t sub_528A1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 24) = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *(a1 + 16);
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t sub_528AB4(uint64_t a1)
{
  v2 = *(a1 + 1536);
  if (v2)
  {
    *(a1 + 1544) = v2;
    operator delete(v2);
  }

  if (*(a1 + 1519) < 0)
  {
    operator delete(*(a1 + 1496));
  }

  v3 = *(a1 + 1464);
  if (v3)
  {
    *(a1 + 1472) = v3;
    operator delete(v3);
  }

  sub_44FA80((a1 + 1240));
  if (*(a1 + 1215) < 0)
  {
    operator delete(*(a1 + 1192));
  }

  v4 = *(a1 + 1152);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 1128);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 1104);
  if (v6)
  {
    *(a1 + 1112) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 1072);
  if (v7)
  {
    *(a1 + 1080) = v7;
    operator delete(v7);
  }

  if (*(a1 + 1055) < 0)
  {
    operator delete(*(a1 + 1032));
  }

  v8 = *(a1 + 1008);
  if (v8)
  {
    *(a1 + 1016) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 976);
  if (v9)
  {
    *(a1 + 984) = v9;
    operator delete(v9);
  }

  sub_52861C(a1 + 688);

  return sub_5287C0(a1);
}

uint64_t sub_528BA0(void **a1, unsigned int *a2)
{
  v2 = 0x1F693A1C451AB30BLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1920FB49D0E228)
  {
    sub_1794();
  }

  if (0x3ED274388A356616 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x3ED274388A356616 * ((a1[2] - *a1) >> 4);
  }

  if ((0x1F693A1C451AB30BLL * ((a1[2] - *a1) >> 4)) >= 0xC907DA4E87114)
  {
    v5 = 0x1920FB49D0E228;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1920FB49D0E228)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 16 * ((a1[1] - *a1) >> 4);
  v6 = *a2;
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  sub_528DAC(2608 * v2, v6, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = a1[1];
  v8 = (v11 + *a1 - v7);
  sub_5295F8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = (v11 + 2608);
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v11 + 2608;
}

void sub_528D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_5295A4(&a9);
  _Unwind_Resume(a1);
}

void sub_528D34(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = *a3;
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  sub_528DAC(a2, v4, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_528D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_528DAC(uint64_t a1, int a2, const void **a3)
{
  *a1 = 52;
  *(a1 + 8) = 0;
  v6 = a1 + 8;
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
  *a1 = a2;
  if (v6 != a3)
  {
    v7 = *(a3 + 23);
    if (*(a1 + 31) < 0)
    {
      if (v7 >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      if (v7 >= 0)
      {
        v11 = *(a3 + 23);
      }

      else
      {
        v11 = a3[1];
      }

      sub_13B38(v6, v10, v11);
    }

    else
    {
      if ((*(a3 + 23) & 0x80) == 0)
      {
        v8 = *a3;
        *(v6 + 16) = a3[2];
        *v6 = v8;
        return a1;
      }

      sub_13A68(v6, *a3, a3[1]);
    }
  }

  return a1;
}

void sub_528F08(_Unwind_Exception *a1)
{
  sub_3A9518(v1 + 1488);
  if (*(v1 + 1487) < 0)
  {
    operator delete(*v4);
    if ((*(v1 + 1447) & 0x80000000) == 0)
    {
LABEL_3:
      sub_528FAC((v1 + 1376));
      if ((*(v1 + 1375) & 0x80000000) == 0)
      {
LABEL_5:
        sub_51B73C(v1 + 1248);
        sub_5294D8((v1 + 1176));
        sub_529020(v1 + 32);
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

  operator delete(*(v1 + 1424));
  sub_528FAC((v1 + 1376));
  if ((*(v1 + 1375) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

void ***sub_528FAC(void ***a1)
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
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 3));
        }

        v3 -= 5;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_529020(uint64_t a1)
{
  if (*(a1 + 1143) < 0)
  {
    v3 = a1;
    operator delete(*(a1 + 1120));
    a1 = v3;
  }

  return sub_3A9518(a1);
}

uint64_t sub_529078(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0x7FFFFFFF;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 3;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0x7FFFFFFFLL;
  *(a1 + 164) = 7;
  *(a1 + 228) = 0;
  *(a1 + 232) = 0;
  *(a1 + 168) = 0;
  *(a1 + 236) = 0u;
  v2 = a1 + 236;
  *(a1 + 165) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 252) = 0u;
  *(a1 + 268) = 0u;
  *(a1 + 284) = 0u;
  *(a1 + 297) = 0u;
  *(a1 + 320) = 0x7FFFFFFF;
  *(a1 + 328) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 336) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 356) = 0x7FFFFFFF;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  memset_pattern16((a1 + 392), &unk_22910C0, 0x30uLL);
  *(v2 + 204) = -1;
  *(v2 + 212) = 0;
  *(v2 + 220) = 0;
  *(v2 + 228) = 0;
  *(v2 + 236) = 0;
  *(v2 + 267) = 0;
  *(v2 + 244) = 0;
  sub_734CE0(v2 + 268);
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

void sub_5291D0(_Unwind_Exception *a1)
{
  if (*(v1 + 503) < 0)
  {
    operator delete(*(v1 + 480));
  }

  sub_2C0F28(v1);
  _Unwind_Resume(a1);
}

void sub_5292FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_529324(uint64_t a1)
{
  if (*(a1 + 360) == 1)
  {
    v3 = (a1 + 336);
    sub_5293E8(&v3);
    if (*(a1 + 327) < 0)
    {
      operator delete(*(a1 + 304));
      if ((*(a1 + 295) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(a1 + 263) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a1 + 295) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a1 + 272));
    if ((*(a1 + 263) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 239) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_11:
    operator delete(*(a1 + 240));
    if ((*(a1 + 239) & 0x80000000) == 0)
    {
LABEL_6:
      if ((*(a1 + 215) & 0x80000000) == 0)
      {
LABEL_7:
        sub_33D080(a1);
        return a1;
      }

LABEL_13:
      operator delete(*(a1 + 192));
      goto LABEL_7;
    }

LABEL_12:
    operator delete(*(a1 + 216));
    if ((*(a1 + 215) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  return a1;
}

void sub_5293E8(void *****a1)
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
    v1[1] = v2;

    goto LABEL_5;
  }

  do
  {
    if (*(v4 - 1) < 0)
    {
      operator delete(*(v4 - 3));
      if (*(v4 - 25) < 0)
      {
LABEL_12:
        operator delete(*(v4 - 6));
        if ((*(v4 - 49) & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }
    }

    else if (*(v4 - 25) < 0)
    {
      goto LABEL_12;
    }

    if ((*(v4 - 49) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    operator delete(*(v4 - 9));
LABEL_6:
    v4 -= 31;
    sub_33D5A0(v4);
  }

  while (v4 != v2);
  v5 = **a1;
  v1[1] = v2;

LABEL_5:
  operator delete(v5);
}

void **sub_5294D8(void **a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[7];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_52A624(v3 - 168);
      }

      while (v3 != v2);
      v4 = a1[6];
    }

    a1[7] = v2;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    v6 = a1[4];
    v7 = a1[3];
    if (v6 != v5)
    {
      do
      {
        v6 = sub_52A624(v6 - 168);
      }

      while (v6 != v5);
      v7 = a1[3];
    }

    a1[4] = v5;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    v9 = a1[1];
    v10 = *a1;
    if (v9 != v8)
    {
      do
      {
        v9 = sub_52A624(v9 - 168);
      }

      while (v9 != v8);
      v10 = *a1;
    }

    a1[1] = v8;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_5295A4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 2608;
    sub_52E078(i - 2608);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_5295F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      _X24 = v6 + v7;
      __asm { PRFM            #0, [X24,#0x1E90] }

      *v8 = *(v6 + v7);
      v15 = *(v6 + v7 + 8);
      *(v8 + 24) = *(v6 + v7 + 24);
      *(v8 + 8) = v15;
      *(_X24 + 16) = 0u;
      *(_X24 + 8) = 0;
      sub_529850(a4 + v7 + 32, v6 + v7 + 32);
      v16 = *(v6 + v7 + 1152);
      *(v8 + 1168) = *(v6 + v7 + 1168);
      *(v8 + 1152) = v16;
      *(_X24 + 1152) = 0u;
      *(_X24 + 1168) = 0;
      *(v8 + 1192) = 0;
      *(v8 + 1176) = 0u;
      __asm { PRFM            #0, [X24,#0x2328] }

      *(v8 + 1176) = *(v6 + v7 + 1176);
      *(v8 + 1184) = *(v6 + v7 + 1184);
      *(_X24 + 1192) = 0;
      *(_X24 + 1176) = 0u;
      *(v8 + 1216) = 0;
      *(v8 + 1200) = 0u;
      *(v8 + 1200) = *(v6 + v7 + 1200);
      *(v8 + 1216) = *(v6 + v7 + 1216);
      *(_X24 + 1216) = 0;
      *(_X24 + 1200) = 0u;
      *(v8 + 1240) = 0;
      *(v8 + 1224) = 0u;
      *(v8 + 1224) = *(v6 + v7 + 1224);
      *(v8 + 1232) = *(v6 + v7 + 1232);
      *(_X24 + 1240) = 0;
      *(_X24 + 1224) = 0u;
      __asm { PRFM            #0, [X24,#0x2370] }

      *(v8 + 1248) = *(v6 + v7 + 1248);
      *(v8 + 1256) = 0;
      *(v8 + 1264) = 0u;
      *(v8 + 1256) = *(v6 + v7 + 1256);
      *(v8 + 1264) = *(v6 + v7 + 1264);
      *(_X24 + 1272) = 0;
      *(_X24 + 1256) = 0u;
      v19 = *(v6 + v7 + 1280);
      *(v8 + 1296) = *(v6 + v7 + 1296);
      *(v8 + 1280) = v19;
      *(_X24 + 1280) = 0;
      *(_X24 + 1288) = 0u;
      v20 = *(v6 + v7 + 1304);
      v21 = *(v6 + v7 + 1320);
      *(v8 + 1332) = *(v6 + v7 + 1332);
      *(v8 + 1304) = v20;
      *(v8 + 1320) = v21;
      v22 = *(v6 + v7 + 1352);
      *(v8 + 1368) = *(v6 + v7 + 1368);
      *(v8 + 1352) = v22;
      *(_X24 + 1360) = 0u;
      *(_X24 + 1352) = 0;
      *(v8 + 1392) = 0;
      *(v8 + 1376) = 0u;
      __asm { PRFM            #0, [X24,#0x23F0] }

      *(v8 + 1376) = *(v6 + v7 + 1376);
      *(v8 + 1392) = *(v6 + v7 + 1392);
      *(_X24 + 1392) = 0;
      *(_X24 + 1376) = 0u;
      v24 = *(v6 + v7 + 1400);
      *(v8 + 1416) = *(v6 + v7 + 1416);
      *(v8 + 1400) = v24;
      v25 = *(v6 + v7 + 1424);
      *(v8 + 1440) = *(v6 + v7 + 1440);
      *(v8 + 1424) = v25;
      *(_X24 + 1432) = 0u;
      *(_X24 + 1424) = 0;
      v26 = *(v6 + v7 + 1448);
      *(v8 + 1456) = *(v6 + v7 + 1456);
      *(v8 + 1448) = v26;
      v27 = *(v6 + v7 + 1464);
      *(v8 + 1480) = *(v6 + v7 + 1480);
      *(v8 + 1464) = v27;
      *(_X24 + 1480) = 0;
      *(_X24 + 1464) = 0u;
      result = sub_529850(a4 + v7 + 1488, v6 + v7 + 1488);
      v7 += 2608;
    }

    while (v6 + v7 != a3);
    while (v6 != a3)
    {
      result = sub_52E078(v6);
      v6 += 2608;
    }
  }

  return result;
}

uint64_t sub_529850(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *(a2 + 24);
  *(result + 40) = *(a2 + 40);
  *(result + 24) = v2;
  v3 = *(a2 + 48);
  *(result + 64) = *(a2 + 64);
  *(result + 48) = v3;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = *(a2 + 72);
  *(result + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(result + 96) = *(a2 + 96);
  v4 = *(a2 + 104);
  *(result + 120) = *(a2 + 120);
  *(result + 104) = v4;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0;
  v5 = *(a2 + 128);
  *(result + 144) = *(a2 + 144);
  *(result + 128) = v5;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  v6 = *(a2 + 152);
  *(result + 168) = *(a2 + 168);
  *(result + 152) = v6;
  v7 = *(a2 + 176);
  *(result + 192) = *(a2 + 192);
  *(result + 176) = v7;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(result + 200) = 0;
  *(result + 208) = 0;
  *(result + 216) = 0;
  *(result + 200) = *(a2 + 200);
  *(result + 216) = *(a2 + 216);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 200) = 0;
  *(result + 224) = *(a2 + 224);
  *(result + 248) = 0;
  *(result + 256) = 0;
  *(result + 240) = 0;
  *(result + 240) = *(a2 + 240);
  *(result + 256) = *(a2 + 256);
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(result + 264) = 0;
  *(result + 272) = 0;
  *(result + 280) = 0;
  *(result + 264) = *(a2 + 264);
  *(result + 272) = *(a2 + 272);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  v8 = *(a2 + 288);
  *(result + 304) = *(a2 + 304);
  *(result + 288) = v8;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 288) = 0;
  *(result + 312) = *(a2 + 312);
  v9 = *(a2 + 336);
  v10 = *(a2 + 352);
  *(result + 320) = *(a2 + 320);
  *(result + 336) = v9;
  *(result + 352) = v10;
  *(result + 360) = 0;
  *(result + 368) = 0;
  *(result + 376) = 0;
  *(result + 360) = *(a2 + 360);
  *(result + 368) = *(a2 + 368);
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 360) = 0;
  v12 = *(a2 + 416);
  v11 = *(a2 + 432);
  v13 = *(a2 + 400);
  *(result + 448) = *(a2 + 448);
  *(result + 416) = v12;
  *(result + 432) = v11;
  *(result + 400) = v13;
  *(result + 384) = *(a2 + 384);
  *(result + 456) = *(a2 + 456);
  *(result + 464) = *(a2 + 464);
  v14 = *(a2 + 480);
  *(result + 496) = *(a2 + 496);
  *(result + 480) = v14;
  *(a2 + 488) = 0;
  *(a2 + 496) = 0;
  *(a2 + 480) = 0;
  v15 = *(a2 + 504);
  *(result + 520) = *(a2 + 520);
  *(result + 504) = v15;
  *(a2 + 520) = 0;
  *(a2 + 504) = 0;
  *(a2 + 512) = 0;
  *(result + 528) = *(a2 + 528);
  v16 = *(a2 + 536);
  *(result + 552) = *(a2 + 552);
  *(result + 536) = v16;
  *(a2 + 552) = 0;
  *(a2 + 544) = 0;
  *(a2 + 536) = 0;
  *(result + 560) = *(a2 + 560);
  *(result + 568) = *(a2 + 568);
  v17 = *(a2 + 576);
  *(result + 592) = *(a2 + 592);
  *(result + 576) = v17;
  *(a2 + 592) = 0;
  *(a2 + 584) = 0;
  *(a2 + 576) = 0;
  v18 = *(a2 + 600);
  *(result + 616) = *(a2 + 616);
  *(result + 600) = v18;
  *(a2 + 616) = 0;
  *(a2 + 608) = 0;
  *(a2 + 600) = 0;
  *(result + 624) = *(a2 + 624);
  v19 = *(a2 + 632);
  *(result + 648) = *(a2 + 648);
  *(result + 632) = v19;
  *(a2 + 648) = 0;
  *(a2 + 640) = 0;
  *(a2 + 632) = 0;
  v20 = *(a2 + 656);
  v21 = *(a2 + 672);
  *(result + 685) = *(a2 + 685);
  *(result + 656) = v20;
  *(result + 672) = v21;
  *(result + 704) = off_26696C8;
  v22 = *(a2 + 712);
  *(result + 728) = *(a2 + 728);
  *(result + 712) = v22;
  *(a2 + 728) = 0;
  *(a2 + 720) = 0;
  *(a2 + 712) = 0;
  *(result + 704) = off_266B180;
  *(result + 736) = *(a2 + 736);
  *(result + 744) = 0;
  *(result + 1104) = 0;
  if (*(a2 + 1104) == 1)
  {
    *(result + 744) = *(a2 + 744);
    *(result + 752) = 0;
    *(result + 760) = 0u;
    *(result + 752) = *(a2 + 752);
    *(result + 768) = *(a2 + 768);
    *(a2 + 768) = 0;
    *(a2 + 752) = 0u;
    *(result + 792) = 0;
    *(result + 776) = 0u;
    *(result + 776) = *(a2 + 776);
    *(result + 784) = *(a2 + 784);
    *(a2 + 792) = 0;
    *(a2 + 776) = 0u;
    *(result + 800) = *(a2 + 800);
    *(result + 816) = 0u;
    *(result + 808) = 0;
    *(result + 808) = *(a2 + 808);
    *(result + 816) = *(a2 + 816);
    *(a2 + 824) = 0;
    *(a2 + 808) = 0u;
    *(result + 848) = 0;
    *(result + 832) = 0u;
    *(result + 832) = *(a2 + 832);
    *(result + 848) = *(a2 + 848);
    *(a2 + 848) = 0;
    *(a2 + 832) = 0u;
    v23 = *(a2 + 856);
    *(result + 872) = *(a2 + 872);
    *(result + 856) = v23;
    *(a2 + 856) = 0;
    *(a2 + 864) = 0u;
    *(result + 880) = *(a2 + 880);
    v24 = *(a2 + 896);
    *(result + 912) = *(a2 + 912);
    *(result + 896) = v24;
    *(a2 + 904) = 0u;
    *(a2 + 896) = 0;
    *(result + 920) = *(a2 + 920);
    v25 = *(a2 + 936);
    *(result + 952) = *(a2 + 952);
    *(result + 936) = v25;
    *(a2 + 952) = 0;
    *(a2 + 936) = 0u;
    v26 = *(a2 + 960);
    *(result + 976) = *(a2 + 976);
    *(result + 960) = v26;
    *(a2 + 976) = 0;
    *(a2 + 960) = 0u;
    v27 = *(a2 + 984);
    *(result + 1000) = *(a2 + 1000);
    *(result + 984) = v27;
    *(a2 + 1000) = 0;
    *(a2 + 984) = 0u;
    *(result + 1008) = *(a2 + 1008);
    v28 = *(a2 + 1016);
    *(result + 1032) = *(a2 + 1032);
    *(result + 1016) = v28;
    *(a2 + 1024) = 0u;
    *(a2 + 1016) = 0;
    *(result + 1040) = *(a2 + 1040);
    v29 = *(a2 + 1048);
    *(result + 1064) = *(a2 + 1064);
    *(result + 1048) = v29;
    *(a2 + 1056) = 0u;
    *(a2 + 1048) = 0;
    *(result + 1072) = *(a2 + 1072);
    *(result + 1088) = 0u;
    *(result + 1080) = 0;
    *(result + 1080) = *(a2 + 1080);
    *(result + 1088) = *(a2 + 1088);
    *(a2 + 1096) = 0;
    *(a2 + 1080) = 0u;
    *(result + 1104) = 1;
  }

  *(result + 1112) = *(a2 + 1112);
  return result;
}

uint64_t sub_529D50(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = 0x1F693A1C451AB30BLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x1920FB49D0E228)
  {
    sub_1794();
  }

  if (0x3ED274388A356616 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x3ED274388A356616 * ((a1[2] - *a1) >> 4);
  }

  if ((0x1F693A1C451AB30BLL * ((a1[2] - *a1) >> 4)) >= 0xC907DA4E87114)
  {
    v7 = 0x1920FB49D0E228;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x1920FB49D0E228)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 16 * ((a1[1] - *a1) >> 4);
  sub_529EBC(v13, a2, a3, a4);
  v8 = 2608 * v4 + 2608;
  v9 = a1[1];
  v10 = v13 + *a1 - v9;
  sub_5295F8(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v8;
}

void sub_529EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5295A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_529EBC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
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
  sub_52A268(&v18, a2, a3, a4);
  sub_52A128((a1 + 1176), &v18);
  v8 = __p;
  if (__p)
  {
    v9 = v23;
    v10 = __p;
    if (v23 != __p)
    {
      do
      {
        v9 = sub_52A624(v9 - 168);
      }

      while (v9 != v8);
      v10 = __p;
    }

    v23 = v8;
    operator delete(v10);
  }

  v11 = v20;
  if (v20)
  {
    v12 = v21;
    v13 = v20;
    if (v21 != v20)
    {
      do
      {
        v12 = sub_52A624(v12 - 168);
      }

      while (v12 != v11);
      v13 = v20;
    }

    v21 = v11;
    operator delete(v13);
  }

  v14 = v18;
  if (v18)
  {
    v15 = v19;
    v16 = v18;
    if (v19 != v18)
    {
      do
      {
        v15 = sub_52A624(v15 - 168);
      }

      while (v15 != v14);
      v16 = v18;
    }

    v19 = v14;
    operator delete(v16);
  }

  return a1;
}

void sub_52A084(_Unwind_Exception *a1)
{
  sub_3A9518(v1 + 1488);
  if (*(v1 + 1487) < 0)
  {
    operator delete(*v4);
    if ((*(v1 + 1447) & 0x80000000) == 0)
    {
LABEL_3:
      sub_528FAC((v1 + 1376));
      if ((*(v1 + 1375) & 0x80000000) == 0)
      {
LABEL_5:
        sub_51B73C(v1 + 1248);
        sub_5294D8((v1 + 1176));
        sub_529020(v1 + 32);
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

  operator delete(*(v1 + 1424));
  sub_528FAC((v1 + 1376));
  if ((*(v1 + 1375) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

void *sub_52A128(void *a1, uint64_t a2)
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
        v5 = sub_52A624(v5 - 168);
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
        v9 = sub_52A624(v9 - 168);
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
        v13 = sub_52A624(v13 - 168);
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
  return a1;
}

void *sub_52A268(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_52A348(a1, *a2, a2[1], 0xCF3CF3CF3CF3CF3DLL * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_52A348((a1 + 3), *a3, a3[1], 0xCF3CF3CF3CF3CF3DLL * ((a3[1] - *a3) >> 3));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_52A348((a1 + 6), *a4, a4[1], 0xCF3CF3CF3CF3CF3DLL * ((a4[1] - *a4) >> 3));
  return a1;
}

void sub_52A318(_Unwind_Exception *a1)
{
  sub_51B6E0(v2);
  sub_51B6E0(v1);
  _Unwind_Resume(a1);
}

void sub_52A348(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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

void sub_52A430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = v11 - 168;
    v15 = -v12;
    do
    {
      v14 = sub_52A624(v14) - 168;
      v15 += 168;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_52A6FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_52A464(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
    v7 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v7;
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
LABEL_3:
      v6 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v6;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 56), *(a2 + 56), *(a2 + 64));
LABEL_6:
  if (*(a2 + 103) < 0)
  {
    sub_325C((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v8 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v8;
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_353184(a1 + 104, *(a2 + 104), *(a2 + 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 112) - *(a2 + 104)) >> 3));
  *(a1 + 128) = *(a2 + 128);
  if (*(a2 + 159) < 0)
  {
    sub_325C((a1 + 136), *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v9 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v9;
  }

  *(a1 + 160) = *(a2 + 160);
  return a1;
}

void sub_52A5A0(_Unwind_Exception *a1)
{
  sub_1A104(v3);
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
    if ((*(v1 + 79) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 79) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 56));
  if ((*(v1 + 31) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*v2);
  _Unwind_Resume(a1);
}

uint64_t sub_52A624(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = *(a1 + 112);
    v4 = *(a1 + 104);
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
      v4 = *(a1 + 104);
    }

    *(a1 + 112) = v2;
    operator delete(v4);
  }

  if ((*(a1 + 103) & 0x80000000) == 0)
  {
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    operator delete(*(a1 + 56));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_17;
  }

  operator delete(*(a1 + 80));
  if (*(a1 + 79) < 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_17:
  operator delete(*(a1 + 8));
  return a1;
}

void ***sub_52A6FC(void ***result)
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
          v4 = sub_52A624(v4 - 168);
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

uint64_t sub_52A774(uint64_t *a1, int *a2)
{
  v2 = 0x1F693A1C451AB30BLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1920FB49D0E228)
  {
    sub_1794();
  }

  if (0x3ED274388A356616 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x3ED274388A356616 * ((a1[2] - *a1) >> 4);
  }

  if ((0x1F693A1C451AB30BLL * ((a1[2] - *a1) >> 4)) >= 0xC907DA4E87114)
  {
    v5 = 0x1920FB49D0E228;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1920FB49D0E228)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 16 * ((a1[1] - *a1) >> 4);
  sub_52A8C8(v11, a2);
  v6 = 2608 * v2 + 2608;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_5295F8(a1, *a1, v7, v8);
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

void sub_52A8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5295A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_52A8C8(uint64_t a1, int *a2)
{
  v8 = *a2;
  *v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v3 = *(a2 + 2);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *__p = v3;
  v12 = *(a2 + 6);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  sub_52A98C(a1, &v8);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v9[0];
  if (v9[0])
  {
    v5 = v9[1];
    v6 = v9[0];
    if (v9[1] != v9[0])
    {
      do
      {
        v5 = sub_52A624(v5 - 168);
      }

      while (v5 != v4);
      v6 = v9[0];
    }

    v9[1] = v4;
    operator delete(v6);
  }

  return a1;
}

void sub_52A978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51B73C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_52A98C(uint64_t a1, uint64_t a2)
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
  *(a1 + 1248) = *a2;
  if (a1 + 1248 != a2)
  {
    sub_52ABAC((a1 + 1256), *(a2 + 8), *(a2 + 16), 0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    v4 = (a1 + 1280);
    v5 = *(a2 + 55);
    if (*(a1 + 1303) < 0)
    {
      if (v5 >= 0)
      {
        v7 = (a2 + 32);
      }

      else
      {
        v7 = *(a2 + 32);
      }

      if (v5 >= 0)
      {
        v8 = *(a2 + 55);
      }

      else
      {
        v8 = *(a2 + 40);
      }

      sub_13B38(v4, v7, v8);
    }

    else if ((*(a2 + 55) & 0x80) != 0)
    {
      sub_13A68(v4, *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v6 = *(a2 + 32);
      *(a1 + 1296) = *(a2 + 48);
      *v4 = v6;
    }
  }

  return a1;
}

void sub_52AB08(_Unwind_Exception *a1)
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
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v1 + 1447) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 1424));
  sub_528FAC((v1 + 1376));
  if ((*(v1 + 1375) & 0x80000000) == 0)
  {
LABEL_5:
    sub_51B73C(v2);
    sub_5294D8((v1 + 1176));
    sub_529020(v1 + 32);
    if (*(v1 + 31) < 0)
    {
      operator delete(*v3);
    }

    _Unwind_Resume(a1);
  }

LABEL_4:
  operator delete(*v4);
  goto LABEL_5;
}

void **sub_52ABAC(void **result, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCF3CF3CF3CF3CF3DLL * ((v7 - *result) >> 3) < a4)
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
          v10 = sub_52A624(v10 - 168);
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

    if (a4 <= 0x186186186186186)
    {
      v12 = 0xCF3CF3CF3CF3CF3DLL * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0xC30C30C30C30C3)
      {
        v14 = 0x186186186186186;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x186186186186186)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = &v15[-v8];
  if (0xCF3CF3CF3CF3CF3DLL * (&v15[-v8] >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_52AE4C(v8, v5);
        v5 += 168;
        v8 += 168;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 168;
      result = sub_52A624(v15);
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
        result = sub_52AE4C(v8, v5);
        v5 += 168;
        v8 += 168;
        v16 -= 168;
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
        result = sub_52A464(&v15[v19], &v17[v19]);
        v19 += 168;
      }

      while (&v17[v19] != a3);
      v18 = &v15[v19];
    }

    v6[1] = v18;
  }

  return result;
}

void sub_52AE20(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 168;
    v7 = -v4;
    do
    {
      v6 = sub_52A624(v6) - 168;
      v7 += 168;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_52AE4C(uint64_t a1, void *a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (a1 == a2)
  {
    v7 = *(a2 + 2);
    *(a1 + 48) = *(a2 + 12);
    *(a1 + 32) = v7;
    *(a1 + 128) = a2[16];
    *(a1 + 160) = *(a2 + 80);
    return a1;
  }

  v5 = *(a2 + 31);
  if (*(a1 + 31) < 0)
  {
    if (v5 >= 0)
    {
      v9 = a2 + 1;
    }

    else
    {
      v9 = a2[1];
    }

    if (v5 >= 0)
    {
      v10 = *(a2 + 31);
    }

    else
    {
      v10 = a2[2];
    }

    sub_13B38(v4, v9, v10);
  }

  else if ((*(a2 + 31) & 0x80) != 0)
  {
    sub_13A68(v4, a2[1], a2[2]);
  }

  else
  {
    v6 = *(a2 + 1);
    *(v4 + 16) = a2[3];
    *v4 = v6;
  }

  v11 = *(a2 + 2);
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 32) = v11;
  v12 = *(a2 + 79);
  if (*(a1 + 79) < 0)
  {
    if (v12 >= 0)
    {
      v16 = a2 + 7;
    }

    else
    {
      v16 = a2[7];
    }

    if (v12 >= 0)
    {
      v17 = *(a2 + 79);
    }

    else
    {
      v17 = a2[8];
    }

    sub_13B38((a1 + 56), v16, v17);
    v14 = a2 + 10;
    v15 = *(a2 + 103);
    if (*(a1 + 103) < 0)
    {
      goto LABEL_28;
    }
  }

  else if ((*(a2 + 79) & 0x80) != 0)
  {
    sub_13A68((a1 + 56), a2[7], a2[8]);
    v14 = a2 + 10;
    v15 = *(a2 + 103);
    if (*(a1 + 103) < 0)
    {
LABEL_28:
      if ((v15 & 0x80u) == 0)
      {
        v19 = v14;
      }

      else
      {
        v19 = a2[10];
      }

      if ((v15 & 0x80u) == 0)
      {
        v20 = v15;
      }

      else
      {
        v20 = a2[11];
      }

      sub_13B38((a1 + 80), v19, v20);
      goto LABEL_36;
    }
  }

  else
  {
    v13 = *(a2 + 7);
    *(a1 + 72) = a2[9];
    *(a1 + 56) = v13;
    v14 = a2 + 10;
    v15 = *(a2 + 103);
    if (*(a1 + 103) < 0)
    {
      goto LABEL_28;
    }
  }

  if ((v15 & 0x80) != 0)
  {
    sub_13A68((a1 + 80), a2[10], a2[11]);
  }

  else
  {
    v18 = *v14;
    *(a1 + 96) = v14[2];
    *(a1 + 80) = v18;
  }

LABEL_36:
  sub_74300((a1 + 104), a2[13], a2[14], 0xAAAAAAAAAAAAAAABLL * ((a2[14] - a2[13]) >> 3));
  *(a1 + 128) = a2[16];
  v21 = *(a2 + 159);
  if (*(a1 + 159) < 0)
  {
    if (v21 >= 0)
    {
      v23 = a2 + 17;
    }

    else
    {
      v23 = a2[17];
    }

    if (v21 >= 0)
    {
      v24 = *(a2 + 159);
    }

    else
    {
      v24 = a2[18];
    }

    sub_13B38((a1 + 136), v23, v24);
    *(a1 + 160) = *(a2 + 80);
    return a1;
  }

  else
  {
    if ((*(a2 + 159) & 0x80) != 0)
    {
      sub_13A68((a1 + 136), a2[17], a2[18]);
    }

    else
    {
      v22 = *(a2 + 17);
      *(a1 + 152) = a2[19];
      *(a1 + 136) = v22;
    }

    *(a1 + 160) = *(a2 + 80);
    return a1;
  }
}

uint64_t sub_52B080(uint64_t *a1, __int128 *a2)
{
  v2 = 0x1F693A1C451AB30BLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1920FB49D0E228)
  {
    sub_1794();
  }

  if (0x3ED274388A356616 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x3ED274388A356616 * ((a1[2] - *a1) >> 4);
  }

  if ((0x1F693A1C451AB30BLL * ((a1[2] - *a1) >> 4)) >= 0xC907DA4E87114)
  {
    v5 = 0x1920FB49D0E228;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1920FB49D0E228)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 16 * ((a1[1] - *a1) >> 4);
  v6 = a2[1];
  v12 = *a2;
  v13[0] = v6;
  *(v13 + 12) = *(a2 + 28);
  *__p = a2[3];
  v15 = *(a2 + 8);
  a2[3] = 0uLL;
  *(a2 + 8) = 0;
  sub_52B230(2608 * v2, &v12);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_5295F8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v11 + 2608;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v11 + 2608;
}

void sub_52B1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5295A4(va);
  _Unwind_Resume(a1);
}

void sub_52B20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_5295A4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_52B230(uint64_t a1, __int128 *a2)
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
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 1332) = *(a2 + 28);
  *(a1 + 1304) = v4;
  *(a1 + 1320) = v5;
  if ((a1 + 1304) != a2)
  {
    v6 = *(a2 + 71);
    if (*(a1 + 1375) < 0)
    {
      if (v6 >= 0)
      {
        v9 = a2 + 3;
      }

      else
      {
        v9 = *(a2 + 6);
      }

      if (v6 >= 0)
      {
        v10 = *(a2 + 71);
      }

      else
      {
        v10 = *(a2 + 7);
      }

      sub_13B38((a1 + 1352), v9, v10);
    }

    else
    {
      if ((*(a2 + 71) & 0x80) == 0)
      {
        v7 = a2[3];
        *(a1 + 1368) = *(a2 + 8);
        *(a1 + 1352) = v7;
        return a1;
      }

      sub_13A68((a1 + 1352), *(a2 + 6), *(a2 + 7));
    }
  }

  return a1;
}

void sub_52B39C(_Unwind_Exception *a1)
{
  sub_3A9518(v1 + 1488);
  if (*(v1 + 1487) < 0)
  {
    operator delete(*v4);
    if ((*(v1 + 1447) & 0x80000000) == 0)
    {
LABEL_3:
      sub_528FAC((v1 + 1376));
      if ((*(v1 + 1375) & 0x80000000) == 0)
      {
LABEL_5:
        sub_51B73C(v1 + 1248);
        sub_5294D8((v1 + 1176));
        sub_529020(v1 + 32);
        if (*(v1 + 31) < 0)
        {
          operator delete(*v3);
        }

        _Unwind_Resume(a1);
      }

LABEL_4:
      operator delete(*v2);
      goto LABEL_5;
    }
  }

  else if ((*(v1 + 1447) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 1424));
  sub_528FAC((v1 + 1376));
  if ((*(v1 + 1375) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

uint64_t sub_52B440(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v3 = 0x1F693A1C451AB30BLL * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x1920FB49D0E228)
  {
    sub_1794();
  }

  if (0x3ED274388A356616 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x3ED274388A356616 * ((a1[2] - *a1) >> 4);
  }

  if ((0x1F693A1C451AB30BLL * ((a1[2] - *a1) >> 4)) >= 0xC907DA4E87114)
  {
    v6 = 0x1920FB49D0E228;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x1920FB49D0E228)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 16 * ((a1[1] - *a1) >> 4);
  sub_52B5A4(v12, a2, a3);
  v7 = 2608 * v3 + 2608;
  v8 = a1[1];
  v9 = v12 + *a1 - v8;
  sub_5295F8(a1, *a1, v8, v9);
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

void sub_52B590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5295A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_52B5A4(uint64_t a1, uint64_t a2, __int128 *a3)
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
  sub_52B7D8(v8, a2);
  if (*(a3 + 23) < 0)
  {
    sub_325C(&v9, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    v10 = *(a3 + 2);
  }

  v6 = (a1 + 1152);
  sub_52BE74(a1 + 32, v8);
  if (*(a1 + 1175) < 0)
  {
    operator delete(*v6);
  }

  *v6 = v9;
  *(a1 + 1168) = v10;
  HIBYTE(v10) = 0;
  LOBYTE(v9) = 0;
  sub_3A9518(v8);
  return a1;
}

void sub_52B724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3A9518(va);
  sub_3A9518(v3 + 1488);
  if (*(v3 + 1487) < 0)
  {
    operator delete(*v6);
    if ((*(v3 + 1447) & 0x80000000) == 0)
    {
LABEL_3:
      sub_528FAC((v3 + 1376));
      if ((*(v3 + 1375) & 0x80000000) == 0)
      {
LABEL_5:
        sub_51B73C(v3 + 1248);
        sub_5294D8((v3 + 1176));
        sub_529020(v3 + 32);
        if (*(v3 + 31) < 0)
        {
          operator delete(*v4);
        }

        _Unwind_Resume(a1);
      }

LABEL_4:
      operator delete(*v5);
      goto LABEL_5;
    }
  }

  else if ((*(v3 + 1447) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v3 + 1424));
  sub_528FAC((v3 + 1376));
  if ((*(v3 + 1375) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

uint64_t sub_52B7D8(uint64_t a1, uint64_t a2)
{
  *(sub_382108(a1, a2) + 464) = *(a2 + 464);
  if (*(a2 + 503) < 0)
  {
    sub_325C((a1 + 480), *(a2 + 480), *(a2 + 488));
  }

  else
  {
    v4 = *(a2 + 480);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 480) = v4;
  }

  sub_5139E8(a1 + 504, (a2 + 504));
  v5 = *(a2 + 656);
  v6 = *(a2 + 672);
  *(a1 + 685) = *(a2 + 685);
  *(a1 + 656) = v5;
  *(a1 + 672) = v6;
  *(a1 + 704) = off_26696C8;
  if (*(a2 + 735) < 0)
  {
    sub_325C((a1 + 712), *(a2 + 712), *(a2 + 720));
  }

  else
  {
    v7 = *(a2 + 712);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 712) = v7;
  }

  *(a1 + 704) = off_266B180;
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 744) = 0;
  *(a1 + 1104) = 0;
  if (*(a2 + 1104) == 1)
  {
    sub_52B980(a1 + 744, a2 + 744);
    *(a1 + 1104) = 1;
  }

  *(a1 + 1112) = *(a2 + 1112);
  return a1;
}

void sub_52B914(_Unwind_Exception *a1)
{
  sub_3E5388(v1 + 504);
  if (*(v1 + 503) < 0)
  {
    operator delete(*(v1 + 480));
  }

  sub_2C0F28(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_52B980(uint64_t a1, uint64_t a2)
{
  sub_382D1C(a1, a2);
  if (*(a2 + 215) < 0)
  {
    sub_325C((a1 + 192), *(a2 + 192), *(a2 + 200));
  }

  else
  {
    v4 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v4;
  }

  if (*(a2 + 239) < 0)
  {
    sub_325C((a1 + 216), *(a2 + 216), *(a2 + 224));
  }

  else
  {
    v5 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v5;
  }

  if (*(a2 + 263) < 0)
  {
    sub_325C((a1 + 240), *(a2 + 240), *(a2 + 248));
  }

  else
  {
    v6 = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 240) = v6;
  }

  *(a1 + 264) = *(a2 + 264);
  if (*(a2 + 295) < 0)
  {
    sub_325C((a1 + 272), *(a2 + 272), *(a2 + 280));
  }

  else
  {
    v7 = *(a2 + 272);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 272) = v7;
  }

  *(a1 + 296) = *(a2 + 296);
  if (*(a2 + 327) < 0)
  {
    sub_325C((a1 + 304), *(a2 + 304), *(a2 + 312));
  }

  else
  {
    v8 = *(a2 + 304);
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 304) = v8;
  }

  *(a1 + 328) = *(a2 + 328);
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0;
  sub_52BB74(a1 + 336, *(a2 + 336), *(a2 + 344), 0xEF7BDEF7BDEF7BDFLL * ((*(a2 + 344) - *(a2 + 336)) >> 3));
  return a1;
}

void sub_52BABC(_Unwind_Exception *a1)
{
  if (*(v1 + 295) < 0)
  {
    operator delete(*(v1 + 272));
  }

  sub_1AB28(v1 + 216);
  if (*(v1 + 215) < 0)
  {
    operator delete(*(v1 + 192));
    sub_33D080(v1);
    _Unwind_Resume(a1);
  }

  sub_33D080(v1);
  _Unwind_Resume(a1);
}

void sub_52BB74(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x108421084210843)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_52BC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_52BDB8(va);
  *(v10 + 8) = v11;
  sub_5293E8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_52BC98(uint64_t a1, uint64_t a2)
{
  sub_382844(a1, a2);
  if (*(a2 + 199) < 0)
  {
    sub_325C((a1 + 176), *(a2 + 176), *(a2 + 184));
  }

  else
  {
    v4 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v4;
  }

  if (*(a2 + 223) < 0)
  {
    sub_325C((a1 + 200), *(a2 + 200), *(a2 + 208));
  }

  else
  {
    v5 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v5;
  }

  if (*(a2 + 247) < 0)
  {
    sub_325C((a1 + 224), *(a2 + 224), *(a2 + 232));
  }

  else
  {
    v6 = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 224) = v6;
  }

  return a1;
}

void sub_52BD48(_Unwind_Exception *a1)
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

uint64_t sub_52BDB8(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    v1 = result;
    sub_52BDEC(result);
    return v1;
  }

  return result;
}

void ***sub_52BDEC(void ***result)
{
  v1 = *result[2];
  v2 = *result[1];
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 3));
      if (*(v1 - 25) < 0)
      {
LABEL_9:
        operator delete(*(v1 - 6));
        if ((*(v1 - 49) & 0x80000000) == 0)
        {
          goto LABEL_2;
        }

        goto LABEL_10;
      }
    }

    else if (*(v1 - 25) < 0)
    {
      goto LABEL_9;
    }

    if ((*(v1 - 49) & 0x80000000) == 0)
    {
      goto LABEL_2;
    }

LABEL_10:
    operator delete(*(v1 - 9));
LABEL_2:
    v1 -= 31;
    result = sub_33D5A0(v1);
  }

  return result;
}

uint64_t sub_52BE74(uint64_t a1, uint64_t a2)
{
  sub_33AE88(a1, a2);
  v4 = *(a2 + 472);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = v4;
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  v5 = *(a2 + 480);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 480) = v5;
  *(a2 + 503) = 0;
  *(a2 + 480) = 0;
  sub_52C14C(a1 + 504, (a2 + 504));
  v6 = *(a2 + 685);
  v7 = *(a2 + 672);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 672) = v7;
  *(a1 + 685) = v6;
  v8 = (a1 + 712);
  if (*(a1 + 735) < 0)
  {
    operator delete(*v8);
  }

  v9 = *(a2 + 712);
  *(a1 + 728) = *(a2 + 728);
  *v8 = v9;
  *(a2 + 735) = 0;
  *(a2 + 712) = 0;
  *(a1 + 736) = *(a2 + 736);
  if (*(a1 + 1104) == *(a2 + 1104))
  {
    if (*(a1 + 1104))
    {
      sub_3A971C(a1 + 744, a2 + 744);
    }
  }

  else if (*(a1 + 1104))
  {
    sub_52C25C(a1 + 744);
  }

  else
  {
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 752) = 0;
    *(a1 + 760) = 0u;
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
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 816) = 0u;
    *(a1 + 808) = 0;
    *(a1 + 808) = *(a2 + 808);
    *(a1 + 816) = *(a2 + 816);
    *(a2 + 824) = 0;
    *(a2 + 808) = 0u;
    *(a1 + 848) = 0;
    *(a1 + 832) = 0u;
    *(a1 + 832) = *(a2 + 832);
    *(a1 + 848) = *(a2 + 848);
    *(a2 + 848) = 0;
    *(a2 + 832) = 0u;
    v10 = *(a2 + 856);
    *(a1 + 872) = *(a2 + 872);
    *(a1 + 856) = v10;
    *(a2 + 856) = 0;
    *(a2 + 864) = 0u;
    *(a1 + 880) = *(a2 + 880);
    v11 = *(a2 + 896);
    *(a1 + 912) = *(a2 + 912);
    *(a1 + 896) = v11;
    *(a2 + 904) = 0u;
    *(a2 + 896) = 0;
    *(a1 + 920) = *(a2 + 920);
    v12 = *(a2 + 936);
    *(a1 + 952) = *(a2 + 952);
    *(a1 + 936) = v12;
    *(a2 + 952) = 0;
    *(a2 + 936) = 0u;
    v13 = *(a2 + 960);
    *(a1 + 976) = *(a2 + 976);
    *(a1 + 960) = v13;
    *(a2 + 976) = 0;
    *(a2 + 960) = 0u;
    v14 = *(a2 + 984);
    *(a1 + 1000) = *(a2 + 1000);
    *(a1 + 984) = v14;
    *(a2 + 1000) = 0;
    *(a2 + 984) = 0u;
    *(a1 + 1008) = *(a2 + 1008);
    v15 = *(a2 + 1016);
    *(a1 + 1032) = *(a2 + 1032);
    *(a1 + 1016) = v15;
    *(a2 + 1024) = 0u;
    *(a2 + 1016) = 0;
    *(a1 + 1040) = *(a2 + 1040);
    v16 = *(a2 + 1048);
    *(a1 + 1064) = *(a2 + 1064);
    *(a1 + 1048) = v16;
    *(a2 + 1056) = 0u;
    *(a2 + 1048) = 0;
    *(a1 + 1072) = *(a2 + 1072);
    *(a1 + 1088) = 0u;
    *(a1 + 1080) = 0;
    *(a1 + 1080) = *(a2 + 1080);
    *(a1 + 1088) = *(a2 + 1088);
    *(a2 + 1096) = 0;
    *(a2 + 1080) = 0u;
    *(a1 + 1104) = 1;
  }

  *(a1 + 1112) = *(a2 + 1112);
  return a1;
}

uint64_t sub_52C14C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 3);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v5 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 32) = v5;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 64) = *(a2 + 16);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v6 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v6;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v7;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  *(a1 + 120) = *(a2 + 30);
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v8 = a2[8];
  *(a1 + 144) = *(a2 + 18);
  *(a1 + 128) = v8;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  return a1;
}

uint64_t sub_52C25C(uint64_t result)
{
  if (*(result + 360) == 1)
  {
    v4[3] = v1;
    v4[4] = v2;
    v3 = result;
    v4[0] = (result + 336);
    sub_5293E8(v4);
    if (*(v3 + 327) < 0)
    {
      operator delete(*(v3 + 304));
      if ((*(v3 + 295) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(v3 + 263) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    else if ((*(v3 + 295) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(v3 + 272));
    if ((*(v3 + 263) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(v3 + 239) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_11:
    operator delete(*(v3 + 240));
    if ((*(v3 + 239) & 0x80000000) == 0)
    {
LABEL_6:
      if ((*(v3 + 215) & 0x80000000) == 0)
      {
LABEL_7:
        result = sub_33D080(v3);
        *(v3 + 360) = 0;
        return result;
      }

LABEL_13:
      operator delete(*(v3 + 192));
      goto LABEL_7;
    }

LABEL_12:
    operator delete(*(v3 + 216));
    if ((*(v3 + 215) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  return result;
}

void sub_52C324(void ****a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v1)
    {
LABEL_13:
      a1[1] = v1;
      operator delete(v4);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        if ((*(v3 - 25) & 0x80000000) == 0)
        {
LABEL_7:
          if (*(v3 - 49) < 0)
          {
            goto LABEL_11;
          }

          goto LABEL_4;
        }
      }

      else if ((*(v3 - 25) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v3 - 6));
      if (*(v3 - 49) < 0)
      {
LABEL_11:
        operator delete(*(v3 - 9));
      }

LABEL_4:
      v3 -= 31;
      sub_33D5A0(v3);
      if (v3 == v1)
      {
        v4 = *a1;
        goto LABEL_13;
      }
    }
  }
}

uint64_t sub_52C3D8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x1F693A1C451AB30BLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1920FB49D0E228)
  {
    sub_1794();
  }

  if (0x3ED274388A356616 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x3ED274388A356616 * ((a1[2] - *a1) >> 4);
  }

  if ((0x1F693A1C451AB30BLL * ((a1[2] - *a1) >> 4)) >= 0xC907DA4E87114)
  {
    v6 = 0x1920FB49D0E228;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x1920FB49D0E228)
    {
      operator new();
    }

    sub_1808();
  }

  v22 = 16 * ((a1[1] - *a1) >> 4);
  *v22 = *a2;
  *(v22 + 8) = *(a2 + 8);
  *(v22 + 24) = *(a2 + 24);
  *(a2 + 16) = 0u;
  *(a2 + 8) = 0;
  sub_529850(2608 * v2 + 32, a2 + 32);
  *(v22 + 1152) = *(a2 + 1152);
  *(v22 + 1168) = *(a2 + 1168);
  *(a2 + 1152) = 0u;
  v7 = *(a2 + 1176);
  *(a2 + 1168) = 0u;
  *(v22 + 1176) = v7;
  *(v22 + 1184) = *(a2 + 1184);
  *(a2 + 1184) = 0u;
  *(v22 + 1200) = *(a2 + 1200);
  *(v22 + 1216) = *(a2 + 1216);
  v8 = *(a2 + 1224);
  *(a2 + 1216) = 0u;
  *(a2 + 1200) = 0u;
  *(v22 + 1224) = v8;
  *(v22 + 1232) = *(a2 + 1232);
  *(a2 + 1232) = 0u;
  *(v22 + 1248) = *(a2 + 1248);
  *(v22 + 1256) = *(a2 + 1256);
  *(v22 + 1264) = *(a2 + 1264);
  *(a2 + 1256) = 0;
  *(a2 + 1264) = 0u;
  v9 = *(a2 + 1280);
  *(v22 + 1296) = *(a2 + 1296);
  *(v22 + 1280) = v9;
  *(a2 + 1296) = 0;
  *(a2 + 1280) = 0u;
  v10 = *(a2 + 1304);
  v11 = *(a2 + 1320);
  *(v22 + 1332) = *(a2 + 1332);
  *(v22 + 1304) = v10;
  *(v22 + 1320) = v11;
  v12 = *(a2 + 1352);
  *(v22 + 1368) = *(a2 + 1368);
  *(v22 + 1352) = v12;
  *(a2 + 1368) = 0;
  *(a2 + 1352) = 0u;
  *(v22 + 1376) = *(a2 + 1376);
  *(v22 + 1392) = *(a2 + 1392);
  *(a2 + 1376) = 0u;
  *(a2 + 1392) = 0;
  v13 = *(a2 + 1400);
  *(v22 + 1416) = *(a2 + 1416);
  *(v22 + 1400) = v13;
  v14 = *(a2 + 1424);
  *(v22 + 1440) = *(a2 + 1440);
  *(v22 + 1424) = v14;
  *(a2 + 1440) = 0;
  *(a2 + 1424) = 0u;
  v15 = *(a2 + 1448);
  *(v22 + 1456) = *(a2 + 1456);
  *(v22 + 1448) = v15;
  v16 = *(a2 + 1464);
  *(v22 + 1480) = *(a2 + 1480);
  *(v22 + 1464) = v16;
  *(a2 + 1480) = 0;
  *(a2 + 1464) = 0u;
  sub_529850(2608 * v2 + 1488, a2 + 1488);
  v17 = 2608 * v2 + 2608;
  v18 = a1[1];
  v19 = 2608 * v2 + *a1 - v18;
  sub_5295F8(a1, *a1, v18, v22 + *a1 - v18);
  v20 = *a1;
  *a1 = v19;
  a1[1] = v17;
  a1[2] = 0;
  if (v20)
  {
    operator delete(v20);
  }

  return v17;
}

void sub_52C690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5295A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_52C6A4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x1F693A1C451AB30BLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1920FB49D0E228)
  {
    sub_1794();
  }

  if (0x3ED274388A356616 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x3ED274388A356616 * ((a1[2] - *a1) >> 4);
  }

  if ((0x1F693A1C451AB30BLL * ((a1[2] - *a1) >> 4)) >= 0xC907DA4E87114)
  {
    v5 = 0x1920FB49D0E228;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1920FB49D0E228)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 16 * ((a1[1] - *a1) >> 4);
  sub_52C7F8(v11, a2);
  v6 = 2608 * v2 + 2608;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_5295F8(a1, *a1, v7, v8);
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

void sub_52C7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5295A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_52C7F8(uint64_t a1, uint64_t a2)
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
  sub_52C990(a1 + 1488, a2);
  return a1;
}

void sub_52C8EC(_Unwind_Exception *a1)
{
  sub_3A9518(v1 + 1488);
  if (*(v1 + 1487) < 0)
  {
    operator delete(*v4);
    if ((*(v1 + 1447) & 0x80000000) == 0)
    {
LABEL_3:
      sub_528FAC((v1 + 1376));
      if ((*(v1 + 1375) & 0x80000000) == 0)
      {
LABEL_5:
        sub_51B73C(v1 + 1248);
        sub_5294D8((v1 + 1176));
        sub_529020(v1 + 32);
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

  operator delete(*(v1 + 1424));
  sub_528FAC((v1 + 1376));
  if ((*(v1 + 1375) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

uint64_t sub_52C990(uint64_t a1, uint64_t a2)
{
  sub_37F464(a1, a2);
  v4 = *(a2 + 472);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = v4;
  if (a1 == a2)
  {
    sub_52CB8C((a1 + 504), (a2 + 504));
    v7 = *(a2 + 685);
    v8 = *(a2 + 672);
    *(a1 + 656) = *(a2 + 656);
    *(a1 + 672) = v8;
    *(a1 + 685) = v7;
    *(a1 + 736) = *(a2 + 736);
    v9 = *(a1 + 1104);
    if (v9 == *(a2 + 1104))
    {
      goto LABEL_26;
    }

LABEL_30:
    v20 = a1 + 744;
    if (v9)
    {
      sub_52C25C(v20);
    }

    else
    {
      sub_52B980(v20, a2 + 744);
      *(a1 + 1104) = 1;
    }

    *(a1 + 1112) = *(a2 + 1112);
    return a1;
  }

  v5 = *(a2 + 503);
  if (*(a1 + 503) < 0)
  {
    if (v5 >= 0)
    {
      v10 = (a2 + 480);
    }

    else
    {
      v10 = *(a2 + 480);
    }

    if (v5 >= 0)
    {
      v11 = *(a2 + 503);
    }

    else
    {
      v11 = *(a2 + 488);
    }

    sub_13B38((a1 + 480), v10, v11);
  }

  else if ((*(a2 + 503) & 0x80) != 0)
  {
    sub_13A68((a1 + 480), *(a2 + 480), *(a2 + 488));
  }

  else
  {
    v6 = *(a2 + 480);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 480) = v6;
  }

  sub_52CB8C((a1 + 504), (a2 + 504));
  v12 = *(a2 + 656);
  v13 = *(a2 + 672);
  *(a1 + 685) = *(a2 + 685);
  *(a1 + 656) = v12;
  *(a1 + 672) = v13;
  v14 = (a1 + 712);
  v15 = *(a2 + 735);
  if (*(a1 + 735) < 0)
  {
    if (v15 >= 0)
    {
      v17 = (a2 + 712);
    }

    else
    {
      v17 = *(a2 + 712);
    }

    if (v15 >= 0)
    {
      v18 = *(a2 + 735);
    }

    else
    {
      v18 = *(a2 + 720);
    }

    sub_13B38(v14, v17, v18);
    *(a1 + 736) = *(a2 + 736);
    v9 = *(a1 + 1104);
    if (v9 != *(a2 + 1104))
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  if ((*(a2 + 735) & 0x80) != 0)
  {
    sub_13A68(v14, *(a2 + 712), *(a2 + 720));
    *(a1 + 736) = *(a2 + 736);
    v9 = *(a1 + 1104);
    if (v9 == *(a2 + 1104))
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  v16 = *(a2 + 712);
  *(a1 + 728) = *(a2 + 728);
  *v14 = v16;
  *(a1 + 736) = *(a2 + 736);
  v9 = *(a1 + 1104);
  if (v9 != *(a2 + 1104))
  {
    goto LABEL_30;
  }

LABEL_26:
  if (v9)
  {
    sub_52CE38(a1 + 744, a2 + 744);
  }

  *(a1 + 1112) = *(a2 + 1112);
  return a1;
}

_OWORD *sub_52CB8C(_OWORD *result, void *a2)
{
  v2 = a2;
  v3 = result;
  if (result == a2)
  {
    *(result + 3) = a2[3];
    *(result + 7) = a2[7];
    *(result + 16) = *(a2 + 16);
    *(result + 30) = *(a2 + 30);
    return result;
  }

  if (*(result + 23) < 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v7 = v2[1];
    }

    sub_13B38(result, a2, v7);
    *(v3 + 3) = v2[3];
    v5 = v2 + 4;
    v6 = *(v2 + 55);
    if (*(v3 + 55) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x80) == 0)
  {
    v4 = *a2;
    *(result + 2) = a2[2];
    *result = v4;
    *(result + 3) = a2[3];
    v5 = a2 + 4;
    v6 = *(a2 + 55);
    if (*(result + 55) < 0)
    {
      goto LABEL_14;
    }

LABEL_11:
    if ((v6 & 0x80) != 0)
    {
      sub_13A68(v3 + 4, v2[4], v2[5]);
    }

    else
    {
      v8 = *v5;
      *(v3 + 6) = v5[2];
      v3[2] = v8;
    }

    goto LABEL_22;
  }

  sub_13A68(result, *a2, a2[1]);
  *(v3 + 3) = v2[3];
  v5 = v2 + 4;
  v6 = *(v2 + 55);
  if ((*(v3 + 55) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  if ((v6 & 0x80u) == 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v2[4];
  }

  if ((v6 & 0x80u) == 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v2[5];
  }

  sub_13B38(v3 + 4, v9, v10);
LABEL_22:
  *(v3 + 7) = v2[7];
  *(v3 + 16) = *(v2 + 16);
  v11 = *(v2 + 95);
  if ((*(v3 + 95) & 0x80000000) == 0)
  {
    if ((*(v2 + 95) & 0x80) != 0)
    {
      sub_13A68(v3 + 9, v2[9], v2[10]);
      v13 = v2 + 12;
      v14 = *(v2 + 119);
      if (*(v3 + 119) < 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v12 = *(v2 + 9);
      *(v3 + 11) = v2[11];
      *(v3 + 72) = v12;
      v13 = v2 + 12;
      v14 = *(v2 + 119);
      if (*(v3 + 119) < 0)
      {
        goto LABEL_37;
      }
    }

LABEL_33:
    if ((v14 & 0x80) != 0)
    {
      sub_13A68(v3 + 12, v2[12], v2[13]);
      *(v3 + 30) = *(v2 + 30);
      v18 = v2 + 16;
      v19 = *(v2 + 151);
      if (*(v3 + 151) < 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v17 = *v13;
      *(v3 + 14) = v13[2];
      v3[6] = v17;
      *(v3 + 30) = *(v2 + 30);
      v18 = v2 + 16;
      v19 = *(v2 + 151);
      if (*(v3 + 151) < 0)
      {
        goto LABEL_48;
      }
    }

LABEL_44:
    if ((v19 & 0x80) != 0)
    {
      sub_13A68(v3 + 16, v2[16], v2[17]);
    }

    else
    {
      v22 = *v18;
      *(v3 + 18) = v18[2];
      v3[8] = v22;
    }

    return v3;
  }

  if (v11 >= 0)
  {
    v15 = v2 + 9;
  }

  else
  {
    v15 = v2[9];
  }

  if (v11 >= 0)
  {
    v16 = *(v2 + 95);
  }

  else
  {
    v16 = v2[10];
  }

  sub_13B38(v3 + 9, v15, v16);
  v13 = v2 + 12;
  v14 = *(v2 + 119);
  if ((*(v3 + 119) & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_37:
  if ((v14 & 0x80u) == 0)
  {
    v20 = v13;
  }

  else
  {
    v20 = v2[12];
  }

  if ((v14 & 0x80u) == 0)
  {
    v21 = v14;
  }

  else
  {
    v21 = v2[13];
  }

  sub_13B38(v3 + 12, v20, v21);
  *(v3 + 30) = *(v2 + 30);
  v18 = v2 + 16;
  v19 = *(v2 + 151);
  if ((*(v3 + 151) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_48:
  if ((v19 & 0x80u) == 0)
  {
    v23 = v18;
  }

  else
  {
    v23 = v2[16];
  }

  if ((v19 & 0x80u) == 0)
  {
    v24 = v19;
  }

  else
  {
    v24 = v2[17];
  }

  sub_13B38(v3 + 16, v23, v24);
  return v3;
}

uint64_t sub_52CE38(uint64_t a1, uint64_t a2)
{
  sub_3833D0(a1, a2);
  if (a1 == a2)
  {
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 328) = *(a2 + 328);
    return a1;
  }

  v4 = *(a2 + 215);
  if ((*(a1 + 215) & 0x80000000) == 0)
  {
    if ((*(a2 + 215) & 0x80) != 0)
    {
      sub_13A68((a1 + 192), *(a2 + 192), *(a2 + 200));
      v6 = (a2 + 216);
      v7 = *(a2 + 239);
      if (*(a1 + 239) < 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v5 = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 192) = v5;
      v6 = (a2 + 216);
      v7 = *(a2 + 239);
      if (*(a1 + 239) < 0)
      {
        goto LABEL_18;
      }
    }

LABEL_14:
    if ((v7 & 0x80) != 0)
    {
      sub_13A68((a1 + 216), *(a2 + 216), *(a2 + 224));
      v12 = (a2 + 240);
      v13 = *(a2 + 263);
      if ((*(a1 + 263) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v11 = *v6;
      *(a1 + 232) = v6[2];
      *(a1 + 216) = v11;
      v12 = (a2 + 240);
      v13 = *(a2 + 263);
      if ((*(a1 + 263) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_29;
  }

  if (v4 >= 0)
  {
    v9 = (a2 + 192);
  }

  else
  {
    v9 = *(a2 + 192);
  }

  if (v4 >= 0)
  {
    v10 = *(a2 + 215);
  }

  else
  {
    v10 = *(a2 + 200);
  }

  sub_13B38((a1 + 192), v9, v10);
  v6 = (a2 + 216);
  v7 = *(a2 + 239);
  if ((*(a1 + 239) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_18:
  if ((v7 & 0x80u) == 0)
  {
    v14 = v6;
  }

  else
  {
    v14 = *(a2 + 216);
  }

  if ((v7 & 0x80u) == 0)
  {
    v15 = v7;
  }

  else
  {
    v15 = *(a2 + 224);
  }

  sub_13B38((a1 + 216), v14, v15);
  v12 = (a2 + 240);
  v13 = *(a2 + 263);
  if ((*(a1 + 263) & 0x80000000) == 0)
  {
LABEL_25:
    if ((v13 & 0x80) != 0)
    {
      sub_13A68((a1 + 240), *(a2 + 240), *(a2 + 248));
      *(a1 + 264) = *(a2 + 264);
      v17 = (a2 + 272);
      v18 = *(a2 + 295);
      if (*(a1 + 295) < 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v16 = *v12;
      *(a1 + 256) = v12[2];
      *(a1 + 240) = v16;
      *(a1 + 264) = *(a2 + 264);
      v17 = (a2 + 272);
      v18 = *(a2 + 295);
      if (*(a1 + 295) < 0)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_36;
  }

LABEL_29:
  if ((v13 & 0x80u) == 0)
  {
    v19 = v12;
  }

  else
  {
    v19 = *(a2 + 240);
  }

  if ((v13 & 0x80u) == 0)
  {
    v20 = v13;
  }

  else
  {
    v20 = *(a2 + 248);
  }

  sub_13B38((a1 + 240), v19, v20);
  *(a1 + 264) = *(a2 + 264);
  v17 = (a2 + 272);
  v18 = *(a2 + 295);
  if (*(a1 + 295) < 0)
  {
LABEL_40:
    if ((v18 & 0x80u) == 0)
    {
      v24 = v17;
    }

    else
    {
      v24 = *(a2 + 272);
    }

    if ((v18 & 0x80u) == 0)
    {
      v25 = v18;
    }

    else
    {
      v25 = *(a2 + 280);
    }

    sub_13B38((a1 + 272), v24, v25);
    *(a1 + 296) = *(a2 + 296);
    v22 = (a2 + 304);
    v23 = *(a2 + 327);
    if ((*(a1 + 327) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

LABEL_50:
    if ((v23 & 0x80u) == 0)
    {
      v27 = v22;
    }

    else
    {
      v27 = *(a2 + 304);
    }

    if ((v23 & 0x80u) == 0)
    {
      v28 = v23;
    }

    else
    {
      v28 = *(a2 + 312);
    }

    sub_13B38((a1 + 304), v27, v28);
    goto LABEL_58;
  }

LABEL_36:
  if ((v18 & 0x80) != 0)
  {
    sub_13A68((a1 + 272), *(a2 + 272), *(a2 + 280));
    *(a1 + 296) = *(a2 + 296);
    v22 = (a2 + 304);
    v23 = *(a2 + 327);
    if (*(a1 + 327) < 0)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v21 = *v17;
    *(a1 + 288) = v17[2];
    *(a1 + 272) = v21;
    *(a1 + 296) = *(a2 + 296);
    v22 = (a2 + 304);
    v23 = *(a2 + 327);
    if (*(a1 + 327) < 0)
    {
      goto LABEL_50;
    }
  }

LABEL_47:
  if ((v23 & 0x80) != 0)
  {
    sub_13A68((a1 + 304), *(a2 + 304), *(a2 + 312));
  }

  else
  {
    v26 = *v22;
    *(a1 + 320) = v22[2];
    *(a1 + 304) = v26;
  }

LABEL_58:
  *(a1 + 328) = *(a2 + 328);
  sub_52D108(a1 + 336, *(a2 + 336), *(a2 + 344), 0xEF7BDEF7BDEF7BDFLL * ((*(a2 + 344) - *(a2 + 336)) >> 3));
  return a1;
}

void ***sub_52D108(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  if (0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_52C324(a1);
    if (a4 <= 0x108421084210842)
    {
      v8 = 0xDEF7BDEF7BDEF7BELL * ((*(a1 + 16) - *a1) >> 3);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 16) - *a1) >> 3) >= 0x84210842108421)
      {
        v9 = 0x108421084210842;
      }

      else
      {
        v9 = v8;
      }

      if (v9 <= 0x108421084210842)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v10 = *(a1 + 8) - v7;
  if (0xEF7BDEF7BDEF7BDFLL * (v10 >> 3) >= a4)
  {
    result = sub_52D3B0(a2, a3, v7);
    v15 = v14;
    v16 = *(a1 + 8);
    if (v16 == v14)
    {
LABEL_17:
      *(a1 + 8) = v15;
      return result;
    }

    while (1)
    {
      if (*(v16 - 1) < 0)
      {
        operator delete(*(v16 - 3));
        if ((*(v16 - 25) & 0x80000000) == 0)
        {
LABEL_21:
          if (*(v16 - 49) < 0)
          {
            goto LABEL_25;
          }

          goto LABEL_18;
        }
      }

      else if ((*(v16 - 25) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      operator delete(*(v16 - 6));
      if (*(v16 - 49) < 0)
      {
LABEL_25:
        operator delete(*(v16 - 9));
      }

LABEL_18:
      v16 -= 31;
      result = sub_33D5A0(v16);
      if (v16 == v15)
      {
        goto LABEL_17;
      }
    }
  }

  v11 = a2 + v10;
  result = sub_52D3B0(a2, a2 + v10, v7);
  v13 = *(a1 + 8);
  v17 = v13;
  if (v11 != a3)
  {
    result = *(a1 + 8);
    do
    {
      sub_52BC98(result, v11);
      v11 += 248;
      result = v17 + 31;
      v17 += 31;
    }

    while (v11 != a3);
    v13 = result;
  }

  *(a1 + 8) = v13;
  return result;
}

void sub_52D380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_52BDB8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_52D398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_52BDB8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_52D3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a2;
    v6 = 0;
    while (1)
    {
      v10 = a1 + v6;
      v11 = a3 + v6;
      sub_383814(a3 + v6, a1 + v6);
      if (a1 != a3)
      {
        break;
      }

LABEL_10:
      v6 += 248;
      if (a1 + v6 == v5)
      {
        return v5;
      }
    }

    v12 = (v10 + 176);
    v13 = *(v10 + 199);
    if (*(v11 + 199) < 0)
    {
      if (v13 >= 0)
      {
        v19 = (v10 + 176);
      }

      else
      {
        v19 = *v12;
      }

      if (v13 >= 0)
      {
        v20 = *(v10 + 199);
      }

      else
      {
        v20 = *(a1 + v6 + 184);
      }

      sub_13B38((v11 + 176), v19, v20);
      v15 = a3 + v6;
      v16 = a1 + v6;
      v17 = a1 + v6 + 200;
      v18 = *(a1 + v6 + 223);
      if (*(a3 + v6 + 223) < 0)
      {
LABEL_27:
        v26 = *(v16 + 208);
        if ((v18 & 0x80u) == 0)
        {
          v27 = v17;
        }

        else
        {
          v27 = *v17;
        }

        if ((v18 & 0x80u) == 0)
        {
          v28 = v18;
        }

        else
        {
          v28 = v26;
        }

        sub_13B38((v15 + 200), v27, v28);
        v22 = a3 + v6;
        v23 = a1 + v6;
        v24 = a1 + v6 + 224;
        v25 = *(a1 + v6 + 247);
        if (*(a3 + v6 + 247) < 0)
        {
LABEL_3:
          v7 = *(v23 + 232);
          if ((v25 & 0x80u) == 0)
          {
            v8 = v24;
          }

          else
          {
            v8 = *v24;
          }

          if ((v25 & 0x80u) == 0)
          {
            v9 = v25;
          }

          else
          {
            v9 = v7;
          }

          sub_13B38((v22 + 224), v8, v9);
          goto LABEL_10;
        }

LABEL_36:
        if ((v25 & 0x80) != 0)
        {
          sub_13A68((v22 + 224), *v24, *(a1 + v6 + 232));
        }

        else
        {
          v29 = *v24;
          *(v22 + 240) = *(v24 + 16);
          *(v22 + 224) = v29;
        }

        goto LABEL_10;
      }
    }

    else if ((*(v10 + 199) & 0x80) != 0)
    {
      sub_13A68((v11 + 176), *v12, *(a1 + v6 + 184));
      v15 = a3 + v6;
      v16 = a1 + v6;
      v17 = a1 + v6 + 200;
      v18 = *(a1 + v6 + 223);
      if (*(a3 + v6 + 223) < 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v14 = *v12;
      *(v11 + 192) = *(v10 + 192);
      *(v11 + 176) = v14;
      v15 = a3 + v6;
      v16 = a1 + v6;
      v17 = a1 + v6 + 200;
      v18 = *(a1 + v6 + 223);
      if (*(a3 + v6 + 223) < 0)
      {
        goto LABEL_27;
      }
    }

    if ((v18 & 0x80) != 0)
    {
      sub_13A68((v15 + 200), *v17, *(a1 + v6 + 208));
      v22 = a3 + v6;
      v23 = a1 + v6;
      v24 = a1 + v6 + 224;
      v25 = *(a1 + v6 + 247);
      if (*(a3 + v6 + 247) < 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v21 = *v17;
      *(v15 + 216) = *(v17 + 16);
      *(v15 + 200) = v21;
      v22 = a3 + v6;
      v23 = a1 + v6;
      v24 = a1 + v6 + 224;
      v25 = *(a1 + v6 + 247);
      if (*(a3 + v6 + 247) < 0)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_36;
  }

  return a1;
}

uint64_t sub_52D5C8(uint64_t *a1, __int128 *a2)
{
  v2 = 0x1F693A1C451AB30BLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1920FB49D0E228)
  {
    sub_1794();
  }

  if (0x3ED274388A356616 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x3ED274388A356616 * ((a1[2] - *a1) >> 4);
  }

  if ((0x1F693A1C451AB30BLL * ((a1[2] - *a1) >> 4)) >= 0xC907DA4E87114)
  {
    v5 = 0x1920FB49D0E228;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1920FB49D0E228)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 16 * ((a1[1] - *a1) >> 4);
  sub_52D71C(v11, a2);
  v6 = 2608 * v2 + 2608;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_5295F8(a1, *a1, v7, v8);
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

void sub_52D708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5295A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_52D71C(uint64_t a1, __int128 *a2)
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
  v4 = *a2;
  *(a1 + 1416) = *(a2 + 16);
  *(a1 + 1400) = v4;
  return a1;
}

void sub_52D820(_Unwind_Exception *a1)
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
        sub_529020(v1 + 32);
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

BOOL sub_52D8B0(_DWORD *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (v1 == 1)
    {
      if (*a1 == 0x7FFFFFFF)
      {
        return 0;
      }

      if (a1[1] < *a1)
      {
        return a1[3] != 0x7FFFFFFF;
      }
    }
  }

  else if (*a1 != 0x7FFFFFFF)
  {
    return a1[1] < *a1;
  }

  return 0;
}

uint64_t sub_52D920(uint64_t *a1, uint64_t a2)
{
  v2 = 0x1F693A1C451AB30BLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1920FB49D0E228)
  {
    sub_1794();
  }

  if (0x3ED274388A356616 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x3ED274388A356616 * ((a1[2] - *a1) >> 4);
  }

  if ((0x1F693A1C451AB30BLL * ((a1[2] - *a1) >> 4)) >= 0xC907DA4E87114)
  {
    v5 = 0x1920FB49D0E228;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1920FB49D0E228)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 16 * ((a1[1] - *a1) >> 4);
  sub_52DA74(v11, a2);
  v6 = 2608 * v2 + 2608;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_5295F8(a1, *a1, v7, v8);
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

void sub_52DA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5295A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_52DA74(uint64_t a1, uint64_t a2)
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

  sub_52B7D8(a1 + 32, a2 + 32);
  v5 = (a1 + 1152);
  if (*(a2 + 1175) < 0)
  {
    sub_325C(v5, *(a2 + 1152), *(a2 + 1160));
  }

  else
  {
    v6 = *(a2 + 1152);
    *(a1 + 1168) = *(a2 + 1168);
    *v5 = v6;
  }

  *(a1 + 1192) = 0;
  *(a1 + 1176) = 0u;
  sub_52A348(a1 + 1176, *(a2 + 1176), *(a2 + 1184), 0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 1184) - *(a2 + 1176)) >> 3));
  *(a1 + 1216) = 0;
  *(a1 + 1200) = 0u;
  sub_52A348(a1 + 1200, *(a2 + 1200), *(a2 + 1208), 0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 1208) - *(a2 + 1200)) >> 3));
  *(a1 + 1240) = 0;
  *(a1 + 1224) = 0u;
  sub_52A348(a1 + 1224, *(a2 + 1224), *(a2 + 1232), 0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 1232) - *(a2 + 1224)) >> 3));
  *(a1 + 1248) = *(a2 + 1248);
  *(a1 + 1256) = 0;
  *(a1 + 1272) = 0;
  *(a1 + 1264) = 0;
  sub_52A348(a1 + 1256, *(a2 + 1256), *(a2 + 1264), 0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 1264) - *(a2 + 1256)) >> 3));
  v7 = (a1 + 1280);
  if (*(a2 + 1303) < 0)
  {
    sub_325C(v7, *(a2 + 1280), *(a2 + 1288));
  }

  else
  {
    v8 = *(a2 + 1280);
    *(a1 + 1296) = *(a2 + 1296);
    *v7 = v8;
  }

  v9 = *(a2 + 1304);
  v10 = *(a2 + 1320);
  *(a1 + 1332) = *(a2 + 1332);
  *(a1 + 1304) = v9;
  *(a1 + 1320) = v10;
  if (*(a2 + 1375) < 0)
  {
    sub_325C((a1 + 1352), *(a2 + 1352), *(a2 + 1360));
  }

  else
  {
    v11 = *(a2 + 1352);
    *(a1 + 1368) = *(a2 + 1368);
    *(a1 + 1352) = v11;
  }

  *(a1 + 1392) = 0;
  *(a1 + 1376) = 0u;
  sub_52DE3C((a1 + 1376), *(a2 + 1376), *(a2 + 1384), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1384) - *(a2 + 1376)) >> 3));
  v12 = *(a2 + 1400);
  *(a1 + 1416) = *(a2 + 1416);
  *(a1 + 1400) = v12;
  if (*(a2 + 1447) < 0)
  {
    sub_325C((a1 + 1424), *(a2 + 1424), *(a2 + 1432));
  }

  else
  {
    v13 = *(a2 + 1424);
    *(a1 + 1440) = *(a2 + 1440);
    *(a1 + 1424) = v13;
  }

  v14 = *(a2 + 1448);
  *(a1 + 1456) = *(a2 + 1456);
  *(a1 + 1448) = v14;
  if (*(a2 + 1487) < 0)
  {
    sub_325C((a1 + 1464), *(a2 + 1464), *(a2 + 1472));
  }

  else
  {
    v15 = *(a2 + 1464);
    *(a1 + 1480) = *(a2 + 1480);
    *(a1 + 1464) = v15;
  }

  sub_52B7D8(a1 + 1488, a2 + 1488);
  return a1;
}

void sub_52DD28(_Unwind_Exception *a1)
{
  if (*(v2 + 1447) < 0)
  {
    operator delete(*v5);
  }

  sub_528FAC((v2 + 1376));
  if (*(v2 + 1375) < 0)
  {
    operator delete(*v4);
  }

  sub_51B73C(v2 + 1248);
  sub_5294D8(v3);
  sub_529020(v2 + 32);
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_52DE3C(void *result, __int128 *a2, __int128 *a3, unint64_t a4)
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

void sub_52DF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_52DF90(va);
  *(v10 + 8) = v11;
  sub_52DFF4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_52DF90(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 40;
    }
  }

  return a1;
}

void ***sub_52DFF4(void ***a1)
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
          if (*(v4 - 1) < 0)
          {
            operator delete(*(v4 - 3));
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

uint64_t sub_52E078(uint64_t a1)
{
  sub_3A9518(a1 + 1488);
  if (*(a1 + 1487) < 0)
  {
    operator delete(*(a1 + 1464));
    if ((*(a1 + 1447) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 1376);
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_12:
      v5 = *(a1 + 1384);
      if (v5 == v2)
      {
        *(a1 + 1384) = v2;
        operator delete(v2);
        if (*(a1 + 1375) < 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        do
        {
          if (*(v5 - 1) < 0)
          {
            operator delete(*(v5 - 3));
          }

          v5 -= 5;
        }

        while (v5 != v2);
        v6 = *(a1 + 1376);
        *(a1 + 1384) = v2;
        operator delete(v6);
        if (*(a1 + 1375) < 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((*(a1 + 1303) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  else if ((*(a1 + 1447) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 1424));
  v2 = *(a1 + 1376);
  if (v2)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((*(a1 + 1375) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  operator delete(*(a1 + 1352));
  if ((*(a1 + 1303) & 0x80000000) == 0)
  {
LABEL_6:
    v3 = *(a1 + 1256);
    if (!v3)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*(a1 + 1280));
  v3 = *(a1 + 1256);
  if (!v3)
  {
LABEL_7:
    sub_5294D8((a1 + 1176));
    if ((*(a1 + 1175) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_25:
    operator delete(*(a1 + 1152));
    sub_3A9518(a1 + 32);
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_26;
  }

LABEL_21:
  v7 = *(a1 + 1264);
  v8 = v3;
  if (v7 != v3)
  {
    do
    {
      v7 = sub_52A624(v7 - 168);
    }

    while (v7 != v3);
    v8 = *(a1 + 1256);
  }

  *(a1 + 1264) = v3;
  operator delete(v8);
  sub_5294D8((a1 + 1176));
  if (*(a1 + 1175) < 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  sub_3A9518(a1 + 32);
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_26:
  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_52E208(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x1F693A1C451AB30BLL * ((v9 - v10) >> 4) >= a5)
    {
      v15 = v10 - a2;
      v16 = 0x1F693A1C451AB30BLL * ((v10 - a2) >> 4);
      if (v16 >= a5)
      {
        sub_52E54C(a1, a2, a1[1], a2 + 2608 * a5);
        sub_52EA78(v5, v7 + 2);
        if (a5 != 1)
        {
          v24 = v5 + 2608;
          v25 = a5 + 1;
          do
          {
            v7 = *v7;
            sub_52EA78(v24, v7 + 2);
            v24 += 2608;
            --v25;
          }

          while (v25 > 2);
        }
      }

      else
      {
        v18 = a3;
        if (v15 >= 1)
        {
          v19 = v16 + 1;
          v18 = a3;
          do
          {
            v18 = *v18;
            --v19;
          }

          while (v19 > 1);
        }

        v20 = a1[1];
        if (v18 != a4)
        {
          v33 = v10 - a2;
          v21 = 0;
          v22 = v18;
          do
          {
            sub_52DA74(v10 + v21, (v22 + 2));
            v22 = *v22;
            v21 += 2608;
          }

          while (v22 != a4);
          v20 = v10 + v21;
          v15 = v33;
        }

        a1[1] = v20;
        if (v15 >= 1)
        {
          sub_52E54C(a1, v5, v10, v5 + 2608 * a5);
          if (v18 != v7)
          {
            v23 = v5;
            do
            {
              sub_52EA78(v23, v7 + 2);
              v7 = *v7;
              v23 += 2608;
            }

            while (v7 != v18);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0x1F693A1C451AB30BLL * ((v10 - *a1) >> 4);
      if (v12 > 0x1920FB49D0E228)
      {
        sub_1794();
      }

      v13 = 0x1F693A1C451AB30BLL * ((v9 - v11) >> 4);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0xC907DA4E87114)
      {
        v14 = 0x1920FB49D0E228;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 <= 0x1920FB49D0E228)
        {
          operator new();
        }

        sub_1808();
      }

      v26 = 16 * ((a2 - v11) >> 4);
      v34 = v26;
      v27 = 2608 * a5;
      v28 = v26 + 2608 * a5;
      do
      {
        sub_52DA74(v26, (v7 + 2));
        v26 += 2608;
        v7 = *v7;
        v27 -= 2608;
      }

      while (v27);
      sub_5295F8(a1, v5, a1[1], v28);
      v29 = *a1;
      v35 = v28 + a1[1] - v5;
      a1[1] = v5;
      v30 = v34 + v29 - v5;
      sub_5295F8(a1, v29, v5, v30);
      v31 = *a1;
      *a1 = v30;
      a1[1] = v35;
      a1[2] = 0;
      if (v31)
      {
        operator delete(v31);
      }

      return v34;
    }
  }

  return v5;
}

void sub_52E4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5295A4(va);
  _Unwind_Resume(a1);
}

void sub_52E508(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 2608;
    v7 = -v4;
    do
    {
      v6 = sub_52E078(v6) - 2608;
      v7 += 2608;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_52E534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5295A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_52E54C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = a2 + v7 - a4;
  v9 = v7;
  if (v8 < a3)
  {
    v11 = 0;
    do
    {
      v12 = v7 + v11;
      _X27 = v8 + v11;
      __asm { PRFM            #0, [X27,#0x1E90] }

      *v12 = *(v8 + v11);
      v19 = *(v8 + v11 + 8);
      *(v12 + 24) = *(v8 + v11 + 24);
      *(v12 + 8) = v19;
      *(_X27 + 16) = 0u;
      *(_X27 + 8) = 0;
      sub_529850(v7 + v11 + 32, v8 + v11 + 32);
      v20 = *(v8 + v11 + 1152);
      *(v12 + 1168) = *(v8 + v11 + 1168);
      *(v12 + 1152) = v20;
      *(_X27 + 1152) = 0u;
      *(_X27 + 1168) = 0;
      *(v12 + 1192) = 0;
      *(v12 + 1176) = 0u;
      __asm { PRFM            #0, [X27,#0x2328] }

      *(v12 + 1176) = *(v8 + v11 + 1176);
      *(v12 + 1184) = *(v8 + v11 + 1184);
      *(_X27 + 1192) = 0;
      *(_X27 + 1176) = 0u;
      *(v12 + 1216) = 0;
      *(v12 + 1200) = 0u;
      *(v12 + 1200) = *(v8 + v11 + 1200);
      *(v12 + 1216) = *(v8 + v11 + 1216);
      *(_X27 + 1216) = 0;
      *(_X27 + 1200) = 0u;
      *(v12 + 1240) = 0;
      *(v12 + 1224) = 0u;
      *(v12 + 1224) = *(v8 + v11 + 1224);
      *(v12 + 1232) = *(v8 + v11 + 1232);
      *(_X27 + 1240) = 0;
      *(_X27 + 1224) = 0u;
      __asm { PRFM            #0, [X27,#0x2370] }

      *(v12 + 1248) = *(v8 + v11 + 1248);
      *(v12 + 1256) = 0;
      *(v12 + 1264) = 0u;
      *(v12 + 1256) = *(v8 + v11 + 1256);
      *(v12 + 1264) = *(v8 + v11 + 1264);
      *(_X27 + 1272) = 0;
      *(_X27 + 1256) = 0u;
      v23 = *(v8 + v11 + 1280);
      *(v12 + 1296) = *(v8 + v11 + 1296);
      *(v12 + 1280) = v23;
      *(_X27 + 1280) = 0;
      *(_X27 + 1288) = 0u;
      v24 = *(v8 + v11 + 1304);
      v25 = *(v8 + v11 + 1320);
      *(v12 + 1332) = *(v8 + v11 + 1332);
      *(v12 + 1304) = v24;
      *(v12 + 1320) = v25;
      v26 = *(v8 + v11 + 1352);
      *(v12 + 1368) = *(v8 + v11 + 1368);
      *(v12 + 1352) = v26;
      *(_X27 + 1360) = 0u;
      *(_X27 + 1352) = 0;
      *(v12 + 1392) = 0;
      *(v12 + 1376) = 0u;
      __asm { PRFM            #0, [X27,#0x23F0] }

      *(v12 + 1376) = *(v8 + v11 + 1376);
      *(v12 + 1392) = *(v8 + v11 + 1392);
      *(_X27 + 1392) = 0;
      *(_X27 + 1376) = 0u;
      v28 = *(v8 + v11 + 1400);
      *(v12 + 1416) = *(v8 + v11 + 1416);
      *(v12 + 1400) = v28;
      v29 = *(v8 + v11 + 1424);
      *(v12 + 1440) = *(v8 + v11 + 1440);
      *(v12 + 1424) = v29;
      *(_X27 + 1432) = 0u;
      *(_X27 + 1424) = 0;
      v30 = *(v8 + v11 + 1448);
      *(v12 + 1456) = *(v8 + v11 + 1456);
      *(v12 + 1448) = v30;
      v31 = *(v8 + v11 + 1464);
      *(v12 + 1480) = *(v8 + v11 + 1480);
      *(v12 + 1464) = v31;
      *(_X27 + 1480) = 0;
      *(_X27 + 1464) = 0u;
      result = sub_529850(v7 + v11 + 1488, v8 + v11 + 1488);
      v11 += 2608;
    }

    while (v8 + v11 < a3);
    v9 = v7 + v11;
  }

  *(v6 + 8) = v9;
  if (v7 != a4)
  {
    v32 = v7 - 2608;
    v33 = a4 - v7;
    v34 = a2 + v7 - 2608 - a4;
    do
    {
      result = sub_52E7E8(v32, v34);
      v32 -= 2608;
      v34 -= 2608;
      v33 += 2608;
    }

    while (v33);
  }

  return result;
}

uint64_t sub_52E7E8(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  sub_52BE74(a1 + 32, a2 + 32);
  v6 = (a1 + 1152);
  if (*(a1 + 1175) < 0)
  {
    operator delete(*v6);
  }

  v7 = *(a2 + 1152);
  *(a1 + 1168) = *(a2 + 1168);
  *v6 = v7;
  *(a2 + 1175) = 0;
  *(a2 + 1152) = 0;
  sub_52A128((a1 + 1176), a2 + 1176);
  *(a1 + 1248) = *(a2 + 1248);
  v8 = *(a1 + 1256);
  if (v8)
  {
    v9 = (a1 + 1256);
    v10 = *(a1 + 1264);
    v11 = *(a1 + 1256);
    if (v10 != v8)
    {
      do
      {
        v10 = sub_52A624(v10 - 168);
      }

      while (v10 != v8);
      v11 = *v9;
    }

    *(a1 + 1264) = v8;
    operator delete(v11);
    *v9 = 0;
    *(a1 + 1264) = 0;
    *(a1 + 1272) = 0;
  }

  *(a1 + 1256) = *(a2 + 1256);
  *(a1 + 1264) = *(a2 + 1264);
  *(a2 + 1256) = 0;
  *(a2 + 1264) = 0;
  *(a2 + 1272) = 0;
  v12 = (a1 + 1280);
  if (*(a1 + 1303) < 0)
  {
    operator delete(*v12);
  }

  v13 = *(a2 + 1280);
  *(a1 + 1296) = *(a2 + 1296);
  *v12 = v13;
  *(a2 + 1303) = 0;
  *(a2 + 1280) = 0;
  v14 = *(a2 + 1332);
  v15 = *(a2 + 1320);
  *(a1 + 1304) = *(a2 + 1304);
  *(a1 + 1320) = v15;
  *(a1 + 1332) = v14;
  v16 = (a1 + 1352);
  if (*(a1 + 1375) < 0)
  {
    operator delete(*v16);
  }

  v17 = *(a2 + 1352);
  *(a1 + 1368) = *(a2 + 1368);
  *v16 = v17;
  *(a2 + 1375) = 0;
  *(a2 + 1352) = 0;
  v18 = *(a1 + 1376);
  if (v18)
  {
    v19 = (a1 + 1376);
    v20 = *(a1 + 1384);
    v21 = *(a1 + 1376);
    if (v20 != v18)
    {
      do
      {
        if (*(v20 - 1) < 0)
        {
          operator delete(*(v20 - 24));
        }

        v20 -= 40;
      }

      while (v20 != v18);
      v21 = *v19;
    }

    *(a1 + 1384) = v18;
    operator delete(v21);
    *v19 = 0;
    *(a1 + 1384) = 0;
    *(a1 + 1392) = 0;
  }

  *(a1 + 1376) = *(a2 + 1376);
  *(a1 + 1392) = *(a2 + 1392);
  *(a2 + 1384) = 0;
  *(a2 + 1392) = 0;
  *(a2 + 1376) = 0;
  v22 = *(a2 + 1400);
  *(a1 + 1416) = *(a2 + 1416);
  *(a1 + 1400) = v22;
  v23 = (a1 + 1424);
  if (*(a1 + 1447) < 0)
  {
    operator delete(*v23);
  }

  v24 = *(a2 + 1424);
  *(a1 + 1440) = *(a2 + 1440);
  *v23 = v24;
  *(a2 + 1447) = 0;
  *(a2 + 1424) = 0;
  v25 = *(a2 + 1456);
  *(a1 + 1448) = *(a2 + 1448);
  *(a1 + 1456) = v25;
  v26 = (a1 + 1464);
  if (*(a1 + 1487) < 0)
  {
    operator delete(*v26);
  }

  v27 = *(a2 + 1464);
  *(a1 + 1480) = *(a2 + 1480);
  *v26 = v27;
  *(a2 + 1487) = 0;
  *(a2 + 1464) = 0;
  sub_52BE74(a1 + 1488, a2 + 1488);
  return a1;
}

uint64_t sub_52EA78(uint64_t a1, void *a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (a1 == a2)
  {
    sub_52C990(a1 + 32, (a2 + 4));
    *(a1 + 1248) = *(a2 + 312);
    v8 = *(a2 + 163);
    v7 = *(a2 + 165);
    *(a1 + 1332) = *(a2 + 1332);
    *(a1 + 1304) = v8;
    *(a1 + 1320) = v7;
    v9 = *(a2 + 175);
    *(a1 + 1416) = *(a2 + 1416);
    *(a1 + 1400) = v9;
    v10 = *(a2 + 364);
    *(a1 + 1448) = a2[181];
    *(a1 + 1456) = v10;
  }

  else
  {
    v5 = *(a2 + 31);
    if (*(a1 + 31) < 0)
    {
      if (v5 >= 0)
      {
        v11 = a2 + 1;
      }

      else
      {
        v11 = a2[1];
      }

      if (v5 >= 0)
      {
        v12 = *(a2 + 31);
      }

      else
      {
        v12 = a2[2];
      }

      sub_13B38(v4, v11, v12);
    }

    else if ((*(a2 + 31) & 0x80) != 0)
    {
      sub_13A68(v4, a2[1], a2[2]);
    }

    else
    {
      v6 = *(a2 + 1);
      *(v4 + 16) = a2[3];
      *v4 = v6;
    }

    sub_52C990(a1 + 32, (a2 + 4));
    v13 = (a1 + 1152);
    v14 = *(a2 + 1175);
    if (*(a1 + 1175) < 0)
    {
      if (v14 >= 0)
      {
        v16 = a2 + 144;
      }

      else
      {
        v16 = a2[144];
      }

      if (v14 >= 0)
      {
        v17 = *(a2 + 1175);
      }

      else
      {
        v17 = a2[145];
      }

      sub_13B38(v13, v16, v17);
    }

    else if ((*(a2 + 1175) & 0x80) != 0)
    {
      sub_13A68(v13, a2[144], a2[145]);
    }

    else
    {
      v15 = *(a2 + 72);
      *(a1 + 1168) = a2[146];
      *v13 = v15;
    }

    sub_52ABAC((a1 + 1176), a2[147], a2[148], 0xCF3CF3CF3CF3CF3DLL * ((a2[148] - a2[147]) >> 3));
    sub_52ABAC((a1 + 1200), a2[150], a2[151], 0xCF3CF3CF3CF3CF3DLL * ((a2[151] - a2[150]) >> 3));
    sub_52ABAC((a1 + 1224), a2[153], a2[154], 0xCF3CF3CF3CF3CF3DLL * ((a2[154] - a2[153]) >> 3));
    *(a1 + 1248) = *(a2 + 312);
    sub_52ABAC((a1 + 1256), a2[157], a2[158], 0xCF3CF3CF3CF3CF3DLL * ((a2[158] - a2[157]) >> 3));
    v18 = (a1 + 1280);
    v19 = *(a2 + 1303);
    if (*(a1 + 1303) < 0)
    {
      if (v19 >= 0)
      {
        v21 = a2 + 160;
      }

      else
      {
        v21 = a2[160];
      }

      if (v19 >= 0)
      {
        v22 = *(a2 + 1303);
      }

      else
      {
        v22 = a2[161];
      }

      sub_13B38(v18, v21, v22);
    }

    else if ((*(a2 + 1303) & 0x80) != 0)
    {
      sub_13A68(v18, a2[160], a2[161]);
    }

    else
    {
      v20 = *(a2 + 80);
      *(a1 + 1296) = a2[162];
      *v18 = v20;
    }

    v23 = *(a2 + 163);
    v24 = *(a2 + 165);
    *(a1 + 1332) = *(a2 + 1332);
    *(a1 + 1304) = v23;
    *(a1 + 1320) = v24;
    v25 = (a1 + 1352);
    v26 = *(a2 + 1375);
    if (*(a1 + 1375) < 0)
    {
      if (v26 >= 0)
      {
        v28 = a2 + 169;
      }

      else
      {
        v28 = a2[169];
      }

      if (v26 >= 0)
      {
        v29 = *(a2 + 1375);
      }

      else
      {
        v29 = a2[170];
      }

      sub_13B38(v25, v28, v29);
    }

    else if ((*(a2 + 1375) & 0x80) != 0)
    {
      sub_13A68(v25, a2[169], a2[170]);
    }

    else
    {
      v27 = *(a2 + 169);
      *(a1 + 1368) = a2[171];
      *v25 = v27;
    }

    sub_52EE18((a1 + 1376), a2[172], a2[173], 0xCCCCCCCCCCCCCCCDLL * ((a2[173] - a2[172]) >> 3));
    v30 = *(a2 + 175);
    *(a1 + 1416) = *(a2 + 1416);
    *(a1 + 1400) = v30;
    v31 = (a1 + 1424);
    v32 = *(a2 + 1447);
    if (*(a1 + 1447) < 0)
    {
      if (v32 >= 0)
      {
        v34 = a2 + 178;
      }

      else
      {
        v34 = a2[178];
      }

      if (v32 >= 0)
      {
        v35 = *(a2 + 1447);
      }

      else
      {
        v35 = a2[179];
      }

      sub_13B38(v31, v34, v35);
    }

    else if ((*(a2 + 1447) & 0x80) != 0)
    {
      sub_13A68(v31, a2[178], a2[179]);
    }

    else
    {
      v33 = *(a2 + 89);
      *(a1 + 1440) = a2[180];
      *v31 = v33;
    }

    v36 = a2[181];
    *(a1 + 1456) = *(a2 + 364);
    *(a1 + 1448) = v36;
    v37 = (a1 + 1464);
    v38 = *(a2 + 1487);
    if (*(a1 + 1487) < 0)
    {
      if (v38 >= 0)
      {
        v40 = a2 + 183;
      }

      else
      {
        v40 = a2[183];
      }

      if (v38 >= 0)
      {
        v41 = *(a2 + 1487);
      }

      else
      {
        v41 = a2[184];
      }

      sub_13B38(v37, v40, v41);
    }

    else if ((*(a2 + 1487) & 0x80) != 0)
    {
      sub_13A68(v37, a2[183], a2[184]);
    }

    else
    {
      v39 = *(a2 + 183);
      *(a1 + 1480) = a2[185];
      *v37 = v39;
    }
  }

  sub_52C990(a1 + 1488, (a2 + 186));
  return a1;
}

void sub_52EE18(void ***a1, void **a2, char *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) < a4)
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
          if (*(v10 - 1) < 0)
          {
            operator delete(*(v10 - 24));
          }

          v10 -= 40;
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

    if (a4 <= 0x666666666666666)
    {
      v32 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v33 = 2 * v32;
      if (2 * v32 <= a4)
      {
        v33 = a4;
      }

      if (v32 >= 0x333333333333333)
      {
        v34 = 0x666666666666666;
      }

      else
      {
        v34 = v33;
      }

      if (v34 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v24 = 0;
      do
      {
        v27 = &v8[v24];
        v28 = &a2[v24];
        *&v8[v24] = *&a2[v24];
        if (a2 != v8)
        {
          v29 = (v28 + 2);
          v30 = *(v28 + 39);
          if (*(v27 + 39) < 0)
          {
            if (v30 >= 0)
            {
              v25 = v29;
            }

            else
            {
              v25 = *v29;
            }

            if (v30 >= 0)
            {
              v26 = v30;
            }

            else
            {
              v26 = a2[v24 + 3];
            }

            sub_13B38(v27 + 2, v25, v26);
          }

          else if ((v30 & 0x80) != 0)
          {
            sub_13A68(v27 + 2, *v29, a2[v24 + 3]);
          }

          else
          {
            v31 = *v29;
            v27[4] = v29[2];
            *(v27 + 1) = v31;
          }
        }

        v24 += 5;
      }

      while (&a2[v24] != a3);
      v12 = a1[1];
      v8 = (v8 + v24 * 8);
    }

    while (v12 != v8)
    {
      if (*(v12 - 1) < 0)
      {
        operator delete(*(v12 - 24));
      }

      v12 -= 40;
    }

    a1[1] = v8;
  }

  else
  {
    v14 = a2 + v13;
    v15 = v12 - v8;
    if (v12 != v8)
    {
      v16 = 0;
      do
      {
        v19 = &v8[v16 / 8];
        v20 = &a2[v16 / 8];
        *&v8[v16 / 8] = *&a2[v16 / 8];
        if (a2 != v8)
        {
          v21 = (v20 + 2);
          v22 = *(v20 + 39);
          if (*(v19 + 39) < 0)
          {
            if (v22 >= 0)
            {
              v17 = v21;
            }

            else
            {
              v17 = *v21;
            }

            if (v22 >= 0)
            {
              v18 = v22;
            }

            else
            {
              v18 = a2[v16 / 8 + 3];
            }

            sub_13B38(v19 + 2, v17, v18);
          }

          else if ((v22 & 0x80) != 0)
          {
            sub_13A68(v19 + 2, *v21, a2[v16 / 8 + 3]);
          }

          else
          {
            v23 = *v21;
            v19[4] = v21[2];
            *(v19 + 1) = v23;
          }
        }

        v16 += 40;
      }

      while (v13 != v16);
      v12 = a1[1];
    }

    v39 = v12;
    v35 = v12;
    if (v14 != a3)
    {
      v36 = a2 + v15 + 16;
      v35 = v12;
      do
      {
        *v35 = *(v36 - 1);
        if (v36[23] < 0)
        {
          sub_325C((v35 + 16), *v36, *(v36 + 1));
          v35 = v39;
        }

        else
        {
          v37 = *v36;
          *(v35 + 32) = *(v36 + 2);
          *(v35 + 16) = v37;
        }

        v38 = v36 - 16;
        v35 += 40;
        v39 = v35;
        v36 += 40;
      }

      while (v38 + 40 != a3);
    }

    a1[1] = v35;
  }
}

void sub_52F1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_52DF90(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_52F208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_52DF90(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

__int128 *sub_52F220(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    v6 = *(a3 + 8);
    if (v6 >= *(a3 + 16))
    {
      v8 = sub_1CEE8(a3, a1);
    }

    else
    {
      if (*(a1 + 23) < 0)
      {
        sub_325C(*(a3 + 8), *a1, *(a1 + 1));
      }

      else
      {
        v7 = *a1;
        *(v6 + 16) = *(a1 + 2);
        *v6 = v7;
      }

      v8 = v6 + 24;
      *(a3 + 8) = v8;
    }

    *(a3 + 8) = v8;
    for (i = v4 + 24; i != a2; i += 24)
    {
      v10 = *(v4 + 23);
      if (v10 >= 0)
      {
        v11 = *(v4 + 23);
      }

      else
      {
        v11 = *(v4 + 8);
      }

      v12 = *(i + 23);
      v13 = v12;
      v14 = *(i + 8);
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(i + 8);
      }

      if (v11 == v12)
      {
        v15 = v10 >= 0 ? v4 : *v4;
        v16 = v13 >= 0 ? i : *i;
        if (!memcmp(v15, v16, v11))
        {
          continue;
        }
      }

      if (v8 >= *(a3 + 16))
      {
        v8 = sub_1CEE8(a3, i);
      }

      else
      {
        if (v13 < 0)
        {
          sub_325C(v8, *i, v14);
        }

        else
        {
          v17 = *i;
          *(v8 + 16) = *(i + 16);
          *v8 = v17;
        }

        v8 += 24;
        *(a3 + 8) = v8;
      }

      *(a3 + 8) = v8;
      v4 = i;
    }

    return a2;
  }

  return v4;
}

uint64_t sub_52F394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4) + 1;
  if (v3 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((*(a1 + 8) - *a1) >> 4);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_325C((v7 + 24), *a3, *(a3 + 8));
  }

  else
  {
    *(v7 + 24) = *a3;
    *(v7 + 40) = *(a3 + 16);
  }

  v8 = *(a1 + 8) - *a1;
  v9 = v7 - v8;
  memcpy((v7 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7 + 48;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7 + 48;
}

void sub_52F504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
    sub_84E7C(va);
    _Unwind_Resume(a1);
  }

  sub_84E7C(va);
  _Unwind_Resume(a1);
}

void sub_52F5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_52F610(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_52F610(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_52E078(v1 + 16);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

unint64_t sub_52F65C(uint64_t a1, int *a2)
{
  v24 = (*a2 + 0x388152A534) ^ 0xDEADBEEFLL;
  sub_52FB70(&v24, (a2 + 8));
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  v3 = *(a2 + 147);
  v4 = *(a2 + 148);
  p_p = v25;
  v35 = 0;
  if (v4 != v3)
  {
    if (0xCF3CF3CF3CF3CF3DLL * ((v4 - v3) >> 3) <= 0x186186186186186)
    {
      operator new();
    }

    sub_1794();
  }

  v28 = 0;
  v29 = 0;
  v27 = 0;
  v5 = *(a2 + 150);
  v6 = *(a2 + 151);
  p_p = &v27;
  v35 = 0;
  if (v6 != v5)
  {
    if (0xCF3CF3CF3CF3CF3DLL * ((v6 - v5) >> 3) <= 0x186186186186186)
    {
      operator new();
    }

    sub_1794();
  }

  v31 = 0;
  v32 = 0;
  __p = 0;
  v7 = *(a2 + 153);
  v8 = *(a2 + 154);
  p_p = &__p;
  v35 = 0;
  if (v8 != v7)
  {
    if (0xCF3CF3CF3CF3CF3DLL * ((v8 - v7) >> 3) <= 0x186186186186186)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = sub_530080(&v33, v25);
  v24 ^= v9 + (v24 << 6) + (v24 >> 2) + 2654435769u;
  v10 = __p;
  if (__p)
  {
    v11 = v31;
    v12 = __p;
    if (v31 != __p)
    {
      do
      {
        v11 = sub_52A624(v11 - 168);
      }

      while (v11 != v10);
      v12 = __p;
    }

    v31 = v10;
    operator delete(v12);
  }

  v13 = v27;
  if (v27)
  {
    v14 = v28;
    v15 = v27;
    if (v28 != v27)
    {
      do
      {
        v14 = sub_52A624(v14 - 168);
      }

      while (v14 != v13);
      v15 = v27;
    }

    v28 = v13;
    operator delete(v15);
  }

  v16 = v25[0];
  if (v25[0])
  {
    v17 = v25[1];
    v18 = v25[0];
    if (v25[1] != v25[0])
    {
      do
      {
        v17 = sub_52A624(v17 - 168);
      }

      while (v17 != v16);
      v18 = v25[0];
    }

    v25[1] = v16;
    operator delete(v18);
  }

  sub_52FCCC(&v24, a2 + 312);
  v24 ^= a2[326] + 2654435769 + (v24 << 6) + (v24 >> 2);
  if (*(a2 + 1447) < 0)
  {
    sub_325C(v25, *(a2 + 178), *(a2 + 179));
  }

  else
  {
    *v25 = *(a2 + 89);
    v26 = *(a2 + 180);
  }

  if (v26 >= 0)
  {
    v19 = v25;
  }

  else
  {
    v19 = v25[0];
  }

  if (v26 >= 0)
  {
    v20 = HIBYTE(v26);
  }

  else
  {
    v20 = v25[1];
  }

  v21 = sub_AAD8(&p_p, v19, v20);
  v24 ^= v21 + 2654435769u + (v24 << 6) + (v24 >> 2);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
    if (!sub_4566B4(a2 + 328))
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (sub_4566B4(a2 + 328))
  {
LABEL_36:
    v22 = sub_4470E4((a2 + 328));
    v24 ^= v22 + 2654435769 + (v24 << 6) + (v24 >> 2);
  }

LABEL_37:
  sub_52FEDC(&v24, a2 + 181);
  return v24;
}

void sub_52FA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_5294D8(va);
  _Unwind_Resume(a1);
}

void sub_52FA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_52A6FC(va1);
  sub_51B6E0(v5);
  sub_51B6E0(va);
  _Unwind_Resume(a1);
}

void sub_52FB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v10 = va_arg(va1, void *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  if (v6)
  {
    v8 = v5 - 168;
    v9 = -v6;
    do
    {
      v8 = sub_52A624(v8) - 168;
      v9 += 168;
    }

    while (v9);
  }

  sub_52A6FC(va1);
  sub_51B6E0(va);
  _Unwind_Resume(a1);
}

void sub_52FB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (v21)
  {
    v23 = v20 - 168;
    v24 = -v21;
    do
    {
      v23 = sub_52A624(v23) - 168;
      v24 += 168;
    }

    while (v24);
  }

  sub_52A6FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_52FB70(void *a1, uint64_t a2)
{
  sub_52B7D8(v9, a2);
  if (*(a2 + 1143) < 0)
  {
    sub_325C(&__p, *(a2 + 1120), *(a2 + 1128));
  }

  else
  {
    __p = *(a2 + 1120);
    v13 = *(a2 + 1136);
  }

  if (SHIBYTE(v11) < 0)
  {
    sub_325C(&v14, v10, *(&v10 + 1));
  }

  else
  {
    v14 = v10;
    v15 = v11;
  }

  if (v15 >= 0)
  {
    v4 = &v14;
  }

  else
  {
    v4 = v14;
  }

  if (v15 >= 0)
  {
    v5 = HIBYTE(v15);
  }

  else
  {
    v5 = *(&v14 + 1);
  }

  v6 = sub_AAD8(&v16, v4, v5);
  if (SHIBYTE(v15) < 0)
  {
    v7 = v6;
    operator delete(v14);
    v6 = v7;
  }

  *a1 ^= ((v6 + 0x388152A534) ^ 0xDEADBEEF) + (*a1 << 6) + (*a1 >> 2) + 2654435769u;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  return sub_3A9518(v9);
}

void sub_52FCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_529020(va);
  _Unwind_Resume(a1);
}

void sub_52FCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3A9518(va);
  _Unwind_Resume(a1);
}

void sub_52FCCC(void *a1, int *a2)
{
  v8 = *a2;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v3 = *(a2 + 1);
  v4 = *(a2 + 2);
  v15 = &v9;
  v16 = 0;
  if (v4 != v3)
  {
    if (0xCF3CF3CF3CF3CF3DLL * ((v4 - v3) >> 3) < 0x186186186186187)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a2 + 55) < 0)
  {
    sub_325C(&__p, *(a2 + 4), *(a2 + 5));
  }

  else
  {
    __p = *(a2 + 2);
    v13 = *(a2 + 6);
  }

  *a1 ^= sub_530C10(&v14, &v8) + (*a1 << 6) + (*a1 >> 2) + 2654435769;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  v5 = v9;
  if (v9)
  {
    v6 = v10;
    v7 = v9;
    if (v10 != v9)
    {
      do
      {
        v6 = sub_52A624(v6 - 168);
      }

      while (v6 != v5);
      v7 = v9;
    }

    v10 = v5;
    operator delete(v7);
  }
}

void sub_52FE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_52A6FC(va);
  _Unwind_Resume(a1);
}

void sub_52FEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (v17)
  {
    v19 = v16 - 168;
    v20 = -v17;
    do
    {
      v19 = sub_52A624(v19) - 168;
      v20 += 168;
    }

    while (v20);
  }

  sub_52A6FC(va);
  _Unwind_Resume(a1);
}

void sub_52FEDC(void *a1, uint64_t *a2)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  if (*(a2 + 39) < 0)
  {
    sub_325C(&v14, a2[2], a2[3]);
    v4 = v12;
    v3 = HIDWORD(v12);
    v5 = v13;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = *(a2 + 1);
    v15 = a2[4];
    v4 = v12;
    v3 = HIDWORD(v12);
    v5 = v13;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
LABEL_3:
      *__p = v14;
      v17 = v15;
      goto LABEL_6;
    }
  }

  sub_325C(__p, v14, *(&v14 + 1));
LABEL_6:
  if (v17 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v17 >= 0)
  {
    v7 = HIBYTE(v17);
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_AAD8(&v18, v6, v7);
  v9 = (v3 + (((v4 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v4 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v4 + 0x388152A534) ^ 0xDEADBEEFLL;
  v10 = (((v5 + (v9 << 6) + (v9 >> 2) + 2654435769u) ^ v9) + 0x388152A534) ^ 0xDEADBEEF;
  v11 = ((v10 << 6) + 2654435769u + (v10 >> 2) + v8) ^ v10;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 ^= v11 + 2654435769 + (*a1 << 6) + (*a1 >> 2);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }
}