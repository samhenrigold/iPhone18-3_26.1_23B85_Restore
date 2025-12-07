uint64_t sub_1057980(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v2 = (&dword_0 + 1);
LABEL_4:
    sub_10579B0(a1, v2);
  }

  if (*(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    v2 = ((2 * v1) | 1);
    goto LABEL_4;
  }

  return sub_1057B90(a1);
}

uint64_t sub_1057B90(uint64_t result)
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
        v18 = __ROR8__(*(*(result + 8) + 16 * i), 32);
        v19 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v18 ^ (v18 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v18 ^ (v18 >> 33))) >> 33));
        v20 = (v19 ^ ~(v19 >> 33)) + ((v19 ^ (v19 >> 33)) << 21);
        v21 = 21 * ((265 * (v20 ^ (v20 >> 24))) ^ ((265 * (v20 ^ (v20 >> 24))) >> 14));
        v22 = 2147483649u * (v21 ^ (v21 >> 28));
        v23 = v13 & (v22 >> 7);
        v24 = *(v17->i64 + v23) & (~*(v17->i64 + v23) << 7) & 0x8080808080808080;
        if (v24)
        {
          v15 = v13 & (v22 >> 7);
        }

        else
        {
          v25 = 8;
          v15 = v13 & (v22 >> 7);
          do
          {
            v15 = (v15 + v25) & v13;
            v25 += 8;
            v24 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v24);
        }

        v16 = (v15 + (__clz(__rbit64(v24)) >> 3)) & v13;
        if ((((v16 - v23) ^ (i - v23)) & v13) > 7)
        {
          v26 = v17->u8[v16];
          v17->i8[v16] = v22 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v22 & 0x7F;
          v27 = *(result + 8);
          if (v26 == 128)
          {
            *(v27 + 16 * v16) = *(v27 + 16 * i);
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v28 = *(v27 + 16 * i);
            *(v27 + 16 * i) = *(v27 + 16 * v16);
            *(*(result + 8) + 16 * v16) = v28;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v22 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v22 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v29 = i - (i >> 3);
    v30 = i == 7;
    v31 = 6;
    if (!v30)
    {
      v31 = v29;
    }
  }

  else
  {
    v31 = 0;
  }

  *(result + 40) = v31 - *(result + 16);
  return result;
}

void sub_1057E78(uint64_t a1, _DWORD *a2, void *a3)
{
  a3[1] = *a3;
  if (!*(a1 + 3880))
  {
    v20[7] = v3;
    v20[8] = v4;
    v7 = sub_3BF72C(a1 + 8, a2[1], 1);
    if (v7)
    {
      v8 = &v7[-*v7];
      if (*v8 >= 0xBu)
      {
        v9 = *(v8 + 5);
        if (v9)
        {
          v10 = &v7[v9 + *&v7[v9]];
          v11 = HIWORD(*a2);
          if (*v10 > v11)
          {
            v12 = &v10[4 * v11 + 4 + *&v10[4 * v11 + 4]];
            v13 = &v12[-*v12];
            if (*v13 >= 5u)
            {
              v14 = *(v13 + 2);
              if (v14)
              {
                v15 = &v12[v14 + *&v12[v14]];
                if (*v15 > ((a3[2] - *a3) >> 3))
                {
                  operator new();
                }

                v16 = *v15;
                v20[0] = a3;
                if (v16)
                {
                  v17 = 8 * v16;
                  v18 = v15 + 4;
                  do
                  {
                    v19 = v18;
                    sub_1057FF0(v20, &v19);
                    ++v18;
                    v17 -= 8;
                  }

                  while (v17);
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t *sub_1057FF0(uint64_t *result, void **a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 3;
    v8 = (v6 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(8 * v7) = **a2;
    v12 = 8 * v7 + 8;
    memcpy(0, v5, v6);
    *v2 = 0;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    result = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    *v4 = **a2;
    *(v2 + 8) = v4 + 1;
  }

  return result;
}

unint64_t sub_105811C(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*(a1 + 16) == *a2)
  {
    LODWORD(v4) = *(a1 + 24);
    v5 = *(a1 + 8);
    goto LABEL_20;
  }

  v5 = *(a1 + 8);
  v6 = (v5 + 1);
  v7 = *v5;
  v8 = &v5[3 * v7 + 1];
  if (*v5)
  {
    v9 = (v5 + 1);
    do
    {
      v10 = v7 >> 1;
      v11 = &v9[12 * (v7 >> 1)];
      v12 = *(*a1 + 4 + 4 * *(v11 + 2));
      v14 = *v11;
      v13 = v11 + 12;
      v15 = v12 < v3;
      v16 = v14 < v2;
      if (v14 != v2)
      {
        v15 = v16;
      }

      v7 += ~v10;
      if (v15)
      {
        v9 = v13;
      }

      else
      {
        v7 = v10;
      }
    }

    while (v7);
    if (v9 == v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v9 = (v5 + 1);
    if (v6 == v8)
    {
LABEL_18:
      LODWORD(v4) = -1;
      goto LABEL_20;
    }
  }

  if (*(*a1 + 4 * *(v9 + 2) + 4) != v3 || *v9 != v2)
  {
    goto LABEL_18;
  }

  v4 = (v9 - v6) / 0xCuLL;
LABEL_20:
  v18 = v5 + 1;
  v19 = HIWORD(v18[3 * v4 + 2]);
  if (v19 == 0xFFFF)
  {
    return 0;
  }

  v20 = v18[3 * v19] | (*(*a1 + 4 * LOWORD(v18[3 * v19 + 1]) + 4) << 32);
  *(a1 + 16) = v20;
  *(a1 + 24) = v19;
  return v20;
}

uint64_t sub_1058270(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    v6 = 0;
    do
    {
      if ((atomic_load_explicit(&qword_2733DC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733DC0))
      {
        qword_2733DB8 = *sub_1058478() >> 3;
        __cxa_guard_release(&qword_2733DC0);
      }

      v7 = qword_2733DB8;
      if ((atomic_load_explicit(&qword_2733DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733DE0))
      {
        v14 = *sub_10583E8();
        qword_2733DD8 = v14 + (*sub_10583E8() >> 1);
        __cxa_guard_release(&qword_2733DE0);
      }

      _X8 = v3 + 8 * v7 * v6 + 8 * qword_2733DD8;
      __asm { PRFM            #0, [X8] }

      v3 = *(a1 + 24);
      v2 = *(a1 + 32);
      if (*a2 <= *(v3 + 8 * v6))
      {
        v6 = 2 * v6 + 1;
      }

      else
      {
        v6 = 2 * v6 + 2;
      }
    }

    while (v6 < v2);
    v15 = __clz(__rbit64(-2 - v6));
    if (v6 == -2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 + 1;
    }

    v17 = (v6 + 1) >> v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v2 = v17 - 1;
  }

  return v3 + 8 * v2;
}

uint64_t *sub_10583E8()
{
  if ((atomic_load_explicit(&qword_2733DC0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2733DC0))
  {
    return &qword_2733DB8;
  }

  qword_2733DB8 = *sub_1058478() >> 3;
  __cxa_guard_release(&qword_2733DC0);
  return &qword_2733DB8;
}

uint64_t *sub_1058478()
{
  if ((atomic_load_explicit(&qword_2733DD0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2733DD0))
  {
    return &qword_2733DC8;
  }

  qword_2733DC8 = sub_3226F0();
  __cxa_guard_release(&qword_2733DD0);
  return &qword_2733DC8;
}

void *sub_1058500(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_40CC5C(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_10538E8(v5 + 103, a2);
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[98] - a1[96]) >> 4) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_1058604(_Unwind_Exception *a1)
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

void sub_1058664(uint64_t a1, unsigned int *a2, unsigned __int16 *a3, void *a4)
{
  a4[1] = *a4;
  if (!*(a1 + 3880))
  {
    v32[1] = v7;
    v32[2] = v6;
    v32[9] = v4;
    v32[10] = v5;
    v11 = sub_3BF72C(a1 + 8, *a2, 1);
    if (v11)
    {
      v12 = &v11[-*v11];
      if (*v12 >= 9u)
      {
        v13 = *(v12 + 4);
        if (v13)
        {
          v14 = &v11[v13 + *&v11[v13]];
          v15 = a2[1];
          if (*v14 > v15)
          {
            v16 = &v14[4 * v15 + 4 + *&v14[4 * v15 + 4]];
            v17 = &v16[-*v16];
            if (*v17 >= 7u)
            {
              v18 = *(v17 + 3);
              if (v18)
              {
                v19 = &v16[v18 + *&v16[v18]];
                v20 = *a3;
                if (*v19 > v20)
                {
                  v21 = &v19[4 * v20 + 4 + *&v19[4 * v20 + 4]];
                  v22 = &v21[-*v21];
                  if (*v22 >= 5u)
                  {
                    v23 = *(v22 + 2);
                    if (v23)
                    {
                      if (*&v21[v23 + *&v21[v23]] > ((a4[2] - *a4) >> 5))
                      {
                        operator new();
                      }

                      v24 = &v21[-*v21];
                      if (*v24 < 5u)
                      {
                        v25 = 0;
                      }

                      else
                      {
                        v25 = *(v24 + 2);
                        if (v25)
                        {
                          v25 = (v25 + v21 + *(v25 + v21));
                        }
                      }

                      v26 = *v25;
                      if (v26)
                      {
                        v27 = 12 * v26;
                        v28 = a4[1];
                        v29 = v25 + 7;
                        do
                        {
                          while (1)
                          {
                            v32[0] = v29 - 5;
                            if (v28 < a4[2])
                            {
                              break;
                            }

                            v28 = sub_10561F8(a4, v32);
                            a4[1] = v28;
                            v29 += 6;
                            v27 -= 12;
                            if (!v27)
                            {
                              return;
                            }
                          }

                          *(v28 + 8) = -1;
                          *(v28 + 16) = -NAN;
                          *(v28 + 24) = 0x7FFFFFFFFFFFFFFFLL;
                          *v28 = *(v29 - 5) | (*(v29 - 3) << 32);
                          *(v28 + 8) = *(v29 - 2);
                          v30 = *(v29 - 1);
                          if (v30 != 0xFFFF)
                          {
                            v31 = *v29;
                            *(v28 + 16) = v30;
                            *(v28 + 20) = v31;
                            *(v28 + 24) = 0;
                          }

                          v28 += 32;
                          a4[1] = v28;
                          v29 += 6;
                          v27 -= 12;
                        }

                        while (v27);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10588D4(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v16 = a2;
  v5 = __ROR8__(a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = (*(*(a1 + 16) + 16) + 200 * (bswap64(v7) % **(a1 + 16)));
  v17[0] = &v16;
  v17[1] = v7;
  sub_10564BC(v8, v17, &v13);
  if ((v15 & 1) == 0)
  {
    v9 = __ROR8__(v16, 32);
    v10 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) >> 33));
    sub_1056630((*(*(a1 + 16) + 96) + 200 * (bswap64(v10 ^ (v10 >> 33)) % *(*(a1 + 16) + 80))), &v16, v17, 8uLL, 0);
  }

  v11 = v14;
  *a3 = v13;
  a3[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = v14;
    if (v14)
    {
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

uint64_t sub_1058A58(uint64_t a1, uint64_t *a2)
{
  *a1 = a2;
  *(a1 + 34) = 0;
  *(a1 + 24) = 0x3E4CCCCD3F000000;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 32;
  *(a1 + 72) = 0xFFFFFFFF00000000;
  v3 = (a1 + 72);
  *(a1 + 80) = 0;
  v4 = a1 + 80;
  *(a1 + 8) = xmmword_2267060;
  *(a1 + 32) = 0;
  v5 = sub_101E508(a2);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_101EA90((a1 + 88), v5, &__p);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  *(a1 + 33) = 1;
  *(a1 + 72) = 0xFFFFFFFF00000000;
  v6 = malloc_type_malloc(8 * *(a1 + 64), 0x100004000313F17uLL);
  *(a1 + 80) = v6;
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = (v6 + 8 * v7);
    v9 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v9 < 0xF || v6 < v4 && v3 < v8)
    {
      goto LABEL_14;
    }

    v10 = v9 + 1;
    v11 = vld1q_dup_f64(v3);
    v12 = v6 + 1;
    v13 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v12[-1] = v11;
      *v12 = v11;
      v12 += 2;
      v13 -= 4;
    }

    while (v13);
    v6 = (v6 + 8 * (v10 & 0x3FFFFFFFFFFFFFFCLL));
    if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_14:
      do
      {
        v6->f64[0] = *v3;
        v6 = (v6 + 8);
      }

      while (v6 != v8);
    }
  }

  return a1;
}

void sub_1058BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_34BE0((v11 + 88));
  if (!*v12)
  {
    _Unwind_Resume(a1);
  }

  free(*v12);
  _Unwind_Resume(a1);
}

void *sub_1058C10(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_40CC5C(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_10538E8(v5 + 103, a2);
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[98] - a1[96]) >> 4) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_1058D14(_Unwind_Exception *a1)
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

void sub_1058D74(uint64_t **a1, void *a2)
{
  if (*a2 == a2[1])
  {
    return;
  }

  v158 = 0;
  v156 = 0x3E4CCCCD3F000000;
  v159 = 0;
  v160 = 0xFFFFFFFF00000000;
  v161 = 0;
  v162 = 0;
  v155 = xmmword_2267060;
  v157 = 256;
  v163 = 32;
  v164 = 0xFFFFFFFF00000000;
  v165 = malloc_type_malloc(0x100uLL, 0x100004000313F17uLL);
  v2 = vdupq_n_s64(0xFFFFFFFF00000000);
  v3 = (v165 + 16);
  v4 = 32;
  do
  {
    v3[-1] = v2;
    *v3 = v2;
    v3 += 2;
    v4 -= 4;
  }

  while (v4);
  v152 = 0;
  v153 = 0;
  v154 = 0;
  v5 = a1[12] - a1[11];
  if (!v5)
  {
    goto LABEL_219;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v148 = 0;
  v149 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v138 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  do
  {
    v147 = v11;
    __p = v9;
    if (v11 < (a2[1] - *a2) >> 2)
    {
      v140 = *(*a2 + 4 * v11);
      if (v140)
      {
        v14 = v10;
        v16 = a1[11];
        v15 = a1[12];
        v17 = &v16[3 * v11];
        if (&v152 != v17)
        {
          sub_31F64(&v152, *v17, v17[1], (v17[1] - *v17) >> 3);
          v7 = v152;
          v6 = v153;
        }

        v18 = 126 - 2 * __clz((v6 - v7) >> 3);
        if (v6 == v7)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        sub_2D31D4(v7, v6, v166, v19, 1);
        v20 = v152;
        v6 = v153;
        if (v152 != v153)
        {
          v21 = v152;
          do
          {
            v22 = v21 + 2;
            if (v21 + 2 == v153)
            {
              goto LABEL_25;
            }

            v23 = *v21;
            v24 = v21[1];
            LODWORD(v25) = v21[2];
            v26 = v21[3];
            v27 = v23 == v25 && v24 == v26;
            v21 = v22;
          }

          while (!v27);
          v28 = (v22 + 2);
          v29 = v22 - 2;
          if (v28 == v153)
          {
            v30 = (v29 + 2);
            if (v29 + 2 == v153)
            {
              goto LABEL_25;
            }

LABEL_34:
            v6 = v30;
            v153 = v30;
            if (v20 == v30)
            {
              goto LABEL_45;
            }

            goto LABEL_39;
          }

          do
          {
            if (v25 != v28->i32[0] || v29[1] != v28->i32[1])
            {
              v25 = v28->i64[0];
              *(v29 + 1) = v28->i64[0];
              v29 += 2;
            }

            v28 = (v28 + 8);
          }

          while (v28 != v6);
          v6 = v153;
          v30 = (v29 + 2);
          if (v29 + 2 != v153)
          {
            goto LABEL_34;
          }
        }

LABEL_25:
        if (v20 == v6)
        {
LABEL_45:
          v141 = 0;
          v143 = -1 - 0x5555555555555555 * (v15 - v16);
          v13 = v8;
          v10 = v14;
          while (1)
          {
            v150 = v6;
            if (v20 == v6)
            {
              goto LABEL_47;
            }

            do
            {
              while (1)
              {
                while (1)
                {
                  v34 = v13;
                  v35 = v20->i64[0];
                  v36 = **a1;
                  v167 = 1;
                  v168 = v35;
                  v166[0] = &v167;
                  v166[1] = &v168;
                  v37 = *(v36 + 3856) + 1;
                  *(v36 + 3856) = v37;
                  if (!*v36)
                  {
                    goto LABEL_211;
                  }

                  if (*(v36 + 688) == v35)
                  {
                    break;
                  }

                  if (*(v36 + 712) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 720) = v37;
                    v38 = *(v36 + 728);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  if (*(v36 + 736) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 744) = v37;
                    v38 = *(v36 + 752);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  if (*(v36 + 760) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 768) = v37;
                    v38 = *(v36 + 776);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  v39 = *(v36 + 744);
                  v40 = *(v36 + 720);
                  v41 = *(v36 + 696);
                  v42 = *(v36 + 768);
                  v38 = sub_2D52A4(*v36, 7, v35, 1);
                  if (v41 >= v37)
                  {
                    v43 = v37;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  v44 = 28;
                  if (v41 >= v37)
                  {
                    v44 = 0;
                  }

                  if (v40 < v43)
                  {
                    v43 = v40;
                    v44 = 29;
                  }

                  if (v39 < v43)
                  {
                    v44 = 30;
                    v43 = v39;
                  }

                  v45 = v42 >= v43;
                  v46 = 31;
                  if (v45)
                  {
                    v46 = v44;
                  }

                  v47 = v36 + 16 + 24 * v46;
                  *v47 = v168;
                  *(v47 + 8) = *(v36 + 3856);
                  *(v47 + 16) = v38;
                  if (v38)
                  {
                    goto LABEL_78;
                  }

                  sub_101E964(v166);
LABEL_211:
                  v13 = v34;
                  v20 = (v20 + 8);
                  if (v20 == v150)
                  {
                    goto LABEL_46;
                  }
                }

                ++*(v36 + 3864);
                *(v36 + 696) = v37;
                v38 = *(v36 + 704);
                if (!v38)
                {
                  goto LABEL_211;
                }

LABEL_78:
                v48 = (v38 + *v38);
                v49 = (v48 - *v48);
                if (*v49 < 9u)
                {
                  goto LABEL_211;
                }

                v50 = v49[4];
                if (!v50)
                {
                  goto LABEL_211;
                }

                v51 = sub_101E640((v48 + v50 + *(v48 + v50)), HIDWORD(v35));
                v52 = (v51 - *v51);
                if (*v52 < 9u)
                {
                  goto LABEL_211;
                }

                v53 = v52[4];
                v54 = v150;
                v13 = v34;
                if (v53)
                {
                  v55 = (v51 + v53 + *(v51 + v53));
                  v56 = *v55;
                  if (v56)
                  {
                    break;
                  }
                }

LABEL_51:
                v20 = (v20 + 8);
                if (v20 == v54)
                {
                  goto LABEL_46;
                }
              }

              v57 = 8 * v56;
              v58 = (v55 + 1);
              v59 = __p;
              v60 = __p;
              do
              {
                while (v59 < v10)
                {
                  v61 = *v58++;
                  *v59 = v61;
                  v59 += 8;
                  v57 -= 8;
                  if (!v57)
                  {
                    goto LABEL_96;
                  }
                }

                v62 = v59 - v60;
                v63 = (v59 - v60) >> 3;
                v64 = v63 + 1;
                if ((v63 + 1) >> 61)
                {
                  sub_1794();
                }

                if ((v10 - v60) >> 2 > v64)
                {
                  v64 = (v10 - v60) >> 2;
                }

                if (v10 - v60 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v65 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v65 = v64;
                }

                if (v65)
                {
                  if (!(v65 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                *(8 * v63) = *v58;
                v59 = (8 * v63 + 8);
                memcpy(0, v60, v62);
                v60 = 0;
                v10 = 0;
                ++v58;
                v57 -= 8;
              }

              while (v57);
LABEL_96:
              if (v60 != v59)
              {
                v66 = v60;
                __pa = v59;
                v146 = v10;
                v13 = v34;
                while (1)
                {
                  if (v162 != v161)
                  {
                    v68 = v163 - 1;
                    v69 = *v66;
                    v70 = __ROR8__(*v66, 32);
                    v71 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v70 ^ (v70 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v70 ^ (v70 >> 33))) >> 33));
                    v72 = (v71 ^ (v71 >> 33)) & (v163 - 1);
                    v73 = (v165 + 8 * v72);
                    v75 = *v73;
                    v74 = v73[1];
                    if (v164 != *v73 || HIDWORD(v164) != v74)
                    {
                      if (v161)
                      {
                        v77 = 1;
                        while (*&v160 == __PAIR64__(v74, v75) || __PAIR64__(v74, v75) != v69)
                        {
                          v72 = (v72 + v77) & v68;
                          v78 = (v165 + 8 * v72);
                          v75 = *v78;
                          v74 = v78[1];
                          ++v77;
                          if (v164 == v75 && HIDWORD(v164) == v74)
                          {
                            goto LABEL_123;
                          }
                        }
                      }

                      else
                      {
                        v80 = 1;
                        while (__PAIR64__(v74, v75) != v69)
                        {
                          v72 = (v72 + v80) & v68;
                          v81 = (v165 + 8 * v72);
                          v75 = *v81;
                          v74 = v81[1];
                          ++v80;
                          if (v164 == v75 && HIDWORD(v164) == v74)
                          {
                            goto LABEL_123;
                          }
                        }
                      }

                      if (v72 != -1 && v165 + 8 * v72 != v165 + 8 * v163)
                      {
                        goto LABEL_100;
                      }
                    }
                  }

LABEL_123:
                  if (v149 >= v148)
                  {
                    v83 = v149 - v13;
                    v84 = (v149 - v13) >> 3;
                    v85 = v84 + 1;
                    if ((v84 + 1) >> 61)
                    {
                      sub_1794();
                    }

                    if ((v148 - v13) >> 2 > v85)
                    {
                      v85 = (v148 - v13) >> 2;
                    }

                    if (v148 - v13 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v86 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v86 = v85;
                    }

                    if (v86)
                    {
                      if (!(v86 >> 61))
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    v87 = v13;
                    v13 = 0;
                    *(8 * v84) = *v66;
                    v148 = 0;
                    v149 = (8 * v84 + 8);
                    memcpy(0, v87, v83);
                    if (v87)
                    {
                      operator delete(v87);
                    }

                    v10 = v146;
                  }

                  else
                  {
                    v149->i64[0] = *v66;
                    v149 = (v149 + 8);
                  }

                  sub_101F9D8(&v155, 1);
                  if (sub_10550EC(&v155, v66) == -1)
                  {
                    if ((v162 - v161) >= 0x1FFFFFFFFFFFFFFFLL)
                    {
                      exception = __cxa_allocate_exception(0x10uLL);
                      std::logic_error::logic_error(exception, "insert overflow");
                    }

                    if (v161 && (v89 = vceq_s32(v160, *(v165 + 8 * v88)), (v89.i32[0] & v89.i32[1] & 1) != 0))
                    {
                      --v161;
                    }

                    else
                    {
                      ++v162;
                    }

                    *(v165 + v88) = *v66;
                  }

                  v90 = &a1[11][3 * v147];
                  v92 = v90[1];
                  v91 = v90[2];
                  if (v92 >= v91)
                  {
                    break;
                  }

                  *v92 = *v66;
                  v90[1] = (v92 + 1);
                  if (v147 != v143)
                  {
                    goto LABEL_159;
                  }

LABEL_100:
                  v66 += 8;
                  if (v66 == v59)
                  {
                    __p = v60;
                    goto LABEL_51;
                  }
                }

                v93 = *v90;
                v94 = v92 - *v90;
                v95 = (v94 >> 3) + 1;
                if (v95 >> 61)
                {
                  sub_1794();
                }

                v96 = v13;
                v97 = v91 - v93;
                if (v97 >> 2 > v95)
                {
                  v95 = v97 >> 2;
                }

                if (v97 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v98 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v98 = v95;
                }

                if (v98)
                {
                  if (!(v98 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v99 = (8 * (v94 >> 3));
                *v99 = *v66;
                v100 = v99 + 1;
                memcpy(0, v93, v94);
                *v90 = 0;
                v90[1] = v100;
                v90[2] = 0;
                if (v93)
                {
                  operator delete(v93);
                }

                v59 = __pa;
                v10 = v146;
                v13 = v96;
                v90[1] = v100;
                if (v147 == v143)
                {
                  goto LABEL_100;
                }

LABEL_159:
                v142 = v13;
                v101 = a1[11];
                v102 = *v66;
                v103 = **a1;
                if (atomic_load_explicit(byte_2732E58, memory_order_acquire))
                {
                  v104 = HIDWORD(v102);
                  if (qword_2732E50 == v102)
                  {
                    goto LABEL_161;
                  }

LABEL_162:
                  v105 = *(v103 + 3856) + 1;
                  *(v103 + 3856) = v105;
                  if (*v103)
                  {
                    if (*(v103 + 688) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 696) = v105;
                      v106 = *(v103 + 704);
                      if (!v106)
                      {
                        goto LABEL_193;
                      }

LABEL_188:
                      v113 = (v106 + *v106);
                      v114 = (v113 - *v113);
                      if (*v114 >= 9u)
                      {
                        v115 = v114[4];
                        if (v115)
                        {
                          v116 = sub_101E640((v113 + v115 + *(v113 + v115)), v104);
                          v117 = (v116 - *v116);
                          if (*v117 < 0xBu)
                          {
                            v120 = 0;
                            v119 = 0xFFFFFFFF00000000;
                            v54 = v150;
                          }

                          else
                          {
                            v118 = v117[5];
                            v54 = v150;
                            if (!v118)
                            {
                              goto LABEL_193;
                            }

                            v120 = *(v116 + v118);
                            v119 = v120 & 0xFFFFFFFF00000000;
                            v120 = v120;
                          }

LABEL_194:
                          v121 = &v101[3 * v147];
                          v122 = v120 | v119;
                          v124 = v121[4];
                          v123 = v121[5];
                          if (v124 < v123)
                          {
                            *v124 = v122;
                            v67 = v124 + 8;
                            v10 = v146;
                          }

                          else
                          {
                            v125 = v121[3];
                            v126 = v124 - v125;
                            v127 = (v124 - v125) >> 3;
                            v128 = v127 + 1;
                            if ((v127 + 1) >> 61)
                            {
                              sub_1794();
                            }

                            v129 = v123 - v125;
                            if (v129 >> 2 > v128)
                            {
                              v128 = v129 >> 2;
                            }

                            if (v129 >= 0x7FFFFFFFFFFFFFF8)
                            {
                              v130 = 0x1FFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v130 = v128;
                            }

                            if (v130)
                            {
                              if (!(v130 >> 61))
                              {
                                operator new();
                              }

                              sub_1808();
                            }

                            v131 = (v124 - v125) >> 3;
                            v132 = (8 * v127);
                            v133 = (8 * v127 - 8 * v131);
                            *v132 = v122;
                            v67 = v132 + 1;
                            memcpy(v133, v125, v126);
                            v121[3] = v133;
                            v121[4] = v67;
                            v121[5] = 0;
                            if (v125)
                            {
                              operator delete(v125);
                            }

                            v10 = v146;
                            v54 = v150;
                          }

                          v13 = v142;
                          v121[4] = v67;
                          v59 = __pa;
                          goto LABEL_100;
                        }
                      }
                    }

                    else if (*(v103 + 712) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 720) = v105;
                      v106 = *(v103 + 728);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else if (*(v103 + 736) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 744) = v105;
                      v106 = *(v103 + 752);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else if (*(v103 + 760) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 768) = v105;
                      v106 = *(v103 + 776);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else
                    {
                      v107 = *(v103 + 720);
                      v108 = *(v103 + 696);
                      v136 = *(v103 + 768);
                      v137 = *(v103 + 744);
                      v106 = sub_2D52A4(*v103, 7, v102, 1);
                      if (v108 >= v105)
                      {
                        v109 = v105;
                      }

                      else
                      {
                        v109 = v108;
                      }

                      v110 = 28;
                      if (v108 >= v105)
                      {
                        v110 = 0;
                      }

                      if (v107 < v109)
                      {
                        v109 = v107;
                        v110 = 29;
                      }

                      if (v137 < v109)
                      {
                        v110 = 30;
                        v109 = v137;
                      }

                      v45 = v136 >= v109;
                      v111 = 31;
                      if (v45)
                      {
                        v111 = v110;
                      }

                      v112 = v103 + 16 + 24 * v111;
                      *v112 = v102;
                      *(v112 + 8) = *(v103 + 3856);
                      *(v112 + 16) = v106;
                      v54 = v150;
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }
                  }
                }

                else
                {
                  sub_21E6BE8();
                  v104 = HIDWORD(v102);
                  if (qword_2732E50 != v102)
                  {
                    goto LABEL_162;
                  }

LABEL_161:
                  if (HIDWORD(qword_2732E50) != v104)
                  {
                    goto LABEL_162;
                  }
                }

LABEL_193:
                v120 = 0;
                v119 = 0xFFFFFFFF00000000;
                goto LABEL_194;
              }

              __p = v60;
              v13 = v34;
              v20 = (v20 + 8);
            }

            while (v20 != v150);
LABEL_46:
            v20 = v152;
LABEL_47:
            v7 = v13;
            v6 = v149;
            v13 = v20;
            v152 = v7;
            v153 = v149;
            v20 = v7;
            v12 = v154;
            v154 = v148;
            v148 = v12;
            v149 = v13;
            v8 = v13;
            if (++v141 == v140)
            {
              goto LABEL_7;
            }
          }
        }

        do
        {
LABEL_39:
          sub_101F9D8(&v155, 1);
          if (sub_10550EC(&v155, v20) == -1)
          {
            if ((v162 - v161) >= 0x1FFFFFFFFFFFFFFFLL)
            {
              v135 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v135, "insert overflow");
            }

            if (v161 && (v33 = vceq_s32(v160, *(v165 + 8 * v32)), (v33.i32[0] & v33.i32[1] & 1) != 0))
            {
              --v161;
            }

            else
            {
              ++v162;
            }

            *(v165 + v32) = v20->i64[0];
          }

          v20 = (v20 + 8);
        }

        while (v20 != v6);
        v20 = v152;
        v6 = v153;
        goto LABEL_45;
      }
    }

    v12 = v148;
    v13 = v149;
LABEL_7:
    v11 = v147 + 1;
    v148 = v12;
    v149 = v13;
    v9 = __p;
  }

  while (v147 + 1 != v138);
  if (v8)
  {
    operator delete(v8);
  }

LABEL_219:
  if (v152)
  {
    v153 = v152;
    operator delete(v152);
  }

  if (v165)
  {
    free(v165);
  }
}

void sub_1059C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  if (!a36)
  {
    _Unwind_Resume(exception_object);
  }

  free(a36);
  _Unwind_Resume(exception_object);
}

int32x2_t *sub_1059D34(int32x2_t *result)
{
  v1 = result[11];
  v2 = result[12];
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *v1;
      v5 = v1[1];
      while (v4 != v5)
      {
        if (!*v4 || *(v4 + 1) == -1)
        {
          goto LABEL_7;
        }

        sub_101F9D8(&v3[1], 1);
        v6 = *&v3[8] - 1;
        v7 = *v4;
        v8 = __ROR8__(*v4, 32);
        v9 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v8 ^ (v8 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v8 ^ (v8 >> 33))) >> 33));
        v10 = v9 ^ (v9 >> 33);
        v11 = v3[10];
        v12 = v3[9].i32[0];
        v13 = v3[9].i32[1];
        v14 = v10 & v6;
        v15 = (*&v11 + 8 * (v10 & v6));
        result = *v15;
        v16 = v15[1];
        v17 = v3[6];
        if (v12 == result && v13 == v16)
        {
          goto LABEL_28;
        }

        if (v17)
        {
          v19 = -1;
          v20 = 1;
          do
          {
            if (v3[5].i32[0] == result && v3[5].i32[1] == v16)
            {
              if (v19 == -1)
              {
                v19 = v14;
              }
            }

            else if (__PAIR64__(v16, result) == v7)
            {
              goto LABEL_39;
            }

            v14 = (v14 + v20) & v6;
            v21 = (*&v11 + 8 * v14);
            result = *v21;
            v16 = v21[1];
            ++v20;
          }

          while (v12 != result || v13 != v16);
          if (v19 == -1)
          {
LABEL_28:
            v19 = v14;
          }

          v23 = v3[7];
          if (*&v23 - *&v17 >= 0x1FFFFFFFFFFFFFFFuLL)
          {
            goto LABEL_41;
          }

LABEL_30:
          if (*&v17 && (v24 = vceq_s32(v3[5], *(*&v11 + 8 * v19)), (v24.i32[0] & v24.i32[1] & 1) != 0))
          {
            v3[6] = (*&v17 - 1);
          }

          else
          {
            v3[7] = (*&v23 + 1);
          }

          *(*&v11 + 8 * v19) = *v4;
          goto LABEL_7;
        }

        v25 = 1;
        while (__PAIR64__(v16, result) != v7)
        {
          v14 = (v14 + v25) & v6;
          v26 = (*&v11 + 8 * v14);
          result = *v26;
          v16 = v26[1];
          ++v25;
          if (v12 == result && v13 == v16)
          {
            goto LABEL_28;
          }
        }

LABEL_39:
        if (v14 == -1)
        {
          v19 = -1;
          v23 = v3[7];
          if (*&v23 - *&v17 >= 0x1FFFFFFFFFFFFFFFuLL)
          {
LABEL_41:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }

          goto LABEL_30;
        }

LABEL_7:
        ++v4;
      }

      v1 += 3;
    }

    while (v1 != v2);
  }

  return result;
}

char *sub_1059F84(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 1264) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1272) = v3;
    v4 = *(a1 + 1280);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1288) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1296) = v3;
    v4 = *(a1 + 1304);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1312) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1320) = v3;
    v4 = *(a1 + 1328);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1336) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1344) = v3;
    v4 = *(a1 + 1352);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 1320);
    v8 = *(a1 + 1296);
    v9 = *(a1 + 1272);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 1272);
    }

    v11 = 52;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 1296);
    }

    v13 = 53;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 1320);
    }

    v15 = *(a1 + 1344);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 54;
    }

    v18 = sub_2D52A4(*a1, 13, a2, 1);
    v19 = 55;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_105A158(v21);
  return 0;
}

uint64_t sub_105A158(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0xDu);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_105A254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_105A284(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v5 = __ROR8__(a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = (*(*(a1 + 16) + 56) + 200 * (bswap64(v7) % *(*(a1 + 16) + 40)));
  v16 = a2;
  v17[0] = &v16;
  v17[1] = v7;
  sub_10564BC(v8, v17, &v13);
  if ((v15 & 1) == 0)
  {
    v9 = __ROR8__(v16, 32);
    v10 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) >> 33));
    sub_1056630((*(*(a1 + 16) + 136) + 200 * (bswap64(v10 ^ (v10 >> 33)) % *(*(a1 + 16) + 120))), &v16, v17, 8uLL, 0);
  }

  v11 = v14;
  *a3 = v13;
  a3[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = v14;
    if (v14)
    {
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void *sub_105A408(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_40CC5C(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_10538E8(v5 + 103, a2);
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[98] - a1[96]) >> 4) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_105A50C(_Unwind_Exception *a1)
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

void sub_105A56C(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v16 = a2;
  v5 = __ROR8__(a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = (*(*(a1 + 16) + 16) + 200 * (bswap64(v7) % **(a1 + 16)));
  v17[0] = &v16;
  v17[1] = v7;
  sub_10564BC(v8, v17, &v13);
  if ((v15 & 1) == 0)
  {
    v9 = __ROR8__(v16, 32);
    v10 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) >> 33));
    sub_1056630((*(*(a1 + 16) + 96) + 200 * (bswap64(v10 ^ (v10 >> 33)) % *(*(a1 + 16) + 80))), &v16, v17, 8uLL, 0);
  }

  v11 = v14;
  *a3 = v13;
  a3[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = v14;
    if (v14)
    {
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void *sub_105A6F0(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_40E98C(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_10538E8(v5 + 103, a2);
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[98] - a1[96]) >> 4) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_105A7F4(_Unwind_Exception *a1)
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

uint64_t sub_105A854@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = 0x2127599BF4325C37 * ((((v4 << 32) + (16 * v5)) | (v5 >> 29) & 2 | (v5 >> 31) | (v5 >> 27) & 4 | (v5 >> 25) & 8) ^ (((v4 << 32) + (16 * v5)) >> 23));
  v7 = (v6 ^ ~(v6 >> 47)) + ((v6 ^ (v6 >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  v14 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v15 = v11 & v12;
    v16 = *(v13 + v15);
    v17 = ((v16 ^ v14) - 0x101010101010101) & ~(v16 ^ v14) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_8:
    if ((v16 & (~v16 << 6) & 0x8080808080808080) != 0)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = v12;
      a3[4] = 0;
      return result;
    }

    v3 += 8;
    v11 = v3 + v15;
  }

  while (1)
  {
    v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v12;
    v18 = v10[1];
    v20 = (v18 + 16 * v19);
    if (*v20 == v4 && v20[1] == v5)
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  v22 = v12 == v19;
  v23 = (v13 + v19);
  v24 = (v12 + v13);
  v25 = (result + 768);
  if (v12 == v19)
  {
    v23 = 0;
    v25 = 0;
    v10 = 0;
    v26 = a3;
  }

  else
  {
    v26 = (v18 + 16 * v19);
  }

  if (v22)
  {
    v24 = 0;
  }

  *a3 = v10;
  a3[1] = v25;
  a3[2] = v23;
  a3[3] = v26;
  a3[4] = v24;
  return result;
}

void sub_105A9CC(uint64_t **a1, void *a2)
{
  if (*a2 == a2[1])
  {
    return;
  }

  v158 = 0;
  v156 = 0x3E4CCCCD3F000000;
  v159 = 0;
  v160 = 0xFFFFFFFF00000000;
  v161 = 0;
  v162 = 0;
  v155 = xmmword_2267060;
  v157 = 256;
  v163 = 32;
  v164 = 0xFFFFFFFF00000000;
  v165 = malloc_type_malloc(0x100uLL, 0x100004000313F17uLL);
  v2 = vdupq_n_s64(0xFFFFFFFF00000000);
  v3 = (v165 + 16);
  v4 = 32;
  do
  {
    v3[-1] = v2;
    *v3 = v2;
    v3 += 2;
    v4 -= 4;
  }

  while (v4);
  v152 = 0;
  v153 = 0;
  v154 = 0;
  v5 = a1[12] - a1[11];
  if (!v5)
  {
    goto LABEL_219;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v148 = 0;
  v149 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v138 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  do
  {
    v147 = v11;
    __p = v9;
    if (v11 < (a2[1] - *a2) >> 2)
    {
      v140 = *(*a2 + 4 * v11);
      if (v140)
      {
        v14 = v10;
        v16 = a1[11];
        v15 = a1[12];
        v17 = &v16[3 * v11];
        if (&v152 != v17)
        {
          sub_31F64(&v152, *v17, v17[1], (v17[1] - *v17) >> 3);
          v7 = v152;
          v6 = v153;
        }

        v18 = 126 - 2 * __clz((v6 - v7) >> 3);
        if (v6 == v7)
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        sub_2D31D4(v7, v6, v166, v19, 1);
        v20 = v152;
        v6 = v153;
        if (v152 != v153)
        {
          v21 = v152;
          do
          {
            v22 = v21 + 2;
            if (v21 + 2 == v153)
            {
              goto LABEL_25;
            }

            v23 = *v21;
            v24 = v21[1];
            LODWORD(v25) = v21[2];
            v26 = v21[3];
            v27 = v23 == v25 && v24 == v26;
            v21 = v22;
          }

          while (!v27);
          v28 = (v22 + 2);
          v29 = v22 - 2;
          if (v28 == v153)
          {
            v30 = (v29 + 2);
            if (v29 + 2 == v153)
            {
              goto LABEL_25;
            }

LABEL_34:
            v6 = v30;
            v153 = v30;
            if (v20 == v30)
            {
              goto LABEL_45;
            }

            goto LABEL_39;
          }

          do
          {
            if (v25 != v28->i32[0] || v29[1] != v28->i32[1])
            {
              v25 = v28->i64[0];
              *(v29 + 1) = v28->i64[0];
              v29 += 2;
            }

            v28 = (v28 + 8);
          }

          while (v28 != v6);
          v6 = v153;
          v30 = (v29 + 2);
          if (v29 + 2 != v153)
          {
            goto LABEL_34;
          }
        }

LABEL_25:
        if (v20 == v6)
        {
LABEL_45:
          v141 = 0;
          v143 = -1 - 0x5555555555555555 * (v15 - v16);
          v13 = v8;
          v10 = v14;
          while (1)
          {
            v150 = v6;
            if (v20 == v6)
            {
              goto LABEL_47;
            }

            do
            {
              while (1)
              {
                while (1)
                {
                  v34 = v13;
                  v35 = v20->i64[0];
                  v36 = **a1;
                  v167 = 1;
                  v168 = v35;
                  v166[0] = &v167;
                  v166[1] = &v168;
                  v37 = *(v36 + 3856) + 1;
                  *(v36 + 3856) = v37;
                  if (!*v36)
                  {
                    goto LABEL_211;
                  }

                  if (*(v36 + 688) == v35)
                  {
                    break;
                  }

                  if (*(v36 + 712) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 720) = v37;
                    v38 = *(v36 + 728);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  if (*(v36 + 736) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 744) = v37;
                    v38 = *(v36 + 752);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  if (*(v36 + 760) == v35)
                  {
                    ++*(v36 + 3864);
                    *(v36 + 768) = v37;
                    v38 = *(v36 + 776);
                    if (!v38)
                    {
                      goto LABEL_211;
                    }

                    goto LABEL_78;
                  }

                  v39 = *(v36 + 744);
                  v40 = *(v36 + 720);
                  v41 = *(v36 + 696);
                  v42 = *(v36 + 768);
                  v38 = sub_2D52A4(*v36, 7, v35, 1);
                  if (v41 >= v37)
                  {
                    v43 = v37;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  v44 = 28;
                  if (v41 >= v37)
                  {
                    v44 = 0;
                  }

                  if (v40 < v43)
                  {
                    v43 = v40;
                    v44 = 29;
                  }

                  if (v39 < v43)
                  {
                    v44 = 30;
                    v43 = v39;
                  }

                  v45 = v42 >= v43;
                  v46 = 31;
                  if (v45)
                  {
                    v46 = v44;
                  }

                  v47 = v36 + 16 + 24 * v46;
                  *v47 = v168;
                  *(v47 + 8) = *(v36 + 3856);
                  *(v47 + 16) = v38;
                  if (v38)
                  {
                    goto LABEL_78;
                  }

                  sub_101E964(v166);
LABEL_211:
                  v13 = v34;
                  v20 = (v20 + 8);
                  if (v20 == v150)
                  {
                    goto LABEL_46;
                  }
                }

                ++*(v36 + 3864);
                *(v36 + 696) = v37;
                v38 = *(v36 + 704);
                if (!v38)
                {
                  goto LABEL_211;
                }

LABEL_78:
                v48 = (v38 + *v38);
                v49 = (v48 - *v48);
                if (*v49 < 9u)
                {
                  goto LABEL_211;
                }

                v50 = v49[4];
                if (!v50)
                {
                  goto LABEL_211;
                }

                v51 = sub_101E640((v48 + v50 + *(v48 + v50)), HIDWORD(v35));
                v52 = (v51 - *v51);
                if (*v52 < 9u)
                {
                  goto LABEL_211;
                }

                v53 = v52[4];
                v54 = v150;
                v13 = v34;
                if (v53)
                {
                  v55 = (v51 + v53 + *(v51 + v53));
                  v56 = *v55;
                  if (v56)
                  {
                    break;
                  }
                }

LABEL_51:
                v20 = (v20 + 8);
                if (v20 == v54)
                {
                  goto LABEL_46;
                }
              }

              v57 = 8 * v56;
              v58 = (v55 + 1);
              v59 = __p;
              v60 = __p;
              do
              {
                while (v59 < v10)
                {
                  v61 = *v58++;
                  *v59 = v61;
                  v59 += 8;
                  v57 -= 8;
                  if (!v57)
                  {
                    goto LABEL_96;
                  }
                }

                v62 = v59 - v60;
                v63 = (v59 - v60) >> 3;
                v64 = v63 + 1;
                if ((v63 + 1) >> 61)
                {
                  sub_1794();
                }

                if ((v10 - v60) >> 2 > v64)
                {
                  v64 = (v10 - v60) >> 2;
                }

                if (v10 - v60 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v65 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v65 = v64;
                }

                if (v65)
                {
                  if (!(v65 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                *(8 * v63) = *v58;
                v59 = (8 * v63 + 8);
                memcpy(0, v60, v62);
                v60 = 0;
                v10 = 0;
                ++v58;
                v57 -= 8;
              }

              while (v57);
LABEL_96:
              if (v60 != v59)
              {
                v66 = v60;
                __pa = v59;
                v146 = v10;
                v13 = v34;
                while (1)
                {
                  if (v162 != v161)
                  {
                    v68 = v163 - 1;
                    v69 = *v66;
                    v70 = __ROR8__(*v66, 32);
                    v71 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v70 ^ (v70 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v70 ^ (v70 >> 33))) >> 33));
                    v72 = (v71 ^ (v71 >> 33)) & (v163 - 1);
                    v73 = (v165 + 8 * v72);
                    v75 = *v73;
                    v74 = v73[1];
                    if (v164 != *v73 || HIDWORD(v164) != v74)
                    {
                      if (v161)
                      {
                        v77 = 1;
                        while (*&v160 == __PAIR64__(v74, v75) || __PAIR64__(v74, v75) != v69)
                        {
                          v72 = (v72 + v77) & v68;
                          v78 = (v165 + 8 * v72);
                          v75 = *v78;
                          v74 = v78[1];
                          ++v77;
                          if (v164 == v75 && HIDWORD(v164) == v74)
                          {
                            goto LABEL_123;
                          }
                        }
                      }

                      else
                      {
                        v80 = 1;
                        while (__PAIR64__(v74, v75) != v69)
                        {
                          v72 = (v72 + v80) & v68;
                          v81 = (v165 + 8 * v72);
                          v75 = *v81;
                          v74 = v81[1];
                          ++v80;
                          if (v164 == v75 && HIDWORD(v164) == v74)
                          {
                            goto LABEL_123;
                          }
                        }
                      }

                      if (v72 != -1 && v165 + 8 * v72 != v165 + 8 * v163)
                      {
                        goto LABEL_100;
                      }
                    }
                  }

LABEL_123:
                  if (v149 >= v148)
                  {
                    v83 = v149 - v13;
                    v84 = (v149 - v13) >> 3;
                    v85 = v84 + 1;
                    if ((v84 + 1) >> 61)
                    {
                      sub_1794();
                    }

                    if ((v148 - v13) >> 2 > v85)
                    {
                      v85 = (v148 - v13) >> 2;
                    }

                    if (v148 - v13 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v86 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v86 = v85;
                    }

                    if (v86)
                    {
                      if (!(v86 >> 61))
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    v87 = v13;
                    v13 = 0;
                    *(8 * v84) = *v66;
                    v148 = 0;
                    v149 = (8 * v84 + 8);
                    memcpy(0, v87, v83);
                    if (v87)
                    {
                      operator delete(v87);
                    }

                    v10 = v146;
                  }

                  else
                  {
                    v149->i64[0] = *v66;
                    v149 = (v149 + 8);
                  }

                  sub_101F9D8(&v155, 1);
                  if (sub_10550EC(&v155, v66) == -1)
                  {
                    if ((v162 - v161) >= 0x1FFFFFFFFFFFFFFFLL)
                    {
                      exception = __cxa_allocate_exception(0x10uLL);
                      std::logic_error::logic_error(exception, "insert overflow");
                    }

                    if (v161 && (v89 = vceq_s32(v160, *(v165 + 8 * v88)), (v89.i32[0] & v89.i32[1] & 1) != 0))
                    {
                      --v161;
                    }

                    else
                    {
                      ++v162;
                    }

                    *(v165 + v88) = *v66;
                  }

                  v90 = &a1[11][3 * v147];
                  v92 = v90[1];
                  v91 = v90[2];
                  if (v92 >= v91)
                  {
                    break;
                  }

                  *v92 = *v66;
                  v90[1] = (v92 + 1);
                  if (v147 != v143)
                  {
                    goto LABEL_159;
                  }

LABEL_100:
                  v66 += 8;
                  if (v66 == v59)
                  {
                    __p = v60;
                    goto LABEL_51;
                  }
                }

                v93 = *v90;
                v94 = v92 - *v90;
                v95 = (v94 >> 3) + 1;
                if (v95 >> 61)
                {
                  sub_1794();
                }

                v96 = v13;
                v97 = v91 - v93;
                if (v97 >> 2 > v95)
                {
                  v95 = v97 >> 2;
                }

                if (v97 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v98 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v98 = v95;
                }

                if (v98)
                {
                  if (!(v98 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v99 = (8 * (v94 >> 3));
                *v99 = *v66;
                v100 = v99 + 1;
                memcpy(0, v93, v94);
                *v90 = 0;
                v90[1] = v100;
                v90[2] = 0;
                if (v93)
                {
                  operator delete(v93);
                }

                v59 = __pa;
                v10 = v146;
                v13 = v96;
                v90[1] = v100;
                if (v147 == v143)
                {
                  goto LABEL_100;
                }

LABEL_159:
                v142 = v13;
                v101 = a1[11];
                v102 = *v66;
                v103 = **a1;
                if (atomic_load_explicit(byte_2732E58, memory_order_acquire))
                {
                  v104 = HIDWORD(v102);
                  if (qword_2732E50 == v102)
                  {
                    goto LABEL_161;
                  }

LABEL_162:
                  v105 = *(v103 + 3856) + 1;
                  *(v103 + 3856) = v105;
                  if (*v103)
                  {
                    if (*(v103 + 688) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 696) = v105;
                      v106 = *(v103 + 704);
                      if (!v106)
                      {
                        goto LABEL_193;
                      }

LABEL_188:
                      v113 = (v106 + *v106);
                      v114 = (v113 - *v113);
                      if (*v114 >= 9u)
                      {
                        v115 = v114[4];
                        if (v115)
                        {
                          v116 = sub_101E640((v113 + v115 + *(v113 + v115)), v104);
                          v117 = (v116 - *v116);
                          if (*v117 < 0xBu)
                          {
                            v120 = 0;
                            v119 = 0xFFFFFFFF00000000;
                            v54 = v150;
                          }

                          else
                          {
                            v118 = v117[5];
                            v54 = v150;
                            if (!v118)
                            {
                              goto LABEL_193;
                            }

                            v120 = *(v116 + v118);
                            v119 = v120 & 0xFFFFFFFF00000000;
                            v120 = v120;
                          }

LABEL_194:
                          v121 = &v101[3 * v147];
                          v122 = v120 | v119;
                          v124 = v121[4];
                          v123 = v121[5];
                          if (v124 < v123)
                          {
                            *v124 = v122;
                            v67 = v124 + 8;
                            v10 = v146;
                          }

                          else
                          {
                            v125 = v121[3];
                            v126 = v124 - v125;
                            v127 = (v124 - v125) >> 3;
                            v128 = v127 + 1;
                            if ((v127 + 1) >> 61)
                            {
                              sub_1794();
                            }

                            v129 = v123 - v125;
                            if (v129 >> 2 > v128)
                            {
                              v128 = v129 >> 2;
                            }

                            if (v129 >= 0x7FFFFFFFFFFFFFF8)
                            {
                              v130 = 0x1FFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v130 = v128;
                            }

                            if (v130)
                            {
                              if (!(v130 >> 61))
                              {
                                operator new();
                              }

                              sub_1808();
                            }

                            v131 = (v124 - v125) >> 3;
                            v132 = (8 * v127);
                            v133 = (8 * v127 - 8 * v131);
                            *v132 = v122;
                            v67 = v132 + 1;
                            memcpy(v133, v125, v126);
                            v121[3] = v133;
                            v121[4] = v67;
                            v121[5] = 0;
                            if (v125)
                            {
                              operator delete(v125);
                            }

                            v10 = v146;
                            v54 = v150;
                          }

                          v13 = v142;
                          v121[4] = v67;
                          v59 = __pa;
                          goto LABEL_100;
                        }
                      }
                    }

                    else if (*(v103 + 712) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 720) = v105;
                      v106 = *(v103 + 728);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else if (*(v103 + 736) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 744) = v105;
                      v106 = *(v103 + 752);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else if (*(v103 + 760) == v102)
                    {
                      ++*(v103 + 3864);
                      *(v103 + 768) = v105;
                      v106 = *(v103 + 776);
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }

                    else
                    {
                      v107 = *(v103 + 720);
                      v108 = *(v103 + 696);
                      v136 = *(v103 + 768);
                      v137 = *(v103 + 744);
                      v106 = sub_2D52A4(*v103, 7, v102, 1);
                      if (v108 >= v105)
                      {
                        v109 = v105;
                      }

                      else
                      {
                        v109 = v108;
                      }

                      v110 = 28;
                      if (v108 >= v105)
                      {
                        v110 = 0;
                      }

                      if (v107 < v109)
                      {
                        v109 = v107;
                        v110 = 29;
                      }

                      if (v137 < v109)
                      {
                        v110 = 30;
                        v109 = v137;
                      }

                      v45 = v136 >= v109;
                      v111 = 31;
                      if (v45)
                      {
                        v111 = v110;
                      }

                      v112 = v103 + 16 + 24 * v111;
                      *v112 = v102;
                      *(v112 + 8) = *(v103 + 3856);
                      *(v112 + 16) = v106;
                      v54 = v150;
                      if (v106)
                      {
                        goto LABEL_188;
                      }
                    }
                  }
                }

                else
                {
                  sub_21E6BE8();
                  v104 = HIDWORD(v102);
                  if (qword_2732E50 != v102)
                  {
                    goto LABEL_162;
                  }

LABEL_161:
                  if (HIDWORD(qword_2732E50) != v104)
                  {
                    goto LABEL_162;
                  }
                }

LABEL_193:
                v120 = 0;
                v119 = 0xFFFFFFFF00000000;
                goto LABEL_194;
              }

              __p = v60;
              v13 = v34;
              v20 = (v20 + 8);
            }

            while (v20 != v150);
LABEL_46:
            v20 = v152;
LABEL_47:
            v7 = v13;
            v6 = v149;
            v13 = v20;
            v152 = v7;
            v153 = v149;
            v20 = v7;
            v12 = v154;
            v154 = v148;
            v148 = v12;
            v149 = v13;
            v8 = v13;
            if (++v141 == v140)
            {
              goto LABEL_7;
            }
          }
        }

        do
        {
LABEL_39:
          sub_101F9D8(&v155, 1);
          if (sub_10550EC(&v155, v20) == -1)
          {
            if ((v162 - v161) >= 0x1FFFFFFFFFFFFFFFLL)
            {
              v135 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v135, "insert overflow");
            }

            if (v161 && (v33 = vceq_s32(v160, *(v165 + 8 * v32)), (v33.i32[0] & v33.i32[1] & 1) != 0))
            {
              --v161;
            }

            else
            {
              ++v162;
            }

            *(v165 + v32) = v20->i64[0];
          }

          v20 = (v20 + 8);
        }

        while (v20 != v6);
        v20 = v152;
        v6 = v153;
        goto LABEL_45;
      }
    }

    v12 = v148;
    v13 = v149;
LABEL_7:
    v11 = v147 + 1;
    v148 = v12;
    v149 = v13;
    v9 = __p;
  }

  while (v147 + 1 != v138);
  if (v8)
  {
    operator delete(v8);
  }

LABEL_219:
  if (v152)
  {
    v153 = v152;
    operator delete(v152);
  }

  if (v165)
  {
    free(v165);
  }
}

void sub_105B8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  if (!a36)
  {
    _Unwind_Resume(exception_object);
  }

  free(a36);
  _Unwind_Resume(exception_object);
}

int32x2_t *sub_105B98C(int32x2_t *result)
{
  v1 = result[11];
  v2 = result[12];
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *v1;
      v5 = v1[1];
      while (v4 != v5)
      {
        if (!*v4 || *(v4 + 1) == -1)
        {
          goto LABEL_7;
        }

        sub_101F9D8(&v3[1], 1);
        v6 = *&v3[8] - 1;
        v7 = *v4;
        v8 = __ROR8__(*v4, 32);
        v9 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v8 ^ (v8 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v8 ^ (v8 >> 33))) >> 33));
        v10 = v9 ^ (v9 >> 33);
        v11 = v3[10];
        v12 = v3[9].i32[0];
        v13 = v3[9].i32[1];
        v14 = v10 & v6;
        v15 = (*&v11 + 8 * (v10 & v6));
        result = *v15;
        v16 = v15[1];
        v17 = v3[6];
        if (v12 == result && v13 == v16)
        {
          goto LABEL_28;
        }

        if (v17)
        {
          v19 = -1;
          v20 = 1;
          do
          {
            if (v3[5].i32[0] == result && v3[5].i32[1] == v16)
            {
              if (v19 == -1)
              {
                v19 = v14;
              }
            }

            else if (__PAIR64__(v16, result) == v7)
            {
              goto LABEL_39;
            }

            v14 = (v14 + v20) & v6;
            v21 = (*&v11 + 8 * v14);
            result = *v21;
            v16 = v21[1];
            ++v20;
          }

          while (v12 != result || v13 != v16);
          if (v19 == -1)
          {
LABEL_28:
            v19 = v14;
          }

          v23 = v3[7];
          if (*&v23 - *&v17 >= 0x1FFFFFFFFFFFFFFFuLL)
          {
            goto LABEL_41;
          }

LABEL_30:
          if (*&v17 && (v24 = vceq_s32(v3[5], *(*&v11 + 8 * v19)), (v24.i32[0] & v24.i32[1] & 1) != 0))
          {
            v3[6] = (*&v17 - 1);
          }

          else
          {
            v3[7] = (*&v23 + 1);
          }

          *(*&v11 + 8 * v19) = *v4;
          goto LABEL_7;
        }

        v25 = 1;
        while (__PAIR64__(v16, result) != v7)
        {
          v14 = (v14 + v25) & v6;
          v26 = (*&v11 + 8 * v14);
          result = *v26;
          v16 = v26[1];
          ++v25;
          if (v12 == result && v13 == v16)
          {
            goto LABEL_28;
          }
        }

LABEL_39:
        if (v14 == -1)
        {
          v19 = -1;
          v23 = v3[7];
          if (*&v23 - *&v17 >= 0x1FFFFFFFFFFFFFFFuLL)
          {
LABEL_41:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }

          goto LABEL_30;
        }

LABEL_7:
        ++v4;
      }

      v1 += 3;
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t sub_105BBDC@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = 0x2127599BF4325C37 * ((((v4 << 32) + (16 * v5)) | (v5 >> 29) & 2 | (v5 >> 31) | (v5 >> 27) & 4 | (v5 >> 25) & 8) ^ (((v4 << 32) + (16 * v5)) >> 23));
  v7 = (v6 ^ ~(v6 >> 47)) + ((v6 ^ (v6 >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(v13 + (v11 & v12));
    v16 = ((v15 ^ (0x101010101010101 * (v9 & 0x7F))) - 0x101010101010101) & ~(v15 ^ (0x101010101010101 * (v9 & 0x7F))) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_9:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      v24 = result;
      v26 = a3;
      v27 = sub_10204B8((result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF)), v9);
      a3 = v26;
      v18 = v27;
      result = v24;
      v28 = (v10[1] + 32 * v18);
      *v28 = *a2;
      v28[1] = 0;
      v28[2] = 0;
      v28[3] = 0;
      v13 = *v10;
      v17 = v10[1];
      v12 = v10[3];
      v23 = 1;
      goto LABEL_13;
    }

    v3 += 8;
    v11 = v3 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    v19 = (v17 + 32 * v18);
    v21 = *v19;
    v20 = v19[1];
    if (v21 == v4 && v20 == v5)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
LABEL_13:
  *a3 = v10;
  *(a3 + 8) = result + 768;
  *(a3 + 16) = v13 + v18;
  *(a3 + 24) = v17 + 32 * v18;
  *(a3 + 32) = v13 + v12;
  *(a3 + 48) = v23;
  return result;
}

unint64_t sub_105BD90(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_105BEB4(a1, a3, 1);
  if (!v5)
  {
    return 0xFFFFLL;
  }

  v6 = &v5[-*v5];
  if (*v6 < 5u)
  {
    return 0xFFFFLL;
  }

  if (!*(v6 + 2))
  {
    return 0xFFFFLL;
  }

  v7 = &v5[*(v6 + 2) + *&v5[*(v6 + 2)]];
  if (*v7 <= HIDWORD(a3))
  {
    return 0xFFFFLL;
  }

  v8 = &v7[4 * HIDWORD(a3) + 4 + *&v7[4 * HIDWORD(a3) + 4]];
  v9 = &v8[-*v8];
  if (*v9 < 9u)
  {
    return 0xFFFFLL;
  }

  v10 = *(v9 + 4);
  if (!v10)
  {
    return 0xFFFFLL;
  }

  v11 = &v8[v10 + *&v8[v10]];
  v14 = *v11;
  v12 = v11 + 4;
  v13 = v14;
  v15 = &v12[8 * v14];
  v16 = (((a2 >> 28) & 0xFFFFFFFFFFFFFFF0) + (a2 << 32)) & 0xFFFFFFFFFFFFFFF0 | (a2 >> 57) & 8 | (a2 >> 59) & 4 | (a2 >> 61) & 2 | (a2 >> 63);
  v17 = v12;
  while (v13)
  {
    v18 = &v17[(4 * v13) & 0x7FFFFFFF8];
    v20 = *v18;
    v19 = (v18 + 1);
    v21 = v13 >> 1;
    v13 += ~(v13 >> 1);
    if (v20 >= v16)
    {
      v13 = v21;
    }

    else
    {
      v17 = v19;
    }
  }

  if (v17 != v15 && *v17 == v16)
  {
    return (v17 - v12) >> 3;
  }

  else
  {
    return 0xFFFFLL;
  }
}

char *sub_105BEB4(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 1360) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1368) = v3;
    v4 = *(a1 + 1376);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1384) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1392) = v3;
    v4 = *(a1 + 1400);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1408) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1416) = v3;
    v4 = *(a1 + 1424);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1432) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1440) = v3;
    v4 = *(a1 + 1448);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 1416);
    v8 = *(a1 + 1392);
    v9 = *(a1 + 1368);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 1368);
    }

    v11 = 56;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 1392);
    }

    v13 = 57;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 1416);
    }

    v15 = *(a1 + 1440);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 58;
    }

    v18 = sub_2D52A4(*a1, 14, a2, 1);
    v19 = 59;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_105C088(v21);
  return 0;
}

uint64_t sub_105C088(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0xEu);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_105C184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_105C1B4(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v5 = __ROR8__(a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = (*(*(a1 + 16) + 56) + 200 * (bswap64(v7) % *(*(a1 + 16) + 40)));
  v16 = a2;
  v17[0] = &v16;
  v17[1] = v7;
  sub_10564BC(v8, v17, &v13);
  if ((v15 & 1) == 0)
  {
    v9 = __ROR8__(v16, 32);
    v10 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) >> 33));
    sub_1056630((*(*(a1 + 16) + 136) + 200 * (bswap64(v10 ^ (v10 >> 33)) % *(*(a1 + 16) + 120))), &v16, v17, 8uLL, 0);
  }

  v11 = v14;
  *a3 = v13;
  a3[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = v14;
    if (v14)
    {
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

uint64_t sub_105C338@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = 0x2127599BF4325C37 * ((((v4 << 32) + (16 * v5)) | (v5 >> 29) & 2 | (v5 >> 31) | (v5 >> 27) & 4 | (v5 >> 25) & 8) ^ (((v4 << 32) + (16 * v5)) >> 23));
  v7 = (v6 ^ ~(v6 >> 47)) + ((v6 ^ (v6 >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  v14 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v15 = v11 & v12;
    v16 = *(v13 + v15);
    v17 = ((v16 ^ v14) - 0x101010101010101) & ~(v16 ^ v14) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_8:
    if ((v16 & (~v16 << 6) & 0x8080808080808080) != 0)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = v12;
      a3[4] = 0;
      return result;
    }

    v3 += 8;
    v11 = v3 + v15;
  }

  while (1)
  {
    v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v12;
    v18 = v10[1];
    v20 = (v18 + 32 * v19);
    if (*v20 == v4 && v20[1] == v5)
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  v22 = v12 == v19;
  v23 = (v13 + v19);
  v24 = (v12 + v13);
  v25 = (result + 768);
  if (v12 == v19)
  {
    v23 = 0;
    v25 = 0;
    v10 = 0;
    v26 = a3;
  }

  else
  {
    v26 = (v18 + 32 * v19);
  }

  if (v22)
  {
    v24 = 0;
  }

  *a3 = v10;
  a3[1] = v25;
  a3[2] = v23;
  a3[3] = v26;
  a3[4] = v24;
  return result;
}

void sub_105C4B0(uint64_t a1, unsigned int *a2, void *a3)
{
  a3[1] = *a3;
  if (!*(a1 + 3880))
  {
    v20[7] = v3;
    v20[8] = v4;
    v7 = sub_3BF72C(a1 + 8, *a2, 1);
    if (v7)
    {
      v8 = &v7[-*v7];
      if (*v8 >= 0xBu)
      {
        v9 = *(v8 + 5);
        if (v9)
        {
          v10 = &v7[v9 + *&v7[v9]];
          v11 = a2[1] & 0xFFFFFFF;
          if (*v10 > v11)
          {
            v12 = &v10[4 * v11 + 4 + *&v10[4 * v11 + 4]];
            v13 = &v12[-*v12];
            if (*v13 >= 5u)
            {
              v14 = *(v13 + 2);
              if (v14)
              {
                v15 = &v12[v14 + *&v12[v14]];
                if (*v15 > ((a3[2] - *a3) >> 3))
                {
                  operator new();
                }

                v16 = *v15;
                v20[0] = a3;
                if (v16)
                {
                  v17 = 8 * v16;
                  v18 = v15 + 4;
                  do
                  {
                    v19 = v18;
                    sub_1057FF0(v20, &v19);
                    ++v18;
                    v17 -= 8;
                  }

                  while (v17);
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_105C628(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = (16 * a2[1]) | (a2[1] >> 25) & 8 | (a2[1] >> 27) & 4 | (a2[1] >> 29) & 2 | (a2[1] >> 31);
  if (*(a1 + 20) == *a2 && *(a1 + 16) == v3)
  {
    LODWORD(v4) = *(a1 + 24);
    v5 = *(a1 + 8);
    goto LABEL_21;
  }

  v5 = *(a1 + 8);
  v6 = (v5 + 1);
  v7 = *v5;
  v8 = &v5[3 * v7 + 1];
  if (*v5)
  {
    v9 = (v5 + 1);
    do
    {
      v10 = v7 >> 1;
      v11 = &v9[12 * (v7 >> 1)];
      v12 = *(*a1 + 4 + 4 * *(v11 + 2));
      v14 = *v11;
      v13 = (v11 + 3);
      v15 = v12 < v2;
      v16 = v14 < v3;
      if (v14 != v3)
      {
        v15 = v16;
      }

      v7 += ~v10;
      if (v15)
      {
        v9 = v13;
      }

      else
      {
        v7 = v10;
      }
    }

    while (v7);
    if (v9 == v8)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v9 = (v5 + 1);
    if (v6 == v8)
    {
LABEL_19:
      LODWORD(v4) = -1;
      goto LABEL_21;
    }
  }

  if (*(*a1 + 4 * *(v9 + 2) + 4) != v2 || *v9 != v3)
  {
    goto LABEL_19;
  }

  v4 = (v9 - v6) / 0xCuLL;
LABEL_21:
  v18 = HIWORD(v5[3 * v4 + 3]);
  if (v18 == 0xFFFF)
  {
    return 0;
  }

  v19 = &v5[3 * v18 + 1];
  v20 = *(*a1 + 4 * *(v19 + 2) + 4);
  v21 = *v19;
  *(a1 + 16) = v21 | (v20 << 32);
  *(a1 + 24) = v18;
  return v20 | (((v21 >> 4) & 0x8FFFFFFF | (v21 << 31) | (((v21 >> 3) & 1) << 28) & 0x9FFFFFFF | (((v21 >> 2) & 1) << 29) & 0xBFFFFFFF | (((v21 >> 1) & 1) << 30)) << 32);
}

uint64_t sub_105C7AC(void *a1, unsigned int *a2)
{
  v3 = a2[1];
  v13 = ((*a2 << 32) + 16 * v3) | (v3 >> 25) & 8 | (v3 >> 27) & 4 | (v3 >> 29) & 2 | (v3 >> 31);
  v4 = sub_105C8A4(a1, &v13);
  v5 = a1[3];
  v6 = a1[4];
  v7 = (v5 + 8 * v6);
  if (v4 == v7 || *v4 != v13)
  {
    v8 = a1[6];
    v9 = v8 + 16 * v6;
  }

  else
  {
    v8 = a1[6];
    v9 = v8 + 2 * (v4 - v5);
    if (v4 != v7)
    {
      return v9;
    }
  }

  if (v9 == v8 + 16 * v6)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(exception, "Key not found.", 0xEuLL);
  }

  return v9;
}

uint64_t sub_105C8A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    v6 = 0;
    do
    {
      if ((atomic_load_explicit(&qword_2733DF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733DF0))
      {
        qword_2733DE8 = *sub_105CAAC() >> 3;
        __cxa_guard_release(&qword_2733DF0);
      }

      v7 = qword_2733DE8;
      if ((atomic_load_explicit(&qword_2733E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2733E10))
      {
        v14 = *sub_105CA1C();
        qword_2733E08 = v14 + (*sub_105CA1C() >> 1);
        __cxa_guard_release(&qword_2733E10);
      }

      _X8 = v3 + 8 * v7 * v6 + 8 * qword_2733E08;
      __asm { PRFM            #0, [X8] }

      v3 = *(a1 + 24);
      v2 = *(a1 + 32);
      if (*a2 <= *(v3 + 8 * v6))
      {
        v6 = 2 * v6 + 1;
      }

      else
      {
        v6 = 2 * v6 + 2;
      }
    }

    while (v6 < v2);
    v15 = __clz(__rbit64(-2 - v6));
    if (v6 == -2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 + 1;
    }

    v17 = (v6 + 1) >> v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v2 = v17 - 1;
  }

  return v3 + 8 * v2;
}

uint64_t *sub_105CA1C()
{
  if ((atomic_load_explicit(&qword_2733DF0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2733DF0))
  {
    return &qword_2733DE8;
  }

  qword_2733DE8 = *sub_105CAAC() >> 3;
  __cxa_guard_release(&qword_2733DF0);
  return &qword_2733DE8;
}

uint64_t *sub_105CAAC()
{
  if ((atomic_load_explicit(&qword_2733E00, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2733E00))
  {
    return &qword_2733DF8;
  }

  qword_2733DF8 = sub_3226F0();
  __cxa_guard_release(&qword_2733E00);
  return &qword_2733DF8;
}

void *sub_105CB34(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_40E98C(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_10538E8(v5 + 103, a2);
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[98] - a1[96]) >> 4) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_105CC38(_Unwind_Exception *a1)
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

unint64_t sub_105CC98(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_105BEB4(a1, a3, 1);
  if (!v5)
  {
    return 0xFFFFLL;
  }

  v6 = &v5[-*v5];
  if (*v6 < 5u)
  {
    return 0xFFFFLL;
  }

  if (!*(v6 + 2))
  {
    return 0xFFFFLL;
  }

  v7 = &v5[*(v6 + 2) + *&v5[*(v6 + 2)]];
  if (*v7 <= HIDWORD(a3))
  {
    return 0xFFFFLL;
  }

  v8 = &v7[4 * HIDWORD(a3) + 4 + *&v7[4 * HIDWORD(a3) + 4]];
  v9 = &v8[-*v8];
  if (*v9 < 0xBu)
  {
    return 0xFFFFLL;
  }

  v10 = *(v9 + 5);
  if (!v10)
  {
    return 0xFFFFLL;
  }

  v11 = &v8[v10 + *&v8[v10]];
  v14 = *v11;
  v12 = v11 + 4;
  v13 = v14;
  v15 = &v12[8 * v14];
  v16 = (((a2 >> 28) & 0xFFFFFFFFFFFFFFF0) + (a2 << 32)) & 0xFFFFFFFFFFFFFFF0 | (a2 >> 57) & 8 | (a2 >> 59) & 4 | (a2 >> 61) & 2 | (a2 >> 63);
  v17 = v12;
  while (v13)
  {
    v18 = &v17[(4 * v13) & 0x7FFFFFFF8];
    v20 = *v18;
    v19 = (v18 + 1);
    v21 = v13 >> 1;
    v13 += ~(v13 >> 1);
    if (v20 >= v16)
    {
      v13 = v21;
    }

    else
    {
      v17 = v19;
    }
  }

  if (v17 != v15 && *v17 == v16)
  {
    return (v17 - v12) >> 3;
  }

  else
  {
    return 0xFFFFLL;
  }
}

void sub_105CDBC(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v16 = a2;
  v5 = __ROR8__(a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = (*(*(a1 + 16) + 16) + 200 * (bswap64(v7) % **(a1 + 16)));
  v17[0] = &v16;
  v17[1] = v7;
  sub_10564BC(v8, v17, &v13);
  if ((v15 & 1) == 0)
  {
    v9 = __ROR8__(v16, 32);
    v10 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) >> 33));
    sub_1056630((*(*(a1 + 16) + 96) + 200 * (bswap64(v10 ^ (v10 >> 33)) % *(*(a1 + 16) + 80))), &v16, v17, 8uLL, 0);
  }

  v11 = v14;
  *a3 = v13;
  a3[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = v14;
    if (v14)
    {
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void sub_105CF40()
{
  *(v0 - 8) = 0;
  *(v0 - 48) = v1;
  *(v0 - 40) = 0;
  *(v0 - 32) = 0;
  *(v0 - 24) = 0;
}

void sub_105CF50()
{
  byte_27C11D7 = 3;
  LODWORD(qword_27C11C0) = 5136193;
  byte_27C11EF = 3;
  LODWORD(qword_27C11D8) = 5136194;
  byte_27C1207 = 3;
  LODWORD(qword_27C11F0) = 5136195;
  byte_27C121F = 15;
  strcpy(&qword_27C1208, "vehicle_mass_kg");
  byte_27C1237 = 21;
  strcpy(&xmmword_27C1220, "vehicle_cargo_mass_kg");
  byte_27C124F = 19;
  strcpy(&qword_27C1238, "vehicle_aux_power_w");
  byte_27C1267 = 15;
  strcpy(&qword_27C1250, "dcdc_efficiency");
  strcpy(&qword_27C1268, "drive_train_efficiency");
  HIBYTE(word_27C127E) = 22;
  operator new();
}

void sub_105D12C(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C127E) < 0)
  {
    sub_21E6C80();
  }

  sub_21E6C8C();
  _Unwind_Resume(a1);
}

uint64_t sub_105D14C(uint64_t a1, uint64_t *a2)
{
  *a1 = a2;
  *(a1 + 8) = sub_3B0834(a2);
  v4 = sub_3AF144(*a1);
  v5 = sub_2BDE28(v4);
  if (v5)
  {
    v6 = sub_3AF144(*a1);
    LOBYTE(v5) = sub_2BDE20(v6);
  }

  *(a1 + 16) = v5;
  *(a1 + 18) = *(sub_3B1768(*a1) + 3872);
  v7 = sub_3B0708(a2);
  v8 = *(a1 + 8);
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  sub_10AC4E0(a1 + 40, a2);
  *(a1 + 112) = sub_3AF374(a2);
  *(a1 + 120) = sub_3AF458(a2);
  *(a1 + 128) = sub_57478(a2);
  return a1;
}

void sub_105D200(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 88);
  if (v3)
  {
    *(v1 + 96) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_105D220(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int a4, char a5)
{
  if (!*(a2 + 4))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v9 = *a2;
  v10 = a2[2];
  if (!v10)
  {
LABEL_10:
    v19 = 0;
    goto LABEL_14;
  }

  v11 = a1;
  v12 = sub_101E790(*(a1 + 24), v10, 1);
  v13 = v12;
  if (v12)
  {
    v14 = &v12[-*v12];
    a1 = v11;
    if (*v14 >= 9u && (v15 = *(v14 + 4)) != 0)
    {
      v16 = sub_101E640(&v13[v15 + *&v13[v15]], HIDWORD(v10));
      v17 = (v16 - *v16);
      if (*v17 >= 5u)
      {
        v18 = v17[2];
        a1 = v11;
        if (v18)
        {
          v19 = *(v16 + v18);
          goto LABEL_14;
        }

        goto LABEL_10;
      }

      v19 = 0;
      a1 = v11;
    }

    else
    {
      v19 = -1;
    }
  }

  else
  {
    v19 = -1;
    a1 = v11;
  }

LABEL_14:
  sub_105D3DC(a1, v9, v19, 0, a3, a4, a5, &v26);
  v21 = v26;
  if (v26 != v27)
  {
    v22 = a2[1];
    v23 = 0xFFFFFFFFLL;
    v21 = v26;
    while (v21[1] != v22)
    {
      v21 += 5;
      if (v21 == v27)
      {
        v24 = 0x7FFFFFFF00000000;
        if (v26)
        {
          goto LABEL_22;
        }

        return v24 | v23;
      }
    }
  }

  if (v21 == v27)
  {
    v24 = 0x7FFFFFFF00000000;
    v23 = 0xFFFFFFFFLL;
    if (!v26)
    {
      return v24 | v23;
    }

    goto LABEL_22;
  }

  v25 = *(v21 + 28);
  v24 = v25 & 0xFFFFFFFF00000000;
  v23 = v25;
  if (v26)
  {
LABEL_22:
    v27 = v26;
    operator delete(v26);
  }

  return v24 | v23;
}

void sub_105D3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_105D3DC(uint64_t a1, unint64_t a2, int a3, int a4, unsigned int *a5, unsigned int a6, char a7, void *a8)
{
  a8[1] = *a8;
  if (a3)
  {
    LODWORD(__p) = a3;
    v15 = sub_101F854(*(a1 + 24), HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32), (a2 >> 1) & 1 ^ (a4 == 0), &__p);
    v16 = v15;
    v17 = v15;
    if (v15 <= 0xFFFFFFFEFFFFFFFFLL && v15 != 0)
    {
      __p = 0uLL;
      v19 = sub_1055EF8(*(a1 + 32), v15, 1);
      if (v19)
      {
        v20 = &v19[-*v19];
        if (*v20 >= 5u)
        {
          v21 = *(v20 + 2);
          if (v21)
          {
            v22 = HIDWORD(v16);
            v23 = &v19[v21 + *&v19[v21]];
            if (*v23 > HIDWORD(v16))
            {
              v24 = &v23[4 * v22 + 4 + *&v23[4 * v22 + 4]];
              v25 = &v24[-*v24];
              if (*v25 >= 9u)
              {
                v26 = *(v25 + 4);
                if (v26)
                {
                  if (*&v24[v26 + *&v24[v26]])
                  {
                    v81 = 0;
                    v82 = 0;
                    v27 = sub_1055EF8(*(a1 + 32), v17, 1);
                    if (v27)
                    {
                      v28 = &v27[-*v27];
                      if (*v28 >= 5u)
                      {
                        v29 = *(v28 + 2);
                        if (v29)
                        {
                          v30 = &v27[v29 + *&v27[v29]];
                          if (*v30 > HIDWORD(v16))
                          {
                            v31 = &v30[4 * v22 + 4 + *&v30[4 * v22 + 4]];
                            v32 = &v31[-*v31];
                            if (*v32 >= 0xBu)
                            {
                              v33 = *(v32 + 5);
                              if (v33)
                              {
                                if (*&v31[v33 + *&v31[v33]])
                                {
                                  v65 = *(a1 + 16);
                                  v66 = *(a1 + 18);
                                  v67 = *(a1 + 8);
                                  v68 = *(a1 + 112);
                                  v69 = a6;
                                  v64 = sub_10AC56C();
                                  if (sub_394BD0())
                                  {
                                    v34 = a6;
                                  }

                                  else
                                  {
                                    v34 = 0x7FFFFFFF;
                                  }

                                  v63 = v34;
                                  v35 = sub_394BD0();
                                  v36 = *a5;
                                  if (v35)
                                  {
                                    v37 = a6;
                                  }

                                  else
                                  {
                                    v37 = 0x7FFFFFFF;
                                  }

                                  *&__p = v16;
                                  *(&__p + 1) = __PAIR64__(v64, v36);
                                  v71 = v63;
                                  v72 = v37;
                                  v73 = a7;
                                  v74 = v66;
                                  v75 = v65;
                                  v76 = 0;
                                  v77 = 0x7FFFFFFF;
                                  sub_1064990(&__p, v68, v67, &v81);
                                  v38 = *(a1 + 8);
                                  v39 = sub_FC1BE4(*(a1 + 112), v82);
                                  if (v85)
                                  {
                                    v40 = 0;
                                  }

                                  else
                                  {
                                    v40 = v39;
                                  }

                                  if (v40 && (v41 = v81, v42 = v82, v43 = v86, (v44 = sub_3C0014(v38, v81, 1)) != 0) && (v45 = &v44[-*v44], *v45 >= 0xFu) && *(v45 + 7) && (v46 = &v44[*(v45 + 7) + *&v44[*(v45 + 7)]], *v46 > HIDWORD(v41)) && (v47 = &v46[4 * HIDWORD(v41) + 4 + *&v46[4 * HIDWORD(v41) + 4]], v48 = &v47[-*v47], *v48 >= 5u) && (v49 = *(v48 + 2)) != 0 && (v50 = &v47[v49 + *&v47[v49]], v51 = v42 + *(v38 + 3872) * v43, v51 < *v50) && *&v50[4 * v51 + 4] != -1)
                                  {
                                    v52 = *(a1 + 8);
                                    if (a4)
                                    {
                                      sub_10650FC(v52, v16, a2, v82, v86, a8);
                                    }

                                    else
                                    {
                                      sub_1064CA0(v52, v16, a2, v82, v86, a8);
                                    }
                                  }

                                  else if ((sub_3B8508() & 1) == 0)
                                  {
                                    v53 = (HIDWORD(v81) + (v81 << 6) + (v81 >> 2) + 2654435769u) ^ v81;
                                    v54 = (v82 + (v53 << 6) + (v53 >> 2) + 2654435769u) ^ v53;
                                    v55 = (SHIDWORD(v82) + (v54 << 6) + (v54 >> 2) + 2654435769u) ^ v54;
                                    v56 = (v83 + (v55 << 6) + (v55 >> 2) + 2654435769u) ^ v55;
                                    v57 = (v84 + (v56 << 6) + (v56 >> 2) + 2654435769u) ^ v56;
                                    v58 = (v85 + (v57 << 6) + (v57 >> 2) + 2654435769u) ^ v57;
                                    v59 = (v86 + (v58 << 6) + (v58 >> 2) + 2654435769u) ^ v58;
                                    v60 = (v87 + (v59 << 6) + (v59 >> 2) + 2654435769u) ^ v59;
                                    v61 = (*(*(a1 + 120) + 16) + 272 * (bswap64(v60) % **(a1 + 120)));
                                    *&__p = &v81;
                                    *(&__p + 1) = v60;
                                    sub_106557C(v61, &__p, &v78);
                                    if ((v80 & 1) == 0)
                                    {
                                      v88[0] = v16;
                                      sub_105DF50(&__p, v88, 1uLL);
                                      sub_105DC54(a1, &__p, a5, v69, v85, 4u);
                                      if (__p)
                                      {
                                        *(&__p + 1) = __p;
                                        operator delete(__p);
                                      }

                                      sub_105DB6C(*(a1 + 120), &v81, &__p);
                                      sub_105E004(&v78, &__p);
                                      sub_1F1A8(&__p);
                                    }

                                    if (!v78 || *v78 == v78[1])
                                    {
                                      if (sub_7E7E4(3u))
                                      {
                                        sub_19594F8(&__p);
                                        sub_4A5C(&__p, "Costs are not available from cache (after computing them). LRUCache issue or differing keys.", 92);
                                        sub_1959680(&__p, v88);
                                        sub_7E854(v88, 3u);
                                        if (v89 < 0)
                                        {
                                          operator delete(v88[0]);
                                        }

                                        sub_1959728(&__p);
                                      }

                                      operator new();
                                    }

                                    if (a4)
                                    {
                                      sub_105E4E4(a1, v16, &v78, a2, a8);
                                    }

                                    else
                                    {
                                      sub_105E0A8(a1, v16, &v78, a2, a8);
                                    }

                                    v62 = v79;
                                    if (v79 && !atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                    {
                                      (v62->__on_zero_shared)(v62);
                                      std::__shared_weak_count::__release_weak(v62);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_105DA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (*(v17 - 97) < 0)
  {
    operator delete(*(v17 - 120));
    sub_1959728(va);
    sub_1F1A8(v17 - 184);
    _Unwind_Resume(a1);
  }

  sub_1959728(va);
  sub_1F1A8(v17 - 184);
  _Unwind_Resume(a1);
}

void sub_105DB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1F1A8(v17 - 160);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_105DB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_105DB6C(void *a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v3 = (a2[1] + (*a2 << 6) + (*a2 >> 2) + 2654435769u) ^ *a2;
  v4 = (a2[2] + (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
  v5 = (a2[3] + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v6 = (a2[4] + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v7 = (a2[5] + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  v8 = (*(a2 + 24) + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  v9 = (*(a2 + 13) + (v8 << 6) + (v8 >> 2) + 2654435769u) ^ v8;
  v10 = (*(a2 + 28) + (v9 << 6) + (v9 >> 2) + 2654435769u) ^ v9;
  v11 = (a1[2] + 272 * (bswap64(v10) % *a1));
  v12[0] = a2;
  v12[1] = v10;
  sub_106557C(v11, v12, a3);
}

void sub_105DC54(uint64_t a1, void ***a2, unsigned int *a3, int a4, uint64_t a5, unsigned int a6)
{
  v7 = a5;
  if ((sub_3B8508() & 1) == 0)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v12 = *a2;
    v13 = a2[1];
    if (*a2 != v13)
    {
      v14 = 0;
      do
      {
        v14 |= sub_105E918(a1, *v12++, a3, a4, v7, &v39);
      }

      while (v12 != v13);
      v15 = v39;
      if (v14)
      {
        __p = 0;
        v46 = 0;
        v47 = 0;
        sub_101EA90(&v37, 0xCCCCCCCCCCCCCCCDLL * ((v40 - v39) >> 3), &__p);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }

        if (v40 != v39)
        {
          v16 = 0;
          v17 = 0xCCCCCCCCCCCCCCCDLL * ((v40 - v39) >> 3);
          do
          {
            v18 = v39 + 40 * v16;
            v19 = *(v18 + 2);
            if (v19)
            {
              v20 = 0;
              v21 = *(v18 + 2);
              do
              {
                ++v20;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              v20 = 0;
            }

            sub_1063F90(v37 + 3 * v16, *(v37 + 3 * v16 + 1), v19, 0, v20);
            ++v16;
          }

          while (v16 != v17);
        }

        atomic_fetch_add(sub_102DC44(), 1u);
        v44 = a4;
        v43 = v7;
        v22 = sub_3B8508();
        if ((v22 & 1) == 0)
        {
          v24 = sub_2D2E8(v22, v23);
          v42[0] = a1;
          v42[1] = &v37;
          v42[2] = a3;
          v42[3] = &v44;
          v42[4] = &v43;
          sub_1065884(&__p, v24, a6, v42);
        }

        atomic_fetch_add(sub_102DC44(), 0xFFFFFFFF);
        v25 = v37;
        if (v37)
        {
          v26 = v38;
          v27 = v37;
          if (v38 != v37)
          {
            v28 = v38;
            do
            {
              v30 = *(v28 - 3);
              v28 -= 24;
              v29 = v30;
              if (v30)
              {
                *(v26 - 2) = v29;
                operator delete(v29);
              }

              v26 = v28;
            }

            while (v28 != v25);
            v27 = v37;
          }

          v38 = v25;
          operator delete(v27);
        }

        v15 = v39;
      }

      if (v15)
      {
        v31 = v40;
        v32 = v15;
        if (v40 != v15)
        {
          do
          {
            v33 = *(v31 - 3);
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

            v36 = *(v31 - 5);
            v31 -= 5;
            v35 = v36;
            *v31 = 0;
            if (v36)
            {
              operator delete(v35);
            }
          }

          while (v31 != v15);
          v32 = v39;
        }

        v40 = v15;
        operator delete(v32);
      }
    }
  }
}

void sub_105DEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
    sub_105F2B4(&a13);
    _Unwind_Resume(a1);
  }

  sub_105F2B4(&a13);
  _Unwind_Resume(a1);
}

void *sub_105DF50(void *a1, const void *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_105DFE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_105E004(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0uLL;
  v3 = *(result + 8);
  *result = v2;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v4;
    *(v4 + 16) = *(a2 + 16);
  }

  else
  {
    *(result + 16) = *(a2 + 16);
  }

  return result;
}

void sub_105E0A8(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v72 = a4;
  v73 = a2;
  if (*a3 && (v10 = *(*a3 + 24)) != 0)
  {
    v11 = (*(v10 + 32) - *(v10 + 24)) >> 3;
    __p = 0;
    v70 = 0;
    v71 = 0;
    v12 = *a3;
    if (!*a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = sub_1055EF8(*(a1 + 32), a2, 1);
    if (v13 && (v14 = &v13[-*v13], *v14 >= 5u) && *(v14 + 2) && (v15 = &v13[*(v14 + 2) + *&v13[*(v14 + 2)]], *v15 > HIDWORD(a2)) && (v16 = &v15[4 * HIDWORD(a2) + 4 + *&v15[4 * HIDWORD(a2) + 4]], v17 = &v16[-*v16], *v17 >= 0xBu) && (v18 = *(v17 + 5)) != 0)
    {
      LODWORD(v11) = *&v16[v18 + *&v16[v18]];
      __p = 0;
      v70 = 0;
      v71 = 0;
      v12 = *a3;
      if (!*a3)
      {
        goto LABEL_18;
      }
    }

    else
    {
      LODWORD(v11) = 0;
      __p = 0;
      v70 = 0;
      v71 = 0;
      v12 = *a3;
      if (!*a3)
      {
        goto LABEL_18;
      }
    }
  }

  v19 = *(v12 + 24);
  if (v19)
  {
    v20 = *v19;
    v21 = v19[1];
    v22 = (v21 - v20) >> 3;
    if (v22 < 1)
    {
      v41 = v20;
      if (v21 == v20)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v21 - v20 == 8)
      {
        v23 = v20;
      }

      else
      {
        v23 = v20;
        do
        {
          v42 = (2 * v22) & 0xFFFFFFFFFFFFFFF8;
          _X14 = v23 + v42;
          __asm { PRFM            #0, [X14] }

          v49 = &v23[v22 >> 1];
          _X13 = v49 + v42;
          __asm { PRFM            #0, [X13] }

          if (*v49 >= a4)
          {
            v52 = 0;
          }

          else
          {
            v52 = v22 >> 1;
          }

          v23 += v52;
          v22 -= v22 >> 1;
        }

        while (v22 > 1);
      }

      v41 = &v23[*v23 < a4];
      if (v21 == v41)
      {
        goto LABEL_59;
      }
    }

    if (*v41 != a4)
    {
      goto LABEL_59;
    }

    v40 = v41 - v20;
    goto LABEL_42;
  }

LABEL_18:
  v24 = sub_1055EF8(*(a1 + 32), a2, 1);
  if (v24)
  {
    v25 = &v24[-*v24];
    if (*v25 >= 5u)
    {
      if (*(v25 + 2))
      {
        v26 = &v24[*(v25 + 2) + *&v24[*(v25 + 2)]];
        if (*v26 > HIDWORD(a2))
        {
          v27 = &v26[4 * HIDWORD(a2) + 4 + *&v26[4 * HIDWORD(a2) + 4]];
          v28 = &v27[-*v27];
          if (*v28 >= 9u)
          {
            v29 = *(v28 + 4);
            if (v29)
            {
              v30 = &v27[v29 + *&v27[v29]];
              v33 = *v30;
              v31 = v30 + 4;
              v32 = v33;
              v34 = &v31[8 * v33];
              v35 = v31;
              while (v32)
              {
                v36 = &v35[(4 * v32) & 0x7FFFFFFF8];
                v38 = *v36;
                v37 = (v36 + 1);
                v39 = v32 >> 1;
                v32 += ~(v32 >> 1);
                if (v38 >= a4)
                {
                  v32 = v39;
                }

                else
                {
                  v35 = v37;
                }
              }

              if (v35 != v34 && *v35 == a4)
              {
                v40 = v35 - v31;
LABEL_42:
                v68 = v40 >> 3;
                if (v68 != -1)
                {
                  if (*a3 && (v53 = *(*a3 + 24)) != 0)
                  {
                    if ((v53 + 24) != &__p)
                    {
                      sub_31F64(&__p, *(v53 + 24), *(v53 + 32), (*(v53 + 32) - *(v53 + 24)) >> 3);
                    }
                  }

                  else
                  {
                    v54 = *(a1 + 32);
                    v70 = __p;
                    v55 = sub_1055EF8(v54, a2, 1);
                    if (v55)
                    {
                      v56 = &v55[-*v55];
                      if (*v56 >= 5u)
                      {
                        if (*(v56 + 2))
                        {
                          v57 = &v55[*(v56 + 2) + *&v55[*(v56 + 2)]];
                          if (*v57 > HIDWORD(a2))
                          {
                            v58 = &v57[4 * HIDWORD(a2) + 4 + *&v57[4 * HIDWORD(a2) + 4]];
                            v59 = &v58[-*v58];
                            if (*v59 >= 0xBu)
                            {
                              v60 = *(v59 + 5);
                              if (v60)
                              {
                                v61 = &v58[v60 + *&v58[v60]];
                                v62 = *v61;
                                p_p = &__p;
                                if (v62)
                                {
                                  v63 = 8 * v62;
                                  v64 = (v61 + 4);
                                  do
                                  {
                                    v74 = *v64;
                                    sub_A2324(&p_p, &v74);
                                    ++v64;
                                    v63 -= 8;
                                  }

                                  while (v63);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  LOWORD(p_p) = 0;
                  v65 = __p;
                  v66 = v70;
                  if (__p != v70)
                  {
                    v67 = v11 * (v40 >> 3);
                    do
                    {
                      sub_105F6B4(a5, &v72, v65, &v73, &v68, &p_p, (**a3 + 8 * v67++));
                      LOWORD(p_p) = p_p + 1;
                      ++v65;
                    }

                    while (v65 != v66);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_59:
  if (__p)
  {
    v70 = __p;
    operator delete(__p);
  }
}

void sub_105E4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_105E4E4(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v72 = a4;
  v73 = a2;
  if (*a3 && (v10 = *(*a3 + 24)) != 0)
  {
    v11 = (*(v10 + 32) - *(v10 + 24)) >> 3;
    __p = 0;
    v70 = 0;
    v71 = 0;
    v12 = *a3;
    if (!*a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = sub_1055EF8(*(a1 + 32), a2, 1);
    if (v13 && (v14 = &v13[-*v13], *v14 >= 5u) && *(v14 + 2) && (v15 = &v13[*(v14 + 2) + *&v13[*(v14 + 2)]], *v15 > HIDWORD(a2)) && (v16 = &v15[4 * HIDWORD(a2) + 4 + *&v15[4 * HIDWORD(a2) + 4]], v17 = &v16[-*v16], *v17 >= 0xBu) && (v18 = *(v17 + 5)) != 0)
    {
      LODWORD(v11) = *&v16[v18 + *&v16[v18]];
      __p = 0;
      v70 = 0;
      v71 = 0;
      v12 = *a3;
      if (!*a3)
      {
        goto LABEL_18;
      }
    }

    else
    {
      LODWORD(v11) = 0;
      __p = 0;
      v70 = 0;
      v71 = 0;
      v12 = *a3;
      if (!*a3)
      {
        goto LABEL_18;
      }
    }
  }

  v19 = *(v12 + 24);
  if (v19)
  {
    v20 = *(v19 + 24);
    v21 = *(v19 + 32);
    v22 = (v21 - v20) >> 3;
    if (v22 < 1)
    {
      v41 = v20;
      if (v21 == v20)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v21 - v20 == 8)
      {
        v23 = v20;
      }

      else
      {
        v23 = v20;
        do
        {
          v42 = (2 * v22) & 0xFFFFFFFFFFFFFFF8;
          _X14 = v23 + v42;
          __asm { PRFM            #0, [X14] }

          v49 = &v23[v22 >> 1];
          _X13 = v49 + v42;
          __asm { PRFM            #0, [X13] }

          if (*v49 >= a4)
          {
            v52 = 0;
          }

          else
          {
            v52 = v22 >> 1;
          }

          v23 += v52;
          v22 -= v22 >> 1;
        }

        while (v22 > 1);
      }

      v41 = &v23[*v23 < a4];
      if (v21 == v41)
      {
        goto LABEL_59;
      }
    }

    if (*v41 != a4)
    {
      goto LABEL_59;
    }

    v40 = v41 - v20;
    goto LABEL_42;
  }

LABEL_18:
  v24 = sub_1055EF8(*(a1 + 32), a2, 1);
  if (v24)
  {
    v25 = &v24[-*v24];
    if (*v25 >= 5u)
    {
      if (*(v25 + 2))
      {
        v26 = &v24[*(v25 + 2) + *&v24[*(v25 + 2)]];
        if (*v26 > HIDWORD(a2))
        {
          v27 = &v26[4 * HIDWORD(a2) + 4 + *&v26[4 * HIDWORD(a2) + 4]];
          v28 = &v27[-*v27];
          if (*v28 >= 0xBu)
          {
            v29 = *(v28 + 5);
            if (v29)
            {
              v30 = &v27[v29 + *&v27[v29]];
              v33 = *v30;
              v31 = v30 + 4;
              v32 = v33;
              v34 = &v31[8 * v33];
              v35 = v31;
              while (v32)
              {
                v36 = &v35[(4 * v32) & 0x7FFFFFFF8];
                v38 = *v36;
                v37 = (v36 + 1);
                v39 = v32 >> 1;
                v32 += ~(v32 >> 1);
                if (v38 >= a4)
                {
                  v32 = v39;
                }

                else
                {
                  v35 = v37;
                }
              }

              if (v35 != v34 && *v35 == a4)
              {
                v40 = v35 - v31;
LABEL_42:
                v68 = v40 >> 3;
                if (v68 != -1)
                {
                  if (*a3 && (v53 = *(*a3 + 24)) != 0)
                  {
                    if (v53 != &__p)
                    {
                      sub_31F64(&__p, *v53, *(v53 + 8), (*(v53 + 8) - *v53) >> 3);
                    }
                  }

                  else
                  {
                    v54 = *(a1 + 32);
                    v70 = __p;
                    v55 = sub_1055EF8(v54, a2, 1);
                    if (v55)
                    {
                      v56 = &v55[-*v55];
                      if (*v56 >= 5u)
                      {
                        if (*(v56 + 2))
                        {
                          v57 = &v55[*(v56 + 2) + *&v55[*(v56 + 2)]];
                          if (*v57 > HIDWORD(a2))
                          {
                            v58 = &v57[4 * HIDWORD(a2) + 4 + *&v57[4 * HIDWORD(a2) + 4]];
                            v59 = &v58[-*v58];
                            if (*v59 >= 9u)
                            {
                              v60 = *(v59 + 4);
                              if (v60)
                              {
                                v61 = &v58[v60 + *&v58[v60]];
                                v62 = *v61;
                                p_p = &__p;
                                if (v62)
                                {
                                  v63 = 8 * v62;
                                  v64 = (v61 + 4);
                                  do
                                  {
                                    v74 = *v64;
                                    sub_A2324(&p_p, &v74);
                                    ++v64;
                                    v63 -= 8;
                                  }

                                  while (v63);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  LOWORD(p_p) = 0;
                  v65 = __p;
                  v66 = v70;
                  if (__p != v70)
                  {
                    v67 = (v40 >> 3);
                    do
                    {
                      sub_105F6B4(a5, v65, &v72, &v73, &p_p, &v68, (**a3 + 8 * v67));
                      v67 += v11;
                      LOWORD(p_p) = p_p + 1;
                      ++v65;
                    }

                    while (v65 != v66);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_59:
  if (__p)
  {
    v70 = __p;
    operator delete(__p);
  }
}

void sub_105E8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_105E918(uint64_t a1, void *a2, unsigned int *a3, int a4, char a5, uint64_t *a6)
{
  v104 = *(a1 + 18);
  v11 = *(a1 + 16);
  v110 = *(a1 + 112);
  v107 = *(a1 + 8);
  v12 = sub_10AC56C();
  if (sub_394BD0())
  {
    v13 = a4;
  }

  else
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = a2;
  v15 = sub_394BD0();
  v112 = a3;
  v16 = *a3;
  v109 = a4;
  if (v15)
  {
    v17 = a4;
  }

  else
  {
    v17 = 0x7FFFFFFF;
  }

  v127[0] = a2;
  v127[1] = __PAIR64__(v12, v16);
  *&v128 = __PAIR64__(v17, v13);
  v113 = a5;
  BYTE8(v128) = a5;
  WORD5(v128) = v104;
  WORD6(v128) = v11;
  LODWORD(v129) = 0x7FFFFFFF;
  sub_1064990(v127, v110, v107, &v130);
  v18 = *(a1 + 8);
  if (sub_FC1BE4(*(a1 + 112), v131) && !v135)
  {
    v19 = v130;
    v20 = v131;
    v21 = v136;
    v22 = sub_3C0014(v18, v130, 1);
    if (v22)
    {
      v23 = &v22[-*v22];
      if (*v23 >= 0xFu)
      {
        if (*(v23 + 7))
        {
          v24 = &v22[*(v23 + 7) + *&v22[*(v23 + 7)]];
          if (*v24 > HIDWORD(v19))
          {
            v25 = &v24[4 * HIDWORD(v19) + 4 + *&v24[4 * HIDWORD(v19) + 4]];
            v26 = &v25[-*v25];
            if (*v26 >= 5u)
            {
              v27 = *(v26 + 2);
              if (v27)
              {
                v28 = &v25[v27 + *&v25[v27]];
                v29 = v20 + *(v18 + 3872) * v21;
                if (v29 < *v28 && v28[v29 + 1] != -1)
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  if (!v14)
  {
    goto LABEL_26;
  }

  v31 = sub_101E790(*(a1 + 24), v14, 1);
  if (!v31 || (v32 = &v31[-*v31], *v32 < 9u) || (v33 = *(v32 + 4)) == 0)
  {
    v37 = -1;
    goto LABEL_27;
  }

  v34 = sub_101E640(&v31[v33 + *&v31[v33]], HIDWORD(v14));
  v35 = (v34 - *v34);
  if (*v35 < 5u || (v36 = v35[2]) == 0)
  {
LABEL_26:
    v37 = 0;
    goto LABEL_27;
  }

  v37 = *(v34 + v36);
LABEL_27:
  v38 = 0xCCCCCCCCCCCCCCCDLL * ((a6[1] - *a6) >> 3);
  v39 = (v37 + 1);
  if (v39 > v38)
  {
    sub_1064374(a6, v39 - v38);
  }

  v40 = (HIDWORD(v130) + (v130 << 6) + (v130 >> 2) + 2654435769u) ^ v130;
  v41 = (v131 + (v40 << 6) + (v40 >> 2) + 2654435769u) ^ v40;
  v42 = (v132 + (v41 << 6) + (v41 >> 2) + 2654435769u) ^ v41;
  v43 = (v133 + (v42 << 6) + (v42 >> 2) + 2654435769u) ^ v42;
  v44 = (v134 + (v43 << 6) + (v43 >> 2) + 2654435769u) ^ v43;
  v45 = (v135 + (v44 << 6) + (v44 >> 2) + 2654435769u) ^ v44;
  v46 = (v136 + (v45 << 6) + (v45 >> 2) + 2654435769u) ^ v45;
  v47 = (v137 + (v46 << 6) + (v46 >> 2) + 2654435769u) ^ v46;
  v48 = (*(*(a1 + 120) + 16) + 272 * (bswap64(v47) % **(a1 + 120)));
  v138 = &v130;
  v139 = v47;
  sub_106557C(v48, &v138, v127);
  v49 = v128;
  v50 = v127[1];
  if (v127[1] && !atomic_fetch_add(v127[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v50->__on_zero_shared)(v50);
    std::__shared_weak_count::__release_weak(v50);
    if (v49)
    {
      return v49 ^ 1u;
    }
  }

  else if (v49)
  {
    return v49 ^ 1u;
  }

  v128 = 0u;
  v129 = 0u;
  *v127 = 0u;
  sub_1064544(v127);
  v51 = ((*(&v129 + 1) + v129) * 0x8060180601806019) >> 64;
  v52 = (v51 + ((*(&v129 + 1) + v129 - v51) >> 1)) >> 8;
  v53 = *(v127[1] + v52) + 12 * (*(&v129 + 1) + v129 - 341 * v52);
  *v53 = v14;
  *(v53 + 8) = v37;
  __p = 0;
  v125 = 0;
  v126 = 0;
  v54 = __CFADD__(*(&v129 + 1), 1);
  v55 = ++*(&v129 + 1);
  if (v54)
  {
    goto LABEL_73;
  }

  v105 = v49;
  do
  {
    v56 = *(v127[1] + v129 / 0x155) + 12 * (v129 % 0x155);
    v57 = *(v56 + 8);
    v122 = *v56;
    v123 = v57;
    *&v129 = v129 + 1;
    *(&v129 + 1) = v55 - 1;
    if (v129 >= 0x2AA)
    {
      operator delete(*v127[1]);
      v127[1] = v127[1] + 8;
      *&v129 = v129 - 341;
    }

    v58 = v123;
    if (!sub_3A8760((*a6 + 40 * v123), &v122))
    {
      sub_10664DC((*a6 + 40 * v58), &v122, &v122);
      if (v58 != 1)
      {
        v138 = v122;
        sub_1066854(*(a1 + 24), &v138, &__p);
        v59 = __p;
        v111 = v125;
        if (__p != v125)
        {
          v108 = v58 - 1;
          do
          {
            v61 = *(a1 + 18);
            v62 = *(a1 + 16);
            v63 = *(a1 + 112);
            v64 = *(a1 + 8);
            v65 = sub_10AC56C();
            v66 = sub_394BD0();
            v67 = sub_394BD0();
            if (v66)
            {
              v68 = v109;
            }

            else
            {
              v68 = 0x7FFFFFFF;
            }

            v69 = *v112;
            if (v67)
            {
              v70 = v109;
            }

            else
            {
              v70 = 0x7FFFFFFF;
            }

            v138 = *v59;
            v139 = __PAIR64__(v65, v69);
            v140 = v68;
            v141 = v70;
            v142 = v113;
            v143 = v61;
            v144 = v62;
            v145 = 0;
            v146 = 0x7FFFFFFF;
            sub_1064990(&v138, v63, v64, &v114);
            v71 = *(a1 + 8);
            v72 = sub_FC1BE4(*(a1 + 112), v115);
            if (v119)
            {
              v73 = 0;
            }

            else
            {
              v73 = v72;
            }

            if (!v73 || (v74 = v114, v75 = v115, v76 = v120, (v77 = sub_3C0014(v71, v114, 1)) == 0) || (v78 = &v77[-*v77], *v78 < 0xFu) || !*(v78 + 7) || (v79 = &v77[*(v78 + 7) + *&v77[*(v78 + 7)]], *v79 <= HIDWORD(v74)) || (v80 = &v79[4 * HIDWORD(v74) + 4 + *&v79[4 * HIDWORD(v74) + 4]], v81 = &v80[-*v80], *v81 < 5u) || (v82 = *(v81 + 2)) == 0 || (v83 = &v80[v82 + *&v80[v82]], v84 = v75 + *(v71 + 3872) * v76, v84 >= *v83) || v83[v84 + 1] == -1)
            {
              v85 = (HIDWORD(v114) + 2654435769 + (v114 << 6) + (v114 >> 2)) ^ v114;
              v86 = (v115 + 2654435769 + (v85 << 6) + (v85 >> 2)) ^ v85;
              v87 = (v116 + 2654435769 + (v86 << 6) + (v86 >> 2)) ^ v86;
              v88 = (v117 + 2654435769 + (v87 << 6) + (v87 >> 2)) ^ v87;
              v89 = (v118 + 2654435769 + (v88 << 6) + (v88 >> 2)) ^ v88;
              v90 = (v119 + 2654435769 + (v89 << 6) + (v89 >> 2)) ^ v89;
              v91 = (v120 + 2654435769 + (v90 << 6) + (v90 >> 2)) ^ v90;
              v92 = (v121 + 2654435769 + (v91 << 6) + (v91 >> 2)) ^ v91;
              v93 = (*(*(a1 + 120) + 16) + 272 * (bswap64(v92) % **(a1 + 120)));
              v147[0] = &v114;
              v147[1] = v92;
              sub_106557C(v93, v147, &v138);
              v94 = v140;
              v95 = v139;
              if (v139 && !atomic_fetch_add((v139 + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v95->__on_zero_shared)(v95);
                std::__shared_weak_count::__release_weak(v95);
                if ((v94 & 1) == 0)
                {
LABEL_64:
                  v96 = v127[1];
                  if (v128 == v127[1])
                  {
                    v97 = 0;
                  }

                  else
                  {
                    v97 = 341 * ((v128 - v127[1]) >> 3) - 1;
                  }

                  v98 = *(&v129 + 1) + v129;
                  if (v97 == *(&v129 + 1) + v129)
                  {
                    sub_1064544(v127);
                    v96 = v127[1];
                    v98 = *(&v129 + 1) + v129;
                  }

                  v60 = v96[v98 / 0x155] + 12 * (v98 % 0x155);
                  *v60 = *v59;
                  *(v60 + 8) = v108;
                  ++*(&v129 + 1);
                }
              }

              else if ((v94 & 1) == 0)
              {
                goto LABEL_64;
              }
            }

            ++v59;
          }

          while (v59 != v111);
        }
      }
    }

    v55 = *(&v129 + 1);
  }

  while (*(&v129 + 1));
  v49 = v105;
  if (__p)
  {
    v125 = __p;
    operator delete(__p);
  }

LABEL_73:
  v99 = v127[1];
  v100 = v128;
  *(&v129 + 1) = 0;
  v101 = (v128 - v127[1]) >> 3;
  if (v101 >= 3)
  {
    do
    {
      operator delete(*v99);
      v100 = v128;
      v99 = (v127[1] + 8);
      v127[1] = v99;
      v101 = (v128 - v99) >> 3;
    }

    while (v101 > 2);
  }

  if (v101 == 1)
  {
    v102 = 170;
LABEL_81:
    *&v129 = v102;
  }

  else if (v101 == 2)
  {
    v102 = 341;
    goto LABEL_81;
  }

  if (v99 != v100)
  {
    do
    {
      v103 = *v99++;
      operator delete(v103);
    }

    while (v99 != v100);
    if (v128 != v127[1])
    {
      *&v128 = v128 + ((v127[1] - v128 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v127[0])
  {
    operator delete(v127[0]);
  }

  return v49 ^ 1u;
}

void sub_105F274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_49CAC(va);
  _Unwind_Resume(a1);
}

void sub_105F288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (__p)
  {
    operator delete(__p);
  }

  sub_49CAC(va);
  _Unwind_Resume(a1);
}

void *sub_105F2B4(void *a1)
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
          do
          {
            v6 = *v5;
            operator delete(v5);
            v5 = v6;
          }

          while (v6);
        }

        v8 = *(v3 - 5);
        v3 -= 5;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          operator delete(v7);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_105F33C(uint64_t a1, uint64_t a2, unsigned int *a3, int a4, char a5)
{
  if (a2 && (v10 = sub_101E790(*(a1 + 24), a2, 1)) != 0 && (v11 = &v10[-*v10], *v11 >= 9u) && (v12 = *(v11 + 4)) != 0 && (v13 = sub_101E640(&v10[v12 + *&v10[v12]], HIDWORD(a2)), v14 = (v13 - *v13), *v14 >= 5u) && (v15 = v14[2]) != 0 && *(v13 + v15) && ((v45 = *(a1 + 16), v46 = *(a1 + 18), v47 = *(a1 + 8), v48 = *(a1 + 112), v16 = sub_10AC56C(), !sub_394BD0()) ? (v17 = 0x7FFFFFFF) : (v17 = a4), (v18 = sub_394BD0(), v19 = *a3, !v18) ? (v20 = 0x7FFFFFFF) : (v20 = a4), (v57 = a2, v58 = __PAIR64__(v16, v19), v59 = v17, v60 = v20, v61 = a5, v62 = v46, v63 = v45, v64 = 0, v65 = 0x7FFFFFFF, sub_1064990(&v57, v48, v47, &v49), v21 = *(a1 + 8), !sub_FC1BE4(*(a1 + 112), v50)) || v54 || (v22 = v49, v23 = v50, v24 = v55, (v25 = sub_3C0014(v21, v49, 1)) == 0) || (v26 = &v25[-*v25], *v26 < 0xFu) || !*(v26 + 7) || (v27 = &v25[*(v26 + 7) + *&v25[*(v26 + 7)]], *v27 <= HIDWORD(v22)) || (v28 = &v27[4 * HIDWORD(v22) + 4 + *&v27[4 * HIDWORD(v22) + 4]], v29 = &v28[-*v28], *v29 < 5u) || (v30 = *(v29 + 2)) == 0 || (v31 = &v28[v30 + *&v28[v30]], v32 = v23 + *(v21 + 3872) * v24, v32 >= *v31) || v31[v32 + 1] == -1))
  {
    v35 = (HIDWORD(v49) + (v49 << 6) + (v49 >> 2) + 2654435769u) ^ v49;
    v36 = (v50 + (v35 << 6) + (v35 >> 2) + 2654435769u) ^ v35;
    v37 = (v51 + (v36 << 6) + (v36 >> 2) + 2654435769u) ^ v36;
    v38 = (v52 + (v37 << 6) + (v37 >> 2) + 2654435769u) ^ v37;
    v39 = (v53 + (v38 << 6) + (v38 >> 2) + 2654435769u) ^ v38;
    v40 = (v54 + (v39 << 6) + (v39 >> 2) + 2654435769u) ^ v39;
    v41 = (v55 + (v40 << 6) + (v40 >> 2) + 2654435769u) ^ v40;
    v42 = (v56 + (v41 << 6) + (v41 >> 2) + 2654435769u) ^ v41;
    v43 = (*(*(a1 + 120) + 16) + 272 * (bswap64(v42) % **(a1 + 120)));
    v66[0] = &v49;
    v66[1] = v42;
    sub_106557C(v43, v66, &v57);
    v33 = v59 ^ 1;
    v44 = v58;
    if (v58 && !atomic_fetch_add((v58 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v44->__on_zero_shared)(v44);
      std::__shared_weak_count::__release_weak(v44);
    }
  }

  else
  {
    v33 = 0;
  }

  return v33 & 1;
}

uint64_t sub_105F6B4(uint64_t a1, void *a2, uint64_t *a3, void *a4, __int16 *a5, __int16 *a6, void *a7)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8 >= v9)
  {
    v14 = *a1;
    v15 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - *a1) >> 3);
    v16 = v15 + 1;
    if (v15 + 1 > 0x666666666666666)
    {
      sub_1794();
    }

    v17 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v14) >> 3);
    if (2 * v17 > v16)
    {
      v16 = 2 * v17;
    }

    if (v17 >= 0x333333333333333)
    {
      v18 = 0x666666666666666;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (v18 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v19 = *a3;
    v20 = 8 * ((v8 - *a1) >> 3);
    v21 = *a5;
    v22 = *a6;
    *v20 = *a2;
    *(v20 + 8) = v19;
    *(v20 + 16) = *a4;
    *(v20 + 24) = v21;
    *(v20 + 26) = v22;
    *(v20 + 28) = *a7;
    v13 = 40 * v15 + 40;
    v23 = 40 * v15 - (v8 - v14);
    memcpy((v20 - (v8 - v14)), v14, v8 - v14);
    *a1 = v23;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v10 = *a3;
    v11 = *a5;
    v12 = *a6;
    *v8 = *a2;
    *(v8 + 8) = v10;
    *(v8 + 16) = *a4;
    *(v8 + 24) = v11;
    *(v8 + 26) = v12;
    *(v8 + 28) = *a7;
    v13 = v8 + 40;
  }

  *(a1 + 8) = v13;
  return v13 - 40;
}

uint64_t sub_105F860(uint64_t a1, uint64_t *a2)
{
  *a1 = a2;
  *(a1 + 8) = sub_3B0A00(a2);
  v4 = sub_3AF144(*a1);
  v5 = sub_2BDE28(v4);
  if (v5)
  {
    v6 = sub_3AF144(*a1);
    LOBYTE(v5) = sub_2BDE20(v6);
  }

  *(a1 + 16) = v5;
  *(a1 + 18) = *(sub_3B1768(*a1) + 3872);
  v7 = sub_3B0708(a2);
  v8 = *(a1 + 8);
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  sub_10B73A8();
  *(a1 + 5456) = sub_3AF3C0(a2);
  *(a1 + 5464) = sub_3AF460(a2);
  *(a1 + 5472) = sub_3AF480(a2);
  return a1;
}

void sub_105F914(_Unwind_Exception *exception_object)
{
  if (*(v1 + 5424) == 1)
  {
    sub_3E3DF0((v1 + 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_105F93C(uint64_t a1, uint64_t *a2, unsigned int *a3, signed int a4, uint64_t a5)
{
  if (!*(a2 + 4))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v9 = *a2;
  v10 = a2[2];
  if (!v10)
  {
LABEL_10:
    v19 = 0;
    goto LABEL_14;
  }

  v11 = a1;
  v12 = sub_101E790(*(a1 + 24), v10, 1);
  v13 = v12;
  if (v12)
  {
    v14 = &v12[-*v12];
    a1 = v11;
    if (*v14 >= 9u && (v15 = *(v14 + 4)) != 0)
    {
      v16 = sub_101E640(&v13[v15 + *&v13[v15]], HIDWORD(v10));
      v17 = (v16 - *v16);
      if (*v17 >= 5u)
      {
        v18 = v17[2];
        a1 = v11;
        if (v18)
        {
          v19 = *(v16 + v18);
          goto LABEL_14;
        }

        goto LABEL_10;
      }

      v19 = 0;
      a1 = v11;
    }

    else
    {
      v19 = -1;
    }
  }

  else
  {
    v19 = -1;
    a1 = v11;
  }

LABEL_14:
  sub_105FAF8(a1, v9, v19, 0, a3, a4, a5, &v26);
  v21 = v26;
  if (v26 != v27)
  {
    v22 = a2[1];
    v23 = 0xFFFFFFFFLL;
    v21 = v26;
    while (v21[1] != v22)
    {
      v21 += 5;
      if (v21 == v27)
      {
        v24 = 0x7FFFFFFF00000000;
        if (v26)
        {
          goto LABEL_22;
        }

        return v24 | v23;
      }
    }
  }

  if (v21 == v27)
  {
    v24 = 0x7FFFFFFF00000000;
    v23 = 0xFFFFFFFFLL;
    if (!v26)
    {
      return v24 | v23;
    }

    goto LABEL_22;
  }

  v25 = *(v21 + 28);
  v24 = v25 & 0xFFFFFFFF00000000;
  v23 = v25;
  if (v26)
  {
LABEL_22:
    v27 = v26;
    operator delete(v26);
  }

  return v24 | v23;
}

void sub_105FADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_105FAF8(uint64_t a1, unint64_t a2, int a3, int a4, unsigned int *a5, signed int a6, uint64_t a7, void *a8)
{
  a8[1] = *a8;
  if (a3)
  {
    v9 = a7;
    LODWORD(__p) = a3;
    v15 = sub_101F854(*(a1 + 24), HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32), (a2 >> 1) & 1 ^ (a4 == 0), &__p);
    v16 = v15;
    v17 = v15;
    if (v15 <= 0xFFFFFFFEFFFFFFFFLL && v15 != 0)
    {
      __p = 0uLL;
      v19 = sub_1059F84(*(a1 + 32), v15, 1);
      if (v19)
      {
        v20 = &v19[-*v19];
        if (*v20 >= 5u)
        {
          v21 = *(v20 + 2);
          if (v21)
          {
            v22 = HIDWORD(v16);
            v23 = &v19[v21 + *&v19[v21]];
            if (*v23 > HIDWORD(v16))
            {
              v24 = &v23[4 * v22 + 4 + *&v23[4 * v22 + 4]];
              v25 = &v24[-*v24];
              if (*v25 >= 9u)
              {
                v26 = *(v25 + 4);
                if (v26)
                {
                  if (*&v24[v26 + *&v24[v26]])
                  {
                    v81 = 0;
                    v82 = 0;
                    v27 = sub_1059F84(*(a1 + 32), v17, 1);
                    if (v27)
                    {
                      v28 = &v27[-*v27];
                      if (*v28 >= 5u)
                      {
                        v29 = *(v28 + 2);
                        if (v29)
                        {
                          v30 = &v27[v29 + *&v27[v29]];
                          if (*v30 > HIDWORD(v16))
                          {
                            v31 = &v30[4 * v22 + 4 + *&v30[4 * v22 + 4]];
                            v32 = &v31[-*v31];
                            if (*v32 >= 0xBu)
                            {
                              v33 = *(v32 + 5);
                              if (v33)
                              {
                                if (*&v31[v33 + *&v31[v33]])
                                {
                                  v64 = *(a1 + 16);
                                  v65 = *(a1 + 18);
                                  v66 = *(a1 + 5456);
                                  v67 = *(a1 + 5472);
                                  v68 = *(a1 + 8);
                                  v69 = a6;
                                  v63 = sub_10B7414(a1 + 40, a5, a6, v9);
                                  if (sub_10B0C98(a1 + 40, a5, a6, v9))
                                  {
                                    v34 = a6;
                                  }

                                  else
                                  {
                                    v34 = 0x7FFFFFFF;
                                  }

                                  v35 = sub_10B7604(a1 + 40, a5, a6, v9);
                                  v36 = *a5;
                                  if (v35)
                                  {
                                    v37 = a6;
                                  }

                                  else
                                  {
                                    v37 = 0x7FFFFFFF;
                                  }

                                  *&__p = v16;
                                  *(&__p + 1) = __PAIR64__(v63, v36);
                                  v71 = v34;
                                  v72 = v37;
                                  v73 = v9;
                                  v74 = v65;
                                  v75 = v64;
                                  v76 = 0;
                                  v77 = 0x7FFFFFFF;
                                  sub_10669FC(&__p, v66, v68, v67, &v81);
                                  v38 = *(a1 + 8);
                                  v39 = sub_FC1BE4(*(a1 + 5456), v82);
                                  if (v85)
                                  {
                                    v40 = 0;
                                  }

                                  else
                                  {
                                    v40 = v39;
                                  }

                                  if (v40 && (v41 = v81, v42 = v82, v43 = v86, (v44 = sub_3C0314(v38, v81, 1)) != 0) && (v45 = &v44[-*v44], *v45 >= 0xFu) && *(v45 + 7) && (v46 = &v44[*(v45 + 7) + *&v44[*(v45 + 7)]], *v46 > HIDWORD(v41)) && (v47 = &v46[4 * HIDWORD(v41) + 4 + *&v46[4 * HIDWORD(v41) + 4]], v48 = &v47[-*v47], *v48 >= 5u) && (v49 = *(v48 + 2)) != 0 && (v50 = &v47[v49 + *&v47[v49]], v51 = v42 + *(v38 + 3872) * v43, v51 < *v50) && *&v50[4 * v51 + 4] != -1)
                                  {
                                    v52 = *(a1 + 8);
                                    if (a4)
                                    {
                                      sub_10672E8(v52, v16, a2, v82, v86, a8);
                                    }

                                    else
                                    {
                                      sub_1066E8C(v52, v16, a2, v82, v86, a8);
                                    }
                                  }

                                  else if ((sub_3B8508() & 1) == 0)
                                  {
                                    v53 = (HIDWORD(v81) + (v81 << 6) + (v81 >> 2) + 2654435769u) ^ v81;
                                    v54 = (v82 + (v53 << 6) + (v53 >> 2) + 2654435769u) ^ v53;
                                    v55 = (SHIDWORD(v82) + (v54 << 6) + (v54 >> 2) + 2654435769u) ^ v54;
                                    v56 = (v83 + (v55 << 6) + (v55 >> 2) + 2654435769u) ^ v55;
                                    v57 = (v84 + (v56 << 6) + (v56 >> 2) + 2654435769u) ^ v56;
                                    v58 = (v85 + (v57 << 6) + (v57 >> 2) + 2654435769u) ^ v57;
                                    v59 = (v86 + (v58 << 6) + (v58 >> 2) + 2654435769u) ^ v58;
                                    v60 = (v87 + (v59 << 6) + (v59 >> 2) + 2654435769u) ^ v59;
                                    v61 = (*(*(a1 + 5464) + 16) + 272 * (bswap64(v60) % **(a1 + 5464)));
                                    *&__p = &v81;
                                    *(&__p + 1) = v60;
                                    sub_106557C(v61, &__p, &v78);
                                    if ((v80 & 1) == 0)
                                    {
                                      v88[0] = v16;
                                      sub_105DF50(&__p, v88, 1uLL);
                                      sub_1060274(a1, &__p, a5, v69, v85, 4u);
                                      if (__p)
                                      {
                                        *(&__p + 1) = __p;
                                        operator delete(__p);
                                      }

                                      sub_105DB6C(*(a1 + 5464), &v81, &__p);
                                      sub_105E004(&v78, &__p);
                                      sub_1F1A8(&__p);
                                    }

                                    if (!v78 || *v78 == v78[1])
                                    {
                                      if (sub_7E7E4(3u))
                                      {
                                        sub_19594F8(&__p);
                                        sub_4A5C(&__p, "Costs are not available from cache (after computing them). LRUCache issue or differing keys.", 92);
                                        sub_1959680(&__p, v88);
                                        sub_7E854(v88, 3u);
                                        if (v89 < 0)
                                        {
                                          operator delete(v88[0]);
                                        }

                                        sub_1959728(&__p);
                                      }

                                      operator new();
                                    }

                                    if (a4)
                                    {
                                      sub_10609AC(a1, v16, &v78, a2, a8);
                                    }

                                    else
                                    {
                                      sub_1060570(a1, v16, &v78, a2, a8);
                                    }

                                    v62 = v79;
                                    if (v79 && !atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                    {
                                      (v62->__on_zero_shared)(v62);
                                      std::__shared_weak_count::__release_weak(v62);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1060178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (*(v15 - 97) < 0)
  {
    operator delete(*(v15 - 120));
    sub_1959728(va);
    sub_1F1A8(v15 - 184);
    _Unwind_Resume(a1);
  }

  sub_1959728(va);
  sub_1F1A8(v15 - 184);
  _Unwind_Resume(a1);
}

void sub_1060240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1F1A8(v15 - 160);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_106025C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_1060274(uint64_t a1, void ***a2, unsigned int *a3, signed int a4, uint64_t a5, unsigned int a6)
{
  if ((sub_3B8508() & 1) == 0)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v12 = *a2;
    v13 = a2[1];
    if (*a2 != v13)
    {
      v14 = 0;
      do
      {
        v14 |= sub_1060DE0(a1, *v12++, a3, a4, a5, &v39);
      }

      while (v12 != v13);
      v15 = v39;
      if (v14)
      {
        __p = 0;
        v46 = 0;
        v47 = 0;
        sub_101EA90(&v37, 0xCCCCCCCCCCCCCCCDLL * ((v40 - v39) >> 3), &__p);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }

        if (v40 != v39)
        {
          v16 = 0;
          v17 = 0xCCCCCCCCCCCCCCCDLL * ((v40 - v39) >> 3);
          do
          {
            v18 = v39 + 40 * v16;
            v19 = *(v18 + 2);
            if (v19)
            {
              v20 = 0;
              v21 = *(v18 + 2);
              do
              {
                ++v20;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              v20 = 0;
            }

            sub_1063F90(v37 + 3 * v16, *(v37 + 3 * v16 + 1), v19, 0, v20);
            ++v16;
          }

          while (v16 != v17);
        }

        atomic_fetch_add(sub_102DC44(), 1u);
        v44 = a4;
        v43 = a5;
        v22 = sub_3B8508();
        if ((v22 & 1) == 0)
        {
          v24 = sub_2D2E8(v22, v23);
          v42[0] = a1;
          v42[1] = &v37;
          v42[2] = a3;
          v42[3] = &v44;
          v42[4] = &v43;
          sub_1067768(&__p, v24, a6, v42);
        }

        atomic_fetch_add(sub_102DC44(), 0xFFFFFFFF);
        v25 = v37;
        if (v37)
        {
          v26 = v38;
          v27 = v37;
          if (v38 != v37)
          {
            v28 = v38;
            do
            {
              v30 = *(v28 - 3);
              v28 -= 24;
              v29 = v30;
              if (v30)
              {
                *(v26 - 2) = v29;
                operator delete(v29);
              }

              v26 = v28;
            }

            while (v28 != v25);
            v27 = v37;
          }

          v38 = v25;
          operator delete(v27);
        }

        v15 = v39;
      }

      if (v15)
      {
        v31 = v40;
        v32 = v15;
        if (v40 != v15)
        {
          do
          {
            v33 = *(v31 - 3);
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

            v36 = *(v31 - 5);
            v31 -= 5;
            v35 = v36;
            *v31 = 0;
            if (v36)
            {
              operator delete(v35);
            }
          }

          while (v31 != v15);
          v32 = v39;
        }

        v40 = v15;
        operator delete(v32);
      }
    }
  }
}

void sub_1060518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
    sub_105F2B4(&a13);
    _Unwind_Resume(a1);
  }

  sub_105F2B4(&a13);
  _Unwind_Resume(a1);
}

void sub_1060570(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v72 = a4;
  v73 = a2;
  if (*a3 && (v10 = *(*a3 + 24)) != 0)
  {
    v11 = (*(v10 + 32) - *(v10 + 24)) >> 3;
    __p = 0;
    v70 = 0;
    v71 = 0;
    v12 = *a3;
    if (!*a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = sub_1059F84(*(a1 + 32), a2, 1);
    if (v13 && (v14 = &v13[-*v13], *v14 >= 5u) && *(v14 + 2) && (v15 = &v13[*(v14 + 2) + *&v13[*(v14 + 2)]], *v15 > HIDWORD(a2)) && (v16 = &v15[4 * HIDWORD(a2) + 4 + *&v15[4 * HIDWORD(a2) + 4]], v17 = &v16[-*v16], *v17 >= 0xBu) && (v18 = *(v17 + 5)) != 0)
    {
      LODWORD(v11) = *&v16[v18 + *&v16[v18]];
      __p = 0;
      v70 = 0;
      v71 = 0;
      v12 = *a3;
      if (!*a3)
      {
        goto LABEL_18;
      }
    }

    else
    {
      LODWORD(v11) = 0;
      __p = 0;
      v70 = 0;
      v71 = 0;
      v12 = *a3;
      if (!*a3)
      {
        goto LABEL_18;
      }
    }
  }

  v19 = *(v12 + 24);
  if (v19)
  {
    v20 = *v19;
    v21 = v19[1];
    v22 = (v21 - v20) >> 3;
    if (v22 < 1)
    {
      v41 = v20;
      if (v21 == v20)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v21 - v20 == 8)
      {
        v23 = v20;
      }

      else
      {
        v23 = v20;
        do
        {
          v42 = (2 * v22) & 0xFFFFFFFFFFFFFFF8;
          _X14 = v23 + v42;
          __asm { PRFM            #0, [X14] }

          v49 = &v23[v22 >> 1];
          _X13 = v49 + v42;
          __asm { PRFM            #0, [X13] }

          if (*v49 >= a4)
          {
            v52 = 0;
          }

          else
          {
            v52 = v22 >> 1;
          }

          v23 += v52;
          v22 -= v22 >> 1;
        }

        while (v22 > 1);
      }

      v41 = &v23[*v23 < a4];
      if (v21 == v41)
      {
        goto LABEL_59;
      }
    }

    if (*v41 != a4)
    {
      goto LABEL_59;
    }

    v40 = v41 - v20;
    goto LABEL_42;
  }

LABEL_18:
  v24 = sub_1059F84(*(a1 + 32), a2, 1);
  if (v24)
  {
    v25 = &v24[-*v24];
    if (*v25 >= 5u)
    {
      if (*(v25 + 2))
      {
        v26 = &v24[*(v25 + 2) + *&v24[*(v25 + 2)]];
        if (*v26 > HIDWORD(a2))
        {
          v27 = &v26[4 * HIDWORD(a2) + 4 + *&v26[4 * HIDWORD(a2) + 4]];
          v28 = &v27[-*v27];
          if (*v28 >= 9u)
          {
            v29 = *(v28 + 4);
            if (v29)
            {
              v30 = &v27[v29 + *&v27[v29]];
              v33 = *v30;
              v31 = v30 + 4;
              v32 = v33;
              v34 = &v31[8 * v33];
              v35 = v31;
              while (v32)
              {
                v36 = &v35[(4 * v32) & 0x7FFFFFFF8];
                v38 = *v36;
                v37 = (v36 + 1);
                v39 = v32 >> 1;
                v32 += ~(v32 >> 1);
                if (v38 >= a4)
                {
                  v32 = v39;
                }

                else
                {
                  v35 = v37;
                }
              }

              if (v35 != v34 && *v35 == a4)
              {
                v40 = v35 - v31;
LABEL_42:
                v68 = v40 >> 3;
                if (v68 != -1)
                {
                  if (*a3 && (v53 = *(*a3 + 24)) != 0)
                  {
                    if ((v53 + 24) != &__p)
                    {
                      sub_31F64(&__p, *(v53 + 24), *(v53 + 32), (*(v53 + 32) - *(v53 + 24)) >> 3);
                    }
                  }

                  else
                  {
                    v54 = *(a1 + 32);
                    v70 = __p;
                    v55 = sub_1059F84(v54, a2, 1);
                    if (v55)
                    {
                      v56 = &v55[-*v55];
                      if (*v56 >= 5u)
                      {
                        if (*(v56 + 2))
                        {
                          v57 = &v55[*(v56 + 2) + *&v55[*(v56 + 2)]];
                          if (*v57 > HIDWORD(a2))
                          {
                            v58 = &v57[4 * HIDWORD(a2) + 4 + *&v57[4 * HIDWORD(a2) + 4]];
                            v59 = &v58[-*v58];
                            if (*v59 >= 0xBu)
                            {
                              v60 = *(v59 + 5);
                              if (v60)
                              {
                                v61 = &v58[v60 + *&v58[v60]];
                                v62 = *v61;
                                p_p = &__p;
                                if (v62)
                                {
                                  v63 = 8 * v62;
                                  v64 = (v61 + 4);
                                  do
                                  {
                                    v74 = *v64;
                                    sub_A2324(&p_p, &v74);
                                    ++v64;
                                    v63 -= 8;
                                  }

                                  while (v63);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  LOWORD(p_p) = 0;
                  v65 = __p;
                  v66 = v70;
                  if (__p != v70)
                  {
                    v67 = v11 * (v40 >> 3);
                    do
                    {
                      sub_105F6B4(a5, &v72, v65, &v73, &v68, &p_p, (**a3 + 8 * v67++));
                      LOWORD(p_p) = p_p + 1;
                      ++v65;
                    }

                    while (v65 != v66);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_59:
  if (__p)
  {
    v70 = __p;
    operator delete(__p);
  }
}

void sub_1060988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10609AC(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v72 = a4;
  v73 = a2;
  if (*a3 && (v10 = *(*a3 + 24)) != 0)
  {
    v11 = (*(v10 + 32) - *(v10 + 24)) >> 3;
    __p = 0;
    v70 = 0;
    v71 = 0;
    v12 = *a3;
    if (!*a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = sub_1059F84(*(a1 + 32), a2, 1);
    if (v13 && (v14 = &v13[-*v13], *v14 >= 5u) && *(v14 + 2) && (v15 = &v13[*(v14 + 2) + *&v13[*(v14 + 2)]], *v15 > HIDWORD(a2)) && (v16 = &v15[4 * HIDWORD(a2) + 4 + *&v15[4 * HIDWORD(a2) + 4]], v17 = &v16[-*v16], *v17 >= 0xBu) && (v18 = *(v17 + 5)) != 0)
    {
      LODWORD(v11) = *&v16[v18 + *&v16[v18]];
      __p = 0;
      v70 = 0;
      v71 = 0;
      v12 = *a3;
      if (!*a3)
      {
        goto LABEL_18;
      }
    }

    else
    {
      LODWORD(v11) = 0;
      __p = 0;
      v70 = 0;
      v71 = 0;
      v12 = *a3;
      if (!*a3)
      {
        goto LABEL_18;
      }
    }
  }

  v19 = *(v12 + 24);
  if (v19)
  {
    v20 = *(v19 + 24);
    v21 = *(v19 + 32);
    v22 = (v21 - v20) >> 3;
    if (v22 < 1)
    {
      v41 = v20;
      if (v21 == v20)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v21 - v20 == 8)
      {
        v23 = v20;
      }

      else
      {
        v23 = v20;
        do
        {
          v42 = (2 * v22) & 0xFFFFFFFFFFFFFFF8;
          _X14 = v23 + v42;
          __asm { PRFM            #0, [X14] }

          v49 = &v23[v22 >> 1];
          _X13 = v49 + v42;
          __asm { PRFM            #0, [X13] }

          if (*v49 >= a4)
          {
            v52 = 0;
          }

          else
          {
            v52 = v22 >> 1;
          }

          v23 += v52;
          v22 -= v22 >> 1;
        }

        while (v22 > 1);
      }

      v41 = &v23[*v23 < a4];
      if (v21 == v41)
      {
        goto LABEL_59;
      }
    }

    if (*v41 != a4)
    {
      goto LABEL_59;
    }

    v40 = v41 - v20;
    goto LABEL_42;
  }

LABEL_18:
  v24 = sub_1059F84(*(a1 + 32), a2, 1);
  if (v24)
  {
    v25 = &v24[-*v24];
    if (*v25 >= 5u)
    {
      if (*(v25 + 2))
      {
        v26 = &v24[*(v25 + 2) + *&v24[*(v25 + 2)]];
        if (*v26 > HIDWORD(a2))
        {
          v27 = &v26[4 * HIDWORD(a2) + 4 + *&v26[4 * HIDWORD(a2) + 4]];
          v28 = &v27[-*v27];
          if (*v28 >= 0xBu)
          {
            v29 = *(v28 + 5);
            if (v29)
            {
              v30 = &v27[v29 + *&v27[v29]];
              v33 = *v30;
              v31 = v30 + 4;
              v32 = v33;
              v34 = &v31[8 * v33];
              v35 = v31;
              while (v32)
              {
                v36 = &v35[(4 * v32) & 0x7FFFFFFF8];
                v38 = *v36;
                v37 = (v36 + 1);
                v39 = v32 >> 1;
                v32 += ~(v32 >> 1);
                if (v38 >= a4)
                {
                  v32 = v39;
                }

                else
                {
                  v35 = v37;
                }
              }

              if (v35 != v34 && *v35 == a4)
              {
                v40 = v35 - v31;
LABEL_42:
                v68 = v40 >> 3;
                if (v68 != -1)
                {
                  if (*a3 && (v53 = *(*a3 + 24)) != 0)
                  {
                    if (v53 != &__p)
                    {
                      sub_31F64(&__p, *v53, *(v53 + 8), (*(v53 + 8) - *v53) >> 3);
                    }
                  }

                  else
                  {
                    v54 = *(a1 + 32);
                    v70 = __p;
                    v55 = sub_1059F84(v54, a2, 1);
                    if (v55)
                    {
                      v56 = &v55[-*v55];
                      if (*v56 >= 5u)
                      {
                        if (*(v56 + 2))
                        {
                          v57 = &v55[*(v56 + 2) + *&v55[*(v56 + 2)]];
                          if (*v57 > HIDWORD(a2))
                          {
                            v58 = &v57[4 * HIDWORD(a2) + 4 + *&v57[4 * HIDWORD(a2) + 4]];
                            v59 = &v58[-*v58];
                            if (*v59 >= 9u)
                            {
                              v60 = *(v59 + 4);
                              if (v60)
                              {
                                v61 = &v58[v60 + *&v58[v60]];
                                v62 = *v61;
                                p_p = &__p;
                                if (v62)
                                {
                                  v63 = 8 * v62;
                                  v64 = (v61 + 4);
                                  do
                                  {
                                    v74 = *v64;
                                    sub_A2324(&p_p, &v74);
                                    ++v64;
                                    v63 -= 8;
                                  }

                                  while (v63);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  LOWORD(p_p) = 0;
                  v65 = __p;
                  v66 = v70;
                  if (__p != v70)
                  {
                    v67 = (v40 >> 3);
                    do
                    {
                      sub_105F6B4(a5, v65, &v72, &v73, &p_p, &v68, (**a3 + 8 * v67));
                      v67 += v11;
                      LOWORD(p_p) = p_p + 1;
                      ++v65;
                    }

                    while (v65 != v66);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_59:
  if (__p)
  {
    v70 = __p;
    operator delete(__p);
  }
}

void sub_1060DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1060DE0(uint64_t a1, void *a2, unsigned int *a3, signed int a4, uint64_t a5, uint64_t *a6)
{
  v6 = a5;
  v107 = *(a1 + 18);
  v11 = *(a1 + 16);
  v114 = *(a1 + 5456);
  v111 = *(a1 + 8);
  v108 = *(a1 + 5472);
  v13 = sub_10B7414(a1 + 40, a3, a4, a5);
  if (sub_10B0C98(a1 + 40, a3, a4, v6))
  {
    v14 = a4;
  }

  else
  {
    v14 = 0x7FFFFFFF;
  }

  v116 = a4;
  v15 = a4;
  v16 = a2;
  v17 = sub_10B7604(a1 + 40, a3, v15, v6);
  v117 = a3;
  v18 = *a3;
  v113 = a4;
  if (v17)
  {
    v19 = a4;
  }

  else
  {
    v19 = 0x7FFFFFFF;
  }

  v132[0] = a2;
  v132[1] = __PAIR64__(v13, v18);
  *&v133 = __PAIR64__(v19, v14);
  v118 = v6;
  BYTE8(v133) = v6;
  WORD5(v133) = v107;
  WORD6(v133) = v11;
  LODWORD(v134) = 0x7FFFFFFF;
  sub_10669FC(v132, v114, v111, v108, &v135);
  v20 = *(a1 + 8);
  if (sub_FC1BE4(*(a1 + 5456), v136) && !v140)
  {
    v21 = v135;
    v22 = v136;
    v23 = v141;
    v24 = sub_3C0314(v20, v135, 1);
    if (v24)
    {
      v25 = &v24[-*v24];
      if (*v25 >= 0xFu)
      {
        if (*(v25 + 7))
        {
          v26 = &v24[*(v25 + 7) + *&v24[*(v25 + 7)]];
          if (*v26 > HIDWORD(v21))
          {
            v27 = &v26[4 * HIDWORD(v21) + 4 + *&v26[4 * HIDWORD(v21) + 4]];
            v28 = &v27[-*v27];
            if (*v28 >= 5u)
            {
              v29 = *(v28 + 2);
              if (v29)
              {
                v30 = &v27[v29 + *&v27[v29]];
                v31 = v22 + *(v20 + 3872) * v23;
                if (v31 < *v30 && v30[v31 + 1] != -1)
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  if (!v16)
  {
    goto LABEL_26;
  }

  v33 = sub_101E790(*(a1 + 24), v16, 1);
  if (!v33 || (v34 = &v33[-*v33], *v34 < 9u) || (v35 = *(v34 + 4)) == 0)
  {
    v39 = -1;
    goto LABEL_27;
  }

  v36 = sub_101E640(&v33[v35 + *&v33[v35]], HIDWORD(v16));
  v37 = (v36 - *v36);
  if (*v37 < 5u || (v38 = v37[2]) == 0)
  {
LABEL_26:
    v39 = 0;
    goto LABEL_27;
  }

  v39 = *(v36 + v38);
LABEL_27:
  v40 = 0xCCCCCCCCCCCCCCCDLL * ((a6[1] - *a6) >> 3);
  v41 = (v39 + 1);
  if (v41 > v40)
  {
    sub_1064374(a6, v41 - v40);
  }

  v42 = (HIDWORD(v135) + (v135 << 6) + (v135 >> 2) + 2654435769u) ^ v135;
  v43 = (v136 + (v42 << 6) + (v42 >> 2) + 2654435769u) ^ v42;
  v44 = (v137 + (v43 << 6) + (v43 >> 2) + 2654435769u) ^ v43;
  v45 = (v138 + (v44 << 6) + (v44 >> 2) + 2654435769u) ^ v44;
  v46 = (v139 + (v45 << 6) + (v45 >> 2) + 2654435769u) ^ v45;
  v47 = (v140 + (v46 << 6) + (v46 >> 2) + 2654435769u) ^ v46;
  v48 = (v141 + (v47 << 6) + (v47 >> 2) + 2654435769u) ^ v47;
  v49 = (v142 + (v48 << 6) + (v48 >> 2) + 2654435769u) ^ v48;
  v50 = (*(*(a1 + 5464) + 16) + 272 * (bswap64(v49) % **(a1 + 5464)));
  v143 = &v135;
  v144 = v49;
  sub_106557C(v50, &v143, v132);
  v51 = v133;
  v52 = v132[1];
  if (v132[1] && !atomic_fetch_add(v132[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v52->__on_zero_shared)(v52);
    std::__shared_weak_count::__release_weak(v52);
    if (v51)
    {
      return v51 ^ 1u;
    }
  }

  else if (v51)
  {
    return v51 ^ 1u;
  }

  v133 = 0u;
  v134 = 0u;
  *v132 = 0u;
  sub_1064544(v132);
  v53 = ((*(&v134 + 1) + v134) * 0x8060180601806019) >> 64;
  v54 = (v53 + ((*(&v134 + 1) + v134 - v53) >> 1)) >> 8;
  v55 = *(v132[1] + v54) + 12 * (*(&v134 + 1) + v134 - 341 * v54);
  *v55 = v16;
  *(v55 + 8) = v39;
  __p = 0;
  v130 = 0;
  v131 = 0;
  v56 = __CFADD__(*(&v134 + 1), 1);
  v57 = ++*(&v134 + 1);
  if (v56)
  {
    goto LABEL_73;
  }

  v109 = v51;
  do
  {
    v58 = *(v132[1] + v134 / 0x155) + 12 * (v134 % 0x155);
    v59 = *(v58 + 8);
    v127 = *v58;
    v128 = v59;
    *&v134 = v134 + 1;
    *(&v134 + 1) = v57 - 1;
    if (v134 >= 0x2AA)
    {
      operator delete(*v132[1]);
      v132[1] = v132[1] + 8;
      *&v134 = v134 - 341;
    }

    v60 = v128;
    if (!sub_3A8760((*a6 + 40 * v128), &v127))
    {
      sub_10664DC((*a6 + 40 * v60), &v127, &v127);
      if (v60 != 1)
      {
        v143 = v127;
        sub_1066854(*(a1 + 24), &v143, &__p);
        v61 = __p;
        v115 = v130;
        if (__p != v130)
        {
          v112 = v60 - 1;
          do
          {
            v63 = *(a1 + 18);
            v64 = *(a1 + 16);
            v65 = *(a1 + 5456);
            v66 = *(a1 + 8);
            v67 = *(a1 + 5472);
            v68 = sub_10B7414(a1 + 40, v117, v116, v118);
            v69 = sub_10B0C98(a1 + 40, v117, v116, v118);
            v70 = sub_10B7604(a1 + 40, v117, v116, v118);
            if (v69)
            {
              v71 = v113;
            }

            else
            {
              v71 = 0x7FFFFFFF;
            }

            v72 = *v117;
            if (v70)
            {
              v73 = v113;
            }

            else
            {
              v73 = 0x7FFFFFFF;
            }

            v143 = *v61;
            v144 = __PAIR64__(v68, v72);
            v145 = v71;
            v146 = v73;
            v147 = v118;
            v148 = v63;
            v149 = v64;
            v150 = 0;
            v151 = 0x7FFFFFFF;
            sub_10669FC(&v143, v65, v66, v67, &v119);
            v74 = *(a1 + 8);
            v75 = sub_FC1BE4(*(a1 + 5456), v120);
            if (v124)
            {
              v76 = 0;
            }

            else
            {
              v76 = v75;
            }

            if (!v76 || (v77 = v119, v78 = v120, v79 = v125, (v80 = sub_3C0314(v74, v119, 1)) == 0) || (v81 = &v80[-*v80], *v81 < 0xFu) || !*(v81 + 7) || (v82 = &v80[*(v81 + 7) + *&v80[*(v81 + 7)]], *v82 <= HIDWORD(v77)) || (v83 = &v82[4 * HIDWORD(v77) + 4 + *&v82[4 * HIDWORD(v77) + 4]], v84 = &v83[-*v83], *v84 < 5u) || (v85 = *(v84 + 2)) == 0 || (v86 = &v83[v85 + *&v83[v85]], v87 = v78 + *(v74 + 3872) * v79, v87 >= *v86) || v86[v87 + 1] == -1)
            {
              v88 = (HIDWORD(v119) + 2654435769 + (v119 << 6) + (v119 >> 2)) ^ v119;
              v89 = (v120 + 2654435769 + (v88 << 6) + (v88 >> 2)) ^ v88;
              v90 = (v121 + 2654435769 + (v89 << 6) + (v89 >> 2)) ^ v89;
              v91 = (v122 + 2654435769 + (v90 << 6) + (v90 >> 2)) ^ v90;
              v92 = (v123 + 2654435769 + (v91 << 6) + (v91 >> 2)) ^ v91;
              v93 = (v124 + 2654435769 + (v92 << 6) + (v92 >> 2)) ^ v92;
              v94 = (v125 + 2654435769 + (v93 << 6) + (v93 >> 2)) ^ v93;
              v95 = (v126 + 2654435769 + (v94 << 6) + (v94 >> 2)) ^ v94;
              v96 = (*(*(a1 + 5464) + 16) + 272 * (bswap64(v95) % **(a1 + 5464)));
              v152[0] = &v119;
              v152[1] = v95;
              sub_106557C(v96, v152, &v143);
              v97 = v145;
              v98 = v144;
              if (v144 && !atomic_fetch_add((v144 + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v98->__on_zero_shared)(v98);
                std::__shared_weak_count::__release_weak(v98);
                if ((v97 & 1) == 0)
                {
LABEL_64:
                  v99 = v132[1];
                  if (v133 == v132[1])
                  {
                    v100 = 0;
                  }

                  else
                  {
                    v100 = 341 * ((v133 - v132[1]) >> 3) - 1;
                  }

                  v101 = *(&v134 + 1) + v134;
                  if (v100 == *(&v134 + 1) + v134)
                  {
                    sub_1064544(v132);
                    v99 = v132[1];
                    v101 = *(&v134 + 1) + v134;
                  }

                  v62 = v99[v101 / 0x155] + 12 * (v101 % 0x155);
                  *v62 = *v61;
                  *(v62 + 8) = v112;
                  ++*(&v134 + 1);
                }
              }

              else if ((v97 & 1) == 0)
              {
                goto LABEL_64;
              }
            }

            ++v61;
          }

          while (v61 != v115);
        }
      }
    }

    v57 = *(&v134 + 1);
  }

  while (*(&v134 + 1));
  v51 = v109;
  if (__p)
  {
    v130 = __p;
    operator delete(__p);
  }

LABEL_73:
  v102 = v132[1];
  v103 = v133;
  *(&v134 + 1) = 0;
  v104 = (v133 - v132[1]) >> 3;
  if (v104 >= 3)
  {
    do
    {
      operator delete(*v102);
      v103 = v133;
      v102 = (v132[1] + 8);
      v132[1] = v102;
      v104 = (v133 - v102) >> 3;
    }

    while (v104 > 2);
  }

  if (v104 == 1)
  {
    v105 = 170;
LABEL_81:
    *&v134 = v105;
  }

  else if (v104 == 2)
  {
    v105 = 341;
    goto LABEL_81;
  }

  if (v102 != v103)
  {
    do
    {
      v106 = *v102++;
      operator delete(v106);
    }

    while (v102 != v103);
    if (v133 != v132[1])
    {
      *&v133 = v133 + ((v132[1] - v133 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v132[0])
  {
    operator delete(v132[0]);
  }

  return v51 ^ 1u;
}

void sub_106173C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_49CAC(va);
  _Unwind_Resume(a1);
}

void sub_1061750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (__p)
  {
    operator delete(__p);
  }

  sub_49CAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_106177C(uint64_t a1, uint64_t a2, unsigned int *a3, signed int a4, uint64_t a5)
{
  if (a2 && (v8 = a5, (v10 = sub_101E790(*(a1 + 24), a2, 1)) != 0) && (v11 = &v10[-*v10], *v11 >= 9u) && (v12 = *(v11 + 4)) != 0 && (v13 = sub_101E640(&v10[v12 + *&v10[v12]], HIDWORD(a2)), v14 = (v13 - *v13), *v14 >= 5u) && (v15 = v14[2]) != 0 && *(v13 + v15) && ((v45 = *(a1 + 16), v46 = *(a1 + 18), v48 = *(a1 + 8), v49 = *(a1 + 5456), v47 = *(a1 + 5472), v16 = sub_10B7414(a1 + 40, a3, a4, v8), !sub_10B0C98(a1 + 40, a3, a4, v8)) ? (v17 = 0x7FFFFFFF) : (v17 = a4), (v18 = sub_10B7604(a1 + 40, a3, a4, v8), v19 = *a3, !v18) ? (v20 = 0x7FFFFFFF) : (v20 = a4), (v58 = a2, v59 = __PAIR64__(v16, v19), v60 = v17, v61 = v20, v62 = v8, v63 = v46, v64 = v45, v65 = 0, v66 = 0x7FFFFFFF, sub_10669FC(&v58, v49, v48, v47, &v50), v21 = *(a1 + 8), !sub_FC1BE4(*(a1 + 5456), v51)) || v55 || (v22 = v50, v23 = v51, v24 = v56, (v25 = sub_3C0314(v21, v50, 1)) == 0) || (v26 = &v25[-*v25], *v26 < 0xFu) || !*(v26 + 7) || (v27 = &v25[*(v26 + 7) + *&v25[*(v26 + 7)]], *v27 <= HIDWORD(v22)) || (v28 = &v27[4 * HIDWORD(v22) + 4 + *&v27[4 * HIDWORD(v22) + 4]], v29 = &v28[-*v28], *v29 < 5u) || (v30 = *(v29 + 2)) == 0 || (v31 = &v28[v30 + *&v28[v30]], v32 = v23 + *(v21 + 3872) * v24, v32 >= *v31) || v31[v32 + 1] == -1))
  {
    v35 = (HIDWORD(v50) + (v50 << 6) + (v50 >> 2) + 2654435769u) ^ v50;
    v36 = (v51 + (v35 << 6) + (v35 >> 2) + 2654435769u) ^ v35;
    v37 = (v52 + (v36 << 6) + (v36 >> 2) + 2654435769u) ^ v36;
    v38 = (v53 + (v37 << 6) + (v37 >> 2) + 2654435769u) ^ v37;
    v39 = (v54 + (v38 << 6) + (v38 >> 2) + 2654435769u) ^ v38;
    v40 = (v55 + (v39 << 6) + (v39 >> 2) + 2654435769u) ^ v39;
    v41 = (v56 + (v40 << 6) + (v40 >> 2) + 2654435769u) ^ v40;
    v42 = (v57 + (v41 << 6) + (v41 >> 2) + 2654435769u) ^ v41;
    v43 = (*(*(a1 + 5464) + 16) + 272 * (bswap64(v42) % **(a1 + 5464)));
    v67[0] = &v50;
    v67[1] = v42;
    sub_106557C(v43, v67, &v58);
    v33 = v60 ^ 1;
    v44 = v59;
    if (v59 && !atomic_fetch_add((v59 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v44->__on_zero_shared)(v44);
      std::__shared_weak_count::__release_weak(v44);
    }
  }

  else
  {
    v33 = 0;
  }

  return v33 & 1;
}

uint64_t sub_1061AF4(uint64_t a1, uint64_t *a2)
{
  *a1 = a2;
  *(a1 + 8) = sub_3B0BCC(a2);
  v4 = sub_3AF144(*a1);
  v5 = sub_2BDE28(v4);
  if (v5)
  {
    v6 = sub_3AF144(*a1);
    LOBYTE(v5) = sub_2BDE20(v6);
  }

  *(a1 + 16) = v5;
  *(a1 + 18) = *(sub_3B1768(*a1) + 3872);
  v7 = sub_3B0708(a2);
  v8 = *(a1 + 8);
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  sub_10BD0E0((a1 + 40), a2);
  *(a1 + 72) = sub_3AF40C(a2);
  *(a1 + 80) = sub_3AF478(a2);
  *(a1 + 88) = sub_57478(a2);
  return a1;
}

uint64_t sub_1061BAC(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int a4, char a5)
{
  if (!*(a2 + 4))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v9 = *a2;
  v10 = a2[2];
  if (!v10)
  {
LABEL_10:
    v19 = 0;
    goto LABEL_14;
  }

  v11 = a1;
  v12 = sub_101E790(*(a1 + 24), v10, 1);
  v13 = v12;
  if (v12)
  {
    v14 = &v12[-*v12];
    a1 = v11;
    if (*v14 >= 9u && (v15 = *(v14 + 4)) != 0)
    {
      v16 = sub_101E640(&v13[v15 + *&v13[v15]], HIDWORD(v10));
      v17 = (v16 - *v16);
      if (*v17 >= 5u)
      {
        v18 = v17[2];
        a1 = v11;
        if (v18)
        {
          v19 = *(v16 + v18);
          goto LABEL_14;
        }

        goto LABEL_10;
      }

      v19 = 0;
      a1 = v11;
    }

    else
    {
      v19 = -1;
    }
  }

  else
  {
    v19 = -1;
    a1 = v11;
  }

LABEL_14:
  sub_1061D68(a1, v9, v19, 0, a3, a4, a5, &v26);
  v21 = v26;
  if (v26 != v27)
  {
    v22 = a2[1];
    v23 = 0xFFFFFFFFLL;
    v21 = v26;
    while (v21[1] != v22)
    {
      v21 += 5;
      if (v21 == v27)
      {
        v24 = 0x7FFFFFFF00000000;
        if (v26)
        {
          goto LABEL_22;
        }

        return v24 | v23;
      }
    }
  }

  if (v21 == v27)
  {
    v24 = 0x7FFFFFFF00000000;
    v23 = 0xFFFFFFFFLL;
    if (!v26)
    {
      return v24 | v23;
    }

    goto LABEL_22;
  }

  v25 = *(v21 + 28);
  v24 = v25 & 0xFFFFFFFF00000000;
  v23 = v25;
  if (v26)
  {
LABEL_22:
    v27 = v26;
    operator delete(v26);
  }

  return v24 | v23;
}

void sub_1061D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1061D68(uint64_t a1, unint64_t a2, int a3, int a4, unsigned int *a5, unsigned int a6, char a7, void **a8)
{
  a8[1] = *a8;
  if (a3)
  {
    LODWORD(__p) = a3;
    v15 = sub_101F854(*(a1 + 24), a2 & 0xFFFFFFFFFFFFFFFLL, ((a2 & 0x1000000000000000) != 0) ^ (a4 == 0), &__p);
    v16 = v15;
    v17 = v15;
    if (v15 <= 0xFFFFFFFEFFFFFFFFLL && v15 != 0)
    {
      __p = 0uLL;
      v19 = sub_105BEB4(*(a1 + 32), v15, 1);
      if (v19)
      {
        v20 = &v19[-*v19];
        if (*v20 >= 5u)
        {
          v21 = *(v20 + 2);
          if (v21)
          {
            v22 = HIDWORD(v16);
            v23 = &v19[v21 + *&v19[v21]];
            if (*v23 > HIDWORD(v16))
            {
              v24 = &v23[4 * v22 + 4 + *&v23[4 * v22 + 4]];
              v25 = &v24[-*v24];
              if (*v25 >= 9u)
              {
                v26 = *(v25 + 4);
                if (v26)
                {
                  if (*&v24[v26 + *&v24[v26]])
                  {
                    v81 = 0;
                    v82 = 0;
                    v27 = sub_105BEB4(*(a1 + 32), v17, 1);
                    if (v27)
                    {
                      v28 = &v27[-*v27];
                      if (*v28 >= 5u)
                      {
                        v29 = *(v28 + 2);
                        if (v29)
                        {
                          v30 = &v27[v29 + *&v27[v29]];
                          if (*v30 > HIDWORD(v16))
                          {
                            v31 = &v30[4 * v22 + 4 + *&v30[4 * v22 + 4]];
                            v32 = &v31[-*v31];
                            if (*v32 >= 0xBu)
                            {
                              v33 = *(v32 + 5);
                              if (v33)
                              {
                                if (*&v31[v33 + *&v31[v33]])
                                {
                                  v65 = *(a1 + 16);
                                  v66 = *(a1 + 18);
                                  v67 = *(a1 + 8);
                                  v68 = *(a1 + 72);
                                  v69 = a6;
                                  v64 = sub_10AC56C();
                                  if (sub_394BD0())
                                  {
                                    v34 = a6;
                                  }

                                  else
                                  {
                                    v34 = 0x7FFFFFFF;
                                  }

                                  v63 = v34;
                                  v35 = sub_394BD0();
                                  v36 = *a5;
                                  if (v35)
                                  {
                                    v37 = a6;
                                  }

                                  else
                                  {
                                    v37 = 0x7FFFFFFF;
                                  }

                                  *&__p = v16;
                                  *(&__p + 1) = __PAIR64__(v64, v36);
                                  v71 = v63;
                                  v72 = v37;
                                  v73 = a7;
                                  v74 = v66;
                                  v75 = v65;
                                  v76 = 0;
                                  v77 = 0x7FFFFFFF;
                                  sub_106826C(&__p, v68, v67, &v81);
                                  v38 = *(a1 + 8);
                                  v39 = sub_FC1BE4(*(a1 + 72), v82);
                                  if (v85)
                                  {
                                    v40 = 0;
                                  }

                                  else
                                  {
                                    v40 = v39;
                                  }

                                  if (v40 && (v41 = v81, v42 = v82, v43 = v86, (v44 = sub_3C0614(v38, v81, 1)) != 0) && (v45 = &v44[-*v44], *v45 >= 0xFu) && *(v45 + 7) && (v46 = &v44[*(v45 + 7) + *&v44[*(v45 + 7)]], *v46 > HIDWORD(v41)) && (v47 = &v46[4 * HIDWORD(v41) + 4 + *&v46[4 * HIDWORD(v41) + 4]], v48 = &v47[-*v47], *v48 >= 5u) && (v49 = *(v48 + 2)) != 0 && (v50 = &v47[v49 + *&v47[v49]], v51 = v42 + *(v38 + 3872) * v43, v51 < *v50) && *&v50[4 * v51 + 4] != -1)
                                  {
                                    v52 = *(a1 + 8);
                                    if (a4)
                                    {
                                      sub_10688E0(v52, v16, a2, v82, v86, a8);
                                    }

                                    else
                                    {
                                      sub_106843C(v52, v16, a2, v82, v86, a8);
                                    }
                                  }

                                  else if ((sub_3B8508() & 1) == 0)
                                  {
                                    v53 = (HIDWORD(v81) + (v81 << 6) + (v81 >> 2) + 2654435769u) ^ v81;
                                    v54 = (v82 + (v53 << 6) + (v53 >> 2) + 2654435769u) ^ v53;
                                    v55 = (SHIDWORD(v82) + (v54 << 6) + (v54 >> 2) + 2654435769u) ^ v54;
                                    v56 = (v83 + (v55 << 6) + (v55 >> 2) + 2654435769u) ^ v55;
                                    v57 = (v84 + (v56 << 6) + (v56 >> 2) + 2654435769u) ^ v56;
                                    v58 = (v85 + (v57 << 6) + (v57 >> 2) + 2654435769u) ^ v57;
                                    v59 = (v86 + (v58 << 6) + (v58 >> 2) + 2654435769u) ^ v58;
                                    v60 = (v87 + (v59 << 6) + (v59 >> 2) + 2654435769u) ^ v59;
                                    v61 = (*(*(a1 + 80) + 16) + 272 * (bswap64(v60) % **(a1 + 80)));
                                    *&__p = &v81;
                                    *(&__p + 1) = v60;
                                    sub_1068DA8(v61, &__p, &v78);
                                    if ((v80 & 1) == 0)
                                    {
                                      v88[0] = v16;
                                      sub_105DF50(&__p, v88, 1uLL);
                                      sub_10625E0(a1, &__p, a5, v69, v85, 4u);
                                      if (__p)
                                      {
                                        *(&__p + 1) = __p;
                                        operator delete(__p);
                                      }

                                      sub_10624F8(*(a1 + 80), &v81, &__p);
                                      sub_106490C(&v78, &__p);
                                      v80 = v71;
                                      sub_1F1A8(&__p);
                                    }

                                    if (!v78 || *v78 == v78[1])
                                    {
                                      if (sub_7E7E4(3u))
                                      {
                                        sub_19594F8(&__p);
                                        sub_4A5C(&__p, "Costs are not available from cache (after computing them). LRUCache issue or differing keys.", 92);
                                        sub_1959680(&__p, v88);
                                        sub_7E854(v88, 3u);
                                        if (v89 < 0)
                                        {
                                          operator delete(v88[0]);
                                        }

                                        sub_1959728(&__p);
                                      }

                                      operator new();
                                    }

                                    if (a4)
                                    {
                                      sub_1062DA4(a1, v16, &v78, a2, a8);
                                    }

                                    else
                                    {
                                      sub_10628DC(a1, v16, &v78, a2, a8);
                                    }

                                    v62 = v79;
                                    if (v79 && !atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                                    {
                                      (v62->__on_zero_shared)(v62);
                                      std::__shared_weak_count::__release_weak(v62);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10623FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (*(v17 - 97) < 0)
  {
    operator delete(*(v17 - 120));
    sub_1959728(va);
    sub_1F1A8(v17 - 184);
    _Unwind_Resume(a1);
  }

  sub_1959728(va);
  sub_1F1A8(v17 - 184);
  _Unwind_Resume(a1);
}

void sub_10624C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1F1A8(v17 - 160);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_10624E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_10624F8(void *a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v3 = (a2[1] + (*a2 << 6) + (*a2 >> 2) + 2654435769u) ^ *a2;
  v4 = (a2[2] + (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
  v5 = (a2[3] + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v6 = (a2[4] + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v7 = (a2[5] + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  v8 = (*(a2 + 24) + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  v9 = (*(a2 + 13) + (v8 << 6) + (v8 >> 2) + 2654435769u) ^ v8;
  v10 = (*(a2 + 28) + (v9 << 6) + (v9 >> 2) + 2654435769u) ^ v9;
  v11 = (a1[2] + 272 * (bswap64(v10) % *a1));
  v12[0] = a2;
  v12[1] = v10;
  sub_1068DA8(v11, v12, a3);
}

void sub_10625E0(uint64_t a1, void ***a2, unsigned int *a3, int a4, uint64_t a5, unsigned int a6)
{
  v7 = a5;
  if ((sub_3B8508() & 1) == 0)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v12 = *a2;
    v13 = a2[1];
    if (*a2 != v13)
    {
      v14 = 0;
      do
      {
        v14 |= sub_106327C(a1, *v12++, a3, a4, v7, &v39);
      }

      while (v12 != v13);
      v15 = v39;
      if (v14)
      {
        __p = 0;
        v46 = 0;
        v47 = 0;
        sub_101EA90(&v37, 0xCCCCCCCCCCCCCCCDLL * ((v40 - v39) >> 3), &__p);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }

        if (v40 != v39)
        {
          v16 = 0;
          v17 = 0xCCCCCCCCCCCCCCCDLL * ((v40 - v39) >> 3);
          do
          {
            v18 = v39 + 40 * v16;
            v19 = *(v18 + 2);
            if (v19)
            {
              v20 = 0;
              v21 = *(v18 + 2);
              do
              {
                ++v20;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              v20 = 0;
            }

            sub_1063F90(v37 + 3 * v16, *(v37 + 3 * v16 + 1), v19, 0, v20);
            ++v16;
          }

          while (v16 != v17);
        }

        atomic_fetch_add(sub_102DC44(), 1u);
        v44 = a4;
        v43 = v7;
        v22 = sub_3B8508();
        if ((v22 & 1) == 0)
        {
          v24 = sub_2D2E8(v22, v23);
          v42[0] = a1;
          v42[1] = &v37;
          v42[2] = a3;
          v42[3] = &v44;
          v42[4] = &v43;
          sub_1068F20(&__p, v24, a6, v42);
        }

        atomic_fetch_add(sub_102DC44(), 0xFFFFFFFF);
        v25 = v37;
        if (v37)
        {
          v26 = v38;
          v27 = v37;
          if (v38 != v37)
          {
            v28 = v38;
            do
            {
              v30 = *(v28 - 3);
              v28 -= 24;
              v29 = v30;
              if (v30)
              {
                *(v26 - 2) = v29;
                operator delete(v29);
              }

              v26 = v28;
            }

            while (v28 != v25);
            v27 = v37;
          }

          v38 = v25;
          operator delete(v27);
        }

        v15 = v39;
      }

      if (v15)
      {
        v31 = v40;
        v32 = v15;
        if (v40 != v15)
        {
          do
          {
            v33 = *(v31 - 3);
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

            v36 = *(v31 - 5);
            v31 -= 5;
            v35 = v36;
            *v31 = 0;
            if (v36)
            {
              operator delete(v35);
            }
          }

          while (v31 != v15);
          v32 = v39;
        }

        v40 = v15;
        operator delete(v32);
      }
    }
  }
}

void sub_1062884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
    sub_105F2B4(&a13);
    _Unwind_Resume(a1);
  }

  sub_105F2B4(&a13);
  _Unwind_Resume(a1);
}

void sub_10628DC(uint64_t a1, unint64_t a2, uint64_t **a3, uint64_t *a4, void **a5)
{
  v7 = a3;
  if (*a3 && (v9 = (*a3)[3]) != 0)
  {
    v10 = (*(v9 + 32) - *(v9 + 24)) >> 3;
    v53 = a5;
    __p = 0;
    v57 = 0;
    v58 = 0;
    v11 = *a3;
    if (!*a3)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v12 = sub_105BEB4(*(a1 + 32), a2, 1);
    if (v12 && (v13 = &v12[-*v12], *v13 >= 5u) && *(v13 + 2) && (v14 = &v12[*(v13 + 2) + *&v12[*(v13 + 2)]], *v14 > HIDWORD(a2)) && (v15 = &v14[4 * HIDWORD(a2) + 4 + *&v14[4 * HIDWORD(a2) + 4]], v16 = &v15[-*v15], *v16 >= 0xBu) && (v17 = *(v16 + 5)) != 0)
    {
      LODWORD(v10) = *&v15[v17 + *&v15[v17]];
      v53 = a5;
      __p = 0;
      v57 = 0;
      v58 = 0;
      v11 = *v7;
      if (!*v7)
      {
LABEL_19:
        LOWORD(v54) = sub_105BD90(*(a1 + 32), a4, a2);
        if (v54 == 0xFFFF)
        {
          goto LABEL_49;
        }

        goto LABEL_22;
      }
    }

    else
    {
      LODWORD(v10) = 0;
      v53 = a5;
      __p = 0;
      v57 = 0;
      v58 = 0;
      v11 = *v7;
      if (!*v7)
      {
        goto LABEL_19;
      }
    }
  }

  v18 = v11[3];
  if (!v18)
  {
    goto LABEL_19;
  }

  v59[0] = a4;
  v19 = v18[1];
  v61 = *v18;
  v60 = v19;
  v20 = sub_1069A1C(&v61, &v60, v59);
  if (v18[1] == v20)
  {
    goto LABEL_49;
  }

  if (*v20 != v59[0])
  {
    goto LABEL_49;
  }

  v54 = (v20 - *v18) >> 3;
  if (v54 == 0xFFFF)
  {
    goto LABEL_49;
  }

LABEL_22:
  if (*v7 && (v21 = (*v7)[3]) != 0)
  {
    if ((v21 + 24) != &__p)
    {
      sub_31F64(&__p, *(v21 + 24), *(v21 + 32), (*(v21 + 32) - *(v21 + 24)) >> 3);
    }
  }

  else
  {
    v22 = *(a1 + 32);
    v57 = __p;
    v23 = sub_105BEB4(v22, a2, 1);
    if (v23)
    {
      v24 = &v23[-*v23];
      if (*v24 >= 5u)
      {
        if (*(v24 + 2))
        {
          v25 = &v23[*(v24 + 2) + *&v23[*(v24 + 2)]];
          if (*v25 > HIDWORD(a2))
          {
            v26 = &v25[4 * HIDWORD(a2) + 4 + *&v25[4 * HIDWORD(a2) + 4]];
            v27 = &v26[-*v26];
            if (*v27 >= 0xBu)
            {
              v28 = *(v27 + 5);
              if (v28)
              {
                v29 = &v26[v28 + *&v26[v28]];
                v30 = *v29;
                v61 = (v29 + 4);
                v60 = &v29[8 * v30 + 4];
                sub_1069B6C(&v61, &v60, &__p, v59);
              }
            }
          }
        }
      }
    }
  }

  v32 = __p;
  v31 = v57;
  v33 = v53;
  if (__p != v57)
  {
    v34 = 0;
    v35 = v10 * v54;
    v36 = v53[1];
    v51 = v57;
    v52 = v7;
    do
    {
      while (1)
      {
        v38 = v35;
        v39 = **v7;
        v40 = v33[2];
        if (v36 >= v40)
        {
          break;
        }

        v37 = *v32++;
        *v36 = a4;
        *(v36 + 8) = v37;
        *(v36 + 16) = a2;
        *(v36 + 24) = v54;
        *(v36 + 26) = v34;
        *(v36 + 28) = *(v39 + 8 * v38);
        v36 += 40;
        v33[1] = v36;
        v35 = v38 + 1;
        ++v34;
        if (v32 == v31)
        {
          goto LABEL_49;
        }
      }

      v41 = a4;
      v42 = *v33;
      v43 = 0xCCCCCCCCCCCCCCCDLL * ((v36 - *v33) >> 3);
      v44 = v43 + 1;
      if (v43 + 1 > 0x666666666666666)
      {
        sub_1794();
      }

      v45 = 0xCCCCCCCCCCCCCCCDLL * ((v40 - v42) >> 3);
      if (2 * v45 > v44)
      {
        v44 = 2 * v45;
      }

      if (v45 >= 0x333333333333333)
      {
        v46 = 0x666666666666666;
      }

      else
      {
        v46 = v44;
      }

      if (v46)
      {
        if (v46 <= 0x666666666666666)
        {
          operator new();
        }

        sub_1808();
      }

      v47 = v36;
      v33 = v53;
      v48 = 40 * v43;
      v49 = *v32;
      a4 = v41;
      *v48 = v41;
      *(v48 + 8) = v49;
      *(v48 + 16) = a2;
      *(v48 + 24) = v54;
      *(v48 + 26) = v34;
      *(v48 + 28) = *(v39 + 8 * v38);
      v36 = v48 + 40;
      v50 = (v48 - (v47 - v42));
      memcpy(v50, v42, v47 - v42);
      *v53 = v50;
      v53[1] = v36;
      v53[2] = 0;
      if (v42)
      {
        operator delete(v42);
      }

      v31 = v51;
      v7 = v52;
      v53[1] = v36;
      v35 = v38 + 1;
      ++v34;
      ++v32;
    }

    while (v32 != v51);
  }

LABEL_49:
  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }
}

void sub_1062D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1062DA4(uint64_t a1, unint64_t a2, uint64_t **a3, uint64_t *a4, void *a5)
{
  v6 = a3;
  if (*a3 && (v8 = (*a3)[3]) != 0)
  {
    v9 = (*(v8 + 32) - *(v8 + 24)) >> 3;
    __p = 0;
    v55 = 0;
    v56 = 0;
    v10 = *a3;
    if (!*a3)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = sub_105BEB4(*(a1 + 32), a2, 1);
    if (v11 && (v12 = &v11[-*v11], *v12 >= 5u) && *(v12 + 2) && (v13 = &v11[*(v12 + 2) + *&v11[*(v12 + 2)]], *v13 > HIDWORD(a2)) && (v14 = &v13[4 * HIDWORD(a2) + 4 + *&v13[4 * HIDWORD(a2) + 4]], v15 = &v14[-*v14], *v15 >= 0xBu) && (v16 = *(v15 + 5)) != 0)
    {
      LODWORD(v9) = *&v14[v16 + *&v14[v16]];
      __p = 0;
      v55 = 0;
      v56 = 0;
      v10 = *v6;
      if (!*v6)
      {
LABEL_19:
        LOWORD(v52) = sub_105CC98(*(a1 + 32), a4, a2);
        v20 = a5;
        if (v52 == 0xFFFF)
        {
          goto LABEL_50;
        }

        goto LABEL_22;
      }
    }

    else
    {
      LODWORD(v9) = 0;
      __p = 0;
      v55 = 0;
      v56 = 0;
      v10 = *v6;
      if (!*v6)
      {
        goto LABEL_19;
      }
    }
  }

  v17 = v10[3];
  if (!v17)
  {
    goto LABEL_19;
  }

  v57[0] = a4;
  v18 = *(v17 + 32);
  v59 = *(v17 + 24);
  v58 = v18;
  v19 = sub_1069A1C(&v59, &v58, v57);
  v20 = a5;
  if (*(v17 + 32) == v19)
  {
    goto LABEL_50;
  }

  if (*v19 != v57[0])
  {
    goto LABEL_50;
  }

  v52 = (v19 - *(v17 + 24)) >> 3;
  if (v52 == 0xFFFF)
  {
    goto LABEL_50;
  }

LABEL_22:
  if (*v6 && (v21 = (*v6)[3]) != 0)
  {
    if (v21 != &__p)
    {
      sub_31F64(&__p, *v21, *(v21 + 8), (*(v21 + 8) - *v21) >> 3);
      v20 = a5;
    }
  }

  else
  {
    v22 = *(a1 + 32);
    v55 = __p;
    v23 = sub_105BEB4(v22, a2, 1);
    v20 = a5;
    if (v23)
    {
      v24 = &v23[-*v23];
      if (*v24 >= 5u)
      {
        if (*(v24 + 2))
        {
          v25 = &v23[*(v24 + 2) + *&v23[*(v24 + 2)]];
          if (*v25 > HIDWORD(a2))
          {
            v26 = &v25[4 * HIDWORD(a2) + 4 + *&v25[4 * HIDWORD(a2) + 4]];
            v27 = &v26[-*v26];
            if (*v27 >= 9u)
            {
              v28 = *(v27 + 4);
              if (v28)
              {
                v29 = &v26[v28 + *&v26[v28]];
                v30 = *v29;
                v59 = (v29 + 4);
                v58 = &v29[8 * v30 + 4];
                sub_1069B6C(&v59, &v58, &__p, v57);
                v20 = a5;
              }
            }
          }
        }
      }
    }
  }

  v32 = __p;
  v31 = v55;
  if (__p != v55)
  {
    v33 = 0;
    v34 = v52;
    v35 = v20[1];
    v48 = v55;
    v49 = v9;
    v50 = v6;
    do
    {
      while (1)
      {
        v37 = v34;
        v38 = **v6;
        v39 = v20[2];
        if (v35 >= v39)
        {
          break;
        }

        v36 = *v32++;
        *v35 = v36;
        *(v35 + 8) = a4;
        *(v35 + 16) = a2;
        *(v35 + 24) = v33;
        *(v35 + 26) = v52;
        *(v35 + 28) = *(v38 + 8 * v37);
        v35 += 40;
        v20[1] = v35;
        v34 = v37 + v9;
        ++v33;
        if (v32 == v31)
        {
          goto LABEL_50;
        }
      }

      v40 = *v20;
      v41 = 0xCCCCCCCCCCCCCCCDLL * ((v35 - *v20) >> 3) + 1;
      if (v41 > 0x666666666666666)
      {
        sub_1794();
      }

      v42 = 0xCCCCCCCCCCCCCCCDLL * ((v39 - v40) >> 3);
      if (2 * v42 > v41)
      {
        v41 = 2 * v42;
      }

      if (v42 >= 0x333333333333333)
      {
        v43 = 0x666666666666666;
      }

      else
      {
        v43 = v41;
      }

      if (v43)
      {
        if (v43 <= 0x666666666666666)
        {
          operator new();
        }

        sub_1808();
      }

      v44 = v35;
      v45 = v20;
      v46 = 8 * ((v35 - *v20) >> 3);
      *v46 = *v32;
      *(v46 + 8) = a4;
      *(v46 + 16) = a2;
      *(v46 + 24) = v33;
      *(v46 + 26) = v52;
      *(v46 + 28) = *(v38 + 8 * v37);
      v35 = v46 + 40;
      v47 = (v46 - (v44 - v40));
      memcpy(v47, v40, v44 - v40);
      *v45 = v47;
      v45[1] = v35;
      v45[2] = 0;
      if (v40)
      {
        operator delete(v40);
        v20 = a5;
      }

      else
      {
        v20 = v45;
      }

      LODWORD(v9) = v49;
      v6 = v50;
      v31 = v48;
      v20[1] = v35;
      v34 = v37 + v49;
      ++v33;
      ++v32;
    }

    while (v32 != v48);
  }

LABEL_50:
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }
}

void sub_1063258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_106327C(uint64_t a1, void *a2, unsigned int *a3, int a4, char a5, uint64_t *a6)
{
  v104 = *(a1 + 18);
  v11 = *(a1 + 16);
  v110 = *(a1 + 72);
  v107 = *(a1 + 8);
  v12 = sub_10AC56C();
  if (sub_394BD0())
  {
    v13 = a4;
  }

  else
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = a2;
  v15 = sub_394BD0();
  v112 = a3;
  v16 = *a3;
  v109 = a4;
  if (v15)
  {
    v17 = a4;
  }

  else
  {
    v17 = 0x7FFFFFFF;
  }

  v127[0] = a2;
  v127[1] = __PAIR64__(v12, v16);
  *&v128 = __PAIR64__(v17, v13);
  v113 = a5;
  BYTE8(v128) = a5;
  WORD5(v128) = v104;
  WORD6(v128) = v11;
  LODWORD(v129) = 0x7FFFFFFF;
  sub_106826C(v127, v110, v107, &v130);
  v18 = *(a1 + 8);
  if (sub_FC1BE4(*(a1 + 72), v131) && !v135)
  {
    v19 = v130;
    v20 = v131;
    v21 = v136;
    v22 = sub_3C0614(v18, v130, 1);
    if (v22)
    {
      v23 = &v22[-*v22];
      if (*v23 >= 0xFu)
      {
        if (*(v23 + 7))
        {
          v24 = &v22[*(v23 + 7) + *&v22[*(v23 + 7)]];
          if (*v24 > HIDWORD(v19))
          {
            v25 = &v24[4 * HIDWORD(v19) + 4 + *&v24[4 * HIDWORD(v19) + 4]];
            v26 = &v25[-*v25];
            if (*v26 >= 5u)
            {
              v27 = *(v26 + 2);
              if (v27)
              {
                v28 = &v25[v27 + *&v25[v27]];
                v29 = v20 + *(v18 + 3872) * v21;
                if (v29 < *v28 && v28[v29 + 1] != -1)
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  if (!v14)
  {
    goto LABEL_26;
  }

  v31 = sub_101E790(*(a1 + 24), v14, 1);
  if (!v31 || (v32 = &v31[-*v31], *v32 < 9u) || (v33 = *(v32 + 4)) == 0)
  {
    v37 = -1;
    goto LABEL_27;
  }

  v34 = sub_101E640(&v31[v33 + *&v31[v33]], HIDWORD(v14));
  v35 = (v34 - *v34);
  if (*v35 < 5u || (v36 = v35[2]) == 0)
  {
LABEL_26:
    v37 = 0;
    goto LABEL_27;
  }

  v37 = *(v34 + v36);
LABEL_27:
  v38 = 0xCCCCCCCCCCCCCCCDLL * ((a6[1] - *a6) >> 3);
  v39 = (v37 + 1);
  if (v39 > v38)
  {
    sub_1064374(a6, v39 - v38);
  }

  v40 = (HIDWORD(v130) + (v130 << 6) + (v130 >> 2) + 2654435769u) ^ v130;
  v41 = (v131 + (v40 << 6) + (v40 >> 2) + 2654435769u) ^ v40;
  v42 = (v132 + (v41 << 6) + (v41 >> 2) + 2654435769u) ^ v41;
  v43 = (v133 + (v42 << 6) + (v42 >> 2) + 2654435769u) ^ v42;
  v44 = (v134 + (v43 << 6) + (v43 >> 2) + 2654435769u) ^ v43;
  v45 = (v135 + (v44 << 6) + (v44 >> 2) + 2654435769u) ^ v44;
  v46 = (v136 + (v45 << 6) + (v45 >> 2) + 2654435769u) ^ v45;
  v47 = (v137 + (v46 << 6) + (v46 >> 2) + 2654435769u) ^ v46;
  v48 = (*(*(a1 + 80) + 16) + 272 * (bswap64(v47) % **(a1 + 80)));
  v138 = &v130;
  v139 = v47;
  sub_1068DA8(v48, &v138, v127);
  v49 = v128;
  v50 = v127[1];
  if (v127[1] && !atomic_fetch_add(v127[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v50->__on_zero_shared)(v50);
    std::__shared_weak_count::__release_weak(v50);
    if (v49)
    {
      return v49 ^ 1u;
    }
  }

  else if (v49)
  {
    return v49 ^ 1u;
  }

  v128 = 0u;
  v129 = 0u;
  *v127 = 0u;
  sub_1064544(v127);
  v51 = ((*(&v129 + 1) + v129) * 0x8060180601806019) >> 64;
  v52 = (v51 + ((*(&v129 + 1) + v129 - v51) >> 1)) >> 8;
  v53 = *(v127[1] + v52) + 12 * (*(&v129 + 1) + v129 - 341 * v52);
  *v53 = v14;
  *(v53 + 8) = v37;
  __p = 0;
  v125 = 0;
  v126 = 0;
  v54 = __CFADD__(*(&v129 + 1), 1);
  v55 = ++*(&v129 + 1);
  if (v54)
  {
    goto LABEL_73;
  }

  v105 = v49;
  do
  {
    v56 = *(v127[1] + v129 / 0x155) + 12 * (v129 % 0x155);
    v57 = *(v56 + 8);
    v122 = *v56;
    v123 = v57;
    *&v129 = v129 + 1;
    *(&v129 + 1) = v55 - 1;
    if (v129 >= 0x2AA)
    {
      operator delete(*v127[1]);
      v127[1] = v127[1] + 8;
      *&v129 = v129 - 341;
    }

    v58 = v123;
    if (!sub_3A8760((*a6 + 40 * v123), &v122))
    {
      sub_10664DC((*a6 + 40 * v58), &v122, &v122);
      if (v58 != 1)
      {
        v138 = v122;
        sub_1066854(*(a1 + 24), &v138, &__p);
        v59 = __p;
        v111 = v125;
        if (__p != v125)
        {
          v108 = v58 - 1;
          do
          {
            v61 = *(a1 + 18);
            v62 = *(a1 + 16);
            v63 = *(a1 + 72);
            v64 = *(a1 + 8);
            v65 = sub_10AC56C();
            v66 = sub_394BD0();
            v67 = sub_394BD0();
            if (v66)
            {
              v68 = v109;
            }

            else
            {
              v68 = 0x7FFFFFFF;
            }

            v69 = *v112;
            if (v67)
            {
              v70 = v109;
            }

            else
            {
              v70 = 0x7FFFFFFF;
            }

            v138 = *v59;
            v139 = __PAIR64__(v65, v69);
            v140 = v68;
            v141 = v70;
            v142 = v113;
            v143 = v61;
            v144 = v62;
            v145 = 0;
            v146 = 0x7FFFFFFF;
            sub_106826C(&v138, v63, v64, &v114);
            v71 = *(a1 + 8);
            v72 = sub_FC1BE4(*(a1 + 72), v115);
            if (v119)
            {
              v73 = 0;
            }

            else
            {
              v73 = v72;
            }

            if (!v73 || (v74 = v114, v75 = v115, v76 = v120, (v77 = sub_3C0614(v71, v114, 1)) == 0) || (v78 = &v77[-*v77], *v78 < 0xFu) || !*(v78 + 7) || (v79 = &v77[*(v78 + 7) + *&v77[*(v78 + 7)]], *v79 <= HIDWORD(v74)) || (v80 = &v79[4 * HIDWORD(v74) + 4 + *&v79[4 * HIDWORD(v74) + 4]], v81 = &v80[-*v80], *v81 < 5u) || (v82 = *(v81 + 2)) == 0 || (v83 = &v80[v82 + *&v80[v82]], v84 = v75 + *(v71 + 3872) * v76, v84 >= *v83) || v83[v84 + 1] == -1)
            {
              v85 = (HIDWORD(v114) + 2654435769 + (v114 << 6) + (v114 >> 2)) ^ v114;
              v86 = (v115 + 2654435769 + (v85 << 6) + (v85 >> 2)) ^ v85;
              v87 = (v116 + 2654435769 + (v86 << 6) + (v86 >> 2)) ^ v86;
              v88 = (v117 + 2654435769 + (v87 << 6) + (v87 >> 2)) ^ v87;
              v89 = (v118 + 2654435769 + (v88 << 6) + (v88 >> 2)) ^ v88;
              v90 = (v119 + 2654435769 + (v89 << 6) + (v89 >> 2)) ^ v89;
              v91 = (v120 + 2654435769 + (v90 << 6) + (v90 >> 2)) ^ v90;
              v92 = (v121 + 2654435769 + (v91 << 6) + (v91 >> 2)) ^ v91;
              v93 = (*(*(a1 + 80) + 16) + 272 * (bswap64(v92) % **(a1 + 80)));
              v147[0] = &v114;
              v147[1] = v92;
              sub_1068DA8(v93, v147, &v138);
              v94 = v140;
              v95 = v139;
              if (v139 && !atomic_fetch_add((v139 + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v95->__on_zero_shared)(v95);
                std::__shared_weak_count::__release_weak(v95);
                if ((v94 & 1) == 0)
                {
LABEL_64:
                  v96 = v127[1];
                  if (v128 == v127[1])
                  {
                    v97 = 0;
                  }

                  else
                  {
                    v97 = 341 * ((v128 - v127[1]) >> 3) - 1;
                  }

                  v98 = *(&v129 + 1) + v129;
                  if (v97 == *(&v129 + 1) + v129)
                  {
                    sub_1064544(v127);
                    v96 = v127[1];
                    v98 = *(&v129 + 1) + v129;
                  }

                  v60 = v96[v98 / 0x155] + 12 * (v98 % 0x155);
                  *v60 = *v59;
                  *(v60 + 8) = v108;
                  ++*(&v129 + 1);
                }
              }

              else if ((v94 & 1) == 0)
              {
                goto LABEL_64;
              }
            }

            ++v59;
          }

          while (v59 != v111);
        }
      }
    }

    v55 = *(&v129 + 1);
  }

  while (*(&v129 + 1));
  v49 = v105;
  if (__p)
  {
    v125 = __p;
    operator delete(__p);
  }

LABEL_73:
  v99 = v127[1];
  v100 = v128;
  *(&v129 + 1) = 0;
  v101 = (v128 - v127[1]) >> 3;
  if (v101 >= 3)
  {
    do
    {
      operator delete(*v99);
      v100 = v128;
      v99 = (v127[1] + 8);
      v127[1] = v99;
      v101 = (v128 - v99) >> 3;
    }

    while (v101 > 2);
  }

  if (v101 == 1)
  {
    v102 = 170;
LABEL_81:
    *&v129 = v102;
  }

  else if (v101 == 2)
  {
    v102 = 341;
    goto LABEL_81;
  }

  if (v99 != v100)
  {
    do
    {
      v103 = *v99++;
      operator delete(v103);
    }

    while (v99 != v100);
    if (v128 != v127[1])
    {
      *&v128 = v128 + ((v127[1] - v128 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v127[0])
  {
    operator delete(v127[0]);
  }

  return v49 ^ 1u;
}

void sub_1063BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_49CAC(va);
  _Unwind_Resume(a1);
}

void sub_1063BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (__p)
  {
    operator delete(__p);
  }

  sub_49CAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1063C18(uint64_t a1, uint64_t a2, unsigned int *a3, int a4, char a5)
{
  if (a2 && (v10 = sub_101E790(*(a1 + 24), a2, 1)) != 0 && (v11 = &v10[-*v10], *v11 >= 9u) && (v12 = *(v11 + 4)) != 0 && (v13 = sub_101E640(&v10[v12 + *&v10[v12]], HIDWORD(a2)), v14 = (v13 - *v13), *v14 >= 5u) && (v15 = v14[2]) != 0 && *(v13 + v15) && ((v45 = *(a1 + 16), v46 = *(a1 + 18), v47 = *(a1 + 8), v48 = *(a1 + 72), v16 = sub_10AC56C(), !sub_394BD0()) ? (v17 = 0x7FFFFFFF) : (v17 = a4), (v18 = sub_394BD0(), v19 = *a3, !v18) ? (v20 = 0x7FFFFFFF) : (v20 = a4), (v57 = a2, v58 = __PAIR64__(v16, v19), v59 = v17, v60 = v20, v61 = a5, v62 = v46, v63 = v45, v64 = 0, v65 = 0x7FFFFFFF, sub_106826C(&v57, v48, v47, &v49), v21 = *(a1 + 8), !sub_FC1BE4(*(a1 + 72), v50)) || v54 || (v22 = v49, v23 = v50, v24 = v55, (v25 = sub_3C0614(v21, v49, 1)) == 0) || (v26 = &v25[-*v25], *v26 < 0xFu) || !*(v26 + 7) || (v27 = &v25[*(v26 + 7) + *&v25[*(v26 + 7)]], *v27 <= HIDWORD(v22)) || (v28 = &v27[4 * HIDWORD(v22) + 4 + *&v27[4 * HIDWORD(v22) + 4]], v29 = &v28[-*v28], *v29 < 5u) || (v30 = *(v29 + 2)) == 0 || (v31 = &v28[v30 + *&v28[v30]], v32 = v23 + *(v21 + 3872) * v24, v32 >= *v31) || v31[v32 + 1] == -1))
  {
    v35 = (HIDWORD(v49) + (v49 << 6) + (v49 >> 2) + 2654435769u) ^ v49;
    v36 = (v50 + (v35 << 6) + (v35 >> 2) + 2654435769u) ^ v35;
    v37 = (v51 + (v36 << 6) + (v36 >> 2) + 2654435769u) ^ v36;
    v38 = (v52 + (v37 << 6) + (v37 >> 2) + 2654435769u) ^ v37;
    v39 = (v53 + (v38 << 6) + (v38 >> 2) + 2654435769u) ^ v38;
    v40 = (v54 + (v39 << 6) + (v39 >> 2) + 2654435769u) ^ v39;
    v41 = (v55 + (v40 << 6) + (v40 >> 2) + 2654435769u) ^ v40;
    v42 = (v56 + (v41 << 6) + (v41 >> 2) + 2654435769u) ^ v41;
    v43 = (*(*(a1 + 80) + 16) + 272 * (bswap64(v42) % **(a1 + 80)));
    v66[0] = &v49;
    v66[1] = v42;
    sub_1068DA8(v43, v66, &v57);
    v33 = v59 ^ 1;
    v44 = v58;
    if (v58 && !atomic_fetch_add((v58 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v44->__on_zero_shared)(v44);
      std::__shared_weak_count::__release_weak(v44);
    }
  }

  else
  {
    v33 = 0;
  }

  return v33 & 1;
}

char *sub_1063F90(uint64_t *a1, char *__src, void *a3, void *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a1[1];
  v6 = a1[2];
  if (a5 > (v6 - v7) >> 3)
  {
    v8 = *a1;
    v9 = a5 + ((v7 - *a1) >> 3);
    if (v9 >> 61)
    {
      sub_1794();
    }

    v10 = v6 - v8;
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

    v12 = 8 * ((__src - v8) >> 3);
    v32 = 8 * a5;
    v33 = v12 + 8 * a5;
    v34 = v12;
    do
    {
      *v34++ = a3[2];
      a3 = *a3;
      v32 -= 8;
    }

    while (v32);
    v35 = a1[1] - __src;
    memcpy((v12 + 8 * a5), __src, v35);
    v37 = v33 + v35;
    a1[1] = __src;
    v38 = *a1;
    v39 = &__src[-*a1];
    v40 = v12 - v39;
    memcpy((v12 - v39), *a1, v39);
    *a1 = v40;
    a1[1] = v37;
    a1[2] = 0;
    if (v38)
    {
      operator delete(v38);
      return v12;
    }

    return v12;
  }

  v13 = (v7 - __src) >> 3;
  if (v13 >= a5)
  {
    v18 = a5;
    v19 = &__src[8 * a5];
    v20 = (v7 - 8 * a5);
    if (v20 >= v7)
    {
      v24 = a1[1];
    }

    else
    {
      v21 = v20 + 1;
      if (v7 > (v20 + 1))
      {
        v21 = a1[1];
      }

      v22 = &v21[v18] + ~v7;
      v23 = v22 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v24 = a1[1];
      if (v23)
      {
        goto LABEL_69;
      }

      v25 = (v22 >> 3) + 1;
      v26 = 8 * (v25 & 0x3FFFFFFFFFFFFFFCLL);
      v20 = (v20 + v26);
      v24 = (v7 + v26);
      v27 = (v7 + 16);
      v28 = (v7 + 16 - v18 * 8);
      v29 = v25 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v30 = *v28;
        *(v27 - 1) = *(v28 - 1);
        *v27 = v30;
        v27 += 2;
        v28 += 2;
        v29 -= 4;
      }

      while (v29);
      if (v25 != (v25 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_69:
        do
        {
          v31 = *v20++;
          *v24++ = v31;
        }

        while (v20 < v7);
      }
    }

    a1[1] = v24;
    if (v7 != v19)
    {
      v57 = a3;
      v58 = a5;
      memmove(v19, __src, v7 - v19);
      a5 = v58;
      a3 = v57;
    }

    *__src = a3[2];
    if (a5 != 1)
    {
      v59 = __src + 8;
      v60 = a5 + 1;
      do
      {
        a3 = *a3;
        *v59 = a3[2];
        v59 += 8;
        --v60;
      }

      while (v60 > 2);
    }
  }

  else
  {
    v14 = a3;
    if (v13 >= 1)
    {
      v15 = v13 + 1;
      v14 = a3;
      do
      {
        v14 = *v14;
        --v15;
      }

      while (v15 > 1);
    }

    v16 = a1[1];
    if (v14 == a4)
    {
      v17 = a1[1];
    }

    else
    {
      v42 = v14;
      v17 = a1[1];
      do
      {
        *v17 = v42[2];
        v17 += 8;
        v42 = *v42;
        v16 += 8;
      }

      while (v42 != a4);
    }

    a1[1] = v16;
    if (v13 >= 1)
    {
      v43 = a5;
      v44 = &__src[8 * a5];
      v45 = (v16 - 8 * a5);
      if (v45 >= v7)
      {
        v49 = v16;
      }

      else
      {
        v46 = v45 + 1;
        if (v7 > (v45 + 1))
        {
          v46 = v7;
        }

        v47 = &v46[v43] + ~v16;
        v48 = v47 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
        v49 = v16;
        if (v48)
        {
          goto LABEL_70;
        }

        v50 = (v47 >> 3) + 1;
        v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
        v45 = (v45 + v51);
        v49 = (v16 + v51);
        v52 = (v16 + 16);
        v53 = (v16 + 16 - v43 * 8);
        v54 = v50 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v55 = *v53;
          *(v52 - 1) = *(v53 - 1);
          *v52 = v55;
          v52 += 2;
          v53 += 2;
          v54 -= 4;
        }

        while (v54);
        if (v50 != (v50 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_70:
          do
          {
            v56 = *v45++;
            *v49++ = v56;
          }

          while (v45 < v7);
        }
      }

      a1[1] = v49;
      if (v17 != v44)
      {
        v61 = a3;
        memmove(&__src[8 * a5], __src, v16 - v44);
        a3 = v61;
      }

      if (v14 != a3)
      {
        v62 = __src;
        do
        {
          *v62 = a3[2];
          v62 += 8;
          a3 = *a3;
        }

        while (a3 != v14);
      }
    }
  }

  return __src;
}

void sub_1064374(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 3) >= a2)
  {
    if (a2)
    {
      v8 = v2 + 40 * a2;
      do
      {
        *v2 = 0uLL;
        *(v2 + 16) = 0uLL;
        *(v2 + 32) = 1065353216;
        v2 += 40;
      }

      while (v2 != v8);
      v2 = v8;
    }

    a1[1] = v2;
  }

  else
  {
    v4 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - *a1) >> 3);
    v5 = v4 + a2;
    if (v4 + a2 > 0x666666666666666)
    {
      sub_1794();
    }

    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x333333333333333)
    {
      v7 = 0x666666666666666;
    }

    else
    {
      v7 = v5;
    }

    v20 = a1;
    if (v7)
    {
      if (v7 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v9 = 40 * v4;
    __p = 0;
    v17 = 40 * v4;
    v19 = 0;
    do
    {
      *v9 = 0uLL;
      *(v9 + 16) = 0uLL;
      *(v9 + 32) = 1065353216;
      v9 += 40;
    }

    while (v9 != 40 * v4 + 40 * a2);
    v18 = 40 * v4 + 40 * a2;
    sub_475A58(a1, &__p);
    v10 = v17;
    while (1)
    {
      v11 = v18;
      if (v18 == v10)
      {
        break;
      }

      v12 = (v18 - 40);
      v18 -= 40;
      v13 = *(v11 - 24);
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

      v15 = *v12;
      *v12 = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_1064530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_475B9C(va);
  _Unwind_Resume(a1);
}

void sub_1064544(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x155;
  v3 = v1 - 341;
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

void sub_10648B4(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_106490C(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0uLL;
  v3 = *(result + 8);
  *result = v2;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t sub_1064990@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 1);
  *a4 = *a1;
  *(a4 + 16) = v8;
  *(a4 + 32) = *(a1 + 8);
  v9 = sub_FC17C8(a2, a1 + 2);
  *(a4 + 12) = 0x8000000080000000;
  *(a4 + 20) = 0x7FFFFFFF;
  v10 = *(a1 + 13);
  if (v10 && (v11 = *a1, (v12 = sub_1055EF8(a3, *a1, 1)) != 0) && (v13 = &v12[-*v12], *v13 >= 5u) && *(v13 + 2) && (v14 = &v12[*(v13 + 2) + *&v12[*(v13 + 2)]], *v14 > HIDWORD(v11)))
  {
    v15 = &v14[4 * HIDWORD(v11) + 4 + *&v14[4 * HIDWORD(v11) + 4]];
    v16 = &v15[-*v15];
    if (*v16 >= 7u && (v17 = *(v16 + 3)) != 0)
    {
      v18 = v15[v17];
    }

    else
    {
      v18 = 0;
    }

    if ((v18 & (1 << v10)) != 0)
    {
      v19 = *(a1 + 13);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  *(a4 + 26) = v19;
  *(a4 + 24) = 0;
  *(a4 + 28) = 0;
  v20 = *a1;
  v21 = sub_1055EF8(a3, v20, 1);
  if (v21 && (v22 = &v21[-*v21], *v22 >= 5u) && *(v22 + 2) && (v23 = &v21[*(v22 + 2) + *&v21[*(v22 + 2)]], *v23 > HIDWORD(v20)) && (v24 = &v23[4 * HIDWORD(v20) + 4 + *&v23[4 * HIDWORD(v20) + 4]], v25 = &v24[-*v24], *v25 >= 5u) && (v26 = *(v25 + 2)) != 0)
  {
    v27 = *&v24[v26];
  }

  else
  {
    v27 = 0;
  }

  v29 = v27;
  result = sub_FC1B44(a2, *v9, &v29);
  *(a4 + 8) = result;
  return result;
}

uint64_t sub_1064B60(uint64_t a1, unsigned int *a2)
{
  v2 = 0;
  v3 = *a2;
  v4 = a2[1];
  v5 = (v4 + (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
  v6 = *(a2 + 8);
  v7 = (v6 + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v8 = *(a2 + 9);
  v9 = (v8 + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  v10 = -1;
  while (1)
  {
    v11 = v9 & (*(a1 + 64) - 1);
    v12 = *(a1 + 88) + 16 * v11;
    v13 = *v12;
    if (*(a1 + 72) == *v12 && *(a1 + 76) == *(v12 + 4) && *(v12 + 8) == *(a1 + 80) && *(a1 + 81) == *(v12 + 9))
    {
      break;
    }

    if (*(a1 + 48) && *(a1 + 32) == v13 && *(a1 + 36) == *(v12 + 4) && *(v12 + 8) == *(a1 + 40) && *(a1 + 41) == *(v12 + 9))
    {
      if (v10 == -1)
      {
        v10 = v11;
      }
    }

    else if (v3 == v13 && v4 == *(v12 + 4) && *(v12 + 8) == v6 && v8 == *(v12 + 9))
    {
      return v11;
    }

    v9 = ++v2 + v11;
  }

  return -1;
}