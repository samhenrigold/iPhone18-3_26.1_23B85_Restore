void sub_1100AE0(_Unwind_Exception *a1)
{
  *(v2 - 128) = v1;
  sub_487EC4((v2 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_1100B5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (**a1 == 1)
  {
    sub_F6BA80(a2, 0);
    if (**(a1 + 8) != 1)
    {
LABEL_3:
      if (!sub_F6E658(a2, 0))
      {
        goto LABEL_8;
      }

LABEL_7:
      if (sub_F6E658(a2, 1))
      {
        goto LABEL_16;
      }

      goto LABEL_8;
    }
  }

  else if (**(a1 + 8) != 1)
  {
    goto LABEL_3;
  }

  sub_F6BA80(a2, 1);
  if (sub_F6E658(a2, 0))
  {
    goto LABEL_7;
  }

LABEL_8:
  v5 = sub_F6C814(a2);
  sub_43ECB4((v4 + 4392), v5, &__p);
  v6 = __p;
  v7 = __p != v22;
  if (__p == v22)
  {
    v7 = 0;
  }

  else
  {
    while (*(**v6 + 464 * v6[1] + 352) != 1)
    {
      v6 += 2;
      if (v6 == v22)
      {
        goto LABEL_14;
      }
    }

    v7 |= 2uLL;
  }

LABEL_14:
  sub_F6E648(a2, v7);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

LABEL_16:
  v8 = sub_73F1C(a2);
  v9 = *(v4 + 9928);
  if (*(v8 + 82))
  {
    v10 = 0x40000;
  }

  else
  {
    v10 = 0;
  }

  v13 = v9 > -1 && ((v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v9 - 1) < 0xFFFFFFFFFFFFFLL || (v9 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (v13 && *(v8 + 73) == 1 && *(v8 + 72) == 1)
  {
    v14 = *(v8 + 24);
    if ((*&v14 > -1 && ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v14 - 1) < 0xFFFFFFFFFFFFFLL || (*&v14 & 0x7FFFFFFFFFFFFFFFLL) == 0) && v14 > 0.0 && v14 > *(v4 + 9928))
    {
      v10 |= 0x20000uLL;
    }
  }

  return sub_F6E648(a2, v10);
}

void sub_1100D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1100D60@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *__src@<X0>, uint64_t a3@<X1>, unsigned __int8 *a4@<X2>)
{
  v5 = __src;
  while (a3)
  {
    v7 = *(__src + --a3);
    if (v7 != *a4)
    {
      v5 = (__src + a3 + 1);
      break;
    }
  }

  v8 = v5 - __src;
  if ((v5 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v8;
  if (v8)
  {
    __src = memmove(a1, __src, v8);
    *(a1 + v8) = 0;
  }

  else
  {
    *a1 = 0;
  }

  return __src;
}

uint64_t sub_1100E44(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 16);
  if (v3 != *(a2 + 24))
  {
    v4 = *v3;
    v5 = (*v3)[1];
    if (v5)
    {
      v6 = (v5 - *v5);
      if (*v6 >= 0x11u)
      {
        v7 = v6[8];
        if (v7)
        {
          if ((*(v5 + v7) & 4) != 0)
          {
            if ((v9 = (*v4 - **v4), *v9 < 0x2Fu) || (v10 = v9[23]) == 0 || ((v11 = *(*v4 + v10), v12 = v11 > 0x36, v13 = (1 << v11) & 0x44000000000008, !v12) ? (v14 = v13 == 0) : (v14 = 1), v14))
            {
              sub_311544(v4);
              operator new();
            }
          }
        }
      }
    }
  }

  return 0;
}

void sub_11012E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1101310(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (*a4 == 1)
  {
    v43 = *(*(a1 + 9936) + 88 * a3);
    if (sub_1108008(a2, &v43) >= 2)
    {
      v8 = *(a1 + 9936) + 88 * a3;
      v37 = *(v8 + 52);
      v38 = *(v8 + 48);
      v9 = *(v8 + 56);
      v10 = *(v8 + 64);
      v11 = sub_1107E10(a2, &v43);
      v12 = *(a1 + 9936);
      v13 = *(v12 + 88 * a3 + 4);
      if (v13 != -1)
      {
        v15 = v11;
        v16 = *(*(v12 + 88 * a3 + 32) + 152);
        while (1)
        {
          v17 = v12 + 88 * v13;
          v42 = *v17;
          v18 = *(v17 + 32);
          if (*(v18 + 40) == 1)
          {
            return 0xFFFFFFFFLL;
          }

          v16 &= *(v18 + 152);
          if (sub_1107FA0(a2, &v42) > 1)
          {
            break;
          }

LABEL_7:
          v12 = *(a1 + 9936);
          v13 = *(v12 + 88 * v13 + 4);
          if (v13 == -1)
          {
            return 0xFFFFFFFFLL;
          }
        }

        v19 = *(a1 + 9936) + 88 * v13;
        v20 = v38 - *(v19 + 48);
        v21 = v37 - *(v19 + 52);
        v22 = v9 - *(v19 + 56);
        if (!(v16 & 1 | ((*(a4 + 3) & 1) == 0)))
        {
          sub_1101960(a1, a2, v42, 1, *(a4 + 1), *(a4 + 2));
          v39 = v42 | (v43 << 32);
          sub_1101B58(a1 + 11032, &v39, v40);
          if (v40[0])
          {
            v23 = *(v41 + 16);
            if (v23 < *(a4 + 64))
            {
              v24 = *(v41 + 8);
              if (v24 == v20)
              {
                v25 = *(v41 + 12);
                if (v25 == v21)
                {
                  if (v23 >= v22)
                  {
                    goto LABEL_34;
                  }
                }

                else if (v25 >= v21)
                {
                  goto LABEL_34;
                }

LABEL_20:
                v26 = *(a4 + 48) * v23;
                if (v26 >= 0.0)
                {
                  if (v26 >= 4.50359963e15)
                  {
                    goto LABEL_26;
                  }

                  v27 = (v26 + v26) + 1;
                }

                else
                {
                  if (v26 <= -4.50359963e15)
                  {
                    goto LABEL_26;
                  }

                  v27 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
                }

                v26 = (v27 >> 1);
LABEL_26:
                if (*(v41 + 32) <= v26)
                {
                  goto LABEL_34;
                }

                v28 = *(a4 + 40) * v22;
                if (v28 >= 0.0)
                {
                  if (v28 >= 4.50359963e15)
                  {
                    goto LABEL_33;
                  }

                  v29 = (v28 + v28) + 1;
                }

                else
                {
                  if (v28 <= -4.50359963e15)
                  {
                    goto LABEL_33;
                  }

                  v29 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
                }

                v28 = (v29 >> 1);
LABEL_33:
                if (v23 < v28)
                {
                  return v13;
                }

                goto LABEL_34;
              }

              if (v24 < v20)
              {
                goto LABEL_20;
              }
            }
          }
        }

LABEL_34:
        sub_1101960(a1, a2, v42, 0, *(a4 + 1), *(a4 + 2));
        v39 = v42 | (v43 << 32);
        sub_1101B58(a1 + 10264, &v39, v40);
        if (v40[0] && *(v41 + 12) < *(a4 + 56))
        {
          v31 = sub_108CF40((v41 + 8), *(a4 + 8), v30);
          if (v20 == v31)
          {
            if (v21 == HIDWORD(v31))
            {
              if (v32 < v22)
              {
                return v13;
              }
            }

            else if (v21 > SHIDWORD(v31))
            {
              return v13;
            }
          }

          else if (v20 > v31)
          {
            return v13;
          }

          v33 = v22 <= 1 ? 1 : v22;
          v34 = (v10 - *(*(a1 + 9936) + 88 * v13 + 64)) / v33;
          if (v34 < *(a4 + 16))
          {
            v35 = sub_1107E10(a2, &v42);
            if (v15 < v35)
            {
              v35 = v15;
            }

            if (v34 < *(a4 + 32) * v35)
            {
              v36 = *(v41 + 16);
              if (v36 <= 1)
              {
                v36 = 1;
              }

              if (*(a4 + 24) * (*(v41 + 24) / v36) > v34)
              {
                return v13;
              }
            }
          }
        }

        goto LABEL_7;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_11016EC(__int128 *a1)
{
  v18 = *a1;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v2 = *(a1 + 2);
  v1 = *(a1 + 3);
  if (v1 != v2)
  {
    if (((v1 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v4 = *(a1 + 5);
  v3 = *(a1 + 6);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = a1[4];
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v6 = *(a1 + 10);
  v5 = *(a1 + 11);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v8 = *(a1 + 13);
  v7 = *(a1 + 14);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = sub_11038B0(&v18, &v11);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  return v9;
}

void sub_1101918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_334D18(&a9);
  sub_334D18(&a17);
  _Unwind_Resume(a1);
}

void sub_1101934(void *a1)
{
  if (!v1)
  {
    sub_4A48(a1);
  }

  operator delete(v1);
  sub_4A48(a1);
}

uint64_t sub_1101960(uint64_t result, uint64_t a2, unsigned int a3, int a4, char a5, char a6)
{
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  v6 = a3 >> 6;
  v7 = 1 << a3;
  if (a4)
  {
    v8 = (*(result + 10112) + 8 * v6);
    v9 = *v8;
    if ((*v8 & v7) == 0)
    {
      v10 = 11032;
      v11 = 9868;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = (*(result + 10088) + 8 * v6);
    v9 = *v8;
    if ((*v8 & v7) == 0)
    {
      v10 = 10264;
      v11 = 9864;
LABEL_6:
      *v8 = v9 | v7;
      ++*(result + 4368);
      v12 = result + v10;
      v28 = *(result + v11);
      v13 = result;
      v26 = sub_681D7C(a2);
      sub_1103C34(v27, 0x400u);
      v24 = v12;
      v25 = &v28;
      v22 = &v32;
      v23 = a2;
      v18 = &v31;
      v19 = &v30;
      v20 = &v29;
      v21 = v13;
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      operator new();
    }
  }

  return result;
}

void sub_1101B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  v25 = STACK[0x408];
  if (STACK[0x408])
  {
    STACK[0x410] = v25;
    operator delete(v25);
    sub_404190(va);
    _Unwind_Resume(a1);
  }

  sub_404190(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1101B58@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = (v4 + 0x388152A534) ^ 0xDEADBEEFLL;
  v7 = v5 + (v6 << 6) + (v6 >> 2) + 2654435769u;
  v8 = (v7 ^ ~v6) + ((v7 ^ v6) << 21);
  v9 = 21 * ((265 * (v8 ^ (v8 >> 24))) ^ ((265 * (v8 ^ (v8 >> 24))) >> 14));
  v10 = 2147483649u * (v9 ^ (v9 >> 28));
  v11 = (result + 48 * (((((v9 ^ (v9 >> 28)) >> 8) ^ ((-2147483647 * (v9 ^ (v9 >> 28))) >> 16)) ^ ((-2147483647 * (v9 ^ (v9 >> 28))) >> 24)) & 0xF));
  v12 = v10 >> 7;
  v13 = v11[3];
  v14 = *v11;
  v15 = 0x101010101010101 * (v10 & 0x7F);
  while (1)
  {
    v16 = v12 & v13;
    v17 = *(v14 + v16);
    v18 = ((v17 ^ v15) - 0x101010101010101) & ~(v17 ^ v15) & 0x8080808080808080;
    if (v18)
    {
      break;
    }

LABEL_8:
    if ((v17 & (~v17 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_11;
    }

    v3 += 8;
    v12 = v3 + v16;
  }

  while (1)
  {
    v19 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v13;
    v20 = v11[1] + 48 * v19;
    if (*v20 == v4 && *(v20 + 4) == v5)
    {
      break;
    }

    v18 &= v18 - 1;
    if (!v18)
    {
      goto LABEL_8;
    }
  }

  if (v13 == v19)
  {
LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
    return result;
  }

  *a3 = v11;
  a3[1] = (result + 768);
  a3[2] = (v14 + v19);
  a3[3] = v20;
  a3[4] = (v14 + v13);
  return result;
}

uint64_t sub_1101CA4(__int128 *a1, __int128 *a2)
{
  v19 = *a1;
  v2 = *(a1 + 3);
  v20 = *(a1 + 2);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v3 = *(a1 + 4);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v5 = *(a1 + 6);
  v4 = *(a1 + 7);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *a2;
  v6 = *(a2 + 3);
  v12 = *(a2 + 2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v7 = *(a2 + 4);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v9 = *(a2 + 6);
  v8 = *(a2 + 7);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 0;
}

void sub_1101F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

BOOL sub_1102008(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = sub_3B1348(*a1);
  if (sub_F6D024(a2) <= a3)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0.0;
  v9 = a3;
  while (v7 < *(a1 + 9400))
  {
    v11 = sub_F6D17C(a2, v9);
    v12 = v11;
    if (*(a1 + 9417) == 1)
    {
      v13 = v11[1];
      if (v13)
      {
        v14 = (v13 - *v13);
        if (*v14 >= 0x11u)
        {
          v15 = v14[8];
          if (v15)
          {
            if ((*(v13 + v15) & 4) != 0)
            {
              goto LABEL_5;
            }
          }
        }
      }
    }

    if (*(a1 + 9416) == 1)
    {
      v16 = (*v11 - **v11);
      if (*v16 >= 0x2Fu)
      {
        v17 = v16[23];
        if (v17)
        {
          v18 = *(*v11 + v17);
          v19 = v18 > 0x2A;
          v20 = (1 << v18) & 0x50426810004;
          if (!v19 && v20 != 0)
          {
            goto LABEL_5;
          }
        }
      }
    }

    v22 = sub_36383C(v6, v11[4] & 0xFFFFFFFFFFFFFFLL);
    v23 = 0.0;
    v24 = 0.0;
    if (!v22)
    {
      goto LABEL_33;
    }

    v25 = &v22[-*v22];
    v26 = *v25;
    if (v26 >= 0xB && *(v25 + 5))
    {
      v27 = *&v22[*(v25 + 5)];
      v28 = *(v6 + 3880);
      if (!*(v6 + 3880))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v27 = 0xFFFF;
      v28 = *(v6 + 3880);
      if (!*(v6 + 3880))
      {
        goto LABEL_30;
      }
    }

    if (v26 >= 0x11)
    {
      v29 = *(v25 + 8);
      if (v29)
      {
        v30 = &v22[v29 + *&v22[v29]];
        if (*v30 >= v28)
        {
          v31 = *&v30[2 * v28 + 2];
          if ((v31 + 1) > 1u)
          {
            v32 = v31;
            goto LABEL_32;
          }
        }
      }
    }

LABEL_30:
    if (v27 != 0xFFFF)
    {
      v32 = v27;
LABEL_32:
      v24 = v32 / 1000.0;
LABEL_33:
      v33 = *v12;
      v34 = (*v12 - **v12);
      if (*v34 < 9u)
      {
        goto LABEL_3;
      }

      goto LABEL_34;
    }

    v24 = 0.3;
    v33 = *v12;
    v34 = (*v12 - **v12);
    if (*v34 < 9u)
    {
      goto LABEL_3;
    }

LABEL_34:
    v35 = v34[4];
    if (v35)
    {
      v10 = *&v33[v35];
      v23 = v10;
      goto LABEL_4;
    }

LABEL_3:
    v10 = 0;
LABEL_4:
    v8 = v8 + v24 * v23;
    v7 += v10;
LABEL_5:
    if (++v9 >= sub_F6D024(a2))
    {
      break;
    }
  }

  if (!v7)
  {
    return 0;
  }

  v36 = v8 / v7;
  if (v36 > *(a1 + 9424))
  {
    return 0;
  }

  v37 = sub_F6D024(a2);
  v38 = v36;
  if (v9 <= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v9;
  }

  if (v9 < v37)
  {
    v40 = 0;
    v41 = v39 - 1;
    v38 = v36;
    while (1)
    {
      v44 = sub_F6D17C(a2, v9);
      v45 = sub_36383C(v6, v44[4] & 0xFFFFFFFFFFFFFFLL);
      if (v45)
      {
        break;
      }

      v42 = 0.0;
LABEL_47:
      if (v38 < v42)
      {
        v38 = v42;
      }

      v40 += sub_F6D254(a2, v9);
      if (v40 > *(a1 + 9392) || v41 == v9++)
      {
        goto LABEL_68;
      }
    }

    v46 = &v45[-*v45];
    v47 = *v46;
    if (v47 >= 0xB && *(v46 + 5))
    {
      v48 = *&v45[*(v46 + 5)];
      v49 = *(v6 + 3880);
      if (!*(v6 + 3880))
      {
        goto LABEL_63;
      }
    }

    else
    {
      v48 = 0xFFFF;
      v49 = *(v6 + 3880);
      if (!*(v6 + 3880))
      {
        goto LABEL_63;
      }
    }

    if (v47 >= 0x11)
    {
      v50 = *(v46 + 8);
      if (v50)
      {
        v51 = &v45[v50 + *&v45[v50]];
        if (*v51 >= v49)
        {
          v52 = *&v51[2 * v49 + 2];
          if ((v52 + 1) > 1u)
          {
            v53 = v52;
LABEL_65:
            v42 = v53 / 1000.0;
            goto LABEL_47;
          }
        }
      }
    }

LABEL_63:
    if (v48 == 0xFFFF)
    {
      v42 = 0.3;
      goto LABEL_47;
    }

    v53 = v48;
    goto LABEL_65;
  }

LABEL_68:
  v54 = *(a1 + 9432);
  if (v38 < v54)
  {
    return 0;
  }

  v55 = v36;
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_96;
  }

  v56 = 0;
  v57 = a3 & 0x7FFFFFFF;
  v58 = a3;
  if (a3 >= -1)
  {
    v58 = -1;
  }

  v59 = v58 + 1;
  v55 = v36;
  do
  {
    v62 = sub_F6D17C(a2, v57);
    v63 = sub_36383C(v6, v62[4] & 0xFFFFFFFFFFFFFFLL);
    if (!v63)
    {
      v60 = 0.0;
      goto LABEL_74;
    }

    v64 = &v63[-*v63];
    v65 = *v64;
    if (v65 >= 0xB && *(v64 + 5))
    {
      v66 = *&v63[*(v64 + 5)];
      v67 = *(v6 + 3880);
      if (!*(v6 + 3880))
      {
        goto LABEL_90;
      }
    }

    else
    {
      v66 = 0xFFFF;
      v67 = *(v6 + 3880);
      if (!*(v6 + 3880))
      {
        goto LABEL_90;
      }
    }

    if (v65 >= 0x11)
    {
      v68 = *(v64 + 8);
      if (v68)
      {
        v69 = &v63[v68 + *&v63[v68]];
        if (*v69 >= v67)
        {
          v70 = *&v69[2 * v67 + 2];
          if ((v70 + 1) > 1u)
          {
            v71 = v70;
            goto LABEL_92;
          }
        }
      }
    }

LABEL_90:
    if (v66 != 0xFFFF)
    {
      v71 = v66;
LABEL_92:
      v60 = v71 / 1000.0;
      goto LABEL_74;
    }

    v60 = 0.3;
LABEL_74:
    if (v55 < v60)
    {
      v55 = v60;
    }

    v56 += sub_F6D254(a2, v57);
  }

  while (v56 <= *(a1 + 9392) && v59 != v57--);
  v54 = *(a1 + 9432);
LABEL_96:
  if (v55 < v54)
  {
    return 0;
  }

  if (v38 >= v55)
  {
    v73 = v55;
  }

  else
  {
    v73 = v38;
  }

  return v36 < v73 * *(a1 + 9440);
}

void sub_1102514(void *a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v2)
    {
      v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v3 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v3 = v2;
    }

    if (v3)
    {
      if (v3 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    sub_10F475C(8 * ((a1[1] - *a1) >> 3), a2);
  }

  sub_1794();
}

void sub_1102628(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1102640(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v10;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  v11 = *(a2 + 160);
  *(a1 + 168) = 0;
  *(a1 + 160) = v11;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v13 = *(a2 + 168);
  v12 = *(a2 + 176);
  if (v12 != v13)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  v14 = *(a2 + 192);
  v15 = *(a2 + 208);
  v16 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v16;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  v17 = *(a2 + 256);
  v18 = *(a2 + 272);
  v19 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v19;
  *(a1 + 256) = v17;
  *(a1 + 272) = v18;
  v20 = *(a2 + 320);
  v21 = *(a2 + 336);
  v22 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v22;
  *(a1 + 320) = v20;
  *(a1 + 336) = v21;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  v24 = *(a2 + 392);
  v23 = *(a2 + 400);
  if (v23 != v24)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 416) = *(a2 + 416);
  if (*(a2 + 447) < 0)
  {
    sub_325C((a1 + 424), *(a2 + 424), *(a2 + 432));
  }

  else
  {
    v25 = *(a2 + 424);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 424) = v25;
  }

  if (*(a2 + 471) < 0)
  {
    sub_325C((a1 + 448), *(a2 + 448), *(a2 + 456));
  }

  else
  {
    v26 = *(a2 + 448);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 448) = v26;
  }

  *(a1 + 472) = *(a2 + 472);
  return a1;
}

void sub_1102834(_Unwind_Exception *exception_object)
{
  if (*(v1 + 447) < 0)
  {
    operator delete(*v2);
    v5 = *(v1 + 392);
    if (!v5)
    {
LABEL_3:
      v6 = *v3;
      if (!*v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v5 = *(v1 + 392);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 400) = v5;
  operator delete(v5);
  v6 = *v3;
  if (!*v3)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  *(v1 + 176) = v6;
  operator delete(v6);
  goto LABEL_5;
}

void sub_11028A4()
{
  if (!*v0)
  {
    JUMPOUT(0x1102858);
  }

  JUMPOUT(0x1102850);
}

void sub_11028B4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
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

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    if (v5 != v4)
    {
      v15 = v5;
      v16 = v14;
      do
      {
        *v16 = *v15;
        *(v16 + 2) = *(v15 + 2);
        *v15 = 0;
        *(v15 + 1) = 0;
        *(v15 + 2) = 0;
        v15 += 24;
        v16 += 24;
      }

      while (v15 != v4);
      do
      {
        v17 = *v5;
        if (*v5)
        {
          *(v5 + 1) = v17;
          operator delete(v17);
        }

        v5 += 24;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_1102AB0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 1)
  {
    if (a2)
    {
      v10 = 2 * a2;
      bzero(*(a1 + 8), 2 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 1) + a2;
    if (v7 < 0)
    {
      sub_1794();
    }

    v8 = v3 - v5;
    if (v8 > v7)
    {
      v7 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = (2 * (v6 >> 1));
    v12 = 2 * a2;
    bzero(v11, 2 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_1102BF8(void *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v7;
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 80) = *(a2 + 80);
  v8 = 88 * v2 + 88;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 - v10;
  v12 = v6 + v11;
  if (*a1 != v10)
  {
    v13 = v6 + v11;
    v14 = *a1;
    do
    {
      *v13 = *v14;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = *(v14 + 1);
      *(v13 + 24) = v14[3];
      v14[1] = 0;
      v14[2] = 0;
      v14[3] = 0;
      v15 = *(v14 + 2);
      v16 = *(v14 + 3);
      v17 = *(v14 + 4);
      *(v13 + 80) = v14[10];
      *(v13 + 48) = v16;
      *(v13 + 64) = v17;
      *(v13 + 32) = v15;
      v14 += 11;
      v13 += 88;
    }

    while (v14 != v10);
    do
    {
      v18 = v9[1];
      if (v18)
      {
        v9[2] = v18;
        operator delete(v18);
      }

      v9 += 11;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v12;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_1102DC0(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v2)
    {
      v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v3 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v3 = v2;
    }

    if (v3)
    {
      if (v3 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    if (*(a2 + 8) != 5)
    {
      sub_5AF20();
    }

    sub_10F554C(8 * ((a1[1] - *a1) >> 3), *a2);
  }

  sub_1794();
}

void sub_1102EEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

size_t *sub_1102F04(size_t *a1, unsigned int a2)
{
  *(a1 + 12) = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  sub_428E0(a1 + 3, a2);
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) <= 0x7E)
  {
    operator new();
  }

  return a1;
}

void sub_1102FCC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_21E2018(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1102FF0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_19594F8(&v14);
  if (a1 != a2)
  {
    v8 = a1;
    do
    {
      if (v8 != a1)
      {
        v9 = strlen(a3);
        sub_4A5C(&v14, a3, v9);
      }

      sub_F93A08(&v14, __clz(__rbit64(v8)));
      v8 &= v8 - 1;
    }

    while (v8 != a2);
  }

  if ((v24 & 0x10) != 0)
  {
    v11 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v11 = v20;
    }

    v12 = v19;
    v10 = v11 - v19;
    if (v11 - v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v10 = 0;
      a4[23] = 0;
      goto LABEL_17;
    }

    v12 = v17;
    v10 = v18 - v17;
    if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  a4[23] = v10;
  if (v10)
  {
    memmove(a4, v12, v10);
  }

LABEL_17:
  a4[v10] = 0;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v16);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1103250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_1103264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void *sub_1103278(void *a1, unint64_t a2, uint64_t a3)
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

void sub_11033F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
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

void sub_1103558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_334D18(va);
  v18 = *(v16 - 96);
  if (v18)
  {
    *(v16 - 88) = v18;
    operator delete(v18);
    v19 = *(v16 - 72);
    if (!v19)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v19 = *(v16 - 72);
    if (!v19)
    {
      goto LABEL_3;
    }
  }

  *(v16 - 64) = v19;
  operator delete(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_11035B8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = 0;
  *a1 = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v6 = *(a2 + 5);
  v5 = *(a2 + 6);
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

void sub_11036A8(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11036DC(uint64_t a1, void *a2, void *a3, char a4)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = a3[1];
  if (v5 != *a3)
  {
    if (((v5 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_110387C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  v5 = v1[2];
  if (v5)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11038B0(__int128 *a1, unint64_t *a2)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = *(a1 + 5);
  v4 = *(a1 + 6);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = a2[2];
  v6 = a2[3];
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = a2[5];
  v8 = a2[6];
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 1;
}

void sub_1103BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    operator delete(v9);
    sub_334D18(&a9);
    _Unwind_Resume(a1);
  }

  sub_334D18(&a9);
  _Unwind_Resume(a1);
}

void sub_1103C1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1103C34(void *a1, unsigned int a2)
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
  sub_1102F04(v5 + 103, a2);
  if (0xAAAAAAAAAAAAAAABLL * ((a1[98] - a1[96]) >> 4) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_1103D38(_Unwind_Exception *a1)
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

void sub_1103D98(uint64_t a1, int **a2, unsigned int **a3, unsigned int **a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      v20 = *(a6 + 16);
      v23[0] = *a6;
      v23[1] = v20;
      v24 = *(a6 + 32);
      v25 = v19;
      sub_110429C(a1 + 8, &v25, v23);
    }

    while (v17 != v18);
  }

  sub_1103F04(a1, a3, a4, a5);
}

void sub_1103F04(uint64_t a1, unsigned int **a2, unsigned int **a3, uint64_t a4)
{
  while (*(a1 + 880))
  {
    v6 = *(a1 + 832);
    v7 = (*(a1 + 776) + 48 * *v6);
    v8 = *v7;
    v9 = *(v7 + 2);
    v45 = *(v7 + 3);
    v10 = v7[3];
    v43 = *(v7 + 4);
    v44 = *(v7 + 2);
    v42 = *(v7 + 5);
    sub_DD38(a1 + 800, v6);
    v11 = *(a1 + 832);
    *(*(a1 + 856) + 4 * *v11) = -1;
    v12 = *(a1 + 880) - 1;
    *(a1 + 880) = v12;
    if (v12)
    {
      v13 = &v11[12 * v12];
      *v11 = *v13;
      *(v11 + 2) = *(v13 + 2);
      *(v11 + 6) = *(v13 + 6);
      *(v11 + 5) = *(v13 + 5);
      *(*(a1 + 856) + 4 * **(a1 + 832)) = 0;
      sub_1104AF0((a1 + 832), 0);
    }

    *(a1 + 840) -= 48;
    if (v9 > **a2)
    {
      break;
    }

    v51 = v8;
    if (**a3 != v8 && sub_1108008(a3[1], &v51) >= 2)
    {
      v14 = a3[2];
      v50 = **a3 | (v51 << 32);
      sub_1105004(v14, &v50, &v46);
      v15 = v46;
      if (LOBYTE(v47) == 1)
      {
        v16 = *(v46 + 8) + 48 * *(&v46 + 1);
        *v16 = v50;
        *(v16 + 8) = -NAN;
        *(v16 + 16) = 0x7FFFFFFFFFFFFFFFLL;
        *(v16 + 24) = 0;
        *(v16 + 32) = 0;
        *(v16 + 40) = 0;
      }

      v17 = *(v15 + 8) + 48 * *(&v46 + 1);
      *(v17 + 8) = v9;
      *(v17 + 12) = v45;
      *(v17 + 16) = v44;
      *(v17 + 24) = v10;
      *(v17 + 32) = v43;
      *(v17 + 40) = v42;
    }

    v18 = (v8 + 1);
    v19 = *(*a1 + 48);
    if (v18 >= (*(*a1 + 56) - v19) >> 2)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v39 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
    }

    v20 = *(v19 + 4 * v8);
    v21 = *(v19 + 4 * v18);
    if (v20 != v21)
    {
      v22 = *(*a1 + 72);
      v23 = v22 + 208 * v21;
      v24 = v22 + 208 * v20;
      do
      {
        v29 = *(a4 + 24);
        if (**a4 != 1 || *(v24 + 153) == 1)
        {
          v30 = *(v24 + 120);
          v31 = *(v24 + 124);
          v32 = *(v24 + 128);
          v33 = v30 == -1 || v31 == 0x7FFFFFFF;
          v34 = v33 || v32 == 0x7FFFFFFFFFFFFFFFLL;
          if (!v34 && ((**(a4 + 8) & 1) != 0 || (*(v24 + 137) & 0x20) == 0) && ((**(a4 + 16) & 1) != 0 || (*(v24 + 137) & 0x10) == 0) && (*(v24 + 40) & 1) == 0)
          {
            v35 = *(v24 + 16);
            v36 = *(v24 + 24);
            if (v35 == v36)
            {
LABEL_15:
              LODWORD(v50) = *(v24 + 8);
              v25 = (v30 + v9) | ((v31 + v45) << 32);
              v26 = v10 + *(v24 + 160);
              v27 = *(v24 + 168) + v43;
              v28 = *(v24 + 176) + v42;
              *&v46 = v25;
              *(&v46 + 1) = v32 + v44;
              v47 = v26;
              v48 = v27;
              v49 = v28;
              sub_1104C98(a1 + 8, &v50, &v46);
            }

            else
            {
              while (1)
              {
                sub_438BE4((v29 + 4392), *(*v35 + 32) & 0xFFFFFFFFFFFFFFLL, &v46);
                v37 = v46;
                if (v46)
                {
                  *(&v46 + 1) = v46;
                  operator delete(v46);
                }

                if (v37 != *(&v37 + 1))
                {
                  break;
                }

                v35 += 8;
                if (v35 == v36)
                {
                  v30 = *(v24 + 120);
                  v31 = *(v24 + 124);
                  v32 = *(v24 + 128);
                  goto LABEL_15;
                }
              }
            }
          }
        }

        v24 += 208;
      }

      while (v24 != v23);
    }
  }
}

void sub_110429C(uint64_t a1, unsigned int *a2, __int128 *a3)
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
    v19 = -1431655765 * ((*(a1 + 776) - *(a1 + 768)) >> 4);
    sub_F8B0C4(a1, a2, &v39);
    v20 = v40;
    v21 = *(v39 + 8);
    if (v41 == 1)
    {
      *(v21 + 8 * v40) = *a2;
    }

    *(v21 + 8 * v20 + 4) = v19;
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 >= v23)
    {
      v27 = *(a1 + 768);
      v28 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v27) >> 4) + 1;
      if (v28 > 0x555555555555555)
      {
        sub_1794();
      }

      v29 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v27) >> 4);
      if (2 * v29 > v28)
      {
        v28 = 2 * v29;
      }

      if (v29 >= 0x2AAAAAAAAAAAAAALL)
      {
        v30 = 0x555555555555555;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        if (v30 <= 0x555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v36 = 16 * ((v22 - v27) >> 4);
      *v36 = *a2;
      v37 = a3[1];
      *(v36 + 8) = *a3;
      *(v36 + 24) = v37;
      *(v36 + 40) = *(a3 + 4);
      v26 = v36 + 48;
      v38 = (v36 - (v22 - v27));
      memcpy(v38, v27, v22 - v27);
      *(a1 + 768) = v38;
      *(a1 + 776) = v26;
      *(a1 + 784) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v22 = *a2;
      v24 = *a3;
      v25 = a3[1];
      *(v22 + 40) = *(a3 + 4);
      *(v22 + 24) = v25;
      *(v22 + 8) = v24;
      v26 = v22 + 48;
    }

    *(a1 + 776) = v26;
    sub_11045B4((a1 + 824), v19, a3);
    return;
  }

  v31 = v17 + 8 * v18;
  v32 = *(a1 + 768) + 48 * *(v31 + 4);
  v33 = *a3;
  v34 = a3[1];
  *(v32 + 40) = *(a3 + 4);
  *(v32 + 24) = v34;
  *(v32 + 8) = v33;
  v35 = *(v31 + 4);

  sub_11045B4((a1 + 824), v35, a3);
}

void sub_11045B4(uint64_t *result, unsigned int a2, uint64_t a3)
{
  v4 = result[3];
  if (a2 >= ((result[4] - v4) >> 2) || (v5 = *(v4 + 4 * a2), v5 == -1))
  {
    sub_1104778(result, a2, a3);
    return;
  }

  v6 = *result + 48 * v5;
  v8 = *(v6 + 8);
  v7 = *(v6 + 12);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v12 = *(v6 + 32);
  v11 = *(v6 + 40);
  v13 = *(a3 + 32);
  v14 = *(a3 + 16);
  *(v6 + 8) = *a3;
  *(v6 + 24) = v14;
  *(v6 + 40) = v13;
  if (*a3 != v8)
  {
    if (*a3 < v8)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

  v15 = *(a3 + 4);
  v16 = v15 < v7;
  if (v15 != v7 || (v17 = *(a3 + 8), v16 = v17 < v9, v17 != v9))
  {
LABEL_29:
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_30:
    sub_1104AF0(result, v5);
    return;
  }

  v18 = *(a3 + 16);
  if (v18 == v10)
  {
    v48 = *(a3 + 24);
    v16 = v48 < v12;
    if (v48 == v12)
    {
      v16 = *(a3 + 32) < v11;
    }

    goto LABEL_29;
  }

  if (v18 >= v10)
  {
    goto LABEL_30;
  }

LABEL_11:
  if (v5)
  {
    v19 = *result;
    do
    {
      v30 = v5 - 1;
      v31 = (v5 - 1) >> 2;
      v32 = v19 + 48 * v31;
      v33 = v32 + 8;
      v34 = *(v32 + 8);
      v35 = v19 + 48 * v5;
      v37 = *(v35 + 8);
      v36 = v35 + 8;
      v38 = v34 >= v37;
      if (v34 != v37)
      {
        if (!v38)
        {
          return;
        }

        goto LABEL_15;
      }

      v39 = *(v32 + 12);
      v40 = *(v35 + 12);
      v41 = v39 < v40;
      if (v39 == v40)
      {
        v42 = *(v32 + 16);
        v43 = *(v35 + 16);
        v41 = v42 < v43;
        if (v42 == v43)
        {
          v44 = *(v32 + 24);
          v45 = *(v35 + 24);
          if (v44 != v45)
          {
            if (v44 < v45)
            {
              return;
            }

            goto LABEL_15;
          }

          v46 = *(v32 + 32);
          v47 = *(v35 + 32);
          v41 = v46 < v47;
          if (v46 == v47)
          {
            v41 = *(v32 + 40) < *(v35 + 40);
          }
        }
      }

      if (v41)
      {
        return;
      }

LABEL_15:
      v20 = *v35;
      *v35 = *v32;
      *v32 = v20;
      v21 = *v36;
      v22 = *(v35 + 24);
      v23 = *(v35 + 40);
      v24 = *(v33 + 32);
      v25 = *(v33 + 16);
      *v36 = *v33;
      *(v36 + 16) = v25;
      *(v36 + 32) = v24;
      *(v33 + 32) = v23;
      *v33 = v21;
      *(v33 + 16) = v22;
      v19 = *result;
      v26 = *(*result + 48 * v5);
      v27 = result[3];
      v28 = *(*result + 48 * v31);
      v29 = *(v27 + 4 * v26);
      *(v27 + 4 * v26) = *(v27 + 4 * v28);
      *(v27 + 4 * v28) = v29;
      LODWORD(v5) = v30 >> 2;
    }

    while (v30 >= 4);
  }
}

void sub_1104778(uint64_t *a1, unsigned int a2, __int128 *a3)
{
  v6 = a2;
  v8 = a1[3];
  v9 = a1[4];
  v7 = a1 + 3;
  v10 = v9 - v8;
  v11 = (v9 - v8) >> 2;
  if (v11 <= a2)
  {
    do
    {
      v15 = (v10 >> 1) | 1;
      if (v11 <= v10 >> 1)
      {
        sub_42CC4(v7, v15 - v11);
        v8 = a1[3];
        v9 = a1[4];
        v10 = v9 - v8;
        v16 = (v9 - v8) >> 2;
        if (v11 < v16)
        {
LABEL_12:
          memset((v8 + 4 * v11), 255, v10 - 4 * v11);
        }
      }

      else if (v15 >= v11)
      {
        v10 = v9 - v8;
        v16 = (v9 - v8) >> 2;
        if (v11 < v16)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v9 = v8 + 4 * v15;
        a1[4] = v9;
        v10 = 4 * v15;
        v16 = (4 * v15) >> 2;
        if (v11 < v16)
        {
          goto LABEL_12;
        }
      }

      v11 = v16;
    }

    while (v16 <= v6);
  }

  v44 = a2;
  v12 = a3[1];
  v45 = *a3;
  v46 = v12;
  v47 = *(a3 + 4);
  sub_11049A4(a1, &v44);
  v13 = *(a1 + 12);
  *(a1[3] + 4 * v6) = v13;
  *(a1 + 12) = v13 + 1;
  if (v13)
  {
    v14 = *a1;
    do
    {
      v26 = v13 - 1;
      v27 = (v13 - 1) >> 2;
      v28 = (v14 + 48 * v27);
      v29 = (v28 + 2);
      v30 = v28[2];
      v31 = (v14 + 48 * v13);
      v33 = v31[2];
      v32 = (v31 + 2);
      v34 = v30 >= v33;
      if (v30 != v33)
      {
        if (!v34)
        {
          return;
        }

        goto LABEL_15;
      }

      v35 = v28[3];
      v36 = v31[3];
      v37 = v35 < v36;
      if (v35 == v36)
      {
        v38 = *(v28 + 2);
        v39 = *(v31 + 2);
        v37 = v38 < v39;
        if (v38 == v39)
        {
          v40 = *(v28 + 3);
          v41 = *(v31 + 3);
          if (v40 != v41)
          {
            if (v40 < v41)
            {
              return;
            }

            goto LABEL_15;
          }

          v42 = *(v28 + 4);
          v43 = *(v31 + 4);
          v37 = v42 < v43;
          if (v42 == v43)
          {
            v37 = *(v28 + 5) < *(v31 + 5);
          }
        }
      }

      if (v37)
      {
        return;
      }

LABEL_15:
      v17 = *v31;
      *v31 = *v28;
      *v28 = v17;
      v18 = *v32;
      v19 = *(v31 + 6);
      v20 = *(v31 + 5);
      v21 = *(v29 + 4);
      v22 = v29[1];
      *v32 = *v29;
      v32[1] = v22;
      *(v32 + 4) = v21;
      *(v29 + 4) = v20;
      *v29 = v18;
      v29[1] = v19;
      v14 = *a1;
      v23 = *(*a1 + 48 * v13);
      v24 = a1[3];
      v25 = *(*a1 + 48 * v27);
      LODWORD(v21) = *(v24 + 4 * v23);
      *(v24 + 4 * v23) = *(v24 + 4 * v25);
      *(v24 + 4 * v25) = v21;
      v13 = v26 >> 2;
    }

    while (v26 > 3);
  }
}

void sub_11049A4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[2];
    *(v3 + 1) = a2[1];
    *(v3 + 2) = v6;
    *v3 = v5;
    v7 = (v3 + 48);
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (&v3[-*a1] >> 4);
  v10 = v9 + 1;
  if (v9 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 4);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x2AAAAAAAAAAAAAALL)
  {
    v12 = 0x555555555555555;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = (16 * (&v3[-*a1] >> 4));
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v13[2] = a2[2];
  v7 = 48 * v9 + 48;
  v15 = 48 * v9 - (v3 - v8);
  memcpy(v13 - (v3 - v8), v8, v3 - v8);
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

uint64_t sub_1104AF0(uint64_t *a1, uint64_t a2)
{
  v2 = (4 * a2) | 1u;
  v3 = *(a1 + 12);
  if (v2 < v3)
  {
    v4 = 4 * a2;
    while (1)
    {
      v5 = v4 + 5;
      if (v5 >= v3)
      {
        v6 = v3;
      }

      else
      {
        v6 = v5;
      }

      if (v5 <= v2)
      {
        return a2;
      }

      v7 = *a1;
      v8 = *a1 + 48 * a2;
      v10 = *(v8 + 8);
      v9 = *(v8 + 12);
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      v13 = *(v8 + 32);
      v14 = *(v8 + 40);
      v15 = *a1 + 48 * v2 + 24;
      v16 = 0xFFFFFFFFLL;
      do
      {
        v17 = *(v15 - 16);
        if (v17 == v10)
        {
          v18 = *(v15 - 12);
          if (v18 == v9)
          {
            v19 = *(v15 - 8);
            v20 = v19 < v11;
            if (v19 != v11)
            {
              goto LABEL_23;
            }

            if (*v15 != v12)
            {
              v18 = v9;
              if (*v15 < v12)
              {
                goto LABEL_8;
              }

              goto LABEL_9;
            }

            v21 = *(v15 + 8);
            v20 = v21 < v13;
            if (v21 == v13)
            {
              v18 = v9;
              if (*(v15 + 16) < v14)
              {
                goto LABEL_8;
              }
            }

            else
            {
LABEL_23:
              v18 = v9;
              if (v20)
              {
                goto LABEL_8;
              }
            }
          }

          else if (v18 < v9)
          {
            goto LABEL_8;
          }
        }

        else if (v17 < v10)
        {
          v18 = *(v15 - 12);
LABEL_8:
          v11 = *(v15 - 8);
          v12 = *v15;
          v9 = v18;
          v10 = *(v15 - 16);
          v16 = v2;
          v13 = *(v15 + 8);
          v14 = *(v15 + 16);
        }

LABEL_9:
        v2 = (v2 + 1);
        v15 += 48;
      }

      while (v2 < v6);
      if (v16 < v3)
      {
        v22 = (v7 + 48 * v16);
        v23 = 48 * a2;
        v24 = (v7 + v23);
        v25 = *v22;
        *v22 = *v24;
        *v24 = v25;
        v26 = *(v22 + 2);
        v27 = *(v22 + 6);
        v28 = *(v22 + 5);
        v29 = *(v24 + 5);
        v30 = *(v24 + 6);
        *(v22 + 2) = *(v24 + 2);
        *(v22 + 6) = v30;
        *(v22 + 5) = v29;
        *(v24 + 5) = v28;
        *(v24 + 6) = v27;
        *(v24 + 2) = v26;
        v31 = *(*a1 + 48 * v16);
        v32 = a1[3];
        v33 = *(*a1 + v23);
        LODWORD(v23) = *(v32 + 4 * v31);
        *(v32 + 4 * v31) = *(v32 + 4 * v33);
        *(v32 + 4 * v33) = v23;
        v4 = 4 * v16;
        v2 = (4 * v16) | 1u;
        v3 = *(a1 + 12);
        a2 = v16;
        if (v2 < v3)
        {
          continue;
        }
      }

      return a2;
    }
  }

  return a2;
}

uint64_t sub_1104C98(uint64_t a1, unsigned int *a2, __int128 *a3)
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
    v19 = -1431655765 * ((*(a1 + 776) - *(a1 + 768)) >> 4);
    sub_F8B0C4(a1, a2, &v55);
    v20 = v56;
    v21 = *(v55 + 8);
    if (v57 == 1)
    {
      *(v21 + 8 * v56) = *a2;
    }

    *(v21 + 8 * v20 + 4) = v19;
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 >= v23)
    {
      v27 = *(a1 + 768);
      v28 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v27) >> 4) + 1;
      if (v28 > 0x555555555555555)
      {
        sub_1794();
      }

      v29 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v27) >> 4);
      if (2 * v29 > v28)
      {
        v28 = 2 * v29;
      }

      if (v29 >= 0x2AAAAAAAAAAAAAALL)
      {
        v30 = 0x555555555555555;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        if (v30 <= 0x555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v45 = 16 * ((v22 - v27) >> 4);
      *v45 = *a2;
      v46 = a3[1];
      *(v45 + 8) = *a3;
      *(v45 + 24) = v46;
      *(v45 + 40) = *(a3 + 4);
      v26 = v45 + 48;
      v47 = (v45 - (v22 - v27));
      memcpy(v47, v27, v22 - v27);
      *(a1 + 768) = v47;
      *(a1 + 776) = v26;
      *(a1 + 784) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v22 = *a2;
      v24 = *a3;
      v25 = a3[1];
      *(v22 + 40) = *(a3 + 4);
      *(v22 + 24) = v25;
      *(v22 + 8) = v24;
      v26 = v22 + 48;
    }

    *(a1 + 776) = v26;
    v48 = (a1 + 824);
    v49 = v19;
    goto LABEL_31;
  }

  v31 = v17 + 8 * v18;
  v33 = *(v31 + 4);
  v32 = (v31 + 4);
  v34 = *(a1 + 768) + 48 * v33;
  v36 = *(v34 + 8);
  v35 = v34 + 8;
  v37 = *a3 >= v36;
  if (*a3 == v36)
  {
    v38 = *(a3 + 1);
    v39 = *(v35 + 4);
    v40 = v38 < v39;
    if (v38 == v39)
    {
      v41 = *(a3 + 1);
      v42 = *(v35 + 8);
      v40 = v41 < v42;
      if (v41 == v42)
      {
        v43 = *(a3 + 2);
        v44 = *(v35 + 16);
        if (v43 != v44)
        {
          if (v43 >= v44)
          {
            return 0;
          }

LABEL_33:
          ++*(a1 + 816);
          v51 = *a3;
          v52 = a3[1];
          *(v35 + 32) = *(a3 + 4);
          *v35 = v51;
          *(v35 + 16) = v52;
          v49 = *v32;
          v48 = (a1 + 824);
LABEL_31:
          sub_11045B4(v48, v49, a3);
          return 1;
        }

        v53 = *(a3 + 3);
        v54 = *(v35 + 24);
        v40 = v53 < v54;
        if (v53 == v54)
        {
          v40 = *(a3 + 4) < *(v35 + 32);
        }
      }
    }

    if (v40)
    {
      goto LABEL_33;
    }
  }

  else if (!v37)
  {
    goto LABEL_33;
  }

  return 0;
}

unint64_t sub_1105004@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = (v4 + 0x388152A534) ^ 0xDEADBEEFLL;
  v7 = v5 + (v6 << 6) + (v6 >> 2) + 2654435769u;
  v8 = (v7 ^ ~v6) + ((v7 ^ v6) << 21);
  v9 = 21 * ((265 * (v8 ^ (v8 >> 24))) ^ ((265 * (v8 ^ (v8 >> 24))) >> 14));
  v10 = 2147483649u * (v9 ^ (v9 >> 28));
  v11 = (a1 + 48 * (((((v9 ^ (v9 >> 28)) >> 8) ^ ((-2147483647 * (v9 ^ (v9 >> 28))) >> 16)) ^ ((-2147483647 * (v9 ^ (v9 >> 28))) >> 24)) & 0xF));
  v12 = v10 >> 7;
  v13 = v11[3];
  while (1)
  {
    v14 = v12 & v13;
    v15 = *(*v11 + v14);
    v16 = ((v15 ^ (0x101010101010101 * ((v9 ^ (v9 >> 28)) & 0x7F))) - 0x101010101010101) & ~(v15 ^ (0x101010101010101 * ((v9 ^ (v9 >> 28)) & 0x7F))) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_8:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      result = sub_1105158(v11, v10);
      *a3 = v11;
      *(a3 + 8) = result;
      *(a3 + 16) = 1;
      return result;
    }

    v3 += 8;
    v12 = v3 + v14;
  }

  while (1)
  {
    result = (v14 + (__clz(__rbit64(v16)) >> 3)) & v13;
    v18 = (v11[1] + 48 * result);
    v20 = *v18;
    v19 = v18[1];
    if (v20 == v4 && v19 == v5)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  *a3 = v11;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

unint64_t sub_1105158(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_1105250(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_1105250(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v2 = (&dword_0 + 1);
LABEL_4:
    sub_1105280(a1, v2);
  }

  if (*(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    v2 = ((2 * v1) | 1);
    goto LABEL_4;
  }

  return sub_1105470(a1);
}

uint64_t sub_1105470(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_28;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_28:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = (*(result + 8) + 48 * i);
        v19 = (*v18 + 0x388152A534) ^ 0xDEADBEEFLL;
        v20 = v18[1] + (v19 << 6) + (v19 >> 2) + 2654435769u;
        v21 = (v20 ^ ~v19) + ((v20 ^ v19) << 21);
        v22 = 21 * ((265 * (v21 ^ (v21 >> 24))) ^ ((265 * (v21 ^ (v21 >> 24))) >> 14));
        v23 = 2147483649u * (v22 ^ (v22 >> 28));
        v24 = v13 & (v23 >> 7);
        v25 = *(v17->i64 + v24) & (~*(v17->i64 + v24) << 7) & 0x8080808080808080;
        if (v25)
        {
          v15 = v13 & (v23 >> 7);
        }

        else
        {
          v26 = 8;
          v15 = v13 & (v23 >> 7);
          do
          {
            v15 = (v15 + v26) & v13;
            v26 += 8;
            v25 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v25);
        }

        v16 = (v15 + (__clz(__rbit64(v25)) >> 3)) & v13;
        if ((((v16 - v24) ^ (i - v24)) & v13) > 7)
        {
          v27 = v17->u8[v16];
          v17->i8[v16] = v23 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v23 & 0x7F;
          v28 = *(result + 8);
          if (v27 == 128)
          {
            v29 = (v28 + 48 * v16);
            v30 = (v28 + 48 * i);
            v31 = *v30;
            v32 = v30[2];
            v29[1] = v30[1];
            v29[2] = v32;
            *v29 = v31;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v33 = (v28 + 48 * i);
            v34 = *v33;
            v43 = v33[1];
            v35 = v33[2];
            v36 = (v28 + 48 * v16);
            v38 = v36[1];
            v37 = v36[2];
            *v33 = *v36;
            v33[1] = v38;
            v33[2] = v37;
            v39 = (*(result + 8) + 48 * v16);
            *v39 = v34;
            v39[1] = v43;
            v39[2] = v35;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v23 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v23 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v40 = i - (i >> 3);
    v41 = i == 7;
    v42 = 6;
    if (!v41)
    {
      v42 = v40;
    }
  }

  else
  {
    v42 = 0;
  }

  *(result + 40) = v42 - *(result + 16);
  return result;
}

void sub_110578C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = (v4 + 1);
  sub_2133C(a1, &v10);
}

void sub_1105AFC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1105B54(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_31;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6 ^ (v6 >> 33);
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
LABEL_31:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v12[1];
      if (v15 == v7)
      {
        if (*(v12 + 4) == v4 && *(v12 + 5) == HIDWORD(v4))
        {
          return v12;
        }
      }

      else if ((v15 & (*&v8 - 1)) != v10)
      {
        goto LABEL_31;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v13 >= *&v8)
    {
      v13 %= *&v8;
    }

    if (v13 != v10)
    {
      goto LABEL_31;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  if (*(v12 + 4) != v4 || *(v12 + 5) != HIDWORD(v4))
  {
    goto LABEL_12;
  }

  return v12;
}

void sub_1105ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1105EE8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1105EE8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[9];
      if (v3)
      {
        v2[10] = v3;
        operator delete(v3);
      }

      v4 = v2[6];
      if (v4)
      {
        v2[7] = v4;
        operator delete(v4);
      }

      v5 = v2[3];
      if (v5)
      {
        v2[4] = v5;
        operator delete(v5);
      }
    }

    operator delete(v2);
  }

  return a1;
}

double sub_1105F5C()
{
  *v0 = -1;
  *(v0 + 8) = -1;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0u;
  *(v0 + 80) = 0x1000000000000;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  result = -NAN;
  *(v0 + 120) = -NAN;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 128) = 0x7FFFFFFFFFFFFFFFLL;
  *(v0 + 156) = 0x7FFFFFFF;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 160) = 0u;
  return result;
}

void sub_1105FC4()
{
  byte_27C298F = 3;
  LODWORD(qword_27C2978) = 5136193;
  byte_27C29A7 = 3;
  LODWORD(qword_27C2990) = 5136194;
  byte_27C29BF = 3;
  LODWORD(qword_27C29A8) = 5136195;
  byte_27C29D7 = 15;
  strcpy(&qword_27C29C0, "vehicle_mass_kg");
  byte_27C29EF = 21;
  strcpy(&xmmword_27C29D8, "vehicle_cargo_mass_kg");
  byte_27C2A07 = 19;
  strcpy(&qword_27C29F0, "vehicle_aux_power_w");
  byte_27C2A1F = 15;
  strcpy(&qword_27C2A08, "dcdc_efficiency");
  strcpy(&qword_27C2A20, "drive_train_efficiency");
  HIBYTE(word_27C2A36) = 22;
  operator new();
}

void sub_11061A0(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C2A36) < 0)
  {
    sub_21E81DC();
  }

  sub_21E81E8();
  _Unwind_Resume(a1);
}

uint64_t sub_11061C0(uint64_t result)
{
  *result = -1;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0x3FF0000000000000;
  *(result + 64) = 1;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 2359296000;
  *(result + 95) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 120) = 0;
  *(result + 152) = 0x3FF0000000000000;
  *(result + 160) = 1;
  *(result + 168) = 0;
  *(result + 176) = 0;
  *(result + 184) = 2359296000;
  *(result + 191) = 0;
  return result;
}

__n128 sub_1106228(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  v6 = *(a4 + 16);
  *(a1 + 16) = *a4;
  *(a1 + 32) = v6;
  v7 = *(a4 + 32);
  v8 = *(a4 + 48);
  v9 = *(a4 + 64);
  *(a1 + 96) = *(a4 + 80);
  *(a1 + 64) = v8;
  *(a1 + 80) = v9;
  *(a1 + 48) = v7;
  *(a1 + 104) = *a5;
  v10 = *(a6 + 16);
  *(a1 + 112) = *a6;
  *(a1 + 128) = v10;
  result = *(a6 + 32);
  v12 = *(a6 + 48);
  v13 = *(a6 + 64);
  *(a1 + 192) = *(a6 + 80);
  *(a1 + 160) = v12;
  *(a1 + 176) = v13;
  *(a1 + 144) = result;
  return result;
}

BOOL sub_1106280(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || !sub_F71798(a1 + 16, a2 + 16) || *(a1 + 104) != *(a2 + 104))
  {
    return 0;
  }

  return sub_F71798(a1 + 112, a2 + 112);
}

unint64_t sub_11062FC(uint64_t a1, uint64_t a2)
{
  v2 = 0x2127599BF4325C37 * (*(a2 + 8) ^ (*(a2 + 8) >> 23));
  v3 = 0x2127599BF4325C37 * (*(a2 + 104) ^ (*(a2 + 104) >> 23));
  return ((v3 ^ (v3 >> 47)) + ((((v2 ^ (v2 >> 47)) + 0x388152A534) ^ 0xDEADBEEF) << 6) + ((((v2 ^ (v2 >> 47)) + 0x388152A534) ^ 0xDEADBEEF) >> 2) + 2654435769u) ^ ((v2 ^ (v2 >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
}

uint64_t sub_1106364(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = a3;
  v167 = a1 + 8;
  sub_1109E54(a1 + 8, 0);
  *(a1 + 128) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 200) = 0x7FFFFFFF;
  v5 = sub_10E2904(a2);
  v199 = 0;
  v200 = 0;
  v201 = 0;
  v174 = a2;
  if (v5)
  {
    if (!(v5 >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  v198 = 0;
  v6 = sub_10E2904(a2);
  if (v6)
  {
    if (!(v6 >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  v7 = sub_3068E4(a2);
  v8 = *v7;
  v9 = v7[1];
  if (*v7 == v9)
  {
    v172 = 0;
  }

  else
  {
    v172 = 0;
    do
    {
      v13 = v172;
      v14 = v172 >> 2;
      if (((v172 >> 2) + 1) >> 62)
      {
        sub_1794();
      }

      if (v172 >> 2 != -1)
      {
        if (!(((v172 >> 2) + 1) >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      *(4 * v14) = *v8;
      v172 = 4 * v14 + 4;
      memcpy(0, 0, v13);
      v194[0] = 0;
      LODWORD(v179) = 0;
      v180 = 0;
      v181 = 0;
      *(&v179 + 1) = 0;
      v182 = 0;
      v183 = 0x3FF0000000000000;
      v184 = 1;
      v185 = 0;
      v186 = 0;
      v187 = 0;
      v188 = -29536;
      v189[0] = 0;
      *(v189 + 3) = 0;
      v15 = *(a1 + 136);
      if (v15 >= *(a1 + 144))
      {
        v10 = sub_1109678(a1 + 128, &v198, v194, &v179, v8 + 13, (v8 + 28));
      }

      else
      {
        sub_1106228(*(a1 + 136), v198, v194, &v179, v8 + 13, (v8 + 28));
        v10 = v15 + 200;
        *(a1 + 136) = v15 + 200;
      }

      *(a1 + 136) = v10;
      v11 = *v8;
      v8 += 50;
      v12 = v198;
      *&v199[4 * v11] = v198;
      v198 = v12 + 1;
    }

    while (v8 != v9);
  }

  v16 = sub_10E2C84(v174);
  v17 = *v16;
  v18 = v16[1];
  if (*v16 != v18)
  {
    do
    {
      v22 = v172;
      v23 = v172 >> 2;
      if (((v172 >> 2) + 1) >> 62)
      {
        sub_1794();
      }

      if (v172 >> 2 != -1)
      {
        if (!(((v172 >> 2) + 1) >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      *(4 * v23) = *v17;
      v172 = 4 * v23 + 4;
      memcpy(0, 0, v22);
      v194[0] = 0;
      LODWORD(v179) = 0;
      v180 = 0;
      v181 = 0;
      *(&v179 + 1) = 0;
      v182 = 0;
      v183 = 0x3FF0000000000000;
      v184 = 1;
      v185 = 0;
      v186 = 0;
      v187 = 0;
      v188 = -29536;
      v189[0] = 0;
      *(v189 + 3) = 0;
      v24 = *(a1 + 160);
      if (v24 >= *(a1 + 168))
      {
        v19 = sub_11097EC(a1 + 152, &v198, v17 + 1, (v17 + 4), v194, &v179);
      }

      else
      {
        sub_1106228(*(a1 + 160), v198, v17 + 1, (v17 + 4), v194, &v179);
        v19 = v24 + 200;
        *(a1 + 160) = v24 + 200;
      }

      *(a1 + 160) = v19;
      v20 = *v17;
      v17 += 50;
      v21 = v198;
      *&v199[4 * v20] = v198;
      v198 = v21 + 1;
    }

    while (v17 != v18);
  }

  v25 = sub_10E2C8C(v174);
  v26 = v25;
  v27 = *(v25 + 456);
  v28 = *(v25 + 248);
  v29 = v27 + 200 * v28;
  if (v28)
  {
    v30 = 200 * v28;
    while (sub_1106280((v26 + 32), v27) || v26[29] && sub_1106280((v26 + 4), v27))
    {
      v27 += 200;
      v30 -= 200;
      if (!v30)
      {
        v27 = v29;
        break;
      }
    }

    v31 = v27;
    v27 = v26[57];
    v28 = v26[31];
  }

  else
  {
    v31 = *(v25 + 456);
  }

  v32 = v27 + 200 * v28;
  while (v31 != v32)
  {
    v33 = v172;
    v34 = v172 >> 2;
    if (((v172 >> 2) + 1) >> 62)
    {
      sub_1794();
    }

    if (v172 >> 2 != -1)
    {
      if (!(((v172 >> 2) + 1) >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    *(4 * v34) = *v31;
    v172 = 4 * v34 + 4;
    memcpy(0, 0, v33);
    v35 = *(a1 + 184);
    if (v35 >= *(a1 + 192))
    {
      v36 = sub_1109960(a1 + 176, &v198, (v31 + 8), v31 + 16, (v31 + 104), v31 + 112);
    }

    else
    {
      sub_1106228(*(a1 + 184), v198, (v31 + 8), v31 + 16, (v31 + 104), v31 + 112);
      v36 = v35 + 200;
      *(a1 + 184) = v35 + 200;
    }

    *(a1 + 184) = v36;
    v37 = *v31;
    v31 += 200;
    v38 = v198;
    *&v199[4 * v37] = v198;
    v198 = v38 + 1;
    while (v31 != v29 && (sub_1106280((v26 + 32), v31) || v26[29] && sub_1106280((v26 + 4), v31)))
    {
      v31 += 200;
    }
  }

  v39 = sub_10E2904(v174);
  if (v39)
  {
    v40 = 0;
    v41 = v174;
    do
    {
      LODWORD(v179) = v40;
      if (*&v199[4 * v40] == -1)
      {
        if (sub_10E2994(v41, &v179) == 1 && sub_10E29C4(v174, &v179) == 1 && (v43 = sub_10E2AB8(v174, &v179), v43 == sub_10E2B58(v174, &v179)))
        {
          v41 = v174;
        }

        else
        {
          v44 = v172;
          v45 = v172 >> 2;
          if (((v172 >> 2) + 1) >> 62)
          {
            sub_1794();
          }

          if (v172 >> 2 != -1)
          {
            if (!(((v172 >> 2) + 1) >> 62))
            {
              operator new();
            }

            sub_1808();
          }

          *(4 * v45) = v40;
          v172 = 4 * v45 + 4;
          memcpy(0, 0, v44);
          v41 = v174;
          v42 = v198;
          *&v199[4 * v40] = v198;
          v198 = v42 + 1;
        }
      }

      ++v40;
    }

    while (v39 != v40);
  }

  v168 = sub_3B1348(*a1);
  v46 = v198;
  v47 = *(a1 + 56);
  if (v198 >= ((*(a1 + 64) - v47) >> 2) && v198 >= ((*(a1 + 72) - v47) >> 2))
  {
    operator new();
  }

  v48 = (a1 + 80);
  if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 88) - *(a1 + 80)) >> 4) < v198)
  {
    sub_1109F6C((a1 + 80), v198);
  }

  v170 = (a1 + 104);
  if (v46 > (*(a1 + 120) - *(a1 + 104)) >> 4)
  {
    operator new();
  }

  if (v172)
  {
    v49 = 0;
    v50 = 0;
    do
    {
      v197 = *v50;
      v51 = *&v199[4 * v197];
      v52 = *(a1 + 56);
      v53 = *(a1 + 64);
      v54 = v53 - v52;
      if (((v53 - v52) >> 2) - 1 <= v51)
      {
        v55 = (v51 + 2);
        v56 = *(a1 + 8);
        v57 = *(a1 + 16);
        v58 = (v57 - v56) >> 2;
        if (v55 <= v58)
        {
          if (v55 < v58)
          {
            *(a1 + 16) = v56 + 4 * v55;
          }
        }

        else
        {
          sub_569AC(v167, v55 - v58, (v57 - 4));
          v52 = *(a1 + 56);
          v53 = *(a1 + 64);
          v54 = v53 - v52;
        }

        v59 = v54 >> 2;
        if (v55 <= v59)
        {
          if (v55 < v59)
          {
            *(a1 + 64) = v52 + 4 * v55;
          }
        }

        else
        {
          sub_569AC(a1 + 56, v55 - v59, (v53 - 4));
        }
      }

      v60 = v174;
      sub_10E2B7C(v174, &v197);
      v61 = *(a1 + 104);
      v62 = (*(a1 + 112) - v61) >> 4;
      if (v62 <= v51)
      {
        v63 = (v51 + 1);
        LOWORD(v179) = 0;
        *(&v179 + 1) = 0;
        if (v63 <= v62)
        {
          if (v63 < v62)
          {
            *(a1 + 112) = v61 + 16 * v63;
          }
        }

        else
        {
          sub_110A21C(v170, v63 - v62, &v179);
        }
      }

      v64 = sub_10E2E2C(v174, &v197);
      v65 = sub_36383C(v168, (HIDWORD(v64) & 0xFFFE0000FFFFFFFFLL | (WORD1(v64) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v64 >> 1) & 1) << 48)) ^ 0x1000000000000);
      if (!v65)
      {
        v74 = 0.0;
        v75 = *(a1 + 104);
        v76 = (*(a1 + 112) - v75) >> 4;
        if (v76 > v51)
        {
          goto LABEL_112;
        }

        goto LABEL_108;
      }

      v66 = &v65[-*v65];
      v67 = *v66;
      if (v67 >= 0xB && *(v66 + 5))
      {
        v68 = *&v65[*(v66 + 5)];
        v69 = *(v168 + 3880);
        if (!*(v168 + 3880))
        {
          goto LABEL_101;
        }
      }

      else
      {
        v68 = 0xFFFF;
        v69 = *(v168 + 3880);
        if (!*(v168 + 3880))
        {
          goto LABEL_101;
        }
      }

      if (v67 >= 0x11)
      {
        v70 = *(v66 + 8);
        if (v70)
        {
          v71 = &v65[v70 + *&v65[v70]];
          if (*v71 >= v69)
          {
            v72 = *&v71[2 * v69 + 2];
            if ((v72 + 1) > 1u)
            {
              v73 = v72;
LABEL_103:
              v74 = v73 / 1000.0;
              v75 = *(a1 + 104);
              v76 = (*(a1 + 112) - v75) >> 4;
              if (v76 > v51)
              {
                goto LABEL_112;
              }

              goto LABEL_108;
            }
          }
        }
      }

LABEL_101:
      if (v68 != 0xFFFF)
      {
        v73 = v68;
        goto LABEL_103;
      }

      v74 = 0.3;
      v75 = *(a1 + 104);
      v76 = (*(a1 + 112) - v75) >> 4;
      if (v76 > v51)
      {
        goto LABEL_112;
      }

LABEL_108:
      v77 = (v51 + 1);
      LOWORD(v179) = 0;
      *(&v179 + 1) = 0;
      if (v77 <= v76)
      {
        if (v77 < v76)
        {
          *(a1 + 112) = v75 + 16 * v77;
        }
      }

      else
      {
        sub_110A21C(v170, v77 - v76, &v179);
        v75 = *v170;
      }

LABEL_112:
      *(v75 + 16 * v51 + 8) = v74;
      sub_10E2918(v174, &v197, v194);
      v169 = v50;
      v78 = v195;
      v178 = v196;
      if (v195 != v196)
      {
        v176 = v194[1];
        v177 = v194[0];
        v79 = (v51 + 1);
        v175 = (v51 + 2);
        v171 = 4 * v175 - 4;
        v173 = v51;
        while (2)
        {
          sub_1107924(a1, v60, v51, *v177 + 176 * v78, &v199, &v179);
          v80 = DWORD2(v179);
          if (DWORD1(v179) == -1 || DWORD2(v179) == -1)
          {
            goto LABEL_208;
          }

          v82 = v49;
          LODWORD(v179) = v49;
          v83 = *(a1 + 56);
          v84 = *(a1 + 64);
          v85 = v84->i64 - v83;
          v86 = ((v84 - v83) >> 2) - 1;
          if (v79 < v86)
          {
            exception = __cxa_allocate_exception(0x40uLL);
            v166 = sub_2D390(exception, "outgoing arc cannot be inserted because vertices with higher index are already present in the graph", 0x63uLL);
          }

          if (v86 > v51)
          {
            goto LABEL_166;
          }

          v87 = *(a1 + 8);
          v88 = *(a1 + 16);
          v89 = v88 - v87;
          v90 = (v88 - v87) >> 2;
          v91 = v175 - v90;
          if (v175 <= v90)
          {
            if (v175 < v90)
            {
              *(a1 + 16) = v87 + 4 * v175;
            }

            v48 = (a1 + 80);
            v97 = v175 >= v85 >> 2;
            v98 = v175 - (v85 >> 2);
            if (v175 <= v85 >> 2)
            {
              goto LABEL_130;
            }
          }

          else
          {
            v92 = *(a1 + 24);
            if (v91 > (v92 - v88) >> 2)
            {
              v93 = v92 - v87;
              v94 = v93 >> 1;
              if (v93 >> 1 <= v175)
              {
                v94 = v175;
              }

              if (v93 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v95 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v95 = v94;
              }

              if (!(v95 >> 62))
              {
                operator new();
              }

              goto LABEL_223;
            }

            v104 = &v88[v91];
            v105 = *(v88 - 1);
            v48 = (a1 + 80);
            if ((v171 - v89) < 0x1C)
            {
              goto LABEL_238;
            }

            v106 = ((v171 - v89) >> 2) + 1;
            v107 = vdupq_n_s32(v105);
            v108 = (v88 + 4);
            v109 = v106 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v108[-1] = v107;
              *v108 = v107;
              v108 += 2;
              v109 -= 8;
            }

            while (v109);
            v88 += v106 & 0x7FFFFFFFFFFFFFF8;
            if (v106 != (v106 & 0x7FFFFFFFFFFFFFF8))
            {
LABEL_238:
              do
              {
                *v88++ = v105;
              }

              while (v88 != v104);
            }

            *(a1 + 16) = v104;
            v83 = *(a1 + 56);
            v84 = *(a1 + 64);
            v85 = v84->i64 - v83;
            v110 = (v84->i64 - v83) >> 2;
            v97 = v175 >= v110;
            v98 = v175 - v110;
            if (v175 <= v110)
            {
LABEL_130:
              LODWORD(v51) = v173;
              if (!v97)
              {
                v96 = (v83 + 4 * v175);
                goto LABEL_158;
              }

LABEL_166:
              v128 = *(a1 + 88);
              v127 = *(a1 + 96);
              if (v128 >= v127)
              {
                v130 = 0x4EC4EC4EC4EC4EC5 * ((v128 - *v48) >> 4);
                v131 = v130 + 1;
                if ((v130 + 1) > 0x13B13B13B13B13BLL)
                {
                  sub_1794();
                }

                v132 = 0x4EC4EC4EC4EC4EC5 * ((v127 - *v48) >> 4);
                if (2 * v132 > v131)
                {
                  v131 = 2 * v132;
                }

                if (v132 >= 0x9D89D89D89D89DLL)
                {
                  v133 = 0x13B13B13B13B13BLL;
                }

                else
                {
                  v133 = v131;
                }

                v206 = v48;
                if (v133)
                {
                  if (v133 <= 0x13B13B13B13B13BLL)
                  {
                    operator new();
                  }

                  goto LABEL_223;
                }

                v202 = 0;
                v203 = 208 * v130;
                v204 = 208 * v130;
                v205 = 0;
                sub_110A370(208 * v130, &v179);
                v129 = v204 + 208;
                v204 += 208;
                v134 = *(a1 + 80);
                v135 = *(a1 + 88);
                v136 = (v203 + v134 - v135);
                if (v134 != v135)
                {
                  v137 = *(a1 + 80);
                  v138 = (v203 + v134 - v135);
                  do
                  {
                    v139 = *v137;
                    *(v138 + 2) = *(v137 + 2);
                    *v138 = v139;
                    *(v138 + 3) = 0;
                    *(v138 + 4) = 0;
                    *(v138 + 2) = 0;
                    *(v138 + 1) = *(v137 + 1);
                    *(v138 + 4) = *(v137 + 4);
                    *(v137 + 2) = 0;
                    *(v137 + 3) = 0;
                    *(v137 + 4) = 0;
                    v140 = *(v137 + 40);
                    v141 = *(v137 + 56);
                    v142 = *(v137 + 11);
                    *(v138 + 72) = *(v137 + 72);
                    *(v138 + 56) = v141;
                    *(v138 + 40) = v140;
                    *(v138 + 11) = v142;
                    *(v138 + 12) = 0;
                    *(v138 + 13) = 0;
                    *(v138 + 14) = 0;
                    *(v138 + 6) = *(v137 + 6);
                    *(v138 + 14) = *(v137 + 14);
                    *(v137 + 12) = 0;
                    *(v137 + 13) = 0;
                    *(v137 + 14) = 0;
                    v143 = *(v137 + 120);
                    v144 = *(v137 + 136);
                    v145 = *(v137 + 152);
                    *(v138 + 168) = *(v137 + 168);
                    *(v138 + 152) = v145;
                    *(v138 + 136) = v144;
                    *(v138 + 120) = v143;
                    *(v138 + 24) = 0;
                    *(v138 + 25) = 0;
                    *(v138 + 23) = 0;
                    *(v138 + 184) = *(v137 + 184);
                    *(v138 + 25) = *(v137 + 25);
                    *(v137 + 23) = 0;
                    *(v137 + 24) = 0;
                    *(v137 + 25) = 0;
                    v137 += 208;
                    v138 += 208;
                  }

                  while (v137 != v135);
                  do
                  {
                    v146 = *(v134 + 23);
                    if (v146)
                    {
                      *(v134 + 24) = v146;
                      operator delete(v146);
                    }

                    v147 = *(v134 + 12);
                    if (v147)
                    {
                      *(v134 + 13) = v147;
                      operator delete(v147);
                    }

                    v148 = *(v134 + 2);
                    if (v148)
                    {
                      *(v134 + 3) = v148;
                      operator delete(v148);
                    }

                    v134 += 208;
                  }

                  while (v134 != v135);
                }

                v149 = *(a1 + 80);
                *(a1 + 80) = v136;
                *(a1 + 88) = v129;
                *(a1 + 96) = v205;
                if (v149)
                {
                  operator delete(v149);
                }

                LODWORD(v51) = v173;
              }

              else
              {
                sub_110A370(*(a1 + 88), &v179);
                v129 = v128 + 208;
                *(a1 + 88) = v129;
              }

              *(a1 + 88) = v129;
              ++*(*(a1 + 56) + 4 * v79);
              v150 = *(a1 + 104);
              v151 = *(a1 + 112);
              v152 = (v151 - v150) >> 4;
              if (v152 <= v80)
              {
                v154 = (v80 + 1);
                v155 = v154 - v152;
                if (v154 <= v152)
                {
                  v60 = v174;
                  v153 = v82;
                  if (v154 < v152)
                  {
                    *(a1 + 112) = v150 + 16 * v154;
                  }
                }

                else
                {
                  v156 = *(a1 + 120);
                  if (v155 > (v156 - v151) >> 4)
                  {
                    v157 = v156 - v150;
                    v158 = v157 >> 3;
                    if (v157 >> 3 <= v154)
                    {
                      v158 = (v80 + 1);
                    }

                    if (v157 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v159 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v159 = v158;
                    }

                    if (!(v159 >> 60))
                    {
                      operator new();
                    }

                    goto LABEL_223;
                  }

                  v160 = v151 + 16 * v155;
                  do
                  {
                    *v151 = 0;
                    *(v151 + 8) = 0;
                    v151 += 16;
                  }

                  while (v151 != v160);
                  *(a1 + 112) = v160;
                  v153 = v82;
                  v150 = *v170;
                  v60 = v174;
                }
              }

              else
              {
                v60 = v174;
                v153 = v82;
              }

              v49 = v153 + 1;
              ++*(v150 + 16 * v80);
LABEL_208:
              if (__p)
              {
                v193 = __p;
                operator delete(__p);
              }

              if (v190)
              {
                v191 = v190;
                operator delete(v190);
              }

              if (v180)
              {
                v181 = v180;
                operator delete(v180);
              }

              v78 = *(*v176 + 4 * v78);
              if (v78 == v178)
              {
                goto LABEL_76;
              }

              continue;
            }
          }

          break;
        }

        v99 = *(a1 + 72);
        if (v98 > (v99 - v84) >> 2)
        {
          v100 = (v84->i64 - v83) >> 2;
          if ((v100 + v98) >> 62)
          {
            sub_1794();
          }

          v101 = v99 - v83;
          v102 = v101 >> 1;
          if (v101 >> 1 <= v100 + v98)
          {
            v102 = v100 + v98;
          }

          if (v101 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v103 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v103 = v102;
          }

          if (v103)
          {
            if (!(v103 >> 62))
            {
              operator new();
            }

LABEL_223:
            sub_1808();
          }

          v117 = 4 * v100;
          v118 = 4 * v100 + 4 * v98;
          v119 = v84[-1].u32[3];
          v120 = v117;
          if ((v171 - v85) < 0x1C)
          {
            goto LABEL_239;
          }

          v121 = ((v171 - v85) >> 2) + 1;
          v120 = (v117 + 4 * (v121 & 0x7FFFFFFFFFFFFFF8));
          v122 = vdupq_n_s32(v119);
          v123 = (v117 + 16);
          v124 = v121 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v123[-1] = v122;
            *v123 = v122;
            v123 += 2;
            v124 -= 8;
          }

          while (v124);
          if (v121 != (v121 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_239:
            do
            {
              *v120++ = v119;
            }

            while (v120 != v118);
          }

          v125 = *(a1 + 56);
          v126 = *(a1 + 64) - v125;
          v51 = v117 - v126;
          memcpy((v117 - v126), v125, v126);
          *(a1 + 56) = v51;
          *(a1 + 64) = v118;
          *(a1 + 72) = 0;
          v48 = (a1 + 80);
          LODWORD(v51) = v173;
          if (v125)
          {
            operator delete(v125);
          }

          goto LABEL_166;
        }

        v96 = v84 + v98;
        v111 = v84[-1].u32[3];
        if ((v171 - v85) < 0x1C)
        {
          v112 = v84;
          LODWORD(v51) = v173;
          goto LABEL_157;
        }

        v113 = ((v171 - v85) >> 2) + 1;
        v112 = v84 + (v113 & 0x7FFFFFFFFFFFFFF8);
        v114 = vdupq_n_s32(v111);
        v115 = v84 + 1;
        v116 = v113 & 0x7FFFFFFFFFFFFFF8;
        LODWORD(v51) = v173;
        do
        {
          v115[-1] = v114;
          *v115 = v114;
          v115 += 2;
          v116 -= 8;
        }

        while (v116);
        if (v113 != (v113 & 0x7FFFFFFFFFFFFFF8))
        {
          do
          {
LABEL_157:
            *v112++ = v111;
          }

          while (v112 != v96);
        }

LABEL_158:
        *(a1 + 64) = v96;
        goto LABEL_166;
      }

LABEL_76:
      v50 = v169 + 1;
    }

    while (v169 + 1 != v172);
  }

  v161 = ((*(a1 + 64) - *(a1 + 56)) >> 2) - 1;
  v162 = *(a1 + 104);
  v163 = (*(a1 + 112) - v162) >> 4;
  if (v161 <= v163)
  {
    if (v161 < v163)
    {
      *(a1 + 112) = v162 + 16 * v161;
    }
  }

  else
  {
    sub_110A570(v170, v161 - v163);
  }

  if (v199)
  {
    v200 = v199;
    operator delete(v199);
  }

  return a1;
}

void sub_1107798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (v28)
  {
    operator delete(v28);
  }

  v31 = *(v29 - 168);
  if (v31)
  {
    *(v29 - 160) = v31;
    operator delete(v31);
  }

  v32 = *a12;
  if (*a12)
  {
    v27[23] = v32;
    operator delete(v32);
    v33 = *(a13 + 24);
    if (!v33)
    {
LABEL_7:
      v34 = *a13;
      if (!*a13)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v33 = *(a13 + 24);
    if (!v33)
    {
      goto LABEL_7;
    }
  }

  v27[20] = v33;
  operator delete(v33);
  v34 = *a13;
  if (!*a13)
  {
LABEL_8:
    sub_10DF174(a11);
    _Unwind_Resume(a1);
  }

LABEL_11:
  v27[17] = v34;
  operator delete(v34);
  sub_10DF174(a11);
  _Unwind_Resume(a1);
}

void sub_1107924(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char **a5@<X4>, uint64_t a6@<X8>)
{
  v12 = 1000000000;
  v13 = sub_3B1348(*a1);
  v63 = -1;
  v64 = -1;
  v61 = 0;
  v62 = 0.0;
  v59 = 0;
  v60 = 0;
  v58 = 1;
  v57 = 1;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 1;
  v52[0] = &v54;
  v52[1] = &v53;
  v52[2] = &v63;
  v52[3] = &v64;
  v52[4] = a5;
  v52[5] = &v62;
  v52[6] = v13;
  v52[7] = &v59;
  v52[8] = &v58;
  v52[9] = &v57;
  v52[10] = &v61;
  v52[11] = &v60;
  if (a3 != 0xFFFFFFFFLL)
  {
    v14 = a1[16];
    v15 = 0x8F5C28F5C28F5C29 * ((a1[17] - v14) >> 3);
    if (v15 > a3)
    {
      v16 = v14 + 200 * a3;
LABEL_7:
      v12 = 1000000000 - *(v16 + 112);
      goto LABEL_8;
    }

    v17 = v15 - 0x70A3D70A3D70A3D7 * ((a1[20] - a1[19]) >> 3);
    if (a3 >= v17)
    {
      v18 = a1[22];
      if (v17 - 0x70A3D70A3D70A3D7 * ((a1[23] - v18) >> 3) > a3)
      {
        v16 = v18 + 200 * (a3 - v17);
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  sub_1109100(v52, a4, v12);
  for (i = v64; v64 == -1; i = v64)
  {
    sub_10E2918(a2, &v63, &v50);
    sub_1109100(v52, (*v50 + 176 * v51), 0x3B9ACA00u);
  }

  v20 = 0x8F5C28F5C28F5C29 * ((a1[17] - a1[16]) >> 3);
  v21 = v20 - 0x70A3D70A3D70A3D7 * ((a1[20] - a1[19]) >> 3);
  v22 = v21 <= i && v21 - 0x70A3D70A3D70A3D7 * ((a1[23] - a1[22]) >> 3) > i;
  if (v22 || (v20 <= i ? (v23 = v21 > i) : (v23 = 0), v23))
  {
    v24 = *(v55 - 1);
    v25 = sub_36383C(v13, *(v24 + 72) & 0xFFFFFFFFFFFFFFLL);
    v26 = 0.0;
    v27 = 0.0;
    if (!v25)
    {
      goto LABEL_32;
    }

    v28 = &v25[-*v25];
    v29 = *v28;
    if (v29 >= 0xB && *(v28 + 5))
    {
      v30 = *&v25[*(v28 + 5)];
      v31 = *(v13 + 3880);
      if (!*(v13 + 3880))
      {
        goto LABEL_29;
      }
    }

    else
    {
      v30 = 0xFFFF;
      v31 = *(v13 + 3880);
      if (!*(v13 + 3880))
      {
        goto LABEL_29;
      }
    }

    if (v29 >= 0x11)
    {
      v32 = *(v28 + 8);
      if (v32)
      {
        v33 = &v25[v32 + *&v25[v32]];
        if (*v33 >= v31)
        {
          v34 = *&v33[2 * v31 + 2];
          if ((v34 + 1) > 1u)
          {
            v35 = v34;
LABEL_31:
            v27 = v35 / 1000.0;
LABEL_32:
            v36 = *(v24 + 40);
            v37 = (v36 - *v36);
            if (*v37 >= 9u)
            {
              goto LABEL_33;
            }

            goto LABEL_36;
          }
        }
      }
    }

LABEL_29:
    if (v30 == 0xFFFF)
    {
      v27 = 0.3;
      v36 = *(v24 + 40);
      v37 = (v36 - *v36);
      if (*v37 >= 9u)
      {
LABEL_33:
        v38 = v37[4];
        if (v38)
        {
          LODWORD(v26) = *(v36 + v38);
          v26 = *&v26;
        }
      }

LABEL_36:
      i = v64;
      v39 = a1[16];
      v40 = 0x8F5C28F5C28F5C29 * ((a1[17] - v39) >> 3);
      v41 = v64 - v40;
      if (v64 >= v40)
      {
        v43 = a1[19];
        v44 = v40 - 0x70A3D70A3D70A3D7 * ((a1[20] - v43) >> 3);
        v45 = v64 >= v44;
        v46 = v64 - v44;
        if (v45)
        {
          v42 = a1[22] + 200 * v46;
        }

        else
        {
          v42 = v43 + 200 * v41;
        }
      }

      else
      {
        v42 = v39 + 200 * v64;
      }

      v47 = v27 * v26;
      LODWORD(v27) = *(v42 + 16);
      v62 = v62 + v47 * (*&v27 / 1000000000.0);
      goto LABEL_42;
    }

    v35 = v30;
    goto LABEL_31;
  }

LABEL_42:
  if (v53)
  {
    *&v50 = -NAN;
    *(&v50 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    sub_1109B28(a6, -1, a3, i, &v54, (a4 + 112), &v50, &v59, v62, (a4 + 144), v58, v57, v49, 0x7FFFFFFF, v61, v60, (a4 + 152));
    v48 = v54;
    if (!v54)
    {
      return;
    }

    goto LABEL_44;
  }

  *(a6 + 8) = 0u;
  *(a6 + 56) = 0u;
  *(a6 + 40) = 0u;
  *(a6 + 72) = 0u;
  *(a6 + 24) = 0u;
  *(a6 + 152) = 0;
  *(a6 + 136) = 0u;
  *(a6 + 120) = 0u;
  *(a6 + 104) = 0u;
  *(a6 + 88) = 0u;
  *a6 = -1;
  *(a6 + 8) = -1;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
  *(a6 + 80) = 0x1000000000000;
  *(a6 + 104) = 0u;
  *(a6 + 88) = 0u;
  *(a6 + 120) = -NAN;
  *(a6 + 128) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 136) = 0;
  *(a6 + 144) = 0;
  *(a6 + 156) = 0x7FFFFFFF;
  *(a6 + 176) = 0u;
  *(a6 + 192) = 0u;
  *(a6 + 160) = 0u;
  v48 = v54;
  if (v54)
  {
LABEL_44:
    v55 = v48;
    operator delete(v48);
  }
}

void sub_1107DD8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 152);
  if (v3)
  {
    *(v1 - 144) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1107E34(void *a1, unsigned int a2)
{
  v2 = a1[7] - a1[6];
  if (a2 + 1 >= (v2 >> 2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v3 = (v2 >> 2) - 1;
  v4 = a1[12];
  if (v3 > (a1[13] - v4) >> 4)
  {
    v8 = __cxa_allocate_exception(0x40uLL);
    v9 = sub_2D390(v8, "no or incomplete vertex data stored", 0x23uLL);
  }

  return v4 + 16 * a2;
}

void *sub_1107F28@<X0>(void *result@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = (v3 + 1);
  v5 = result[7];
  if (v4 >= (result[8] - v5) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v9 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v6 = result[10];
  v7 = v6 + 208 * *(v5 + 4 * v4);
  *a3 = v6 + 208 * *(v5 + 4 * v3);
  a3[1] = v7;
  return result;
}

uint64_t sub_1107FA0(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = (v2 + 1);
  v4 = *(a1 + 56);
  if (v3 >= (*(a1 + 64) - v4) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  return (*(v4 + 4 * v3) - *(v4 + 4 * v2));
}

void sub_110802C(void *a1, unsigned int *a2, void *a3)
{
  a3[1] = *a3;
  v3 = *a2;
  v4 = (v3 + 1);
  v5 = a1[7];
  if (v4 >= (a1[8] - v5) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v6 = *(v5 + 4 * v3);
  v7 = *(v5 + 4 * v4);
  if (v6 != v7)
  {
    v9 = a1[10];
    v10 = v9 + 208 * v7;
    v11 = v9 + 208 * v6;
    do
    {
      v14 = v11;
      sub_4C7358(a3, &v14);
      v11 += 208;
    }

    while (v11 != v10);
  }
}

BOOL sub_1108134(void *a1, unsigned int a2)
{
  if (a2 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  v3 = 0x8F5C28F5C28F5C29 * ((a1[17] - a1[16]) >> 3);
  return v3 <= a2 && v3 - 0x70A3D70A3D70A3D7 * ((a1[20] - a1[19]) >> 3) > a2;
}

BOOL sub_110818C(void *a1, unsigned int a2)
{
  if (a2 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  v3 = 0x8F5C28F5C28F5C29 * ((a1[17] - a1[16]) >> 3) - 0x70A3D70A3D70A3D7 * ((a1[20] - a1[19]) >> 3);
  return v3 <= a2 && v3 - 0x70A3D70A3D70A3D7 * ((a1[23] - a1[22]) >> 3) > a2;
}

void sub_1108290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, char a6, uint64_t a7)
{
  v27 = a6;
  *(a1 + 200) = 0x7FFFFFFF;
  v26 = 0x7FFFFFFF;
  v25[0] = a1;
  v25[1] = &v26;
  v25[2] = a5;
  v24[0] = a1;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = &v26;
  v24[4] = &v27;
  v24[5] = a7;
  v8 = *(a1 + 128);
  v9 = *(a1 + 136);
  if (v8 != v9)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v22 = _Q0;
    do
    {
      v28 = 0u;
      v29 = 0u;
      v30 = v22;
      v31 = 0x3FF0000000000000;
      v32 = 1;
      sub_10AFB6C(a3, &v28, (v8 + 26), (v8 + 28), a4, 0);
      if (v32)
      {
        v17 = sub_F8634C(&v28, &v30, v16);
        if (v29 + v17 != -1 && DWORD1(v29) + HIDWORD(v17) != 0x7FFFFFFF && *(&v29 + 1) + v18 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = *v8;
          v23 = DWORD1(v29) + HIDWORD(v17);
          LODWORD(v28) = v21;
          sub_110A6C4(a2 + 8, &v28, &v23);
        }
      }

      v8 += 50;
    }

    while (v8 != v9);
  }

  sub_11083EC(a2, v25, &v28, v24);
}

void sub_11083EC(uint64_t a1, _DWORD **a2, uint64_t a3, uint64_t a4)
{
  while (*(a1 + 880))
  {
    v7 = *(a1 + 832);
    v8 = (*(a1 + 776) + 8 * *v7);
    v10 = *v8;
    v9 = v8[1];
    sub_DD38(a1 + 800, v7);
    v11 = *(a1 + 832);
    *(*(a1 + 856) + 4 * *v11) = -1;
    v12 = *(a1 + 880) - 1;
    *(a1 + 880) = v12;
    if (v12)
    {
      *v11 = v11[v12];
      v13 = *(a1 + 832);
      *(*(a1 + 856) + 4 * *v13) = 0;
      v14 = *(a1 + 880);
      if (v14 >= 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 1;
        do
        {
          v18 = v15 + 5;
          if (v18 >= v14)
          {
            v19 = v14;
          }

          else
          {
            v19 = v18;
          }

          if (v18 <= v17)
          {
            break;
          }

          v20 = v16;
          v21 = v13[2 * v16 + 1];
          v22 = &v13[2 * v17 + 1];
          v16 = -1;
          v23 = v21;
          do
          {
            v25 = *v22;
            v22 += 2;
            v24 = v25;
            if (v25 < v23)
            {
              v23 = v24;
              v16 = v17;
            }

            ++v17;
          }

          while (v17 < v19);
          if (v16 >= v14)
          {
            break;
          }

          v26 = 2 * v16;
          v27 = &v13[v26];
          v28 = 8 * v20;
          v29 = *&v13[v26];
          *v27 = *(v13 + v28);
          v27[1] = v21;
          *(v13 + v28) = v29;
          v13 = *(a1 + 832);
          v30 = v13[v26];
          v31 = *(a1 + 856);
          v32 = *(v13 + v28);
          LODWORD(v28) = *(v31 + 4 * v30);
          *(v31 + 4 * v30) = *(v31 + 4 * v32);
          *(v31 + 4 * v32) = v28;
          v15 = 4 * v16;
          v17 = (4 * v16) | 1;
          v14 = *(a1 + 880);
        }

        while (v17 < v14);
      }
    }

    *(a1 + 840) -= 8;
    if (v10 != -1)
    {
      v33 = *a2;
      v34 = 0x8F5C28F5C28F5C29 * ((*(*a2 + 17) - *(*a2 + 16)) >> 3);
      if (v34 <= v10 && v34 - 0x70A3D70A3D70A3D7 * ((*(*a2 + 20) - *(*a2 + 19)) >> 3) > v10)
      {
        v36 = *(v33 + 50);
        if (v36 == 0x7FFFFFFF || v9 < v36)
        {
          *(v33 + 50) = v9;
        }
      }
    }

    v37 = *a2[2];
    v38 = 0x7FFFFFFF;
    if (v37 != 0x7FFFFFFF)
    {
      if (v9 < 0)
      {
        v39 = -5;
      }

      else
      {
        v39 = 5;
      }

      v38 = v9 / 10 + v37 + (((103 * (v39 + v9 % 10)) >> 15) & 1) + ((103 * (v39 + v9 % 10)) >> 10);
    }

    *a2[1] = v38;
    v40 = (v10 + 1);
    v41 = *(*a1 + 48);
    if (v40 >= (*(*a1 + 56) - v41) >> 2)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v54 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
    }

    v42 = *(v41 + 4 * v10);
    v43 = *(v41 + 4 * v40);
    if (v42 != v43)
    {
      v44 = *(*a1 + 72);
      v45 = (v44 + 208 * v43);
      v46 = (v44 + 208 * v42 + 8);
      do
      {
        v47 = v46 - 2;
        v48 = sub_110872C(*a4, *(*a4 + 80) + 208 * *(v46 - 2), *(a4 + 8), *(a4 + 16), *(a4 + 24), **(a4 + 32), v9, *(a4 + 40));
        v46[37] = HIDWORD(v48);
        if (v48 != -1 && HIDWORD(v48) != 0x7FFFFFFF && v49 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v52 = *v46;
          v55 = v9 + HIDWORD(v48);
          v56 = v52;
          sub_110AA14(a1 + 8, &v56, &v55);
        }

        v46 += 52;
      }

      while (v47 + 52 != v45);
    }
  }
}

unint64_t sub_110872C(uint64_t *a1, uint64_t a2, int32x2_t *a3, uint64_t a4, int *a5, uint64_t a6, int a7, uint64_t a8)
{
  v12 = *(a2 + 4);
  if (v12 == -1)
  {
    v14 = 0;
    v15 = *(a2 + 8);
    if (v15 == -1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v13 = 0x8F5C28F5C28F5C29 * ((a1[17] - a1[16]) >> 3);
    if (v13 <= v12)
    {
      v23 = v13 - 0x70A3D70A3D70A3D7 * ((a1[20] - a1[19]) >> 3);
      v14 = v23 <= v12 && v23 - 0x70A3D70A3D70A3D7 * ((a1[23] - a1[22]) >> 3) > v12;
      v15 = *(a2 + 8);
      if (v15 == -1)
      {
LABEL_31:
        v20 = 0;
        if (*(a2 + 80))
        {
          v25 = *(a2 + 48) == 0;
        }

        else
        {
          v25 = 1;
        }

        if (!v25 && *(a2 + 56) != 0)
        {
          goto LABEL_49;
        }

LABEL_39:
        if (v14)
        {
          v27 = a1[16];
          v28 = 0x8F5C28F5C28F5C29 * ((a1[17] - v27) >> 3);
          v29 = v12 - v28;
          if (v12 >= v28)
          {
            v48 = a1[19];
            v49 = v28 - 0x70A3D70A3D70A3D7 * ((a1[20] - v48) >> 3);
            _CF = v12 >= v49;
            v50 = v12 - v49;
            if (_CF)
            {
              v30 = a1[22] + 200 * v50;
            }

            else
            {
              v30 = v48 + 200 * v29;
            }
          }

          else
          {
            v30 = v27 + 200 * v12;
          }

          v38 = (1000000000 - *(v30 + 112));
          if (v20)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v38 = 1000000000;
          if (v20)
          {
LABEL_69:
            v60 = a1[16];
            v61 = 0x8F5C28F5C28F5C29 * ((a1[17] - v60) >> 3);
            if (v15 >= v61)
            {
              v63 = a1[19];
              v64 = v61 - 0x70A3D70A3D70A3D7 * ((a1[20] - v63) >> 3);
              _CF = v15 >= v64;
              v65 = v15 - v64;
              if (_CF)
              {
                v62 = a1[22] + 200 * v65;
              }

              else
              {
                v62 = v63 + 200 * (v15 - v61);
              }
            }

            else
            {
              v62 = v60 + 200 * v15;
            }

            v39 = *(v62 + 16);
            return sub_117F22C(*(a2 + 16), *(a2 + 24), 0, 0, a3, a4, a6, *a5, a7, 0, v38, SHIDWORD(v38), v39, a8, *a1);
          }
        }

        v39 = 0;
        return sub_117F22C(*(a2 + 16), *(a2 + 24), 0, 0, a3, a4, a6, *a5, a7, 0, v38, SHIDWORD(v38), v39, a8, *a1);
      }
    }

    else
    {
      v14 = 1;
      v15 = *(a2 + 8);
      if (v15 == -1)
      {
        goto LABEL_31;
      }
    }
  }

  v16 = 0x8F5C28F5C28F5C29 * ((a1[17] - a1[16]) >> 3);
  v17 = v16 - 0x70A3D70A3D70A3D7 * ((a1[20] - a1[19]) >> 3);
  if (v17 <= v15 && v17 - 0x70A3D70A3D70A3D7 * ((a1[23] - a1[22]) >> 3) > v15)
  {
    v20 = 1;
    if (*(a2 + 80))
    {
      v31 = *(a2 + 48) == 0;
    }

    else
    {
      v31 = 1;
    }

    if (v31 || *(a2 + 56) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v20 = v16 <= v15 && v17 > v15;
    if (*(a2 + 80))
    {
      _ZF = *(a2 + 48) == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (_ZF || *(a2 + 56) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_49:
  v33 = a1[16];
  v34 = 0x8F5C28F5C28F5C29 * ((a1[17] - v33) >> 3);
  v35 = v15 - v34;
  if (v15 >= v34)
  {
    v40 = a1[19];
    v41 = v34 - 0x70A3D70A3D70A3D7 * ((a1[20] - v40) >> 3);
    _CF = v15 >= v41;
    v43 = v15 - v41;
    if (_CF)
    {
      v36 = (a1[22] + 200 * v43 + 16);
      v37 = v12 - v34;
      if (v12 >= v34)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v36 = (v40 + 200 * v35 + 16);
      v37 = v12 - v34;
      if (v12 >= v34)
      {
        goto LABEL_56;
      }
    }

LABEL_61:
    v47 = v33 + 200 * v12;
    goto LABEL_63;
  }

  v36 = (v33 + 200 * v15 + 16);
  v37 = v12 - v34;
  if (v12 < v34)
  {
    goto LABEL_61;
  }

LABEL_56:
  v44 = a1[19];
  v45 = v34 - 0x70A3D70A3D70A3D7 * ((a1[20] - v44) >> 3);
  _CF = v12 >= v45;
  v46 = v12 - v45;
  if (_CF)
  {
    v47 = a1[22] + 200 * v46;
  }

  else
  {
    v47 = v44 + 200 * v37;
  }

LABEL_63:
  v51 = *v36 - *(v47 + 112);
  sub_35CC(v66, *a5);
  v52 = *(*(a2 + 24) - 8);
  v67 = 0u;
  v68 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v69 = _Q0;
  v70 = 0x3FF0000000000000;
  v71 = 1;
  sub_10B0E88(a3, &v67, (v52 + 40), v51, a4, v66, a6);
  if (v71 == 1)
  {
    v57 = sub_F8634C(&v67, &v69, v56);
    v58 = (v68 + v57) | ((DWORD1(v68) + HIDWORD(v57)) << 32);
  }

  else
  {
    v58 = 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_3874(v66);
  return v58;
}

void sub_1108B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void *sub_1108B54()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  sub_10B73A8();
  v10 = ((v9[8] - v9[7]) >> 2) - 1;
  v55 = v9 + 1;
  sub_1109D08(v56, v10);
  sub_1108290(v9, &v55, v65, v8, v4, v2, &v68);
  v49 = (((v9[8] - v9[7]) << 30) - 0x100000000) >> 32;
  if (v49)
  {
    v12 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v50 = _Q0;
    while (v12 != 0xFFFFFFFF)
    {
      v17 = v9[16];
      if (0x8F5C28F5C28F5C29 * ((v9[17] - v17) >> 3) <= v12)
      {
        break;
      }

      v69 = 0u;
      v68 = 0u;
      v70 = v50;
      v71 = 1.0;
      v72 = 1;
      sub_10AFB6C(v65, &v68, v17 + 200 * v12 + 104, v17 + 200 * v12 + 112, v6, 0);
      if (v72)
      {
        v19 = sub_F8634C(&v68, &v70, v18);
        v53 = v69 + v19;
        if (v69 + v19 != -1)
        {
          v52 = DWORD1(v69) + HIDWORD(v19);
          if (DWORD1(v69) + HIDWORD(v19) != 0x7FFFFFFF)
          {
            v51 = *(&v69 + 1) + v20;
            if (*(&v69 + 1) + v20 != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_23;
            }
          }
        }
      }

LABEL_14:
      if (++v12 == v49)
      {
        goto LABEL_2;
      }
    }

    v52 = 0;
    v53 = 0;
    v51 = 0;
LABEL_23:
    v21 = (v12 + 1);
    v22 = v9[7];
    if (v21 >= (v9[8] - v22) >> 2)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v48 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
    }

    v23 = *(v22 + 4 * v12);
    v24 = *(v22 + 4 * v21);
    if (v23 == v24)
    {
      goto LABEL_14;
    }

    v25 = v9[10];
    v26 = v25 + 208 * v24;
    v27 = v25 + 208 * v23;
    while (1)
    {
      v28 = *(v27 + 8);
      if (v28 == -1 || ((v29 = v9[17] - v9[16], v30 = 0x8F5C28F5C28F5C29 * (v29 >> 3), v31 = v9[19], v30 <= v28) ? (v32 = v30 - 0x70A3D70A3D70A3D7 * ((v9[20] - v31) >> 3) > v28) : (v32 = 0), !v32))
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
LABEL_33:
        LODWORD(v68) = 0x7FFFFFFF;
        v36 = sub_110872C(v9, v27, v65, v6, &v68, v2, 0, &v54);
        if (v36 != -1 && (v36 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000 && v37 != 0x7FFFFFFFFFFFFFFFLL)
        {
          *(v27 + 120) = (v33 + v53 + v36) | ((v34 + v52 + HIDWORD(v36)) << 32);
          *(v27 + 128) = v35 + v51 + v37;
        }

        goto LABEL_26;
      }

      v68 = 0u;
      v69 = 0u;
      v70 = v50;
      v71 = 1.0;
      v72 = 1;
      sub_10AFB6C(v65, &v68, v31 - v29 + 200 * v28 + 8, v31 - v29 + 200 * v28 + 16, v6, 0);
      if (v72)
      {
        break;
      }

LABEL_26:
      v27 += 208;
      if (v27 == v26)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v38) = v68;
    v39 = *&v70 * v38;
    if (v39 >= 0.0)
    {
      if (v39 >= 4.50359963e15)
      {
        goto LABEL_44;
      }

      v40 = (v39 + v39) + 1;
    }

    else
    {
      if (v39 <= -4.50359963e15)
      {
        goto LABEL_44;
      }

      v40 = (v39 + v39) - 1 + (((v39 + v39) - 1) >> 63);
    }

    v39 = (v40 >> 1);
LABEL_44:
    v41 = *(&v70 + 1) * SDWORD1(v68);
    if (v41 >= 0.0)
    {
      if (v41 >= 4.50359963e15)
      {
        goto LABEL_50;
      }

      v42 = (v41 + v41) + 1;
    }

    else
    {
      if (v41 <= -4.50359963e15)
      {
        goto LABEL_50;
      }

      v42 = (v41 + v41) - 1 + (((v41 + v41) - 1) >> 63);
    }

    v41 = (v42 >> 1);
LABEL_50:
    v43 = v71 * *(&v68 + 1);
    if (v43 >= 0.0)
    {
      if (v43 >= 4.50359963e15)
      {
        goto LABEL_56;
      }

      v44 = (v43 + v43) + 1;
    }

    else
    {
      if (v43 <= -4.50359963e15)
      {
        goto LABEL_56;
      }

      v44 = (v43 + v43) - 1 + (((v43 + v43) - 1) >> 63);
    }

    v43 = (v44 >> 1);
LABEL_56:
    v33 = v69 + v39;
    v34 = DWORD1(v69) + v41;
    v35 = *(&v69 + 1) + v43;
    if (v33 != -1 && v34 != 0x7FFFFFFF && v35 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

LABEL_2:
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
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

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  result = sub_360988(v56);
  if (v67 == 1)
  {
    return sub_3E3DF0(v66);
  }

  return result;
}

void sub_11090B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_404190(va);
  if (LOBYTE(STACK[0x18C0]) == 1)
  {
    sub_3E3DF0(&STACK[0x400]);
  }

  _Unwind_Resume(a1);
}

void sub_1109100(char ***a1, unsigned int *a2, unsigned int a3)
{
  v7 = **a1;
  v6 = (*a1)[1];
  while (v6 != v7)
  {
    v8 = *(v6 - 1);
    v6 -= 8;
    v9 = (((*(v8 + 72) >> 16) & 0xFFFF0000 | (*(v8 + 72) << 32) | (2 * ((*(v8 + 72) & 0xFF000000000000) == 0))) + 4 * *(v8 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v8 + 88) >> 1) & 1;
    v10 = sub_10DF6C4(a2);
    if (v9 == ((((*(v10 + 72) >> 16) & 0xFFFF0000 | (*(v10 + 72) << 32) | (2 * ((*(v10 + 72) & 0xFF000000000000) == 0))) + 4 * *(v10 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v10 + 88) >> 1) & 1))
    {
      *a1[1] = 0;
      break;
    }
  }

  v11 = *a2;
  v12 = a1[3];
  *a1[2] = v11;
  *v12 = *&(*a1[4])[4 * v11];
  v13 = sub_10DF6C4(a2);
  v14 = v13;
  v15 = 3;
  if (!*(v13 + 38))
  {
    v15 = 2;
  }

  v16 = v13[v15];
  v17 = 0.0;
  v18 = 0.0;
  if (!v16)
  {
LABEL_20:
    v28 = *v13;
    v29 = &(*v13)[-**v13];
    if (*v29 < 9u)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v19 = a1[6];
  v20 = (v16 - *v16);
  v21 = *v20;
  if (v21 >= 0xB && v20[5])
  {
    v22 = *(v16 + v20[5]);
    v23 = *(v19 + 1940);
    if (!v23)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v22 = 0xFFFF;
    v23 = *(v19 + 1940);
    if (!v23)
    {
      goto LABEL_17;
    }
  }

  if (v21 >= 0x11)
  {
    v24 = v20[8];
    if (v24)
    {
      v25 = (v16 + v24 + *(v16 + v24));
      if (*v25 >= v23)
      {
        v26 = *(v25 + v23 + 1);
        if ((v26 + 1) > 1u)
        {
          v27 = v26;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_17:
  if (v22 != 0xFFFF)
  {
    v27 = v22;
LABEL_19:
    v18 = v27 / 1000.0;
    goto LABEL_20;
  }

  v18 = 0.3;
  v28 = *v13;
  v29 = &(*v13)[-**v13];
  if (*v29 < 9u)
  {
    goto LABEL_24;
  }

LABEL_21:
  v30 = *(v29 + 4);
  if (v30)
  {
    LODWORD(v17) = *(v28 + v30);
    v17 = *&v17;
  }

LABEL_24:
  v31 = a3 / 1000000000.0;
  *a1[5] = *a1[5] + v31 * (v18 * v17);
  *a1[7] = (*a1[7] | sub_F6D98C(v13, 1, 1));
  v33 = *v14;
  v34 = **v14;
  v35 = -v34;
  v36 = &(*v14)[-v34];
  if (*v36 < 0x2Fu || (v37 = *(v36 + 23), !*(v36 + 23)))
  {
    v42 = a1[9];
    *a1[8] = 0;
    *v42 = 0;
    goto LABEL_57;
  }

  v41 = !v33[v37] && (v38 = v14[5], v39 = (v38 - *v38), *v39 >= 0x2Fu) && (v40 = v39[23]) != 0 && *(v38 + v40) == 0;
  *a1[8] &= v41;
  v43 = v33[v37];
  v44 = v43 > 0x1A;
  v45 = (1 << v43) & 0x4810001;
  if (v44 || v45 == 0)
  {
    goto LABEL_46;
  }

  v47 = v14[5];
  v48 = (v47 - *v47);
  if (*v48 < 0x2Fu)
  {
    goto LABEL_46;
  }

  v49 = v48[23];
  if (!v49)
  {
    goto LABEL_46;
  }

  v50 = *(v47 + v49);
  v51 = 1;
  if (v50 > 22)
  {
    if (v50 != 23 && v50 != 26)
    {
      goto LABEL_46;
    }
  }

  else if (v50 && v50 != 16)
  {
LABEL_46:
    v51 = 0;
  }

  *a1[9] &= v51;
  if (v33[v37])
  {
    goto LABEL_57;
  }

  if (*(v36 + 4))
  {
    LODWORD(v32) = *&v33[*(v36 + 4)];
    v32 = v31 * *&v32;
    if (v32 < 0.0)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v32 = v31 * 0.0;
    if (v31 * 0.0 < 0.0)
    {
LABEL_50:
      if (v32 > -4.50359963e15)
      {
        v53 = (v32 + v32) - 1 + (((v32 + v32) - 1) >> 63);
LABEL_55:
        v32 = (v53 >> 1);
        goto LABEL_56;
      }

      goto LABEL_56;
    }
  }

  if (v32 < 4.50359963e15)
  {
    v53 = (v32 + v32) + 1;
    goto LABEL_55;
  }

LABEL_56:
  *a1[10] += v32;
  v33 = *v14;
  v35 = -**v14;
LABEL_57:
  v54 = &v33[v35];
  if (*v54 >= 0x2Fu && *(v54 + 23))
  {
    v55 = v33[*(v54 + 23)];
    v44 = v55 > 0x1A;
    v56 = (1 << v55) & 0x4810000;
    if (!v44 && v56 != 0)
    {
      v58 = *(v54 + 4);
      if (v58)
      {
        LODWORD(v32) = *&v33[v58];
        v59 = v31 * *&v32;
        if (v59 < 0.0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v59 = v31 * 0.0;
        if (v31 * 0.0 < 0.0)
        {
LABEL_65:
          if (v59 > -4.50359963e15)
          {
            v60 = (v59 + v59) - 1 + (((v59 + v59) - 1) >> 63);
LABEL_70:
            v59 = (v60 >> 1);
            goto LABEL_71;
          }

          goto LABEL_71;
        }
      }

      if (v59 < 4.50359963e15)
      {
        v60 = (v59 + v59) + 1;
        goto LABEL_70;
      }

LABEL_71:
      *a1[11] += v59;
    }
  }

  v61 = *a1;
  v63 = (*a1)[1];
  v62 = (*a1)[2];
  if (v63 >= v62)
  {
    v65 = *v61;
    v66 = v63 - *v61;
    v67 = v66 >> 3;
    v68 = (v66 >> 3) + 1;
    if (v68 >> 61)
    {
      sub_1794();
    }

    v69 = v62 - v65;
    if (v69 >> 2 > v68)
    {
      v68 = v69 >> 2;
    }

    if (v69 >= 0x7FFFFFFFFFFFFFF8)
    {
      v70 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v70 = v68;
    }

    if (v70)
    {
      if (!(v70 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v67) = v14;
    v64 = 8 * v67 + 8;
    memcpy(0, v65, v66);
    *v61 = 0;
    v61[1] = v64;
    v61[2] = 0;
    if (v65)
    {
      operator delete(v65);
    }
  }

  else
  {
    *v63 = v14;
    v64 = (v63 + 8);
  }

  v61[1] = v64;
}

uint64_t sub_1109678(uint64_t a1, int *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = 0x8F5C28F5C28F5C29 * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v6 > 0x147AE147AE147AELL)
  {
    sub_1794();
  }

  if (0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3) > v6)
  {
    v6 = 0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v8 = 0x147AE147AE147AELL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_1808();
  }

  sub_1106228(8 * ((*(a1 + 8) - *a1) >> 3), *a2, a3, a4, a5, a6);
  v10 = v9 + 200;
  v11 = *a1;
  v12 = *(a1 + 8) - *a1;
  v13 = v9 - v12;
  memcpy((v9 - v12), *a1, v12);
  *a1 = v13;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_11097D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11097EC(uint64_t a1, int *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = 0x8F5C28F5C28F5C29 * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v6 > 0x147AE147AE147AELL)
  {
    sub_1794();
  }

  if (0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3) > v6)
  {
    v6 = 0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v8 = 0x147AE147AE147AELL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_1808();
  }

  sub_1106228(8 * ((*(a1 + 8) - *a1) >> 3), *a2, a3, a4, a5, a6);
  v10 = v9 + 200;
  v11 = *a1;
  v12 = *(a1 + 8) - *a1;
  v13 = v9 - v12;
  memcpy((v9 - v12), *a1, v12);
  *a1 = v13;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_1109948(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1109960(uint64_t a1, int *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = 0x8F5C28F5C28F5C29 * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v6 > 0x147AE147AE147AELL)
  {
    sub_1794();
  }

  if (0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3) > v6)
  {
    v6 = 0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v8 = 0x147AE147AE147AELL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_1808();
  }

  sub_1106228(8 * ((*(a1 + 8) - *a1) >> 3), *a2, a3, a4, a5, a6);
  v10 = v9 + 200;
  v11 = *a1;
  v12 = *(a1 + 8) - *a1;
  v13 = v9 - v12;
  memcpy((v9 - v12), *a1, v12);
  *a1 = v13;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_1109ABC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1109AD4(void *a1)
{
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    a1[13] = v3;
    operator delete(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    a1[3] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1109B28(uint64_t a1, int a2, int a3, int a4, uint64_t a5, void *a6, _OWORD *a7, void *a8, double a9, uint64_t *a10, char a11, char a12, int a13, int a14, uint64_t a15, uint64_t a16, void *a17)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = *a5;
  *(a1 + 32) = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0x1000000000000;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  v17 = a6[1];
  if (v17 != *a6)
  {
    if (((v17 - *a6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 120) = *a7;
  *(a1 + 136) = *a8;
  v18 = *a10;
  *(a1 + 184) = 0;
  *(a1 + 144) = v18;
  *(a1 + 152) = a11;
  *(a1 + 153) = a12;
  *(a1 + 156) = a14;
  *(a1 + 160) = a9;
  *(a1 + 168) = a15;
  *(a1 + 176) = a16;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v19 = a17[1];
  if (v19 != *a17)
  {
    if (((v19 - *a17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_1109CA4(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    v1[24] = v5;
    operator delete(v5);
    v6 = v1[12];
    if (!v6)
    {
LABEL_3:
      v7 = *v3;
      if (!*v3)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v6 = v1[12];
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  v1[13] = v6;
  operator delete(v6);
  v7 = *v3;
  if (!*v3)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  v1[3] = v7;
  operator delete(v7);
  _Unwind_Resume(exception_object);
}

void *sub_1109D08(void *a1, unsigned int a2)
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

void sub_1109DF4(_Unwind_Exception *a1)
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

uint64_t sub_1109E54(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2 != -1)
  {
    operator new();
  }

  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  return a1;
}

void sub_1109F30(_Unwind_Exception *a1)
{
  v4 = *(v1 + 48);
  if (v4)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  sub_10DF1D8(v2);
  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_1109F6C(void **a1, unint64_t a2)
{
  if (0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x13B13B13B13B13CLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_110A04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_110A060(va);
  _Unwind_Resume(a1);
}

uint64_t sub_110A060(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 208;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 112);
    if (v5)
    {
      *(i - 104) = v5;
      operator delete(v5);
    }

    v6 = *(i - 192);
    if (v6)
    {
      *(i - 184) = v6;
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_110A0E8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 8) = *(v6 + 2);
      *a4 = v7;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 1);
      *(a4 + 32) = v6[4];
      v6[2] = 0;
      v6[3] = 0;
      v6[4] = 0;
      v8 = *(v6 + 5);
      v9 = *(v6 + 7);
      v10 = v6[11];
      *(a4 + 72) = *(v6 + 9);
      *(a4 + 56) = v9;
      *(a4 + 40) = v8;
      *(a4 + 88) = v10;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v6 + 6);
      *(a4 + 112) = v6[14];
      v6[12] = 0;
      v6[13] = 0;
      v6[14] = 0;
      v11 = *(v6 + 15);
      v12 = *(v6 + 17);
      v13 = *(v6 + 19);
      *(a4 + 168) = *(v6 + 21);
      *(a4 + 152) = v13;
      *(a4 + 136) = v12;
      *(a4 + 120) = v11;
      *(a4 + 192) = 0;
      *(a4 + 200) = 0;
      *(a4 + 184) = 0;
      *(a4 + 184) = *(v6 + 23);
      *(a4 + 200) = v6[25];
      v6[23] = 0;
      v6[24] = 0;
      v6[25] = 0;
      v6 += 26;
      a4 += 208;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v14 = v5[23];
      if (v14)
      {
        v5[24] = v14;
        operator delete(v14);
      }

      v15 = v5[12];
      if (v15)
      {
        v5[13] = v15;
        operator delete(v15);
      }

      v16 = v5[2];
      if (v16)
      {
        v5[3] = v16;
        operator delete(v16);
      }

      v5 += 26;
    }
  }
}

void sub_110A21C(uint64_t a1, unint64_t a2, _OWORD *a3)
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

uint64_t sub_110A370(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = 0;
  *a1 = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = a2[2];
  v3 = a2[3];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = *(a2 + 5);
  v6 = *(a2 + 7);
  v7 = *(a2 + 9);
  v8 = a2[11];
  *(a1 + 96) = 0;
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v10 = a2[12];
  v9 = a2[13];
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *(a2 + 15);
  v12 = *(a2 + 17);
  v13 = *(a2 + 19);
  v14 = *(a2 + 21);
  *(a1 + 184) = 0;
  *(a1 + 152) = v13;
  *(a1 + 168) = v14;
  *(a1 + 120) = v11;
  *(a1 + 136) = v12;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v16 = a2[23];
  v15 = a2[24];
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_110A500(_Unwind_Exception *exception_object)
{
  v6 = *v2;
  if (*v2)
  {
    v1[24] = v6;
    operator delete(v6);
    v7 = *v4;
    if (!*v4)
    {
LABEL_3:
      v8 = *v3;
      if (!*v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v7 = *v4;
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  v1[13] = v7;
  operator delete(v7);
  v8 = *v3;
  if (!*v3)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  v1[3] = v8;
  operator delete(v8);
  goto LABEL_5;
}

void sub_110A560()
{
  if (!*v0)
  {
    JUMPOUT(0x110A524);
  }

  JUMPOUT(0x110A51CLL);
}

void sub_110A570(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_1794();
    }

    v8 = v3 - v5;
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

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_110A6C4(uint64_t a1, unsigned int *a2, unsigned int *a3)
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
    sub_F8B0C4(a1, a2, &v40);
    v20 = v41;
    v21 = *(v40 + 8);
    if (v42 == 1)
    {
      *(v21 + 8 * v41) = *a2;
    }

    *(v21 + 8 * v20 + 4) = v19 >> 3;
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 >= v23)
    {
      v25 = *(a1 + 768);
      v26 = v22 - v25;
      v27 = (v22 - v25) >> 3;
      v28 = v27 + 1;
      if ((v27 + 1) >> 61)
      {
        sub_1794();
      }

      v29 = v23 - v25;
      if (v29 >> 2 > v28)
      {
        v28 = v29 >> 2;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        if (!(v30 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v34 = v27;
      v35 = (8 * v27);
      v36 = *a3;
      *v35 = *a2;
      v35[1] = v36;
      v24 = 8 * v27 + 8;
      v37 = &v35[-2 * v34];
      memcpy(v37, v25, v26);
      *(a1 + 768) = v37;
      *(a1 + 776) = v24;
      *(a1 + 784) = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v22 = *a2;
      *(v22 + 1) = *a3;
      v24 = (v22 + 8);
    }

    *(a1 + 776) = v24;
    v38 = (v19 >> 3);
    v39 = *(a1 + 848);
    if (v38 >= (*(a1 + 856) - v39) >> 2 || *(v39 + 4 * v38) == -1)
    {
      sub_F8B720((a1 + 824), v19 >> 3, a3);
    }

    else
    {
      sub_F8B8B0((a1 + 824), v19 >> 3, a3);
    }

    return;
  }

  v31 = v17 + 8 * v18;
  *(*(a1 + 768) + 8 * *(v31 + 4) + 4) = *a3;
  v32 = *(v31 + 4);
  v33 = *(a1 + 848);
  if (v32 >= (*(a1 + 856) - v33) >> 2 || *(v33 + 4 * v32) == -1)
  {

    sub_F8B720((a1 + 824), v32, a3);
  }

  else
  {

    sub_F8B8B0((a1 + 824), v32, a3);
  }
}

uint64_t sub_110AA14(uint64_t a1, unsigned int *a2, int *a3)
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
    sub_F8B0C4(a1, a2, &v48);
    v20 = v49;
    v21 = *(v48 + 8);
    if (v50 == 1)
    {
      *(v21 + 8 * v49) = *a2;
    }

    *(v21 + 8 * v20 + 4) = v19 >> 3;
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 >= v23)
    {
      v25 = *(a1 + 768);
      v26 = v22 - v25;
      v27 = (v22 - v25) >> 3;
      v28 = v27 + 1;
      if ((v27 + 1) >> 61)
      {
        sub_1794();
      }

      v29 = v23 - v25;
      if (v29 >> 2 > v28)
      {
        v28 = v29 >> 2;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        if (!(v30 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v40 = v27;
      v41 = (8 * v27);
      v42 = *a3;
      *v41 = *a2;
      v41[1] = v42;
      v24 = 8 * v27 + 8;
      v43 = &v41[-2 * v40];
      memcpy(v43, v25, v26);
      *(a1 + 768) = v43;
      *(a1 + 776) = v24;
      *(a1 + 784) = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v22 = *a2;
      *(v22 + 1) = *a3;
      v24 = (v22 + 8);
    }

    *(a1 + 776) = v24;
    v44 = (v19 >> 3);
    v45 = *(a1 + 848);
    if (v44 < (*(a1 + 856) - v45) >> 2 && *(v45 + 4 * v44) != -1)
    {
      v39 = (a1 + 824);
      v37 = v19 >> 3;
      goto LABEL_31;
    }

    v46 = (a1 + 824);
    v37 = v19 >> 3;
    goto LABEL_33;
  }

  v31 = v17 + 8 * v18;
  v33 = *(v31 + 4);
  v32 = (v31 + 4);
  v34 = *(a1 + 768) + 8 * v33;
  v36 = *(v34 + 4);
  v35 = (v34 + 4);
  if (*a3 < v36)
  {
    ++*(a1 + 816);
    *v35 = *a3;
    v37 = *v32;
    v38 = *(a1 + 848);
    if (v37 < (*(a1 + 856) - v38) >> 2 && *(v38 + 4 * v37) != -1)
    {
      v39 = (a1 + 824);
LABEL_31:
      sub_F8B8B0(v39, v37, a3);
      return 1;
    }

    v46 = (a1 + 824);
LABEL_33:
    sub_F8B720(v46, v37, a3);
    return 1;
  }

  return 0;
}

void sub_110AD34()
{
  byte_27C2A97 = 3;
  LODWORD(qword_27C2A80) = 5136193;
  byte_27C2AAF = 3;
  LODWORD(qword_27C2A98) = 5136194;
  byte_27C2AC7 = 3;
  LODWORD(qword_27C2AB0) = 5136195;
  byte_27C2ADF = 15;
  strcpy(&qword_27C2AC8, "vehicle_mass_kg");
  byte_27C2AF7 = 21;
  strcpy(&xmmword_27C2AE0, "vehicle_cargo_mass_kg");
  byte_27C2B0F = 19;
  strcpy(&qword_27C2AF8, "vehicle_aux_power_w");
  byte_27C2B27 = 15;
  strcpy(&qword_27C2B10, "dcdc_efficiency");
  strcpy(&qword_27C2B28, "drive_train_efficiency");
  HIBYTE(word_27C2B3E) = 22;
  operator new();
}

void sub_110AF10(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C2B3E) < 0)
  {
    sub_21E82B8();
  }

  sub_21E82C4();
  _Unwind_Resume(a1);
}

double sub_110AF30(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = -1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

void *sub_110AF4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a5;
  *(a1 + 8) = 0;
  v102 = (((a2[7] - a2[6]) << 30) - 0x100000000) >> 32;
  if (v102)
  {
    v18 = 0;
    v101 = (a1 + 40);
    while (1)
    {
      v103 = v18;
      v108 = v18;
      v106 = sub_F75E1C(a2, v18) && *sub_F75E48(a2, v108) == 3;
      if (sub_F75E1C(a2, v108))
      {
        v19 = sub_F75E48(a2, v108);
        v20 = *(v19 + 160);
        v129 = *(v19 + 144);
        v130 = v20;
        *v131 = *(v19 + 176);
        *&v131[16] = *(v19 + 192);
        v21 = *(v19 + 128);
        v127 = *(v19 + 112);
        v128 = v21;
      }

      else
      {
        LODWORD(v127) = 0;
        v128 = 0uLL;
        *(&v127 + 1) = 0;
        LOBYTE(v129) = 0;
        *(&v129 + 1) = 0x3FF0000000000000;
        LOBYTE(v130) = 1;
        *(&v130 + 1) = 0;
        *v131 = 0;
        *&v131[8] = 0;
        *&v131[10] = -29536;
        *&v131[12] = 0;
        *&v131[15] = 0;
      }

      v22 = (v108 + 1);
      v23 = a2[6];
      if (v22 >= (a2[7] - v23) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v100 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v24 = *(v23 + 4 * v108);
      v25 = *(v23 + 4 * v22);
      if (v24 != v25)
      {
        break;
      }

LABEL_21:
      v18 = v103 + 1;
      if (v103 + 1 == v102)
      {
        goto LABEL_2;
      }
    }

    v26 = a2[9];
    v109 = (v26 + 80 * v25);
    v27 = (v26 + 80 * v24);
    while (1)
    {
      v28 = *v27;
      v29 = sub_5FC5C();
      v30 = sub_F75E1C(a2, v28) && *sub_F75E48(a2, v28) == 4;
      if (sub_F75E1C(a2, v28))
      {
        v31 = sub_F75E48(a2, v28);
        v32 = *(v31 + 64);
        v124 = *(v31 + 48);
        v125 = v32;
        *v126 = *(v31 + 80);
        *&v126[16] = *(v31 + 96);
        v33 = *(v31 + 32);
        v122 = *(v31 + 16);
        v123 = v33;
      }

      else
      {
        LODWORD(v122) = 0;
        v123 = 0uLL;
        *(&v122 + 1) = 0;
        LOBYTE(v124) = 0;
        *(&v124 + 1) = 0x3FF0000000000000;
        LOBYTE(v125) = 1;
        *(&v125 + 1) = 0;
        *v126 = 0;
        *&v126[8] = 0;
        *&v126[10] = -29536;
        *&v126[12] = 0;
        *&v126[15] = 0;
      }

      if (sub_F85894((v27 + 2)) && sub_38EC(v27 + 14))
      {
        break;
      }

LABEL_31:
      v27 += 20;
      if (v27 == v109)
      {
        goto LABEL_21;
      }
    }

    if (v106 && v30)
    {
      v34 = *v27;
      v35 = *(a1 + 8);
      v137 = 0u;
      v138 = 0u;
      *v132 = 0xFFFFFFFFLL;
      *&v132[8] = 0u;
      v133 = 0u;
      v134 = 0x1000000000000;
      v135 = 0u;
      v136 = 0u;
      *&v137 = 0x1000000000000;
      WORD6(v137) = 640;
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v120 = 0;
      v119 = 0;
      v121 = 0;
      sub_111B734((v27 + 2), v27 + 14, v108, v34, v35, v132, &v119, &v110);
      if (v119)
      {
        v120 = v119;
        operator delete(v119);
      }

      if (*(&v141 + 1))
      {
        *&v142 = *(&v141 + 1);
        operator delete(*(&v141 + 1));
      }

      if (v139)
      {
        *(&v139 + 1) = v139;
        operator delete(v139);
      }

      v114 = 1;
    }

    else
    {
      v36 = *a4;
      v37 = *v27;
      v38 = sub_F75E1C(a2, v108);
      v39 = sub_F75E1C(a2, v28);
      sub_111A560(v27, v36 + 2464 * v29, a3, v108, v37, v38, &v127, &v110, v39, &v122, *(a1 + 8));
    }

    if (HIDWORD(v110) == -1 || v111 == -1)
    {
      sub_110BC98(a1, a2, a3, v108, v27, *a4 + 2464 * v29);
      v43 = v117;
      if (!v117)
      {
LABEL_55:
        v7 = a5;
        if (__p)
        {
          v116 = __p;
          operator delete(__p);
        }

        if (v112)
        {
          v113 = v112;
          operator delete(v112);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v41 = *(a1 + 24);
      v40 = *(a1 + 32);
      if (v41 >= v40)
      {
        v44 = *(a1 + 16);
        v45 = v41 - v44;
        v46 = (v41 - v44) >> 2;
        v47 = v46 + 1;
        if ((v46 + 1) >> 62)
        {
          sub_1794();
        }

        v48 = v40 - v44;
        if (v48 >> 1 > v47)
        {
          v47 = v48 >> 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v49 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v47;
        }

        if (v49)
        {
          if (!(v49 >> 62))
          {
            operator new();
          }

LABEL_123:
          sub_1808();
        }

        v50 = (v41 - v44) >> 2;
        v51 = (4 * v46);
        v52 = (4 * v46 - 4 * v50);
        *v51 = v103;
        v42 = v51 + 1;
        memcpy(v52, v44, v45);
        *(a1 + 16) = v52;
        *(a1 + 24) = v42;
        *(a1 + 32) = 0;
        if (v44)
        {
          operator delete(v44);
        }
      }

      else
      {
        *v41 = v103;
        v42 = v41 + 4;
      }

      *(a1 + 24) = v42;
      v54 = *(a1 + 48);
      v53 = *(a1 + 56);
      if (v54 >= v53)
      {
        v56 = 0x4EC4EC4EC4EC4EC5 * ((v54 - *v101) >> 4);
        v57 = v56 + 1;
        if ((v56 + 1) > 0x13B13B13B13B13BLL)
        {
          sub_1794();
        }

        v58 = 0x4EC4EC4EC4EC4EC5 * ((v53 - *v101) >> 4);
        if (2 * v58 > v57)
        {
          v57 = 2 * v58;
        }

        if (v58 >= 0x9D89D89D89D89DLL)
        {
          v59 = 0x13B13B13B13B13BLL;
        }

        else
        {
          v59 = v57;
        }

        *(&v133 + 1) = v101;
        if (v59)
        {
          if (v59 <= 0x13B13B13B13B13BLL)
          {
            operator new();
          }

          goto LABEL_123;
        }

        *v132 = 0;
        *&v132[8] = 208 * v56;
        *&v132[16] = 208 * v56;
        *&v133 = 0;
        sub_110A370(208 * v56, &v110);
        v55 = *&v132[16] + 208;
        *&v132[16] += 208;
        v61 = *(a1 + 40);
        v60 = *(a1 + 48);
        v62 = (*&v132[8] + v61 - v60);
        if (v61 != v60)
        {
          v63 = *(a1 + 40);
          v64 = (*&v132[8] + v61 - v60);
          do
          {
            v65 = *v63;
            *(v64 + 2) = *(v63 + 2);
            *v64 = v65;
            *(v64 + 3) = 0;
            *(v64 + 4) = 0;
            *(v64 + 2) = 0;
            *(v64 + 1) = *(v63 + 1);
            *(v64 + 4) = *(v63 + 4);
            *(v63 + 2) = 0;
            *(v63 + 3) = 0;
            *(v63 + 4) = 0;
            v66 = *(v63 + 40);
            v67 = *(v63 + 56);
            v68 = *(v63 + 11);
            *(v64 + 72) = *(v63 + 72);
            *(v64 + 56) = v67;
            *(v64 + 40) = v66;
            *(v64 + 11) = v68;
            *(v64 + 12) = 0;
            *(v64 + 13) = 0;
            *(v64 + 14) = 0;
            *(v64 + 6) = *(v63 + 6);
            *(v64 + 14) = *(v63 + 14);
            *(v63 + 12) = 0;
            *(v63 + 13) = 0;
            *(v63 + 14) = 0;
            v69 = *(v63 + 120);
            v70 = *(v63 + 136);
            v71 = *(v63 + 152);
            *(v64 + 168) = *(v63 + 168);
            *(v64 + 152) = v71;
            *(v64 + 136) = v70;
            *(v64 + 120) = v69;
            *(v64 + 24) = 0;
            *(v64 + 25) = 0;
            *(v64 + 23) = 0;
            *(v64 + 184) = *(v63 + 184);
            *(v64 + 25) = *(v63 + 25);
            *(v63 + 23) = 0;
            *(v63 + 24) = 0;
            *(v63 + 25) = 0;
            v63 += 208;
            v64 += 208;
          }

          while (v63 != v60);
          do
          {
            v72 = *(v61 + 23);
            if (v72)
            {
              *(v61 + 24) = v72;
              operator delete(v72);
            }

            v73 = *(v61 + 12);
            if (v73)
            {
              *(v61 + 13) = v73;
              operator delete(v73);
            }

            v74 = *(v61 + 2);
            if (v74)
            {
              *(v61 + 3) = v74;
              operator delete(v74);
            }

            v61 += 208;
          }

          while (v61 != v60);
        }

        v75 = *(a1 + 40);
        *(a1 + 40) = v62;
        *(a1 + 48) = v55;
        *(a1 + 56) = v133;
        if (v75)
        {
          operator delete(v75);
        }
      }

      else
      {
        sub_110A370(*(a1 + 48), &v110);
        v55 = v54 + 208;
        *(a1 + 48) = v54 + 208;
      }

      *(a1 + 48) = v55;
      ++*(a1 + 8);
      v43 = v117;
      if (!v117)
      {
        goto LABEL_55;
      }
    }

    v118 = v43;
    operator delete(v43);
    goto LABEL_55;
  }

LABEL_2:
  sub_10DFDAC(&v110, 0);
  sub_1107E04(v7, &v110, **a1);
  sub_110C4E4(a1, a2, v132);
  sub_110C7F4((v7 + 1), v132);
  sub_10DF174(v132);
  v119 = a2;
  sub_F75FFC(a2, &v122);
  v127 = v122;
  sub_110C8D4(&v127, v132);
  v8 = v7[16];
  if (v8)
  {
    v7[17] = v8;
    operator delete(v8);
  }

  *(v7 + 8) = *v132;
  v7[18] = *&v132[16];
  sub_F76020(a2, &v122);
  v127 = v122;
  sub_110C8D4(&v127, v132);
  v9 = v7[19];
  if (v9)
  {
    v7[20] = v9;
    operator delete(v9);
  }

  *(v7 + 19) = *v132;
  v7[21] = *&v132[16];
  sub_F76050(a2, &v122);
  v127 = v122;
  sub_110C8D4(&v127, v132);
  v10 = v7[22];
  if (v10)
  {
    v7[23] = v10;
    operator delete(v10);
  }

  *(v7 + 11) = *v132;
  v7[24] = *&v132[16];
  *v132 = a2;
  sub_1117C5C(&v132[8], 0x400u);
  v11 = sub_F76014(a2);
  v12 = v11;
  v13 = HIDWORD(v11);
  if (v11 != HIDWORD(v11))
  {
    do
    {
      LODWORD(v122) = 0;
      LODWORD(v127) = v12;
      sub_110A6C4(&v132[8], &v127, &v122);
      ++v12;
    }

    while (v13 != v12);
  }

  sub_110CA08(v132);
  LODWORD(v127) = 0x7FFFFFFF;
  v14 = sub_F7603C(a2);
  v15 = HIDWORD(v14);
  v16 = 0x7FFFFFFF;
  if (v14 != HIDWORD(v14))
  {
    do
    {
      v81 = 0;
      v87 = ~v14 + (v14 << 21);
      v88 = 21 * ((265 * (v87 ^ (v87 >> 24))) ^ ((265 * (v87 ^ (v87 >> 24))) >> 14));
      v89 = 2147483649u * (v88 ^ (v88 >> 28));
      v90 = &v132[48 * (((((v88 ^ (v88 >> 28)) >> 8) ^ ((-2147483647 * (v88 ^ (v88 >> 28))) >> 16)) ^ ((-2147483647 * (v88 ^ (v88 >> 28))) >> 24)) & 0xF) + 8];
      v91 = v89 >> 7;
      v92 = v90[3];
      v93 = *v90;
      v94 = 0x101010101010101 * (v89 & 0x7F);
      for (i = v91; ; i = v81 + v76)
      {
        v76 = i & v92;
        v77 = *(v93 + (i & v92));
        v78 = ((v77 ^ v94) - 0x101010101010101) & ~(v77 ^ v94) & 0x8080808080808080;
        if (v78)
        {
          break;
        }

LABEL_101:
        if ((v77 & (~v77 << 6) & 0x8080808080808080) != 0)
        {
          goto LABEL_104;
        }

        v81 += 8;
      }

      v79 = v90[1];
      while (1)
      {
        v80 = (v76 + (__clz(__rbit64(v78)) >> 3)) & v92;
        if (*(v79 + 8 * v80) == v14)
        {
          break;
        }

        v78 &= v78 - 1;
        if (!v78)
        {
          goto LABEL_101;
        }
      }

      if (v92 == v80)
      {
LABEL_104:
        v83 = 0x7FFFFFFF;
        goto LABEL_105;
      }

      for (j = 0; ; v91 = j + v96)
      {
        v96 = v91 & v92;
        v97 = ((*(v93 + v96) ^ v94) - 0x101010101010101) & ~(*(v93 + v96) ^ v94) & 0x8080808080808080;
        if (v97)
        {
          break;
        }

LABEL_117:
        j += 8;
      }

      while (1)
      {
        v98 = (v96 + (__clz(__rbit64(v97)) >> 3)) & v92;
        if (*(v79 + 8 * v98) == v14)
        {
          break;
        }

        v97 &= v97 - 1;
        if (!v97)
        {
          goto LABEL_117;
        }
      }

      v83 = v143[2 * *(v79 + 8 * v98 + 4) + 1];
LABEL_105:
      LODWORD(v122) = v83;
      if (v83 >= v16)
      {
        v84 = &v127;
      }

      else
      {
        v84 = &v122;
      }

      if (v83 == 0x7FFFFFFF)
      {
        v85 = &v127;
      }

      else
      {
        v85 = v84;
      }

      if (v16 == 0x7FFFFFFF)
      {
        v86 = &v122;
      }

      else
      {
        v86 = v85;
      }

      v16 = *v86;
      LODWORD(v127) = v16;
      LODWORD(v14) = v14 + 1;
    }

    while (v14 != v15);
  }

  *(a5 + 200) = v16;
  if (v149)
  {
    v150 = v149;
    operator delete(v149);
  }

  if (v147)
  {
    v148 = v147;
    operator delete(v147);
  }

  if (v145)
  {
    v146 = v145;
    operator delete(v145);
  }

  if (v143)
  {
    v144 = v143;
    operator delete(v143);
  }

  sub_360988(&v132[8]);
  return sub_FE90B8(&v110);
}

void sub_110BA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_404190(&STACK[0xAE0]);
  sub_FE565C(a16);
  sub_FE90B8(va);
  _Unwind_Resume(a1);
}

void sub_110BB38(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2464);
  if (v3)
  {
    STACK[0xA10] = v3;
    operator delete(v3);
  }

  sub_10E3774(&STACK[0xAE0]);
  _Unwind_Resume(a1);
}

void sub_110BB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_1109AD4(va);
  _Unwind_Resume(a1);
}

void sub_110BB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_1109AD4(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_110BB90(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 2;
    v9 = (v7 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_1794();
    }

    v10 = v3 - v6;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    *(4 * v8) = *a2;
    v5 = 4 * v8 + 4;
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
  return (v5 - 4);
}

uint64_t sub_110BC98(uint64_t a1, void *a2, void *a3, unsigned int a4, unsigned int *a5, uint64_t a6)
{
  v8 = a4;
  if (sub_F75E1C(a2, a4))
  {
    v9 = *sub_F75E48(a2, v8) == 4;
    result = sub_F75E1C(a2, v8);
    if (!result)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = sub_F75E48(a2, v8);
    if (v9 || *result == 5)
    {
      return result;
    }

    goto LABEL_7;
  }

  v9 = 0;
  result = sub_F75E1C(a2, v8);
  if (result)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v9)
  {
    return result;
  }

LABEL_7:
  v49 = sub_10E2C7C(a6);
  sub_1117DA8(v50, 0x400u);
  v11 = *a5;
  v12 = sub_F75E1C(a2, *a5);
  v13 = v12;
  if (v12)
  {
    v14 = sub_F75E48(a2, v11);
    v15 = *(v14 + 64);
    v46 = *(v14 + 48);
    v47 = v15;
    *v48 = *(v14 + 80);
    *&v48[16] = *(v14 + 96);
    v16 = *(v14 + 32);
    v44 = *(v14 + 16);
    v45 = v16;
  }

  else
  {
    LODWORD(v44) = 0;
    *(&v44 + 1) = 0;
    v45 = 0uLL;
    LOBYTE(v46) = 0;
    *(&v46 + 1) = 0x3FF0000000000000;
    LOBYTE(v47) = 1;
    *v48 = 0;
    *(&v47 + 1) = 0;
    *&v48[8] = 2359296000;
    *&v48[15] = 0;
  }

  sub_10F2F44(a5, v13, &v44, a3, a6, v42);
  v17 = v43;
  if (v43 != -1)
  {
    v18 = a4 + 1;
    if (v18 >= (a2[7] - a2[6]) >> 2)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v29 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
    }

    v19 = *(*a2 + 4 * v8);
    v20 = *(*a2 + 4 * v18);
    if (v19 != v20)
    {
      v21 = a2[3];
      v31 = (v21 + 80 * v20);
      v22 = (v21 + 80 * v19);
      do
      {
        v41 = *v22;
        v23 = sub_F75E1C(a2, v41);
        v24 = v23;
        if (v23)
        {
          v25 = sub_F75E48(a2, v41);
          v26 = *(v25 + 160);
          v38 = *(v25 + 144);
          v39 = v26;
          *v40 = *(v25 + 176);
          *&v40[16] = *(v25 + 192);
          v27 = *(v25 + 128);
          v36 = *(v25 + 112);
          v37 = v27;
        }

        else
        {
          LODWORD(v36) = 0;
          v37 = 0uLL;
          *(&v36 + 1) = 0;
          LOBYTE(v38) = 0;
          *(&v38 + 1) = 0x3FF0000000000000;
          LOBYTE(v39) = 1;
          *(&v39 + 1) = 0;
          *v40 = 0;
          *&v40[8] = 0;
          *&v40[10] = -29536;
          *&v40[12] = 0;
          *&v40[15] = 0;
        }

        sub_10F28F4(v22, v24, &v36, 0, &v44, a3, a6, v34);
        if (v35 != -1)
        {
          sub_110CC34(&v49, v35, v17);
        }

        v22 += 20;
      }

      while (v22 != v31);
    }
  }

  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
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

  return sub_360988(v50);
}

void sub_110C3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_404190(&STACK[0x2C8]);
  _Unwind_Resume(a1);
}

void sub_110C4E4(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (((a2[7] - a2[6]) >> 2) != 1)
  {
    operator new();
  }

  v6 = a1[2];
  v7 = a1[3];
  if (v6 != v7)
  {
    v8 = v6;
    do
    {
      v9 = *v8++;
      ++*(4 * v9);
    }

    while (v8 != v7);
  }

  v10 = 126 - 2 * __clz(v7 - v6);
  v11 = a1[5];
  v12 = a1[6];
  v13 = (a1 + 5);
  if (v7 == v6)
  {
    v14 = 0;
  }

  else
  {
    v14 = v10;
  }

  sub_110EB1C(v6, v11, v7, v12, &v34, v14, 1);
  sub_1109E54(a3, 0);
  v15 = (((a2[7] - a2[6]) << 30) - 0x100000000) >> 32;
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v19 = a3[6];
      v20 = a3[7];
      v21 = v20 - v19;
      if (((v20 - v19) >> 2) - 1 <= v17)
      {
        v22 = (v17 + 2);
        v23 = a3[1];
        v24 = (v23 - *a3) >> 2;
        if (v22 <= v24)
        {
          if (v22 < v24)
          {
            a3[1] = *a3 + 4 * v22;
          }
        }

        else
        {
          sub_569AC(a3, v22 - v24, (v23 - 4));
          v19 = a3[6];
          v20 = a3[7];
          v21 = v20 - v19;
        }

        v25 = v21 >> 2;
        if (v22 <= v25)
        {
          if (v22 < v25)
          {
            a3[7] = v19 + 4 * v22;
          }
        }

        else
        {
          sub_569AC((a3 + 6), v22 - v25, (v20 - 4));
        }
      }

      v26 = sub_111B698(v17, a2);
      v28 = v27;
      v29 = a3[12];
      v30 = (a3[13] - v29) >> 4;
      v31 = v17 + 1;
      if (v30 <= v17)
      {
        LOWORD(v34) = 0;
        *(&v34 + 1) = 0;
        if (v31 <= v30)
        {
          if (v31 < v30)
          {
            a3[13] = v29 + 16 * v31;
          }
        }

        else
        {
          sub_110A21C((a3 + 12), v31 - v30, &v34);
          v29 = a3[12];
        }
      }

      v18 = (v29 + v16);
      *v18 = v26;
      v18[1] = v28;
      v16 += 16;
      ++v17;
    }

    while (v15 != v31);
  }

  sub_110E910(a3 + 9, v13);
  *(a3[7] - 4) = 0;
  sub_F81004(a3 + 6);
  if (0x4EC4EC4EC4EC4EC5 * ((a3[10] - a3[9]) >> 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v33 = sub_2D390(exception, "sum of out-degrees does not match the size of the outgoing arc vector", 0x45uLL);
  }
}

void sub_110C7C4(_Unwind_Exception *a1)
{
  sub_10DF174(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_110C7F4(uint64_t a1, uint64_t a2)
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
  sub_110E910((a1 + 24), a2 + 24);
  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_110E910((a1 + 72), a2 + 72);
  v6 = *(a1 + 96);
  if (v6)
  {
    *(a1 + 104) = v6;
    operator delete(v6);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  return a1;
}

uint64_t *sub_110C8D4@<X0>(uint64_t *result@<X0>, uint64_t **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = result[1];
  if (v3 != *result)
  {
    if (0x8F5C28F5C28F5C29 * ((v3 - *result) >> 3) < 0x147AE147AE147AFLL)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = a3;
  return result;
}

void sub_110C9EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_110CA08(uint64_t a1)
{
  if (*(a1 + 880))
  {
    do
    {
      v3 = *(a1 + 832);
      v4 = (*(a1 + 776) + 8 * *v3);
      v6 = *v4;
      v5 = v4[1];
      sub_DD38(a1 + 800, v3);
      v7 = *(a1 + 832);
      *(*(a1 + 856) + 4 * *v7) = -1;
      v8 = *(a1 + 880) - 1;
      *(a1 + 880) = v8;
      if (v8)
      {
        *v7 = v7[v8];
        v9 = *(a1 + 832);
        *(*(a1 + 856) + 4 * *v9) = 0;
        v2 = *(a1 + 880);
        if (v2 >= 2)
        {
          v10 = 0;
          v11 = 0;
          v12 = 1;
          do
          {
            v13 = v10 + 5;
            if (v13 >= v2)
            {
              v14 = v2;
            }

            else
            {
              v14 = v13;
            }

            if (v13 <= v12)
            {
              break;
            }

            v15 = v11;
            v16 = v9[2 * v11 + 1];
            v17 = &v9[2 * v12 + 1];
            v11 = -1;
            v18 = v16;
            do
            {
              v20 = *v17;
              v17 += 2;
              v19 = v20;
              if (v20 < v18)
              {
                v18 = v19;
                v11 = v12;
              }

              ++v12;
            }

            while (v12 < v14);
            if (v11 >= v2)
            {
              break;
            }

            v21 = 2 * v11;
            v22 = &v9[v21];
            v23 = 8 * v15;
            v24 = *&v9[v21];
            *v22 = *(v9 + v23);
            v22[1] = v16;
            *(v9 + v23) = v24;
            v9 = *(a1 + 832);
            v25 = v9[v21];
            v26 = *(a1 + 856);
            v27 = *(v9 + v23);
            LODWORD(v23) = *(v26 + 4 * v25);
            *(v26 + 4 * v25) = *(v26 + 4 * v27);
            *(v26 + 4 * v27) = v23;
            v10 = 4 * v11;
            v12 = (4 * v11) | 1;
            v2 = *(a1 + 880);
          }

          while (v12 < v2);
        }
      }

      else
      {
        v2 = 0;
      }

      *(a1 + 840) -= 8;
      v28 = (v6 + 1);
      v29 = *(*a1 + 48);
      if (v28 >= (*(*a1 + 56) - v29) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v38 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v30 = *(v29 + 4 * v6);
      v31 = *(v29 + 4 * v28);
      if (v30 != v31)
      {
        v32 = *(*a1 + 72);
        v33 = (v32 + 80 * v31);
        v34 = (v32 + 80 * v30);
        do
        {
          v35 = v34[14];
          if (v35 != 0x7FFFFFFF)
          {
            v36 = *v34;
            v39 = v35 + v5;
            v40 = v36;
            sub_110AA14(a1 + 8, &v40, &v39);
          }

          v34 += 20;
        }

        while (v34 != v33);
        v2 = *(a1 + 880);
      }
    }

    while (v2);
  }
}

void sub_110CC34(uint64_t a1, int a2, unsigned int a3)
{
  v6 = a3;
  v3 = 0;
  v4 = -1;
  v5 = 0;
  operator new();
}

void sub_110CE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_110CE54@<Q0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = ~a2 + (a2 << 21);
  v5 = 21 * ((265 * (v4 ^ (v4 >> 24))) ^ ((265 * (v4 ^ (v4 >> 24))) >> 14));
  v6 = 2147483649u * (v5 ^ (v5 >> 28));
  v7 = a1 + 48 * (((((v5 ^ (v5 >> 28)) >> 8) ^ ((-2147483647 * (v5 ^ (v5 >> 28))) >> 16)) ^ ((-2147483647 * (v5 ^ (v5 >> 28))) >> 24)) & 0xF);
  v10 = *(v7 + 8);
  v9 = v7 + 8;
  v8 = v10;
  v11 = v6 >> 7;
  v12 = *(v9 + 24);
  v13 = 0x101010101010101 * (v6 & 0x7F);
  for (i = v11; ; i = v3 + v15)
  {
    v15 = i & v12;
    v16 = *(v8 + (i & v12));
    v17 = ((v16 ^ v13) - 0x101010101010101) & ~(v16 ^ v13) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_6:
    if ((v16 & (~v16 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_9;
    }

    v3 += 8;
  }

  v18 = *(v9 + 8);
  while (1)
  {
    v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v12;
    if (*(v18 + 8 * v19) == a2)
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_6;
    }
  }

  if (v12 == v19)
  {
LABEL_9:
    result.n128_u64[0] = 0x7FFFFFFFFFFFFFFFLL;
    *a3 = xmmword_2297C80;
    *(a3 + 8) = -1;
    *(a3 + 16) = 0;
    return result;
  }

  for (j = 0; ; v11 = j + v22)
  {
    v22 = v11 & v12;
    v23 = ((*(v8 + v22) ^ v13) - 0x101010101010101) & ~(*(v8 + v22) ^ v13) & 0x8080808080808080;
    if (v23)
    {
      break;
    }

LABEL_11:
    j += 8;
  }

  while (1)
  {
    v24 = (v22 + (__clz(__rbit64(v23)) >> 3)) & v12;
    if (*(v18 + 8 * v24) == a2)
    {
      break;
    }

    v23 &= v23 - 1;
    if (!v23)
    {
      goto LABEL_11;
    }
  }

  v25 = *(a1 + 776) + 32 * *(v18 + 8 * v24 + 4);
  result = *(v25 + 8);
  *a3 = result;
  *(a3 + 16) = *(v25 + 24);
  return result;
}

unint64_t sub_110CFCC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v5 = sub_110E9C8(a1, a2);
    *(a1 + 8) = v5;
    return v5 - 208;
  }

  else
  {
    sub_110A370(*(a1 + 8), a2);
    *(a1 + 8) = v3 + 208;
    *(a1 + 8) = v3 + 208;
    return v3;
  }
}

void *sub_110D034@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a5;
  *(a1 + 8) = 0;
  v103 = (((a2[7] - a2[6]) << 30) - 0x100000000) >> 32;
  if (v103)
  {
    v18 = a3;
    v19 = 0;
    v102 = (a1 + 40);
    while (1)
    {
      v104 = v19;
      v109 = v19;
      v107 = sub_F75E1C(a2, v19) && *sub_F75E48(a2, v109) == 3;
      if (sub_F75E1C(a2, v109))
      {
        v20 = sub_F75E48(a2, v109);
        v21 = *(v20 + 160);
        v130 = *(v20 + 144);
        v131 = v21;
        *v132 = *(v20 + 176);
        *&v132[16] = *(v20 + 192);
        v22 = *(v20 + 128);
        v128 = *(v20 + 112);
        v129 = v22;
      }

      else
      {
        LODWORD(v128) = 0;
        v129 = 0uLL;
        *(&v128 + 1) = 0;
        LOBYTE(v130) = 0;
        *(&v130 + 1) = 0x3FF0000000000000;
        LOBYTE(v131) = 1;
        *(&v131 + 1) = 0;
        *v132 = 0;
        *&v132[8] = 0;
        *&v132[10] = -29536;
        *&v132[12] = 0;
        *&v132[15] = 0;
      }

      v23 = (v109 + 1);
      v24 = a2[6];
      if (v23 >= (a2[7] - v24) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v101 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v25 = *(v24 + 4 * v109);
      v26 = *(v24 + 4 * v23);
      if (v25 != v26)
      {
        break;
      }

LABEL_21:
      v19 = v104 + 1;
      if (v104 + 1 == v103)
      {
        goto LABEL_2;
      }
    }

    v27 = a2[9];
    v110 = (v27 + 80 * v26);
    v28 = (v27 + 80 * v25);
    while (1)
    {
      v29 = *v28;
      v30 = sub_F94A20(v18, v28[15]);
      v31 = sub_F75E1C(a2, v29) && *sub_F75E48(a2, v29) == 4;
      if (sub_F75E1C(a2, v29))
      {
        v32 = sub_F75E48(a2, v29);
        v33 = *(v32 + 64);
        v125 = *(v32 + 48);
        v126 = v33;
        *v127 = *(v32 + 80);
        *&v127[16] = *(v32 + 96);
        v34 = *(v32 + 32);
        v123 = *(v32 + 16);
        v124 = v34;
      }

      else
      {
        LODWORD(v123) = 0;
        v124 = 0uLL;
        *(&v123 + 1) = 0;
        LOBYTE(v125) = 0;
        *(&v125 + 1) = 0x3FF0000000000000;
        LOBYTE(v126) = 1;
        *(&v126 + 1) = 0;
        *v127 = 0;
        *&v127[8] = 0;
        *&v127[10] = -29536;
        *&v127[12] = 0;
        *&v127[15] = 0;
      }

      if (sub_F85894((v28 + 2)) && sub_38EC(v28 + 14))
      {
        break;
      }

LABEL_31:
      v28 += 20;
      if (v28 == v110)
      {
        goto LABEL_21;
      }
    }

    if (v107 && v31)
    {
      v35 = *v28;
      v36 = *(a1 + 8);
      v138 = 0u;
      v139 = 0u;
      *v133 = 0xFFFFFFFFLL;
      *&v133[8] = 0u;
      v134 = 0u;
      v135 = 0x1000000000000;
      v136 = 0u;
      v137 = 0u;
      *&v138 = 0x1000000000000;
      WORD6(v138) = 640;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v143 = 0u;
      v121 = 0;
      v120 = 0;
      v122 = 0;
      sub_111B734((v28 + 2), v28 + 14, v109, v35, v36, v133, &v120, &v111);
      if (v120)
      {
        v121 = v120;
        operator delete(v120);
      }

      if (*(&v142 + 1))
      {
        *&v143 = *(&v142 + 1);
        operator delete(*(&v142 + 1));
      }

      if (v140)
      {
        *(&v140 + 1) = v140;
        operator delete(v140);
      }

      v115 = 1;
    }

    else
    {
      v37 = *a4;
      v38 = *v28;
      v39 = sub_F75E1C(a2, v109);
      v40 = sub_F75E1C(a2, v29);
      sub_111AE14(v28, v37 + 2464 * v30, a3, v109, v38, v39, &v128, &v111, v40, &v123, *(a1 + 8));
    }

    if (HIDWORD(v111) == -1 || v112 == -1)
    {
      v18 = a3;
      sub_110DC80(a1, a2, a3, v109, v28, *a4 + 2464 * v30);
      v44 = v118;
      if (!v118)
      {
LABEL_55:
        v7 = a5;
        if (__p)
        {
          v117 = __p;
          operator delete(__p);
        }

        if (v113)
        {
          v114 = v113;
          operator delete(v113);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v42 = *(a1 + 24);
      v41 = *(a1 + 32);
      if (v42 >= v41)
      {
        v45 = *(a1 + 16);
        v46 = v42 - v45;
        v47 = (v42 - v45) >> 2;
        v48 = v47 + 1;
        if ((v47 + 1) >> 62)
        {
          sub_1794();
        }

        v49 = v41 - v45;
        if (v49 >> 1 > v48)
        {
          v48 = v49 >> 1;
        }

        if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v50 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v48;
        }

        if (v50)
        {
          if (!(v50 >> 62))
          {
            operator new();
          }

LABEL_123:
          sub_1808();
        }

        v51 = (v42 - v45) >> 2;
        v52 = (4 * v47);
        v53 = (4 * v47 - 4 * v51);
        *v52 = v104;
        v43 = v52 + 1;
        memcpy(v53, v45, v46);
        *(a1 + 16) = v53;
        *(a1 + 24) = v43;
        *(a1 + 32) = 0;
        if (v45)
        {
          operator delete(v45);
        }
      }

      else
      {
        *v42 = v104;
        v43 = v42 + 4;
      }

      *(a1 + 24) = v43;
      v55 = *(a1 + 48);
      v54 = *(a1 + 56);
      if (v55 >= v54)
      {
        v57 = 0x4EC4EC4EC4EC4EC5 * ((v55 - *v102) >> 4);
        v58 = v57 + 1;
        if ((v57 + 1) > 0x13B13B13B13B13BLL)
        {
          sub_1794();
        }

        v59 = 0x4EC4EC4EC4EC4EC5 * ((v54 - *v102) >> 4);
        if (2 * v59 > v58)
        {
          v58 = 2 * v59;
        }

        if (v59 >= 0x9D89D89D89D89DLL)
        {
          v60 = 0x13B13B13B13B13BLL;
        }

        else
        {
          v60 = v58;
        }

        *(&v134 + 1) = v102;
        if (v60)
        {
          if (v60 <= 0x13B13B13B13B13BLL)
          {
            operator new();
          }

          goto LABEL_123;
        }

        *v133 = 0;
        *&v133[8] = 208 * v57;
        *&v133[16] = 208 * v57;
        *&v134 = 0;
        sub_110A370(208 * v57, &v111);
        v56 = *&v133[16] + 208;
        *&v133[16] += 208;
        v62 = *(a1 + 40);
        v61 = *(a1 + 48);
        v63 = (*&v133[8] + v62 - v61);
        if (v62 != v61)
        {
          v64 = *(a1 + 40);
          v65 = (*&v133[8] + v62 - v61);
          do
          {
            v66 = *v64;
            *(v65 + 2) = *(v64 + 2);
            *v65 = v66;
            *(v65 + 3) = 0;
            *(v65 + 4) = 0;
            *(v65 + 2) = 0;
            *(v65 + 1) = *(v64 + 1);
            *(v65 + 4) = *(v64 + 4);
            *(v64 + 2) = 0;
            *(v64 + 3) = 0;
            *(v64 + 4) = 0;
            v67 = *(v64 + 40);
            v68 = *(v64 + 56);
            v69 = *(v64 + 11);
            *(v65 + 72) = *(v64 + 72);
            *(v65 + 56) = v68;
            *(v65 + 40) = v67;
            *(v65 + 11) = v69;
            *(v65 + 12) = 0;
            *(v65 + 13) = 0;
            *(v65 + 14) = 0;
            *(v65 + 6) = *(v64 + 6);
            *(v65 + 14) = *(v64 + 14);
            *(v64 + 12) = 0;
            *(v64 + 13) = 0;
            *(v64 + 14) = 0;
            v70 = *(v64 + 120);
            v71 = *(v64 + 136);
            v72 = *(v64 + 152);
            *(v65 + 168) = *(v64 + 168);
            *(v65 + 152) = v72;
            *(v65 + 136) = v71;
            *(v65 + 120) = v70;
            *(v65 + 24) = 0;
            *(v65 + 25) = 0;
            *(v65 + 23) = 0;
            *(v65 + 184) = *(v64 + 184);
            *(v65 + 25) = *(v64 + 25);
            *(v64 + 23) = 0;
            *(v64 + 24) = 0;
            *(v64 + 25) = 0;
            v64 += 208;
            v65 += 208;
          }

          while (v64 != v61);
          do
          {
            v73 = *(v62 + 23);
            if (v73)
            {
              *(v62 + 24) = v73;
              operator delete(v73);
            }

            v74 = *(v62 + 12);
            if (v74)
            {
              *(v62 + 13) = v74;
              operator delete(v74);
            }

            v75 = *(v62 + 2);
            if (v75)
            {
              *(v62 + 3) = v75;
              operator delete(v75);
            }

            v62 += 208;
          }

          while (v62 != v61);
        }

        v76 = *(a1 + 40);
        *(a1 + 40) = v63;
        *(a1 + 48) = v56;
        *(a1 + 56) = v134;
        v18 = a3;
        if (v76)
        {
          operator delete(v76);
        }
      }

      else
      {
        sub_110A370(*(a1 + 48), &v111);
        v18 = a3;
        v56 = v55 + 208;
        *(a1 + 48) = v55 + 208;
      }

      *(a1 + 48) = v56;
      ++*(a1 + 8);
      v44 = v118;
      if (!v118)
      {
        goto LABEL_55;
      }
    }

    v119 = v44;
    operator delete(v44);
    goto LABEL_55;
  }

LABEL_2:
  sub_10DFDAC(&v111, 0);
  sub_1107E04(v7, &v111, **a1);
  sub_110E4CC(a1, a2, v133);
  sub_110C7F4((v7 + 1), v133);
  sub_10DF174(v133);
  v120 = a2;
  sub_F75FFC(a2, &v123);
  v128 = v123;
  sub_110E7DC(&v128, v133);
  v8 = v7[16];
  if (v8)
  {
    v7[17] = v8;
    operator delete(v8);
  }

  *(v7 + 8) = *v133;
  v7[18] = *&v133[16];
  sub_F76020(a2, &v123);
  v128 = v123;
  sub_110E7DC(&v128, v133);
  v9 = v7[19];
  if (v9)
  {
    v7[20] = v9;
    operator delete(v9);
  }

  *(v7 + 19) = *v133;
  v7[21] = *&v133[16];
  sub_F76050(a2, &v123);
  v128 = v123;
  sub_110E7DC(&v128, v133);
  v10 = v7[22];
  if (v10)
  {
    v7[23] = v10;
    operator delete(v10);
  }

  *(v7 + 11) = *v133;
  v7[24] = *&v133[16];
  *v133 = a2;
  sub_1118C84(&v133[8], 0x400u);
  v11 = sub_F76014(a2);
  v12 = v11;
  v13 = HIDWORD(v11);
  if (v11 != HIDWORD(v11))
  {
    do
    {
      LODWORD(v123) = 0;
      LODWORD(v128) = v12;
      sub_110A6C4(&v133[8], &v128, &v123);
      ++v12;
    }

    while (v13 != v12);
  }

  sub_110CA08(v133);
  LODWORD(v128) = 0x7FFFFFFF;
  v14 = sub_F7603C(a2);
  v15 = HIDWORD(v14);
  v16 = 0x7FFFFFFF;
  if (v14 != HIDWORD(v14))
  {
    do
    {
      v82 = 0;
      v88 = ~v14 + (v14 << 21);
      v89 = 21 * ((265 * (v88 ^ (v88 >> 24))) ^ ((265 * (v88 ^ (v88 >> 24))) >> 14));
      v90 = 2147483649u * (v89 ^ (v89 >> 28));
      v91 = &v133[48 * (((((v89 ^ (v89 >> 28)) >> 8) ^ ((-2147483647 * (v89 ^ (v89 >> 28))) >> 16)) ^ ((-2147483647 * (v89 ^ (v89 >> 28))) >> 24)) & 0xF) + 8];
      v92 = v90 >> 7;
      v93 = v91[3];
      v94 = *v91;
      v95 = 0x101010101010101 * (v90 & 0x7F);
      for (i = v92; ; i = v82 + v77)
      {
        v77 = i & v93;
        v78 = *(v94 + (i & v93));
        v79 = ((v78 ^ v95) - 0x101010101010101) & ~(v78 ^ v95) & 0x8080808080808080;
        if (v79)
        {
          break;
        }

LABEL_101:
        if ((v78 & (~v78 << 6) & 0x8080808080808080) != 0)
        {
          goto LABEL_104;
        }

        v82 += 8;
      }

      v80 = v91[1];
      while (1)
      {
        v81 = (v77 + (__clz(__rbit64(v79)) >> 3)) & v93;
        if (*(v80 + 8 * v81) == v14)
        {
          break;
        }

        v79 &= v79 - 1;
        if (!v79)
        {
          goto LABEL_101;
        }
      }

      if (v93 == v81)
      {
LABEL_104:
        v84 = 0x7FFFFFFF;
        goto LABEL_105;
      }

      for (j = 0; ; v92 = j + v97)
      {
        v97 = v92 & v93;
        v98 = ((*(v94 + v97) ^ v95) - 0x101010101010101) & ~(*(v94 + v97) ^ v95) & 0x8080808080808080;
        if (v98)
        {
          break;
        }

LABEL_117:
        j += 8;
      }

      while (1)
      {
        v99 = (v97 + (__clz(__rbit64(v98)) >> 3)) & v93;
        if (*(v80 + 8 * v99) == v14)
        {
          break;
        }

        v98 &= v98 - 1;
        if (!v98)
        {
          goto LABEL_117;
        }
      }

      v84 = v144[2 * *(v80 + 8 * v99 + 4) + 1];
LABEL_105:
      LODWORD(v123) = v84;
      if (v84 >= v16)
      {
        v85 = &v128;
      }

      else
      {
        v85 = &v123;
      }

      if (v84 == 0x7FFFFFFF)
      {
        v86 = &v128;
      }

      else
      {
        v86 = v85;
      }

      if (v16 == 0x7FFFFFFF)
      {
        v87 = &v123;
      }

      else
      {
        v87 = v86;
      }

      v16 = *v87;
      LODWORD(v128) = v16;
      LODWORD(v14) = v14 + 1;
    }

    while (v14 != v15);
  }

  *(a5 + 200) = v16;
  if (v150)
  {
    v151 = v150;
    operator delete(v150);
  }

  if (v148)
  {
    v149 = v148;
    operator delete(v148);
  }

  if (v146)
  {
    v147 = v146;
    operator delete(v146);
  }

  if (v144)
  {
    v145 = v144;
    operator delete(v144);
  }

  sub_360988(&v133[8]);
  return sub_FE90B8(&v111);
}

void sub_110DB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_404190(&STACK[0xAE0]);
  sub_FE565C(a16);
  sub_FE90B8(va);
  _Unwind_Resume(a1);
}

void sub_110DC28(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2464);
  if (v3)
  {
    STACK[0xA10] = v3;
    operator delete(v3);
  }

  sub_10E3774(&STACK[0xAE0]);
  _Unwind_Resume(a1);
}

void sub_110DC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_1109AD4(va);
  _Unwind_Resume(a1);
}

void sub_110DC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_1109AD4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_110DC80(uint64_t a1, void *a2, void *a3, unsigned int a4, unsigned int *a5, uint64_t a6)
{
  v8 = a4;
  if (sub_F75E1C(a2, a4))
  {
    v9 = *sub_F75E48(a2, v8) == 4;
    result = sub_F75E1C(a2, v8);
    if (!result)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = sub_F75E48(a2, v8);
    if (v9 || *result == 5)
    {
      return result;
    }

    goto LABEL_7;
  }

  v9 = 0;
  result = sub_F75E1C(a2, v8);
  if (result)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v9)
  {
    return result;
  }

LABEL_7:
  v49 = sub_10E2C7C(a6);
  sub_1117DA8(v50, 0x400u);
  v11 = *a5;
  v12 = sub_F75E1C(a2, *a5);
  v13 = v12;
  if (v12)
  {
    v14 = sub_F75E48(a2, v11);
    v15 = *(v14 + 64);
    v46 = *(v14 + 48);
    v47 = v15;
    *v48 = *(v14 + 80);
    *&v48[16] = *(v14 + 96);
    v16 = *(v14 + 32);
    v44 = *(v14 + 16);
    v45 = v16;
  }

  else
  {
    LODWORD(v44) = 0;
    *(&v44 + 1) = 0;
    v45 = 0uLL;
    LOBYTE(v46) = 0;
    *(&v46 + 1) = 0x3FF0000000000000;
    LOBYTE(v47) = 1;
    *v48 = 0;
    *(&v47 + 1) = 0;
    *&v48[8] = 2359296000;
    *&v48[15] = 0;
  }

  sub_10F30BC(a5, v13, &v44, a3, a6, v42);
  v17 = v43;
  if (v43 != -1)
  {
    v18 = a4 + 1;
    if (v18 >= (a2[7] - a2[6]) >> 2)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v29 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
    }

    v19 = *(*a2 + 4 * v8);
    v20 = *(*a2 + 4 * v18);
    if (v19 != v20)
    {
      v21 = a2[3];
      v31 = (v21 + 80 * v20);
      v22 = (v21 + 80 * v19);
      do
      {
        v41 = *v22;
        v23 = sub_F75E1C(a2, v41);
        v24 = v23;
        if (v23)
        {
          v25 = sub_F75E48(a2, v41);
          v26 = *(v25 + 160);
          v38 = *(v25 + 144);
          v39 = v26;
          *v40 = *(v25 + 176);
          *&v40[16] = *(v25 + 192);
          v27 = *(v25 + 128);
          v36 = *(v25 + 112);
          v37 = v27;
        }

        else
        {
          LODWORD(v36) = 0;
          v37 = 0uLL;
          *(&v36 + 1) = 0;
          LOBYTE(v38) = 0;
          *(&v38 + 1) = 0x3FF0000000000000;
          LOBYTE(v39) = 1;
          *(&v39 + 1) = 0;
          *v40 = 0;
          *&v40[8] = 0;
          *&v40[10] = -29536;
          *&v40[12] = 0;
          *&v40[15] = 0;
        }

        sub_10F2C1C(v22, v24, &v36, 0, &v44, a3, a6, v34);
        if (v35 != -1)
        {
          sub_110CC34(&v49, v35, v17);
        }

        v22 += 20;
      }

      while (v22 != v31);
    }
  }

  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
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

  return sub_360988(v50);
}

void sub_110E3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_404190(&STACK[0x2C8]);
  _Unwind_Resume(a1);
}

void sub_110E4CC(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (((a2[7] - a2[6]) >> 2) != 1)
  {
    operator new();
  }

  v6 = a1[2];
  v7 = a1[3];
  if (v6 != v7)
  {
    v8 = v6;
    do
    {
      v9 = *v8++;
      ++*(4 * v9);
    }

    while (v8 != v7);
  }

  v10 = 126 - 2 * __clz(v7 - v6);
  v11 = a1[5];
  v12 = a1[6];
  v13 = (a1 + 5);
  if (v7 == v6)
  {
    v14 = 0;
  }

  else
  {
    v14 = v10;
  }

  sub_111342C(v6, v11, v7, v12, &v34, v14, 1);
  sub_1109E54(a3, 0);
  v15 = (((a2[7] - a2[6]) << 30) - 0x100000000) >> 32;
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v19 = a3[6];
      v20 = a3[7];
      v21 = v20 - v19;
      if (((v20 - v19) >> 2) - 1 <= v17)
      {
        v22 = (v17 + 2);
        v23 = a3[1];
        v24 = (v23 - *a3) >> 2;
        if (v22 <= v24)
        {
          if (v22 < v24)
          {
            a3[1] = *a3 + 4 * v22;
          }
        }

        else
        {
          sub_569AC(a3, v22 - v24, (v23 - 4));
          v19 = a3[6];
          v20 = a3[7];
          v21 = v20 - v19;
        }

        v25 = v21 >> 2;
        if (v22 <= v25)
        {
          if (v22 < v25)
          {
            a3[7] = v19 + 4 * v22;
          }
        }

        else
        {
          sub_569AC((a3 + 6), v22 - v25, (v20 - 4));
        }
      }

      v26 = sub_111B698(v17, a2);
      v28 = v27;
      v29 = a3[12];
      v30 = (a3[13] - v29) >> 4;
      v31 = v17 + 1;
      if (v30 <= v17)
      {
        LOWORD(v34) = 0;
        *(&v34 + 1) = 0;
        if (v31 <= v30)
        {
          if (v31 < v30)
          {
            a3[13] = v29 + 16 * v31;
          }
        }

        else
        {
          sub_110A21C((a3 + 12), v31 - v30, &v34);
          v29 = a3[12];
        }
      }

      v18 = (v29 + v16);
      *v18 = v26;
      v18[1] = v28;
      v16 += 16;
      ++v17;
    }

    while (v15 != v31);
  }

  sub_110E910(a3 + 9, v13);
  *(a3[7] - 4) = 0;
  sub_F81004(a3 + 6);
  if (0x4EC4EC4EC4EC4EC5 * ((a3[10] - a3[9]) >> 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v33 = sub_2D390(exception, "sum of out-degrees does not match the size of the outgoing arc vector", 0x45uLL);
  }
}

void sub_110E7AC(_Unwind_Exception *a1)
{
  sub_10DF174(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_110E7DC@<X0>(uint64_t *result@<X0>, uint64_t **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = result[1];
  if (v3 != *result)
  {
    if (0x8F5C28F5C28F5C29 * ((v3 - *result) >> 3) < 0x147AE147AE147AFLL)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = a3;
  return result;
}