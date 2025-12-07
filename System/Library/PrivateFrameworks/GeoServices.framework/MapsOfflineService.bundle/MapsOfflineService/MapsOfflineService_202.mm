uint64_t *sub_C058E4(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 4 * (*(*a2 + 8) != 0x7FFFFFFF) + 4);
  v7 = *result + 4;
  v8 = *a3;
  v9 = *(*a3 + 4 * (*(*a3 + 8) != 0x7FFFFFFF) + 4);
  if (v6 >= *(v7 + 4 * (*(*result + 8) != 0x7FFFFFFF)))
  {
    if (v9 >= v6)
    {
      v4 = *a3;
    }

    else
    {
      *a2 = v8;
      *a3 = v4;
      v10 = *result;
      if (*(*a2 + 4 * (*(*a2 + 8) != 0x7FFFFFFF) + 4) < *(*result + 4 * (*(*result + 8) != 0x7FFFFFFF) + 4))
      {
        *result = *a2;
        *a2 = v10;
        v4 = *a3;
      }
    }
  }

  else
  {
    if (v9 < v6)
    {
      *result = v8;
LABEL_9:
      *a3 = v5;
      v4 = v5;
      goto LABEL_11;
    }

    *result = v4;
    *a2 = v5;
    v4 = *a3;
    if (*(*a3 + 4 * (*(*a3 + 8) != 0x7FFFFFFF) + 4) < *(v7 + 4 * (*(v5 + 8) != 0x7FFFFFFF)))
    {
      *a2 = v4;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 4 * (*(*a4 + 8) != 0x7FFFFFFF) + 4) < *(v4 + 4 * (*(v4 + 8) != 0x7FFFFFFF) + 4))
  {
    *a3 = *a4;
    *a4 = v4;
    v11 = *a2;
    if (*(*a3 + 4 * (*(*a3 + 8) != 0x7FFFFFFF) + 4) < *(*a2 + 4 * (*(*a2 + 8) != 0x7FFFFFFF) + 4))
    {
      *a2 = *a3;
      *a3 = v11;
      v12 = *result;
      if (*(*a2 + 4 * (*(*a2 + 8) != 0x7FFFFFFF) + 4) < *(*result + 4 * (*(*result + 8) != 0x7FFFFFFF) + 4))
      {
        *result = *a2;
        *a2 = v12;
      }
    }
  }

  return result;
}

BOOL sub_C05ABC(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v15 = *a1;
        v16 = a1[1];
        v17 = *(v16 + 4 * (*(v16 + 8) != 0x7FFFFFFF) + 4);
        v18 = *a1 + 4;
        v19 = *(a2 - 1);
        v20 = *(v19 + 4 * (*(v19 + 8) != 0x7FFFFFFF) + 4);
        if (v17 >= *(v18 + 4 * (*(*a1 + 8) != 0x7FFFFFFF)))
        {
          if (v20 < v17)
          {
            a1[1] = v19;
            *(a2 - 1) = v16;
            v31 = *a1;
            v30 = a1[1];
            if (*(v30 + 4 * (*(v30 + 8) != 0x7FFFFFFF) + 4) < *(*a1 + 4 * (*(*a1 + 8) != 0x7FFFFFFF) + 4))
            {
              *a1 = v30;
              a1[1] = v31;
              return 1;
            }
          }
        }

        else
        {
          if (v20 < v17)
          {
            *a1 = v19;
            *(a2 - 1) = v15;
            return 1;
          }

          *a1 = v16;
          a1[1] = v15;
          v32 = *(a2 - 1);
          if (*(v32 + 4 * (*(v32 + 8) != 0x7FFFFFFF) + 4) < *(v18 + 4 * (*(v15 + 8) != 0x7FFFFFFF)))
          {
            a1[1] = v32;
            *(a2 - 1) = v15;
            return 1;
          }
        }

        return 1;
      case 4:
        sub_C058E4(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        sub_C058E4(a1, a1 + 1, a1 + 2, a1 + 3);
        v8 = *(a2 - 1);
        v9 = a1[3];
        if (*(v8 + 4 * (*(v8 + 8) != 0x7FFFFFFF) + 4) < *(v9 + 4 * (*(v9 + 8) != 0x7FFFFFFF) + 4))
        {
          a1[3] = v8;
          *(a2 - 1) = v9;
          v11 = a1[2];
          v10 = a1[3];
          v12 = v10 + 4;
          if (*(v10 + 4 + 4 * (*(v10 + 8) != 0x7FFFFFFF)) < *(v11 + 4 * (*(v11 + 8) != 0x7FFFFFFF) + 4))
          {
            a1[2] = v10;
            a1[3] = v11;
            v13 = a1[1];
            if (*(v12 + 4 * (*(v10 + 8) != 0x7FFFFFFF)) < *(v13 + 4 * (*(v13 + 8) != 0x7FFFFFFF) + 4))
            {
              a1[1] = v10;
              a1[2] = v13;
              v14 = *a1;
              if (*(v12 + 4 * (*(v10 + 8) != 0x7FFFFFFF)) < *(*a1 + 4 * (*(*a1 + 8) != 0x7FFFFFFF) + 4))
              {
                *a1 = v10;
                a1[1] = v14;
                return 1;
              }
            }
          }
        }

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
      v3 = *(a2 - 1);
      v4 = *a1;
      if (*(v3 + 4 * (*(v3 + 8) != 0x7FFFFFFF) + 4) < *(*a1 + 4 * (*(*a1 + 8) != 0x7FFFFFFF) + 4))
      {
        *a1 = v3;
        *(a2 - 1) = v4;
        return 1;
      }

      return 1;
    }
  }

  v21 = a1 + 2;
  v22 = a1[2];
  v23 = a1 + 1;
  v24 = a1[1];
  v25 = *a1;
  v26 = *(v24 + 4 * (*(v24 + 8) != 0x7FFFFFFF) + 4);
  v27 = *a1 + 4;
  v28 = v22 + 4;
  v29 = *(v22 + 4 + 4 * (*(v22 + 8) != 0x7FFFFFFF));
  if (v26 < *(v27 + 4 * (*(*a1 + 8) != 0x7FFFFFFF)))
  {
    if (v29 >= v26)
    {
      *a1 = v24;
      a1[1] = v25;
      if (*(v28 + 4 * (*(v22 + 8) != 0x7FFFFFFF)) >= *(v27 + 4 * (*(v25 + 8) != 0x7FFFFFFF)))
      {
        goto LABEL_33;
      }

      *v23 = v22;
    }

    else
    {
      *a1 = v22;
    }

    v23 = a1 + 2;
    goto LABEL_32;
  }

  if (v29 < v26)
  {
    *v23 = v22;
    *v21 = v24;
    if (*(v28 + 4 * (*(v22 + 8) != 0x7FFFFFFF)) < *(v27 + 4 * (*(v25 + 8) != 0x7FFFFFFF)))
    {
      *a1 = v22;
LABEL_32:
      *v23 = v25;
    }
  }

LABEL_33:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  while (1)
  {
    v36 = *v33;
    v37 = *v21;
    v38 = *v33 + 4;
    if (*(v38 + 4 * (*(*v33 + 8) != 0x7FFFFFFF)) < *(v37 + 4 * (*(v37 + 8) != 0x7FFFFFFF) + 4))
    {
      break;
    }

LABEL_42:
    v21 = v33;
    v34 += 8;
    if (++v33 == a2)
    {
      return 1;
    }
  }

  v39 = v34;
  do
  {
    *(a1 + v39 + 24) = v37;
    if (v39 == -16)
    {
      *a1 = v36;
      if (++v35 != 8)
      {
        goto LABEL_42;
      }

      return v33 + 1 == a2;
    }

    v37 = *(a1 + v39 + 8);
    v39 -= 8;
  }

  while (*(v38 + 4 * (*(v36 + 8) != 0x7FFFFFFF)) < *(v37 + 4 * (*(v37 + 8) != 0x7FFFFFFF) + 4));
  *(a1 + v39 + 24) = v36;
  if (++v35 != 8)
  {
    goto LABEL_42;
  }

  return v33 + 1 == a2;
}

void sub_C05F90(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a1;
  v4 = *a2;
  if (*a1 != *a2)
  {
    for (i = *a1; i + 16 != v4; i += 16)
    {
      v6 = *(i + 4 * (*(i + 20) != 0x7FFFFFFF) + 16);
      v7 = *(i + 4 * (*(i + 4) != 0x7FFFFFFF));
      if (v6 < v7)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v9 = sub_2D390(exception, "Journey leg alternatives are not sorted according to their expected departure times", 0x53uLL);
      }
    }

    if (v3 + 16 != v4)
    {
      v10 = 0;
      do
      {
        v11 = v10;
        v12 = v10 >> 2;
        if (((v10 >> 2) + 1) >> 62)
        {
          a3[1] = v10;
          a3[2] = 0;
          *a3 = 0;
          sub_1794();
        }

        if (v10 >> 2 != -1)
        {
          if (!(((v10 >> 2) + 1) >> 62))
          {
            operator new();
          }

          a3[1] = v10;
          a3[2] = 0;
          *a3 = 0;
          sub_1808();
        }

        *(4 * v12) = *(v3 + 4 * (*(v3 + 20) != 0x7FFFFFFF) + 16) - *(v3 + 4 * (*(v3 + 4) != 0x7FFFFFFF));
        v10 = 4 * v12 + 4;
        memcpy(0, 0, v11);
        v13 = v3 + 32;
        v3 += 16;
      }

      while (v13 != v4);
      a3[1] = v10;
      a3[2] = 0;
      *a3 = 0;
    }
  }
}

void sub_C061A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  a10[1] = v11;
  a10[2] = v12;
  *a10 = v10;
  if (v10)
  {
    a10[1] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_C061D8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
    __p = 0;
    v29 = 0;
    v30 = 0;
    v31 = sub_B780(&__p, *(a1 + 8), *(a1 + 24), *(a1 + 32), *a1);
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    if (sub_B6E0(&v31))
    {
      nullsub_1();
      v13 = *v14;
      v12 = *sub_B718(&v31);
    }

    else
    {
      v15 = *(a1 + 33);
      v12 = 0x7FFFFFFF;
      v13 = 0x7FFFFFFF;
      if ((v15 & 1) == 0)
      {
        *&v27 = 0x8000000080000000;
        *(&v27 + 1) = 0x8000000080000000;
        *a4 = v27;
        *(a4 + 16) = 0x7FFFFFFF;
        *(a4 + 24) = 0;
        *(a4 + 32) = 0;
        return;
      }
    }

    v8 = *a2;
    v9 = *a3;
  }

  else
  {
    v10 = v8 + 16;
    do
    {
      v11 = *(v10 - 4);
      if (v11)
      {
        break;
      }

      v24 = v10 == v9;
      v10 += 16;
    }

    while (!v24);
    v12 = 0x7FFFFFFF;
    if ((v11 & 1) == 0)
    {
      operator new();
    }

    v13 = 0x7FFFFFFF;
  }

  v16 = *(v8 + 4 * (*(v8 + 4) != 0x7FFFFFFF));
  v17 = *(v9 + 4 * (*(v9 - 12) != 0x7FFFFFFF) - 16);
  v18 = (v9 - v8) >> 4;
  v19 = 0x7FFFFFFF;
  if (v18 >= 2)
  {
    v20 = (10 * (v17 - v16)) / (v18 - 1);
    if (v20 >= 0.0)
    {
      if (v20 < 4.50359963e15)
      {
        v21 = (v20 + v20) + 1;
        goto LABEL_22;
      }
    }

    else if (v20 > -4.50359963e15)
    {
      v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
LABEL_22:
      v20 = (v21 >> 1);
    }

    v19 = v20;
  }

  v22 = v13 != 0x7FFFFFFF;
  v23 = v12 != 0x7FFFFFFF;
  v24 = !v22 || !v23;
  if (v22 && v23)
  {
    v25 = v12;
  }

  else
  {
    v25 = v19;
  }

  if (v24)
  {
    v26 = v19;
  }

  else
  {
    v26 = v13;
  }

  *a4 = v16;
  *(a4 + 4) = v17;
  *(a4 + 8) = v26;
  *(a4 + 12) = v25;
  *(a4 + 16) = v19;
  *(a4 + 24) = v18;
  *(a4 + 32) = 0;
  *(a4 + 33) = *v32;
  *(a4 + 36) = *&v32[3];
}

void sub_C06600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_C0664C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    for (i = a1 + 1; i != a2; ++i)
    {
      while (1)
      {
        v8 = *i;
        v9 = *a3;
        v10 = a3[3];
        v11 = *a3[2];
        v12 = *a3[1];
        v25 = v12 + 16 * (v11 + *(i - 1)) + 16;
        v24 = v12 + 16 * (v11 + v8) + 32;
        sub_C061D8(v10, &v25, &v24, &v26);
        v13 = *(v9 + 8);
        v14 = *(v9 + 16);
        if (v13 >= v14)
        {
          break;
        }

        v6 = v26;
        v7 = v27;
        *(v13 + 32) = v28;
        *v13 = v6;
        *(v13 + 16) = v7;
        *(v9 + 8) = v13 + 40;
        if (++i == a2)
        {
          return;
        }
      }

      v15 = *v9;
      v16 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - *v9) >> 3);
      v17 = v16 + 1;
      if (v16 + 1 > 0x666666666666666)
      {
        sub_1794();
      }

      v18 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - v15) >> 3);
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x333333333333333)
      {
        v19 = 0x666666666666666;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 <= 0x666666666666666)
        {
          operator new();
        }

        sub_1808();
      }

      v20 = 8 * ((v13 - *v9) >> 3);
      v21 = v27;
      *v20 = v26;
      *(v20 + 16) = v21;
      *(v20 + 32) = v28;
      v22 = 40 * v16 + 40;
      v23 = 40 * v16 - (v13 - v15);
      memcpy((v20 - (v13 - v15)), v15, v13 - v15);
      *v9 = v23;
      *(v9 + 8) = v22;
      *(v9 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }

      *(v9 + 8) = v22;
    }
  }
}

void sub_C0681C(uint64_t a1@<X0>, uint64_t *a2@<X1>, char **a3@<X8>, uint64_t *a4@<X2>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_C07308(a2, a4, &v71);
  v7 = v71;
  v8 = v72;
  v70 = v71;
  if (v71 == v72)
  {
    goto LABEL_75;
  }

  do
  {
    while (1)
    {
      v9 = *(a1 + 8);
      v10 = v9 / 10;
      v11 = v9 % 10;
      v12 = v9 < 0 ? -5 : 5;
      v13 = v10 + (((103 * (v12 + v11)) >> 15) & 1) + ((103 * (v12 + v11)) >> 10);
      if (*v7 <= v13)
      {
        break;
      }

      v7 += 4;
      v70 = v7;
      if (v7 == v8)
      {
        goto LABEL_55;
      }
    }

    if (v7 != v8)
    {
      while (v13 >= *v7)
      {
        v7 += 4;
        if (v7 == v8)
        {
          v7 = v8;
          break;
        }
      }
    }

    v69 = v7;
    sub_BFF080(a1, &v70, &v69, &__p);
    v66 = (v70 - v71) >> 2;
    v14 = v69 - v71;
    v15 = 2 * (v70 - v71);
    if (__p == v68)
    {
      v21 = *a2 + v15;
      v61 = *a2 + 2 * v14 + 8;
      v62 = v21;
      sub_C07554(a1, &v62, &v61, &v63);
      v22 = a3[1];
      v23 = a3[2];
      if (v22 < v23)
      {
        goto LABEL_37;
      }

      v24 = *a3;
      v25 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - *a3) >> 3);
      v26 = v25 + 1;
      if (v25 + 1 > 0x666666666666666)
      {
        sub_1794();
      }

      v27 = 0xCCCCCCCCCCCCCCCDLL * ((v23 - v24) >> 3);
      if (2 * v27 > v26)
      {
        v26 = 2 * v27;
      }

      if (v27 >= 0x333333333333333)
      {
        v28 = 0x666666666666666;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        if (v28 <= 0x666666666666666)
        {
          operator new();
        }

        sub_1808();
      }

      v51 = 8 * ((v22 - *a3) >> 3);
      v52 = v64;
      *v51 = v63;
      *(v51 + 16) = v52;
      *(v51 + 32) = v65;
      v42 = (40 * v25 + 40);
      v53 = (40 * v25 - (v22 - v24));
      memcpy((v51 - (v22 - v24)), v24, v22 - v24);
      *a3 = v53;
      a3[1] = v42;
      a3[2] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      v62 = *a2 + v15;
      v61 = v62 + 8 * *__p + 16;
      sub_C07554(a1, &v62, &v61, &v63);
      v16 = a3[1];
      v17 = a3[2];
      if (v16 >= v17)
      {
        v29 = *a3;
        v30 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - *a3) >> 3);
        v31 = v30 + 1;
        if (v30 + 1 > 0x666666666666666)
        {
          sub_1794();
        }

        v32 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v29) >> 3);
        if (2 * v32 > v31)
        {
          v31 = 2 * v32;
        }

        if (v32 >= 0x333333333333333)
        {
          v33 = 0x666666666666666;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          if (v33 <= 0x666666666666666)
          {
            operator new();
          }

          sub_1808();
        }

        v34 = 8 * ((v16 - *a3) >> 3);
        v35 = v64;
        *v34 = v63;
        *(v34 + 16) = v35;
        *(v34 + 32) = v65;
        v20 = (40 * v30 + 40);
        v36 = (40 * v30 - (v16 - v29));
        memcpy((v34 - (v16 - v29)), v29, v16 - v29);
        *a3 = v36;
        a3[1] = v20;
        a3[2] = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        v18 = v63;
        v19 = v64;
        *(v16 + 4) = v65;
        *v16 = v18;
        *(v16 + 1) = v19;
        v20 = v16 + 40;
      }

      a3[1] = v20;
      *&v63 = a3;
      *(&v63 + 1) = a2;
      *&v64 = &v66;
      *(&v64 + 1) = a1;
      sub_C079E0(__p, v68, &v63);
      v37 = *a2 + 8;
      v38 = v37 + 8 * (*(v68 - 1) + v66);
      v61 = v37 + 2 * v14;
      v62 = v38;
      sub_C07554(a1, &v62, &v61, &v63);
      v22 = a3[1];
      v39 = a3[2];
      if (v22 < v39)
      {
LABEL_37:
        v40 = v63;
        v41 = v64;
        *(v22 + 4) = v65;
        *v22 = v40;
        *(v22 + 1) = v41;
        v42 = v22 + 40;
        goto LABEL_52;
      }

      v43 = *a3;
      v44 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - *a3) >> 3);
      v45 = v44 + 1;
      if (v44 + 1 > 0x666666666666666)
      {
        sub_1794();
      }

      v46 = 0xCCCCCCCCCCCCCCCDLL * ((v39 - v43) >> 3);
      if (2 * v46 > v45)
      {
        v45 = 2 * v46;
      }

      if (v46 >= 0x333333333333333)
      {
        v47 = 0x666666666666666;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        if (v47 <= 0x666666666666666)
        {
          operator new();
        }

        sub_1808();
      }

      v48 = 8 * ((v22 - *a3) >> 3);
      v49 = v64;
      *v48 = v63;
      *(v48 + 16) = v49;
      *(v48 + 32) = v65;
      v42 = (40 * v44 + 40);
      v50 = (40 * v44 - (v22 - v43));
      memcpy((v48 - (v22 - v43)), v43, v22 - v43);
      *a3 = v50;
      a3[1] = v42;
      a3[2] = 0;
      if (v43)
      {
        operator delete(v43);
      }
    }

LABEL_52:
    a3[1] = v42;
    v7 = v69;
    v70 = v69;
    if (__p)
    {
      v68 = __p;
      operator delete(__p);
      v7 = v70;
    }

    v8 = v72;
  }

  while (v7 != v72);
LABEL_55:
  v54 = a3[1];
  v55 = *a3;
  if (*a3 != v54)
  {
    while (1)
    {
      v56 = *v55 == 0x7FFFFFFF || *(v55 + 1) == 0x7FFFFFFF;
      if (v56 || !*(v55 + 3))
      {
        break;
      }

      v55 += 40;
      if (v55 == v54)
      {
        goto LABEL_75;
      }
    }

    if (v55 != v54)
    {
      for (i = v55 + 40; i != v54; i += 40)
      {
        v58 = *i == 0x7FFFFFFF || *(i + 1) == 0x7FFFFFFF;
        if (!v58 && *(i + 3))
        {
          v59 = *i;
          v60 = *(i + 1);
          v55[32] = i[32];
          *v55 = v59;
          *(v55 + 1) = v60;
          v55 += 40;
        }
      }
    }

    if (v55 != v54)
    {
      a3[1] = v55;
    }
  }

LABEL_75:
  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }
}

void sub_C06E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  v25 = *v23;
  if (!*v23)
  {
    _Unwind_Resume(exception_object);
  }

  *(v23 + 8) = v25;
  operator delete(v25);
  _Unwind_Resume(exception_object);
}

char *sub_C06EB0(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

char *sub_C07004(size_t *a1, char *__dst, _OWORD *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a1[1];
  v7 = a1[2];
  if ((0xCCCCCCCCCCCCCCCDLL * ((v7 - v6) >> 3)) < a5)
  {
    v8 = *a1;
    v9 = a5 - 0x3333333333333333 * (&v6[-*a1] >> 3);
    if (v9 > 0x666666666666666)
    {
      sub_1794();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v32 = 8 * ((__dst - v8) >> 3);
    v33 = 40 * a5;
    v34 = v32 + 40 * a5;
    v35 = v32;
    do
    {
      v36 = *__src;
      v37 = __src[1];
      *(v35 + 32) = *(__src + 4);
      *v35 = v36;
      *(v35 + 16) = v37;
      v35 += 40;
      __src = (__src + 40);
      v33 -= 40;
    }

    while (v33);
    v38 = a1[1] - __dst;
    memcpy((v32 + 40 * a5), __dst, v38);
    v40 = v34 + v38;
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

  v12 = v6 - __dst;
  if ((0xCCCCCCCCCCCCCCCDLL * ((v6 - __dst) >> 3)) >= a5)
  {
    v25 = &__dst[40 * a5];
    v26 = &v6[-40 * a5];
    for (i = a1[1]; v26 < v6; i += 40)
    {
      v28 = *v26;
      v29 = *(v26 + 1);
      *(i + 32) = *(v26 + 4);
      *i = v28;
      *(i + 16) = v29;
      v26 += 40;
    }

    a1[1] = i;
    if (v6 != v25)
    {
      v30 = __src;
      v31 = a5;
      memmove(v25, __dst, v6 - v25 - 7);
      a5 = v31;
      __src = v30;
    }

    v24 = 40 * a5 - 7;
    goto LABEL_26;
  }

  v13 = __src + v12;
  v14 = a1[1];
  for (j = v14; v13 != a4; v14 += 40)
  {
    v16 = *v13;
    v17 = *(v13 + 1);
    *(j + 32) = *(v13 + 4);
    *j = v16;
    *(j + 16) = v17;
    v13 += 40;
    j += 40;
  }

  a1[1] = v14;
  if (v12 >= 1)
  {
    v18 = &__dst[40 * a5];
    v19 = v14 - 40 * a5;
    for (k = v14; v19 < v6; k += 40)
    {
      v21 = *v19;
      v22 = *(v19 + 16);
      *(k + 32) = *(v19 + 32);
      *k = v21;
      *(k + 16) = v22;
      v19 += 40;
    }

    a1[1] = k;
    if (j != v18)
    {
      v23 = __src;
      memmove(&__dst[40 * a5], __dst, v14 - v18 - 7);
      __src = v23;
    }

    v24 = v12 - 7;
LABEL_26:
    memmove(v5, __src, v24);
  }

  return v5;
}

void sub_C07308(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a1;
  v4 = *a2;
  if (*a1 != *a2)
  {
    for (i = v3 + 8; i != v4; i += 8)
    {
      v6 = *(i - 8);
      v7 = *(*i + 4 * (*(*i + 8) != 0x7FFFFFFF) + 4);
      if (v7 < *(v6 + 4 * (*(v6 + 8) != 0x7FFFFFFF) + 4))
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v9 = sub_2D390(exception, "Journey leg alternatives are not sorted according to their expected departure times", 0x53uLL);
      }
    }

    v10 = v3 + 8;
    if (v3 + 8 != v4)
    {
      v11 = 0;
      do
      {
        v12 = v11;
        v13 = v11 >> 2;
        if (((v11 >> 2) + 1) >> 62)
        {
          a3[1] = v11;
          a3[2] = 0;
          *a3 = 0;
          sub_1794();
        }

        if (v11 >> 2 != -1)
        {
          if (!(((v11 >> 2) + 1) >> 62))
          {
            operator new();
          }

          a3[1] = v11;
          a3[2] = 0;
          *a3 = 0;
          sub_1808();
        }

        *(4 * v13) = *(*v10 + 4 * (*(*v10 + 8) != 0x7FFFFFFF) + 4) - *(*(v10 - 8) + 4 * (*(*(v10 - 8) + 8) != 0x7FFFFFFF) + 4);
        v11 = 4 * v13 + 4;
        memcpy(0, 0, v12);
        v10 += 8;
      }

      while (v10 != v4);
      a3[1] = v11;
      a3[2] = 0;
      *a3 = 0;
    }
  }
}

void sub_C07520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  a10[1] = v11;
  a10[2] = v12;
  *a10 = v10;
  if (v10)
  {
    a10[1] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_C07554(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
    __p = 0;
    v28 = 0;
    v29 = 0;
    v30 = sub_B780(&__p, *(a1 + 8), *(a1 + 24), *(a1 + 32), *a1);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    if (sub_B6E0(&v30))
    {
      nullsub_1();
      v12 = *v11;
      v13 = *sub_B718(&v30);
    }

    else
    {
      v14 = *(a1 + 33);
      v13 = 0x7FFFFFFF;
      v12 = 0x7FFFFFFF;
      if ((v14 & 1) == 0)
      {
        *&v26 = 0x8000000080000000;
        *(&v26 + 1) = 0x8000000080000000;
        *a4 = v26;
        *(a4 + 16) = 0x7FFFFFFF;
        *(a4 + 24) = 0;
        *(a4 + 32) = 0;
        return;
      }
    }

    v8 = *a2;
    v9 = *a3;
  }

  else
  {
    v10 = *a2;
    while (*(*v10 + 40) == -1)
    {
      v10 += 8;
      if (v10 == v9)
      {
        operator new();
      }
    }

    v13 = 0x7FFFFFFF;
    v12 = 0x7FFFFFFF;
  }

  v15 = *(*v8 + 4 * (*(*v8 + 8) != 0x7FFFFFFF) + 4);
  v16 = *(*(v9 - 8) + 4 * (*(*(v9 - 8) + 8) != 0x7FFFFFFF) + 4);
  v17 = (v9 - v8) >> 3;
  v18 = 0x7FFFFFFF;
  if (v17 >= 2)
  {
    v19 = (10 * (v16 - v15)) / (v17 - 1);
    if (v19 >= 0.0)
    {
      if (v19 < 4.50359963e15)
      {
        v20 = (v19 + v19) + 1;
        goto LABEL_19;
      }
    }

    else if (v19 > -4.50359963e15)
    {
      v20 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
LABEL_19:
      v19 = (v20 >> 1);
    }

    v18 = v19;
  }

  v21 = v12 != 0x7FFFFFFF;
  v22 = v13 != 0x7FFFFFFF;
  v23 = !v21 || !v22;
  if (v21 && v22)
  {
    v24 = v13;
  }

  else
  {
    v24 = v18;
  }

  if (v23)
  {
    v25 = v18;
  }

  else
  {
    v25 = v12;
  }

  *a4 = v15;
  *(a4 + 4) = v16;
  *(a4 + 8) = v25;
  *(a4 + 12) = v24;
  *(a4 + 16) = v18;
  *(a4 + 24) = v17;
  *(a4 + 32) = 0;
  *(a4 + 33) = *v31;
  *(a4 + 36) = *&v31[3];
}

void sub_C07994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_C079E0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    for (i = a1 + 1; i != a2; ++i)
    {
      while (1)
      {
        v8 = *i;
        v9 = *a3;
        v10 = a3[3];
        v11 = *a3[2];
        v12 = *a3[1];
        v25 = v12 + 8 * (v11 + *(i - 1)) + 8;
        v24 = v12 + 8 * (v11 + v8) + 16;
        sub_C07554(v10, &v25, &v24, &v26);
        v13 = *(v9 + 8);
        v14 = *(v9 + 16);
        if (v13 >= v14)
        {
          break;
        }

        v6 = v26;
        v7 = v27;
        *(v13 + 32) = v28;
        *v13 = v6;
        *(v13 + 16) = v7;
        *(v9 + 8) = v13 + 40;
        if (++i == a2)
        {
          return;
        }
      }

      v15 = *v9;
      v16 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - *v9) >> 3);
      v17 = v16 + 1;
      if (v16 + 1 > 0x666666666666666)
      {
        sub_1794();
      }

      v18 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - v15) >> 3);
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x333333333333333)
      {
        v19 = 0x666666666666666;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 <= 0x666666666666666)
        {
          operator new();
        }

        sub_1808();
      }

      v20 = 8 * ((v13 - *v9) >> 3);
      v21 = v27;
      *v20 = v26;
      *(v20 + 16) = v21;
      *(v20 + 32) = v28;
      v22 = 40 * v16 + 40;
      v23 = 40 * v16 - (v13 - v15);
      memcpy((v20 - (v13 - v15)), v15, v13 - v15);
      *v9 = v23;
      *(v9 + 8) = v22;
      *(v9 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }

      *(v9 + 8) = v22;
    }
  }
}

double sub_C07BB0(unint64_t a1, char *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 a6)
{
  while (2)
  {
    v10 = (a2 - 40);
    v276 = (a2 - 80);
    v11 = a2 - 120;
    v12 = a1;
    while (1)
    {
      while (1)
      {
        a1 = v12;
        v13 = &a2[-v12];
        v14 = 0xCCCCCCCCCCCCCCCDLL * (&a2[-v12] >> 3);
        if (v14 > 2)
        {
          switch(v14)
          {
            case 3uLL:
              v201 = (*a3)(v12 + 40, v12, a6);
              v202 = (*a3)((a2 - 40), (v12 + 40));
              if (v201)
              {
                if (v202)
                {
                  goto LABEL_108;
                }

                v248 = *v12;
                v249 = *(v12 + 16);
                v283 = *(v12 + 32);
                v281 = v248;
                v282 = v249;
                v250 = *(v12 + 56);
                *v12 = *(v12 + 40);
                *(v12 + 16) = v250;
                *(v12 + 32) = *(v12 + 72);
                v251 = v282;
                *(v12 + 40) = v281;
                *(v12 + 56) = v251;
                *(v12 + 72) = v283;
                if (!(*a3)((a2 - 40), (v12 + 40)))
                {
                  return a6.n128_f64[0];
                }

                a6 = *(v12 + 40);
                v207 = *(v12 + 56);
                v281 = a6;
                v282 = v207;
                v283 = *(v12 + 72);
                v252 = v283;
                v254 = *v10;
                v253 = *(a2 - 24);
                *(v12 + 72) = *(a2 - 8);
                *(v12 + 40) = v254;
                *(v12 + 56) = v253;
                *(a2 - 8) = v252;
LABEL_109:
                *v10 = a6;
                *(a2 - 24) = v207;
                return a6.n128_f64[0];
              }

              if (!v202)
              {
                return a6.n128_f64[0];
              }

              v228 = *(v12 + 56);
              v281 = *(v12 + 40);
              v227 = v281;
              v282 = v228;
              v283 = *(v12 + 72);
              v229 = v283;
              v231 = *v10;
              v230 = *(a2 - 24);
              *(v12 + 72) = *(a2 - 8);
              *(v12 + 40) = v231;
              *(v12 + 56) = v230;
              *(a2 - 8) = v229;
              *v10 = v227;
              *(a2 - 24) = v228;
              break;
            case 4uLL:
              v208 = (*a3)(v12 + 40, v12, a6);
              v209 = (*a3)((v12 + 80), (v12 + 40));
              if (v208)
              {
                if (v209)
                {
                  v210 = *v12;
                  v211 = *(v12 + 16);
                  v283 = *(v12 + 32);
                  v281 = v210;
                  v282 = v211;
                  v212 = *(v12 + 96);
                  *v12 = *(v12 + 80);
                  *(v12 + 16) = v212;
                  *(v12 + 32) = *(v12 + 112);
                  v213 = v282;
                  *(v12 + 80) = v281;
                  *(v12 + 96) = v213;
                  *(v12 + 112) = v283;
                }

                else
                {
                  v255 = *v12;
                  v256 = *(v12 + 16);
                  v283 = *(v12 + 32);
                  v281 = v255;
                  v282 = v256;
                  v257 = *(v12 + 56);
                  *v12 = *(v12 + 40);
                  *(v12 + 16) = v257;
                  *(v12 + 32) = *(v12 + 72);
                  v258 = v282;
                  *(v12 + 40) = v281;
                  *(v12 + 56) = v258;
                  *(v12 + 72) = v283;
                  if ((*a3)((v12 + 80), (v12 + 40)))
                  {
                    v259 = *(v12 + 72);
                    v260 = *(v12 + 56);
                    v261 = *(v12 + 40);
                    v262 = *(v12 + 96);
                    *(v12 + 40) = *(v12 + 80);
                    *(v12 + 56) = v262;
                    *(v12 + 72) = *(v12 + 112);
                    *(v12 + 80) = v261;
                    *(v12 + 96) = v260;
                    *(v12 + 112) = v259;
                  }
                }
              }

              else if (v209)
              {
                v232 = *(v12 + 72);
                v233 = *(v12 + 56);
                v234 = *(v12 + 40);
                v235 = *(v12 + 96);
                *(v12 + 40) = *(v12 + 80);
                *(v12 + 56) = v235;
                *(v12 + 72) = *(v12 + 112);
                *(v12 + 80) = v234;
                *(v12 + 96) = v233;
                *(v12 + 112) = v232;
                if ((*a3)((v12 + 40), v12))
                {
                  v236 = *v12;
                  v237 = *(v12 + 16);
                  v283 = *(v12 + 32);
                  v281 = v236;
                  v282 = v237;
                  v238 = *(v12 + 56);
                  *v12 = *(v12 + 40);
                  *(v12 + 16) = v238;
                  *(v12 + 32) = *(v12 + 72);
                  v239 = v282;
                  *(v12 + 40) = v281;
                  *(v12 + 56) = v239;
                  *(v12 + 72) = v283;
                }
              }

              if (!(*a3)((a2 - 40), (v12 + 80)))
              {
                return a6.n128_f64[0];
              }

              v264 = *(v12 + 96);
              v281 = *(v12 + 80);
              v263 = v281;
              v282 = v264;
              v283 = *(v12 + 112);
              v265 = v283;
              v267 = *v10;
              v266 = *(a2 - 24);
              *(v12 + 112) = *(a2 - 8);
              *(v12 + 80) = v267;
              *(v12 + 96) = v266;
              *(a2 - 8) = v265;
              *v10 = v263;
              *(a2 - 24) = v264;
              if (!(*a3)((v12 + 80), (v12 + 40)))
              {
                return a6.n128_f64[0];
              }

              v268 = *(v12 + 72);
              v269 = *(v12 + 56);
              v270 = *(v12 + 40);
              v271 = *(v12 + 96);
              *(v12 + 40) = *(v12 + 80);
              *(v12 + 56) = v271;
              *(v12 + 72) = *(v12 + 112);
              *(v12 + 80) = v270;
              *(v12 + 96) = v269;
              *(v12 + 112) = v268;
              break;
            case 5uLL:
              a6.n128_u64[0] = sub_C08B18(v12, (v12 + 40), (v12 + 80), (v12 + 120), (a2 - 40), a3).n128_u64[0];
              return a6.n128_f64[0];
            default:
              goto LABEL_9;
          }

          if ((*a3)((v12 + 40), v12))
          {
            a6 = *v12;
            v272 = *(v12 + 16);
            v283 = *(v12 + 32);
            v281 = a6;
            v282 = v272;
            v273 = *(v12 + 56);
            *v12 = *(v12 + 40);
            *(v12 + 16) = v273;
            *(v12 + 32) = *(v12 + 72);
            a6.n128_u64[0] = v281.n128_u64[0];
            v274 = v282;
            *(v12 + 40) = v281;
            *(v12 + 56) = v274;
            *(v12 + 72) = v283;
          }

          return a6.n128_f64[0];
        }

        if (v14 < 2)
        {
          return a6.n128_f64[0];
        }

        if (v14 == 2)
        {
          if (!(*a3)(a2 - 40, v12, a6))
          {
            return a6.n128_f64[0];
          }

LABEL_108:
          v203 = *v12;
          v204 = *(v12 + 16);
          v283 = *(v12 + 32);
          v281 = v203;
          v282 = v204;
          v205 = *v10;
          v206 = *(a2 - 24);
          *(v12 + 32) = *(a2 - 8);
          *v12 = v205;
          *(v12 + 16) = v206;
          a6 = v281;
          v207 = v282;
          *(a2 - 8) = v283;
          goto LABEL_109;
        }

LABEL_9:
        if (v13 <= 959)
        {
          v214 = v12 + 40;
          v216 = v12 == a2 || v214 == a2;
          if (a5)
          {
            if (!v216)
            {
              v217 = 0;
              v218 = v12;
              do
              {
                v221 = v218;
                v218 = v214;
                if ((*a3)(v214, v221, a6))
                {
                  v222 = *v218;
                  v223 = *(v218 + 16);
                  v283 = *(v218 + 32);
                  v281 = v222;
                  v282 = v223;
                  v224 = v217;
                  do
                  {
                    v225 = v12 + v224;
                    v226 = *(v12 + v224 + 16);
                    *(v225 + 40) = *(v12 + v224);
                    *(v225 + 56) = v226;
                    *(v225 + 72) = *(v12 + v224 + 32);
                    if (!v224)
                    {
                      v219 = v12;
                      goto LABEL_123;
                    }

                    v224 -= 40;
                  }

                  while (((*a3)(&v281, (v224 + v12)) & 1) != 0);
                  v219 = v12 + v224 + 40;
LABEL_123:
                  a6 = v281;
                  v220 = v282;
                  *(v219 + 32) = v283;
                  *v219 = a6;
                  *(v219 + 16) = v220;
                }

                v214 = v218 + 40;
                v217 += 40;
              }

              while ((v218 + 40) != a2);
            }
          }

          else if (!v216)
          {
            v240 = v12 - 40;
            do
            {
              v241 = a1;
              a1 = v214;
              if ((*a3)(v214, v241, a6))
              {
                v242 = *a1;
                v243 = *(a1 + 16);
                v283 = *(a1 + 32);
                v281 = v242;
                v282 = v243;
                v244 = v240;
                do
                {
                  v245 = *(v244 + 56);
                  *(v244 + 80) = *(v244 + 40);
                  *(v244 + 96) = v245;
                  *(v244 + 112) = *(v244 + 72);
                  v246 = (*a3)(&v281, v244);
                  v244 -= 40;
                }

                while ((v246 & 1) != 0);
                a6 = v281;
                v247 = v282;
                *(v244 + 112) = v283;
                *(v244 + 80) = a6;
                *(v244 + 96) = v247;
              }

              v214 = a1 + 40;
              v240 += 40;
            }

            while ((a1 + 40) != a2);
          }

          return a6.n128_f64[0];
        }

        if (!a4)
        {
          if (v12 != a2)
          {
            sub_C09388(v12, a2, a2, a3);
          }

          return a6.n128_f64[0];
        }

        v15 = v14 >> 1;
        v16 = v12 + 40 * (v14 >> 1);
        v17 = *a3;
        if (v13 >= 0x1401)
        {
          break;
        }

        v24 = (v17)(a1, v16, a6);
        v25 = (*a3)((a2 - 40), a1);
        if (v24)
        {
          if (v25)
          {
            v26 = *v16;
            v27 = *(v16 + 16);
            v283 = *(v16 + 32);
            v281 = v26;
            v282 = v27;
            v28 = *v10;
            v29 = *(a2 - 24);
            *(v16 + 32) = *(a2 - 8);
            *v16 = v28;
            *(v16 + 16) = v29;
          }

          else
          {
            v85 = *v16;
            v86 = *(v16 + 16);
            v283 = *(v16 + 32);
            v281 = v85;
            v282 = v86;
            v87 = *a1;
            v88 = *(a1 + 16);
            *(v16 + 32) = *(a1 + 32);
            *v16 = v87;
            *(v16 + 16) = v88;
            v89 = v281;
            v90 = v282;
            *(a1 + 32) = v283;
            *a1 = v89;
            *(a1 + 16) = v90;
            if (!(*a3)((a2 - 40), a1))
            {
              goto LABEL_37;
            }

            v91 = *a1;
            v92 = *(a1 + 16);
            v283 = *(a1 + 32);
            v281 = v91;
            v282 = v92;
            v93 = *v10;
            v94 = *(a2 - 24);
            *(a1 + 32) = *(a2 - 8);
            *a1 = v93;
            *(a1 + 16) = v94;
          }

          v95 = v281;
          v96 = v282;
          *(a2 - 8) = v283;
          *v10 = v95;
          *(a2 - 24) = v96;
LABEL_37:
          --a4;
          if (a5)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        }

        if (!v25)
        {
          goto LABEL_37;
        }

        v42 = *a1;
        v43 = *(a1 + 16);
        v283 = *(a1 + 32);
        v281 = v42;
        v282 = v43;
        v44 = *v10;
        v45 = *(a2 - 24);
        *(a1 + 32) = *(a2 - 8);
        *a1 = v44;
        *(a1 + 16) = v45;
        v46 = v281;
        v47 = v282;
        *(a2 - 8) = v283;
        *v10 = v46;
        *(a2 - 24) = v47;
        if (!(*a3)(a1, v16))
        {
          goto LABEL_37;
        }

        v48 = *v16;
        v49 = *(v16 + 16);
        v283 = *(v16 + 32);
        v281 = v48;
        v282 = v49;
        v50 = *a1;
        v51 = *(a1 + 16);
        *(v16 + 32) = *(a1 + 32);
        *v16 = v50;
        *(v16 + 16) = v51;
        v52 = v281;
        v53 = v282;
        *(a1 + 32) = v283;
        *a1 = v52;
        *(a1 + 16) = v53;
        --a4;
        if (a5)
        {
          goto LABEL_61;
        }

LABEL_60:
        if ((*a3)((a1 - 40), a1))
        {
          goto LABEL_61;
        }

        v185 = *a1;
        v186 = *(a1 + 16);
        v280 = *(a1 + 32);
        v278 = v185;
        v279 = v186;
        if ((*a3)(&v278, (a2 - 40)))
        {
          v12 = a1;
          do
          {
            v12 += 40;
          }

          while (((*a3)(&v278, v12) & 1) == 0);
        }

        else
        {
          v187 = a1 + 40;
          do
          {
            v12 = v187;
            if (v187 >= a2)
            {
              break;
            }

            v188 = (*a3)(&v278, v187);
            v187 = v12 + 40;
          }

          while (!v188);
        }

        v189 = a2;
        if (v12 < a2)
        {
          v189 = a2;
          do
          {
            v189 -= 40;
          }

          while (((*a3)(&v278, v189) & 1) != 0);
        }

        while (v12 < v189)
        {
          v190 = *v12;
          v191 = *(v12 + 16);
          v283 = *(v12 + 32);
          v281 = v190;
          v282 = v191;
          v192 = *v189;
          v193 = *(v189 + 16);
          *(v12 + 32) = *(v189 + 32);
          *v12 = v192;
          *(v12 + 16) = v193;
          v194 = v281;
          v195 = v282;
          *(v189 + 32) = v283;
          *v189 = v194;
          *(v189 + 16) = v195;
          do
          {
            v12 += 40;
          }

          while (!(*a3)(&v278, v12));
          do
          {
            v189 -= 40;
          }

          while (((*a3)(&v278, v189) & 1) != 0);
        }

        v196 = (v12 - 40);
        if (v12 - 40 != a1)
        {
          v197 = *v196;
          v198 = *(v12 - 24);
          *(a1 + 32) = *(v12 - 8);
          *a1 = v197;
          *(a1 + 16) = v198;
        }

        a5 = 0;
        a6 = v278;
        v199 = v279;
        *(v12 - 8) = v280;
        *v196 = a6;
        *(v12 - 24) = v199;
      }

      v18 = (v17)(v16, a1, a6);
      v19 = (*a3)((a2 - 40), v16);
      if (v18)
      {
        if (v19)
        {
          v20 = *a1;
          v21 = *(a1 + 16);
          v283 = *(a1 + 32);
          v281 = v20;
          v282 = v21;
          v22 = *v10;
          v23 = *(a2 - 24);
          *(a1 + 32) = *(a2 - 8);
          *a1 = v22;
          *(a1 + 16) = v23;
        }

        else
        {
          v54 = *a1;
          v55 = *(a1 + 16);
          v283 = *(a1 + 32);
          v281 = v54;
          v282 = v55;
          v56 = *v16;
          v57 = *(v16 + 16);
          *(a1 + 32) = *(v16 + 32);
          *a1 = v56;
          *(a1 + 16) = v57;
          v58 = v281;
          v59 = v282;
          *(v16 + 32) = v283;
          *v16 = v58;
          *(v16 + 16) = v59;
          if (!(*a3)((a2 - 40), v16))
          {
            goto LABEL_28;
          }

          v60 = *v16;
          v61 = *(v16 + 16);
          v283 = *(v16 + 32);
          v281 = v60;
          v282 = v61;
          v62 = *v10;
          v63 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v62;
          *(v16 + 16) = v63;
        }

        v64 = v281;
        v65 = v282;
        *(a2 - 8) = v283;
        *v10 = v64;
        *(a2 - 24) = v65;
      }

      else if (v19)
      {
        v30 = *v16;
        v31 = *(v16 + 16);
        v283 = *(v16 + 32);
        v281 = v30;
        v282 = v31;
        v32 = *v10;
        v33 = *(a2 - 24);
        *(v16 + 32) = *(a2 - 8);
        *v16 = v32;
        *(v16 + 16) = v33;
        v34 = v281;
        v35 = v282;
        *(a2 - 8) = v283;
        *v10 = v34;
        *(a2 - 24) = v35;
        if ((*a3)(v16, a1))
        {
          v36 = *a1;
          v37 = *(a1 + 16);
          v283 = *(a1 + 32);
          v281 = v36;
          v282 = v37;
          v38 = *v16;
          v39 = *(v16 + 16);
          *(a1 + 32) = *(v16 + 32);
          *a1 = v38;
          *(a1 + 16) = v39;
          v40 = v281;
          v41 = v282;
          *(v16 + 32) = v283;
          *v16 = v40;
          *(v16 + 16) = v41;
        }
      }

LABEL_28:
      v66 = a1 + 40 * v15 - 40;
      v67 = (*a3)(v66, (a1 + 40));
      v68 = (*a3)(v276, v66);
      if (v67)
      {
        if (v68)
        {
          v70 = *(a1 + 56);
          v281 = *(a1 + 40);
          v69 = v281;
          v282 = v70;
          v283 = *(a1 + 72);
          v71 = v283;
          v73 = *v276;
          v72 = *(a2 - 4);
          *(a1 + 72) = *(a2 - 48);
          *(a1 + 40) = v73;
          *(a1 + 56) = v72;
          *(a2 - 48) = v71;
          *v276 = v69;
          *(a2 - 4) = v70;
        }

        else
        {
          v98 = *(a1 + 56);
          v281 = *(a1 + 40);
          v97 = v281;
          v282 = v98;
          v283 = *(a1 + 72);
          v99 = v283;
          v101 = *v66;
          v100 = *(a1 + 40 * v15 - 24);
          *(a1 + 72) = *(a1 + 40 * v15 - 8);
          *(a1 + 40) = v101;
          *(a1 + 56) = v100;
          *(a1 + 40 * v15 - 8) = v99;
          *v66 = v97;
          *(a1 + 40 * v15 - 24) = v98;
          if ((*a3)(v276, (a1 + 40 * v15 - 40)))
          {
            v102 = *v66;
            v103 = *(a1 + 40 * v15 - 24);
            v283 = *(a1 + 40 * v15 - 8);
            v281 = v102;
            v282 = v103;
            v104 = *v276;
            v105 = *(a2 - 4);
            *(a1 + 40 * v15 - 8) = *(a2 - 48);
            *v66 = v104;
            *(a1 + 40 * v15 - 24) = v105;
            v106 = v281;
            v107 = v282;
            *(a2 - 48) = v283;
            *v276 = v106;
            *(a2 - 4) = v107;
          }
        }
      }

      else if (v68)
      {
        v74 = *v66;
        v75 = *(a1 + 40 * v15 - 24);
        v283 = *(a1 + 40 * v15 - 8);
        v281 = v74;
        v282 = v75;
        v76 = *v276;
        v77 = *(a2 - 4);
        *(a1 + 40 * v15 - 8) = *(a2 - 48);
        *v66 = v76;
        *(a1 + 40 * v15 - 24) = v77;
        v78 = v281;
        v79 = v282;
        *(a2 - 48) = v283;
        *v276 = v78;
        *(a2 - 4) = v79;
        if ((*a3)((a1 + 40 * v15 - 40), (a1 + 40)))
        {
          v81 = *(a1 + 56);
          v281 = *(a1 + 40);
          v80 = v281;
          v282 = v81;
          v283 = *(a1 + 72);
          v82 = v283;
          v84 = *v66;
          v83 = *(a1 + 40 * v15 - 24);
          *(a1 + 72) = *(a1 + 40 * v15 - 8);
          *(a1 + 40) = v84;
          *(a1 + 56) = v83;
          *(a1 + 40 * v15 - 8) = v82;
          *v66 = v80;
          *(a1 + 40 * v15 - 24) = v81;
        }
      }

      v108 = a1 + 40 * v15;
      v109 = (*a3)((v108 + 40), (a1 + 80));
      v110 = (*a3)((a2 - 120), (v108 + 40));
      if (v109)
      {
        if (v110)
        {
          v111 = *(a1 + 80);
          v112 = *(a1 + 96);
          v281 = v111;
          v282 = v112;
          v283 = *(a1 + 112);
          v113 = v283;
          v115 = *v11;
          v114 = *(a2 - 104);
          *(a1 + 112) = *(a2 - 88);
          *(a1 + 80) = v115;
          *(a1 + 96) = v114;
          *(a2 - 88) = v113;
        }

        else
        {
          v128 = *(a1 + 96);
          v281 = *(a1 + 80);
          v127 = v281;
          v282 = v128;
          v283 = *(a1 + 112);
          v129 = v283;
          v130 = *(v108 + 56);
          v131 = *(v108 + 40);
          *(a1 + 112) = *(v108 + 72);
          *(a1 + 80) = v131;
          *(a1 + 96) = v130;
          *(v108 + 56) = v128;
          *(v108 + 72) = v129;
          *(v108 + 40) = v127;
          if (!(*a3)((a2 - 120), (v108 + 40)))
          {
            goto LABEL_50;
          }

          v132 = *(v108 + 40);
          v133 = *(v108 + 56);
          v283 = *(v108 + 72);
          v281 = v132;
          v282 = v133;
          v134 = *v11;
          v135 = *(a2 - 104);
          *(v108 + 72) = *(a2 - 88);
          *(v108 + 56) = v135;
          *(v108 + 40) = v134;
          v111 = v281;
          v112 = v282;
          *(a2 - 88) = v283;
        }

        *v11 = v111;
        *(a2 - 104) = v112;
      }

      else if (v110)
      {
        v116 = *(v108 + 40);
        v117 = *(v108 + 56);
        v283 = *(v108 + 72);
        v281 = v116;
        v282 = v117;
        v118 = *v11;
        v119 = *(a2 - 104);
        *(v108 + 72) = *(a2 - 88);
        *(v108 + 56) = v119;
        *(v108 + 40) = v118;
        v120 = v281;
        v121 = v282;
        *(a2 - 88) = v283;
        *v11 = v120;
        *(a2 - 104) = v121;
        if ((*a3)((v108 + 40), (a1 + 80)))
        {
          v123 = *(a1 + 96);
          v281 = *(a1 + 80);
          v122 = v281;
          v282 = v123;
          v283 = *(a1 + 112);
          v124 = v283;
          v125 = *(v108 + 56);
          v126 = *(v108 + 40);
          *(a1 + 112) = *(v108 + 72);
          *(a1 + 80) = v126;
          *(a1 + 96) = v125;
          *(v108 + 56) = v123;
          *(v108 + 72) = v124;
          *(v108 + 40) = v122;
        }
      }

LABEL_50:
      v136 = (*a3)(v16, v66);
      v137 = (*a3)((v108 + 40), v16);
      if (v136)
      {
        if (v137)
        {
          v138 = *v66;
          v139 = *(v66 + 16);
          v283 = *(v66 + 32);
          v281 = v138;
          v282 = v139;
          v140 = *(v108 + 56);
          *v66 = *(v108 + 40);
          *(v66 + 16) = v140;
          *(v66 + 32) = *(v108 + 72);
        }

        else
        {
          v151 = *v66;
          v152 = *(v66 + 16);
          v283 = *(v66 + 32);
          v281 = v151;
          v282 = v152;
          v153 = *(v16 + 16);
          *v66 = *v16;
          *(v66 + 16) = v153;
          *(v66 + 32) = *(v16 + 32);
          v154 = v281;
          v155 = v282;
          *(v16 + 32) = v283;
          *v16 = v154;
          *(v16 + 16) = v155;
          if (!(*a3)((v108 + 40), v16))
          {
            goto LABEL_59;
          }

          v156 = *v16;
          v157 = *(v16 + 16);
          v283 = *(v16 + 32);
          v281 = v156;
          v282 = v157;
          v158 = *(v108 + 56);
          *v16 = *(v108 + 40);
          *(v16 + 16) = v158;
          *(v16 + 32) = *(v108 + 72);
        }

        v159 = v283;
        v160 = v281;
        *(v108 + 56) = v282;
        *(v108 + 72) = v159;
        *(v108 + 40) = v160;
      }

      else if (v137)
      {
        v141 = *v16;
        v142 = *(v16 + 16);
        v283 = *(v16 + 32);
        v281 = v141;
        v282 = v142;
        v143 = *(v108 + 56);
        *v16 = *(v108 + 40);
        *(v16 + 16) = v143;
        *(v16 + 32) = *(v108 + 72);
        v144 = v283;
        v145 = v281;
        *(v108 + 56) = v282;
        *(v108 + 72) = v144;
        *(v108 + 40) = v145;
        if ((*a3)(v16, v66))
        {
          v146 = *v66;
          v147 = *(v66 + 16);
          v283 = *(v66 + 32);
          v281 = v146;
          v282 = v147;
          v148 = *(v16 + 16);
          *v66 = *v16;
          *(v66 + 16) = v148;
          *(v66 + 32) = *(v16 + 32);
          v149 = v281;
          v150 = v282;
          *(v16 + 32) = v283;
          *v16 = v149;
          *(v16 + 16) = v150;
        }
      }

LABEL_59:
      v161 = *a1;
      v162 = *(a1 + 16);
      v283 = *(a1 + 32);
      v281 = v161;
      v282 = v162;
      v163 = *v16;
      v164 = *(v16 + 16);
      *(a1 + 32) = *(v16 + 32);
      *a1 = v163;
      *(a1 + 16) = v164;
      v165 = v281;
      v166 = v282;
      *(v16 + 32) = v283;
      *v16 = v165;
      *(v16 + 16) = v166;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_61:
      v167 = 0;
      v168 = *a1;
      v169 = *(a1 + 16);
      v280 = *(a1 + 32);
      v278 = v168;
      v279 = v169;
      do
      {
        v167 += 40;
      }

      while (((*a3)((v167 + a1), &v278) & 1) != 0);
      v170 = a1 + v167;
      v171 = a2;
      if (v167 == 40)
      {
        v171 = a2;
        do
        {
          if (v170 >= v171)
          {
            break;
          }

          v171 -= 40;
        }

        while (((*a3)(v171, &v278) & 1) == 0);
      }

      else
      {
        do
        {
          v171 -= 40;
        }

        while (!(*a3)(v171, &v278));
      }

      if (v170 >= v171)
      {
        v180 = v170 - 40;
        if (v170 - 40 == a1)
        {
          goto LABEL_79;
        }

LABEL_78:
        v181 = *v180;
        v182 = *(v180 + 16);
        *(a1 + 32) = *(v180 + 32);
        *a1 = v181;
        *(a1 + 16) = v182;
        goto LABEL_79;
      }

      v172 = a1 + v167;
      v173 = v171;
      do
      {
        v174 = *v172;
        v175 = *(v172 + 16);
        v283 = *(v172 + 32);
        v281 = v174;
        v282 = v175;
        v176 = *v173;
        v177 = *(v173 + 16);
        *(v172 + 32) = *(v173 + 32);
        *v172 = v176;
        *(v172 + 16) = v177;
        v178 = v281;
        v179 = v282;
        *(v173 + 32) = v283;
        *v173 = v178;
        *(v173 + 16) = v179;
        do
        {
          v172 += 40;
        }

        while (((*a3)(v172, &v278) & 1) != 0);
        do
        {
          v173 -= 40;
        }

        while (!(*a3)(v173, &v278));
      }

      while (v172 < v173);
      v180 = v172 - 40;
      if (v180 != a1)
      {
        goto LABEL_78;
      }

LABEL_79:
      a6 = v278;
      v183 = v279;
      *(v180 + 32) = v280;
      *v180 = a6;
      *(v180 + 16) = v183;
      if (v170 < v171)
      {
        goto LABEL_82;
      }

      v184 = sub_C08DD0(a1, v180, a3);
      v12 = v180 + 40;
      if (sub_C08DD0(v180 + 40, a2, a3))
      {
        break;
      }

      if (!v184)
      {
LABEL_82:
        a6.n128_f64[0] = sub_C07BB0(a1, v180, a3, a4, a5 & 1, a6);
        a5 = 0;
        v12 = v180 + 40;
      }
    }

    a2 = v180;
    if (!v184)
    {
      continue;
    }

    return a6.n128_f64[0];
  }
}

__n128 sub_C08B18(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = a1[2].n128_u64[0];
      v15 = *a1;
      v16 = a1[1];
      v17 = a3[2].n128_u8[0];
      v18 = a3[1];
      *a1 = *a3;
      a1[1] = v18;
      a1[2].n128_u8[0] = v17;
LABEL_9:
      *a3 = v15;
      a3[1] = v16;
      a3[2].n128_u8[0] = v14;
      goto LABEL_10;
    }

    v29 = a1[2].n128_u64[0];
    v30 = *a1;
    v31 = a1[1];
    v32 = a2[2].n128_u8[0];
    v33 = a2[1];
    *a1 = *a2;
    a1[1] = v33;
    a1[2].n128_u8[0] = v32;
    *a2 = v30;
    a2[1] = v31;
    a2[2].n128_u8[0] = v29;
    if ((*a6)(a3, a2))
    {
      v14 = a2[2].n128_u64[0];
      v15 = *a2;
      v16 = a2[1];
      v34 = a3[2].n128_u8[0];
      v35 = a3[1];
      *a2 = *a3;
      a2[1] = v35;
      a2[2].n128_u8[0] = v34;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v19 = a2[2].n128_u64[0];
    v20 = *a2;
    v21 = a2[1];
    v22 = a3[2].n128_u8[0];
    v23 = a3[1];
    *a2 = *a3;
    a2[1] = v23;
    a2[2].n128_u8[0] = v22;
    *a3 = v20;
    a3[1] = v21;
    a3[2].n128_u8[0] = v19;
    if ((*a6)(a2, a1))
    {
      v24 = a1[2].n128_u64[0];
      v25 = *a1;
      v26 = a1[1];
      v27 = a2[2].n128_u8[0];
      v28 = a2[1];
      *a1 = *a2;
      a1[1] = v28;
      a1[2].n128_u8[0] = v27;
      *a2 = v25;
      a2[1] = v26;
      a2[2].n128_u8[0] = v24;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v36 = a3[2].n128_u64[0];
    v37 = *a3;
    v38 = a3[1];
    v39 = a4[2].n128_u8[0];
    v40 = a4[1];
    *a3 = *a4;
    a3[1] = v40;
    a3[2].n128_u8[0] = v39;
    *a4 = v37;
    a4[1] = v38;
    a4[2].n128_u8[0] = v36;
    if ((*a6)(a3, a2))
    {
      v41 = a2[2].n128_u64[0];
      v42 = *a2;
      v43 = a2[1];
      v44 = a3[2].n128_u8[0];
      v45 = a3[1];
      *a2 = *a3;
      a2[1] = v45;
      a2[2].n128_u8[0] = v44;
      *a3 = v42;
      a3[1] = v43;
      a3[2].n128_u8[0] = v41;
      if ((*a6)(a2, a1))
      {
        v46 = a1[2].n128_u64[0];
        v47 = *a1;
        v48 = a1[1];
        v49 = a2[2].n128_u8[0];
        v50 = a2[1];
        *a1 = *a2;
        a1[1] = v50;
        a1[2].n128_u8[0] = v49;
        *a2 = v47;
        a2[1] = v48;
        a2[2].n128_u8[0] = v46;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v52 = a4[2].n128_u64[0];
    v53 = *a4;
    v54 = a4[1];
    v55 = a5[2].n128_u8[0];
    v56 = a5[1];
    *a4 = *a5;
    a4[1] = v56;
    a4[2].n128_u8[0] = v55;
    *a5 = v53;
    a5[1] = v54;
    a5[2].n128_u8[0] = v52;
    if ((*a6)(a4, a3))
    {
      v57 = a3[2].n128_u64[0];
      v58 = *a3;
      v59 = a3[1];
      v60 = a4[2].n128_u8[0];
      v61 = a4[1];
      *a3 = *a4;
      a3[1] = v61;
      a3[2].n128_u8[0] = v60;
      *a4 = v58;
      a4[1] = v59;
      a4[2].n128_u8[0] = v57;
      if ((*a6)(a3, a2))
      {
        v62 = a2[2].n128_u64[0];
        v63 = *a2;
        v64 = a2[1];
        v65 = a3[2].n128_u8[0];
        v66 = a3[1];
        *a2 = *a3;
        a2[1] = v66;
        a2[2].n128_u8[0] = v65;
        *a3 = v63;
        a3[1] = v64;
        a3[2].n128_u8[0] = v62;
        if ((*a6)(a2, a1))
        {
          v67 = a1[2].n128_u64[0];
          result = *a1;
          v68 = a1[1];
          v69 = a2[2].n128_u8[0];
          v70 = a2[1];
          *a1 = *a2;
          a1[1] = v70;
          a1[2].n128_u8[0] = v69;
          *a2 = result;
          a2[1] = v68;
          a2[2].n128_u8[0] = v67;
        }
      }
    }
  }

  return result;
}

BOOL sub_C08DD0(uint64_t a1, uint64_t a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v14 = a2 - 40;
      v15 = (*a3)((a1 + 40), a1);
      v16 = (*a3)(v14, (a1 + 40));
      if (v15)
      {
        if (v16)
        {
          v17 = *(a1 + 32);
          v18 = *a1;
          v19 = *(a1 + 16);
          v20 = *(v14 + 32);
          v21 = *(v14 + 16);
          *a1 = *v14;
          *(a1 + 16) = v21;
          *(a1 + 32) = v20;
        }

        else
        {
          v60 = *(a1 + 32);
          v62 = *a1;
          v61 = *(a1 + 16);
          v63 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v63;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v62;
          *(a1 + 56) = v61;
          *(a1 + 72) = v60;
          if (!(*a3)(v14, (a1 + 40)))
          {
            return 1;
          }

          v17 = *(a1 + 72);
          v18 = *(a1 + 40);
          v19 = *(a1 + 56);
          v64 = *(v14 + 32);
          v65 = *(v14 + 16);
          *(a1 + 40) = *v14;
          *(a1 + 56) = v65;
          *(a1 + 72) = v64;
        }

        *v14 = v18;
        *(v14 + 16) = v19;
        result = 1;
        *(v14 + 32) = v17;
        return result;
      }

      if (!v16)
      {
        return 1;
      }

      v38 = *(a1 + 72);
      v39 = *(a1 + 40);
      v40 = *(a1 + 56);
      v41 = *(v14 + 32);
      v42 = *(v14 + 16);
      *(a1 + 40) = *v14;
      *(a1 + 56) = v42;
      *(a1 + 72) = v41;
      *v14 = v39;
      *(v14 + 16) = v40;
      *(v14 + 32) = v38;
      if (!(*a3)((a1 + 40), a1))
      {
        return 1;
      }

LABEL_49:
      v98 = *(a1 + 32);
      v100 = *a1;
      v99 = *(a1 + 16);
      v101 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v101;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v100;
      *(a1 + 56) = v99;
      result = 1;
      *(a1 + 72) = v98;
      return result;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      sub_C08B18(a1, (a1 + 40), (a1 + 80), (a1 + 120), (a2 - 40), a3);
      return 1;
    }

    v31 = a2 - 40;
    v32 = (*a3)((a1 + 40), a1);
    v33 = (*a3)((a1 + 80), (a1 + 40));
    if (v32)
    {
      if (v33)
      {
        v34 = *(a1 + 32);
        v36 = *a1;
        v35 = *(a1 + 16);
        v37 = *(a1 + 96);
        *a1 = *(a1 + 80);
        *(a1 + 16) = v37;
        *(a1 + 32) = *(a1 + 112);
LABEL_45:
        *(a1 + 80) = v36;
        *(a1 + 96) = v35;
        *(a1 + 112) = v34;
        goto LABEL_46;
      }

      v84 = *(a1 + 32);
      v86 = *a1;
      v85 = *(a1 + 16);
      v87 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v87;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v86;
      *(a1 + 56) = v85;
      *(a1 + 72) = v84;
      if ((*a3)((a1 + 80), (a1 + 40)))
      {
        v34 = *(a1 + 72);
        v35 = *(a1 + 56);
        v36 = *(a1 + 40);
        v88 = *(a1 + 96);
        *(a1 + 40) = *(a1 + 80);
        *(a1 + 56) = v88;
        *(a1 + 72) = *(a1 + 112);
        goto LABEL_45;
      }
    }

    else if (v33)
    {
      v52 = *(a1 + 72);
      v53 = *(a1 + 56);
      v54 = *(a1 + 40);
      v55 = *(a1 + 96);
      *(a1 + 40) = *(a1 + 80);
      *(a1 + 56) = v55;
      *(a1 + 72) = *(a1 + 112);
      *(a1 + 80) = v54;
      *(a1 + 96) = v53;
      *(a1 + 112) = v52;
      if ((*a3)((a1 + 40), a1))
      {
        v56 = *(a1 + 32);
        v58 = *a1;
        v57 = *(a1 + 16);
        v59 = *(a1 + 56);
        *a1 = *(a1 + 40);
        *(a1 + 16) = v59;
        *(a1 + 32) = *(a1 + 72);
        *(a1 + 40) = v58;
        *(a1 + 56) = v57;
        *(a1 + 72) = v56;
      }
    }

LABEL_46:
    if (!(*a3)(v31, (a1 + 80)))
    {
      return 1;
    }

    v89 = *(a1 + 112);
    v90 = *(a1 + 80);
    v91 = *(a1 + 96);
    v92 = *(v31 + 32);
    v93 = *(v31 + 16);
    *(a1 + 80) = *v31;
    *(a1 + 96) = v93;
    *(a1 + 112) = v92;
    *v31 = v90;
    *(v31 + 16) = v91;
    *(v31 + 32) = v89;
    if (!(*a3)((a1 + 80), (a1 + 40)))
    {
      return 1;
    }

    v94 = *(a1 + 72);
    v95 = *(a1 + 56);
    v96 = *(a1 + 40);
    v97 = *(a1 + 96);
    *(a1 + 40) = *(a1 + 80);
    *(a1 + 56) = v97;
    *(a1 + 72) = *(a1 + 112);
    *(a1 + 80) = v96;
    *(a1 + 96) = v95;
    *(a1 + 112) = v94;
    if (!(*a3)((a1 + 40), a1))
    {
      return 1;
    }

    goto LABEL_49;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 40);
    if ((*a3)((a2 - 40), a1))
    {
      v8 = *(a1 + 32);
      v9 = *a1;
      v10 = *(a1 + 16);
      v11 = *(a2 - 8);
      v12 = *(a2 - 24);
      *a1 = *v7;
      *(a1 + 16) = v12;
      *(a1 + 32) = v11;
      *v7 = v9;
      *(a2 - 24) = v10;
      result = 1;
      *(a2 - 8) = v8;
      return result;
    }

    return 1;
  }

LABEL_13:
  v23 = (*a3)((a1 + 40), a1);
  v24 = (a1 + 80);
  v22 = (a1 + 80);
  v25 = (*a3)((a1 + 80), (a1 + 40));
  if (v23)
  {
    if (v25)
    {
      v26 = *(a1 + 32);
      v28 = *a1;
      v27 = *(a1 + 16);
      v29 = (a1 + 80);
      v30 = *(a1 + 96);
      *a1 = *v22;
      *(a1 + 16) = v30;
      *(a1 + 32) = *(a1 + 112);
      *v22 = v28;
      *(a1 + 96) = v27;
      *(a1 + 112) = v26;
    }

    else
    {
      v66 = *(a1 + 32);
      v68 = *a1;
      v67 = *(a1 + 16);
      v69 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v69;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v68;
      *(a1 + 56) = v67;
      *(a1 + 72) = v66;
      v70 = (*a3)((a1 + 80), (a1 + 40));
      v29 = (a1 + 80);
      if (v70)
      {
        v71 = *(a1 + 72);
        v72 = *(a1 + 56);
        v73 = *(a1 + 40);
        v74 = *(a1 + 96);
        *(a1 + 40) = *v24;
        *(a1 + 56) = v74;
        *(a1 + 72) = *(a1 + 112);
        *v24 = v73;
        *(a1 + 96) = v72;
        *(a1 + 112) = v71;
      }
    }
  }

  else
  {
    v29 = (a1 + 80);
    if (v25)
    {
      v43 = *(a1 + 72);
      v44 = *(a1 + 56);
      v45 = *(a1 + 40);
      v46 = *(a1 + 96);
      *(a1 + 40) = *v24;
      *(a1 + 56) = v46;
      *(a1 + 72) = *(a1 + 112);
      *v24 = v45;
      *(a1 + 96) = v44;
      *(a1 + 112) = v43;
      v47 = (*a3)((a1 + 40), a1);
      v29 = (a1 + 80);
      if (v47)
      {
        v48 = *(a1 + 32);
        v50 = *a1;
        v49 = *(a1 + 16);
        v51 = *(a1 + 56);
        *a1 = *(a1 + 40);
        *(a1 + 16) = v51;
        *(a1 + 32) = *(a1 + 72);
        *(a1 + 40) = v50;
        *(a1 + 56) = v49;
        *(a1 + 72) = v48;
      }
    }
  }

  v75 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v76 = 0;
  v77 = 0;
  while (1)
  {
    if ((*a3)(v75, v29))
    {
      v80 = *(v75 + 16);
      v102 = *v75;
      v103 = v80;
      v104 = *(v75 + 32);
      v81 = v76;
      do
      {
        v82 = a1 + v81;
        v83 = *(a1 + v81 + 96);
        *(v82 + 120) = *(a1 + v81 + 80);
        *(v82 + 136) = v83;
        *(v82 + 152) = *(a1 + v81 + 112);
        if (v81 == -80)
        {
          v78 = a1;
          goto LABEL_36;
        }

        v81 -= 40;
      }

      while (((*a3)(&v102, (v82 + 40)) & 1) != 0);
      v78 = a1 + v81 + 120;
LABEL_36:
      v79 = v103;
      *v78 = v102;
      *(v78 + 16) = v79;
      *(v78 + 32) = v104;
      if (++v77 == 8)
      {
        return v75 + 40 == a2;
      }
    }

    v29 = v75;
    v76 += 40;
    v75 += 40;
    if (v75 == a2)
    {
      return 1;
    }
  }
}

char *sub_C09388(char *a1, char *a2, char *a3, uint64_t (**a4)(char *, char *))
{
  if (a1 == a2)
  {
    return a3;
  }

  v81 = v4;
  v82 = v5;
  v7 = a2;
  v8 = a1;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  v71 = a2 - a1;
  v72 = a3;
  if (a2 - a1 >= 41 && v71 >= 0x50)
  {
    v56 = (v9 - 2) >> 1;
    v57 = v56;
    do
    {
      if (v56 >= v57)
      {
        v60 = (2 * (v57 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        v61 = &v8[40 * v60];
        if (2 * v57 + 2 < v9 && (*a4)(&v8[40 * v60], v61 + 40))
        {
          v61 += 40;
          v60 = 2 * v57 + 2;
        }

        v62 = &v8[40 * v57];
        if (((*a4)(v61, v62) & 1) == 0)
        {
          v63 = *(v62 + 1);
          v78 = *v62;
          v79 = v63;
          v80 = *(v62 + 4);
          do
          {
            v64 = v61;
            v65 = *v61;
            v66 = *(v61 + 1);
            v62[32] = v61[32];
            *v62 = v65;
            *(v62 + 1) = v66;
            if (v56 < v60)
            {
              break;
            }

            v67 = (2 * v60) | 1;
            v61 = &a1[40 * v67];
            v68 = 2 * v60 + 2;
            if (v68 < v9 && (*a4)(&a1[40 * v67], v61 + 40))
            {
              v61 += 40;
              v67 = v68;
            }

            v62 = v64;
            v60 = v67;
          }

          while (!(*a4)(v61, &v78));
          v58 = v78;
          v59 = v79;
          v64[32] = v80;
          *v64 = v58;
          *(v64 + 1) = v59;
          v8 = a1;
        }
      }

      v35 = v57-- <= 0;
    }

    while (!v35);
  }

  i = v7;
  v11 = v72;
  if (v7 != v72)
  {
    if (v71 < 80)
    {
      i = v7;
      do
      {
        if ((*a4)(i, v8))
        {
          v12 = *(i + 4);
          v13 = *i;
          v14 = *(i + 1);
          v15 = v8[32];
          v16 = *(v8 + 1);
          *i = *v8;
          *(i + 1) = v16;
          i[32] = v15;
          *v8 = v13;
          *(v8 + 1) = v14;
          v8[32] = v12;
        }

        i += 40;
      }

      while (i != v72);
      goto LABEL_28;
    }

    v17 = v8 + 40;
    v69 = v8 + 80;
    v70 = v8 + 40;
    for (i = v7; i != v11; i += 40)
    {
      if ((*a4)(i, v8))
      {
        v20 = *(i + 4);
        v21 = *i;
        v22 = *(i + 1);
        v23 = v8[32];
        v24 = *(v8 + 1);
        *i = *v8;
        *(i + 1) = v24;
        i[32] = v23;
        *v8 = v21;
        *(v8 + 1) = v22;
        v8[32] = v20;
        if (v9 < 3)
        {
          v25 = v17;
          v26 = 1;
          if (((*a4)(v17, v8) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v25 = v69;
          if ((*a4)(v17, v69))
          {
            v26 = 2;
          }

          else
          {
            v25 = v17;
            v26 = 1;
          }

          if (((*a4)(v25, v8) & 1) == 0)
          {
LABEL_21:
            v27 = *(v8 + 1);
            v78 = *v8;
            v79 = v27;
            v80 = *(v8 + 4);
            v28 = v8;
            do
            {
              v30 = v25;
              v31 = *v25;
              v32 = *(v25 + 1);
              v28[32] = v25[32];
              *v28 = v31;
              *(v28 + 1) = v32;
              if (((v9 - 2) >> 1) < v26)
              {
                break;
              }

              v33 = (2 * v26) | 1;
              v25 = &a1[40 * v33];
              if (2 * v26 + 2 < v9 && (*a4)(&a1[40 * v33], v25 + 40))
              {
                v25 += 40;
                v33 = 2 * v26 + 2;
              }

              v29 = (*a4)(v25, &v78);
              v28 = v30;
              v26 = v33;
            }

            while (!v29);
            v18 = v78;
            v19 = v79;
            v30[32] = v80;
            *v30 = v18;
            *(v30 + 1) = v19;
            v11 = v72;
            v8 = a1;
            v17 = v70;
          }
        }
      }
    }
  }

LABEL_28:
  if (v71 >= 41)
  {
    v34 = 0xCCCCCCCCCCCCCCCDLL * (v71 >> 3);
    do
    {
      v73 = v7;
      v36 = 0;
      v75 = *v8;
      v76 = *(v8 + 1);
      v77 = *(v8 + 4);
      do
      {
        v39 = &v8[40 * v36];
        v40 = v39 + 40;
        v41 = (2 * v36) | 1;
        v42 = 2 * v36 + 2;
        if (v42 < v34)
        {
          v43 = v39 + 80;
          if ((*a4)(v39 + 40, v39 + 80))
          {
            v40 = v43;
            v41 = v42;
          }
        }

        v37 = *v40;
        v38 = *(v40 + 1);
        v8[32] = v40[32];
        *v8 = v37;
        *(v8 + 1) = v38;
        v8 = v40;
        v36 = v41;
      }

      while (v41 <= ((v34 - 2) >> 1));
      v7 = v73 - 40;
      if (v40 == v73 - 40)
      {
        v40[32] = v77;
        *v40 = v75;
        *(v40 + 1) = v76;
        v8 = a1;
      }

      else
      {
        v44 = *v7;
        v45 = *(v73 - 24);
        v40[32] = *(v73 - 8);
        *v40 = v44;
        *(v40 + 1) = v45;
        *v7 = v75;
        *(v73 - 24) = v76;
        *(v73 - 8) = v77;
        v8 = a1;
        v46 = v40 - a1 + 40;
        if (v46 >= 41)
        {
          v47 = (-2 - 0x3333333333333333 * (v46 >> 3)) >> 1;
          v48 = &a1[40 * v47];
          if ((*a4)(v48, v40))
          {
            v49 = *v40;
            v50 = *(v40 + 1);
            v80 = *(v40 + 4);
            v78 = v49;
            v79 = v50;
            do
            {
              v51 = v48;
              v52 = *v48;
              v53 = *(v48 + 1);
              v40[32] = v48[32];
              *v40 = v52;
              *(v40 + 1) = v53;
              if (!v47)
              {
                break;
              }

              v47 = (v47 - 1) >> 1;
              v48 = &a1[40 * v47];
              v40 = v51;
            }

            while (((*a4)(v48, &v78) & 1) != 0);
            v54 = v79;
            *v51 = v78;
            *(v51 + 1) = v54;
            v51[32] = v80;
          }
        }
      }

      v35 = v34-- <= 2;
    }

    while (!v35);
  }

  return i;
}

int64x2_t *sub_C098C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2;
  v6 = *(a1 + 16);
  v7 = *a1;
  result = v7;
  if (a4 > (v6 - v7) >> 3)
  {
    if (v7)
    {
      *(a1 + 8) = v7;
      v9 = a4;
      operator delete(v7);
      a4 = v9;
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 61))
    {
      v10 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v10 = a4;
      }

      v11 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v12 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 61))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = *(a1 + 8);
  v14 = (v13 - v7) >> 3;
  if (v14 >= a4)
  {
    if (a2 != a3)
    {
      v30 = a3 - a2 - 60;
      if (v30 < 0xB4)
      {
        goto LABEL_32;
      }

      v31 = v30 / 0x3C + 1;
      v32 = a2;
      result = (v7 + 8 * (v31 & 0xFFFFFFFFFFFFFFCLL));
      v4 = a2 + 60 * (v31 & 0xFFFFFFFFFFFFFFCLL);
      v33 = v7 + 1;
      v34 = v31 & 0xFFFFFFFFFFFFFFCLL;
      do
      {
        v35 = vdupq_n_s64(v32);
        v33[-1] = vaddq_s64(v35, xmmword_22AB6E0);
        *v33 = vaddq_s64(v35, xmmword_22AB6F0);
        v32 += 240;
        v33 += 2;
        v34 -= 4;
      }

      while (v34);
      if (v31 != (v31 & 0xFFFFFFFFFFFFFFCLL))
      {
LABEL_32:
        v36 = v4;
        do
        {
          result->i64[0] = v4;
          result = (result + 8);
          v36 += 60;
          v4 += 60;
        }

        while (v36 != a3);
      }
    }

    *(a1 + 8) = result;
  }

  else
  {
    v15 = a2 + 60 * v14;
    if (v13 != v7)
    {
      v16 = v15 - a2 - 60;
      if (v16 < 0xB4)
      {
        goto LABEL_17;
      }

      v17 = v16 / 0x3C + 1;
      v18 = a2;
      result = (v7 + 8 * (v17 & 0xFFFFFFFFFFFFFFCLL));
      v4 = a2 + 60 * (v17 & 0xFFFFFFFFFFFFFFCLL);
      v19 = v7 + 1;
      v20 = v17 & 0xFFFFFFFFFFFFFFCLL;
      do
      {
        v21 = vdupq_n_s64(v18);
        v19[-1] = vaddq_s64(v21, xmmword_22AB6E0);
        *v19 = vaddq_s64(v21, xmmword_22AB6F0);
        v18 += 240;
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      if (v17 != (v17 & 0xFFFFFFFFFFFFFFCLL))
      {
LABEL_17:
        v22 = v4;
        do
        {
          result->i64[0] = v4;
          result = (result + 8);
          v22 += 60;
          v4 += 60;
        }

        while (v22 != v15);
      }

      v13 = *(a1 + 8);
    }

    v23 = v13;
    if (v15 != a3)
    {
      v24 = a3 - v15 - 60;
      v23 = v13;
      if (v24 < 0xB4)
      {
        goto LABEL_38;
      }

      v25 = v24 / 0x3C + 1;
      v26 = v15;
      v15 += 60 * (v25 & 0xFFFFFFFFFFFFFFCLL);
      v23 = &v13->i64[v25 & 0xFFFFFFFFFFFFFFCLL];
      v27 = v13 + 1;
      v28 = v25 & 0xFFFFFFFFFFFFFFCLL;
      do
      {
        v29 = vdupq_n_s64(v26);
        v27[-1] = vaddq_s64(v29, xmmword_22AB6E0);
        *v27 = vaddq_s64(v29, xmmword_22AB6F0);
        v26 += 240;
        v27 += 2;
        v28 -= 4;
      }

      while (v28);
      if (v25 != (v25 & 0xFFFFFFFFFFFFFFCLL))
      {
LABEL_38:
        do
        {
          *v23++ = v15;
          v15 += 60;
        }

        while (v15 != a3);
      }
    }

    *(a1 + 8) = v23;
  }

  return result;
}

void sub_C09C50(void *a1, int **a2, int **a3)
{
  sub_C09E58(a2, a3, a1);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  operator new();
}

void sub_C09E14(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
    v5 = *v1;
    if (!*v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v1;
    if (!*v1)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 8) = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void sub_C09E58(int **a1@<X0>, int **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v9 = 0.0;
  sub_C09F20(a3, &v9);
  v6 = *a1;
  v7 = *a2;
  if (*a1 != v7)
  {
    v8 = *v6;
    v9 = *v6;
    sub_2B746C(a3, &v9);
    while (++v6 != v7)
    {
      v8 += *v6;
      v9 = v8;
      sub_2B746C(a3, &v9);
    }
  }
}

void sub_C09EFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_C09F20(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1794();
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

      sub_1808();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
  return (v5 - 8);
}

void sub_C0A028(int **a1@<X0>, int **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v9 = 0.0;
  sub_C09F20(a3, &v9);
  v6 = *a1;
  v7 = *a2;
  if (*a1 != v7)
  {
    v8 = *v6;
    v9 = *v6;
    sub_2B746C(a3, &v9);
    while (++v6 != v7)
    {
      v8 += *v6;
      v9 = v8;
      sub_2B746C(a3, &v9);
    }
  }
}

void sub_C0A0CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_C0A0F0(uint64_t *a1@<X0>, int **a2@<X1>, int **a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v22 = 0;
  v23 = 0;
  __p = 0;
  if (v9 != -1)
  {
    if (!((v9 + 1) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  sub_C0A400(a4, v8, &__p);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (*a3 != *a2)
  {
    if ((*a3 - *a2) < 0x7FFFFFFFFFFFFFFDLL)
    {
      operator new();
    }

    sub_1794();
  }

  sub_C0A59C(0, 0, &__p, 0, 1);
  v10 = a1[1];
  if (v10)
  {
    v11 = 0;
    v12 = *a4;
    v13 = *a2;
    do
    {
      v14 = *a1;
      v15 = pow((2 * *a1 - 1), -((v11 + v11 + 1.0) / a1[1] + -1.0));
      if ((v14 + 1) >= 2)
      {
        v16 = **(8 * (1.0 / (v15 + 1.0) * (v14 - 1)));
        v17 = (*(v12 + 24 * v11) + 8);
        v18 = v13;
        do
        {
          v19 = *(v17 - 1);
          *v17 = v19;
          v20 = *v18;
          if (*v18 <= v16)
          {
            if (v20 < v16)
            {
              v19 += 2;
            }

            if (v20 == v16)
            {
              ++v19;
            }

            *v17 = v19;
          }

          ++v17;
          ++v18;
          --v14;
        }

        while (v14);
      }

      ++v11;
    }

    while (v11 != v10);
  }
}

void sub_C0A3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v12)
  {
    operator delete(v12);
    sub_34BE0(v11);
    _Unwind_Resume(a1);
  }

  sub_34BE0(v11);
  _Unwind_Resume(a1);
}

void *sub_C0A400(void *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_C0A570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  *(v9 + 8) = v10;
  sub_35390(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_C0A59C(uint64_t result, int **a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v76 = *(a2 - 1);
      v77 = *v10;
      if (*v76 < **v10)
      {
        *v10 = v76;
        *(a2 - 1) = v77;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v90 = v10 + 1;
      v92 = v10 == a2 || v90 == a2;
      if (a5)
      {
        if (!v92)
        {
          v93 = 0;
          v94 = v10;
          do
          {
            v97 = *v94;
            v96 = v94[1];
            v94 = v90;
            if (*v96 < *v97)
            {
              v98 = v93;
              do
              {
                *(v10 + v98 + 8) = v97;
                if (!v98)
                {
                  v95 = v10;
                  goto LABEL_125;
                }

                v97 = *(v10 + v98 - 8);
                v98 -= 8;
              }

              while (*v96 < *v97);
              v95 = (v10 + v98 + 8);
LABEL_125:
              *v95 = v96;
            }

            v90 = v94 + 1;
            v93 += 8;
          }

          while (v94 + 1 != a2);
        }
      }

      else if (!v92)
      {
        do
        {
          v103 = *v9;
          v102 = *(v9 + 8);
          v9 = v90;
          if (*v102 < *v103)
          {
            do
            {
              *v90 = v103;
              v103 = *(v90 - 2);
              --v90;
            }

            while (*v102 < *v103);
            *v90 = v102;
          }

          v90 = (v9 + 8);
        }

        while ((v9 + 8) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_C0B34C(v10, a2, a2);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *(a2 - 1);
    v14 = *v13;
    if (v11 < 0x81)
    {
      v18 = *v10;
      v19 = **v10;
      v20 = v10[v12];
      if (v19 < *v20)
      {
        if (v14 < v19)
        {
          v10[v12] = v13;
          goto LABEL_37;
        }

        v10[v12] = v18;
        *v10 = v20;
        v33 = *(a2 - 1);
        if (*v33 < *v20)
        {
          *v10 = v33;
LABEL_37:
          *(a2 - 1) = v20;
        }

LABEL_38:
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_39;
      }

      if (v14 >= v19)
      {
        goto LABEL_38;
      }

      *v10 = v13;
      *(a2 - 1) = v18;
      v23 = v10[v12];
      if (**v10 >= *v23)
      {
        goto LABEL_38;
      }

      v10[v12] = *v10;
      *v10 = v23;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_39:
      v34 = *v10;
      v35 = **v10;
LABEL_62:
      v52 = 0;
      do
      {
        v53 = v10[++v52];
      }

      while (*v53 < v35);
      v54 = &v10[v52];
      v55 = a2;
      if (v52 == 1)
      {
        v55 = a2;
        do
        {
          if (v54 >= v55)
          {
            break;
          }

          v57 = *--v55;
        }

        while (*v57 >= v35);
      }

      else
      {
        do
        {
          v56 = *--v55;
        }

        while (*v56 >= v35);
      }

      if (v54 >= v55)
      {
        v64 = v54 - 1;
        if (v54 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v64;
        goto LABEL_80;
      }

      v58 = *v55;
      v59 = &v10[v52];
      v60 = v55;
      do
      {
        *v59 = v58;
        *v60 = v53;
        v61 = *v34;
        do
        {
          v62 = v59[1];
          ++v59;
          v53 = v62;
        }

        while (*v62 < v61);
        do
        {
          v63 = *--v60;
          v58 = v63;
        }

        while (*v63 >= v61);
      }

      while (v59 < v60);
      v64 = v59 - 1;
      if (v59 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v64 = v34;
      if (v54 < v55)
      {
        goto LABEL_83;
      }

      v65 = sub_C0AFFC(v10, v64);
      v10 = v64 + 1;
      result = sub_C0AFFC(v64 + 1, a2);
      if (result)
      {
        a2 = v64;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_83:
        result = sub_C0A59C(v9, v64, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v64 + 1;
      }
    }

    else
    {
      v15 = v10[v12];
      v16 = *v15;
      v17 = *v10;
      if (*v15 >= **v10)
      {
        if (v14 < v16)
        {
          v10[v12] = v13;
          *(a2 - 1) = v15;
          v21 = v10[v12];
          v22 = *v10;
          if (*v21 < **v10)
          {
            *v10 = v21;
            v10[v12] = v22;
          }
        }
      }

      else
      {
        if (v14 >= v16)
        {
          *v10 = v15;
          v10[v12] = v17;
          v24 = *(a2 - 1);
          if (*v24 >= *v17)
          {
            goto LABEL_29;
          }

          v10[v12] = v24;
        }

        else
        {
          *v10 = v13;
        }

        *(a2 - 1) = v17;
      }

LABEL_29:
      v25 = v12 - 1;
      v26 = v10[v12 - 1];
      v27 = *v26;
      v28 = v10[1];
      v29 = *(a2 - 2);
      v30 = *v29;
      if (*v26 >= *v28)
      {
        if (v30 < v27)
        {
          v10[v25] = v29;
          *(a2 - 2) = v26;
          v31 = v10[v25];
          v32 = v10[1];
          if (*v31 < *v32)
          {
            v10[1] = v31;
            v10[v25] = v32;
          }
        }
      }

      else
      {
        if (v30 >= v27)
        {
          v10[1] = v26;
          v10[v25] = v28;
          v36 = *(a2 - 2);
          if (*v36 >= *v28)
          {
            goto LABEL_43;
          }

          v10[v25] = v36;
        }

        else
        {
          v10[1] = v29;
        }

        *(a2 - 2) = v28;
      }

LABEL_43:
      v37 = v12 + 1;
      v38 = v10[v12 + 1];
      v39 = *v38;
      v40 = v10[2];
      v41 = *(a2 - 3);
      v42 = *v41;
      if (*v38 >= *v40)
      {
        if (v42 < v39)
        {
          v10[v37] = v41;
          *(a2 - 3) = v38;
          v43 = v10[v37];
          v44 = v10[2];
          if (*v43 < *v44)
          {
            v10[2] = v43;
            v10[v37] = v44;
          }
        }
      }

      else
      {
        if (v42 >= v39)
        {
          v10[2] = v38;
          v10[v37] = v40;
          v45 = *(a2 - 3);
          if (*v45 >= *v40)
          {
            goto LABEL_52;
          }

          v10[v37] = v45;
        }

        else
        {
          v10[2] = v41;
        }

        *(a2 - 3) = v40;
      }

LABEL_52:
      v46 = v10[v12];
      v47 = v10[v25];
      v48 = *v46;
      v49 = v10[v37];
      v50 = *v49;
      if (*v46 >= *v47)
      {
        if (v50 < v48)
        {
          v10[v12] = v49;
          v10[v37] = v46;
          v46 = v49;
          if (*v49 < *v47)
          {
            v10[v25] = v49;
            v10[v12] = v47;
            v46 = v47;
          }
        }
      }

      else if (v50 >= v48)
      {
        v10[v25] = v46;
        v10[v12] = v47;
        v46 = v47;
        if (*v49 < *v47)
        {
          v10[v12] = v49;
          v10[v37] = v47;
          v46 = v49;
        }
      }

      else
      {
        v10[v25] = v49;
        v10[v37] = v47;
      }

      v51 = *v10;
      *v10 = v46;
      v10[v12] = v51;
      --a4;
      if (a5)
      {
        goto LABEL_39;
      }

LABEL_61:
      v34 = *v10;
      v35 = **v10;
      if (**(v10 - 1) < v35)
      {
        goto LABEL_62;
      }

      if (v35 >= **(a2 - 1))
      {
        v67 = (v10 + 1);
        do
        {
          v10 = v67;
          if (v67 >= a2)
          {
            break;
          }

          v67 += 8;
        }

        while (v35 >= **v10);
      }

      else
      {
        do
        {
          v66 = v10[1];
          ++v10;
        }

        while (v35 >= *v66);
      }

      v68 = a2;
      if (v10 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v35 < *v69);
      }

      if (v10 < v68)
      {
        v70 = *v10;
        v71 = *v68;
        do
        {
          *v10 = v71;
          *v68 = v70;
          v72 = *v34;
          do
          {
            v73 = v10[1];
            ++v10;
            v70 = v73;
          }

          while (v72 >= *v73);
          do
          {
            v74 = *--v68;
            v71 = v74;
          }

          while (v72 < *v74);
        }

        while (v10 < v68);
      }

      v75 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v75;
      }

      a5 = 0;
      *v75 = v34;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v83 = v10 + 1;
      v84 = v10[1];
      v85 = v10 + 2;
      v86 = v10[2];
      v87 = *v84;
      v88 = *v10;
      v89 = *v86;
      if (*v84 >= **v10)
      {
        if (v89 < v87)
        {
          *v83 = v86;
          *v85 = v84;
          if (*v86 < *v88)
          {
            *v10 = v86;
            v101 = v10 + 1;
            goto LABEL_154;
          }

LABEL_155:
          v86 = v84;
        }
      }

      else
      {
        if (v89 < v87)
        {
          *v10 = v86;
          goto LABEL_153;
        }

        *v10 = v84;
        v10[1] = v88;
        if (*v86 < *v88)
        {
          *v83 = v86;
LABEL_153:
          v101 = v10 + 2;
          v84 = v88;
LABEL_154:
          *v101 = v88;
          goto LABEL_155;
        }
      }

      v105 = *(a2 - 1);
      if (*v105 < *v86)
      {
        *v85 = v105;
        *(a2 - 1) = v86;
        v106 = *v85;
        v107 = *v83;
        if (*v106 < *v107)
        {
          v10[1] = v106;
          v10[2] = v107;
          v108 = *v10;
          if (*v106 < **v10)
          {
            *v10 = v106;
            v10[1] = v108;
          }
        }
      }

      return result;
    }

    if (v11 == 5)
    {

      return sub_C0AE5C(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1);
    }

    goto LABEL_10;
  }

  v78 = *v10;
  v79 = v10[1];
  v80 = *v79;
  v81 = *(a2 - 1);
  v82 = *v81;
  if (*v79 >= **v10)
  {
    if (v82 < v80)
    {
      v10[1] = v81;
      *(a2 - 1) = v79;
      v100 = *v10;
      v99 = v10[1];
      if (*v99 < **v10)
      {
        *v10 = v99;
        v10[1] = v100;
      }
    }
  }

  else
  {
    if (v82 >= v80)
    {
      *v10 = v79;
      v10[1] = v78;
      v104 = *(a2 - 1);
      if (*v104 >= *v78)
      {
        return result;
      }

      v10[1] = v104;
    }

    else
    {
      *v10 = v81;
    }

    *(a2 - 1) = v78;
  }

  return result;
}

int **sub_C0AE5C(int **result, int **a2, int **a3, int **a4, int **a5)
{
  v5 = *a2;
  v6 = **a2;
  v7 = *result;
  v8 = *a3;
  v9 = **a3;
  if (v6 < **result)
  {
    if (v9 >= v6)
    {
      *result = v5;
      *a2 = v7;
      v5 = *a3;
      if (**a3 >= *v7)
      {
        goto LABEL_11;
      }

      *a2 = v5;
    }

    else
    {
      *result = v8;
    }

    *a3 = v7;
    v5 = v7;
LABEL_11:
    v11 = *a4;
    if (**a4 >= *v5)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v9 >= v6)
  {
    v5 = *a3;
    v11 = *a4;
    if (**a4 >= **a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *a2 = v8;
    *a3 = v5;
    v10 = *result;
    if (**a2 >= **result)
    {
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v10;
    v5 = *a3;
    v11 = *a4;
    if (**a4 >= **a3)
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  *a3 = v11;
  *a4 = v5;
  v12 = *a2;
  if (**a3 < **a2)
  {
    *a2 = *a3;
    *a3 = v12;
    v13 = *result;
    if (**a2 < **result)
    {
      *result = *a2;
      *a2 = v13;
    }
  }

LABEL_16:
  v14 = *a4;
  if (**a5 < **a4)
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (**a4 < **a3)
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (**a3 < **a2)
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (**a2 < **result)
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL sub_C0AFFC(int **a1, int **a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *v7;
      v9 = *(a2 - 1);
      v10 = *v9;
      if (*v7 >= **a1)
      {
        if (v10 >= v8)
        {
          return 1;
        }

        a1[1] = v9;
        *(a2 - 1) = v7;
        v26 = *a1;
        v25 = a1[1];
        if (*v25 >= **a1)
        {
          return 1;
        }

        *a1 = v25;
        a1[1] = v26;
        return 1;
      }

      else if (v10 >= v8)
      {
        *a1 = v7;
        a1[1] = v6;
        v28 = *(a2 - 1);
        if (*v28 >= *v6)
        {
          return 1;
        }

        a1[1] = v28;
        *(a2 - 1) = v6;
        return 1;
      }

      else
      {
        *a1 = v9;
        *(a2 - 1) = v6;
        return 1;
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_C0AE5C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
      }

LABEL_14:
      v11 = a1 + 2;
      v12 = a1[2];
      v13 = a1 + 1;
      v14 = a1[1];
      v15 = *v14;
      v16 = *a1;
      v17 = *v12;
      if (*v14 >= **a1)
      {
        if (v17 >= v15)
        {
          goto LABEL_35;
        }

        *v13 = v12;
        *v11 = v14;
        if (*v12 >= *v16)
        {
          goto LABEL_35;
        }

        *a1 = v12;
      }

      else
      {
        if (v17 >= v15)
        {
          *a1 = v14;
          a1[1] = v16;
          if (*v12 >= *v16)
          {
LABEL_35:
            v29 = a1 + 3;
            if (a1 + 3 == a2)
            {
              return 1;
            }

            v30 = 0;
            v31 = 0;
            while (1)
            {
              v32 = *v29;
              v33 = *v11;
              if (**v29 < *v33)
              {
                break;
              }

LABEL_44:
              v11 = v29;
              v30 += 8;
              if (++v29 == a2)
              {
                return 1;
              }
            }

            v34 = v30;
            do
            {
              *(a1 + v34 + 24) = v33;
              if (v34 == -16)
              {
                *a1 = v32;
                if (++v31 != 8)
                {
                  goto LABEL_44;
                }

                return v29 + 1 == a2;
              }

              v33 = *(a1 + v34 + 8);
              v34 -= 8;
            }

            while (*v32 < *v33);
            *(a1 + v34 + 24) = v32;
            if (++v31 != 8)
            {
              goto LABEL_44;
            }

            return v29 + 1 == a2;
          }

          *v13 = v12;
        }

        else
        {
          *a1 = v12;
        }

        v13 = a1 + 2;
      }

      *v13 = v16;
      goto LABEL_35;
    }

    v18 = a1 + 1;
    v19 = a1[1];
    v20 = a1 + 2;
    v21 = a1[2];
    v22 = *v19;
    v23 = *a1;
    v24 = *v21;
    if (*v19 >= **a1)
    {
      if (v24 >= v22)
      {
        goto LABEL_51;
      }

      *v18 = v21;
      *v20 = v19;
      if (*v21 >= *v23)
      {
        goto LABEL_50;
      }

      *a1 = v21;
      v27 = a1 + 1;
    }

    else
    {
      if (v24 >= v22)
      {
        *a1 = v19;
        a1[1] = v23;
        if (*v21 >= *v23)
        {
          goto LABEL_51;
        }

        *v18 = v21;
      }

      else
      {
        *a1 = v21;
      }

      v27 = a1 + 2;
      v19 = v23;
    }

    *v27 = v23;
LABEL_50:
    v21 = v19;
LABEL_51:
    v35 = *(a2 - 1);
    if (*v35 >= *v21)
    {
      return 1;
    }

    *v20 = v35;
    *(a2 - 1) = v21;
    v36 = *v20;
    v37 = *v18;
    if (*v36 >= *v37)
    {
      return 1;
    }

    a1[1] = v36;
    a1[2] = v37;
    v38 = *a1;
    if (*v36 >= **a1)
    {
      return 1;
    }

    *a1 = v36;
    a1[1] = v38;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  v4 = *(a2 - 1);
  v5 = *a1;
  if (*v4 >= **a1)
  {
    return 1;
  }

  *a1 = v4;
  *(a2 - 1) = v5;
  return 1;
}

int **sub_C0B34C(int **a1, int **a2, int **a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v6 = (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
        v7 = &a1[v6];
        if (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v3)
        {
          v11 = &a1[v5];
          v12 = *v11;
          if (**v7 >= **v11)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v8 = **v7;
          v9 = *v7[1];
          v10 = v8 < v9;
          if (v8 > v9)
          {
            v9 = **v7;
          }

          if (v10)
          {
            ++v7;
            v6 = 2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2;
          }

          v11 = &a1[v5];
          v12 = *v11;
          if (v9 >= **v11)
          {
LABEL_15:
            v13 = *v7;
            while (1)
            {
              *v11 = v13;
              v11 = v7;
              if (v4 < v6)
              {
                break;
              }

              v17 = (2 * v6) | 1;
              v7 = &a1[v17];
              v6 = 2 * v6 + 2;
              if (v6 < v3)
              {
                v13 = *v7;
                v14 = **v7;
                v15 = *v7[1];
                v16 = v14 < v15;
                if (v14 <= v15)
                {
                  v14 = *v7[1];
                }

                if (v16)
                {
                  v13 = v7[1];
                  ++v7;
                }

                else
                {
                  v6 = v17;
                }

                if (v14 < *v12)
                {
                  break;
                }
              }

              else
              {
                v13 = *v7;
                v6 = v17;
                if (**v7 < *v12)
                {
                  break;
                }
              }
            }

            *v11 = v12;
          }
        }
      }

      v10 = v5-- <= 0;
    }

    while (!v10);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      v19 = *a1;
      i = a2;
      do
      {
        v20 = *i;
        if (**i < *v19)
        {
          *i = v19;
          *a1 = v20;
          v19 = v20;
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_59;
    }

    for (i = a2; i != a3; ++i)
    {
      v21 = *i;
      if (**i < **a1)
      {
        *i = *a1;
        *a1 = v21;
        v22 = *a1[1];
        if (a2 - a1 == 16)
        {
          v23 = a1 + 1;
          v24 = 1;
          if (v22 >= *v21)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v25 = *a1[2];
          v26 = v22 < v25;
          if (v22 <= v25)
          {
            v22 = *a1[2];
          }

          if (v26)
          {
            v23 = a1 + 2;
          }

          else
          {
            v23 = a1 + 1;
          }

          if (v26)
          {
            v24 = 2;
          }

          else
          {
            v24 = 1;
          }

          if (v22 >= *v21)
          {
LABEL_48:
            v27 = *v23;
            v28 = a1;
            while (1)
            {
              *v28 = v27;
              v28 = v23;
              if (((v3 - 2) >> 1) < v24)
              {
                break;
              }

              v32 = (2 * v24) | 1;
              v23 = &a1[v32];
              v24 = 2 * v24 + 2;
              if (v24 < v3)
              {
                v27 = *v23;
                v29 = **v23;
                v30 = *v23[1];
                v31 = v29 < v30;
                if (v29 <= v30)
                {
                  v29 = *v23[1];
                }

                if (v31)
                {
                  v27 = v23[1];
                  ++v23;
                }

                else
                {
                  v24 = v32;
                }

                if (v29 < *v21)
                {
                  break;
                }
              }

              else
              {
                v27 = *v23;
                v24 = v32;
                if (**v23 < *v21)
                {
                  break;
                }
              }
            }

            *v28 = v21;
          }
        }
      }
    }
  }

LABEL_59:
  if (v3 >= 2)
  {
    do
    {
      v34 = 0;
      v35 = *a1;
      v36 = (v3 - 2) >> 1;
      v37 = a1;
      do
      {
        while (1)
        {
          v41 = &v37[v34];
          v40 = (v41 + 1);
          v42 = (2 * v34) | 1;
          v34 = 2 * v34 + 2;
          if (v34 < v3)
          {
            break;
          }

          v34 = v42;
          *v37 = *v40;
          v37 = v41 + 1;
          if (v42 > v36)
          {
            goto LABEL_71;
          }
        }

        v39 = v41[2];
        v38 = (v41 + 2);
        if (**(v38 - 1) >= *v39)
        {
          v34 = v42;
        }

        else
        {
          v40 = v38;
        }

        *v37 = *v40;
        v37 = v40;
      }

      while (v34 <= v36);
LABEL_71:
      if (v40 == --a2)
      {
        *v40 = v35;
      }

      else
      {
        *v40 = *a2;
        *a2 = v35;
        v43 = (v40 - a1 + 8) >> 3;
        v10 = v43 < 2;
        v44 = v43 - 2;
        if (!v10)
        {
          v45 = v44 >> 1;
          v46 = &a1[v45];
          v47 = *v46;
          v48 = *v40;
          if (**v46 < **v40)
          {
            do
            {
              *v40 = v47;
              v40 = v46;
              if (!v45)
              {
                break;
              }

              v45 = (v45 - 1) >> 1;
              v46 = &a1[v45];
              v47 = *v46;
            }

            while (**v46 < *v48);
            *v40 = v48;
          }
        }
      }

      v10 = v3-- <= 2;
    }

    while (!v10);
  }

  return i;
}

uint64_t sub_C0B720(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      v5 = *(a1 + 32);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_C0B798(uint64_t result, uint64_t *a2, uint64_t (**a3)(void), uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        result = (*a3)(*(a2 - 1), *v10);
        if (result)
        {
          v75 = *v10;
          *v10 = *(a2 - 1);
LABEL_107:
          *(a2 - 1) = v75;
          return result;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return sub_C0C098(v10, v10 + 1, v10 + 2, a2 - 1, a3);
    }

    if (v11 == 5)
    {
      sub_C0C098(v10, v10 + 1, v10 + 2, v10 + 3, a3);
      result = (*a3)(*(a2 - 1), v10[3]);
      if (!result)
      {
        return result;
      }

      v70 = v10[3];
      v10[3] = *(a2 - 1);
      *(a2 - 1) = v70;
      result = (*a3)(v10[3], v10[2]);
      if (!result)
      {
        return result;
      }

      v71 = v10[2];
      v10[2] = v10[3];
      v10[3] = v71;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v73 = v10[1];
      v72 = v10[2];
      v74 = *v10;
      v10[1] = v72;
      v10[2] = v73;
      result = (*a3)(v72, v74);
      goto LABEL_137;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v78 = v10 + 1;
      v80 = v10 == a2 || v78 == a2;
      if (a5)
      {
        if (!v80)
        {
          v81 = 0;
          v82 = v10;
          do
          {
            v85 = *v82;
            v84 = v82[1];
            v82 = v78;
            result = (*a3)(v84, v85);
            if (result)
            {
              v86 = *v82;
              v87 = v81;
              do
              {
                *(v9 + v87 + 8) = *(v9 + v87);
                if (!v87)
                {
                  v83 = v9;
                  goto LABEL_124;
                }

                result = (*a3)(v86, *(v9 + v87 - 8));
                v87 -= 8;
              }

              while ((result & 1) != 0);
              v83 = (v9 + v87 + 8);
LABEL_124:
              *v83 = v86;
            }

            v78 = v82 + 1;
            v81 += 8;
          }

          while (v82 + 1 != a2);
        }
      }

      else if (!v80)
      {
        do
        {
          v91 = *v9;
          v90 = v9[1];
          v9 = v78;
          result = (*a3)(v90, v91);
          if (result)
          {
            v92 = *v9;
            v93 = v9;
            do
            {
              v94 = v93;
              v95 = *--v93;
              *v94 = v95;
              result = (*a3)(v92, *(v94 - 2));
            }

            while ((result & 1) != 0);
            *v93 = v92;
          }

          v78 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_C0C500(v10, a2, a2, a3);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      v17 = v13(*v9, v9[v12]);
      v18 = (*a3)(*(a2 - 1), *v9);
      if (v17)
      {
        v19 = v9[v12];
        if (!v18)
        {
          v9[v12] = *v9;
          *v9 = v19;
          if ((*a3)(*(a2 - 1)))
          {
            v31 = *v9;
            *v9 = *(a2 - 1);
            *(a2 - 1) = v31;
          }

LABEL_37:
          --a4;
          if ((a5 & 1) == 0)
          {
            goto LABEL_58;
          }

          goto LABEL_38;
        }

        v9[v12] = *(a2 - 1);
        *(a2 - 1) = v19;
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (!v18)
        {
          goto LABEL_37;
        }

        v22 = *v9;
        *v9 = *(a2 - 1);
        *(a2 - 1) = v22;
        if (!(*a3)(*v9, v9[v12]))
        {
          goto LABEL_37;
        }

        v23 = v9[v12];
        v9[v12] = *v9;
        *v9 = v23;
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_58;
        }
      }

LABEL_38:
      v32 = *v9;
LABEL_59:
      v49 = 0;
      do
      {
        v50 = (*a3)(v9[++v49], v32);
      }

      while ((v50 & 1) != 0);
      v51 = &v9[v49];
      v52 = a2;
      if (v49 == 1)
      {
        v52 = a2;
        do
        {
          if (v51 >= v52)
          {
            break;
          }

          v54 = *--v52;
        }

        while (((*a3)(v54, v32) & 1) == 0);
      }

      else
      {
        do
        {
          v53 = *--v52;
        }

        while (!(*a3)(v53, v32));
      }

      if (v51 >= v52)
      {
        v60 = v51 - 1;
        if (v51 - 1 == v9)
        {
          goto LABEL_77;
        }

LABEL_76:
        *v9 = *v60;
        goto LABEL_77;
      }

      v55 = &v9[v49];
      v56 = v52;
      do
      {
        v57 = *v55;
        *v55 = *v56;
        *v56 = v57;
        do
        {
          v58 = v55[1];
          ++v55;
        }

        while (((*a3)(v58, v32) & 1) != 0);
        do
        {
          v59 = *--v56;
        }

        while (!(*a3)(v59, v32));
      }

      while (v55 < v56);
      v60 = v55 - 1;
      if (v60 != v9)
      {
        goto LABEL_76;
      }

LABEL_77:
      *v60 = v32;
      if (v51 < v52)
      {
        goto LABEL_80;
      }

      v61 = sub_C0C1EC(v9, v60, a3);
      v10 = v60 + 1;
      result = sub_C0C1EC(v60 + 1, a2, a3);
      if (result)
      {
        a2 = v60;
        if (!v61)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v61)
      {
LABEL_80:
        result = sub_C0B798(v9, v60, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v60 + 1;
      }
    }

    else
    {
      v14 = v13(v9[v12], *v9);
      v15 = (*a3)(*(a2 - 1), v9[v12]);
      if (v14)
      {
        v16 = *v9;
        if (v15)
        {
          *v9 = *(a2 - 1);
          *(a2 - 1) = v16;
        }

        else
        {
          *v9 = v9[v12];
          v9[v12] = v16;
          if ((*a3)(*(a2 - 1)))
          {
            v24 = v9[v12];
            v9[v12] = *(a2 - 1);
            *(a2 - 1) = v24;
          }
        }
      }

      else if (v15)
      {
        v20 = v9[v12];
        v9[v12] = *(a2 - 1);
        *(a2 - 1) = v20;
        if ((*a3)(v9[v12], *v9))
        {
          v21 = *v9;
          *v9 = v9[v12];
          v9[v12] = v21;
        }
      }

      v25 = v12 - 1;
      v26 = (*a3)(v9[v12 - 1], v9[1]);
      v27 = (*a3)(*(a2 - 2), v9[v12 - 1]);
      if (v26)
      {
        v28 = v9[1];
        if (v27)
        {
          v9[1] = *(a2 - 2);
          *(a2 - 2) = v28;
        }

        else
        {
          v9[1] = v9[v25];
          v9[v25] = v28;
          if ((*a3)(*(a2 - 2)))
          {
            v33 = v9[v25];
            v9[v25] = *(a2 - 2);
            *(a2 - 2) = v33;
          }
        }
      }

      else if (v27)
      {
        v29 = v9[v25];
        v9[v25] = *(a2 - 2);
        *(a2 - 2) = v29;
        if ((*a3)(v9[v25], v9[1]))
        {
          v30 = v9[1];
          v9[1] = v9[v25];
          v9[v25] = v30;
        }
      }

      v34 = v12 + 1;
      v35 = (*a3)(v9[v12 + 1], v9[2]);
      v36 = (*a3)(*(a2 - 3), v9[v12 + 1]);
      if (v35)
      {
        v37 = v9[2];
        if (v36)
        {
          v9[2] = *(a2 - 3);
          *(a2 - 3) = v37;
        }

        else
        {
          v9[2] = v9[v34];
          v9[v34] = v37;
          if ((*a3)(*(a2 - 3)))
          {
            v40 = v9[v34];
            v9[v34] = *(a2 - 3);
            *(a2 - 3) = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v9[v34];
        v9[v34] = *(a2 - 3);
        *(a2 - 3) = v38;
        if ((*a3)(v9[v34], v9[2]))
        {
          v39 = v9[2];
          v9[2] = v9[v34];
          v9[v34] = v39;
        }
      }

      v41 = (*a3)(v9[v12], v9[v25]);
      v42 = (*a3)(v9[v34], v9[v12]);
      if (v41)
      {
        v43 = v9[v25];
        if (v42)
        {
          v9[v25] = v9[v34];
          v9[v34] = v43;
        }

        else
        {
          v9[v25] = v9[v12];
          v9[v12] = v43;
          if ((*a3)(v9[v34]))
          {
            v46 = v9[v12];
            v9[v12] = v9[v34];
            v9[v34] = v46;
          }
        }
      }

      else if (v42)
      {
        v44 = v9[v12];
        v9[v12] = v9[v34];
        v9[v34] = v44;
        if ((*a3)())
        {
          v45 = v9[v25];
          v9[v25] = v9[v12];
          v9[v12] = v45;
        }
      }

      v47 = *v9;
      *v9 = v9[v12];
      v9[v12] = v47;
      --a4;
      if (a5)
      {
        goto LABEL_38;
      }

LABEL_58:
      v48 = (*a3)(*(v9 - 1), *v9);
      v32 = *v9;
      if (v48)
      {
        goto LABEL_59;
      }

      result = (*a3)(*v9, *(a2 - 1));
      if (result)
      {
        v10 = v9;
        do
        {
          v62 = v10[1];
          ++v10;
          result = (*a3)(v32, v62);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v63 = (v9 + 1);
        do
        {
          v10 = v63;
          if (v63 >= a2)
          {
            break;
          }

          v63 += 8;
          result = (*a3)(v32, *v10);
        }

        while (!result);
      }

      v64 = a2;
      if (v10 < a2)
      {
        v64 = a2;
        do
        {
          v65 = *--v64;
          result = (*a3)(v32, v65);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v64)
      {
        v66 = *v10;
        *v10 = *v64;
        *v64 = v66;
        do
        {
          v67 = v10[1];
          ++v10;
        }

        while (!(*a3)(v32, v67));
        do
        {
          v68 = *--v64;
          result = (*a3)(v32, v68);
        }

        while ((result & 1) != 0);
      }

      v69 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v69;
      }

      a5 = 0;
      *v69 = v32;
    }
  }

  v76 = (*a3)(v10[1], *v10);
  result = (*a3)(*(a2 - 1), v10[1]);
  if ((v76 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v88 = v10[1];
    v10[1] = *(a2 - 1);
    *(a2 - 1) = v88;
    result = (*a3)(v10[1], *v10);
LABEL_137:
    if (result)
    {
      v89 = *v10;
      *v10 = v10[1];
      v10[1] = v89;
    }

    return result;
  }

  v77 = *v10;
  if (result)
  {
    *v10 = *(a2 - 1);
    *(a2 - 1) = v77;
  }

  else
  {
    *v10 = v10[1];
    v10[1] = v77;
    result = (*a3)(*(a2 - 1));
    if (result)
    {
      v75 = v10[1];
      v10[1] = *(a2 - 1);
      goto LABEL_107;
    }
  }

  return result;
}

uint64_t sub_C0C098(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL sub_C0C1EC(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v16;
            if ((*a3)(*(a2 - 1)))
            {
              v25 = a1[1];
              a1[1] = *(a2 - 1);
              *(a2 - 1) = v25;
            }
          }

          return 1;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        sub_C0C098(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_C0C098(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_16;
    }

    if (v13)
    {
      v22 = *a1;
      *a1 = a1[1];
      a1[1] = v22;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_16:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v26 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v26))
      {
        v27 = a1[1];
        a1[1] = a1[2];
        a1[2] = v27;
      }
    }
  }

  else if (v19)
  {
    v23 = a1[1];
    a1[1] = a1[2];
    a1[2] = v23;
    if ((*a3)())
    {
      v24 = *a1;
      *a1 = a1[1];
      a1[1] = v24;
    }
  }

  v28 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (!(*a3)(*v28, *v18))
  {
LABEL_40:
    v18 = v28;
    v29 += 8;
    if (++v28 == a2)
    {
      return 1;
    }
  }

  v31 = *v28;
  v32 = v29;
  do
  {
    v33 = a1 + v32;
    *(a1 + v32 + 24) = *(a1 + v32 + 16);
    if (v32 == -16)
    {
      *a1 = v31;
      if (++v30 != 8)
      {
        goto LABEL_40;
      }

      return v28 + 1 == a2;
    }

    v32 -= 8;
  }

  while (((*a3)(v31, *(v33 + 1)) & 1) != 0);
  *(a1 + v32 + 24) = v31;
  if (++v30 != 8)
  {
    goto LABEL_40;
  }

  return v28 + 1 == a2;
}

char *sub_C0C500(char *a1, char *a2, char *a3, unsigned int (**a4)(void, uint64_t))
{
  if (a1 == a2)
  {
    return a3;
  }

  v53 = a2;
  v49 = a3;
  v50 = a2 - a1;
  v6 = (a2 - a1) >> 3;
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    v8 = v7 >> 1;
    v9 = v7 >> 1;
    do
    {
      if (v8 >= v9)
      {
        v11 = (2 * (v9 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
        v12 = &a1[8 * v11];
        if (2 * (v9 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v6 && (*a4)(*v12, *(v12 + 1)))
        {
          v12 += 8;
          v11 = 2 * (v9 & 0x1FFFFFFFFFFFFFFFLL) + 2;
        }

        v13 = &a1[8 * v9];
        if (((*a4)(*v12, *v13) & 1) == 0)
        {
          v14 = *v13;
          do
          {
            v15 = v13;
            v13 = v12;
            *v15 = *v12;
            if (v8 < v11)
            {
              break;
            }

            v16 = (2 * v11) | 1;
            v12 = &a1[8 * v16];
            v17 = 2 * v11 + 2;
            if (v17 < v6 && (*a4)(*v12, *(v12 + 1)))
            {
              v12 += 8;
              v16 = v17;
            }

            v11 = v16;
          }

          while (!(*a4)(*v12, v14));
          *v13 = v14;
        }
      }

      v10 = v9-- <= 0;
    }

    while (!v10);
  }

  i = v53;
  v19 = v49;
  if (v53 != v49)
  {
    if (v6 < 2)
    {
      i = v53;
      do
      {
        if ((*a4)(*i, *a1))
        {
          v20 = *i;
          *i = *a1;
          *a1 = v20;
        }

        i += 8;
      }

      while (i != v49);
      goto LABEL_45;
    }

    v21 = a1 + 8;
    for (i = v53; i != v19; i += 8)
    {
      if ((*a4)(*i, *a1))
      {
        v22 = *i;
        *i = *a1;
        *a1 = v22;
        if (v50 == 16)
        {
          v23 = v21;
          v24 = 1;
          if (((*a4)(*v21) & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v25 = (*a4)(*(a1 + 1), *(a1 + 2));
          if (v25)
          {
            v23 = a1 + 16;
          }

          else
          {
            v23 = v21;
          }

          if (v25)
          {
            v24 = 2;
          }

          else
          {
            v24 = 1;
          }

          if (((*a4)(*v23, *a1) & 1) == 0)
          {
LABEL_38:
            v51 = i;
            v26 = *a1;
            v27 = a1;
            do
            {
              v28 = v27;
              v27 = v23;
              *v28 = *v23;
              if (((v6 - 2) >> 1) < v24)
              {
                break;
              }

              v29 = (2 * v24) | 1;
              v23 = &a1[8 * v29];
              v30 = 2 * v24 + 2;
              if (v30 < v6 && (*a4)(*v23, *(v23 + 1)))
              {
                v23 += 8;
                v29 = v30;
              }

              v24 = v29;
            }

            while (!(*a4)(*v23, v26));
            *v27 = v26;
            v21 = a1 + 8;
            v19 = v49;
            i = v51;
          }
        }
      }
    }
  }

LABEL_45:
  if (v6 >= 2)
  {
    do
    {
      v32 = 0;
      v52 = *a1;
      v33 = (v6 - 2) >> 1;
      v34 = a1;
      do
      {
        while (1)
        {
          v38 = &v34[8 * v32];
          v37 = (v38 + 8);
          v39 = (2 * v32) | 1;
          v40 = 2 * v32 + 2;
          if (v40 < v6)
          {
            break;
          }

          v32 = (2 * v32) | 1;
          *v34 = *v37;
          v34 = v38 + 8;
          if (v39 > v33)
          {
            goto LABEL_57;
          }
        }

        v36 = *(v38 + 2);
        v35 = (v38 + 16);
        if ((*a4)(*(v35 - 1), v36))
        {
          v37 = v35;
          v32 = v40;
        }

        else
        {
          v32 = v39;
        }

        *v34 = *v37;
        v34 = v37;
      }

      while (v32 <= v33);
LABEL_57:
      v41 = (v53 - 8);
      v42 = v37 == (v53 - 8);
      v53 -= 8;
      if (v42)
      {
        *v37 = v52;
      }

      else
      {
        *v37 = *v41;
        *v41 = v52;
        v43 = (v37 - a1 + 8) >> 3;
        v10 = v43 < 2;
        v44 = v43 - 2;
        if (!v10)
        {
          v45 = v44 >> 1;
          v46 = &a1[8 * (v44 >> 1)];
          if ((*a4)(*v46, *v37))
          {
            v47 = *v37;
            do
            {
              v48 = v37;
              v37 = v46;
              *v48 = *v46;
              if (!v45)
              {
                break;
              }

              v45 = (v45 - 1) >> 1;
              v46 = &a1[8 * v45];
            }

            while (((*a4)(*v46, v47) & 1) != 0);
            *v37 = v47;
          }
        }
      }

      v10 = v6-- <= 2;
    }

    while (!v10);
  }

  return i;
}

uint64_t *sub_C0C954(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v7 = *v2;
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *v2) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      sub_1794();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v12 = result;
    v13 = 8 * ((v3 - *v2) >> 3);
    v14 = a2[1];
    *v13 = *a2;
    *(v13 + 16) = v14;
    *(v13 + 32) = *(a2 + 4);
    v15 = 40 * v8 + 40;
    v16 = 40 * v8 - (v3 - v7);
    memcpy((v13 - (v3 - v7)), v7, v3 - v7);
    *v2 = v16;
    *(v2 + 8) = v15;
    *(v2 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }

    result = v12;
    *(v2 + 8) = v15;
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    *(v2 + 8) = v3 + 40;
  }

  return result;
}

__n128 sub_C0CAAC(int **a1, int **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = (a2 - 2);
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      break;
    }

    switch(v13)
    {
      case 3uLL:

        sub_C0CF68(v10, v10 + 2, a2 - 2);
        return result;
      case 4uLL:

        result.n128_u64[0] = sub_C0D2AC(v10, v10 + 2, v10 + 4, a2 - 4).n128_u64[0];
        return result;
      case 5uLL:

        result.n128_u64[0] = sub_C0D4E8(v10, v10 + 2, v10 + 4, v10 + 6, a2 - 4).n128_u64[0];
        return result;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        sub_C0D7D8(v10, a2);
      }

      else
      {

        sub_C0DA0C(v10, a2);
      }

      return result;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_C0E6F0(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v10[2 * (v13 >> 1)];
    if (v13 < 0x81)
    {
      sub_C0CF68(&v10[2 * (v13 >> 1)], v10, a2 - 2);
      if (a5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_C0CF68(v10, &v10[2 * (v13 >> 1)], a2 - 2);
      v16 = v10 + 2;
      v17 = 2 * v14;
      v18 = &a1[2 * v14 - 2];
      sub_C0CF68(a1 + 4, v18, a2 - 4);
      sub_C0CF68(a1 + 8, &v16[v17], a2 - 6);
      sub_C0CF68(v18, v15, &v16[v17]);
      v38 = *a1;
      v19 = *v15;
      *(a1 + 2) = *(v15 + 2);
      *a1 = v19;
      *(v15 + 2) = DWORD2(v38);
      *v15 = v38;
      if (a5)
      {
        goto LABEL_29;
      }
    }

    v20 = *(a1 - 2);
    if (v20)
    {
      if (v20 == 1)
      {
        v21 = **(a1 - 2);
        v22 = *(a1 + 2);
        if (!v22)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v21 = 0x7FFFFFFF;
        v22 = *(a1 + 2);
        if (!v22)
        {
LABEL_24:
          v23 = (*a1)[1];
          goto LABEL_26;
        }
      }
    }

    else
    {
      v21 = (*(a1 - 2))[1];
      v22 = *(a1 + 2);
      if (!v22)
      {
        goto LABEL_24;
      }
    }

    if (v22 == 1)
    {
      v23 = **a1;
    }

    else
    {
      v23 = 0x7FFFFFFF;
    }

LABEL_26:
    v24 = v20 < v22;
    v25 = v21 == v23;
    v26 = v21 < v23;
    if (!v25)
    {
      v24 = v26;
    }

    if (!v24)
    {
      v10 = sub_C0DC04(a1, a2);
      goto LABEL_34;
    }

LABEL_29:
    v27 = sub_C0DFC4(a1, a2);
    if ((v28 & 1) == 0)
    {
      goto LABEL_32;
    }

    v29 = sub_C0E2B4(a1, v27);
    v10 = v27 + 2;
    if (sub_C0E2B4(v27 + 2, a2))
    {
      a4 = -v12;
      a2 = v27;
      if (v29)
      {
        return result;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v29)
    {
LABEL_32:
      result.n128_u64[0] = sub_C0CAAC(a1, v27, a3, -v12, a5 & 1).n128_u64[0];
      v10 = v27 + 2;
LABEL_34:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v13 < 2)
  {
    return result;
  }

  if (v13 != 2)
  {
    goto LABEL_10;
  }

  v31 = *(a2 - 2);
  if (v31)
  {
    if (v31 == 1)
    {
      v32 = **v9;
      v33 = *(v10 + 2);
      if (!v33)
      {
LABEL_65:
        v34 = (*v10)[1];
        goto LABEL_67;
      }
    }

    else
    {
      v32 = 0x7FFFFFFF;
      v33 = *(v10 + 2);
      if (!v33)
      {
        goto LABEL_65;
      }
    }
  }

  else
  {
    v32 = *(*v9 + 4);
    v33 = *(v10 + 2);
    if (!v33)
    {
      goto LABEL_65;
    }
  }

  if (v33 == 1)
  {
    v34 = **v10;
  }

  else
  {
    v34 = 0x7FFFFFFF;
  }

LABEL_67:
  v35 = v31 < v33;
  v25 = v32 == v34;
  v36 = v32 < v34;
  if (!v25)
  {
    v35 = v36;
  }

  if (v35)
  {
    result = *v10;
    v39 = *v10;
    v37 = *v9;
    *(v10 + 2) = *(a2 - 2);
    *v10 = v37;
    *v9 = v39;
    *(a2 - 2) = DWORD2(v39);
  }

  return result;
}

uint64_t sub_C0CF68(_DWORD *a1, _DWORD **a2, _DWORD **a3)
{
  v3 = *(a2 + 2);
  if (!v3)
  {
    v4 = (*a2)[1];
    v5 = a1[2];
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v3 != 1)
  {
    v4 = 0x7FFFFFFF;
    v5 = a1[2];
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = *(*a1 + 4);
    goto LABEL_11;
  }

  v4 = **a2;
  v5 = a1[2];
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (v5 == 1)
  {
    v6 = **a1;
  }

  else
  {
    v6 = 0x7FFFFFFF;
  }

LABEL_11:
  v7 = v3 < v5;
  v8 = v4 == v6;
  v9 = v4 < v6;
  if (!v8)
  {
    v7 = v9;
  }

  v10 = *(a3 + 2);
  if (v7)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        v11 = **a3;
        if (!v3)
        {
          goto LABEL_29;
        }

LABEL_23:
        if (v3 == 1)
        {
          v13 = **a2;
        }

        else
        {
          v13 = 0x7FFFFFFF;
        }

LABEL_33:
        v15 = v10 < v3;
        if (v11 != v13)
        {
          v15 = v11 < v13;
        }

        if (v15)
        {
          v35 = *a1;
          v16 = *(a3 + 2);
          *a1 = *a3;
          a1[2] = v16;
          goto LABEL_65;
        }

        v36 = *a1;
        v17 = *(a2 + 2);
        *a1 = *a2;
        a1[2] = v17;
        *a2 = v36;
        *(a2 + 2) = DWORD2(v36);
        v18 = *(a3 + 2);
        if (v18)
        {
          if (v18 == 1)
          {
            v19 = **a3;
            v20 = *(a2 + 2);
            if (!v20)
            {
              goto LABEL_57;
            }

LABEL_51:
            if (v20 == 1)
            {
              v27 = **a2;
            }

            else
            {
              v27 = 0x7FFFFFFF;
            }

LABEL_61:
            v29 = v18 < v20;
            v8 = v19 == v27;
            v30 = v19 < v27;
            if (!v8)
            {
              v29 = v30;
            }

            if (!v29)
            {
              return 1;
            }

            v35 = *a2;
            v31 = *(a3 + 2);
            *a2 = *a3;
            *(a2 + 2) = v31;
LABEL_65:
            *a3 = v35;
            *(a3 + 2) = DWORD2(v35);
            return 1;
          }

          v19 = 0x7FFFFFFF;
          v20 = *(a2 + 2);
          if (v20)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v19 = (*a3)[1];
          v20 = *(a2 + 2);
          if (v20)
          {
            goto LABEL_51;
          }
        }

LABEL_57:
        v27 = (*a2)[1];
        goto LABEL_61;
      }

      v11 = 0x7FFFFFFF;
      if (v3)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = (*a3)[1];
      if (v3)
      {
        goto LABEL_23;
      }
    }

LABEL_29:
    v13 = (*a2)[1];
    goto LABEL_33;
  }

  if (!v10)
  {
    v12 = (*a3)[1];
    if (v3)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  if (v10 != 1)
  {
    v12 = 0x7FFFFFFF;
    if (v3)
    {
      goto LABEL_26;
    }

LABEL_31:
    v14 = (*a2)[1];
    goto LABEL_42;
  }

  v12 = **a3;
  if (!v3)
  {
    goto LABEL_31;
  }

LABEL_26:
  if (v3 == 1)
  {
    v14 = **a2;
  }

  else
  {
    v14 = 0x7FFFFFFF;
  }

LABEL_42:
  v21 = v10 < v3;
  if (v12 != v14)
  {
    v21 = v12 < v14;
  }

  if (!v21)
  {
    return 0;
  }

  v37 = *a2;
  v22 = *(a3 + 2);
  *a2 = *a3;
  *(a2 + 2) = v22;
  *a3 = v37;
  *(a3 + 2) = DWORD2(v37);
  v23 = *(a2 + 2);
  if (!v23)
  {
    v24 = (*a2)[1];
    v25 = a1[2];
    if (v25)
    {
      goto LABEL_54;
    }

    goto LABEL_59;
  }

  if (v23 != 1)
  {
    v24 = 0x7FFFFFFF;
    v25 = a1[2];
    if (v25)
    {
      goto LABEL_54;
    }

LABEL_59:
    v28 = *(*a1 + 4);
    goto LABEL_68;
  }

  v24 = **a2;
  v25 = a1[2];
  if (!v25)
  {
    goto LABEL_59;
  }

LABEL_54:
  if (v25 == 1)
  {
    v28 = **a1;
  }

  else
  {
    v28 = 0x7FFFFFFF;
  }

LABEL_68:
  v32 = v23 < v25;
  v8 = v24 == v28;
  v33 = v24 < v28;
  if (!v8)
  {
    v32 = v33;
  }

  if (!v32)
  {
    return 1;
  }

  v38 = *a1;
  v34 = *(a2 + 2);
  *a1 = *a2;
  a1[2] = v34;
  *a2 = v38;
  *(a2 + 2) = DWORD2(v38);
  return 1;
}

__n128 sub_C0D2AC(_DWORD *a1, _DWORD **a2, _DWORD **a3, _DWORD *a4)
{
  sub_C0CF68(a1, a2, a3);
  v9 = a4[2];
  if (!v9)
  {
    v10 = *(*a4 + 4);
    v11 = *(a3 + 2);
    if (v11)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v9 != 1)
  {
    v10 = 0x7FFFFFFF;
    v11 = *(a3 + 2);
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_9:
    v12 = (*a3)[1];
    goto LABEL_11;
  }

  v10 = **a4;
  v11 = *(a3 + 2);
  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (v11 == 1)
  {
    v12 = **a3;
  }

  else
  {
    v12 = 0x7FFFFFFF;
  }

LABEL_11:
  v13 = v9 < v11;
  v14 = v10 == v12;
  v15 = v10 < v12;
  if (!v14)
  {
    v13 = v15;
  }

  if (!v13)
  {
    return result;
  }

  result = *a3;
  v31 = *a3;
  v16 = a4[2];
  *a3 = *a4;
  *(a3 + 2) = v16;
  *a4 = v31;
  a4[2] = DWORD2(v31);
  v17 = *(a3 + 2);
  if (!v17)
  {
    v18 = (*a3)[1];
    v19 = *(a2 + 2);
    if (v19)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (v17 != 1)
  {
    v18 = 0x7FFFFFFF;
    v19 = *(a2 + 2);
    if (v19)
    {
      goto LABEL_19;
    }

LABEL_22:
    v20 = (*a2)[1];
    goto LABEL_24;
  }

  v18 = **a3;
  v19 = *(a2 + 2);
  if (!v19)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (v19 == 1)
  {
    v20 = **a2;
  }

  else
  {
    v20 = 0x7FFFFFFF;
  }

LABEL_24:
  v21 = v17 < v19;
  v14 = v18 == v20;
  v22 = v18 < v20;
  if (!v14)
  {
    v21 = v22;
  }

  if (v21)
  {
    result = *a2;
    v32 = *a2;
    v23 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v23;
    *a3 = v32;
    *(a3 + 2) = DWORD2(v32);
    v24 = *(a2 + 2);
    if (v24)
    {
      if (v24 == 1)
      {
        v25 = **a2;
        v26 = a1[2];
        if (!v26)
        {
          goto LABEL_35;
        }

LABEL_32:
        if (v26 == 1)
        {
          v27 = **a1;
        }

        else
        {
          v27 = 0x7FFFFFFF;
        }

        goto LABEL_37;
      }

      v25 = 0x7FFFFFFF;
      v26 = a1[2];
      if (v26)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v25 = (*a2)[1];
      v26 = a1[2];
      if (v26)
      {
        goto LABEL_32;
      }
    }

LABEL_35:
    v27 = *(*a1 + 4);
LABEL_37:
    v28 = v24 < v26;
    v14 = v25 == v27;
    v29 = v25 < v27;
    if (!v14)
    {
      v28 = v29;
    }

    if (v28)
    {
      result = *a1;
      v33 = *a1;
      v30 = *(a2 + 2);
      *a1 = *a2;
      a1[2] = v30;
      *a2 = v33;
      *(a2 + 2) = DWORD2(v33);
    }
  }

  return result;
}

__n128 sub_C0D4E8(_DWORD *a1, _DWORD **a2, _DWORD **a3, _DWORD **a4, _DWORD *a5)
{
  result.n128_u64[0] = sub_C0D2AC(a1, a2, a3, a4).n128_u64[0];
  v11 = a5[2];
  if (!v11)
  {
    v12 = *(*a5 + 4);
    v13 = *(a4 + 2);
    if (v13)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v11 != 1)
  {
    v12 = 0x7FFFFFFF;
    v13 = *(a4 + 2);
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_9:
    v14 = (*a4)[1];
    goto LABEL_11;
  }

  v12 = **a5;
  v13 = *(a4 + 2);
  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (v13 == 1)
  {
    v14 = **a4;
  }

  else
  {
    v14 = 0x7FFFFFFF;
  }

LABEL_11:
  v15 = v11 < v13;
  v16 = v12 == v14;
  v17 = v12 < v14;
  if (!v16)
  {
    v15 = v17;
  }

  if (!v15)
  {
    return result;
  }

  result = *a4;
  v40 = *a4;
  v18 = a5[2];
  *a4 = *a5;
  *(a4 + 2) = v18;
  *a5 = v40;
  a5[2] = DWORD2(v40);
  v19 = *(a4 + 2);
  if (!v19)
  {
    v20 = (*a4)[1];
    v21 = *(a3 + 2);
    if (v21)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (v19 != 1)
  {
    v20 = 0x7FFFFFFF;
    v21 = *(a3 + 2);
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_22:
    v22 = (*a3)[1];
    goto LABEL_24;
  }

  v20 = **a4;
  v21 = *(a3 + 2);
  if (!v21)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (v21 == 1)
  {
    v22 = **a3;
  }

  else
  {
    v22 = 0x7FFFFFFF;
  }

LABEL_24:
  v23 = v19 < v21;
  v16 = v20 == v22;
  v24 = v20 < v22;
  if (!v16)
  {
    v23 = v24;
  }

  if (!v23)
  {
    return result;
  }

  result = *a3;
  v41 = *a3;
  v25 = *(a4 + 2);
  *a3 = *a4;
  *(a3 + 2) = v25;
  *a4 = v41;
  *(a4 + 2) = DWORD2(v41);
  v26 = *(a3 + 2);
  if (!v26)
  {
    v27 = (*a3)[1];
    v28 = *(a2 + 2);
    if (v28)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  if (v26 != 1)
  {
    v27 = 0x7FFFFFFF;
    v28 = *(a2 + 2);
    if (v28)
    {
      goto LABEL_32;
    }

LABEL_35:
    v29 = (*a2)[1];
    goto LABEL_37;
  }

  v27 = **a3;
  v28 = *(a2 + 2);
  if (!v28)
  {
    goto LABEL_35;
  }

LABEL_32:
  if (v28 == 1)
  {
    v29 = **a2;
  }

  else
  {
    v29 = 0x7FFFFFFF;
  }

LABEL_37:
  v30 = v26 < v28;
  v16 = v27 == v29;
  v31 = v27 < v29;
  if (!v16)
  {
    v30 = v31;
  }

  if (v30)
  {
    result = *a2;
    v42 = *a2;
    v32 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v32;
    *a3 = v42;
    *(a3 + 2) = DWORD2(v42);
    v33 = *(a2 + 2);
    if (v33)
    {
      if (v33 == 1)
      {
        v34 = **a2;
        v35 = a1[2];
        if (!v35)
        {
          goto LABEL_48;
        }

LABEL_45:
        if (v35 == 1)
        {
          v36 = **a1;
        }

        else
        {
          v36 = 0x7FFFFFFF;
        }

        goto LABEL_50;
      }

      v34 = 0x7FFFFFFF;
      v35 = a1[2];
      if (v35)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v34 = (*a2)[1];
      v35 = a1[2];
      if (v35)
      {
        goto LABEL_45;
      }
    }

LABEL_48:
    v36 = *(*a1 + 4);
LABEL_50:
    v37 = v33 < v35;
    v16 = v34 == v36;
    v38 = v34 < v36;
    if (!v16)
    {
      v37 = v38;
    }

    if (v37)
    {
      result = *a1;
      v43 = *a1;
      v39 = *(a2 + 2);
      *a1 = *a2;
      a1[2] = v39;
      *a2 = v43;
      *(a2 + 2) = DWORD2(v43);
    }
  }

  return result;
}

int **sub_C0D7D8(int **result, int **a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v6 = v2;
        v7 = *(v4 + 6);
        if (v7)
        {
          if (v7 == 1)
          {
            v8 = **v6;
            v9 = *(v4 + 2);
            if (v9)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v8 = 0x7FFFFFFF;
            v9 = *(v4 + 2);
            if (v9)
            {
LABEL_10:
              if (v9 == 1)
              {
                v10 = **v4;
              }

              else
              {
                v10 = 0x7FFFFFFF;
              }

              goto LABEL_17;
            }
          }
        }

        else
        {
          v8 = (*v6)[1];
          v9 = *(v4 + 2);
          if (v9)
          {
            goto LABEL_10;
          }
        }

        v10 = (*v4)[1];
LABEL_17:
        v11 = v7 < v9;
        v12 = v8 == v10;
        v13 = v8 < v10;
        if (v12)
        {
          v13 = v11;
        }

        if (v13)
        {
          v14 = *v6;
          v15 = v3;
          if (v7 == 1)
          {
            while (1)
            {
              v26 = result + v15;
              *(v26 + 2) = *(result + v15);
              *(v26 + 6) = *(result + v15 + 8);
              if (!v15)
              {
                break;
              }

              v27 = *(v26 - 2);
              if (v27 == 1)
              {
                v23 = **(v26 - 2);
              }

              else if (v27)
              {
                v23 = 0x7FFFFFFF;
              }

              else
              {
                v23 = *(*(v26 - 2) + 4);
              }

              v24 = v27 > 1;
              v12 = *v14 == v23;
              v25 = *v14 < v23;
              if (!v12)
              {
                v24 = v25;
              }

              v15 -= 16;
              if (!v24)
              {
LABEL_50:
                v30 = result + v15;
LABEL_51:
                v5 = (v30 + 16);
                goto LABEL_5;
              }
            }
          }

          else
          {
            v15 = v3;
            v16 = v3;
            if (v7)
            {
              while (1)
              {
                v28 = result + v16;
                *(v28 + 2) = *(result + v16);
                *(v28 + 6) = *(result + v16 + 8);
                if (!v16)
                {
                  break;
                }

                v29 = *(v28 - 2);
                if (v29)
                {
                  if (v29 == 1)
                  {
                    v16 -= 16;
                    if (**(v28 - 2) != 0x7FFFFFFF)
                    {
LABEL_49:
                      v30 = result + v16;
                      goto LABEL_51;
                    }
                  }

                  else
                  {
                    v16 -= 16;
                  }
                }

                else
                {
                  v16 -= 16;
                  if (*(*(v28 - 2) + 4) != 0x7FFFFFFF)
                  {
                    goto LABEL_49;
                  }
                }

                if (v7 >= v29)
                {
                  goto LABEL_49;
                }
              }
            }

            else
            {
              while (1)
              {
                v21 = result + v15;
                *(v21 + 2) = *(result + v15);
                *(v21 + 6) = *(result + v15 + 8);
                if (!v15)
                {
                  break;
                }

                v22 = *(v21 - 2);
                if (v22 == 1)
                {
                  v17 = **(v21 - 2);
                }

                else if (v22)
                {
                  v17 = 0x7FFFFFFF;
                }

                else
                {
                  v17 = *(*(v21 - 2) + 4);
                }

                v18 = v14[1];
                v19 = v22 != 0;
                v12 = v18 == v17;
                v20 = v18 < v17;
                if (!v12)
                {
                  v19 = v20;
                }

                v15 -= 16;
                if (!v19)
                {
                  goto LABEL_50;
                }
              }
            }
          }

          v5 = result;
LABEL_5:
          *v5 = v14;
          *(v5 + 2) = v7;
        }

        v2 = v6 + 2;
        v3 += 16;
        v4 = v6;
      }

      while (v6 + 2 != a2);
    }
  }

  return result;
}

int **sub_C0DA0C(int **result, int **a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      do
      {
        v3 = v2;
        v4 = *(result + 6);
        if (v4)
        {
          if (v4 == 1)
          {
            v5 = **v3;
            v6 = *(result + 2);
            if (v6)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v5 = 0x7FFFFFFF;
            v6 = *(result + 2);
            if (v6)
            {
LABEL_11:
              if (v6 == 1)
              {
                v7 = **result;
              }

              else
              {
                v7 = 0x7FFFFFFF;
              }

              goto LABEL_16;
            }
          }
        }

        else
        {
          v5 = (*v3)[1];
          v6 = *(result + 2);
          if (v6)
          {
            goto LABEL_11;
          }
        }

        v7 = (*result)[1];
LABEL_16:
        v8 = v4 < v6;
        v9 = v5 == v7;
        v10 = v5 < v7;
        if (v9)
        {
          v10 = v8;
        }

        if (v10)
        {
          v11 = *v3;
          v12 = v3;
          if (v4 == 1)
          {
            do
            {
              *v12 = *(v12 - 2);
              *(v12 + 2) = *(v12 - 2);
              v24 = *(v12 - 6);
              if (v24 == 1)
              {
                v21 = **(v12 - 4);
              }

              else if (v24)
              {
                v21 = 0x7FFFFFFF;
              }

              else
              {
                v21 = (*(v12 - 4))[1];
              }

              v22 = v24 > 1;
              v9 = *v11 == v21;
              v23 = *v11 < v21;
              if (!v9)
              {
                v22 = v23;
              }

              v12 -= 2;
            }

            while (v22);
          }

          else
          {
            v12 = v3;
            if (v4)
            {
              do
              {
                *v12 = *(v12 - 2);
                *(v12 + 2) = *(v12 - 2);
                v13 = *(v12 - 6);
                if (v13)
                {
                  if (v13 == 1)
                  {
                    v14 = **(v12 - 4);
                    v12 -= 2;
                    if (v14 != 0x7FFFFFFF)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v12 -= 2;
                  }
                }

                else
                {
                  v15 = (*(v12 - 4))[1];
                  v12 -= 2;
                  if (v15 != 0x7FFFFFFF)
                  {
                    break;
                  }
                }
              }

              while (v4 < v13);
            }

            else
            {
              do
              {
                *v12 = *(v12 - 2);
                *(v12 + 2) = *(v12 - 2);
                v20 = *(v12 - 6);
                if (v20 == 1)
                {
                  v16 = **(v12 - 4);
                }

                else if (v20)
                {
                  v16 = 0x7FFFFFFF;
                }

                else
                {
                  v16 = (*(v12 - 4))[1];
                }

                v17 = v11[1];
                v18 = v20 != 0;
                v9 = v17 == v16;
                v19 = v17 < v16;
                if (!v9)
                {
                  v18 = v19;
                }

                v12 -= 2;
              }

              while (v18);
            }
          }

          *v12 = v11;
          *(v12 + 2) = v4;
        }

        v2 = v3 + 2;
        result = v3;
      }

      while (v3 + 2 != a2);
    }
  }

  return result;
}

int **sub_C0DC04(uint64_t a1, int **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = *v2;
      v5 = *(a2 - 2);
      if (!v5)
      {
LABEL_12:
        v9 = (*(a2 - 2))[1];
        v10 = v3 < v5;
        v7 = v4 == v9;
        v11 = v4 < v9;
        if (v7)
        {
          v11 = v10;
        }

        if (v11)
        {
LABEL_15:
          v12 = a1;
          while (1)
          {
            v16 = v12;
            if (v3)
            {
              if (v3 == 1)
              {
                v17 = *v2;
                v12 += 2;
                v18 = *(v16 + 6);
                if (v18)
                {
                  goto LABEL_27;
                }
              }

              else
              {
                v17 = 0x7FFFFFFF;
                v12 += 2;
                v18 = *(v16 + 6);
                if (v18)
                {
LABEL_27:
                  if (v18 == 1)
                  {
                    v13 = **v12;
                  }

                  else
                  {
                    v13 = 0x7FFFFFFF;
                  }

                  goto LABEL_17;
                }
              }
            }

            else
            {
              v17 = v2[1];
              v12 += 2;
              v18 = *(v16 + 6);
              if (v18)
              {
                goto LABEL_27;
              }
            }

            v13 = (*v12)[1];
LABEL_17:
            v14 = v3 < v18;
            v7 = v17 == v13;
            v15 = v17 < v13;
            if (v7)
            {
              v15 = v14;
            }

            if (v15)
            {
              goto LABEL_49;
            }
          }
        }

        goto LABEL_33;
      }
    }

    else
    {
      v4 = 0x7FFFFFFF;
      v5 = *(a2 - 2);
      if (!v5)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v4 = v2[1];
    v5 = *(a2 - 2);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (v5 == 1)
  {
    v6 = **(a2 - 2);
    v7 = v4 == v6;
    v8 = v4 < v6;
    if (v7)
    {
      v8 = v3 == 0;
    }

    if (v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v19 = v3 < v5;
    v7 = v4 == 0x7FFFFFFF;
    v20 = v4 != 0x7FFFFFFF;
    if (v7)
    {
      v20 = v19;
    }

    if (v20)
    {
      goto LABEL_15;
    }
  }

LABEL_33:
  v21 = a1 + 16;
  do
  {
    v12 = v21;
    if (v21 >= a2)
    {
      break;
    }

    if (v3)
    {
      if (v3 == 1)
      {
        v25 = *v2;
        v26 = *(v12 + 2);
        if (v26)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v25 = 0x7FFFFFFF;
        v26 = *(v12 + 2);
        if (v26)
        {
LABEL_46:
          if (v26 == 1)
          {
            v22 = **v12;
          }

          else
          {
            v22 = 0x7FFFFFFF;
          }

          goto LABEL_35;
        }
      }
    }

    else
    {
      v25 = v2[1];
      v26 = *(v12 + 2);
      if (v26)
      {
        goto LABEL_46;
      }
    }

    v22 = (*v12)[1];
LABEL_35:
    v23 = v3 < v26;
    v7 = v25 == v22;
    v24 = v25 < v22;
    if (!v7)
    {
      v23 = v24;
    }

    v21 = (v12 + 2);
  }

  while (!v23);
LABEL_49:
  if (v12 < a2)
  {
    do
    {
      v43 = a2;
      if (v3)
      {
        if (v3 == 1)
        {
          v44 = *v2;
          a2 -= 2;
          v45 = *(v43 - 2);
          if (v45)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v44 = 0x7FFFFFFF;
          a2 -= 2;
          v45 = *(v43 - 2);
          if (v45)
          {
LABEL_91:
            if (v45 == 1)
            {
              v40 = **a2;
            }

            else
            {
              v40 = 0x7FFFFFFF;
            }

            goto LABEL_81;
          }
        }
      }

      else
      {
        v44 = v2[1];
        a2 -= 2;
        v45 = *(v43 - 2);
        if (v45)
        {
          goto LABEL_91;
        }
      }

      v40 = (*a2)[1];
LABEL_81:
      v41 = v3 < v45;
      v7 = v44 == v40;
      v42 = v44 < v40;
      if (v7)
      {
        v42 = v41;
      }
    }

    while (v42);
  }

LABEL_50:
  if (v12 < a2)
  {
    v48 = *v12;
    v27 = *a2;
    *(v12 + 2) = *(a2 + 2);
    *v12 = v27;
    *(a2 + 2) = DWORD2(v48);
    *a2 = v48;
    while (1)
    {
      v31 = v12;
      if (v3)
      {
        if (v3 == 1)
        {
          v32 = *v2;
          v12 += 2;
          v33 = *(v31 + 6);
          if (v33)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v32 = 0x7FFFFFFF;
          v12 += 2;
          v33 = *(v31 + 6);
          if (v33)
          {
LABEL_63:
            if (v33 == 1)
            {
              v28 = **v12;
            }

            else
            {
              v28 = 0x7FFFFFFF;
            }

            goto LABEL_53;
          }
        }
      }

      else
      {
        v32 = v2[1];
        v12 += 2;
        v33 = *(v31 + 6);
        if (v33)
        {
          goto LABEL_63;
        }
      }

      v28 = (*v12)[1];
LABEL_53:
      v29 = v3 < v33;
      v7 = v32 == v28;
      v30 = v32 < v28;
      if (v7)
      {
        v30 = v29;
      }

      if (v30)
      {
        while (1)
        {
          v37 = a2;
          if (v3)
          {
            if (v3 == 1)
            {
              v38 = *v2;
              a2 -= 2;
              v39 = *(v37 - 2);
              if (!v39)
              {
                goto LABEL_66;
              }
            }

            else
            {
              v38 = 0x7FFFFFFF;
              a2 -= 2;
              v39 = *(v37 - 2);
              if (!v39)
              {
LABEL_66:
                v34 = (*a2)[1];
                goto LABEL_67;
              }
            }
          }

          else
          {
            v38 = v2[1];
            a2 -= 2;
            v39 = *(v37 - 2);
            if (!v39)
            {
              goto LABEL_66;
            }
          }

          if (v39 == 1)
          {
            v34 = **a2;
          }

          else
          {
            v34 = 0x7FFFFFFF;
          }

LABEL_67:
          v35 = v3 < v39;
          v7 = v38 == v34;
          v36 = v38 < v34;
          if (v7)
          {
            v36 = v35;
          }

          if (!v36)
          {
            goto LABEL_50;
          }
        }
      }
    }
  }

  if (v12 - 2 != a1)
  {
    v46 = *(v12 - 2);
    *(a1 + 8) = *(v12 - 2);
    *a1 = v46;
  }

  *(v12 - 2) = v2;
  *(v12 - 2) = v3;
  return v12;
}

unint64_t sub_C0DFC4(uint64_t a1, int **a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  do
  {
    v9 = a1 + v2;
    v10 = *(a1 + v2 + 24);
    if (v10)
    {
      if (v10 == 1)
      {
        v11 = **(v9 + 16);
        if (!v4)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v11 = 0x7FFFFFFF;
        if (!v4)
        {
LABEL_2:
          v5 = v3[1];
          goto LABEL_3;
        }
      }
    }

    else
    {
      v11 = *(*(v9 + 16) + 4);
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    if (v4 == 1)
    {
      v5 = *v3;
    }

    else
    {
      v5 = 0x7FFFFFFF;
    }

LABEL_3:
    v6 = v10 < v4;
    v7 = v11 == v5;
    v8 = v11 < v5;
    if (!v7)
    {
      v6 = v8;
    }

    v2 += 16;
  }

  while (v6);
  v12 = a1 + v2;
  if (v2 == 16)
  {
    while (1)
    {
      v21 = a2;
      if (v12 >= a2)
      {
        goto LABEL_47;
      }

      a2 -= 2;
      v22 = *(v21 - 2);
      if (v22)
      {
        if (v22 == 1)
        {
          v23 = **a2;
          if (v4)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v23 = 0x7FFFFFFF;
          if (v4)
          {
LABEL_44:
            if (v4 == 1)
            {
              v18 = *v3;
            }

            else
            {
              v18 = 0x7FFFFFFF;
            }

            goto LABEL_33;
          }
        }
      }

      else
      {
        v23 = (*a2)[1];
        if (v4)
        {
          goto LABEL_44;
        }
      }

      v18 = v3[1];
LABEL_33:
      v19 = v22 < v4;
      v7 = v23 == v18;
      v20 = v23 < v18;
      if (!v7)
      {
        v19 = v20;
      }

      if (v19)
      {
        goto LABEL_47;
      }
    }
  }

  while (2)
  {
    v16 = *(a2 - 2);
    a2 -= 2;
    if (v16)
    {
      if (v16 == 1)
      {
        v17 = **a2;
        if (!v4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v17 = 0x7FFFFFFF;
        if (!v4)
        {
          goto LABEL_18;
        }
      }

LABEL_29:
      if (v4 == 1)
      {
        v13 = *v3;
      }

      else
      {
        v13 = 0x7FFFFFFF;
      }
    }

    else
    {
      v17 = (*a2)[1];
      if (v4)
      {
        goto LABEL_29;
      }

LABEL_18:
      v13 = v3[1];
    }

    v14 = v16 < v4;
    v7 = v17 == v13;
    v15 = v17 < v13;
    if (!v7)
    {
      v14 = v15;
    }

    if (!v14)
    {
      continue;
    }

    break;
  }

LABEL_47:
  v24 = v12;
  if (v12 < a2)
  {
    v25 = a2;
    do
    {
      v39 = *v24;
      v26 = *v25;
      *(v24 + 8) = *(v25 + 2);
      *v24 = v26;
      *(v25 + 2) = DWORD2(v39);
      *v25 = v39;
      do
      {
        v30 = *(v24 + 24);
        v24 += 16;
        if (v30)
        {
          if (v30 == 1)
          {
            v31 = **v24;
            if (!v4)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v31 = 0x7FFFFFFF;
            if (!v4)
            {
LABEL_51:
              v27 = v3[1];
              goto LABEL_52;
            }
          }
        }

        else
        {
          v31 = *(*v24 + 4);
          if (!v4)
          {
            goto LABEL_51;
          }
        }

        if (v4 == 1)
        {
          v27 = *v3;
        }

        else
        {
          v27 = 0x7FFFFFFF;
        }

LABEL_52:
        v28 = v30 < v4;
        v7 = v31 == v27;
        v29 = v31 < v27;
        if (!v7)
        {
          v28 = v29;
        }
      }

      while (v28);
      do
      {
        v35 = *(v25 - 2);
        v25 -= 2;
        if (v35)
        {
          if (v35 == 1)
          {
            v36 = **v25;
            if (!v4)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v36 = 0x7FFFFFFF;
            if (!v4)
            {
LABEL_65:
              v32 = v3[1];
              goto LABEL_66;
            }
          }
        }

        else
        {
          v36 = (*v25)[1];
          if (!v4)
          {
            goto LABEL_65;
          }
        }

        if (v4 == 1)
        {
          v32 = *v3;
        }

        else
        {
          v32 = 0x7FFFFFFF;
        }

LABEL_66:
        v33 = v35 < v4;
        v7 = v36 == v32;
        v34 = v36 < v32;
        if (!v7)
        {
          v33 = v34;
        }
      }

      while (!v33);
    }

    while (v24 < v25);
  }

  if (v24 - 16 != a1)
  {
    v37 = *(v24 - 16);
    *(a1 + 8) = *(v24 - 8);
    *a1 = v37;
  }

  *(v24 - 16) = v3;
  *(v24 - 8) = v4;
  return v24 - 16;
}

BOOL sub_C0E2B4(int **a1, int **a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_C0CF68(a1, a1 + 2, a2 - 2);
        return 1;
      case 4:
        sub_C0D2AC(a1, a1 + 2, a1 + 4, a2 - 4);
        return 1;
      case 5:
        sub_C0D4E8(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 4);
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
      v4 = (a2 - 2);
      v5 = *(a2 - 2);
      if (v5)
      {
        if (v5 == 1)
        {
          v6 = **v4;
          v7 = *(a1 + 2);
          if (v7)
          {
            goto LABEL_12;
          }

LABEL_68:
          v8 = (*a1)[1];
LABEL_72:
          v39 = v5 < v7;
          v20 = v6 == v8;
          v40 = v6 < v8;
          if (!v20)
          {
            v39 = v40;
          }

          if (v39)
          {
            v42 = *a1;
            v41 = *(a2 - 2);
            *a1 = *v4;
            *(a1 + 2) = v41;
            *v4 = v42;
            *(a2 - 2) = DWORD2(v42);
            return 1;
          }

          return 1;
        }

        v6 = 0x7FFFFFFF;
        v7 = *(a1 + 2);
        if (!v7)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v6 = *(*v4 + 4);
        v7 = *(a1 + 2);
        if (!v7)
        {
          goto LABEL_68;
        }
      }

LABEL_12:
      if (v7 == 1)
      {
        v8 = **a1;
      }

      else
      {
        v8 = 0x7FFFFFFF;
      }

      goto LABEL_72;
    }
  }

  v9 = a1 + 4;
  sub_C0CF68(a1, a1 + 2, a1 + 4);
  v12 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *(v12 + 2);
    if (v15)
    {
      if (v15 == 1)
      {
        v16 = **v12;
        v17 = *(v9 + 2);
        if (v17)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v16 = 0x7FFFFFFF;
        v17 = *(v9 + 2);
        if (v17)
        {
LABEL_22:
          if (v17 == 1)
          {
            v18 = **v9;
          }

          else
          {
            v18 = 0x7FFFFFFF;
          }

          goto LABEL_29;
        }
      }
    }

    else
    {
      v16 = *(*v12 + 4);
      v17 = *(v9 + 2);
      if (v17)
      {
        goto LABEL_22;
      }
    }

    v18 = (*v9)[1];
LABEL_29:
    v19 = v15 < v17;
    v20 = v16 == v18;
    v21 = v16 < v18;
    if (v20)
    {
      v21 = v19;
    }

    if (v21)
    {
      v22 = *v12;
      v23 = v13;
      if (v15 == 1)
      {
        while (1)
        {
          v34 = a1 + v23;
          *(v34 + 6) = *(a1 + v23 + 32);
          *(v34 + 14) = *(a1 + v23 + 40);
          if (v23 == -32)
          {
            break;
          }

          v35 = *(v34 + 6);
          if (v35 == 1)
          {
            v31 = **(v34 + 2);
          }

          else if (v35)
          {
            v31 = 0x7FFFFFFF;
          }

          else
          {
            v31 = *(*(v34 + 2) + 4);
          }

          v32 = v35 > 1;
          v20 = *v22 == v31;
          v33 = *v22 < v31;
          if (!v20)
          {
            v32 = v33;
          }

          v23 -= 16;
          if (!v32)
          {
LABEL_62:
            v38 = a1 + v23;
LABEL_63:
            *(v38 + 6) = v22;
            *(v38 + 14) = v15;
            if (++v14 == 8)
            {
              return v12 + 16 == a2;
            }

            goto LABEL_64;
          }
        }
      }

      else
      {
        v23 = v13;
        v24 = v13;
        if (v15)
        {
          while (1)
          {
            v36 = a1 + v24;
            *(v36 + 6) = *(a1 + v24 + 32);
            *(v36 + 14) = *(a1 + v24 + 40);
            if (v24 == -32)
            {
              break;
            }

            v37 = *(v36 + 6);
            if (v37)
            {
              if (v37 == 1)
              {
                v24 -= 16;
                if (**(v36 + 2) != 0x7FFFFFFF)
                {
LABEL_61:
                  v38 = a1 + v24;
                  goto LABEL_63;
                }
              }

              else
              {
                v24 -= 16;
              }
            }

            else
            {
              v24 -= 16;
              if (*(*(v36 + 2) + 4) != 0x7FFFFFFF)
              {
                goto LABEL_61;
              }
            }

            if (v15 >= v37)
            {
              goto LABEL_61;
            }
          }
        }

        else
        {
          while (1)
          {
            v29 = a1 + v23;
            *(v29 + 6) = *(a1 + v23 + 32);
            *(v29 + 14) = *(a1 + v23 + 40);
            if (v23 == -32)
            {
              break;
            }

            v30 = *(v29 + 6);
            if (v30 == 1)
            {
              v25 = **(v29 + 2);
            }

            else if (v30)
            {
              v25 = 0x7FFFFFFF;
            }

            else
            {
              v25 = *(*(v29 + 2) + 4);
            }

            v26 = v22[1];
            v27 = v30 != 0;
            v20 = v26 == v25;
            v28 = v26 < v25;
            if (!v20)
            {
              v27 = v28;
            }

            v23 -= 16;
            if (!v27)
            {
              goto LABEL_62;
            }
          }
        }
      }

      *a1 = v22;
      *(a1 + 2) = v15;
      if (++v14 == 8)
      {
        return v12 + 16 == a2;
      }
    }

LABEL_64:
    v9 = v12;
    v13 += 16;
    v12 += 16;
    if (v12 == a2)
    {
      return 1;
    }
  }
}

__int128 *sub_C0E6F0(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_C0E9D8(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    i = v6;
    if (v6 != a3)
    {
      for (i = v6; i != a3; ++i)
      {
        v13 = *(i + 2);
        if (v13)
        {
          if (v13 == 1)
          {
            v14 = **i;
            v15 = *(a1 + 2);
            if (v15)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v14 = 0x7FFFFFFF;
            v15 = *(a1 + 2);
            if (v15)
            {
LABEL_13:
              if (v15 == 1)
              {
                v16 = **a1;
              }

              else
              {
                v16 = 0x7FFFFFFF;
              }

              goto LABEL_18;
            }
          }
        }

        else
        {
          v14 = *(*i + 4);
          v15 = *(a1 + 2);
          if (v15)
          {
            goto LABEL_13;
          }
        }

        v16 = *(*a1 + 4);
LABEL_18:
        v17 = v13 < v15;
        v18 = v14 == v16;
        v19 = v14 < v16;
        if (!v18)
        {
          v17 = v19;
        }

        if (v17)
        {
          v38 = *i;
          v20 = *(a1 + 2);
          *i = *a1;
          *(i + 2) = v20;
          *a1 = v38;
          *(a1 + 2) = DWORD2(v38);
          sub_C0E9D8(a1, a4, v8, a1);
        }
      }
    }

    if (v8 < 2)
    {
      return i;
    }

LABEL_30:
    v24 = 0;
    v39 = *a1;
    v25 = a1;
    while (1)
    {
      v32 = &v25[v24];
      v29 = (v32 + 1);
      v30 = (2 * v24) | 1;
      v33 = 2 * v24 + 2;
      if (v33 < v8)
      {
        break;
      }

LABEL_36:
      v31 = *v29;
      *(v25 + 2) = *(v29 + 2);
      *v25 = v31;
      v25 = v29;
      v24 = v30;
      if (v30 > ((v8 - 2) >> 1))
      {
        if (v29 != --v6)
        {
          v22 = *v6;
          *(v29 + 2) = *(v6 + 2);
          *v29 = v22;
          *v6 = v39;
          *(v6 + 2) = DWORD2(v39);
          sub_C0EC98(a1, (v29 + 2), a4, ((v29 + 2) - a1) >> 4);
          v23 = v8-- <= 2;
          if (v23)
          {
            return i;
          }

          goto LABEL_30;
        }

        *(v29 + 2) = DWORD2(v39);
        *v29 = v39;
        v23 = v8-- <= 2;
        if (v23)
        {
          return i;
        }

        goto LABEL_30;
      }
    }

    v34 = *(v32 + 6);
    if (v34)
    {
      if (v34 == 1)
      {
        v35 = **v29;
        v36 = (v32 + 2);
        v37 = *(v32 + 10);
        if (!v37)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v35 = 0x7FFFFFFF;
        v36 = (v32 + 2);
        v37 = *(v32 + 10);
        if (!v37)
        {
LABEL_31:
          v26 = (*v36)[1];
LABEL_32:
          v27 = v34 < v37;
          v18 = v35 == v26;
          v28 = v35 < v26;
          if (!v18)
          {
            v27 = v28;
          }

          if (v27)
          {
            v29 = v36;
            v30 = v33;
          }

          goto LABEL_36;
        }
      }
    }

    else
    {
      v35 = (*v29)[1];
      v36 = (v32 + 2);
      v37 = *(v32 + 10);
      if (!v37)
      {
        goto LABEL_31;
      }
    }

    if (v37 == 1)
    {
      v26 = **v36;
    }

    else
    {
      v26 = 0x7FFFFFFF;
    }

    goto LABEL_32;
  }

  return a3;
}

uint64_t sub_C0E9D8(uint64_t result, uint64_t a2, uint64_t a3, int **a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = a4 - result;
  v5 = (a3 - 2) >> 1;
  if (v5 < (a4 - result) >> 4)
  {
    return result;
  }

  v6 = v4 >> 3;
  v7 = (v4 >> 3) + 1;
  v8 = (result + 16 * v7);
  v9 = v6 + 2;
  if (v9 < a3)
  {
    v10 = v8 + 2;
    v11 = *(v8 + 2);
    if (v11)
    {
      if (v11 == 1)
      {
        v12 = **v8;
        v13 = *(v8 + 6);
        if (!v13)
        {
          goto LABEL_12;
        }

LABEL_9:
        if (v13 == 1)
        {
          v14 = **v10;
        }

        else
        {
          v14 = 0x7FFFFFFF;
        }

        goto LABEL_14;
      }

      v12 = 0x7FFFFFFF;
      v13 = *(v8 + 6);
      if (v13)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v12 = (*v8)[1];
      v13 = *(v8 + 6);
      if (v13)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v14 = (*v10)[1];
LABEL_14:
    v15 = v11 < v13;
    v16 = v12 == v14;
    v17 = v12 < v14;
    if (!v16)
    {
      v15 = v17;
    }

    if (v15)
    {
      v8 += 2;
      v7 = v9;
    }
  }

  v18 = *(v8 + 2);
  if (v18)
  {
    if (v18 == 1)
    {
      v19 = **v8;
      v20 = *(a4 + 2);
      if (!v20)
      {
LABEL_29:
        v24 = (*a4)[1];
        v25 = v18 < v20;
        v16 = v19 == v24;
        v26 = v19 < v24;
        if (!v16)
        {
          v25 = v26;
        }

        if (v25)
        {
          return result;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v19 = 0x7FFFFFFF;
      v20 = *(a4 + 2);
      if (!v20)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    v19 = (*v8)[1];
    v20 = *(a4 + 2);
    if (!v20)
    {
      goto LABEL_29;
    }
  }

  if (v20 == 1)
  {
    v21 = **a4;
    v22 = v18 == 0;
    v16 = v19 == v21;
    v23 = v19 < v21;
    if (!v16)
    {
      v22 = v23;
    }

    if (!v22)
    {
LABEL_36:
      v29 = *a4;
      while (1)
      {
        v33 = a4;
        a4 = v8;
        v34 = *v8;
        *(v33 + 2) = *(a4 + 2);
        *v33 = v34;
        if (v5 < v7)
        {
LABEL_69:
          *a4 = v29;
          *(a4 + 2) = v20;
          return result;
        }

        v35 = (2 * v7) | 1;
        v8 = (result + 16 * v35);
        v7 = 2 * v7 + 2;
        if (v7 >= a3)
        {
          v7 = v35;
          v40 = *(v8 + 2);
          if (!v40)
          {
            goto LABEL_65;
          }

          goto LABEL_48;
        }

        v36 = *(v8 + 2);
        if (v36)
        {
          if (v36 == 1)
          {
            v37 = **v8;
            v38 = v8 + 2;
            v39 = *(v8 + 6);
            if (!v39)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v37 = 0x7FFFFFFF;
            v38 = v8 + 2;
            v39 = *(v8 + 6);
            if (!v39)
            {
LABEL_57:
              v42 = (*v38)[1];
              goto LABEL_59;
            }
          }
        }

        else
        {
          v37 = (*v8)[1];
          v38 = v8 + 2;
          v39 = *(v8 + 6);
          if (!v39)
          {
            goto LABEL_57;
          }
        }

        if (v39 == 1)
        {
          v42 = **v38;
        }

        else
        {
          v42 = 0x7FFFFFFF;
        }

LABEL_59:
        v43 = v36 < v39;
        v16 = v37 == v42;
        v44 = v37 < v42;
        if (!v16)
        {
          v43 = v44;
        }

        if (v43)
        {
          v8 = v38;
        }

        else
        {
          v7 = v35;
        }

        v40 = *(v8 + 2);
        if (!v40)
        {
LABEL_65:
          v41 = (*v8)[1];
          if (!v20)
          {
LABEL_37:
            v30 = v29[1];
            goto LABEL_38;
          }

          goto LABEL_66;
        }

LABEL_48:
        if (v40 == 1)
        {
          v41 = **v8;
          if (!v20)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v41 = 0x7FFFFFFF;
          if (!v20)
          {
            goto LABEL_37;
          }
        }

LABEL_66:
        if (v20 == 1)
        {
          v30 = *v29;
        }

        else
        {
          v30 = 0x7FFFFFFF;
        }

LABEL_38:
        v31 = v40 < v20;
        v16 = v41 == v30;
        v32 = v41 < v30;
        if (!v16)
        {
          v31 = v32;
        }

        if (v31)
        {
          goto LABEL_69;
        }
      }
    }
  }

  else
  {
    v27 = v18 < v20;
    v16 = v19 == 0x7FFFFFFF;
    v28 = v19 != 0x7FFFFFFF;
    if (!v16)
    {
      v27 = v28;
    }

    if (!v27)
    {
      goto LABEL_36;
    }
  }

  return result;
}