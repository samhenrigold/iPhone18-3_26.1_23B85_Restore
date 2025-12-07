void sub_FD6858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD6874(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      v11 = &v4[a2];
      do
      {
        *v4++ = *a3;
        v10 -= 16;
      }

      while (v10);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + a2;
    if ((v6 + a2) >> 60)
    {
      sub_1794();
    }

    v8 = v5 - *a1;
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

      sub_1808();
    }

    v12 = 16 * v6;
    v13 = 16 * a2;
    v14 = 16 * v6 + 16 * a2;
    v15 = (16 * v6);
    do
    {
      *v15++ = *a3;
      v13 -= 16;
    }

    while (v13);
    v16 = *a1;
    v17 = *(a1 + 8) - *a1;
    v18 = v12 - v17;
    memcpy((v12 - v17), *a1, v17);
    *a1 = v18;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_FD69C8(void *a1, uint64_t *a2, void *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    a3[1] = *a3;
    v6 = sub_5F680(a1, a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      while (1)
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v9 = *v7;
        v24 = 9;
        strcpy(__p, "threshold");
        v10 = sub_353010(v9, __p);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        v24 = 5;
        strcpy(__p, "value");
        v11 = sub_63D34(v9, __p);
        if (v24 < 0)
        {
          operator delete(__p[0]);
          v13 = a3[1];
          v12 = a3[2];
          if (v13 < v12)
          {
            goto LABEL_4;
          }

LABEL_12:
          v14 = *a3;
          v15 = v13 - *a3;
          v16 = v15 >> 4;
          v17 = (v15 >> 4) + 1;
          if (v17 >> 60)
          {
            sub_1794();
          }

          v18 = v12 - v14;
          if (v18 >> 3 > v17)
          {
            v17 = v18 >> 3;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF0)
          {
            v19 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            if (!(v19 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v20 = 16 * v16;
          *v20 = v10;
          *(v20 + 8) = v11;
          v21 = 16 * v16 + 16;
          v22 = (v20 - 16 * (v15 >> 4));
          memcpy(v22, v14, v15);
          *a3 = v22;
          a3[1] = v21;
          a3[2] = 0;
          if (v14)
          {
            operator delete(v14);
          }

          a3[1] = v21;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }

        else
        {
          v13 = a3[1];
          v12 = a3[2];
          if (v13 >= v12)
          {
            goto LABEL_12;
          }

LABEL_4:
          *v13 = v10;
          *(v13 + 8) = v11;
          a3[1] = v13 + 16;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }
      }
    }
  }
}

void sub_FD6BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD6BFC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 > (v3 - v4) >> 4)
  {
    v5 = (v4 - *a1) >> 4;
    v6 = v5 + a2;
    if ((v5 + a2) >> 60)
    {
      sub_1794();
    }

    v7 = v3 - *a1;
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

      sub_1808();
    }

    v21 = 16 * v5;
    v22 = 16 * v5 + 16 * a2;
    v23 = (a2 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v23)
    {
      v9 = v23 + 1;
      v10 = (v23 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v11 = v21 + 16 * v10;
      v12 = v21 + 16;
      v13 = -NAN;
      v14 = v10;
      do
      {
        *(v12 - 16) = v13;
        *v12 = v13;
        *(v12 - 8) = 0x7FFFFFFFFFFFFFFFLL;
        *(v12 + 8) = 0x7FFFFFFFFFFFFFFFLL;
        v12 += 32;
        v14 -= 2;
      }

      while (v14);
      if (v9 == v10)
      {
LABEL_26:
        v24 = *a1;
        v25 = *(a1 + 8) - *a1;
        v26 = v21 - v25;
        memcpy((v21 - v25), *a1, v25);
        *a1 = v26;
        *(a1 + 8) = v22;
        *(a1 + 16) = 0;
        if (v24)
        {

          operator delete(v24);
        }

        return;
      }
    }

    else
    {
      v11 = 16 * v5;
    }

    do
    {
      *v11 = -NAN;
      *(v11 + 8) = 0x7FFFFFFFFFFFFFFFLL;
      v11 += 16;
    }

    while (v11 != v22);
    goto LABEL_26;
  }

  if (a2)
  {
    v15 = v4 + 16 * a2;
    if (((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_35;
    }

    v16 = ((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v17 = v4 + 16 * (v16 & 0x1FFFFFFFFFFFFFFELL);
    v18 = v4 + 16;
    v19 = -NAN;
    v20 = v16 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v18 - 16) = v19;
      *v18 = v19;
      *(v18 - 8) = 0x7FFFFFFFFFFFFFFFLL;
      *(v18 + 8) = 0x7FFFFFFFFFFFFFFFLL;
      v18 += 32;
      v20 -= 2;
    }

    while (v20);
    v4 = v17;
    if (v16 != (v16 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_35:
      do
      {
        *v4 = -NAN;
        *(v4 + 8) = 0x7FFFFFFFFFFFFFFFLL;
        v4 += 16;
      }

      while (v4 != v15);
    }

    v4 = v15;
  }

  *(a1 + 8) = v4;
}

void sub_FD6E80(BOOL *a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  strcpy(v8, "DecisionPointDetection");
  HIBYTE(v8[2]) = 22;
  memset(__p, 0, sizeof(__p));
  v6 = sub_3AEC94(a2, v8, __p);
  sub_FD7980(a1, v6);
}

void sub_FD6F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_FD6FA8@<D0>(_BYTE *result@<X0>, void *a2@<X1>, double *a3@<X2>, __n128 **a4@<X8>, double a5@<D0>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*result == 1)
  {
    sub_FD7078(result, a2, a4);
    sub_FD72F8(result, a2, a4);
    sub_FD771C(result, a2, a3, a4);
    v10 = a4[1];
    v11 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v10 - *a4) >> 3));
    if (v10 == *a4)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    *&a5 = sub_FD82B0(*a4, v10, &v13, v12, 1, v9).n128_u64[0];
  }

  return a5;
}

void sub_FD705C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD7078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) == 1)
  {
    v6 = sub_F6D008(a2);
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      for (i = 0; v7 != i; ++i)
      {
        v8 += sub_F6D254(a2, i);
        v12 = sub_F6C648(a2, i);
        v13 = *v12;
        v14 = &(*v12)[-**v12];
        if (*v14 >= 0x2Fu)
        {
          v15 = *(v14 + 23);
          if (v15)
          {
            if (!v13[v15])
            {
              v30 = v12[5];
              v31 = (v30 - *v30);
              if (*v31 < 0x2Fu || (v32 = v31[23]) == 0 || *(v30 + v32))
              {
                v33 = *(a1 + 24);
                v27 = __OFSUB__(v8, v33);
                v34 = v8 - v33;
                if ((v34 < 0) ^ v27 | (v34 == 0))
                {
                  v29 = 0;
                }

                else
                {
                  v29 = v34;
                }

                if (v29 >= *(a1 + 32))
                {
                  goto LABEL_33;
                }

                continue;
              }
            }

            v16 = v13[v15];
            v17 = v16 > 0x1A;
            v18 = (1 << v16) & 0x4810001;
            if (!v17 && v18 != 0)
            {
              continue;
            }
          }
        }

        v20 = v12[5];
        v21 = (v20 - *v20);
        if (*v21 >= 0x2Fu)
        {
          v22 = v21[23];
          if (v22)
          {
            v23 = *(v20 + v22);
            v17 = v23 > 0x1A;
            v24 = (1 << v23) & 0x4810001;
            if (!v17 && v24 != 0)
            {
              v26 = *(a1 + 16);
              v27 = __OFSUB__(v8, v26);
              v28 = v8 - v26;
              v29 = ((v28 < 0) ^ v27) | (v28 == 0) ? 0 : v28;
              if (v29 >= *(a1 + 32))
              {
LABEL_33:
                v35 = *(a3 + 8);
                v36 = *(a3 + 16);
                if (v35 < v36)
                {
                  v10 = *(a1 + 40);
                  *v35 = v8;
                  *(v35 + 8) = v29;
                  *(v35 + 16) = v10;
                  v11 = v35 + 24;
                }

                else
                {
                  v37 = *a3;
                  v38 = 0xAAAAAAAAAAAAAAABLL * ((v35 - *a3) >> 3);
                  v39 = v38 + 1;
                  if (v38 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    sub_1794();
                  }

                  v40 = 0xAAAAAAAAAAAAAAABLL * ((v36 - v37) >> 3);
                  if (2 * v40 > v39)
                  {
                    v39 = 2 * v40;
                  }

                  if (v40 >= 0x555555555555555)
                  {
                    v41 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v41 = v39;
                  }

                  if (v41)
                  {
                    if (v41 <= 0xAAAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v42 = 8 * ((v35 - *a3) >> 3);
                  v43 = *(a1 + 40);
                  *v42 = v8;
                  *(v42 + 8) = v29;
                  *(v42 + 16) = v43;
                  v11 = 24 * v38 + 24;
                  v44 = (v42 - (v35 - v37));
                  memcpy(v44, v37, v35 - v37);
                  *a3 = v44;
                  *(a3 + 8) = v11;
                  *(a3 + 16) = 0;
                  if (v37)
                  {
                    operator delete(v37);
                  }
                }

                *(a3 + 8) = v11;
              }
            }
          }
        }
      }
    }
  }
}

void sub_FD72F8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_F6E3D4(a2);
  if (*(a1 + 48) != 1 || v6 < *(a1 + 56))
  {
    return;
  }

  v58 = v6;
  sub_F6D0EC(a2, &v59);
  v8 = v60;
  v7 = v61;
  v9 = v62;
  v10 = v63;
  if (v60)
  {
    for (i = 0; ; i += sub_F6D254(v8, v7))
    {
      v12 = sub_F6D024(v8);
      v13 = v12;
      if (v9)
      {
        v14 = sub_F6D024(v9);
        if (v7 >= v13 || v10 >= v14)
        {
          if (v7 < v13 == v10 < v14)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v15 = sub_F6D17C(v8, v7);
          if (v15 == sub_F6D17C(v9, v10))
          {
            goto LABEL_53;
          }
        }
      }

      else if (v7 >= v12)
      {
        goto LABEL_53;
      }

      v16 = sub_F6D17C(v8, --v7);
      v17 = *v16;
      v18 = (*v16 - **v16);
      v19 = *v18;
      if (*(v16 + 38))
      {
        if (v19 < 0x9B)
        {
          continue;
        }

        v20 = v18[77];
        if (!v20 || (*(v17 + v20) & 2) == 0)
        {
          continue;
        }
      }

      else
      {
        if (v19 < 0x9B)
        {
          continue;
        }

        v21 = v18[77];
        if (!v21 || (*(v17 + v21) & 1) == 0)
        {
          continue;
        }
      }

      if (*(a1 + 49) != 1)
      {
        goto LABEL_53;
      }

      v22 = sub_F6D17C(v8, v7);
      v23 = (*v22 - **v22);
      if (*v23 < 0x2Fu)
      {
        goto LABEL_53;
      }

      v24 = v23[23];
      if (!v24)
      {
        goto LABEL_53;
      }

      v25 = *(*v22 + v24);
      v26 = v25 > 0x2F;
      v27 = (1 << v25) & 0xE2E040048000;
      if (v26 || v27 == 0)
      {
        goto LABEL_53;
      }
    }
  }

  if (!v62)
  {
    i = 0;
LABEL_53:
    v42 = *(a1 + 64);
    v43 = v58;
    if (v58 < v42 + i)
    {
      return;
    }

LABEL_54:
    v44 = v43 - i;
    v45 = v43 - i - v42;
    v46 = *(a3 + 8);
    v47 = *(a3 + 16);
    if (v46 >= v47)
    {
      v50 = *a3;
      v51 = 0xAAAAAAAAAAAAAAABLL * ((v46 - *a3) >> 3);
      v52 = v51 + 1;
      if (v51 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      v53 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v50) >> 3);
      if (2 * v53 > v52)
      {
        v52 = 2 * v53;
      }

      if (v53 >= 0x555555555555555)
      {
        v54 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v54 = v52;
      }

      if (v54)
      {
        if (v54 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1808();
      }

      v55 = 8 * ((v46 - *a3) >> 3);
      v56 = *(a1 + 72);
      *v55 = v44;
      *(v55 + 8) = v45;
      *(v55 + 16) = v56;
      v49 = 24 * v51 + 24;
      v57 = (24 * v51 - (v46 - v50));
      memcpy(v57, v50, v46 - v50);
      *a3 = v57;
      *(a3 + 8) = v49;
      *(a3 + 16) = 0;
      if (v50)
      {
        operator delete(v50);
      }
    }

    else
    {
      v48 = *(a1 + 72);
      *v46 = v44;
      *(v46 + 8) = v45;
      *(v46 + 16) = v48;
      v49 = v46 + 24;
    }

    *(a3 + 8) = v49;
    return;
  }

  if (v10 < sub_F6D024(v62))
  {
    i = 0;
    v29 = v7 - 1;
    while (1)
    {
      v30 = sub_F6D17C(0, v29);
      v31 = *v30;
      v32 = (*v30 - **v30);
      v33 = *v32;
      if (*(v30 + 38))
      {
        if (v33 < 0x9B)
        {
          goto LABEL_34;
        }

        v34 = v32[77];
        if (!v34 || (*(v31 + v34) & 2) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v33 < 0x9B)
        {
          goto LABEL_34;
        }

        v35 = v32[77];
        if (!v35 || (*(v31 + v35) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (*(a1 + 49) != 1)
      {
        goto LABEL_53;
      }

      v36 = sub_F6D17C(0, v29);
      v37 = (*v36 - **v36);
      if (*v37 < 0x2Fu)
      {
        goto LABEL_53;
      }

      v38 = v37[23];
      if (!v38)
      {
        goto LABEL_53;
      }

      v39 = *(*v36 + v38);
      v26 = v39 > 0x2F;
      v40 = (1 << v39) & 0xE2E040048000;
      if (v26 || v40 == 0)
      {
        goto LABEL_53;
      }

LABEL_34:
      i += sub_F6D254(0, v29--);
      if (v10 >= sub_F6D024(v9))
      {
        goto LABEL_53;
      }
    }
  }

  i = 0;
  v42 = *(a1 + 64);
  v43 = v58;
  if (v58 >= v42)
  {
    goto LABEL_54;
  }
}

uint64_t sub_FD771C(uint64_t result, uint64_t a2, double *a3, uint64_t a4)
{
  if (*(result + 108) != 12)
  {
    return result;
  }

  v29[7] = v4;
  v29[8] = v5;
  v9 = result;
  result = sub_F6E3D4(a2);
  if (*(v9 + 80) != 1)
  {
    return result;
  }

  v10 = result;
  v11 = (v9 + 88);
  if (result < *(v9 + 88))
  {
    return result;
  }

  result = sub_1181948(a2, *(v9 + 104));
  if (!result)
  {
    return result;
  }

  result = sub_1181948(a2, *(v9 + 104));
  if ((result & 1) == 0 || ((v12 = *a3, v13 = *a3 & 0x7FFFFFFFFFFFFFFFLL, *a3 > -1) ? (v14 = (v13 - 0x10000000000000) >> 53 >= 0x3FF) : (v14 = 1), v14 ? (v15 = (*a3 - 1) >= 0xFFFFFFFFFFFFFLL) : (v15 = 0), v15 ? (v16 = v13 == 0) : (v16 = 1), !v16 || v12 <= 0.0))
  {
    v29[0] = 0x7FFFFFFFFFFFFFFFLL;
    v20 = (v9 + 112);
    goto LABEL_22;
  }

  v17 = v12 * (*(v9 + 96) / 36000.0) * 100000.0;
  if (v17 >= 0.0)
  {
    v18 = v17;
    if (v17 >= 4.50359963e15)
    {
      goto LABEL_31;
    }

    v19 = (v17 + v17) + 1;
  }

  else
  {
    v18 = v17;
    if (v17 <= -4.50359963e15)
    {
      goto LABEL_31;
    }

    v19 = (v17 + v17) - 1 + (((v17 + v17) - 1) >> 63);
  }

  v18 = (v19 >> 1);
LABEL_31:
  if (v18 < 9.22337204e18)
  {
    if (v17 >= 0.0)
    {
      if (v17 >= 4.50359963e15)
      {
        goto LABEL_39;
      }

      v25 = (v17 + v17) + 1;
    }

    else
    {
      if (v17 <= -4.50359963e15)
      {
        goto LABEL_39;
      }

      v25 = (v17 + v17) - 1 + (((v17 + v17) - 1) >> 63);
    }

    v17 = (v25 >> 1);
LABEL_39:
    v26 = v17;
    v29[0] = v17;
    v20 = (v9 + 112);
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

  v26 = 0x7FFFFFFFFFFFFFFELL;
  v29[0] = 0x7FFFFFFFFFFFFFFELL;
  v20 = (v9 + 112);
LABEL_40:
  if (*v11 >= v26)
  {
    v27 = v29;
  }

  else
  {
    v27 = (v9 + 88);
  }

  if (*v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v29;
  }

  else
  {
    v11 = v27;
  }

LABEL_22:
  v21 = *v20;
  v22 = *v11 + *v20;
  v28 = v22;
  if (v22 < v10)
  {
    v23 = *(a4 + 8);
    if (v23 >= *(a4 + 16))
    {
      result = sub_FD8188(a4, v20, &v28, (v9 + 100));
    }

    else
    {
      v24 = *(v9 + 100);
      *v23 = v21;
      *(v23 + 8) = v22;
      *(v23 + 16) = v24;
      result = v23 + 24;
    }

    *(a4 + 8) = result;
  }

  return result;
}

void sub_FD7980(BOOL *a1, void *a2)
{
  v6 = 6;
  strcpy(__p, "enable");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_FD7B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD7B5C(BOOL *a1, void *a2)
{
  v6 = 6;
  strcpy(__p, "enable");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_FD7D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD7D94(BOOL *a1, void *a2)
{
  v6[7] = 6;
  strcpy(__p, "enable");
  v3 = sub_5F9D0(a2, __p);
  if ((v6[7] & 0x80000000) != 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_FD7F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FD7FB4(BOOL *a1, void *a2)
{
  v6 = 6;
  strcpy(__p, "enable");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_FD8160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FD8188(uint64_t a1, void *a2, uint64_t *a3, int *a4)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v7 = v6 + 1;
  if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v5) >> 3) > v7)
  {
    v7 = 0x5555555555555556 * ((*(a1 + 16) - v5) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v5) >> 3) >= 0x555555555555555)
  {
    v9 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (v9 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v10 = 8 * ((v4 - *a1) >> 3);
  v11 = *a3;
  v12 = *a4;
  *v10 = *a2;
  *(v10 + 8) = v11;
  *(v10 + 16) = v12;
  v13 = (24 * v6 - (v4 - v5));
  memcpy(v13, v5, v4 - v5);
  *a1 = v13;
  *(a1 + 8) = 24 * v6 + 24;
  *(a1 + 16) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return 24 * v6 + 24;
}

__n128 sub_FD82B0(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
  while (2)
  {
    v11 = (a2 - 24);
    v127 = a2 - 3;
    v12 = &a2[-5].n128_i8[8];
    v13 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v13;
          v14 = (a2 - v13);
          v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v13) >> 3);
          if (v15 <= 2)
          {
            if (v15 < 2)
            {
              return result;
            }

            if (v15 == 2)
            {
              if (a2[-1].n128_u64[0] < v13->n128_u64[1])
              {
                v173 = v13[1].n128_u64[0];
                v147 = *v13;
                v92 = *(a2 - 24);
                v13[1].n128_u32[0] = a2[-1].n128_u32[2];
                *v13 = v92;
                result = v147;
                a2[-1].n128_u32[2] = v173;
                *(a2 - 24) = v147;
              }

              return result;
            }

            goto LABEL_9;
          }

          switch(v15)
          {
            case 3uLL:
              v93 = v13[2].n128_i64[0];
              v94 = a2[-1].n128_i64[0];
              if (v93 < v13->n128_u64[1])
              {
                if (v94 >= v93)
                {
                  v177 = v13[1].n128_u64[0];
                  v151 = *v13;
                  *v13 = *(v13 + 24);
                  v13[1].n128_u32[0] = v13[2].n128_u32[2];
                  result = v151;
                  *(v13 + 24) = v151;
                  v13[2].n128_u32[2] = v177;
                  if (a2[-1].n128_u64[0] < v13[2].n128_u64[0])
                  {
                    result = *(v13 + 24);
                    v120 = v13[2].n128_u64[1];
                    v121 = a2[-1].n128_u32[2];
                    *(v13 + 24) = *v11;
                    v13[2].n128_u32[2] = v121;
                    a2[-1].n128_u32[2] = v120;
                    *v11 = result;
                  }
                }

                else
                {
                  v174 = v13[1].n128_u64[0];
                  v148 = *v13;
                  v95 = *v11;
                  v13[1].n128_u32[0] = a2[-1].n128_u32[2];
                  *v13 = v95;
                  result = v148;
                  a2[-1].n128_u32[2] = v174;
                  *v11 = v148;
                }

                return result;
              }

              if (v94 >= v93)
              {
                return result;
              }

              result = *(v13 + 24);
              v110 = v13[2].n128_u64[1];
              v111 = a2[-1].n128_u32[2];
              *(v13 + 24) = *v11;
              v13[2].n128_u32[2] = v111;
              a2[-1].n128_u32[2] = v110;
              *v11 = result;
              if (v13[2].n128_u64[0] >= v13->n128_u64[1])
              {
                return result;
              }

LABEL_155:
              v179 = v13[1].n128_u64[0];
              v153 = *v13;
              *v13 = *(v13 + 24);
              v13[1].n128_u32[0] = v13[2].n128_u32[2];
              result = v153;
              *(v13 + 24) = v153;
              v13[2].n128_u32[2] = v179;
              return result;
            case 4uLL:
              v96 = v13[2].n128_i64[0];
              v97 = v13[3].n128_i64[1];
              if (v96 >= v13->n128_u64[1])
              {
                if (v97 < v96)
                {
                  result = *(v13 + 24);
                  *(v13 + 24) = v13[3];
                  v113 = v13[2].n128_i64[0];
                  v112 = v13[2].n128_u64[1];
                  v13[2].n128_u32[2] = v13[4].n128_u32[0];
                  v13[3] = result;
                  v13[4].n128_u32[0] = v112;
                  if (v113 < v13->n128_u64[1])
                  {
                    v176 = v13[1].n128_u64[0];
                    v150 = *v13;
                    *v13 = *(v13 + 24);
                    v13[1].n128_u32[0] = v13[2].n128_u32[2];
                    result = v150;
                    *(v13 + 24) = v150;
                    v13[2].n128_u32[2] = v176;
                  }
                }
              }

              else if (v97 >= v96)
              {
                v178 = v13[1].n128_u64[0];
                v152 = *v13;
                *v13 = *(v13 + 24);
                v13[1].n128_u32[0] = v13[2].n128_u32[2];
                result = v152;
                *(v13 + 24) = v152;
                v13[2].n128_u32[2] = v178;
                if (v97 < v13[2].n128_u64[0])
                {
                  v122 = v13[2].n128_u64[1];
                  result = *(v13 + 24);
                  *(v13 + 24) = v13[3];
                  v13[2].n128_u32[2] = v13[4].n128_u32[0];
                  v13[3] = result;
                  v13[4].n128_u32[0] = v122;
                }
              }

              else
              {
                v175 = v13[1].n128_u64[0];
                v149 = *v13;
                *v13 = v13[3];
                v13[1].n128_u32[0] = v13[4].n128_u32[0];
                result = v149;
                v13[3] = v149;
                v13[4].n128_u32[0] = v175;
              }

              if (a2[-1].n128_u64[0] >= v13[3].n128_u64[1])
              {
                return result;
              }

              result = v13[3];
              v123 = v13[4].n128_u64[0];
              v124 = a2[-1].n128_u32[2];
              v13[3] = *v11;
              v13[4].n128_u32[0] = v124;
              a2[-1].n128_u32[2] = v123;
              *v11 = result;
              if (v13[3].n128_u64[1] >= v13[2].n128_u64[0])
              {
                return result;
              }

              result = *(v13 + 24);
              *(v13 + 24) = v13[3];
              v126 = v13[2].n128_i64[0];
              v125 = v13[2].n128_u64[1];
              v13[2].n128_u32[2] = v13[4].n128_u32[0];
              v13[3] = result;
              v13[4].n128_u32[0] = v125;
              if (v126 >= v13->n128_u64[1])
              {
                return result;
              }

              goto LABEL_155;
            case 5uLL:

              result.n128_u64[0] = sub_FD90B8(v13, (v13 + 24), v13 + 3, (v13 + 72), (a2 - 24), result).n128_u64[0];
              return result;
          }

LABEL_9:
          if (v14 <= 575)
          {
            v98 = (v13 + 24);
            v100 = v13 == a2 || v98 == a2;
            if (a5)
            {
              if (!v100)
              {
                v101 = 0;
                v102 = v13;
                do
                {
                  v104 = v98;
                  v105 = v102[2].n128_i64[0];
                  if (v105 < v102->n128_u64[1])
                  {
                    v106 = v104->n128_u64[0];
                    v107 = v102[2].n128_u32[2];
                    v108 = v101;
                    do
                    {
                      v109 = v13 + v108;
                      result = *(v13 + v108);
                      *(v109 + 24) = result;
                      *(v109 + 10) = *(v13[1].n128_u32 + v108);
                      if (!v108)
                      {
                        v103 = v13;
                        goto LABEL_124;
                      }

                      v108 -= 24;
                    }

                    while (v105 < *(v109 - 2));
                    v103 = &v13[1].n128_i64[1] + v108;
LABEL_124:
                    *v103 = v106;
                    *(v103 + 8) = v105;
                    *(v103 + 16) = v107;
                  }

                  v98 = (v104 + 24);
                  v101 += 24;
                  v102 = v104;
                }

                while (&v104[1].n128_i8[8] != a2);
              }
            }

            else if (!v100)
            {
              do
              {
                v114 = v98;
                v115 = a1[2].n128_i64[0];
                if (v115 < a1->n128_u64[1])
                {
                  v116 = v98->n128_u64[0];
                  v117 = a1[2].n128_u64[1];
                  v118 = v114;
                  do
                  {
                    result = *(v118 - 24);
                    *v118 = result;
                    v118[1].n128_u32[0] = v118[-1].n128_u32[2];
                    v119 = v118[-3].n128_i64[1];
                    v118 = (v118 - 24);
                  }

                  while (v115 < v119);
                  v118->n128_u64[0] = v116;
                  v118->n128_u64[1] = v115;
                  v118[1].n128_u32[0] = v117;
                }

                v98 = (v114 + 24);
                a1 = v114;
              }

              while (&v114[1].n128_i8[8] != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v13 != a2)
            {

              sub_FD97C0(v13, a2, a2);
            }

            return result;
          }

          v16 = v15 >> 1;
          v17 = (v13 + 24 * (v15 >> 1));
          v18 = a2[-1].n128_i64[0];
          if (v14 >= 0xC01)
          {
            break;
          }

          v21 = v13->n128_i64[1];
          if (v21 < v17->n128_u64[1])
          {
            if (v18 >= v21)
            {
              v162 = v17[1].n128_u64[0];
              v136 = *v17;
              v40 = *v13;
              v17[1].n128_u32[0] = v13[1].n128_u32[0];
              *v17 = v40;
              result = v136;
              v13[1].n128_u32[0] = v162;
              *v13 = v136;
              if (a2[-1].n128_u64[0] >= v13->n128_u64[1])
              {
                goto LABEL_37;
              }

              v155 = v13[1].n128_u64[0];
              v129 = *v13;
              v41 = *v11;
              v13[1].n128_u32[0] = a2[-1].n128_u32[2];
              *v13 = v41;
            }

            else
            {
              v155 = v17[1].n128_u64[0];
              v129 = *v17;
              v22 = *v11;
              v17[1].n128_u32[0] = a2[-1].n128_u32[2];
              *v17 = v22;
            }

            result = v129;
            a2[-1].n128_u32[2] = v155;
            *v11 = v129;
LABEL_37:
            --a4;
            if ((a5 & 1) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_38;
          }

          if (v18 >= v21)
          {
            goto LABEL_37;
          }

          v158 = v13[1].n128_u64[0];
          v132 = *v13;
          v25 = *v11;
          v13[1].n128_u32[0] = a2[-1].n128_u32[2];
          *v13 = v25;
          result = v132;
          a2[-1].n128_u32[2] = v158;
          *v11 = v132;
          if (v13->n128_u64[1] >= v17->n128_u64[1])
          {
            goto LABEL_37;
          }

          v159 = v17[1].n128_u64[0];
          v133 = *v17;
          v26 = *v13;
          v17[1].n128_u32[0] = v13[1].n128_u32[0];
          *v17 = v26;
          result = v133;
          v13[1].n128_u32[0] = v159;
          *v13 = v133;
          --a4;
          if (a5)
          {
            goto LABEL_38;
          }

LABEL_60:
          v42 = v13->n128_i64[1];
          if (v13[-1].n128_u64[0] < v42)
          {
            goto LABEL_61;
          }

          if (v42 >= a2[-1].n128_u64[0])
          {
            v82 = &v13[1].n128_u64[1];
            do
            {
              v13 = v82;
              if (v82 >= a2)
              {
                break;
              }

              v83 = *(v82 + 8);
              v82 += 24;
            }

            while (v42 >= v83);
          }

          else
          {
            v80 = v13;
            do
            {
              v13 = (v80 + 24);
              v81 = v80[2].n128_i64[0];
              v80 = (v80 + 24);
            }

            while (v42 >= v81);
          }

          v84 = a2;
          if (v13 < a2)
          {
            v85 = a2;
            do
            {
              v84 = (v85 - 24);
              v86 = v85[-1].n128_i64[0];
              v85 = (v85 - 24);
            }

            while (v42 < v86);
          }

          v87 = a1->n128_u64[0];
          v88 = a1[1].n128_u64[0];
          while (v13 < v84)
          {
            v172 = v13[1].n128_u64[0];
            v146 = *v13;
            v89 = *v84;
            v13[1].n128_u32[0] = v84[1].n128_u32[0];
            *v13 = v89;
            result = v146;
            v84[1].n128_u32[0] = v172;
            *v84 = v146;
            do
            {
              v90 = v13[2].n128_i64[0];
              v13 = (v13 + 24);
            }

            while (v42 >= v90);
            do
            {
              v91 = v84[-1].n128_i64[0];
              v84 = (v84 - 24);
            }

            while (v42 < v91);
          }

          if (&v13[-2].n128_i8[8] != a1)
          {
            result = *(v13 - 24);
            a1[1].n128_u32[0] = v13[-1].n128_u32[2];
            *a1 = result;
          }

          a5 = 0;
          v13[-2].n128_u64[1] = v87;
          v13[-1].n128_u64[0] = v42;
          v13[-1].n128_u32[2] = v88;
        }

        v19 = v17->n128_i64[1];
        if (v19 >= v13->n128_u64[1])
        {
          if (v18 < v19)
          {
            v156 = v17[1].n128_u64[0];
            v130 = *v17;
            v23 = *v11;
            v17[1].n128_u32[0] = a2[-1].n128_u32[2];
            *v17 = v23;
            a2[-1].n128_u32[2] = v156;
            *v11 = v130;
            if (v17->n128_u64[1] < v13->n128_u64[1])
            {
              v157 = v13[1].n128_u64[0];
              v131 = *v13;
              v24 = *v17;
              v13[1].n128_u32[0] = v17[1].n128_u32[0];
              *v13 = v24;
              v17[1].n128_u32[0] = v157;
              *v17 = v131;
            }
          }
        }

        else
        {
          if (v18 >= v19)
          {
            v160 = v13[1].n128_u64[0];
            v134 = *v13;
            v27 = *v17;
            v13[1].n128_u32[0] = v17[1].n128_u32[0];
            *v13 = v27;
            v17[1].n128_u32[0] = v160;
            *v17 = v134;
            if (a2[-1].n128_u64[0] >= v17->n128_u64[1])
            {
              goto LABEL_28;
            }

            v154 = v17[1].n128_u64[0];
            v128 = *v17;
            v28 = *v11;
            v17[1].n128_u32[0] = a2[-1].n128_u32[2];
            *v17 = v28;
          }

          else
          {
            v154 = v13[1].n128_u64[0];
            v128 = *v13;
            v20 = *v11;
            v13[1].n128_u32[0] = a2[-1].n128_u32[2];
            *v13 = v20;
          }

          a2[-1].n128_u32[2] = v154;
          *v11 = v128;
        }

LABEL_28:
        v29 = v13 + 24 * v16;
        v30 = (v29 - 24);
        v31 = *(v29 - 2);
        v32 = a2[-3].n128_i64[1];
        if (v31 >= v13[2].n128_u64[0])
        {
          if (v32 < v31)
          {
            v161 = v30[1].n128_i64[0];
            v135 = *v30;
            v36 = *v127;
            v30[1].n128_u32[0] = a2[-2].n128_u32[0];
            *v30 = v36;
            a2[-2].n128_u32[0] = v161;
            *v127 = v135;
            if (v30->n128_u64[1] < v13[2].n128_u64[0])
            {
              v37 = *(v13 + 24);
              v38 = v13[2].n128_u64[1];
              v39 = v30[1].n128_u32[0];
              *(v13 + 24) = *v30;
              v13[2].n128_u32[2] = v39;
              v30[1].n128_u32[0] = v38;
              *v30 = v37;
            }
          }
        }

        else if (v32 >= v31)
        {
          v43 = *(v13 + 24);
          v44 = v13[2].n128_u64[1];
          v45 = v30[1].n128_u32[0];
          *(v13 + 24) = *v30;
          v13[2].n128_u32[2] = v45;
          v30[1].n128_u32[0] = v44;
          *v30 = v43;
          if (a2[-3].n128_u64[1] < v30->n128_u64[1])
          {
            v163 = v30[1].n128_i64[0];
            v137 = *v30;
            v46 = *v127;
            v30[1].n128_u32[0] = a2[-2].n128_u32[0];
            *v30 = v46;
            a2[-2].n128_u32[0] = v163;
            *v127 = v137;
          }
        }

        else
        {
          v33 = *(v13 + 24);
          v34 = v13[2].n128_u64[1];
          v35 = a2[-2].n128_u32[0];
          *(v13 + 24) = *v127;
          v13[2].n128_u32[2] = v35;
          a2[-2].n128_u32[0] = v34;
          *v127 = v33;
        }

        v47 = v13 + 24 * v16;
        v48 = *(v47 + 4);
        v49 = a2[-4].n128_i64[0];
        if (v48 >= v13[3].n128_u64[1])
        {
          if (v49 < v48)
          {
            v164 = *(v47 + 5);
            v138 = *(v47 + 24);
            v53 = *v12;
            *(v47 + 10) = a2[-4].n128_u32[2];
            *(v47 + 24) = v53;
            a2[-4].n128_u32[2] = v164;
            *v12 = v138;
            if (*(v47 + 4) < v13[3].n128_u64[1])
            {
              v54 = v13[3];
              v55 = v13[4].n128_u64[0];
              v56 = *(v47 + 10);
              v13[3] = *(v47 + 24);
              v13[4].n128_u32[0] = v56;
              *(v47 + 10) = v55;
              *(v47 + 24) = v54;
            }
          }
        }

        else
        {
          if (v49 >= v48)
          {
            v57 = v13[3];
            v58 = v13[4].n128_u64[0];
            v59 = *(v47 + 10);
            v13[3] = *(v47 + 24);
            v13[4].n128_u32[0] = v59;
            *(v47 + 10) = v58;
            *(v47 + 24) = v57;
            if (a2[-4].n128_u64[0] >= *(v47 + 4))
            {
              goto LABEL_50;
            }

            v165 = *(v47 + 5);
            v139 = *(v47 + 24);
            v60 = *v12;
            *(v47 + 10) = a2[-4].n128_u32[2];
            *(v47 + 24) = v60;
            v50 = v139;
            a2[-4].n128_u32[2] = v165;
          }

          else
          {
            v50 = v13[3];
            v51 = v13[4].n128_u64[0];
            v52 = a2[-4].n128_u32[2];
            v13[3] = *v12;
            v13[4].n128_u32[0] = v52;
            a2[-4].n128_u32[2] = v51;
          }

          *v12 = v50;
        }

LABEL_50:
        v61 = v17->n128_i64[1];
        v62 = *(v47 + 4);
        if (v61 >= v30->n128_u64[1])
        {
          if (v62 < v61)
          {
            v167 = v17[1].n128_u64[0];
            v141 = *v17;
            *v17 = *(v47 + 24);
            v17[1].n128_u32[0] = *(v47 + 10);
            *(v47 + 10) = v167;
            *(v47 + 24) = v141;
            if (v17->n128_u64[1] < v30->n128_u64[1])
            {
              v168 = v30[1].n128_i64[0];
              v142 = *v30;
              *v30 = *v17;
              v30[1].n128_u32[0] = v17[1].n128_u32[0];
              v17[1].n128_u32[0] = v168;
              *v17 = v142;
            }
          }
        }

        else
        {
          if (v62 >= v61)
          {
            v169 = v30[1].n128_i64[0];
            v143 = *v30;
            *v30 = *v17;
            v30[1].n128_u32[0] = v17[1].n128_u32[0];
            v17[1].n128_u32[0] = v169;
            *v17 = v143;
            if (*(v47 + 4) >= v17->n128_u64[1])
            {
              goto LABEL_59;
            }

            v166 = v17[1].n128_u64[0];
            v140 = *v17;
            *v17 = *(v47 + 24);
            v17[1].n128_u32[0] = *(v47 + 10);
          }

          else
          {
            v166 = v30[1].n128_u64[0];
            v140 = *v30;
            *v30 = *(v47 + 24);
            v30[1].n128_u32[0] = *(v47 + 10);
          }

          *(v47 + 10) = v166;
          *(v47 + 24) = v140;
        }

LABEL_59:
        v170 = v13[1].n128_u64[0];
        v144 = *v13;
        v63 = *v17;
        v13[1].n128_u32[0] = v17[1].n128_u32[0];
        *v13 = v63;
        result = v144;
        v17[1].n128_u32[0] = v170;
        *v17 = v144;
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_38:
        v42 = v13->n128_i64[1];
LABEL_61:
        v64 = 0;
        v65 = v13->n128_u64[0];
        v66 = v13[1].n128_u64[0];
        do
        {
          v67 = v13[2].n128_i64[v64];
          v64 += 3;
        }

        while (v67 < v42);
        v68 = (v13 + v64 * 8);
        v69 = a2;
        if (v64 == 3)
        {
          v72 = a2;
          while (v68 < v72)
          {
            v70 = (v72 - 24);
            v73 = v72[-1].n128_i64[0];
            v72 = (v72 - 24);
            if (v73 < v42)
            {
              goto LABEL_69;
            }
          }

          v70 = v72;
          v13 = v68;
        }

        else
        {
          do
          {
            v70 = (v69 - 24);
            v71 = v69[-1].n128_i64[0];
            v69 = (v69 - 24);
          }

          while (v71 >= v42);
LABEL_69:
          v13 = v68;
          if (v68 < v70)
          {
            v74 = v70;
            do
            {
              v171 = v13[1].n128_u64[0];
              v145 = *v13;
              v75 = *v74;
              v13[1].n128_u32[0] = *(v74 + 16);
              *v13 = v75;
              result = v145;
              *(v74 + 16) = v171;
              *v74 = v145;
              do
              {
                v76 = v13[2].n128_i64[0];
                v13 = (v13 + 24);
              }

              while (v76 < v42);
              do
              {
                v77 = *(v74 - 16);
                v74 -= 24;
              }

              while (v77 >= v42);
            }

            while (v13 < v74);
          }
        }

        if (&v13[-2].n128_i8[8] != a1)
        {
          result = *(v13 - 24);
          a1[1].n128_u32[0] = v13[-1].n128_u32[2];
          *a1 = result;
        }

        v13[-2].n128_u64[1] = v65;
        v13[-1].n128_u64[0] = v42;
        v13[-1].n128_u32[2] = v66;
        if (v68 >= v70)
        {
          break;
        }

LABEL_80:
        result = sub_FD82B0(a1, (v13 - 24), a3, a4, a5 & 1, result);
        a5 = 0;
      }

      v78 = sub_FD9300(a1, &v13[-2].n128_i64[1], result);
      if (sub_FD9300(v13, a2, v79))
      {
        break;
      }

      if (!v78)
      {
        goto LABEL_80;
      }
    }

    a2 = (v13 - 24);
    if (!v78)
    {
      continue;
    }

    return result;
  }
}

__n128 sub_FD90B8(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_i64[1];
  v7 = a3->n128_i64[1];
  if (v6 >= a1->n128_u64[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      v10 = a2[1].n128_u64[0];
      v11 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v11;
      a3[1].n128_u32[0] = v10;
      *a3 = result;
      if (a2->n128_u64[1] < a1->n128_u64[1])
      {
        result = *a1;
        v12 = a1[1].n128_u64[0];
        v13 = a2[1].n128_u32[0];
        *a1 = *a2;
        a1[1].n128_u32[0] = v13;
        a2[1].n128_u32[0] = v12;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      v8 = a1[1].n128_u64[0];
      v9 = a3[1].n128_u32[0];
      *a1 = *a3;
      a1[1].n128_u32[0] = v9;
LABEL_9:
      a3[1].n128_u32[0] = v8;
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    v14 = a1[1].n128_u64[0];
    v15 = a2[1].n128_u32[0];
    *a1 = *a2;
    a1[1].n128_u32[0] = v15;
    a2[1].n128_u32[0] = v14;
    *a2 = result;
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      result = *a2;
      v8 = a2[1].n128_u64[0];
      v16 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u64[1] < a3->n128_u64[1])
  {
    result = *a3;
    v17 = a3[1].n128_u64[0];
    v18 = a4[1].n128_u32[0];
    *a3 = *a4;
    a3[1].n128_u32[0] = v18;
    a4[1].n128_u32[0] = v17;
    *a4 = result;
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      result = *a2;
      v19 = a2[1].n128_u64[0];
      v20 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v20;
      a3[1].n128_u32[0] = v19;
      *a3 = result;
      if (a2->n128_u64[1] < a1->n128_u64[1])
      {
        result = *a1;
        v21 = a1[1].n128_u64[0];
        v22 = a2[1].n128_u32[0];
        *a1 = *a2;
        a1[1].n128_u32[0] = v22;
        a2[1].n128_u32[0] = v21;
        *a2 = result;
      }
    }
  }

  if (a5->n128_u64[1] < a4->n128_u64[1])
  {
    result = *a4;
    v23 = a4[1].n128_u64[0];
    v24 = a5[1].n128_u32[0];
    *a4 = *a5;
    a4[1].n128_u32[0] = v24;
    a5[1].n128_u32[0] = v23;
    *a5 = result;
    if (a4->n128_u64[1] < a3->n128_u64[1])
    {
      result = *a3;
      v25 = a3[1].n128_u64[0];
      v26 = a4[1].n128_u32[0];
      *a3 = *a4;
      a3[1].n128_u32[0] = v26;
      a4[1].n128_u32[0] = v25;
      *a4 = result;
      if (a3->n128_u64[1] < a2->n128_u64[1])
      {
        result = *a2;
        v27 = a2[1].n128_u64[0];
        v28 = a3[1].n128_u32[0];
        *a2 = *a3;
        a2[1].n128_u32[0] = v28;
        a3[1].n128_u32[0] = v27;
        *a3 = result;
        if (a2->n128_u64[1] < a1->n128_u64[1])
        {
          result = *a1;
          v29 = a1[1].n128_u64[0];
          v30 = a2[1].n128_u32[0];
          *a1 = *a2;
          a1[1].n128_u32[0] = v30;
          a2[1].n128_u32[0] = v29;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_FD9300(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v8 = a2 - 3;
      v9 = *(a1 + 32);
      v10 = *(a2 - 2);
      if (v9 < *(a1 + 8))
      {
        if (v10 >= v9)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v39;
          *(a1 + 40) = v38;
          if (*(a2 - 2) >= *(a1 + 32))
          {
            return 1;
          }

          v11 = *(a1 + 24);
          v12 = *(a1 + 40);
          v40 = *(a2 - 2);
          *(a1 + 24) = *v8;
          *(a1 + 40) = v40;
        }

        else
        {
          v11 = *a1;
          v12 = *(a1 + 16);
          v13 = *(a2 - 2);
          *a1 = *v8;
          *(a1 + 16) = v13;
        }

        *(a2 - 2) = v12;
        *v8 = v11;
        return 1;
      }

      if (v10 >= v9)
      {
        return 1;
      }

      v25 = *(a1 + 24);
      v26 = *(a1 + 40);
      v27 = *(a2 - 2);
      *(a1 + 24) = *v8;
      *(a1 + 40) = v27;
      *(a2 - 2) = v26;
      *v8 = v25;
      if (*(a1 + 32) >= *(a1 + 8))
      {
        return 1;
      }

LABEL_51:
      v61 = *(a1 + 16);
      v62 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v62;
      *(a1 + 40) = v61;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_FD90B8(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 3), a3);
        return 1;
      }

      goto LABEL_13;
    }

    v20 = *(a1 + 32);
    v21 = *(a1 + 8);
    v22 = *(a1 + 56);
    if (v20 >= v21)
    {
      if (v22 < v20)
      {
        v33 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        v35 = *(a1 + 32);
        v34 = *(a1 + 40);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v33;
        *(a1 + 64) = v34;
        if (v35 < v21)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
        }
      }
    }

    else
    {
      if (v22 < v20)
      {
        v23 = *(a1 + 16);
        v24 = *a1;
        *a1 = *(a1 + 48);
        *(a1 + 16) = *(a1 + 64);
LABEL_47:
        *(a1 + 48) = v24;
        *(a1 + 64) = v23;
        goto LABEL_48;
      }

      v52 = *(a1 + 16);
      v53 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v53;
      *(a1 + 40) = v52;
      if (v22 < *(a1 + 32))
      {
        v23 = *(a1 + 40);
        v24 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        goto LABEL_47;
      }
    }

LABEL_48:
    if (*(a2 - 2) >= *(a1 + 56))
    {
      return 1;
    }

    v54 = a2 - 3;
    v55 = *(a1 + 48);
    v56 = *(a1 + 64);
    v57 = *(a2 - 2);
    *(a1 + 48) = *(a2 - 3);
    *(a1 + 64) = v57;
    *(v54 + 4) = v56;
    *v54 = v55;
    if (*(a1 + 56) >= *(a1 + 32))
    {
      return 1;
    }

    v58 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    v60 = *(a1 + 32);
    v59 = *(a1 + 40);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v58;
    *(a1 + 64) = v59;
    if (v60 >= *(a1 + 8))
    {
      return 1;
    }

    goto LABEL_51;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 2) < *(a1 + 8))
    {
      v4 = *a1;
      v5 = *(a1 + 16);
      v6 = *(a2 - 2);
      *a1 = *(a2 - 3);
      *(a1 + 16) = v6;
      *(a2 - 2) = v5;
      *(a2 - 3) = v4;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 48;
  v15 = *(a1 + 32);
  v16 = *(a1 + 8);
  v17 = *(a1 + 56);
  if (v15 >= v16)
  {
    if (v17 < v15)
    {
      v28 = *(a1 + 24);
      *(a1 + 24) = *v14;
      v30 = *(a1 + 32);
      v29 = *(a1 + 40);
      *(a1 + 40) = *(a1 + 64);
      *v14 = v28;
      *(a1 + 64) = v29;
      if (v30 < v16)
      {
        v31 = *(a1 + 16);
        v32 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v32;
        *(a1 + 40) = v31;
      }
    }
  }

  else
  {
    if (v17 >= v15)
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
      if (v17 >= *(a1 + 32))
      {
        goto LABEL_34;
      }

      v18 = *(a1 + 40);
      v19 = *(a1 + 24);
      *(a1 + 24) = *v14;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v18 = *(a1 + 16);
      v19 = *a1;
      *a1 = *v14;
      *(a1 + 16) = *(a1 + 64);
    }

    *v14 = v19;
    *(a1 + 64) = v18;
  }

LABEL_34:
  v43 = a1 + 72;
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    v46 = *(v43 + 8);
    if (v46 < *(v14 + 8))
    {
      break;
    }

LABEL_43:
    v14 = v43;
    v44 += 24;
    v43 += 24;
    if (v43 == a2)
    {
      return 1;
    }
  }

  v47 = *v43;
  v48 = *(v43 + 16);
  v49 = v44;
  do
  {
    v50 = a1 + v49;
    *(v50 + 72) = *(a1 + v49 + 48);
    *(v50 + 88) = *(a1 + v49 + 64);
    if (v49 == -48)
    {
      *a1 = v47;
      *(a1 + 8) = v46;
      *(a1 + 16) = v48;
      if (++v45 != 8)
      {
        goto LABEL_43;
      }

      return v43 + 24 == a2;
    }

    v49 -= 24;
  }

  while (v46 < *(v50 + 32));
  v51 = a1 + v49;
  *(v51 + 72) = v47;
  *(v51 + 80) = v46;
  *(v51 + 88) = v48;
  if (++v45 != 8)
  {
    goto LABEL_43;
  }

  return v43 + 24 == a2;
}

char *sub_FD97C0(char *a1, char *a2, char *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (a2 - a1 >= 25 && v3 >= 0x30)
  {
    v50 = (v4 - 2) >> 1;
    v51 = v50;
    do
    {
      if (v50 >= v51)
      {
        v52 = (2 * (v51 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        v53 = &a1[24 * v52];
        if (2 * v51 + 2 < v4)
        {
          v54 = *(v53 + 1);
          v55 = *(v53 + 4);
          v56 = v54 < v55;
          v57 = v54 >= v55 ? 0 : 24;
          v53 += v57;
          if (v56)
          {
            v52 = 2 * v51 + 2;
          }
        }

        v58 = &a1[24 * v51];
        v59 = *(v58 + 1);
        if (*(v53 + 1) >= v59)
        {
          v60 = *v58;
          v61 = *(v58 + 4);
          do
          {
            v62 = v58;
            v58 = v53;
            v63 = *v53;
            *(v62 + 4) = *(v53 + 4);
            *v62 = v63;
            if (v50 < v52)
            {
              break;
            }

            v64 = (2 * v52) | 1;
            v53 = &a1[24 * v64];
            v65 = 2 * v52 + 2;
            if (v65 < v4)
            {
              v66 = *(v53 + 1);
              v67 = *(v53 + 4);
              v68 = v66 < v67;
              v69 = v66 >= v67 ? 0 : 24;
              v53 += v69;
              if (v68)
              {
                v64 = v65;
              }
            }

            v52 = v64;
          }

          while (*(v53 + 1) >= v59);
          *v58 = v60;
          *(v58 + 1) = v59;
          *(v58 + 4) = v61;
        }
      }

      v14 = v51-- <= 0;
    }

    while (!v14);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 48)
    {
      i = a2;
      do
      {
        if (*(i + 1) < *(a1 + 1))
        {
          v6 = *i;
          v7 = *(i + 2);
          v8 = *(a1 + 4);
          *i = *a1;
          *(i + 4) = v8;
          *(a1 + 4) = v7;
          *a1 = v6;
        }

        i += 24;
      }

      while (i != a3);
      goto LABEL_34;
    }

    for (i = a2; i != a3; i += 24)
    {
      if (*(i + 1) < *(a1 + 1))
      {
        v9 = *i;
        v10 = *(i + 2);
        v11 = *(a1 + 4);
        *i = *a1;
        *(i + 4) = v11;
        *(a1 + 4) = v10;
        *a1 = v9;
        if (v4 < 3)
        {
          v16 = a1 + 24;
          v17 = 1;
          v18 = *(a1 + 1);
          if (*(a1 + 4) >= v18)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v12 = *(a1 + 4);
          v13 = *(a1 + 7);
          v14 = v12 < v13;
          if (v12 >= v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = 24;
          }

          v16 = &a1[v15 + 24];
          if (v14)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          v18 = *(a1 + 1);
          if (*(v16 + 1) >= v18)
          {
LABEL_24:
            v19 = *a1;
            v20 = *(a1 + 4);
            v21 = a1;
            do
            {
              v22 = v21;
              v21 = v16;
              v23 = *v16;
              *(v22 + 4) = *(v16 + 4);
              *v22 = v23;
              if (((v4 - 2) >> 1) < v17)
              {
                break;
              }

              v24 = (2 * v17) | 1;
              v16 = &a1[24 * v24];
              v25 = 2 * v17 + 2;
              if (v25 < v4)
              {
                v26 = *(v16 + 1);
                v27 = *(v16 + 4);
                v28 = v26 < v27;
                v29 = v26 >= v27 ? 0 : 24;
                v16 += v29;
                if (v28)
                {
                  v24 = v25;
                }
              }

              v17 = v24;
            }

            while (*(v16 + 1) >= v18);
            *v21 = v19;
            *(v21 + 1) = v18;
            *(v21 + 4) = v20;
          }
        }
      }
    }
  }

LABEL_34:
  if (v3 >= 25)
  {
    v30 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    do
    {
      v31 = 0;
      v70 = *a1;
      v71 = *(a1 + 2);
      v32 = a1;
      do
      {
        v38 = &v32[24 * v31];
        v36 = v38 + 24;
        v39 = (2 * v31) | 1;
        v31 = 2 * v31 + 2;
        if (v31 < v30)
        {
          v33 = *(v38 + 4);
          v34 = *(v38 + 7);
          v35 = v38 + 48;
          if (v33 >= v34)
          {
            v31 = v39;
          }

          else
          {
            v36 = v35;
          }
        }

        else
        {
          v31 = v39;
        }

        v37 = *v36;
        *(v32 + 4) = *(v36 + 4);
        *v32 = v37;
        v32 = v36;
      }

      while (v31 <= ((v30 - 2) >> 1));
      a2 -= 24;
      if (v36 == a2)
      {
        *(v36 + 4) = v71;
        *v36 = v70;
      }

      else
      {
        v40 = *a2;
        *(v36 + 4) = *(a2 + 4);
        *v36 = v40;
        *a2 = v70;
        *(a2 + 4) = v71;
        v41 = v36 - a1 + 24;
        if (v41 >= 25)
        {
          v42 = (-2 - 0x5555555555555555 * (v41 >> 3)) >> 1;
          v43 = &a1[24 * v42];
          v44 = *(v36 + 1);
          if (*(v43 + 1) < v44)
          {
            v45 = *v36;
            v46 = *(v36 + 4);
            do
            {
              v47 = v36;
              v36 = v43;
              v48 = *v43;
              *(v47 + 4) = *(v43 + 4);
              *v47 = v48;
              if (!v42)
              {
                break;
              }

              v42 = (v42 - 1) >> 1;
              v43 = &a1[24 * v42];
            }

            while (*(v43 + 1) < v44);
            *v36 = v45;
            *(v36 + 1) = v44;
            *(v36 + 4) = v46;
          }
        }
      }

      v14 = v30-- <= 2;
    }

    while (!v14);
  }

  return i;
}

void sub_FD9BE0()
{
  byte_27C044F = 3;
  LODWORD(qword_27C0438) = 5136193;
  byte_27C0467 = 3;
  LODWORD(qword_27C0450) = 5136194;
  byte_27C047F = 3;
  LODWORD(qword_27C0468) = 5136195;
  byte_27C0497 = 15;
  strcpy(&qword_27C0480, "vehicle_mass_kg");
  byte_27C04AF = 21;
  strcpy(&xmmword_27C0498, "vehicle_cargo_mass_kg");
  byte_27C04C7 = 19;
  strcpy(&qword_27C04B0, "vehicle_aux_power_w");
  byte_27C04DF = 15;
  strcpy(&qword_27C04C8, "dcdc_efficiency");
  strcpy(&qword_27C04E0, "drive_train_efficiency");
  HIBYTE(word_27C04F6) = 22;
  operator new();
}

void sub_FD9DBC(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C04F6) < 0)
  {
    sub_21E5FC0();
  }

  sub_21E5FCC();
  _Unwind_Resume(a1);
}

void sub_FD9DDC(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v4 = *a3;
  *&v6 = a3[1];
  *(&v6 + 7) = *(a3 + 15);
  v5 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *a1 = a4;
  *(a1 + 23) = *(&v6 + 7);
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 31) = v5;
  sub_FDE1AC(a1 + 32);
}

void sub_FD9EE0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 1336);
  if (v4)
  {
    *(v1 + 1344) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 1320) = v5;
    operator delete(v5);
  }

  sub_3BECA4((v1 + 32));
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_FD9F3C(uint64_t a1, void *a2)
{
  HIBYTE(v6[2]) = 13;
  strcpy(v6, "walking_speed");
  v3 = sub_62A70(a2, v6);
  v4 = 4.7;
  if (v3)
  {
    v5 = *(v3 + 12);
    switch(v5)
    {
      case 4:
        *(a1 + 56) = v3[5];
        if ((SHIBYTE(v6[2]) & 0x80000000) == 0)
        {
LABEL_10:
          operator new();
        }

LABEL_9:
        operator delete(v6[0]);
        goto LABEL_10;
      case 3:
        v4 = v3[5];
        break;
      case 2:
        *(a1 + 56) = v3[5];
        if ((SHIBYTE(v6[2]) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
    }
  }

  *(a1 + 56) = v4;
  if ((SHIBYTE(v6[2]) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_FDD898(_Unwind_Exception *a1)
{
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
  }

  sub_6BC10((v1 - 192));
  v3 = *(v1 - 168);
  if (v3)
  {
    *(v1 - 160) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 144);
  if (v4)
  {
    *(v1 - 136) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_FDDF84()
{
  if (*(v0 - 145) < 0)
  {
    operator delete(*(v0 - 168));
  }

  JUMPOUT(0xFDDF6CLL);
}

void sub_FDDFA4(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *&v46 = a4;
  *(&v46 + 1) = a5;
  v47 = a6;
  v6 = *a1;
  v7 = a1[1];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v6 != v7)
  {
    v9 = *(v7 - 32);
    if (v9 != -1)
    {
      v11 = a3;
      sub_F9B6DC(a3, (v9 + 1), &v46);
      a5 = *(&v46 + 1);
      a4 = *&v46;
      a6 = v47;
      v6 = *a1;
      v7 = a1[1];
      a3 = v11;
    }

    if (v6 != v7)
    {
      v13 = a3;
      v12 = *a3;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v13[1] - v12) >> 3);
      if (a2)
      {
        v15 = 0;
        do
        {
          v17 = a4;
          v18 = a5;
          v19 = a6;
          if (v15)
          {
            v20 = v15 - 1;
          }

          else
          {
            v20 = 0;
          }

          v21 = *v6;
          a4 = *(v6 + 8);
          a5 = *(v6 + 16);
          a6 = *(v6 + 24);
          v16 = v15;
          if (v14 <= v15 || v15 > v21)
          {
            v16 = v15;
          }

          else
          {
            v23 = a4 - v17;
            v24 = a5 - v18;
            v25 = a6 - v19;
            v26 = v21 >= v20;
            v27 = v21 - v20;
            if (v27 != 0 && v26)
            {
              v28 = v27;
              v29 = v15 != 0;
              do
              {
                v30 = v29 / v28;
                v31 = (v12 + 24 * v16);
                v16 = (v15 + 1);
                *v31 = v17 + v23 * v30;
                v31[1] = v18 + v24 * v30;
                v31[2] = v19 + v25 * v30;
                if (v14 <= v16)
                {
                  break;
                }

                ++v29;
                LODWORD(v15) = v15 + 1;
              }

              while (v16 <= v21);
            }

            else
            {
              v32 = v17 + v23;
              v33 = v18 + v24;
              v34 = v19 + v25;
              v35 = v15;
              do
              {
                v15 = (v15 + 1);
                v36 = (v12 + 24 * v35);
                *v36 = v32;
                v36[1] = v33;
                v36[2] = v34;
                v37 = v14 <= v15 || v15 > v21;
                v16 = v15;
                v35 = v15;
              }

              while (!v37);
            }
          }

          v6 += 32;
          v15 = v16;
        }

        while (v6 != v7);
      }

      else
      {
        LODWORD(v38) = 0;
        do
        {
          v39 = *v6;
          v40 = v38;
          if (v14 > v38 && v38 <= v39)
          {
            v42 = *(v6 + 8);
            v43 = *(v6 + 24);
            do
            {
              v38 = (v38 + 1);
              v44 = v12 + 24 * v40;
              *v44 = v42;
              *(v44 + 16) = v43;
              v45 = v14 <= v38 || v38 > v39;
              v40 = v38;
            }

            while (!v45);
          }

          v6 += 32;
        }

        while (v6 != v7);
      }
    }
  }
}

void sub_FDE190(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_FDE1AC(uint64_t a1)
{
  *(a1 + 8) = xmmword_22AEA50;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 56) = unk_22AEB60;
  *(a1 + 72) = xmmword_22AEB70;
  *(a1 + 88) = unk_22AEB80;
  *(a1 + 104) = xmmword_22AEB90;
  *a1 = 1;
  *(a1 + 2) = 0;
  *(a1 + 40) = xmmword_22AEB50;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0x4034000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 184) = 0;
  *(a1 + 152) = 0x3FF0000000000000;
  *(a1 + 160) = 0x700000002;
  *(a1 + 168) = 7;
  *(a1 + 172) = 0;
  *(a1 + 174) = 1;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  operator new();
}

void sub_FDE61C(_Unwind_Exception *exception_object)
{
  v9 = v2;
  v11 = *v9;
  if (*v9)
  {
    v1[89] = v11;
    operator delete(v11);
    v12 = *v8;
    if (!*v8)
    {
LABEL_3:
      v13 = v1[82];
      if (!v13)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v12 = *v8;
    if (!*v8)
    {
      goto LABEL_3;
    }
  }

  v1[86] = v12;
  operator delete(v12);
  v13 = v1[82];
  if (!v13)
  {
LABEL_4:
    v14 = *v7;
    if (!*v7)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v1[83] = v13;
  operator delete(v13);
  v14 = *v7;
  if (!*v7)
  {
LABEL_5:
    v15 = v1[70];
    if (!v15)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v1[78] = v14;
  operator delete(v14);
  v15 = v1[70];
  if (!v15)
  {
LABEL_6:
    v16 = *v6;
    if (!*v6)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v1[71] = v15;
  operator delete(v15);
  v16 = *v6;
  if (!*v6)
  {
LABEL_7:
    v17 = v1[62];
    if (!v17)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v1[66] = v16;
  operator delete(v16);
  v17 = v1[62];
  if (!v17)
  {
LABEL_8:
    v18 = v1[59];
    if (!v18)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v1[63] = v17;
  operator delete(v17);
  v18 = v1[59];
  if (!v18)
  {
LABEL_9:
    v19 = v1[56];
    if (!v19)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v1[60] = v18;
  operator delete(v18);
  v19 = v1[56];
  if (!v19)
  {
LABEL_10:
    v20 = *v5;
    if (!*v5)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v1[57] = v19;
  operator delete(v19);
  v20 = *v5;
  if (!*v5)
  {
LABEL_11:
    v21 = *v4;
    if (!*v4)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v1[30] = v20;
  operator delete(v20);
  v21 = *v4;
  if (!*v4)
  {
LABEL_12:
    v22 = *v3;
    if (!*v3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_25:
  v1[27] = v21;
  operator delete(v21);
  v22 = *v3;
  if (!*v3)
  {
LABEL_14:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  v1[24] = v22;
  operator delete(v22);
  goto LABEL_14;
}

void sub_FDE7C8()
{
  if (*v0)
  {
    JUMPOUT(0xFDE7B4);
  }

  JUMPOUT(0xFDE67CLL);
}

void sub_FDE7D8()
{
  if (!*v0)
  {
    JUMPOUT(0xFDE68CLL);
  }

  JUMPOUT(0xFDE684);
}

uint64_t sub_FDE7E8(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  v9 = a2[8];
  v10 = a2[9];
  v11 = a2[10];
  *(a1 + 176) = *(a2 + 44);
  *(a1 + 144) = v10;
  *(a1 + 160) = v11;
  *(a1 + 184) = 0;
  *(a1 + 128) = v9;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v13 = *(a2 + 23);
  v12 = *(a2 + 24);
  if (v12 != v13)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  v15 = *(a2 + 26);
  v14 = *(a2 + 27);
  if (v14 != v15)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  v17 = *(a2 + 29);
  v16 = *(a2 + 30);
  if (v16 != v17)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  v18 = a2[16];
  v19 = a2[17];
  v20 = a2[19];
  *(a1 + 288) = a2[18];
  *(a1 + 304) = v20;
  *(a1 + 256) = v18;
  *(a1 + 272) = v19;
  v21 = a2[20];
  v22 = a2[21];
  v23 = a2[23];
  *(a1 + 352) = a2[22];
  *(a1 + 368) = v23;
  *(a1 + 320) = v21;
  *(a1 + 336) = v22;
  v24 = a2[24];
  v25 = a2[25];
  v26 = a2[27];
  *(a1 + 416) = a2[26];
  *(a1 + 432) = v26;
  *(a1 + 384) = v24;
  *(a1 + 400) = v25;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 448) = 0;
  v28 = *(a2 + 56);
  v27 = *(a2 + 57);
  if (v27 != v28)
  {
    if (((v27 - v28) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  v30 = *(a2 + 59);
  v29 = *(a2 + 60);
  if (v29 != v30)
  {
    if (((v29 - v30) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  v32 = *(a2 + 62);
  v31 = *(a2 + 63);
  if (v31 != v32)
  {
    if (((v31 - v32) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  v33 = *(a2 + 65);
  v34 = *(a2 + 66);
  if (v34 != v33)
  {
    if (((v34 - v33) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 544) = a2[34];
  *(a1 + 560) = 0;
  *(a1 + 576) = 0;
  *(a1 + 568) = 0;
  v35 = *(a2 + 70);
  v36 = *(a2 + 71);
  if (v36 != v35)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  v37 = *(a2 + 600);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 600) = v37;
  *(a1 + 616) = 0;
  *(a1 + 632) = 0;
  *(a1 + 624) = 0;
  v38 = *(a2 + 77);
  v39 = *(a2 + 78);
  if (v39 != v38)
  {
    if (((v39 - v38) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 640) = a2[40];
  *(a1 + 656) = 0;
  *(a1 + 672) = 0;
  *(a1 + 664) = 0;
  v40 = *(a2 + 82);
  v41 = *(a2 + 83);
  if (v41 != v40)
  {
    if (((v41 - v40) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  v42 = *(a2 + 85);
  v43 = *(a2 + 86);
  if (v43 != v42)
  {
    if (((v43 - v42) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  v44 = *(a2 + 88);
  v45 = *(a2 + 89);
  if (v45 != v44)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  memcpy((a1 + 728), a2 + 728, 0x228uLL);
  return a1;
}

void sub_FDEDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void **a11, void **a12)
{
  v20 = *v17;
  if (*v17)
  {
    v12[89] = v20;
    operator delete(v20);
    v21 = *v13;
    if (!*v13)
    {
LABEL_3:
      v22 = *v14;
      if (!*v14)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v21 = *v13;
    if (!*v13)
    {
      goto LABEL_3;
    }
  }

  v12[86] = v21;
  operator delete(v21);
  v22 = *v14;
  if (!*v14)
  {
LABEL_4:
    v23 = *a10;
    if (!*a10)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12[83] = v22;
  operator delete(v22);
  v23 = *a10;
  if (!*a10)
  {
LABEL_5:
    v24 = *a11;
    if (!*a11)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12[78] = v23;
  operator delete(v23);
  v24 = *a11;
  if (!*a11)
  {
LABEL_6:
    v25 = *v18;
    if (!*v18)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12[71] = v24;
  operator delete(v24);
  v25 = *v18;
  if (!*v18)
  {
LABEL_7:
    v26 = v12[62];
    if (!v26)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12[66] = v25;
  operator delete(v25);
  v26 = v12[62];
  if (!v26)
  {
LABEL_8:
    v27 = v12[59];
    if (!v27)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12[63] = v26;
  operator delete(v26);
  v27 = v12[59];
  if (!v27)
  {
LABEL_9:
    v28 = v12[56];
    if (!v28)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12[60] = v27;
  operator delete(v27);
  v28 = v12[56];
  if (!v28)
  {
LABEL_10:
    v29 = *v16;
    if (!*v16)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12[57] = v28;
  operator delete(v28);
  v29 = *v16;
  if (!*v16)
  {
LABEL_11:
    v30 = *v15;
    if (!*v15)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12[30] = v29;
  operator delete(v29);
  v30 = *v15;
  if (!*v15)
  {
LABEL_12:
    v31 = *a12;
    if (!*a12)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_25:
  v12[27] = v30;
  operator delete(v30);
  v31 = *a12;
  if (!*a12)
  {
LABEL_14:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  v12[24] = v31;
  operator delete(v31);
  goto LABEL_14;
}

void sub_FDEF9C()
{
  if (*v0)
  {
    JUMPOUT(0xFDEF74);
  }

  JUMPOUT(0xFDEE30);
}

void sub_FDEFAC()
{
  if (*v0)
  {
    JUMPOUT(0xFDEF84);
  }

  JUMPOUT(0xFDEE38);
}

void sub_FDEFBC()
{
  if (!*v0)
  {
    JUMPOUT(0xFDEE4CLL);
  }

  JUMPOUT(0xFDEE44);
}

void sub_FDF034(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;
  a1[1] = a2;
  HIBYTE(v4[2]) = 18;
  strcpy(v4, "DrivingPathFinding");
  memset(v3, 0, sizeof(v3));
  sub_3AEC94(a3, v4, v3);
  operator new();
}

void sub_FDF370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void **a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a17);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_1324F78(v25 + v29);
  sub_CF3C94(v25 + v28);
  sub_6BB60(v25 + v27);
  sub_616CD4(v26);
  sub_CEC00C(v25 + 24);
  _Unwind_Resume(a1);
}

void sub_FDF3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void **a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a17);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_FDF430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  *(v8 + 61512) = -1;
  *(v8 + 61520) = -1;
  *(v8 + 61064) = 0u;
  *(v8 + 61080) = 0u;
  *(v8 + 61096) = 0u;
  *(v8 + 61112) = 0u;
  v13 = v8 + 61440;
  *(v8 + 61128) = 0u;
  *(v8 + 61144) = 0u;
  *(v8 + 61160) = 0u;
  *(v8 + 61176) = 0u;
  *(v8 + 61192) = 0u;
  *(v8 + 61208) = 0u;
  *(v8 + 61224) = 0u;
  *(v8 + 61240) = 0u;
  *(v8 + 61256) = 0u;
  *(v8 + 61272) = 0u;
  *(v8 + 61288) = 0u;
  *(v8 + 61304) = 0u;
  *(v8 + 61320) = 0u;
  *(v8 + 61336) = 0u;
  *(v8 + 61352) = 0u;
  *(v8 + 61368) = 0u;
  *(v8 + 61384) = 0u;
  *(v8 + 61400) = 0u;
  *(v8 + 61416) = 0u;
  v15 = *(v8 + 61544);
  for (i = *(v8 + 61552); i != v15; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  *(v13 + 112) = v15;
  sub_44F320(v10);
  sub_FE54DC(v16, v12);
}

void sub_FDF798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_FE90B8(va);
  sub_FDF810((v9 - 152));
  sub_FE0750((v9 - 128));
  _Unwind_Resume(a1);
}

void **sub_FDF810(void **a1)
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
        v3 = sub_4547F0(v3 - 560);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_FDF86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  v13 = v12;
  v15 = *v14;
  if (!sub_10E304C(*v14))
  {
    v44 = v11;
    v16 = sub_3B1D8C(*v11);
    v45[0].n128_u64[0] = sub_445A60(v10 + 160);
    v45[0].n128_u64[1] = v17;
    v18 = sub_45AC50(v45);
    sub_2AB9C8(v16, *v18, 2, &v47);
    sub_E6F038(v10, v45);
    v19 = sub_99078(v45);
    v20 = 0;
    if (v51 && v52 != -1)
    {
      v21 = v49;
      if (v49 == v50)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v22 = *(v21 + 4);
        v23.i64[0] = v22;
        v23.i64[1] = HIDWORD(v22);
        v24 = v23;
        v24.i32[3] = *(v21 + 3);
        v24.i32[1] = v23.i32[0];
        if ((vmaxv_u16(vmovn_s32(vceqq_s32(v24, xmmword_2290150))) & 1) == 0 && v21[16] && (!v19 || ((1 << *v21) & v19) != 0))
        {
          break;
        }

        v21 += 48;
        if (v21 == v50)
        {
          goto LABEL_20;
        }
      }

      if (v47 == v48)
      {
LABEL_20:
        v20 = 0;
      }

      else
      {
        v25 = v47 + 48;
        do
        {
          v26 = *(v25 - 31);
          v20 = v26 < 3;
          v27 = v26 < 3 || v25 == v48;
          v25 += 48;
        }

        while (!v27);
      }
    }

    sub_445EF4(v10 + 160);
    if (*(v18 + 8))
    {
      v28 = *(v18 + 12) == -1;
    }

    else
    {
      v28 = 1;
    }

    v29 = !v28;
    v30 = sub_681D7C(v15);
    v31 = *v30;
    v32 = v30[1];
    if (*v30 != v32)
    {
      do
      {
        nullsub_1();
        v34 = sub_F695B8(*v33);
        v31 += 48;
        v35 = v31 == v32 || v34;
      }

      while (v35 != 1);
    }

    if (v29)
    {
      v36 = 2;
    }

    else
    {
      v36 = 3;
    }

    sub_449C98(v36, v10, v45);
    sub_3F80(v45);
    nullsub_1();
    v46 = sub_4566AC(v37);
    if (!v20)
    {
      nullsub_1();
      sub_3F80(v42);
      nullsub_1();
      sub_456698(v43);
    }

    sub_10BEF0C(v45, *v44, v10, 0, v38, v39, v40, v41);
  }

  *v13 = 0;
  v13[1] = 0;
  v13[2] = 0;
}

void sub_FE0404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void ***a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  sub_49A8F8((v27 - 256));
  sub_CDCD6C(a17);
  sub_FEA1DC(va);
  sub_2ADCE0(&STACK[0x1650]);
  _Unwind_Resume(a1);
}

void sub_FE05C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7)
{
  v16 = 15;
  strcpy(&__p, "post_processing");
  v11 = sub_5F680(a5, &__p);
  sub_10DB748(a1 + 24, v11, a2, a3, 0, 0, *(a1 + 8) + 4, *(*(a1 + 8) + 16), 1u, a7[1] - 2464);
  if (v16 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  __p.n128_u64[0] = sub_10DDD78(a1 + 24);
  __p.n128_u64[1] = v12;
  sub_32114((a1 + 61512), &__p);
  v13 = sub_10DE49C(a1 + 24);
  if (a1 + 61432 != v13)
  {
    *(a1 + 61464) = *(v13 + 32);
    sub_D59EF4(a1 + 61432, *(v13 + 16), 0);
  }

  v14 = sub_10DE4A8(a1 + 24);
  memcpy((a1 + 61064), v14, 0x170uLL);
  sub_681D7C(*a7);
  sub_FE4AF4();
}

void sub_FE0734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **sub_FE0750(void **a1)
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
        v3 = sub_FE90B8(v3 - 308);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_FE07AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  v13 = v12;
  *(v8 + 61512) = -1;
  *(v8 + 61520) = -1;
  v14 = v8 + 61064;
  *(v8 + 61064) = 0u;
  *(v8 + 61080) = 0u;
  *(v8 + 61096) = 0u;
  *(v8 + 61112) = 0u;
  *(v8 + 61128) = 0u;
  *(v8 + 61144) = 0u;
  *(v8 + 61160) = 0u;
  *(v8 + 61176) = 0u;
  *(v8 + 61192) = 0u;
  *(v8 + 61208) = 0u;
  *(v8 + 61224) = 0u;
  *(v8 + 61240) = 0u;
  *(v8 + 61256) = 0u;
  *(v8 + 61272) = 0u;
  *(v8 + 61288) = 0u;
  *(v8 + 61304) = 0u;
  *(v8 + 61320) = 0u;
  *(v8 + 61336) = 0u;
  *(v8 + 61352) = 0u;
  *(v8 + 61368) = 0u;
  *(v8 + 61384) = 0u;
  *(v8 + 61400) = 0u;
  *(v8 + 61416) = 0u;
  v15 = *(v8 + 61544);
  for (i = *(v8 + 61552); i != v15; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  *(v14 + 488) = v15;
  v18 = *v10;
  v17 = v10[1];
  __p[1] = 0;
  __p[0] = 0;
  v26 = 0;
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  v19 = v17 - v18;
  if (v19)
  {
    if ((v19 >> 5) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v20 = *v11;
  sub_FEEBFC((*(v11 + 8) + 17), __p);
  v21 = sub_3AF2A4(v20, __p);
  if (SHIBYTE(v26) < 0)
  {
    v22 = v21;
    operator delete(__p[0]);
    v21 = v22;
  }

  v23 = *v11;
  v24 = sub_1013BE8(v21, *(*(v11 + 8) + 16));
  sub_FEA7D0(__p, v23, v24);
}

void sub_FE10C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  sub_CDE49C(&a36);
  sub_CDC3D4(&a57);
  sub_CDE540(&STACK[0x33F0]);
  sub_CEC20C(&STACK[0x4748]);
  STACK[0x4748] = v57;
  sub_DC1694(&STACK[0x4748]);
  _Unwind_Resume(a1);
}

void sub_FE1268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  *(v8 + 61512) = -1;
  *(v8 + 61520) = -1;
  *(v8 + 61064) = 0u;
  *(v8 + 61080) = 0u;
  *(v8 + 61096) = 0u;
  *(v8 + 61112) = 0u;
  *(v8 + 61128) = 0u;
  *(v8 + 61144) = 0u;
  *(v8 + 61160) = 0u;
  *(v8 + 61176) = 0u;
  *(v8 + 61192) = 0u;
  *(v8 + 61208) = 0u;
  *(v8 + 61224) = 0u;
  *(v8 + 61240) = 0u;
  *(v8 + 61256) = 0u;
  *(v8 + 61272) = 0u;
  *(v8 + 61288) = 0u;
  *(v8 + 61304) = 0u;
  *(v8 + 61320) = 0u;
  *(v8 + 61336) = 0u;
  *(v8 + 61352) = 0u;
  *(v8 + 61368) = 0u;
  *(v8 + 61384) = 0u;
  *(v8 + 61400) = 0u;
  *(v8 + 61416) = 0u;
  v9 = *(v8 + 61544);
  for (i = *(v8 + 61552); i != v9; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  *(v8 + 61552) = v9;
  memset(&v19[4132], 0, 48);
  v11 = *v8;
  HIBYTE(v19[2]) = 18;
  strcpy(v19, "DrivingPathFinding");
  __p[1] = 0;
  __p[0] = 0;
  v18 = 0;
  v16 = sub_3AEC94(v11, v19, __p);
  v12 = __p[0];
  if (__p[0])
  {
    v13 = __p[1];
    v14 = __p[0];
    if (__p[1] != __p[0])
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
      v14 = __p[0];
    }

    __p[1] = v12;
    operator delete(v14);
  }

  if (SHIBYTE(v19[2]) < 0)
  {
    operator delete(v19[0]);
  }

  HIBYTE(v19[2]) = 21;
  strcpy(v19, "waypoint_path_finding");
  sub_5F5AC(v16, v19);
  if (SHIBYTE(v19[2]) < 0)
  {
    operator delete(v19[0]);
  }

  operator new();
}

void sub_FE32EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void ***a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  sub_CDCD6C(a15);
  sub_FE0750(&a59);
  if (LOBYTE(STACK[0x16B8]) == 1)
  {
    sub_3E3DF0(&a65);
  }

  sub_CDCD6C(&STACK[0x16E8]);
  sub_CDE3CC(&STACK[0x1700]);
  sub_2AE54C(&STACK[0x1770]);
  sub_CDE49C(&STACK[0x1788]);
  sub_CDC3D4(&STACK[0x1830]);
  sub_CDE540(&STACK[0x4A98]);
  sub_CEC20C(&STACK[0x5DF0]);
  sub_FE9C4C(&STACK[0xD9A8]);
  if (SLOBYTE(STACK[0xDF0F]) < 0)
  {
    operator delete(STACK[0xDEF8]);
  }

  sub_CDCD6C(&STACK[0xDF10]);
  sub_487EC4(&STACK[0xDF28]);
  _Unwind_Resume(a1);
}

void sub_FE3724(unsigned __int8 **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz((v3 - v2) >> 5);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_FEAC38(v2, v3, &v9, v5, 1);
  v6 = sub_FED600(*a1, a1[1]);
  v7 = a1[1];
  if (v6 != v7)
  {
    v8 = v6;
    while (v7 != v8)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 3));
      }

      v7 -= 32;
    }

    a1[1] = v8;
  }
}

void sub_FE3820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v20 = v11;
  v13 = v12;
  v15 = v14;
  v16 = v8;
  v18 = sub_4D1F6C(v17);
  sub_3B1D8C(*v16);
  sub_10C0678(v23, *v16);
  v22 = 15;
  strcpy(__p, "post_processing");
  v19 = sub_5F680(v13, __p);
  sub_10C06C0(v23, v15, v20, (v16 + 3), v19, v16[1], v10, v18);
}

void sub_FE450C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_CDE540(va);
  sub_404134(&STACK[0x1410]);
  sub_11BD8(&STACK[0x24F0]);
  sub_CDCD6C(&STACK[0x2518]);
  sub_FEA784(&STACK[0x2530]);
  _Unwind_Resume(a1);
}

void **sub_FE4744(void **result, _BYTE *a2, char a3, char a4, uint64_t a5)
{
  if (a2[12872] == 1)
  {
    v7 = a2;
    v8 = result;
    v9 = sub_45AC50(a5);
    result = sub_588D8(a5);
    if (v9 != result)
    {
      if (a3)
      {
        v10 = v8 + 7679;
        v37 = v7;
        v38 = a5;
        while (1)
        {
          sub_116EED0(v7);
          sub_116DE4C(v7, v9, __p);
          v15 = v40;
          if (!v40)
          {
            goto LABEL_50;
          }

          do
          {
            if (sub_4C2B70((v15 + 4)))
            {
              v16 = sub_4C2BA0(v15 + 4);
            }

            else
            {
              if (!sub_4C2B80((v15 + 4)))
              {
                if (sub_4C2B90((v15 + 4)))
                {
                  v21 = *(sub_4C2C1C((v15 + 4)) + 8);
                }

                else
                {
                  v21 = 0;
                }

                goto LABEL_22;
              }

              v16 = sub_4C2BC4(v15 + 4);
            }

            v18 = 0x9DDFEA08EB382D69 * ((8 * (v16 & 0x1FFFFFFF) + 8) ^ HIDWORD(v16));
            v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v18 >> 47) ^ v18);
            v20 = (0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
            v21 = (v17 + 2654435769 + (v20 << 6) + (v20 >> 2)) ^ v20;
LABEL_22:
            v22 = v10[1];
            if (v22)
            {
              v23 = vcnt_s8(v22);
              v23.i16[0] = vaddlv_u8(v23);
              if (v23.u32[0] >= 2uLL)
              {
                v24 = v21;
                if (v21 >= *&v22)
                {
                  v24 = v21 % *&v22;
                }
              }

              else
              {
                v24 = (*&v22 - 1) & v21;
              }

              v25 = *(*v10 + 8 * v24);
              if (v25)
              {
                v26 = *v25;
                if (*v25)
                {
                  if (v23.u32[0] < 2uLL)
                  {
                    v27 = *&v22 - 1;
                    while (1)
                    {
                      v29 = v26[1];
                      if (v29 == v21)
                      {
                        if (sub_4C2D38((v26 + 2), (v15 + 4)))
                        {
                          goto LABEL_42;
                        }
                      }

                      else if ((v29 & v27) != v24)
                      {
                        goto LABEL_43;
                      }

                      v26 = *v26;
                      if (!v26)
                      {
                        goto LABEL_43;
                      }
                    }
                  }

                  do
                  {
                    v28 = v26[1];
                    if (v28 == v21)
                    {
                      if (sub_4C2D38((v26 + 2), (v15 + 4)))
                      {
LABEL_42:
                        sub_4C2D98(v26 + 2, (v15 + 4));
                        goto LABEL_44;
                      }
                    }

                    else
                    {
                      if (v28 >= *&v22)
                      {
                        v28 %= *&v22;
                      }

                      if (v28 != v24)
                      {
                        break;
                      }
                    }

                    v26 = *v26;
                  }

                  while (v26);
                }
              }
            }

LABEL_43:
            sub_D3B9CC(v10, v15 + 4, (v15 + 4));
LABEL_44:
            v15 = *v15;
          }

          while (v15);
          v30 = v40;
          if (v40)
          {
            do
            {
              v32 = *v30;
              v33 = v30[8];
              if (v33)
              {
                do
                {
                  v34 = *v33;
                  operator delete(v33);
                  v33 = v34;
                }

                while (v34);
              }

              v35 = v30[6];
              v30[6] = 0;
              if (v35)
              {
                operator delete(v35);
              }

              operator delete(v30);
              v30 = v32;
            }

            while (v32);
          }

LABEL_50:
          v31 = __p[0];
          __p[0] = 0;
          if (v31)
          {
            operator delete(v31);
          }

          v9 += 6;
          result = sub_588D8(v38);
          v7 = v37;
          if (v9 == result)
          {
            goto LABEL_6;
          }
        }
      }

      do
      {
        sub_116EED0(v7);
        v9 += 6;
        result = sub_588D8(a5);
      }

      while (v9 != result);
    }

LABEL_6:
    if (a4)
    {
      nullsub_1();
      v12 = *v11;
      v13 = *(v11 + 8);
      if (*v11 != v13)
      {
        v14 = v11;
        while (!sub_F63D58(v12))
        {
          v12 += 6;
          if (v12 == v13)
          {
            v12 = v13;
            goto LABEL_12;
          }
        }

        sub_21E609C(v12, v13, __p);
        v12 = __p[0];
LABEL_12:
        v11 = v14;
      }

      return sub_F73E94(v11, v12, *(v11 + 8));
    }
  }

  return result;
}

void sub_FE4AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_616CD4(va);
  _Unwind_Resume(a1);
}

void sub_FE4ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_616CD4(va);
  _Unwind_Resume(a1);
}

void sub_FE4AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_616CD4(va);
  _Unwind_Resume(a1);
}

void sub_FE5210(_Unwind_Exception *a1)
{
  sub_FEA108(&STACK[0x2F88]);
  sub_CDCD6C(v1);
  sub_FE565C(&STACK[0x2FA0]);
  sub_FE9D94(&STACK[0x3070]);
  sub_FEA164(&STACK[0x5EF8]);
  _Unwind_Resume(a1);
}

void sub_FE5330(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + 61440;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = *(a1 + 61464);
  prime = *(a1 + 61440);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(a2, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a1 + 61440));
    v5 = *(a2 + 8);
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
    v7 = vcvtps_u32_f32(*(a2 + 24) / *(a2 + 32));
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
  for (i = *(v3 + 8); i; i = *i)
  {
    sub_D3B9CC(a2, i + 4, (i + 2));
  }
}

void sub_FE5470(uint64_t a1@<X0>, const void ***a2@<X8>)
{
  v4 = sub_3AF144(*a1);

  sub_2BDFC8(v4, (a1 + 61512), a2);
}

void sub_FE5638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_FE565C(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    a1[23] = v2;
    operator delete(v2);
  }

  v3 = a1[19];
  if (v3)
  {
    a1[20] = v3;
    operator delete(v3);
  }

  v4 = a1[16];
  if (v4)
  {
    a1[17] = v4;
    operator delete(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    a1[14] = v5;
    operator delete(v5);
  }

  v6 = a1[10];
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[10];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 24);
        if (v9)
        {
          *(v7 - 16) = v9;
          operator delete(v9);
        }

        v10 = *(v7 - 112);
        if (v10)
        {
          *(v7 - 104) = v10;
          operator delete(v10);
        }

        v11 = *(v7 - 192);
        if (v11)
        {
          *(v7 - 184) = v11;
          operator delete(v11);
        }

        v7 -= 208;
      }

      while (v7 != v6);
      v8 = a1[10];
    }

    a1[11] = v6;
    operator delete(v8);
  }

  v12 = a1[7];
  if (v12)
  {
    a1[8] = v12;
    operator delete(v12);
  }

  v13 = a1[4];
  if (v13)
  {
    v14 = a1[5];
    v15 = a1[4];
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 24);
        if (v16)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v17 = *(v14 - 112);
        if (v17)
        {
          *(v14 - 104) = v17;
          operator delete(v17);
        }

        v18 = *(v14 - 192);
        if (v18)
        {
          *(v14 - 184) = v18;
          operator delete(v18);
        }

        v14 -= 208;
      }

      while (v14 != v13);
      v15 = a1[4];
    }

    a1[5] = v13;
    operator delete(v15);
  }

  v19 = a1[1];
  if (v19)
  {
    a1[2] = v19;
    operator delete(v19);
  }

  return a1;
}

void **sub_FE57B8(uint64_t **a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    goto LABEL_18;
  }

  while (!sub_F63D58(v2))
  {
    v2 += 6;
    if (v2 == v3)
    {
      v4 = v3;
      goto LABEL_19;
    }
  }

  if (v2 == v3 || (v5 = v2 + 6, v2 + 6 == v3))
  {
LABEL_18:
    v4 = v2;
  }

  else
  {
    v4 = v2;
    do
    {
      v7 = v5;
      if (!sub_F63D58(v5))
      {
        v8 = *v4;
        if (*v4)
        {
          v9 = v4[1];
          v10 = *v4;
          if (v9 != v8)
          {
            do
            {
              v9 = sub_4547F0(v9 - 552);
            }

            while (v9 != v8);
            v10 = *v4;
          }

          v4[1] = v8;
          operator delete(v10);
          *v4 = 0;
          v4[1] = 0;
          v4[2] = 0;
        }

        *v4 = *v7;
        v4[2] = v2[8];
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        if (*(v4 + 47) < 0)
        {
          operator delete(v4[3]);
        }

        v6 = *(v2 + 9);
        v4[5] = v2[11];
        *(v4 + 3) = v6;
        *(v2 + 95) = 0;
        *(v2 + 72) = 0;
        v4 += 6;
      }

      v5 = v7 + 6;
      v2 = v7;
    }

    while (v7 + 6 != v3);
  }

LABEL_19:
  v11 = a1[1];

  return sub_F73E94(a1, v4, v11);
}

void sub_FE58F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v28 = sub_3B1D8C(*a1);
  v7 = sub_45AC50(a2);
  v30 = sub_588D8(a2);
  if (v7 == v30)
  {
    return;
  }

  while (2)
  {
    if (sub_F63FF4(v7) < 2)
    {
      goto LABEL_4;
    }

    v8 = sub_45AC50(v7);
    v9 = sub_73EEC(v8 + 552);
    if (sub_2AB71C(v28, *(v9 + 104), *(v9 + 112)) != a4)
    {
      goto LABEL_4;
    }

    nullsub_1();
    v11 = sub_73EEC(*v10);
    sub_3EDBB0(v39, v11);
    nullsub_1();
    v38 = *sub_4D1DB0(*v12);
    nullsub_1();
    v37 = *sub_F69688(*v13);
    v14 = sub_45AC50(a3);
    v15 = sub_588D8(a3);
    while (v14 != v15)
    {
      if (sub_F63F64(v14, 1))
      {
        goto LABEL_9;
      }

      __p = 0;
      v33 = 0;
      v34 = 0;
      v16 = *v7;
      v17 = *(v7 + 8);
      p_p = &__p;
      v45 = 0;
      if (v17 != v16)
      {
        if (0xF128CFC4A33F128DLL * ((v17 - v16) >> 3) < 0x76B981DAE6076CLL)
        {
          operator new();
        }

        sub_1794();
      }

      if (*(v7 + 47) < 0)
      {
        sub_325C(&v35, *(v7 + 24), *(v7 + 32));
      }

      else
      {
        v18 = *(v7 + 24);
        v36 = *(v7 + 40);
        v35 = v18;
      }

      nullsub_1();
      v20 = *v19;
      nullsub_1();
      sub_DF7DB8(*v21, v20);
      nullsub_1();
      sub_F68F5C(*v22, v39);
      nullsub_1();
      sub_F69690(*v23, &v38);
      nullsub_1();
      sub_F6969C(*v24, &v37);
      sub_F74288(a5, &__p, 1);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(v35);
        v25 = __p;
        if (!__p)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v25 = __p;
        if (!__p)
        {
          goto LABEL_9;
        }
      }

      v26 = v33;
      v27 = v25;
      if (v33 != v25)
      {
        do
        {
          v26 = sub_4547F0(v26 - 552);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v33 = v25;
      operator delete(v27);
LABEL_9:
      v14 += 6;
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

LABEL_4:
    v7 += 48;
    if (v7 != v30)
    {
      continue;
    }

    break;
  }
}

void sub_FE5C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_49A8F8(va);
  _Unwind_Resume(a1);
}

void sub_FE5C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_454784(va);
  sub_49A8F8(va1);
  _Unwind_Resume(a1);
}

void sub_FE5C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (v21)
  {
    v24 = v20 - 552;
    v25 = -v21;
    do
    {
      v24 = sub_4547F0(v24) - 552;
      v25 += 552;
    }

    while (v25);
  }

  sub_49D8D0((v22 - 104));
  sub_49A8F8(va);
  _Unwind_Resume(a1);
}

char *sub_FE5CBC(char **a1, uint64_t a2)
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
  sub_FEA244(v15, a2);
  v6 = (2464 * v2 + 2464);
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
      sub_FE5E88(v13, v12);
      v12 += 2464;
      v13 += 2464;
      v11 -= 2464;
    }

    while (v12 != v8);
    do
    {
      sub_FE90B8(v7);
      v7 += 2464;
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

void sub_FE5E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_FE9064(va);
  _Unwind_Resume(a1);
}

void sub_FE5E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

uint64_t sub_FE5E88(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v17 = a1 + 8;
  v18 = 0;
  if (v5 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  sub_FE63F0((a1 + 32), a2 + 32, &v17);
  *(a1 + 816) = 0;
  *(a1 + 800) = 0u;
  v6 = *(a2 + 800);
  v7 = *(a2 + 808);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_FE70C0((a1 + 824), a2 + 824, &v17);
  sub_FE7F78(a1 + 1592, a2 + 1592, 0x20uLL);
  *(a1 + 1688) = 0;
  *(a1 + 1672) = 0u;
  v8 = *(a2 + 1672);
  v9 = *(a2 + 1680);
  if (v9 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 5) <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1696) = *(a2 + 1696);
  *(a1 + 1704) = 0;
  *(a1 + 1720) = 0;
  *(a1 + 1712) = 0;
  v10 = *(a2 + 1704);
  v11 = *(a2 + 1712);
  if (v11 != v10)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 5) <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1728) = *(a2 + 1728);
  *(a1 + 1736) = 0;
  *(a1 + 1752) = 0;
  *(a1 + 1744) = 0;
  v12 = *(a2 + 1736);
  v13 = *(a2 + 1744);
  if (v13 != v12)
  {
    if (0x8F5C28F5C28F5C29 * ((v13 - v12) >> 3) <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1776) = 0;
  *(a1 + 1760) = 0u;
  v14 = *(a2 + 1760);
  v15 = *(a2 + 1768);
  if (v15 != v14)
  {
    if (0x8F5C28F5C28F5C29 * ((v15 - v14) >> 3) <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_1794();
  }

  sub_FE8380(a1 + 1784, a2 + 1784, 0x20uLL);
  sub_FE88BC((a1 + 2248), (a2 + 2248));
  return a1;
}

void sub_FE6278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v5 + 16) = v6;
  sub_DC15BC(va);
  _Unwind_Resume(a1);
}

void sub_FE6290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  v16 = v11[280];
  if (v16)
  {
    free(v16);
    v17 = *v14;
    if (!*v14)
    {
LABEL_3:
      v18 = *v12;
      if (!*v12)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v17 = *v14;
    if (!*v14)
    {
      goto LABEL_3;
    }
  }

  v11[221] = v17;
  operator delete(v17);
  v18 = *v12;
  if (!*v12)
  {
LABEL_4:
    v19 = *a9;
    if (!*a9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v11[218] = v18;
  operator delete(v18);
  v19 = *a9;
  if (!*a9)
  {
LABEL_5:
    v20 = *v13;
    if (!*v13)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v11[214] = v19;
  operator delete(v19);
  v20 = *v13;
  if (!*v13)
  {
LABEL_6:
    v21 = v11[208];
    if (!v21)
    {
LABEL_14:
      sub_360988((v11 + 103));
      v22 = *a10;
      if (*a10)
      {
        v11[101] = v22;
        operator delete(v22);
      }

      sub_360988((v11 + 4));
      sub_CDCD6C(v10);
      _Unwind_Resume(a1);
    }

LABEL_13:
    free(v21);
    goto LABEL_14;
  }

LABEL_12:
  v11[210] = v20;
  operator delete(v20);
  v21 = v11[208];
  if (!v21)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void sub_FE63CC()
{
  if (!*v0)
  {
    JUMPOUT(0xFE63B4);
  }

  JUMPOUT(0xFE63ACLL);
}

void sub_FE63DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_DC15BC(va);
  _Unwind_Resume(a1);
}

void *sub_FE63F0(void *a1, uint64_t a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = (a2 + 40);
  *&v14 = a2 + 40;
  *(&v14 + 1) = a3;
  sub_FE6754(a1, __p);
  for (i = 0; i != 96; i += 6)
  {
    sub_FE64FC(__p, (a2 + i * 8));
    v6 = &a1[i];
    v7 = v15;
    v15 = 0;
    v8 = a1[i];
    v9 = *__p;
    v10 = v14;
    __p[0] = &unk_2290750;
    __p[1] = 0;
    v11 = a1[i + 3];
    v14 = 0uLL;
    *v6 = v9;
    *(v6 + 1) = v10;
    v6[5] = v7;
    if (v11)
    {
      operator delete(v8);
      if (*(&v14 + 1))
      {
        operator delete(__p[0]);
      }
    }
  }

  return a1;
}

uint64_t sub_FE64FC(uint64_t a1, char **a2)
{
  *a1 = &unk_2290750;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = a2[3];
  if (v4)
  {
    sub_40DC58(a1, (0xFFFFFFFFFFFFFFFFLL >> __clz(v4)));
  }

  v6 = *a2;
  v5 = a2[1];
  if (**a2 > -2)
  {
    v7 = *a2;
    v9 = &a2[3][v6];
    if (*a2 == v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *a2;
    do
    {
      v8 = (__clz(__rbit64(((*v7 >> 7) & ~*v7 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v7 = (v7 + v8);
      v5 += 16 * v8;
    }

    while (*v7 < -1);
    v9 = &a2[3][v6];
    if (v7 == v9)
    {
      goto LABEL_17;
    }
  }

  do
  {
    v10 = 0x2127599BF4325C37 * (*v5 ^ (*v5 >> 23));
    v11 = (v10 ^ ~(v10 >> 47)) + ((v10 ^ (v10 >> 47)) << 21);
    v12 = 21 * ((265 * (v11 ^ (v11 >> 24))) ^ ((265 * (v11 ^ (v11 >> 24))) >> 14));
    v13 = 2147483649u * (v12 ^ (v12 >> 28));
    v14 = *(a1 + 24);
    v15 = *a1;
    v16 = v14 & (v13 >> 7);
    v17 = *(*a1 + v16) & (~*(*a1 + v16) << 7) & 0x8080808080808080;
    if (!v17)
    {
      v18 = 8;
      do
      {
        v16 = (v16 + v18) & v14;
        v18 += 8;
        v17 = *&v15[v16] & (~*&v15[v16] << 7) & 0x8080808080808080;
      }

      while (!v17);
    }

    v19 = (v16 + (__clz(__rbit64(v17)) >> 3)) & v14;
    v20 = v13 & 0x7F;
    v15[v19] = v20;
    *(*a1 + (*(a1 + 24) & 7) + ((v19 - 8) & *(a1 + 24)) + 1) = v20;
    v21 = *(a1 + 8) + 16 * v19;
    *v21 = *v5;
    *(v21 + 8) = *(v5 + 2);
    v22 = *(v7 + 1);
    v7 = (v7 + 1);
    v5 += 16;
    if (v22 <= -2)
    {
      do
      {
        v23 = (__clz(__rbit64(((*v7 >> 7) & ~*v7 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v7 = (v7 + v23);
        v5 += 16 * v23;
      }

      while (*v7 < -1);
    }
  }

  while (v7 != v9);
LABEL_17:
  v24 = a2[2];
  *(a1 + 16) = v24;
  *(a1 + 40) -= v24;
  return a1;
}

void sub_FE6728(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24))
  {
    operator delete(*v1);
    *v1 = v3;
    *(v1 + 40) = 0;
    v2[1] = 0;
    v2[2] = 0;
    *v2 = 0;
  }

  _Unwind_Resume(exception_object);
}

void *sub_FE6754(void *a1, unint64_t *a2)
{
  v2 = *a2;
  a1[5] = 0;
  *a1 = &unk_2290750;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  if (v2)
  {
    v3 = __clz(v2);
    if (v3 == 61)
    {
      v4 = 6;
    }

    else
    {
      v4 = (0xFFFFFFFFFFFFFFFFLL >> v3) - (0x1FFFFFFFFFFFFFFFuLL >> v3);
    }

    a1[5] = v4;
    operator new();
  }

  a1[6] = &unk_2290750;
  v5 = *a2;
  a1[11] = 0;
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = 0;
  if (v5)
  {
    v6 = __clz(v5);
    if (v6 == 61)
    {
      v7 = 6;
    }

    else
    {
      v7 = (0xFFFFFFFFFFFFFFFFLL >> v6) - (0x1FFFFFFFFFFFFFFFuLL >> v6);
    }

    a1[11] = v7;
    operator new();
  }

  a1[12] = &unk_2290750;
  v8 = *a2;
  a1[17] = 0;
  a1[14] = 0;
  a1[15] = 0;
  a1[13] = 0;
  if (v8)
  {
    v9 = __clz(v8);
    if (v9 == 61)
    {
      v10 = 6;
    }

    else
    {
      v10 = (0xFFFFFFFFFFFFFFFFLL >> v9) - (0x1FFFFFFFFFFFFFFFuLL >> v9);
    }

    a1[17] = v10;
    operator new();
  }

  a1[18] = &unk_2290750;
  v11 = *a2;
  a1[23] = 0;
  a1[20] = 0;
  a1[21] = 0;
  a1[19] = 0;
  if (v11)
  {
    v12 = __clz(v11);
    if (v12 == 61)
    {
      v13 = 6;
    }

    else
    {
      v13 = (0xFFFFFFFFFFFFFFFFLL >> v12) - (0x1FFFFFFFFFFFFFFFuLL >> v12);
    }

    a1[23] = v13;
    operator new();
  }

  a1[24] = &unk_2290750;
  v14 = *a2;
  a1[29] = 0;
  a1[26] = 0;
  a1[27] = 0;
  a1[25] = 0;
  if (v14)
  {
    v15 = __clz(v14);
    if (v15 == 61)
    {
      v16 = 6;
    }

    else
    {
      v16 = (0xFFFFFFFFFFFFFFFFLL >> v15) - (0x1FFFFFFFFFFFFFFFuLL >> v15);
    }

    a1[29] = v16;
    operator new();
  }

  a1[30] = &unk_2290750;
  v17 = *a2;
  a1[35] = 0;
  a1[32] = 0;
  a1[33] = 0;
  a1[31] = 0;
  if (v17)
  {
    v18 = __clz(v17);
    if (v18 == 61)
    {
      v19 = 6;
    }

    else
    {
      v19 = (0xFFFFFFFFFFFFFFFFLL >> v18) - (0x1FFFFFFFFFFFFFFFuLL >> v18);
    }

    a1[35] = v19;
    operator new();
  }

  v20 = *a2;
  a1[41] = 0;
  a1[36] = &unk_2290750;
  a1[37] = 0;
  a1[38] = 0;
  a1[39] = 0;
  if (v20)
  {
    v21 = __clz(v20);
    if (v21 == 61)
    {
      v22 = 6;
    }

    else
    {
      v22 = (0xFFFFFFFFFFFFFFFFLL >> v21) - (0x1FFFFFFFFFFFFFFFuLL >> v21);
    }

    a1[41] = v22;
    operator new();
  }

  v23 = *a2;
  a1[47] = 0;
  a1[42] = &unk_2290750;
  a1[43] = 0;
  a1[44] = 0;
  a1[45] = 0;
  if (v23)
  {
    v24 = __clz(v23);
    if (v24 == 61)
    {
      v25 = 6;
    }

    else
    {
      v25 = (0xFFFFFFFFFFFFFFFFLL >> v24) - (0x1FFFFFFFFFFFFFFFuLL >> v24);
    }

    a1[47] = v25;
    operator new();
  }

  v26 = *a2;
  a1[53] = 0;
  a1[48] = &unk_2290750;
  a1[49] = 0;
  a1[50] = 0;
  a1[51] = 0;
  if (v26)
  {
    v27 = __clz(v26);
    if (v27 == 61)
    {
      v28 = 6;
    }

    else
    {
      v28 = (0xFFFFFFFFFFFFFFFFLL >> v27) - (0x1FFFFFFFFFFFFFFFuLL >> v27);
    }

    a1[53] = v28;
    operator new();
  }

  v29 = *a2;
  a1[59] = 0;
  a1[54] = &unk_2290750;
  a1[55] = 0;
  a1[56] = 0;
  a1[57] = 0;
  if (v29)
  {
    v30 = __clz(v29);
    if (v30 == 61)
    {
      v31 = 6;
    }

    else
    {
      v31 = (0xFFFFFFFFFFFFFFFFLL >> v30) - (0x1FFFFFFFFFFFFFFFuLL >> v30);
    }

    a1[59] = v31;
    operator new();
  }

  v32 = *a2;
  a1[65] = 0;
  a1[60] = &unk_2290750;
  a1[61] = 0;
  a1[62] = 0;
  a1[63] = 0;
  if (v32)
  {
    v33 = __clz(v32);
    if (v33 == 61)
    {
      v34 = 6;
    }

    else
    {
      v34 = (0xFFFFFFFFFFFFFFFFLL >> v33) - (0x1FFFFFFFFFFFFFFFuLL >> v33);
    }

    a1[65] = v34;
    operator new();
  }

  v35 = *a2;
  a1[66] = &unk_2290750;
  a1[71] = 0;
  a1[67] = 0;
  a1[69] = 0;
  a1[68] = 0;
  if (v35)
  {
    v36 = __clz(v35);
    if (v36 == 61)
    {
      v37 = 6;
    }

    else
    {
      v37 = (0xFFFFFFFFFFFFFFFFLL >> v36) - (0x1FFFFFFFFFFFFFFFuLL >> v36);
    }

    a1[71] = v37;
    operator new();
  }

  v38 = *a2;
  a1[72] = &unk_2290750;
  a1[77] = 0;
  a1[73] = 0;
  a1[75] = 0;
  a1[74] = 0;
  if (v38)
  {
    v39 = __clz(v38);
    if (v39 == 61)
    {
      v40 = 6;
    }

    else
    {
      v40 = (0xFFFFFFFFFFFFFFFFLL >> v39) - (0x1FFFFFFFFFFFFFFFuLL >> v39);
    }

    a1[77] = v40;
    operator new();
  }

  v41 = *a2;
  a1[78] = &unk_2290750;
  a1[83] = 0;
  a1[79] = 0;
  a1[81] = 0;
  a1[80] = 0;
  if (v41)
  {
    v42 = __clz(v41);
    if (v42 == 61)
    {
      v43 = 6;
    }

    else
    {
      v43 = (0xFFFFFFFFFFFFFFFFLL >> v42) - (0x1FFFFFFFFFFFFFFFuLL >> v42);
    }

    a1[83] = v43;
    operator new();
  }

  v44 = *a2;
  a1[84] = &unk_2290750;
  a1[89] = 0;
  a1[85] = 0;
  a1[87] = 0;
  a1[86] = 0;
  if (v44)
  {
    v45 = __clz(v44);
    if (v45 == 61)
    {
      v46 = 6;
    }

    else
    {
      v46 = (0xFFFFFFFFFFFFFFFFLL >> v45) - (0x1FFFFFFFFFFFFFFFuLL >> v45);
    }

    a1[89] = v46;
    operator new();
  }

  v47 = *a2;
  a1[90] = &unk_2290750;
  a1[95] = 0;
  a1[91] = 0;
  a1[93] = 0;
  a1[92] = 0;
  if (v47)
  {
    v48 = __clz(v47);
    if (v48 == 61)
    {
      v49 = 6;
    }

    else
    {
      v49 = (0xFFFFFFFFFFFFFFFFLL >> v48) - (0x1FFFFFFFFFFFFFFFuLL >> v48);
    }

    a1[95] = v49;
    operator new();
  }

  return a1;
}

void *sub_FE70C0(void *a1, uint64_t a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = (a2 + 40);
  *&v14 = a2 + 40;
  *(&v14 + 1) = a3;
  sub_FE7410(a1, __p);
  for (i = 0; i != 96; i += 6)
  {
    sub_FE71CC(__p, (a2 + i * 8));
    v6 = &a1[i];
    v7 = v15;
    v15 = 0;
    v8 = a1[i];
    v9 = *__p;
    v10 = v14;
    __p[0] = &unk_2290750;
    __p[1] = 0;
    v11 = a1[i + 3];
    v14 = 0uLL;
    *v6 = v9;
    *(v6 + 1) = v10;
    v6[5] = v7;
    if (v11)
    {
      operator delete(v8);
      if (*(&v14 + 1))
      {
        operator delete(__p[0]);
      }
    }
  }

  return a1;
}

char **sub_FE71CC(char **a1, char **a2)
{
  *a1 = &unk_2290750;
  a1[1] = 0;
  a1[5] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v4 = a2[3];
  if (v4)
  {
    sub_FE7DBC(a1, (0xFFFFFFFFFFFFFFFFLL >> __clz(v4)));
  }

  v6 = *a2;
  v5 = a2[1];
  if (**a2 > -2)
  {
    v7 = *a2;
    v9 = &a2[3][v6];
    if (*a2 == v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *a2;
    do
    {
      v8 = (__clz(__rbit64(((*v7 >> 7) & ~*v7 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v7 = (v7 + v8);
      v5 += 24 * v8;
    }

    while (*v7 < -1);
    v9 = &a2[3][v6];
    if (v7 == v9)
    {
      goto LABEL_17;
    }
  }

  do
  {
    v10 = ~*v5 + (*v5 << 21);
    v11 = 21 * ((265 * (v10 ^ (v10 >> 24))) ^ ((265 * (v10 ^ (v10 >> 24))) >> 14));
    v12 = 2147483649u * (v11 ^ (v11 >> 28));
    v13 = a1[3];
    v14 = *a1;
    v15 = v13 & (v12 >> 7);
    v16 = *&(*a1)[v15] & (~*&(*a1)[v15] << 7) & 0x8080808080808080;
    if (!v16)
    {
      v17 = 8;
      do
      {
        v15 = (v15 + v17) & v13;
        v17 += 8;
        v16 = *&v14[v15] & (~*&v14[v15] << 7) & 0x8080808080808080;
      }

      while (!v16);
    }

    v18 = (v15 + (__clz(__rbit64(v16)) >> 3)) & v13;
    v19 = v12 & 0x7F;
    v14[v18] = v19;
    (*a1)[(a1[3] & 7) + 1 + ((v18 - 8) & a1[3])] = v19;
    v20 = &a1[1][24 * v18];
    *v20 = *v5;
    *(v20 + 8) = *(v5 + 8);
    v21 = *(v7 + 1);
    v7 = (v7 + 1);
    v5 += 24;
    if (v21 <= -2)
    {
      do
      {
        v22 = (__clz(__rbit64(((*v7 >> 7) & ~*v7 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v7 = (v7 + v22);
        v5 += 24 * v22;
      }

      while (*v7 < -1);
    }
  }

  while (v7 != v9);
LABEL_17:
  v23 = a2[2];
  a1[2] = v23;
  a1[5] -= v23;
  return a1;
}

void sub_FE73E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24))
  {
    operator delete(*v1);
    *v1 = v3;
    *(v1 + 40) = 0;
    v2[1] = 0;
    v2[2] = 0;
    *v2 = 0;
  }

  _Unwind_Resume(exception_object);
}

void *sub_FE7410(void *a1, unint64_t *a2)
{
  v2 = *a2;
  a1[5] = 0;
  *a1 = &unk_2290750;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  if (v2)
  {
    v3 = __clz(v2);
    if (v3 == 61)
    {
      v4 = 6;
    }

    else
    {
      v4 = (0xFFFFFFFFFFFFFFFFLL >> v3) - (0x1FFFFFFFFFFFFFFFuLL >> v3);
    }

    a1[5] = v4;
    operator new();
  }

  a1[6] = &unk_2290750;
  v5 = *a2;
  a1[11] = 0;
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = 0;
  if (v5)
  {
    v6 = __clz(v5);
    if (v6 == 61)
    {
      v7 = 6;
    }

    else
    {
      v7 = (0xFFFFFFFFFFFFFFFFLL >> v6) - (0x1FFFFFFFFFFFFFFFuLL >> v6);
    }

    a1[11] = v7;
    operator new();
  }

  a1[12] = &unk_2290750;
  v8 = *a2;
  a1[17] = 0;
  a1[14] = 0;
  a1[15] = 0;
  a1[13] = 0;
  if (v8)
  {
    v9 = __clz(v8);
    if (v9 == 61)
    {
      v10 = 6;
    }

    else
    {
      v10 = (0xFFFFFFFFFFFFFFFFLL >> v9) - (0x1FFFFFFFFFFFFFFFuLL >> v9);
    }

    a1[17] = v10;
    operator new();
  }

  a1[18] = &unk_2290750;
  v11 = *a2;
  a1[23] = 0;
  a1[20] = 0;
  a1[21] = 0;
  a1[19] = 0;
  if (v11)
  {
    v12 = __clz(v11);
    if (v12 == 61)
    {
      v13 = 6;
    }

    else
    {
      v13 = (0xFFFFFFFFFFFFFFFFLL >> v12) - (0x1FFFFFFFFFFFFFFFuLL >> v12);
    }

    a1[23] = v13;
    operator new();
  }

  a1[24] = &unk_2290750;
  v14 = *a2;
  a1[29] = 0;
  a1[26] = 0;
  a1[27] = 0;
  a1[25] = 0;
  if (v14)
  {
    v15 = __clz(v14);
    if (v15 == 61)
    {
      v16 = 6;
    }

    else
    {
      v16 = (0xFFFFFFFFFFFFFFFFLL >> v15) - (0x1FFFFFFFFFFFFFFFuLL >> v15);
    }

    a1[29] = v16;
    operator new();
  }

  a1[30] = &unk_2290750;
  v17 = *a2;
  a1[35] = 0;
  a1[32] = 0;
  a1[33] = 0;
  a1[31] = 0;
  if (v17)
  {
    v18 = __clz(v17);
    if (v18 == 61)
    {
      v19 = 6;
    }

    else
    {
      v19 = (0xFFFFFFFFFFFFFFFFLL >> v18) - (0x1FFFFFFFFFFFFFFFuLL >> v18);
    }

    a1[35] = v19;
    operator new();
  }

  v20 = *a2;
  a1[41] = 0;
  a1[36] = &unk_2290750;
  a1[37] = 0;
  a1[38] = 0;
  a1[39] = 0;
  if (v20)
  {
    v21 = __clz(v20);
    if (v21 == 61)
    {
      v22 = 6;
    }

    else
    {
      v22 = (0xFFFFFFFFFFFFFFFFLL >> v21) - (0x1FFFFFFFFFFFFFFFuLL >> v21);
    }

    a1[41] = v22;
    operator new();
  }

  v23 = *a2;
  a1[47] = 0;
  a1[42] = &unk_2290750;
  a1[43] = 0;
  a1[44] = 0;
  a1[45] = 0;
  if (v23)
  {
    v24 = __clz(v23);
    if (v24 == 61)
    {
      v25 = 6;
    }

    else
    {
      v25 = (0xFFFFFFFFFFFFFFFFLL >> v24) - (0x1FFFFFFFFFFFFFFFuLL >> v24);
    }

    a1[47] = v25;
    operator new();
  }

  v26 = *a2;
  a1[53] = 0;
  a1[48] = &unk_2290750;
  a1[49] = 0;
  a1[50] = 0;
  a1[51] = 0;
  if (v26)
  {
    v27 = __clz(v26);
    if (v27 == 61)
    {
      v28 = 6;
    }

    else
    {
      v28 = (0xFFFFFFFFFFFFFFFFLL >> v27) - (0x1FFFFFFFFFFFFFFFuLL >> v27);
    }

    a1[53] = v28;
    operator new();
  }

  v29 = *a2;
  a1[59] = 0;
  a1[54] = &unk_2290750;
  a1[55] = 0;
  a1[56] = 0;
  a1[57] = 0;
  if (v29)
  {
    v30 = __clz(v29);
    if (v30 == 61)
    {
      v31 = 6;
    }

    else
    {
      v31 = (0xFFFFFFFFFFFFFFFFLL >> v30) - (0x1FFFFFFFFFFFFFFFuLL >> v30);
    }

    a1[59] = v31;
    operator new();
  }

  v32 = *a2;
  a1[65] = 0;
  a1[60] = &unk_2290750;
  a1[61] = 0;
  a1[62] = 0;
  a1[63] = 0;
  if (v32)
  {
    v33 = __clz(v32);
    if (v33 == 61)
    {
      v34 = 6;
    }

    else
    {
      v34 = (0xFFFFFFFFFFFFFFFFLL >> v33) - (0x1FFFFFFFFFFFFFFFuLL >> v33);
    }

    a1[65] = v34;
    operator new();
  }

  v35 = *a2;
  a1[66] = &unk_2290750;
  a1[71] = 0;
  a1[67] = 0;
  a1[69] = 0;
  a1[68] = 0;
  if (v35)
  {
    v36 = __clz(v35);
    if (v36 == 61)
    {
      v37 = 6;
    }

    else
    {
      v37 = (0xFFFFFFFFFFFFFFFFLL >> v36) - (0x1FFFFFFFFFFFFFFFuLL >> v36);
    }

    a1[71] = v37;
    operator new();
  }

  v38 = *a2;
  a1[72] = &unk_2290750;
  a1[77] = 0;
  a1[73] = 0;
  a1[75] = 0;
  a1[74] = 0;
  if (v38)
  {
    v39 = __clz(v38);
    if (v39 == 61)
    {
      v40 = 6;
    }

    else
    {
      v40 = (0xFFFFFFFFFFFFFFFFLL >> v39) - (0x1FFFFFFFFFFFFFFFuLL >> v39);
    }

    a1[77] = v40;
    operator new();
  }

  v41 = *a2;
  a1[78] = &unk_2290750;
  a1[83] = 0;
  a1[79] = 0;
  a1[81] = 0;
  a1[80] = 0;
  if (v41)
  {
    v42 = __clz(v41);
    if (v42 == 61)
    {
      v43 = 6;
    }

    else
    {
      v43 = (0xFFFFFFFFFFFFFFFFLL >> v42) - (0x1FFFFFFFFFFFFFFFuLL >> v42);
    }

    a1[83] = v43;
    operator new();
  }

  v44 = *a2;
  a1[84] = &unk_2290750;
  a1[89] = 0;
  a1[85] = 0;
  a1[87] = 0;
  a1[86] = 0;
  if (v44)
  {
    v45 = __clz(v44);
    if (v45 == 61)
    {
      v46 = 6;
    }

    else
    {
      v46 = (0xFFFFFFFFFFFFFFFFLL >> v45) - (0x1FFFFFFFFFFFFFFFuLL >> v45);
    }

    a1[89] = v46;
    operator new();
  }

  v47 = *a2;
  a1[90] = &unk_2290750;
  a1[95] = 0;
  a1[91] = 0;
  a1[93] = 0;
  a1[92] = 0;
  if (v47)
  {
    v48 = __clz(v47);
    if (v48 == 61)
    {
      v49 = 6;
    }

    else
    {
      v49 = (0xFFFFFFFFFFFFFFFFLL >> v48) - (0x1FFFFFFFFFFFFFFFuLL >> v48);
    }

    a1[95] = v49;
    operator new();
  }

  return a1;
}

float sub_FE7F78(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*(a1 + 16), 0)));
    *(a1 + 24) = 0;
    sub_FE80AC(a1, a2, a3);
  }

  else
  {
    v6 = 4;
    if (a3 > 4)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v7 = *(a1 + 16) * v6;
      if (*(a2 + 48) - *(a2 + 40) < v7)
      {
        break;
      }

      do
      {
LABEL_5:
        if ((v6 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v6 *= 2;
      }

      while (v6 < a3);
    }

    *(a1 + 56) = v6;
    result = *(a1 + 20) * v6;
    *a1 = v7;
    *(a1 + 8) = result;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_FE80AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a2 + 48) - *(a2 + 40);
  v6 = 4;
  if (a3 > 4)
  {
    goto LABEL_3;
  }

  while (v5 >= (*(a1 + 16) * v6))
  {
    do
    {
LABEL_3:
      if ((v6 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v6 *= 2;
    }

    while (v6 < a3);
  }

  sub_CDCE34(a1, v6);
  v7 = *(a2 + 56);
  if (v7)
  {
    v8 = *(a2 + 64);
    v9 = *(a2 + 68);
    v10 = *(a2 + 70);
    if (*(a2 + 40))
    {
      v11 = 8 * v7;
      v12 = *(a2 + 72);
      while (1)
      {
        v13 = BYTE6(*v12);
        v14 = HIDWORD(*v12);
        if (v8 != *v12 || (v9 == v14 ? (v15 = v10 == v13) : (v15 = 0), !v15))
        {
          if (*(a2 + 32) != *v12)
          {
            break;
          }

          if (*(a2 + 36) != v14 || *(a2 + 38) != v13)
          {
            break;
          }
        }

        ++v12;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      v34 = 8 * v7;
      v12 = *(a2 + 72);
      while (1)
      {
        v35 = *v12;
        if (v8 != *v12)
        {
          break;
        }

        if (v9 != WORD2(v35) || v10 != BYTE6(v35))
        {
          break;
        }

        ++v12;
        v34 -= 8;
        if (!v34)
        {
          goto LABEL_63;
        }
      }
    }
  }

  else
  {
    v12 = *(a2 + 72);
  }

  v17 = *(a2 + 72) + 8 * v7;
  if (v12 != v17)
  {
    do
    {
      v18 = 0;
      v19 = (*v12 >> 16) & 0xFFFF0000 | (*v12 << 32);
      if ((*v12 & 0xFF000000000000) != 0)
      {
        v20 = (*v12 >> 16) & 0xFFFF0000 | (*v12 << 32);
      }

      else
      {
        v20 = v19 + 1;
      }

      v21 = (0x2127599BF4325C37 * (v20 ^ (v19 >> 23))) ^ ((0x2127599BF4325C37 * (v20 ^ (v19 >> 23))) >> 47);
      v22 = *(a1 + 72);
      while (1)
      {
        v23 = v21 & (*(a1 + 56) - 1);
        v24 = *(v22 + 8 * v23);
        if (__PAIR64__(*(a1 + 68), *(a1 + 64)) == __PAIR64__(WORD2(v24), v24) && *(a1 + 70) == BYTE6(v24))
        {
          break;
        }

        v21 = ++v18 + v23;
      }

      *(v22 + 8 * v23) = *v12;
      ++*(a1 + 48);
      if (++v12 != v17)
      {
        v25 = *(a2 + 64);
        v26 = *(a2 + 68);
        v27 = *(a2 + 70);
        if (*(a2 + 40))
        {
          do
          {
            v28 = BYTE6(*v12);
            v29 = HIDWORD(*v12);
            if (v25 != *v12 || (v26 == v29 ? (v30 = v27 == v28) : (v30 = 0), !v30))
            {
              if (*(a2 + 32) != *v12)
              {
                break;
              }

              if (*(a2 + 36) != v29 || *(a2 + 38) != v28)
              {
                break;
              }
            }

            ++v12;
          }

          while (v12 != v17);
        }

        else
        {
          do
          {
            v32 = *v12;
            if (v25 != *v12)
            {
              break;
            }

            if (v26 != WORD2(v32) || v27 != BYTE6(v32))
            {
              break;
            }

            ++v12;
          }

          while (v12 != v17);
        }
      }
    }

    while (v12 != (*(a2 + 72) + 8 * *(a2 + 56)));
  }

LABEL_63:
  ++*(a1 + 28);
}

float sub_FE8380(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  v9 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  v12 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = v10;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 256) = *(a2 + 256);
  v13 = *(a2 + 272);
  v14 = *(a2 + 288);
  v15 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v15;
  *(a1 + 272) = v13;
  *(a1 + 288) = v14;
  v16 = *(a2 + 336);
  v17 = *(a2 + 352);
  v18 = *(a2 + 384);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = v18;
  *(a1 + 336) = v16;
  *(a1 + 352) = v17;
  v19 = *(a2 + 400);
  v20 = *(a2 + 432);
  v21 = *(a2 + 448);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = v20;
  *(a1 + 400) = v19;
  *(a1 + 448) = v21;
  *(a1 + 456) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*(a1 + 16), 0)));
    *(a1 + 24) = 0;
    sub_FE8528(a1, a2, a3);
  }

  else
  {
    v23 = 4;
    if (a3 > 4)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v24 = *(a1 + 16) * v23;
      if (*(a2 + 240) - *(a2 + 232) < v24)
      {
        break;
      }

      do
      {
LABEL_5:
        if ((v23 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v23 *= 2;
      }

      while (v23 < a3);
    }

    *(a1 + 248) = v23;
    result = *(a1 + 20) * v23;
    *a1 = v24;
    *(a1 + 8) = result;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_FE8528(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2[30] - a2[29];
  v6 = 4;
  if (a3 > 4)
  {
    goto LABEL_3;
  }

  while (v5 >= (*(a1 + 16) * v6))
  {
    do
    {
LABEL_3:
      if ((v6 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v6 *= 2;
    }

    while (v6 < a3);
  }

  sub_FE878C(a1, v6);
  v7 = a2[57];
  v8 = a2[31];
  v9 = v7 + 200 * v8;
  if (v8)
  {
    v10 = 200 * v8;
    while (sub_1106280((a2 + 32), v7) || a2[29] && sub_1106280((a2 + 4), v7))
    {
      v7 += 200;
      v10 -= 200;
      if (!v10)
      {
        v7 = v9;
        break;
      }
    }

    v11 = v7;
    while (v11 != a2[57] + 200 * a2[31])
    {
      v12 = *(a1 + 248) - 1;
      v13 = sub_11062FC(a1, v11) & v12;
      if (!sub_1106280(a1 + 256, *(a1 + 456) + 200 * v13))
      {
        v14 = 1;
        do
        {
          v13 = (v13 + v14++) & v12;
        }

        while (!sub_1106280(a1 + 256, *(a1 + 456) + 200 * v13));
      }

      v15 = *(a1 + 456) + 200 * v13;
      *v15 = *v11;
      v16 = *(v11 + 16);
      v17 = *(v11 + 32);
      v18 = *(v11 + 64);
      *(v15 + 48) = *(v11 + 48);
      *(v15 + 64) = v18;
      *(v15 + 16) = v16;
      *(v15 + 32) = v17;
      v19 = *(v11 + 80);
      v20 = *(v11 + 96);
      v21 = *(v11 + 128);
      *(v15 + 112) = *(v11 + 112);
      *(v15 + 128) = v21;
      *(v15 + 80) = v19;
      *(v15 + 96) = v20;
      v22 = *(v11 + 144);
      v23 = *(v11 + 160);
      v24 = *(v11 + 176);
      *(v15 + 192) = *(v11 + 192);
      *(v15 + 160) = v23;
      *(v15 + 176) = v24;
      *(v15 + 144) = v22;
      ++*(a1 + 240);
      do
      {
        v11 += 200;
      }

      while (v11 != v9 && (sub_1106280((a2 + 32), v11) || a2[29] && sub_1106280((a2 + 4), v11)));
    }
  }

  ++*(a1 + 28);
}

uint64x2_t sub_FE878C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 456);
  if (v4)
  {
    if (*(a1 + 248) == a2)
    {
      goto LABEL_7;
    }

    v5 = malloc_type_realloc(*(a1 + 456), 200 * a2, 0x1000040ABD2C8F2uLL);
    if (!v5)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v4);
      exit(1);
    }
  }

  else
  {
    v5 = malloc_type_malloc(200 * a2, 0x1000040ABD2C8F2uLL);
  }

  *(a1 + 456) = v5;
  v4 = v5;
LABEL_7:
  if (a2)
  {
    v6 = 200 * a2;
    do
    {
      *v4 = *(a1 + 256);
      v7 = *(a1 + 272);
      v8 = *(a1 + 288);
      v9 = *(a1 + 320);
      v4[3] = *(a1 + 304);
      v4[4] = v9;
      v4[1] = v7;
      v4[2] = v8;
      v10 = *(a1 + 336);
      v11 = *(a1 + 352);
      v12 = *(a1 + 384);
      v4[7] = *(a1 + 368);
      v4[8] = v12;
      v4[5] = v10;
      v4[6] = v11;
      v13 = *(a1 + 400);
      v14 = *(a1 + 416);
      v15 = *(a1 + 432);
      *(v4 + 24) = *(a1 + 448);
      v4[10] = v14;
      v4[11] = v15;
      v4[9] = v13;
      v4 = (v4 + 200);
      v6 -= 200;
    }

    while (v6);
  }

  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

void *sub_FE88BC(void *a1, void *a2)
{
  v4 = sub_FE8B18(a1, a2);
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v6 = a2[9];
  v5 = a2[10];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_FE8B18(a1 + 12, a2 + 12);
  a1[21] = 0;
  a1[22] = 0;
  a1[23] = 0;
  v8 = a2[21];
  v7 = a2[22];
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  a1[24] = 0;
  a1[25] = 0;
  a1[26] = 0;
  v10 = a2[24];
  v9 = a2[25];
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_FE8A14(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  sub_FE8A74(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_FE8A74(uint64_t a1)
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
    v4 = *(a1 + 32);
    v5 = *(a1 + 24);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 24);
        if (v6)
        {
          *(v4 - 16) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 64);
        if (v7)
        {
          *(v4 - 56) = v7;
          operator delete(v7);
        }

        v4 -= 176;
      }

      while (v4 != v3);
      v5 = *(a1 + 24);
    }

    *(a1 + 32) = v3;
    operator delete(v5);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

void *sub_FE8B18(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_FE8C70((a1 + 3), a2[3], a2[4], 0x2E8BA2E8BA2E8BA3 * ((a2[4] - a2[3]) >> 4));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  v6 = a2[6];
  v5 = a2[7];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_FE8C30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_FE8C70(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1745D1745D1745ELL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_FE8D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_FE8ED8(va);
  *(v10 + 8) = v11;
  sub_FE8F4C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_FE8D94(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 112) = 0;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v8 = *(a2 + 14);
  v7 = *(a2 + 15);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = *(a2 + 136);
  *(a1 + 152) = 0;
  *(a1 + 136) = v9;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v11 = *(a2 + 19);
  v10 = *(a2 + 20);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_FE8EA4(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 160) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 120) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FE8ED8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 64);
      if (v6)
      {
        *(v3 - 56) = v6;
        operator delete(v6);
      }

      v3 -= 176;
    }
  }

  return a1;
}

void ***sub_FE8F4C(void ***a1)
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
          v6 = *(v4 - 3);
          if (v6)
          {
            *(v4 - 2) = v6;
            operator delete(v6);
          }

          v7 = *(v4 - 8);
          if (v7)
          {
            *(v4 - 7) = v7;
            operator delete(v7);
          }

          v4 -= 176;
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

char **sub_FE8FE0(char **a1)
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
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 8);
        if (v6)
        {
          *(v3 - 7) = v6;
          operator delete(v6);
        }

        v3 -= 176;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_FE9064(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 2464;
    sub_FE90B8((i - 2464));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_FE90B8(void *a1)
{
  v2 = a1[305];
  if (v2)
  {
    a1[306] = v2;
    operator delete(v2);
  }

  v3 = a1[302];
  if (v3)
  {
    a1[303] = v3;
    operator delete(v3);
  }

  v4 = a1[299];
  if (v4)
  {
    a1[300] = v4;
    operator delete(v4);
  }

  v5 = a1[296];
  if (v5)
  {
    v6 = a1[297];
    v7 = a1[296];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 24);
        if (v8)
        {
          *(v6 - 16) = v8;
          operator delete(v8);
        }

        v9 = *(v6 - 64);
        if (v9)
        {
          *(v6 - 56) = v9;
          operator delete(v9);
        }

        v6 -= 176;
      }

      while (v6 != v5);
      v7 = a1[296];
    }

    a1[297] = v5;
    operator delete(v7);
  }

  v10 = a1[293];
  if (v10)
  {
    a1[294] = v10;
    operator delete(v10);
  }

  v11 = a1[290];
  if (v11)
  {
    a1[291] = v11;
    operator delete(v11);
  }

  v12 = a1[287];
  if (v12)
  {
    a1[288] = v12;
    operator delete(v12);
  }

  v13 = a1[284];
  if (v13)
  {
    v14 = a1[285];
    v15 = a1[284];
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 24);
        if (v16)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v17 = *(v14 - 64);
        if (v17)
        {
          *(v14 - 56) = v17;
          operator delete(v17);
        }

        v14 -= 176;
      }

      while (v14 != v13);
      v15 = a1[284];
    }

    a1[285] = v13;
    operator delete(v15);
  }

  v18 = a1[281];
  if (v18)
  {
    a1[282] = v18;
    operator delete(v18);
  }

  v19 = a1[280];
  if (v19)
  {
    free(v19);
  }

  v20 = a1[220];
  if (v20)
  {
    a1[221] = v20;
    operator delete(v20);
  }

  v21 = a1[217];
  if (v21)
  {
    a1[218] = v21;
    operator delete(v21);
  }

  v22 = a1[213];
  if (v22)
  {
    a1[214] = v22;
    operator delete(v22);
  }

  v23 = a1[209];
  if (v23)
  {
    a1[210] = v23;
    operator delete(v23);
  }

  v24 = a1[208];
  if (v24)
  {
    free(v24);
  }

  sub_360988((a1 + 103));
  v25 = a1[100];
  if (v25)
  {
    a1[101] = v25;
    operator delete(v25);
  }

  sub_360988((a1 + 4));
  v26 = a1[1];
  if (v26)
  {
    v27 = a1[2];
    v28 = a1[1];
    if (v27 == v26)
    {
LABEL_62:
      a1[2] = v26;
      operator delete(v28);
      return a1;
    }

    while (1)
    {
      if (*(v27 - 1) < 0)
      {
        operator delete(*(v27 - 3));
        v29 = v27 - 6;
        v30 = *(v27 - 6);
        if (v30)
        {
LABEL_58:
          v31 = *(v27 - 5);
          v32 = v30;
          if (v31 != v30)
          {
            do
            {
              v31 = sub_4547F0(v31 - 552);
            }

            while (v31 != v30);
            v32 = *v29;
          }

          *(v27 - 5) = v30;
          operator delete(v32);
        }
      }

      else
      {
        v29 = v27 - 6;
        v30 = *(v27 - 6);
        if (v30)
        {
          goto LABEL_58;
        }
      }

      v27 = v29;
      if (v29 == v26)
      {
        v28 = a1[1];
        goto LABEL_62;
      }
    }
  }

  return a1;
}

uint64_t sub_FE9318(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_FE956C((a1 + 8), a2 + 8);
  for (i = 0; i != 768; i += 48)
  {
    v5 = (a2 + i);
    v6 = a1 + i;
    v7 = *(a2 + i + 72);
    v8 = *(a2 + i + 32);
    v9 = *(a2 + i + 48);
    v5[4] = &unk_2290750;
    v5[5] = 0;
    v10 = *(a1 + i + 32);
    *(v6 + 32) = v8;
    v5[9] = 0;
    v5[6] = 0;
    v5[7] = 0;
    v11 = *(a1 + i + 56);
    *(v6 + 48) = v9;
    *(v6 + 72) = v7;
    if (v11)
    {
      operator delete(v10);
    }
  }

  v12 = *(a1 + 800);
  if (v12)
  {
    *(a1 + 808) = v12;
    operator delete(v12);
    *(a1 + 800) = 0;
    *(a1 + 808) = 0;
    *(a1 + 816) = 0;
  }

  v13 = 0;
  *(a1 + 800) = *(a2 + 800);
  *(a1 + 816) = *(a2 + 816);
  *(a2 + 800) = 0;
  *(a2 + 808) = 0;
  *(a2 + 816) = 0;
  do
  {
    v14 = (a2 + v13);
    v15 = a1 + v13;
    v16 = (a2 + v13 + 840);
    v17 = *(a2 + v13 + 864);
    v14[108] = 0;
    v18 = *(a2 + v13 + 824);
    v14[103] = &unk_2290750;
    v14[104] = 0;
    v19 = *(a1 + v13 + 824);
    *(v15 + 824) = v18;
    v20 = *v16;
    *v16 = 0u;
    v21 = *(a1 + v13 + 848);
    *(a1 + v13 + 840) = v20;
    *(v15 + 864) = v17;
    if (v21)
    {
      operator delete(v19);
    }

    v13 += 48;
  }

  while (v13 != 768);
  sub_FE9734(a1 + 1592, a2 + 1592);
  v22 = *(a1 + 1672);
  if (v22)
  {
    *(a1 + 1680) = v22;
    operator delete(v22);
    *(a1 + 1672) = 0;
    *(a1 + 1680) = 0;
    *(a1 + 1688) = 0;
  }

  *(a1 + 1672) = *(a2 + 1672);
  *(a1 + 1680) = *(a2 + 1680);
  *(a2 + 1680) = 0;
  *(a2 + 1688) = 0;
  *(a2 + 1672) = 0;
  *(a1 + 1696) = *(a2 + 1696);
  v23 = *(a1 + 1704);
  if (v23)
  {
    *(a1 + 1712) = v23;
    operator delete(v23);
    *(a1 + 1704) = 0;
    *(a1 + 1712) = 0;
    *(a1 + 1720) = 0;
  }

  *(a1 + 1704) = *(a2 + 1704);
  *(a1 + 1712) = *(a2 + 1712);
  *(a2 + 1712) = 0;
  *(a2 + 1720) = 0;
  *(a2 + 1704) = 0;
  *(a1 + 1728) = *(a2 + 1728);
  v24 = *(a1 + 1736);
  if (v24)
  {
    *(a1 + 1744) = v24;
    operator delete(v24);
    *(a1 + 1736) = 0;
    *(a1 + 1744) = 0;
    *(a1 + 1752) = 0;
  }

  *(a1 + 1736) = *(a2 + 1736);
  *(a1 + 1744) = *(a2 + 1744);
  *(a2 + 1736) = 0;
  *(a2 + 1744) = 0;
  *(a2 + 1752) = 0;
  v25 = *(a1 + 1760);
  if (v25)
  {
    *(a1 + 1768) = v25;
    operator delete(v25);
    *(a1 + 1760) = 0;
    *(a1 + 1768) = 0;
    *(a1 + 1776) = 0;
  }

  *(a1 + 1760) = *(a2 + 1760);
  *(a1 + 1776) = *(a2 + 1776);
  *(a2 + 1776) = 0;
  *(a2 + 1760) = 0u;
  sub_FE984C(a1 + 1784, a2 + 1784);
  sub_FE9658((a1 + 2248), a2 + 2248);
  return a1;
}

void ***sub_FE956C(void ***a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 == v4)
    {
LABEL_14:
      a1[1] = v4;
      operator delete(v6);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      goto LABEL_15;
    }

    while (1)
    {
      if (*(v5 - 1) < 0)
      {
        operator delete(*(v5 - 3));
        v7 = v5 - 6;
        v8 = *(v5 - 6);
        if (v8)
        {
LABEL_10:
          v9 = *(v5 - 5);
          v10 = v8;
          if (v9 != v8)
          {
            do
            {
              v9 = sub_4547F0(v9 - 552);
            }

            while (v9 != v8);
            v10 = *v7;
          }

          *(v5 - 5) = v8;
          operator delete(v10);
        }
      }

      else
      {
        v7 = v5 - 6;
        v8 = *(v5 - 6);
        if (v8)
        {
          goto LABEL_10;
        }
      }

      v5 = v7;
      if (v7 == v4)
      {
        v6 = *a1;
        goto LABEL_14;
      }
    }
  }

LABEL_15:
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return a1;
}

void *sub_FE9658(void *a1, uint64_t a2)
{
  sub_FE9B34(a1, a2);
  v4 = a1[9];
  if (v4)
  {
    a1[10] = v4;
    operator delete(v4);
    a1[9] = 0;
    a1[10] = 0;
    a1[11] = 0;
  }

  *(a1 + 9) = *(a2 + 72);
  a1[11] = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  sub_FE9B34((a1 + 12), a2 + 96);
  v5 = a1[21];
  if (v5)
  {
    a1[22] = v5;
    operator delete(v5);
    a1[21] = 0;
    a1[22] = 0;
    a1[23] = 0;
  }

  *(a1 + 21) = *(a2 + 168);
  a1[23] = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v6 = a1[24];
  if (v6)
  {
    a1[25] = v6;
    operator delete(v6);
    a1[24] = 0;
    a1[25] = 0;
    a1[26] = 0;
  }

  *(a1 + 12) = *(a2 + 192);
  a1[26] = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  return a1;
}

uint64_t sub_FE9734(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return a1;
  }

  if (*(a2 + 25))
  {
    v3 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v3;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 64) = *(a2 + 64);
    sub_FE80AC(a1, a2, 4uLL);
    return a1;
  }

  sub_FE7F78(&v12, a2, 0x20uLL);
  v6 = *a1;
  v5 = *(a1 + 16);
  v7 = v13;
  *a1 = v12;
  *(a1 + 16) = v7;
  v12 = v6;
  v13 = v5;
  v8 = *(a1 + 32);
  *(a1 + 32) = v14;
  v14 = v8;
  v9 = *(a1 + 48);
  *(a1 + 48) = v15;
  v15 = v9;
  *&v5 = v16;
  v10 = *(a1 + 56);
  *(a1 + 56) = v16;
  v16 = v10;
  v11 = *(a1 + 72);
  *(a1 + 72) = v17;
  v17 = v11;
  *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v5)));
  *(a1 + 24) = 0;
  v12 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v13, v10)));
  BYTE8(v13) = 0;
  if (!v11)
  {
    return a1;
  }

  free(v11);
  return a1;
}

uint64_t sub_FE984C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return a1;
  }

  if (*(a2 + 25))
  {
    v3 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v3;
    v4 = *(a2 + 96);
    v6 = *(a2 + 48);
    v5 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v4;
    *(a1 + 48) = v6;
    *(a1 + 64) = v5;
    v7 = *(a2 + 160);
    v9 = *(a2 + 112);
    v8 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v7;
    *(a1 + 112) = v9;
    *(a1 + 128) = v8;
    v11 = *(a2 + 192);
    v10 = *(a2 + 208);
    v12 = *(a2 + 176);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 192) = v11;
    *(a1 + 208) = v10;
    *(a1 + 176) = v12;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 256) = *(a2 + 256);
    v13 = *(a2 + 272);
    v14 = *(a2 + 288);
    v15 = *(a2 + 320);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v15;
    *(a1 + 272) = v13;
    *(a1 + 288) = v14;
    v16 = *(a2 + 336);
    v17 = *(a2 + 352);
    v18 = *(a2 + 384);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 384) = v18;
    *(a1 + 336) = v16;
    *(a1 + 352) = v17;
    v19 = *(a2 + 400);
    v20 = *(a2 + 416);
    v21 = *(a2 + 432);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 416) = v20;
    *(a1 + 432) = v21;
    *(a1 + 400) = v19;
    sub_FE8528(a1, a2, 4uLL);
    return a1;
  }

  sub_FE8380(&v56, a2, 0x20uLL);
  v99 = *(a1 + 224);
  v23 = v72;
  *(a1 + 224) = v70;
  v25 = *a1;
  v24 = *(a1 + 16);
  v26 = v57;
  *a1 = v56;
  *(a1 + 16) = v26;
  v56 = v25;
  v57 = v24;
  v27 = *(a1 + 208);
  v97 = *(a1 + 192);
  v98 = v27;
  v28 = *(a1 + 144);
  v93 = *(a1 + 128);
  v94 = v28;
  v29 = *(a1 + 176);
  v95 = *(a1 + 160);
  v96 = v29;
  v30 = *(a1 + 80);
  v89 = *(a1 + 64);
  v90 = v30;
  v31 = *(a1 + 112);
  v91 = *(a1 + 96);
  v92 = v31;
  v32 = *(a1 + 48);
  v87 = *(a1 + 32);
  v88 = v32;
  v33 = v69;
  *(a1 + 192) = v68;
  *(a1 + 208) = v33;
  v34 = v65;
  *(a1 + 128) = v64;
  *(a1 + 144) = v34;
  v35 = v67;
  *(a1 + 160) = v66;
  *(a1 + 176) = v35;
  v36 = v61;
  *(a1 + 64) = v60;
  *(a1 + 80) = v36;
  v37 = v63;
  *(a1 + 96) = v62;
  *(a1 + 112) = v37;
  v38 = v59;
  *(a1 + 32) = v58;
  *(a1 + 48) = v38;
  v68 = v97;
  v69 = v98;
  v39 = v71;
  v71 = *(a1 + 232);
  v40 = *(a1 + 248);
  *(a1 + 248) = v23;
  v41 = v99;
  v64 = v93;
  v65 = v94;
  v66 = v95;
  v67 = v96;
  v60 = v89;
  v61 = v90;
  v62 = v91;
  v63 = v92;
  v58 = v87;
  v59 = v88;
  *(a1 + 232) = v39;
  v70 = v41;
  v72 = v40;
  sub_11061C0(&v87);
  v42 = *(a1 + 432);
  v97 = *(a1 + 416);
  v98 = v42;
  v43 = *(a1 + 456);
  v99 = *(a1 + 448);
  v44 = *(a1 + 368);
  v93 = *(a1 + 352);
  v94 = v44;
  v45 = *(a1 + 400);
  v95 = *(a1 + 384);
  v96 = v45;
  v46 = *(a1 + 304);
  v89 = *(a1 + 288);
  v90 = v46;
  v47 = *(a1 + 336);
  v91 = *(a1 + 320);
  v92 = v47;
  v48 = *(a1 + 272);
  v87 = *(a1 + 256);
  v88 = v48;
  v49 = v84;
  *(a1 + 416) = v83;
  *(a1 + 432) = v49;
  v50 = v80;
  *(a1 + 352) = v79;
  *(a1 + 368) = v50;
  v51 = v82;
  *(a1 + 384) = v81;
  *(a1 + 400) = v51;
  v52 = v76;
  *(a1 + 288) = v75;
  *(a1 + 304) = v52;
  v53 = v78;
  *(a1 + 320) = v77;
  *(a1 + 336) = v53;
  v54 = v74;
  *(a1 + 256) = v73;
  *(a1 + 272) = v54;
  v83 = v97;
  v84 = v98;
  v55 = v86;
  *(a1 + 448) = v85;
  *(a1 + 456) = v55;
  v79 = v93;
  v80 = v94;
  v81 = v95;
  v82 = v96;
  v75 = v89;
  v76 = v90;
  v77 = v91;
  v78 = v92;
  v73 = v87;
  v74 = v88;
  v85 = v99;
  v86 = v43;
  *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 248))));
  *(a1 + 24) = 0;
  v56 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v57, v72)));
  BYTE8(v57) = 0;
  if (!v43)
  {
    return a1;
  }

  free(v43);
  return a1;
}

void sub_FE9B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    free(a65);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_FE9B34(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = (a1 + 24);
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 24);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 24);
        if (v9)
        {
          *(v7 - 16) = v9;
          operator delete(v9);
        }

        v10 = *(v7 - 64);
        if (v10)
        {
          *(v7 - 56) = v10;
          operator delete(v10);
        }

        v7 -= 176;
      }

      while (v7 != v6);
      v8 = *v5;
    }

    *(a1 + 32) = v6;
    operator delete(v8);
    *v5 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v11 = *(a1 + 48);
  if (v11)
  {
    *(a1 + 56) = v11;
    operator delete(v11);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  return a1;
}

uint64_t sub_FE9C4C(uint64_t a1)
{
  v2 = *(a1 + 1336);
  if (v2)
  {
    *(a1 + 1344) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1312);
  if (v3)
  {
    *(a1 + 1320) = v3;
    operator delete(v3);
  }

  sub_3BECA4((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_FE9CB8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && (v3 = *(a1 + 32), v3 < *v2))
  {
    *(a1 + 32) = v3 + 1;
    return *&v2[2 * v3 + 2];
  }

  else
  {
    v6 = sub_1329130(*(a1 + 24));

    return sub_19593CC(a1 + 24, v6);
  }
}

uint64_t sub_FE9D28(uint64_t a1)
{
  *(a1 + 16) |= 1u;
  result = *(a1 + 96);
  if (!result)
  {
    v3 = *(a1 + 8);
    v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
    if (v3)
    {
      result = sub_1329018(*v4);
    }

    else
    {
      result = sub_1329018(v4);
    }

    *(a1 + 96) = result;
  }

  return result;
}

uint64_t sub_FE9D94(uint64_t a1)
{
  v2 = *(a1 + 11888);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2674DB8[v4])(&v39, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 11872);
  *(a1 + 11872) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 11848);
  if (v6)
  {
    *(a1 + 11856) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 11824);
  if (v7)
  {
    *(a1 + 11832) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 11800);
  if (v8)
  {
    *(a1 + 11808) = v8;
    operator delete(v8);
  }

  sub_360988(a1 + 11032);
  sub_360988(a1 + 10264);
  v9 = *(a1 + 10240);
  if (v9)
  {
    *(a1 + 10248) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 10216);
  if (v10)
  {
    *(a1 + 10224) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 10184);
  if (v11)
  {
    *(a1 + 10192) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 10160);
  if (v12)
  {
    *(a1 + 10168) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 10136);
  if (v13)
  {
    v14 = *(a1 + 10144);
    v15 = *(a1 + 10136);
    if (v14 != v13)
    {
      v16 = *(a1 + 10144);
      do
      {
        v18 = *(v16 - 24);
        v16 -= 24;
        v17 = v18;
        if (v18)
        {
          *(v14 - 16) = v17;
          operator delete(v17);
        }

        v14 = v16;
      }

      while (v16 != v13);
      v15 = *(a1 + 10136);
    }

    *(a1 + 10144) = v13;
    operator delete(v15);
  }

  v19 = *(a1 + 10112);
  if (v19)
  {
    operator delete(v19);
  }

  v20 = *(a1 + 10088);
  if (v20)
  {
    operator delete(v20);
  }

  v21 = *(a1 + 10056);
  if (v21)
  {
    *(a1 + 10064) = v21;
    operator delete(v21);
  }

  v22 = *(a1 + 10032);
  if (v22)
  {
    *(a1 + 10040) = v22;
    operator delete(v22);
  }

  v23 = *(a1 + 10008);
  if (v23)
  {
    *(a1 + 10016) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 9984);
  if (v24)
  {
    operator delete(v24);
  }

  v25 = *(a1 + 9960);
  if (v25)
  {
    *(a1 + 9968) = v25;
    operator delete(v25);
  }

  v26 = *(a1 + 9936);
  if (v26)
  {
    v27 = *(a1 + 9944);
    v28 = *(a1 + 9936);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 80);
        if (v29)
        {
          *(v27 - 72) = v29;
          operator delete(v29);
        }

        v27 -= 88;
      }

      while (v27 != v26);
      v28 = *(a1 + 9936);
    }

    *(a1 + 9944) = v26;
    operator delete(v28);
  }

  v30 = *(a1 + 9880);
  if (v30)
  {
    v31 = *(a1 + 9888);
    v32 = *(a1 + 9880);
    if (v31 != v30)
    {
      do
      {
        v31 = sub_1324260(v31 - 48);
      }

      while (v31 != v30);
      v32 = *(a1 + 9880);
    }

    *(a1 + 9888) = v30;
    operator delete(v32);
  }

  if (*(a1 + 9855) < 0)
  {
    operator delete(*(a1 + 9832));
    if ((*(a1 + 9831) & 0x80000000) == 0)
    {
LABEL_61:
      v33 = *(a1 + 9776);
      if (!v33)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }
  }

  else if ((*(a1 + 9831) & 0x80000000) == 0)
  {
    goto LABEL_61;
  }

  operator delete(*(a1 + 9808));
  v33 = *(a1 + 9776);
  if (v33)
  {
LABEL_62:
    *(a1 + 9784) = v33;
    operator delete(v33);
  }

LABEL_63:
  v34 = *(a1 + 9552);
  if (v34)
  {
    *(a1 + 9560) = v34;
    operator delete(v34);
  }

  sub_CDE540(a1 + 4432);
  v35 = *(a1 + 4280);
  if (v35)
  {
    *(a1 + 4288) = v35;
    operator delete(v35);
  }

  v36 = *(a1 + 4256);
  if (v36)
  {
    *(a1 + 4264) = v36;
    operator delete(v36);
  }

  v37 = *(a1 + 4232);
  if (v37)
  {
    *(a1 + 4240) = v37;
    operator delete(v37);
  }

  sub_3E3EF8((a1 + 16));
  return a1;
}

uint64_t sub_FEA098(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 && (v3 = *(a1 + 80), v3 < *v2))
  {
    *(a1 + 80) = v3 + 1;
    return *&v2[2 * v3 + 2];
  }

  else
  {
    v6 = sub_13293D4(*(a1 + 72));

    return sub_19593CC(a1 + 72, v6);
  }
}

void **sub_FEA108(void **a1)
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
        v3 = sub_1324260(v3 - 48);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_FEA164(uint64_t a1)
{
  if (*(a1 + 471) < 0)
  {
    operator delete(*(a1 + 448));
    if ((*(a1 + 447) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 392);
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 447) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 424));
  v2 = *(a1 + 392);
  if (v2)
  {
LABEL_4:
    *(a1 + 400) = v2;
    operator delete(v2);
  }

LABEL_5:
  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 176) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_FEA1DC(uint64_t a1)
{
  v2 = a1 + 4096;
  if (*(a1 + 5551) < 0)
  {
    operator delete(*(a1 + 5528));
    if (*(v2 + 1288) != 1)
    {
      return a1;
    }
  }

  else if (*(a1 + 5384) != 1)
  {
    return a1;
  }

  sub_3E3DF0((a1 + 72));
  return a1;
}

uint64_t sub_FEA244(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  sub_FEA5FC(a1 + 32, a2 + 32);
  *(a1 + 816) = 0;
  *(a1 + 800) = 0u;
  *(a1 + 800) = *(a2 + 800);
  *(a1 + 816) = *(a2 + 816);
  *(a2 + 816) = 0;
  *(a2 + 800) = 0u;
  sub_FEA5FC(a1 + 824, a2 + 824);
  sub_FE7F78(a1 + 1592, a2 + 1592, 0x20uLL);
  *(a1 + 1688) = 0;
  *(a1 + 1672) = 0u;
  *(a1 + 1672) = *(a2 + 1672);
  *(a1 + 1688) = *(a2 + 1688);
  *(a2 + 1688) = 0;
  *(a2 + 1672) = 0u;
  *(a1 + 1696) = *(a2 + 1696);
  *(a1 + 1704) = 0;
  *(a1 + 1712) = 0u;
  *(a1 + 1704) = *(a2 + 1704);
  *(a1 + 1720) = *(a2 + 1720);
  *(a2 + 1720) = 0;
  *(a2 + 1704) = 0u;
  *(a1 + 1728) = *(a2 + 1728);
  *(a1 + 1736) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1736) = *(a2 + 1736);
  *(a1 + 1752) = *(a2 + 1752);
  *(a2 + 1752) = 0;
  *(a2 + 1736) = 0u;
  *(a1 + 1776) = 0;
  *(a1 + 1760) = 0u;
  *(a1 + 1760) = *(a2 + 1760);
  *(a1 + 1776) = *(a2 + 1776);
  *(a2 + 1776) = 0;
  *(a2 + 1760) = 0u;
  sub_FE8380(a1 + 1784, a2 + 1784, 0x20uLL);
  *(a1 + 2264) = 0;
  *(a1 + 2248) = 0u;
  *(a1 + 2248) = *(a2 + 2248);
  *(a1 + 2256) = *(a2 + 2256);
  *(a2 + 2264) = 0;
  *(a2 + 2248) = 0u;
  *(a1 + 2288) = 0;
  *(a1 + 2272) = 0u;
  *(a1 + 2272) = *(a2 + 2272);
  *(a1 + 2288) = *(a2 + 2288);
  *(a2 + 2288) = 0;
  *(a2 + 2272) = 0u;
  *(a1 + 2312) = 0;
  *(a1 + 2296) = 0u;
  *(a1 + 2296) = *(a2 + 2296);
  *(a1 + 2304) = *(a2 + 2304);
  *(a2 + 2312) = 0;
  *(a2 + 2296) = 0u;
  *(a1 + 2336) = 0;
  *(a1 + 2320) = 0u;
  *(a1 + 2320) = *(a2 + 2320);
  *(a1 + 2336) = *(a2 + 2336);
  *(a2 + 2336) = 0;
  *(a2 + 2320) = 0u;
  *(a1 + 2360) = 0;
  *(a1 + 2344) = 0u;
  *(a1 + 2344) = *(a2 + 2344);
  *(a1 + 2352) = *(a2 + 2352);
  *(a2 + 2360) = 0;
  *(a2 + 2344) = 0u;
  *(a1 + 2384) = 0;
  *(a1 + 2368) = 0u;
  *(a1 + 2368) = *(a2 + 2368);
  *(a1 + 2384) = *(a2 + 2384);
  *(a2 + 2384) = 0;
  *(a2 + 2368) = 0u;
  *(a1 + 2408) = 0;
  *(a1 + 2392) = 0u;
  *(a1 + 2392) = *(a2 + 2392);
  *(a1 + 2400) = *(a2 + 2400);
  *(a2 + 2408) = 0;
  *(a2 + 2392) = 0u;
  *(a1 + 2432) = 0;
  *(a1 + 2416) = 0u;
  *(a1 + 2416) = *(a2 + 2416);
  *(a1 + 2432) = *(a2 + 2432);
  *(a2 + 2432) = 0;
  *(a2 + 2416) = 0u;
  *(a1 + 2456) = 0;
  *(a1 + 2440) = 0u;
  *(a1 + 2440) = *(a2 + 2440);
  *(a1 + 2448) = *(a2 + 2448);
  *(a2 + 2456) = 0;
  *(a2 + 2440) = 0u;
  return a1;
}

void sub_FEA508(_Unwind_Exception *a1)
{
  v8 = *v6;
  if (*v6)
  {
    v1[221] = v8;
    operator delete(v8);
    v9 = *v5;
    if (!*v5)
    {
LABEL_3:
      v10 = *v4;
      if (!*v4)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v9 = *v5;
    if (!*v5)
    {
      goto LABEL_3;
    }
  }

  v1[218] = v9;
  operator delete(v9);
  v10 = *v4;
  if (!*v4)
  {
LABEL_4:
    v11 = *v3;
    if (!*v3)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v1[214] = v10;
  operator delete(v10);
  v11 = *v3;
  if (!*v3)
  {
LABEL_5:
    v12 = v1[208];
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v1[210] = v11;
  operator delete(v11);
  v12 = v1[208];
  if (!v12)
  {
LABEL_6:
    sub_360988((v1 + 103));
    v13 = v1[100];
    if (!v13)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  free(v12);
  sub_360988((v1 + 103));
  v13 = v1[100];
  if (!v13)
  {
LABEL_7:
    sub_360988((v1 + 4));
    sub_CDCD6C(v2);
    _Unwind_Resume(a1);
  }

LABEL_13:
  v1[101] = v13;
  operator delete(v13);
  sub_360988((v1 + 4));
  sub_CDCD6C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_FEA5FC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a1 + 296) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 728) = 0u;
  *a1 = &unk_2290750;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_2290750;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_2290750;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_2290750;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_2290750;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = &unk_2290750;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2290750;
  *(a1 + 312) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_2290750;
  *(a1 + 360) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2290750;
  *(a1 + 408) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_2290750;
  *(a1 + 456) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 528) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0;
  *(a1 + 576) = &unk_2290750;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 624) = &unk_2290750;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 672) = &unk_2290750;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 720) = &unk_2290750;
  *(a1 + 760) = 0;
  *(a1 + 744) = 0;
  do
  {
    v5 = (a2 + v4);
    v6 = a1 + v4;
    v7 = *(a2 + v4);
    v8 = *(a2 + v4 + 16);
    *v5 = &unk_2290750;
    v5[1] = 0;
    v9 = *(a1 + v4);
    *v6 = v7;
    v10 = *(a2 + v4 + 40);
    v5[5] = 0;
    v5[2] = 0;
    v5[3] = 0;
    v11 = *(a1 + v4 + 24);
    *(v6 + 16) = v8;
    *(v6 + 40) = v10;
    if (v11)
    {
      operator delete(v9);
    }

    v4 += 48;
  }

  while (v4 != 768);
  return a1;
}

uint64_t sub_FEA784(uint64_t a1)
{
  v2 = *(a1 + 152);
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

  v4 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_FEAB14(_Unwind_Exception *a1)
{
  v6 = *(v1 + 31664);
  if (v6)
  {
    free(v6);
  }

  if (*v4)
  {
    free(*v4);
  }

  sub_CEC30C(v1 + v3);
  if (*(v1 + 20592) == 1)
  {
    sub_3E3DF0((v1 + 15280));
    if (*(v1 + 15120) != 1)
    {
LABEL_7:
      if (*(v1 + 9704) != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else if (*(v1 + 15120) != 1)
  {
    goto LABEL_7;
  }

  sub_3E3DF0((v1 + 9808));
  if (*(v1 + 9704) != 1)
  {
LABEL_8:
    sub_404134(v2);
    _Unwind_Resume(a1);
  }

LABEL_11:
  sub_3E3DF0((v1 + 4392));
  sub_404134(v2);
  _Unwind_Resume(a1);
}

void sub_FEAC38(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = result;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    result = v9;
    v11 = v10;
    v12 = &a2[-v9] >> 5;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        sub_FEB1FC(v9, (v9 + 32), a2 - 32);
        return;
      case 4uLL:

        sub_FEB648(v9, (v9 + 32), (v9 + 64), a2 - 32);
        return;
      case 5uLL:

        sub_FEB938(v9, (v9 + 32), (v9 + 64), (v9 + 96), a2 - 32);
        return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        sub_FEBD04(v9, a2);
      }

      else
      {

        sub_FEBFA8(v9, a2);
      }

      return;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v46 = (v12 - 2) >> 1;
        v47 = v46 + 1;
        v48 = (v9 + 32 * v46);
        do
        {
          sub_FECDE0(v9, a3, &a2[-v9] >> 5, v48);
          v48 -= 32;
          --v47;
        }

        while (v47);
        do
        {
          sub_FED13C(v9, a2, a3, v12);
          a2 -= 32;
        }

        while (v12-- > 2);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = (v9 + 32 * (v12 >> 1));
    if (v12 < 0x81)
    {
      sub_FEB1FC(&result[32 * (v12 >> 1)], result, a2 - 32);
      if (a5)
      {
        goto LABEL_37;
      }
    }

    else
    {
      sub_FEB1FC(result, &result[32 * (v12 >> 1)], a2 - 32);
      v15 = 32 * v13;
      v16 = &result[32 * v13 - 32];
      sub_FEB1FC(result + 32, v16, a2 - 64);
      sub_FEB1FC(result + 64, &result[v15 + 32], a2 - 96);
      sub_FEB1FC(v16, v14, &result[v15 + 32]);
      v17 = *result;
      v18 = *(result + 1);
      *(&v51 + 7) = *(result + 23);
      *&v51 = *(result + 2);
      v19 = result[31];
      *(result + 2) = 0;
      *(result + 3) = 0;
      *(result + 1) = 0;
      *result = *v14;
      v20 = *(v14 + 3);
      *(result + 8) = *(v14 + 8);
      *(result + 3) = v20;
      *v14 = v17;
      *(v14 + 1) = v18;
      *(v14 + 23) = *(&v51 + 7);
      *(v14 + 2) = v51;
      v14[31] = v19;
      if (a5)
      {
        goto LABEL_37;
      }
    }

    v21 = *(result - 32);
    v22 = *result;
    v23 = v21 >= v22;
    if (v21 == v22)
    {
      v24 = *(result - 1);
      if (v24 >= 0)
      {
        v25 = result - 24;
      }

      else
      {
        v25 = *(result - 3);
      }

      if (v24 >= 0)
      {
        v26 = *(result - 1);
      }

      else
      {
        v26 = *(result - 2);
      }

      v27 = result[31];
      if (v27 >= 0)
      {
        v28 = result + 8;
      }

      else
      {
        v28 = *(result + 1);
      }

      if (v27 >= 0)
      {
        v29 = result[31];
      }

      else
      {
        v29 = *(result + 2);
      }

      if (v29 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v25, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      v23 = v26 >= v29;
    }

    if (v23)
    {
LABEL_41:
      v9 = sub_FEC220(result, a2);
      goto LABEL_42;
    }

LABEL_37:
    v32 = sub_FEC66C(result, a2);
    if ((v33 & 1) == 0)
    {
      goto LABEL_40;
    }

    v34 = sub_FECA10(result, v32);
    v9 = (v32 + 32);
    if (sub_FECA10(v32 + 32, a2))
    {
      a4 = -v11;
      a2 = v32;
      if (v34)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v34)
    {
LABEL_40:
      sub_FEAC38(result, v32, a3, -v11, a5 & 1);
      v9 = (v32 + 32);
LABEL_42:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v12 < 2)
  {
    return;
  }

  if (v12 != 2)
  {
    goto LABEL_10;
  }

  v35 = *(a2 - 32);
  v36 = *v9;
  if (v35 == v36)
  {
    v37 = *(a2 - 1);
    if (v37 >= 0)
    {
      v38 = a2 - 24;
    }

    else
    {
      v38 = *(a2 - 3);
    }

    if (v37 >= 0)
    {
      v39 = *(a2 - 1);
    }

    else
    {
      v39 = *(a2 - 2);
    }

    v40 = *(v9 + 8);
    v41 = *(v9 + 31);
    if (v41 >= 0)
    {
      v42 = (v9 + 8);
    }

    else
    {
      v42 = *(v9 + 8);
    }

    if (v41 >= 0)
    {
      v43 = *(v9 + 31);
    }

    else
    {
      v43 = *(v9 + 16);
    }

    if (v43 >= v39)
    {
      v44 = v39;
    }

    else
    {
      v44 = v43;
    }

    v45 = memcmp(v38, v42, v44);
    if (v45)
    {
      if ((v45 & 0x80000000) == 0)
      {
        return;
      }
    }

    else if (v39 >= v43)
    {
      return;
    }
  }

  else
  {
    if (v35 >= v36)
    {
      return;
    }

    v40 = *(v9 + 8);
    LOBYTE(v41) = *(v9 + 31);
  }

  *(&v52 + 7) = *(v9 + 23);
  *&v52 = *(v9 + 16);
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 8) = 0;
  *v9 = *(a2 - 32);
  v50 = *(a2 - 24);
  *(v9 + 24) = *(a2 - 1);
  *(v9 + 8) = v50;
  *(a2 - 32) = v36;
  *(a2 - 3) = v40;
  *(a2 - 2) = v52;
  *(a2 - 9) = *(&v52 + 7);
  *(a2 - 1) = v41;
}

uint64_t sub_FEB1FC(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *a2;
  v7 = *a1;
  v8 = v6 >= v7;
  if (v6 == v7)
  {
    v9 = a2[31];
    if (v9 >= 0)
    {
      v10 = a2 + 8;
    }

    else
    {
      v10 = *(a2 + 1);
    }

    if (v9 >= 0)
    {
      v11 = a2[31];
    }

    else
    {
      v11 = *(a2 + 2);
    }

    v12 = a1[31];
    if (v12 >= 0)
    {
      v13 = a1 + 8;
    }

    else
    {
      v13 = *(a1 + 1);
    }

    if (v12 >= 0)
    {
      v14 = a1[31];
    }

    else
    {
      v14 = *(a1 + 2);
    }

    if (v14 >= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    v16 = memcmp(v10, v13, v15);
    if (v16)
    {
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_42:
      v27 = *a3;
      v28 = v27 >= v6;
      if (v27 == v6)
      {
        v29 = a3[31];
        if (v29 >= 0)
        {
          v30 = a3 + 8;
        }

        else
        {
          v30 = *(a3 + 1);
        }

        if (v29 >= 0)
        {
          v31 = a3[31];
        }

        else
        {
          v31 = *(a3 + 2);
        }

        v32 = a2[31];
        if (v32 >= 0)
        {
          v33 = a2 + 8;
        }

        else
        {
          v33 = *(a2 + 1);
        }

        if (v32 >= 0)
        {
          v34 = a2[31];
        }

        else
        {
          v34 = *(a2 + 2);
        }

        if (v34 >= v31)
        {
          v35 = v31;
        }

        else
        {
          v35 = v34;
        }

        v36 = memcmp(v30, v33, v35);
        if (v36)
        {
          if ((v36 & 0x80000000) == 0)
          {
            goto LABEL_60;
          }

          goto LABEL_106;
        }

        v28 = v31 >= v34;
      }

      if (v28)
      {
LABEL_60:
        v37 = *(a1 + 1);
        *&v69 = *(a1 + 2);
        *(&v69 + 7) = *(a1 + 23);
        v38 = a1[31];
        v39 = v38;
        *(a1 + 1) = 0;
        *(a1 + 2) = 0;
        *(a1 + 3) = 0;
        *a1 = *a2;
        v40 = a2 + 8;
        v41 = *(a2 + 8);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 8) = v41;
        *a2 = v7;
        *(a2 + 2) = v69;
        v42 = a2 + 16;
        *(a2 + 1) = v37;
        *(a2 + 23) = *(&v69 + 7);
        a2[31] = v38;
        v43 = *a3;
        if (v43 == v7)
        {
          v44 = a3[31];
          if (v44 >= 0)
          {
            v45 = a3 + 8;
          }

          else
          {
            v45 = *(a3 + 1);
          }

          if (v44 >= 0)
          {
            v46 = a3[31];
          }

          else
          {
            v46 = *(a3 + 2);
          }

          if ((v38 & 0x80u) == 0)
          {
            v47 = a2 + 8;
          }

          else
          {
            v47 = v37;
          }

          if ((v38 & 0x80u) == 0)
          {
            v48 = v38;
          }

          else
          {
            v48 = *v42;
          }

          if (v48 >= v46)
          {
            v49 = v46;
          }

          else
          {
            v49 = v48;
          }

          v50 = memcmp(v45, v47, v49);
          if (v50)
          {
            if ((v50 & 0x80000000) == 0)
            {
              return 1;
            }
          }

          else if (v46 >= v48)
          {
            return 1;
          }
        }

        else if (v43 >= v7)
        {
          return 1;
        }

        *&v72 = *v42;
        *(&v72 + 7) = *(a2 + 23);
        *(a2 + 2) = 0;
        *(a2 + 3) = 0;
        *v40 = 0;
        *a2 = *a3;
        v67 = *(a3 + 8);
        *(a2 + 3) = *(a3 + 3);
        *v40 = v67;
        *a3 = v7;
        *(a3 + 23) = *(&v72 + 7);
        *(a3 + 1) = v37;
        *(a3 + 2) = v72;
        a3[31] = v39;
        return 1;
      }

LABEL_106:
      v64 = *(a1 + 1);
      *&v71 = *(a1 + 2);
      *(&v71 + 7) = *(a1 + 23);
      v65 = a1[31];
      *(a1 + 2) = 0;
      *(a1 + 3) = 0;
      *(a1 + 1) = 0;
      *a1 = *a3;
      v66 = *(a3 + 8);
      *(a1 + 3) = *(a3 + 3);
      *(a1 + 8) = v66;
      *a3 = v7;
      *(a3 + 23) = *(&v71 + 7);
      *(a3 + 1) = v64;
      *(a3 + 2) = v71;
      a3[31] = v65;
      return 1;
    }

    v8 = v11 >= v14;
  }

  if (!v8)
  {
    goto LABEL_42;
  }

LABEL_19:
  v17 = *a3;
  if (v17 != v6)
  {
    if (v17 < v6)
    {
      v21 = *(a2 + 1);
      LOBYTE(v22) = a2[31];
      goto LABEL_82;
    }

    return 0;
  }

  v18 = a3[31];
  if (v18 >= 0)
  {
    v19 = a3 + 8;
  }

  else
  {
    v19 = *(a3 + 1);
  }

  if (v18 >= 0)
  {
    v20 = a3[31];
  }

  else
  {
    v20 = *(a3 + 2);
  }

  v21 = *(a2 + 1);
  v22 = a2[31];
  if (v22 >= 0)
  {
    v23 = a2 + 8;
  }

  else
  {
    v23 = *(a2 + 1);
  }

  if (v22 >= 0)
  {
    v24 = a2[31];
  }

  else
  {
    v24 = *(a2 + 2);
  }

  if (v24 >= v20)
  {
    v25 = v20;
  }

  else
  {
    v25 = v24;
  }

  v26 = memcmp(v19, v23, v25);
  if (!v26)
  {
    if (v20 < v24)
    {
      goto LABEL_82;
    }

    return 0;
  }

  if ((v26 & 0x80000000) == 0)
  {
    return 0;
  }

LABEL_82:
  *(a2 + 1) = 0;
  *&v70 = *(a2 + 2);
  *(&v70 + 7) = *(a2 + 23);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *a2 = *a3;
  v51 = *(a3 + 8);
  *(a2 + 3) = *(a3 + 3);
  *(a2 + 8) = v51;
  *a3 = v6;
  *(a3 + 23) = *(&v70 + 7);
  *(a3 + 1) = v21;
  *(a3 + 2) = v70;
  a3[31] = v22;
  v52 = *a2;
  v53 = *a1;
  if (v52 != v53)
  {
    if (v52 >= v53)
    {
      return 1;
    }

    v57 = *(a1 + 1);
    LOBYTE(v58) = a1[31];
LABEL_110:
    *&v73 = *(a1 + 2);
    *(&v73 + 7) = *(a1 + 23);
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *a1 = *a2;
    v68 = *(a2 + 8);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 8) = v68;
    *a2 = v53;
    *(a2 + 1) = v57;
    *(a2 + 23) = *(&v73 + 7);
    *(a2 + 2) = v73;
    a2[31] = v58;
    return 1;
  }

  v54 = a2[31];
  if (v54 >= 0)
  {
    v55 = a2 + 8;
  }

  else
  {
    v55 = *(a2 + 1);
  }

  if (v54 >= 0)
  {
    v56 = a2[31];
  }

  else
  {
    v56 = *(a2 + 2);
  }

  v57 = *(a1 + 1);
  v58 = a1[31];
  if (v58 >= 0)
  {
    v59 = a1 + 8;
  }

  else
  {
    v59 = *(a1 + 1);
  }

  if (v58 >= 0)
  {
    v60 = a1[31];
  }

  else
  {
    v60 = *(a1 + 2);
  }

  if (v60 >= v56)
  {
    v61 = v56;
  }

  else
  {
    v61 = v60;
  }

  v62 = memcmp(v55, v59, v61);
  if (!v62)
  {
    if (v56 >= v60)
    {
      return 1;
    }

    goto LABEL_110;
  }

  if (v62 < 0)
  {
    goto LABEL_110;
  }

  return 1;
}