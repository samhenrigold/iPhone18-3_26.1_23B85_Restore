void sub_23F071884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23F071E1C(va);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_23F0718A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void **);
  v10 = va_arg(va1, void);
  sub_23F06CB18(va1);
  v5[1] = v6;
  sub_23F071E1C(va);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_23F0718C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, ...)
{
  va_start(va, a11);
  sub_23F06357C(va, a11);
  _Unwind_Resume(a1);
}

void sub_23F0718E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

uint64_t sub_23F07191C(uint64_t result, unsigned __int8 *a2)
{
  v2 = *a2;
  *result = v2;
  *(result + 8) = 0;
  if (v2 <= 4)
  {
    if (v2 <= 2)
    {
      if (v2 == 1)
      {
        operator new();
      }

      if (v2 == 2)
      {
        operator new();
      }

      return result;
    }

    if (v2 == 3)
    {
      operator new();
    }

    v3 = a2[8];
LABEL_13:
    *(result + 8) = v3;
    return result;
  }

  if (v2 < 8)
  {
    v3 = *(a2 + 1);
    goto LABEL_13;
  }

  if (v2 == 8)
  {
    operator new();
  }

  return result;
}

void sub_23F071BB4(_Unwind_Exception *a1)
{
  sub_23F063E7C(v1, v1[1]);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_23F071BD4(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  v4 = sub_23F065EE4(a1, a2, &v7, &v6, a3);
  if (!*v4)
  {
    operator new();
  }

  return *v4;
}

void sub_23F071CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F066288(va);
  _Unwind_Resume(a1);
}

void sub_23F071CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 55) < 0)
  {
    operator delete(*(v3 + 32));
  }

  sub_23F066288(va);
  _Unwind_Resume(a1);
}

void sub_23F071D10(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      operator new();
    }

    sub_23F063D28();
  }
}

void sub_23F071DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_23F06CB18(va);
  *(v10 + 8) = v11;
  sub_23F071E1C(&a9);
  _Unwind_Resume(a1);
}

void ***sub_23F071E1C(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 1;
        do
        {
          v7 = v6 - 1;
          sub_23F06357C(v6, *(v6 - 8));
          v6 -= 2;
        }

        while (v7 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_23F071EA8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v5 = *(i - 16);
    v4 = i - 16;
    *(a1 + 16) = v4;
    sub_23F0655DC((v4 + 8), v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_23F071F00(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a3)
  {
    v8 = (a2 + 16);
    v9 = 32 * a3;
    while (1)
    {
      v10 = *v8;
      if (**v8 != 2 || *(*(v10 + 1) + 8) - **(v10 + 1) != 32 || *sub_23F07019C(v10, 0) != 3)
      {
        break;
      }

      v8 += 4;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v11 = 0;
    if ((a4 & 1) == 0)
    {
LABEL_11:
      if (a5 == 2)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      if (a5 != 1)
      {
        LOBYTE(v11) = 1;
      }

      if ((v11 & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        sub_23EF3F240(&v14, "cannot create object from initializer list");
        sub_23F06D6C8(301, &v14, exception);
        __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
      }

      if (!v12)
      {
LABEL_18:
        *a1 = 2;
        operator new();
      }

LABEL_9:
      *a1 = 1;
      operator new();
    }
  }

  else
  {
LABEL_7:
    v11 = 1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  goto LABEL_9;
}

void sub_23F0721F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F5C0(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F07220C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_23F06F64C(va);
  v10[1] = v11;
  sub_23F06F5C0(&a9);
  operator delete(v10);
  _Unwind_Resume(a1);
}

void sub_23F07224C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void ***sub_23F072284(void ****a1, void ***a2, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (!a3)
  {
    return v4;
  }

  v9 = a1[1];
  v8 = a1[2];
  if (a3 > (v8 - v9) >> 4)
  {
    v10 = *a1;
    v11 = a3 + ((v9 - *a1) >> 4);
    if (v11 >> 60)
    {
      sub_23F063D28();
    }

    v12 = v8 - v10;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v58 = a1;
    if (v13)
    {
      if (!(v13 >> 60))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v35 = (16 * ((a2 - v10) >> 4));
    v54 = 0;
    v55 = v35;
    v56 = v35;
    v57 = 0;
    v36 = 16 * a3;
    v37 = &v35[2 * a3];
    do
    {
      sub_23F07191C(v35, a4);
      v35 += 2;
      v36 -= 16;
    }

    while (v36);
    v56 = v37;
    v38 = v55;
    v39 = a1[1];
    if (v39 == v4)
    {
      v45 = v55;
      v44 = v4;
    }

    else
    {
      v40 = v4;
      do
      {
        *v37 = *v40;
        v37[1] = v40[1];
        *v40 = 0;
        v40[1] = 0;
        v40 += 2;
        v37 += 2;
      }

      while (v40 != v39);
      v41 = v4;
      v42 = v4;
      do
      {
        v43 = *v42;
        v42 += 2;
        sub_23F06357C(v41 + 1, v43);
        v41 = v42;
      }

      while (v42 != v39);
      v44 = a1[1];
      v45 = v55;
      v37 = v56;
    }

    v46 = (v37 + v44 - v4);
    v56 = v46;
    a1[1] = v4;
    v47 = *a1;
    v48 = (v45 + *a1 - v4);
    if (*a1 != v4)
    {
      v49 = *a1;
      v50 = v48;
      do
      {
        *v50 = *v49;
        v50[1] = v49[1];
        *v49 = 0;
        v49[1] = 0;
        v49 += 2;
        v50 += 2;
      }

      while (v49 != v4);
      v51 = v47;
      do
      {
        v52 = *v51;
        v51 += 2;
        sub_23F06357C(v47 + 1, v52);
        v47 = v51;
      }

      while (v51 != v4);
      v47 = *a1;
      v46 = v56;
    }

    *a1 = v48;
    a1[1] = v46;
    a1[2] = v57;
    if (v47)
    {
      operator delete(v47);
    }

    return v38;
  }

  v14 = (v9 - a2) >> 4;
  v15 = 16 * a3;
  if (a3 > v14)
  {
    v16 = &v9[2 * (a3 - v14)];
    v17 = a1[1];
    v18 = v15 - 16 * v14;
    do
    {
      sub_23F07191C(v17, a4);
      v17 += 2;
      v18 -= 16;
    }

    while (v18);
    a1[1] = v16;
    if (v9 == v4)
    {
      return v4;
    }

    v19 = &v4[v15 / 8];
    v20 = &v16[v15 / 0xFFFFFFFFFFFFFFF8];
    v21 = v16;
    if (&v16[v15 / 0xFFFFFFFFFFFFFFF8] >= v9)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v16 = a1[1];
  v14 = a3;
  v19 = &a2[v15 / 8];
  v20 = &v9[v15 / 0xFFFFFFFFFFFFFFF8];
  v21 = v16;
  if (v9 >= v15)
  {
LABEL_19:
    v22 = v20;
    v21 = v16;
    do
    {
      *v21 = *v22;
      v21[1] = *(v22 + 8);
      *v22 = 0;
      *(v22 + 8) = 0;
      v22 += 16;
      v21 += 2;
    }

    while (v22 < v9);
  }

LABEL_21:
  a1[1] = v21;
  if (v16 != v19)
  {
    v23 = 0;
    do
    {
      v24 = &v20[v23 / 8];
      v25 = v20[v23 / 8 - 2];
      v26 = v20[v23 / 8 - 1];
      *(v24 - 16) = 0;
      *(v24 - 1) = 0;
      v27 = &v16[v23 / 8];
      v28 = LOBYTE(v16[v23 / 8 - 2]);
      *(v27 - 16) = v25;
      LOBYTE(v54) = v28;
      v29 = v16[v23 / 8 - 1];
      *(v27 - 1) = v26;
      v55 = v29;
      sub_23F06357C(&v55, v28);
      v23 -= 16;
    }

    while (&v4[2 * a3] - v16 != v23);
  }

  if (v4 <= a4)
  {
    if (a1[1] <= a4)
    {
      v30 = 0;
    }

    else
    {
      v30 = a3;
    }

    a4 += 16 * v30;
  }

  v31 = 0;
  do
  {
    v32 = &v4[v31];
    sub_23F07191C(&v54, a4);
    v33 = LOBYTE(v4[v31]);
    *v32 = v54;
    LOBYTE(v54) = v33;
    v34 = v4[v31 + 1];
    v32[1] = v55;
    v55 = v34;
    sub_23F06357C(&v55, v33);
    v31 += 2;
    --v14;
  }

  while (v14);
  return v4;
}

void sub_23F07260C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F06CAC0(va);
  _Unwind_Resume(a1);
}

void ***sub_23F072624(void ****a1, void ***a2, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (!a3)
  {
    return v4;
  }

  v9 = a1[1];
  v8 = a1[2];
  if (a3 > (v8 - v9) >> 4)
  {
    v10 = *a1;
    v11 = a3 + ((v9 - *a1) >> 4);
    if (v11 >> 60)
    {
      sub_23F063D28();
    }

    v12 = v8 - v10;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v58 = a1;
    if (v13)
    {
      if (!(v13 >> 60))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v35 = (16 * ((a2 - v10) >> 4));
    v54 = 0;
    v55 = v35;
    v56 = v35;
    v57 = 0;
    v36 = 16 * a3;
    v37 = &v35[2 * a3];
    do
    {
      sub_23F06F0C0(v35, a4);
      v35 += 2;
      v36 -= 16;
    }

    while (v36);
    v56 = v37;
    v38 = v55;
    v39 = a1[1];
    if (v39 == v4)
    {
      v45 = v55;
      v44 = v4;
    }

    else
    {
      v40 = v4;
      do
      {
        *v37 = *v40;
        v37[1] = v40[1];
        *v40 = 0;
        v40[1] = 0;
        v40 += 2;
        v37 += 2;
      }

      while (v40 != v39);
      v41 = v4;
      v42 = v4;
      do
      {
        v43 = *v42;
        v42 += 2;
        sub_23F0655DC(v41 + 1, v43);
        v41 = v42;
      }

      while (v42 != v39);
      v44 = a1[1];
      v45 = v55;
      v37 = v56;
    }

    v46 = (v37 + v44 - v4);
    v56 = v46;
    a1[1] = v4;
    v47 = *a1;
    v48 = (v45 + *a1 - v4);
    if (*a1 != v4)
    {
      v49 = *a1;
      v50 = v48;
      do
      {
        *v50 = *v49;
        v50[1] = v49[1];
        *v49 = 0;
        v49[1] = 0;
        v49 += 2;
        v50 += 2;
      }

      while (v49 != v4);
      v51 = v47;
      do
      {
        v52 = *v51;
        v51 += 2;
        sub_23F0655DC(v47 + 1, v52);
        v47 = v51;
      }

      while (v51 != v4);
      v47 = *a1;
      v46 = v56;
    }

    *a1 = v48;
    a1[1] = v46;
    a1[2] = v57;
    if (v47)
    {
      operator delete(v47);
    }

    return v38;
  }

  v14 = (v9 - a2) >> 4;
  v15 = 16 * a3;
  if (a3 > v14)
  {
    v16 = &v9[2 * (a3 - v14)];
    v17 = a1[1];
    v18 = v15 - 16 * v14;
    do
    {
      sub_23F06F0C0(v17, a4);
      v17 += 2;
      v18 -= 16;
    }

    while (v18);
    a1[1] = v16;
    if (v9 == v4)
    {
      return v4;
    }

    v19 = &v4[v15 / 8];
    v20 = &v16[v15 / 0xFFFFFFFFFFFFFFF8];
    v21 = v16;
    if (&v16[v15 / 0xFFFFFFFFFFFFFFF8] >= v9)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v16 = a1[1];
  v14 = a3;
  v19 = &a2[v15 / 8];
  v20 = &v9[v15 / 0xFFFFFFFFFFFFFFF8];
  v21 = v16;
  if (v9 >= v15)
  {
LABEL_19:
    v22 = v20;
    v21 = v16;
    do
    {
      *v21 = *v22;
      v21[1] = *(v22 + 8);
      *v22 = 0;
      *(v22 + 8) = 0;
      v22 += 16;
      v21 += 2;
    }

    while (v22 < v9);
  }

LABEL_21:
  a1[1] = v21;
  if (v16 != v19)
  {
    v23 = 0;
    do
    {
      v24 = &v20[v23 / 8];
      v25 = v20[v23 / 8 - 2];
      v26 = v20[v23 / 8 - 1];
      *(v24 - 16) = 0;
      *(v24 - 1) = 0;
      v27 = &v16[v23 / 8];
      v28 = LOBYTE(v16[v23 / 8 - 2]);
      *(v27 - 16) = v25;
      LOBYTE(v54) = v28;
      v29 = v16[v23 / 8 - 1];
      *(v27 - 1) = v26;
      v55 = v29;
      sub_23F0655DC(&v55, v28);
      v23 -= 16;
    }

    while (&v4[2 * a3] - v16 != v23);
  }

  if (v4 <= a4)
  {
    if (a1[1] <= a4)
    {
      v30 = 0;
    }

    else
    {
      v30 = a3;
    }

    a4 += 16 * v30;
  }

  v31 = 0;
  do
  {
    v32 = &v4[v31];
    sub_23F06F0C0(&v54, a4);
    v33 = LOBYTE(v4[v31]);
    *v32 = v54;
    LOBYTE(v54) = v33;
    v34 = v4[v31 + 1];
    v32[1] = v55;
    v55 = v34;
    sub_23F0655DC(&v55, v33);
    v31 += 2;
    --v14;
  }

  while (v14);
  return v4;
}

void sub_23F0729AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F071EA8(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_23F0729C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, char a5@<W3>, char a6@<W4>)
{
  v14 = *MEMORY[0x277D85DE8];
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v6 = *(a3 + 24);
  if (v6)
  {
    if (v6 == a3)
    {
      v13 = v12;
      v7 = a6;
      v8 = a5;
      v9 = a4;
      (*(*v6 + 24))(v6, v12);
      a4 = v9;
      a5 = v8;
      a6 = v7;
    }

    else
    {
      v13 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  sub_23F073148(a4, &v11, v12, a5, a6);
  result = v13;
  if (v13 == v12)
  {
    return (*(*v13 + 32))(v13);
  }

  if (v13)
  {
    return (*(*v13 + 40))();
  }

  return result;
}

void sub_23F072B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F072B2C(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 24);
  if (v6)
  {
    if (v6 == a1)
    {
      v35 = v34;
      (*(*v6 + 24))(v6, v34);
    }

    else
    {
      v35 = (*(*v6 + 16))(v6);
    }

    sub_23F077E5C(&v36, a3, v34, *(a1 + 184));
    if (v35 == v34)
    {
      (*(*v35 + 32))(v35);
    }

    else if (v35)
    {
      (*(*v35 + 40))();
    }

    sub_23F0754B8(a1, &v36);
    if (a2)
    {
      v11 = sub_23F073284((a1 + 40));
      *(a1 + 32) = v11;
      if (v11 != 15)
      {
        sub_23F07607C(a1 + 40, &v33);
        v29 = *(a1 + 72);
        v30 = *(a1 + 88);
        v26 = 5;
        strcpy(v25, "value");
        sub_23F076768(a1, 15, v25, __p);
        sub_23F076170(101, &v29, __p, &v31);
        v41 = 1;
        if (v42 == 1)
        {
          exception = __cxa_allocate_exception(0x28uLL);
          v17 = sub_23F07A500(exception, &v31);
          __cxa_throw(v17, &unk_28517D130, sub_23F0771F4);
        }

        v31.__vftable = &unk_28517D058;
        std::runtime_error::~runtime_error(&v32);
        std::exception::~exception(&v31);
        if (v28 < 0)
        {
          operator delete(__p[0]);
          if ((v26 & 0x80000000) == 0)
          {
LABEL_24:
            if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_25;
            }

LABEL_29:
            operator delete(v33.__r_.__value_.__l.__data_);
            if (v41 == 1)
            {
              goto LABEL_26;
            }

            goto LABEL_30;
          }
        }

        else if ((v26 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        operator delete(v25[0]);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_25:
    if (v41 == 1)
    {
LABEL_26:
      v12 = *a3;
      *a3 = 9;
      v23 = v12;
      v13 = *(a3 + 1);
      *(a3 + 1) = 0;
      v24 = v13;
      v14 = &v24;
      goto LABEL_32;
    }

LABEL_30:
    if (*a3 != 9)
    {
LABEL_33:
      sub_23F07A924(&v36);
      return;
    }

    *a3 = 0;
    v21 = 9;
    v15 = *(a3 + 1);
    *(a3 + 1) = 0;
    v22 = v15;
    v14 = &v22;
    v12 = 9;
LABEL_32:
    sub_23F06357C(v14, v12);
    goto LABEL_33;
  }

  v7 = *(a1 + 184);
  v36 = a3;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  v40 = v7;
  sub_23F077248(a1, &v36);
  if (!a2)
  {
    goto LABEL_10;
  }

  v8 = sub_23F073284((a1 + 40));
  *(a1 + 32) = v8;
  if (v8 == 15)
  {
    goto LABEL_10;
  }

  sub_23F07607C(a1 + 40, &v33);
  v29 = *(a1 + 72);
  v30 = *(a1 + 88);
  v26 = 5;
  strcpy(v25, "value");
  sub_23F076768(a1, 15, v25, __p);
  sub_23F076170(101, &v29, __p, &v31);
  v39 = 1;
  if (v40 == 1)
  {
    v18 = __cxa_allocate_exception(0x28uLL);
    v19 = sub_23F07A500(v18, &v31);
    __cxa_throw(v19, &unk_28517D130, sub_23F0771F4);
  }

  v31.__vftable = &unk_28517D058;
  std::runtime_error::~runtime_error(&v32);
  std::exception::~exception(&v31);
  if ((v28 & 0x80000000) == 0)
  {
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

  operator delete(__p[0]);
  if (v26 < 0)
  {
LABEL_36:
    operator delete(v25[0]);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_37;
    }

LABEL_10:
    if (v39 != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_9:
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_37:
  operator delete(v33.__r_.__value_.__l.__data_);
  if (v39 == 1)
  {
LABEL_11:
    v9 = *a3;
    *a3 = 9;
    v10 = *(a3 + 1);
    *(a3 + 1) = 0;
    v20 = v10;
    sub_23F06357C(&v20, v9);
  }

LABEL_12:
  if (v37)
  {
    *(&v37 + 1) = v37;
    operator delete(v37);
  }
}

void sub_23F072FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::runtime_error a31, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_23F0771F4(&a31);
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a41 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a41 & 0x80000000) == 0)
  {
LABEL_4:
    v42 = *(v40 - 200);
    if (v42)
    {
LABEL_10:
      *(v40 - 192) = v42;
      operator delete(v42);
      _Unwind_Resume(a1);
    }

LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a36);
  v42 = *(v40 - 200);
  if (v42)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_23F073120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_23F06BCA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F073148(uint64_t a1, _OWORD *a2, uint64_t a3, char a4, char a5)
{
  v9 = *(a3 + 24);
  if (v9)
  {
    if (v9 == a3)
    {
      *(a1 + 24) = a1;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v9 + 16))(v9);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = *a2;
  *(a1 + 56) = a5;
  *(a1 + 60) = -1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_23F3091D6;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  v10 = localeconv();
  if (v10->decimal_point)
  {
    v11 = *v10->decimal_point;
  }

  else
  {
    v11 = 46;
  }

  *(a1 + 176) = v11;
  *(a1 + 184) = a4;
  *(a1 + 32) = sub_23F073284((a1 + 40));
  return a1;
}

void sub_23F073264(_Unwind_Exception *a1)
{
  sub_23F075474(v1 + 40);
  sub_23F06BCA8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_23F073284(int64x2_t *a1)
{
  if (!a1[2].i64[0])
  {
    if (sub_23F07515C(a1) == 239)
    {
      if (sub_23F07515C(a1) != 187 || sub_23F07515C(a1) != 191)
      {
        v2 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
LABEL_6:
        a1[6].i64[1] = v2;
        return 14;
      }
    }

    else
    {
      v4 = (a1 + 40);
      v5 = a1[2].i64[1];
      a1[1].i8[8] = 1;
      --a1[2].i64[0];
      if (v5 || (v4 = a1 + 3, (v5 = a1[3].i64[0]) != 0))
      {
        v4->i64[0] = v5 - 1;
      }

      if (a1[1].i32[1] != -1)
      {
        --a1[4].i64[0];
      }
    }
  }

  sub_23F073748(a1);
  if (a1[1].i8[0] == 1)
  {
    do
    {
      if (a1[1].i32[1] != 47)
      {
        break;
      }

      if (!sub_23F073900(a1))
      {
        return 14;
      }

      sub_23F073748(a1);
    }

    while ((a1[1].i8[0] & 1) != 0);
  }

  result = 8;
  switch(a1[1].i32[1])
  {
    case 0xFFFFFFFF:
    case 0:
      result = 15;
      break;
    case 0x22:

      result = sub_23F073A24(a1);
      break;
    case 0x2C:
      result = 13;
      break;
    case 0x2D:
    case 0x30:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:

      result = sub_23F074B08(a1);
      break;
    case 0x3A:
      result = 12;
      break;
    case 0x5B:
      return result;
    case 0x5D:
      result = 10;
      break;
    case 0x66:
      if (sub_23F07515C(a1) != 97 || sub_23F07515C(a1) != 108 || sub_23F07515C(a1) != 115 || sub_23F07515C(a1) != 101)
      {
        goto LABEL_43;
      }

      result = 2;
      break;
    case 0x6E:
      if (sub_23F07515C(a1) != 117 || sub_23F07515C(a1) != 108 || sub_23F07515C(a1) != 108)
      {
        goto LABEL_43;
      }

      result = 3;
      break;
    case 0x74:
      if (sub_23F07515C(a1) != 114 || sub_23F07515C(a1) != 117 || sub_23F07515C(a1) != 101)
      {
        goto LABEL_43;
      }

      result = 1;
      break;
    case 0x7B:
      result = 9;
      break;
    case 0x7D:
      result = 11;
      break;
    default:
LABEL_43:
      v2 = "invalid literal";
      goto LABEL_6;
  }

  return result;
}

void sub_23F073748(uint64_t a1)
{
  v2 = vdupq_n_s64(1uLL);
  v15 = v2;
  while (1)
  {
    *(a1 + 32) = vaddq_s64(*(a1 + 32), v2);
    if (*(a1 + 24) != 1)
    {
      break;
    }

    *(a1 + 24) = 0;
    v3 = *(a1 + 20);
    if (v3 == -1)
    {
      return;
    }

LABEL_7:
    v7 = *(a1 + 64);
    v6 = *(a1 + 72);
    if (v7 >= v6)
    {
      v10 = *(a1 + 56);
      v11 = (v7 - v10);
      v12 = v7 - v10 + 1;
      if (v12 < 0)
      {
        sub_23EF3AE74();
      }

      v13 = v6 - v10;
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        operator new();
      }

      *v11 = v3;
      memcpy(0, v10, v7 - v10);
      *(a1 + 56) = 0;
      *(a1 + 64) = v11 + 1;
      *(a1 + 72) = 0;
      if (v10)
      {
        operator delete(v10);
      }

      v2 = v15;
      *(a1 + 64) = v11 + 1;
      v8 = *(a1 + 20);
      if (v8 <= 12)
      {
        goto LABEL_9;
      }

LABEL_23:
      if (v8 != 13 && v8 != 32)
      {
        return;
      }
    }

    else
    {
      *v7 = v3;
      *(a1 + 64) = v7 + 1;
      v8 = *(a1 + 20);
      if (v8 > 12)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v8 != 9)
      {
        if (v8 != 10)
        {
          return;
        }

        v9 = *(a1 + 48) + 1;
        *(a1 + 40) = 0;
        *(a1 + 48) = v9;
      }
    }
  }

  v4 = *a1;
  if (*a1 != *(a1 + 8))
  {
    v5 = *v4;
    LOBYTE(v3) = *v4;
    *a1 = v4 + 1;
    *(a1 + 20) = v5;
    if (v5 == -1)
    {
      return;
    }

    goto LABEL_7;
  }

  *(a1 + 20) = -1;
}

uint64_t sub_23F073900(int64x2_t *a1)
{
  v2 = sub_23F07515C(a1);
  if (v2 == 42)
  {
    v5 = a1 + 3;
    do
    {
      while (1)
      {
        v6 = sub_23F07515C(a1);
        if (v6 != 42)
        {
          break;
        }

        if (sub_23F07515C(a1) == 47)
        {
          return 1;
        }

        a1[1].i8[8] = 1;
        v7 = a1[2].i64[1];
        --a1[2].i64[0];
        v8 = (a1 + 40);
        if (v7 || (v7 = v5->i64[0], v8 = a1 + 3, v5->i64[0]))
        {
          v8->i64[0] = v7 - 1;
        }

        if (a1[1].i32[1] != -1)
        {
          --a1[4].i64[0];
        }
      }
    }

    while ((v6 + 1) >= 2);
    result = 0;
    a1[6].i64[1] = "invalid comment; missing closing '*/'";
  }

  else if (v2 == 47)
  {
    do
    {
      do
      {
        v3 = sub_23F07515C(a1) + 1;
      }

      while (v3 >= 0xF);
    }

    while (((0x4803u >> v3) & 1) == 0);
    return 1;
  }

  else
  {
    result = 0;
    a1[6].i64[1] = "invalid comment; expecting '/' or '*' after '/'";
  }

  return result;
}

uint64_t sub_23F073A24(unsigned __int8 **a1)
{
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 103) = 0;
    v2 = a1[7];
    a1[8] = v2;
    v3 = *(a1 + 5);
    v4 = a1[9];
    if (v2 < v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator new();
  }

  *a1[10] = 0;
  a1[11] = 0;
  v2 = a1[7];
  a1[8] = v2;
  v3 = *(a1 + 5);
  v5 = a1[9];
  if (v2 >= v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  *v2 = v3;
  v6 = a1 + 10;
  a1[8] = v2 + 1;
  v74 = vdupq_n_s64(1uLL);
  while (2)
  {
    *(a1 + 2) = vaddq_s64(*(a1 + 2), v74);
    if (*(a1 + 24) == 1)
    {
      *(a1 + 24) = 0;
      v10 = *(a1 + 5);
    }

    else
    {
      v11 = *a1;
      if (*a1 == a1[1])
      {
        v10 = -1;
      }

      else
      {
        v10 = *v11;
        *a1 = v11 + 1;
      }

      *(a1 + 5) = v10;
    }

    if (v10 == -1)
    {
      v22 = "invalid string: missing closing quote";
      goto LABEL_162;
    }

    v13 = a1[8];
    v12 = a1[9];
    if (v13 >= v12)
    {
      v15 = a1[7];
      v16 = (v13 - v15);
      v17 = v13 - v15 + 1;
      if (v17 < 0)
      {
        goto LABEL_197;
      }

      v18 = v12 - v15;
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        operator new();
      }

      v20 = v13 - v15;
      *v16 = v10;
      v14 = v16 + 1;
      memcpy(0, v15, v20);
      a1[7] = 0;
      a1[8] = v16 + 1;
      a1[9] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v13 = v10;
      v14 = v13 + 1;
    }

    a1[8] = v14;
    v21 = *(a1 + 5);
    if (v21 == 10)
    {
      v71 = a1[6] + 1;
      a1[5] = 0;
      a1[6] = v71;
      v22 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
      goto LABEL_162;
    }

    v22 = "invalid string: missing closing quote";
    switch(v21)
    {
      case -1:
        goto LABEL_162;
      case 0:
        v22 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
        goto LABEL_162;
      case 1:
        v22 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
        goto LABEL_162;
      case 2:
        v22 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
        goto LABEL_162;
      case 3:
        v22 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
        goto LABEL_162;
      case 4:
        v22 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
        goto LABEL_162;
      case 5:
        v22 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
        goto LABEL_162;
      case 6:
        v22 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
        goto LABEL_162;
      case 7:
        v22 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
        goto LABEL_162;
      case 8:
        v22 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
        goto LABEL_162;
      case 9:
        v22 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
        goto LABEL_162;
      case 11:
        v22 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
        goto LABEL_162;
      case 12:
        v22 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
        goto LABEL_162;
      case 13:
        v22 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
        goto LABEL_162;
      case 14:
        v22 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
        goto LABEL_162;
      case 15:
        v22 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
        goto LABEL_162;
      case 16:
        v22 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
        goto LABEL_162;
      case 17:
        v22 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
        goto LABEL_162;
      case 18:
        v22 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
        goto LABEL_162;
      case 19:
        v22 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
        goto LABEL_162;
      case 20:
        v22 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
        goto LABEL_162;
      case 21:
        v22 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
        goto LABEL_162;
      case 22:
        v22 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
        goto LABEL_162;
      case 23:
        v22 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
        goto LABEL_162;
      case 24:
        v22 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
        goto LABEL_162;
      case 25:
        v22 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
        goto LABEL_162;
      case 26:
        v22 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
        goto LABEL_162;
      case 27:
        v22 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
        goto LABEL_162;
      case 28:
        v22 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
        goto LABEL_162;
      case 29:
        v22 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
        goto LABEL_162;
      case 30:
        v22 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
        goto LABEL_162;
      case 31:
        v22 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
        goto LABEL_162;
      case 32:
      case 33:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
        goto LABEL_98;
      case 34:
        return 4;
      case 92:
        v67 = sub_23F07515C(a1);
        v22 = "invalid string: forbidden character after backslash";
        if (v67 <= 101)
        {
          if (v67 > 91)
          {
            if (v67 == 92)
            {
              std::string::push_back((a1 + 10), 92);
            }

            else
            {
              if (v67 != 98)
              {
                goto LABEL_162;
              }

              std::string::push_back((a1 + 10), 8);
            }
          }

          else if (v67 == 34)
          {
            std::string::push_back((a1 + 10), 34);
          }

          else
          {
            if (v67 != 47)
            {
              goto LABEL_162;
            }

            std::string::push_back((a1 + 10), 47);
          }
        }

        else if (v67 <= 113)
        {
          if (v67 == 102)
          {
            std::string::push_back((a1 + 10), 12);
          }

          else
          {
            if (v67 != 110)
            {
              goto LABEL_162;
            }

            std::string::push_back((a1 + 10), 10);
          }
        }

        else
        {
          switch(v67)
          {
            case 'r':
              std::string::push_back((a1 + 10), 13);
              break;
            case 't':
              std::string::push_back((a1 + 10), 9);
              break;
            case 'u':
              v68 = sub_23F0752C4(a1);
              if (v68 == -1)
              {
LABEL_198:
                v22 = "invalid string: '\\u' must be followed by 4 hex digits";
                goto LABEL_162;
              }

              v69 = v68;
              if ((v68 & 0xFFFFFC00) == 0xD800)
              {
                if (sub_23F07515C(a1) != 92 || sub_23F07515C(a1) != 117)
                {
                  goto LABEL_199;
                }

                v70 = sub_23F0752C4(a1);
                if (v70 == -1)
                {
                  goto LABEL_198;
                }

                if (v70 >> 10 != 55)
                {
LABEL_199:
                  v22 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
                  goto LABEL_162;
                }

                v69 = v70 + (v69 << 10) - 56613888;
              }

              else
              {
                if ((v68 & 0xFFFFFC00) == 0xDC00)
                {
                  v22 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
                  goto LABEL_162;
                }

                if (v68 <= 127)
                {
                  v66 = v68;
LABEL_114:
                  std::string::push_back((a1 + 10), v66);
                  continue;
                }

                if (v68 <= 0x7FF)
                {
                  std::string::push_back((a1 + 10), (v68 >> 6) | 0xC0);
                  v66 = v69 & 0x3F | 0x80;
                  goto LABEL_114;
                }

                if (!HIWORD(v68))
                {
                  std::string::push_back((a1 + 10), (v68 >> 12) | 0xE0);
                  goto LABEL_128;
                }
              }

              std::string::push_back((a1 + 10), (v69 >> 18) | 0xF0);
              std::string::push_back((a1 + 10), (v69 >> 12) & 0x3F | 0x80);
LABEL_128:
              std::string::push_back((a1 + 10), (v69 >> 6) & 0x3F | 0x80);
              std::string::push_back((a1 + 10), v69 & 0x3F | 0x80);
              continue;
            default:
              goto LABEL_162;
          }
        }

        continue;
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
        std::string::push_back((a1 + 10), v21);
        *(a1 + 2) = vaddq_s64(*(a1 + 2), vdupq_n_s64(1uLL));
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          v23 = *(a1 + 5);
        }

        else
        {
          v24 = *a1;
          if (*a1 == a1[1])
          {
            v23 = -1;
          }

          else
          {
            v23 = *v24;
            *a1 = v24 + 1;
          }

          *(a1 + 5) = v23;
        }

        if (v23 == -1)
        {
          goto LABEL_161;
        }

        v26 = a1[8];
        v25 = a1[9];
        if (v26 >= v25)
        {
          v28 = a1[7];
          v29 = (v26 - v28);
          v30 = v26 - v28 + 1;
          if (v30 < 0)
          {
            goto LABEL_197;
          }

          v31 = v25 - v28;
          if (2 * v31 > v30)
          {
            v30 = 2 * v31;
          }

          if (v31 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v32 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v30;
          }

          if (v32)
          {
            operator new();
          }

          v43 = v26 - v28;
          *v29 = v23;
          v27 = v29 + 1;
          memcpy(0, v28, v43);
          a1[7] = 0;
          a1[8] = v29 + 1;
          a1[9] = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v26 = v23;
          v27 = v26 + 1;
        }

        a1[8] = v27;
        v21 = *(a1 + 5);
        if (v21 == 10)
        {
          goto LABEL_160;
        }

        goto LABEL_97;
      case 224:
        std::string::push_back((a1 + 10), -32);
        sub_23F07515C(a1);
        v65 = *(a1 + 5);
        if ((v65 - 192) < 0xFFFFFFE0)
        {
          goto LABEL_161;
        }

        goto LABEL_112;
      case 225:
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 238:
      case 239:
        std::string::push_back((a1 + 10), v21);
        *(a1 + 2) = vaddq_s64(*(a1 + 2), vdupq_n_s64(1uLL));
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          v33 = *(a1 + 5);
        }

        else
        {
          v34 = *a1;
          if (*a1 == a1[1])
          {
            v33 = -1;
          }

          else
          {
            v33 = *v34;
            *a1 = v34 + 1;
          }

          *(a1 + 5) = v33;
        }

        if (v33 == -1)
        {
          goto LABEL_161;
        }

        v36 = a1[8];
        v35 = a1[9];
        if (v36 >= v35)
        {
          v38 = a1[7];
          v39 = (v36 - v38);
          v40 = v36 - v38 + 1;
          if (v40 < 0)
          {
            goto LABEL_197;
          }

          v41 = v35 - v38;
          if (2 * v41 > v40)
          {
            v40 = 2 * v41;
          }

          if (v41 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v42 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v40;
          }

          if (v42)
          {
            operator new();
          }

          v45 = v36 - v38;
          *v39 = v33;
          v37 = v39 + 1;
          memcpy(0, v38, v45);
          a1[7] = 0;
          a1[8] = v39 + 1;
          a1[9] = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v36 = v33;
          v37 = v36 + 1;
        }

        a1[8] = v37;
        v46 = *(a1 + 5);
        if (v46 == 10)
        {
          goto LABEL_160;
        }

        if ((v46 - 192) < 0xFFFFFFC0)
        {
          goto LABEL_161;
        }

        v47 = *(a1 + 103);
        if (v47 < 0)
        {
          v48 = a1[12] & 0x7FFFFFFFFFFFFFFFLL;
          if (a1[11] == (v48 - 1))
          {
            if (v48 != 0x7FFFFFFFFFFFFFF8)
            {
              if (v48 - 1 >= 0x3FFFFFFFFFFFFFF3)
              {
                operator new();
              }

LABEL_76:
              operator new();
            }

            goto LABEL_201;
          }

          v50 = *v6;
          v49 = a1[11];
          a1[11] = v49 + 1;
        }

        else
        {
          if (*(a1 + 103) == 22)
          {
            goto LABEL_76;
          }

          v49 = *(a1 + 103);
          *(a1 + 103) = (v47 + 1) & 0x7F;
          v50 = a1 + 10;
        }

        v51 = &v49[v50];
        *v51 = v46;
        v51[1] = 0;
        *(a1 + 2) = vaddq_s64(*(a1 + 2), vdupq_n_s64(1uLL));
        if (a1[3])
        {
          *(a1 + 24) = 0;
          v52 = *(a1 + 5);
          if (v52 == -1)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v53 = *a1;
          if (*a1 == a1[1])
          {
            *(a1 + 5) = -1;
            goto LABEL_161;
          }

          v54 = *v53;
          LOBYTE(v52) = *v53;
          *a1 = v53 + 1;
          *(a1 + 5) = v54;
          if (v54 == -1)
          {
            goto LABEL_161;
          }
        }

        v55 = a1[8];
        v56 = a1[9];
        if (v55 >= v56)
        {
          v58 = a1[7];
          v59 = (v55 - v58);
          v60 = v55 - v58 + 1;
          if (v60 < 0)
          {
LABEL_197:
            sub_23EF3AE74();
          }

          v61 = v56 - v58;
          if (2 * v61 > v60)
          {
            v60 = 2 * v61;
          }

          if (v61 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v62 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v62 = v60;
          }

          if (v62)
          {
            operator new();
          }

          *v59 = v52;
          v57 = v59 + 1;
          memcpy(0, v58, v55 - v58);
          a1[7] = 0;
          a1[8] = v57;
          a1[9] = 0;
          if (v58)
          {
            operator delete(v58);
          }
        }

        else
        {
          *v55 = v52;
          v57 = v55 + 1;
        }

        a1[8] = v57;
        v21 = *(a1 + 5);
        if (v21 != 10)
        {
LABEL_97:
          if ((v21 - 192) < 0xFFFFFFC0)
          {
            goto LABEL_161;
          }

LABEL_98:
          v63 = *(a1 + 103);
          if (v63 < 0)
          {
            v64 = a1[12] & 0x7FFFFFFFFFFFFFFFLL;
            if (a1[11] != (v64 - 1))
            {
              v8 = *v6;
              v7 = a1[11];
              a1[11] = v7 + 1;
              goto LABEL_7;
            }

            if (v64 != 0x7FFFFFFFFFFFFFF8)
            {
              if (v64 - 1 >= 0x3FFFFFFFFFFFFFF3)
              {
                operator new();
              }

LABEL_104:
              operator new();
            }

LABEL_201:
            sub_23EF2F8F4();
          }

          if (*(a1 + 103) == 22)
          {
            goto LABEL_104;
          }

          v7 = *(a1 + 103);
          *(a1 + 103) = (v63 + 1) & 0x7F;
          v8 = a1 + 10;
LABEL_7:
          v9 = &v7[v8];
          *v9 = v21;
          v9[1] = 0;
          continue;
        }

LABEL_160:
        v72 = a1[6] + 1;
        a1[5] = 0;
        a1[6] = v72;
LABEL_161:
        v22 = "invalid string: ill-formed UTF-8 byte";
LABEL_162:
        a1[13] = v22;
        return 14;
      case 237:
        std::string::push_back((a1 + 10), -19);
        sub_23F07515C(a1);
        v65 = *(a1 + 5);
        if ((v65 - 160) < 0xFFFFFFE0)
        {
          goto LABEL_161;
        }

        goto LABEL_112;
      case 240:
        std::string::push_back((a1 + 10), -16);
        sub_23F07515C(a1);
        v44 = *(a1 + 5);
        if ((v44 - 192) < 0xFFFFFFD0)
        {
          goto LABEL_161;
        }

        goto LABEL_111;
      case 241:
      case 242:
      case 243:
        std::string::push_back((a1 + 10), v21);
        sub_23F07515C(a1);
        v44 = *(a1 + 5);
        if ((v44 - 192) < 0xFFFFFFC0)
        {
          goto LABEL_161;
        }

        goto LABEL_111;
      case 244:
        std::string::push_back((a1 + 10), -12);
        sub_23F07515C(a1);
        v44 = *(a1 + 5);
        if ((v44 - 144) < 0xFFFFFFF0)
        {
          goto LABEL_161;
        }

LABEL_111:
        std::string::push_back((a1 + 10), v44);
        sub_23F07515C(a1);
        v65 = *(a1 + 5);
        if ((v65 - 192) < 0xFFFFFFC0)
        {
          goto LABEL_161;
        }

LABEL_112:
        std::string::push_back((a1 + 10), v65);
        sub_23F07515C(a1);
        if ((*(a1 + 5) - 192) < 0xFFFFFFC0)
        {
          goto LABEL_161;
        }

        v66 = *(a1 + 5);
        goto LABEL_114;
      default:
        goto LABEL_161;
    }
  }
}

uint64_t sub_23F074B08(unsigned __int8 **a1)
{
  if (*(a1 + 103) < 0)
  {
    *a1[10] = 0;
    a1[11] = 0;
    v2 = a1[7];
    a1[8] = v2;
    v3 = *(a1 + 5);
    v5 = a1[9];
    if (v2 < v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator new();
  }

  *(a1 + 80) = 0;
  *(a1 + 103) = 0;
  v2 = a1[7];
  a1[8] = v2;
  v3 = *(a1 + 5);
  v4 = a1[9];
  if (v2 >= v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  *v2 = v3;
  v6 = (a1 + 10);
  a1[8] = v2 + 1;
  v7 = *(a1 + 5);
  v8 = 5;
  if ((v7 - 49) >= 9)
  {
    if (v7 != 48)
    {
      if (v7 == 45)
      {
        std::string::push_back((a1 + 10), 45);
      }

      v28 = sub_23F07515C(a1);
      if ((v28 - 49) < 9)
      {
        v7 = *(a1 + 5);
        v9 = 6;
        goto LABEL_8;
      }

      if (v28 != 48)
      {
        v30 = "invalid number; expected digit after '-'";
        goto LABEL_92;
      }

      v7 = *(a1 + 5);
      v8 = 6;
    }

    std::string::push_back((a1 + 10), v7);
    v31 = sub_23F07515C(a1);
    if (v31 != 46)
    {
      if (v31 != 69 && v31 != 101)
      {
        goto LABEL_67;
      }

LABEL_63:
      v24 = *(a1 + 5);
      goto LABEL_64;
    }

LABEL_43:
    std::string::push_back((a1 + 10), *(a1 + 136));
    if (sub_23F07515C(a1) - 48 > 9)
    {
      v30 = "invalid number; expected digit after '.'";
LABEL_92:
      a1[13] = v30;
      return 14;
    }

    do
    {
      std::string::push_back((a1 + 10), *(a1 + 20));
      v27 = sub_23F07515C(a1);
    }

    while ((v27 - 48) < 0xA);
    if (v27 != 101 && v27 != 69)
    {
      goto LABEL_66;
    }

    goto LABEL_63;
  }

  v9 = 5;
LABEL_8:
  v40 = v9;
  std::string::push_back((a1 + 10), v7);
  v41 = vdupq_n_s64(1uLL);
  while (1)
  {
    *(a1 + 2) = vaddq_s64(*(a1 + 2), v41);
    if (*(a1 + 24) == 1)
    {
      *(a1 + 24) = 0;
      v13 = *(a1 + 5);
    }

    else
    {
      v14 = *a1;
      if (*a1 == a1[1])
      {
        v13 = -1;
      }

      else
      {
        v13 = *v14;
        *a1 = v14 + 1;
      }

      *(a1 + 5) = v13;
    }

    if (v13 == -1)
    {
      v8 = v40;
      goto LABEL_67;
    }

    v16 = a1[8];
    v15 = a1[9];
    if (v16 >= v15)
    {
      v18 = a1[7];
      v19 = (v16 - v18);
      v20 = v16 - v18 + 1;
      if (v20 < 0)
      {
        sub_23EF3AE74();
      }

      v21 = v15 - v18;
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        operator new();
      }

      v23 = v16 - v18;
      *v19 = v13;
      v17 = v19 + 1;
      memcpy(0, v18, v23);
      a1[7] = 0;
      a1[8] = v19 + 1;
      a1[9] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v16 = v13;
      v17 = v16 + 1;
    }

    a1[8] = v17;
    v24 = *(a1 + 5);
    if ((v24 - 48) >= 0xA)
    {
      break;
    }

    v25 = *(a1 + 103);
    if (v25 < 0)
    {
      v26 = a1[12] & 0x7FFFFFFFFFFFFFFFLL;
      if (a1[11] == (v26 - 1))
      {
        if (v26 == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23EF2F8F4();
        }

        if (v26 - 1 > 0x3FFFFFFFFFFFFFF2)
        {
          operator new();
        }

LABEL_36:
        operator new();
      }

      v11 = *v6;
      v10 = a1[11];
      a1[11] = v10 + 1;
    }

    else
    {
      if (*(a1 + 103) == 22)
      {
        goto LABEL_36;
      }

      v10 = *(a1 + 103);
      *(a1 + 103) = (v25 + 1) & 0x7F;
      v11 = a1 + 10;
    }

    v12 = &v10[v11];
    *v12 = v24;
    v12[1] = 0;
  }

  if (v24 <= 68)
  {
    v8 = v40;
    if (v24 == 10)
    {
      v29 = a1[6] + 1;
      a1[5] = 0;
      a1[6] = v29;
      goto LABEL_67;
    }

    if (v24 != 46)
    {
      goto LABEL_67;
    }

    goto LABEL_43;
  }

  v8 = v40;
  if (v24 != 69 && v24 != 101)
  {
    goto LABEL_67;
  }

LABEL_64:
  std::string::push_back((a1 + 10), v24);
  v32 = sub_23F07515C(a1);
  if ((v32 - 48) < 0xA)
  {
    goto LABEL_65;
  }

  if (v32 != 43 && v32 != 45)
  {
    v30 = "invalid number; expected '+', '-', or digit after exponent";
    goto LABEL_92;
  }

  std::string::push_back((a1 + 10), *(a1 + 20));
  if (sub_23F07515C(a1) - 48 >= 0xA)
  {
    v30 = "invalid number; expected digit after exponent sign";
    goto LABEL_92;
  }

  do
  {
LABEL_65:
    std::string::push_back((a1 + 10), *(a1 + 20));
  }

  while (sub_23F07515C(a1) - 48 < 0xA);
LABEL_66:
  v8 = 7;
LABEL_67:
  v33 = a1 + 5;
  v34 = a1[5];
  *(a1 + 24) = 1;
  --a1[4];
  if (v34 || (v33 = a1 + 6, (v34 = a1[6]) != 0))
  {
    *v33 = v34 - 1;
  }

  if (*(a1 + 5) != -1)
  {
    --a1[8];
  }

  __endptr = 0;
  *__error() = 0;
  if (v8 == 6)
  {
    v38 = (a1 + 10);
    if (*(a1 + 103) < 0)
    {
      v38 = *v6;
    }

    v39 = strtoll(v38, &__endptr, 10);
    if (!*__error())
    {
      a1[14] = v39;
      return 6;
    }
  }

  else if (v8 == 5)
  {
    v35 = (a1 + 10);
    if (*(a1 + 103) < 0)
    {
      v35 = *v6;
    }

    v36 = strtoull(v35, &__endptr, 10);
    if (!*__error())
    {
      a1[15] = v36;
      return 5;
    }
  }

  if (*(a1 + 103) < 0)
  {
    v6 = *v6;
  }

  *(a1 + 16) = strtod(v6, &__endptr);
  return 7;
}

uint64_t sub_23F07515C(int64x2_t *a1)
{
  a1[2] = vaddq_s64(a1[2], vdupq_n_s64(1uLL));
  if (a1[1].i8[8] == 1)
  {
    a1[1].i8[8] = 0;
    v2 = a1[1].i32[1];
  }

  else
  {
    v3 = a1->i64[0];
    if (a1->i64[0] == a1->i64[1])
    {
      v2 = -1;
    }

    else
    {
      v2 = *v3;
      a1->i64[0] = (v3 + 1);
    }

    a1[1].i32[1] = v2;
  }

  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a1[4].i64[0];
  v4 = a1[4].u64[1];
  if (v5 >= v4)
  {
    v7 = a1[3].i64[1];
    v8 = (v5 - v7);
    v9 = v5 - v7 + 1;
    if (v9 < 0)
    {
      sub_23EF3AE74();
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v5 - v7;
    *v8 = v2;
    v6 = (v8 + 1);
    memcpy(0, v7, v12);
    a1[3].i64[1] = 0;
    a1[4].i64[0] = (v8 + 1);
    a1[4].i64[1] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v2;
    v6 = (v5 + 1);
  }

  a1[4].i64[0] = v6;
  result = a1[1].u32[1];
  if (result == 10)
  {
    v14 = a1[3].i64[0] + 1;
    a1[2].i64[1] = 0;
    a1[3].i64[0] = v14;
  }

  return result;
}

uint64_t sub_23F0752C4(int64x2_t *a1)
{
  sub_23F07515C(a1);
  v2 = a1[1].i32[1];
  v3 = v2 - 48;
  if ((v2 - 48) < 0xA)
  {
LABEL_4:
    sub_23F07515C(a1);
    v4 = a1[1].i32[1];
    v5 = v4 - 48;
    if ((v4 - 48) < 0xA)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if ((v2 - 65) <= 5)
  {
    v3 = v2 - 55;
    goto LABEL_4;
  }

  if ((v2 - 97) > 5)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2 - 87;
  sub_23F07515C(a1);
  v4 = a1[1].i32[1];
  v5 = v4 - 48;
  if ((v4 - 48) < 0xA)
  {
LABEL_5:
    sub_23F07515C(a1);
    v6 = a1[1].i32[1];
    v7 = v6 - 48;
    if ((v6 - 48) < 0xA)
    {
      goto LABEL_6;
    }

LABEL_12:
    if ((v6 - 65) < 6)
    {
      v7 = v6 - 55;
      sub_23F07515C(a1);
      v8 = a1[1].i32[1];
      v9 = v8 - 48;
      if ((v8 - 48) < 0xA)
      {
        return ((v3 << 12) + (v5 << 8) + 16 * v7 + v9);
      }

      goto LABEL_20;
    }

    if ((v6 - 97) > 5)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = v6 - 87;
    sub_23F07515C(a1);
    v8 = a1[1].i32[1];
    v9 = v8 - 48;
    if ((v8 - 48) >= 0xA)
    {
      goto LABEL_20;
    }

    return ((v3 << 12) + (v5 << 8) + 16 * v7 + v9);
  }

LABEL_10:
  if ((v4 - 65) >= 6)
  {
    if ((v4 - 97) > 5)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = v4 - 87;
    sub_23F07515C(a1);
    v6 = a1[1].i32[1];
    v7 = v6 - 48;
    if ((v6 - 48) >= 0xA)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = v4 - 55;
    sub_23F07515C(a1);
    v6 = a1[1].i32[1];
    v7 = v6 - 48;
    if ((v6 - 48) >= 0xA)
    {
      goto LABEL_12;
    }
  }

LABEL_6:
  sub_23F07515C(a1);
  v8 = a1[1].i32[1];
  v9 = v8 - 48;
  if ((v8 - 48) < 0xA)
  {
    return ((v3 << 12) + (v5 << 8) + 16 * v7 + v9);
  }

LABEL_20:
  if ((v8 - 65) < 6)
  {
    v9 = v8 - 55;
    return ((v3 << 12) + (v5 << 8) + 16 * v7 + v9);
  }

  if ((v8 - 97) <= 5)
  {
    v9 = v8 - 87;
    return ((v3 << 12) + (v5 << 8) + 16 * v7 + v9);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_23F075474(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_23F0754B8(uint64_t a1, uint64_t a2)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  while (1)
  {
LABEL_2:
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          v30.__vftable = 0;
          sub_23F079C40(a2, &v30, 0);
        }

        else if (v4 == 4)
        {
          sub_23F07A06C(a2, a1 + 120, 0);
        }

        else
        {
          v30.__vftable = *(a1 + 160);
          sub_23F07A2E4(a2, &v30, 0);
        }

        goto LABEL_28;
      }

      if (v4 == 1)
      {
        LOBYTE(v30.__vftable) = 1;
        sub_23F079A24(a2, &v30, 0);
        goto LABEL_28;
      }

      if (v4 == 2)
      {
        LOBYTE(v30.__vftable) = 0;
        sub_23F079A24(a2, &v30, 0);
        goto LABEL_28;
      }

      goto LABEL_60;
    }

    if (v4 <= 7)
    {
      if (v4 == 6)
      {
        v30.__vftable = *(a1 + 152);
        sub_23F079E54(a2, &v30, 0);
      }

      else
      {
        if ((*(a1 + 168) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v24 = *(a1 + 72);
          sub_23F07607C(a1 + 40, &v32);
          sub_23F07607C(a1 + 40, &v27);
          sub_23F06C3EC("number overflow parsing '", &v27, &__p);
          sub_23F06E0E4("'", &__p, &v29);
          sub_23F078C28(406, &v29, &v30);
          v16 = sub_23F078BCC(a2, v24, &v32, &v30);
          sub_23F078DC8(&v30);
          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }

          goto LABEL_72;
        }

        v30.__vftable = *(a1 + 168);
        sub_23F079808(a2, &v30, 0);
      }

      goto LABEL_28;
    }

    if (v4 != 8)
    {
      break;
    }

    if (!sub_23F07883C(a2, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_64;
    }

    v7 = sub_23F073284((a1 + 40));
    *(a1 + 32) = v7;
    if (v7 == 10)
    {
      v6 = sub_23F078A7C(a2);
      goto LABEL_24;
    }

    v13 = v34;
    if (v34 == v35 << 6)
    {
      if ((v34 + 1) < 0)
      {
        sub_23F06C6E8();
      }

      v14 = v35 << 7;
      if (v35 << 7 <= (v34 & 0x3FFFFFFFFFFFFFC0) + 64)
      {
        v14 = (v34 & 0x3FFFFFFFFFFFFFC0) + 64;
      }

      if (v34 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      sub_23F078018(&v33, v15);
      v13 = v34;
    }

    v34 = v13 + 1;
    *&v33[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
  }

  if (v4 != 9)
  {
    if (v4 == 14)
    {
      sub_23F07607C(a1 + 40, &v32);
      v29 = *(a1 + 72);
      *(&v27.__r_.__value_.__s + 23) = 5;
      strcpy(&v27, "value");
      sub_23F076768(a1, 0, &v27.__r_.__value_.__l.__data_, &__p);
      sub_23F076170(101, &v29, &__p, &v30);
      *(a2 + 88) = 1;
      if (*(a2 + 128) == 1)
      {
        exception = __cxa_allocate_exception(0x28uLL);
        v19 = sub_23F07A500(exception, &v30);
        __cxa_throw(v19, &unk_28517D130, sub_23F0771F4);
      }

LABEL_61:
      v30.__vftable = &unk_28517D058;
      std::runtime_error::~runtime_error(&v31);
      std::exception::~exception(&v30);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

LABEL_67:
          operator delete(v32.__r_.__value_.__l.__data_);
          goto LABEL_64;
        }
      }

      else if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_63;
      }

      operator delete(v27.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_67;
    }

LABEL_60:
    sub_23F07607C(a1 + 40, &v32);
    v29 = *(a1 + 72);
    *(&v27.__r_.__value_.__s + 23) = 5;
    strcpy(&v27, "value");
    sub_23F076768(a1, 16, &v27.__r_.__value_.__l.__data_, &__p);
    sub_23F076170(101, &v29, &__p, &v30);
    *(a2 + 88) = 1;
    if (*(a2 + 128) == 1)
    {
      v25 = __cxa_allocate_exception(0x28uLL);
      v26 = sub_23F07A500(v25, &v30);
      __cxa_throw(v26, &unk_28517D130, sub_23F0771F4);
    }

    goto LABEL_61;
  }

  if ((sub_23F078144(a2, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_64;
  }

  v5 = sub_23F073284((a1 + 40));
  *(a1 + 32) = v5;
  if (v5 != 11)
  {
    if (v5 == 4)
    {
      sub_23F078600(a2, a1 + 120);
    }

    goto LABEL_70;
  }

  v6 = sub_23F078380(a2);
LABEL_24:
  if ((v6 & 1) == 0)
  {
LABEL_64:
    v16 = 0;
    goto LABEL_54;
  }

LABEL_28:
  v8 = v34;
  if (!v34)
  {
LABEL_53:
    v16 = 1;
    goto LABEL_54;
  }

  while (2)
  {
    if ((*&v33[((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v8 - 1)))
    {
      v9 = sub_23F073284((a1 + 40));
      *(a1 + 32) = v9;
      if (v9 == 13)
      {
        *(a1 + 32) = sub_23F073284((a1 + 40));
        goto LABEL_2;
      }

      if (v9 != 10)
      {
        v20 = *(a1 + 72);
        sub_23F07607C(a1 + 40, &v32);
        v29 = *(a1 + 72);
        sub_23EF3F240(&v27, "array");
        sub_23F076768(a1, 10, &v27.__r_.__value_.__l.__data_, &__p);
        sub_23F076170(101, &v29, &__p, &v30);
        v21 = sub_23F076020(a2, v20, &v32, &v30);
        goto LABEL_71;
      }

      v10 = sub_23F078A7C(a2);
LABEL_36:
      if ((v10 & 1) == 0)
      {
        goto LABEL_64;
      }

      v8 = v34 - 1;
      v34 = v8;
      if (!v8)
      {
        goto LABEL_53;
      }

      continue;
    }

    break;
  }

  v11 = sub_23F073284((a1 + 40));
  *(a1 + 32) = v11;
  if (v11 != 13)
  {
    if (v11 != 11)
    {
      v22 = *(a1 + 72);
      sub_23F07607C(a1 + 40, &v32);
      v29 = *(a1 + 72);
      sub_23EF3F240(&v27, "object");
      sub_23F076768(a1, 11, &v27.__r_.__value_.__l.__data_, &__p);
      sub_23F076170(101, &v29, &__p, &v30);
      v21 = sub_23F076020(a2, v22, &v32, &v30);
      goto LABEL_71;
    }

    v10 = sub_23F078380(a2);
    goto LABEL_36;
  }

  v12 = sub_23F073284((a1 + 40));
  *(a1 + 32) = v12;
  if (v12 == 4)
  {
    sub_23F078600(a2, a1 + 120);
  }

LABEL_70:
  v23 = *(a1 + 72);
  sub_23F07607C(a1 + 40, &v32);
  v29 = *(a1 + 72);
  sub_23EF3F240(&v27, "object key");
  sub_23F076768(a1, 4, &v27.__r_.__value_.__l.__data_, &__p);
  sub_23F076170(101, &v29, &__p, &v30);
  v21 = sub_23F076020(a2, v23, &v32, &v30);
LABEL_71:
  v16 = v21;
  sub_23F0771F4(&v30);
LABEL_72:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_77;
    }

LABEL_74:
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_78:
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

LABEL_77:
    operator delete(v27.__r_.__value_.__l.__data_);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_78;
    }
  }

LABEL_54:
  if (v33)
  {
    operator delete(v33);
  }

  return v16;
}

void sub_23F075DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::runtime_error a27)
{
  sub_23F0771F4(&a27);
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
LABEL_3:
    if (*(v27 - 73) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  operator delete(a9);
  if (*(v27 - 73) < 0)
  {
LABEL_4:
    operator delete(*(v27 - 96));
    v29 = *(v27 - 72);
    if (v29)
    {
LABEL_10:
      operator delete(v29);
      _Unwind_Resume(a1);
    }

LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_8:
  v29 = *(v27 - 72);
  if (v29)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t sub_23F076020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 88) = 1;
  if (*(a1 + 128) == 1)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v7 = sub_23F07A500(exception, a4);
    __cxa_throw(v7, &unk_28517D130, sub_23F0771F4);
  }

  return 0;
}

void sub_23F07607C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 56);
  for (i = *(a1 + 64); v3 != i; ++v3)
  {
    v5 = *v3;
    if (v5 > 0x1F)
    {
      std::string::push_back(a2, v5);
    }

    else
    {
      v8 = 0;
      *__str = 0;
      snprintf(__str, 9uLL, "<U+%.4X>", v5);
      v6 = strlen(__str);
      std::string::append(a2, __str, v6);
    }
  }
}

void sub_23F076150(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F076170(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = 11;
  strcpy(v30, "parse_error");
  sub_23F06DC14(v30, a1, &v32);
  size = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v32.__r_.__value_.__l.__size_;
    v9 = (v32.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v9 - v32.__r_.__value_.__l.__size_ < 0xB)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v32.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v32.__r_.__value_.__l.__size_ + 11 - v9)
      {
        sub_23EF2F8F4();
      }

LABEL_6:
      operator new();
    }

    v10 = v32.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) - 12) < 0xB)
    {
      goto LABEL_6;
    }

    v10 = &v32;
  }

  v11 = v10 + size;
  *v11 = *"parse error";
  *(v11 + 7) = 1919906418;
  v12 = size + 11;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    v32.__r_.__value_.__l.__size_ = size + 11;
  }

  else
  {
    *(&v32.__r_.__value_.__s + 23) = v12 & 0x7F;
  }

  v10->__r_.__value_.__s.__data_[v12] = 0;
  v33 = v32;
  memset(&v32, 0, sizeof(v32));
  sub_23F07A5E4(a2, &v29);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v29;
  }

  else
  {
    v13 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v29.__r_.__value_.__l.__size_;
  }

  v15 = std::string::append(&v33, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v18 = __p.__r_.__value_.__l.__size_;
    v19 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v19 - __p.__r_.__value_.__l.__size_ < 2)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 2 - v19)
      {
        sub_23EF2F8F4();
      }

LABEL_23:
      operator new();
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_) = 8250;
    v21 = v18 + 2;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 21) < 2)
    {
      goto LABEL_23;
    }

    p_p = &__p;
    *(&__p.__r_.__value_.__l.__data_ + SHIBYTE(__p.__r_.__value_.__r.__words[2])) = 8250;
    v21 = v17 + 2;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      *(&__p.__r_.__value_.__s + 23) = v21 & 0x7F;
      goto LABEL_28;
    }
  }

  __p.__r_.__value_.__l.__size_ = v21;
LABEL_28:
  p_p->__r_.__value_.__s.__data_[v21] = 0;
  v35 = __p;
  memset(&__p, 0, sizeof(__p));
  v22 = *(a3 + 23);
  if (v22 >= 0)
  {
    v23 = a3;
  }

  else
  {
    v23 = *a3;
  }

  if (v22 >= 0)
  {
    v24 = *(a3 + 23);
  }

  else
  {
    v24 = *(a3 + 8);
  }

  v25 = std::string::append(&v35, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v37 = v25->__r_.__value_.__r.__words[2];
  v36 = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_36:
      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_48;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_37:
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_49;
  }

LABEL_48:
  operator delete(v29.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_38:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_50:
    operator delete(v32.__r_.__value_.__l.__data_);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_51;
  }

LABEL_49:
  operator delete(v33.__r_.__value_.__l.__data_);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_50;
  }

LABEL_39:
  if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_51:
  operator delete(v30[0]);
LABEL_40:
  v27 = *a2;
  if (v37 >= 0)
  {
    v28 = &v36;
  }

  else
  {
    v28 = v36;
  }

  *a4 = &unk_28517D058;
  *(a4 + 8) = a1;
  std::runtime_error::runtime_error((a4 + 16), v28);
  *a4 = &unk_28517D158;
  *(a4 + 32) = v27;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }
}

void sub_23F076664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a40 < 0)
  {
    operator delete(a35);
    if (a15 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_3;
  }

  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if (a27 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a28);
  if (a27 < 0)
  {
LABEL_5:
    operator delete(a22);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }

LABEL_11:
    operator delete(a16);
    goto LABEL_12;
  }

LABEL_10:
  if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_23F076748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    JUMPOUT(0x23F076720);
  }

  JUMPOUT(0x23F076688);
}

void sub_23F076758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    JUMPOUT(0x23F076738);
  }

  JUMPOUT(0x23F076740);
}

void sub_23F076768(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 23) = 13;
  strcpy(a4, "syntax error ");
  v7 = *(a3 + 23);
  if (v7 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  if (v8)
  {
    if (v8 + 14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    if (v8 + 14 > 0x16)
    {
      operator new();
    }

    memset(&v51, 0, sizeof(v51));
    *(&v51.__r_.__value_.__s + 23) = v8 + 14;
    qmemcpy(&v51, "while parsing ", 14);
    if ((v7 & 0x80u) == 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    memmove(&v51.__r_.__value_.__r.__words[1] + 6, v9, v8);
    *(&v51.__r_.__value_.__r.__words[1] + v8 + 6) = 0;
    size = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v51.__r_.__value_.__l.__size_;
      v12 = (v51.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v12 == v51.__r_.__value_.__l.__size_)
      {
        if ((v51.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
        {
          sub_23EF2F8F4();
        }

LABEL_16:
        operator new();
      }

      v11 = v51.__r_.__value_.__r.__words[0];
    }

    else
    {
      v11 = &v51;
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_16;
      }
    }

    v11->__r_.__value_.__s.__data_[size] = 32;
    v13 = size + 1;
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      v51.__r_.__value_.__l.__size_ = v13;
    }

    else
    {
      *(&v51.__r_.__value_.__s + 23) = v13 & 0x7F;
    }

    v11->__r_.__value_.__s.__data_[v13] = 0;
    __p = v51;
    memset(&v51, 0, sizeof(v51));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a4, p_p, v15);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    else if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    operator delete(v51.__r_.__value_.__l.__data_);
  }

LABEL_29:
  std::string::append(a4, "- ", 2uLL);
  v16 = *(a1 + 32);
  if (v16 == 14)
  {
    v17 = *(a1 + 144);
    v18 = strlen(v17);
    if (v18 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v18;
    if (v18)
    {
      memmove(&__dst, v17, v18);
      __dst.__r_.__value_.__s.__data_[v19] = 0;
      v20 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v20 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
LABEL_34:
        if (v20 - 9 < 0xE)
        {
          goto LABEL_47;
        }

        p_dst = &__dst;
        goto LABEL_66;
      }
    }

    v20 = __dst.__r_.__value_.__l.__size_;
    v24 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v24 - __dst.__r_.__value_.__l.__size_ < 0xE)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 14 - v24)
      {
        sub_23EF2F8F4();
      }

LABEL_47:
      operator new();
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
LABEL_66:
    qmemcpy(p_dst + v20, "; last read: '", 14);
    v30 = v20 + 14;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v20 + 14;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v30 & 0x7F;
    }

    p_dst->__r_.__value_.__s.__data_[v30] = 0;
    v50 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    sub_23F07607C(a1 + 40, &v48);
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v48;
    }

    else
    {
      v31 = v48.__r_.__value_.__r.__words[0];
    }

    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v48.__r_.__value_.__l.__size_;
    }

    v33 = std::string::append(&v50, v31, v32);
    v34 = *&v33->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v35 = v51.__r_.__value_.__l.__size_;
      v37 = (v51.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v37 == v51.__r_.__value_.__l.__size_)
      {
        if ((v51.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
        {
          sub_23EF2F8F4();
        }

LABEL_80:
        operator new();
      }

      v36 = v51.__r_.__value_.__r.__words[0];
    }

    else
    {
      v36 = &v51;
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_80;
      }
    }

    v36->__r_.__value_.__s.__data_[v35] = 39;
    v38 = v35 + 1;
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      v51.__r_.__value_.__l.__size_ = v38;
    }

    else
    {
      *(&v51.__r_.__value_.__s + 23) = v38 & 0x7F;
    }

    v36->__r_.__value_.__s.__data_[v38] = 0;
    __p = v51;
    memset(&v51, 0, sizeof(v51));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &__p;
    }

    else
    {
      v39 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a4, v39, v40);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_93:
        if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_119;
      }
    }

    else if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_93;
    }

    operator delete(v51.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_94:
      if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_120;
    }

LABEL_119:
    operator delete(v48.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_95:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_121;
    }

LABEL_120:
    operator delete(v50.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_96:
      if (!a2)
      {
        return;
      }

      goto LABEL_97;
    }

LABEL_121:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if (!a2)
    {
      return;
    }

    goto LABEL_97;
  }

  if (v16 > 0x10)
  {
    v21 = "unknown token";
  }

  else
  {
    v21 = off_278C746F8[v16];
  }

  v22 = strlen(v21);
  if (v22 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    operator new();
  }

  *(&v51.__r_.__value_.__s + 23) = v22;
  if (v22)
  {
    memcpy(&v51, v21, v22);
  }

  v51.__r_.__value_.__s.__data_[v23] = 0;
  v25 = std::string::insert(&v51, 0, "unexpected ", 0xBuLL);
  v26 = *&v25->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &__p;
  }

  else
  {
    v27 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a4, v27, v28);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_96;
    }
  }

  else if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_96;
  }

  operator delete(v51.__r_.__value_.__l.__data_);
  if (!a2)
  {
    return;
  }

LABEL_97:
  if (a2 > 0x10)
  {
    v41 = "unknown token";
  }

  else
  {
    v41 = off_278C74780[a2 - 1];
  }

  v42 = strlen(v41);
  if (v42 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  v43 = v42;
  if (v42 >= 0x17)
  {
    operator new();
  }

  *(&v51.__r_.__value_.__s + 23) = v42;
  if (v42)
  {
    memcpy(&v51, v41, v42);
  }

  v51.__r_.__value_.__s.__data_[v43] = 0;
  v44 = std::string::insert(&v51, 0, "; expected ", 0xBuLL);
  v45 = *&v44->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = &__p;
  }

  else
  {
    v46 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v47 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a4, v46, v47);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_116:
      operator delete(v51.__r_.__value_.__l.__data_);
    }
  }

  else if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_116;
  }
}

void sub_23F0770C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a33 < 0)
  {
    operator delete(a28);
    if (a14 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_3;
  }

  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a20 & 0x80000000) == 0)
    {
LABEL_10:
      if (*(v40 + 23) < 0)
      {
        operator delete(*v40);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a15);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_23F0771F4(std::runtime_error *a1)
{
  a1->__vftable = &unk_28517D058;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

uint64_t sub_23F077248(uint64_t a1, uint64_t a2)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v4 = (a1 + 120);
  while (2)
  {
    while (1)
    {
      v5 = *(a1 + 32);
      if (v5 <= 5)
      {
        break;
      }

      if (v5 <= 7)
      {
        if (v5 == 6)
        {
          v36.__vftable = *(a1 + 152);
          sub_23F07B3E4(a2, &v36);
        }

        else
        {
          if ((*(a1 + 168) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v30 = *(a1 + 72);
            sub_23F07607C(a1 + 40, &v38);
            sub_23F07607C(a1 + 40, &v33);
            sub_23F06C3EC("number overflow parsing '", &v33, &__p);
            sub_23F06E0E4("'", &__p, &v35);
            sub_23F078C28(406, &v35, &v36);
            v21 = sub_23F07A9E4(a2, v30, &v38, &v36);
            sub_23F078DC8(&v36);
            if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v35.__r_.__value_.__l.__data_);
            }

            goto LABEL_76;
          }

          v36.__vftable = *(a1 + 168);
          sub_23F07ACF8(a2, &v36);
        }

        goto LABEL_32;
      }

      switch(v5)
      {
        case 8:
          v38.__r_.__value_.__s.__data_[0] = 2;
          v36.__vftable = sub_23F07AA40(a2, &v38);
          sub_23F07903C(a2 + 8, &v36);
          v11 = sub_23F073284((a1 + 40));
          *(a1 + 32) = v11;
          if (v11 == 10)
          {
LABEL_28:
            *(a2 + 16) -= 8;
            v12 = v40;
            if (v40)
            {
              goto LABEL_33;
            }

            goto LABEL_57;
          }

          v18 = v40;
          if (v40 == v41 << 6)
          {
            if ((v40 + 1) < 0)
            {
              sub_23F06C6E8();
            }

            v19 = v41 << 7;
            if (v41 << 7 <= (v40 & 0x3FFFFFFFFFFFFFC0) + 64)
            {
              v19 = (v40 & 0x3FFFFFFFFFFFFFC0) + 64;
            }

            if (v40 <= 0x3FFFFFFFFFFFFFFELL)
            {
              v20 = v19;
            }

            else
            {
              v20 = 0x7FFFFFFFFFFFFFFFLL;
            }

            sub_23F078018(&v39, v20);
            v18 = v40;
          }

          v40 = v18 + 1;
          *&v39[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
          break;
        case 9:
          v38.__r_.__value_.__s.__data_[0] = 1;
          v36.__vftable = sub_23F07AA40(a2, &v38);
          sub_23F07903C(a2 + 8, &v36);
          v6 = sub_23F073284((a1 + 40));
          *(a1 + 32) = v6;
          if (v6 == 11)
          {
            goto LABEL_28;
          }

          if (v6 != 4)
          {
LABEL_73:
            v28 = *(a1 + 72);
            sub_23F07607C(a1 + 40, &v38);
            v35 = *(a1 + 72);
            sub_23EF3F240(&v33, "object key");
            sub_23F076768(a1, 4, &v33.__r_.__value_.__l.__data_, &__p);
            sub_23F076170(101, &v35, &__p, &v36);
            v26 = sub_23F077E00(a2, v28, &v38, &v36);
            goto LABEL_75;
          }

          v7 = *(*(*(a2 + 16) - 8) + 8);
          v36.__vftable = v4;
          *(a2 + 32) = sub_23F06D8E0(v7, &v4->~runtime_error, &unk_23F30FCF7, &v36) + 7;
          v8 = sub_23F073284((a1 + 40));
          *(a1 + 32) = v8;
          if (v8 != 12)
          {
            goto LABEL_74;
          }

          v9 = v40;
          if (v40 == v41 << 6)
          {
            if ((v40 + 1) < 0)
            {
              sub_23F06C6E8();
            }

            if (v40 > 0x3FFFFFFFFFFFFFFELL)
            {
              v10 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else if (v41 << 7 <= (v40 & 0x3FFFFFFFFFFFFFC0) + 64)
            {
              v10 = (v40 & 0x3FFFFFFFFFFFFFC0) + 64;
            }

            else
            {
              v10 = v41 << 7;
            }

            sub_23F078018(&v39, v10);
            v9 = v40;
          }

          v40 = v9 + 1;
          *&v39[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v9);
          *(a1 + 32) = sub_23F073284((a1 + 40));
          break;
        case 14:
          sub_23F07607C(a1 + 40, &v38);
          v35 = *(a1 + 72);
          *(&v33.__r_.__value_.__s + 23) = 5;
          strcpy(&v33, "value");
          sub_23F076768(a1, 0, &v33.__r_.__value_.__l.__data_, &__p);
          sub_23F076170(101, &v35, &__p, &v36);
          *(a2 + 40) = 1;
          if (*(a2 + 41) == 1)
          {
            exception = __cxa_allocate_exception(0x28uLL);
            v24 = sub_23F07A500(exception, &v36);
            __cxa_throw(v24, &unk_28517D130, sub_23F0771F4);
          }

LABEL_65:
          v36.__vftable = &unk_28517D058;
          std::runtime_error::~runtime_error(&v37);
          std::exception::~exception(&v36);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_70;
            }

LABEL_67:
            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_71:
              operator delete(v38.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_67;
            }

LABEL_70:
            operator delete(v33.__r_.__value_.__l.__data_);
            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_71;
            }
          }

          v21 = 0;
          goto LABEL_58;
        default:
LABEL_64:
          sub_23F07607C(a1 + 40, &v38);
          v35 = *(a1 + 72);
          *(&v33.__r_.__value_.__s + 23) = 5;
          strcpy(&v33, "value");
          sub_23F076768(a1, 16, &v33.__r_.__value_.__l.__data_, &__p);
          sub_23F076170(101, &v35, &__p, &v36);
          *(a2 + 40) = 1;
          if (*(a2 + 41) == 1)
          {
            v31 = __cxa_allocate_exception(0x28uLL);
            v32 = sub_23F07A500(v31, &v36);
            __cxa_throw(v32, &unk_28517D130, sub_23F0771F4);
          }

          goto LABEL_65;
      }
    }

    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        LOBYTE(v36.__vftable) = 1;
        sub_23F07AF54(a2, &v36);
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_64;
        }

        LOBYTE(v36.__vftable) = 0;
        sub_23F07AF54(a2, &v36);
      }
    }

    else if (v5 == 3)
    {
      v36.__vftable = 0;
      sub_23F07B1B0(a2);
    }

    else
    {
      if (v5 == 4)
      {
        sub_23F07B640(a2, v4);
      }

      v36.__vftable = *(a1 + 160);
      sub_23F07BA50(a2, &v36);
    }

LABEL_32:
    v12 = v40;
    if (!v40)
    {
LABEL_57:
      v21 = 1;
      goto LABEL_58;
    }

    while (1)
    {
LABEL_33:
      if ((*&v39[((v12 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v12 - 1)))
      {
        v13 = sub_23F073284((a1 + 40));
        *(a1 + 32) = v13;
        if (v13 == 13)
        {
          goto LABEL_44;
        }

        if (v13 != 10)
        {
          v25 = *(a1 + 72);
          sub_23F07607C(a1 + 40, &v38);
          v35 = *(a1 + 72);
          sub_23EF3F240(&v33, "array");
          sub_23F076768(a1, 10, &v33.__r_.__value_.__l.__data_, &__p);
          sub_23F076170(101, &v35, &__p, &v36);
          v26 = sub_23F077E00(a2, v25, &v38, &v36);
          goto LABEL_75;
        }

        goto LABEL_39;
      }

      v14 = sub_23F073284((a1 + 40));
      *(a1 + 32) = v14;
      if (v14 == 13)
      {
        break;
      }

      if (v14 != 11)
      {
        v27 = *(a1 + 72);
        sub_23F07607C(a1 + 40, &v38);
        v35 = *(a1 + 72);
        sub_23EF3F240(&v33, "object");
        sub_23F076768(a1, 11, &v33.__r_.__value_.__l.__data_, &__p);
        sub_23F076170(101, &v35, &__p, &v36);
        v26 = sub_23F077E00(a2, v27, &v38, &v36);
        goto LABEL_75;
      }

LABEL_39:
      *(a2 + 16) -= 8;
      v12 = v40 - 1;
      v40 = v12;
      if (!v12)
      {
        goto LABEL_57;
      }
    }

    v15 = sub_23F073284((a1 + 40));
    *(a1 + 32) = v15;
    if (v15 != 4)
    {
      goto LABEL_73;
    }

    v16 = *(*(*(a2 + 16) - 8) + 8);
    v36.__vftable = v4;
    *(a2 + 32) = sub_23F06D8E0(v16, &v4->~runtime_error, &unk_23F30FCF7, &v36) + 7;
    v17 = sub_23F073284((a1 + 40));
    *(a1 + 32) = v17;
    if (v17 == 12)
    {
LABEL_44:
      *(a1 + 32) = sub_23F073284((a1 + 40));
      continue;
    }

    break;
  }

LABEL_74:
  v29 = *(a1 + 72);
  sub_23F07607C(a1 + 40, &v38);
  v35 = *(a1 + 72);
  sub_23EF3F240(&v33, "object separator");
  sub_23F076768(a1, 12, &v33.__r_.__value_.__l.__data_, &__p);
  sub_23F076170(101, &v35, &__p, &v36);
  v26 = sub_23F077E00(a2, v29, &v38, &v36);
LABEL_75:
  v21 = v26;
  sub_23F0771F4(&v36);
LABEL_76:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_81;
    }

LABEL_78:
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_82:
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_81:
    operator delete(v33.__r_.__value_.__l.__data_);
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_82;
    }
  }

LABEL_58:
  if (v39)
  {
    operator delete(v39);
  }

  return v21;
}

void sub_23F077BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::runtime_error a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23F0771F4(&a27);
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
LABEL_3:
    if (a36 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  operator delete(a9);
  if (a36 < 0)
  {
LABEL_4:
    operator delete(a31);
    v38 = *(v36 - 104);
    if (v38)
    {
LABEL_10:
      operator delete(v38);
      _Unwind_Resume(a1);
    }

LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_8:
  v38 = *(v36 - 104);
  if (v38)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t sub_23F077E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 40) = 1;
  if (*(a1 + 41) == 1)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v7 = sub_23F07A500(exception, a4);
    __cxa_throw(v7, &unk_28517D130, sub_23F0771F4);
  }

  return 0;
}

uint64_t sub_23F077E5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  v6 = a1 + 96;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  v7 = *(a3 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a3)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    *(a1 + 120) = v7;
    goto LABEL_6;
  }

  *(a1 + 120) = v6;
  (*(**(a3 + 24) + 24))(*(a3 + 24), v6);
LABEL_6:
  *(a1 + 144) = 0;
  *(a1 + 128) = a4;
  *(a1 + 136) = 9;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v8 == v9 << 6)
  {
    if ((v8 + 1) < 0)
    {
      sub_23F06C6E8();
    }

    v10 = v9 << 7;
    if (v10 <= (v8 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v10 = (v8 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_23F078018(a1 + 32, v11);
    v8 = *(a1 + 40);
  }

  *(a1 + 40) = v8 + 1;
  *(*(a1 + 32) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
  return a1;
}

void sub_23F077FB0(_Unwind_Exception *exception_object)
{
  v4 = v1[7];
  if (v4)
  {
    operator delete(v4);
    v5 = v1[4];
    if (!v5)
    {
LABEL_3:
      v6 = *v2;
      if (!*v2)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v5 = v1[4];
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *v2;
  if (!*v2)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  v1[2] = v6;
  operator delete(v6);
  _Unwind_Resume(exception_object);
}

void sub_23F078018(uint64_t a1, unint64_t a2)
{
  if (a2 > *(a1 + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23F06C6E8();
  }
}

uint64_t sub_23F078144(unsigned __int8 **a1, unint64_t a2)
{
  v3 = a1 + 1;
  LODWORD(v22.__r_.__value_.__l.__data_) = (a1[2] - a1[1]) >> 3;
  v21.__r_.__value_.__s.__data_[0] = 0;
  v4 = a1[15];
  if (!v4)
  {
    sub_23EF38C6C();
  }

  v6 = (*(*v4 + 48))(v4, &v22, &v21, a1 + 17);
  v7 = a1[5];
  v8 = a1[6];
  if (v7 == v8 << 6)
  {
    if ((v7 + 1) < 0)
    {
      sub_23F06C6E8();
    }

    v9 = v8 << 7;
    if (v9 <= (v7 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v9 = (v7 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v7 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_23F078018((a1 + 4), v10);
    v7 = a1[5];
  }

  a1[5] = (v7 + 1);
  v11 = a1[4];
  v12 = v7 >> 6;
  v13 = 1 << v7;
  if (v6)
  {
    v14 = *&v11[8 * v12] | v13;
  }

  else
  {
    v14 = *&v11[8 * v12] & ~v13;
  }

  *&v11[8 * v12] = v14;
  v22.__r_.__value_.__s.__data_[0] = 1;
  v23 = sub_23F078E1C(a1, &v22, 1);
  v24 = v15;
  sub_23F07903C(v3, &v24);
  if (a2 != -1)
  {
    v16 = *(a1[2] - 1);
    if (v16)
    {
      v17 = *v16;
      if (v17 > 2)
      {
        v18 = 1;
      }

      else
      {
        v18 = qword_23F314898[v17];
      }

      if (v18 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v21, a2);
        sub_23F06C3EC("excessive object size: ", &v21, &v22);
        sub_23F078C28(408, &v22, exception);
        __cxa_throw(exception, &unk_28517D0B0, sub_23F078DC8);
      }
    }
  }

  return 1;
}

void sub_23F078320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

uint64_t sub_23F078380(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8))
  {
    LODWORD(v27) = ((v2 - *(a1 + 8)) >> 3) - 1;
    LOBYTE(v24) = 1;
    v3 = *(a1 + 120);
    if (!v3)
    {
      sub_23EF38C6C();
    }

    if (((*(*v3 + 48))(v3, &v27, &v24) & 1) == 0)
    {
      sub_23F07191C(v30, (a1 + 136));
      v4 = *(*(a1 + 16) - 8);
      v5 = *v4;
      *v4 = v30[0];
      v30[0] = v5;
      v6 = *(v4 + 1);
      *(v4 + 1) = v31;
      v31 = v6;
      sub_23F06357C(&v31, v5);
    }
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = v7 - 8;
  *(a1 + 16) = v7 - 8;
  --*(a1 + 40);
  if (v8 != v7 - 8)
  {
    v10 = *(v7 - 16);
    if (v10)
    {
      v11 = *v10;
      if ((v11 - 1) <= 1)
      {
        v27 = v10;
        v28 = 0uLL;
        v29 = 0x8000000000000000;
        v12 = **(v10 + 1);
        v13 = v11 == 1;
        v14 = 2;
        if (v13)
        {
          v14 = 1;
        }

        (&v27)[v14] = v12;
        while (1)
        {
          v15 = *(v9 - 8);
          v25 = 0uLL;
          v24 = v15;
          v26 = 0x8000000000000000;
          v16 = *v15;
          if (v16 == 2)
          {
            *(&v25 + 1) = *(*(v15 + 1) + 8);
            if (sub_23F079624(&v27, &v24))
            {
              return 1;
            }
          }

          else if (v16 == 1)
          {
            *&v25 = *(v15 + 1) + 8;
            if (sub_23F079624(&v27, &v24))
            {
              return 1;
            }
          }

          else
          {
            v26 = 1;
            if (sub_23F079624(&v27, &v24))
            {
              return 1;
            }
          }

          if (*sub_23F079154(&v27) == 9)
          {
            break;
          }

          v17 = *v27;
          if (v17 == 2)
          {
            *(&v28 + 1) += 16;
            v9 = *(a1 + 16);
          }

          else if (v17 == 1)
          {
            v18 = v28;
            v19 = *(v28 + 8);
            if (v19)
            {
              do
              {
                v20 = v19;
                v19 = *v19;
              }

              while (v19);
            }

            else
            {
              do
              {
                v20 = v18[2];
                v13 = *v20 == v18;
                v18 = v20;
              }

              while (!v13);
            }

            *&v28 = v20;
            v9 = *(a1 + 16);
          }

          else
          {
            ++v29;
            v9 = *(a1 + 16);
          }
        }

        v21 = *(*(a1 + 16) - 8);
        v24 = v27;
        v25 = v28;
        v26 = v29;
        sub_23F079258(v21, &v24, v23);
      }
    }
  }

  return 1;
}

void sub_23F0787E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void **a10, unsigned __int8 a11)
{
  sub_23F06357C(&a10, a9);
  sub_23F06357C((v11 + 8), a11);
  _Unwind_Resume(a1);
}

uint64_t sub_23F07883C(unsigned __int8 **a1, unint64_t a2)
{
  v3 = a1 + 1;
  LODWORD(v22.__r_.__value_.__l.__data_) = (a1[2] - a1[1]) >> 3;
  v21.__r_.__value_.__s.__data_[0] = 2;
  v4 = a1[15];
  if (!v4)
  {
    sub_23EF38C6C();
  }

  v6 = (*(*v4 + 48))(v4, &v22, &v21, a1 + 17);
  v7 = a1[5];
  v8 = a1[6];
  if (v7 == v8 << 6)
  {
    if ((v7 + 1) < 0)
    {
      sub_23F06C6E8();
    }

    v9 = v8 << 7;
    if (v9 <= (v7 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v9 = (v7 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v7 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_23F078018((a1 + 4), v10);
    v7 = a1[5];
  }

  a1[5] = (v7 + 1);
  v11 = a1[4];
  v12 = v7 >> 6;
  v13 = 1 << v7;
  if (v6)
  {
    v14 = *&v11[8 * v12] | v13;
  }

  else
  {
    v14 = *&v11[8 * v12] & ~v13;
  }

  *&v11[8 * v12] = v14;
  v22.__r_.__value_.__s.__data_[0] = 2;
  v23 = sub_23F078E1C(a1, &v22, 1);
  v24 = v15;
  sub_23F07903C(v3, &v24);
  if (a2 != -1)
  {
    v16 = *(a1[2] - 1);
    if (v16)
    {
      v17 = *v16;
      if (v17 > 2)
      {
        v18 = 1;
      }

      else
      {
        v18 = qword_23F314898[v17];
      }

      if (v18 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v21, a2);
        sub_23F06C3EC("excessive array size: ", &v21, &v22);
        sub_23F078C28(408, &v22, exception);
        __cxa_throw(exception, &unk_28517D0B0, sub_23F078DC8);
      }
    }
  }

  return 1;
}

void sub_23F078A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

uint64_t sub_23F078A7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4 = *(v2 - 8);
  v3 = v2 - 8;
  if (!v4)
  {
    *(a1 + 16) = v3;
    goto LABEL_6;
  }

  v19 = ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1;
  v18 = 3;
  v5 = *(a1 + 120);
  if (!v5)
  {
    sub_23EF38C6C();
  }

  if ((*(*v5 + 48))(v5, &v19, &v18))
  {
    *(a1 + 16) -= 8;
LABEL_6:
    --*(a1 + 40);
    return 1;
  }

  sub_23F07191C(v16, (a1 + 136));
  v7 = *(*(a1 + 16) - 8);
  v8 = *v7;
  *v7 = v16[0];
  v16[0] = v8;
  v9 = *(v7 + 1);
  *(v7 + 1) = v17;
  v17 = v9;
  sub_23F06357C(&v17, v8);
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  *(a1 + 16) = v10 - 8;
  --*(a1 + 40);
  if (v11 == v10 - 8)
  {
    return 1;
  }

  v12 = *(v10 - 16);
  if (*v12 != 2)
  {
    return 1;
  }

  v13 = *(v12 + 8);
  v14 = *(v13 + 8);
  v15 = *(v14 - 16);
  v14 -= 16;
  sub_23F06357C((v14 + 8), v15);
  *(v13 + 8) = v14;
  return 1;
}

uint64_t sub_23F078BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 88) = 1;
  if (*(a1 + 128) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_23F079730(exception, a4);
    __cxa_throw(v7, &unk_28517D0B0, sub_23F078DC8);
  }

  return 0;
}

void sub_23F078C28(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 12;
  strcpy(__p, "out_of_range");
  sub_23F06DC14(__p, a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p[0]);
LABEL_9:
  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  *a3 = &unk_28517D058;
  *(a3 + 8) = a1;
  std::runtime_error::runtime_error((a3 + 16), v11);
  *a3 = &unk_28517D118;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_23F078D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::exception::~exception(v26);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F078DC8(std::runtime_error *a1)
{
  a1->__vftable = &unk_28517D058;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

uint64_t sub_23F078E1C(unsigned __int8 **a1, unsigned __int8 *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v5 = *a2;
    v29[0] = v5;
    sub_23F06DA90(&v30, v5);
    if (a3)
    {
      goto LABEL_5;
    }

    v32 = (a1[2] - a1[1]) >> 3;
    v31 = 5;
    v6 = a1[15];
    if (!v6)
    {
      sub_23EF38C6C();
    }

    if ((*(*v6 + 48))(v6, &v32, &v31, v29))
    {
LABEL_5:
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v13 = v29[0];
        v14 = v30;
        v29[0] = 0;
        v30 = 0;
        v15 = *a1;
        v16 = **a1;
        *v15 = v13;
        v27 = v16;
        v17 = *(v15 + 8);
        *(v15 + 8) = v14;
        v28 = v17;
        sub_23F06357C(&v28, v16);
LABEL_17:
        v12 = 1;
        goto LABEL_18;
      }

      v8 = *(v7 - 1);
      if (v8)
      {
        if (*v8 == 2)
        {
          v9 = *(v8 + 8);
          v10 = *(v9 + 8);
          if (v10 >= *(v9 + 16))
          {
            v11 = sub_23F063D40(v9, v29);
          }

          else
          {
            *v10 = v29[0];
            *(v10 + 8) = v30;
            v29[0] = 0;
            v30 = 0;
            v11 = (v10 + 16);
          }

          *(v9 + 8) = v11;
          goto LABEL_17;
        }

        v18 = a1[8] - 1;
        v19 = *&a1[7][(v18 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v18;
        if ((v19 >> v18))
        {
          v20 = v29[0];
          v21 = v30;
          v29[0] = 0;
          v30 = 0;
          v22 = a1[10];
          v23 = *v22;
          *v22 = v20;
          v24 = *(v22 + 1);
          *(v22 + 1) = v21;
          v26 = v24;
          sub_23F06357C(&v26, v23);
          goto LABEL_17;
        }
      }
    }

    v12 = 0;
LABEL_18:
    sub_23F06357C(&v30, v29[0]);
    return v12;
  }

  return 0;
}

void sub_23F07903C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_23F06C6E8();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

unsigned __int8 *sub_23F079154(unsigned __int8 **a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 2)
  {
    return a1[2];
  }

  if (v3 == 1)
  {
    return a1[1] + 56;
  }

  if (a1[3])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_23EF3F240(v5, "cannot get value");
    sub_23F070D14(214, v5, exception);
    __cxa_throw(exception, &unk_28517D0C8, sub_23F070EA8);
  }

  return result;
}

void sub_23F07921C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_23F079258(unsigned __int8 *a1@<X0>, unsigned __int8 **a2@<X1>, unsigned __int8 **a3@<X8>)
{
  if (*a2 != a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_23EF3F240(&v35, "iterator does not fit current value");
    sub_23F070D14(202, &v35, exception);
    __cxa_throw(exception, &unk_28517D0C8, sub_23F070EA8);
  }

  a3[1] = 0;
  v3 = a3 + 1;
  *a3 = a1;
  a3[2] = 0;
  a3[3] = 0x8000000000000000;
  v4 = *a1;
  if (v4 == 2)
  {
    v9 = *(a1 + 1);
    v10 = *(v9 + 8);
    a3[2] = v10;
    v12 = a2[2];
    if (v12 + 16 == v10)
    {
      v13 = a2[2];
      if (v10 == v12)
      {
LABEL_29:
        *(v9 + 8) = v13;
        a3[2] = v12;
        return;
      }
    }

    else
    {
      v13 = a2[2];
      do
      {
        v14 = v13;
        v15 = v13[16];
        v13 += 16;
        v16 = *(v14 + 3);
        *v13 = 0;
        *(v14 + 3) = 0;
        v17 = *v14;
        *v14 = v15;
        v35.__r_.__value_.__s.__data_[0] = v17;
        v18 = *(v14 + 1);
        *(v14 + 1) = v16;
        v35.__r_.__value_.__l.__size_ = v18;
        sub_23F06357C(&v35.__r_.__value_.__l.__size_, v17);
      }

      while (v14 + 32 != v10);
      v10 = *(v9 + 8);
      if (v10 == v13)
      {
        goto LABEL_29;
      }
    }

    v26 = (v10 - 8);
    do
    {
      v27 = (v26 - 1);
      sub_23F06357C(v26, *(v26 - 8));
      v26 -= 2;
    }

    while (v27 != v13);
    goto LABEL_29;
  }

  if (v4 != 1)
  {
    a3[3] = 1;
    if ((v4 - 3) > 5)
    {
      v31 = a1;
      v32 = __cxa_allocate_exception(0x20uLL);
      v33 = sub_23F06D864(v31);
      sub_23EF3F240(&v34, v33);
      sub_23F06C3EC("cannot use erase() with ", &v34, &v35);
      sub_23F06D6C8(307, &v35, v32);
      __cxa_throw(v32, &unk_28517D070, sub_23F06D88C);
    }

    if (a2[3])
    {
      v30 = __cxa_allocate_exception(0x20uLL);
      sub_23EF3F240(&v35, "iterator out of range");
      sub_23F070D14(205, &v35, v30);
      __cxa_throw(v30, &unk_28517D0C8, sub_23F070EA8);
    }

    if (v4 == 8)
    {
      v19 = a1;
      v21 = (a1 + 8);
      v20 = *(a1 + 1);
      v28 = *v20;
      if (*v20)
      {
        v20[1] = v28;
        v22 = v28;
        goto LABEL_32;
      }
    }

    else
    {
      if (v4 != 3)
      {
LABEL_34:
        *a1 = 0;
        return;
      }

      v19 = a1;
      v21 = (a1 + 8);
      v20 = *(a1 + 1);
      if (*(v20 + 23) < 0)
      {
        v22 = *v20;
LABEL_32:
        operator delete(v22);
        v20 = *v21;
      }
    }

    operator delete(v20);
    *v21 = 0;
    a1 = v19;
    goto LABEL_34;
  }

  v5 = *(a1 + 1);
  v6 = a2[1];
  v7 = *(v6 + 1);
  if (v7)
  {
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7);
  }

  else
  {
    v23 = a2[1];
    do
    {
      v8 = *(v23 + 2);
      v24 = *v8 == v23;
      v23 = v8;
    }

    while (!v24);
  }

  if (*v5 == v6)
  {
    *v5 = v8;
  }

  v25 = v5[1];
  --v5[2];
  sub_23EF36BE4(v25, v6);
  sub_23F06357C(v6 + 8, v6[56]);
  if (v6[55] < 0)
  {
    operator delete(*(v6 + 4));
  }

  operator delete(v6);
  *v3 = v8;
}

void sub_23F0795A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (v21)
  {
    __cxa_free_exception(v20);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23F079624(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_23EF3F240(v7, "cannot compare iterators of different containers");
    sub_23F070D14(212, v7, exception);
    __cxa_throw(exception, &unk_28517D0C8, sub_23F070EA8);
  }

  v2 = **a1;
  if (v2 == 2)
  {
    v3 = a1[2];
    v4 = a2[2];
  }

  else if (v2 == 1)
  {
    v3 = a1[1];
    v4 = a2[1];
  }

  else
  {
    v3 = a1[3];
    v4 = a2[3];
  }

  return v3 == v4;
}

void sub_23F0796F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23F079730(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28517D058;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x245CAC690](a1 + 16, a2 + 16);
  *a1 = &unk_28517D118;
  return a1;
}

void sub_23F0797A0(std::runtime_error *a1)
{
  a1->__vftable = &unk_28517D058;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F079808(unsigned __int8 **a1, void ***a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v28[0] = 7;
    v29 = v4;
    if (a3)
    {
      goto LABEL_5;
    }

    v31 = (a1[2] - a1[1]) >> 3;
    v30 = 5;
    v5 = a1[15];
    if (!v5)
    {
      sub_23EF38C6C();
    }

    if ((*(*v5 + 48))(v5, &v31, &v30, v28))
    {
LABEL_5:
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v12 = v28[0];
        v13 = v29;
        v28[0] = 0;
        v29 = 0;
        v14 = *a1;
        v15 = **a1;
        *v14 = v12;
        v26 = v15;
        v16 = *(v14 + 8);
        *(v14 + 8) = v13;
        v27 = v16;
        sub_23F06357C(&v27, v15);
LABEL_17:
        v11 = 1;
        goto LABEL_18;
      }

      v7 = *(v6 - 1);
      if (v7)
      {
        if (*v7 == 2)
        {
          v8 = *(v7 + 8);
          v9 = *(v8 + 8);
          if (v9 >= *(v8 + 16))
          {
            v10 = sub_23F063D40(v8, v28);
          }

          else
          {
            *v9 = v28[0];
            *(v9 + 8) = v29;
            v28[0] = 0;
            v29 = 0;
            v10 = (v9 + 16);
          }

          *(v8 + 8) = v10;
          goto LABEL_17;
        }

        v17 = a1[8] - 1;
        v18 = *&a1[7][(v17 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v17;
        if ((v18 >> v17))
        {
          v19 = v28[0];
          v20 = v29;
          v28[0] = 0;
          v29 = 0;
          v21 = a1[10];
          v22 = *v21;
          *v21 = v19;
          v23 = *(v21 + 1);
          *(v21 + 1) = v20;
          v25 = v23;
          sub_23F06357C(&v25, v22);
          goto LABEL_17;
        }
      }
    }

    v11 = 0;
LABEL_18:
    sub_23F06357C(&v29, v28[0]);
    return v11;
  }

  return 0;
}

uint64_t sub_23F079A24(unsigned __int8 **a1, unsigned __int8 *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v28[0] = 4;
    v29 = v4;
    if (a3)
    {
      goto LABEL_5;
    }

    v31 = (a1[2] - a1[1]) >> 3;
    v30 = 5;
    v5 = a1[15];
    if (!v5)
    {
      sub_23EF38C6C();
    }

    if ((*(*v5 + 48))(v5, &v31, &v30, v28))
    {
LABEL_5:
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v12 = v28[0];
        v13 = v29;
        v28[0] = 0;
        v29 = 0;
        v14 = *a1;
        v15 = **a1;
        *v14 = v12;
        v26 = v15;
        v16 = *(v14 + 8);
        *(v14 + 8) = v13;
        v27 = v16;
        sub_23F06357C(&v27, v15);
LABEL_17:
        v11 = 1;
        goto LABEL_18;
      }

      v7 = *(v6 - 1);
      if (v7)
      {
        if (*v7 == 2)
        {
          v8 = *(v7 + 8);
          v9 = *(v8 + 8);
          if (v9 >= *(v8 + 16))
          {
            v10 = sub_23F063D40(v8, v28);
          }

          else
          {
            *v9 = v28[0];
            *(v9 + 8) = v29;
            v28[0] = 0;
            v29 = 0;
            v10 = (v9 + 16);
          }

          *(v8 + 8) = v10;
          goto LABEL_17;
        }

        v17 = a1[8] - 1;
        v18 = *&a1[7][(v17 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v17;
        if ((v18 >> v17))
        {
          v19 = v28[0];
          v20 = v29;
          v28[0] = 0;
          v29 = 0;
          v21 = a1[10];
          v22 = *v21;
          *v21 = v19;
          v23 = *(v21 + 1);
          *(v21 + 1) = v20;
          v25 = v23;
          sub_23F06357C(&v25, v22);
          goto LABEL_17;
        }
      }
    }

    v11 = 0;
LABEL_18:
    sub_23F06357C(&v29, v28[0]);
    return v11;
  }

  return 0;
}

uint64_t sub_23F079C40(unsigned __int8 **a1, uint64_t a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v27[0] = 0;
    v28 = 0;
    if (a3)
    {
      goto LABEL_5;
    }

    v30 = (a1[2] - a1[1]) >> 3;
    v29 = 5;
    v4 = a1[15];
    if (!v4)
    {
      sub_23EF38C6C();
    }

    if ((*(*v4 + 48))(v4, &v30, &v29, v27))
    {
LABEL_5:
      v5 = a1[2];
      if (a1[1] == v5)
      {
        v11 = v27[0];
        v12 = v28;
        v27[0] = 0;
        v28 = 0;
        v13 = *a1;
        v14 = **a1;
        *v13 = v11;
        v25 = v14;
        v15 = *(v13 + 8);
        *(v13 + 8) = v12;
        v26 = v15;
        sub_23F06357C(&v26, v14);
LABEL_17:
        v10 = 1;
        goto LABEL_18;
      }

      v6 = *(v5 - 1);
      if (v6)
      {
        if (*v6 == 2)
        {
          v7 = *(v6 + 8);
          v8 = *(v7 + 8);
          if (v8 >= *(v7 + 16))
          {
            v9 = sub_23F063D40(v7, v27);
          }

          else
          {
            *v8 = v27[0];
            *(v8 + 8) = v28;
            v27[0] = 0;
            v28 = 0;
            v9 = (v8 + 16);
          }

          *(v7 + 8) = v9;
          goto LABEL_17;
        }

        v16 = a1[8] - 1;
        v17 = *&a1[7][(v16 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v16;
        if ((v17 >> v16))
        {
          v18 = v27[0];
          v19 = v28;
          v27[0] = 0;
          v28 = 0;
          v20 = a1[10];
          v21 = *v20;
          *v20 = v18;
          v22 = *(v20 + 1);
          *(v20 + 1) = v19;
          v24 = v22;
          sub_23F06357C(&v24, v21);
          goto LABEL_17;
        }
      }
    }

    v10 = 0;
LABEL_18:
    sub_23F06357C(&v28, v27[0]);
    return v10;
  }

  return 0;
}

uint64_t sub_23F079E54(unsigned __int8 **a1, void ***a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v28[0] = 5;
    v29 = v4;
    if (a3)
    {
      goto LABEL_5;
    }

    v31 = (a1[2] - a1[1]) >> 3;
    v30 = 5;
    v5 = a1[15];
    if (!v5)
    {
      sub_23EF38C6C();
    }

    if ((*(*v5 + 48))(v5, &v31, &v30, v28))
    {
LABEL_5:
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v12 = v28[0];
        v13 = v29;
        v28[0] = 0;
        v29 = 0;
        v14 = *a1;
        v15 = **a1;
        *v14 = v12;
        v26 = v15;
        v16 = *(v14 + 8);
        *(v14 + 8) = v13;
        v27 = v16;
        sub_23F06357C(&v27, v15);
LABEL_17:
        v11 = 1;
        goto LABEL_18;
      }

      v7 = *(v6 - 1);
      if (v7)
      {
        if (*v7 == 2)
        {
          v8 = *(v7 + 8);
          v9 = *(v8 + 8);
          if (v9 >= *(v8 + 16))
          {
            v10 = sub_23F063D40(v8, v28);
          }

          else
          {
            *v9 = v28[0];
            *(v9 + 8) = v29;
            v28[0] = 0;
            v29 = 0;
            v10 = (v9 + 16);
          }

          *(v8 + 8) = v10;
          goto LABEL_17;
        }

        v17 = a1[8] - 1;
        v18 = *&a1[7][(v17 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v17;
        if ((v18 >> v17))
        {
          v19 = v28[0];
          v20 = v29;
          v28[0] = 0;
          v29 = 0;
          v21 = a1[10];
          v22 = *v21;
          *v21 = v19;
          v23 = *(v21 + 1);
          *(v21 + 1) = v20;
          v25 = v23;
          sub_23F06357C(&v25, v22);
          goto LABEL_17;
        }
      }
    }

    v11 = 0;
LABEL_18:
    sub_23F06357C(&v29, v28[0]);
    return v11;
  }

  return 0;
}

uint64_t sub_23F07A06C(unsigned __int8 **a1, uint64_t a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    operator new();
  }

  return 0;
}

uint64_t sub_23F07A2E4(unsigned __int8 **a1, void ***a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v28[0] = 6;
    v29 = v4;
    if (a3)
    {
      goto LABEL_5;
    }

    v31 = (a1[2] - a1[1]) >> 3;
    v30 = 5;
    v5 = a1[15];
    if (!v5)
    {
      sub_23EF38C6C();
    }

    if ((*(*v5 + 48))(v5, &v31, &v30, v28))
    {
LABEL_5:
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v12 = v28[0];
        v13 = v29;
        v28[0] = 0;
        v29 = 0;
        v14 = *a1;
        v15 = **a1;
        *v14 = v12;
        v26 = v15;
        v16 = *(v14 + 8);
        *(v14 + 8) = v13;
        v27 = v16;
        sub_23F06357C(&v27, v15);
LABEL_17:
        v11 = 1;
        goto LABEL_18;
      }

      v7 = *(v6 - 1);
      if (v7)
      {
        if (*v7 == 2)
        {
          v8 = *(v7 + 8);
          v9 = *(v8 + 8);
          if (v9 >= *(v8 + 16))
          {
            v10 = sub_23F063D40(v8, v28);
          }

          else
          {
            *v9 = v28[0];
            *(v9 + 8) = v29;
            v28[0] = 0;
            v29 = 0;
            v10 = (v9 + 16);
          }

          *(v8 + 8) = v10;
          goto LABEL_17;
        }

        v17 = a1[8] - 1;
        v18 = *&a1[7][(v17 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v17;
        if ((v18 >> v17))
        {
          v19 = v28[0];
          v20 = v29;
          v28[0] = 0;
          v29 = 0;
          v21 = a1[10];
          v22 = *v21;
          *v21 = v19;
          v23 = *(v21 + 1);
          *(v21 + 1) = v20;
          v25 = v23;
          sub_23F06357C(&v25, v22);
          goto LABEL_17;
        }
      }
    }

    v11 = 0;
LABEL_18:
    sub_23F06357C(&v29, v28[0]);
    return v11;
  }

  return 0;
}

uint64_t sub_23F07A500(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28517D058;
  *(a1 + 8) = *(a2 + 8);
  MEMORY[0x245CAC690](a1 + 16, a2 + 16);
  *a1 = &unk_28517D158;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void sub_23F07A57C(std::runtime_error *a1)
{
  a1->__vftable = &unk_28517D058;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F07A5E4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v15, *(a1 + 16) + 1);
  v4 = std::string::insert(&v15, 0, " at line ", 9uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v16.__r_.__value_.__l.__size_;
    v7 = (v16.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v7 - v16.__r_.__value_.__l.__size_ < 9)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v16.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v16.__r_.__value_.__l.__size_ + 9 - v7)
      {
        sub_23EF2F8F4();
      }

LABEL_6:
      operator new();
    }

    v8 = v16.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) - 14) < 9)
    {
      goto LABEL_6;
    }

    v8 = &v16;
  }

  v9 = v8 + size;
  *v9 = *", column ";
  v9[8] = 32;
  v10 = size + 9;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    v16.__r_.__value_.__l.__size_ = size + 9;
  }

  else
  {
    *(&v16.__r_.__value_.__s + 23) = v10 & 0x7F;
  }

  v8->__r_.__value_.__s.__data_[v10] = 0;
  v17 = v16;
  memset(&v16, 0, sizeof(v16));
  std::to_string(&__p, *(a1 + 8));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = __p.__r_.__value_.__l.__size_;
  }

  v13 = std::string::append(&v17, p_p, v12);
  *a2 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_20:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(v17.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_21:
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_26:
    operator delete(v15.__r_.__value_.__l.__data_);
    return;
  }

LABEL_25:
  operator delete(v16.__r_.__value_.__l.__data_);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }
}

void sub_23F07A888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(a21);
    if (a20 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

void sub_23F07A914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    JUMPOUT(0x23F07A8D8);
  }

  JUMPOUT(0x23F07A90CLL);
}

uint64_t sub_23F07A924(uint64_t a1)
{
  sub_23F06357C((a1 + 144), *(a1 + 136));
  v2 = *(a1 + 120);
  if (v2 == a1 + 96)
  {
    (*(*v2 + 32))(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
LABEL_5:
      operator delete(v3);
    }
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      goto LABEL_5;
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *(a1 + 16) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_23F07A9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 40) = 1;
  if (*(a1 + 41) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_23F079730(exception, a4);
    __cxa_throw(v7, &unk_28517D0B0, sub_23F078DC8);
  }

  return 0;
}

unsigned __int8 *sub_23F07AA40(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v20 = v9;
    sub_23F06DA90(&v21, v9);
    v10 = *a1;
    v11 = **a1;
    *v10 = v20;
    v20 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v21;
    v21 = v12;
    sub_23F06357C(&v21, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_23F07AB90(v5, a2);
      }

      else
      {
        v7 = *a2;
        *v6 = v7;
        sub_23F06DA90((v6 + 8), v7);
        v8 = (v6 + 16);
        *(v5 + 8) = v6 + 16;
      }

      *(v5 + 8) = v8;
      return (*(*(*(a1[2] - 1) + 8) + 8) - 16);
    }

    else
    {
      v14 = *a2;
      v18 = v14;
      sub_23F06DA90(&v19, v14);
      v15 = a1[4];
      v16 = *v15;
      *v15 = v18;
      v17 = *(v15 + 1);
      *(v15 + 1) = v19;
      v19 = v17;
      sub_23F06357C(&v19, v16);
      return a1[4];
    }
  }
}

void ***sub_23F07AB90(void ****a1, unsigned __int8 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_23F063D28();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v17 = 16 * v2;
  v7 = *a2;
  *(16 * v2) = v7;
  sub_23F06DA90((16 * v2 + 8), v7);
  v8 = (16 * v2 + 16);
  v9 = *a1;
  v10 = a1[1];
  v11 = (16 * v2 + *a1 - v10);
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = (v17 + *a1 - v10);
    do
    {
      *v13 = *v12;
      *(v13 + 1) = *(v12 + 1);
      *v12 = 0;
      *(v12 + 1) = 0;
      v12 += 16;
      v13 += 16;
    }

    while (v12 != v10);
    v14 = v9;
    do
    {
      v15 = *v14;
      v14 += 16;
      sub_23F06357C(v9 + 1, v15);
      v9 = v14;
    }

    while (v14 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_23F07ACE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F06CAC0(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_23F07ACF8(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 7;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_23F06357C(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_23F07AE10(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 7;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return (*(*(*(a1[2] - 1) + 8) + 8) - 16);
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 7;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_23F06357C(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_23F07AE10(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    sub_23F063D28();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v10 = (v4 - v3) >> 4;
  v11 = 16 * v6;
  v12 = *a2;
  *v11 = 7;
  *(v11 + 8) = v12;
  v13 = 16 * v6 - 16 * v10;
  if (v3 != v4)
  {
    v14 = v3;
    v15 = v11 - 16 * v10;
    do
    {
      *v15 = *v14;
      *(v15 + 8) = v14[1];
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
      v15 += 16;
    }

    while (v14 != v4);
    v16 = v3;
    do
    {
      v17 = *v16;
      v16 += 2;
      sub_23F06357C(v3 + 1, v17);
      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v6 + 16;
}

unsigned __int8 *sub_23F07AF54(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 4;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_23F06357C(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_23F07B06C(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 4;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return (*(*(*(a1[2] - 1) + 8) + 8) - 16);
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 4;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_23F06357C(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_23F07B06C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    sub_23F063D28();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v10 = (v4 - v3) >> 4;
  v11 = 16 * v6;
  v12 = *a2;
  *v11 = 4;
  *(v11 + 8) = v12;
  v13 = 16 * v6 - 16 * v10;
  if (v3 != v4)
  {
    v14 = v3;
    v15 = v11 - 16 * v10;
    do
    {
      *v15 = *v14;
      *(v15 + 8) = v14[1];
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
      v15 += 16;
    }

    while (v14 != v4);
    v16 = v3;
    do
    {
      v17 = *v16;
      v16 += 2;
      sub_23F06357C(v3 + 1, v17);
      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v6 + 16;
}

unsigned __int8 *sub_23F07B1B0(unsigned __int8 **a1)
{
  v2 = a1[2];
  if (a1[1] == v2)
  {
    v7 = *a1;
    v8 = **a1;
    *v7 = 0;
    v15 = v8;
    v9 = *(v7 + 8);
    *(v7 + 8) = 0;
    v16 = v9;
    sub_23F06357C(&v16, v8);
    return *a1;
  }

  else
  {
    v3 = *(v2 - 1);
    if (*v3 == 2)
    {
      v4 = *(v3 + 8);
      v5 = *(v4 + 8);
      if (v5 >= *(v4 + 16))
      {
        v6 = sub_23F07B2AC(v4);
      }

      else
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        v6 = v5 + 16;
      }

      *(v4 + 8) = v6;
      return (*(*(*(a1[2] - 1) + 8) + 8) - 16);
    }

    else
    {
      v11 = a1[4];
      v12 = *v11;
      *v11 = 0;
      v13 = *(v11 + 1);
      *(v11 + 1) = 0;
      v14 = v13;
      sub_23F06357C(&v14, v12);
      return a1[4];
    }
  }
}

uint64_t sub_23F07B2AC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = (v3 - v2) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    sub_23F063D28();
  }

  v7 = *(a1 + 16) - v2;
  if (v7 >> 3 > v6)
  {
    v6 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (!(v8 >> 60))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v9 = (v3 - v2) >> 4;
  v10 = 16 * v5;
  *v10 = 0;
  *(v10 + 8) = 0;
  v11 = 16 * v5 + 16;
  v12 = v10 - 16 * v9;
  if (v2 != v3)
  {
    v13 = v2;
    v14 = v10 - 16 * v9;
    do
    {
      *v14 = *v13;
      *(v14 + 8) = v13[1];
      *v13 = 0;
      v13[1] = 0;
      v13 += 2;
      v14 += 16;
    }

    while (v13 != v3);
    v15 = v2;
    do
    {
      v16 = *v15;
      v15 += 2;
      sub_23F06357C(v2 + 1, v16);
      v2 = v15;
    }

    while (v15 != v3);
    v2 = *a1;
  }

  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v11;
}

unsigned __int8 *sub_23F07B3E4(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 5;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_23F06357C(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_23F07B4FC(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 5;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return (*(*(*(a1[2] - 1) + 8) + 8) - 16);
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 5;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_23F06357C(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_23F07B4FC(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    sub_23F063D28();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v10 = (v4 - v3) >> 4;
  v11 = 16 * v6;
  v12 = *a2;
  *v11 = 5;
  *(v11 + 8) = v12;
  v13 = 16 * v6 - 16 * v10;
  if (v3 != v4)
  {
    v14 = v3;
    v15 = v11 - 16 * v10;
    do
    {
      *v15 = *v14;
      *(v15 + 8) = v14[1];
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
      v15 += 16;
    }

    while (v14 != v4);
    v16 = v3;
    do
    {
      v17 = *v16;
      v16 += 2;
      sub_23F06357C(v3 + 1, v17);
      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v6 + 16;
}

void sub_23F07B640(unsigned __int8 **a1, uint64_t a2)
{
  v2 = a1[2];
  if (a1[1] != v2)
  {
    v3 = *(v2 - 1);
    if (*v3 == 2)
    {
      v4 = *(v3 + 8);
      v5 = *(v4 + 8);
      if (v5 < *(v4 + 16))
      {
        *(v5 + 8) = 0;
        *v5 = 3;
        operator new();
      }

      sub_23F07B88C(v4, a2);
    }

    operator new();
  }

  operator new();
}

void sub_23F07B844(_Unwind_Exception *a1)
{
  operator delete(v2);
  *(v1 + 8) = v3;
  _Unwind_Resume(a1);
}

void sub_23F07B88C(void ****a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 60))
  {
    v4 = a1[2] - *a1;
    if (v4 >> 3 > v3)
    {
      v3 = v4 >> 3;
    }

    if (v4 >= 0x7FFFFFFFFFFFFFF0)
    {
      v5 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = v3;
    }

    if (v5)
    {
      if (!(v5 >> 60))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v6 = 16 * v2;
    *(v6 + 8) = 0;
    *v6 = 3;
    operator new();
  }

  sub_23F063D28();
}

void sub_23F07BA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  operator delete(v9);
  sub_23F06CAC0(va);
  _Unwind_Resume(a1);
}

void sub_23F07BA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F06CAC0(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_23F07BA50(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 6;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_23F06357C(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_23F07BB68(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 6;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return (*(*(*(a1[2] - 1) + 8) + 8) - 16);
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 6;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_23F06357C(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_23F07BB68(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    sub_23F063D28();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v10 = (v4 - v3) >> 4;
  v11 = 16 * v6;
  v12 = *a2;
  *v11 = 6;
  *(v11 + 8) = v12;
  v13 = 16 * v6 - 16 * v10;
  if (v3 != v4)
  {
    v14 = v3;
    v15 = v11 - 16 * v10;
    do
    {
      *v15 = *v14;
      *(v15 + 8) = v14[1];
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
      v15 += 16;
    }

    while (v14 != v4);
    v16 = v3;
    do
    {
      v17 = *v16;
      v16 += 2;
      sub_23F06357C(v3 + 1, v17);
      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v6 + 16;
}

uint64_t sub_23F07BCAC(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3 == a1)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

_BYTE *sub_23F07BD58@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v39 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == a1)
    {
      v38 = v37;
      (*(*v9 + 24))(v9, v37, a3);
    }

    else
    {
      v38 = (*(*v9 + 16))(v9, a2, a3);
    }
  }

  else
  {
    v38 = 0;
  }

  v10 = std::istream::peek();
  sub_23F081038(v5, v10, &v26);
  if (v36)
  {
    callbacks = *byte_285184400;
    v11 = CGDataProviderCreateSequential(a2, &callbacks);
    sub_23F07D870(&v16, v11);
  }

  *&callbacks.version = v26;
  LOBYTE(callbacks.skipForward) = 0;
  v25 = 0;
  if (v35 != 1)
  {
    *a5 = v26;
    *(a5 + 16) = 0;
    *(a5 + 112) = 0;
    *(a5 + 120) = 0;
    goto LABEL_18;
  }

  sub_23EF57668(&callbacks.skipForward, &v27);
  v25 = 1;
  *a5 = *&callbacks.version;
  *(a5 + 16) = 0;
  *(a5 + 40) = 0;
  v12 = v18;
  if (v18 == 1)
  {
    *(a5 + 16) = *&callbacks.skipForward;
    *(a5 + 32) = callbacks.releaseInfo;
    memset(&callbacks.skipForward, 0, 24);
    *(a5 + 40) = 1;
    *(a5 + 48) = 0;
    v13 = a5 + 48;
    *(a5 + 104) = 0;
    if ((v24 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    v14 = v21;
    *(v13 + 16) = v20;
    *v13 = *v19;
    v19[0] = 0;
    v19[1] = 0;
    *(a5 + 72) = v14;
    *(a5 + 80) = *v22;
    *(a5 + 96) = v23;
    v20 = 0;
    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
    *(a5 + 104) = 1;
    *(a5 + 112) = 1;
    *(a5 + 120) = 0;
    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  *(a5 + 48) = 0;
  v13 = a5 + 48;
  *(a5 + 104) = 0;
  if (v24)
  {
    goto LABEL_15;
  }

LABEL_11:
  *(a5 + 112) = 1;
  *(a5 + 120) = 0;
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (SHIBYTE(callbacks.releaseInfo) < 0)
  {
    operator delete(callbacks.skipForward);
  }

LABEL_18:
  if ((v36 & 1) == 0 && v35 == 1)
  {
    if (v34 == 1)
    {
      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v31 < 0)
      {
        operator delete(v30);
      }
    }

    if (v29 == 1 && v28 < 0)
    {
      operator delete(v27);
    }
  }

  result = v38;
  if (v38 == v37)
  {
    return (*(*v38 + 32))(v38);
  }

  if (v38)
  {
    return (*(*v38 + 40))();
  }

  return result;
}

void sub_23F07CC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_23EF57834(v68 + 16);
  sub_23EF61C84(&a25);
  sub_23EF574C0(&a47);
  if (a66 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(&a67);
  sub_23EF3AE8C(&a68);
  sub_23EF574C0(v69 - 256);
  sub_23EF61BF8(v69 - 120);
  _Unwind_Resume(a1);
}

void sub_23F07D078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_23EF57834(v24 + 16);
  sub_23F07F0C8(va);
  _Unwind_Resume(a1);
}

void sub_23F07D094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_23EF3AE8C(&a9);
  sub_23F07F0C8(va);
  _Unwind_Resume(a1);
}

void sub_23F07D0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_23F07F0C8(va);
  _Unwind_Resume(a1);
}

void sub_23F07D2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F07D348(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F07D380(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F07D3A4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP13CGImageSourceEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP13CGImageSourceEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP13CGImageSourceEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP13CGImageSourceEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F07D608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F07D688(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F07D6C0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F07D6E4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP7CGImageEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP7CGImageEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP7CGImageEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP7CGImageEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F07D744(void *a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_23F07D870(&v4, v3);
}

void sub_23F07DA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F07DAF4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F07DB2C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F07DB50(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP14CGDataProviderEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP14CGDataProviderEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP14CGDataProviderEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP14CGDataProviderEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F07DBB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  LOBYTE(v8[0]) = 0;
  v16 = 0;
  if (*(a2 + 96) == 1)
  {
    sub_23EF57668(v8, a2);
    v16 = 1;
  }

  sub_23F07DD9C(&v17, v3, v8);
  *a3 = v17;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v27 == 1)
  {
    *(a3 + 40) = 0;
    v5 = v20;
    if (v20 == 1)
    {
      *(a3 + 16) = __p;
      *(a3 + 32) = v19;
      v19 = 0;
      __p = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
LABEL_6:
        *(a3 + 112) = 1;
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
        goto LABEL_6;
      }
    }

    v7 = v23;
    *(v6 + 16) = v22;
    *v6 = v21;
    v21 = 0uLL;
    *(a3 + 72) = v7;
    *(a3 + 80) = v24;
    *(a3 + 96) = v25;
    v22 = 0;
    v24 = 0uLL;
    v25 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_12:
  if (v16 != 1)
  {
    return;
  }

  if (v15 != 1)
  {
    goto LABEL_16;
  }

  if (v14 < 0)
  {
    operator delete(v13);
    if (v12 < 0)
    {
      goto LABEL_21;
    }

LABEL_16:
    if (v10 != 1)
    {
      return;
    }

    goto LABEL_17;
  }

  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  operator delete(v11);
  if (v10 != 1)
  {
    return;
  }

LABEL_17:
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }
}

uint64_t sub_23F07DD9C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = result;
  v4 = a2;
  LOBYTE(v6[0]) = 0;
  v15 = 0;
  if (*(a3 + 96) != 1)
  {
    *result = a2;
    *(result + 8) = &off_28517D370;
    *(result + 16) = 0;
    *(result + 112) = 0;
    return result;
  }

  sub_23EF57668(v6, a3);
  v15 = 1;
  *v3 = v4;
  *(v3 + 8) = &off_28517D370;
  *(v3 + 16) = 0;
  *(v3 + 112) = 0;
  *(v3 + 40) = 0;
  if (v8 == 1)
  {
    *(v3 + 16) = *v6;
    *(v3 + 32) = v7;
    v6[1] = 0;
    v7 = 0;
    v6[0] = 0;
    *(v3 + 40) = 1;
  }

  *(v3 + 48) = 0;
  *(v3 + 104) = 0;
  if (v14)
  {
    v5 = v11;
    *(v3 + 64) = v10;
    *(v3 + 48) = *v9;
    v9[0] = 0;
    v9[1] = 0;
    *(v3 + 72) = v5;
    *(v3 + 80) = *__p;
    *(v3 + 96) = v13;
    __p[1] = 0;
    v13 = 0;
    v10 = 0;
    __p[0] = 0;
    *(v3 + 104) = 1;
    *(v3 + 112) = 1;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
LABEL_7:
        if (v8 != 1)
        {
          return v3;
        }

        goto LABEL_14;
      }
    }

    else if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(v9[0]);
    if (v8 != 1)
    {
      return v3;
    }
  }

  else
  {
    *(v3 + 112) = 1;
    if (v8 != 1)
    {
      return v3;
    }
  }

LABEL_14:
  if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    return v3;
  }

  operator delete(v6[0]);
  return v3;
}

void sub_23F07DF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF57834(va);
  _Unwind_Resume(a1);
}

void sub_23F07E15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F07E1B0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23F07E5B0(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_23F07E2B0(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28517D1C0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23F07E3A4(uint64_t *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v16 + 7) = *(a2 + 15);
  v4 = *a2;
  v16[0] = *(a2 + 8);
  v3 = v16[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v11 = v4;
  *v12 = v3;
  *&v12[7] = *(v16 + 7);
  v13 = v5;
  memset(v16, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v15 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_28517D1C0[v9])(&v10, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_23EF42150(v2, &v11, 2uLL);
  *(v2 + 24) = 2;
  if ((v15 & 0x80000000) == 0)
  {
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v11);
    return;
  }

  operator delete(__p);
  if (v13 < 0)
  {
    goto LABEL_13;
  }
}

void sub_23F07E564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F07E5B0(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23EF3AE74();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_23F07E74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F07E760(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (v6)
    {
LABEL_4:
      v17 = *(a2 + 48);
      if (v17 <= 0x28 && ((1 << v17) & 0x1E3E3E0001ELL) != 0)
      {
        sub_23F07FC4C(a2, v39);
        *&v27 = &unk_285179588;
        v9 = *(a2 + 8);
        v10 = *(a2 + 16);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          v11 = *(a2 + 40);
          v12 = *(a2 + 48);
          v13 = *(a2 + 52);
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v11 = *(a2 + 40);
          v12 = *(a2 + 48);
          v13 = *(a2 + 52);
        }

        *(&v27 + 1) = v9;
        *&v28 = v10;
        *(&v28 + 1) = *(a2 + 24);
        LODWORD(v29) = *(a2 + 32);
        v30 = v11;
        LODWORD(v31) = v12;
        WORD2(v31) = v13;
        if (v10)
        {
          if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }
        }

        sub_23F19EEB0(&v27, v8);
      }

      v40 = 0;
      v41[0] = v39;
      v41[1] = "Invalid image format. Format ";
      v41[2] = v39;
      v41[3] = "Invalid image format. Format ";
      v41[4] = "Invalid image format. Format ";
      v42 = v41;
      sub_23F07F598(&v42);
      sub_23F07F300(&v38, v39, &v17);
    }
  }

  else if (v6)
  {
    goto LABEL_4;
  }

  sub_23F07F1D0(v18, "Unsupported format");
  v26 = 1;
  sub_23F300E04(v18, &v27);
  *a1 = v27;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v37 != 1)
  {
    *(a1 + 120) = 0;
    goto LABEL_26;
  }

  *(a1 + 40) = 0;
  v14 = v30;
  if (v30 == 1)
  {
    *(a1 + 16) = v28;
    *(a1 + 32) = v29;
    v29 = 0;
    v28 = 0uLL;
    *(a1 + 40) = 1;
    *(a1 + 48) = 0;
    v15 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v36 & 1) == 0)
    {
LABEL_14:
      *(a1 + 112) = 1;
      *(a1 + 120) = 0;
      if (!v14)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  else
  {
    *(a1 + 48) = 0;
    v15 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v36 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v16 = v33;
  *(v15 + 16) = v32;
  *v15 = v31;
  v31 = 0uLL;
  *(a1 + 72) = v16;
  *(a1 + 80) = v34;
  *(a1 + 96) = v35;
  v32 = 0;
  v34 = 0uLL;
  v35 = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  if (!v14)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

LABEL_26:
  if (v26 == 1)
  {
    if (v25 == 1)
    {
      if (v24 < 0)
      {
        operator delete(__p);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }
    }

    if (v20 == 1 && v19 < 0)
    {
      operator delete(v18[0]);
    }
  }
}

void sub_23F07EFB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F07F0C8(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        return v5;
      }
    }
  }

  else if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v2 = result;
        operator delete(*(result + 80));
        result = v2;
      }

      if (*(result + 71) < 0)
      {
        v3 = result;
        operator delete(*(result + 48));
        result = v3;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v4 = result;
      operator delete(*(result + 16));
      return v4;
    }
  }

  return result;
}

uint64_t sub_23F07F1D0(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v9) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v6 = __dst;
    sub_23EF34EA4(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 88) = 0;
    operator delete(v6);
    return a1;
  }

  LOBYTE(__dst) = 0;
  if (SHIBYTE(v9) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v9;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void sub_23F07F554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_23F07F598(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28517D1C0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void *sub_23F07F69C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23F07FA9C(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_23F07F79C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28517D1C0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23F07F890(uint64_t *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v16 + 7) = *(a2 + 15);
  v4 = *a2;
  v16[0] = *(a2 + 8);
  v3 = v16[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v11 = v4;
  *v12 = v3;
  *&v12[7] = *(v16 + 7);
  v13 = v5;
  memset(v16, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v15 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_28517D1C0[v9])(&v10, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_23EF42150(v2, &v11, 2uLL);
  *(v2 + 24) = 2;
  if ((v15 & 0x80000000) == 0)
  {
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v11);
    return;
  }

  operator delete(__p);
  if (v13 < 0)
  {
    goto LABEL_13;
  }
}

void sub_23F07FA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F07FA9C(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23EF3AE74();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_23F07FC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F07FC4C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a1 = v4;
      a2 = v5;
    }

    v2 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = a1;
        v9 = a2;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        a2 = v9;
        if (*(v8 + 53) == 1)
        {
          goto LABEL_8;
        }

LABEL_12:
        *a2 = 0;
        return;
      }
    }
  }

  if (*(a1 + 53) != 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v7 = *(*v2 + 96);

  v7(v2, 0);
}

void sub_23F07FD98(void *a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_23F07D404(&v4, v3);
}

void sub_23F07FEC4(void *a1, CFTypeRef cf, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (cf)
  {
    v3 = cf;
    CFRetain(cf);
    cf = v3;
  }

  sub_23F07FFF0(&v4, cf);
}

void sub_23F0801F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F080274(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F0802AC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F0802D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP18CGImageDestinationEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP18CGImageDestinationEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP18CGImageDestinationEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP18CGImageDestinationEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F0805A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x245CACD00](v3, 0x10B2C40EED050F3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F0805D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F0805EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_23EF41D10(&a10);
    _Unwind_Resume(a1);
  }

  sub_23EF41D10(&a10);
  _Unwind_Resume(a1);
}

void sub_23F080638(uint64_t a1, int a2, int a3)
{
  v3 = a3;
  v4 = a2;
  v7 = 0;
  v8[0] = v6;
  v8[1] = "Requested to load ";
  v8[2] = v6;
  v8[3] = "Requested to load ";
  v8[4] = "Requested to load ";
  v9 = v8;
  sub_23F081890(&v9);
  sub_23F07DF44(&v5, v6, &v4);
}

void sub_23F080884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F08092C(int a1, int a2)
{
  v3 = a2;
  v4 = a1;
  sub_23F080A84("Desired image format is ", &v4, " but file contains ", &v3, ".");
}

void sub_23F080A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F080A84(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v8 = 0;
  v9[0] = v7;
  v9[1] = a1;
  v9[2] = v7;
  v9[3] = a1;
  v9[4] = a1;
  v10 = v9;
  sub_23F082504(&v10);
  sub_23F07F300(&v6, v7, a2);
}

void sub_23F080BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080C74(int a1, int a2)
{
  v3 = a2;
  v4 = a1;
  sub_23F080DCC("Requested to load format ", &v4, ", but is not supported by ", &v3, ".");
}

void sub_23F080DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F080DCC(const char *a1, unsigned int *a2, uint64_t a3, int *a4, uint64_t a5)
{
  v12 = -1;
  v7 = strlen(a1);
  if (v7 < 0x7FFFFFFFFFFFFFF8)
  {
    v8 = v7;
    if (v7 < 0x17)
    {
      v11 = v7;
      if (v7)
      {
        memcpy(&__dst, a1, v7);
      }

      *(&__dst + v8) = 0;
      v12 = 1;
      sub_23F07F300(&v9, &__dst, a2);
    }

    operator new();
  }

  sub_23EF2F8F4();
}

void sub_23F080FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F081010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F081024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F081038(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49[19] = *MEMORY[0x277D85DE8];
  if (a2 == 255)
  {
    if ((a1 & 0xFFFFFFFB) != 0)
    {
      sub_23F080638(v37, a1, 4);
    }

    v5 = 4;
    goto LABEL_16;
  }

  if (a2 == 137)
  {
    if (a1 != 3)
    {
      if (a1)
      {
        sub_23F080638(v37, a1, 3);
      }
    }

    v5 = 3;
LABEL_16:
    *a3 = v5;
    *(a3 + 120) = 1;
    return;
  }

  if ((a2 & 0xFFFFFFFB) == 0x49)
  {
    if (a1 != 5 && a1)
    {
      sub_23F080638(v37, a1, 5);
    }

    v5 = 5;
    goto LABEL_16;
  }

  sub_23EF303E4(v37);
  *(&v38 + *(v38 - 3) + 8) = *(&v38 + *(v38 - 3) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x245CAC900](&v38, a2);
  if ((v48 & 0x10) != 0)
  {
    v7 = v47;
    if (v47 < v44)
    {
      v47 = v44;
      v7 = v44;
    }

    v8 = v43;
    v6 = v7 - v43;
    if (v7 - v43 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if ((v48 & 8) == 0)
    {
      v6 = 0;
      v16 = 0;
      goto LABEL_26;
    }

    v8 = v41;
    v6 = *(&v42 + 1) - v41;
    if ((*(&v42 + 1) - v41) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_59:
      sub_23EF2F8F4();
    }
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  v16 = v6;
  if (v6)
  {
    memmove(v15, v8, v6);
  }

LABEL_26:
  *(v15 + v6) = 0;
  v37[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v37 + *(v37[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v38 = v9;
  v39 = MEMORY[0x277D82878] + 16;
  if (v46 < 0)
  {
    operator delete(__p[1]);
  }

  v39 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v40);
  std::iostream::~basic_iostream();
  MEMORY[0x245CACBF0](v49);
  v37[0] = "Found file format of unsupported format signature byte '0x";
  v37[1] = 58;
  v10 = v16;
  v11 = v15;
  if ((v16 & 0x80u) != 0)
  {
    v11 = v15[0];
    v10 = v15[1];
  }

  v38 = v11;
  v39 = v10;
  v40.__locale_ = "'.";
  v41 = 2;
  sub_23EF45AA0(v37, &v42, 0, 0, &v17);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&v18, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    v18 = v17;
  }

  v19 = 1;
  LOBYTE(v20) = 0;
  v24 = 0;
  v25 = 1;
  sub_23F07DBB0(1, &v18, &v26);
  *a3 = v26;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v36 == 1)
  {
    *(a3 + 40) = 0;
    v12 = v29;
    if (v29 == 1)
    {
      *(a3 + 16) = v27;
      *(a3 + 32) = v28;
      v28 = 0;
      v27 = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v13 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v35 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v13 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v35 & 1) == 0)
      {
LABEL_36:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v12)
        {
          goto LABEL_43;
        }

LABEL_41:
        if (SHIBYTE(v28) < 0)
        {
          operator delete(v27);
        }

        goto LABEL_43;
      }
    }

    v14 = v32;
    *(v13 + 16) = v31;
    *v13 = v30;
    v30 = 0uLL;
    *(a3 + 72) = v14;
    *(a3 + 80) = v33;
    *(a3 + 96) = v34;
    v31 = 0;
    v33 = 0uLL;
    v34 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (v12)
    {
      goto LABEL_41;
    }
  }

  else
  {
    *(a3 + 120) = 0;
  }

LABEL_43:
  if (v25 == 1)
  {
    if (v24 == 1)
    {
      if (v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 < 0)
      {
        operator delete(v20);
      }
    }

    if (v19 == 1 && SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_23F08168C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F081708(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F081740(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

size_t sub_23F081890(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28517D390[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}