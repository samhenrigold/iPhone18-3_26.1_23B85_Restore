void sub_25530C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25532C(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 40))();
  v8 = (*(*v6 + 56))(v6);
  v9 = (*(*v6 + 48))(v6);
  v10 = *a2;
  v11 = (*(*v6 + 40))(v6);
  v12 = a3[1];
  if (!v12 || (*(*v12 + 32))(v12) == 17)
  {
    goto LABEL_8;
  }

  v13 = a3[1];
  if (v13)
  {
    if ((*(*v13 + 32))(v13) == 18)
    {
      goto LABEL_8;
    }

    v14 = a3[1];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  a3[1] = 0;
LABEL_8:
  if (*(a1[10] + 190) == 1 && v10 == 5 && v11 == 5)
  {
    v34 = 7;
    strcpy(__p, "(t*t)/t");
    v29 = sub_BC168(a1[8], __p);
    v30 = v29;
    v31 = a1[8] + 8;
    if (v31 == v29)
    {
      v32 = 0;
      if ((v34 & 0x80000000) == 0)
      {
LABEL_38:
        if (v31 == v30)
        {
          return 0;
        }

        else
        {
          return v32;
        }
      }
    }

    else
    {
      v35 = *(v29 + 16);
      v32 = sub_26CBB8(v9, a1, &v35, v7, v8);
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    operator delete(__p[0]);
    goto LABEL_38;
  }

  sub_26C5BC(v10, v11, __p);
  v17 = sub_BC168(a1[8], __p);
  v18 = v17;
  v19 = a1[8] + 8;
  if (v19 != v17)
  {
    v35 = *(v17 + 16);
    result = sub_26AB90(v9, a1, &v35, v7, v8);
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v21 = result;
    operator delete(__p[0]);
    result = v21;
    if (v19 != v18)
    {
      return result;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v34 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v19 != v18)
  {
    return result;
  }

LABEL_21:
  v22 = a1[6];
  v25 = *(v22 + 8);
  v23 = v22 + 8;
  v24 = v25;
  if (v25)
  {
    v26 = v23;
    v27 = v24;
    do
    {
      if (*(v27 + 32) >= v10)
      {
        v26 = v27;
      }

      v27 = *(v27 + 8 * (*(v27 + 32) < v10));
    }

    while (v27);
    if (v26 != v23 && v10 >= *(v26 + 32))
    {
      v28 = v23;
      do
      {
        if (*(v24 + 32) >= v11)
        {
          v28 = v24;
        }

        v24 = *(v24 + 8 * (*(v24 + 32) < v11));
      }

      while (v24);
      if (v28 != v23 && v11 >= *(v28 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_2556C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_2556E4(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = (*(**a3 + 56))(*a3);
  v8 = (*(*v6 + 48))(v6);
  v9 = (*(*a3[1] + 40))(a3[1]);
  v10 = (*(*v6 + 40))(v6);
  v11 = *a2;
  if (!*a3 || (*(**a3 + 32))(*a3) == 17)
  {
    goto LABEL_8;
  }

  if (*a3)
  {
    if ((*(**a3 + 32))(*a3) == 18)
    {
      goto LABEL_8;
    }

    if (*a3)
    {
      (*(**a3 + 8))(*a3);
    }
  }

  *a3 = 0;
LABEL_8:
  if (*(a1[10] + 190) == 1 && v10 == 5 && v11 == 5)
  {
    v31 = 7;
    strcpy(__p, "t/(t*t)");
    v26 = sub_BC168(a1[8], __p);
    v27 = v26;
    v28 = a1[8] + 8;
    if (v28 == v26)
    {
      v29 = 0;
      if ((v31 & 0x80000000) == 0)
      {
LABEL_38:
        if (v28 == v27)
        {
          return 0;
        }

        else
        {
          return v29;
        }
      }
    }

    else
    {
      v32 = *(v26 + 16);
      v29 = sub_26AB90(v8, a1, &v32, v7, v9);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    operator delete(__p[0]);
    goto LABEL_38;
  }

  sub_26E660(v10, v11, __p);
  v14 = sub_BC168(a1[8], __p);
  v15 = v14;
  v16 = a1[8] + 8;
  if (v16 != v14)
  {
    v32 = *(v14 + 16);
    result = sub_26CBB8(v8, a1, &v32, v7, v9);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v18 = result;
    operator delete(__p[0]);
    result = v18;
    if (v16 != v15)
    {
      return result;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v31 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v16 != v15)
  {
    return result;
  }

LABEL_21:
  v19 = a1[6];
  v22 = *(v19 + 8);
  v20 = v19 + 8;
  v21 = v22;
  if (v22)
  {
    v23 = v20;
    v24 = v21;
    do
    {
      if (*(v24 + 32) >= v10)
      {
        v23 = v24;
      }

      v24 = *(v24 + 8 * (*(v24 + 32) < v10));
    }

    while (v24);
    if (v23 != v20 && v10 >= *(v23 + 32))
    {
      v25 = v20;
      do
      {
        if (*(v21 + 32) >= v11)
        {
          v25 = v21;
        }

        v21 = *(v21 + 8 * (*(v21 + 32) < v11));
      }

      while (v21);
      if (v25 != v20 && v11 >= *(v25 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_255A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_255AA0(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 40))();
  v8 = (*(*v6 + 48))(v6);
  v9 = (*(*v6 + 56))(v6);
  v10 = *a2;
  v11 = (*(*v6 + 40))(v6);
  v12 = a3[1];
  if (!v12 || (*(*v12 + 32))(v12) == 17)
  {
    goto LABEL_8;
  }

  v13 = a3[1];
  if (v13)
  {
    if ((*(*v13 + 32))(v13) == 18)
    {
      goto LABEL_8;
    }

    v14 = a3[1];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  a3[1] = 0;
LABEL_8:
  if (*(a1[10] + 190) == 1 && v10 == 5 && v11 == 5)
  {
    v34 = 7;
    strcpy(__p, "(t*t)/t");
    v29 = sub_BC168(a1[8], __p);
    v30 = v29;
    v31 = a1[8] + 8;
    if (v31 == v29)
    {
      v32 = 0;
      if ((v34 & 0x80000000) == 0)
      {
LABEL_38:
        if (v31 == v30)
        {
          return 0;
        }

        else
        {
          return v32;
        }
      }
    }

    else
    {
      v35 = *(v29 + 16);
      v32 = sub_26AB90(v8, a1, &v35, v7, v9);
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    operator delete(__p[0]);
    goto LABEL_38;
  }

  sub_26F04C(v10, v11, __p);
  v17 = sub_BC168(a1[8], __p);
  v18 = v17;
  v19 = a1[8] + 8;
  if (v19 != v17)
  {
    v35 = *(v17 + 16);
    result = sub_26CBB8(v8, a1, &v35, v7, v9);
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v21 = result;
    operator delete(__p[0]);
    result = v21;
    if (v19 != v18)
    {
      return result;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v34 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v19 != v18)
  {
    return result;
  }

LABEL_21:
  v22 = a1[6];
  v25 = *(v22 + 8);
  v23 = v22 + 8;
  v24 = v25;
  if (v25)
  {
    v26 = v23;
    v27 = v24;
    do
    {
      if (*(v27 + 32) >= v10)
      {
        v26 = v27;
      }

      v27 = *(v27 + 8 * (*(v27 + 32) < v10));
    }

    while (v27);
    if (v26 != v23 && v10 >= *(v26 + 32))
    {
      v28 = v23;
      do
      {
        if (*(v24 + 32) >= v11)
        {
          v28 = v24;
        }

        v24 = *(v24 + 8 * (*(v24 + 32) < v11));
      }

      while (v24);
      if (v28 != v23 && v11 >= *(v28 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_255E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_255E58(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = (*(**a3 + 48))(*a3);
  v8 = (*(*v6 + 56))(v6);
  v9 = (*(*a3[1] + 40))(a3[1]);
  v10 = (*(*v6 + 40))(v6);
  v11 = *a2;
  if (!*a3 || (*(**a3 + 32))(*a3) == 17)
  {
    goto LABEL_8;
  }

  if (*a3)
  {
    if ((*(**a3 + 32))(*a3) == 18)
    {
      goto LABEL_8;
    }

    if (*a3)
    {
      (*(**a3 + 8))(*a3);
    }
  }

  *a3 = 0;
LABEL_8:
  if (*(a1[10] + 190) == 1 && v10 == 5 && v11 == 5)
  {
    v31 = 7;
    strcpy(__p, "t/(t*t)");
    v26 = sub_BC168(a1[8], __p);
    v27 = v26;
    v28 = a1[8] + 8;
    if (v28 == v26)
    {
      v29 = 0;
      if ((v31 & 0x80000000) == 0)
      {
LABEL_38:
        if (v28 == v27)
        {
          return 0;
        }

        else
        {
          return v29;
        }
      }
    }

    else
    {
      v32 = *(v26 + 16);
      v29 = sub_2700C8(v7, a1, &v32, v8, v9);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    operator delete(__p[0]);
    goto LABEL_38;
  }

  sub_26FACC(v10, v11, __p);
  v14 = sub_BC168(a1[8], __p);
  v15 = v14;
  v16 = a1[8] + 8;
  if (v16 != v14)
  {
    v32 = *(v14 + 16);
    result = sub_2700C8(v7, a1, &v32, v8, v9);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v18 = result;
    operator delete(__p[0]);
    result = v18;
    if (v16 != v15)
    {
      return result;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v31 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v16 != v15)
  {
    return result;
  }

LABEL_21:
  v19 = a1[6];
  v22 = *(v19 + 8);
  v20 = v19 + 8;
  v21 = v22;
  if (v22)
  {
    v23 = v20;
    v24 = v21;
    do
    {
      if (*(v24 + 32) >= v10)
      {
        v23 = v24;
      }

      v24 = *(v24 + 8 * (*(v24 + 32) < v10));
    }

    while (v24);
    if (v23 != v20 && v10 >= *(v23 + 32))
    {
      v25 = v20;
      do
      {
        if (*(v21 + 32) >= v11)
        {
          v25 = v21;
        }

        v21 = *(v21 + 8 * (*(v21 + 32) < v11));
      }

      while (v21);
      if (v25 != v20 && v11 >= *(v25 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_2561F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_256214(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 16))();
  v8 = (*(*v6 + 48))(v6);
  v9 = (*(*v6 + 56))(v6);
  v10 = *a2;
  v11 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v12 = a3[1];
  if (!v12 || (*(*v12 + 32))(v12) == 17)
  {
    goto LABEL_15;
  }

  v13 = a3[1];
  if (v13)
  {
    if ((*(*v13 + 32))(v13) == 18)
    {
      goto LABEL_15;
    }

    v14 = a3[1];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  a3[1] = 0;
LABEL_15:
  if (*(a1[10] + 190) == 1 && v10 == 5 && v11 == 5)
  {
    v34 = 7;
    strcpy(__p, "(t*t)/t");
    v29 = sub_BC168(a1[8], __p);
    v30 = v29;
    v31 = a1[8] + 8;
    if (v31 == v29)
    {
      v32 = 0;
      if ((v34 & 0x80000000) == 0)
      {
LABEL_45:
        if (v31 == v30)
        {
          return 0;
        }

        else
        {
          return v32;
        }
      }
    }

    else
    {
      v35 = *(v29 + 16);
      v32 = sub_2700C8(v7, a1, &v35, v9, v8);
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }
    }

    operator delete(__p[0]);
    goto LABEL_45;
  }

  sub_271AF0(v10, v11, __p);
  v17 = sub_BC168(a1[8], __p);
  v18 = v17;
  v19 = a1[8] + 8;
  if (v19 != v17)
  {
    v35 = *(v17 + 16);
    result = sub_2700C8(v7, a1, &v35, v8, v9);
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    v21 = result;
    operator delete(__p[0]);
    result = v21;
    if (v19 != v18)
    {
      return result;
    }

    goto LABEL_28;
  }

  result = 0;
  if (v34 < 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (v19 != v18)
  {
    return result;
  }

LABEL_28:
  v22 = a1[6];
  v25 = *(v22 + 8);
  v23 = v22 + 8;
  v24 = v25;
  if (v25)
  {
    v26 = v23;
    v27 = v24;
    do
    {
      if (*(v27 + 32) >= v10)
      {
        v26 = v27;
      }

      v27 = *(v27 + 8 * (*(v27 + 32) < v10));
    }

    while (v27);
    if (v26 != v23 && v10 >= *(v26 + 32))
    {
      v28 = v23;
      do
      {
        if (*(v24 + 32) >= v11)
        {
          v28 = v24;
        }

        v24 = *(v24 + 8 * (*(v24 + 32) < v11));
      }

      while (v24);
      if (v28 != v23 && v11 >= *(v28 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_256644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_256664(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = (*(**a3 + 48))(*a3);
  v8 = (*(*v6 + 56))(v6);
  v9 = (*(*a3[1] + 16))(a3[1]);
  v10 = (*(*v6 + 40))(v6);
  v11 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v12 = a3[1];
  if (v12 && (*(*v12 + 32))(v12) != 17)
  {
    v13 = a3[1];
    if (v13)
    {
      if ((*(*v13 + 32))(v13) == 18)
      {
        goto LABEL_15;
      }

      v14 = a3[1];
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  if (*(a1[10] + 190) == 1)
  {
    v15 = v10 == 2 && v11 == 2;
    if (v15 || (v10 == 2 ? (v16 = v11 == 3) : (v16 = 0), v16))
    {
      operator new();
    }

    v17 = v10 == 3 && v11 == 2;
    if (v17 || (v10 == 3 ? (v18 = v11 == 3) : (v18 = 0), v18))
    {
      operator new();
    }

    v19 = v10 == 4 && v11 == 4;
    if (v19 || (v10 == 4 ? (v20 = v11 == 5) : (v20 = 0), v20))
    {
      operator new();
    }

    v21 = v10 == 5 && v11 == 4;
    if (v21 || (v10 == 5 ? (v22 = v11 == 5) : (v22 = 0), v22))
    {
      operator new();
    }
  }

  sub_2724D8(v10, v11, __p);
  v23 = sub_BC168(a1[8], __p);
  v24 = v23;
  v25 = a1[8] + 8;
  if (v25 != v23)
  {
    v37 = *(v23 + 16);
    result = sub_272AD4(v7, v9, a1, &v37, v8);
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_54:
    v27 = result;
    operator delete(__p[0]);
    result = v27;
    if (v25 != v24)
    {
      return result;
    }

    goto LABEL_55;
  }

  result = 0;
  if (v36 < 0)
  {
    goto LABEL_54;
  }

LABEL_50:
  if (v25 != v24)
  {
    return result;
  }

LABEL_55:
  v28 = a1[6];
  v31 = *(v28 + 8);
  v29 = v28 + 8;
  v30 = v31;
  if (v31)
  {
    v32 = v29;
    v33 = v30;
    do
    {
      if (*(v33 + 32) >= v10)
      {
        v32 = v33;
      }

      v33 = *(v33 + 8 * (*(v33 + 32) < v10));
    }

    while (v33);
    if (v32 != v29 && v10 >= *(v32 + 32))
    {
      v34 = v29;
      do
      {
        if (*(v30 + 32) >= v11)
        {
          v34 = v30;
        }

        v30 = *(v30 + 8 * (*(v30 + 32) < v11));
      }

      while (v30);
      if (v34 != v29 && v11 >= *(v34 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_256B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_256B88(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 16))();
  v8 = (*(*v6 + 56))(v6);
  v9 = (*(*v6 + 48))(v6);
  v10 = *a2;
  v11 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v12 = a3[1];
  if (v12 && (*(*v12 + 32))(v12) != 17)
  {
    v13 = a3[1];
    if (v13)
    {
      if ((*(*v13 + 32))(v13) == 18)
      {
        goto LABEL_15;
      }

      v14 = a3[1];
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  if (*(a1[10] + 190) == 1)
  {
    if (v10 == 2 && v11 == 2 || v10 == 2 && v11 == 3)
    {
      operator new();
    }

    if (v10 == 3 && v11 == 2 || v10 == 3 && v11 == 3)
    {
      operator new();
    }

    if (v10 == 4 && v11 == 4 || v10 == 4 && v11 == 5)
    {
      operator new();
    }

    if (v10 == 5 && v11 == 4 || v10 == 5 && v11 == 5)
    {
      operator new();
    }
  }

  sub_274504(v10, v11, __p);
  v15 = sub_BC168(a1[8], __p);
  v16 = v15;
  v17 = a1[8] + 8;
  if (v17 != v15)
  {
    v29 = *(v15 + 16);
    result = sub_272AD4(v7, v9, a1, &v29, v8);
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_41:
    v19 = result;
    operator delete(__p[0]);
    result = v19;
    if (v17 != v16)
    {
      return result;
    }

    goto LABEL_42;
  }

  result = 0;
  if (v28 < 0)
  {
    goto LABEL_41;
  }

LABEL_38:
  if (v17 != v16)
  {
    return result;
  }

LABEL_42:
  v20 = a1[6];
  v23 = *(v20 + 8);
  v21 = v20 + 8;
  v22 = v23;
  if (v23)
  {
    v24 = v21;
    v25 = v22;
    do
    {
      if (*(v25 + 32) >= v10)
      {
        v24 = v25;
      }

      v25 = *(v25 + 8 * (*(v25 + 32) < v10));
    }

    while (v25);
    if (v24 != v21 && v10 >= *(v24 + 32))
    {
      v26 = v21;
      do
      {
        if (*(v22 + 32) >= v11)
        {
          v26 = v22;
        }

        v22 = *(v22 + 8 * (*(v22 + 32) < v11));
      }

      while (v22);
      if (v26 != v21 && v11 >= *(v26 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_2570AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2570C8(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 16))();
  v8 = (*(*v6 + 48))(v6);
  v9 = (*(*v6 + 56))(v6);
  v10 = *a2;
  v11 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v12 = a3[1];
  if (v12 && (*(*v12 + 32))(v12) != 17)
  {
    v13 = a3[1];
    if (v13)
    {
      if ((*(*v13 + 32))(v13) == 18)
      {
        goto LABEL_15;
      }

      v14 = a3[1];
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  if (*(a1[10] + 190) == 1)
  {
    if (v10 == 2 && v11 == 2)
    {
      goto LABEL_18;
    }

    if (v10 == 2 && v11 == 3 || v10 == 3 && v11 == 2)
    {
      operator new();
    }

    if (v10 == 3 && v11 == 3)
    {
LABEL_18:
      operator new();
    }

    if (v10 == 4 && v11 == 4)
    {
      goto LABEL_28;
    }

    if (v10 == 4 && v11 == 5 || v10 == 5 && v11 == 4)
    {
      operator new();
    }

    if (v10 == 5 && v11 == 5)
    {
LABEL_28:
      operator new();
    }
  }

  sub_274EEC(v10, v11, __p);
  v15 = sub_BC168(a1[8], __p);
  v16 = v15;
  v17 = a1[8] + 8;
  if (v17 != v15)
  {
    v29 = *(v15 + 16);
    result = sub_2754E8(v7, v8, a1, &v29, v9);
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_41:
    v19 = result;
    operator delete(__p[0]);
    result = v19;
    if (v17 != v16)
    {
      return result;
    }

    goto LABEL_42;
  }

  result = 0;
  if (v28 < 0)
  {
    goto LABEL_41;
  }

LABEL_38:
  if (v17 != v16)
  {
    return result;
  }

LABEL_42:
  v20 = a1[6];
  v23 = *(v20 + 8);
  v21 = v20 + 8;
  v22 = v23;
  if (v23)
  {
    v24 = v21;
    v25 = v22;
    do
    {
      if (*(v25 + 32) >= v10)
      {
        v24 = v25;
      }

      v25 = *(v25 + 8 * (*(v25 + 32) < v10));
    }

    while (v25);
    if (v24 != v21 && v10 >= *(v24 + 32))
    {
      v26 = v21;
      do
      {
        if (*(v22 + 32) >= v11)
        {
          v26 = v22;
        }

        v22 = *(v22 + 8 * (*(v22 + 32) < v11));
      }

      while (v22);
      if (v26 != v21 && v11 >= *(v26 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_2575E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_257604(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = (*(**a3 + 56))(*a3);
  v8 = (*(*v6 + 48))(v6);
  v9 = (*(*a3[1] + 16))(a3[1]);
  v10 = (*(*v6 + 40))(v6);
  v11 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v12 = a3[1];
  if (v12 && (*(*v12 + 32))(v12) != 17)
  {
    v13 = a3[1];
    if (v13)
    {
      if ((*(*v13 + 32))(v13) == 18)
      {
        goto LABEL_15;
      }

      v14 = a3[1];
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  if (*(a1[10] + 190) == 1)
  {
    v15 = v10 == 2 && v11 == 2;
    if (v15 || (v10 == 2 ? (v16 = v11 == 3) : (v16 = 0), v16 || (v10 == 3 ? (v17 = v11 == 2) : (v17 = 0), v17)))
    {
      operator new();
    }

    if (v10 == 3 && v11 == 3)
    {
      operator new();
    }

    v19 = v10 == 4 && v11 == 4;
    if (v19 || (v10 == 4 ? (v20 = v11 == 5) : (v20 = 0), v20 || (v10 == 5 ? (v21 = v11 == 4) : (v21 = 0), v21)))
    {
      operator new();
    }

    if (v10 == 5 && v11 == 5)
    {
      operator new();
    }

    if (v10 == 7 && v11 == 7)
    {
      operator new();
    }
  }

  sub_276E98(v10, v11, __p);
  v24 = sub_BC168(a1[8], __p);
  v25 = v24;
  v26 = a1[8] + 8;
  if (v26 != v24)
  {
    v38 = *(v24 + 16);
    result = sub_277494(v8, v9, a1, &v38, v7);
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_58:
    v28 = result;
    operator delete(__p[0]);
    result = v28;
    if (v26 != v25)
    {
      return result;
    }

    goto LABEL_59;
  }

  result = 0;
  if (v37 < 0)
  {
    goto LABEL_58;
  }

LABEL_54:
  if (v26 != v25)
  {
    return result;
  }

LABEL_59:
  v29 = a1[6];
  v32 = *(v29 + 8);
  v30 = v29 + 8;
  v31 = v32;
  if (v32)
  {
    v33 = v30;
    v34 = v31;
    do
    {
      if (*(v34 + 32) >= v10)
      {
        v33 = v34;
      }

      v34 = *(v34 + 8 * (*(v34 + 32) < v10));
    }

    while (v34);
    if (v33 != v30 && v10 >= *(v33 + 32))
    {
      v35 = v30;
      do
      {
        if (*(v31 + 32) >= v11)
        {
          v35 = v31;
        }

        v31 = *(v31 + 8 * (*(v31 + 32) < v11));
      }

      while (v31);
      if (v35 != v30 && v11 >= *(v35 + 32))
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_257B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (***sub_257B60(void *a1, unsigned int *a2, void *a3))()
{
  v7 = *a3;
  v6 = a3[1];
  v8 = (*(**a3 + 48))(*a3);
  v9 = (*(*v7 + 56))(v7);
  v10 = (*(*v6 + 48))(v6);
  v11 = (*(*v6 + 56))(v6);
  v12 = (*(*v7 + 40))(v7);
  v13 = *a2;
  v14 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = a3[1];
  if (v15 && (*(*v15 + 32))(v15) != 17)
  {
    v16 = a3[1];
    if (v16)
    {
      if ((*(*v16 + 32))(v16) == 18)
      {
        goto LABEL_15;
      }

      v17 = a3[1];
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  v50 = 0;
  if (*(a1[10] + 190) != 1)
  {
    goto LABEL_51;
  }

  if (v12 == 5 && v13 == 4 && v14 == 5)
  {
    v49 = 11;
    strcpy(__p, "(t*t)/(t*t)");
    v32 = sub_BC168(a1[9], __p);
    if ((a1[9] + 8) != v32)
    {
      v51 = *(v32 + 16);
      result = sub_19E1F4(a1, &v51, v8, v10, v9, v11);
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  if (v12 == 5 && v13 == 5 && v14 == 5)
  {
    v49 = 11;
    strcpy(__p, "(t*t)/(t*t)");
    v43 = sub_BC168(a1[9], __p);
    if ((a1[9] + 8) != v43)
    {
      v51 = *(v43 + 16);
      result = sub_19E1F4(a1, &v51, v8, v11, v9, v10);
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  if (v12 == 2 && v13 == 5 && v14 == 5)
  {
    v49 = 11;
    strcpy(__p, "(t+t)*(t/t)");
    v44 = sub_BC168(a1[9], __p);
    if ((a1[9] + 8) == v44)
    {
LABEL_84:
      result = 0;
LABEL_85:
      if (v49 < 0)
      {
        v45 = result;
        operator delete(__p[0]);
        return v45;
      }

      return result;
    }

LABEL_82:
    v51 = *(v44 + 16);
    result = sub_19E1F4(a1, &v51, v8, v9, v11, v10);
    goto LABEL_85;
  }

  if (v12 == 3 && v13 == 5 && v14 == 5)
  {
    v49 = 11;
    strcpy(__p, "(t-t)*(t/t)");
    v44 = sub_BC168(a1[9], __p);
    if ((a1[9] + 8) == v44)
    {
      goto LABEL_84;
    }

    goto LABEL_82;
  }

  if (v12 != 4 || v13 != 5 || v14 != 5)
  {
LABEL_51:
    sub_278E40(v12, v13, v14, __p);
    v28 = sub_BC168(a1[9], __p);
    v29 = v28;
    v30 = a1[9] + 8;
    if (v30 == v28)
    {
      result = 0;
      if ((v49 & 0x80000000) == 0)
      {
LABEL_53:
        if (v30 != v29)
        {
          return result;
        }

LABEL_59:
        v34 = a1[6];
        v37 = *(v34 + 8);
        v35 = v34 + 8;
        v36 = v37;
        if (v37)
        {
          v38 = v35;
          v39 = v36;
          do
          {
            if (*(v39 + 32) >= v12)
            {
              v38 = v39;
            }

            v39 = *(v39 + 8 * (*(v39 + 32) < v12));
          }

          while (v39);
          if (v38 != v35 && v12 >= *(v38 + 32))
          {
            v40 = v35;
            v41 = v36;
            do
            {
              if (*(v41 + 32) >= v13)
              {
                v40 = v41;
              }

              v41 = *(v41 + 8 * (*(v41 + 32) < v13));
            }

            while (v41);
            if (v40 != v35 && v13 >= *(v40 + 32))
            {
              v42 = v35;
              do
              {
                if (*(v36 + 32) >= v14)
                {
                  v42 = v36;
                }

                v36 = *(v36 + 8 * (*(v36 + 32) < v14));
              }

              while (v36);
              if (v42 != v35 && v14 >= *(v42 + 32))
              {
                operator new();
              }
            }
          }
        }

        return 0;
      }
    }

    else
    {
      v51 = *(v28 + 16);
      result = sub_19E1F4(a1, &v51, v8, v9, v10, v11);
      if ((v49 & 0x80000000) == 0)
      {
        goto LABEL_53;
      }
    }

    v33 = result;
    operator delete(__p[0]);
    result = v33;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_59;
  }

  sub_3608D0(__p, "((t*t)*t)/t");
  v46 = sub_19E154(a1, __p, v8, v9, v11, v10, &v50);
  if (v49 < 0)
  {
    v47 = v46;
    operator delete(__p[0]);
    v46 = v47;
  }

  if (v46)
  {
    return v50;
  }

  else
  {
    return 0;
  }
}

void sub_25825C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25828C(void *a1, unsigned int *a2, void *a3)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = (*(**a3 + 48))(*a3);
  v9 = (*(*v7 + 56))(v7);
  v10 = (*(*v6 + 56))(v6);
  v11 = (*(*v6 + 48))(v6);
  v12 = (*(*v7 + 40))(v7);
  v13 = *a2;
  v14 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = a3[1];
  if (v15 && (*(*v15 + 32))(v15) != 17)
  {
    v16 = a3[1];
    if (v16)
    {
      if ((*(*v16 + 32))(v16) == 18)
      {
        goto LABEL_15;
      }

      v17 = a3[1];
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  if (*(a1[10] + 190) != 1)
  {
    goto LABEL_30;
  }

  if (v12 == 5 && v13 == 4 && v14 == 5)
  {
    v43 = 11;
    strcpy(v42, "(t*t)/(t*t)");
    v26 = sub_BC168(a1[9], v42);
    v27 = v26;
    v28 = a1[9] + 8;
    if (v28 != v26)
    {
      v44 = *(v26 + 16);
      v29 = sub_199EC4(v11, a1, &v44, v8, v10, v9);
      goto LABEL_60;
    }

LABEL_66:
    v41 = 0;
    if ((v43 & 0x80000000) == 0)
    {
LABEL_62:
      if (v28 == v27)
      {
        return 0;
      }

      else
      {
        return v41;
      }
    }

LABEL_61:
    operator delete(v42[0]);
    goto LABEL_62;
  }

  if (v12 == 5 && v13 == 5 && v14 == 5)
  {
    v43 = 11;
    strcpy(v42, "(t*t)/(t*t)");
    v40 = sub_BC168(a1[9], v42);
    v27 = v40;
    v28 = a1[9] + 8;
    if (v28 != v40)
    {
      v44 = *(v40 + 16);
      v29 = sub_1919A0(v11, a1, &v44, v8, v9, v10);
LABEL_60:
      v41 = v29;
      if ((v43 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    goto LABEL_66;
  }

LABEL_30:
  sub_279C2C(v12, v13, v14, v42);
  v22 = sub_BC168(a1[9], v42);
  v23 = v22;
  v24 = a1[9] + 8;
  if (v24 != v22)
  {
    v44 = *(v22 + 16);
    result = sub_199EC4(v11, a1, &v44, v8, v9, v10);
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_37:
    v30 = result;
    operator delete(v42[0]);
    result = v30;
    if (v24 != v23)
    {
      return result;
    }

    goto LABEL_38;
  }

  result = 0;
  if (v43 < 0)
  {
    goto LABEL_37;
  }

LABEL_32:
  if (v24 != v23)
  {
    return result;
  }

LABEL_38:
  v31 = a1[6];
  v34 = *(v31 + 8);
  v32 = v31 + 8;
  v33 = v34;
  if (v34)
  {
    v35 = v32;
    v36 = v33;
    do
    {
      if (*(v36 + 32) >= v12)
      {
        v35 = v36;
      }

      v36 = *(v36 + 8 * (*(v36 + 32) < v12));
    }

    while (v36);
    if (v35 != v32 && v12 >= *(v35 + 32))
    {
      v37 = v32;
      v38 = v33;
      do
      {
        if (*(v38 + 32) >= v13)
        {
          v37 = v38;
        }

        v38 = *(v38 + 8 * (*(v38 + 32) < v13));
      }

      while (v38);
      if (v37 != v32 && v13 >= *(v37 + 32))
      {
        v39 = v32;
        do
        {
          if (*(v33 + 32) >= v14)
          {
            v39 = v33;
          }

          v33 = *(v33 + 8 * (*(v33 + 32) < v14));
        }

        while (v33);
        if (v39 != v32 && v14 >= *(v39 + 32))
        {
          operator new();
        }
      }
    }
  }

  return 0;
}

void sub_2587F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_258818(void *a1, unsigned int *a2, void *a3)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = (*(**a3 + 48))(*a3);
  v9 = (*(*v7 + 56))(v7);
  v10 = (*(*v6 + 56))(v6);
  v11 = (*(*v6 + 48))(v6);
  v12 = (*(*v7 + 40))(v7);
  v13 = *a2;
  v14 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = a3[1];
  if (v15 && (*(*v15 + 32))(v15) != 17)
  {
    v16 = a3[1];
    if (v16)
    {
      if ((*(*v16 + 32))(v16) == 18)
      {
        goto LABEL_15;
      }

      v17 = a3[1];
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  if (*(a1[10] + 190) != 1)
  {
    goto LABEL_30;
  }

  if (v12 == 5 && v13 == 4 && v14 == 5)
  {
    v43 = 11;
    strcpy(v42, "(t*t)/(t*t)");
    v26 = sub_BC168(a1[9], v42);
    v27 = v26;
    v28 = a1[9] + 8;
    if (v28 != v26)
    {
      v44 = *(v26 + 16);
      v29 = sub_1919A0(v11, a1, &v44, v8, v9, v10);
      goto LABEL_60;
    }

LABEL_66:
    v41 = 0;
    if ((v43 & 0x80000000) == 0)
    {
LABEL_62:
      if (v28 == v27)
      {
        return 0;
      }

      else
      {
        return v41;
      }
    }

LABEL_61:
    operator delete(v42[0]);
    goto LABEL_62;
  }

  if (v12 == 5 && v13 == 5 && v14 == 5)
  {
    v43 = 11;
    strcpy(v42, "(t*t)/(t*t)");
    v40 = sub_BC168(a1[9], v42);
    v27 = v40;
    v28 = a1[9] + 8;
    if (v28 != v40)
    {
      v44 = *(v40 + 16);
      v29 = sub_199EC4(v11, a1, &v44, v8, v10, v9);
LABEL_60:
      v41 = v29;
      if ((v43 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    goto LABEL_66;
  }

LABEL_30:
  sub_27AA20(v12, v13, v14, v42);
  v22 = sub_BC168(a1[9], v42);
  v23 = v22;
  v24 = a1[9] + 8;
  if (v24 != v22)
  {
    v44 = *(v22 + 16);
    result = sub_195C30(v11, a1, &v44, v8, v9, v10);
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_37:
    v30 = result;
    operator delete(v42[0]);
    result = v30;
    if (v24 != v23)
    {
      return result;
    }

    goto LABEL_38;
  }

  result = 0;
  if (v43 < 0)
  {
    goto LABEL_37;
  }

LABEL_32:
  if (v24 != v23)
  {
    return result;
  }

LABEL_38:
  v31 = a1[6];
  v34 = *(v31 + 8);
  v32 = v31 + 8;
  v33 = v34;
  if (v34)
  {
    v35 = v32;
    v36 = v33;
    do
    {
      if (*(v36 + 32) >= v12)
      {
        v35 = v36;
      }

      v36 = *(v36 + 8 * (*(v36 + 32) < v12));
    }

    while (v36);
    if (v35 != v32 && v12 >= *(v35 + 32))
    {
      v37 = v32;
      v38 = v33;
      do
      {
        if (*(v38 + 32) >= v13)
        {
          v37 = v38;
        }

        v38 = *(v38 + 8 * (*(v38 + 32) < v13));
      }

      while (v38);
      if (v37 != v32 && v13 >= *(v37 + 32))
      {
        v39 = v32;
        do
        {
          if (*(v33 + 32) >= v14)
          {
            v39 = v33;
          }

          v33 = *(v33 + 8 * (*(v33 + 32) < v14));
        }

        while (v33);
        if (v39 != v32 && v14 >= *(v39 + 32))
        {
          operator new();
        }
      }
    }
  }

  return 0;
}

void sub_258D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_258DA4(void *a1, unsigned int *a2, void *a3)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = (*(**a3 + 48))(*a3);
  v9 = (*(*v7 + 56))(v7);
  v10 = (*(*v6 + 48))(v6);
  v11 = (*(*v6 + 56))(v6);
  v12 = (*(*v7 + 40))(v7);
  v13 = *a2;
  v14 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = a3[1];
  if (v15 && (*(*v15 + 32))(v15) != 17)
  {
    v16 = a3[1];
    if (v16)
    {
      if ((*(*v16 + 32))(v16) == 18)
      {
        goto LABEL_15;
      }

      v17 = a3[1];
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  if (*(a1[10] + 190) != 1)
  {
    goto LABEL_30;
  }

  if (v12 == 5 && v13 == 4 && v14 == 5)
  {
    v43 = 11;
    strcpy(v42, "(t*t)/(t*t)");
    v26 = sub_BC168(a1[9], v42);
    v27 = v26;
    v28 = a1[9] + 8;
    if (v28 != v26)
    {
      v44 = *(v26 + 16);
      v29 = sub_195C30(v8, a1, &v44, v9, v10, v11);
      goto LABEL_60;
    }

LABEL_66:
    v41 = 0;
    if ((v43 & 0x80000000) == 0)
    {
LABEL_62:
      if (v28 == v27)
      {
        return 0;
      }

      else
      {
        return v41;
      }
    }

LABEL_61:
    operator delete(v42[0]);
    goto LABEL_62;
  }

  if (v12 == 5 && v13 == 5 && v14 == 5)
  {
    v43 = 11;
    strcpy(v42, "(t*t)/(t*t)");
    v40 = sub_BC168(a1[9], v42);
    v27 = v40;
    v28 = a1[9] + 8;
    if (v28 != v40)
    {
      v44 = *(v40 + 16);
      v29 = sub_195C30(v8, a1, &v44, v9, v11, v10);
LABEL_60:
      v41 = v29;
      if ((v43 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    goto LABEL_66;
  }

LABEL_30:
  sub_27B814(v12, v13, v14, v42);
  v22 = sub_BC168(a1[9], v42);
  v23 = v22;
  v24 = a1[9] + 8;
  if (v24 != v22)
  {
    v44 = *(v22 + 16);
    result = sub_1919A0(v8, a1, &v44, v9, v10, v11);
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_37:
    v30 = result;
    operator delete(v42[0]);
    result = v30;
    if (v24 != v23)
    {
      return result;
    }

    goto LABEL_38;
  }

  result = 0;
  if (v43 < 0)
  {
    goto LABEL_37;
  }

LABEL_32:
  if (v24 != v23)
  {
    return result;
  }

LABEL_38:
  v31 = a1[6];
  v34 = *(v31 + 8);
  v32 = v31 + 8;
  v33 = v34;
  if (v34)
  {
    v35 = v32;
    v36 = v33;
    do
    {
      if (*(v36 + 32) >= v12)
      {
        v35 = v36;
      }

      v36 = *(v36 + 8 * (*(v36 + 32) < v12));
    }

    while (v36);
    if (v35 != v32 && v12 >= *(v35 + 32))
    {
      v37 = v32;
      v38 = v33;
      do
      {
        if (*(v38 + 32) >= v13)
        {
          v37 = v38;
        }

        v38 = *(v38 + 8 * (*(v38 + 32) < v13));
      }

      while (v38);
      if (v37 != v32 && v13 >= *(v37 + 32))
      {
        v39 = v32;
        do
        {
          if (*(v33 + 32) >= v14)
          {
            v39 = v33;
          }

          v33 = *(v33 + 8 * (*(v33 + 32) < v14));
        }

        while (v33);
        if (v39 != v32 && v14 >= *(v39 + 32))
        {
          operator new();
        }
      }
    }
  }

  return 0;
}

void sub_25930C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_259330(void *a1, unsigned int *a2, void *a3)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = (*(**a3 + 48))(*a3);
  v9 = (*(*v7 + 56))(v7);
  v10 = (*(*v6 + 48))(v6);
  v11 = (*(*v6 + 56))(v6);
  v12 = (*(*v7 + 40))(v7);
  v13 = *a2;
  v14 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = a3[1];
  if (v15 && (*(*v15 + 32))(v15) != 17)
  {
    v16 = a3[1];
    if (v16)
    {
      if ((*(*v16 + 32))(v16) == 18)
      {
        goto LABEL_15;
      }

      v17 = a3[1];
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  if (*(a1[10] + 190) != 1)
  {
    goto LABEL_30;
  }

  if (v12 == 5 && v13 == 4 && v14 == 5)
  {
    v43 = 11;
    strcpy(v42, "(t*t)/(t*t)");
    v26 = sub_BC168(a1[9], v42);
    v27 = v26;
    v28 = a1[9] + 8;
    if (v28 != v26)
    {
      v44 = *(v26 + 16);
      v29 = sub_1A8E00(v8, a1, &v44, v10, v9, v11);
      goto LABEL_60;
    }

LABEL_66:
    v41 = 0;
    if ((v43 & 0x80000000) == 0)
    {
LABEL_62:
      if (v28 == v27)
      {
        return 0;
      }

      else
      {
        return v41;
      }
    }

LABEL_61:
    operator delete(v42[0]);
    goto LABEL_62;
  }

  if (v12 == 5 && v13 == 5 && v14 == 5)
  {
    v43 = 11;
    strcpy(v42, "(t*t)/(t*t)");
    v40 = sub_BC168(a1[9], v42);
    v27 = v40;
    v28 = a1[9] + 8;
    if (v28 != v40)
    {
      v44 = *(v40 + 16);
      v29 = sub_1A8E00(v8, a1, &v44, v11, v9, v10);
LABEL_60:
      v41 = v29;
      if ((v43 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    goto LABEL_66;
  }

LABEL_30:
  sub_27C60C(v12, v13, v14, v42);
  v22 = sub_BC168(a1[9], v42);
  v23 = v22;
  v24 = a1[9] + 8;
  if (v24 != v22)
  {
    v44 = *(v22 + 16);
    result = sub_1A8E00(v8, a1, &v44, v9, v10, v11);
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_37:
    v30 = result;
    operator delete(v42[0]);
    result = v30;
    if (v24 != v23)
    {
      return result;
    }

    goto LABEL_38;
  }

  result = 0;
  if (v43 < 0)
  {
    goto LABEL_37;
  }

LABEL_32:
  if (v24 != v23)
  {
    return result;
  }

LABEL_38:
  v31 = a1[6];
  v34 = *(v31 + 8);
  v32 = v31 + 8;
  v33 = v34;
  if (v34)
  {
    v35 = v32;
    v36 = v33;
    do
    {
      if (*(v36 + 32) >= v12)
      {
        v35 = v36;
      }

      v36 = *(v36 + 8 * (*(v36 + 32) < v12));
    }

    while (v36);
    if (v35 != v32 && v12 >= *(v35 + 32))
    {
      v37 = v32;
      v38 = v33;
      do
      {
        if (*(v38 + 32) >= v13)
        {
          v37 = v38;
        }

        v38 = *(v38 + 8 * (*(v38 + 32) < v13));
      }

      while (v38);
      if (v37 != v32 && v13 >= *(v37 + 32))
      {
        v39 = v32;
        do
        {
          if (*(v33 + 32) >= v14)
          {
            v39 = v33;
          }

          v33 = *(v33 + 8 * (*(v33 + 32) < v14));
        }

        while (v33);
        if (v39 != v32 && v14 >= *(v39 + 32))
        {
          operator new();
        }
      }
    }
  }

  return 0;
}

void sub_259898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2598BC(void *a1, unsigned int *a2, void *a3)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = (*(**a3 + 48))(*a3);
  v9 = (*(*v7 + 56))(v7);
  v10 = (*(*v6 + 48))(v6);
  v11 = (*(*v6 + 56))(v6);
  v12 = (*(*v7 + 40))(v7);
  v13 = *a2;
  v14 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = a3[1];
  if (v15 && (*(*v15 + 32))(v15) != 17)
  {
    v16 = a3[1];
    if (v16)
    {
      if ((*(*v16 + 32))(v16) == 18)
      {
        goto LABEL_15;
      }

      v17 = a3[1];
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  v63 = 0;
  if (*(a1[10] + 190) == 1)
  {
    if (v12 == 2 && v13 == 2 && v14 == 2)
    {
      HIBYTE(v62) = 7;
      strcpy(__p, "(t+t)+t");
      v35 = sub_BC168(a1[8], __p);
      v36 = v35;
      v37 = a1[8] + 8;
      if (v37 == v35)
      {
        goto LABEL_84;
      }

      v64 = *(v35 + 16);
      v38 = sub_2700C8(v8 + v10, a1, &v64, v9, v11);
    }

    else
    {
      if (v12 == 2 && v13 == 3 && v14 == 2)
      {
        HIBYTE(v62) = 7;
        strcpy(__p, "(t+t)-t");
        v39 = sub_BC168(a1[8], __p);
        v36 = v39;
        v37 = a1[8] + 8;
        if (v37 == v39)
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v12 != 3 || v13 != 3 || v14 != 3)
        {
          if (v12 != 4 || v13 != 4 || v14 != 4)
          {
            v27 = v12 == 4 && v13 == 5;
            if (v27 && v14 == 4)
            {
              sub_3608D0(__p, "(t*t)/t");
              v34 = sub_26FA34(a1, __p, v9, v11, &v63, v8 / v10);
              goto LABEL_92;
            }

            if (v12 == 5 && v13 == 4 && v14 == 5)
            {
              sub_3608D0(__p, "t/(t*t)");
              v34 = sub_26FA34(a1, __p, v9, v11, &v63, v8 * v10);
              goto LABEL_92;
            }

            v32 = v12 == 5 && v13 == 5;
            if (v32 && v14 == 5)
            {
              sub_3608D0(__p, "(t*t)/t");
              v34 = sub_26FA34(a1, __p, v11, v9, &v63, v8 / v10);
              goto LABEL_92;
            }

            if (v14 != 5)
            {
              v27 = 0;
            }

            if (v27)
            {
              sub_3608D0(__p, "t*(t*t)");
              v34 = sub_26FA34(a1, __p, v9, v11, &v63, v8 / v10);
LABEL_92:
              if (SHIBYTE(v62) < 0)
              {
                v42 = v34;
                operator delete(__p[0]);
                v34 = v42;
              }

              if (v34)
              {
                return v63;
              }

              else
              {
                return 0;
              }
            }

            if (v14 == 4 && v32)
            {
              sub_3608D0(__p, "t/(t*t)");
              v34 = sub_26FA34(a1, __p, v9, v11, &v63, v8 / v10);
              goto LABEL_92;
            }

            if (v8 == v10 && v12 == 4 && v14 == 4 && (v13 & 0xFFFFFFFE) == 2)
            {
              __p[1] = 0;
              v62 = 0x700000000000000;
              __p[0] = 0;
              if (v13 == 2)
              {
                v59 = 11124;
              }

              else
              {
                v59 = 11636;
              }

              *(__p + 3) = v59 | 0x29740000;
              LODWORD(__p[0]) = 1948789364;
              if (sub_26FA34(a1, __p, v9, v11, &v63, v8))
              {
                result = v63;
              }

              else
              {
                result = 0;
              }

              if (SHIBYTE(v62) < 0)
              {
                v60 = result;
                operator delete(__p[0]);
                return v60;
              }

              return result;
            }

            goto LABEL_112;
          }

          HIBYTE(v62) = 7;
          strcpy(__p, "(t*t)*t");
          v40 = sub_BC168(a1[8], __p);
          v36 = v40;
          v37 = a1[8] + 8;
          if (v37 != v40)
          {
            v64 = *(v40 + 16);
            v38 = sub_2700C8(v8 * v10, a1, &v64, v9, v11);
            goto LABEL_83;
          }

LABEL_84:
          if (SHIBYTE(v62) < 0)
          {
            operator delete(__p[0]);
          }

          if (v37 == v36)
          {
            return 0;
          }

          else
          {
            return v63;
          }
        }

        HIBYTE(v62) = 7;
        strcpy(__p, "(t-t)+t");
        v39 = sub_BC168(a1[8], __p);
        v36 = v39;
        v37 = a1[8] + 8;
        if (v37 == v39)
        {
          goto LABEL_84;
        }
      }

      v64 = *(v39 + 16);
      v38 = sub_2700C8(v8 - v10, a1, &v64, v9, v11);
    }

LABEL_83:
    v63 = v38;
    goto LABEL_84;
  }

LABEL_112:
  sub_27D3FC(v12, v13, v14, __p);
  v47 = sub_BC168(a1[9], __p);
  v48 = v47;
  v49 = a1[9] + 8;
  if (v49 != v47)
  {
    v64 = *(v47 + 16);
    v63 = sub_1A4B74(v8, v10, a1, &v64, v9, v11);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p[0]);
    if (v49 != v48)
    {
      return v63;
    }
  }

  else if (v49 != v48)
  {
    return v63;
  }

  v50 = a1[6];
  v53 = *(v50 + 8);
  v51 = v50 + 8;
  v52 = v53;
  if (v53)
  {
    v54 = v51;
    v55 = v52;
    do
    {
      if (*(v55 + 32) >= v12)
      {
        v54 = v55;
      }

      v55 = *(v55 + 8 * (*(v55 + 32) < v12));
    }

    while (v55);
    if (v54 != v51 && v12 >= *(v54 + 32))
    {
      v56 = v51;
      v57 = v52;
      do
      {
        if (*(v57 + 32) >= v13)
        {
          v56 = v57;
        }

        v57 = *(v57 + 8 * (*(v57 + 32) < v13));
      }

      while (v57);
      if (v56 != v51 && v13 >= *(v56 + 32))
      {
        v58 = v51;
        do
        {
          if (*(v52 + 32) >= v14)
          {
            v58 = v52;
          }

          v52 = *(v52 + 8 * (*(v52 + 32) < v14));
        }

        while (v52);
        if (v58 != v51 && v14 >= *(v58 + 32))
        {
          operator new();
        }
      }
    }
  }

  return 0;
}

void sub_25A0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25A13C(void *a1, unsigned int *a2, void *a3)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = (*(**a3 + 48))(*a3);
  v9 = (*(*v7 + 56))(v7);
  v10 = (*(*v6 + 48))(v6);
  v11 = (*(*v6 + 56))(v6);
  v12 = (*(*v7 + 40))(v7);
  v13 = *a2;
  v14 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = a3[1];
  if (v15 && (*(*v15 + 32))(v15) != 17)
  {
    v16 = a3[1];
    if (v16)
    {
      if ((*(*v16 + 32))(v16) == 18)
      {
        goto LABEL_15;
      }

      v17 = a3[1];
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  v66 = 0;
  if (*(a1[10] + 190) == 1)
  {
    if (v12 == 2 && v13 == 2 && v14 == 2)
    {
      HIBYTE(v65) = 7;
      strcpy(&__p, "(t+t)+t");
      v36 = sub_BC168(a1[8], &__p);
      v37 = v36;
      v38 = a1[8] + 8;
      if (v38 == v36)
      {
        goto LABEL_87;
      }

      v67 = *(v36 + 16);
      v39 = sub_2700C8(v8 + v10, a1, &v67, v9, v11);
    }

    else if (v12 == 2 && v13 == 3 && v14 == 2)
    {
      HIBYTE(v65) = 7;
      strcpy(&__p, "(t+t)-t");
      v40 = sub_BC168(a1[8], &__p);
      v37 = v40;
      v38 = a1[8] + 8;
      if (v38 == v40)
      {
        goto LABEL_87;
      }

      v67 = *(v40 + 16);
      v39 = sub_2700C8(v8 - v10, a1, &v67, v9, v11);
    }

    else
    {
      if (v12 != 3 || v13 != 3 || v14 != 3)
      {
        if (v12 != 4 || v13 != 4 || v14 != 4)
        {
          v27 = v12 == 4 && v13 == 5;
          if (v27 && v14 == 4)
          {
            sub_3608D0(&__p, "(t*t)/t");
            v35 = sub_26FA34(a1, &__p, v9, v11, &v66, v8 / v10);
            goto LABEL_95;
          }

          v30 = v12 == 5 && v13 == 4;
          if (v30 && v14 == 5)
          {
            sub_3608D0(&__p, "(t*t)*t");
            v35 = sub_26FA34(a1, &__p, v9, v11, &v66, 1.0 / (v8 * v10));
            goto LABEL_95;
          }

          v33 = v12 == 5 && v13 == 5;
          if (v33 && v14 == 5)
          {
            sub_3608D0(&__p, "(t*t)/t");
            v35 = sub_26FA34(a1, &__p, v9, v11, &v66, v10 / v8);
            goto LABEL_95;
          }

          if (v14 != 5)
          {
            v27 = 0;
          }

          if (v27)
          {
            sub_3608D0(&__p, "t*(t/t)");
            v35 = sub_26FA34(a1, &__p, v9, v11, &v66, v8 * v10);
LABEL_95:
            if (SHIBYTE(v65) < 0)
            {
              v44 = v35;
              operator delete(__p);
              v35 = v44;
            }

            if (v35)
            {
              return v66;
            }

            else
            {
              return 0;
            }
          }

          if (v14 == 4 && v33)
          {
            sub_3608D0(&__p, "t*(t/t)");
            v35 = sub_26FA34(a1, &__p, v9, v11, &v66, 1.0 / (v8 * v10));
            goto LABEL_95;
          }

          if (v14 == 2 && v30)
          {
            sub_3608D0(&__p, "(t*t)*(t+t)");
            v35 = sub_18CA58(a1, &__p, v9, v11, &v66, 1.0 / v8, v10);
            goto LABEL_95;
          }

          if (v14 != 3)
          {
            v30 = 0;
          }

          if (v30)
          {
            sub_3608D0(&__p, "(t*t)*(t-t)");
            v35 = sub_18CA58(a1, &__p, v9, v11, &v66, 1.0 / v8, v10);
            goto LABEL_95;
          }

          if (v8 == v10 && v12 == 4 && v14 == 4)
          {
            if ((v13 & 0xFFFFFFFE) == 2)
            {
              v64 = 0;
              v65 = 0x700000000000000;
              __p = 0;
              if (v13 == 2)
              {
                v47 = 11124;
              }

              else
              {
                v47 = 11636;
              }

              *(&__p + 3) = v47 | 0x29740000;
              LODWORD(__p) = 1948789364;
              v61 = sub_26FA34(a1, &__p, v9, v11, &v66, v8);
LABEL_157:
              if (v61)
              {
                v62 = v66;
              }

              else
              {
                v62 = 0;
              }

              if (SHIBYTE(v65) < 0)
              {
                operator delete(__p);
              }

              return v62;
            }
          }

          else if (v8 == v10 && v12 == 5 && v14 == 5 && (v13 & 0xFFFFFFFE) == 2)
          {
            v64 = 0;
            v65 = 0x700000000000000;
            __p = 0x742F2974000000;
            if (v13 == 2)
            {
              v48 = 1949004840;
            }

            else
            {
              v48 = 1949135912;
            }

            LODWORD(__p) = v48;
            v61 = sub_26A4FC(a1, &__p, v9, v11, &v66, v8);
            goto LABEL_157;
          }

          goto LABEL_126;
        }

        HIBYTE(v65) = 7;
        strcpy(&__p, "(t*t)*t");
        v42 = sub_BC168(a1[8], &__p);
        v37 = v42;
        v38 = a1[8] + 8;
        if (v38 != v42)
        {
          v67 = *(v42 + 16);
          v39 = sub_2700C8(v8 * v10, a1, &v67, v9, v11);
          goto LABEL_86;
        }

LABEL_87:
        if (SHIBYTE(v65) < 0)
        {
          operator delete(__p);
        }

        if (v38 == v37)
        {
          return 0;
        }

        else
        {
          return v66;
        }
      }

      HIBYTE(v65) = 7;
      strcpy(&__p, "(t+t)-t");
      v41 = sub_BC168(a1[8], &__p);
      v37 = v41;
      v38 = a1[8] + 8;
      if (v38 == v41)
      {
        goto LABEL_87;
      }

      v67 = *(v41 + 16);
      v39 = sub_2700C8(v10 - v8, a1, &v67, v9, v11);
    }

LABEL_86:
    v66 = v39;
    goto LABEL_87;
  }

LABEL_126:
  sub_27E1F4(v12, v13, v14, &__p);
  v49 = sub_BC168(a1[9], &__p);
  v50 = v49;
  v51 = a1[9] + 8;
  if (v51 != v49)
  {
    v67 = *(v49 + 16);
    v66 = sub_18CAF8(v8, v10, a1, &v67, v9, v11);
  }

  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p);
    if (v51 != v50)
    {
      return v66;
    }
  }

  else if (v51 != v50)
  {
    return v66;
  }

  v52 = a1[6];
  v55 = *(v52 + 8);
  v53 = v52 + 8;
  v54 = v55;
  if (v55)
  {
    v56 = v53;
    v57 = v54;
    do
    {
      if (*(v57 + 32) >= v12)
      {
        v56 = v57;
      }

      v57 = *(v57 + 8 * (*(v57 + 32) < v12));
    }

    while (v57);
    if (v56 != v53 && v12 >= *(v56 + 32))
    {
      v58 = v53;
      v59 = v54;
      do
      {
        if (*(v59 + 32) >= v13)
        {
          v58 = v59;
        }

        v59 = *(v59 + 8 * (*(v59 + 32) < v13));
      }

      while (v59);
      if (v58 != v53 && v13 >= *(v58 + 32))
      {
        v60 = v53;
        do
        {
          if (*(v54 + 32) >= v14)
          {
            v60 = v54;
          }

          v54 = *(v54 + 8 * (*(v54 + 32) < v14));
        }

        while (v54);
        if (v60 != v53 && v14 >= *(v60 + 32))
        {
          operator new();
        }
      }
    }
  }

  return 0;
}

void sub_25AAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25AAF8(void *a1, unsigned int *a2, void *a3)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = (*(**a3 + 48))(*a3);
  v9 = (*(*v7 + 56))(v7);
  v10 = (*(*v6 + 48))(v6);
  v11 = (*(*v6 + 56))(v6);
  v12 = (*(*v7 + 40))(v7);
  v13 = *a2;
  v14 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = a3[1];
  if (v15 && (*(*v15 + 32))(v15) != 17)
  {
    v16 = a3[1];
    if (v16)
    {
      if ((*(*v16 + 32))(v16) == 18)
      {
        goto LABEL_15;
      }

      v17 = a3[1];
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  v63 = 0;
  if (*(a1[10] + 190) == 1)
  {
    if (v12 == 2 && v13 == 2 && v14 == 2)
    {
      HIBYTE(v62) = 7;
      strcpy(__p, "(t+t)+t");
      v35 = sub_BC168(a1[8], __p);
      v36 = v35;
      v37 = a1[8] + 8;
      if (v37 == v35)
      {
        goto LABEL_84;
      }
    }

    else
    {
      if (v12 == 2 && v13 == 3 && v14 == 2)
      {
        HIBYTE(v62) = 7;
        strcpy(__p, "(t+t)-t");
        v39 = sub_BC168(a1[8], __p);
        v36 = v39;
        v37 = a1[8] + 8;
        if (v37 == v39)
        {
          goto LABEL_84;
        }

        v64 = *(v39 + 16);
        v38 = sub_2700C8(v8 - v10, a1, &v64, v9, v11);
LABEL_83:
        v63 = v38;
        goto LABEL_84;
      }

      if (v12 != 3 || v13 != 3 || v14 != 3)
      {
        if (v12 != 4 || v13 != 4 || v14 != 4)
        {
          v27 = v12 == 4 && v13 == 5;
          if (v27 && v14 == 4)
          {
            sub_3608D0(__p, "(t*t)/t");
            v34 = sub_26FA34(a1, __p, v9, v11, &v63, v8 / v10);
            goto LABEL_92;
          }

          if (v12 == 5 && v13 == 4 && v14 == 5)
          {
            sub_3608D0(__p, "t*(t/t)");
            v34 = sub_26FA34(a1, __p, v11, v9, &v63, v8 / v10);
            goto LABEL_92;
          }

          v32 = v12 == 5 && v13 == 5;
          if (v32 && v14 == 5)
          {
            sub_3608D0(__p, "t/(t*t)");
            v34 = sub_26FA34(a1, __p, v9, v11, &v63, v8 * v10);
            goto LABEL_92;
          }

          if (v14 != 5)
          {
            v27 = 0;
          }

          if (v27)
          {
            sub_3608D0(__p, "(t*t)/t");
            v34 = sub_26FA34(a1, __p, v9, v11, &v63, v8 * v10);
LABEL_92:
            if (SHIBYTE(v62) < 0)
            {
              v42 = v34;
              operator delete(__p[0]);
              v34 = v42;
            }

            if (v34)
            {
              return v63;
            }

            else
            {
              return 0;
            }
          }

          if (v14 == 4 && v32)
          {
            sub_3608D0(__p, "t/(t*t)");
            v34 = sub_26FA34(a1, __p, v9, v11, &v63, v8 / v10);
            goto LABEL_92;
          }

          if (v8 == v10 && v12 == 4 && v14 == 4 && (v13 & 0xFFFFFFFE) == 2)
          {
            __p[1] = 0;
            v62 = 0x700000000000000;
            __p[0] = 0;
            if (v13 == 2)
            {
              v59 = 11124;
            }

            else
            {
              v59 = 11636;
            }

            *(__p + 3) = v59 | 0x29740000;
            LODWORD(__p[0]) = 1948789364;
            if (sub_26FA34(a1, __p, v9, v11, &v63, v8))
            {
              result = v63;
            }

            else
            {
              result = 0;
            }

            if (SHIBYTE(v62) < 0)
            {
              v60 = result;
              operator delete(__p[0]);
              return v60;
            }

            return result;
          }

          goto LABEL_112;
        }

        HIBYTE(v62) = 7;
        strcpy(__p, "(t*t)*t");
        v40 = sub_BC168(a1[8], __p);
        v36 = v40;
        v37 = a1[8] + 8;
        if (v37 != v40)
        {
          v64 = *(v40 + 16);
          v38 = sub_2700C8(v8 * v10, a1, &v64, v9, v11);
          goto LABEL_83;
        }

LABEL_84:
        if (SHIBYTE(v62) < 0)
        {
          operator delete(__p[0]);
        }

        if (v37 == v36)
        {
          return 0;
        }

        else
        {
          return v63;
        }
      }

      HIBYTE(v62) = 7;
      strcpy(__p, "t-(t+t)");
      v35 = sub_BC168(a1[8], __p);
      v36 = v35;
      v37 = a1[8] + 8;
      if (v37 == v35)
      {
        goto LABEL_84;
      }
    }

    v64 = *(v35 + 16);
    v38 = sub_2700C8(v8 + v10, a1, &v64, v9, v11);
    goto LABEL_83;
  }

LABEL_112:
  sub_27EFF0(v12, v13, v14, __p);
  v47 = sub_BC168(a1[9], __p);
  v48 = v47;
  v49 = a1[9] + 8;
  if (v49 != v47)
  {
    v64 = *(v47 + 16);
    v63 = sub_1B85F0(v8, v10, a1, &v64, v9, v11);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p[0]);
    if (v49 != v48)
    {
      return v63;
    }
  }

  else if (v49 != v48)
  {
    return v63;
  }

  v50 = a1[6];
  v53 = *(v50 + 8);
  v51 = v50 + 8;
  v52 = v53;
  if (v53)
  {
    v54 = v51;
    v55 = v52;
    do
    {
      if (*(v55 + 32) >= v12)
      {
        v54 = v55;
      }

      v55 = *(v55 + 8 * (*(v55 + 32) < v12));
    }

    while (v55);
    if (v54 != v51 && v12 >= *(v54 + 32))
    {
      v56 = v51;
      v57 = v52;
      do
      {
        if (*(v57 + 32) >= v13)
        {
          v56 = v57;
        }

        v57 = *(v57 + 8 * (*(v57 + 32) < v13));
      }

      while (v57);
      if (v56 != v51 && v13 >= *(v56 + 32))
      {
        v58 = v51;
        do
        {
          if (*(v52 + 32) >= v14)
          {
            v58 = v52;
          }

          v52 = *(v52 + 8 * (*(v52 + 32) < v14));
        }

        while (v52);
        if (v58 != v51 && v14 >= *(v58 + 32))
        {
          operator new();
        }
      }
    }
  }

  return 0;
}

void sub_25B334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25B378(void *a1, unsigned int *a2, void *a3)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = (*(**a3 + 48))(*a3);
  v9 = (*(*v7 + 56))(v7);
  v10 = (*(*v6 + 48))(v6);
  v11 = (*(*v6 + 56))(v6);
  v12 = (*(*v7 + 40))(v7);
  v13 = *a2;
  v14 = (*(*v6 + 40))(v6);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_7:
      *a3 = 0;
      goto LABEL_8;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v15 = a3[1];
  if (v15 && (*(*v15 + 32))(v15) != 17)
  {
    v16 = a3[1];
    if (v16)
    {
      if ((*(*v16 + 32))(v16) == 18)
      {
        goto LABEL_15;
      }

      v17 = a3[1];
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    a3[1] = 0;
  }

LABEL_15:
  v63 = 0;
  if (*(a1[10] + 190) == 1)
  {
    if (v12 == 2 && v13 == 2 && v14 == 2)
    {
      HIBYTE(v62) = 7;
      strcpy(__p, "(t+t)+t");
      v32 = sub_BC168(a1[8], __p);
      v33 = v32;
      v34 = a1[8] + 8;
      if (v34 == v32)
      {
        goto LABEL_74;
      }

      v64 = *(v32 + 16);
      v35 = sub_2700C8(v8 + v10, a1, &v64, v9, v11);
    }

    else if (v12 == 2 && v13 == 3 && v14 == 2)
    {
      HIBYTE(v62) = 7;
      strcpy(__p, "(t+t)-t");
      v36 = sub_BC168(a1[8], __p);
      v33 = v36;
      v34 = a1[8] + 8;
      if (v34 == v36)
      {
        goto LABEL_74;
      }

      v64 = *(v36 + 16);
      v35 = sub_2700C8(v8 - v10, a1, &v64, v9, v11);
    }

    else
    {
      if (v12 != 3 || v13 != 3 || v14 != 3)
      {
        if (v12 != 4 || v13 != 4 || v14 != 4)
        {
          v27 = v12 == 4 && v13 == 5;
          if (v27 && v14 == 4)
          {
            sub_3608D0(__p, "(t*t)/t");
            v31 = sub_26FA34(a1, __p, v9, v11, &v63, v8 / v10);
            goto LABEL_81;
          }

          if (v12 == 5 && v13 == 4 && v14 == 5)
          {
            sub_3608D0(__p, "(t*t)/t");
            v31 = sub_26FA34(a1, __p, v9, v11, &v63, v10 / v8);
            goto LABEL_81;
          }

          if (v14 != 5)
          {
            v27 = 0;
          }

          if (v27)
          {
            sub_3608D0(__p, "(t*t)*t");
            v31 = sub_26FA34(a1, __p, v9, v11, &v63, v8 / v10);
LABEL_81:
            if (SHIBYTE(v62) < 0)
            {
              v40 = v31;
              operator delete(__p[0]);
              v31 = v40;
            }

            if (v31)
            {
              return v63;
            }

            else
            {
              return 0;
            }
          }

          v42 = v12 == 5 && v13 == 5;
          if (v42 && v14 == 4)
          {
            sub_3608D0(__p, "(t*t)/t");
            v31 = sub_26FA34(a1, __p, v9, v11, &v63, 1.0 / (v8 * v10));
            goto LABEL_81;
          }

          if (v14 != 5)
          {
            v42 = 0;
          }

          if (v42)
          {
            sub_3608D0(__p, "(t*t)*t");
            v31 = sub_26A4FC(a1, __p, v9, v11, &v63, 1.0 / (v8 * v10));
            goto LABEL_81;
          }

          if (v8 == v10 && v12 == 4 && v14 == 4 && (v13 & 0xFFFFFFFE) == 2)
          {
            __p[1] = 0;
            v62 = 0x700000000000000;
            __p[0] = 0;
            if (v13 == 2)
            {
              v59 = 11124;
            }

            else
            {
              v59 = 11636;
            }

            *(__p + 3) = v59 | 0x29740000;
            LODWORD(__p[0]) = 1948789364;
            if (sub_26FA34(a1, __p, v9, v11, &v63, v8))
            {
              result = v63;
            }

            else
            {
              result = 0;
            }

            if (SHIBYTE(v62) < 0)
            {
              v60 = result;
              operator delete(__p[0]);
              return v60;
            }

            return result;
          }

          goto LABEL_111;
        }

        HIBYTE(v62) = 7;
        strcpy(__p, "(t*t)*t");
        v38 = sub_BC168(a1[8], __p);
        v33 = v38;
        v34 = a1[8] + 8;
        if (v34 != v38)
        {
          v64 = *(v38 + 16);
          v35 = sub_2700C8(v8 * v10, a1, &v64, v9, v11);
          goto LABEL_73;
        }

LABEL_74:
        if (SHIBYTE(v62) < 0)
        {
          operator delete(__p[0]);
        }

        if (v34 == v33)
        {
          return 0;
        }

        else
        {
          return v63;
        }
      }

      HIBYTE(v62) = 7;
      strcpy(__p, "(t+t)-t");
      v37 = sub_BC168(a1[8], __p);
      v33 = v37;
      v34 = a1[8] + 8;
      if (v34 == v37)
      {
        goto LABEL_74;
      }

      v64 = *(v37 + 16);
      v35 = sub_26AB90(v8 + v10, a1, &v64, v9, v11);
    }

LABEL_73:
    v63 = v35;
    goto LABEL_74;
  }

LABEL_111:
  sub_27FDE8(v12, v13, v14, __p);
  v47 = sub_BC168(a1[9], __p);
  v48 = v47;
  v49 = a1[9] + 8;
  if (v49 != v47)
  {
    v64 = *(v47 + 16);
    v63 = sub_28068C(v8, v10, a1, &v64, v9, v11);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p[0]);
    if (v49 != v48)
    {
      return v63;
    }
  }

  else if (v49 != v48)
  {
    return v63;
  }

  v50 = a1[6];
  v53 = *(v50 + 8);
  v51 = v50 + 8;
  v52 = v53;
  if (v53)
  {
    v54 = v51;
    v55 = v52;
    do
    {
      if (*(v55 + 32) >= v12)
      {
        v54 = v55;
      }

      v55 = *(v55 + 8 * (*(v55 + 32) < v12));
    }

    while (v55);
    if (v54 != v51 && v12 >= *(v54 + 32))
    {
      v56 = v51;
      v57 = v52;
      do
      {
        if (*(v57 + 32) >= v13)
        {
          v56 = v57;
        }

        v57 = *(v57 + 8 * (*(v57 + 32) < v13));
      }

      while (v57);
      if (v56 != v51 && v13 >= *(v56 + 32))
      {
        v58 = v51;
        do
        {
          if (*(v52 + 32) >= v14)
          {
            v58 = v52;
          }

          v52 = *(v52 + 8 * (*(v52 + 32) < v14));
        }

        while (v52);
        if (v58 != v51 && v14 >= *(v58 + 32))
        {
          operator new();
        }
      }
    }
  }

  return 0;
}

void sub_25BBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (***sub_25BC00(void *a1, unsigned int *a2, void *a3))()
{
  v6 = a3[1];
  v40 = (*(**a3 + 40))();
  v7 = v6[4];
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *a2;
  v18 = *(v12 + 40);
  v19 = v6[5];
  if (!v10)
  {
    goto LABEL_18;
  }

  v20 = v9;
  do
  {
    v21 = *(v10 + 32);
    v15 = v21 >= v19;
    v22 = v21 < v19;
    if (v15)
    {
      v20 = v10;
    }

    v10 = *(v10 + 8 * v22);
  }

  while (v10);
  if (v20 == v9 || v19 < *(v20 + 32))
  {
LABEL_18:
    v20 = v9;
  }

  v23 = v6[1];
  v24 = v6[2];
  v25 = v6[3];
  v26 = *(v20 + 40);
  v27 = a3[1];
  if (v27 && (*(*v27 + 32))(v27) != 17)
  {
    v28 = a3[1];
    if (v28)
    {
      if ((*(*v28 + 32))(v28) == 18)
      {
        goto LABEL_26;
      }

      v29 = a3[1];
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_284CDC(v17, v18, v26, __p);
  v30 = sub_BC168(a1[9], __p);
  v31 = v30;
  v32 = a1[9] + 8;
  if (v32 != v30)
  {
    v43 = *(v30 + 16);
    result = sub_19E1F4(a1, &v43, v40, v23, v24, v25);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v34 = result;
    operator delete(__p[0]);
    result = v34;
    if (v32 != v31)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v32 != v31)
  {
    return result;
  }

LABEL_32:
  v35 = a1[6];
  v38 = *(v35 + 8);
  v36 = v35 + 8;
  v37 = v38;
  if (v38)
  {
    v39 = v36;
    do
    {
      if (*(v37 + 32) >= v17)
      {
        v39 = v37;
      }

      v37 = *(v37 + 8 * (*(v37 + 32) < v17));
    }

    while (v37);
    if (v39 != v36 && v17 >= *(v39 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25BED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25BEEC(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 40))();
  v8 = *(v6 + 4);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *a2;
  v19 = *(v13 + 40);
  v20 = *(v6 + 5);
  if (!v11)
  {
    goto LABEL_18;
  }

  v21 = v10;
  do
  {
    v22 = *(v11 + 32);
    v16 = v22 >= v20;
    v23 = v22 < v20;
    if (v16)
    {
      v21 = v11;
    }

    v11 = *(v11 + 8 * v23);
  }

  while (v11);
  if (v21 == v10 || v20 < *(v21 + 32))
  {
LABEL_18:
    v21 = v10;
  }

  v24 = *(v6 + 1);
  v25 = *(v6 + 2);
  v26 = v6[3];
  v27 = *(v21 + 40);
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_26;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_285A74(v18, v19, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_199EC4(v26, a1, &v43, v7, v24, v25);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v33 != v32)
  {
    return result;
  }

LABEL_32:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v18)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v18));
    }

    while (v38);
    if (v40 != v37 && v18 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25C1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25C1E0(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 40))();
  v8 = *(v6 + 4);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *a2;
  v19 = *(v13 + 40);
  v20 = *(v6 + 5);
  if (!v11)
  {
    goto LABEL_18;
  }

  v21 = v10;
  do
  {
    v22 = *(v11 + 32);
    v16 = v22 >= v20;
    v23 = v22 < v20;
    if (v16)
    {
      v21 = v11;
    }

    v11 = *(v11 + 8 * v23);
  }

  while (v11);
  if (v21 == v10 || v20 < *(v21 + 32))
  {
LABEL_18:
    v21 = v10;
  }

  v24 = *(v6 + 1);
  v25 = v6[2];
  v26 = *(v6 + 3);
  v27 = *(v21 + 40);
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_26;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_286818(v18, v19, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_195C30(v25, a1, &v43, v7, v24, v26);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v33 != v32)
  {
    return result;
  }

LABEL_32:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v18)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v18));
    }

    while (v38);
    if (v40 != v37 && v18 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25C4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25C4D8(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 40))();
  v8 = *(v6 + 4);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *a2;
  v19 = *(v13 + 40);
  v20 = *(v6 + 5);
  if (!v11)
  {
    goto LABEL_18;
  }

  v21 = v10;
  do
  {
    v22 = *(v11 + 32);
    v16 = v22 >= v20;
    v23 = v22 < v20;
    if (v16)
    {
      v21 = v11;
    }

    v11 = *(v11 + 8 * v23);
  }

  while (v11);
  if (v21 == v10 || v20 < *(v21 + 32))
  {
LABEL_18:
    v21 = v10;
  }

  v24 = v6[1];
  v25 = *(v6 + 2);
  v26 = *(v6 + 3);
  v27 = *(v21 + 40);
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_26;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_2875B4(v18, v19, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_1919A0(v24, a1, &v43, v7, v25, v26);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v33 != v32)
  {
    return result;
  }

LABEL_32:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v18)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v18));
    }

    while (v38);
    if (v40 != v37 && v18 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25C7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25C7CC(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 16))();
  v8 = v6[4];
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = v6[5];
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *a2;
  v23 = *(v13 + 40);
  v24 = v6[1];
  v25 = v6[2];
  v26 = v6[3];
  v27 = *(v19 + 40);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_33;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_288354(v22, v23, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_1A8E00(v7, a1, &v43, v24, v25, v26);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v33 != v32)
  {
    return result;
  }

LABEL_39:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v22)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v22));
    }

    while (v38);
    if (v40 != v37 && v22 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25CB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25CB58(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 16))();
  v8 = *(v6 + 4);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *(v6 + 5);
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *a2;
  v23 = *(v13 + 40);
  v24 = *(v6 + 1);
  v25 = v6[2];
  v26 = *(v6 + 3);
  v27 = *(v19 + 40);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_33;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_2890F0(v22, v23, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_1A4B74(v7, v25, a1, &v43, v24, v26);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v33 != v32)
  {
    return result;
  }

LABEL_39:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v22)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v22));
    }

    while (v38);
    if (v40 != v37 && v22 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25CED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25CEEC(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 40))();
  v8 = *(v6 + 4);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *a2;
  v19 = *(v13 + 40);
  v20 = *(v6 + 5);
  if (!v11)
  {
    goto LABEL_18;
  }

  v21 = v10;
  do
  {
    v22 = *(v11 + 32);
    v16 = v22 >= v20;
    v23 = v22 < v20;
    if (v16)
    {
      v21 = v11;
    }

    v11 = *(v11 + 8 * v23);
  }

  while (v11);
  if (v21 == v10 || v20 < *(v21 + 32))
  {
LABEL_18:
    v21 = v10;
  }

  v24 = v6[1];
  v25 = *(v6 + 2);
  v26 = v6[3];
  v27 = *(v21 + 40);
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_26;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_289E94(v18, v19, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_18CAF8(v24, v26, a1, &v43, v7, v25);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v33 != v32)
  {
    return result;
  }

LABEL_32:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v18)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v18));
    }

    while (v38);
    if (v40 != v37 && v18 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25D1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25D1E8(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 16))();
  v8 = *(v6 + 4);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *(v6 + 5);
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *a2;
  v23 = *(v13 + 40);
  v24 = *(v6 + 1);
  v25 = *(v6 + 2);
  v26 = v6[3];
  v27 = *(v19 + 40);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_33;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_28AC3C(v22, v23, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_1B85F0(v7, v26, a1, &v43, v24, v25);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v33 != v32)
  {
    return result;
  }

LABEL_39:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v22)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v22));
    }

    while (v38);
    if (v40 != v37 && v22 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25D55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25D578(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 40))();
  v8 = *(v6 + 4);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *a2;
  v19 = *(v13 + 40);
  v20 = *(v6 + 5);
  if (!v11)
  {
    goto LABEL_18;
  }

  v21 = v10;
  do
  {
    v22 = *(v11 + 32);
    v16 = v22 >= v20;
    v23 = v22 < v20;
    if (v16)
    {
      v21 = v11;
    }

    v11 = *(v11 + 8 * v23);
  }

  while (v11);
  if (v21 == v10 || v20 < *(v21 + 32))
  {
LABEL_18:
    v21 = v10;
  }

  v24 = v6[1];
  v25 = v6[2];
  v26 = *(v6 + 3);
  v27 = *(v21 + 40);
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_26;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_28B9E0(v18, v19, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_28068C(v24, v25, a1, &v43, v7, v26);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v33 != v32)
  {
    return result;
  }

LABEL_32:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v18)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v18));
    }

    while (v38);
    if (v40 != v37 && v18 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25D84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (***sub_25D868(void *a1, unsigned int *a2, void *a3))()
{
  v6 = a3[1];
  v40 = (*(**a3 + 40))();
  v7 = v6[4];
  v8 = a1[7];
  v11 = *(v8 + 8);
  v9 = v8 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= v7;
    v16 = v14 < v7;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || v7 < *(v12 + 32))
  {
LABEL_9:
    v12 = v9;
  }

  v17 = *a2;
  v18 = *(v12 + 40);
  v19 = v6[5];
  if (!v10)
  {
    goto LABEL_18;
  }

  v20 = v9;
  do
  {
    v21 = *(v10 + 32);
    v15 = v21 >= v19;
    v22 = v21 < v19;
    if (v15)
    {
      v20 = v10;
    }

    v10 = *(v10 + 8 * v22);
  }

  while (v10);
  if (v20 == v9 || v19 < *(v20 + 32))
  {
LABEL_18:
    v20 = v9;
  }

  v23 = v6[1];
  v24 = v6[2];
  v25 = v6[3];
  v26 = *(v20 + 40);
  v27 = a3[1];
  if (v27 && (*(*v27 + 32))(v27) != 17)
  {
    v28 = a3[1];
    if (v28)
    {
      if ((*(*v28 + 32))(v28) == 18)
      {
        goto LABEL_26;
      }

      v29 = a3[1];
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_28C784(v17, v18, v26, __p);
  v30 = sub_BC168(a1[9], __p);
  v31 = v30;
  v32 = a1[9] + 8;
  if (v32 != v30)
  {
    v43 = *(v30 + 16);
    result = sub_19E1F4(a1, &v43, v40, v23, v24, v25);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v34 = result;
    operator delete(__p[0]);
    result = v34;
    if (v32 != v31)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v32 != v31)
  {
    return result;
  }

LABEL_32:
  v35 = a1[6];
  v38 = *(v35 + 8);
  v36 = v35 + 8;
  v37 = v38;
  if (v38)
  {
    v39 = v36;
    do
    {
      if (*(v37 + 32) >= v17)
      {
        v39 = v37;
      }

      v37 = *(v37 + 8 * (*(v37 + 32) < v17));
    }

    while (v37);
    if (v39 != v36 && v17 >= *(v39 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25DB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25DB54(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 40))();
  v8 = *(v6 + 4);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *a2;
  v19 = *(v13 + 40);
  v20 = *(v6 + 5);
  if (!v11)
  {
    goto LABEL_18;
  }

  v21 = v10;
  do
  {
    v22 = *(v11 + 32);
    v16 = v22 >= v20;
    v23 = v22 < v20;
    if (v16)
    {
      v21 = v11;
    }

    v11 = *(v11 + 8 * v23);
  }

  while (v11);
  if (v21 == v10 || v20 < *(v21 + 32))
  {
LABEL_18:
    v21 = v10;
  }

  v24 = *(v6 + 1);
  v25 = *(v6 + 2);
  v26 = v6[3];
  v27 = *(v21 + 40);
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_26;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_28D51C(v18, v19, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_199EC4(v26, a1, &v43, v7, v24, v25);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v33 != v32)
  {
    return result;
  }

LABEL_32:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v18)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v18));
    }

    while (v38);
    if (v40 != v37 && v18 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25DE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25DE48(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 40))();
  v8 = *(v6 + 4);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *a2;
  v19 = *(v13 + 40);
  v20 = *(v6 + 5);
  if (!v11)
  {
    goto LABEL_18;
  }

  v21 = v10;
  do
  {
    v22 = *(v11 + 32);
    v16 = v22 >= v20;
    v23 = v22 < v20;
    if (v16)
    {
      v21 = v11;
    }

    v11 = *(v11 + 8 * v23);
  }

  while (v11);
  if (v21 == v10 || v20 < *(v21 + 32))
  {
LABEL_18:
    v21 = v10;
  }

  v24 = *(v6 + 1);
  v25 = v6[2];
  v26 = *(v6 + 3);
  v27 = *(v21 + 40);
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_26;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_28E2BC(v18, v19, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_195C30(v25, a1, &v43, v7, v24, v26);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v33 != v32)
  {
    return result;
  }

LABEL_32:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v18)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v18));
    }

    while (v38);
    if (v40 != v37 && v18 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25E124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25E140(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 40))();
  v8 = *(v6 + 4);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *a2;
  v19 = *(v13 + 40);
  v20 = *(v6 + 5);
  if (!v11)
  {
    goto LABEL_18;
  }

  v21 = v10;
  do
  {
    v22 = *(v11 + 32);
    v16 = v22 >= v20;
    v23 = v22 < v20;
    if (v16)
    {
      v21 = v11;
    }

    v11 = *(v11 + 8 * v23);
  }

  while (v11);
  if (v21 == v10 || v20 < *(v21 + 32))
  {
LABEL_18:
    v21 = v10;
  }

  v24 = v6[1];
  v25 = *(v6 + 2);
  v26 = *(v6 + 3);
  v27 = *(v21 + 40);
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_26;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_28F05C(v18, v19, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_1919A0(v24, a1, &v43, v7, v25, v26);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v33 != v32)
  {
    return result;
  }

LABEL_32:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v18)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v18));
    }

    while (v38);
    if (v40 != v37 && v18 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25E418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25E434(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 16))();
  v8 = v6[4];
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = v6[5];
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *a2;
  v23 = *(v13 + 40);
  v24 = v6[1];
  v25 = v6[2];
  v26 = v6[3];
  v27 = *(v19 + 40);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_33;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_28FDFC(v22, v23, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_1A8E00(v7, a1, &v43, v24, v25, v26);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v33 != v32)
  {
    return result;
  }

LABEL_39:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v22)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v22));
    }

    while (v38);
    if (v40 != v37 && v22 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25E7A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25E7C0(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 16))();
  v8 = *(v6 + 4);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *(v6 + 5);
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *a2;
  v23 = *(v13 + 40);
  v24 = *(v6 + 1);
  v25 = v6[2];
  v26 = *(v6 + 3);
  v27 = *(v19 + 40);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_33;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_290B9C(v22, v23, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_1A4B74(v7, v25, a1, &v43, v24, v26);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v33 != v32)
  {
    return result;
  }

LABEL_39:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v22)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v22));
    }

    while (v38);
    if (v40 != v37 && v22 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25EB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25EB54(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 40))();
  v8 = *(v6 + 4);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *a2;
  v19 = *(v13 + 40);
  v20 = *(v6 + 5);
  if (!v11)
  {
    goto LABEL_18;
  }

  v21 = v10;
  do
  {
    v22 = *(v11 + 32);
    v16 = v22 >= v20;
    v23 = v22 < v20;
    if (v16)
    {
      v21 = v11;
    }

    v11 = *(v11 + 8 * v23);
  }

  while (v11);
  if (v21 == v10 || v20 < *(v21 + 32))
  {
LABEL_18:
    v21 = v10;
  }

  v24 = v6[1];
  v25 = *(v6 + 2);
  v26 = v6[3];
  v27 = *(v21 + 40);
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_26;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_26:
  sub_291940(v18, v19, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_18CAF8(v24, v26, a1, &v43, v7, v25);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v33 != v32)
  {
    return result;
  }

LABEL_32:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v18)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v18));
    }

    while (v38);
    if (v40 != v37 && v18 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25EE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25EE50(void *a1, unsigned int *a2, void *a3)
{
  v6 = a3[1];
  v7 = (*(**a3 + 16))();
  v8 = *(v6 + 4);
  v9 = a1[7];
  v12 = *(v9 + 8);
  v10 = v9 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  v14 = v11;
  do
  {
    v15 = *(v14 + 32);
    v16 = v15 >= v8;
    v17 = v15 < v8;
    if (v16)
    {
      v13 = v14;
    }

    v14 = *(v14 + 8 * v17);
  }

  while (v14);
  if (v13 == v10 || v8 < *(v13 + 32))
  {
LABEL_9:
    v13 = v10;
  }

  v18 = *(v6 + 5);
  if (!v11)
  {
    goto LABEL_18;
  }

  v19 = v10;
  do
  {
    v20 = *(v11 + 32);
    v16 = v20 >= v18;
    v21 = v20 < v18;
    if (v16)
    {
      v19 = v11;
    }

    v11 = *(v11 + 8 * v21);
  }

  while (v11);
  if (v19 == v10 || v18 < *(v19 + 32))
  {
LABEL_18:
    v19 = v10;
  }

  v22 = *a2;
  v23 = *(v13 + 40);
  v24 = *(v6 + 1);
  v25 = *(v6 + 2);
  v26 = v6[3];
  v27 = *(v19 + 40);
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_33;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_2926E8(v22, v23, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_1B85F0(v7, v26, a1, &v43, v24, v25);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v33 != v32)
  {
    return result;
  }

LABEL_39:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v22)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v22));
    }

    while (v38);
    if (v40 != v37 && v22 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25F1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (***sub_25F1E0(void *a1, unsigned int *a2, void *a3))()
{
  v6 = *a3;
  v7 = *(*a3 + 16);
  v37 = *(*a3 + 8);
  v8 = *(*a3 + 24);
  v9 = (*(*a3[1] + 40))(a3[1]);
  v10 = *(v6 + 32);
  v11 = a1[7];
  v14 = *(v11 + 8);
  v12 = v11 + 8;
  v13 = v14;
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = v12;
  v16 = v13;
  do
  {
    v17 = *(v16 + 32);
    v18 = v17 >= v10;
    v19 = v17 < v10;
    if (v18)
    {
      v15 = v16;
    }

    v16 = *(v16 + 8 * v19);
  }

  while (v16);
  if (v15 == v12 || v10 < *(v15 + 32))
  {
LABEL_9:
    v15 = v12;
  }

  v20 = *(v15 + 40);
  v21 = *(v6 + 40);
  if (!v13)
  {
    goto LABEL_18;
  }

  v22 = v12;
  do
  {
    v23 = *(v13 + 32);
    v18 = v23 >= v21;
    v24 = v23 < v21;
    if (v18)
    {
      v22 = v13;
    }

    v13 = *(v13 + 8 * v24);
  }

  while (v13);
  if (v22 == v12 || v21 < *(v22 + 32))
  {
LABEL_18:
    v22 = v12;
  }

  v25 = *(v22 + 40);
  v26 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_29348C(v20, v25, v26, __p);
  v27 = sub_BC168(a1[9], __p);
  v28 = v27;
  v29 = a1[9] + 8;
  if (v29 != v27)
  {
    v40 = *(v27 + 16);
    result = sub_19E1F4(a1, &v40, v37, v7, v8, v9);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v31 = result;
    operator delete(__p[0]);
    result = v31;
    if (v29 != v28)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v29 != v28)
  {
    return result;
  }

LABEL_32:
  v32 = a1[6];
  v35 = *(v32 + 8);
  v33 = v32 + 8;
  v34 = v35;
  if (v35)
  {
    v36 = v33;
    do
    {
      if (*(v34 + 32) >= v26)
      {
        v36 = v34;
      }

      v34 = *(v34 + 8 * (*(v34 + 32) < v26));
    }

    while (v34);
    if (v36 != v33 && v26 >= *(v36 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25F4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25F4D0(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 8);
  v8 = *(*a3 + 16);
  v9 = *(*a3 + 24);
  v10 = (*(*a3[1] + 16))(a3[1]);
  v11 = *(v6 + 32);
  v12 = a1[7];
  v15 = *(v12 + 8);
  v13 = v12 + 8;
  v14 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v13;
  v17 = v14;
  do
  {
    v18 = *(v17 + 32);
    v19 = v18 >= v11;
    v20 = v18 < v11;
    if (v19)
    {
      v16 = v17;
    }

    v17 = *(v17 + 8 * v20);
  }

  while (v17);
  if (v16 == v13 || v11 < *(v16 + 32))
  {
LABEL_9:
    v16 = v13;
  }

  v21 = *(v6 + 40);
  if (!v14)
  {
    goto LABEL_18;
  }

  v22 = v13;
  do
  {
    v23 = *(v14 + 32);
    v19 = v23 >= v21;
    v24 = v23 < v21;
    if (v19)
    {
      v22 = v14;
    }

    v14 = *(v14 + 8 * v24);
  }

  while (v14);
  if (v22 == v13 || v21 < *(v22 + 32))
  {
LABEL_18:
    v22 = v13;
  }

  v25 = *(v16 + 40);
  v26 = *(v22 + 40);
  v27 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_33;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_294224(v25, v26, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_199EC4(v10, a1, &v43, v7, v8, v9);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v33 != v32)
  {
    return result;
  }

LABEL_39:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v27)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v27));
    }

    while (v38);
    if (v40 != v37 && v27 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25F840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25F85C(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 8);
  v8 = *(*a3 + 16);
  v9 = *(*a3 + 24);
  v10 = (*(*a3[1] + 40))(a3[1]);
  v11 = *(v6 + 32);
  v12 = a1[7];
  v15 = *(v12 + 8);
  v13 = v12 + 8;
  v14 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v13;
  v17 = v14;
  do
  {
    v18 = *(v17 + 32);
    v19 = v18 >= v11;
    v20 = v18 < v11;
    if (v19)
    {
      v16 = v17;
    }

    v17 = *(v17 + 8 * v20);
  }

  while (v17);
  if (v16 == v13 || v11 < *(v16 + 32))
  {
LABEL_9:
    v16 = v13;
  }

  v21 = *(v16 + 40);
  v22 = *(v6 + 40);
  if (!v14)
  {
    goto LABEL_18;
  }

  v23 = v13;
  do
  {
    v24 = *(v14 + 32);
    v19 = v24 >= v22;
    v25 = v24 < v22;
    if (v19)
    {
      v23 = v14;
    }

    v14 = *(v14 + 8 * v25);
  }

  while (v14);
  if (v23 == v13 || v22 < *(v23 + 32))
  {
LABEL_18:
    v23 = v13;
  }

  v26 = *(v23 + 40);
  v27 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_294FC4(v21, v26, v27, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_195C30(v9, a1, &v40, v7, v8, v10);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v30 != v29)
  {
    return result;
  }

LABEL_32:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v27)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v27));
    }

    while (v35);
    if (v37 != v34 && v27 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25FB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25FB50(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 8);
  v8 = *(*a3 + 16);
  v9 = *(*a3 + 24);
  v10 = (*(*a3[1] + 40))(a3[1]);
  v11 = *(v6 + 32);
  v12 = a1[7];
  v15 = *(v12 + 8);
  v13 = v12 + 8;
  v14 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v13;
  v17 = v14;
  do
  {
    v18 = *(v17 + 32);
    v19 = v18 >= v11;
    v20 = v18 < v11;
    if (v19)
    {
      v16 = v17;
    }

    v17 = *(v17 + 8 * v20);
  }

  while (v17);
  if (v16 == v13 || v11 < *(v16 + 32))
  {
LABEL_9:
    v16 = v13;
  }

  v21 = *(v16 + 40);
  v22 = *(v6 + 40);
  if (!v14)
  {
    goto LABEL_18;
  }

  v23 = v13;
  do
  {
    v24 = *(v14 + 32);
    v19 = v24 >= v22;
    v25 = v24 < v22;
    if (v19)
    {
      v23 = v14;
    }

    v14 = *(v14 + 8 * v25);
  }

  while (v14);
  if (v23 == v13 || v22 < *(v23 + 32))
  {
LABEL_18:
    v23 = v13;
  }

  v26 = *(v23 + 40);
  v27 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_295D64(v21, v26, v27, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_1919A0(v8, a1, &v40, v7, v9, v10);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v30 != v29)
  {
    return result;
  }

LABEL_32:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v27)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v27));
    }

    while (v35);
    if (v37 != v34 && v27 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_25FE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_25FE48(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 8);
  v8 = *(*a3 + 16);
  v9 = *(*a3 + 24);
  v10 = (*(*a3[1] + 40))(a3[1]);
  v11 = *(v6 + 32);
  v12 = a1[7];
  v15 = *(v12 + 8);
  v13 = v12 + 8;
  v14 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v13;
  v17 = v14;
  do
  {
    v18 = *(v17 + 32);
    v19 = v18 >= v11;
    v20 = v18 < v11;
    if (v19)
    {
      v16 = v17;
    }

    v17 = *(v17 + 8 * v20);
  }

  while (v17);
  if (v16 == v13 || v11 < *(v16 + 32))
  {
LABEL_9:
    v16 = v13;
  }

  v21 = *(v16 + 40);
  v22 = *(v6 + 40);
  if (!v14)
  {
    goto LABEL_18;
  }

  v23 = v13;
  do
  {
    v24 = *(v14 + 32);
    v19 = v24 >= v22;
    v25 = v24 < v22;
    if (v19)
    {
      v23 = v14;
    }

    v14 = *(v14 + 8 * v25);
  }

  while (v14);
  if (v23 == v13 || v22 < *(v23 + 32))
  {
LABEL_18:
    v23 = v13;
  }

  v26 = *(v23 + 40);
  v27 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_296B08(v21, v26, v27, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_1A8E00(v7, a1, &v40, v8, v9, v10);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v30 != v29)
  {
    return result;
  }

LABEL_32:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v27)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v27));
    }

    while (v35);
    if (v37 != v34 && v27 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_260120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_26013C(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 8);
  v8 = *(*a3 + 16);
  v9 = *(*a3 + 24);
  v10 = (*(*a3[1] + 40))(a3[1]);
  v11 = *(v6 + 32);
  v12 = a1[7];
  v15 = *(v12 + 8);
  v13 = v12 + 8;
  v14 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v13;
  v17 = v14;
  do
  {
    v18 = *(v17 + 32);
    v19 = v18 >= v11;
    v20 = v18 < v11;
    if (v19)
    {
      v16 = v17;
    }

    v17 = *(v17 + 8 * v20);
  }

  while (v17);
  if (v16 == v13 || v11 < *(v16 + 32))
  {
LABEL_9:
    v16 = v13;
  }

  v21 = *(v16 + 40);
  v22 = *(v6 + 40);
  if (!v14)
  {
    goto LABEL_18;
  }

  v23 = v13;
  do
  {
    v24 = *(v14 + 32);
    v19 = v24 >= v22;
    v25 = v24 < v22;
    if (v19)
    {
      v23 = v14;
    }

    v14 = *(v14 + 8 * v25);
  }

  while (v14);
  if (v23 == v13 || v22 < *(v23 + 32))
  {
LABEL_18:
    v23 = v13;
  }

  v26 = *(v23 + 40);
  v27 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_2978A4(v21, v26, v27, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_1A4B74(v7, v9, a1, &v40, v8, v10);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v30 != v29)
  {
    return result;
  }

LABEL_32:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v27)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v27));
    }

    while (v35);
    if (v37 != v34 && v27 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_26041C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_260438(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 8);
  v8 = *(*a3 + 16);
  v9 = *(*a3 + 24);
  v10 = (*(*a3[1] + 16))(a3[1]);
  v11 = *(v6 + 32);
  v12 = a1[7];
  v15 = *(v12 + 8);
  v13 = v12 + 8;
  v14 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v13;
  v17 = v14;
  do
  {
    v18 = *(v17 + 32);
    v19 = v18 >= v11;
    v20 = v18 < v11;
    if (v19)
    {
      v16 = v17;
    }

    v17 = *(v17 + 8 * v20);
  }

  while (v17);
  if (v16 == v13 || v11 < *(v16 + 32))
  {
LABEL_9:
    v16 = v13;
  }

  v21 = *(v6 + 40);
  if (!v14)
  {
    goto LABEL_18;
  }

  v22 = v13;
  do
  {
    v23 = *(v14 + 32);
    v19 = v23 >= v21;
    v24 = v23 < v21;
    if (v19)
    {
      v22 = v14;
    }

    v14 = *(v14 + 8 * v24);
  }

  while (v14);
  if (v22 == v13 || v21 < *(v22 + 32))
  {
LABEL_18:
    v22 = v13;
  }

  v25 = *(v16 + 40);
  v26 = *(v22 + 40);
  v27 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_33;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_298648(v25, v26, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_18CAF8(v8, v10, a1, &v43, v7, v9);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v33 != v32)
  {
    return result;
  }

LABEL_39:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v27)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v27));
    }

    while (v38);
    if (v40 != v37 && v27 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_2607B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_2607CC(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 8);
  v8 = *(*a3 + 16);
  v9 = *(*a3 + 24);
  v10 = (*(*a3[1] + 16))(a3[1]);
  v11 = *(v6 + 32);
  v12 = a1[7];
  v15 = *(v12 + 8);
  v13 = v12 + 8;
  v14 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v13;
  v17 = v14;
  do
  {
    v18 = *(v17 + 32);
    v19 = v18 >= v11;
    v20 = v18 < v11;
    if (v19)
    {
      v16 = v17;
    }

    v17 = *(v17 + 8 * v20);
  }

  while (v17);
  if (v16 == v13 || v11 < *(v16 + 32))
  {
LABEL_9:
    v16 = v13;
  }

  v21 = *(v6 + 40);
  if (!v14)
  {
    goto LABEL_18;
  }

  v22 = v13;
  do
  {
    v23 = *(v14 + 32);
    v19 = v23 >= v21;
    v24 = v23 < v21;
    if (v19)
    {
      v22 = v14;
    }

    v14 = *(v14 + 8 * v24);
  }

  while (v14);
  if (v22 == v13 || v21 < *(v22 + 32))
  {
LABEL_18:
    v22 = v13;
  }

  v25 = *(v16 + 40);
  v26 = *(v22 + 40);
  v27 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_33;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_2993F0(v25, v26, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_1B85F0(v7, v10, a1, &v43, v8, v9);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v33 != v32)
  {
    return result;
  }

LABEL_39:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v27)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v27));
    }

    while (v38);
    if (v40 != v37 && v27 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_260B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_260B5C(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 8);
  v8 = *(*a3 + 16);
  v9 = *(*a3 + 24);
  v10 = (*(*a3[1] + 40))(a3[1]);
  v11 = *(v6 + 32);
  v12 = a1[7];
  v15 = *(v12 + 8);
  v13 = v12 + 8;
  v14 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v13;
  v17 = v14;
  do
  {
    v18 = *(v17 + 32);
    v19 = v18 >= v11;
    v20 = v18 < v11;
    if (v19)
    {
      v16 = v17;
    }

    v17 = *(v17 + 8 * v20);
  }

  while (v17);
  if (v16 == v13 || v11 < *(v16 + 32))
  {
LABEL_9:
    v16 = v13;
  }

  v21 = *(v16 + 40);
  v22 = *(v6 + 40);
  if (!v14)
  {
    goto LABEL_18;
  }

  v23 = v13;
  do
  {
    v24 = *(v14 + 32);
    v19 = v24 >= v22;
    v25 = v24 < v22;
    if (v19)
    {
      v23 = v14;
    }

    v14 = *(v14 + 8 * v25);
  }

  while (v14);
  if (v23 == v13 || v22 < *(v23 + 32))
  {
LABEL_18:
    v23 = v13;
  }

  v26 = *(v23 + 40);
  v27 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_29A194(v21, v26, v27, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_28068C(v8, v9, a1, &v40, v7, v10);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v30 != v29)
  {
    return result;
  }

LABEL_32:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v27)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v27));
    }

    while (v35);
    if (v37 != v34 && v27 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_260E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (***sub_260E4C(void *a1, unsigned int *a2, void *a3))()
{
  v6 = *a3;
  v7 = *(*a3 + 16);
  v37 = *(*a3 + 8);
  v8 = *(*a3 + 24);
  v9 = (*(*a3[1] + 40))(a3[1]);
  v10 = *(v6 + 32);
  v11 = a1[7];
  v14 = *(v11 + 8);
  v12 = v11 + 8;
  v13 = v14;
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = v12;
  v16 = v13;
  do
  {
    v17 = *(v16 + 32);
    v18 = v17 >= v10;
    v19 = v17 < v10;
    if (v18)
    {
      v15 = v16;
    }

    v16 = *(v16 + 8 * v19);
  }

  while (v16);
  if (v15 == v12 || v10 < *(v15 + 32))
  {
LABEL_9:
    v15 = v12;
  }

  v20 = *(v15 + 40);
  v21 = *(v6 + 40);
  if (!v13)
  {
    goto LABEL_18;
  }

  v22 = v12;
  do
  {
    v23 = *(v13 + 32);
    v18 = v23 >= v21;
    v24 = v23 < v21;
    if (v18)
    {
      v22 = v13;
    }

    v13 = *(v13 + 8 * v24);
  }

  while (v13);
  if (v22 == v12 || v21 < *(v22 + 32))
  {
LABEL_18:
    v22 = v12;
  }

  v25 = *(v22 + 40);
  v26 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_29AF38(v20, v25, v26, __p);
  v27 = sub_BC168(a1[9], __p);
  v28 = v27;
  v29 = a1[9] + 8;
  if (v29 != v27)
  {
    v40 = *(v27 + 16);
    result = sub_19E1F4(a1, &v40, v37, v7, v8, v9);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v31 = result;
    operator delete(__p[0]);
    result = v31;
    if (v29 != v28)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v29 != v28)
  {
    return result;
  }

LABEL_32:
  v32 = a1[6];
  v35 = *(v32 + 8);
  v33 = v32 + 8;
  v34 = v35;
  if (v35)
  {
    v36 = v33;
    do
    {
      if (*(v34 + 32) >= v26)
      {
        v36 = v34;
      }

      v34 = *(v34 + 8 * (*(v34 + 32) < v26));
    }

    while (v34);
    if (v36 != v33 && v26 >= *(v36 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_261120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_26113C(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 8);
  v8 = *(*a3 + 16);
  v9 = *(*a3 + 24);
  v10 = (*(*a3[1] + 16))(a3[1]);
  v11 = *(v6 + 32);
  v12 = a1[7];
  v15 = *(v12 + 8);
  v13 = v12 + 8;
  v14 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v13;
  v17 = v14;
  do
  {
    v18 = *(v17 + 32);
    v19 = v18 >= v11;
    v20 = v18 < v11;
    if (v19)
    {
      v16 = v17;
    }

    v17 = *(v17 + 8 * v20);
  }

  while (v17);
  if (v16 == v13 || v11 < *(v16 + 32))
  {
LABEL_9:
    v16 = v13;
  }

  v21 = *(v6 + 40);
  if (!v14)
  {
    goto LABEL_18;
  }

  v22 = v13;
  do
  {
    v23 = *(v14 + 32);
    v19 = v23 >= v21;
    v24 = v23 < v21;
    if (v19)
    {
      v22 = v14;
    }

    v14 = *(v14 + 8 * v24);
  }

  while (v14);
  if (v22 == v13 || v21 < *(v22 + 32))
  {
LABEL_18:
    v22 = v13;
  }

  v25 = *(v16 + 40);
  v26 = *(v22 + 40);
  v27 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_33;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_29BCD0(v25, v26, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_199EC4(v10, a1, &v43, v7, v8, v9);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v33 != v32)
  {
    return result;
  }

LABEL_39:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v27)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v27));
    }

    while (v38);
    if (v40 != v37 && v27 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_2614AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_2614C8(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 8);
  v8 = *(*a3 + 16);
  v9 = *(*a3 + 24);
  v10 = (*(*a3[1] + 40))(a3[1]);
  v11 = *(v6 + 32);
  v12 = a1[7];
  v15 = *(v12 + 8);
  v13 = v12 + 8;
  v14 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v13;
  v17 = v14;
  do
  {
    v18 = *(v17 + 32);
    v19 = v18 >= v11;
    v20 = v18 < v11;
    if (v19)
    {
      v16 = v17;
    }

    v17 = *(v17 + 8 * v20);
  }

  while (v17);
  if (v16 == v13 || v11 < *(v16 + 32))
  {
LABEL_9:
    v16 = v13;
  }

  v21 = *(v16 + 40);
  v22 = *(v6 + 40);
  if (!v14)
  {
    goto LABEL_18;
  }

  v23 = v13;
  do
  {
    v24 = *(v14 + 32);
    v19 = v24 >= v22;
    v25 = v24 < v22;
    if (v19)
    {
      v23 = v14;
    }

    v14 = *(v14 + 8 * v25);
  }

  while (v14);
  if (v23 == v13 || v22 < *(v23 + 32))
  {
LABEL_18:
    v23 = v13;
  }

  v26 = *(v23 + 40);
  v27 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_29CA70(v21, v26, v27, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_195C30(v9, a1, &v40, v7, v8, v10);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v30 != v29)
  {
    return result;
  }

LABEL_32:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v27)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v27));
    }

    while (v35);
    if (v37 != v34 && v27 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_2617A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_2617BC(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 8);
  v8 = *(*a3 + 16);
  v9 = *(*a3 + 24);
  v10 = (*(*a3[1] + 40))(a3[1]);
  v11 = *(v6 + 32);
  v12 = a1[7];
  v15 = *(v12 + 8);
  v13 = v12 + 8;
  v14 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v13;
  v17 = v14;
  do
  {
    v18 = *(v17 + 32);
    v19 = v18 >= v11;
    v20 = v18 < v11;
    if (v19)
    {
      v16 = v17;
    }

    v17 = *(v17 + 8 * v20);
  }

  while (v17);
  if (v16 == v13 || v11 < *(v16 + 32))
  {
LABEL_9:
    v16 = v13;
  }

  v21 = *(v16 + 40);
  v22 = *(v6 + 40);
  if (!v14)
  {
    goto LABEL_18;
  }

  v23 = v13;
  do
  {
    v24 = *(v14 + 32);
    v19 = v24 >= v22;
    v25 = v24 < v22;
    if (v19)
    {
      v23 = v14;
    }

    v14 = *(v14 + 8 * v25);
  }

  while (v14);
  if (v23 == v13 || v22 < *(v23 + 32))
  {
LABEL_18:
    v23 = v13;
  }

  v26 = *(v23 + 40);
  v27 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_29D810(v21, v26, v27, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_1919A0(v8, a1, &v40, v7, v9, v10);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v30 != v29)
  {
    return result;
  }

LABEL_32:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v27)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v27));
    }

    while (v35);
    if (v37 != v34 && v27 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_261A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_261AB4(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 8);
  v8 = *(*a3 + 16);
  v9 = *(*a3 + 24);
  v10 = (*(*a3[1] + 40))(a3[1]);
  v11 = *(v6 + 32);
  v12 = a1[7];
  v15 = *(v12 + 8);
  v13 = v12 + 8;
  v14 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v13;
  v17 = v14;
  do
  {
    v18 = *(v17 + 32);
    v19 = v18 >= v11;
    v20 = v18 < v11;
    if (v19)
    {
      v16 = v17;
    }

    v17 = *(v17 + 8 * v20);
  }

  while (v17);
  if (v16 == v13 || v11 < *(v16 + 32))
  {
LABEL_9:
    v16 = v13;
  }

  v21 = *(v16 + 40);
  v22 = *(v6 + 40);
  if (!v14)
  {
    goto LABEL_18;
  }

  v23 = v13;
  do
  {
    v24 = *(v14 + 32);
    v19 = v24 >= v22;
    v25 = v24 < v22;
    if (v19)
    {
      v23 = v14;
    }

    v14 = *(v14 + 8 * v25);
  }

  while (v14);
  if (v23 == v13 || v22 < *(v23 + 32))
  {
LABEL_18:
    v23 = v13;
  }

  v26 = *(v23 + 40);
  v27 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_29E5B0(v21, v26, v27, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_1A8E00(v7, a1, &v40, v8, v9, v10);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v30 != v29)
  {
    return result;
  }

LABEL_32:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v27)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v27));
    }

    while (v35);
    if (v37 != v34 && v27 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_261D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_261DA8(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 8);
  v8 = *(*a3 + 16);
  v9 = *(*a3 + 24);
  v10 = (*(*a3[1] + 40))(a3[1]);
  v11 = *(v6 + 32);
  v12 = a1[7];
  v15 = *(v12 + 8);
  v13 = v12 + 8;
  v14 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v13;
  v17 = v14;
  do
  {
    v18 = *(v17 + 32);
    v19 = v18 >= v11;
    v20 = v18 < v11;
    if (v19)
    {
      v16 = v17;
    }

    v17 = *(v17 + 8 * v20);
  }

  while (v17);
  if (v16 == v13 || v11 < *(v16 + 32))
  {
LABEL_9:
    v16 = v13;
  }

  v21 = *(v16 + 40);
  v22 = *(v6 + 40);
  if (!v14)
  {
    goto LABEL_18;
  }

  v23 = v13;
  do
  {
    v24 = *(v14 + 32);
    v19 = v24 >= v22;
    v25 = v24 < v22;
    if (v19)
    {
      v23 = v14;
    }

    v14 = *(v14 + 8 * v25);
  }

  while (v14);
  if (v23 == v13 || v22 < *(v23 + 32))
  {
LABEL_18:
    v23 = v13;
  }

  v26 = *(v23 + 40);
  v27 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (*a3)
    {
      if ((*(**a3 + 32))(*a3) == 18)
      {
        goto LABEL_26;
      }

      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }
    }

    *a3 = 0;
  }

LABEL_26:
  sub_29F350(v21, v26, v27, __p);
  v28 = sub_BC168(a1[9], __p);
  v29 = v28;
  v30 = a1[9] + 8;
  if (v30 != v28)
  {
    v40 = *(v28 + 16);
    result = sub_1A4B74(v7, v9, a1, &v40, v8, v10);
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    v32 = result;
    operator delete(__p[0]);
    result = v32;
    if (v30 != v29)
    {
      return result;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v39 < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v30 != v29)
  {
    return result;
  }

LABEL_32:
  v33 = a1[6];
  v36 = *(v33 + 8);
  v34 = v33 + 8;
  v35 = v36;
  if (v36)
  {
    v37 = v34;
    do
    {
      if (*(v35 + 32) >= v27)
      {
        v37 = v35;
      }

      v35 = *(v35 + 8 * (*(v35 + 32) < v27));
    }

    while (v35);
    if (v37 != v34 && v27 >= *(v37 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_262088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_2620A4(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 8);
  v8 = *(*a3 + 16);
  v9 = *(*a3 + 24);
  v10 = (*(*a3[1] + 16))(a3[1]);
  v11 = *(v6 + 32);
  v12 = a1[7];
  v15 = *(v12 + 8);
  v13 = v12 + 8;
  v14 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v13;
  v17 = v14;
  do
  {
    v18 = *(v17 + 32);
    v19 = v18 >= v11;
    v20 = v18 < v11;
    if (v19)
    {
      v16 = v17;
    }

    v17 = *(v17 + 8 * v20);
  }

  while (v17);
  if (v16 == v13 || v11 < *(v16 + 32))
  {
LABEL_9:
    v16 = v13;
  }

  v21 = *(v6 + 40);
  if (!v14)
  {
    goto LABEL_18;
  }

  v22 = v13;
  do
  {
    v23 = *(v14 + 32);
    v19 = v23 >= v21;
    v24 = v23 < v21;
    if (v19)
    {
      v22 = v14;
    }

    v14 = *(v14 + 8 * v24);
  }

  while (v14);
  if (v22 == v13 || v21 < *(v22 + 32))
  {
LABEL_18:
    v22 = v13;
  }

  v25 = *(v16 + 40);
  v26 = *(v22 + 40);
  v27 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_33;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_2A00F4(v25, v26, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_18CAF8(v8, v10, a1, &v43, v7, v9);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v33 != v32)
  {
    return result;
  }

LABEL_39:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v27)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v27));
    }

    while (v38);
    if (v40 != v37 && v27 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}

void sub_26241C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_262438(void *a1, unsigned int *a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 8);
  v8 = *(*a3 + 16);
  v9 = *(*a3 + 24);
  v10 = (*(*a3[1] + 16))(a3[1]);
  v11 = *(v6 + 32);
  v12 = a1[7];
  v15 = *(v12 + 8);
  v13 = v12 + 8;
  v14 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v13;
  v17 = v14;
  do
  {
    v18 = *(v17 + 32);
    v19 = v18 >= v11;
    v20 = v18 < v11;
    if (v19)
    {
      v16 = v17;
    }

    v17 = *(v17 + 8 * v20);
  }

  while (v17);
  if (v16 == v13 || v11 < *(v16 + 32))
  {
LABEL_9:
    v16 = v13;
  }

  v21 = *(v6 + 40);
  if (!v14)
  {
    goto LABEL_18;
  }

  v22 = v13;
  do
  {
    v23 = *(v14 + 32);
    v19 = v23 >= v21;
    v24 = v23 < v21;
    if (v19)
    {
      v22 = v14;
    }

    v14 = *(v14 + 8 * v24);
  }

  while (v14);
  if (v22 == v13 || v21 < *(v22 + 32))
  {
LABEL_18:
    v22 = v13;
  }

  v25 = *(v16 + 40);
  v26 = *(v22 + 40);
  v27 = *a2;
  if (*a3 && (*(**a3 + 32))(*a3) != 17)
  {
    if (!*a3)
    {
LABEL_25:
      *a3 = 0;
      goto LABEL_26;
    }

    if ((*(**a3 + 32))(*a3) != 18)
    {
      if (*a3)
      {
        (*(**a3 + 8))(*a3);
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  v28 = a3[1];
  if (v28 && (*(*v28 + 32))(v28) != 17)
  {
    v29 = a3[1];
    if (v29)
    {
      if ((*(*v29 + 32))(v29) == 18)
      {
        goto LABEL_33;
      }

      v30 = a3[1];
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }
    }

    a3[1] = 0;
  }

LABEL_33:
  sub_2A0E9C(v25, v26, v27, __p);
  v31 = sub_BC168(a1[9], __p);
  v32 = v31;
  v33 = a1[9] + 8;
  if (v33 != v31)
  {
    v43 = *(v31 + 16);
    result = sub_1B85F0(v7, v10, a1, &v43, v8, v9);
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v35 = result;
    operator delete(__p[0]);
    result = v35;
    if (v33 != v32)
    {
      return result;
    }

    goto LABEL_39;
  }

  result = 0;
  if (v42 < 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v33 != v32)
  {
    return result;
  }

LABEL_39:
  v36 = a1[6];
  v39 = *(v36 + 8);
  v37 = v36 + 8;
  v38 = v39;
  if (v39)
  {
    v40 = v37;
    do
    {
      if (*(v38 + 32) >= v27)
      {
        v40 = v38;
      }

      v38 = *(v38 + 8 * (*(v38 + 32) < v27));
    }

    while (v38);
    if (v40 != v37 && v27 >= *(v40 + 32))
    {
      operator new();
    }
  }

  return 0;
}