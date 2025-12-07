uint64_t sub_6FB820(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1072) != 1)
  {
    return 0;
  }

  sub_5E94A4(*a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, 1, &__p);
  if (__p == v12)
  {
    v20 = 0u;
    *v18 = 0u;
    memset(v19, 0, sizeof(v19));
    v16 = 0u;
    *v17 = 0u;
    v14 = 0u;
    *v15 = 0u;
    *v13 = 0u;
    *(&v16 + 1) = sub_12331FC();
    v20 = 0uLL;
    v19[3] = 0;
    *v17 = 0u;
    *v18 = 0u;
    memset(v19, 0, 19);
    v3 = __p;
    if (!__p)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = __p;
    while (*v2)
    {
      v2 += 144;
      if (v2 == v12)
      {
        v2 = __p;
        break;
      }
    }

    sub_704AE0(v13, v2);
    v3 = __p;
    if (!__p)
    {
LABEL_8:
      v4 = LOBYTE(v19[2]);
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  v7 = v12;
  v8 = v3;
  if (v12 != v3)
  {
    do
    {
      v7 = sub_310F30(v7 - 144);
    }

    while (v7 != v3);
    v8 = __p;
  }

  v12 = v3;
  operator delete(v8);
  v4 = LOBYTE(v19[2]);
  if ((SHIBYTE(v20) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v19[1]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    operator delete(v18[1]);
    v5 = v17[0];
    if (!v17[0])
    {
LABEL_11:
      if (SBYTE7(v16) < 0)
      {
        goto LABEL_32;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  operator delete(v19[3]);
  if (SHIBYTE(v19[1]) < 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  v5 = v17[0];
  if (!v17[0])
  {
    goto LABEL_11;
  }

LABEL_22:
  v9 = v17[1];
  if (v17[1] == v5)
  {
    v17[1] = v5;
    operator delete(v5);
    if ((SBYTE7(v16) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_32:
    operator delete(v15[0]);
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return v4;
    }

    goto LABEL_33;
  }

  do
  {
    if (*(v9 - 9) < 0)
    {
      operator delete(*(v9 - 4));
      v10 = v9 - 7;
      if ((*(v9 - 33) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v10 = v9 - 7;
      if ((*(v9 - 33) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }

    operator delete(*v10);
LABEL_25:
    v9 = v10;
  }

  while (v10 != v5);
  v17[1] = v5;
  operator delete(v17[0]);
  if (SBYTE7(v16) < 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    return v4;
  }

LABEL_33:
  operator delete(v13[1]);
  return v4;
}

void sub_6FBA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5E9738(va);
  _Unwind_Resume(a1);
}

void sub_6FBA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5E9738(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6FBA68(uint64_t a1, void *a2, unint64_t a3, int **a4, uint64_t a5)
{
  if (*(a1 + 870) != 1)
  {
    return 0;
  }

  result = sub_716E70(a1 + 1432, a4);
  if (result)
  {
    v11 = (*a4 - **a4);
    if (*v11 < 0x2Fu || (v12 = v11[23]) == 0 || (result = 0, v13 = *(*a4 + v12), v13 != 14) && v13 != 44)
    {
      result = 0;
      v14 = *(a5 + 24);
      if (v14 - 91 >= 6 && (v14 > 0x18 || ((1 << v14) & 0x1C00008) == 0))
      {
        v15 = sub_4D1F50(a2, a3);
        v16 = *a1;
        v17 = *(v15 + 32);
        v18 = *(v15 + 36);
        v19 = ((v18 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v18 << 32) | v17;
        v20 = sub_2B51D8(*a1, ((v18 & 0x20000000u) << 19) | (v18 << 32) & 0xFFFFFFFFFFFFLL | v17 & 0xFFFFFFFFFFFFLL);
        if (*(v16 + 7772) == 1)
        {
          v21 = sub_30C50C(v16 + 3896, v17, 0);
          v22 = &v21[-*v21];
          if (*v22 < 5u)
          {
            v23 = 0;
          }

          else
          {
            v23 = *(v22 + 2);
            if (v23)
            {
              v23 += &v21[*&v21[v23]];
            }
          }

          v24 = v23 + 4 * v18 + 4 + *(v23 + 4 * v18 + 4);
        }

        else
        {
          v24 = 0;
        }

        v68[0] = v20;
        v68[1] = v24;
        v68[2] = sub_31D7E8(v16, v19 & 0xFFFFFFFFFFFFLL, 1);
        v68[3] = v25;
        v68[4] = v19 ^ 0x1000000000000;
        __p = 0;
        v66 = 0;
        v67 = 0;
        v26 = sub_4D1DC0(a2);
        if (a3 <= v26)
        {
          v27 = v26;
        }

        else
        {
          v27 = a3;
        }

        v59 = v27;
        if (v26 > a3)
        {
          do
          {
            v28 = sub_4D1F50(a2, a3);
            v29 = a4[4];
            v31 = *(v28 + 32);
            v30 = *(v28 + 36);
            if (v31 == v29 && WORD2(v29) == v30 && ((v30 >> 29) & 1 ^ BYTE6(v29)) == 1)
            {
              break;
            }

            v33 = *a1;
            v34 = *(v28 + 36);
            v35 = ((v30 & 0x20000000) << 19) | (v34 << 32) | v31;
            v36 = sub_2B51D8(*a1, v35 & 0xFFFFFFFFFFFFLL);
            if (*(v33 + 7772) == 1)
            {
              v37 = sub_30C50C(v33 + 3896, v31, 0);
              v38 = &v37[-*v37];
              if (*v38 < 5u)
              {
                v39 = 0;
              }

              else
              {
                v39 = *(v38 + 2);
                if (v39)
                {
                  v39 += &v37[*&v37[v39]];
                }
              }

              v40 = v39 + 4 * v34 + 4 + *(v39 + 4 * v34 + 4);
            }

            else
            {
              v40 = 0;
            }

            v41 = sub_31D7E8(v33, v35 & 0xFFFFFFFFFFFFLL, 1);
            v60 = v36;
            v61 = v40;
            v62 = v41;
            v63 = v42;
            v64 = v35 ^ 0x1000000000000;
            if (!sub_716E70(a1 + 1432, &v60))
            {
              goto LABEL_51;
            }

            v43 = (v60 - *v60);
            if (*v43 >= 0x2Fu)
            {
              v44 = v43[23];
              if (v44)
              {
                v45 = *(v60 + v44);
                if (v45 == 14 || v45 == 44)
                {
                  goto LABEL_51;
                }
              }
            }

            v46 = *a1;
            v47 = *(v28 + 32);
            v48 = *(v28 + 36);
            v49 = ((v48 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v48 << 32) | v47;
            v50 = sub_2B51D8(*a1, ((v48 & 0x20000000u) << 19) | (v48 << 32) & 0xFFFFFFFFFFFFLL | v47 & 0xFFFFFFFFFFFFLL);
            if (*(v46 + 7772) == 1)
            {
              v51 = sub_30C50C(v46 + 3896, v47, 0);
              v52 = &v51[-*v51];
              if (*v52 < 5u)
              {
                v53 = 0;
              }

              else
              {
                v53 = *(v52 + 2);
                if (v53)
                {
                  v53 += &v51[*&v51[v53]];
                }
              }

              v54 = v53 + 4 * v48 + 4 + *(v53 + 4 * v48 + 4);
            }

            else
            {
              v54 = 0;
            }

            v55 = sub_31D7E8(v46, v49 & 0xFFFFFFFFFFFFLL, 1);
            v60 = v50;
            v61 = v54;
            v62 = v55;
            v63 = v56;
            v64 = v49 ^ 0x1000000000000;
            sub_31B8F4(v46, &v60, &__p);
            if (sub_701B44(a1, v68, &__p, a4) != 1)
            {
LABEL_51:
              result = 0;
              v57 = __p;
              if (!__p)
              {
                return result;
              }

              goto LABEL_52;
            }

            ++a3;
          }

          while (v59 != a3);
        }

        result = 1;
        v57 = __p;
        if (__p)
        {
LABEL_52:
          v66 = v57;
          v58 = result;
          operator delete(v57);
          return v58;
        }
      }
    }
  }

  return result;
}

void sub_6FBE78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6FBEA4(uint64_t a1, uint64_t a2, int **a3, int ***a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a7 + 8) = *a7;
  *(a7 + 24) = 0;
  v8 = a4[1] - *a4;
  if (v8)
  {
    v9 = a6;
    v11 = a4;
    v14 = a1;
    v15 = 0;
    v16 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
    v50 = v16;
    do
    {
      v18 = sub_605E3C(v11, v15);
      v19 = *a3;
      v20 = (*a3 - **a3);
      v21 = *v20;
      if (*(a3 + 38))
      {
        if (v21 < 0x9B)
        {
          goto LABEL_34;
        }

        v22 = v20[77];
        if (!v22 || (*&v19[v22] & 2) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v21 < 0x9B)
        {
          goto LABEL_34;
        }

        v23 = v20[77];
        if (!v23 || (*&v19[v23] & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v24 = *v18;
      v25 = (*v18 - **v18);
      v26 = *v25;
      if (*(v18 + 38))
      {
        if (v26 < 0x9B)
        {
          goto LABEL_33;
        }

        v27 = v25[77];
        if (!v27)
        {
          goto LABEL_33;
        }

        if ((v24[v27] & 2) == 0 && (*&v24[v27] & 1) == 0 && a5 != v15)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v26 < 0x9B || (v29 = v25[77]) == 0)
        {
LABEL_33:
          if (a5 != v15)
          {
            goto LABEL_5;
          }

          goto LABEL_34;
        }

        if ((v24[v29] & 1) == 0 && (*&v24[v29] & 2) == 0 && a5 != v15)
        {
          goto LABEL_5;
        }
      }

LABEL_34:
      v31 = sub_6F532C(v14, a2, a3, v11, v15, 1, 1, 0);
      if (v31 != 4)
      {
        v32 = v31;
        if (*(v9 + 32) && *v9 && *(v9 + 8))
        {
          v32 = sub_6F532C(v14, a2, v9, v11, v15, 1, 1, 0);
        }

        result = sub_6FC214(v14, v32);
        if ((result & 0x10000) == 0)
        {
          *(a7 + 8) = *a7;
          *(a7 + 24) = 0;
          return result;
        }

        v34 = a5 == v15;
        v36 = *(a7 + 8);
        v35 = *(a7 + 16);
        if (v36 < v35)
        {
          *v36 = result;
          *(v36 + 2) = v34;
          v17 = v36 + 4;
        }

        else
        {
          v37 = *a7;
          v38 = v36 - *a7;
          v39 = v38 >> 2;
          v40 = (v38 >> 2) + 1;
          if (v40 >> 62)
          {
            sub_1794();
          }

          v41 = a2;
          v42 = a5;
          v43 = v35 - v37;
          if (v43 >> 1 > v40)
          {
            v40 = v43 >> 1;
          }

          if (v43 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v44 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v44 = v40;
          }

          if (v44)
          {
            if (!(v44 >> 62))
            {
              operator new();
            }

            sub_1808();
          }

          v45 = 4 * v39;
          *v45 = result;
          *(v45 + 2) = v34;
          v17 = 4 * v39 + 4;
          v46 = (v45 - 4 * (v38 >> 2));
          memcpy(v46, v37, v38);
          *a7 = v46;
          *(a7 + 8) = v17;
          *(a7 + 16) = 0;
          if (v37)
          {
            operator delete(v37);
          }

          a5 = v42;
          a2 = v41;
          v11 = a4;
          v9 = a6;
          v14 = a1;
        }

        *(a7 + 8) = v17;
        v16 = v50;
      }

LABEL_5:
      ++v15;
    }

    while (v16 != v15);
  }

  return sub_6D8760(a7, sub_6D88A4, sub_6D88C4);
}

uint64_t sub_6FC214(uint64_t a1, int a2)
{
  v2 = 0;
  v3 = 792;
  switch(a2)
  {
    case 0:
    case 3:
    case 5:
    case 12:
    case 89:
    case 90:
      goto LABEL_2;
    case 1:
      v3 = 816;
      goto LABEL_2;
    case 2:
      v3 = 848;
      goto LABEL_2;
    case 20:
      v3 = 800;
      goto LABEL_2;
    case 21:
      v3 = 832;
      goto LABEL_2;
    case 60:
      v3 = 824;
      goto LABEL_2;
    case 61:
      v3 = 856;
      goto LABEL_2;
    case 62:
      v3 = 808;
      goto LABEL_2;
    case 63:
      v3 = 840;
LABEL_2:
      v2 = *(a1 + v3) | 0x10000u;
      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t sub_6FC40C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = (*(a2 + 8) - *a2) >> 3;
    if (v3 < 3)
    {
      return 0;
    }

    if (v2 == 12)
    {
      return v3 - 2;
    }

    if (v2 != 4)
    {
      if (v2 != 3)
      {
        if (v3 <= 0x666666666666666)
        {
          operator new();
        }

        sub_1794();
      }

      return v3 - 2;
    }
  }

  return -1;
}

void sub_6FC788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    if (!v12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6FC7E8(uint64_t a1, int **a2, int ***a3, uint64_t a4, double a5)
{
  if (*(a1 + 708) != 1)
  {
    return 0;
  }

  v9 = sub_716AD8(a1 + 1432, a2, a3, -1, a5);
  if (v9 != -1 && v9 == a4)
  {
    return 0;
  }

  result = sub_31EE90(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL, (*a3)[5 * a4 + 4] & 0xFFFFFFFFFFFFFFLL);
  if (result)
  {
    v11 = (*a2 - **a2);
    if (*v11 < 0x2Fu)
    {
      return 0;
    }

    v12 = v11[23];
    if (!v12)
    {
      return 0;
    }

    v13 = *(*a2 + v12);
    v14 = v13 > 0x2B;
    v15 = (1 << v13) & 0x80000001040;
    if (v14 || v15 == 0)
    {
      return 0;
    }

    v17 = *a3;
    v18 = a3[1];
    if (*a3 != v18)
    {
      result = 1;
      while (1)
      {
        v19 = (*v17 - **v17);
        if (*v19 < 0x2Fu)
        {
          break;
        }

        v20 = v19[23];
        if (!v20)
        {
          break;
        }

        v21 = *(*v17 + v20);
        v14 = v21 > 0x2B;
        v22 = (1 << v21) & 0x80000001040;
        if (v14 || v22 == 0)
        {
          break;
        }

        v17 += 5;
        if (v17 == v18)
        {
          return result;
        }
      }

      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_6FC964(uint64_t a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (sub_6DEE8C(a1, a3, a4) > 1)
  {
    return 1;
  }

  if (*(a1 + 1114) != 1 || a5 != -1 && a5 != a6)
  {
    return 0;
  }

  v13 = sub_605E3C(a4, a6);
  v14 = *v13;
  v15 = *(v13 + 16);
  v53 = *(v13 + 32);
  v52[0] = v14;
  v52[1] = v15;
  v16 = *a3;
  v17 = (*a3 - **a3);
  v18 = *v17;
  if (v18 >= 0x2F && v17[23])
  {
    v19 = *(v16 + v17[23]);
    if (v19 <= 0x2A)
    {
      if (v19 != 6 && v19 != 12)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (v19 == 44)
    {
      return 0;
    }

    if (v19 == 43)
    {
LABEL_17:
      if (v18 >= 0x9B)
      {
        v21 = v17[77];
        if (v21)
        {
          if ((*(v16 + v21 + 2) & 0x20) != 0)
          {
            goto LABEL_20;
          }
        }
      }

      return 0;
    }
  }

LABEL_20:
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v22 = *(a4 + 8) - *a4;
  if (v22)
  {
    if (0xCCCCCCCCCCCCCCCDLL * (v22 >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v23 = sub_70CC84(0, 0, a1);
  v25 = v49;
  v24 = v50;
  if (v23 != v50)
  {
    v24 = v23;
    v50 = v23;
  }

  if (0xCCCCCCCCCCCCCCCDLL * (v24 - v49) < 2)
  {
    return 0;
  }

  v27 = v49;
  if (v49 != v24)
  {
    v27 = v49;
    while (__PAIR64__(*(v27 + 18), *(v27 + 8)) != __PAIR64__(WORD2(v53), v53) || *(v27 + 38) != BYTE6(v53))
    {
      v27 += 5;
      if (v27 == v24)
      {
        return 0;
      }
    }
  }

  if (v27 == v24)
  {
    return 0;
  }

  v28 = v49[4];
  if (v53 == v28 && WORD2(v53) == WORD2(v28) && BYTE6(v53) == BYTE6(v28))
  {
    v25 = sub_6B8D68(&v49, 1uLL);
  }

  v29 = *v25;
  v30 = *(v25 + 16);
  v48 = *(v25 + 32);
  v47[0] = v29;
  v47[1] = v30;
  v31 = *a3;
  v32 = (*a3 - **a3);
  v33 = *v32;
  if (*(a3 + 38))
  {
    if (v33 < 0x47)
    {
      goto LABEL_50;
    }

    v34 = v32[35];
    if (!v34)
    {
      goto LABEL_50;
    }

    v35 = *(v31 + v34);
    if ((v35 & 0x141510) == 0)
    {
      v36 = 64;
      goto LABEL_47;
    }
  }

  else
  {
    if (v33 < 0x47)
    {
      goto LABEL_50;
    }

    v37 = v32[35];
    if (!v37)
    {
      goto LABEL_50;
    }

    v35 = *(v31 + v37);
    if ((v35 & 0xA0A88) == 0)
    {
      v36 = 32;
LABEL_47:
      if ((v35 & v36) == 0)
      {
        goto LABEL_50;
      }
    }
  }

  if (sub_3139A0(v52) && !sub_3139A0(v47))
  {
    goto LABEL_61;
  }

LABEL_50:
  v38 = (*&v47[0] - **&v47[0]);
  if (*v38 >= 0x9Bu && (v39 = v38[77]) != 0 && (*(*&v47[0] + v39 + 2) & 2) != 0 || (sub_30F868(a1 + 7264, v47) & 1) != 0 || (sub_30F6FC(a1 + 7264, v47) & 1) != 0 || (v41 = (*&v47[0] - **&v47[0]), *v41 >= 0x2Fu) && (v42 = v41[23]) != 0 && (v43 = *(*&v47[0] + v42) - 15, v43 < 0x21) && ((0x1C5C08009uLL >> v43) & 1) != 0 || (v44 = sub_70E484(a1 + 1432, a2, a3, v52, 1, v40), v45 = sub_6DEB50(a1, a2, a3, v52, v47, v44), fabs(v44) < *(a1 + 184)) || fabs(v45) > *(a1 + 400))
  {
LABEL_61:
    result = 0;
    v46 = v49;
    if (!v49)
    {
      return result;
    }

LABEL_27:
    v50 = v46;
    v26 = result;
    operator delete(v46);
    return v26;
  }

  result = 1;
  v46 = v49;
  if (v49)
  {
    goto LABEL_27;
  }

  return result;
}

void sub_6FCDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6FCDF4(uint64_t a1, int **a2, int ***a3, unint64_t a4, int a5, uint64_t a6)
{
  v10 = sub_605E3C(a3, a4);
  v12 = (*v10 - **v10);
  if (*v12 < 0x2Fu)
  {
    return 0;
  }

  v13 = v12[23];
  if (!v13)
  {
    return 0;
  }

  v14 = *(*v10 + v13);
  v15 = v14 > 0x2A;
  v16 = (1 << v14) & 0x50426810004;
  if (v15 || v16 == 0)
  {
    return 0;
  }

  v18 = sub_716AD8(a1 + 1432, a2, a3, -1, v11);
  result = 0;
  if (v18 != -1 && v18 != a4)
  {
    operator new();
  }

  return result;
}

void sub_6FD89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
    v38 = *(v36 - 128);
    if (!v38)
    {
LABEL_5:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v38 = *(v36 - 128);
    if (!v38)
    {
      goto LABEL_5;
    }
  }

  *(v36 - 120) = v38;
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

double sub_6FD97C(double *a1, uint64_t a2, int **a3, int **a4, int **a5)
{
  if (sub_394BD0())
  {
    return a1[52];
  }

  v12 = fabs(sub_70E484((a1 + 179), a2, a3, a5, 0, v10));
  if (v12 < a1[51])
  {
    return a1[50];
  }

  LODWORD(v12) = *(a1 + 184);
  if (sub_4346FC(*a1, a3, a5, *(a1 + 142), *(a1 + 141), *&v12, a1[140]))
  {
    return a1[49];
  }

  LODWORD(v13) = *(a1 + 184);
  v14 = sub_4346FC(*a1, a3, a4, *(a1 + 142), *(a1 + 141), v13, a1[140]);
  v15 = 50;
  if (v14)
  {
    v15 = 49;
  }

  return a1[v15];
}

uint64_t sub_6FDAB0(uint64_t a1, void *a2, unint64_t a3, int **a4)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  __p = 0;
  v40 = 0;
  v41 = 0;
  v7 = (*a4 - **a4);
  if (*v7 >= 9u && (v8 = v7[4]) != 0)
  {
    v9 = *(*a4 + v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + 1);
  v36 = *a4;
  v37 = v10;
  v38 = a4[4];
  if (v9 < *(a1 + 448))
  {
    while (1)
    {
      sub_740664((a1 + 7480), &v36, &v42);
      if (v42 == v43 || fabs(sub_710C1C(a1 + 1432, a2, &v36, v42)) > *(a1 + 200))
      {
        break;
      }

      v11 = *(v42 + 4);
      v12 = *(v42 + 1);
      v36 = *v42;
      v37 = v12;
      v38 = v11;
      v13 = v40;
      if (v40 >= v41)
      {
        v15 = __p;
        v16 = v40 - __p;
        v17 = (v40 - __p) >> 3;
        v18 = v17 + 1;
        if ((v17 + 1) >> 61)
        {
          sub_1794();
        }

        v19 = v41 - __p;
        if ((v41 - __p) >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          if (!(v20 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v21 = (8 * v17);
        v22 = v11 & 0xFFFFFFFFFFFFFFLL;
        v23 = &v21[-((v40 - __p) >> 3)];
        *v21 = v22;
        v14 = v21 + 1;
        memcpy(v23, v15, v16);
        __p = v23;
        v41 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v40 = v11 & 0xFFFFFFFFFFFFFFLL;
        v14 = v13 + 1;
      }

      v40 = v14;
      v24 = (v36 - *v36);
      if (*v24 >= 9u && (v25 = v24[4]) != 0)
      {
        v9 += *(v36 + v25);
        if (v9 >= *(a1 + 448))
        {
          break;
        }
      }

      else if (v9 >= *(a1 + 448))
      {
        break;
      }
    }
  }

  sub_3120CC(&__p);
  for (i = sub_4D23F8(a2, a3, v26); i < *(a1 + 448); i += sub_4D23F8(a2, a3, v30))
  {
    if (a3 >= sub_4D1DC0(a2) - 1)
    {
      break;
    }

    v28 = sub_4D1F50(a2, a3++);
    v29 = sub_4D1F50(a2, a3);
    v30 = fabs(sub_719E74(a1 + 1432, v28, v29));
    if (v30 > *(a1 + 200))
    {
      break;
    }

    v31 = __p;
    if (__p != v40)
    {
      v32 = *(v29 + 36);
      while (*v31 != *(v29 + 32) || *(v31 + 2) != v32 || (*(v31 + 6) ^ (v32 >> 29) & 1) != 1)
      {
        if (++v31 == v40)
        {
          goto LABEL_36;
        }
      }
    }

    if (v31 != v40)
    {
      v33 = 1;
      v34 = __p;
      if (__p)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }

LABEL_36:
    ;
  }

  v33 = 0;
  v34 = __p;
  if (__p)
  {
LABEL_38:
    v40 = v34;
    operator delete(v34);
  }

LABEL_39:
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v33;
}

void sub_6FDDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
    v20 = a18;
    if (!a18)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v20 = a18;
    if (!a18)
    {
      goto LABEL_3;
    }
  }

  operator delete(v20);
  _Unwind_Resume(exception_object);
}

void sub_6FDE50(uint64_t a1, __int128 *a2, void *a3, unint64_t a4, uint64_t a5)
{
  sub_605E3C(a3, a4);
  v20 = 0u;
  v21 = 0u;
  v22 = 0x1000000000000;
  v17 = 0u;
  v18 = 0u;
  v19 = 0x1000000000000;
  v14 = 0u;
  v15 = 0u;
  v16 = 0x1000000000000;
  v11 = 0u;
  v12 = 0u;
  v13 = 0x1000000000000;
  v8 = 0u;
  v9 = 0u;
  v10 = 0x1000000000000;
  v5 = 0;
  __dst = 0;
  v7 = 0;
  operator new();
}

void sub_6FE650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45)
{
  if (__p)
  {
    operator delete(__p);
    v46 = a38;
    if (!a38)
    {
LABEL_3:
      v47 = a41;
      if (!a41)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v46 = a38;
    if (!a38)
    {
      goto LABEL_3;
    }
  }

  operator delete(v46);
  v47 = a41;
  if (!a41)
  {
LABEL_4:
    v48 = a44;
    if (!a44)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v47);
  v48 = a44;
  if (!a44)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v48);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6FE744(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) - 1;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) - 1;
  }

  if (v4 < 2)
  {
    v6 = 0;
    v7 = -1;
    if (a1[64] != 0x7FFFFFFFFFFFFFFFLL && a1[64] != 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_37;
    }

    return v7;
  }

  v6 = 0;
  v7 = -1;
  v10 = 1;
  v11 = 1.79769313e308;
  do
  {
    v29 = -1;
    v30 = 0x7FFFFFFF;
    v14 = sub_605E3C(a2, v10);
    sub_2B7A20(*a1, *(v14 + 32) & 0xFFFFFFFFFFFFFFLL, &v25);
    v15 = sub_31BF20(&v25, __p).n128_u64[0];
    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }

    sub_6D5084(__p, a3, 0, 0, &v25, v15);
    v16 = v25;
    v29 = v26;
    v30 = v27;
    if (v25 < v11)
    {
      sub_47190(&v29, __p);
      sub_605E3C(a2, v10);
      v7 = v10;
      v11 = v16;
    }

    v17 = sub_605E3C(a2, v10);
    v18 = (*v17 - **v17);
    if (*v18 < 9u || (v19 = v18[4]) == 0)
    {
      v12 = 0;
      v13 = __p[0];
      if (!__p[0])
      {
        goto LABEL_11;
      }

LABEL_10:
      __p[1] = v13;
      operator delete(v13);
      goto LABEL_11;
    }

    v12 = *(*v17 + v19);
    v13 = __p[0];
    if (__p[0])
    {
      goto LABEL_10;
    }

LABEL_11:
    v6 += v12;
    ++v10;
  }

  while (v5 != v10);
  v20 = v11 * 100.0;
  if (v11 * 100.0 >= 0.0)
  {
    v21 = v11 * 100.0;
    if (v20 < 4.50359963e15)
    {
      v22 = (v20 + v20) + 1;
LABEL_25:
      v21 = (v22 >> 1);
    }
  }

  else
  {
    v21 = v11 * 100.0;
    if (v20 > -4.50359963e15)
    {
      v22 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
      goto LABEL_25;
    }
  }

  if (v21 >= 9.22337204e18)
  {
    if (a1[64] != 0x7FFFFFFFFFFFFFFFLL && a1[64] != 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (v20 >= 0.0)
    {
      if (v20 < 4.50359963e15)
      {
        v23 = (v20 + v20) + 1;
LABEL_35:
        v20 = (v23 >> 1);
      }
    }

    else if (v20 > -4.50359963e15)
    {
      v23 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
      goto LABEL_35;
    }

    if (v20 > a1[64])
    {
LABEL_37:
      if (v6 > a1[65])
      {
        return -1;
      }
    }
  }

  return v7;
}

void sub_6FEA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6FEAD4(uint64_t a1, int **a2, void *a3)
{
  a3[1] = *a3;
  v6 = (*a2 - **a2);
  if (*v6 < 0x9Bu || (v7 = v6[77]) == 0 || (*(*a2 + v7) & 4) == 0)
  {
    __p = 0;
    v38 = 0;
    v39 = 0;
    sub_31B8F4(*a1, a2, &__p);
    v8 = sub_709188(__p, v38);
    v10 = __p;
    v9 = v38;
    if (v8 != v38)
    {
      v9 = v8;
      v38 = v8;
    }

    if (v9 - __p != 80)
    {
      goto LABEL_60;
    }

    v11 = *__p;
    v12 = (*__p - **__p);
    if (*v12 < 0x9Bu)
    {
      goto LABEL_60;
    }

    if (!v12[77])
    {
      goto LABEL_60;
    }

    if ((*(v11 + v12[77]) & 1) == ((*(v11 + v12[77]) >> 1) & 1))
    {
      goto LABEL_60;
    }

    v13 = v9 - 5;
    v14 = *(v9 - 5);
    v15 = (v14 - *v14);
    if (*v15 < 0x9Bu)
    {
      goto LABEL_60;
    }

    if (!v15[77])
    {
      goto LABEL_60;
    }

    v16 = *(v14 + v15[77]);
    if (((v16 ^ (v16 >> 1) & 1) & 1) == 0)
    {
      goto LABEL_60;
    }

    v17 = *a2;
    v18 = (*a2 - **a2);
    v19 = *v18;
    if (*(a2 + 38))
    {
      if (v19 < 0x49 || (v20 = v18[36]) == 0)
      {
LABEL_20:
        v21 = -1;
LABEL_21:
        if (*(__p + 38))
        {
          v22 = v12[37];
          if (v22)
          {
LABEL_23:
            v23 = *(v11 + v22);
            goto LABEL_26;
          }
        }

        else
        {
          v22 = v12[36];
          if (v22)
          {
            goto LABEL_23;
          }
        }

        v23 = 0xFFFF;
LABEL_26:
        v24 = v21 + 18000;
        v25 = v21 - 18000;
        if ((v24 >> 5) < 0x465u)
        {
          v25 = v24;
        }

        v26 = v23 - v25;
        if (v26 > 18000)
        {
          v26 -= 36000;
        }

        if (v26 < -17999)
        {
          v26 += 36000;
        }

        v27 = v26 / 100.0;
        v28 = fabs(v27);
        LOWORD(v27) = *(a1 + 504);
        v29 = vmovl_s16(*&v27).i32[0];
        if (v28 > v29)
        {
          goto LABEL_60;
        }

        if (*(a2 + 38))
        {
          if (v19 < 0x49 || (v30 = v18[36]) == 0)
          {
LABEL_40:
            v31 = -1;
LABEL_41:
            if (*(v9 - 2))
            {
              v32 = v15[37];
              if (v15[37])
              {
LABEL_43:
                v33 = *(v14 + v32);
                goto LABEL_46;
              }
            }

            else
            {
              v32 = v15[36];
              if (v15[36])
              {
                goto LABEL_43;
              }
            }

            v33 = 0xFFFF;
LABEL_46:
            v34 = v31 + 18000;
            v35 = v31 - 18000;
            if ((v34 >> 5) >= 0x465u)
            {
              v34 = v35;
            }

            v36 = v33 - v34;
            if (v36 > 18000)
            {
              v36 -= 36000;
            }

            if (v36 < -17999)
            {
              v36 += 36000;
            }

            if (fabs(v36 / 100.0) > v29)
            {
              goto LABEL_60;
            }

            if (sub_312DF0(__p) && sub_312E54(v13))
            {
              sub_6E0128(a3, v10);
            }

            else
            {
              if (!sub_312E54(v10) || !sub_312DF0(v13))
              {
                goto LABEL_60;
              }

              sub_6E0128(a3, v13);
              v13 = v10;
            }

            sub_6E0128(a3, v13);
LABEL_60:
            if (__p)
            {
              v38 = __p;
              operator delete(__p);
            }

            return;
          }
        }

        else
        {
          if (v19 < 0x4B)
          {
            goto LABEL_40;
          }

          v30 = v18[37];
          if (!v30)
          {
            goto LABEL_40;
          }
        }

        v31 = *&v17[v30];
        goto LABEL_41;
      }
    }

    else
    {
      if (v19 < 0x4B)
      {
        goto LABEL_20;
      }

      v20 = v18[37];
      if (!v18[37])
      {
        goto LABEL_20;
      }
    }

    v21 = *&v17[v20];
    goto LABEL_21;
  }
}

void sub_6FEE10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6FEE34(uint64_t a1, __int128 *a2, void *a3, char **a4)
{
  v7 = *a4;
  a4[1] = *a4;
  v8 = a4[2];
  if (v7 >= v8)
  {
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= 1)
    {
      v12 = 1;
    }

    if (v11 >= 0x333333333333333)
    {
      v13 = 0x666666666666666;
    }

    else
    {
      v13 = v12;
    }

    if (v13 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v9 = *a2;
  v10 = a2[1];
  *(v7 + 4) = *(a2 + 4);
  *v7 = v9;
  *(v7 + 1) = v10;
  v14 = 0;
  a4[1] = v7 + 40;
  v15 = a2[1];
  v33 = *a2;
  v34 = v15;
  v35 = *(a2 + 4);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  while (1)
  {
    v16 = v30;
    if (0xCCCCCCCCCCCCCCCDLL * ((v31 - v30) >> 3) > 1)
    {
      break;
    }

    v17 = (v33 - *v33);
    v18 = *v17;
    if (v18 < 9)
    {
      v19 = 0;
    }

    else
    {
      v19 = v17[4];
      if (v17[4])
      {
        v19 = *(v33 + v19);
      }
    }

    v14 += v19;
    if (v14 > *a3 || v18 <= 0x2E)
    {
      goto LABEL_31;
    }

    v20 = v17[23];
    if ((!v17[23] || *(v33 + v20) != 23) && (v18 < 0x9B || (v21 = v17[77]) == 0 || (*(v33 + v21) & 4) == 0))
    {
      if (!v20)
      {
        goto LABEL_31;
      }

      v22 = *(v33 + v20);
      v23 = v22 > 0x2A;
      v24 = (1 << v22) & 0x50426810004;
      if (v23 || v24 == 0)
      {
        goto LABEL_31;
      }
    }

    sub_740664((a1 + 7480), &v33, &v30);
    v26 = sub_709188(v30, v31);
    v16 = v30;
    v27 = v31;
    if (v26 != v31)
    {
      v27 = v26;
      v31 = v26;
    }

    if (v30 == v27)
    {
LABEL_31:
      a4[1] = *a4;
      break;
    }

    v28 = *v30;
    v29 = *(v30 + 1);
    v35 = *(v30 + 4);
    v33 = v28;
    v34 = v29;
    sub_69B1E0(a4, &v33);
  }

  if (v16)
  {
    v31 = v16;
    operator delete(v16);
  }
}

void sub_6FF0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6FF0E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = 0;
  a5[1] = *a5;
  __p = 0;
  v29 = 0;
  v30 = 0;
  v10 = *(a2 + 16);
  v25 = *a2;
  v26 = v10;
  v27 = *(a2 + 32);
  while (v9 < *a4)
  {
    v11 = (v25 - *v25);
    if (*v11 >= 0x2Fu)
    {
      v12 = v11[23];
      if (v12)
      {
        v13 = *(v25 + v12);
        v14 = v13 > 0x36;
        v15 = (1 << v13) & 0x44000000000008;
        if (!v14 && v15 != 0)
        {
          break;
        }
      }
    }

    sub_740664((a1 + 7480), &v25, &__p);
    if (__p == v29)
    {
      break;
    }

    v18 = *__p;
    v17 = *(__p + 1);
    v27 = *(__p + 4);
    v25 = v18;
    v26 = v17;
    v19 = (v18 - *v18);
    if (*v19 >= 9u && (v20 = v19[4]) != 0)
    {
      v21 = *(v18 + v20);
      v22 = HIDWORD(v27);
      v23 = *(a3 + 32);
      if (v27 != v23)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v21 = 0;
      v22 = HIDWORD(v27);
      v23 = *(a3 + 32);
      if (v27 != v23)
      {
        goto LABEL_3;
      }
    }

    if ((v22 & 0xFFFFFF) == (HIDWORD(v23) & 0xFFFFFF))
    {
      v24 = __p;
      if (!__p)
      {
        return;
      }

      goto LABEL_20;
    }

LABEL_3:
    v9 += v21;
    sub_69B1E0(a5, &v25);
  }

  a5[1] = *a5;
  v24 = __p;
  if (__p)
  {
LABEL_20:
    v29 = v24;
    operator delete(v24);
  }
}

void sub_6FF270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6FF28C(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = sub_4D1F50(a2, a3);
  v7 = a3 + 1;
  v8 = sub_4D1F50(a2, v7);
  v9 = (*v6 - **v6);
  if (*v9 >= 0x2Fu && (v10 = v9[23]) != 0 && (v11 = *(*v6 + v10) - 2, v11 < 0x29) && ((0x14109A04001uLL >> v11) & 1) != 0 || (v12 = (*v8 - **v8), *v12 < 0x2Fu) || (v13 = v12[23]) == 0 || ((v14 = *(*v8 + v13), v15 = v14 > 0x2A, v16 = (1 << v14) & 0x50426810004, !v15) ? (v17 = v16 == 0) : (v17 = 1), v17))
  {
    v20 = 0;
  }

  else
  {
    __p = 0;
    v46 = 0;
    v47 = 0;
    v18 = sub_4D1DC0(a2);
    if (v7 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v7;
    }

    if (v7 >= v18)
    {
LABEL_39:
      v20 = 0;
    }

    else
    {
      v20 = 1;
      while (1)
      {
        v22 = sub_4D1F50(a2, v7);
        v23 = *a1;
        v24 = *(v22 + 32);
        v25 = *(v22 + 36);
        v26 = ((v25 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v25 << 32) | v24;
        v27 = sub_2B51D8(*a1, ((v25 & 0x20000000u) << 19) | (v25 << 32) & 0xFFFFFFFFFFFFLL | v24 & 0xFFFFFFFFFFFFLL);
        if (*(v23 + 7772) == 1)
        {
          v28 = sub_30C50C(v23 + 3896, v24, 0);
          v29 = &v28[-*v28];
          if (*v29 < 5u)
          {
            v30 = 0;
          }

          else
          {
            v30 = *(v29 + 2);
            if (v30)
            {
              v30 += &v28[*&v28[v30]];
            }
          }

          v31 = (v30 + 4 * v25 + 4 + *(v30 + 4 * v25 + 4));
        }

        else
        {
          v31 = 0;
        }

        v32 = sub_31D7E8(v23, v26 & 0xFFFFFFFFFFFFLL, 1);
        v44[0] = v27;
        v44[1] = v31;
        v44[2] = v32;
        v44[3] = v33;
        v44[4] = (v26 ^ 0x1000000000000);
        sub_31B8F4(*a1, v44, &__p);
        v35 = (v44[0] - *v44[0]);
        if (*v35 < 0x2Fu)
        {
          break;
        }

        v36 = v35[23];
        if (!v36)
        {
          break;
        }

        v37 = *(v44[0] + v36);
        if (v37 > 0x2A || ((1 << v37) & 0x50426810004) == 0)
        {
          v20 |= v37 == 0;
          v43 = __p;
          if (__p)
          {
            goto LABEL_41;
          }

          return v20 & 1;
        }

        v39 = sub_716AD8((a1 + 179), v44, &__p, -1, v34);
        if (++v7 < sub_4D1DC0(a2))
        {
          if (v39 == -1 || (v40 = *(sub_6B8D68(&__p, v39) + 32), v41 = sub_4D1F50(a2, v7), *(v41 + 32) != v40) || (v42 = *(v41 + 36), WORD2(v40) != v42) || ((v42 >> 29) & 1 ^ BYTE6(v40)) != 1)
          {
            v20 = 0;
          }
        }

        if (v19 == v7)
        {
          goto LABEL_39;
        }
      }
    }

    v43 = __p;
    if (__p)
    {
LABEL_41:
      v46 = v43;
      operator delete(v43);
    }
  }

  return v20 & 1;
}

void sub_6FF588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6FF5B0(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 728) != 1)
  {
    return 0;
  }

  if (sub_7008AC(a1, a2, a3, a4))
  {
    return 1;
  }

  v10 = sub_4D1F50(a2, a3);
  v11 = *a1;
  v13 = *(v10 + 32);
  v12 = *(v10 + 36);
  v243 = v10;
  v14 = ((v12 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v12 << 32) | v13;
  v15 = sub_2B51D8(*a1, ((v12 & 0x20000000u) << 19) | (v12 << 32) & 0xFFFFFFFFFFFFLL | v13 & 0xFFFFFFFFFFFFLL);
  if (*(v11 + 7772) == 1)
  {
    v16 = sub_30C50C(v11 + 3896, v13, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = v18 + 4 * v12 + 4 + *(v18 + 4 * v12 + 4);
  }

  else
  {
    v19 = 0;
  }

  v244 = a4;
  v264 = v15;
  v265 = v19;
  v266 = sub_31D7E8(v11, v14 & 0xFFFFFFFFFFFFLL, 1);
  v267 = v20;
  v268 = v14 ^ 0x1000000000000;
  sub_4D0568();
  v22 = v21;
  v23 = a2;
  v25 = v24;
  sub_4D0568();
  v252 = v26;
  v249 = v27;
  sub_4D0560();
  v245 = v29 + a3;
  v247 = v28;
  v254 = v23;
  sub_4D0560();
  v31 = v30;
  v251 = 0;
  v239 = a3;
  v33 = v32 + a3 + 1;
  while (1)
  {
    v34 = v33;
    sub_4D0568();
    v37 = v35;
    v38 = v36;
    if (v31)
    {
      v39 = sub_4D1DC0(v31);
      v40 = v39;
      if (v37)
      {
        v41 = v34 < v39;
        v42 = sub_4D1DC0(v37);
        if (v38 < v42 && v41)
        {
          v44 = sub_4D1F50(v31, v34);
          if (v44 == sub_4D1F50(v37, v38))
          {
            goto LABEL_75;
          }
        }

        else if (v34 < v40 == v38 < v42)
        {
          goto LABEL_75;
        }
      }

      else if (v34 >= v39)
      {
        goto LABEL_75;
      }
    }

    else if (!v35 || v36 >= sub_4D1DC0(v35))
    {
      goto LABEL_75;
    }

    v45 = sub_4D1F50(v31, v34);
    v46 = (*v45 - **v45);
    if (*v46 >= 0x2Fu)
    {
      v47 = v46[23];
      if (v47)
      {
        v48 = *(*v45 + v47);
        v49 = v48 > 0x36;
        v50 = (1 << v48) & 0x44000000000008;
        if (!v49 && v50 != 0)
        {
          return 0;
        }
      }
    }

    v52 = *a1;
    v53 = sub_4D1F50(v31, v34);
    v55 = *(v53 + 32);
    v54 = *(v53 + 36);
    v56 = ((v54 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v54 << 32) | v55;
    v57 = sub_2B51D8(v52, ((v54 & 0x20000000u) << 19) | (v54 << 32) & 0xFFFFFFFFFFFFLL | v55 & 0xFFFFFFFFFFFFLL);
    if (*(v52 + 7772) == 1)
    {
      v58 = sub_30C50C(v52 + 3896, v55, 0);
      v59 = &v58[-*v58];
      if (*v59 < 5u)
      {
        v60 = 0;
      }

      else
      {
        v60 = *(v59 + 2);
        if (v60)
        {
          v60 += &v58[*&v58[v60]];
        }
      }

      v61 = v60 + 4 * v54 + 4 + *(v60 + 4 * v54 + 4);
    }

    else
    {
      v61 = 0;
    }

    v62 = sub_31D7E8(v52, v56 & 0xFFFFFFFFFFFFLL, 1);
    *&v269 = v57;
    *(&v269 + 1) = v61;
    *&v270 = v62;
    *(&v270 + 1) = v63;
    v271 = v56 ^ 0x1000000000000;
    v64 = sub_4D1F50(v31, v34);
    v65 = *a1;
    v66 = *(v64 + 32);
    v67 = v66 | (*(v64 + 36) << 32);
    v68 = sub_2B51D8(*a1, v67);
    if (*(v65 + 7772) == 1)
    {
      sub_30C50C(v65 + 3896, v66, 0);
    }

    sub_31D7E8(v65, v67, 1);
    v69 = (v68 - *v68);
    if (*v69 >= 0x2Fu && (v70 = v69[23]) != 0 && *(v68 + v70) == 14)
    {
      v71 = 1;
      if (!v251)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v71 = sub_718368(a1 + 1432, &v264, &v269);
      if (!v251)
      {
LABEL_47:
        v251 = sub_718368(a1 + 1432, &v264, &v269);
        goto LABEL_50;
      }
    }

    v251 = 1;
LABEL_50:
    sub_4D0568();
    v73 = v72;
    v75 = v74;
    if (v22)
    {
      v76 = v25 < sub_4D1DC0(v22);
      if (!v73)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v76 = 0;
      if (!v72)
      {
LABEL_58:
        v78 = 0;
        goto LABEL_59;
      }
    }

    v77 = sub_4D1DC0(v73);
    v78 = v75 < v77;
    if (v75 < v77 && v76)
    {
      v80 = sub_4D1F50(v22, v25);
      v81 = v80 == sub_4D1F50(v73, v75);
      goto LABEL_60;
    }

LABEL_59:
    v81 = v76 ^ v78 ^ 1;
LABEL_60:
    if ((v81 & v71) != 0)
    {
      v22 = v31;
      v25 = v34;
    }

    sub_4D0568();
    v83 = v82;
    v85 = v84;
    if (v252)
    {
      v86 = v249 < sub_4D1DC0(v252);
      if (!v83)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v86 = 0;
      if (!v82)
      {
LABEL_71:
        v88 = 0;
        goto LABEL_72;
      }
    }

    v87 = sub_4D1DC0(v83);
    v88 = v85 < v87;
    if (v85 < v87 && v86)
    {
      v90 = sub_4D1F50(v252, v249);
      if (v90 != sub_4D1F50(v83, v85) || v71)
      {
        goto LABEL_12;
      }

      goto LABEL_73;
    }

LABEL_72:
    if ((v86 ^ v88 | v71))
    {
      goto LABEL_12;
    }

LABEL_73:
    v91 = sub_4D1F50(v31, v34);
    if (!sub_6AD28C(a1 + 3680, v91))
    {
      break;
    }

LABEL_12:
    v33 = v34 + 1;
    v245 = v34;
    v247 = v31;
  }

  v252 = v31;
  v249 = v34;
LABEL_75:
  sub_4D0568();
  v94 = v92;
  v95 = v93;
  if (v22)
  {
    v96 = sub_4D1DC0(v22);
    v97 = v96;
    if (v94)
    {
      v98 = v25 < v96;
      v99 = sub_4D1DC0(v94);
      if (v95 < v99 && v98)
      {
        v101 = sub_4D1F50(v22, v25);
        if (v101 == sub_4D1F50(v94, v95))
        {
          goto LABEL_122;
        }
      }

      else if (v25 < v97 == v95 < v99)
      {
        goto LABEL_122;
      }

LABEL_89:
      sub_4D0568();
      v104 = v102;
      v105 = v103;
      if (v252)
      {
        v106 = sub_4D1DC0(v252);
        v107 = v106;
        if (v104)
        {
          v108 = v249 < v106;
          v109 = sub_4D1DC0(v104);
          if (v105 < v109 && v108)
          {
            v111 = sub_4D1F50(v252, v249);
            if (v111 != sub_4D1F50(v104, v105))
            {
              goto LABEL_122;
            }
          }

          else if (v249 < v107 != v105 < v109)
          {
            goto LABEL_122;
          }

LABEL_103:
          v112 = *a1;
          v114 = *(v243 + 8);
          v113 = *(v243 + 9);
          v115 = ((v113 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v113 << 32) | v114;
          v116 = sub_2B51D8(*a1, ((v113 & 0x20000000u) << 19) | (v113 << 32) & 0xFFFFFFFFFFFFLL | v114 & 0xFFFFFFFFFFFFLL);
          if (*(v112 + 7772) == 1)
          {
            v117 = sub_30C50C(v112 + 3896, v114, 0);
            v118 = &v117[-*v117];
            if (*v118 < 5u)
            {
              v119 = 0;
            }

            else
            {
              v119 = *(v118 + 2);
              if (v119)
              {
                v119 += &v117[*&v117[v119]];
              }
            }

            v120 = v119 + 4 * v113 + 4 + *(v119 + 4 * v113 + 4);
          }

          else
          {
            v120 = 0;
          }

          v121 = sub_31D7E8(v112, v115 & 0xFFFFFFFFFFFFLL, 1);
          *&v269 = v116;
          *(&v269 + 1) = v120;
          *&v270 = v121;
          *(&v270 + 1) = v122;
          v271 = v115 ^ 0x1000000000000;
          v123 = sub_4D1F50(v247, v245);
          v124 = *a1;
          v126 = *(v123 + 32);
          v125 = *(v123 + 36);
          v127 = ((v125 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v125 << 32) | v126;
          v128 = sub_2B51D8(*a1, ((v125 & 0x20000000u) << 19) | (v125 << 32) & 0xFFFFFFFFFFFFLL | v126 & 0xFFFFFFFFFFFFLL);
          if (*(v124 + 7772) == 1)
          {
            v129 = sub_30C50C(v124 + 3896, v126, 0);
            v130 = &v129[-*v129];
            if (*v130 < 5u)
            {
              v131 = 0;
            }

            else
            {
              v131 = *(v130 + 2);
              if (v131)
              {
                v131 += &v129[*&v129[v131]];
              }
            }

            v132 = v131 + 4 * v125 + 4 + *(v131 + 4 * v125 + 4);
          }

          else
          {
            v132 = 0;
          }

          *&v261 = v128;
          *(&v261 + 1) = v132;
          *&v262 = sub_31D7E8(v124, v127 & 0xFFFFFFFFFFFFLL, 1);
          *(&v262 + 1) = v133;
          v263 = v127 ^ 0x1000000000000;
          v134 = sub_394BD0();
          v135 = v252;
          if (v134)
          {
            v135 = v247;
          }

          v252 = v135;
          v136 = v249;
          if (v134)
          {
            v136 = v245;
          }

          v249 = v136;
        }

        else if (v249 >= v106)
        {
          goto LABEL_103;
        }
      }

      else if (!v102 || v103 >= sub_4D1DC0(v102))
      {
        goto LABEL_103;
      }
    }

    else if (v25 < v96)
    {
      goto LABEL_89;
    }
  }

  else if (v92 && v93 < sub_4D1DC0(v92))
  {
    goto LABEL_89;
  }

LABEL_122:
  sub_4D0568();
  v139 = v137;
  v140 = v138;
  if (!v22)
  {
    if (v137 && v138 < sub_4D1DC0(v137))
    {
      goto LABEL_136;
    }

    return 0;
  }

  v141 = sub_4D1DC0(v22);
  v142 = v141;
  if (!v139)
  {
    if (v25 < v141)
    {
      goto LABEL_136;
    }

    return 0;
  }

  v143 = v25 < v141;
  v144 = sub_4D1DC0(v139);
  if (v140 < v144 && v143)
  {
    v146 = sub_4D1F50(v22, v25);
    if (v146 == sub_4D1F50(v139, v140))
    {
      return 0;
    }
  }

  else if (v25 < v142 == v140 < v144)
  {
    return 0;
  }

LABEL_136:
  sub_4D0568();
  v148 = v147;
  v150 = v149;
  if (v252)
  {
    v151 = v249 < sub_4D1DC0(v252);
    if (v148)
    {
      goto LABEL_138;
    }

LABEL_145:
    v153 = 0;
    goto LABEL_146;
  }

  v151 = 0;
  if (!v147)
  {
    goto LABEL_145;
  }

LABEL_138:
  v152 = sub_4D1DC0(v148);
  v153 = v150 < v152;
  if (v150 < v152)
  {
    v154 = v151;
  }

  else
  {
    v154 = 0;
  }

  if (v154 == 1)
  {
    v155 = sub_4D1F50(v252, v249);
    v156 = sub_4D1F50(v148, v150);
    v9 = 0;
    if (v155 == v156)
    {
      return v9;
    }

LABEL_147:
    if (v25 < v249)
    {
      sub_4D0560();
      v158 = v157;
      v159 = sub_4D1F50(v252, v249);
      v160 = *v159;
      v161 = *(v159 + 16);
      v263 = *(v159 + 32);
      v261 = v160;
      v262 = v161;
      v162 = *a1;
      v163 = sub_4D1F50(v252, v249);
      sub_6D6D8C(v162, (((*(v163 + 36) & 0x20000000) << 19) | (*(v163 + 36) << 32) | *(v163 + 32)) ^ 0x1000000000000, 1, 1, &v258);
      v256 = 0;
      v257 = 0;
      v164 = sub_4D1DC0(v254);
      v241 = v249 - v158;
      v165 = v239;
      if (v239 <= v164)
      {
        v166 = v164;
      }

      else
      {
        v166 = v239;
      }

      v240 = v166;
      if (v164 > v239)
      {
        v167 = 0;
        v246 = 0;
        LOBYTE(v168) = 0;
        v169 = 0.0;
        v170 = v254;
        while (1)
        {
          v171 = sub_4D1F50(v170, v165);
          v173 = *(v244 + 8);
          v172 = *(v244 + 16);
          v248 = ((*(v171 + 9) >> 29) & 1) == 0;
          v250 = *(v171 + 9);
          v253 = *(v171 + 8);
          if (v173 >= v172)
          {
            v175 = *v244;
            v176 = v173 - *v244;
            v177 = (v176 >> 3) + 1;
            if (v177 >> 61)
            {
              sub_1794();
            }

            v178 = v172 - v175;
            if (v178 >> 2 > v177)
            {
              v177 = v178 >> 2;
            }

            if (v178 >= 0x7FFFFFFFFFFFFFF8)
            {
              v179 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v179 = v177;
            }

            if (v179)
            {
              if (!(v179 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v180 = (8 * (v176 >> 3));
            *v180 = (v250 << 32) | (v248 << 48) | v253;
            v174 = v180 + 1;
            memcpy(0, v175, v176);
            *v244 = 0;
            *(v244 + 8) = v174;
            *(v244 + 16) = 0;
            if (v175)
            {
              operator delete(v175);
            }
          }

          else
          {
            *v173 = (*(v171 + 9) << 32) | ((((*(v171 + 9) >> 29) & 1) == 0) << 48) | *(v171 + 8);
            v174 = v173 + 1;
          }

          *(v244 + 8) = v174;
          if (v168)
          {
            v168 = 1;
          }

          else
          {
            v181 = *a1;
            v183 = *(v171 + 8);
            v182 = *(v171 + 9);
            v184 = ((v182 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v182 << 32) | v183;
            v185 = sub_2B51D8(*a1, ((v182 & 0x20000000u) << 19) | (v182 << 32) & 0xFFFFFFFFFFFFLL | v183 & 0xFFFFFFFFFFFFLL);
            if (*(v181 + 7772) == 1)
            {
              v186 = sub_30C50C(v181 + 3896, v183, 0);
              v187 = &v186[-*v186];
              if (*v187 < 5u)
              {
                v188 = 0;
              }

              else
              {
                v188 = *(v187 + 2);
                if (v188)
                {
                  v188 += &v186[*&v186[v188]];
                }
              }

              v189 = v188 + 4 * v182 + 4 + *(v188 + 4 * v182 + 4);
            }

            else
            {
              v189 = 0;
            }

            v190 = sub_31D7E8(v181, v184 & 0xFFFFFFFFFFFFLL, 1);
            *&v269 = v185;
            *(&v269 + 1) = v189;
            *&v270 = v190;
            *(&v270 + 1) = v191;
            v271 = v184 ^ 0x1000000000000;
            v168 = sub_716E70(a1 + 1432, &v269) ^ 1;
          }

          if (v241 == v165)
          {
            goto LABEL_233;
          }

          v192 = sub_4D1DC0(v254);
          v193 = 0.0;
          v170 = v254;
          if (v165 < v192 - 1)
          {
            break;
          }

LABEL_201:
          v207 = fabs(v193);
          if (v207 >= v169)
          {
            v169 = v207;
          }

          v208 = (*v243 - **v243);
          v209 = *v208;
          if ((*(v243 + 39) & 0x20) != 0)
          {
            if (v209 >= 0x4B)
            {
              v210 = v208[37];
              if (v210)
              {
LABEL_209:
                v211 = *(*v243 + v210);
                v212 = *v171;
                v213 = (*v171 - **v171);
                v214 = *v213;
                if ((*(v171 + 39) & 0x20) == 0)
                {
                  goto LABEL_214;
                }

                goto LABEL_210;
              }
            }
          }

          else if (v209 >= 0x49)
          {
            v210 = v208[36];
            if (v210)
            {
              goto LABEL_209;
            }
          }

          v211 = -1;
          v212 = *v171;
          v213 = (*v171 - **v171);
          v214 = *v213;
          if ((*(v171 + 39) & 0x20) == 0)
          {
LABEL_214:
            if (v214 < 0x4B)
            {
              goto LABEL_217;
            }

            v215 = v213[37];
            if (!v215)
            {
              goto LABEL_217;
            }

            goto LABEL_216;
          }

LABEL_210:
          if (v214 < 0x49 || (v215 = v213[36]) == 0)
          {
LABEL_217:
            v216 = 0xFFFF;
            goto LABEL_218;
          }

LABEL_216:
          v216 = *(v212 + v215);
LABEL_218:
          v217 = v211 + 18000;
          v218 = v211 - 18000;
          if ((v217 >> 5) < 0x465u)
          {
            v218 = v217;
          }

          v219 = v216 - v218;
          if (v219 > 18000)
          {
            v219 -= 36000;
          }

          if (v219 < -17999)
          {
            v219 += 36000;
          }

          v220 = 0x4059000000000000;
          v221 = fabs(v219 / 100.0);
          v220.i16[0] = *(a1 + 760);
          if (v221 >= vmovl_s16(v220).i32[0])
          {
            v222 = sub_4D23F8(v170, v165, v221);
            v170 = v254;
          }

          else
          {
            v222 = 0;
          }

          v246 += v222;
          v257 = v246;
          if (v253 == v268 && v250 == WORD2(v268) && v248 == BYTE6(v268))
          {
            v256 = v167;
            if (v240 == ++v165)
            {
              goto LABEL_233;
            }
          }

          else
          {
            v223 = sub_4D23F8(v170, v165, v221);
            v170 = v254;
            v167 += v223;
            v256 = v167;
            if (v240 == ++v165)
            {
              goto LABEL_233;
            }
          }
        }

        v194 = sub_4D1F50(v254, v165 + 1);
        v195 = (*v171 - **v171);
        v196 = *v195;
        if ((*(v171 + 39) & 0x20) != 0)
        {
          v170 = v254;
          if (v196 >= 0x4B)
          {
            v197 = v195[37];
            if (v197)
            {
              goto LABEL_185;
            }
          }

LABEL_189:
          v198 = -1;
          v199 = *v194;
          v200 = (*v194 - **v194);
          v201 = *v200;
          if ((*(v194 + 39) & 0x20) == 0)
          {
            goto LABEL_190;
          }

LABEL_186:
          if (v201 < 0x49)
          {
            goto LABEL_193;
          }

          v202 = v200[36];
          if (!v202)
          {
            goto LABEL_193;
          }

LABEL_192:
          v203 = *&v199[v202];
        }

        else
        {
          v170 = v254;
          if (v196 < 0x49)
          {
            goto LABEL_189;
          }

          v197 = v195[36];
          if (!v197)
          {
            goto LABEL_189;
          }

LABEL_185:
          v198 = *(*v171 + v197);
          v199 = *v194;
          v200 = (*v194 - **v194);
          v201 = *v200;
          if ((*(v194 + 39) & 0x20) != 0)
          {
            goto LABEL_186;
          }

LABEL_190:
          if (v201 >= 0x4B)
          {
            v202 = v200[37];
            if (v202)
            {
              goto LABEL_192;
            }
          }

LABEL_193:
          v203 = 0xFFFF;
        }

        v204 = v198 + 18000;
        v205 = v198 - 18000;
        if ((v204 >> 5) < 0x465u)
        {
          v205 = v204;
        }

        v206 = v203 - v205;
        if (v206 > 18000)
        {
          v206 -= 36000;
        }

        if (v206 < -17999)
        {
          v206 += 36000;
        }

        v193 = v206 / 100.0;
        goto LABEL_201;
      }

      v168 = 0;
      v169 = 0.0;
LABEL_233:
      if (sub_700F28(a1, v243, &v261, v244, &v257, v169))
      {
        *(v244 + 24) = 3;
        v224 = *(sub_605E3C((a5 + 80), *(a5 + 104)) + 32);
        if (v260 == v224 && WORD2(v260) == WORD2(v224) && !((BYTE6(v260) != BYTE6(v224)) | v168 & 1))
        {
          sub_6FB318(a1, v254, v239, a5, v244, 1u);
          v225 = (v265 - *v265);
          v226 = 0.0;
          v227 = 0.0;
          if (*v225 >= 0x13u)
          {
            v228 = v225[9];
            if (v228)
            {
              LOWORD(v227) = *(v265 + v228);
              v227 = *&v227;
            }
          }

          v229 = (*(&v258 + 1) - **(&v258 + 1));
          if (*v229 >= 0x13u)
          {
            v230 = v229[9];
            if (v230)
            {
              LOWORD(v226) = *(*(&v258 + 1) + v230);
              v226 = *&v226;
            }
          }

          if (v227 >= v226)
          {
            v226 = v227;
          }

          LODWORD(v227) = *(a1 + 732);
          v231 = *(v244 + 24);
          if (v226 > *&v227)
          {
            v231 = 3;
          }

          *(v244 + 24) = v231;
          *(v244 + 232) = sub_6FC40C(a1, v244);
        }

        v269 = v258;
        v270 = v259;
        v271 = v260;
        v9 = 1;
        sub_704450((a1 + 144), &v269, v272, 1uLL);
        *(a1 + 168) = 0;
        *(a1 + 176) = 4;
        *(v244 + 224) = 1;
        return v9;
      }

      if (!sub_92C754(a1, &v264, &v258))
      {
        sub_6D86EC(v244);
        return 0;
      }

      sub_6D6D8C(*a1, v260 & 0xFFFFFFFFFFFFFFLL, 1, 1, &v269);
      if (sub_7102E4(a1 + 1432, &v264, &v269))
      {
        v232 = v244;
        *(v244 + 24) = 4;
        goto LABEL_252;
      }

      if (((v251 | v168) & 1) == 0 && (v236 = *(sub_605E3C((a5 + 80), *(a5 + 104)) + 32), v260 == v236) && WORD2(v260) == WORD2(v236) && BYTE6(v260) == BYTE6(v236))
      {
        sub_6FB318(a1, v254, v239, a5, v244, 1u);
        v237 = sub_6FC40C(a1, v244);
        v232 = v244;
        *(v244 + 232) = v237;
LABEL_252:
        v233 = v239;
        v234 = v254;
      }

      else
      {
        v269 = v258;
        v270 = v259;
        v271 = v260;
        sub_6E38E4(__p, &v269, 1uLL);
        v234 = v254;
        v238 = sub_6DB978(a1, v254, &v264, __p, 0, 0xFFFFFFFFFFFFFFFFLL);
        v232 = v244;
        *(v244 + 24) = v238;
        v233 = v239;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
          v233 = v239;
          v232 = v244;
        }
      }

      *(a1 + 176) = 4;
      *(v244 + 224) = sub_92C464(a1, v234, v233, v251 + v233, v241, v232);
      return 1;
    }
  }

  else
  {
LABEL_146:
    v9 = 0;
    if (v151 != v153)
    {
      goto LABEL_147;
    }
  }

  return v9;
}

void sub_700884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7008AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 867) != 1)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  v8 = sub_4D1F50(a2, a3);
  v9 = *v7;
  v10 = sub_31DDCC(*v7, (((*(v8 + 36) & 0x20000000) << 19) | (*(v8 + 36) << 32) | *(v8 + 32)) ^ 0x1000000000000);
  sub_40C59C(v9, v10, &v82);
  v11 = v84;
  if ((v84 & 0x80u) != 0)
  {
    v11 = v83;
  }

  if (!v11)
  {
    result = 0;
    if ((v84 & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_97;
  }

  v12 = (((*(v8 + 36) & 0x20000000) << 19) | (*(v8 + 36) << 32) | *(v8 + 32)) ^ 0x1000000000000;
  v14 = *(a4 + 8);
  v13 = *(a4 + 16);
  v76 = v8;
  if (v14 >= v13)
  {
    v17 = *a4;
    v18 = v14 - *a4;
    v19 = v18 >> 3;
    v20 = (v18 >> 3) + 1;
    if (v20 >> 61)
    {
      sub_1794();
    }

    v21 = v6;
    v22 = v13 - v17;
    if (v22 >> 2 > v20)
    {
      v20 = v22 >> 2;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      v23 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v20;
    }

    if (v23)
    {
      if (!(v23 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v19) = v12;
    v15 = 8 * v19 + 8;
    memcpy(0, v17, v18);
    *a4 = 0;
    *(a4 + 8) = v15;
    *(a4 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }

    v6 = v21;
  }

  else
  {
    *v14 = v12;
    v15 = (v14 + 1);
  }

  *(a4 + 8) = v15;
  v24 = sub_4D1DC0(v6);
  v77 = a3 + 1;
  if (a3 + 1 > v24)
  {
    v25 = a3 + 1;
  }

  else
  {
    v25 = v24;
  }

  v79 = v25;
  if (a3 + 1 < v24)
  {
    v26 = 0;
    v27 = a3 + 1;
    v78 = v6;
    while (1)
    {
      v28 = v7;
      v29 = sub_4D1F50(v6, v27);
      v30 = (((*(v29 + 36) & 0x20000000) << 19) | (*(v29 + 36) << 32) | *(v29 + 32)) ^ 0x1000000000000;
      v32 = *(a4 + 8);
      v31 = *(a4 + 16);
      if (v32 >= v31)
      {
        v34 = *a4;
        v35 = v32 - *a4;
        v36 = v35 >> 3;
        v37 = (v35 >> 3) + 1;
        if (v37 >> 61)
        {
          sub_1794();
        }

        v38 = v31 - v34;
        if (v38 >> 2 > v37)
        {
          v37 = v38 >> 2;
        }

        if (v38 >= 0x7FFFFFFFFFFFFFF8)
        {
          v39 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v39 = v37;
        }

        if (v39)
        {
          if (!(v39 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v36) = v30;
        v33 = 8 * v36 + 8;
        memcpy(0, v34, v35);
        *a4 = 0;
        *(a4 + 8) = v33;
        *(a4 + 16) = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v32 = v30;
        v33 = (v32 + 1);
      }

      *(a4 + 8) = v33;
      v7 = v28;
      v40 = *v28;
      v41 = *(v29 + 32);
      v42 = v41 | (*(v29 + 36) << 32);
      v43 = sub_2B51D8(*v28, v42);
      if (*(v40 + 7772) == 1)
      {
        sub_30C50C(v40 + 3896, v41, 0);
      }

      sub_31D7E8(v40, v42, 1);
      if (v26 > v28[94])
      {
        goto LABEL_95;
      }

      v45 = (v43 - *v43);
      if (*v45 < 0x2Fu)
      {
        break;
      }

      v46 = v45[23];
      if (!v46)
      {
        break;
      }

      v47 = *(v43 + v46);
      v48 = v47 > 0x2A;
      v49 = (1 << v47) & 0x50400004000;
      if (v48 || v49 == 0)
      {
        break;
      }

      v6 = v78;
      v26 += sub_4D23F8(v78, v27++, v44);
      if (v79 == v27)
      {
        goto LABEL_95;
      }
    }

    v51 = *v28;
    v52 = sub_31DDCC(*v28, (((*(v29 + 36) & 0x20000000) << 19) | (*(v29 + 36) << 32) | *(v29 + 32)) ^ 0x1000000000000);
    sub_40C59C(v51, v52, __p);
    v53 = v81;
    if ((v81 & 0x80u) == 0)
    {
      v54 = v81;
    }

    else
    {
      v54 = __p[1];
    }

    v55 = v84;
    if ((v84 & 0x80u) != 0)
    {
      v55 = v83;
    }

    if (v54 != v55 || ((v81 & 0x80u) == 0 ? (v56 = __p) : (v56 = __p[0]), (v84 & 0x80u) == 0 ? (v57 = &v82) : (v57 = v82), memcmp(v56, v57, v54)))
    {
      v27 = -1;
    }

    if (v53 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27 == -1 || v27 <= v77)
    {
      goto LABEL_95;
    }

    v58 = sub_4D1F50(v78, v27);
    v59 = *(v76 + 9);
    v60 = (*v76 - **v76);
    v61 = *v60;
    if ((v59 & 0x20000000) != 0)
    {
      if (v61 < 0x4B)
      {
        goto LABEL_76;
      }

      v62 = v60[37];
      if (!v62)
      {
        goto LABEL_76;
      }
    }

    else if (v61 < 0x49 || (v62 = v60[36]) == 0)
    {
LABEL_76:
      v63 = -1;
LABEL_77:
      v64 = *(v58 + 9);
      v65 = (*v58 - **v58);
      v66 = *v65;
      if ((v64 & 0x20000000) != 0)
      {
        if (v66 < 0x49)
        {
          goto LABEL_84;
        }

        v67 = v65[36];
        if (!v67)
        {
          goto LABEL_84;
        }
      }

      else if (v66 < 0x4B || (v67 = v65[37]) == 0)
      {
LABEL_84:
        v68 = 0xFFFF;
LABEL_85:
        v69 = v63 + 18000;
        v70 = v63 - 18000;
        if ((v69 >> 5) < 0x465u)
        {
          v70 = v69;
        }

        v71 = v68 - v70;
        if (v71 > 18000)
        {
          v71 -= 36000;
        }

        if (v71 < -17999)
        {
          v71 += 36000;
        }

        if (((v64 ^ v59) & 0x80000000) == 0 && ((v64 | v59) & 0x40000000) == 0)
        {
          v72 = 0x4059000000000000;
          v72.i16[0] = *(v28 + 380);
          if (fabs(v71 / 100.0) < vmovl_s16(v72).i32[0])
          {
            v73 = (a4 + 24);
            result = 1;
            goto LABEL_96;
          }
        }

        goto LABEL_95;
      }

      v68 = *(*v58 + v67);
      goto LABEL_85;
    }

    v63 = *(*v76 + v62);
    goto LABEL_77;
  }

LABEL_95:
  result = 0;
  *(a4 + 8) = *a4;
  *(a4 + 48) = *(a4 + 40);
  v74.f64[0] = NAN;
  v74.f64[1] = NAN;
  *(a4 + 72) = v74;
  *(a4 + 88) = v74;
  *(a4 + 104) = v74;
  *(a4 + 120) = -1;
  *(a4 + 136) = -1;
  *(a4 + 160) = vnegq_f64(v74);
  *(a4 + 184) = 98;
  *(a4 + 24) = 0;
  *(a4 + 64) = 0;
  *(a4 + 128) = 0;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  *(a4 + 176) = 0;
  *(a4 + 192) = 0;
  *(a4 + 200) = 0;
  *(a4 + 208) = xmmword_229B660;
  *(a4 + 232) = 0;
  *(a4 + 245) = 0;
  v73 = (a4 + 224);
LABEL_96:
  *v73 = 0;
  if (v84 < 0)
  {
LABEL_97:
    v75 = result;
    operator delete(v82);
    return v75;
  }

  return result;
}

void sub_700EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_700F28(void **a1, uint64_t a2, uint64_t a3, unint64_t **a4, void *a5, double a6)
{
  v12 = *(a2 + 32);
  v11 = *(a2 + 36);
  v13 = ((v11 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v11 << 32) | v12;
  v14 = *a1;
  v15 = sub_2B51D8(*a1, ((v11 & 0x20000000u) << 19) | (v11 << 32) & 0xFFFFFFFFFFFFLL | v12 & 0xFFFFFFFFFFFFLL);
  if (*(v14 + 7772) == 1)
  {
    v16 = sub_30C50C(v14 + 3896, v12, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = (v18 + 4 * v11 + 4 + *(v18 + 4 * v11 + 4));
  }

  else
  {
    v19 = 0;
  }

  v54[0] = v15;
  v54[1] = v19;
  v54[2] = sub_31D7E8(v14, v13 & 0xFFFFFFFFFFFFLL, 1);
  v54[3] = v20;
  v54[4] = (v13 ^ 0x1000000000000);
  v22 = *(a3 + 32);
  v21 = *(a3 + 36);
  v23 = ((v21 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v21 << 32) | v22;
  v24 = *a1;
  v25 = sub_2B51D8(*a1, ((v21 & 0x20000000u) << 19) | (v21 << 32) & 0xFFFFFFFFFFFFLL | v22 & 0xFFFFFFFFFFFFLL);
  if (*(v24 + 7772) == 1)
  {
    v26 = sub_30C50C(v24 + 3896, v22, 0);
    v27 = &v26[-*v26];
    if (*v27 < 5u)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(v27 + 2);
      if (v28)
      {
        v28 += &v26[*&v26[v28]];
      }
    }

    v29 = (v28 + 4 * v21 + 4 + *(v28 + 4 * v21 + 4));
  }

  else
  {
    v29 = 0;
  }

  v53[0] = v25;
  v53[1] = v29;
  v53[2] = sub_31D7E8(v24, v23 & 0xFFFFFFFFFFFFLL, 1);
  v53[3] = v30;
  v53[4] = (v23 ^ 0x1000000000000);
  if (*(a1 + 1172) == 1 && sub_31B1CC(*a1, a4, a1[94], *(a1 + 27)))
  {
    v31 = 1;
    return v31 & 1;
  }

  v32 = sub_71843C((a1 + 179), a4, 1);
  v33 = sub_31ACAC(*a1, v54, v53) * 100.0;
  if (v33 >= 0.0)
  {
    v34 = v33;
    if (v33 >= 4.50359963e15)
    {
      goto LABEL_24;
    }

    v35 = (v33 + v33) + 1;
  }

  else
  {
    v34 = v33;
    if (v33 <= -4.50359963e15)
    {
      goto LABEL_24;
    }

    v35 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
  }

  v34 = (v35 >> 1);
LABEL_24:
  if (v34 < 9.22337204e18)
  {
    if (v33 >= 0.0)
    {
      if (v33 < 4.50359963e15)
      {
        v36 = (v33 + v33) + 1;
        goto LABEL_31;
      }
    }

    else if (v33 > -4.50359963e15)
    {
      v36 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
LABEL_31:
      v33 = (v36 >> 1);
    }

    v37 = v33;
    goto LABEL_33;
  }

  v37 = 0x7FFFFFFFFFFFFFFELL;
LABEL_33:
  v52 = v37;
  if (!sub_92C418(a1, v54, v53))
  {
    goto LABEL_41;
  }

  if (*(a1 + 1024) == 1)
  {
    v38 = *(a3 + 36);
    if ((v38 & 0x40000000) == 0)
    {
      v39 = *(a2 + 36);
      if ((v39 & 0x40000000) == 0 && ((v38 ^ v39) & 0x80000000) == 0)
      {
        goto LABEL_41;
      }
    }
  }

  v40 = sub_70DE94((a1 + 179), v54, v53);
  v41 = sub_70E2E0((a1 + 179), v54, v53);
  v31 = 0;
  v42 = *(a1 + 25);
  if (v42 <= a6 && fabs(v41) < v42)
  {
    if (fabs(v40) < *(a1 + 124))
    {
LABEL_41:
      v31 = 0;
      return v31 & 1;
    }

    v44 = *a1;
    v45 = *(a2 + 32);
    v46 = ((*(a2 + 36) & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (*(a2 + 36) << 32) | v45;
    sub_2B51D8(*a1, ((*(a2 + 36) & 0x20000000u) << 19) | (*(a2 + 36) << 32) & 0xFFFFFFFFFFFFLL | v45 & 0xFFFFFFFFFFFFLL);
    if (*(v44 + 7772) == 1)
    {
      sub_30C50C(v44 + 3896, v45, 0);
    }

    sub_31D7E8(v44, v46 & 0xFFFFFFFFFFFFLL, 1);
    v47 = *a1;
    v48 = *(a3 + 32);
    v49 = ((*(a3 + 36) & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (*(a3 + 36) << 32) | v48;
    sub_2B51D8(*a1, ((*(a3 + 36) & 0x20000000u) << 19) | (*(a3 + 36) << 32) & 0xFFFFFFFFFFFFLL | v48 & 0xFFFFFFFFFFFFLL);
    if (*(v47 + 7772) == 1)
    {
      sub_30C50C(v47 + 3896, v48, 0);
    }

    v31 = 1;
    sub_31D7E8(v47, v49 & 0xFFFFFFFFFFFFLL, 1);
    v50 = sub_394BD0();
    if (*a5 < a1[127])
    {
      v31 = (v52 > a1[125]) | v50 | v32;
    }
  }

  return v31 & 1;
}

BOOL sub_70144C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_4D1F50(a2, a3);
  v10 = sub_4D1F50(a2, a4);
  v11 = *(a5 + 24);
  if (v11 == 4)
  {
    return 1;
  }

  if (*(a1 + 1024) == 1)
  {
    v13 = *(v10 + 36);
    switch(v11)
    {
      case 1u:
      case 0x14u:
      case 0x1Bu:
      case 0x1Du:
      case 0x21u:
      case 0x3Cu:
      case 0x3Eu:
      case 0x41u:
        if (*(v9 + 36) >> 30 == 2 || (v13 & 0xC0000000) == 0x80000000)
        {
          return 1;
        }

        if (v11 <= 0x3F && ((1 << v11) & 0xA000000450200004) != 0)
        {
          goto LABEL_11;
        }

        break;
      case 2u:
      case 0x15u:
      case 0x1Cu:
      case 0x1Eu:
      case 0x22u:
      case 0x3Du:
      case 0x3Fu:
      case 0x42u:
LABEL_11:
        if (*(v9 + 36) >> 30)
        {
          v15 = v13 >> 30 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          break;
        }

        return 1;
      default:
        break;
    }
  }

  v16 = *a1;
  v17 = *(v9 + 32);
  v18 = *(v9 + 36);
  v19 = ((v18 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v18 << 32) | v17;
  v20 = sub_2B51D8(*a1, ((v18 & 0x20000000u) << 19) | (v18 << 32) & 0xFFFFFFFFFFFFLL | v17 & 0xFFFFFFFFFFFFLL);
  if (*(v16 + 7772) == 1)
  {
    v21 = sub_30C50C(v16 + 3896, v17, 0);
    v22 = &v21[-*v21];
    if (*v22 < 5u)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v22 + 2);
      if (v23)
      {
        v23 += &v21[*&v21[v23]];
      }
    }

    v24 = v23 + 4 * v18 + 4 + *(v23 + 4 * v18 + 4);
  }

  else
  {
    v24 = 0;
  }

  v35[0] = v20;
  v35[1] = v24;
  v35[2] = sub_31D7E8(v16, v19 & 0xFFFFFFFFFFFFLL, 1);
  v35[3] = v25;
  v35[4] = v19 ^ 0x1000000000000;
  v34[0] = a1;
  v34[1] = v35;
  v26 = sub_7017D8(a5, v34);
  result = 1;
  if (!v26)
  {
    v27 = *a5;
    v28 = *(a5 + 8);
    if (*a5 == v28)
    {
      return 0;
    }

    else
    {
      while (1)
      {
        v29 = *v27;
        v30 = *a1;
        v31 = sub_2B51D8(*a1, *v27 & 0xFFFFFFFFFFFFLL);
        if (*(v30 + 7772) == 1)
        {
          sub_30C50C(v30 + 3896, v29, 0);
        }

        sub_31D7E8(v30, v29 & 0xFFFFFFFFFFFFLL, 1);
        v32 = (v31 - *v31);
        if (*v32 >= 0x2Fu)
        {
          v33 = v32[23];
          if (v33)
          {
            if (*(v31 + v33) == 14)
            {
              break;
            }
          }
        }

        if (++v27 == v28)
        {
          return 0;
        }
      }

      return sub_71843C(a1 + 1432, a5, 0);
    }
  }

  return result;
}

BOOL sub_7017D8(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *a1 + 8;
  do
  {
    v6 = *(v5 - 8);
    v7 = *v4;
    v8 = sub_2B51D8(*v4, v6 & 0xFFFFFFFFFFFFLL);
    if (*(v7 + 7772) == 1)
    {
      v9 = sub_30C50C(v7 + 3896, v6, 0);
      v10 = &v9[-*v9];
      if (*v10 < 5u)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(v10 + 2);
        if (v11)
        {
          v11 += &v9[*&v9[v11]];
        }
      }

      v12 = (v11 + ((v6 >> 30) & 0x3FFFC) + 4 + *(v11 + ((v6 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_31D7E8(v7, v6 & 0xFFFFFFFFFFFFLL, 1);
    v17[0] = v8;
    v17[1] = v12;
    v17[2] = v13;
    v17[3] = v14;
    v17[4] = v6;
    result = sub_718368((v4 + 179), v3, v17);
    if (result)
    {
      break;
    }

    v16 = v5 == v2;
    v5 += 8;
  }

  while (!v16);
  return result;
}

unint64_t sub_7018FC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0x1000000000000;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0x1000000000000;
  *(a5 + 88) = *(a5 + 80);
  *(a5 + 104) = -1;
  *(a5 + 112) = 0;
  v10 = sub_4D1F50(a2, a3);
  v11 = *a1;
  v12 = *(v10 + 32);
  v13 = *(v10 + 36);
  v14 = ((v13 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v13 << 32) | v12;
  v15 = sub_2B51D8(*a1, ((v13 & 0x20000000u) << 19) | (v13 << 32) & 0xFFFFFFFFFFFFLL | v12 & 0xFFFFFFFFFFFFLL);
  if (*(v11 + 7772) == 1)
  {
    v16 = sub_30C50C(v11 + 3896, v12, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = v18 + 4 * v13 + 4 + *(v18 + 4 * v13 + 4);
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_31D7E8(v11, v14 & 0xFFFFFFFFFFFFLL, 1);
  *a5 = v15;
  *(a5 + 8) = v19;
  *(a5 + 16) = v20;
  *(a5 + 24) = v21;
  *(a5 + 32) = v14 ^ 0x1000000000000;
  sub_743DA4(a1 + 935, a2, a3, v6, &v35);
  v22 = *(a5 + 80);
  if (v22)
  {
    *(a5 + 88) = v22;
    operator delete(v22);
  }

  v34 = *(&v35 + 1);
  *(a5 + 80) = v35;
  *(a5 + 96) = v36;
  v23 = a3 + 1;
  result = sub_4D1DC0(a2);
  if (a3 + 1 > result)
  {
    v25 = a3 + 1;
  }

  else
  {
    v25 = result;
  }

  if (v23 < result)
  {
    while (1)
    {
      result = sub_4D1F50(a2, v23);
      v27 = *(a5 + 80);
      v28 = *(a5 + 88);
      v26 = v27;
      if (v27 != v28)
      {
        v29 = *(result + 32);
        v30 = (v29 >> 61) & 1;
        v31 = HIDWORD(v29);
        v26 = *(a5 + 80);
        while (1)
        {
          v32 = *(v26 + 32);
          if (*(result + 32) == v32 && WORD2(*(v26 + 32)) == v31 && (v30 ^ BYTE6(v32)) == 1)
          {
            break;
          }

          v26 += 40;
          if (v26 == v28)
          {
            goto LABEL_16;
          }
        }
      }

      if (v26 != v28)
      {
        break;
      }

LABEL_16:
      if (++v23 == v25)
      {
        v26 = *(a5 + 88);
        break;
      }
    }
  }

  else
  {
    v26 = v34;
    v27 = *(a5 + 80);
  }

  *(a5 + 104) = 0xCCCCCCCCCCCCCCCDLL * ((v26 - v27) >> 3);
  return result;
}

uint64_t sub_701B44(uint64_t a1, uint64_t a2, int ***a3, uint64_t a4)
{
  v19 = fabs(sub_70E2E0(a1 + 1432, a2, a4)) <= *(a1 + 200);
  v8 = sub_31DDCC(*a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL);
  v9 = v8 > 0xFFFFFFFEFFFFFFFFLL || v8 == 0;
  if (v9 || ((v10 = sub_31DDCC(*a1, *(a4 + 32) & 0xFFFFFFFFFFFFFFLL), v10 <= 0xFFFFFFFEFFFFFFFFLL) ? (v11 = v10 == 0) : (v11 = 1), v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_31EE90(*a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, *(a4 + 32) & 0xFFFFFFFFFFFFFFLL);
  }

  v18 = v12;
  v14 = *a3;
  v13 = a3[1];
  v17[0] = a4;
  v17[1] = a2;
  v17[2] = a1;
  v17[3] = &v19;
  v17[4] = &v18;
  if (v14 == v13)
  {
    return 0;
  }

  v15 = 0;
  do
  {
    v15 += sub_705A2C(v17, v14);
    v14 += 5;
  }

  while (v14 != v13);
  return v15;
}

uint64_t sub_701C5C(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  sub_2B365C(*a1, a2, 0, (*a1 + 7800));
  v3 = *(v2 + 7800);
  v4 = *(v2 + 7808);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 0;
}

uint64_t sub_701DBC(uint64_t a1, void *a2, unint64_t a3, void *a4, unint64_t a5, uint64_t a6)
{
  if (*(a1 + 1076) != 1)
  {
    return 0;
  }

  v8 = a3;
  *(a6 + 24) = 0;
  *(a6 + 8) = *a6;
  *(a6 + 48) = *(a6 + 40);
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  *(a6 + 72) = v11;
  v83 = a6 + 72;
  *(a6 + 64) = 0;
  *(a6 + 88) = v11;
  *(a6 + 104) = v11;
  *(a6 + 120) = -1;
  *(a6 + 128) = 0;
  *(a6 + 136) = -1;
  *(a6 + 144) = 0;
  *(a6 + 152) = 0;
  *(a6 + 160) = vnegq_f64(v11);
  *(a6 + 176) = 0;
  *(a6 + 184) = 98;
  *(a6 + 192) = 0;
  v84 = (a6 + 192);
  *(a6 + 200) = 0;
  *(a6 + 208) = xmmword_229B660;
  *(a6 + 232) = 0;
  *(a6 + 245) = 0;
  *(a6 + 224) = 0;
  v12 = sub_4D1F50(a2, a3);
  v86 = a1;
  v13 = *a1;
  v15 = *(v12 + 32);
  v14 = *(v12 + 36);
  v16 = ((v14 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v14 << 32) | v15;
  v17 = sub_2B51D8(v13, ((v14 & 0x20000000u) << 19) | (v14 << 32) & 0xFFFFFFFFFFFFLL | v15 & 0xFFFFFFFFFFFFLL);
  v18 = 0;
  if (*(v13 + 7772) == 1)
  {
    v19 = sub_30C50C(v13 + 3896, v15, 0);
    v20 = &v19[-*v19];
    if (*v20 < 5u)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v20 + 2);
      if (v21)
      {
        v21 += &v19[*&v19[v21]];
      }
    }

    v18 = (v21 + 4 * v14 + 4 + *(v21 + 4 * v14 + 4));
  }

  v87[0] = v17;
  v87[1] = v18;
  v87[2] = sub_31D7E8(v13, ((v14 & 0x20000000u) << 19) | (v14 << 32) & 0xFFFFFFFFFFFFLL | v15 & 0xFFFFFFFFFFFFLL, 1);
  v87[3] = v22;
  v88 = v16 ^ 0x1000000000000;
  v23 = sub_605E3C(a4, a5);
  v24 = (v17 - *v17);
  v25 = *v24;
  if (v25 < 0x2F)
  {
    v30 = 0;
    v26 = v86;
    v31 = *v23;
    v32 = (*v23 - **v23);
    v33 = *v32;
    if (v33 >= 0x2F)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

  v26 = v86;
  if (!v24[23])
  {
    v30 = 0;
    v31 = *v23;
    v32 = (*v23 - **v23);
    v33 = *v32;
    if (v33 >= 0x2F)
    {
      goto LABEL_24;
    }

LABEL_55:
    if (!v30)
    {
      return 0;
    }

    goto LABEL_31;
  }

  v27 = *(v17 + v24[23]);
  v28 = v27 > 0x2B || ((1 << v27) & 0x80000001040) == 0;
  if (v28 || v25 >= 0x9B && (v29 = v24[77]) != 0 && (*(v17 + v29 + 2) & 0x20) != 0)
  {
    v30 = v27 == 44;
    v31 = *v23;
    v32 = (*v23 - **v23);
    v33 = *v32;
    if (v33 < 0x2F)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v30 = 1;
    v31 = *v23;
    v32 = (*v23 - **v23);
    v33 = *v32;
    if (v33 < 0x2F)
    {
      goto LABEL_55;
    }
  }

LABEL_24:
  if (!v32[23])
  {
    goto LABEL_55;
  }

  v34 = *(v31 + v32[23]);
  if (v34 <= 0x2B && ((1 << v34) & 0x80000001040) != 0 && (v33 < 0x9B || (v35 = v32[77]) == 0 || (*(v31 + v35 + 2) & 0x20) == 0))
  {
    if (!v30)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v30 == (v34 == 44))
  {
    return 0;
  }

LABEL_31:
  v81 = v16 ^ 0x1000000000000;
  v82 = v23;
  v36 = v23[4];
  v37 = sub_70E2E0(v26 + 1432, v87, v23);
  v38 = sub_4D1DC0(a2);
  if (v8 <= v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = v8;
  }

  if (v38 > v8)
  {
    while (1)
    {
      v41 = sub_4D1F50(a2, v8);
      v42 = *v26;
      v43 = *(v41 + 32);
      v44 = *(v41 + 36);
      v45 = ((v44 & 0x20000000) << 19) | (v44 << 32) | v43;
      sub_2B51D8(*v26, v45 & 0xFFFFFFFFFFFFLL);
      if (*(v42 + 7772) == 1)
      {
        sub_30C50C(v42 + 3896, v43, 0);
      }

      v46 = v45 ^ 0x1000000000000;
      sub_31D7E8(v42, v45 & 0xFFFFFFFFFFFFLL, 1);
      if (v43 == v36 && WORD2(v36) == v44 && HIWORD(v46) == BYTE6(v36))
      {
        break;
      }

      v48 = *(a6 + 8);
      v47 = *(a6 + 16);
      if (v48 < v47)
      {
        *v48 = v46;
        v40 = (v48 + 1);
      }

      else
      {
        v49 = *a6;
        v50 = v48 - *a6;
        v51 = v50 >> 3;
        v52 = (v50 >> 3) + 1;
        if (v52 >> 61)
        {
          goto LABEL_103;
        }

        v53 = v47 - v49;
        if (v53 >> 2 > v52)
        {
          v52 = v53 >> 2;
        }

        if (v53 >= 0x7FFFFFFFFFFFFFF8)
        {
          v54 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v54 = v52;
        }

        if (v54)
        {
          if (!(v54 >> 61))
          {
            operator new();
          }

          goto LABEL_104;
        }

        *(8 * v51) = v46;
        v40 = 8 * v51 + 8;
        memcpy(0, v49, v50);
        *a6 = 0;
        *(a6 + 8) = v40;
        *(a6 + 16) = 0;
        if (v49)
        {
          operator delete(v49);
        }
      }

      v26 = v86;
      *(a6 + 8) = v40;
      if (v39 == ++v8)
      {
        goto LABEL_73;
      }
    }

    v56 = v36 & 0xFFFFFFFFFFFFFFLL;
    v58 = *(a6 + 8);
    v57 = *(a6 + 16);
    if (v58 >= v57)
    {
      v60 = *a6;
      v61 = v58 - *a6;
      v62 = v61 >> 3;
      v63 = (v61 >> 3) + 1;
      if (v63 >> 61)
      {
LABEL_103:
        sub_1794();
      }

      v64 = v57 - v60;
      if (v64 >> 2 > v63)
      {
        v63 = v64 >> 2;
      }

      if (v64 >= 0x7FFFFFFFFFFFFFF8)
      {
        v65 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v65 = v63;
      }

      if (v65)
      {
        if (!(v65 >> 61))
        {
          operator new();
        }

LABEL_104:
        sub_1808();
      }

      *(8 * v62) = v56;
      v59 = 8 * v62 + 8;
      memcpy(0, v60, v61);
      *a6 = 0;
      *(a6 + 8) = v59;
      *(a6 + 16) = 0;
      if (v60)
      {
        operator delete(v60);
      }
    }

    else
    {
      *v58 = v56;
      v59 = (v58 + 1);
    }

    v26 = v86;
    *(a6 + 8) = v59;
  }

LABEL_73:
  if (sub_71843C(v26 + 1432, a6, 1))
  {
    goto LABEL_102;
  }

  v66 = sub_31DDCC(*v26, v81);
  v67 = 0;
  if (v66 > 0xFFFFFFFEFFFFFFFFLL)
  {
    v68 = v82;
    v71 = v87[0];
    v72 = (v87[0] - *v87[0]);
    v73 = *v72;
    if (v73 < 0x2F)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v68 = v82;
    if (v66)
    {
      v69 = sub_31DDCC(*v26, v82[4] & 0xFFFFFFFFFFFFFFLL);
      v67 = v69 < 0xFFFFFFFF00000000 && v69 != 0;
    }

    v71 = v87[0];
    v72 = (v87[0] - *v87[0]);
    v73 = *v72;
    if (v73 < 0x2F)
    {
      goto LABEL_87;
    }
  }

  v74 = v72[23];
  if (v72[23] && *(v71 + v72[23]) != 32)
  {
    goto LABEL_92;
  }

LABEL_87:
  v75 = (*v68 - **v68);
  if (*v75 < 0x2Fu || (v76 = v75[23]) == 0 || *(*v68 + v76) != 44)
  {
    if (v73 < 0x2F)
    {
      goto LABEL_102;
    }

    v74 = v72[23];
    if (!v72[23])
    {
      goto LABEL_102;
    }

LABEL_92:
    if (*(v71 + v74) != 44)
    {
      goto LABEL_102;
    }

    v77 = (*v68 - **v68);
    if (*v77 >= 0x2Fu)
    {
      v78 = v77[23];
      if (v78)
      {
        if (*(*v68 + v78) != 32)
        {
          goto LABEL_102;
        }
      }
    }
  }

  v79 = fabs(v37);
  if (v67 && sub_31EE90(*v26, v88 & 0xFFFFFFFFFFFFFFLL, v68[4] & 0xFFFFFFFFFFFFFFLL) && v79 < *(v26 + 1080))
  {
    *(a6 + 24) = 3;
    *(a6 + 225) = 257;
    *(v26 + 176) = 5;
    return 1;
  }

  if (v79 < *(v26 + 184))
  {
    *(a6 + 24) = 3;
    result = 1;
    *(a6 + 226) = 1;
    *(v26 + 176) = 5;
    return result;
  }

LABEL_102:
  result = 0;
  *(a6 + 8) = *a6;
  *(a6 + 48) = *(a6 + 40);
  v80.f64[0] = NAN;
  v80.f64[1] = NAN;
  *v83 = v80;
  *(v83 + 16) = v80;
  *(v83 + 32) = v80;
  *(v83 + 48) = -1;
  *(a6 + 24) = 0;
  *(a6 + 64) = 0;
  *(a6 + 128) = 0;
  *(a6 + 136) = -1;
  *(a6 + 144) = 0;
  *(a6 + 152) = 0;
  *(a6 + 160) = vnegq_f64(v80);
  *(a6 + 176) = 0;
  *(a6 + 184) = 98;
  *v84 = 0;
  v84[1] = 0;
  *(a6 + 208) = xmmword_229B660;
  *(a6 + 232) = 0;
  *(a6 + 245) = 0;
  *(a6 + 224) = 0;
  return result;
}

void sub_70253C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_605E3C((a3 + 80), *(a3 + 104));
  v5 = *(v4 + 16);
  v6 = *v4;
  v7 = v5;
  v8 = *(v4 + 32);
  operator new();
}

void sub_702608(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_702624(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (0xEF7BDEF7BDEF7BDFLL * ((v3 - v2) >> 3) >= a2)
  {
    if (a2)
    {
      v8 = v2 + 248 * a2;
      v9.f64[0] = NAN;
      v9.f64[1] = NAN;
      v10 = vnegq_f64(v9);
      do
      {
        *(v2 + 32) = 0uLL;
        *(v2 + 48) = 0uLL;
        *(v2 + 240) = 0;
        *(v2 + 192) = 0uLL;
        *(v2 + 208) = 0uLL;
        *(v2 + 160) = 0uLL;
        *(v2 + 176) = 0uLL;
        *(v2 + 128) = 0uLL;
        *(v2 + 144) = 0uLL;
        *(v2 + 96) = 0uLL;
        *(v2 + 112) = 0uLL;
        *(v2 + 64) = 0uLL;
        *(v2 + 80) = 0uLL;
        *v2 = 0uLL;
        *(v2 + 16) = 0uLL;
        *(v2 + 32) = -1;
        *(v2 + 40) = 0;
        *(v2 + 48) = 0;
        *(v2 + 56) = 0;
        *(v2 + 64) = 0;
        *(v2 + 120) = -1;
        *(v2 + 104) = v9;
        *(v2 + 88) = v9;
        *(v2 + 72) = v9;
        *(v2 + 136) = -1;
        *(v2 + 160) = v10;
        *(v2 + 184) = 98;
        *(v2 + 192) = 0;
        *(v2 + 200) = 0;
        *(v2 + 208) = xmmword_229B660;
        *(v2 + 224) = 0uLL;
        *(v2 + 238) = 0;
        *(v2 + 232) = 0;
        v2 += 248;
      }

      while (v2 != v8);
      v2 = v8;
    }

    a1[1] = v2;
  }

  else
  {
    v4 = 0xEF7BDEF7BDEF7BDFLL * ((v2 - *a1) >> 3);
    v5 = v4 + a2;
    if (v4 + a2 > 0x108421084210842)
    {
      sub_1794();
    }

    v6 = 0xEF7BDEF7BDEF7BDFLL * ((v3 - *a1) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x84210842108421)
    {
      v7 = 0x108421084210842;
    }

    else
    {
      v7 = v5;
    }

    v23 = a1;
    if (v7)
    {
      if (v7 <= 0x108421084210842)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = 248 * v4;
    __p = 0;
    v20 = 248 * v4;
    v22 = 0;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v13 = vnegq_f64(v12);
    do
    {
      *(v11 + 32) = 0uLL;
      *(v11 + 48) = 0uLL;
      *(v11 + 240) = 0;
      *(v11 + 192) = 0uLL;
      *(v11 + 208) = 0uLL;
      *(v11 + 160) = 0uLL;
      *(v11 + 176) = 0uLL;
      *(v11 + 128) = 0uLL;
      *(v11 + 144) = 0uLL;
      *(v11 + 96) = 0uLL;
      *(v11 + 112) = 0uLL;
      *(v11 + 64) = 0uLL;
      *(v11 + 80) = 0uLL;
      *v11 = 0uLL;
      *(v11 + 16) = 0uLL;
      *(v11 + 32) = -1;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      *(v11 + 120) = -1;
      *(v11 + 104) = v12;
      *(v11 + 88) = v12;
      *(v11 + 72) = v12;
      *(v11 + 136) = -1;
      *(v11 + 160) = v13;
      *(v11 + 184) = 98;
      *(v11 + 192) = 0;
      *(v11 + 200) = 0;
      *(v11 + 208) = xmmword_229B660;
      *(v11 + 224) = 0uLL;
      *(v11 + 238) = 0;
      *(v11 + 232) = 0;
      v11 += 248;
    }

    while (v11 != 248 * v4 + 248 * a2);
    v21 = 248 * v4 + 248 * a2;
    sub_7028CC(a1, &__p);
    v14 = v20;
    while (1)
    {
      v15 = v21;
      if (v21 == v14)
      {
        break;
      }

      v16 = (v21 - 248);
      v21 -= 248;
      v17 = *(v15 - 208);
      if (v17)
      {
        *(v15 - 200) = v17;
        operator delete(v17);
      }

      v18 = *v16;
      if (*v16)
      {
        *(v15 - 240) = v18;
        operator delete(v18);
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_7028B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_702A44(va);
  _Unwind_Resume(a1);
}

void sub_7028CC(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(v8 + 24) = *(v7 + 24);
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 40) = 0;
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 56) = *(v7 + 56);
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v8 + 64) = *(v7 + 64);
      v9 = *(v7 + 72);
      v10 = *(v7 + 88);
      *(v8 + 104) = *(v7 + 104);
      *(v8 + 88) = v10;
      *(v8 + 72) = v9;
      v11 = *(v7 + 120);
      v12 = *(v7 + 136);
      v13 = *(v7 + 152);
      *(v8 + 168) = *(v7 + 168);
      *(v8 + 152) = v13;
      *(v8 + 136) = v12;
      *(v8 + 120) = v11;
      v14 = *(v7 + 184);
      v15 = *(v7 + 200);
      v16 = *(v7 + 216);
      *(v8 + 230) = *(v7 + 230);
      *(v8 + 216) = v16;
      *(v8 + 200) = v15;
      *(v8 + 184) = v14;
      v7 += 248;
      v8 += 248;
    }

    while (v7 != v4);
    do
    {
      v17 = *(v5 + 40);
      if (v17)
      {
        *(v5 + 48) = v17;
        operator delete(v17);
      }

      v18 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v18;
        operator delete(v18);
      }

      v5 += 248;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v19 = *a1;
  *a1 = v6;
  a1[1] = v19;
  a2[1] = v19;
  v20 = a1[1];
  a1[1] = a2[2];
  a2[2] = v20;
  v21 = a1[2];
  a1[2] = a2[3];
  a2[3] = v21;
  *a2 = a2[1];
}

uint64_t sub_702A44(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 248);
    *(a1 + 16) = i - 248;
    v5 = *(i - 208);
    if (v5)
    {
      *(i - 200) = v5;
      operator delete(v5);
    }

    v6 = *v4;
    if (*v4)
    {
      *(i - 240) = v6;
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_702ABC(unsigned int *a1, unsigned int *a2, uint64_t *a3, _DWORD *a4, uint64_t a5, int a6)
{
  v9.i64[0] = *a1;
  v9.i64[1] = HIDWORD(*a1);
  v10 = vcvtq_f64_u64(v9);
  v9.i64[0] = *a2;
  v9.i64[1] = HIDWORD(*a2);
  v11 = vsubq_f64(vcvtq_f64_u64(v9), v10);
  v12 = vmulq_f64(v11, v11);
  v13 = vaddvq_f64(v12);
  if (v13 == 0.0)
  {
    goto LABEL_5;
  }

  if (v13 <= 0.0)
  {
    v13 = -v13;
  }

  if (v13 < 2.22044605e-16)
  {
LABEL_5:
    v14 = 0.0;
  }

  else
  {
    v20.i64[0] = *a3;
    v20.i64[1] = HIDWORD(*a3);
    v21 = vmulq_f64(v11, vsubq_f64(vcvtq_f64_u64(v20), v10));
    *&v14 = *&vdivq_f64(vaddq_f64(v21, vdupq_laneq_s64(v21, 1)), vaddq_f64(v12, vdupq_laneq_s64(v12, 1)));
  }

  v15 = 1.0;
  if (v14 <= 1.0)
  {
    v15 = v14;
  }

  v16 = v14 < 0.0;
  v17 = 0.0;
  if (!v16)
  {
    v17 = v15;
  }

  *a4 = sub_6EFC0(a1, a2, v17);
  a4[2] = v19;
  if (!a6)
  {

    sub_314EC(a3, a4, v18);
  }
}

uint64_t sub_702C20(uint64_t *a1, uint64_t a2)
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

  v26 = a1;
  if (v5)
  {
    if (v5 <= 0x108421084210842)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 248 * v2;
  __p = 0;
  v23 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(v6 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v6 + 64) = *(a2 + 64);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(v6 + 104) = *(a2 + 104);
  *(v6 + 88) = v8;
  *(v6 + 72) = v7;
  v9 = *(a2 + 120);
  v10 = *(a2 + 136);
  v11 = *(a2 + 152);
  *(v6 + 168) = *(a2 + 168);
  *(v6 + 152) = v11;
  *(v6 + 136) = v10;
  *(v6 + 120) = v9;
  v12 = *(a2 + 184);
  v13 = *(a2 + 200);
  v14 = *(a2 + 216);
  *(v6 + 230) = *(a2 + 230);
  *(v6 + 216) = v14;
  *(v6 + 200) = v13;
  *(v6 + 184) = v12;
  v24 = 248 * v2 + 248;
  v25 = 0;
  sub_7028CC(a1, &__p);
  v15 = a1[1];
  v16 = v23;
  while (1)
  {
    v17 = v24;
    if (v24 == v16)
    {
      break;
    }

    v18 = (v24 - 248);
    v24 -= 248;
    v19 = *(v17 - 208);
    if (v19)
    {
      *(v17 - 200) = v19;
      operator delete(v19);
    }

    v20 = *v18;
    if (*v18)
    {
      *(v17 - 240) = v20;
      operator delete(v20);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v15;
}

void sub_702E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_702A44(va);
  _Unwind_Resume(a1);
}

char *sub_702E20(size_t *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = a1[1];
  v7 = a1[2];
  if (a5 > (v7 - v8) >> 2)
  {
    v9 = *a1;
    v10 = a5 + ((v8 - *a1) >> 2);
    if (v10 >> 62)
    {
      sub_1794();
    }

    v11 = v7 - v9;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    v31 = (__dst - v9);
    v32 = 4 * ((__dst - v9) >> 2);
    v33 = (v32 + 4 * a5);
    v34 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x3FFFFFFFFFFFFFFFuLL) >= 7 && (v31 - __src) >= 0x20)
    {
      v58 = v34 + 1;
      v59 = (v34 + 1) & 0x7FFFFFFFFFFFFFF8;
      v35 = (v32 + 4 * v59);
      v36 = &__src[4 * v59];
      v60 = __src + 16;
      v61 = (v32 + 16);
      v62 = v59;
      do
      {
        v63 = *v60;
        *(v61 - 1) = *(v60 - 1);
        *v61 = v63;
        v60 += 32;
        v61 += 2;
        v62 -= 8;
      }

      while (v62);
      if (v58 == v59)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v35 = v32;
      v36 = __src;
    }

    do
    {
      v37 = *v36;
      v36 += 4;
      *v35++ = v37;
    }

    while (v35 != v33);
LABEL_31:
    v38 = a1[1] - __dst;
    memcpy((v32 + 4 * a5), __dst, v38);
    v40 = v33 + v38;
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

  v13 = v8 - __dst;
  v14 = (v8 - __dst) >> 2;
  if (v14 >= a5)
  {
    v17 = 4 * a5;
    v18 = &__dst[4 * a5];
    v19 = (v8 - 4 * a5);
    if (v19 >= v8)
    {
      v23 = a1[1];
    }

    else
    {
      v20 = v19 + 1;
      if (v8 > (v19 + 1))
      {
        v20 = a1[1];
      }

      v21 = &v20[v17 / 4] + ~v8;
      v22 = v21 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v23 = a1[1];
      if (v22)
      {
        goto LABEL_74;
      }

      v24 = (v21 >> 2) + 1;
      v25 = 4 * (v24 & 0x7FFFFFFFFFFFFFF8);
      v19 = (v19 + v25);
      v23 = (v8 + v25);
      v26 = (v8 + 16);
      v27 = (v8 + 16 - v17);
      v28 = v24 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v29 = *v27;
        *(v26 - 1) = *(v27 - 1);
        *v26 = v29;
        v26 += 2;
        v27 += 2;
        v28 -= 8;
      }

      while (v28);
      if (v24 != (v24 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_74:
        do
        {
          v30 = *v19++;
          *v23++ = v30;
        }

        while (v19 < v8);
      }
    }

    a1[1] = v23;
    if (v8 != v18)
    {
      v52 = v8 - v18;
      v53 = (v8 - v52);
      v54 = __src;
      memmove(v53, __dst, v52 - 1);
      __src = v54;
    }

    v55 = v5;
    v56 = __src;
    v57 = v17 - 1;
    goto LABEL_68;
  }

  v15 = &__src[v13];
  if (&__src[v13] == a4)
  {
    v16 = a1[1];
  }

  else
  {
    v44 = &__src[v13];
    v45 = a4 - v15 - 4;
    if (v45 < 0x1C)
    {
      v16 = a1[1];
    }

    else
    {
      v16 = a1[1];
      if (v8 - v15 >= 0x20)
      {
        v46 = (v45 >> 2) + 1;
        v47 = 4 * (v46 & 0x7FFFFFFFFFFFFFF8);
        v44 = &v15[v47];
        v16 = v8 + v47;
        v48 = (v8 + 16);
        v49 = (v15 + 16);
        v50 = v46 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v51 = *v49;
          *(v48 - 1) = *(v49 - 1);
          *v48 = v51;
          v48 += 2;
          v49 += 2;
          v50 -= 8;
        }

        while (v50);
        if (v46 == (v46 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_50;
        }
      }
    }

    do
    {
      v64 = *v44;
      v44 += 4;
      *v16 = v64;
      v16 += 4;
    }

    while (v44 != a4);
  }

LABEL_50:
  a1[1] = v16;
  if (v14 >= 1)
  {
    v65 = a5;
    v66 = &__dst[4 * a5];
    v67 = (v16 - 4 * a5);
    v68 = __src;
    if (v67 >= v8)
    {
      v72 = v16;
    }

    else
    {
      v69 = v67 + 1;
      if (v8 > (v67 + 1))
      {
        v69 = v8;
      }

      v70 = &v69[v65] + ~v16;
      v71 = v70 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v72 = v16;
      if (v71)
      {
        goto LABEL_75;
      }

      v73 = (v70 >> 2) + 1;
      v74 = 4 * (v73 & 0x7FFFFFFFFFFFFFF8);
      v67 = (v67 + v74);
      v72 = (v16 + v74);
      v75 = (v16 + 16);
      v76 = (v16 + 16 - v65 * 4);
      v77 = v73 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v78 = *v76;
        *(v75 - 1) = *(v76 - 1);
        *v75 = v78;
        v75 += 2;
        v76 += 2;
        v77 -= 8;
      }

      while (v77);
      if (v73 != (v73 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_75:
        do
        {
          v79 = *v67++;
          *v72++ = v79;
        }

        while (v67 < v8);
      }
    }

    a1[1] = v72;
    if (v16 != v66)
    {
      memmove(v66, __dst, v16 - v66 - 1);
    }

    if (v8 != v5)
    {
      v57 = v13 - 1;
      v55 = v5;
      v56 = v68;
LABEL_68:
      memmove(v55, v56, v57);
    }
  }

  return v5;
}

unint64_t sub_703240(uint64_t **a1, int **a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *a2;
  v5 = sub_2B51D8(v3, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v3 + 7772) == 1)
  {
    v6 = sub_30C50C(v3 + 3896, v4, 0);
    v7 = &v6[-*v6];
    if (*v7 < 5u)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v7 + 2);
      if (v8)
      {
        v8 += &v6[*&v6[v8]];
      }
    }

    v9 = (v8 + ((v4 >> 30) & 0x3FFFC) + 4 + *(v8 + ((v4 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v9 = 0;
  }

  v15[0] = v5;
  v15[1] = v9;
  v15[2] = sub_31D7E8(v3, v4 & 0xFFFFFFFFFFFFLL, 1);
  v15[3] = v10;
  v15[4] = v4;
  v11 = (v5 - *v5);
  if (*v11 >= 0x2Fu && (v12 = v11[23]) != 0 && (v13 = *(v5 + v12) - 14, v13 < 0x1F) && ((0x54100001u >> v13) & 1) != 0)
  {
    return 1;
  }

  else
  {
    return sub_6AA260((v2 + 460), v15);
  }
}

BOOL sub_70337C(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  sub_320200(**a1, *a2, &v23);
  v5 = v23;
  if (v23 != v24)
  {
    v6 = 0;
    v7 = *(*(a1 + 8) + 32);
    v8 = v23;
    do
    {
      if (__PAIR64__(*(v8 + 4), *v8) == __PAIR64__(WORD2(v7), v7) && BYTE6(v7) == *(v8 + 6))
      {
        ++v6;
      }

      v8 += 8;
    }

    while (v8 != v24);
    if (v6)
    {
      v9 = *(*(a1 + 16) + 32);
      if (__PAIR64__(*(v24 - 2), *(v24 - 2)) == __PAIR64__(WORD2(v9), v9) && *(v24 - 2) == BYTE6(v9))
      {
        v10 = sub_30CC30(*v4, *a2);
        v11 = (v10 - *v10);
        if (*v11 < 0xBu || (v12 = v11[5]) == 0)
        {
          v17 = 0;
          goto LABEL_27;
        }

        v13 = (v10 + v12 + *(v10 + v12));
        v21 = 0;
        v22 = 0;
        __p = 0;
        sub_7035EC(&__p, *v13);
        v26 = (v13 + 1);
        v25 = &v13[*v13 + 1];
        sub_703864(&v26, &v25, &__p, sub_31095C);
        v15 = __p;
        v14 = v21;
        if (__p == v21)
        {
          v17 = 0;
          v18 = __p;
          if (!v21)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v16 = __p;
          while (*(v16 + 48) != 1)
          {
            v16 += 16;
            if (v16 == v21)
            {
              v16 = v21;
              break;
            }
          }

          v17 = v16 != v21;
          if (!__p)
          {
LABEL_27:
            v5 = v23;
            if (!v23)
            {
              return v17;
            }

            goto LABEL_22;
          }

          do
          {
            v14 = sub_31104C(v14 - 16);
          }

          while (v14 != v15);
          v18 = __p;
        }

        v21 = v15;
        operator delete(v18);
        goto LABEL_27;
      }
    }
  }

  v17 = 0;
  if (v23)
  {
LABEL_22:
    v24 = v5;
    operator delete(v5);
  }

  return v17;
}

void sub_703564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  sub_703590(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ****sub_703590(void ****a1)
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
        v3 = sub_31104C(v3 - 16);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_7035EC(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 7)
  {
    if (!(a2 >> 57))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_7036B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_703810(va);
  _Unwind_Resume(a1);
}

void ***sub_7036C4(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9 = 0;
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *v9 = *v8;
      *(v9 + 2) = v8[2];
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *(v9 + 3) = 0;
      *(v9 + 4) = 0;
      *(v9 + 5) = 0;
      *(v9 + 24) = *(v8 + 3);
      *(v9 + 5) = v8[5];
      v8[4] = 0;
      v8[5] = 0;
      v8[3] = 0;
      *(v9 + 24) = *(v8 + 24);
      *(v9 + 8) = 0;
      *(v9 + 9) = 0;
      *(v9 + 7) = 0;
      *(v9 + 56) = *(v8 + 7);
      *(v9 + 9) = v8[9];
      v8[7] = 0;
      v8[8] = 0;
      v8[9] = 0;
      *(v9 + 10) = 0;
      *(v9 + 11) = 0;
      *(v9 + 12) = 0;
      *(v9 + 5) = *(v8 + 5);
      *(v9 + 12) = v8[12];
      v8[10] = 0;
      v8[11] = 0;
      v8[12] = 0;
      *(v9 + 13) = 0;
      *(v9 + 14) = 0;
      *(v9 + 15) = 0;
      *(v9 + 104) = *(v8 + 13);
      *(v9 + 15) = v8[15];
      v8[13] = 0;
      v8[14] = 0;
      v8[15] = 0;
      v8 += 16;
      v9 += 128;
    }

    while (v8 != v5);
    do
    {
      result = sub_31104C(result) + 16;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v10 = *a1;
  *a1 = v7;
  *(a1 + 8) = v10;
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t sub_703810(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    sub_31104C((i - 128));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_703864(char **a1, unsigned int **a2, void *a3, void (*a4)(__int128 *__return_ptr, char *))
{
  if (*a1 != *a2)
  {
    a4(&v12, &(*a1)[**a1]);
    while (1)
    {
      v10 = a3[1];
      if (v10 < a3[2])
      {
        *(v10 + 16) = 0;
        *(v10 + 24) = 0;
        *v10 = 0;
        *(v10 + 8) = 0;
        *v10 = v12;
        *(v10 + 16) = v13;
        v12 = 0uLL;
        v13 = 0;
        *(v10 + 32) = 0;
        *(v10 + 40) = 0;
        *(v10 + 24) = v14;
        *(v10 + 40) = v15;
        v14 = 0uLL;
        v15 = 0;
        *(v10 + 48) = v16;
        *(v10 + 56) = 0;
        *(v10 + 64) = 0;
        *(v10 + 72) = 0;
        *(v10 + 80) = 0;
        *(v10 + 56) = v17;
        *(v10 + 72) = v18;
        v17 = 0uLL;
        *(v10 + 88) = 0;
        *(v10 + 96) = 0;
        *(v10 + 80) = v19;
        *(v10 + 96) = v20;
        *(v10 + 104) = 0;
        v18 = 0;
        v19 = 0uLL;
        v20 = 0;
        *(v10 + 112) = 0;
        *(v10 + 120) = 0;
        *(v10 + 104) = v21;
        *(v10 + 120) = v22;
        v21 = 0uLL;
        v22 = 0;
        v8 = v10 + 128;
        a3[1] = v10 + 128;
      }

      else
      {
        v8 = sub_7039C8(a3, &v12);
      }

      a3[1] = v8;
      sub_31104C(&v12);
      v9 = (*a1 + 4);
      *a1 = v9;
      if (v9 == *a2)
      {
        break;
      }

      a4(&v12, v9 + *v9);
    }
  }

  return a3;
}

uint64_t sub_7039C8(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 6 > v3)
  {
    v3 = v5 >> 6;
  }

  if (v5 >= 0x7FFFFFFFFFFFFF80)
  {
    v6 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    if (!(v6 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = v2 << 7;
  __p = 0;
  v13 = v7;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 96) = *(a2 + 96);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(v7 + 104) = *(a2 + 104);
  *(v7 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v14 = (v2 << 7) + 128;
  v15 = 0;
  sub_7036C4(a1, &__p);
  v8 = a1[1];
  v10 = v13;
  for (i = v14; v14 != v10; i = v14)
  {
    v14 = i - 128;
    sub_31104C((i - 128));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_703B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_703810(va);
  _Unwind_Resume(a1);
}

char *sub_703B54(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = __src;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if ((0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 3)) < a5)
  {
    v10 = *a1;
    v11 = a5 - 0x3333333333333333 * ((v9 - *a1) >> 3);
    if (v11 > 0x666666666666666)
    {
      sub_1794();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v10) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x333333333333333)
    {
      v13 = 0x666666666666666;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v33 = 8 * ((__dst - v10) >> 3);
    v34 = 40 * a5;
    v35 = v33 + 40 * a5;
    v36 = v33;
    do
    {
      v37 = *v6;
      v38 = *(v6 + 1);
      *(v36 + 32) = *(v6 + 4);
      *v36 = v37;
      *(v36 + 16) = v38;
      v36 += 40;
      v6 += 40;
      v34 -= 40;
    }

    while (v34);
    v39 = *(a1 + 8) - __dst;
    memcpy((v33 + 40 * a5), __dst, v39);
    v40 = v35 + v39;
    *(a1 + 8) = v5;
    v41 = *a1;
    v42 = &v5[-*a1];
    v43 = v33 - v42;
    memcpy((v33 - v42), *a1, v42);
    *a1 = v43;
    *(a1 + 8) = v40;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return v33;
  }

  v14 = v9 - __dst;
  if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - __dst) >> 3)) >= a5)
  {
    v14 = 40 * a5;
    v28 = &__dst[40 * a5];
    v29 = v9 - 40 * a5;
    for (i = *(a1 + 8); v29 < v9; i += 40)
    {
      v31 = *v29;
      v32 = *(v29 + 16);
      *(i + 32) = *(v29 + 32);
      *i = v31;
      *(i + 16) = v32;
      v29 += 40;
    }

    *(a1 + 8) = i;
    if (v9 == v28)
    {
      goto LABEL_27;
    }

    v26 = v9 - v28;
    v27 = &__dst[40 * a5];
    goto LABEL_26;
  }

  v15 = a4 - &__src[v14];
  if (a4 != &__src[v14])
  {
    v16 = a5;
    v17 = a4;
    memmove(*(a1 + 8), &__src[v14], a4 - &__src[v14]);
    a4 = v17;
    a5 = v16;
  }

  v18 = (v9 + v15);
  *(a1 + 8) = v9 + v15;
  if (v14 >= 1)
  {
    v19 = &v5[40 * a5];
    v20 = v9 + v15;
    if (&v18[-40 * a5] < v9)
    {
      v21 = &v5[a4];
      v22 = &v5[a4 + -40 * a5];
      do
      {
        v23 = v21 - v6;
        v24 = *(v22 - v6);
        v25 = *(v22 - v6 + 16);
        *(v23 + 32) = *(v22 - v6 + 32);
        *v23 = v24;
        *(v23 + 16) = v25;
        v22 += 40;
        v21 += 40;
      }

      while (v22 - v6 < v9);
      v20 = v21 - v6;
    }

    *(a1 + 8) = v20;
    if (v18 == v19)
    {
      goto LABEL_27;
    }

    v26 = v18 - v19;
    v27 = &v5[40 * a5];
LABEL_26:
    memmove(v27, v5, v26);
LABEL_27:
    memmove(v5, v6, v14);
  }

  return v5;
}

char *sub_703E1C(uint64_t a1, char *__src, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v5 = __src;
  if (a5 >= 1)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 2)) >= a5)
    {
      v15 = v10 - __src;
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v10 - __src) >> 2);
      if (v16 >= a5)
      {
        v31 = &__src[12 * a5];
        v32 = &v10[-12 * a5];
        for (i = *(a1 + 8); v32 < v10; v32 += 12)
        {
          v34 = *v32;
          *(i + 8) = *(v32 + 2);
          *i = v34;
          i += 12;
        }

        *(a1 + 8) = i;
        if (v10 != v31)
        {
          memmove(&__src[12 * a5], __src, v10 - v31);
        }

        v35 = a3[1];
        v60 = *a3;
        v61 = v35;
        v36 = a3[3];
        v62 = a3[2];
        v63 = v36;
        *v5 = sub_318DA8(&v60);
        *(v5 + 2) = v37;
        if (a5 != 1)
        {
          v38 = v5 + 20;
          v39 = a5 + 1;
          do
          {
            if (BYTE8(v63))
            {
              sub_31EA68(&v60);
            }

            else
            {
              sub_31E948(&v60);
            }

            *(v38 - 1) = sub_318DA8(&v60);
            *v38 = v40;
            v38 += 3;
            --v39;
          }

          while (v39 > 2);
        }
      }

      else
      {
        v18 = a3[1];
        v60 = *a3;
        v61 = v18;
        v19 = a3[3];
        v62 = a3[2];
        v63 = v19;
        v20 = v10;
        if (v15 >= 1)
        {
          v21 = v16 + 1;
          do
          {
            while (BYTE8(v63))
            {
              sub_31EA68(&v60);
              if (--v21 <= 1)
              {
                goto LABEL_18;
              }
            }

            sub_31E948(&v60);
            --v21;
          }

          while (v21 > 1);
LABEL_18:
          v20 = *(a1 + 8);
        }

        v56 = v60;
        v57 = v61;
        v58 = v62;
        v59 = v63;
        v22 = *(a4 + 48);
        v23 = *(a4 + 52);
        if (v63 == __PAIR64__(v23, v22))
        {
          v24 = v20;
        }

        else
        {
          v24 = v20;
          do
          {
            *v24 = sub_318DA8(&v60);
            *(v24 + 2) = v55;
            if (BYTE8(v63))
            {
              sub_31EA68(&v60);
            }

            else
            {
              sub_31E948(&v60);
            }

            v24 += 12;
          }

          while (v63 != v22 || DWORD1(v63) != v23);
        }

        *(a1 + 8) = v24;
        if (v15 >= 1)
        {
          v25 = &v5[12 * a5];
          v26 = &v24[-12 * a5];
          for (j = v24; v26 < v10; v26 += 12)
          {
            v28 = *v26;
            *(j + 2) = *(v26 + 8);
            *j = v28;
            j += 12;
          }

          *(a1 + 8) = j;
          if (v24 != v25)
          {
            memmove(&v5[12 * a5], v5, v24 - v25);
          }

          v29 = a3[1];
          v65[0] = *a3;
          v65[1] = v29;
          v30 = a3[3];
          v65[2] = a3[2];
          v65[3] = v30;
          v64[0] = v56;
          v64[1] = v57;
          v64[2] = v58;
          v64[3] = v59;
          sub_704264(v65, v64, v5, &v60);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * (&v10[-*a1] >> 2);
      if (v12 > 0x1555555555555555)
      {
        sub_1794();
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 2);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0xAAAAAAAAAAAAAAALL)
      {
        v14 = 0x1555555555555555;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v41 = 4 * ((__src - v11) >> 2);
      v42 = v41;
      v43 = a3[1];
      v60 = *a3;
      v61 = v43;
      v44 = a3[3];
      v62 = a3[2];
      v63 = v44;
      v45 = (v41 + 12 * a5);
      do
      {
        v46 = v41;
        *v41 = sub_318DA8(&v60);
        *(v41 + 8) = v47;
        if (BYTE8(v63))
        {
          sub_31EA68(&v60);
        }

        else
        {
          sub_31E948(&v60);
        }

        v41 += 12;
      }

      while ((v46 + 12) != v45);
      v48 = *(a1 + 8) - v5;
      memcpy(v45, v5, v48);
      v49 = &v45[v48];
      *(a1 + 8) = v5;
      v50 = *a1;
      v51 = &v5[-*a1];
      v52 = v42 - v51;
      memcpy((v42 - v51), *a1, v51);
      *a1 = v52;
      *(a1 + 8) = v49;
      *(a1 + 16) = 0;
      if (v50)
      {
        operator delete(v50);
      }

      return v42;
    }
  }

  return v5;
}

void sub_704240(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

double sub_704264@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 48);
  v6 = *(a2 + 52);
  v7 = a1[1];
  v29 = *a1;
  v30 = v7;
  v8 = a1[3];
  v31 = a1[2];
  v32 = v8;
  v9 = DWORD1(v8);
  if (v8 != v5 || DWORD1(v8) != v6)
  {
    while (1)
    {
      v13 = *(&v30 + 1) + 4 * v9;
      v14 = *(v13 + 4);
      v15 = *(v13 + 6);
      v16 = sub_57A90(DWORD2(v31));
      v17 = DWORD2(v31) & ~(-1 << (v16 & 0xFE));
      v18 = sub_581D8(v17);
      v19 = sub_581D8(v17 >> 1);
      v20 = (v30 - *v30);
      v21 = *v20;
      if (v21 < 0xD)
      {
        break;
      }

      if (!v20[6])
      {
        goto LABEL_11;
      }

      v22 = *(v30 + v20[6] + *(v30 + v20[6]) + 4 * DWORD1(v32) + 4);
LABEL_18:
      v26 = 1 << -(v16 >> 1);
      if (v16 < 2)
      {
        v26 = -2;
      }

      LODWORD(v27) = v26 * v19 + 4 * v15;
      if (v27 >= 0xFFFFFFFE)
      {
        v27 = 4294967294;
      }

      else
      {
        v27 = v27;
      }

      *a3 = (v26 * v18 + 4 * v14) | (v27 << 32);
      *(a3 + 8) = v22;
      if (BYTE8(v32))
      {
        sub_31EA68(&v29);
        a3 += 12;
        v9 = DWORD1(v32);
        if (v32 == v5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_31E948(&v29);
        a3 += 12;
        v9 = DWORD1(v32);
        if (v32 == v5)
        {
LABEL_6:
          if (v9 == v6)
          {
            goto LABEL_3;
          }
        }
      }
    }

    if (v21 >= 0xB)
    {
LABEL_11:
      if (v20[5])
      {
        v23 = *(v30 + v20[5] + *(v30 + v20[5]) + 2 * DWORD1(v32) + 4);
        if (v23 != 0xFFFF)
        {
          v24 = v20[4];
          if (v24)
          {
            v25 = *(v30 + v24);
          }

          else
          {
            v25 = 0;
          }

          v22 = HIDWORD(v31) + v23 + v25;
          goto LABEL_18;
        }
      }
    }

    v22 = 0x7FFFFFFF;
    goto LABEL_18;
  }

LABEL_3:
  v10 = v30;
  *a4 = v29;
  *(a4 + 16) = v10;
  result = *&v31;
  v12 = v32;
  *(a4 + 32) = v31;
  *(a4 + 48) = v12;
  *(a4 + 64) = a3;
  return result;
}

char *sub_704450(char **a1, char *a2, char *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - result) >> 3) < a4)
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

    if (a4 <= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x333333333333333)
      {
        v11 = 0x666666666666666;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - result) >> 3) >= a4)
  {
    v19 = a3 - a2;
    if (v19)
    {
      v20 = result;
      memmove(result, a2, v19);
      result = v20;
    }

    a1[1] = &result[v19];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        v18 = *(v14 + 1);
        *(v16 + 4) = *(v14 + 4);
        *v16 = v17;
        *(v16 + 1) = v18;
        v14 += 40;
        v16 += 40;
        v15 += 40;
      }

      while (v14 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

uint64_t sub_704640(int ***a1, int **a2)
{
  v2 = a1[2];
  v3 = *a1;
  v4 = (*a1)[4];
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) == __PAIR64__(WORD2(v4), v4) && *(a2 + 38) == BYTE6(v4))
  {
    return 1;
  }

  v5 = *a2;
  v6 = (*a2 - **a2);
  v7 = *v6;
  if (v7 >= 0x43 && v6[33])
  {
    v8 = *(v5 + v6[33]);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[1];
  v10 = *v9;
  v11 = (*v9 - **v9);
  v12 = *v11;
  if (v12 < 0x43)
  {
    if (!v8)
    {
      return 1;
    }
  }

  else
  {
    v13 = v11[33];
    if (v11[33])
    {
      LODWORD(v13) = *(v10 + v13);
    }

    if (v8 <= v13)
    {
      return 1;
    }
  }

  if (v7 >= 0x2F && v6[23])
  {
    v14 = *(v5 + v6[23]);
    if (v12 < 0x2F)
    {
LABEL_21:
      if (v14 == 32)
      {
        return 1;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v14 = 32;
    if (v12 < 0x2F)
    {
      goto LABEL_21;
    }
  }

  v15 = v11[23];
  if (!v15)
  {
    goto LABEL_21;
  }

  if (v14 == *(v10 + v15))
  {
    return 1;
  }

LABEL_22:
  if (v7 >= 0x43 && v6[33])
  {
    v16 = *(v5 + v6[33]);
    v17 = *v3;
    v18 = (v17 - *v17);
    v19 = *v18;
    if (v19 < 0x43)
    {
      goto LABEL_25;
    }

LABEL_28:
    v20 = v18[33];
    if (v18[33])
    {
      LODWORD(v20) = *(v17 + v20);
    }

    if (v16 <= v20)
    {
      return 1;
    }

    goto LABEL_31;
  }

  v16 = 0;
  v17 = *v3;
  v18 = (v17 - *v17);
  v19 = *v18;
  if (v19 >= 0x43)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (!v16)
  {
    return 1;
  }

LABEL_31:
  if (v7 < 0x2F || (v21 = v6[23]) == 0)
  {
    v22 = 32;
    if (v19 < 0x2F)
    {
      goto LABEL_50;
    }

    goto LABEL_36;
  }

  v22 = *(v5 + v21);
  if (v19 >= 0x2F)
  {
LABEL_36:
    if (!v18[23])
    {
      goto LABEL_50;
    }

    if (v22 != *(v17 + v18[23]))
    {
      goto LABEL_38;
    }

    return 1;
  }

LABEL_50:
  if (v22 == 32)
  {
    return 1;
  }

LABEL_38:
  v25 = sub_70E2E0((v2 + 179), v9, a2);
  if (*a1[3] == 1 && fabs(v25) > *(v2 + 25))
  {
    return 0;
  }

  v26 = sub_31DDCC(*v2, a1[1][4] & 0xFFFFFFFFFFFFFFLL);
  v27 = 0;
  if (v26 > 0xFFFFFFFEFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  v28 = v26;
  v29 = a2;
  if (v28)
  {
    v30 = sub_31DDCC(*v2, a2[4] & 0xFFFFFFFFFFFFFFLL);
    v27 = 0;
    if (v30 > 0xFFFFFFFEFFFFFFFFLL)
    {
LABEL_45:
      v29 = a2;
      goto LABEL_46;
    }

    v31 = v30;
    v29 = a2;
    if (v31)
    {
      v27 = sub_31EE90(*v2, a1[1][4] & 0xFFFFFFFFFFFFFFLL, a2[4] & 0xFFFFFFFFFFFFFFLL);
      goto LABEL_45;
    }
  }

LABEL_46:
  if ((*a1[3] & 1) == 0 && !(v27 & 1 | ((*a1[4] & 1) == 0)))
  {
    return 0;
  }

  sub_6D3D8C(*v2, *(v29 + 8) | (*(v29 + 18) << 32), &__p);
  v32 = sub_7049B8(__p, v37, v2);
  v33 = v37;
  if (sub_70EE0C((v2 + 179), a2))
  {
    result = 1;
  }

  else
  {
    LODWORD(result) = sub_70EE70((v2 + 179), a2);
    if (v33 == v32)
    {
      result = result;
    }

    else
    {
      result = 1;
    }
  }

  if (__p)
  {
    v37 = __p;
    v35 = result;
    operator delete(__p);
    return v35;
  }

  return result;
}

void sub_704998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_7049B8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    while (1)
    {
      v6 = sub_30CC30(*a3, *v3);
      v7 = (v6 - *v6);
      if (*v7 >= 0xFu && v7[7] && (*(v6 + v7[7]) & 4) != 0 && (!v7[2] || !*(v6 + v7[2])) && !v7[4])
      {
        break;
      }

      if (++v3 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

BOOL sub_704A54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return 1;
  }

  v7 = a1 + 8;
  do
  {
    v8 = sub_4D1F50(a3, a4);
    result = *(v7 - 8) == *(v8 + 32) && *(v7 - 4) == *(v8 + 36);
    ++a4;
    v11 = !result || v7 == a2;
    v7 += 8;
  }

  while (!v11);
  return result;
}

uint64_t sub_704AE0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 32), *(a2 + 32), *(a2 + 40));
LABEL_6:
  v6 = *(a2 + 56);
  *(a1 + 64) = 0;
  *(a1 + 56) = v6;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  if (v8 != v7)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a2 + 111) < 0)
  {
    sub_325C((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v9 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v9;
  }

  v10 = *(a2 + 112);
  *(a1 + 114) = *(a2 + 114);
  *(a1 + 112) = v10;
  if (*(a2 + 143) < 0)
  {
    sub_325C((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v11 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v11;
  }

  return a1;
}

void sub_704C88(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  sub_310494(v3);
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*v2);
  _Unwind_Resume(a1);
}

uint64_t sub_704D10(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_325C(v4, *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        *(v4 + 16) = *(v6 + 2);
        *v4 = v8;
      }

      if (*(v6 + 47) < 0)
      {
        sub_325C((v4 + 24), *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v7 = *(v6 + 24);
        *(v4 + 40) = *(v6 + 5);
        *(v4 + 24) = v7;
      }

      *(v4 + 48) = *(v6 + 6);
      v6 = (v6 + 56);
      v4 = v10 + 56;
      v10 += 56;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_704DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_704E18(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_704E18(uint64_t a1)
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
        if (*(v4 - 9) < 0)
        {
          operator delete(*(v4 - 4));
          v7 = v4 - 7;
          if (*(v4 - 33) < 0)
          {
LABEL_9:
            operator delete(*v7);
          }
        }

        else
        {
          v7 = v4 - 7;
          if (*(v4 - 33) < 0)
          {
            goto LABEL_9;
          }
        }

        v4 = v7;
      }

      while (v7 != v5);
    }
  }

  return a1;
}

void ****sub_704EA4(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 == v3)
      {
LABEL_12:
        v2[1] = v3;
        operator delete(v5);
        return a1;
      }

      while (1)
      {
        if (*(v4 - 9) < 0)
        {
          operator delete(*(v4 - 4));
          v6 = v4 - 7;
          if (*(v4 - 33) < 0)
          {
LABEL_10:
            operator delete(*v6);
          }
        }

        else
        {
          v6 = v4 - 7;
          if (*(v4 - 33) < 0)
          {
            goto LABEL_10;
          }
        }

        v4 = v6;
        if (v6 == v3)
        {
          v5 = **a1;
          goto LABEL_12;
        }
      }
    }
  }

  return a1;
}

unint64_t sub_704F54(uint64_t **a1, int **a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *a2;
  v5 = sub_2B51D8(v3, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v3 + 7772) == 1)
  {
    v6 = sub_30C50C(v3 + 3896, v4, 0);
    v7 = &v6[-*v6];
    if (*v7 < 5u)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v7 + 2);
      if (v8)
      {
        v8 += &v6[*&v6[v8]];
      }
    }

    v9 = (v8 + ((v4 >> 30) & 0x3FFFC) + 4 + *(v8 + ((v4 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v9 = 0;
  }

  v15[0] = v5;
  v15[1] = v9;
  v15[2] = sub_31D7E8(v3, v4 & 0xFFFFFFFFFFFFLL, 1);
  v15[3] = v10;
  v15[4] = v4;
  v11 = (v5 - *v5);
  if (*v11 >= 0x2Fu && (v12 = v11[23]) != 0 && (v13 = *(v5 + v12) - 14, v13 < 0x1F) && ((0x54100001u >> v13) & 1) != 0)
  {
    return 1;
  }

  else
  {
    return sub_6ABEA8((v2 + 460), v15);
  }
}

BOOL sub_705090(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  sub_320200(**a1, *a2, &v23);
  v5 = v23;
  if (v23 != v24)
  {
    v6 = 0;
    v7 = *(*(a1 + 8) + 32);
    v8 = v23;
    do
    {
      if (__PAIR64__(*(v8 + 4), *v8) == __PAIR64__(WORD2(v7), v7) && BYTE6(v7) == *(v8 + 6))
      {
        ++v6;
      }

      v8 += 8;
    }

    while (v8 != v24);
    if (v6)
    {
      v9 = *(*(a1 + 16) + 32);
      if (__PAIR64__(*(v24 - 2), *(v24 - 2)) == __PAIR64__(WORD2(v9), v9) && *(v24 - 2) == BYTE6(v9))
      {
        v10 = sub_30CC30(*v4, *a2);
        v11 = (v10 - *v10);
        if (*v11 < 0xBu || (v12 = v11[5]) == 0)
        {
          v17 = 0;
          goto LABEL_27;
        }

        v13 = (v10 + v12 + *(v10 + v12));
        v21 = 0;
        v22 = 0;
        __p = 0;
        sub_7035EC(&__p, *v13);
        v26 = (v13 + 1);
        v25 = &v13[*v13 + 1];
        sub_703864(&v26, &v25, &__p, sub_31095C);
        v15 = __p;
        v14 = v21;
        if (__p == v21)
        {
          v17 = 0;
          v18 = __p;
          if (!v21)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v16 = __p;
          while (*(v16 + 48) != 1)
          {
            v16 += 16;
            if (v16 == v21)
            {
              v16 = v21;
              break;
            }
          }

          v17 = v16 != v21;
          if (!__p)
          {
LABEL_27:
            v5 = v23;
            if (!v23)
            {
              return v17;
            }

            goto LABEL_22;
          }

          do
          {
            v14 = sub_31104C(v14 - 16);
          }

          while (v14 != v15);
          v18 = __p;
        }

        v21 = v15;
        operator delete(v18);
        goto LABEL_27;
      }
    }
  }

  v17 = 0;
  if (v23)
  {
LABEL_22:
    v24 = v5;
    operator delete(v5);
  }

  return v17;
}

void sub_705278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  sub_703590(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_7052A4(int ***a1, int **a2)
{
  v2 = a1[2];
  v3 = *a1;
  v4 = (*a1)[4];
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) == __PAIR64__(WORD2(v4), v4) && *(a2 + 38) == BYTE6(v4))
  {
    return 1;
  }

  v5 = *a2;
  v6 = (*a2 - **a2);
  v7 = *v6;
  if (v7 >= 0x43 && v6[33])
  {
    v8 = *(v5 + v6[33]);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[1];
  v10 = *v9;
  v11 = (*v9 - **v9);
  v12 = *v11;
  if (v12 < 0x43)
  {
    if (!v8)
    {
      return 1;
    }
  }

  else
  {
    v13 = v11[33];
    if (v11[33])
    {
      LODWORD(v13) = *(v10 + v13);
    }

    if (v8 <= v13)
    {
      return 1;
    }
  }

  if (v7 >= 0x2F && v6[23])
  {
    v14 = *(v5 + v6[23]);
    if (v12 < 0x2F)
    {
LABEL_21:
      if (v14 == 32)
      {
        return 1;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v14 = 32;
    if (v12 < 0x2F)
    {
      goto LABEL_21;
    }
  }

  v15 = v11[23];
  if (!v15)
  {
    goto LABEL_21;
  }

  if (v14 == *(v10 + v15))
  {
    return 1;
  }

LABEL_22:
  if (v7 >= 0x43 && v6[33])
  {
    v16 = *(v5 + v6[33]);
    v17 = *v3;
    v18 = (v17 - *v17);
    v19 = *v18;
    if (v19 < 0x43)
    {
      goto LABEL_25;
    }

LABEL_28:
    v20 = v18[33];
    if (v18[33])
    {
      LODWORD(v20) = *(v17 + v20);
    }

    if (v16 <= v20)
    {
      return 1;
    }

    goto LABEL_31;
  }

  v16 = 0;
  v17 = *v3;
  v18 = (v17 - *v17);
  v19 = *v18;
  if (v19 >= 0x43)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (!v16)
  {
    return 1;
  }

LABEL_31:
  if (v7 < 0x2F || (v21 = v6[23]) == 0)
  {
    v22 = 32;
    if (v19 < 0x2F)
    {
      goto LABEL_50;
    }

    goto LABEL_36;
  }

  v22 = *(v5 + v21);
  if (v19 >= 0x2F)
  {
LABEL_36:
    if (!v18[23])
    {
      goto LABEL_50;
    }

    if (v22 != *(v17 + v18[23]))
    {
      goto LABEL_38;
    }

    return 1;
  }

LABEL_50:
  if (v22 == 32)
  {
    return 1;
  }

LABEL_38:
  v25 = sub_70E2E0((v2 + 179), v9, a2);
  if (*a1[3] == 1 && fabs(v25) > *(v2 + 25))
  {
    return 0;
  }

  v26 = sub_31DDCC(*v2, a1[1][4] & 0xFFFFFFFFFFFFFFLL);
  v27 = 0;
  if (v26 > 0xFFFFFFFEFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  v28 = v26;
  v29 = a2;
  if (v28)
  {
    v30 = sub_31DDCC(*v2, a2[4] & 0xFFFFFFFFFFFFFFLL);
    v27 = 0;
    if (v30 > 0xFFFFFFFEFFFFFFFFLL)
    {
LABEL_45:
      v29 = a2;
      goto LABEL_46;
    }

    v31 = v30;
    v29 = a2;
    if (v31)
    {
      v27 = sub_31EE90(*v2, a1[1][4] & 0xFFFFFFFFFFFFFFLL, a2[4] & 0xFFFFFFFFFFFFFFLL);
      goto LABEL_45;
    }
  }

LABEL_46:
  if ((*a1[3] & 1) == 0 && !(v27 & 1 | ((*a1[4] & 1) == 0)))
  {
    return 0;
  }

  sub_6D3D8C(*v2, *(v29 + 8) | (*(v29 + 18) << 32), &__p);
  v32 = sub_70561C(__p, v37, v2);
  v33 = v37;
  if (sub_712D18((v2 + 179), a2))
  {
    result = 1;
  }

  else
  {
    LODWORD(result) = sub_713A2C((v2 + 179), a2);
    if (v33 == v32)
    {
      result = result;
    }

    else
    {
      result = 1;
    }
  }

  if (__p)
  {
    v37 = __p;
    v35 = result;
    operator delete(__p);
    return v35;
  }

  return result;
}

void sub_7055FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_70561C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  do
  {
    v6 = sub_30CC30(*a3, *v3);
    v7 = (v6 - *v6);
    v8 = *v7;
    if (v8 < 0xF)
    {
      if (v8 < 5)
      {
        return v3;
      }
    }

    else if (v7[7] && (*(v6 + v7[7]) & 1) == 0)
    {
      goto LABEL_3;
    }

    if ((!v7[2] || !*(v6 + v7[2])) && (v8 < 9 || !v7[4]))
    {
      return v3;
    }

LABEL_3:
    ++v3;
  }

  while (v3 != a2);
  return a2;
}

BOOL sub_7056DC(uint64_t **a1, int **a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *a2;
  v5 = sub_2B51D8(v3, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v3 + 7772) == 1)
  {
    v6 = sub_30C50C(v3 + 3896, v4, 0);
    v7 = &v6[-*v6];
    if (*v7 < 5u)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v7 + 2);
      if (v8)
      {
        v8 += &v6[*&v6[v8]];
      }
    }

    v9 = (v8 + ((v4 >> 30) & 0x3FFFC) + 4 + *(v8 + ((v4 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v9 = 0;
  }

  v15[0] = v5;
  v15[1] = v9;
  v15[2] = sub_31D7E8(v3, v4 & 0xFFFFFFFFFFFFLL, 1);
  v15[3] = v10;
  v15[4] = v4;
  v11 = (v5 - *v5);
  if (*v11 >= 0x2Fu && (v12 = v11[23]) != 0 && (v13 = *(v5 + v12) - 14, v13 < 0x1F) && ((0x54100001u >> v13) & 1) != 0)
  {
    return 1;
  }

  else
  {
    return sub_6AE0E8((v2 + 460), v15);
  }
}

BOOL sub_705818(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  sub_320200(**a1, *a2, &v23);
  v5 = v23;
  if (v23 != v24)
  {
    v6 = 0;
    v7 = *(*(a1 + 8) + 32);
    v8 = v23;
    do
    {
      if (__PAIR64__(*(v8 + 4), *v8) == __PAIR64__(WORD2(v7), v7) && BYTE6(v7) == *(v8 + 6))
      {
        ++v6;
      }

      v8 += 8;
    }

    while (v8 != v24);
    if (v6)
    {
      v9 = *(*(a1 + 16) + 32);
      if (__PAIR64__(*(v24 - 2), *(v24 - 2)) == __PAIR64__(WORD2(v9), v9) && *(v24 - 2) == BYTE6(v9))
      {
        v10 = sub_30CC30(*v4, *a2);
        v11 = (v10 - *v10);
        if (*v11 < 0xBu || (v12 = v11[5]) == 0)
        {
          v17 = 0;
          goto LABEL_27;
        }

        v13 = (v10 + v12 + *(v10 + v12));
        v21 = 0;
        v22 = 0;
        __p = 0;
        sub_7035EC(&__p, *v13);
        v26 = (v13 + 1);
        v25 = &v13[*v13 + 1];
        sub_703864(&v26, &v25, &__p, sub_31095C);
        v15 = __p;
        v14 = v21;
        if (__p == v21)
        {
          v17 = 0;
          v18 = __p;
          if (!v21)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v16 = __p;
          while (*(v16 + 48) != 1)
          {
            v16 += 16;
            if (v16 == v21)
            {
              v16 = v21;
              break;
            }
          }

          v17 = v16 != v21;
          if (!__p)
          {
LABEL_27:
            v5 = v23;
            if (!v23)
            {
              return v17;
            }

            goto LABEL_22;
          }

          do
          {
            v14 = sub_31104C(v14 - 16);
          }

          while (v14 != v15);
          v18 = __p;
        }

        v21 = v15;
        operator delete(v18);
        goto LABEL_27;
      }
    }
  }

  v17 = 0;
  if (v23)
  {
LABEL_22:
    v24 = v5;
    operator delete(v5);
  }

  return v17;
}

void sub_705A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  sub_703590(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_705A2C(int ***a1, int **a2)
{
  v2 = a1[2];
  v3 = *a1;
  v4 = (*a1)[4];
  if (__PAIR64__(*(a2 + 18), *(a2 + 8)) == __PAIR64__(WORD2(v4), v4) && *(a2 + 38) == BYTE6(v4))
  {
    return 1;
  }

  v5 = *a2;
  v6 = (*a2 - **a2);
  v7 = *v6;
  if (v7 >= 0x43 && v6[33])
  {
    v8 = *(v5 + v6[33]);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[1];
  v10 = *v9;
  v11 = (*v9 - **v9);
  v12 = *v11;
  if (v12 < 0x43)
  {
    if (!v8)
    {
      return 1;
    }
  }

  else
  {
    v13 = v11[33];
    if (v11[33])
    {
      LODWORD(v13) = *(v10 + v13);
    }

    if (v8 <= v13)
    {
      return 1;
    }
  }

  if (v7 >= 0x2F && v6[23])
  {
    v14 = *(v5 + v6[23]);
    if (v12 < 0x2F)
    {
LABEL_21:
      if (v14 == 32)
      {
        return 1;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v14 = 32;
    if (v12 < 0x2F)
    {
      goto LABEL_21;
    }
  }

  v15 = v11[23];
  if (!v15)
  {
    goto LABEL_21;
  }

  if (v14 == *(v10 + v15))
  {
    return 1;
  }

LABEL_22:
  if (v7 >= 0x43 && v6[33])
  {
    v16 = *(v5 + v6[33]);
    v17 = *v3;
    v18 = (v17 - *v17);
    v19 = *v18;
    if (v19 < 0x43)
    {
      goto LABEL_25;
    }

LABEL_28:
    v20 = v18[33];
    if (v18[33])
    {
      LODWORD(v20) = *(v17 + v20);
    }

    if (v16 <= v20)
    {
      return 1;
    }

    goto LABEL_31;
  }

  v16 = 0;
  v17 = *v3;
  v18 = (v17 - *v17);
  v19 = *v18;
  if (v19 >= 0x43)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (!v16)
  {
    return 1;
  }

LABEL_31:
  if (v7 < 0x2F || (v21 = v6[23]) == 0)
  {
    v22 = 32;
    if (v19 < 0x2F)
    {
      goto LABEL_50;
    }

    goto LABEL_36;
  }

  v22 = *(v5 + v21);
  if (v19 >= 0x2F)
  {
LABEL_36:
    if (!v18[23])
    {
      goto LABEL_50;
    }

    if (v22 != *(v17 + v18[23]))
    {
      goto LABEL_38;
    }

    return 1;
  }

LABEL_50:
  if (v22 == 32)
  {
    return 1;
  }

LABEL_38:
  v25 = sub_70E2E0((v2 + 179), v9, a2);
  if (*a1[3] == 1 && fabs(v25) > *(v2 + 25))
  {
    return 0;
  }

  v26 = sub_31DDCC(*v2, a1[1][4] & 0xFFFFFFFFFFFFFFLL);
  v27 = 0;
  if (v26 > 0xFFFFFFFEFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  v28 = v26;
  v29 = a2;
  if (v28)
  {
    v30 = sub_31DDCC(*v2, a2[4] & 0xFFFFFFFFFFFFFFLL);
    v27 = 0;
    if (v30 > 0xFFFFFFFEFFFFFFFFLL)
    {
LABEL_45:
      v29 = a2;
      goto LABEL_46;
    }

    v31 = v30;
    v29 = a2;
    if (v31)
    {
      v27 = sub_31EE90(*v2, a1[1][4] & 0xFFFFFFFFFFFFFFLL, a2[4] & 0xFFFFFFFFFFFFFFLL);
      goto LABEL_45;
    }
  }

LABEL_46:
  if ((*a1[3] & 1) == 0 && !(v27 & 1 | ((*a1[4] & 1) == 0)))
  {
    return 0;
  }

  sub_6D3D8C(*v2, *(v29 + 8) | (*(v29 + 18) << 32), &__p);
  v32 = sub_705DA4(__p, v37, v2);
  v33 = v37;
  if (sub_716E70((v2 + 179), a2))
  {
    result = 1;
  }

  else
  {
    LODWORD(result) = sub_716EE4((v2 + 179), a2);
    if (v33 == v32)
    {
      result = result;
    }

    else
    {
      result = 1;
    }
  }

  if (__p)
  {
    v37 = __p;
    v35 = result;
    operator delete(__p);
    return v35;
  }

  return result;
}

void sub_705D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_705DA4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    while (1)
    {
      v6 = sub_30CC30(*a3, *v3);
      v7 = (v6 - *v6);
      if (*v7 >= 0xFu && v7[7] && (*(v6 + v7[7]) & 2) != 0 && (!v7[2] || !*(v6 + v7[2])) && !v7[4])
      {
        break;
      }

      if (++v3 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

BOOL sub_705E40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return 1;
  }

  v7 = a1 + 8;
  do
  {
    v8 = sub_4D1F50(a3, a4);
    result = *(v7 - 8) == *(v8 + 32) && (*(v8 + 36) & 0x1FFFFFFF) == *(v7 - 4);
    ++a4;
    v11 = !result || v7 == a2;
    v7 += 8;
  }

  while (!v11);
  return result;
}

void sub_705EC8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock((a1 + 3));
  v6 = a1[15];
  v7 = a1[14];
  if (v7 != v6)
  {
    v8 = a1[11];
    v9 = a1[12] - v8;
    v11 = *a2;
    v10 = a2[1];
    v12 = v10 % v9;
    v13 = v9 - 1;
    while (1)
    {
      if (*(v8 + v12) == 2)
      {
        v14 = v7 + 32 * v12;
        if (*(v14 + 16) == v10 && __PAIR64__(*(v14 + 4), *v14) == __PAIR64__(WORD2(*v11), *v11) && *(v14 + 6) == BYTE6(*v11) && *(v14 + 8) == *(v11 + 8) && *(v14 + 9) == *(v11 + 9) && *(v14 + 10) == *(v11 + 10))
        {
          v7 += 32 * v12;
          break;
        }
      }

      else if (!*(v8 + v12))
      {
        goto LABEL_24;
      }

      if (v12 == v13)
      {
        v12 = 0;
      }

      else
      {
        ++v12;
      }
    }
  }

  if (v7 == v6)
  {
LABEL_24:
    ++a1[24];
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v21 = (a1 + 3);
  }

  else
  {
    ++a1[23];
    v15 = *(v7 + 24);
    if (v15 != a1)
    {
      v16 = v15[1];
      if (v16 != a1)
      {
        v17 = *v15;
        *(v17 + 8) = v16;
        *v16 = v17;
        v18 = *a1;
        *(v18 + 8) = v15;
        *v15 = v18;
        *a1 = v15;
        v15[1] = a1;
      }
    }

    v20 = v15[5];
    v19 = v15[6];
    *a3 = v20;
    *(a3 + 8) = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    *(a3 + 16) = 1;
    v21 = (a1 + 3);
  }

  std::mutex::unlock(v21);
}

void sub_706094(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266C458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_7060E8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 == v1)
    {
      *(a1 + 32) = v1;
    }

    else
    {
      do
      {
        v5 = *(v3 - 208);
        if (v5)
        {
          *(v3 - 200) = v5;
          operator delete(v5);
        }

        v6 = v3 - 248;
        v7 = *(v3 - 248);
        if (v7)
        {
          *(v3 - 240) = v7;
          operator delete(v7);
        }

        v3 -= 248;
      }

      while (v6 != v1);
      v4 = *(a1 + 24);
      *(a1 + 32) = v1;
    }

    operator delete(v4);
  }
}

void *sub_7061AC(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v11 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 3)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15 - 1);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 8;
    if (v21 >= 0x38)
    {
      v18 = v17;
      if (v8 + v17 - &__src[v14] >= 0x20)
      {
        v22 = (v21 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 4;
        }

        while (v26);
        if (v22 == (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 8;
      *v18 = v28;
      v18 += 8;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (a3 != __src)
  {
    result = memmove(*result, __src, v19 - 1);
  }

  v20 = v8 + v19;
LABEL_27:
  v6[1] = v20;
  return result;
}

void sub_706504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1F1A8(&a9);
  std::mutex::unlock((v9 + 208));
  _Unwind_Resume(a1);
}

void sub_706520(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  std::mutex::unlock((v1 + 208));
  _Unwind_Resume(a1);
}

uint64_t sub_706554(uint64_t *a1, unsigned int *a2, const void **a3, unint64_t a4, int a5)
{
  if (a1[21] < a4)
  {
    if (!sub_7E7E4(1u))
    {
      return 0;
    }

    sub_19594F8(&v49);
    v7 = sub_4A5C(&v49, "LRUCache: item is too large (", 29);
    v8 = sub_71478(v7, a4);
    v9 = sub_4A5C(v8, " > ", 3);
    v10 = sub_71478(v9, a1[21]);
    sub_4A5C(v10, ")", 1);
    if ((v60 & 0x10) != 0)
    {
      v43 = v59;
      if (v59 < v56)
      {
        v59 = v56;
        v43 = v56;
      }

      v44 = v55;
      v11 = v43 - v55;
      if (v43 - v55 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if ((v60 & 8) == 0)
      {
        v11 = 0;
        HIBYTE(v48) = 0;
LABEL_47:
        *(&__dst + v11) = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(v48) < 0)
        {
          operator delete(__dst);
        }

        if (v58 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v51);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v44 = v52;
      v11 = v54 - v52;
      if (v54 - v52 >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_56:
        sub_3244();
      }
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v48) = v11;
    if (v11)
    {
      memmove(&__dst, v44, v11);
    }

    goto LABEL_47;
  }

  __dst = &__dst;
  p_dst = &__dst;
  v48 = 0;
  std::mutex::lock((a1 + 3));
  v15 = a1[15];
  v16 = a1[14];
  if (v16 == v15)
  {
    goto LABEL_23;
  }

  v17 = (*(a2 + 2) + (*a2 << 6) + (*a2 >> 2) + 2654435769u) ^ *a2;
  v18 = *(a2 + 8);
  v19 = ((v18 | (v17 << 6)) + (v17 >> 2) + 2654435769u) ^ v17;
  v20 = *(a2 + 9);
  v21 = ((v20 | (v19 << 6)) + (v19 >> 2) + 2654435769u) ^ v19;
  v22 = *(a2 + 10);
  v23 = (v22 + (v21 << 6) + (v21 >> 2) + 2654435769u) ^ v21;
  v24 = a1[11];
  v25 = a1[12] - v24;
  v26 = v23 % v25;
  v27 = v25 - 1;
  while (*(v24 + v26) != 2)
  {
    if (!*(v24 + v26))
    {
      goto LABEL_26;
    }

LABEL_9:
    if (v26 == v27)
    {
      v26 = 0;
    }

    else
    {
      ++v26;
    }
  }

  v28 = v16 + 32 * v26;
  if (*(v28 + 16) != v23 || *v28 != *a2)
  {
    goto LABEL_9;
  }

  v29 = *(v28 + 4) == WORD2(*a2) && *(v28 + 6) == BYTE6(*a2);
  if (!v29 || *(v28 + 8) != v18 || __PAIR64__(*(v28 + 10), *(v28 + 9)) != __PAIR64__(v22, v20))
  {
    goto LABEL_9;
  }

  v16 += 32 * v26;
LABEL_23:
  if (v16 == v15)
  {
LABEL_26:
    ++a1[22];
    v30 = a1[1];
    if (v30 != a1)
    {
      v31 = a1[21] - a4;
      do
      {
        if (a1[20] <= v31)
        {
          break;
        }

        sub_3D2F04(a1, v30, &__dst);
        v30 = a1[1];
      }

      while (v30 != a1);
    }

    v49 = *a2;
    LODWORD(v50) = a2[2];
    v32 = WORD2(v49) + 2654435769 + (LODWORD(v49) << 6) + (LODWORD(v49) >> 2);
    v33 = (v50 + 2654435769 + ((v32 ^ LODWORD(v49)) << 6) + ((v32 ^ LODWORD(v49)) >> 2)) ^ v32 ^ LODWORD(v49);
    v34 = (BYTE1(v50) + 2654435769 + (v33 << 6) + (v33 >> 2)) ^ v33;
    v36 = *a3;
    v35 = a3[1];
    v51.__locale_ = ((BYTE2(v50) + 2654435769 + (v34 << 6) + (v34 >> 2)) ^ v34);
    v52 = v36;
    v53 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(v35 + 1, 1uLL, memory_order_relaxed);
    }

    v54 = a4;
    operator new();
  }

  if (a5)
  {
    sub_3D2F04(a1, *(v16 + 24), &__dst);
    goto LABEL_26;
  }

  std::mutex::unlock((a1 + 3));
  if (v48)
  {
    v37 = p_dst;
    v38 = *(__dst + 1);
    v39 = *p_dst;
    v39[1] = v38;
    *v38 = v39;
    v48 = 0;
    if (v37 != &__dst)
    {
      do
      {
        v40 = v37[1];
        v41 = v37[6];
        if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v42 = v37;
          (v41->__on_zero_shared)(v41);
          std::__shared_weak_count::__release_weak(v41);
          v37 = v42;
        }

        operator delete(v37);
        v37 = v40;
      }

      while (v40 != &__dst);
    }
  }

  return 0;
}

void sub_706B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  std::mutex::unlock((v17 + 24));
  sub_3D2E3C(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_706C24(uint64_t *a1, __int128 *a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[3];
  v7 = v6;
  if (v6 != v5)
  {
    v8 = *(a2 + 2);
    v9 = a1[1] - *a1;
    v10 = v8 % v9;
    v11 = v9 - 1;
    while (1)
    {
      if (*(*a1 + v10) == 2)
      {
        v7 = v6 + 32 * v10;
        if (*(v7 + 16) == v8 && __PAIR64__(*(v7 + 4), *v7) == __PAIR64__(WORD2(*a2), *a2) && *(v7 + 6) == BYTE6(*a2) && *(v7 + 8) == *(a2 + 8) && *(v7 + 9) == *(a2 + 9) && *(v7 + 10) == *(a2 + 10))
        {
          break;
        }
      }

      else if (!*(*a1 + v10))
      {
        goto LABEL_16;
      }

      if (v10 == v11)
      {
        v10 = 0;
      }

      else
      {
        ++v10;
      }
    }
  }

  if (v7 != v5)
  {
    return 0;
  }

LABEL_16:
  if (2 * a1[8] + 2 > ((v5 - v6) >> 5))
  {
    sub_3D30B8(a1);
  }

  v13 = *a1;
  v14 = *(a2 + 2) % (a1[1] - *a1);
  v15 = *(*a1 + v14);
  if (*(*a1 + v14))
  {
    while (v15 != 1)
    {
      if (v14 == ((a1[4] - a1[3]) >> 5) - 1)
      {
        v14 = 0;
      }

      else
      {
        ++v14;
      }

      v15 = *(v13 + v14);
      if (!*(v13 + v14))
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_24:
    ++a1[8];
  }

  ++a1[7];
  *(v13 + v14) = 2;
  v16 = 32 * v14;
  v17 = a1[3] + v16;
  v18 = *a2;
  *(v17 + 16) = *(a2 + 2);
  *v17 = v18;
  *(a1[3] + v16 + 24) = *a3;
  return 1;
}

uint64_t sub_706DE0(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_706E58(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    v11 = vnegq_f64(v6);
    do
    {
      v7 = *v5++;
      v8 = sub_6D3F8C((a3 + 10096), v7);
      *(v8 + 24) = 0;
      *(v8 + 8) = *v8;
      *(v8 + 48) = *(v8 + 40);
      *(v8 + 64) = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      *(v8 + 72) = v9;
      *(v8 + 88) = v9;
      *(v8 + 104) = v9;
      *(v8 + 120) = -1;
      *(v8 + 128) = 0;
      *(v8 + 136) = -1;
      *(v8 + 144) = 0;
      *(v8 + 152) = 0;
      *(v8 + 160) = v11;
      *(v8 + 176) = 0;
      *(v8 + 184) = 98;
      *(v8 + 192) = 0;
      *(v8 + 200) = 0;
      *(v8 + 208) = xmmword_229B660;
      *(v8 + 232) = 0;
      *(v8 + 245) = 0;
      *(v8 + 224) = 0;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t sub_706F3C(uint64_t result, unsigned int *a2, unsigned int (**a3)(unint64_t, unint64_t), uint64_t a4, __int32 a5)
{
  v118.i32[0] = a5;
  v9 = result;
LABEL_2:
  v10 = (a2 - 1);
  v116 = a2 - 3;
  v117 = a2 - 2;
  v11 = v9;
LABEL_3:
  v12 = 1 - a4;
  while (1)
  {
    v9 = v11;
    v13 = v12;
    v14 = a2 - v11;
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3:
        v73 = v11 + 1;
        v74 = (*a3)(v11[1], *v11);
        v75 = *(a2 - 1);
        v78 = a2 - 1;
        result = (*a3)(v75, v11[1]);
        if (v74)
        {
          v76 = *v11;
          if (result)
          {
            goto LABEL_81;
          }

          *v11 = *v73;
          *(v11 + 2) = *(v11 + 6);
          *(v11 + 6) = BYTE2(v76);
          *(v11 + 2) = v76;
          result = (*a3)(*v78, v11[1]);
          if (!result)
          {
            return result;
          }

          v76 = *v73;
          v77 = *v78;
          *(v11 + 6) = *(v78 + 2);
          *v73 = v77;
LABEL_82:
          *(v78 + 2) = BYTE2(v76);
          *v78 = v76;
          return result;
        }

        if (!result)
        {
          return result;
        }

        v97 = v11[1];
        v98 = *v78;
        *(v11 + 6) = *(v78 + 2);
        *v73 = v98;
        *(v78 + 2) = BYTE2(v97);
        *v78 = v97;
        result = (*a3)(v11[1], *v11);
        goto LABEL_124;
      case 4:
        v73 = v11 + 1;
        v81 = (*a3)(v11[1], *v11);
        v82 = v11 + 2;
        v83 = (*a3)(v11[2], v11[1]);
        if (v81)
        {
          v84 = *v11;
          if (v83)
          {
            *v11 = *v82;
            *(v11 + 2) = *(v11 + 10);
            *(v11 + 10) = BYTE2(v84);
            *(v11 + 4) = v84;
          }

          else
          {
            *v11 = *v73;
            *(v11 + 2) = *(v11 + 6);
            *(v11 + 6) = BYTE2(v84);
            *(v11 + 2) = v84;
            if ((*a3)(v11[2], v11[1]))
            {
              v108 = *v73;
              *v73 = *v82;
              *(v11 + 6) = *(v11 + 10);
              *v82 = v108;
              *(v11 + 10) = BYTE2(v108);
            }
          }
        }

        else if (v83)
        {
          v99 = *v11;
          v100 = v11[1];
          *(v11 + 6) = *(v11 + 10);
          *v73 = *v82;
          *(v11 + 4) = v100;
          *(v11 + 10) = BYTE2(v100);
          if ((*a3)(v11[1], v99))
          {
            v101 = *v11;
            *v11 = *v73;
            *(v11 + 2) = *(v11 + 6);
            *(v11 + 2) = v101;
            *(v11 + 6) = BYTE2(v101);
          }
        }

        result = (*a3)(*v10, *v82);
        if (!result)
        {
          return result;
        }

        v109 = *v82;
        v110 = *v10;
        *(v11 + 10) = *(v10 + 2);
        *v82 = v110;
        *(v10 + 2) = BYTE2(v109);
        *v10 = v109;
        result = (*a3)(*v82, *v73);
        if (!result)
        {
          return result;
        }

        v111 = *v11;
        v112 = v11[1];
        *(v11 + 6) = *(v11 + 10);
        *v73 = *v82;
        *(v11 + 4) = v112;
        *(v11 + 10) = BYTE2(v112);
        result = (*a3)(v11[1], v111);
LABEL_124:
        if (result)
        {
          v113 = *v11;
          *v11 = *v73;
          *(v11 + 2) = *(v73 + 2);
          *(v11 + 2) = v113;
          *(v11 + 6) = BYTE2(v113);
        }

        return result;
      case 5:

        return sub_707A78(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v14 <= 23)
    {
      v85 = v11 + 1;
      v87 = v11 == a2 || v85 == a2;
      if (v118.i8[0])
      {
        if (!v87)
        {
          v88 = 0;
          v89 = v11;
          do
          {
            v91 = *v89;
            v89 = v85;
            v92.i64[0] = 0xFFFFFFFF00000000;
            v92.i64[1] = 0xFFFFFFFF00000000;
            v93.i64[0] = v91;
            v93.i64[1] = HIDWORD(v91);
            v118 = vorrq_s8(vandq_s8(v118, v92), v93);
            result = (*a3)(v118.i64[1], v118.i64[0]);
            if (result)
            {
              v94 = *v89;
              v95 = v88;
              do
              {
                v96 = v9 + v95;
                *(v96 + 2) = *(v9 + v95);
                v96[6] = *(v9 + v95 + 2);
                if (!v95)
                {
                  v90 = v9;
                  goto LABEL_96;
                }

                v6 = v6 & 0xFFFFFFFF00000000 | v94;
                v10 = v10 & 0xFFFFFFFF00000000 | *(v96 - 1);
                result = (*a3)(v6, v10);
                v95 -= 4;
              }

              while ((result & 1) != 0);
              v90 = v9 + v95 + 4;
LABEL_96:
              *v90 = v94;
              *(v90 + 2) = BYTE2(v94);
            }

            v85 = v89 + 1;
            v88 += 4;
          }

          while (v89 + 1 != a2);
        }
      }

      else if (!v87)
      {
        do
        {
          v103 = *v9;
          v102 = v9[1];
          v9 = v85;
          v5 = v5 & 0xFFFFFFFF00000000 | v102;
          v13 = v13 & 0xFFFFFFFF00000000 | v103;
          result = (*a3)(v5, v13);
          if (result)
          {
            v104 = *v9;
            v105 = v9;
            do
            {
              v106 = v105;
              v107 = *(v105-- - 2);
              *v106 = v107;
              *(v106 + 2) = *(v106 - 2);
              v6 = v6 & 0xFFFFFFFF00000000 | v104;
              v10 = v10 & 0xFFFFFFFF00000000 | *(v106 - 2);
              result = (*a3)(v6, v10);
            }

            while ((result & 1) != 0);
            *v105 = v104;
            *(v105 + 2) = BYTE2(v104);
          }

          v85 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        return sub_70859C(v11, a2, a2, a3);
      }

      return result;
    }

    v15 = &v11[v14 >> 1];
    v16 = *a3;
    if (v14 >= 0x81)
    {
      v17 = v16(*v15, *v11);
      v18 = (*a3)(*v10, *v15);
      v114 = v6;
      if (v17)
      {
        v19 = *v9;
        if (v18)
        {
          v20 = *v10;
          *(v9 + 2) = *(a2 - 2);
          *v9 = v20;
          goto LABEL_29;
        }

        v33 = *v15;
        *(v9 + 2) = *(v15 + 2);
        *v9 = v33;
        *(v15 + 2) = BYTE2(v19);
        *v15 = v19;
        if ((*a3)(*v10, *v15))
        {
          v19 = *v15;
          v34 = *v10;
          *(v15 + 2) = *(a2 - 2);
          *v15 = v34;
LABEL_29:
          *(a2 - 2) = BYTE2(v19);
          *v10 = v19;
        }
      }

      else if (v18)
      {
        v25 = *v15;
        v26 = *v10;
        *(v15 + 2) = *(a2 - 2);
        *v15 = v26;
        *(a2 - 2) = BYTE2(v25);
        *v10 = v25;
        if ((*a3)(*v15, *v9))
        {
          v27 = *v9;
          v28 = *v15;
          *(v9 + 2) = *(v15 + 2);
          *v9 = v28;
          *(v15 + 2) = BYTE2(v27);
          *v15 = v27;
        }
      }

      v35 = v9 + 1;
      v36 = v15 - 1;
      v37 = (*a3)(*(v15 - 1), v9[1]);
      v38 = (*a3)(*v117, *(v15 - 1));
      v115 = v5;
      if (v37)
      {
        v39 = *v35;
        if (v38)
        {
          v40 = a2 - 2;
          v41 = *v117;
          *(v9 + 6) = *(a2 - 6);
          *v35 = v41;
          goto LABEL_43;
        }

        v48 = *v36;
        *(v9 + 6) = *(v15 - 2);
        *v35 = v48;
        *(v15 - 2) = BYTE2(v39);
        *v36 = v39;
        if ((*a3)(*v117, *v36))
        {
          v39 = *v36;
          v40 = a2 - 2;
          v49 = *v117;
          *(v15 - 2) = *(a2 - 6);
          *v36 = v49;
LABEL_43:
          *(v40 + 2) = BYTE2(v39);
          *v40 = v39;
        }
      }

      else if (v38)
      {
        v42 = *v36;
        v43 = *v117;
        *(v15 - 2) = *(a2 - 6);
        *v36 = v43;
        *(a2 - 6) = BYTE2(v42);
        *v117 = v42;
        if ((*a3)(*v36, *v35))
        {
          v44 = *v35;
          v45 = *v36;
          *(v9 + 6) = *(v15 - 2);
          *v35 = v45;
          *(v15 - 2) = BYTE2(v44);
          *v36 = v44;
        }
      }

      v50 = v9 + 2;
      v51 = v15 + 1;
      v52 = (*a3)(v15[1], v9[2]);
      v53 = (*a3)(*v116, v15[1]);
      if (v52)
      {
        v54 = *v50;
        if (v53)
        {
          v55 = a2 - 3;
          v56 = *v116;
          *(v9 + 10) = *(a2 - 10);
          *v50 = v56;
          goto LABEL_52;
        }

        v61 = *v51;
        *(v9 + 10) = *(v15 + 6);
        *v50 = v61;
        *(v15 + 6) = BYTE2(v54);
        *v51 = v54;
        if ((*a3)(*v116, *v51))
        {
          v54 = *v51;
          v55 = a2 - 3;
          v62 = *v116;
          *(v15 + 6) = *(a2 - 10);
          *v51 = v62;
LABEL_52:
          *(v55 + 2) = BYTE2(v54);
          *v55 = v54;
        }
      }

      else if (v53)
      {
        v57 = *v51;
        v58 = *v116;
        *(v15 + 6) = *(a2 - 10);
        *v51 = v58;
        *(a2 - 10) = BYTE2(v57);
        *v116 = v57;
        if ((*a3)(*v51, *v50))
        {
          v59 = *v50;
          v60 = *v51;
          *(v9 + 10) = *(v15 + 6);
          *v50 = v60;
          *(v15 + 6) = BYTE2(v59);
          *v51 = v59;
        }
      }

      v63 = (*a3)(*v15, *v36);
      v64 = (*a3)(*v51, *v15);
      if (v63)
      {
        v65 = *v36;
        v5 = v115;
        if (v64)
        {
          *v36 = *v51;
          *(v15 - 2) = *(v15 + 6);
          goto LABEL_61;
        }

        *v36 = *v15;
        *(v15 - 2) = *(v15 + 2);
        *v15 = v65;
        *(v15 + 2) = BYTE2(v65);
        if ((*a3)(*v51, *v15))
        {
          v65 = *v15;
          *v15 = *v51;
          *(v15 + 2) = *(v15 + 6);
LABEL_61:
          *v51 = v65;
          *(v15 + 6) = BYTE2(v65);
        }
      }

      else
      {
        v5 = v115;
        if (v64)
        {
          v66 = *v15;
          *(v15 + 2) = *(v15 + 6);
          *v15 = *v51;
          *v51 = v66;
          *(v15 + 6) = BYTE2(v66);
          if ((*a3)(*v15, *v36))
          {
            v67 = *v36;
            *v36 = *v15;
            *(v15 - 2) = *(v15 + 2);
            *v15 = v67;
            *(v15 + 2) = BYTE2(v67);
          }
        }
      }

      v68 = *v9;
      v69 = *v15;
      *(v9 + 2) = *(v15 + 2);
      *v9 = v69;
      *(v15 + 2) = BYTE2(v68);
      *v15 = v68;
      v6 = v114;
      if (v118.i8[0])
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v21 = v16(*v11, *v15);
    v22 = (*a3)(*v10, *v9);
    if (v21)
    {
      v23 = *v15;
      if (v22)
      {
        v24 = *v10;
        *(v15 + 2) = *(a2 - 2);
        *v15 = v24;
        goto LABEL_38;
      }

      v46 = *v9;
      *(v15 + 2) = *(v9 + 2);
      *v15 = v46;
      *(v9 + 2) = BYTE2(v23);
      *v9 = v23;
      if ((*a3)(*v10, *v9))
      {
        v23 = *v9;
        v47 = *v10;
        *(v9 + 2) = *(a2 - 2);
        *v9 = v47;
LABEL_38:
        *(a2 - 2) = BYTE2(v23);
        *v10 = v23;
      }

LABEL_39:
      if (v118.i8[0])
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (!v22)
    {
      goto LABEL_39;
    }

    v29 = *v9;
    v30 = *v10;
    *(v9 + 2) = *(a2 - 2);
    *v9 = v30;
    *(a2 - 2) = BYTE2(v29);
    *v10 = v29;
    if (!(*a3)(*v9, *v15))
    {
      goto LABEL_39;
    }

    v31 = *v15;
    v32 = *v9;
    *(v15 + 2) = *(v9 + 2);
    *v15 = v32;
    *(v9 + 2) = BYTE2(v31);
    *v9 = v31;
    if (v118.i8[0])
    {
      goto LABEL_64;
    }

LABEL_63:
    v6 = v6 & 0xFFFFFFFF00000000 | *(v9 - 1);
    v5 = v5 & 0xFFFFFFFF00000000 | *v9;
    if (((*a3)(v6, v5) & 1) == 0)
    {
      result = sub_707D20(v9, a2, a3);
      v11 = result;
      goto LABEL_69;
    }

LABEL_64:
    v70 = sub_707EC8(v9, a2, a3);
    if ((v71 & 1) == 0)
    {
      goto LABEL_67;
    }

    v72 = sub_70807C(v9, v70, a3);
    v11 = v70 + 1;
    result = sub_70807C(v70 + 1, a2, a3);
    if (result)
    {
      a4 = -v13;
      a2 = v70;
      if (v72)
      {
        return result;
      }

      goto LABEL_2;
    }

    v12 = v13 + 1;
    if (!v72)
    {
LABEL_67:
      result = sub_706F3C(v9, v70, a3, -v13, v118.i8[0] & 1);
      v11 = v70 + 1;
LABEL_69:
      v118.i32[0] = 0;
      a4 = -v13;
      goto LABEL_3;
    }
  }

  if (v14 < 2)
  {
    return result;
  }

  if (v14 != 2)
  {
    goto LABEL_11;
  }

  v79 = *(a2 - 1);
  v78 = a2 - 1;
  result = (*a3)(v79, *v11);
  if (result)
  {
    v76 = *v11;
LABEL_81:
    v80 = *v78;
    *(v11 + 2) = *(v78 + 2);
    *v11 = v80;
    goto LABEL_82;
  }

  return result;
}

uint64_t sub_707A78(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t (**a6)(void, void))
{
  v12 = (*a6)(*a2, *a1);
  v13 = (*a6)(*a3, *a2);
  if (v12)
  {
    v14 = *a1;
    if (v13)
    {
      v15 = *a3;
      *(a1 + 2) = *(a3 + 2);
      *a1 = v15;
LABEL_9:
      *(a3 + 2) = BYTE2(v14);
      *a3 = v14;
      goto LABEL_10;
    }

    v20 = *a2;
    *(a1 + 2) = *(a2 + 2);
    *a1 = v20;
    *(a2 + 2) = BYTE2(v14);
    *a2 = v14;
    if ((*a6)(*a3, *a2))
    {
      v14 = *a2;
      v21 = *a3;
      *(a2 + 2) = *(a3 + 2);
      *a2 = v21;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v16 = *a2;
    v17 = *a3;
    *(a2 + 2) = *(a3 + 2);
    *a2 = v17;
    *(a3 + 2) = BYTE2(v16);
    *a3 = v16;
    if ((*a6)(*a2, *a1))
    {
      v18 = *a1;
      v19 = *a2;
      *(a1 + 2) = *(a2 + 2);
      *a1 = v19;
      *(a2 + 2) = BYTE2(v18);
      *a2 = v18;
    }
  }

LABEL_10:
  if ((*a6)(*a4, *a3))
  {
    v22 = *a3;
    v23 = *a4;
    *(a3 + 2) = *(a4 + 2);
    *a3 = v23;
    *(a4 + 2) = BYTE2(v22);
    *a4 = v22;
    if ((*a6)(*a3, *a2))
    {
      v24 = *a2;
      v25 = *a3;
      *(a2 + 2) = *(a3 + 2);
      *a2 = v25;
      *(a3 + 2) = BYTE2(v24);
      *a3 = v24;
      if ((*a6)(*a2, *a1))
      {
        v26 = *a1;
        v27 = *a2;
        *(a1 + 2) = *(a2 + 2);
        *a1 = v27;
        *(a2 + 2) = BYTE2(v26);
        *a2 = v26;
      }
    }
  }

  result = (*a6)(*a5, *a4);
  if (result)
  {
    v29 = *a4;
    v30 = *a5;
    *(a4 + 2) = *(a5 + 2);
    *a4 = v30;
    *(a5 + 2) = BYTE2(v29);
    *a5 = v29;
    result = (*a6)(*a4, *a3);
    if (result)
    {
      v31 = *a3;
      v32 = *a4;
      *(a3 + 2) = *(a4 + 2);
      *a3 = v32;
      *(a4 + 2) = BYTE2(v31);
      *a4 = v31;
      result = (*a6)(*a3, *a2);
      if (result)
      {
        v33 = *a2;
        v34 = *a3;
        *(a2 + 2) = *(a3 + 2);
        *a2 = v34;
        *(a3 + 2) = BYTE2(v33);
        *a3 = v33;
        result = (*a6)(*a2, *a1);
        if (result)
        {
          v35 = *a1;
          v36 = *a2;
          *(a1 + 2) = *(a2 + 2);
          *a1 = v36;
          *(a2 + 2) = BYTE2(v35);
          *a2 = v35;
        }
      }
    }
  }

  return result;
}

unsigned int *sub_707D20(unsigned int *a1, unint64_t a2, uint64_t (**a3)(unint64_t, unint64_t))
{
  v8 = a2;
  v10 = *a1;
  if ((*a3)(v10, *(a2 - 4)))
  {
    v11 = a1;
    do
    {
      v12 = v11[1];
      ++v11;
      v4 = v4 & 0xFFFFFFFF00000000 | v10;
      v3 = v3 & 0xFFFFFFFF00000000 | v12;
    }

    while (((*a3)(v4, v3) & 1) == 0);
  }

  else
  {
    v5 = (a1 + 1);
    do
    {
      v11 = v5;
      if (v5 >= v8)
      {
        break;
      }

      v5 += 4;
      v4 = v4 & 0xFFFFFFFF00000000 | v10;
      v3 = v3 & 0xFFFFFFFF00000000 | *v11;
    }

    while (!(*a3)(v4, v3));
  }

  if (v11 < v8)
  {
    do
    {
      v13 = *(v8 - 4);
      v8 -= 4;
      v3 = v3 & 0xFFFFFFFF00000000 | v10;
      v4 = v4 & 0xFFFFFFFF00000000 | v13;
    }

    while (((*a3)(v3, v4) & 1) != 0);
  }

  while (v11 < v8)
  {
    v14 = *v11;
    v15 = *v8;
    *(v11 + 2) = *(v8 + 2);
    *v11 = v15;
    *(v8 + 2) = BYTE2(v14);
    *v8 = v14;
    do
    {
      v16 = v11[1];
      ++v11;
      v6 = v6 & 0xFFFFFFFF00000000 | v10;
      v5 = v5 & 0xFFFFFFFF00000000 | v16;
    }

    while (!(*a3)(v6, v5));
    do
    {
      v17 = *(v8 - 4);
      v8 -= 4;
      v4 = v4 & 0xFFFFFFFF00000000 | v10;
      v3 = v3 & 0xFFFFFFFF00000000 | v17;
    }

    while (((*a3)(v4, v3) & 1) != 0);
  }

  if (v11 - 1 != a1)
  {
    v18 = *(v11 - 2);
    *(a1 + 2) = *(v11 - 2);
    *a1 = v18;
  }

  *(v11 - 2) = v10;
  *(v11 - 2) = BYTE2(v10);
  return v11;
}

unint64_t sub_707EC8(unsigned int *a1, unint64_t a2, uint64_t (**a3)(unint64_t, unint64_t))
{
  v10 = 0;
  v11 = *a1;
  do
  {
    v4 = v4 & 0xFFFFFFFF00000000 | a1[v10 + 1];
    v3 = v3 & 0xFFFFFFFF00000000 | v11;
    ++v10;
  }

  while (((*a3)(v4, v3) & 1) != 0);
  v12 = &a1[v10];
  v13 = &a1[v10 - 1];
  if (v10 == 1)
  {
    do
    {
      if (v12 >= a2)
      {
        break;
      }

      v15 = *(a2 - 4);
      a2 -= 4;
      v5 = v5 & 0xFFFFFFFF00000000 | v15;
      v4 = v4 & 0xFFFFFFFF00000000 | v11;
    }

    while (((*a3)(v5, v4) & 1) == 0);
  }

  else
  {
    do
    {
      v14 = *(a2 - 4);
      a2 -= 4;
      v5 = v5 & 0xFFFFFFFF00000000 | v14;
      v4 = v4 & 0xFFFFFFFF00000000 | v11;
    }

    while (!(*a3)(v5, v4));
  }

  if (v12 < a2)
  {
    v16 = a2;
    do
    {
      v17 = *v12;
      v18 = *v16;
      *(v12 + 2) = *(v16 + 2);
      *v12 = v18;
      *(v16 + 2) = BYTE2(v17);
      *v16 = v17;
      do
      {
        v19 = v12[1];
        ++v12;
        v6 = v6 & 0xFFFFFFFF00000000 | v19;
        v5 = v5 & 0xFFFFFFFF00000000 | v11;
      }

      while (((*a3)(v6, v5) & 1) != 0);
      do
      {
        v20 = *(v16 - 4);
        v16 -= 4;
        v4 = v4 & 0xFFFFFFFF00000000 | v20;
        v13 = v13 & 0xFFFFFFFF00000000 | v11;
      }

      while (!(*a3)(v4, v13));
    }

    while (v12 < v16);
    v13 = (v12 - 1);
  }

  if (v13 != a1)
  {
    v21 = *v13;
    *(a1 + 2) = *(v13 + 2);
    *a1 = v21;
  }

  *v13 = v11;
  *(v13 + 2) = BYTE2(v11);
  return v13;
}

BOOL sub_70807C(unsigned int *a1, unsigned int *a2, uint64_t (**a3)(unint64_t, unint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a1 + 1;
        v10 = (*a3)(a1[1], *a1);
        v11 = *(a2 - 1);
        v7 = a2 - 1;
        v12 = (*a3)(v11, *v9);
        if (v10)
        {
          v8 = *a1;
          if (!v12)
          {
            *a1 = *v9;
            *(a1 + 2) = *(a1 + 6);
            *(a1 + 6) = BYTE2(v8);
            *(a1 + 2) = v8;
            if (!(*a3)(*v7, a1[1]))
            {
              return 1;
            }

            v8 = *v9;
            v33 = *v7;
            *(a1 + 6) = *(v7 + 2);
            *v9 = v33;
            goto LABEL_13;
          }

LABEL_12:
          v13 = *v7;
          *(a1 + 2) = *(v7 + 2);
          *a1 = v13;
LABEL_13:
          *(v7 + 2) = BYTE2(v8);
          *v7 = v8;
          return 1;
        }

        if (!v12)
        {
          return 1;
        }

        v24 = a1[1];
        v25 = *v7;
        *(a1 + 6) = *(v7 + 2);
        *v9 = v25;
        *(v7 + 2) = BYTE2(v24);
        *v7 = v24;
        v26 = (*a3)(a1[1], *a1);
        break;
      case 4:
        v9 = a1 + 1;
        v19 = (*a3)(a1[1], *a1);
        v20 = a1 + 2;
        v21 = a2 - 1;
        v22 = (*a3)(a1[2], *v9);
        if (v19)
        {
          v23 = *a1;
          if (v22)
          {
            *a1 = *v20;
            *(a1 + 2) = *(a1 + 10);
            *(a1 + 10) = BYTE2(v23);
            *(a1 + 4) = v23;
          }

          else
          {
            *a1 = *v9;
            *(a1 + 2) = *(a1 + 6);
            *(a1 + 6) = BYTE2(v23);
            *(a1 + 2) = v23;
            if ((*a3)(a1[2], a1[1]))
            {
              v43 = *v9;
              *v9 = *v20;
              *(a1 + 6) = *(a1 + 10);
              *v20 = v43;
              *(a1 + 10) = BYTE2(v43);
            }
          }
        }

        else if (v22)
        {
          v30 = *a1;
          v31 = a1[1];
          *(a1 + 6) = *(a1 + 10);
          *v9 = *v20;
          *(a1 + 4) = v31;
          *(a1 + 10) = BYTE2(v31);
          if ((*a3)(a1[1], v30))
          {
            v32 = *a1;
            *a1 = *v9;
            *(a1 + 2) = *(a1 + 6);
            *(a1 + 2) = v32;
            *(a1 + 6) = BYTE2(v32);
          }
        }

        if (!(*a3)(*v21, *v20))
        {
          return 1;
        }

        v44 = *v20;
        v45 = *v21;
        *(a1 + 10) = *(v21 + 2);
        *v20 = v45;
        *(v21 + 2) = BYTE2(v44);
        *v21 = v44;
        if (!(*a3)(*v20, *v9))
        {
          return 1;
        }

        v46 = *a1;
        v47 = a1[1];
        *(a1 + 6) = *(a1 + 10);
        *v9 = *v20;
        *(a1 + 4) = v47;
        *(a1 + 10) = BYTE2(v47);
        v26 = (*a3)(a1[1], v46);
        break;
      case 5:
        sub_707A78(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      default:
        goto LABEL_14;
    }

    if (v26)
    {
      v48 = *a1;
      *a1 = *v9;
      *(a1 + 2) = *(v9 + 2);
      *(a1 + 2) = v48;
      *(a1 + 6) = BYTE2(v48);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(*(a2 - 1), *a1))
    {
      v8 = *a1;
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v14 = (a1 + 1);
  v15 = (*a3)(a1[1], *a1);
  v16 = a1 + 2;
  v17 = (*a3)(a1[2], *v14);
  if (v15)
  {
    v18 = *a1;
    if (v17)
    {
      *a1 = *v16;
      *(a1 + 2) = *(a1 + 10);
      *(a1 + 10) = BYTE2(v18);
      *(a1 + 4) = v18;
    }

    else
    {
      *a1 = *v14;
      *(a1 + 2) = *(a1 + 6);
      *(a1 + 6) = BYTE2(v18);
      *(a1 + 2) = v18;
      if ((*a3)(a1[2], a1[1]))
      {
        v34 = *v14;
        *v14 = *v16;
        *(a1 + 6) = *(a1 + 10);
        *v16 = v34;
        *(a1 + 10) = BYTE2(v34);
      }
    }
  }

  else if (v17)
  {
    v27 = *a1;
    v28 = a1[1];
    *(a1 + 6) = *(a1 + 10);
    *v14 = *v16;
    *(a1 + 4) = v28;
    *(a1 + 10) = BYTE2(v28);
    if ((*a3)(a1[1], v27))
    {
      v29 = *a1;
      *a1 = *v14;
      *(a1 + 2) = *(a1 + 6);
      *(a1 + 2) = v29;
      *(a1 + 6) = BYTE2(v29);
    }
  }

  v35 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v36 = 0;
  v37 = 0;
  while (1)
  {
    v38.i64[0] = 0xFFFFFFFF00000000;
    v38.i64[1] = 0xFFFFFFFF00000000;
    v39.i64[0] = *v16;
    v39.i64[1] = HIDWORD(*v16);
    v50 = vorrq_s8(vandq_s8(v50, v38), v39);
    if ((*a3)(v50.u64[1], v50.i64[0]))
    {
      break;
    }

LABEL_41:
    v16 = v35;
    v36 += 4;
    if (++v35 == a2)
    {
      return 1;
    }
  }

  v40 = *v35;
  v41 = v36;
  do
  {
    v42 = a1 + v41;
    *(v42 + 6) = *(a1 + v41 + 8);
    v42[14] = *(a1 + v41 + 10);
    if (v41 == -8)
    {
      *a1 = v40;
      *(a1 + 2) = BYTE2(v40);
      if (++v37 != 8)
      {
        goto LABEL_41;
      }

      return v35 + 1 == a2;
    }

    v14 = v14 & 0xFFFFFFFF00000000 | v40;
    v15 = v15 & 0xFFFFFFFF00000000 | *(v42 + 1);
    v41 -= 4;
  }

  while (((*a3)(v14, v15) & 1) != 0);
  *(a1 + v41 + 12) = v40;
  *(a1 + v41 + 14) = BYTE2(v40);
  if (++v37 != 8)
  {
    goto LABEL_41;
  }

  return v35 + 1 == a2;
}