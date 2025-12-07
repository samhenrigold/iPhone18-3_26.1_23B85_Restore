void sub_110E8F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char **sub_110E910(char **a1, uint64_t a2)
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
        v7 = *(v5 - 3);
        if (v7)
        {
          *(v5 - 2) = v7;
          operator delete(v7);
        }

        v8 = *(v5 - 14);
        if (v8)
        {
          *(v5 - 13) = v8;
          operator delete(v8);
        }

        v9 = *(v5 - 24);
        if (v9)
        {
          *(v5 - 23) = v9;
          operator delete(v9);
        }

        v5 -= 208;
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
  return a1;
}

uint64_t sub_110E9C8(uint64_t a1, uint64_t *a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x13B13B13B13B13BLL)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 4)) >= 0x9D89D89D89D89DLL)
  {
    v5 = 0x13B13B13B13B13BLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x13B13B13B13B13BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 16 * ((*(a1 + 8) - *a1) >> 4);
  sub_110A370(v11, a2);
  v6 = 208 * v2 + 208;
  v7 = *(a1 + 8);
  v8 = v11 + *a1 - v7;
  sub_110A0E8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_110EB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_110A060(va);
  _Unwind_Resume(a1);
}

void sub_110EB1C(unsigned int *a1, uint64_t *a2, unsigned int *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  while (1)
  {
    v39 = a3 - 1;
    v40 = a4 - 26;
    v35 = a4 - 52;
    v36 = a3 - 2;
    v33 = a4 - 78;
    v34 = a3 - 3;
    v14 = 1 - a6;
    v15 = a7;
    v37 = a4;
    v16 = a3 - a1;
    v17 = v16 >= 2;
    if (v16 <= 2)
    {
      break;
    }

    while (1)
    {
      switch(v16)
      {
        case 3:
          sub_110F09C(a1, a2, a1 + 1, a2 + 26, v39, v40);
          return;
        case 4:
          sub_110F50C(a1, a2, a1 + 1, a2 + 26, a1 + 2, a2 + 52, v39, v40);
          return;
        case 5:
          sub_110F7E8(a1, a2, a1 + 1, a2 + 26, a1 + 2, a2 + 52, a1 + 3, a2 + 78, v39, v40);
          return;
      }

LABEL_9:
      if (v16 <= 23)
      {
        if (v15)
        {
          sub_110FB98(a1, a2, a3);
        }

        else
        {
          sub_1110258(a1, a2, a3);
        }

        return;
      }

      if (v14 == 1)
      {
        if (a1 != a3)
        {
          sub_1112148(a1, a2, a3, a4, a3, a4, a5);
        }

        return;
      }

      v18 = v16 >> 1;
      v19 = 26 * (v16 >> 1);
      v41 = v14;
      if (v16 < 0x81)
      {
        sub_110F09C(&a1[v18], &a2[v19], a1, a2, v39, v40);
        if (v15)
        {
          break;
        }
      }

      else
      {
        v38 = v15;
        v20 = &a1[v18];
        sub_110F09C(a1, a2, v20, &a2[v19], v39, v40);
        v21 = a3;
        v22 = 26 * v18;
        v23 = &a2[26 * v18 - 26];
        sub_110F09C(a1 + 1, a2 + 26, v20 - 1, v23, v36, v35);
        sub_110F09C(a1 + 2, a2 + 52, v20 + 1, &a2[v22 + 26], v34, v33);
        v24 = &a2[v22 + 26];
        a3 = v21;
        a4 = v37;
        sub_110F09C(v20 - 1, v23, v20, &a2[v19], v20 + 1, v24);
        v25 = *a1;
        *a1 = *v20;
        *v20 = v25;
        v15 = v38;
        sub_1111EF4(a2, &a2[v19]);
        if (v38)
        {
          break;
        }
      }

      LODWORD(v51) = *(a1 - 1);
      sub_110A370(&v52, a2 - 26);
      v42 = *a1;
      sub_110A370(v44, a2);
      v26 = v51;
      if (__p)
      {
        v50 = __p;
        operator delete(__p);
      }

      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }

      if (v45)
      {
        v46 = v45;
        operator delete(v45);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v26 < v42)
      {
        break;
      }

      a1 = sub_1110904(a1, a2, a3, a4);
      a2 = v27;
      v15 = 0;
      v14 = v41 + 1;
      v16 = a3 - a1;
      v17 = v16 >= 2;
      if (v16 <= 2)
      {
        goto LABEL_2;
      }
    }

    a7 = v15;
    sub_11110DC(a1, a2, a3, a4, &v51);
    v29 = v51;
    v28 = v52;
    a6 = -v41;
    if (v53 != 1)
    {
      goto LABEL_35;
    }

    v30 = sub_111187C(a1, a2, v51, v52);
    if (!sub_111187C(v29 + 1, v28 + 26, a3, a4))
    {
      if (!v30)
      {
LABEL_35:
        sub_110EB1C(a1, a2, v29, v28, a5, a6, a7 & 1);
        a7 = 0;
      }

      a1 = v29 + 1;
      a2 = v28 + 26;
      continue;
    }

    if (v30)
    {
      return;
    }

    a3 = v29;
    a4 = v28;
  }

LABEL_2:
  if (v17)
  {
    if (v16 != 2)
    {
      goto LABEL_9;
    }

    LODWORD(v51) = *(a3 - 1);
    sub_110A370(&v52, v40);
    v43 = *a1;
    sub_110A370(v44, a2);
    v31 = v51;
    if (__p)
    {
      v50 = __p;
      operator delete(__p);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    if (v56)
    {
      v57 = v56;
      operator delete(v56);
    }

    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    if (v31 < v43)
    {
      v32 = *a1;
      *a1 = *(a3 - 1);
      *(a3 - 1) = v32;
      sub_1111EF4(a2, v40);
    }
  }
}

void sub_110F020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  sub_110F048(va);
  _Unwind_Resume(a1);
}

void sub_110F034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  sub_110F048(va);
  _Unwind_Resume(a1);
}

void *sub_110F048(void *a1)
{
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  v3 = a1[13];
  if (v3)
  {
    a1[14] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_110F09C(unsigned int *a1, uint64_t *a2, unsigned int *a3, uint64_t *a4, unsigned int *a5, uint64_t *a6)
{
  v36 = *a3;
  sub_110A370(v37, a4);
  v24 = *a1;
  sub_110A370(v29, a2);
  v12 = v36;
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v12 < v24)
  {
    v36 = *a5;
    sub_110A370(v37, a6);
    v25 = *a3;
    sub_110A370(v29, a4);
    v13 = v36;
    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    v14 = *a1;
    if (v13 >= v25)
    {
      *a1 = *a3;
      *a3 = v14;
      sub_1111EF4(a2, a4);
      v36 = *a5;
      sub_110A370(v37, a6);
      v28 = *a3;
      sub_110A370(v29, a4);
      v21 = v36;
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }

      if (v42)
      {
        v43 = v42;
        operator delete(v42);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      if (v21 >= v28)
      {
        return 1;
      }

      v22 = *a3;
      *a3 = *a5;
      *a5 = v22;
      v15 = a4;
    }

    else
    {
      *a1 = *a5;
      *a5 = v14;
      v15 = a2;
    }

    v20 = a6;
LABEL_70:
    sub_1111EF4(v15, v20);
    return 1;
  }

  v36 = *a5;
  sub_110A370(v37, a6);
  v26 = *a3;
  sub_110A370(v29, a4);
  v16 = v36;
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v16 < v26)
  {
    v17 = *a3;
    *a3 = *a5;
    *a5 = v17;
    sub_1111EF4(a4, a6);
    v36 = *a3;
    sub_110A370(v37, a4);
    v27 = *a1;
    sub_110A370(v29, a2);
    v18 = v36;
    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    if (v18 >= v27)
    {
      return 1;
    }

    v19 = *a1;
    *a1 = *a3;
    *a3 = v19;
    v15 = a2;
    v20 = a4;
    goto LABEL_70;
  }

  return 0;
}

void sub_110F50C(unsigned int *a1, uint64_t *a2, unsigned int *a3, uint64_t *a4, unsigned int *a5, uint64_t *a6, unsigned int *a7, uint64_t *a8)
{
  sub_110F09C(a1, a2, a3, a4, a5, a6);
  v32 = *a7;
  sub_110A370(v33, a8);
  v22 = *a5;
  sub_110A370(v25, a6);
  v16 = v32;
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v16 < v22)
  {
    v17 = *a5;
    *a5 = *a7;
    *a7 = v17;
    sub_1111EF4(a6, a8);
    v32 = *a5;
    sub_110A370(v33, a6);
    v23 = *a3;
    sub_110A370(v25, a4);
    v18 = v32;
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v18 < v23)
    {
      v19 = *a3;
      *a3 = *a5;
      *a5 = v19;
      sub_1111EF4(a4, a6);
      v32 = *a3;
      sub_110A370(v33, a4);
      v24 = *a1;
      sub_110A370(v25, a2);
      v20 = v32;
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }

      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      if (v20 < v24)
      {
        v21 = *a1;
        *a1 = *a3;
        *a3 = v21;
        sub_1111EF4(a2, a4);
      }
    }
  }
}

void sub_110F7E8(unsigned int *a1, uint64_t *a2, unsigned int *a3, uint64_t *a4, unsigned int *a5, uint64_t *a6, unsigned int *a7, uint64_t *a8, unsigned int *a9, uint64_t *a10)
{
  sub_110F50C(a1, a2, a3, a4, a5, a6, a7, a8);
  v37 = *a9;
  sub_110A370(v38, a10);
  v26 = *a7;
  sub_110A370(v30, a8);
  v16 = v37;
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v16 < v26)
  {
    v17 = *a7;
    *a7 = *a9;
    *a9 = v17;
    sub_1111EF4(a8, a10);
    v37 = *a7;
    sub_110A370(v38, a8);
    v27 = *a5;
    sub_110A370(v30, a6);
    v18 = v37;
    if (__p)
    {
      v36 = __p;
      operator delete(__p);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v18 < v27)
    {
      v19 = *a5;
      *a5 = *a7;
      *a7 = v19;
      sub_1111EF4(a6, a8);
      v37 = *a5;
      sub_110A370(v38, a6);
      v28 = *a3;
      sub_110A370(v30, a4);
      v20 = v37;
      if (__p)
      {
        v36 = __p;
        operator delete(__p);
      }

      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      if (v41)
      {
        v42 = v41;
        operator delete(v41);
      }

      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      if (v20 < v28)
      {
        v21 = *a3;
        *a3 = *a5;
        *a5 = v21;
        sub_1111EF4(a4, a6);
        v37 = *a3;
        sub_110A370(v38, a4);
        v29 = *a1;
        sub_110A370(v30, a2);
        v22 = v37;
        if (__p)
        {
          v36 = __p;
          operator delete(__p);
        }

        if (v33)
        {
          v34 = v33;
          operator delete(v33);
        }

        if (v31)
        {
          v32 = v31;
          operator delete(v31);
        }

        if (v43)
        {
          v44 = v43;
          operator delete(v43);
        }

        if (v41)
        {
          v42 = v41;
          operator delete(v41);
        }

        if (v39)
        {
          v40 = v39;
          operator delete(v39);
        }

        if (v22 < v29)
        {
          v23 = *a1;
          *a1 = *a3;
          *a3 = v23;
          sub_1111EF4(a2, a4);
        }
      }
    }
  }
}

void sub_110FB98(unsigned int *a1, uint64_t *a2, unsigned int *a3)
{
  if (a1 != a3)
  {
    v3 = a3;
    v4 = a1;
    v5 = a1 + 1;
    if (a1 + 1 != a3)
    {
      v6 = 0;
      v7 = 0;
      v61 = a2;
      v8 = a1;
      while (1)
      {
        v9 = v61;
        v60 = v5;
        v61 += 26;
        v71 = *v5;
        sub_110A370(&v72, v61);
        v63 = *v8;
        sub_110A370(&v64, v9);
        v10 = v71;
        if (__p)
        {
          v70 = __p;
          operator delete(__p);
        }

        if (v67)
        {
          v68 = v67;
          operator delete(v67);
        }

        if (v65)
        {
          v66 = v65;
          operator delete(v65);
        }

        if (v88)
        {
          v89 = v88;
          operator delete(v88);
        }

        if (v80)
        {
          v81 = v80;
          operator delete(v80);
        }

        if (v74)
        {
          v75 = v74;
          operator delete(v74);
        }

        if (v10 >= v63)
        {
          goto LABEL_4;
        }

        v71 = *v60;
        sub_110A370(&v72, v61);
        v58 = v7;
        v59 = v6;
        v11 = v6;
        do
        {
          v12 = v4;
          v13 = (v4 + v7);
          v14 = a2 + v11;
          v13[1] = *v13;
          *(v14 + 26) = *v14;
          *(v14 + 54) = *(v14 + 2);
          v15 = *(a2 + v11 + 224);
          v17 = *(a2 + v11 + 16);
          v16 = *(a2 + v11 + 24);
          v18 = v16 - v17;
          v19 = *(a2 + v11 + 240);
          if (v19 - v15 < (v16 - v17))
          {
            if (v15)
            {
              *(a2 + v11 + 232) = v15;
              operator delete(v15);
              v19 = 0;
              *(a2 + v11 + 224) = 0;
              *(v14 + 29) = 0;
              *(v14 + 30) = 0;
            }

            v20 = v18 >> 3;
            if (!((v18 >> 3) >> 61))
            {
              if (v19 >> 2 > v20)
              {
                v20 = v19 >> 2;
              }

              if (v19 >= 0x7FFFFFFFFFFFFFF8)
              {
                v21 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v21 = v20;
              }

              if (!(v21 >> 61))
              {
                operator new();
              }
            }

            sub_1794();
          }

          v22 = *(v14 + 29);
          v23 = v22 - v15;
          if (v22 - v15 >= v18)
          {
            if (v16 != v17)
            {
              memmove(*(v14 + 28), *(v14 + 2), v16 - v17);
            }

            v24 = &v15[v18];
          }

          else
          {
            if (v22 != v15)
            {
              memmove(*(v14 + 28), *(v14 + 2), v22 - v15);
              v22 = *(v14 + 29);
            }

            if (v16 != v17 + v23)
            {
              memmove(v22, (v17 + v23), v16 - (v17 + v23));
            }

            v24 = &v22[v16 - (v17 + v23)];
          }

          *(v14 + 29) = v24;
          v25 = a2 + v11;
          v26 = a2 + v11 + 248;
          *(v25 + 248) = *(a2 + v11 + 40);
          v27 = *(a2 + v11 + 72);
          *(v26 + 1) = *(a2 + v11 + 56);
          *(v26 + 2) = v27;
          v28 = *(a2 + v11 + 96);
          *(v25 + 37) = *(v25 + 11);
          sub_C4E558((a2 + v11 + 304), v28, *(a2 + v11 + 104), (*(a2 + v11 + 104) - v28) >> 1);
          v29 = *(a2 + v11 + 136);
          *(v25 + 328) = *(v25 + 120);
          *(v25 + 344) = v29;
          *(v25 + 180) = *(v25 + 76);
          *(v25 + 91) = *(v25 + 39);
          v30 = *(a2 + v11 + 160);
          v31 = *(a2 + v11 + 184);
          *(v25 + 48) = *(v25 + 22);
          v32 = *(a2 + v11 + 192);
          *(v25 + 23) = v30;
          sub_3865E0((a2 + v11 + 392), v31, v32, (v32 - v31) >> 4);
          v4 = v12;
          if (!v7)
          {
            v41 = v12;
            v42 = a2;
            goto LABEL_53;
          }

          v33 = *(v12 + v7 - 4);
          v34 = a2 + v11;
          v36 = *(a2 + v11 - 192);
          v35 = *(a2 + v11 - 184);
          if (v35 != v36)
          {
            if (((v35 - v36) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v38 = *(v34 - 14);
          v37 = *(v34 - 13);
          if (v37 != v38)
          {
            if (((v37 - v38) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v40 = *(a2 + v11 - 24);
          v39 = *(a2 + v11 - 16);
          if (v39 != v40)
          {
            if (((v39 - v40) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v7 -= 4;
          v11 -= 208;
        }

        while (v71 < v33);
        v41 = (v12 + v7 + 4);
        v42 = (a2 + v11 + 208);
LABEL_53:
        *v41 = v71;
        v6 = v59;
        v43 = v72;
        *(v42 + 2) = v73;
        *v42 = v43;
        v3 = a3;
        v7 = v58;
        if (v42 == &v72)
        {
          break;
        }

        sub_61532C(v42 + 2, v74, v75, (v75 - v74) >> 3);
        v44 = v76;
        v45 = v77;
        v46 = v78;
        v42[11] = v79;
        *(v42 + 9) = v46;
        *(v42 + 7) = v45;
        *(v42 + 5) = v44;
        sub_C4E558(v42 + 12, v80, v81, (v81 - v80) >> 1);
        v47 = v82;
        v48 = v83;
        *(v42 + 76) = v84;
        *(v42 + 17) = v48;
        *(v42 + 15) = v47;
        *(v42 + 39) = v85;
        v49 = v86;
        v42[22] = v87;
        *(v42 + 10) = v49;
        sub_3865E0(v42 + 23, v88, v89, (v89 - v88) >> 4);
        v50 = v88;
        if (v88)
        {
          goto LABEL_55;
        }

LABEL_56:
        if (v80)
        {
          v81 = v80;
          operator delete(v80);
        }

        if (v74)
        {
          v75 = v74;
          operator delete(v74);
        }

LABEL_4:
        v8 = v60;
        v5 = v60 + 1;
        v7 += 4;
        v6 += 208;
        if (v60 + 1 == v3)
        {
          return;
        }
      }

      v51 = v76;
      v52 = v77;
      v53 = v78;
      v42[11] = v79;
      *(v42 + 9) = v53;
      *(v42 + 7) = v52;
      *(v42 + 5) = v51;
      v54 = v82;
      v55 = v83;
      *(v42 + 76) = v84;
      *(v42 + 17) = v55;
      *(v42 + 15) = v54;
      *(v42 + 39) = v85;
      v56 = v86;
      v42[22] = v87;
      *(v42 + 10) = v56;
      v50 = v88;
      if (!v88)
      {
        goto LABEL_56;
      }

LABEL_55:
      v89 = v50;
      operator delete(v50);
      goto LABEL_56;
    }
  }
}

void sub_11101AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  if (v44)
  {
    operator delete(v44);
    if (!v43)
    {
LABEL_5:
      sub_110F048(&a43);
      _Unwind_Resume(a1);
    }
  }

  else if (!v43)
  {
    goto LABEL_5;
  }

  operator delete(v43);
  sub_110F048(&a43);
  _Unwind_Resume(a1);
}

void sub_1110258(unsigned int *a1, uint64_t a2, unsigned int *a3)
{
  if (a1 != a3)
  {
    v3 = a3;
    v4 = a1 + 1;
    if (a1 + 1 != a3)
    {
      for (i = (a2 + 208); ; i += 26)
      {
        v68 = *v4;
        sub_110A370(&v69, i);
        v6 = v4 - 1;
        v60 = *(v4 - 1);
        sub_110A370(&v61, i - 26);
        v7 = v68;
        if (__p)
        {
          v67 = __p;
          operator delete(__p);
        }

        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }

        if (v62)
        {
          v63 = v62;
          operator delete(v62);
        }

        if (v85)
        {
          v86 = v85;
          operator delete(v85);
        }

        if (v77)
        {
          v78 = v77;
          operator delete(v77);
        }

        if (v71)
        {
          v72 = v71;
          operator delete(v71);
        }

        if (v7 >= v60)
        {
          goto LABEL_5;
        }

        v68 = *v4;
        sub_110A370(&v69, i);
        v8 = i - 50;
        v59 = v4;
        v9 = v4;
        v10 = i;
        do
        {
          v11 = v9;
          v9 = v6;
          *v11 = *v6;
          v13 = v8 + 24;
          v12 = v8[24];
          *(v10 + 2) = *(v8 + 50);
          *v10 = v12;
          if (v8 + 24 == v10)
          {
            v21 = *(v8 + 29);
            v22 = *(v8 + 31);
            v23 = *(v8 + 33);
            v10[11] = v8[35];
            *(v10 + 9) = v23;
            *(v10 + 7) = v22;
            *(v10 + 5) = v21;
            v24 = *(v8 + 39);
            v25 = *(v8 + 41);
            *(v10 + 76) = *(v8 + 172);
            *(v10 + 17) = v25;
            *(v10 + 15) = v24;
            *(v10 + 39) = *(v8 + 87);
            v26 = *(v8 + 22);
            v10[22] = v8[46];
            *(v10 + 10) = v26;
          }

          else
          {
            v14 = v10[2];
            v16 = v8[26];
            v15 = v8[27];
            v17 = v15 - v16;
            v18 = v10[4];
            if (v18 - v14 < (v15 - v16))
            {
              if (v14)
              {
                v10[3] = v14;
                operator delete(v14);
                v18 = 0;
                v10[2] = 0;
                v10[3] = 0;
                v10[4] = 0;
              }

              v19 = v17 >> 3;
              if (!((v17 >> 3) >> 61))
              {
                if (v18 >> 2 > v19)
                {
                  v19 = v18 >> 2;
                }

                if (v18 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v20 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v20 = v19;
                }

                if (!(v20 >> 61))
                {
                  operator new();
                }
              }

              sub_1794();
            }

            v27 = v10[3];
            v28 = v27 - v14;
            if (v27 - v14 >= v17)
            {
              if (v15 != v16)
              {
                v32 = v10[2];
                memmove(v14, v8[26], v15 - v16);
                v14 = v32;
              }

              v31 = &v14[v17];
            }

            else
            {
              if (v27 != v14)
              {
                memmove(v14, v8[26], v27 - v14);
                v27 = v10[3];
              }

              v29 = (v16 + v28);
              v30 = v15 - (v16 + v28);
              if (v30)
              {
                memmove(v27, v29, v30);
              }

              v31 = &v27[v30];
            }

            v10[3] = v31;
            v33 = *(v8 + 29);
            v34 = *(v8 + 31);
            v35 = *(v8 + 33);
            v10[11] = v8[35];
            *(v10 + 9) = v35;
            *(v10 + 7) = v34;
            *(v10 + 5) = v33;
            sub_C4E558(v10 + 12, v8[36], v8[37], (v8[37] - v8[36]) >> 1);
            v36 = *(v8 + 39);
            v37 = *(v8 + 41);
            *(v10 + 76) = *(v8 + 172);
            *(v10 + 17) = v37;
            *(v10 + 15) = v36;
            *(v10 + 39) = *(v8 + 87);
            v38 = *(v8 + 22);
            v10[22] = v8[46];
            *(v10 + 10) = v38;
            sub_3865E0(v10 + 23, v8[47], v8[48], (v8[48] - v8[47]) >> 4);
          }

          v6 = v9 - 1;
          v39 = v8[1];
          if (v39 != *v8)
          {
            if (((v39 - *v8) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v41 = v8[10];
          v40 = v8[11];
          if (v40 != v41)
          {
            if (((v40 - v41) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v42 = v8[21];
          v43 = v8[22];
          if (v43 != v42)
          {
            if (((v43 - v42) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v8 -= 26;
          v10 = v13;
        }

        while (v68 < *(v9 - 1));
        *v9 = v68;
        v44 = v69;
        *(v8 + 102) = v70;
        v8[50] = v44;
        if (v8 + 50 == &v69)
        {
          break;
        }

        sub_61532C(v8 + 52, v71, v72, (v72 - v71) >> 3);
        v3 = a3;
        v4 = v59;
        v45 = v73;
        v46 = v74;
        v47 = v75;
        v8[61] = v76;
        *(v8 + 57) = v46;
        *(v8 + 59) = v47;
        *(v8 + 55) = v45;
        sub_C4E558(v8 + 62, v77, v78, (v78 - v77) >> 1);
        v48 = v79;
        v49 = v80;
        *(v8 + 276) = v81;
        *(v8 + 65) = v48;
        *(v8 + 67) = v49;
        *(v8 + 139) = v82;
        v50 = v83;
        v8[72] = v84;
        *(v8 + 35) = v50;
        sub_3865E0(v8 + 73, v85, v86, (v86 - v85) >> 4);
        v51 = v85;
        if (v85)
        {
          goto LABEL_56;
        }

LABEL_57:
        if (v77)
        {
          v78 = v77;
          operator delete(v77);
        }

        if (v71)
        {
          v72 = v71;
          operator delete(v71);
        }

LABEL_5:
        if (++v4 == v3)
        {
          return;
        }
      }

      v52 = v73;
      v53 = v74;
      v54 = v75;
      v8[61] = v76;
      *(v8 + 57) = v53;
      *(v8 + 59) = v54;
      *(v8 + 55) = v52;
      v55 = v79;
      v56 = v80;
      *(v8 + 276) = v81;
      *(v8 + 65) = v55;
      *(v8 + 67) = v56;
      *(v8 + 139) = v82;
      v57 = v83;
      v8[72] = v84;
      *(v8 + 35) = v57;
      v3 = a3;
      v4 = v59;
      v51 = v85;
      if (!v85)
      {
        goto LABEL_57;
      }

LABEL_56:
      v86 = v51;
      operator delete(v51);
      goto LABEL_57;
    }
  }
}

void sub_1110858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (v42)
  {
    operator delete(v42);
    if (!v41)
    {
LABEL_3:
      sub_110F048(&a41);
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_3;
  }

  operator delete(v41);
  sub_110F048(&a41);
  _Unwind_Resume(a1);
}

unsigned int *sub_1110904(unsigned int *a1, uint64_t *a2, int *a3, uint64_t *a4)
{
  v77 = *a1;
  sub_110A370(&v78, a2);
  v68 = *(a3 - 1);
  sub_110A370(v70, a4 - 26);
  v8 = v77;
  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v8 >= v68)
  {
    v14 = a1 + 1;
    v15 = a2 + 26;
    do
    {
      v9 = v14;
      v10 = v15;
      if (v14 >= a3)
      {
        break;
      }

      v69 = *v14;
      sub_110A370(v70, v15);
      v16 = v77;
      if (__p)
      {
        v76 = __p;
        operator delete(__p);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }

      if (v71)
      {
        v72 = v71;
        operator delete(v71);
      }

      v14 = v9 + 1;
      v15 = v10 + 26;
    }

    while (v16 >= v69);
  }

  else
  {
    v9 = a1;
    v10 = a2;
    do
    {
      v11 = v9[1];
      ++v9;
      v10 += 26;
      sub_110A370(v70, v10);
      v12 = v11;
      v13 = v77;
      if (__p)
      {
        v76 = __p;
        operator delete(__p);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }

      if (v71)
      {
        v72 = v71;
        operator delete(v71);
      }
    }

    while (v13 >= v12);
  }

  if (v9 < a3)
  {
    do
    {
      v17 = *--a3;
      a4 -= 26;
      sub_110A370(v70, a4);
      v18 = v17;
      v19 = v77;
      if (__p)
      {
        v76 = __p;
        operator delete(__p);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }

      if (v71)
      {
        v72 = v71;
        operator delete(v71);
      }
    }

    while (v19 < v18);
  }

  v67 = a2;
  while (v9 < a3)
  {
    v20 = *v9;
    *v9 = *a3;
    *a3 = v20;
    sub_1111EF4(v10, a4);
    do
    {
      v22 = v9[1];
      ++v9;
      v21 = v22;
      v24 = v10[28];
      v23 = v10[29];
      if (v23 != v24)
      {
        if (((v23 - v24) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v26 = v10[38];
      v25 = v10[39];
      if (v25 != v26)
      {
        if (((v25 - v26) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v27 = v10[49];
      v28 = v10[50];
      if (v28 != v27)
      {
        if (((v28 - v27) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v10 += 26;
    }

    while (v77 >= v21);
    do
    {
      v30 = *--a3;
      v29 = v30;
      v32 = *(a4 - 24);
      v31 = *(a4 - 23);
      if (v31 != v32)
      {
        if (((v31 - v32) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v34 = *(a4 - 14);
      v33 = *(a4 - 13);
      if (v33 != v34)
      {
        if (((v33 - v34) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v35 = *(a4 - 3);
      v36 = *(a4 - 2);
      if (v36 != v35)
      {
        if (((v36 - v35) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      a4 -= 26;
    }

    while (v77 < v29);
  }

  v37 = v9 - 1;
  v38 = v10 - 26;
  if (a1 != v9 - 1)
  {
    *a1 = *v37;
    v39 = *v38;
    *(v67 + 2) = *(v10 - 50);
    *v67 = v39;
    if (v67 == v38)
    {
      v40 = *(v10 - 21);
      v41 = *(v10 - 19);
      v42 = *(v10 - 17);
      v67[11] = *(v10 - 15);
      *(v67 + 9) = v42;
      *(v67 + 7) = v41;
      *(v67 + 5) = v40;
      v43 = *(v10 - 11);
      v44 = *(v10 - 9);
      *(v67 + 76) = *(v10 - 28);
      *(v67 + 17) = v44;
      *(v67 + 15) = v43;
      *(v67 + 39) = *(v10 - 13);
      v45 = *(v10 - 3);
      v67[22] = *(v10 - 4);
      *(v67 + 10) = v45;
    }

    else
    {
      sub_61532C(v67 + 2, *(v10 - 24), *(v10 - 23), (*(v10 - 23) - *(v10 - 24)) >> 3);
      v46 = *(v10 - 21);
      v47 = *(v10 - 19);
      v48 = *(v10 - 17);
      v67[11] = *(v10 - 15);
      *(v67 + 9) = v48;
      *(v67 + 7) = v47;
      *(v67 + 5) = v46;
      sub_C4E558(v67 + 12, *(v10 - 14), *(v10 - 13), (*(v10 - 13) - *(v10 - 14)) >> 1);
      v49 = *(v10 - 11);
      v50 = *(v10 - 9);
      *(v67 + 76) = *(v10 - 28);
      *(v67 + 17) = v50;
      *(v67 + 15) = v49;
      *(v67 + 39) = *(v10 - 13);
      v51 = *(v10 - 3);
      v67[22] = *(v10 - 4);
      *(v67 + 10) = v51;
      sub_3865E0(v67 + 23, *(v10 - 3), *(v10 - 2), (*(v10 - 2) - *(v10 - 3)) >> 4);
    }
  }

  *v37 = v77;
  v52 = v78;
  *(v10 - 50) = v79;
  *v38 = v52;
  if (&v78 != v38)
  {
    sub_61532C(v10 - 24, v80, v81, (v81 - v80) >> 3);
    v53 = v82;
    v54 = v83;
    v55 = v84;
    *(v10 - 15) = v85;
    *(v10 - 17) = v55;
    *(v10 - 19) = v54;
    *(v10 - 21) = v53;
    sub_C4E558(v10 - 14, v86, v87, (v87 - v86) >> 1);
    v56 = v88;
    v57 = v89;
    *(v10 - 28) = v90;
    *(v10 - 9) = v57;
    *(v10 - 11) = v56;
    *(v10 - 13) = v91;
    v58 = v92;
    *(v10 - 4) = v93;
    *(v10 - 3) = v58;
    sub_3865E0(v10 - 3, v94, v95, (v95 - v94) >> 4);
    v59 = v94;
    if (!v94)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  v61 = v82;
  v62 = v83;
  v63 = v84;
  *(v10 - 15) = v85;
  *(v10 - 17) = v63;
  *(v10 - 19) = v62;
  *(v10 - 21) = v61;
  v64 = v88;
  v65 = v89;
  *(v10 - 28) = v90;
  *(v10 - 9) = v65;
  *(v10 - 11) = v64;
  *(v10 - 13) = v91;
  v66 = v92;
  *(v10 - 4) = v93;
  *(v10 - 3) = v66;
  v59 = v94;
  if (v94)
  {
LABEL_66:
    v95 = v59;
    operator delete(v59);
  }

LABEL_67:
  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  return v9;
}

void sub_1111040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (v40)
  {
    operator delete(v40);
  }

  if (v39)
  {
    operator delete(v39);
  }

  sub_110F048(&a39);
  _Unwind_Resume(a1);
}

void sub_11110DC(unsigned int *a1@<X0>, uint64_t *a2@<X1>, int *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  v79 = *a1;
  sub_110A370(&v80, a2);
  v10 = 0;
  v11 = a2;
  v70 = v8;
  do
  {
    v11 += 26;
    v71 = v8[v10 + 1];
    sub_110A370(v72, v11);
    v13 = v79;
    if (__p)
    {
      v78 = __p;
      operator delete(__p);
    }

    if (v75)
    {
      v76 = v75;
      operator delete(v75);
    }

    if (v73)
    {
      v74 = v73;
      operator delete(v73);
    }

    ++v10;
    v12 = v71 >= v13;
    v8 = v70;
  }

  while (!v12);
  v69 = a2;
  v14 = &v70[v10];
  if (v10 == 1)
  {
    do
    {
      if (v14 >= a3)
      {
        break;
      }

      v18 = *--a3;
      a4 -= 26;
      sub_110A370(v72, a4);
      v19 = v79;
      v20 = v18;
      if (__p)
      {
        v78 = __p;
        operator delete(__p);
      }

      if (v75)
      {
        v76 = v75;
        operator delete(v75);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }
    }

    while (v20 >= v19);
  }

  else
  {
    do
    {
      v15 = *--a3;
      a4 -= 26;
      sub_110A370(v72, a4);
      v16 = v79;
      v17 = v15;
      if (__p)
      {
        v78 = __p;
        operator delete(__p);
      }

      if (v75)
      {
        v76 = v75;
        operator delete(v75);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }
    }

    while (v17 >= v16);
  }

  v68 = a5;
  v67 = v14 >= a3;
  if (v14 < a3)
  {
    do
    {
      v30 = *v14;
      *v14 = *a3;
      v21 = (v14 - 1);
      *a3 = v30;
      sub_1111EF4(v11, a4);
      do
      {
        v32 = v14[1];
        ++v14;
        v31 = v32;
        v34 = v11[28];
        v33 = v11[29];
        if (v33 != v34)
        {
          if (((v33 - v34) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v36 = v11[38];
        v35 = v11[39];
        if (v35 != v36)
        {
          if (((v35 - v36) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v37 = v11[49];
        v38 = v11[50];
        if (v38 != v37)
        {
          if (((v38 - v37) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v11 += 26;
        ++v21;
      }

      while (v31 < v79);
      do
      {
        v40 = *--a3;
        v39 = v40;
        v42 = *(a4 - 24);
        v41 = *(a4 - 23);
        if (v41 != v42)
        {
          if (((v41 - v42) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v44 = *(a4 - 14);
        v43 = *(a4 - 13);
        if (v43 != v44)
        {
          if (((v43 - v44) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v45 = *(a4 - 3);
        v46 = *(a4 - 2);
        if (v46 != v45)
        {
          if (((v46 - v45) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        a4 -= 26;
      }

      while (v39 >= v79);
    }

    while (v14 < a3);
  }

  else
  {
    v21 = (v14 - 1);
  }

  v22 = v11 - 26;
  if (v70 != v21)
  {
    *v70 = *v21;
    v23 = *v22;
    *(v69 + 2) = *(v11 - 50);
    *v69 = v23;
    if (v69 == v22)
    {
      v24 = *(v11 - 21);
      v25 = *(v11 - 19);
      v26 = *(v11 - 17);
      v69[11] = *(v11 - 15);
      *(v69 + 9) = v26;
      *(v69 + 7) = v25;
      *(v69 + 5) = v24;
      v27 = *(v11 - 11);
      v28 = *(v11 - 9);
      *(v69 + 76) = *(v11 - 28);
      *(v69 + 17) = v28;
      *(v69 + 15) = v27;
      *(v69 + 39) = *(v11 - 13);
      v29 = *(v11 - 3);
      v69[22] = *(v11 - 4);
      *(v69 + 10) = v29;
    }

    else
    {
      sub_61532C(v69 + 2, *(v11 - 24), *(v11 - 23), (*(v11 - 23) - *(v11 - 24)) >> 3);
      v47 = *(v11 - 21);
      v48 = *(v11 - 19);
      v49 = *(v11 - 17);
      v69[11] = *(v11 - 15);
      *(v69 + 9) = v49;
      *(v69 + 7) = v48;
      *(v69 + 5) = v47;
      sub_C4E558(v69 + 12, *(v11 - 14), *(v11 - 13), (*(v11 - 13) - *(v11 - 14)) >> 1);
      v50 = *(v11 - 11);
      v51 = *(v11 - 9);
      *(v69 + 76) = *(v11 - 28);
      *(v69 + 17) = v51;
      *(v69 + 15) = v50;
      *(v69 + 39) = *(v11 - 13);
      v52 = *(v11 - 3);
      v69[22] = *(v11 - 4);
      *(v69 + 10) = v52;
      sub_3865E0(v69 + 23, *(v11 - 3), *(v11 - 2), (*(v11 - 2) - *(v11 - 3)) >> 4);
    }
  }

  *v21 = v79;
  v53 = v80;
  *(v11 - 50) = v81;
  *v22 = v53;
  if (&v80 != v22)
  {
    sub_61532C(v11 - 24, v82, v83, (v83 - v82) >> 3);
    v54 = v84;
    v55 = v85;
    v56 = v86;
    *(v11 - 15) = v87;
    *(v11 - 17) = v56;
    *(v11 - 19) = v55;
    *(v11 - 21) = v54;
    sub_C4E558(v11 - 14, v88, v89, (v89 - v88) >> 1);
    v57 = v90;
    v58 = v91;
    *(v11 - 28) = v92;
    *(v11 - 9) = v58;
    *(v11 - 11) = v57;
    *(v11 - 13) = v93;
    v59 = v94;
    *(v11 - 4) = v95;
    *(v11 - 3) = v59;
    sub_3865E0(v11 - 3, v96, v97, (v97 - v96) >> 4);
    *v68 = v21;
    *(v68 + 8) = v22;
    *(v68 + 16) = v67;
    v60 = v96;
    if (!v96)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v61 = v84;
  v62 = v85;
  v63 = v86;
  *(v11 - 15) = v87;
  *(v11 - 17) = v63;
  *(v11 - 19) = v62;
  *(v11 - 21) = v61;
  v64 = v90;
  v65 = v91;
  *(v11 - 28) = v92;
  *(v11 - 9) = v65;
  *(v11 - 11) = v64;
  *(v11 - 13) = v93;
  v66 = v94;
  *(v11 - 4) = v95;
  *(v11 - 3) = v66;
  *v68 = v21;
  *(v68 + 8) = v22;
  *(v68 + 16) = v67;
  v60 = v96;
  if (v96)
  {
LABEL_59:
    v97 = v60;
    operator delete(v60);
  }

LABEL_60:
  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }
}

void sub_11117E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (v42)
  {
    operator delete(v42);
  }

  if (v41)
  {
    operator delete(v41);
  }

  sub_110F048(&a41);
  _Unwind_Resume(a1);
}

BOOL sub_111187C(unsigned int *a1, uint64_t *a2, unsigned int *a3, uint64_t a4)
{
  v4 = a3;
  v6 = a3 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_110F09C(a1, a2, a1 + 1, a2 + 26, a3 - 1, (a4 - 208));
        return 1;
      case 4:
        sub_110F50C(a1, a2, a1 + 1, a2 + 26, a1 + 2, a2 + 52, a3 - 1, (a4 - 208));
        return 1;
      case 5:
        sub_110F7E8(a1, a2, a1 + 1, a2 + 26, a1 + 2, a2 + 52, a1 + 3, a2 + 78, a3 - 1, (a4 - 208));
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v8 = (a4 - 208);
      v65 = *(a3 - 1);
      sub_110A370(&v66, (a4 - 208));
      v55 = *a1;
      v10 = a2;
      sub_110A370(v58, a2);
      v11 = v65;
      if (__p)
      {
        v64 = __p;
        operator delete(__p);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      if (v82)
      {
        v83 = v82;
        operator delete(v82);
      }

      if (v74)
      {
        v75 = v74;
        operator delete(v74);
      }

      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }

      if (v11 < v55)
      {
        v12 = *a1;
        *a1 = *(v4 - 1);
        *(v4 - 1) = v12;
        sub_1111EF4(v10, v8);
        return 1;
      }

      return 1;
    }
  }

  v13 = a1 + 2;
  v14 = a2 + 52;
  sub_110F09C(a1, a2, a1 + 1, a2 + 26, a1 + 2, a2 + 52);
  v16 = a1 + 3;
  if (a1 + 3 == v4)
  {
    return 1;
  }

  v54 = 0;
  v17 = a2 + 78;
  v53 = v4;
  while (1)
  {
    v65 = *v16;
    sub_110A370(&v66, v17);
    v56 = *v13;
    sub_110A370(v58, v14);
    v18 = v65;
    if (__p)
    {
      v64 = __p;
      operator delete(__p);
    }

    if (v61)
    {
      v62 = v61;
      operator delete(v61);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    if (v82)
    {
      v83 = v82;
      operator delete(v82);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    if (v18 >= v56)
    {
      goto LABEL_26;
    }

    v65 = *v16;
    sub_110A370(&v66, v17);
    v19 = v16;
    v20 = v17;
    do
    {
      v21 = v19;
      v22 = v14;
      v19 = v13;
      *v21 = *v13;
      v23 = *v14;
      *(v20 + 2) = *(v14 + 2);
      *v20 = v23;
      if (v14 == v20)
      {
        v30 = *(v14 + 5);
        v31 = *(v14 + 7);
        v32 = *(v14 + 9);
        v20[11] = v14[11];
        *(v20 + 9) = v32;
        *(v20 + 7) = v31;
        *(v20 + 5) = v30;
        v33 = *(v14 + 15);
        v34 = *(v14 + 17);
        *(v20 + 76) = *(v14 + 76);
        *(v20 + 17) = v34;
        *(v20 + 15) = v33;
        *(v20 + 39) = *(v14 + 39);
        v35 = *(v14 + 10);
        v20[22] = v14[22];
        *(v20 + 10) = v35;
        if (v13 == a1)
        {
          break;
        }
      }

      else
      {
        sub_61532C(v20 + 2, v14[2], v14[3], (v14[3] - v14[2]) >> 3);
        v24 = *(v14 + 5);
        v25 = *(v14 + 7);
        v26 = *(v14 + 9);
        v20[11] = v14[11];
        *(v20 + 9) = v26;
        *(v20 + 7) = v25;
        *(v20 + 5) = v24;
        sub_C4E558(v20 + 12, v14[12], v14[13], (v14[13] - v14[12]) >> 1);
        v27 = *(v14 + 15);
        v28 = *(v14 + 17);
        *(v20 + 76) = *(v14 + 76);
        *(v20 + 17) = v28;
        *(v20 + 15) = v27;
        *(v20 + 39) = *(v14 + 39);
        v29 = *(v14 + 10);
        v20[22] = v14[22];
        *(v20 + 10) = v29;
        sub_3865E0(v20 + 23, v14[23], v14[24], (v14[24] - v14[23]) >> 4);
        if (v13 == a1)
        {
          break;
        }
      }

      --v13;
      v14 -= 26;
      v57 = *(v19 - 1);
      sub_110A370(v58, v22 - 26);
      v36 = v65;
      if (__p)
      {
        v64 = __p;
        operator delete(__p);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      v20 = v22;
    }

    while (v36 < v57);
    *v19 = v65;
    v37 = v66;
    *(v22 + 2) = v67;
    *v22 = v37;
    if (v22 == &v66)
    {
      v47 = v70;
      v48 = v71;
      v49 = v72;
      v22[11] = v73;
      *(v22 + 9) = v49;
      *(v22 + 7) = v48;
      *(v22 + 5) = v47;
      v50 = v76;
      v51 = v77;
      *(v22 + 76) = v78;
      *(v22 + 17) = v51;
      *(v22 + 15) = v50;
      *(v22 + 39) = v79;
      v52 = v80;
      v22[22] = v81;
      *(v22 + 10) = v52;
      v4 = v53;
      v44 = v54 + 1;
      if (v54 == 7)
      {
        v45 = 208;
      }

      else
      {
        v45 = 0;
      }

      v46 = v82;
      if (v82)
      {
LABEL_57:
        v83 = v46;
        operator delete(v46);
      }
    }

    else
    {
      sub_61532C(v22 + 2, v68, v69, (v69 - v68) >> 3);
      v4 = v53;
      v38 = v70;
      v39 = v71;
      v40 = v72;
      v22[11] = v73;
      *(v22 + 9) = v40;
      *(v22 + 7) = v39;
      *(v22 + 5) = v38;
      sub_C4E558(v22 + 12, v74, v75, (v75 - v74) >> 1);
      v41 = v76;
      v42 = v77;
      *(v22 + 76) = v78;
      *(v22 + 17) = v42;
      *(v22 + 15) = v41;
      *(v22 + 39) = v79;
      v43 = v80;
      v22[22] = v81;
      *(v22 + 10) = v43;
      sub_3865E0(v22 + 23, v82, v83, (v83 - v82) >> 4);
      v44 = v54 + 1;
      if (v54 == 7)
      {
        v45 = 208;
      }

      else
      {
        v45 = 0;
      }

      v46 = v82;
      if (v82)
      {
        goto LABEL_57;
      }
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    if (v44 == 8)
    {
      return v16 + 1 == v4;
    }

    v54 = v44;
    v17 = (v17 + v45);
LABEL_26:
    v13 = v16;
    v14 = v17;
    v17 += 26;
    if (++v16 == v4)
    {
      return 1;
    }
  }
}

__n128 sub_1111EF4(uint64_t *a1, uint64_t *a2)
{
  v35 = *a1;
  v36 = *(a1 + 2);
  v4 = *(a1 + 1);
  v5 = a1[4];
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  v31 = *(a1 + 5);
  v32 = *(a1 + 7);
  v33 = *(a1 + 9);
  v34 = a1[11];
  v6 = a1 + 12;
  v24 = v4;
  v25 = *(a1 + 6);
  v7 = a1[14];
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  v27 = *(a1 + 15);
  v28 = *(a1 + 17);
  v29 = *(a1 + 19);
  v30 = *(a1 + 21);
  v8 = a1 + 23;
  v26 = *(a1 + 23);
  v9 = a1[25];
  a1[23] = 0;
  a1[24] = 0;
  a1[25] = 0;
  v10 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *a1 = v10;
  v11 = a2[4];
  *(a1 + 1) = *(a2 + 1);
  a1[4] = v11;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  v12 = *(a2 + 5);
  v13 = a2[11];
  v14 = *(a2 + 9);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 9) = v14;
  a1[11] = v13;
  *(a1 + 5) = v12;
  v15 = a1[12];
  if (v15)
  {
    a1[13] = v15;
    operator delete(v15);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  *(a1 + 6) = *(a2 + 6);
  a1[14] = a2[14];
  a2[13] = 0;
  a2[14] = 0;
  a2[12] = 0;
  v16 = *(a2 + 15);
  v17 = *(a2 + 21);
  v18 = *(a2 + 19);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 19) = v18;
  *(a1 + 21) = v17;
  *(a1 + 15) = v16;
  v19 = a1[23];
  if (v19)
  {
    a1[24] = v19;
    operator delete(v19);
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  *(a1 + 23) = *(a2 + 23);
  a1[25] = a2[25];
  a2[23] = 0;
  a2[24] = 0;
  a2[25] = 0;
  *a2 = v35;
  *(a2 + 2) = v36;
  v20 = a2[2];
  if (v20)
  {
    a2[3] = v20;
    operator delete(v20);
  }

  *(a2 + 1) = v24;
  a2[4] = v5;
  *(a2 + 5) = v31;
  *(a2 + 7) = v32;
  *(a2 + 9) = v33;
  a2[11] = v34;
  v21 = a2[12];
  if (v21)
  {
    a2[13] = v21;
    operator delete(v21);
  }

  *(a2 + 6) = v25;
  a2[14] = v7;
  *(a2 + 15) = v27;
  *(a2 + 17) = v28;
  *(a2 + 19) = v29;
  *(a2 + 21) = v30;
  v22 = a2[23];
  if (v22)
  {
    a2[24] = v22;
    operator delete(v22);
  }

  result = v26;
  *(a2 + 23) = v26;
  a2[25] = v9;
  return result;
}

char *sub_1112148(char *a1, uint64_t *a2, char *a3, uint64_t *a4, char *a5, uint64_t a6, uint64_t a7)
{
  v7 = a3 - a1;
  if (a3 != a1)
  {
    v10 = a3;
    v13 = v7 >> 2;
    v14 = __OFSUB__(v7 >> 2, 2);
    v15 = (v7 >> 2) - 2;
    if (v15 < 0 == v14)
    {
      v16 = v15 >> 1;
      v17 = &a1[4 * v16];
      v18 = v16 + 1;
      v19 = &a2[26 * v16];
      do
      {
        sub_1112368(a1, a2, a7, v13, v17--, v19);
        v19 -= 26;
        --v18;
      }

      while (v18);
    }

    if (v10 == a5)
    {
      a5 = v10;
    }

    else
    {
      v22 = a4;
      v23 = v10;
      do
      {
        v35 = *v23;
        sub_110A370(&v36, v22);
        v27 = *a1;
        sub_110A370(&v28, a2);
        v24 = v35;
        if (__p)
        {
          v34 = __p;
          operator delete(__p);
        }

        if (v31)
        {
          v32 = v31;
          operator delete(v31);
        }

        if (v29)
        {
          v30 = v29;
          operator delete(v29);
        }

        if (v41)
        {
          v42 = v41;
          operator delete(v41);
        }

        if (v39)
        {
          v40 = v39;
          operator delete(v39);
        }

        if (v37)
        {
          v38 = v37;
          operator delete(v37);
        }

        if (v24 < v27)
        {
          v25 = *v23;
          *v23 = *a1;
          *a1 = v25;
          sub_1111EF4(v22, a2);
          sub_1112368(a1, a2, a7, v13, a1, a2);
        }

        v23 += 4;
        v22 += 26;
      }

      while (v23 != a5);
    }

    if (v13 >= 2)
    {
      do
      {
        sub_111299C(a1, a2, v10, a4, a7, v13);
        v10 -= 4;
        a4 -= 26;
      }

      while (v13-- > 2);
    }
  }

  return a5;
}

void sub_1112368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = a5;
    v52 = v6 >> 1;
    if ((v6 >> 1) >= (a5 - a1) >> 2)
    {
      v11 = (a5 - a1) >> 1;
      v12 = v11 | 1;
      v13 = (a1 + 4 * (v11 | 1));
      v14 = a2 + 208 * (v11 | 1);
      v15 = v11 + 2;
      if (v11 + 2 < a4)
      {
        v70 = *v13;
        sub_110A370(&v71, v14);
        v62 = v13[1];
        sub_110A370(v63, (v14 + 208));
        v16 = v70;
        if (__p)
        {
          v69 = __p;
          operator delete(__p);
        }

        if (v66)
        {
          v67 = v66;
          operator delete(v66);
        }

        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }

        if (v87)
        {
          v88 = v87;
          operator delete(v87);
        }

        if (v79)
        {
          v80 = v79;
          operator delete(v79);
        }

        if (v73)
        {
          v74 = v73;
          operator delete(v73);
        }

        if (v16 < v62)
        {
          ++v13;
          v14 += 208;
          v12 = v15;
        }
      }

      v70 = *v13;
      sub_110A370(&v71, v14);
      v62 = *v7;
      sub_110A370(v63, a6);
      v17 = v70;
      if (__p)
      {
        v69 = __p;
        operator delete(__p);
      }

      if (v66)
      {
        v67 = v66;
        operator delete(v66);
      }

      if (v64)
      {
        v65 = v64;
        operator delete(v64);
      }

      if (v87)
      {
        v88 = v87;
        operator delete(v87);
      }

      if (v79)
      {
        v80 = v79;
        operator delete(v79);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }

      if (v17 >= v62)
      {
        v70 = *v7;
        sub_110A370(&v71, a6);
        do
        {
          v18 = v7;
          v19 = v14;
          v7 = v13;
          *v18 = *v13;
          v20 = *v14;
          *(a6 + 8) = *(v14 + 8);
          *a6 = v20;
          if (a6 == v14)
          {
            v27 = *(v14 + 40);
            v28 = *(v14 + 56);
            v29 = *(v14 + 72);
            *(a6 + 88) = *(v14 + 88);
            *(a6 + 72) = v29;
            *(a6 + 56) = v28;
            *(a6 + 40) = v27;
            v30 = *(v14 + 120);
            v31 = *(v14 + 136);
            *(a6 + 152) = *(v14 + 152);
            *(a6 + 136) = v31;
            *(a6 + 120) = v30;
            *(a6 + 156) = *(v14 + 156);
            v32 = *(v14 + 160);
            *(a6 + 176) = *(v14 + 176);
            *(a6 + 160) = v32;
            if (v52 < v12)
            {
              break;
            }
          }

          else
          {
            sub_61532C((a6 + 16), *(v14 + 16), *(v14 + 24), (*(v14 + 24) - *(v14 + 16)) >> 3);
            v21 = *(v14 + 40);
            v22 = *(v14 + 56);
            v23 = *(v14 + 72);
            *(a6 + 88) = *(v14 + 88);
            *(a6 + 72) = v23;
            *(a6 + 56) = v22;
            *(a6 + 40) = v21;
            sub_C4E558((a6 + 96), *(v14 + 96), *(v14 + 104), (*(v14 + 104) - *(v14 + 96)) >> 1);
            v24 = *(v14 + 120);
            v25 = *(v14 + 136);
            *(a6 + 152) = *(v14 + 152);
            *(a6 + 136) = v25;
            *(a6 + 120) = v24;
            *(a6 + 156) = *(v14 + 156);
            v26 = *(v14 + 160);
            *(a6 + 176) = *(v14 + 176);
            *(a6 + 160) = v26;
            sub_3865E0((a6 + 184), *(v14 + 184), *(v14 + 192), (*(v14 + 192) - *(v14 + 184)) >> 4);
            if (v52 < v12)
            {
              break;
            }
          }

          v33 = 2 * v12;
          v12 = (2 * v12) | 1;
          v13 = (a1 + 4 * v12);
          v14 = a2 + 208 * v12;
          v34 = v33 + 2;
          if (v33 + 2 < a4)
          {
            v62 = *v13;
            sub_110A370(v63, (a2 + 208 * v12));
            v54 = v13[1];
            sub_110A370(&v55, (v14 + 208));
            v35 = v62;
            if (v60)
            {
              v61 = v60;
              operator delete(v60);
            }

            if (v58)
            {
              v59 = v58;
              operator delete(v58);
            }

            if (v56)
            {
              v57 = v56;
              operator delete(v56);
            }

            if (__p)
            {
              v69 = __p;
              operator delete(__p);
            }

            if (v66)
            {
              v67 = v66;
              operator delete(v66);
            }

            if (v64)
            {
              v65 = v64;
              operator delete(v64);
            }

            if (v35 < v54)
            {
              ++v13;
              v14 += 208;
              v12 = v34;
            }
          }

          v62 = *v13;
          sub_110A370(v63, v14);
          v36 = v70;
          v37 = v62;
          if (__p)
          {
            v69 = __p;
            operator delete(__p);
          }

          if (v66)
          {
            v67 = v66;
            operator delete(v66);
          }

          if (v64)
          {
            v65 = v64;
            operator delete(v64);
          }

          a6 = v19;
        }

        while (v37 >= v36);
        *v7 = v70;
        v38 = v71;
        *(v19 + 8) = v72;
        *v19 = v38;
        if (v19 == &v71)
        {
          v46 = v75;
          v47 = v76;
          v48 = v77;
          *(v19 + 88) = v78;
          *(v19 + 72) = v48;
          *(v19 + 56) = v47;
          *(v19 + 40) = v46;
          v49 = v81;
          v50 = v82;
          *(v19 + 152) = v83;
          *(v19 + 136) = v50;
          *(v19 + 120) = v49;
          *(v19 + 156) = v84;
          v51 = v85;
          *(v19 + 176) = v86;
          *(v19 + 160) = v51;
          v45 = v87;
          if (!v87)
          {
            goto LABEL_61;
          }
        }

        else
        {
          sub_61532C((v19 + 16), v73, v74, (v74 - v73) >> 3);
          v39 = v75;
          v40 = v76;
          v41 = v77;
          *(v19 + 88) = v78;
          *(v19 + 72) = v41;
          *(v19 + 56) = v40;
          *(v19 + 40) = v39;
          sub_C4E558((v19 + 96), v79, v80, (v80 - v79) >> 1);
          v42 = v81;
          v43 = v82;
          *(v19 + 152) = v83;
          *(v19 + 136) = v43;
          *(v19 + 120) = v42;
          *(v19 + 156) = v84;
          v44 = v85;
          *(v19 + 176) = v86;
          *(v19 + 160) = v44;
          sub_3865E0((v19 + 184), v87, v88, (v88 - v87) >> 4);
          v45 = v87;
          if (!v87)
          {
LABEL_61:
            if (v79)
            {
              v80 = v79;
              operator delete(v79);
            }

            if (v73)
            {
              v74 = v73;
              operator delete(v73);
            }

            return;
          }
        }

        v88 = v45;
        operator delete(v45);
        goto LABEL_61;
      }
    }
  }
}

void sub_1112958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_110F048(&a40);
  sub_110F048(&a65);
  _Unwind_Resume(a1);
}

void sub_111299C(unsigned int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 < 2)
  {
    return;
  }

  v58 = *a1;
  sub_110A370(&v59, a2);
  v12 = sub_1112DD0(a1, a2, a5, a6);
  v14 = v12;
  v15 = v13;
  v16 = (a3 - 4);
  if (v16 == v12)
  {
    *v12 = v58;
    v25 = v59;
    *(v13 + 8) = v60;
    *v13 = v25;
    if (&v59 == v13)
    {
      v52 = v63;
      v53 = v64;
      v54 = v65;
      *(v13 + 88) = v66;
      *(v13 + 72) = v54;
      *(v13 + 56) = v53;
      *(v13 + 40) = v52;
      v55 = v69;
      v56 = v70;
      *(v13 + 152) = v71;
      *(v13 + 136) = v56;
      *(v13 + 120) = v55;
      *(v13 + 156) = v72;
      v57 = v73;
      *(v13 + 176) = v74;
      *(v13 + 160) = v57;
      v51 = __p;
      if (!__p)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    sub_61532C((v13 + 16), v61, v62, (v62 - v61) >> 3);
    v26 = v63;
    v27 = v64;
    v28 = v65;
    *(v15 + 88) = v66;
    *(v15 + 72) = v28;
    *(v15 + 56) = v27;
    *(v15 + 40) = v26;
    sub_C4E558((v15 + 96), v67, v68, (v68 - v67) >> 1);
    v29 = v69;
    v30 = v70;
    *(v15 + 152) = v71;
    *(v15 + 136) = v30;
    *(v15 + 120) = v29;
    *(v15 + 156) = v72;
    v31 = v73;
    *(v15 + 176) = v74;
    *(v15 + 160) = v31;
    sub_3865E0((v15 + 184), __p, v76, (v76 - __p) >> 4);
  }

  else
  {
    v17 = (a4 - 208);
    *v12 = *v16;
    v18 = *(a4 - 208);
    *(v13 + 8) = *(a4 - 200);
    *v13 = v18;
    if (a4 - 208 == v13)
    {
      v32 = *(a4 - 168);
      v33 = *(a4 - 152);
      v34 = *(a4 - 136);
      *(v13 + 88) = *(a4 - 120);
      *(v13 + 72) = v34;
      *(v13 + 56) = v33;
      *(v13 + 40) = v32;
      v35 = *(a4 - 88);
      v36 = *(a4 - 72);
      *(v13 + 152) = *(a4 - 56);
      *(v13 + 136) = v36;
      *(v13 + 120) = v35;
      *(v13 + 156) = *(a4 - 52);
      v37 = *(a4 - 48);
      *(v13 + 176) = *(a4 - 32);
      *(v13 + 160) = v37;
    }

    else
    {
      sub_61532C((v13 + 16), *(a4 - 192), *(a4 - 184), (*(a4 - 184) - *(a4 - 192)) >> 3);
      v19 = *(a4 - 168);
      v20 = *(a4 - 152);
      v21 = *(a4 - 136);
      *(v15 + 88) = *(a4 - 120);
      *(v15 + 72) = v21;
      *(v15 + 56) = v20;
      *(v15 + 40) = v19;
      sub_C4E558((v15 + 96), *(a4 - 112), *(a4 - 104), (*(a4 - 104) - *(a4 - 112)) >> 1);
      v22 = *(a4 - 88);
      v23 = *(a4 - 72);
      *(v15 + 152) = *(a4 - 56);
      *(v15 + 136) = v23;
      *(v15 + 120) = v22;
      *(v15 + 156) = *(a4 - 52);
      v24 = *(a4 - 48);
      *(v15 + 176) = *(a4 - 32);
      *(v15 + 160) = v24;
      sub_3865E0((v15 + 184), *(a4 - 24), *(a4 - 16), (*(a4 - 16) - *(a4 - 24)) >> 4);
    }

    *v16 = v58;
    v38 = v59;
    *(a4 - 200) = v60;
    *v17 = v38;
    if (v17 == &v59)
    {
      v45 = v63;
      v46 = v64;
      v47 = v65;
      *(a4 - 120) = v66;
      *(a4 - 136) = v47;
      *(a4 - 152) = v46;
      *(a4 - 168) = v45;
      v48 = v69;
      v49 = v70;
      *(a4 - 56) = v71;
      *(a4 - 72) = v49;
      *(a4 - 88) = v48;
      *(a4 - 52) = v72;
      v50 = v73;
      *(a4 - 32) = v74;
      *(a4 - 48) = v50;
    }

    else
    {
      sub_61532C((a4 - 192), v61, v62, (v62 - v61) >> 3);
      v39 = v63;
      v40 = v64;
      v41 = v65;
      *(a4 - 120) = v66;
      *(a4 - 136) = v41;
      *(a4 - 152) = v40;
      *(a4 - 168) = v39;
      sub_C4E558((a4 - 112), v67, v68, (v68 - v67) >> 1);
      v42 = v69;
      v43 = v70;
      *(a4 - 56) = v71;
      *(a4 - 72) = v43;
      *(a4 - 88) = v42;
      *(a4 - 52) = v72;
      v44 = v73;
      *(a4 - 32) = v74;
      *(a4 - 48) = v44;
      sub_3865E0((a4 - 24), __p, v76, (v76 - __p) >> 4);
    }

    sub_1112FF0(a1, a2, (v14 + 1), v15 + 208, a5, v14 + 1 - a1);
  }

  v51 = __p;
  if (__p)
  {
LABEL_13:
    v76 = v51;
    operator delete(v51);
  }

LABEL_14:
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }
}

unsigned int *sub_1112DD0(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = (a4 - 2) / 2;
  do
  {
    v9 = &a1[v7 + 1];
    v10 = a2 + 208 * (v7 + 1);
    v11 = 2 * v7;
    v7 = (2 * v7) | 1;
    v12 = v11 + 2;
    if (v11 + 2 < a4)
    {
      v30 = *v9;
      sub_110A370(&v31, v10);
      v22 = v9[1];
      sub_110A370(&v23, (v10 + 208));
      v13 = v30;
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }

      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      if (v13 < v22)
      {
        ++v9;
        v10 += 208;
        v7 = v12;
      }
    }

    *a1 = *v9;
    v14 = *v10;
    *(a2 + 8) = *(v10 + 8);
    *a2 = v14;
    if (a2 != v10)
    {
      sub_61532C((a2 + 16), *(v10 + 16), *(v10 + 24), (*(v10 + 24) - *(v10 + 16)) >> 3);
      v15 = *(v10 + 40);
      v16 = *(v10 + 56);
      v17 = *(v10 + 72);
      *(a2 + 88) = *(v10 + 88);
      *(a2 + 72) = v17;
      *(a2 + 56) = v16;
      *(a2 + 40) = v15;
      sub_C4E558((a2 + 96), *(v10 + 96), *(v10 + 104), (*(v10 + 104) - *(v10 + 96)) >> 1);
      v18 = *(v10 + 120);
      v19 = *(v10 + 136);
      *(a2 + 152) = *(v10 + 152);
      *(a2 + 136) = v19;
      *(a2 + 120) = v18;
      *(a2 + 156) = *(v10 + 156);
      v20 = *(v10 + 160);
      *(a2 + 176) = *(v10 + 176);
      *(a2 + 160) = v20;
      sub_3865E0((a2 + 184), *(v10 + 184), *(v10 + 192), (*(v10 + 192) - *(v10 + 184)) >> 4);
    }

    a1 = v9;
    a2 = v10;
  }

  while (v7 <= v8);
  return v9;
}

void sub_1112FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6 - 2;
  if (a6 >= 2)
  {
    v11 = v6 >> 1;
    v12 = (a1 + 4 * (v6 >> 1));
    v13 = a2 + 208 * (v6 >> 1);
    v57 = *v12;
    sub_110A370(&v58, v13);
    v15 = *(a3 - 4);
    v14 = (a3 - 4);
    v16 = a4 - 208;
    sub_110A370(v50, v16);
    v17 = v15;
    v18 = v57;
    if (__p)
    {
      v56 = __p;
      operator delete(__p);
    }

    if (v53)
    {
      v54 = v53;
      operator delete(v53);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v66)
    {
      v67 = v66;
      operator delete(v66);
    }

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    if (v18 < v17)
    {
      v57 = *v14;
      sub_110A370(&v58, v16);
      do
      {
        v19 = v14;
        v20 = v13;
        v14 = v12;
        *v19 = *v12;
        v21 = *v13;
        *(v16 + 8) = *(v13 + 8);
        *v16 = v21;
        if (v16 == v13)
        {
          v28 = *(v13 + 40);
          v29 = *(v13 + 56);
          v30 = *(v13 + 72);
          *(v16 + 88) = *(v13 + 88);
          *(v16 + 72) = v30;
          *(v16 + 56) = v29;
          *(v16 + 40) = v28;
          v31 = *(v13 + 120);
          v32 = *(v13 + 136);
          *(v16 + 152) = *(v13 + 152);
          *(v16 + 136) = v32;
          *(v16 + 120) = v31;
          *(v16 + 156) = *(v13 + 156);
          v33 = *(v13 + 160);
          *(v16 + 176) = *(v13 + 176);
          *(v16 + 160) = v33;
          if (!v11)
          {
            break;
          }
        }

        else
        {
          sub_61532C((v16 + 16), *(v13 + 16), *(v13 + 24), (*(v13 + 24) - *(v13 + 16)) >> 3);
          v22 = *(v13 + 40);
          v23 = *(v13 + 56);
          v24 = *(v13 + 72);
          *(v16 + 88) = *(v13 + 88);
          *(v16 + 72) = v24;
          *(v16 + 56) = v23;
          *(v16 + 40) = v22;
          sub_C4E558((v16 + 96), *(v13 + 96), *(v13 + 104), (*(v13 + 104) - *(v13 + 96)) >> 1);
          v25 = *(v13 + 120);
          v26 = *(v13 + 136);
          *(v16 + 152) = *(v13 + 152);
          *(v16 + 136) = v26;
          *(v16 + 120) = v25;
          *(v16 + 156) = *(v13 + 156);
          v27 = *(v13 + 160);
          *(v16 + 176) = *(v13 + 176);
          *(v16 + 160) = v27;
          sub_3865E0((v16 + 184), *(v13 + 184), *(v13 + 192), (*(v13 + 192) - *(v13 + 184)) >> 4);
          if (!v11)
          {
            break;
          }
        }

        v11 = (v11 - 1) >> 1;
        v12 = (a1 + 4 * v11);
        v13 = a2 + 208 * v11;
        v49 = *v12;
        sub_110A370(v50, v13);
        v34 = v57;
        if (__p)
        {
          v56 = __p;
          operator delete(__p);
        }

        if (v53)
        {
          v54 = v53;
          operator delete(v53);
        }

        if (v51)
        {
          v52 = v51;
          operator delete(v51);
        }

        v16 = v20;
      }

      while (v49 < v34);
      *v14 = v57;
      v35 = v58;
      *(v20 + 8) = v59;
      *v20 = v35;
      if (v20 == &v58)
      {
        v43 = v62;
        v44 = v63;
        v45 = v64;
        *(v20 + 88) = v65;
        *(v20 + 72) = v45;
        *(v20 + 56) = v44;
        *(v20 + 40) = v43;
        v46 = v68;
        v47 = v69;
        *(v20 + 152) = v70;
        *(v20 + 136) = v47;
        *(v20 + 120) = v46;
        *(v20 + 156) = v71;
        v48 = v72;
        *(v20 + 176) = v73;
        *(v20 + 160) = v48;
        v42 = v74;
        if (!v74)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_61532C((v20 + 16), v60, v61, (v61 - v60) >> 3);
        v36 = v62;
        v37 = v63;
        v38 = v64;
        *(v20 + 88) = v65;
        *(v20 + 72) = v38;
        *(v20 + 56) = v37;
        *(v20 + 40) = v36;
        sub_C4E558((v20 + 96), v66, v67, (v67 - v66) >> 1);
        v39 = v68;
        v40 = v69;
        *(v20 + 152) = v70;
        *(v20 + 136) = v40;
        *(v20 + 120) = v39;
        *(v20 + 156) = v71;
        v41 = v72;
        *(v20 + 176) = v73;
        *(v20 + 160) = v41;
        sub_3865E0((v20 + 184), v74, v75, (v75 - v74) >> 4);
        v42 = v74;
        if (!v74)
        {
LABEL_30:
          if (v66)
          {
            v67 = v66;
            operator delete(v66);
          }

          if (v60)
          {
            v61 = v60;
            operator delete(v60);
          }

          return;
        }
      }

      v75 = v42;
      operator delete(v42);
      goto LABEL_30;
    }
  }
}

void sub_111342C(unsigned int *a1, uint64_t *a2, unsigned int *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  while (1)
  {
    v39 = a3 - 1;
    v40 = a4 - 26;
    v35 = a4 - 52;
    v36 = a3 - 2;
    v33 = a4 - 78;
    v34 = a3 - 3;
    v14 = 1 - a6;
    v15 = a7;
    v37 = a4;
    v16 = a3 - a1;
    v17 = v16 >= 2;
    if (v16 <= 2)
    {
      break;
    }

    while (1)
    {
      switch(v16)
      {
        case 3:
          sub_1113958(a1, a2, a1 + 1, a2 + 26, v39, v40);
          return;
        case 4:
          sub_1113DC8(a1, a2, a1 + 1, a2 + 26, a1 + 2, a2 + 52, v39, v40);
          return;
        case 5:
          sub_11140A4(a1, a2, a1 + 1, a2 + 26, a1 + 2, a2 + 52, a1 + 3, a2 + 78, v39, v40);
          return;
      }

LABEL_9:
      if (v16 <= 23)
      {
        if (v15)
        {
          sub_1114454(a1, a2, a3);
        }

        else
        {
          sub_1114B14(a1, a2, a3);
        }

        return;
      }

      if (v14 == 1)
      {
        if (a1 != a3)
        {
          sub_11167B0(a1, a2, a3, a4, a3, a4, a5);
        }

        return;
      }

      v18 = v16 >> 1;
      v19 = 26 * (v16 >> 1);
      v41 = v14;
      if (v16 < 0x81)
      {
        sub_1113958(&a1[v18], &a2[v19], a1, a2, v39, v40);
        if (v15)
        {
          break;
        }
      }

      else
      {
        v38 = v15;
        v20 = &a1[v18];
        sub_1113958(a1, a2, v20, &a2[v19], v39, v40);
        v21 = a3;
        v22 = 26 * v18;
        v23 = &a2[26 * v18 - 26];
        sub_1113958(a1 + 1, a2 + 26, v20 - 1, v23, v36, v35);
        sub_1113958(a1 + 2, a2 + 52, v20 + 1, &a2[v22 + 26], v34, v33);
        v24 = &a2[v22 + 26];
        a3 = v21;
        a4 = v37;
        sub_1113958(v20 - 1, v23, v20, &a2[v19], v20 + 1, v24);
        v25 = *a1;
        *a1 = *v20;
        *v20 = v25;
        v15 = v38;
        sub_1111EF4(a2, &a2[v19]);
        if (v38)
        {
          break;
        }
      }

      LODWORD(v51) = *(a1 - 1);
      sub_110A370(&v52, a2 - 26);
      v42 = *a1;
      sub_110A370(v44, a2);
      v26 = v51;
      if (__p)
      {
        v50 = __p;
        operator delete(__p);
      }

      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }

      if (v45)
      {
        v46 = v45;
        operator delete(v45);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v26 < v42)
      {
        break;
      }

      a1 = sub_11151C0(a1, a2, a3, a4);
      a2 = v27;
      v15 = 0;
      v14 = v41 + 1;
      v16 = a3 - a1;
      v17 = v16 >= 2;
      if (v16 <= 2)
      {
        goto LABEL_2;
      }
    }

    a7 = v15;
    sub_1115998(a1, a2, a3, a4, &v51);
    v29 = v51;
    v28 = v52;
    a6 = -v41;
    if (v53 != 1)
    {
      goto LABEL_35;
    }

    v30 = sub_1116138(a1, a2, v51, v52);
    if (!sub_1116138(v29 + 1, v28 + 26, a3, a4))
    {
      if (!v30)
      {
LABEL_35:
        sub_111342C(a1, a2, v29, v28, a5, a6, a7 & 1);
        a7 = 0;
      }

      a1 = v29 + 1;
      a2 = v28 + 26;
      continue;
    }

    if (v30)
    {
      return;
    }

    a3 = v29;
    a4 = v28;
  }

LABEL_2:
  if (v17)
  {
    if (v16 != 2)
    {
      goto LABEL_9;
    }

    LODWORD(v51) = *(a3 - 1);
    sub_110A370(&v52, v40);
    v43 = *a1;
    sub_110A370(v44, a2);
    v31 = v51;
    if (__p)
    {
      v50 = __p;
      operator delete(__p);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    if (v56)
    {
      v57 = v56;
      operator delete(v56);
    }

    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    if (v31 < v43)
    {
      v32 = *a1;
      *a1 = *(a3 - 1);
      *(a3 - 1) = v32;
      sub_1111EF4(a2, v40);
    }
  }
}

uint64_t sub_1113958(unsigned int *a1, uint64_t *a2, unsigned int *a3, uint64_t *a4, unsigned int *a5, uint64_t *a6)
{
  v36 = *a3;
  sub_110A370(v37, a4);
  v24 = *a1;
  sub_110A370(v29, a2);
  v12 = v36;
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v12 < v24)
  {
    v36 = *a5;
    sub_110A370(v37, a6);
    v25 = *a3;
    sub_110A370(v29, a4);
    v13 = v36;
    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    v14 = *a1;
    if (v13 >= v25)
    {
      *a1 = *a3;
      *a3 = v14;
      sub_1111EF4(a2, a4);
      v36 = *a5;
      sub_110A370(v37, a6);
      v28 = *a3;
      sub_110A370(v29, a4);
      v21 = v36;
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }

      if (v42)
      {
        v43 = v42;
        operator delete(v42);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      if (v21 >= v28)
      {
        return 1;
      }

      v22 = *a3;
      *a3 = *a5;
      *a5 = v22;
      v15 = a4;
    }

    else
    {
      *a1 = *a5;
      *a5 = v14;
      v15 = a2;
    }

    v20 = a6;
LABEL_70:
    sub_1111EF4(v15, v20);
    return 1;
  }

  v36 = *a5;
  sub_110A370(v37, a6);
  v26 = *a3;
  sub_110A370(v29, a4);
  v16 = v36;
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v16 < v26)
  {
    v17 = *a3;
    *a3 = *a5;
    *a5 = v17;
    sub_1111EF4(a4, a6);
    v36 = *a3;
    sub_110A370(v37, a4);
    v27 = *a1;
    sub_110A370(v29, a2);
    v18 = v36;
    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    if (v18 >= v27)
    {
      return 1;
    }

    v19 = *a1;
    *a1 = *a3;
    *a3 = v19;
    v15 = a2;
    v20 = a4;
    goto LABEL_70;
  }

  return 0;
}

double sub_1113DC8(unsigned int *a1, uint64_t *a2, unsigned int *a3, uint64_t *a4, unsigned int *a5, uint64_t *a6, unsigned int *a7, uint64_t *a8)
{
  sub_1113958(a1, a2, a3, a4, a5, a6);
  v33 = *a7;
  sub_110A370(v34, a8);
  v23 = *a5;
  sub_110A370(v26, a6);
  v17 = v33;
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v17 < v23)
  {
    v18 = *a5;
    *a5 = *a7;
    *a7 = v18;
    sub_1111EF4(a6, a8);
    v33 = *a5;
    sub_110A370(v34, a6);
    v24 = *a3;
    sub_110A370(v26, a4);
    v19 = v33;
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }

    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v19 < v24)
    {
      v20 = *a3;
      *a3 = *a5;
      *a5 = v20;
      sub_1111EF4(a4, a6);
      v33 = *a3;
      sub_110A370(v34, a4);
      v25 = *a1;
      sub_110A370(v26, a2);
      v21 = v33;
      if (__p)
      {
        v32 = __p;
        operator delete(__p);
      }

      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      if (v27)
      {
        v28 = v27;
        operator delete(v27);
      }

      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (v21 < v25)
      {
        v22 = *a1;
        *a1 = *a3;
        *a3 = v22;
        *&result = sub_1111EF4(a2, a4).n128_u64[0];
      }
    }
  }

  return result;
}

double sub_11140A4(unsigned int *a1, uint64_t *a2, unsigned int *a3, uint64_t *a4, unsigned int *a5, uint64_t *a6, unsigned int *a7, uint64_t *a8, unsigned int *a9, uint64_t *a10)
{
  sub_1113DC8(a1, a2, a3, a4, a5, a6, a7, a8);
  v38 = *a9;
  sub_110A370(v39, a10);
  v27 = *a7;
  sub_110A370(v31, a8);
  v17 = v38;
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v17 < v27)
  {
    v18 = *a7;
    *a7 = *a9;
    *a9 = v18;
    sub_1111EF4(a8, a10);
    v38 = *a7;
    sub_110A370(v39, a8);
    v28 = *a5;
    sub_110A370(v31, a6);
    v19 = v38;
    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v19 < v28)
    {
      v20 = *a5;
      *a5 = *a7;
      *a7 = v20;
      sub_1111EF4(a6, a8);
      v38 = *a5;
      sub_110A370(v39, a6);
      v29 = *a3;
      sub_110A370(v31, a4);
      v21 = v38;
      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }

      if (v42)
      {
        v43 = v42;
        operator delete(v42);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v21 < v29)
      {
        v22 = *a3;
        *a3 = *a5;
        *a5 = v22;
        sub_1111EF4(a4, a6);
        v38 = *a3;
        sub_110A370(v39, a4);
        v30 = *a1;
        sub_110A370(v31, a2);
        v23 = v38;
        if (__p)
        {
          v37 = __p;
          operator delete(__p);
        }

        if (v34)
        {
          v35 = v34;
          operator delete(v34);
        }

        if (v32)
        {
          v33 = v32;
          operator delete(v32);
        }

        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }

        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }

        if (v40)
        {
          v41 = v40;
          operator delete(v40);
        }

        if (v23 < v30)
        {
          v24 = *a1;
          *a1 = *a3;
          *a3 = v24;
          *&result = sub_1111EF4(a2, a4).n128_u64[0];
        }
      }
    }
  }

  return result;
}

void sub_1114454(unsigned int *a1, uint64_t *a2, unsigned int *a3)
{
  if (a1 != a3)
  {
    v3 = a3;
    v4 = a1;
    v5 = a1 + 1;
    if (a1 + 1 != a3)
    {
      v6 = 0;
      v7 = 0;
      v61 = a2;
      v8 = a1;
      while (1)
      {
        v9 = v61;
        v60 = v5;
        v61 += 26;
        v71 = *v5;
        sub_110A370(&v72, v61);
        v63 = *v8;
        sub_110A370(&v64, v9);
        v10 = v71;
        if (__p)
        {
          v70 = __p;
          operator delete(__p);
        }

        if (v67)
        {
          v68 = v67;
          operator delete(v67);
        }

        if (v65)
        {
          v66 = v65;
          operator delete(v65);
        }

        if (v88)
        {
          v89 = v88;
          operator delete(v88);
        }

        if (v80)
        {
          v81 = v80;
          operator delete(v80);
        }

        if (v74)
        {
          v75 = v74;
          operator delete(v74);
        }

        if (v10 >= v63)
        {
          goto LABEL_4;
        }

        v71 = *v60;
        sub_110A370(&v72, v61);
        v58 = v7;
        v59 = v6;
        v11 = v6;
        do
        {
          v12 = v4;
          v13 = (v4 + v7);
          v14 = a2 + v11;
          v13[1] = *v13;
          *(v14 + 26) = *v14;
          *(v14 + 54) = *(v14 + 2);
          v15 = *(a2 + v11 + 224);
          v17 = *(a2 + v11 + 16);
          v16 = *(a2 + v11 + 24);
          v18 = v16 - v17;
          v19 = *(a2 + v11 + 240);
          if (v19 - v15 < (v16 - v17))
          {
            if (v15)
            {
              *(a2 + v11 + 232) = v15;
              operator delete(v15);
              v19 = 0;
              *(a2 + v11 + 224) = 0;
              *(v14 + 29) = 0;
              *(v14 + 30) = 0;
            }

            v20 = v18 >> 3;
            if (!((v18 >> 3) >> 61))
            {
              if (v19 >> 2 > v20)
              {
                v20 = v19 >> 2;
              }

              if (v19 >= 0x7FFFFFFFFFFFFFF8)
              {
                v21 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v21 = v20;
              }

              if (!(v21 >> 61))
              {
                operator new();
              }
            }

            sub_1794();
          }

          v22 = *(v14 + 29);
          v23 = v22 - v15;
          if (v22 - v15 >= v18)
          {
            if (v16 != v17)
            {
              memmove(*(v14 + 28), *(v14 + 2), v16 - v17);
            }

            v24 = &v15[v18];
          }

          else
          {
            if (v22 != v15)
            {
              memmove(*(v14 + 28), *(v14 + 2), v22 - v15);
              v22 = *(v14 + 29);
            }

            if (v16 != v17 + v23)
            {
              memmove(v22, (v17 + v23), v16 - (v17 + v23));
            }

            v24 = &v22[v16 - (v17 + v23)];
          }

          *(v14 + 29) = v24;
          v25 = a2 + v11;
          v26 = a2 + v11 + 248;
          *(v25 + 248) = *(a2 + v11 + 40);
          v27 = *(a2 + v11 + 72);
          *(v26 + 1) = *(a2 + v11 + 56);
          *(v26 + 2) = v27;
          v28 = *(a2 + v11 + 96);
          *(v25 + 37) = *(v25 + 11);
          sub_C4E558((a2 + v11 + 304), v28, *(a2 + v11 + 104), (*(a2 + v11 + 104) - v28) >> 1);
          v29 = *(a2 + v11 + 136);
          *(v25 + 328) = *(v25 + 120);
          *(v25 + 344) = v29;
          *(v25 + 180) = *(v25 + 76);
          *(v25 + 91) = *(v25 + 39);
          v30 = *(a2 + v11 + 160);
          v31 = *(a2 + v11 + 184);
          *(v25 + 48) = *(v25 + 22);
          v32 = *(a2 + v11 + 192);
          *(v25 + 23) = v30;
          sub_3865E0((a2 + v11 + 392), v31, v32, (v32 - v31) >> 4);
          v4 = v12;
          if (!v7)
          {
            v41 = v12;
            v42 = a2;
            goto LABEL_53;
          }

          v33 = *(v12 + v7 - 4);
          v34 = a2 + v11;
          v36 = *(a2 + v11 - 192);
          v35 = *(a2 + v11 - 184);
          if (v35 != v36)
          {
            if (((v35 - v36) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v38 = *(v34 - 14);
          v37 = *(v34 - 13);
          if (v37 != v38)
          {
            if (((v37 - v38) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v40 = *(a2 + v11 - 24);
          v39 = *(a2 + v11 - 16);
          if (v39 != v40)
          {
            if (((v39 - v40) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v7 -= 4;
          v11 -= 208;
        }

        while (v71 < v33);
        v41 = (v12 + v7 + 4);
        v42 = (a2 + v11 + 208);
LABEL_53:
        *v41 = v71;
        v6 = v59;
        v43 = v72;
        *(v42 + 2) = v73;
        *v42 = v43;
        v3 = a3;
        v7 = v58;
        if (v42 == &v72)
        {
          break;
        }

        sub_61532C(v42 + 2, v74, v75, (v75 - v74) >> 3);
        v44 = v76;
        v45 = v77;
        v46 = v78;
        v42[11] = v79;
        *(v42 + 9) = v46;
        *(v42 + 7) = v45;
        *(v42 + 5) = v44;
        sub_C4E558(v42 + 12, v80, v81, (v81 - v80) >> 1);
        v47 = v82;
        v48 = v83;
        *(v42 + 76) = v84;
        *(v42 + 17) = v48;
        *(v42 + 15) = v47;
        *(v42 + 39) = v85;
        v49 = v86;
        v42[22] = v87;
        *(v42 + 10) = v49;
        sub_3865E0(v42 + 23, v88, v89, (v89 - v88) >> 4);
        v50 = v88;
        if (v88)
        {
          goto LABEL_55;
        }

LABEL_56:
        if (v80)
        {
          v81 = v80;
          operator delete(v80);
        }

        if (v74)
        {
          v75 = v74;
          operator delete(v74);
        }

LABEL_4:
        v8 = v60;
        v5 = v60 + 1;
        v7 += 4;
        v6 += 208;
        if (v60 + 1 == v3)
        {
          return;
        }
      }

      v51 = v76;
      v52 = v77;
      v53 = v78;
      v42[11] = v79;
      *(v42 + 9) = v53;
      *(v42 + 7) = v52;
      *(v42 + 5) = v51;
      v54 = v82;
      v55 = v83;
      *(v42 + 76) = v84;
      *(v42 + 17) = v55;
      *(v42 + 15) = v54;
      *(v42 + 39) = v85;
      v56 = v86;
      v42[22] = v87;
      *(v42 + 10) = v56;
      v50 = v88;
      if (!v88)
      {
        goto LABEL_56;
      }

LABEL_55:
      v89 = v50;
      operator delete(v50);
      goto LABEL_56;
    }
  }
}

void sub_1114A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  if (v44)
  {
    operator delete(v44);
    if (!v43)
    {
LABEL_5:
      sub_110F048(&a43);
      _Unwind_Resume(a1);
    }
  }

  else if (!v43)
  {
    goto LABEL_5;
  }

  operator delete(v43);
  sub_110F048(&a43);
  _Unwind_Resume(a1);
}

void sub_1114B14(unsigned int *a1, uint64_t a2, unsigned int *a3)
{
  if (a1 != a3)
  {
    v3 = a3;
    v4 = a1 + 1;
    if (a1 + 1 != a3)
    {
      for (i = (a2 + 208); ; i += 26)
      {
        v68 = *v4;
        sub_110A370(&v69, i);
        v6 = v4 - 1;
        v60 = *(v4 - 1);
        sub_110A370(&v61, i - 26);
        v7 = v68;
        if (__p)
        {
          v67 = __p;
          operator delete(__p);
        }

        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }

        if (v62)
        {
          v63 = v62;
          operator delete(v62);
        }

        if (v85)
        {
          v86 = v85;
          operator delete(v85);
        }

        if (v77)
        {
          v78 = v77;
          operator delete(v77);
        }

        if (v71)
        {
          v72 = v71;
          operator delete(v71);
        }

        if (v7 >= v60)
        {
          goto LABEL_5;
        }

        v68 = *v4;
        sub_110A370(&v69, i);
        v8 = i - 50;
        v59 = v4;
        v9 = v4;
        v10 = i;
        do
        {
          v11 = v9;
          v9 = v6;
          *v11 = *v6;
          v13 = v8 + 24;
          v12 = v8[24];
          *(v10 + 2) = *(v8 + 50);
          *v10 = v12;
          if (v8 + 24 == v10)
          {
            v21 = *(v8 + 29);
            v22 = *(v8 + 31);
            v23 = *(v8 + 33);
            v10[11] = v8[35];
            *(v10 + 9) = v23;
            *(v10 + 7) = v22;
            *(v10 + 5) = v21;
            v24 = *(v8 + 39);
            v25 = *(v8 + 41);
            *(v10 + 76) = *(v8 + 172);
            *(v10 + 17) = v25;
            *(v10 + 15) = v24;
            *(v10 + 39) = *(v8 + 87);
            v26 = *(v8 + 22);
            v10[22] = v8[46];
            *(v10 + 10) = v26;
          }

          else
          {
            v14 = v10[2];
            v16 = v8[26];
            v15 = v8[27];
            v17 = v15 - v16;
            v18 = v10[4];
            if (v18 - v14 < (v15 - v16))
            {
              if (v14)
              {
                v10[3] = v14;
                operator delete(v14);
                v18 = 0;
                v10[2] = 0;
                v10[3] = 0;
                v10[4] = 0;
              }

              v19 = v17 >> 3;
              if (!((v17 >> 3) >> 61))
              {
                if (v18 >> 2 > v19)
                {
                  v19 = v18 >> 2;
                }

                if (v18 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v20 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v20 = v19;
                }

                if (!(v20 >> 61))
                {
                  operator new();
                }
              }

              sub_1794();
            }

            v27 = v10[3];
            v28 = v27 - v14;
            if (v27 - v14 >= v17)
            {
              if (v15 != v16)
              {
                v32 = v10[2];
                memmove(v14, v8[26], v15 - v16);
                v14 = v32;
              }

              v31 = &v14[v17];
            }

            else
            {
              if (v27 != v14)
              {
                memmove(v14, v8[26], v27 - v14);
                v27 = v10[3];
              }

              v29 = (v16 + v28);
              v30 = v15 - (v16 + v28);
              if (v30)
              {
                memmove(v27, v29, v30);
              }

              v31 = &v27[v30];
            }

            v10[3] = v31;
            v33 = *(v8 + 29);
            v34 = *(v8 + 31);
            v35 = *(v8 + 33);
            v10[11] = v8[35];
            *(v10 + 9) = v35;
            *(v10 + 7) = v34;
            *(v10 + 5) = v33;
            sub_C4E558(v10 + 12, v8[36], v8[37], (v8[37] - v8[36]) >> 1);
            v36 = *(v8 + 39);
            v37 = *(v8 + 41);
            *(v10 + 76) = *(v8 + 172);
            *(v10 + 17) = v37;
            *(v10 + 15) = v36;
            *(v10 + 39) = *(v8 + 87);
            v38 = *(v8 + 22);
            v10[22] = v8[46];
            *(v10 + 10) = v38;
            sub_3865E0(v10 + 23, v8[47], v8[48], (v8[48] - v8[47]) >> 4);
          }

          v6 = v9 - 1;
          v39 = v8[1];
          if (v39 != *v8)
          {
            if (((v39 - *v8) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v41 = v8[10];
          v40 = v8[11];
          if (v40 != v41)
          {
            if (((v40 - v41) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v42 = v8[21];
          v43 = v8[22];
          if (v43 != v42)
          {
            if (((v43 - v42) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v8 -= 26;
          v10 = v13;
        }

        while (v68 < *(v9 - 1));
        *v9 = v68;
        v44 = v69;
        *(v8 + 102) = v70;
        v8[50] = v44;
        if (v8 + 50 == &v69)
        {
          break;
        }

        sub_61532C(v8 + 52, v71, v72, (v72 - v71) >> 3);
        v3 = a3;
        v4 = v59;
        v45 = v73;
        v46 = v74;
        v47 = v75;
        v8[61] = v76;
        *(v8 + 57) = v46;
        *(v8 + 59) = v47;
        *(v8 + 55) = v45;
        sub_C4E558(v8 + 62, v77, v78, (v78 - v77) >> 1);
        v48 = v79;
        v49 = v80;
        *(v8 + 276) = v81;
        *(v8 + 65) = v48;
        *(v8 + 67) = v49;
        *(v8 + 139) = v82;
        v50 = v83;
        v8[72] = v84;
        *(v8 + 35) = v50;
        sub_3865E0(v8 + 73, v85, v86, (v86 - v85) >> 4);
        v51 = v85;
        if (v85)
        {
          goto LABEL_56;
        }

LABEL_57:
        if (v77)
        {
          v78 = v77;
          operator delete(v77);
        }

        if (v71)
        {
          v72 = v71;
          operator delete(v71);
        }

LABEL_5:
        if (++v4 == v3)
        {
          return;
        }
      }

      v52 = v73;
      v53 = v74;
      v54 = v75;
      v8[61] = v76;
      *(v8 + 57) = v53;
      *(v8 + 59) = v54;
      *(v8 + 55) = v52;
      v55 = v79;
      v56 = v80;
      *(v8 + 276) = v81;
      *(v8 + 65) = v55;
      *(v8 + 67) = v56;
      *(v8 + 139) = v82;
      v57 = v83;
      v8[72] = v84;
      *(v8 + 35) = v57;
      v3 = a3;
      v4 = v59;
      v51 = v85;
      if (!v85)
      {
        goto LABEL_57;
      }

LABEL_56:
      v86 = v51;
      operator delete(v51);
      goto LABEL_57;
    }
  }
}

void sub_1115114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (v42)
  {
    operator delete(v42);
    if (!v41)
    {
LABEL_3:
      sub_110F048(&a41);
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_3;
  }

  operator delete(v41);
  sub_110F048(&a41);
  _Unwind_Resume(a1);
}

unsigned int *sub_11151C0(unsigned int *a1, uint64_t *a2, int *a3, uint64_t *a4)
{
  v77 = *a1;
  sub_110A370(&v78, a2);
  v68 = *(a3 - 1);
  sub_110A370(v70, a4 - 26);
  v8 = v77;
  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v8 >= v68)
  {
    v14 = a1 + 1;
    v15 = a2 + 26;
    do
    {
      v9 = v14;
      v10 = v15;
      if (v14 >= a3)
      {
        break;
      }

      v69 = *v14;
      sub_110A370(v70, v15);
      v16 = v77;
      if (__p)
      {
        v76 = __p;
        operator delete(__p);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }

      if (v71)
      {
        v72 = v71;
        operator delete(v71);
      }

      v14 = v9 + 1;
      v15 = v10 + 26;
    }

    while (v16 >= v69);
  }

  else
  {
    v9 = a1;
    v10 = a2;
    do
    {
      v11 = v9[1];
      ++v9;
      v10 += 26;
      sub_110A370(v70, v10);
      v12 = v11;
      v13 = v77;
      if (__p)
      {
        v76 = __p;
        operator delete(__p);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }

      if (v71)
      {
        v72 = v71;
        operator delete(v71);
      }
    }

    while (v13 >= v12);
  }

  if (v9 < a3)
  {
    do
    {
      v17 = *--a3;
      a4 -= 26;
      sub_110A370(v70, a4);
      v18 = v17;
      v19 = v77;
      if (__p)
      {
        v76 = __p;
        operator delete(__p);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }

      if (v71)
      {
        v72 = v71;
        operator delete(v71);
      }
    }

    while (v19 < v18);
  }

  v67 = a2;
  while (v9 < a3)
  {
    v20 = *v9;
    *v9 = *a3;
    *a3 = v20;
    sub_1111EF4(v10, a4);
    do
    {
      v22 = v9[1];
      ++v9;
      v21 = v22;
      v24 = v10[28];
      v23 = v10[29];
      if (v23 != v24)
      {
        if (((v23 - v24) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v26 = v10[38];
      v25 = v10[39];
      if (v25 != v26)
      {
        if (((v25 - v26) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v27 = v10[49];
      v28 = v10[50];
      if (v28 != v27)
      {
        if (((v28 - v27) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v10 += 26;
    }

    while (v77 >= v21);
    do
    {
      v30 = *--a3;
      v29 = v30;
      v32 = *(a4 - 24);
      v31 = *(a4 - 23);
      if (v31 != v32)
      {
        if (((v31 - v32) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v34 = *(a4 - 14);
      v33 = *(a4 - 13);
      if (v33 != v34)
      {
        if (((v33 - v34) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v35 = *(a4 - 3);
      v36 = *(a4 - 2);
      if (v36 != v35)
      {
        if (((v36 - v35) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      a4 -= 26;
    }

    while (v77 < v29);
  }

  v37 = v9 - 1;
  v38 = v10 - 26;
  if (a1 != v9 - 1)
  {
    *a1 = *v37;
    v39 = *v38;
    *(v67 + 2) = *(v10 - 50);
    *v67 = v39;
    if (v67 == v38)
    {
      v40 = *(v10 - 21);
      v41 = *(v10 - 19);
      v42 = *(v10 - 17);
      v67[11] = *(v10 - 15);
      *(v67 + 9) = v42;
      *(v67 + 7) = v41;
      *(v67 + 5) = v40;
      v43 = *(v10 - 11);
      v44 = *(v10 - 9);
      *(v67 + 76) = *(v10 - 28);
      *(v67 + 17) = v44;
      *(v67 + 15) = v43;
      *(v67 + 39) = *(v10 - 13);
      v45 = *(v10 - 3);
      v67[22] = *(v10 - 4);
      *(v67 + 10) = v45;
    }

    else
    {
      sub_61532C(v67 + 2, *(v10 - 24), *(v10 - 23), (*(v10 - 23) - *(v10 - 24)) >> 3);
      v46 = *(v10 - 21);
      v47 = *(v10 - 19);
      v48 = *(v10 - 17);
      v67[11] = *(v10 - 15);
      *(v67 + 9) = v48;
      *(v67 + 7) = v47;
      *(v67 + 5) = v46;
      sub_C4E558(v67 + 12, *(v10 - 14), *(v10 - 13), (*(v10 - 13) - *(v10 - 14)) >> 1);
      v49 = *(v10 - 11);
      v50 = *(v10 - 9);
      *(v67 + 76) = *(v10 - 28);
      *(v67 + 17) = v50;
      *(v67 + 15) = v49;
      *(v67 + 39) = *(v10 - 13);
      v51 = *(v10 - 3);
      v67[22] = *(v10 - 4);
      *(v67 + 10) = v51;
      sub_3865E0(v67 + 23, *(v10 - 3), *(v10 - 2), (*(v10 - 2) - *(v10 - 3)) >> 4);
    }
  }

  *v37 = v77;
  v52 = v78;
  *(v10 - 50) = v79;
  *v38 = v52;
  if (&v78 != v38)
  {
    sub_61532C(v10 - 24, v80, v81, (v81 - v80) >> 3);
    v53 = v82;
    v54 = v83;
    v55 = v84;
    *(v10 - 15) = v85;
    *(v10 - 17) = v55;
    *(v10 - 19) = v54;
    *(v10 - 21) = v53;
    sub_C4E558(v10 - 14, v86, v87, (v87 - v86) >> 1);
    v56 = v88;
    v57 = v89;
    *(v10 - 28) = v90;
    *(v10 - 9) = v57;
    *(v10 - 11) = v56;
    *(v10 - 13) = v91;
    v58 = v92;
    *(v10 - 4) = v93;
    *(v10 - 3) = v58;
    sub_3865E0(v10 - 3, v94, v95, (v95 - v94) >> 4);
    v59 = v94;
    if (!v94)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  v61 = v82;
  v62 = v83;
  v63 = v84;
  *(v10 - 15) = v85;
  *(v10 - 17) = v63;
  *(v10 - 19) = v62;
  *(v10 - 21) = v61;
  v64 = v88;
  v65 = v89;
  *(v10 - 28) = v90;
  *(v10 - 9) = v65;
  *(v10 - 11) = v64;
  *(v10 - 13) = v91;
  v66 = v92;
  *(v10 - 4) = v93;
  *(v10 - 3) = v66;
  v59 = v94;
  if (v94)
  {
LABEL_66:
    v95 = v59;
    operator delete(v59);
  }

LABEL_67:
  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  return v9;
}

void sub_11158FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (v40)
  {
    operator delete(v40);
  }

  if (v39)
  {
    operator delete(v39);
  }

  sub_110F048(&a39);
  _Unwind_Resume(a1);
}

void sub_1115998(unsigned int *a1@<X0>, uint64_t *a2@<X1>, int *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  v79 = *a1;
  sub_110A370(&v80, a2);
  v10 = 0;
  v11 = a2;
  v70 = v8;
  do
  {
    v11 += 26;
    v71 = v8[v10 + 1];
    sub_110A370(v72, v11);
    v13 = v79;
    if (__p)
    {
      v78 = __p;
      operator delete(__p);
    }

    if (v75)
    {
      v76 = v75;
      operator delete(v75);
    }

    if (v73)
    {
      v74 = v73;
      operator delete(v73);
    }

    ++v10;
    v12 = v71 >= v13;
    v8 = v70;
  }

  while (!v12);
  v69 = a2;
  v14 = &v70[v10];
  if (v10 == 1)
  {
    do
    {
      if (v14 >= a3)
      {
        break;
      }

      v18 = *--a3;
      a4 -= 26;
      sub_110A370(v72, a4);
      v19 = v79;
      v20 = v18;
      if (__p)
      {
        v78 = __p;
        operator delete(__p);
      }

      if (v75)
      {
        v76 = v75;
        operator delete(v75);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }
    }

    while (v20 >= v19);
  }

  else
  {
    do
    {
      v15 = *--a3;
      a4 -= 26;
      sub_110A370(v72, a4);
      v16 = v79;
      v17 = v15;
      if (__p)
      {
        v78 = __p;
        operator delete(__p);
      }

      if (v75)
      {
        v76 = v75;
        operator delete(v75);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }
    }

    while (v17 >= v16);
  }

  v68 = a5;
  v67 = v14 >= a3;
  if (v14 < a3)
  {
    do
    {
      v30 = *v14;
      *v14 = *a3;
      v21 = (v14 - 1);
      *a3 = v30;
      sub_1111EF4(v11, a4);
      do
      {
        v32 = v14[1];
        ++v14;
        v31 = v32;
        v34 = v11[28];
        v33 = v11[29];
        if (v33 != v34)
        {
          if (((v33 - v34) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v36 = v11[38];
        v35 = v11[39];
        if (v35 != v36)
        {
          if (((v35 - v36) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v37 = v11[49];
        v38 = v11[50];
        if (v38 != v37)
        {
          if (((v38 - v37) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v11 += 26;
        ++v21;
      }

      while (v31 < v79);
      do
      {
        v40 = *--a3;
        v39 = v40;
        v42 = *(a4 - 24);
        v41 = *(a4 - 23);
        if (v41 != v42)
        {
          if (((v41 - v42) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v44 = *(a4 - 14);
        v43 = *(a4 - 13);
        if (v43 != v44)
        {
          if (((v43 - v44) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v45 = *(a4 - 3);
        v46 = *(a4 - 2);
        if (v46 != v45)
        {
          if (((v46 - v45) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        a4 -= 26;
      }

      while (v39 >= v79);
    }

    while (v14 < a3);
  }

  else
  {
    v21 = (v14 - 1);
  }

  v22 = v11 - 26;
  if (v70 != v21)
  {
    *v70 = *v21;
    v23 = *v22;
    *(v69 + 2) = *(v11 - 50);
    *v69 = v23;
    if (v69 == v22)
    {
      v24 = *(v11 - 21);
      v25 = *(v11 - 19);
      v26 = *(v11 - 17);
      v69[11] = *(v11 - 15);
      *(v69 + 9) = v26;
      *(v69 + 7) = v25;
      *(v69 + 5) = v24;
      v27 = *(v11 - 11);
      v28 = *(v11 - 9);
      *(v69 + 76) = *(v11 - 28);
      *(v69 + 17) = v28;
      *(v69 + 15) = v27;
      *(v69 + 39) = *(v11 - 13);
      v29 = *(v11 - 3);
      v69[22] = *(v11 - 4);
      *(v69 + 10) = v29;
    }

    else
    {
      sub_61532C(v69 + 2, *(v11 - 24), *(v11 - 23), (*(v11 - 23) - *(v11 - 24)) >> 3);
      v47 = *(v11 - 21);
      v48 = *(v11 - 19);
      v49 = *(v11 - 17);
      v69[11] = *(v11 - 15);
      *(v69 + 9) = v49;
      *(v69 + 7) = v48;
      *(v69 + 5) = v47;
      sub_C4E558(v69 + 12, *(v11 - 14), *(v11 - 13), (*(v11 - 13) - *(v11 - 14)) >> 1);
      v50 = *(v11 - 11);
      v51 = *(v11 - 9);
      *(v69 + 76) = *(v11 - 28);
      *(v69 + 17) = v51;
      *(v69 + 15) = v50;
      *(v69 + 39) = *(v11 - 13);
      v52 = *(v11 - 3);
      v69[22] = *(v11 - 4);
      *(v69 + 10) = v52;
      sub_3865E0(v69 + 23, *(v11 - 3), *(v11 - 2), (*(v11 - 2) - *(v11 - 3)) >> 4);
    }
  }

  *v21 = v79;
  v53 = v80;
  *(v11 - 50) = v81;
  *v22 = v53;
  if (&v80 != v22)
  {
    sub_61532C(v11 - 24, v82, v83, (v83 - v82) >> 3);
    v54 = v84;
    v55 = v85;
    v56 = v86;
    *(v11 - 15) = v87;
    *(v11 - 17) = v56;
    *(v11 - 19) = v55;
    *(v11 - 21) = v54;
    sub_C4E558(v11 - 14, v88, v89, (v89 - v88) >> 1);
    v57 = v90;
    v58 = v91;
    *(v11 - 28) = v92;
    *(v11 - 9) = v58;
    *(v11 - 11) = v57;
    *(v11 - 13) = v93;
    v59 = v94;
    *(v11 - 4) = v95;
    *(v11 - 3) = v59;
    sub_3865E0(v11 - 3, v96, v97, (v97 - v96) >> 4);
    *v68 = v21;
    *(v68 + 8) = v22;
    *(v68 + 16) = v67;
    v60 = v96;
    if (!v96)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v61 = v84;
  v62 = v85;
  v63 = v86;
  *(v11 - 15) = v87;
  *(v11 - 17) = v63;
  *(v11 - 19) = v62;
  *(v11 - 21) = v61;
  v64 = v90;
  v65 = v91;
  *(v11 - 28) = v92;
  *(v11 - 9) = v65;
  *(v11 - 11) = v64;
  *(v11 - 13) = v93;
  v66 = v94;
  *(v11 - 4) = v95;
  *(v11 - 3) = v66;
  *v68 = v21;
  *(v68 + 8) = v22;
  *(v68 + 16) = v67;
  v60 = v96;
  if (v96)
  {
LABEL_59:
    v97 = v60;
    operator delete(v60);
  }

LABEL_60:
  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }
}

void sub_111609C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (v42)
  {
    operator delete(v42);
  }

  if (v41)
  {
    operator delete(v41);
  }

  sub_110F048(&a41);
  _Unwind_Resume(a1);
}

BOOL sub_1116138(unsigned int *a1, uint64_t *a2, unsigned int *a3, uint64_t a4)
{
  v4 = a3;
  v6 = a3 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_1113958(a1, a2, a1 + 1, a2 + 26, a3 - 1, (a4 - 208));
        return 1;
      case 4:
        sub_1113DC8(a1, a2, a1 + 1, a2 + 26, a1 + 2, a2 + 52, a3 - 1, (a4 - 208));
        return 1;
      case 5:
        sub_11140A4(a1, a2, a1 + 1, a2 + 26, a1 + 2, a2 + 52, a1 + 3, a2 + 78, a3 - 1, (a4 - 208));
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v8 = (a4 - 208);
      v65 = *(a3 - 1);
      sub_110A370(&v66, (a4 - 208));
      v55 = *a1;
      v10 = a2;
      sub_110A370(v58, a2);
      v11 = v65;
      if (__p)
      {
        v64 = __p;
        operator delete(__p);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      if (v82)
      {
        v83 = v82;
        operator delete(v82);
      }

      if (v74)
      {
        v75 = v74;
        operator delete(v74);
      }

      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }

      if (v11 < v55)
      {
        v12 = *a1;
        *a1 = *(v4 - 1);
        *(v4 - 1) = v12;
        sub_1111EF4(v10, v8);
        return 1;
      }

      return 1;
    }
  }

  v13 = a1 + 2;
  v14 = a2 + 52;
  sub_1113958(a1, a2, a1 + 1, a2 + 26, a1 + 2, a2 + 52);
  v16 = a1 + 3;
  if (a1 + 3 == v4)
  {
    return 1;
  }

  v54 = 0;
  v17 = a2 + 78;
  v53 = v4;
  while (1)
  {
    v65 = *v16;
    sub_110A370(&v66, v17);
    v56 = *v13;
    sub_110A370(v58, v14);
    v18 = v65;
    if (__p)
    {
      v64 = __p;
      operator delete(__p);
    }

    if (v61)
    {
      v62 = v61;
      operator delete(v61);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    if (v82)
    {
      v83 = v82;
      operator delete(v82);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    if (v18 >= v56)
    {
      goto LABEL_26;
    }

    v65 = *v16;
    sub_110A370(&v66, v17);
    v19 = v16;
    v20 = v17;
    do
    {
      v21 = v19;
      v22 = v14;
      v19 = v13;
      *v21 = *v13;
      v23 = *v14;
      *(v20 + 2) = *(v14 + 2);
      *v20 = v23;
      if (v14 == v20)
      {
        v30 = *(v14 + 5);
        v31 = *(v14 + 7);
        v32 = *(v14 + 9);
        v20[11] = v14[11];
        *(v20 + 9) = v32;
        *(v20 + 7) = v31;
        *(v20 + 5) = v30;
        v33 = *(v14 + 15);
        v34 = *(v14 + 17);
        *(v20 + 76) = *(v14 + 76);
        *(v20 + 17) = v34;
        *(v20 + 15) = v33;
        *(v20 + 39) = *(v14 + 39);
        v35 = *(v14 + 10);
        v20[22] = v14[22];
        *(v20 + 10) = v35;
        if (v13 == a1)
        {
          break;
        }
      }

      else
      {
        sub_61532C(v20 + 2, v14[2], v14[3], (v14[3] - v14[2]) >> 3);
        v24 = *(v14 + 5);
        v25 = *(v14 + 7);
        v26 = *(v14 + 9);
        v20[11] = v14[11];
        *(v20 + 9) = v26;
        *(v20 + 7) = v25;
        *(v20 + 5) = v24;
        sub_C4E558(v20 + 12, v14[12], v14[13], (v14[13] - v14[12]) >> 1);
        v27 = *(v14 + 15);
        v28 = *(v14 + 17);
        *(v20 + 76) = *(v14 + 76);
        *(v20 + 17) = v28;
        *(v20 + 15) = v27;
        *(v20 + 39) = *(v14 + 39);
        v29 = *(v14 + 10);
        v20[22] = v14[22];
        *(v20 + 10) = v29;
        sub_3865E0(v20 + 23, v14[23], v14[24], (v14[24] - v14[23]) >> 4);
        if (v13 == a1)
        {
          break;
        }
      }

      --v13;
      v14 -= 26;
      v57 = *(v19 - 1);
      sub_110A370(v58, v22 - 26);
      v36 = v65;
      if (__p)
      {
        v64 = __p;
        operator delete(__p);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      v20 = v22;
    }

    while (v36 < v57);
    *v19 = v65;
    v37 = v66;
    *(v22 + 2) = v67;
    *v22 = v37;
    if (v22 == &v66)
    {
      v47 = v70;
      v48 = v71;
      v49 = v72;
      v22[11] = v73;
      *(v22 + 9) = v49;
      *(v22 + 7) = v48;
      *(v22 + 5) = v47;
      v50 = v76;
      v51 = v77;
      *(v22 + 76) = v78;
      *(v22 + 17) = v51;
      *(v22 + 15) = v50;
      *(v22 + 39) = v79;
      v52 = v80;
      v22[22] = v81;
      *(v22 + 10) = v52;
      v4 = v53;
      v44 = v54 + 1;
      if (v54 == 7)
      {
        v45 = 208;
      }

      else
      {
        v45 = 0;
      }

      v46 = v82;
      if (v82)
      {
LABEL_57:
        v83 = v46;
        operator delete(v46);
      }
    }

    else
    {
      sub_61532C(v22 + 2, v68, v69, (v69 - v68) >> 3);
      v4 = v53;
      v38 = v70;
      v39 = v71;
      v40 = v72;
      v22[11] = v73;
      *(v22 + 9) = v40;
      *(v22 + 7) = v39;
      *(v22 + 5) = v38;
      sub_C4E558(v22 + 12, v74, v75, (v75 - v74) >> 1);
      v41 = v76;
      v42 = v77;
      *(v22 + 76) = v78;
      *(v22 + 17) = v42;
      *(v22 + 15) = v41;
      *(v22 + 39) = v79;
      v43 = v80;
      v22[22] = v81;
      *(v22 + 10) = v43;
      sub_3865E0(v22 + 23, v82, v83, (v83 - v82) >> 4);
      v44 = v54 + 1;
      if (v54 == 7)
      {
        v45 = 208;
      }

      else
      {
        v45 = 0;
      }

      v46 = v82;
      if (v82)
      {
        goto LABEL_57;
      }
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    if (v44 == 8)
    {
      return v16 + 1 == v4;
    }

    v54 = v44;
    v17 = (v17 + v45);
LABEL_26:
    v13 = v16;
    v14 = v17;
    v17 += 26;
    if (++v16 == v4)
    {
      return 1;
    }
  }
}

char *sub_11167B0(char *a1, uint64_t *a2, char *a3, uint64_t *a4, char *a5, uint64_t a6, uint64_t a7)
{
  v7 = a3 - a1;
  if (a3 != a1)
  {
    v10 = a3;
    v13 = v7 >> 2;
    v14 = __OFSUB__(v7 >> 2, 2);
    v15 = (v7 >> 2) - 2;
    if (v15 < 0 == v14)
    {
      v16 = v15 >> 1;
      v17 = &a1[4 * v16];
      v18 = v16 + 1;
      v19 = &a2[26 * v16];
      do
      {
        sub_11169D0(a1, a2, a7, v13, v17--, v19);
        v19 -= 26;
        --v18;
      }

      while (v18);
    }

    if (v10 == a5)
    {
      a5 = v10;
    }

    else
    {
      v22 = a4;
      v23 = v10;
      do
      {
        v35 = *v23;
        sub_110A370(&v36, v22);
        v27 = *a1;
        sub_110A370(&v28, a2);
        v24 = v35;
        if (__p)
        {
          v34 = __p;
          operator delete(__p);
        }

        if (v31)
        {
          v32 = v31;
          operator delete(v31);
        }

        if (v29)
        {
          v30 = v29;
          operator delete(v29);
        }

        if (v41)
        {
          v42 = v41;
          operator delete(v41);
        }

        if (v39)
        {
          v40 = v39;
          operator delete(v39);
        }

        if (v37)
        {
          v38 = v37;
          operator delete(v37);
        }

        if (v24 < v27)
        {
          v25 = *v23;
          *v23 = *a1;
          *a1 = v25;
          sub_1111EF4(v22, a2);
          sub_11169D0(a1, a2, a7, v13, a1, a2);
        }

        v23 += 4;
        v22 += 26;
      }

      while (v23 != a5);
    }

    if (v13 >= 2)
    {
      do
      {
        sub_1117004(a1, a2, v10, a4, a7, v13);
        v10 -= 4;
        a4 -= 26;
      }

      while (v13-- > 2);
    }
  }

  return a5;
}

void sub_11169D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = a5;
    v52 = v6 >> 1;
    if ((v6 >> 1) >= (a5 - a1) >> 2)
    {
      v11 = (a5 - a1) >> 1;
      v12 = v11 | 1;
      v13 = (a1 + 4 * (v11 | 1));
      v14 = a2 + 208 * (v11 | 1);
      v15 = v11 + 2;
      if (v11 + 2 < a4)
      {
        v70 = *v13;
        sub_110A370(&v71, v14);
        v62 = v13[1];
        sub_110A370(v63, (v14 + 208));
        v16 = v70;
        if (__p)
        {
          v69 = __p;
          operator delete(__p);
        }

        if (v66)
        {
          v67 = v66;
          operator delete(v66);
        }

        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }

        if (v87)
        {
          v88 = v87;
          operator delete(v87);
        }

        if (v79)
        {
          v80 = v79;
          operator delete(v79);
        }

        if (v73)
        {
          v74 = v73;
          operator delete(v73);
        }

        if (v16 < v62)
        {
          ++v13;
          v14 += 208;
          v12 = v15;
        }
      }

      v70 = *v13;
      sub_110A370(&v71, v14);
      v62 = *v7;
      sub_110A370(v63, a6);
      v17 = v70;
      if (__p)
      {
        v69 = __p;
        operator delete(__p);
      }

      if (v66)
      {
        v67 = v66;
        operator delete(v66);
      }

      if (v64)
      {
        v65 = v64;
        operator delete(v64);
      }

      if (v87)
      {
        v88 = v87;
        operator delete(v87);
      }

      if (v79)
      {
        v80 = v79;
        operator delete(v79);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }

      if (v17 >= v62)
      {
        v70 = *v7;
        sub_110A370(&v71, a6);
        do
        {
          v18 = v7;
          v19 = v14;
          v7 = v13;
          *v18 = *v13;
          v20 = *v14;
          *(a6 + 8) = *(v14 + 8);
          *a6 = v20;
          if (a6 == v14)
          {
            v27 = *(v14 + 40);
            v28 = *(v14 + 56);
            v29 = *(v14 + 72);
            *(a6 + 88) = *(v14 + 88);
            *(a6 + 72) = v29;
            *(a6 + 56) = v28;
            *(a6 + 40) = v27;
            v30 = *(v14 + 120);
            v31 = *(v14 + 136);
            *(a6 + 152) = *(v14 + 152);
            *(a6 + 136) = v31;
            *(a6 + 120) = v30;
            *(a6 + 156) = *(v14 + 156);
            v32 = *(v14 + 160);
            *(a6 + 176) = *(v14 + 176);
            *(a6 + 160) = v32;
            if (v52 < v12)
            {
              break;
            }
          }

          else
          {
            sub_61532C((a6 + 16), *(v14 + 16), *(v14 + 24), (*(v14 + 24) - *(v14 + 16)) >> 3);
            v21 = *(v14 + 40);
            v22 = *(v14 + 56);
            v23 = *(v14 + 72);
            *(a6 + 88) = *(v14 + 88);
            *(a6 + 72) = v23;
            *(a6 + 56) = v22;
            *(a6 + 40) = v21;
            sub_C4E558((a6 + 96), *(v14 + 96), *(v14 + 104), (*(v14 + 104) - *(v14 + 96)) >> 1);
            v24 = *(v14 + 120);
            v25 = *(v14 + 136);
            *(a6 + 152) = *(v14 + 152);
            *(a6 + 136) = v25;
            *(a6 + 120) = v24;
            *(a6 + 156) = *(v14 + 156);
            v26 = *(v14 + 160);
            *(a6 + 176) = *(v14 + 176);
            *(a6 + 160) = v26;
            sub_3865E0((a6 + 184), *(v14 + 184), *(v14 + 192), (*(v14 + 192) - *(v14 + 184)) >> 4);
            if (v52 < v12)
            {
              break;
            }
          }

          v33 = 2 * v12;
          v12 = (2 * v12) | 1;
          v13 = (a1 + 4 * v12);
          v14 = a2 + 208 * v12;
          v34 = v33 + 2;
          if (v33 + 2 < a4)
          {
            v62 = *v13;
            sub_110A370(v63, (a2 + 208 * v12));
            v54 = v13[1];
            sub_110A370(&v55, (v14 + 208));
            v35 = v62;
            if (v60)
            {
              v61 = v60;
              operator delete(v60);
            }

            if (v58)
            {
              v59 = v58;
              operator delete(v58);
            }

            if (v56)
            {
              v57 = v56;
              operator delete(v56);
            }

            if (__p)
            {
              v69 = __p;
              operator delete(__p);
            }

            if (v66)
            {
              v67 = v66;
              operator delete(v66);
            }

            if (v64)
            {
              v65 = v64;
              operator delete(v64);
            }

            if (v35 < v54)
            {
              ++v13;
              v14 += 208;
              v12 = v34;
            }
          }

          v62 = *v13;
          sub_110A370(v63, v14);
          v36 = v70;
          v37 = v62;
          if (__p)
          {
            v69 = __p;
            operator delete(__p);
          }

          if (v66)
          {
            v67 = v66;
            operator delete(v66);
          }

          if (v64)
          {
            v65 = v64;
            operator delete(v64);
          }

          a6 = v19;
        }

        while (v37 >= v36);
        *v7 = v70;
        v38 = v71;
        *(v19 + 8) = v72;
        *v19 = v38;
        if (v19 == &v71)
        {
          v46 = v75;
          v47 = v76;
          v48 = v77;
          *(v19 + 88) = v78;
          *(v19 + 72) = v48;
          *(v19 + 56) = v47;
          *(v19 + 40) = v46;
          v49 = v81;
          v50 = v82;
          *(v19 + 152) = v83;
          *(v19 + 136) = v50;
          *(v19 + 120) = v49;
          *(v19 + 156) = v84;
          v51 = v85;
          *(v19 + 176) = v86;
          *(v19 + 160) = v51;
          v45 = v87;
          if (!v87)
          {
            goto LABEL_61;
          }
        }

        else
        {
          sub_61532C((v19 + 16), v73, v74, (v74 - v73) >> 3);
          v39 = v75;
          v40 = v76;
          v41 = v77;
          *(v19 + 88) = v78;
          *(v19 + 72) = v41;
          *(v19 + 56) = v40;
          *(v19 + 40) = v39;
          sub_C4E558((v19 + 96), v79, v80, (v80 - v79) >> 1);
          v42 = v81;
          v43 = v82;
          *(v19 + 152) = v83;
          *(v19 + 136) = v43;
          *(v19 + 120) = v42;
          *(v19 + 156) = v84;
          v44 = v85;
          *(v19 + 176) = v86;
          *(v19 + 160) = v44;
          sub_3865E0((v19 + 184), v87, v88, (v88 - v87) >> 4);
          v45 = v87;
          if (!v87)
          {
LABEL_61:
            if (v79)
            {
              v80 = v79;
              operator delete(v79);
            }

            if (v73)
            {
              v74 = v73;
              operator delete(v73);
            }

            return;
          }
        }

        v88 = v45;
        operator delete(v45);
        goto LABEL_61;
      }
    }
  }
}

void sub_1116FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_110F048(&a40);
  sub_110F048(&a65);
  _Unwind_Resume(a1);
}

void sub_1117004(unsigned int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 < 2)
  {
    return;
  }

  v58 = *a1;
  sub_110A370(&v59, a2);
  v12 = sub_1117438(a1, a2, a5, a6);
  v14 = v12;
  v15 = v13;
  v16 = (a3 - 4);
  if (v16 == v12)
  {
    *v12 = v58;
    v25 = v59;
    *(v13 + 8) = v60;
    *v13 = v25;
    if (&v59 == v13)
    {
      v52 = v63;
      v53 = v64;
      v54 = v65;
      *(v13 + 88) = v66;
      *(v13 + 72) = v54;
      *(v13 + 56) = v53;
      *(v13 + 40) = v52;
      v55 = v69;
      v56 = v70;
      *(v13 + 152) = v71;
      *(v13 + 136) = v56;
      *(v13 + 120) = v55;
      *(v13 + 156) = v72;
      v57 = v73;
      *(v13 + 176) = v74;
      *(v13 + 160) = v57;
      v51 = __p;
      if (!__p)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    sub_61532C((v13 + 16), v61, v62, (v62 - v61) >> 3);
    v26 = v63;
    v27 = v64;
    v28 = v65;
    *(v15 + 88) = v66;
    *(v15 + 72) = v28;
    *(v15 + 56) = v27;
    *(v15 + 40) = v26;
    sub_C4E558((v15 + 96), v67, v68, (v68 - v67) >> 1);
    v29 = v69;
    v30 = v70;
    *(v15 + 152) = v71;
    *(v15 + 136) = v30;
    *(v15 + 120) = v29;
    *(v15 + 156) = v72;
    v31 = v73;
    *(v15 + 176) = v74;
    *(v15 + 160) = v31;
    sub_3865E0((v15 + 184), __p, v76, (v76 - __p) >> 4);
  }

  else
  {
    v17 = (a4 - 208);
    *v12 = *v16;
    v18 = *(a4 - 208);
    *(v13 + 8) = *(a4 - 200);
    *v13 = v18;
    if (a4 - 208 == v13)
    {
      v32 = *(a4 - 168);
      v33 = *(a4 - 152);
      v34 = *(a4 - 136);
      *(v13 + 88) = *(a4 - 120);
      *(v13 + 72) = v34;
      *(v13 + 56) = v33;
      *(v13 + 40) = v32;
      v35 = *(a4 - 88);
      v36 = *(a4 - 72);
      *(v13 + 152) = *(a4 - 56);
      *(v13 + 136) = v36;
      *(v13 + 120) = v35;
      *(v13 + 156) = *(a4 - 52);
      v37 = *(a4 - 48);
      *(v13 + 176) = *(a4 - 32);
      *(v13 + 160) = v37;
    }

    else
    {
      sub_61532C((v13 + 16), *(a4 - 192), *(a4 - 184), (*(a4 - 184) - *(a4 - 192)) >> 3);
      v19 = *(a4 - 168);
      v20 = *(a4 - 152);
      v21 = *(a4 - 136);
      *(v15 + 88) = *(a4 - 120);
      *(v15 + 72) = v21;
      *(v15 + 56) = v20;
      *(v15 + 40) = v19;
      sub_C4E558((v15 + 96), *(a4 - 112), *(a4 - 104), (*(a4 - 104) - *(a4 - 112)) >> 1);
      v22 = *(a4 - 88);
      v23 = *(a4 - 72);
      *(v15 + 152) = *(a4 - 56);
      *(v15 + 136) = v23;
      *(v15 + 120) = v22;
      *(v15 + 156) = *(a4 - 52);
      v24 = *(a4 - 48);
      *(v15 + 176) = *(a4 - 32);
      *(v15 + 160) = v24;
      sub_3865E0((v15 + 184), *(a4 - 24), *(a4 - 16), (*(a4 - 16) - *(a4 - 24)) >> 4);
    }

    *v16 = v58;
    v38 = v59;
    *(a4 - 200) = v60;
    *v17 = v38;
    if (v17 == &v59)
    {
      v45 = v63;
      v46 = v64;
      v47 = v65;
      *(a4 - 120) = v66;
      *(a4 - 136) = v47;
      *(a4 - 152) = v46;
      *(a4 - 168) = v45;
      v48 = v69;
      v49 = v70;
      *(a4 - 56) = v71;
      *(a4 - 72) = v49;
      *(a4 - 88) = v48;
      *(a4 - 52) = v72;
      v50 = v73;
      *(a4 - 32) = v74;
      *(a4 - 48) = v50;
    }

    else
    {
      sub_61532C((a4 - 192), v61, v62, (v62 - v61) >> 3);
      v39 = v63;
      v40 = v64;
      v41 = v65;
      *(a4 - 120) = v66;
      *(a4 - 136) = v41;
      *(a4 - 152) = v40;
      *(a4 - 168) = v39;
      sub_C4E558((a4 - 112), v67, v68, (v68 - v67) >> 1);
      v42 = v69;
      v43 = v70;
      *(a4 - 56) = v71;
      *(a4 - 72) = v43;
      *(a4 - 88) = v42;
      *(a4 - 52) = v72;
      v44 = v73;
      *(a4 - 32) = v74;
      *(a4 - 48) = v44;
      sub_3865E0((a4 - 24), __p, v76, (v76 - __p) >> 4);
    }

    sub_1117658(a1, a2, (v14 + 1), v15 + 208, a5, v14 + 1 - a1);
  }

  v51 = __p;
  if (__p)
  {
LABEL_13:
    v76 = v51;
    operator delete(v51);
  }

LABEL_14:
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }
}

unsigned int *sub_1117438(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = (a4 - 2) / 2;
  do
  {
    v9 = &a1[v7 + 1];
    v10 = a2 + 208 * (v7 + 1);
    v11 = 2 * v7;
    v7 = (2 * v7) | 1;
    v12 = v11 + 2;
    if (v11 + 2 < a4)
    {
      v30 = *v9;
      sub_110A370(&v31, v10);
      v22 = v9[1];
      sub_110A370(&v23, (v10 + 208));
      v13 = v30;
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }

      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      if (v13 < v22)
      {
        ++v9;
        v10 += 208;
        v7 = v12;
      }
    }

    *a1 = *v9;
    v14 = *v10;
    *(a2 + 8) = *(v10 + 8);
    *a2 = v14;
    if (a2 != v10)
    {
      sub_61532C((a2 + 16), *(v10 + 16), *(v10 + 24), (*(v10 + 24) - *(v10 + 16)) >> 3);
      v15 = *(v10 + 40);
      v16 = *(v10 + 56);
      v17 = *(v10 + 72);
      *(a2 + 88) = *(v10 + 88);
      *(a2 + 72) = v17;
      *(a2 + 56) = v16;
      *(a2 + 40) = v15;
      sub_C4E558((a2 + 96), *(v10 + 96), *(v10 + 104), (*(v10 + 104) - *(v10 + 96)) >> 1);
      v18 = *(v10 + 120);
      v19 = *(v10 + 136);
      *(a2 + 152) = *(v10 + 152);
      *(a2 + 136) = v19;
      *(a2 + 120) = v18;
      *(a2 + 156) = *(v10 + 156);
      v20 = *(v10 + 160);
      *(a2 + 176) = *(v10 + 176);
      *(a2 + 160) = v20;
      sub_3865E0((a2 + 184), *(v10 + 184), *(v10 + 192), (*(v10 + 192) - *(v10 + 184)) >> 4);
    }

    a1 = v9;
    a2 = v10;
  }

  while (v7 <= v8);
  return v9;
}

void sub_1117658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6 - 2;
  if (a6 >= 2)
  {
    v11 = v6 >> 1;
    v12 = (a1 + 4 * (v6 >> 1));
    v13 = a2 + 208 * (v6 >> 1);
    v57 = *v12;
    sub_110A370(&v58, v13);
    v15 = *(a3 - 4);
    v14 = (a3 - 4);
    v16 = a4 - 208;
    sub_110A370(v50, v16);
    v17 = v15;
    v18 = v57;
    if (__p)
    {
      v56 = __p;
      operator delete(__p);
    }

    if (v53)
    {
      v54 = v53;
      operator delete(v53);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v66)
    {
      v67 = v66;
      operator delete(v66);
    }

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    if (v18 < v17)
    {
      v57 = *v14;
      sub_110A370(&v58, v16);
      do
      {
        v19 = v14;
        v20 = v13;
        v14 = v12;
        *v19 = *v12;
        v21 = *v13;
        *(v16 + 8) = *(v13 + 8);
        *v16 = v21;
        if (v16 == v13)
        {
          v28 = *(v13 + 40);
          v29 = *(v13 + 56);
          v30 = *(v13 + 72);
          *(v16 + 88) = *(v13 + 88);
          *(v16 + 72) = v30;
          *(v16 + 56) = v29;
          *(v16 + 40) = v28;
          v31 = *(v13 + 120);
          v32 = *(v13 + 136);
          *(v16 + 152) = *(v13 + 152);
          *(v16 + 136) = v32;
          *(v16 + 120) = v31;
          *(v16 + 156) = *(v13 + 156);
          v33 = *(v13 + 160);
          *(v16 + 176) = *(v13 + 176);
          *(v16 + 160) = v33;
          if (!v11)
          {
            break;
          }
        }

        else
        {
          sub_61532C((v16 + 16), *(v13 + 16), *(v13 + 24), (*(v13 + 24) - *(v13 + 16)) >> 3);
          v22 = *(v13 + 40);
          v23 = *(v13 + 56);
          v24 = *(v13 + 72);
          *(v16 + 88) = *(v13 + 88);
          *(v16 + 72) = v24;
          *(v16 + 56) = v23;
          *(v16 + 40) = v22;
          sub_C4E558((v16 + 96), *(v13 + 96), *(v13 + 104), (*(v13 + 104) - *(v13 + 96)) >> 1);
          v25 = *(v13 + 120);
          v26 = *(v13 + 136);
          *(v16 + 152) = *(v13 + 152);
          *(v16 + 136) = v26;
          *(v16 + 120) = v25;
          *(v16 + 156) = *(v13 + 156);
          v27 = *(v13 + 160);
          *(v16 + 176) = *(v13 + 176);
          *(v16 + 160) = v27;
          sub_3865E0((v16 + 184), *(v13 + 184), *(v13 + 192), (*(v13 + 192) - *(v13 + 184)) >> 4);
          if (!v11)
          {
            break;
          }
        }

        v11 = (v11 - 1) >> 1;
        v12 = (a1 + 4 * v11);
        v13 = a2 + 208 * v11;
        v49 = *v12;
        sub_110A370(v50, v13);
        v34 = v57;
        if (__p)
        {
          v56 = __p;
          operator delete(__p);
        }

        if (v53)
        {
          v54 = v53;
          operator delete(v53);
        }

        if (v51)
        {
          v52 = v51;
          operator delete(v51);
        }

        v16 = v20;
      }

      while (v49 < v34);
      *v14 = v57;
      v35 = v58;
      *(v20 + 8) = v59;
      *v20 = v35;
      if (v20 == &v58)
      {
        v43 = v62;
        v44 = v63;
        v45 = v64;
        *(v20 + 88) = v65;
        *(v20 + 72) = v45;
        *(v20 + 56) = v44;
        *(v20 + 40) = v43;
        v46 = v68;
        v47 = v69;
        *(v20 + 152) = v70;
        *(v20 + 136) = v47;
        *(v20 + 120) = v46;
        *(v20 + 156) = v71;
        v48 = v72;
        *(v20 + 176) = v73;
        *(v20 + 160) = v48;
        v42 = v74;
        if (!v74)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_61532C((v20 + 16), v60, v61, (v61 - v60) >> 3);
        v36 = v62;
        v37 = v63;
        v38 = v64;
        *(v20 + 88) = v65;
        *(v20 + 72) = v38;
        *(v20 + 56) = v37;
        *(v20 + 40) = v36;
        sub_C4E558((v20 + 96), v66, v67, (v67 - v66) >> 1);
        v39 = v68;
        v40 = v69;
        *(v20 + 152) = v70;
        *(v20 + 136) = v40;
        *(v20 + 120) = v39;
        *(v20 + 156) = v71;
        v41 = v72;
        *(v20 + 176) = v73;
        *(v20 + 160) = v41;
        sub_3865E0((v20 + 184), v74, v75, (v75 - v74) >> 4);
        v42 = v74;
        if (!v74)
        {
LABEL_30:
          if (v66)
          {
            v67 = v66;
            operator delete(v66);
          }

          if (v60)
          {
            v61 = v60;
            operator delete(v60);
          }

          return;
        }
      }

      v75 = v42;
      operator delete(v42);
      goto LABEL_30;
    }
  }
}

uint64_t *sub_1117A94(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v14 = *v2;
    v15 = 0x8F5C28F5C28F5C29 * ((v3 - *v2) >> 3);
    v16 = v15 + 1;
    if (v15 + 1 > 0x147AE147AE147AELL)
    {
      sub_1794();
    }

    v17 = 0x8F5C28F5C28F5C29 * ((v4 - v14) >> 3);
    if (2 * v17 > v16)
    {
      v16 = 2 * v17;
    }

    if (v17 >= 0xA3D70A3D70A3D7)
    {
      v18 = 0x147AE147AE147AELL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (v18 <= 0x147AE147AE147AELL)
      {
        operator new();
      }

      sub_1808();
    }

    v19 = result;
    v20 = *(a2 + 176);
    v21 = 8 * ((v3 - *v2) >> 3);
    *(v21 + 160) = *(a2 + 160);
    *(v21 + 176) = v20;
    *(v21 + 192) = *(a2 + 192);
    v22 = *(a2 + 112);
    *(v21 + 96) = *(a2 + 96);
    *(v21 + 112) = v22;
    v23 = *(a2 + 144);
    *(v21 + 128) = *(a2 + 128);
    *(v21 + 144) = v23;
    v24 = *(a2 + 48);
    *(v21 + 32) = *(a2 + 32);
    *(v21 + 48) = v24;
    v25 = *(a2 + 80);
    *(v21 + 64) = *(a2 + 64);
    *(v21 + 80) = v25;
    v26 = *(a2 + 16);
    v27 = 200 * v15 + 200;
    v28 = 200 * v15 - (v3 - v14);
    *v21 = *a2;
    *(v21 + 16) = v26;
    memcpy((v21 - (v3 - v14)), v14, v3 - v14);
    *v2 = v28;
    *(v2 + 8) = v27;
    *(v2 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }

    result = v19;
    *(v2 + 8) = v27;
  }

  else
  {
    *v3 = *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    v7 = *(a2 + 64);
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 64) = v7;
    *(v3 + 16) = v5;
    *(v3 + 32) = v6;
    v8 = *(a2 + 80);
    v9 = *(a2 + 96);
    v10 = *(a2 + 128);
    *(v3 + 112) = *(a2 + 112);
    *(v3 + 128) = v10;
    *(v3 + 80) = v8;
    *(v3 + 96) = v9;
    v11 = *(a2 + 144);
    v12 = *(a2 + 160);
    v13 = *(a2 + 176);
    *(v3 + 192) = *(a2 + 192);
    *(v3 + 160) = v12;
    *(v3 + 176) = v13;
    *(v3 + 144) = v11;
    *(v2 + 8) = v3 + 200;
  }

  return result;
}

void *sub_1117C5C(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_F8A300(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_F8AC6C(v5 + 103, a2);
  if (v4 > (a1[98] - a1[96]) >> 3)
  {
    operator new();
  }

  return a1;
}

void sub_1117D48(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

void *sub_1117DA8(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_F8A300(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_40D5C8(v5 + 103, a2);
  if (v4 > (a1[98] - a1[96]) >> 5)
  {
    operator new();
  }

  return a1;
}

void sub_1117E94(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

void sub_1117EF4(uint64_t a1, int **a2, _DWORD *a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  v11 = 0;
  *(a1 + 864) = *(a1 + 856);
  *(a1 + 840) = *(a1 + 832);
  *(a1 + 880) = 0;
  *(a1 + 784) = *(a1 + 776);
  do
  {
    v13 = a1 + v11;
    if (*(a1 + v11 + 24))
    {
      v14 = *(v13 + 32);
      if (v14 >= 0x80)
      {
        v12 = (a1 + v11);
        operator delete(*(v13 + 8));
        *(v13 + 8) = &unk_2290750;
        v12[6] = 0;
        v12[3] = 0;
        v12[4] = 0;
        v12[2] = 0;
      }

      else if (v14)
      {
        *(v13 + 24) = 0;
        memset(*(v13 + 8), 128, v14 + 8);
        *(*(v13 + 8) + v14) = -1;
        v15 = *(v13 + 32);
        if (v15 == 7)
        {
          v16 = 6;
        }

        else
        {
          v16 = v15 - (v15 >> 3);
        }

        *(a1 + v11 + 48) = v16 - *(v13 + 24);
      }
    }

    v11 += 48;
  }

  while (v11 != 768);
  *(a1 + 808) = *(a1 + 800);
  *(a1 + 824) = 0;
  v17 = *a2;
  v18 = a2[1];
  if (*a2 != v18)
  {
    do
    {
      v19 = *v17++;
      v20 = *a6;
      v21 = *(a6 + 2);
      v22 = v19;
      sub_11182D8(a1 + 8, &v22, &v20);
    }

    while (v17 != v18);
  }

  sub_1118060(a1, a3);
}

void sub_1118060(uint64_t *a1, _DWORD *a2)
{
  if (*(a1 + 220))
  {
    do
    {
      v5 = a1[104];
      v6 = (a1[97] + 32 * *v5);
      v7 = *v6;
      v8 = *(v6 + 1);
      sub_DD38((a1 + 100), v5);
      v9 = a1[104];
      *(a1[107] + 4 * *v9) = -1;
      v10 = *(a1 + 220) - 1;
      *(a1 + 220) = v10;
      if (v10)
      {
        v11 = &v9[4 * v10];
        *v9 = *v11;
        *(v9 + 1) = *(v11 + 1);
        v12 = a1[104];
        *(a1[107] + 4 * *v12) = 0;
        v4 = *(a1 + 220);
        if (v4 >= 2)
        {
          v13 = 0;
          v14 = 0;
          v15 = 1;
          do
          {
            v16 = v13 + 5;
            if (v16 >= v4)
            {
              v17 = v4;
            }

            else
            {
              v17 = v16;
            }

            if (v16 <= v15)
            {
              break;
            }

            v18 = v14;
            v19 = *&v12[4 * v14 + 2];
            v20 = &v12[4 * v15 + 2];
            v14 = -1;
            v21 = v19;
            do
            {
              v23 = *v20;
              v20 += 4;
              v22 = v23;
              if (v23 < v21)
              {
                v21 = v22;
                v14 = v15;
              }

              ++v15;
            }

            while (v15 < v17);
            if (v14 >= v4)
            {
              break;
            }

            v24 = 4 * v14;
            v25 = &v12[v24];
            v26 = 16 * v18;
            v27 = v12 + v26;
            v28 = *v25;
            *v25 = *v27;
            *v27 = v28;
            v29 = *(v25 + 1);
            *(v25 + 1) = v19;
            *(v27 + 1) = v29;
            v12 = a1[104];
            v30 = v12[v24];
            v31 = a1[107];
            v32 = *(v12 + v26);
            LODWORD(v26) = *(v31 + 4 * v30);
            *(v31 + 4 * v30) = *(v31 + 4 * v32);
            *(v31 + 4 * v32) = v26;
            v13 = 4 * v14;
            v15 = (4 * v14) | 1;
            v4 = *(a1 + 220);
          }

          while (v15 < v4);
        }
      }

      else
      {
        v4 = 0;
      }

      a1[105] -= 16;
      if (*a2 == v7)
      {
        break;
      }

      v33 = *a1;
      v34 = *(*a1 + 96);
      if (v7 >= (*(*a1 + 104) - v34) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v38 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v35 = *(v34 + 4 * v7);
      if (v35 != -1)
      {
        do
        {
          v36 = (*(v33 + 120) + 176 * v35);
          if (sub_10DF72C(v36) != 0x7FFFFFFFFFFFFFFFLL)
          {
            v42 = sub_3F80(v36);
            v39 = sub_10DF72C(v36) + v8;
            v40 = v7;
            v41 = v36;
            sub_1118644((a1 + 1), &v42, &v39);
          }

          v35 = *(*(v33 + 144) + 4 * v35);
        }

        while (v35 != -1);
        v4 = *(a1 + 220);
      }
    }

    while (v4);
  }
}

void sub_11182D8(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = 0;
  ++*(a1 + 816);
  v7 = *a2;
  v8 = 265 * ((~v7 + (v7 << 21)) ^ ((~v7 + (v7 << 21)) >> 24));
  v9 = 2147483649u * ((21 * (v8 ^ (v8 >> 14))) ^ ((21 * (v8 ^ (v8 >> 14))) >> 28));
  v10 = (a1 + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(*v10 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_6:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_9;
    }

    v6 += 8;
    v11 = v6 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    if (*(v17 + 8 * v18) == v7)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  if (v12 == v18)
  {
LABEL_9:
    v19 = *(a1 + 776) - *(a1 + 768);
    sub_F8B0C4(a1, a2, &v42);
    v20 = v43;
    v21 = *(v42 + 8);
    if (v44 == 1)
    {
      *(v21 + 8 * v43) = *a2;
    }

    *(v21 + 8 * v20 + 4) = v19 >> 5;
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 >= v23)
    {
      v26 = *(a1 + 768);
      v27 = v22 - v26;
      v28 = (v22 - v26) >> 5;
      v29 = v28 + 1;
      if ((v28 + 1) >> 59)
      {
        sub_1794();
      }

      v30 = v23 - v26;
      if (v30 >> 4 > v29)
      {
        v29 = v30 >> 4;
      }

      if (v30 >= 0x7FFFFFFFFFFFFFE0)
      {
        v31 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        if (!(v31 >> 59))
        {
          operator new();
        }

        sub_1808();
      }

      v37 = v28;
      v38 = 32 * v28;
      *v38 = *a2;
      *(v38 + 8) = *a3;
      *(v38 + 24) = a3[2];
      v25 = 32 * v28 + 32;
      v39 = (v38 - 32 * v37);
      memcpy(v39, v26, v27);
      *(a1 + 768) = v39;
      *(a1 + 776) = v25;
      *(a1 + 784) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v22 = *a2;
      v24 = *a3;
      *(v22 + 24) = a3[2];
      *(v22 + 8) = v24;
      v25 = v22 + 32;
    }

    *(a1 + 776) = v25;
    v40 = (v19 >> 5);
    v41 = *(a1 + 848);
    if (v40 >= (*(a1 + 856) - v41) >> 2 || *(v41 + 4 * v40) == -1)
    {
      sub_40E0E8((a1 + 824), v19 >> 5, a3);
    }

    else
    {
      sub_40E27C((a1 + 824), v19 >> 5, a3);
    }

    return;
  }

  v32 = v17 + 8 * v18;
  v33 = *(a1 + 768) + 32 * *(v32 + 4);
  v34 = *a3;
  *(v33 + 24) = a3[2];
  *(v33 + 8) = v34;
  v35 = *(v32 + 4);
  v36 = *(a1 + 848);
  if (v35 >= (*(a1 + 856) - v36) >> 2 || *(v36 + 4 * v35) == -1)
  {

    sub_40E0E8((a1 + 824), v35, a3);
  }

  else
  {

    sub_40E27C((a1 + 824), v35, a3);
  }
}

uint64_t sub_1118644(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = 0;
  v7 = *a2;
  v8 = 265 * ((~v7 + (v7 << 21)) ^ ((~v7 + (v7 << 21)) >> 24));
  v9 = 2147483649u * ((21 * (v8 ^ (v8 >> 14))) ^ ((21 * (v8 ^ (v8 >> 14))) >> 28));
  v10 = (a1 + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(*v10 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_6:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_9;
    }

    v6 += 8;
    v11 = v6 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    if (*(v17 + 8 * v18) == v7)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  if (v12 == v18)
  {
LABEL_9:
    ++*(a1 + 816);
    v19 = *(a1 + 776) - *(a1 + 768);
    sub_F8B0C4(a1, a2, &v49);
    v20 = v50;
    v21 = *(v49 + 8);
    if (v51 == 1)
    {
      *(v21 + 8 * v50) = *a2;
    }

    *(v21 + 8 * v20 + 4) = v19 >> 5;
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 >= v23)
    {
      v26 = *(a1 + 768);
      v27 = v22 - v26;
      v28 = (v22 - v26) >> 5;
      v29 = v28 + 1;
      if ((v28 + 1) >> 59)
      {
        sub_1794();
      }

      v30 = v23 - v26;
      if (v30 >> 4 > v29)
      {
        v29 = v30 >> 4;
      }

      if (v30 >= 0x7FFFFFFFFFFFFFE0)
      {
        v31 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        if (!(v31 >> 59))
        {
          operator new();
        }

        sub_1808();
      }

      v42 = v28;
      v43 = 32 * v28;
      *v43 = *a2;
      *(v43 + 8) = *a3;
      *(v43 + 24) = a3[2];
      v25 = 32 * v28 + 32;
      v44 = (v43 - 32 * v42);
      memcpy(v44, v26, v27);
      *(a1 + 768) = v44;
      *(a1 + 776) = v25;
      *(a1 + 784) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v22 = *a2;
      v24 = *a3;
      *(v22 + 24) = a3[2];
      *(v22 + 8) = v24;
      v25 = v22 + 32;
    }

    *(a1 + 776) = v25;
    v45 = (v19 >> 5);
    v46 = *(a1 + 848);
    if (v45 < (*(a1 + 856) - v46) >> 2 && *(v46 + 4 * v45) != -1)
    {
      v41 = (a1 + 824);
      v39 = v19 >> 5;
      goto LABEL_31;
    }

    v47 = (a1 + 824);
    v39 = v19 >> 5;
    goto LABEL_33;
  }

  v32 = v17 + 8 * v18;
  v34 = *(v32 + 4);
  v33 = (v32 + 4);
  v35 = *(a1 + 768) + 32 * v34;
  v37 = *(v35 + 8);
  v36 = v35 + 8;
  if (*a3 < v37)
  {
    ++*(a1 + 816);
    v38 = *a3;
    *(v36 + 16) = a3[2];
    *v36 = v38;
    v39 = *v33;
    v40 = *(a1 + 848);
    if (v39 < (*(a1 + 856) - v40) >> 2 && *(v40 + 4 * v39) != -1)
    {
      v41 = (a1 + 824);
LABEL_31:
      sub_40E27C(v41, v39, a3);
      return 1;
    }

    v47 = (a1 + 824);
LABEL_33:
    sub_40E0E8(v47, v39, a3);
    return 1;
  }

  return 0;
}

uint64_t sub_1118980@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *result;
  LODWORD(v7) = *(result + 8);
  v6 = *(result + 12);
  v8 = *(result + 16);
  v9 = *(result + 24);
  v10 = *(a2 + 8);
  v11 = *(a2 + 24);
  if ((v9 != v11 || v7 != v10) && a3 != a4)
  {
    v14 = *a3;
    v15 = *(*a3 + 32);
    if (__PAIR64__(*(v8 + 22), v8[10]) == __PAIR64__(WORD2(v15), v15) && *(v8 + 46) == BYTE6(v15) && (v16 = *(v14 + 72), __PAIR64__(*(v8 + 42), v8[20]) == __PAIR64__(WORD2(v16), v16)) && *(v8 + 86) == BYTE6(v16) && *(v14 + 80) == v8[22] && ((*(v14 + 88) ^ *(v8 + 96)) & 3) == 0 && ((*(v14 + 84) ^ *(v8 + 46)) & 0x7FFF) == 0 && ((*(v14 + 88) ^ *(v8 + 96)) & 0x7C) == 0 && *(v14 + 86) == *(v8 + 47))
    {
      v7 = *v8;
      v18 = v5[21];
      if (*(v18 + 4 * v7) == 1)
      {
        v19 = v5[12];
        if (v7 >= (v5[13] - v19) >> 2)
        {
LABEL_55:
          exception = __cxa_allocate_exception(0x40uLL);
          v29 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
        }

        v8 = (v5[15] + 104 * *(v19 + 4 * v7));
      }

      else
      {
        v8 = 0;
      }

      LOBYTE(v9) = 0;
      v17 = a3 + 1;
      if (*(a2 + 24))
      {
        v20 = 0;
      }

      else
      {
        v20 = v7 == v10;
      }

      if (!v20 && v17 != a4)
      {
        v21 = *v17;
        v22 = *(*v17 + 32);
        if (v8[10] == v22)
        {
          v23 = a3 + 2;
          v24 = a3 + 1;
          while (1)
          {
            v17 = v23;
            if (*(v8 + 22) != WORD2(v22) || *(v8 + 46) != BYTE6(v22) || (v25 = *(v21 + 72), __PAIR64__(*(v8 + 42), v8[20]) != __PAIR64__(WORD2(v25), v25)) || *(v8 + 86) != BYTE6(v25))
            {
LABEL_53:
              LOBYTE(v9) = 0;
              v17 = v24;
              goto LABEL_16;
            }

            if (*(v21 + 80) != v8[22])
            {
              break;
            }

            if (((*(v21 + 88) ^ *(v8 + 96)) & 3) != 0 || ((*(v21 + 84) ^ *(v8 + 46)) & 0x7FFF) != 0 || ((*(v21 + 88) ^ *(v8 + 96)) & 0x7C) != 0 || *(v21 + 86) != *(v8 + 47))
            {
              goto LABEL_53;
            }

            v7 = *v8;
            if (*(v18 + 4 * v7) == 1)
            {
              v26 = v5[12];
              if (v7 >= (v5[13] - v26) >> 2)
              {
                goto LABEL_55;
              }

              v8 = (v5[15] + 104 * *(v26 + 4 * v7));
            }

            else
            {
              v8 = 0;
            }

            ++v24;
            v27 = !v11 && v7 == v10;
            if (v27 || v23 == a4)
            {
              goto LABEL_53;
            }

            LOBYTE(v9) = 0;
            ++v23;
            v21 = *v17;
            v22 = *(*v17 + 32);
            if (v8[10] != v22)
            {
              goto LABEL_16;
            }
          }

          LOBYTE(v9) = 0;
          v17 = v23 - 1;
        }

        else
        {
          LOBYTE(v9) = 0;
        }
      }
    }

    else
    {
      v17 = a3;
    }

LABEL_16:
    a3 = v17;
  }

  *(a5 + 25) = *(result + 25);
  *(a5 + 28) = *(result + 28);
  *a5 = v5;
  *(a5 + 8) = v7;
  *(a5 + 12) = v6;
  *(a5 + 16) = v8;
  *(a5 + 24) = v9;
  *(a5 + 32) = a3;
  return result;
}

void *sub_1118C84(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_F8A300(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_F8AC6C(v5 + 103, a2);
  if (v4 > (a1[98] - a1[96]) >> 3)
  {
    operator new();
  }

  return a1;
}

void sub_1118D70(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1118DD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *result;
  v6 = *(result + 8);
  v7 = *(result + 12);
  v8 = *(result + 16);
  v9 = *(result + 24);
  *v28 = *(result + 25);
  *&v28[3] = *(result + 28);
  v10 = *(a2 + 8);
  v11 = *(a2 + 24);
  if ((v9 != v11 || v6 != v10) && a3 != a4)
  {
    v14 = *a3;
    v15 = *(*a3 + 32);
    if (__PAIR64__(*(v8 + 44), *(v8 + 40)) == __PAIR64__(WORD2(v15), v15) && *(v8 + 46) == BYTE6(v15) && (v16 = *(v14 + 72), __PAIR64__(*(v8 + 84), *(v8 + 80)) == __PAIR64__(WORD2(v16), v16)) && *(v8 + 86) == BYTE6(v16) && *(v14 + 80) == *(v8 + 88) && ((*(v14 + 88) ^ *(v8 + 96)) & 3) == 0 && ((*(v14 + 84) ^ *(v8 + 92)) & 0x7FFF) == 0 && ((*(v14 + 88) ^ *(v8 + 96)) & 0x7C) == 0)
    {
      v17 = a3;
      if (*(v14 + 86) == *(v8 + 94))
      {
        v19 = a5;
        v6 = *v8;
        result = sub_F94B2C(v5, *v8);
        if (result == 1)
        {
          result = sub_F9495C(v5, v6, v29);
          v8 = *v29[0] + 104 * v30;
        }

        else
        {
          v8 = 0;
        }

        LOBYTE(v9) = 0;
        v20 = v17++;
        v21 = !v11 && v6 == v10;
        a5 = v19;
        if (!v21 && v17 != a4)
        {
          v22 = *v17;
          v23 = *(*v17 + 32);
          if (*(v8 + 40) == v23)
          {
            v24 = v20 + 2;
            v25 = v17;
            while (1)
            {
              v17 = v24;
              if (*(v8 + 44) != WORD2(v23) || *(v8 + 46) != BYTE6(v23) || (v26 = *(v22 + 72), __PAIR64__(*(v8 + 84), *(v8 + 80)) != __PAIR64__(WORD2(v26), v26)) || *(v8 + 86) != BYTE6(v26))
              {
LABEL_51:
                LOBYTE(v9) = 0;
                v17 = v25;
                goto LABEL_16;
              }

              if (*(v22 + 80) != *(v8 + 88))
              {
                LOBYTE(v9) = 0;
                v17 = v24 - 1;
                goto LABEL_16;
              }

              if (((*(v22 + 88) ^ *(v8 + 96)) & 3) != 0 || ((*(v22 + 84) ^ *(v8 + 92)) & 0x7FFF) != 0 || ((*(v22 + 88) ^ *(v8 + 96)) & 0x7C) != 0)
              {
                goto LABEL_51;
              }

              if (*(v22 + 86) != *(v8 + 94))
              {
                break;
              }

              v6 = *v8;
              result = sub_F94B2C(v5, *v8);
              if (result == 1)
              {
                result = sub_F9495C(v5, v6, v29);
                v8 = *v29[0] + 104 * v30;
              }

              else
              {
                v8 = 0;
              }

              a5 = v19;
              ++v25;
              if (v11)
              {
                v27 = 0;
              }

              else
              {
                v27 = v6 == v10;
              }

              if (v27 || v17 == a4)
              {
                goto LABEL_51;
              }

              LOBYTE(v9) = 0;
              v24 = v17 + 1;
              v22 = *v17;
              v23 = *(*v17 + 32);
              if (*(v8 + 40) != v23)
              {
                goto LABEL_16;
              }
            }

            LOBYTE(v9) = 0;
            v17 = v25;
            a5 = v19;
          }

          else
          {
            LOBYTE(v9) = 0;
          }
        }
      }
    }

    else
    {
      v17 = a3;
    }

LABEL_16:
    a3 = v17;
  }

  *a5 = v5;
  *(a5 + 8) = v6;
  *(a5 + 12) = v7;
  *(a5 + 16) = v8;
  *(a5 + 24) = v9;
  *(a5 + 25) = *v28;
  *(a5 + 28) = *&v28[3];
  *(a5 + 32) = a3;
  return result;
}

void sub_1119124()
{
  byte_27C2B9F = 3;
  LODWORD(qword_27C2B88) = 5136193;
  byte_27C2BB7 = 3;
  LODWORD(qword_27C2BA0) = 5136194;
  byte_27C2BCF = 3;
  LODWORD(qword_27C2BB8) = 5136195;
  byte_27C2BE7 = 15;
  strcpy(&qword_27C2BD0, "vehicle_mass_kg");
  byte_27C2BFF = 21;
  strcpy(&xmmword_27C2BE8, "vehicle_cargo_mass_kg");
  byte_27C2C17 = 19;
  strcpy(&qword_27C2C00, "vehicle_aux_power_w");
  byte_27C2C2F = 15;
  strcpy(&qword_27C2C18, "dcdc_efficiency");
  strcpy(&qword_27C2C30, "drive_train_efficiency");
  HIBYTE(word_27C2C46) = 22;
  operator new();
}

void sub_1119300(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C2C46) < 0)
  {
    sub_21E8394();
  }

  sub_21E83A0();
  _Unwind_Resume(a1);
}

void sub_1119320()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v13 = v12;
  v14 = sub_3AF2A4(v1, (v9 + 424));
  v15 = sub_3AF2A4(v2, (v10 + 448));
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (*(v10 + 419) == 1)
  {
    v36 = sub_1119E00(&v35, v11);
    sub_F977FC(v35, v71);
    v70[1] = 0;
    v70[0] = v2;
    sub_F76B14(v68, v8, v6, v4, v15, v14);
    v68[16] = 257;
    v69 = 1;
    sub_F76B2C(v57, v68, v70);
    sub_10B73A8();
    sub_F76B90(v57, v71, v54, v43);
    sub_110AF30(v38, v70);
    v34 = v6;
    sub_110AF4C(v38, v43, v71, &v35, v13);
    v16 = __p;
    if (__p)
    {
      v17 = v42;
      v18 = __p;
      if (v42 != __p)
      {
        do
        {
          v19 = *(v17 - 3);
          if (v19)
          {
            *(v17 - 2) = v19;
            operator delete(v19);
          }

          v20 = *(v17 - 14);
          if (v20)
          {
            *(v17 - 13) = v20;
            operator delete(v20);
          }

          v21 = *(v17 - 24);
          if (v21)
          {
            *(v17 - 23) = v21;
            operator delete(v21);
          }

          v17 -= 208;
        }

        while (v17 != v16);
        v18 = __p;
      }

      v42 = v16;
      operator delete(v18);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    if (v43[0])
    {
      v43[1] = v43[0];
      operator delete(v43[0]);
    }

    if (v56 == 1)
    {
      sub_3E3DF0(v55);
    }

    if (v66)
    {
      v67 = v66;
      operator delete(v66);
    }

    if (v64)
    {
      v65 = v64;
      operator delete(v64);
    }

    if (v62)
    {
      v63 = v62;
      operator delete(v62);
    }

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    sub_360988(&v74);
    v23 = 126;
    do
    {
      v24 = &v71[v23];
      v23 -= 6;
      v25 = *(v24 - 3);
      if (v25)
      {
        v26 = 0;
        v27 = 0;
        v28 = v24 - 5;
        do
        {
          if ((*(v71[v23] + v27) & 0x80000000) == 0)
          {
            v29 = *v28 + v26;
            v30 = *(v29 + 8);
            if (v30)
            {
              *(v29 + 16) = v30;
              operator delete(v30);
              v25 = *(v24 - 3);
            }
          }

          ++v27;
          v26 += 32;
        }

        while (v27 != v25);
        operator delete(v71[v23]);
        v71[v23] = &unk_2290750;
        *(v24 - 1) = 0;
        *(v24 - 4) = 0;
        *(v24 - 3) = 0;
        *v28 = 0;
      }
    }

    while (v23 != 30);
    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    sub_F96228(v71);
    v6 = v34;
    if ((*(v10 + 419) & 1) == 0)
    {
LABEL_55:
      if (v6)
      {
        v31 = 0x7FFFFFFF;
      }

      else
      {
        v31 = v8;
      }

      LODWORD(v71[0]) = v31;
      bzero(v54, 0x208uLL);
      sub_787F9C(v54);
    }
  }

  else
  {
    sub_1107E04(v13, v11, v2);
    if ((*(v10 + 419) & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  v22 = v35;
  if (v35)
  {
    v32 = v36;
    v33 = v35;
    if (v36 != v35)
    {
      do
      {
        v32 = sub_FE90B8(v32 - 308);
      }

      while (v32 != v22);
      v33 = v35;
    }

    v36 = v22;
    operator delete(v33);
  }
}

void sub_111977C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  sub_1119FCC(&a17);
  sub_3EE920(&a25);
  if (LOBYTE(STACK[0x1620]) == 1)
  {
    sub_3E3DF0(&a53);
  }

  sub_10C5750(&STACK[0x1640]);
  sub_F96138(&STACK[0x1768]);
  sub_FE0750(&a14);
  _Unwind_Resume(a1);
}

void sub_1119838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_FE0750(va);
  _Unwind_Resume(a1);
}

void sub_111984C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v36 = v3;
  v34 = v5;
  v35 = v4;
  v7 = v6;
  v8 = v0;
  v31 = v9;
  v33 = sub_3AF2A4(v1, (v6 + 424));
  v37 = v2;
  v32 = sub_3AF2A4(v2, (v7 + 448));
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v10 = v8[1] - *v8;
  if (v10)
  {
    if ((0x4FCACE213F2B3885 * (v10 >> 5)) < 0x24E6A171024E6BLL)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = *v8;
  v11 = v8[1];
  if (*v8 != v11)
  {
    do
    {
      sub_F977FC(v12, v54);
      if (v75 >= v76)
      {
        v13 = sub_111A200(&v74, v54);
      }

      else
      {
        v13 = sub_111A070(v75, v54) + 222;
      }

      v75 = v13;
      sub_360988(v58);
      v14 = 126;
      do
      {
        v15 = &v54[v14];
        v14 -= 6;
        v16 = v15[-3];
        if (v16)
        {
          v17 = 0;
          v18 = 0;
          v19 = v15 - 5;
          do
          {
            if ((*(*&v54[v14] + v18) & 0x80000000) == 0)
            {
              v20 = *v19 + v17;
              v21 = *(v20 + 8);
              if (v21)
              {
                *(v20 + 16) = v21;
                operator delete(v21);
                v16 = v15[-3];
              }
            }

            ++v18;
            v17 += 32;
          }

          while (v18 != *&v16);
          operator delete(*&v54[v14]);
          v54[v14] = &unk_2290750;
          v15[-1] = 0;
          v15[-4] = 0;
          v15[-3] = 0;
          *v19 = 0;
        }
      }

      while (v14 != 30);
      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      sub_F96228(v54);
      v12 += 2464;
    }

    while (v12 != v11);
  }

  sub_F94434(v73, &v74);
  v72[1] = 0;
  v72[0] = v37;
  sub_F76B14(v70, v35, v34, v36, v32, v33);
  v70[16] = 257;
  v71 = 1;
  sub_F76B2C(v59, v70, v72);
  sub_10B73A8();
  sub_F789B8(v59, v73, v54, v43);
  sub_110AF30(v38, v72);
  sub_110D034(v38, v43, v73, v8, v31);
  v22 = v41;
  if (v41)
  {
    v23 = v42;
    v24 = v41;
    if (v42 != v41)
    {
      do
      {
        v25 = *(v23 - 3);
        if (v25)
        {
          *(v23 - 2) = v25;
          operator delete(v25);
        }

        v26 = *(v23 - 14);
        if (v26)
        {
          *(v23 - 13) = v26;
          operator delete(v26);
        }

        v27 = *(v23 - 24);
        if (v27)
        {
          *(v23 - 23) = v27;
          operator delete(v27);
        }

        v23 -= 208;
      }

      while (v23 != v22);
      v24 = v41;
    }

    v42 = v22;
    operator delete(v24);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v43[0])
  {
    v43[1] = v43[0];
    operator delete(v43[0]);
  }

  if (v58[4376] == 1)
  {
    sub_3E3DF0(v55);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  sub_10C57C4(v73);
  v28 = v74;
  if (v74)
  {
    v29 = v75;
    v30 = v74;
    if (v75 != v74)
    {
      do
      {
        v29 -= 222;
        sub_F96138(v29);
      }

      while (v29 != v28);
      v30 = v74;
    }

    v75 = v28;
    operator delete(v30);
  }
}

void sub_1119D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  sub_1119FCC(&a16);
  sub_3EE920(&a24);
  if (LOBYTE(STACK[0x1618]) == 1)
  {
    sub_3E3DF0(&a52);
  }

  sub_10C5750(&STACK[0x1638]);
  sub_10C57C4(&STACK[0x1760]);
  sub_10C52B0((v52 - 112));
  _Unwind_Resume(a1);
}

void sub_1119DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  sub_F96138(va);
  sub_10C52B0((v42 - 112));
  _Unwind_Resume(a1);
}

void sub_1119DE0(void *a1)
{
  if (a1[1] - *a1 == 2464)
  {
    sub_1119320();
  }

  else
  {
    sub_111984C();
  }
}

uint64_t sub_1119E00(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1A98EF606A63BDLL)
  {
    sub_1794();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 5);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 5)) >= 0xD4C77B03531DELL)
  {
    v5 = 0x1A98EF606A63BDLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1A98EF606A63BDLL)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 32 * ((a1[1] - *a1) >> 5);
  sub_FE5E88(v15, a2);
  v6 = 2464 * v2 + 2464;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v15 + v9;
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v15 + v9;
    do
    {
      sub_FE5E88(v13, v12);
      v12 += 2464;
      v13 += 2464;
      v11 -= 2464;
    }

    while (v12 != v8);
    do
    {
      sub_FE90B8(v7);
      v7 += 308;
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

void sub_1119F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_FE9064(va);
  _Unwind_Resume(a1);
}

void sub_1119FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v4)
  {
    v6 = (v3 - 2464);
    do
    {
      v6 = sub_FE90B8(v6) - 308;
      v4 += 2464;
    }

    while (v4);
  }

  sub_FE9064(va);
  _Unwind_Resume(a1);
}

void *sub_1119FCC(void *a1)
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
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 112);
        if (v6)
        {
          *(v3 - 104) = v6;
          operator delete(v6);
        }

        v7 = *(v3 - 192);
        if (v7)
        {
          *(v3 - 184) = v7;
          operator delete(v7);
        }

        v3 -= 208;
      }

      while (v3 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    operator delete(v4);
  }

  v8 = a1[2];
  if (v8)
  {
    a1[3] = v8;
    operator delete(v8);
  }

  return a1;
}

void *sub_111A070(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  *(a1 + 3) = *(a2 + 48);
  a1[8] = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  *(a1 + 9) = *(a2 + 72);
  a1[11] = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  *(a1 + 6) = *(a2 + 96);
  a1[14] = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  *(a1 + 15) = *(a2 + 120);
  a1[17] = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  a1[18] = 0;
  a1[19] = 0;
  a1[20] = 0;
  *(a1 + 9) = *(a2 + 144);
  a1[20] = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  a1[21] = 0;
  a1[22] = 0;
  a1[23] = 0;
  *(a1 + 21) = *(a2 + 168);
  a1[23] = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  a1[24] = 0;
  a1[25] = 0;
  a1[26] = 0;
  *(a1 + 12) = *(a2 + 192);
  a1[26] = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  *(a1 + 27) = *(a2 + 216);
  a1[29] = *(a2 + 232);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  sub_10734F8((a1 + 30), a2 + 240);
  sub_FEA5FC((a1 + 126), a2 + 1008);
  return a1;
}

void *sub_111A200(void **a1, uint64_t a2)
{
  v2 = 0xB195E8EFDB195E8FLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x24E6A171024E6ALL)
  {
    sub_1794();
  }

  if (0x632BD1DFB632BD1ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x632BD1DFB632BD1ELL * ((a1[2] - *a1) >> 4);
  }

  if (0xB195E8EFDB195E8FLL * ((a1[2] - *a1) >> 4) >= 0x127350B8812735)
  {
    v5 = 0x24E6A171024E6ALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x24E6A171024E6ALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (16 * ((a1[1] - *a1) >> 4));
  sub_111A070(v6, a2);
  v7 = 1776 * v2 + 1776;
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 + v6 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = sub_111A070(v12, v11);
      v11 += 1776;
      v12 = v13 + 222;
    }

    while (v11 != v9);
    do
    {
      sub_F96138(v8);
      v8 += 1776;
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

void sub_111A364()
{
  byte_27C2CA7 = 3;
  LODWORD(qword_27C2C90) = 5136193;
  byte_27C2CBF = 3;
  LODWORD(qword_27C2CA8) = 5136194;
  byte_27C2CD7 = 3;
  LODWORD(qword_27C2CC0) = 5136195;
  byte_27C2CEF = 15;
  strcpy(&qword_27C2CD8, "vehicle_mass_kg");
  byte_27C2D07 = 21;
  strcpy(&xmmword_27C2CF0, "vehicle_cargo_mass_kg");
  byte_27C2D1F = 19;
  strcpy(&qword_27C2D08, "vehicle_aux_power_w");
  byte_27C2D37 = 15;
  strcpy(&qword_27C2D20, "dcdc_efficiency");
  strcpy(&qword_27C2D38, "drive_train_efficiency");
  HIBYTE(word_27C2D4E) = 22;
  operator new();
}

void sub_111A540(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C2D4E) < 0)
  {
    sub_21E8470();
  }

  sub_21E847C();
  _Unwind_Resume(a1);
}

void sub_111A580(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W4>, int a5@<W5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char a9, uint64_t a10, int a11)
{
  v17 = *(a1 + 60);
  v16 = *(a1 + 64);
  v18 = *(a1 + 72);
  v78 = 1;
  __p = &v78;
  v83 = a3;
  v19 = v17 == v16;
  v84 = v17;
  if (!v18)
  {
    v19 = 0;
  }

  v85 = v18;
  v86 = v19;
  v79 = a3;
  v80 = v16;
  v81 = 0;
  v82 = 0;
  sub_111B83C(&v83, &v79, &__p);
  if (v17 != v16 || (LODWORD(v20) = v16, v18))
  {
    v20 = *v18;
    if (*(a3[21] + 4 * v20) == 1 && v20 >= (a3[13] - a3[12]) >> 2)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v66 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
    }
  }

  if (v20 == v16)
  {
    v21 = a9;
  }

  else
  {
    v21 = 0;
  }

  sub_10F28F4(a1, a6, a7, v21, a10, a3, a2, &v83);
  sub_10F2F44(a1, a9, a10, a3, a2, &v79);
  if (!v85 || v84 == v80 && v86 == v82)
  {
    *(a8 + 8) = 0u;
    *(a8 + 56) = 0u;
    *(a8 + 40) = 0u;
    *(a8 + 72) = 0u;
    *(a8 + 24) = 0u;
    *(a8 + 152) = 0;
    *(a8 + 136) = 0u;
    *(a8 + 120) = 0u;
    *(a8 + 104) = 0u;
    *(a8 + 88) = 0u;
    *a8 = -1;
    *(a8 + 8) = -1;
    *(a8 + 48) = 0u;
    *(a8 + 64) = 0u;
    *(a8 + 16) = 0;
    *(a8 + 24) = 0;
    *(a8 + 32) = 0;
    *(a8 + 40) = 0;
    *(a8 + 80) = 0x1000000000000;
    *(a8 + 104) = 0u;
    *(a8 + 88) = 0u;
    *(a8 + 120) = -NAN;
    *(a8 + 128) = 0x7FFFFFFFFFFFFFFFLL;
    *(a8 + 136) = 0;
    *(a8 + 144) = 0;
    *(a8 + 156) = 0x7FFFFFFF;
    *(a8 + 176) = 0u;
    *(a8 + 192) = 0u;
    *(a8 + 160) = 0u;
    return;
  }

  if (!sub_10DF6B4(v85))
  {
    __p = 0;
    v76 = 0;
    v77 = 0;
    v25 = v84;
    v70 = v82;
    v71 = v80;
    if (v84 == v80 && v86 == v82)
    {
      goto LABEL_20;
    }

    v27 = v85;
    if (!v85)
    {
LABEL_48:
      v46 = sub_10E2C7C(a2);
      v47 = v46[12];
      if (v25 >= ((v46[13] - v47) >> 2))
      {
        v67 = __cxa_allocate_exception(0x40uLL);
        v68 = sub_2D390(v67, "vertex id out of range", 0x16uLL);
      }

      v48 = *(v47 + 4 * v25);
      if (v48 == -1)
      {
        goto LABEL_50;
      }

      while (1)
      {
        v49 = (v46[15] + 176 * v48);
        if (sub_10DF6A4(v49))
        {
          v50 = sub_3F80(v49);
          if (v50 == v80)
          {
            break;
          }
        }

        v48 = *(v46[18] + 4 * v48);
        if (v48 == -1)
        {
          goto LABEL_50;
        }
      }

      v52 = __p;
      v51 = v76;
      if (__p != v76)
      {
        v53 = *(v76 - 1);
        v54 = *(v53 + 72);
        v55 = *(v53 + 80);
        v56 = *(v53 + 88);
        v57 = sub_10DF6C4(v46[15] + 176 * v48);
        if (((((v54 >> 16) & 0xFFFF0000 | (v54 << 32) | (2 * ((v54 & 0xFF000000000000) == 0))) + ((v55 >> 14) & 0x3FFFC)) & 0xFFFFFFFFFFFFFFFELL | (v56 >> 1) & 1) != ((((*(v57 + 32) >> 16) & 0xFFFF0000 | (*(v57 + 32) << 32) | (2 * ((*(v57 + 32) & 0xFF000000000000) == 0))) + 4 * *(v57 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v57 + 88) & 1))
        {
LABEL_50:
          *(a8 + 8) = 0u;
          *(a8 + 56) = 0u;
          *(a8 + 40) = 0u;
          *(a8 + 72) = 0u;
          *(a8 + 24) = 0u;
          *(a8 + 152) = 0;
          *(a8 + 136) = 0u;
          *(a8 + 120) = 0u;
          *(a8 + 104) = 0u;
          *(a8 + 88) = 0u;
          *a8 = -1;
          *(a8 + 8) = -1;
          *(a8 + 48) = 0u;
          *(a8 + 64) = 0u;
          *(a8 + 16) = 0;
          *(a8 + 24) = 0;
          *(a8 + 32) = 0;
          *(a8 + 40) = 0;
          *(a8 + 80) = 0x1000000000000;
          *(a8 + 104) = 0u;
          *(a8 + 88) = 0u;
          *(a8 + 120) = -NAN;
          *(a8 + 128) = 0x7FFFFFFFFFFFFFFFLL;
          *(a8 + 136) = 0;
          *(a8 + 144) = 0;
          *(a8 + 156) = 0x7FFFFFFF;
          *(a8 + 176) = 0u;
          *(a8 + 192) = 0u;
          *(a8 + 160) = 0u;
          v26 = __p;
          if (!__p)
          {
            return;
          }

LABEL_21:
          v76 = v26;
          operator delete(v26);
          return;
        }
      }

      v58 = sub_10DF6C4(v46[15] + 176 * v48);
      if (v51 >= v77)
      {
        v59 = (v51 - v52) >> 3;
        v60 = v59 + 1;
        if ((v59 + 1) >> 61)
        {
          sub_1794();
        }

        v61 = v77 - v52;
        if ((v77 - v52) >> 2 > v60)
        {
          v60 = v61 >> 2;
        }

        if (v61 >= 0x7FFFFFFFFFFFFFF8)
        {
          v62 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v62 = v60;
        }

        if (v62)
        {
          if (!(v62 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v59) = v58;
        memcpy(0, v52, v51 - v52);
        __p = 0;
        v77 = 0;
        if (v52)
        {
          operator delete(v52);
        }

        v76 = (8 * v59 + 8);
      }

      else
      {
        *v51 = v58;
        v76 = v51 + 1;
      }

LABEL_20:
      sub_1109B28(a8, a11, a4, a5, &__p, v85 + 14, (a1 + 8), (a1 + 24), *(a1 + 32), v85 + 18, *(a1 + 40) >= *(a1 + 16), *(a1 + 48) + *(a1 + 40) >= *(a1 + 16), v69, *(a1 + 56), *(a1 + 40), *(a1 + 48), v85 + 19);
      v26 = __p;
      if (!__p)
      {
        return;
      }

      goto LABEL_21;
    }

    v28 = v83;
    while (1)
    {
      if (__p != v76)
      {
        v29 = *(v76 - 1);
        v30 = *(v29 + 72);
        v31 = *(v29 + 80);
        v32 = *(v29 + 88);
        v33 = sub_10DF6C4(v27);
        if (((((v30 >> 16) & 0xFFFF0000 | (v30 << 32) | (2 * ((v30 & 0xFF000000000000) == 0))) + ((v31 >> 14) & 0x3FFFC)) & 0xFFFFFFFFFFFFFFFELL | (v32 >> 1) & 1) != ((((*(v33 + 32) >> 16) & 0xFFFF0000 | (*(v33 + 32) << 32) | (2 * ((*(v33 + 32) & 0xFF000000000000) == 0))) + 4 * *(v33 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v33 + 88) & 1))
        {
          goto LABEL_50;
        }
      }

      v34 = sub_10DF6C4(v27);
      v35 = v76;
      if (v76 >= v77)
      {
        v37 = __p;
        v38 = v76 - __p;
        v39 = (v76 - __p) >> 3;
        v40 = v39 + 1;
        if ((v39 + 1) >> 61)
        {
          sub_1794();
        }

        v41 = v77 - __p;
        if ((v77 - __p) >> 2 > v40)
        {
          v40 = v41 >> 2;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFF8)
        {
          v42 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v40;
        }

        if (v42)
        {
          if (!(v42 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v43 = (8 * v39);
        *v43 = v34;
        v36 = v43 + 1;
        memcpy(0, v37, v38);
        __p = 0;
        v77 = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v76 = v34;
        v36 = v35 + 1;
      }

      v76 = v36;
      v44 = sub_3F80(v27);
      v25 = v44;
      if (*(v28[21] + 4 * v44) == 1)
      {
        v45 = v28[12];
        if (v44 >= ((v28[13] - v45) >> 2))
        {
          v63 = __cxa_allocate_exception(0x40uLL);
          v64 = sub_2D390(v63, "vertex id out of range", 0x16uLL);
        }

        v27 = (v28[15] + 176 * *(v45 + 4 * v44));
        if (v44 != v71)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v27 = 0;
        if (v44 != v71)
        {
          goto LABEL_25;
        }
      }

      if (!v70)
      {
        goto LABEL_20;
      }

LABEL_25:
      if (!v27)
      {
        goto LABEL_48;
      }
    }
  }

  __p = 0;
  v76 = 0;
  v77 = 0;
  sub_1109B28(a8, a11, a4, a5, &__p, v85 + 14, (a1 + 8), (a1 + 24), *(a1 + 32), v85 + 18, *(a1 + 40) >= *(a1 + 16), *(a1 + 48) + *(a1 + 40) >= *(a1 + 16), v69, *(a1 + 56), *(a1 + 40), *(a1 + 48), v85 + 19);
  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }

  v22 = sub_10DF708(v85);
  v23 = *v22;
  v24 = *(v22 + 16);
  *(a8 + 80) = *(v22 + 32);
  *(a8 + 48) = v23;
  *(a8 + 64) = v24;
  *(a8 + 88) = *sub_10DF6E4(v85);
}