void sub_10009CE78(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009CF0C(void *result, unint64_t a2)
{
  v3 = result[1];
  v4 = (v3 - *result) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *result + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      result[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_10009EDE4(result, v5);
  }
}

void sub_10009CFBC(uint64_t a1)
{
  sub_1000AF040(a1);

  operator delete();
}

void *sub_10009D0E4(void *a1)
{
  *a1 = off_1001036F0;
  v2 = a1[3];
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10009D130(void *a1)
{
  *a1 = off_1001036F0;
  v1 = a1[3];
  if (v1)
  {
    operator delete(v1);
  }

  operator delete();
}

void sub_10009D1A4(uint64_t result, int a2)
{
  v3 = *(result + 16);
  v4 = *(result + 20);
  if (v3 > v4)
  {
    *(result + 20) = a2;
LABEL_3:
    *(result + 16) = a2;
    goto LABEL_7;
  }

  if (v4 >= a2)
  {
    if (v3 > a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(result + 20) = a2;
  }

LABEL_7:
  v5 = a2;
  while (*(result + 32) <= v5)
  {
    v6 = 0;
    sub_10002C87C(result + 24, &v6);
  }

  *(*(result + 24) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
}

uint64_t sub_10009D248(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 20);
  v3 = *(result + 16);
  *(v1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v3);
  if (v3 <= v2)
  {
    v4 = v2 - v3 + 1;
    v5 = v3 + 1;
    do
    {
      if ((*(v1 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
      {
        break;
      }

      ++v3;
      *(result + 16) = v5++;
      --v4;
    }

    while (v4);
  }

  return result;
}

double sub_10009D2C4(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = *(a1 + 16);
  if (v2 <= v1)
  {
    v3 = *(a1 + 24);
    v4 = v1 - v2 + 1;
    do
    {
      *(v3 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v2);
      ++v2;
      --v4;
    }

    while (v4);
  }

  result = NAN;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  return result;
}

void sub_10009D314(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = off_100103758;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = 0;
  v2[0] = a1 + 24;
  v2[1] = &v3;
  v2[2] = 0;
  sub_10009D4E8(a2, v2, 0);
}

void sub_10009D474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    sub_10002BE48(v23 + 16, a21);
  }

  v25 = v21[6];
  if (v25)
  {
    v21[7] = v25;
    operator delete(v25);
  }

  v26 = *v22;
  if (*v22)
  {
    v21[4] = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009DCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a16)
  {
    (*(*a16 + 8))(a16, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10002C1E4(&a23);
  sub_10002CC3C(&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void sub_10009DDBC(void *result, unint64_t a2, int *a3)
{
  v3 = (result[1] - *result) >> 2;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    sub_10009E088(result, a2 - v3, a3);
  }
}

void sub_10009DDF0(void *a1)
{
  sub_10009E2D0(a1);

  operator delete();
}

uint64_t sub_10009DE38(uint64_t result, int a2)
{
  v2 = *(result + 16);
  v3 = *(result + 20);
  v4 = *(result + 24);
  v5 = *(v4 + 4 * a2);
  if (v2 <= v3)
  {
    if (v5 > v3)
    {
      *(result + 20) = v5;
      goto LABEL_7;
    }

    if (v5 >= v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(result + 20) = v5;
  }

  *(result + 16) = v5;
LABEL_7:
  *(*(result + 48) + 4 * *(v4 + 4 * a2)) = a2;
  return result;
}

uint64_t sub_10009DE80(uint64_t result)
{
  v1 = *(result + 48);
  *(v1 + 4 * *(result + 16)) = -1;
  v2 = *(result + 20);
  v3 = *(result + 16);
  if (v3 <= v2)
  {
    v4 = (v1 + 4 * v3);
    v5 = v2 - v3 + 1;
    v6 = v3 + 1;
    do
    {
      v7 = *v4++;
      if (v7 != -1)
      {
        break;
      }

      *(result + 16) = v6++;
      --v5;
    }

    while (v5);
  }

  return result;
}

double sub_10009DEE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= *(a1 + 20))
  {
    v2 = v1 - 1;
    v3 = (*(a1 + 48) + 4 * v1);
    do
    {
      *v3++ = -1;
      ++v2;
    }

    while (v2 < *(a1 + 20));
  }

  result = NAN;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  return result;
}

void sub_10009DF88(uint64_t **a1)
{
  if (*a1[1])
  {
    (*a1)[1] = **a1;
    v3 = a1 + 2;
    v2 = a1[2];
    if (v2[1] == *v2)
    {
      goto LABEL_13;
    }

    v4 = 0;
    do
    {
      sub_10002C79C(*a1, &dword_1000D4FEC);
      ++v4;
      v2 = a1[2];
      v5 = (v2[1] - *v2) >> 2;
    }

    while (v5 > v4);
    if (!v5)
    {
LABEL_13:
      *v3 = 0;
      goto LABEL_14;
    }

    v6 = 0;
    v7 = **a1;
    v8 = (v2[1] - 4);
    do
    {
      v9 = *v8--;
      *(v7 + 4 * v9) = v6++;
    }

    while (v5 != v6);
  }

  else
  {
    v2 = a1[2];
  }

  a1[2] = 0;
  v10 = a1 + 2;
  if (!v2)
  {
    return;
  }

  v3 = v10;
LABEL_14:

  sub_10002BE48(v3, v2);
}

void sub_10009E088(uint64_t a1, unint64_t a2, int *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 2)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 4 * a2;
      v17 = *a3;
      v18 = v14 + 4;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1000D1170)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1000D1160)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_100017658();
    }

    v9 = v7 >> 2;
    v10 = v5 - *a1;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_10002C924(a1, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = 4 * v9 + 4 * a2;
    v25 = *a3;
    v26 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1000D1170)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1000D1160)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = *(a1 + 8) - *a1;
    v33 = v23 - v32;
    memcpy((v23 - v32), *a1, v32);
    v34 = *a1;
    *a1 = v33;
    *(a1 + 8) = v24;
    *(a1 + 16) = 0;
    if (v34)
    {

      operator delete(v34);
    }
  }
}

void *sub_10009E2D0(void *a1)
{
  *a1 = off_100103758;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void *sub_10009E330(void *a1)
{
  *a1 = off_1001037C0;
  sub_10009E4D4(a1 + 2);
  return a1;
}

void sub_10009E374(void *a1)
{
  *a1 = off_1001037C0;
  sub_10009E4D4(a1 + 2);

  operator delete();
}

void sub_10009E458(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  a1[7] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[4];
      v2 = (a1[3] + 8);
      a1[3] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 1024;
  }

  a1[6] = v6;
}

uint64_t sub_10009E4D4(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_100025838(a1);
}

void sub_10009E580(uint64_t result, _DWORD *a2)
{
  v4 = *(result + 32);
  if (!v4)
  {
    sub_10009E600(result);
    v4 = *(result + 32);
  }

  v5 = *(result + 8);
  v6 = (v5 + 8 * (v4 >> 10));
  if (*(result + 16) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 4 * (v4 & 0x3FF);
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 4) = *a2;
  v8 = *(result + 40) + 1;
  *(result + 32) = v4 - 1;
  *(result + 40) = v8;
}

void sub_10009E600(const void **a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 7) - 1;
  }

  v5 = a1[4];
  if ((v4 - (a1[5] + v5)) < 0x400)
  {
    v6 = a1[3];
    v7 = *a1;
    v8 = v6 - *a1;
    if (v3 < v8)
    {
      if (v1 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v10[4] = a1;
    sub_10009EB64(a1, v9);
  }

  a1[4] = (v5 + 1024);
  v10[0] = *(v2 - 8);
  a1[2] = (v2 - 8);
  sub_10009E848(a1, v10);
}

void sub_10009E7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10009E848(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10009EB64(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_10009E954(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_10009EB64(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_10009EA5C(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_10009EB64(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_10009EB64(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100016D60();
}

uint64_t sub_10009EBAC(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

uint64_t *sub_10009EC0C(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_10002EC8C(a1, a2);
  }

  return a1;
}

void sub_10009EC68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10009EC84(uint64_t a1, float *a2, float *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 == *a3)
  {
    return 0;
  }

  if (v3 == -INFINITY || v4 >= -INFINITY && v4 <= -INFINITY)
  {
    v4 = *sub_1000777A0(a1, a2);
    v3 = *a2;
  }

  else if (v3 < v4)
  {
    v4 = *a2;
  }

  return v4 == v3;
}

uint64_t sub_10009ED28(uint64_t a1, const void **a2)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = off_100103758;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_1000AF0D8((a1 + 24), *a2, a2[1], (a2[1] - *a2) >> 2);
  sub_10002EB78((a1 + 48), (a2[1] - *a2) >> 2, &dword_1000D4FEC);
  return a1;
}

void sub_10009EDC8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009EDE4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_100017658();
    }

    v9 = v4 - v6;
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

    v14[4] = a1;
    if (v10)
    {
      sub_100017670(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    sub_10009EF08(v14);
  }
}

uint64_t sub_10009EF08(uint64_t a1)
{
  sub_10009EF40(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_10009EF40(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_10009EFB8(void *a1)
{
  sub_10009F04C(a1);

  operator delete();
}

void *sub_10009F04C(void *a1)
{
  *a1 = off_100103828;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    a1[5] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_10009F0CC(uint64_t a1, int *a2)
{
  v4 = *(a1 + 88);
  v5 = (a1 + 88);
  v8 = *(a1 + 64);
  v6 = (a1 + 64);
  v7 = v8;
  if (v4 >= (*(v5 - 2) - v8) >> 2)
  {
    sub_10002C79C(v6, a2);
    sub_10002C79C((a1 + 16), v5);
    sub_10002C79C((a1 + 40), v5);
    LODWORD(v9) = *(a1 + 88);
  }

  else
  {
    *(v7 + 4 * v4) = *a2;
    v9 = *(a1 + 88);
    *(*(a1 + 16) + 4 * *(*(a1 + 40) + 4 * v9)) = v9;
  }

  *(a1 + 88) = v9 + 1;

  return sub_10009F17C(a1, a2, v9);
}

uint64_t sub_10009F17C(uint64_t a1, int *a2, int a3)
{
  v3 = a3;
  if (a3 >= 1)
  {
    v6 = *(a1 + 64);
    while (1)
    {
      v7 = v3 - 1;
      v8 = (v3 - 1) >> 1;
      if (sub_10009EC84(*(a1 + 8), (**a1 + 4 * *(v6 + 4 * v8)), (**a1 + 4 * *a2)))
      {
        break;
      }

      v9 = *(a1 + 40);
      v10 = *(v9 + 4 * v3);
      v11 = *(v9 + 4 * v8);
      *(v9 + 4 * v3) = v11;
      v12 = *(a1 + 16);
      *(v12 + 4 * v11) = v3;
      *(v9 + 4 * v8) = v10;
      *(v12 + 4 * v10) = v8;
      v6 = *(a1 + 64);
      LODWORD(v10) = *(v6 + 4 * v3);
      *(v6 + 4 * v3) = *(v6 + 4 * v8);
      *(v6 + 4 * v8) = v10;
      v3 = v7 >> 1;
      if (v7 <= 1)
      {
        return *(*(a1 + 40) + 4 * v8);
      }
    }
  }

  v8 = v3;
  return *(*(a1 + 40) + 4 * v8);
}

uint64_t sub_10009F238(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *v1;
  v3 = *(a1 + 88) - 1;
  v4 = *(a1 + 40);
  v5 = *v4;
  v6 = v4[v3];
  *v4 = v6;
  v7 = *(a1 + 16);
  *(v7 + 4 * v6) = 0;
  v4[v3] = v5;
  *(v7 + 4 * v5) = v3;
  LODWORD(v4) = *v1;
  *v1 = v1[v3];
  v1[v3] = v4;
  --*(a1 + 88);
  sub_10009F2AC(a1, 0);
  return v2;
}

BOOL sub_10009F2AC(_BOOL8 result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = (2 * a2) | 1u;
    if (v4 >= *(v3 + 88) || !(result = sub_10009EC84(*(v3 + 8), (**v3 + 4 * *(*(v3 + 64) + 4 * v4)), (**v3 + 4 * *(*(v3 + 64) + 4 * a2)))))
    {
      v4 = a2;
    }

    v5 = 2 * a2 + 2;
    if (v5 < *(v3 + 88))
    {
      result = sub_10009EC84(*(v3 + 8), (**v3 + 4 * *(*(v3 + 64) + 4 * v5)), (**v3 + 4 * *(*(v3 + 64) + 4 * v4)));
      if (result)
      {
        v4 = v5;
      }

      else
      {
        v4 = v4;
      }
    }

    if (v4 == a2)
    {
      break;
    }

    v6 = *(v3 + 40);
    v7 = *(v6 + 4 * a2);
    v8 = *(v6 + 4 * v4);
    *(v6 + 4 * a2) = v8;
    v9 = *(v3 + 16);
    *(v9 + 4 * v8) = a2;
    *(v6 + 4 * v4) = v7;
    *(v9 + 4 * v7) = v4;
    v10 = *(v3 + 64);
    LODWORD(v7) = *(v10 + 4 * a2);
    *(v10 + 4 * a2) = *(v10 + 4 * v4);
    *(v10 + 4 * v4) = v7;
    a2 = v4;
  }

  return result;
}

void *sub_10009F394(void *a1)
{
  *a1 = off_100103890;
  sub_10009E4D4(a1 + 2);
  return a1;
}

void sub_10009F3D8(void *a1)
{
  *a1 = off_100103890;
  sub_10009E4D4(a1 + 2);

  operator delete();
}

void sub_10009F4BC(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  a1[7] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[4];
      v2 = (a1[3] + 8);
      a1[3] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 1024;
  }

  a1[6] = v6;
}

uint64_t sub_10009F538(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 7) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x400)
  {
    a2 = 1;
  }

  if (v5 < 0x800)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *sub_10009F5A8(void *a1)
{
  *a1 = off_1001038F8;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10009F5F8(void *a1)
{
  *a1 = off_1001038F8;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_10009F668(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 <= *(a1 + 36))
  {
    while (1)
    {
      v4 = *(**(a1 + 16) + 8 * v2);
      if (v4)
      {
        v5 = (*(*v4 + 48))(v4);
        v3 = *(a1 + 32);
        if (v5)
        {
          goto LABEL_10;
        }

        v6 = v3;
        if (*(**(a1 + 16) + 8 * v3))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v6 = v2;
        v3 = v2;
      }

      v7 = *(a1 + 40);
      if (v6 < (*(a1 + 48) - v7) >> 2 && *(v7 + 4 * v6) != -1)
      {
        goto LABEL_11;
      }

LABEL_10:
      v2 = v3 + 1;
      *(a1 + 32) = v3 + 1;
      if (v3++ >= *(a1 + 36))
      {
        goto LABEL_11;
      }
    }
  }

  v3 = *(a1 + 32);
LABEL_11:
  v9 = *(**(a1 + 16) + 8 * v3);
  if (!v9)
  {
    return *(*(a1 + 40) + 4 * v3);
  }

  v10 = *(*v9 + 16);

  return v10();
}

void sub_10009F780(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = **(a1 + 24);
  v7 = *(v6 + 4 * a2);
  if (v4 > v5)
  {
    *(a1 + 36) = v7;
LABEL_3:
    *(a1 + 32) = v7;
    goto LABEL_7;
  }

  if (v7 <= v5)
  {
    if (v7 < v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 36) = v7;
  }

LABEL_7:
  v8 = *(v6 + 4 * a2);
  v9 = *(**(a1 + 16) + 8 * v8);
  if (v9)
  {
    v10 = *(*v9 + 24);

    v10();
  }

  else
  {
    for (i = *(a1 + 40); v8 >= (*(a1 + 48) - i) >> 2; v8 = *(**(a1 + 24) + 4 * a2))
    {
      sub_10002C79C((a1 + 40), &dword_1000D4FEC);
      i = *(a1 + 40);
    }

    *(i + 4 * v8) = a2;
  }
}

uint64_t sub_10009F888(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(**(a1 + 16) + 8 * v2);
  if (result)
  {
    return (*(*result + 32))();
  }

  v5 = a1 + 40;
  v4 = *(a1 + 40);
  if (v2 < (*(v5 + 8) - v4) >> 2)
  {
    *(v4 + 4 * v2) = -1;
  }

  return result;
}

uint64_t sub_10009F8E0(uint64_t a1, int a2)
{
  result = *(**(a1 + 16) + 8 * *(**(a1 + 24) + 4 * a2));
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_10009F920(uint64_t a1)
{
  v1 = *(a1 + 36);
  v2 = *(a1 + 32);
  if (v2 < v1)
  {
    return 0;
  }

  if (v2 > v1)
  {
    return 1;
  }

  v4 = *(**(a1 + 16) + 8 * v2);
  if (v4)
  {
    return (*(*v4 + 48))(*(**(a1 + 16) + 8 * v2));
  }

  v5 = *(a1 + 40);
  if (v2 >= (*(a1 + 48) - v5) >> 2)
  {
    return 1;
  }

  return *(v5 + 4 * v2) == -1;
}

double sub_10009F9A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 <= *(a1 + 36))
  {
    do
    {
      v3 = *(**(a1 + 16) + 8 * v2);
      if (v3)
      {
        (*(*v3 + 56))(v3);
      }

      else
      {
        v4 = *(a1 + 40);
        if (v2 < (*(a1 + 48) - v4) >> 2)
        {
          *(v4 + 4 * v2) = -1;
        }
      }
    }

    while (v2++ < *(a1 + 36));
  }

  result = NAN;
  *(a1 + 32) = 0xFFFFFFFF00000000;
  return result;
}

void sub_10009FA44(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10009FA98(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_10009FA98(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_10009FB04(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_10002C924(a1, a2);
    }

    sub_100017658();
  }
}

void sub_1000A03B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a16)
  {
    (*(*a16 + 8))(a16, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10002C1E4(&a23);
  sub_10002CC3C(&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void sub_1000A0478(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    sub_1000A1730(result, a2 - v2);
  }
}

void sub_1000A0CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10002C1E4(&a23);
  sub_10002CC3C(&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

int *sub_1000A0DA0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v11 = a2;
  *(a1 + 312) = *sub_10002B59C(a1, a2);
  *(a1 + 296) = *(a1 + 288);
  result = sub_1000A1860((a1 + 16), v2);
  if ((*(a1 + 156) & 1) == 0)
  {
    sub_1000A2598((a1 + 208), &v11);
    for (i = *(a1 + 248); i; i = *(a1 + 248))
    {
      v6 = i - 1;
      v7 = *(*(*(a1 + 216) + (((*(a1 + 240) + v6) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 240) + v6) & 0x3FF));
      *(a1 + 248) = v6;
      sub_10009F538((a1 + 208), 1);
      while (*(a1 + 264) <= v7)
      {
        LOBYTE(v10) = 0;
        sub_10002C87C(a1 + 256, &v10);
      }

      v8 = *(a1 + 256);
      v9 = *(v8 + 8 * (v7 >> 6));
      if ((v9 & (1 << v7)) == 0)
      {
        *(v8 + 8 * (v7 >> 6)) = v9 | (1 << v7);
        operator new();
      }
    }

    for (result = *(a1 + 280); result; result = *(a1 + 280))
    {
      *(*(a1 + 256) + ((result[2] >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << result[2]);
      *(a1 + 280) = *result;
      operator delete(result);
    }

    ++*(a1 + 316);
  }

  return result;
}

void sub_1000A12A8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _DWORD *a18)
{
  if (a15)
  {
    (*(*a15 + 8))(a15, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a18)
  {
    --*a18;
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1000A1310(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_10002CA28(a1, a2);
  }

  return a1;
}

void *sub_1000A13E4(void *a1)
{
  *a1 = off_100101040;
  a1[1] = off_100101068;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000A144C(void *a1)
{
  *a1 = off_100101040;
  a1[1] = off_100101068;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_1000A14D4(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    sub_1000A155C(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void sub_1000A155C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10002C638(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10007257C(a1, &v9);
}

void sub_1000A16E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000A1730(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_100017658();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_10002C924(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t sub_1000A1860(void *a1, int a2)
{
  if ((*(**a1 + 16))(*a1) == -1)
  {
    result = (*(**a1 + 56))(*a1, 4, 0);
    if (!result)
    {
      return result;
    }

    v89 = a1 + 140;
LABEL_115:
    *v89 = 1;
    return result;
  }

  v4 = (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    *(a1[1] + 8) = *a1[1];
    a1[6] = a1[5];
    a1[9] = a1[8];
    a1[12] = 0;
  }

  if (a2 == -1)
  {
    v4 = (*(**a1 + 16))();
    a2 = v4;
  }

  v6 = a2;
  while (1)
  {
    v7 = a1[1];
    if (v6 < (*(v7 + 8) - *v7) >> 2)
    {
      break;
    }

    v8 = sub_10002B59C(v4, v5);
    v9 = *(v7 + 8);
    if (v9 >= *(v7 + 16))
    {
      v10 = sub_1000A22F4(v7, v8);
    }

    else
    {
      *v9 = *v8;
      v10 = v9 + 1;
    }

    *(v7 + 8) = v10;
    v12 = *sub_10002B59C(v10, v8);
    LODWORD(v90) = v12;
    v13 = a1[6];
    if (v13 >= a1[7])
    {
      v14 = sub_1000A247C((a1 + 5), &v90);
    }

    else
    {
      *v13 = v12;
      v14 = (v13 + 1);
    }

    a1[6] = v14;
    v15 = *sub_10002B59C(v14, v11);
    LODWORD(v90) = v15;
    v16 = a1[9];
    if (v16 >= a1[10])
    {
      v17 = sub_1000A247C((a1 + 8), &v90);
    }

    else
    {
      *v16 = v15;
      v17 = (v16 + 1);
    }

    a1[9] = v17;
    LOBYTE(v90) = 0;
    sub_10002C87C((a1 + 11), &v90);
  }

  if (*(a1 + 33) == 1)
  {
    for (i = a1[14]; v6 >= (a1[15] - i) >> 2; i = a1[14])
    {
      sub_10002C79C(a1 + 14, &dword_1000D4FEC);
    }

    *(i + 4 * v6) = *(a1 + 34);
  }

  v19 = sub_10002B564(v4, v5);
  *(*a1[1] + 4 * v6) = *v19;
  v20 = a1[5];
  v22 = sub_10002B564(v19, v21);
  *(v20 + 4 * v6) = *v22;
  v23 = a1[8];
  *(v23 + 4 * v6) = *sub_10002B564(v22, v24);
  *(a1[11] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v6;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), v6);
  v89 = a1 + 140;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_114;
    }

    v26 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    v27 = (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    while (1)
    {
      v29 = a1[1];
      if (v26 < ((*(v29 + 8) - *v29) >> 2))
      {
        break;
      }

      v30 = sub_10002B59C(v27, v28);
      v31 = *(v29 + 8);
      if (v31 >= *(v29 + 16))
      {
        v32 = sub_1000A22F4(v29, v30);
      }

      else
      {
        *v31 = *v30;
        v32 = v31 + 1;
      }

      *(v29 + 8) = v32;
      v34 = *sub_10002B59C(v32, v30);
      LODWORD(v90) = v34;
      v35 = a1[6];
      if (v35 >= a1[7])
      {
        v36 = sub_1000A247C((a1 + 5), &v90);
      }

      else
      {
        *v35 = v34;
        v36 = (v35 + 1);
      }

      a1[6] = v36;
      v37 = *sub_10002B59C(v36, v33);
      LODWORD(v90) = v37;
      v38 = a1[9];
      if (v38 >= a1[10])
      {
        v39 = sub_1000A247C((a1 + 8), &v90);
      }

      else
      {
        *v38 = v37;
        v39 = (v38 + 1);
      }

      a1[9] = v39;
      LOBYTE(v90) = 0;
      sub_10002C87C((a1 + 11), &v90);
    }

    if (*(a1 + 32) == 1)
    {
      v40 = (*(**a1 + 24))(&v93);
      v27 = sub_10002B59C(v40, v41);
      LODWORD(v90) = v93;
      HIDWORD(v93) = *v27;
      v25.n128_u32[0] = v93;
      if (*&v93 != *(&v93 + 1))
      {
LABEL_114:
        ++*(a1 + 34);
        result = (*(**a1 + 56))(*a1, 4, 0, v25);
        if (!result)
        {
          return result;
        }

        goto LABEL_115;
      }
    }

    *(a1[11] + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v26);
    v42 = a1[8];
    v43 = *(v42 + 4 * v26);
    *(v42 + 4 * v26) = *sub_10002B59C(v27, v28);
    v44 = *a1;
    v90 = 0u;
    v91 = 0u;
    v92 = 0;
    (*(*v44 + 120))(v44, v26, &v90);
    while (1)
    {
      v46 = v90;
      if (!v90)
      {
        if (v92 >= v91)
        {
LABEL_104:
          v87 = 1;
          goto LABEL_105;
        }

LABEL_44:
        v47 = *(&v90 + 1) + 16 * v92;
        goto LABEL_45;
      }

      if ((*(*v90 + 16))(v90))
      {
        goto LABEL_104;
      }

      v46 = v90;
      if (!v90)
      {
        goto LABEL_44;
      }

      v46 = (*(*v90 + 24))(v90);
      v47 = v46;
LABEL_45:
      if (!*v47)
      {
        v48 = a1[1];
        v49 = (v48 + 8);
        for (j = *(v47 + 12); j >= (*(v48 + 8) - *v48) >> 2; j = *(v47 + 12))
        {
          v51 = sub_10002B59C(v46, v45);
          v52 = *v49;
          if (*v49 >= *(v48 + 16))
          {
            v53 = sub_1000A22F4(v48, v51);
          }

          else
          {
            *v52 = *v51;
            v53 = v52 + 1;
          }

          *v49 = v53;
          v55 = *sub_10002B59C(v53, v51);
          HIDWORD(v93) = v55;
          v56 = a1[6];
          if (v56 >= a1[7])
          {
            v57 = sub_1000A247C((a1 + 5), &v93 + 1);
          }

          else
          {
            *v56 = v55;
            v57 = (v56 + 1);
          }

          a1[6] = v57;
          v58 = *sub_10002B59C(v57, v54);
          HIDWORD(v93) = v58;
          v59 = a1[9];
          if (v59 >= a1[10])
          {
            v60 = sub_1000A247C((a1 + 8), &v93 + 1);
          }

          else
          {
            *v59 = v58;
            v60 = (v59 + 1);
          }

          a1[9] = v60;
          BYTE4(v93) = 0;
          sub_10002C87C((a1 + 11), &v93 + 4);
          v48 = a1[1];
          v49 = (v48 + 8);
        }

        if (*(a1 + 33) == 1)
        {
          while (1)
          {
            v61 = a1[14];
            LODWORD(j) = *(v47 + 12);
            if (j < ((a1[15] - v61) >> 2))
            {
              break;
            }

            sub_10002C79C(a1 + 14, &dword_1000D4FEC);
          }

          if (*(v61 + 4 * j) != *(a1 + 34))
          {
            v62 = sub_10002B59C(v46, v45);
            v63 = *(v47 + 12);
            *(*a1[1] + 4 * v63) = *v62;
            v64 = a1[5];
            v66 = sub_10002B59C(v62, v65);
            *(v64 + 4 * v63) = *v66;
            v67 = *(v47 + 12);
            v68 = a1[8];
            v46 = sub_10002B59C(v66, v69);
            *(v68 + 4 * v67) = *v46;
            v70 = *(v47 + 12);
            *(a1[11] + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v70);
            *(a1[14] + 4 * v70) = *(a1 + 34);
            LODWORD(j) = *(v47 + 12);
          }
        }

        v71 = *a1[1];
        v72 = a1[5];
        v73 = a1[8];
        if (v43 == -INFINITY || (v74 = *(v47 + 8), v74 >= -INFINITY) && v74 <= -INFINITY)
        {
          v46 = sub_1000777A0(v46, v45);
          v75 = *v46;
        }

        else
        {
          v76 = v74 == INFINITY || v43 == INFINITY;
          v77 = v43 + v74;
          v75 = v76 ? INFINITY : v77;
        }

        v78 = *(v71 + 4 * j);
        if (v78 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
        {
          v46 = sub_1000777A0(v46, v45);
          v79 = *v46;
          v78 = *(v71 + 4 * j);
        }

        else
        {
          v79 = v78 >= v75 ? v75 : *(v71 + 4 * j);
        }

        v80 = *(a1 + 7);
        v81 = v79 + v80;
        v82 = v80 + v78;
        if (v78 > v81 || v79 > v82)
        {
          break;
        }
      }

LABEL_101:
      if (v90)
      {
        (*(*v90 + 32))(v90);
      }

      else
      {
        ++v92;
      }
    }

    v84 = *(v72 + 4 * j);
    if (v84 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
    {
      v46 = sub_1000777A0(v46, v45);
      v84 = *v46;
    }

    else if (v84 >= v75)
    {
      v84 = v75;
    }

    *(v72 + 4 * j) = v84;
    *(v71 + 4 * j) = v84;
    v85 = *(v73 + 4 * j);
    if (v85 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
    {
      v85 = *sub_1000777A0(v46, v45);
    }

    else if (v85 >= v75)
    {
      v85 = v75;
    }

    *(v73 + 4 * j) = v85;
    if (*(v71 + 4 * j) != -INFINITY && v85 != -INFINITY)
    {
      v86 = **(a1[2] + 16);
      if ((*(a1[11] + ((*(v47 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v47 + 12)))
      {
        (*(v86 + 40))();
      }

      else
      {
        (*(v86 + 24))();
        *(a1[11] + ((*(v47 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v47 + 12);
      }

      goto LABEL_101;
    }

    v87 = 0;
    *v89 = 1;
LABEL_105:
    result = v90;
    if (v90)
    {
      result = (*(*v90 + 8))(v90);
    }

    else if (*(&v91 + 1))
    {
      --**(&v91 + 1);
    }
  }

  while ((v87 & 1) != 0);
  return result;
}

void sub_1000A227C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000A22F4(int **a1, _DWORD *a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 + 1;
  if ((v2 + 1) >> 62)
  {
    sub_100017658();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 1 > v3)
  {
    v3 = v6 >> 1;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v7 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_10002C924(a1, v7);
  }

  __p = 0;
  v11 = (4 * v2);
  *v11 = *a2;
  v12 = 4 * v2 + 4;
  v13 = 0;
  sub_1000A2410(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_1000A23D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int **sub_1000A2410(int **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

uint64_t sub_1000A247C(uint64_t a1, _DWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 2;
  v3 = v2 + 1;
  if ((v2 + 1) >> 62)
  {
    sub_100017658();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 1 > v3)
  {
    v3 = v6 >> 1;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v7 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_10002C924(a1, v7);
  }

  __p = 0;
  v11 = (4 * v2);
  *v11 = *a2;
  v12 = 4 * v2 + 4;
  v13 = 0;
  sub_1000A2410(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_1000A2560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A2598(unint64_t *result, _DWORD *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    sub_1000A2620(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  result[5] = v7 + 1;
}

void sub_1000A2620(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10009EB64(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10009E954(a1, &v9);
}

void sub_1000A27A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000A27F4(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10009EB64(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

uint64_t *sub_1000A2900(void *a1, int *a2, uint64_t a3)
{
  v4 = a2[1];
  v3 = a2[2];
  v5 = *a2;
  v6 = v3 + 7853 * *a2 + 7867 * v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v3 + 7853 * v5 + 7867 * v4;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (*(v11 + 4) != v5 || *(v11 + 20) != __PAIR64__(v3, v4))
  {
    goto LABEL_18;
  }

  return v11;
}

void sub_1000A2B68(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 136))(a1);
  if (v4 < 1)
  {
    return;
  }

  v6 = v4;
  v7 = sub_10002B59C(v4, v5);
  sub_1000A3A7C(v88, v6, v7);
  __p = 0;
  v86 = 0;
  v87 = 0;
  if (!*(a2 + 16))
  {
    sub_1000A3550(&__p, v6);
    sub_1000A3628(a1, &__p, 1, *(a2 + 24));
  }

  v8 = *(a2 + 16);
  if (*(a2 + 4))
  {
    v9 = *(a2 + 16);
    v10 = *(v9 + 8);
    v11 = *v8;
    if ((*(*a1 + 16))(a1) < ((v10 - v11) >> 2))
    {
      v12 = (*(*a1 + 16))(a1);
      v13 = v12;
      v14 = *v8;
      v16 = sub_10002B59C(v12, v15);
      LODWORD(v89[0]) = *(v14 + 4 * v13);
      LODWORD(v83) = *v16;
      if (*v89 != *&v83)
      {
        v89[0] = v88;
        v89[1] = v8;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        memset(v93, 0, 28);
        LOBYTE(v82[0]) = 0;
        sub_1000A1310(&v83, v6, v82);
        v79 = -1;
        sub_1000AEBC4(v82, v6, &v79);
        v79 = 0;
        v80 = 0;
        v81 = 0;
        LODWORD(v72) = (*(*a1 + 176))(a1);
        sub_10002C79C(&v79, &v72);
        v17 = (*(*a1 + 16))(a1);
        v77 = v17;
        if (*(a2 + 28) == 1)
        {
          v19 = *a2;
          if (*a2 == -INFINITY || (v20 = *(*v8 + 4 * v17), v20 >= -INFINITY) && v20 <= -INFINITY)
          {
LABEL_21:
            v21 = *sub_1000777A0(v17, v18);
LABEL_27:
            v76 = v21;
            v23 = sub_10009EC84(&v78, &v76, (*v8 + 4 * v77));
            if (v23)
            {
              v25 = 0;
            }

            else
            {
              v26 = sub_10002B564(v23, v24);
              *(v88[0] + v77) = *v26;
              v27 = sub_1000A3860(v89, &v77);
              *(v82[0] + v77) = v27;
              v25 = 1;
            }

            while (LODWORD(v93[3]))
            {
              v77 = *v93[0];
              sub_1000A3910(v89);
              v28 = v77;
              v29 = v77;
              *(v82[0] + v77) = -1;
              *(v83 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
              v30 = v88[0];
              v31 = (*(*a1 + 24))(&v75, a1);
              v33 = v30[v29];
              if (v33 == -INFINITY || *&v75 >= -INFINITY && *&v75 <= -INFINITY)
              {
                v34 = *sub_1000777A0(v31, v32);
              }

              else
              {
                v35 = *&v75 == INFINITY || v33 == INFINITY;
                v34 = v33 + *&v75;
                if (v35)
                {
                  v34 = INFINITY;
                }
              }

              *&v72 = v34;
              v36 = sub_10009EC84(&v78, &v76, &v72);
              if (v36)
              {
                v38 = v77;
                LODWORD(v72) = *sub_10002B59C(v36, v37);
                (*(*a1 + 160))(a1, v38, &v72);
              }

              (*(*a1 + 272))(a1, v77, &v75);
              while (!(*(*v75 + 16))(v75))
              {
                v39 = (*(*v75 + 24))(v75);
                v72 = *v39;
                v41 = *(v39 + 2);
                v73 = v41;
                v42 = v39[3];
                v74 = v42;
                v43 = *(v88[0] + v77);
                if (v43 == -INFINITY || v41 >= -INFINITY && v41 <= -INFINITY)
                {
                  v39 = sub_1000777A0(v39, v40);
                  v44 = *v39;
                  v42 = v74;
                }

                else
                {
                  v45 = v43 == INFINITY || v41 == INFINITY;
                  v46 = v41 + v43;
                  if (v45)
                  {
                    v44 = INFINITY;
                  }

                  else
                  {
                    v44 = v46;
                  }
                }

                if (v42 >= ((*(v9 + 8) - *v8) >> 2))
                {
                  v47 = sub_10002B59C(v39, v40);
                }

                else
                {
                  v47 = (*v8 + 4 * v42);
                }

                if (v44 == -INFINITY || (v48 = *v47, *v47 >= -INFINITY) && *v47 <= -INFINITY)
                {
                  v49 = *sub_1000777A0(v47, v40);
                }

                else
                {
                  v50 = v48 == INFINITY || v44 == INFINITY;
                  v49 = v44 + v48;
                  if (v50)
                  {
                    v49 = INFINITY;
                  }
                }

                v71 = v49;
                v51 = sub_10009EC84(&v78, &v76, &v71);
                if (v51)
                {
                  v74 = *v79;
                  (*(*v75 + 80))(v75, &v72);
                }

                else
                {
                  v53 = v88[0];
                  v54 = *(v88[0] + v77);
                  if (v54 == -INFINITY || v73 >= -INFINITY && v73 <= -INFINITY)
                  {
                    v55 = *sub_1000777A0(v51, v52);
                    v53 = v88[0];
                  }

                  else
                  {
                    v56 = v73 == INFINITY || v54 == INFINITY;
                    v55 = v54 + v73;
                    if (v56)
                    {
                      v55 = INFINITY;
                    }
                  }

                  v70 = v55;
                  v57 = sub_10009EC84(&v78, &v70, &v53[v74]);
                  if (v57)
                  {
                    v59 = v88[0];
                    v60 = *(v88[0] + v77);
                    if (v60 == -INFINITY || v73 >= -INFINITY && v73 <= -INFINITY)
                    {
                      v61 = *sub_1000777A0(v57, v58);
                      v59 = v88[0];
                    }

                    else
                    {
                      v63 = v73 == INFINITY || v60 == INFINITY;
                      v61 = v60 + v73;
                      if (v63)
                      {
                        v61 = INFINITY;
                      }
                    }

                    v62 = v74;
                    v59[v74] = v61;
                  }

                  else
                  {
                    v62 = v74;
                  }

                  if (((*(v83 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
                  {
                    v64 = *(a2 + 4);
                    if (v64 == -1 || v25 < v64)
                    {
                      v65 = *(v82[0] + v62);
                      if (v65 == -1)
                      {
                        v66 = sub_1000A3860(v89, &v74);
                        *(v82[0] + v74) = v66;
                        ++v25;
                      }

                      else
                      {
                        sub_1000A3984(v89, v65, &v74);
                      }
                    }
                  }
                }

                (*(*v75 + 32))(v75);
              }

              if (v75)
              {
                (*(*v75 + 8))(v75);
              }
            }

            LODWORD(v72) = 0;
            v67 = v84;
            if (v84)
            {
              v68 = 0;
              v69 = 0;
              do
              {
                if (((*(v83 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
                {
                  sub_10002C79C(&v79, &v72);
                  v68 = v72;
                  v67 = v84;
                }

                LODWORD(v72) = ++v68;
                v69 = v68;
              }

              while (v67 > v68);
            }

            (*(*a1 + 192))(a1, &v79);
            if (v79)
            {
              v80 = v79;
              operator delete(v79);
            }

            if (v82[0])
            {
              v82[1] = v82[0];
              operator delete(v82[0]);
            }

            if (v83)
            {
              operator delete(v83);
            }

            if (v93[0])
            {
              v93[1] = v93[0];
              operator delete(v93[0]);
            }

            if (*(&v91 + 1))
            {
              *&v92 = *(&v91 + 1);
              operator delete(*(&v91 + 1));
            }

            if (v90)
            {
              *(&v90 + 1) = v90;
              operator delete(v90);
            }

            goto LABEL_8;
          }
        }

        else
        {
          v19 = *(*v8 + 4 * v17);
          if (v19 == -INFINITY)
          {
            goto LABEL_21;
          }

          v20 = *a2;
          if (*a2 >= -INFINITY && *a2 <= -INFINITY)
          {
            goto LABEL_21;
          }
        }

        v22 = v20 == INFINITY || v19 == INFINITY;
        v21 = v19 + v20;
        if (v22)
        {
          v21 = INFINITY;
        }

        goto LABEL_27;
      }
    }
  }

  (*(*a1 + 200))(a1);
LABEL_8:
  if (__p)
  {
    v86 = __p;
    operator delete(__p);
  }

  if (v88[0])
  {
    v88[1] = v88[0];
    operator delete(v88[0]);
  }
}

void sub_1000A3468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  sub_1000A3A28(va);
  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void sub_1000A3550(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_10002C924(a1, a2);
    }

    sub_100017658();
  }
}

void sub_1000A35F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A3628(uint64_t a1, char **a2, char a3, float a4)
{
  if (a3)
  {
    sub_1000A7264(&v4);
  }

  sub_1000A4BB8(v5, a1, a2);
}

void sub_1000A37EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    sub_100016EC0(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000A3860(uint64_t a1, int *a2)
{
  v4 = *(a1 + 96);
  v5 = (a1 + 96);
  v8 = *(a1 + 72);
  v6 = (a1 + 72);
  v7 = v8;
  if (v4 >= (*(v5 - 2) - v8) >> 2)
  {
    sub_10002C79C(v6, a2);
    sub_10002C79C((a1 + 24), v5);
    sub_10002C79C((a1 + 48), v5);
    LODWORD(v9) = *(a1 + 96);
  }

  else
  {
    *(v7 + 4 * v4) = *a2;
    v9 = *(a1 + 96);
    *(*(a1 + 24) + 4 * *(*(a1 + 48) + 4 * v9)) = v9;
  }

  *(a1 + 96) = v9 + 1;

  return sub_1000AEC9C(a1, a2, v9);
}

uint64_t sub_1000A3910(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *v1;
  v3 = *(a1 + 96) - 1;
  v4 = *(a1 + 48);
  v5 = *v4;
  v6 = v4[v3];
  *v4 = v6;
  v7 = *(a1 + 24);
  *(v7 + 4 * v6) = 0;
  v4[v3] = v5;
  *(v7 + 4 * v5) = v3;
  LODWORD(v4) = *v1;
  *v1 = v1[v3];
  v1[v3] = v4;
  --*(a1 + 96);
  sub_1000AEEC8(a1, 0);
  return v2;
}

uint64_t sub_1000A3984(uint64_t a1, int a2, unsigned int *a3)
{
  v5 = *(*(a1 + 24) + 4 * a2);
  v6 = sub_1000AED4C(a1, *a3, *(*(a1 + 72) + 4 * ((v5 - 1) / 2)));
  *(*(a1 + 72) + 4 * v5) = *a3;
  if (v6)
  {

    return sub_1000AEC9C(a1, a3, v5);
  }

  else
  {

    return sub_1000AEEC8(a1, v5);
  }
}

void *sub_1000A3A28(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
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

uint64_t *sub_1000A3A7C(uint64_t *a1, unint64_t a2, __int32 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_10002EC8C(a1, a2);
  }

  return a1;
}

void sub_1000A3B74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A3B90(uint64_t a1, void *a2, uint64_t a3)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = *a3;
  v9 = *(a3 + 16);
  v10 = *(a3 + 20);
  v11 = 0;
  *v12 = 0u;
  *v13 = 0u;
  v14 = 0u;
  *v15 = 0u;
  *__p = 0u;
  memset(v17, 0, sizeof(v17));
  a2[1] = *a2;
  v4 = sub_1000A677C(v8, *(a3 + 12));
  if (v17[20] == 1)
  {
    a2[1] = *a2;
    v6 = sub_1000777A0(v4, v5);
    sub_1000A4B3C(a2, 1uLL, v6, v7);
  }

  if (__p[1])
  {
    *v17 = __p[1];
    operator delete(__p[1]);
  }

  if (v15[0])
  {
    operator delete(v15[0]);
  }

  if (v13[1])
  {
    *&v14 = v13[1];
    operator delete(v13[1]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

uint64_t sub_1000A3C84(uint64_t a1, uint64_t *a2, char a3)
{
  (*(*a2 + 200))(a2);
  v6 = (*(*a1 + 96))(a1);
  (*(*a2 + 256))(a2, v6);
  v7 = (*(*a1 + 104))(a1);
  (*(*a2 + 264))(a2, v7);
  if ((*(*a1 + 56))(a1, 1, 0))
  {
    v8 = sub_1000723D4(a1);
    (*(*a2 + 224))(a2, (v8 + 1));
  }

  v9 = (*(*a1 + 16))(a1);
  v59 = 0;
  if (a3)
  {
LABEL_31:
    v10 = (*(*a2 + 176))(a2);
    v23 = 1;
    goto LABEL_32;
  }

  *&v50 = 0;
  DWORD2(v50) = 0;
  LODWORD(v51) = 0;
  (*(*a1 + 112))(a1, &v50);
  v10 = 0xFFFFFFFFLL;
  while (1)
  {
    if (v50)
    {
      v11 = (*(*v50 + 16))(v50);
      v12 = v50;
      if (v11)
      {
        goto LABEL_24;
      }

      if (v50)
      {
        v13 = (*(*v50 + 24))();
        goto LABEL_11;
      }
    }

    else if (v51 >= SDWORD2(v50))
    {
      goto LABEL_26;
    }

    v13 = v51;
LABEL_11:
    v14 = (*(*a1 + 24))(&v58, a1, v13);
    v16 = sub_10002B59C(v14, v15);
    *&v47 = v58;
    LODWORD(v55) = *v16;
    v17 = 2 * (v10 != -1);
    if (v10 == -1)
    {
      v18 = v13;
    }

    else
    {
      v18 = -1;
    }

    if (*&v47 == *&v55)
    {
      v17 = 4;
    }

    v10 = v58 == *&v55 ? v10 : v18;
    if ((v17 | 4) != 4)
    {
      break;
    }

    if (v50)
    {
      (*(*v50 + 32))(v50);
    }

    else
    {
      LODWORD(v51) = v51 + 1;
    }
  }

  v12 = v50;
LABEL_24:
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_26:
  if (v10 == -1)
  {
    goto LABEL_31;
  }

  v19 = (*(*a1 + 24))(&v55, a1, v10);
  v21 = sub_10002B564(v19, v20);
  LODWORD(v50) = v55;
  v22.n128_u32[0] = v55;
  if (*&v55 != *v21)
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v50 = &v55;
    *&v51 = 0;
    *(&v51 + 1) = &v59;
    v53 = 0u;
    v54 = 0u;
    sub_100071A64(a1, &v50, 0);
  }

  v23 = 0;
LABEL_32:
  v47 = 0;
  v48 = 0;
  LODWORD(v49) = 0;
  (*(*a1 + 112))(a1, &v47, v22);
  while (2)
  {
    if (!v47)
    {
      if (v49 >= v48)
      {
        goto LABEL_84;
      }

      goto LABEL_38;
    }

    if (!(*(*v47 + 16))(v47))
    {
      if (v47)
      {
        v24 = (*(*v47 + 24))();
LABEL_39:
        v25 = v24 + v23;
        while (1)
        {
          v26 = (*(*a2 + 136))(a2);
          if (v26 > v25)
          {
            break;
          }

          (*(*a2 + 176))(a2);
        }

        if (v24 == v9)
        {
          LODWORD(v50) = *sub_10002B564(v26, v27);
          (*(*a2 + 160))(a2, (v24 + v23), &v50);
        }

        v28 = (*(*a1 + 24))(&v58, a1, v24);
        v30 = sub_10002B59C(v28, v29);
        *&v50 = v58;
        LODWORD(v55) = *v30;
        v31 = v23 ^ 1;
        if (v58 == *&v55)
        {
          v31 = 1;
        }

        if ((v31 & 1) == 0)
        {
          *&v50 = 0;
          *(&v50 + 2) = v58;
          HIDWORD(v50) = v24 + v23;
          (*(*a2 + 184))(a2, 0, &v50);
        }

        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        (*(*a1 + 120))(a1, v24, &v50);
LABEL_49:
        if (v50)
        {
          if ((*(*v50 + 16))(v50))
          {
            if (v50)
            {
              (*(*v50 + 8))();
              goto LABEL_79;
            }

LABEL_77:
            if (*(&v51 + 1))
            {
              --**(&v51 + 1);
            }

LABEL_79:
            if (v47)
            {
              (*(*v47 + 32))(v47);
            }

            else
            {
              LODWORD(v49) = v49 + 1;
            }

            continue;
          }

          if (v50)
          {
            v32 = (*(*v50 + 24))();
LABEL_55:
            v33 = (*(v32 + 12) + v23);
            v34 = *(v32 + 8);
            if (v33 == v10)
            {
              v35 = v23;
            }

            else
            {
              v35 = 1;
            }

            if ((v35 & 1) == 0)
            {
              v36 = (*(*a1 + 24))(&v55, a1, v10);
              if (*&v55 == -INFINITY || v34 >= -INFINITY && v34 <= -INFINITY)
              {
                LODWORD(v34) = *sub_1000777A0(v36, v37);
              }

              else if (*&v55 == INFINITY || v34 == INFINITY)
              {
                v34 = INFINITY;
              }

              else
              {
                v34 = v34 + *&v55;
              }
            }

            v55 = *v32;
            v56 = __PAIR64__(v25, LODWORD(v34));
            while (1)
            {
              v39 = (*(*a2 + 136))(a2);
              v40 = *a2;
              if (v39 > v33)
              {
                break;
              }

              (*(v40 + 176))(a2);
            }

            (*(v40 + 184))(a2, v33, &v55);
            if (v50)
            {
              (*(*v50 + 32))(v50);
            }

            else
            {
              ++v52;
            }

            goto LABEL_49;
          }
        }

        else if (v52 >= v51)
        {
          goto LABEL_77;
        }

        v32 = *(&v50 + 1) + 16 * v52;
        goto LABEL_55;
      }

LABEL_38:
      v24 = v49;
      goto LABEL_39;
    }

    break;
  }

  if (v47)
  {
    (*(*v47 + 8))();
  }

LABEL_84:
  (*(*a2 + 152))(a2, v10);
  if (v10 == v9)
  {
    v41 = v23;
  }

  else
  {
    v41 = 1;
  }

  if ((v41 & 1) == 0)
  {
    (*(*a1 + 24))(&v47, a1, v9);
    LODWORD(v50) = v47;
    (*(*a2 + 160))(a2, v9, &v50);
  }

  v42 = (*(*a1 + 56))(a1, 0xFFFFFFFF0004, 0);
  v43 = v59;
  v44 = (*(*a2 + 56))(a2, 0xFFFFFFFF0007, 0);
  v45 = sub_1000C8CAC(v43 | v42, v23);
  return (*(*a2 + 168))(a2, v44 | v45, 0xFFFFFFFF0007);
}

void sub_1000A4934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_10002CCE8(va);
  v18 = *(v16 - 144);
  if (v18)
  {
    *(v16 - 136) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_1000A4A48(uint64_t a1, void *a2, uint64_t a3)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = *a3;
  v9 = *(a3 + 16);
  v10 = *(a3 + 20);
  v11 = 0;
  *v12 = 0u;
  *v13 = 0u;
  v14 = 0u;
  *v15 = 0u;
  *__p = 0u;
  memset(v17, 0, sizeof(v17));
  a2[1] = *a2;
  v4 = sub_1000ADD98(v8, *(a3 + 12));
  if (v17[20] == 1)
  {
    a2[1] = *a2;
    v6 = sub_1000777A0(v4, v5);
    sub_1000A4B3C(a2, 1uLL, v6, v7);
  }

  if (__p[1])
  {
    *v17 = __p[1];
    operator delete(__p[1]);
  }

  if (v15[0])
  {
    operator delete(v15[0]);
  }

  if (v13[1])
  {
    *&v14 = v13[1];
    operator delete(v13[1]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_1000A4B3C(void *result, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (result[1] - *result) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    sub_1000AE820(result, a2 - v4, a3, a4);
  }
}

void *sub_1000A4B6C(void *a1)
{
  *a1 = off_100103ED8;
  v2 = a1[2];
  if (v2)
  {
    sub_100016EC0(v2);
  }

  return a1;
}

void sub_1000A4BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &off_100103678;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  v4 = (a1 + 48);
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0;
  v5 = (*(*a2 + 56))(a2, 0x4E00000000, 0);
  if ((v5 & 0x4000000000) == 0 && (*(*a2 + 16))(a2) != -1)
  {
    if ((v5 & 0x800000000) == 0)
    {
      if ((v5 & 0x200000000) == 0)
      {
        v9 = 0;
        __p[0] = v4;
        __p[1] = 0;
        __p[2] = 0;
        __p[3] = &v9;
        v7 = 0u;
        v8 = 0u;
        sub_100071A64(a2, __p, 0);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1000A56B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_10002B280(&a19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    operator delete();
  }

  if (a10)
  {
    operator delete();
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  sub_10002CCE8(&a23);
  v33 = *v29;
  if (*v29)
  {
    *(v28 + 56) = v33;
    operator delete(v33);
  }

  sub_10009FA44(&a23);
  v34 = *v31;
  *v31 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A5898(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v11 = *(a3 + 8) - *a3;
  if (v11)
  {
    v12 = v11 >> 2;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    bzero(*a3, 4 * v12);
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  (*(*a1 + 112))(a1, &v32);
  while (1)
  {
    result = v32;
    if (!v32)
    {
      if (v34 >= v33)
      {
        return result;
      }

LABEL_11:
      v15 = v34;
      goto LABEL_12;
    }

    v14 = (*(*v32 + 16))(v32);
    result = v32;
    if (v14)
    {
      break;
    }

    if (!v32)
    {
      goto LABEL_11;
    }

    v15 = (*(*v32 + 24))();
LABEL_12:
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    (*(*a1 + 120))(a1, v15, &v29);
    while (1)
    {
      v17 = v29;
      if (!v29)
      {
        if (v31 >= v30)
        {
          goto LABEL_38;
        }

        goto LABEL_18;
      }

      v18 = (*(*v29 + 16))(v29);
      v17 = v29;
      if (v18)
      {
        break;
      }

      if (v29)
      {
        v17 = (*(*v29 + 24))();
        v19 = v17;
        goto LABEL_19;
      }

LABEL_18:
      v19 = *(&v29 + 1) + 16 * v31;
LABEL_19:
      v20 = *(*a2 + 4 * v15);
      if (v20 == *(*a2 + 4 * *(v19 + 12)))
      {
        v21 = *a3;
        if (!a4 || (v22 = sub_10002B564(v17, v16), v23 = (v19 + 8), v17 = sub_10009EC84(a4, (v19 + 8), v22), (v17 & 1) != 0))
        {
          v24 = 1;
          goto LABEL_23;
        }

        if ((v21[v20] | 2) == 2)
        {
          v17 = sub_10002B59C(v17, v16);
          v36 = *v23;
          v35 = *v17;
          if (v36 == v35 || (v17 = sub_10002B564(v17, v16), v36 = *v23, v35 = *v17, v36 == v35))
          {
            v24 = 2;
          }

          else
          {
            v24 = 3;
          }

LABEL_23:
          v21[v20] = v24;
        }

        *a5 = 0;
      }

      v25 = sub_10002B59C(v17, v16);
      v36 = *(v19 + 8);
      v35 = *v25;
      v26.n128_f32[0] = v36;
      if (v36 != v35)
      {
        v27 = sub_10002B564(v25, v16);
        v36 = *(v19 + 8);
        v35 = *v27;
        v26.n128_f32[0] = v36;
        if (v36 != v35)
        {
          *a6 = 0;
        }
      }

      if (v29)
      {
        (*(*v29 + 32))(v29, v26);
      }

      else
      {
        ++v31;
      }
    }

    if (v29)
    {
      (*(*v29 + 8))();
      goto LABEL_40;
    }

LABEL_38:
    if (*(&v30 + 1))
    {
      --**(&v30 + 1);
    }

LABEL_40:
    if (v32)
    {
      (*(*v32 + 32))(v32);
    }

    else
    {
      ++v34;
    }
  }

  if (v32)
  {
    return (*(*v32 + 8))();
  }

  return result;
}

void sub_1000A5C78(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A5D0C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = off_100103758;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = 0;
  v2[0] = a1 + 24;
  v2[1] = &v3;
  v2[2] = 0;
  sub_1000A5EE0(a2, v2, 0);
}

void sub_1000A5E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    sub_10002BE48(v23 + 16, a21);
  }

  v25 = v21[6];
  if (v25)
  {
    v21[7] = v25;
    operator delete(v25);
  }

  v26 = *v22;
  if (*v22)
  {
    v21[4] = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A66BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a16)
  {
    (*(*a16 + 8))(a16, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10002C1E4(&a23);
  sub_10002CC3C(&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A677C(void *a1, int a2)
{
  if ((*(**a1 + 16))(*a1) == -1)
  {
    result = (*(**a1 + 56))(*a1, 4, 0);
    if (!result)
    {
      return result;
    }

    v89 = a1 + 140;
LABEL_114:
    *v89 = 1;
    return result;
  }

  v4 = (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    *(a1[1] + 8) = *a1[1];
    a1[6] = a1[5];
    a1[9] = a1[8];
    a1[12] = 0;
  }

  if (a2 == -1)
  {
    v4 = (*(**a1 + 16))();
    a2 = v4;
  }

  v6 = a2;
  while (1)
  {
    v7 = a1[1];
    if (v6 < (*(v7 + 8) - *v7) >> 2)
    {
      break;
    }

    v8 = sub_10002B59C(v4, v5);
    v9 = *(v7 + 8);
    if (v9 >= *(v7 + 16))
    {
      v10 = sub_1000A22F4(v7, v8);
    }

    else
    {
      *v9 = *v8;
      v10 = v9 + 1;
    }

    *(v7 + 8) = v10;
    v12 = *sub_10002B59C(v10, v8);
    LODWORD(v90) = v12;
    v13 = a1[6];
    if (v13 >= a1[7])
    {
      v14 = sub_1000A247C((a1 + 5), &v90);
    }

    else
    {
      *v13 = v12;
      v14 = (v13 + 1);
    }

    a1[6] = v14;
    v15 = *sub_10002B59C(v14, v11);
    LODWORD(v90) = v15;
    v16 = a1[9];
    if (v16 >= a1[10])
    {
      v17 = sub_1000A247C((a1 + 8), &v90);
    }

    else
    {
      *v16 = v15;
      v17 = (v16 + 1);
    }

    a1[9] = v17;
    LOBYTE(v90) = 0;
    sub_10002C87C((a1 + 11), &v90);
  }

  if (*(a1 + 33) == 1)
  {
    for (i = a1[14]; v6 >= (a1[15] - i) >> 2; i = a1[14])
    {
      sub_10002C79C(a1 + 14, &dword_1000D4FEC);
    }

    *(i + 4 * v6) = *(a1 + 34);
  }

  v19 = sub_10002B564(v4, v5);
  *(*a1[1] + 4 * v6) = *v19;
  v20 = a1[5];
  v22 = sub_10002B564(v19, v21);
  *(v20 + 4 * v6) = *v22;
  v23 = a1[8];
  *(v23 + 4 * v6) = *sub_10002B564(v22, v24);
  *(a1[11] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v6;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), v6);
  v89 = a1 + 140;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_113;
    }

    v26 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    v27 = (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    while (1)
    {
      v29 = a1[1];
      if (v26 < ((*(v29 + 8) - *v29) >> 2))
      {
        break;
      }

      v30 = sub_10002B59C(v27, v28);
      v31 = *(v29 + 8);
      if (v31 >= *(v29 + 16))
      {
        v32 = sub_1000A22F4(v29, v30);
      }

      else
      {
        *v31 = *v30;
        v32 = v31 + 1;
      }

      *(v29 + 8) = v32;
      v34 = *sub_10002B59C(v32, v30);
      LODWORD(v90) = v34;
      v35 = a1[6];
      if (v35 >= a1[7])
      {
        v36 = sub_1000A247C((a1 + 5), &v90);
      }

      else
      {
        *v35 = v34;
        v36 = (v35 + 1);
      }

      a1[6] = v36;
      v37 = *sub_10002B59C(v36, v33);
      LODWORD(v90) = v37;
      v38 = a1[9];
      if (v38 >= a1[10])
      {
        v39 = sub_1000A247C((a1 + 8), &v90);
      }

      else
      {
        *v38 = v37;
        v39 = (v38 + 1);
      }

      a1[9] = v39;
      LOBYTE(v90) = 0;
      sub_10002C87C((a1 + 11), &v90);
    }

    if (*(a1 + 32) == 1)
    {
      v40 = (*(**a1 + 24))(&v93);
      v27 = sub_10002B59C(v40, v41);
      LODWORD(v90) = v93;
      HIDWORD(v93) = *v27;
      v25.n128_u32[0] = v93;
      if (*&v93 != *(&v93 + 1))
      {
LABEL_113:
        ++*(a1 + 34);
        result = (*(**a1 + 56))(*a1, 4, 0, v25);
        if (!result)
        {
          return result;
        }

        goto LABEL_114;
      }
    }

    *(a1[11] + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v26);
    v42 = a1[8];
    v43 = *(v42 + 4 * v26);
    *(v42 + 4 * v26) = *sub_10002B59C(v27, v28);
    v44 = *a1;
    v90 = 0u;
    v91 = 0u;
    v92 = 0;
    (*(*v44 + 120))(v44, v26, &v90);
    while (1)
    {
      v46 = v90;
      if (v90)
      {
        if ((*(*v90 + 16))(v90))
        {
          goto LABEL_103;
        }

        v46 = v90;
        if (v90)
        {
          v46 = (*(*v90 + 24))(v90);
          v47 = v46;
          goto LABEL_45;
        }
      }

      else if (v92 >= v91)
      {
LABEL_103:
        v87 = 1;
        goto LABEL_105;
      }

      v47 = *(&v90 + 1) + 16 * v92;
LABEL_45:
      v48 = a1[1];
      v49 = (v48 + 8);
      for (j = *(v47 + 12); j >= (*(v48 + 8) - *v48) >> 2; j = *(v47 + 12))
      {
        v51 = sub_10002B59C(v46, v45);
        v52 = *v49;
        if (*v49 >= *(v48 + 16))
        {
          v53 = sub_1000A22F4(v48, v51);
        }

        else
        {
          *v52 = *v51;
          v53 = v52 + 1;
        }

        *v49 = v53;
        v55 = *sub_10002B59C(v53, v51);
        HIDWORD(v93) = v55;
        v56 = a1[6];
        if (v56 >= a1[7])
        {
          v57 = sub_1000A247C((a1 + 5), &v93 + 1);
        }

        else
        {
          *v56 = v55;
          v57 = (v56 + 1);
        }

        a1[6] = v57;
        v58 = *sub_10002B59C(v57, v54);
        HIDWORD(v93) = v58;
        v59 = a1[9];
        if (v59 >= a1[10])
        {
          v60 = sub_1000A247C((a1 + 8), &v93 + 1);
        }

        else
        {
          *v59 = v58;
          v60 = (v59 + 1);
        }

        a1[9] = v60;
        BYTE4(v93) = 0;
        sub_10002C87C((a1 + 11), &v93 + 4);
        v48 = a1[1];
        v49 = (v48 + 8);
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v61 = a1[14];
          LODWORD(j) = *(v47 + 12);
          if (j < ((a1[15] - v61) >> 2))
          {
            break;
          }

          sub_10002C79C(a1 + 14, &dword_1000D4FEC);
        }

        if (*(v61 + 4 * j) != *(a1 + 34))
        {
          v62 = sub_10002B59C(v46, v45);
          v63 = *(v47 + 12);
          *(*a1[1] + 4 * v63) = *v62;
          v64 = a1[5];
          v66 = sub_10002B59C(v62, v65);
          *(v64 + 4 * v63) = *v66;
          v67 = *(v47 + 12);
          v68 = a1[8];
          v46 = sub_10002B59C(v66, v69);
          *(v68 + 4 * v67) = *v46;
          v70 = *(v47 + 12);
          *(a1[11] + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v70);
          *(a1[14] + 4 * v70) = *(a1 + 34);
          LODWORD(j) = *(v47 + 12);
        }
      }

      v71 = *a1[1];
      v72 = a1[5];
      v73 = a1[8];
      if (v43 == -INFINITY || (v74 = *(v47 + 8), v74 >= -INFINITY) && v74 <= -INFINITY)
      {
        v46 = sub_1000777A0(v46, v45);
        v75 = *v46;
      }

      else
      {
        v76 = v74 == INFINITY || v43 == INFINITY;
        v77 = v43 + v74;
        v75 = v76 ? INFINITY : v77;
      }

      v78 = *(v71 + 4 * j);
      if (v78 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
      {
        v46 = sub_1000777A0(v46, v45);
        v79 = *v46;
        v78 = *(v71 + 4 * j);
      }

      else
      {
        v79 = v78 >= v75 ? v75 : *(v71 + 4 * j);
      }

      v80 = *(a1 + 7);
      v81 = v79 + v80;
      v82 = v80 + v78;
      if (v78 > v81 || v79 > v82)
      {
        break;
      }

LABEL_100:
      if (v90)
      {
        (*(*v90 + 32))(v90);
      }

      else
      {
        ++v92;
      }
    }

    v84 = *(v72 + 4 * j);
    if (v84 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
    {
      v46 = sub_1000777A0(v46, v45);
      v84 = *v46;
    }

    else if (v84 >= v75)
    {
      v84 = v75;
    }

    *(v72 + 4 * j) = v84;
    *(v71 + 4 * j) = v84;
    v85 = *(v73 + 4 * j);
    if (v85 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
    {
      v85 = *sub_1000777A0(v46, v45);
    }

    else if (v85 >= v75)
    {
      v85 = v75;
    }

    *(v73 + 4 * j) = v85;
    if (*(v71 + 4 * j) != -INFINITY && v85 != -INFINITY)
    {
      v86 = **(a1[2] + 16);
      if ((*(a1[11] + ((*(v47 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v47 + 12)))
      {
        (*(v86 + 40))();
      }

      else
      {
        (*(v86 + 24))();
        *(a1[11] + ((*(v47 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v47 + 12);
      }

      goto LABEL_100;
    }

    v87 = 0;
    *v89 = 1;
LABEL_105:
    result = v90;
    if (v90)
    {
      result = (*(*v90 + 8))(v90);
    }

    else if (*(&v91 + 1))
    {
      --**(&v91 + 1);
    }
  }

  while ((v87 & 1) != 0);
  return result;
}

void sub_1000A718C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000A7204(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    a1[9] = v4;
    operator delete(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    a1[6] = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_1000A72D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100016EC0(a11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000A72E8(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a1[1] = v4;
  a1[2] = v3;
  *a1 = off_100103DB0;
  if (v3)
  {
    sub_100016EC0(v3);
  }

  *a1 = off_100103C88;
  return a1;
}

void sub_1000A7368(void *a1)
{
  *a1 = off_100103ED8;
  v1 = a1[2];
  if (v1)
  {
    sub_100016EC0(v1);
  }

  operator delete();
}

float sub_1000A73E0@<S0>(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v3 = *(*(*(a1 + 8) + 56) + 8 * a2);
  result = *v3;
  *a3 = *v3;
  return result;
}

unint64_t sub_1000A743C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = sub_1000A83D0(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 24);

    return v7();
  }
}

uint64_t sub_1000A75A4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 64) - *(v2 + 56)) >> 3;
  return result;
}

uint64_t sub_1000A75C0(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 56) + 8 * a2) + 24);
  v4 = *v5;
  v6 = (v5[1] - *v5) >> 4;
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t sub_1000A7608(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1000AB1D0();
  }

  return a1;
}

unint64_t sub_1000A7678(uint64_t a1, int a2)
{
  sub_1000ABAC0(a1);
  v4 = *(a1 + 8);
  *(v4 + 80) = a2;
  result = (*(*v4 + 16))(v4);
  *(v4 + 8) = result & 0xCCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

float sub_1000A76F8(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a2;
  sub_1000ABAC0(a1);
  v6 = *(a1 + 8);
  v8 = *a3;
  return sub_1000ABC00(v6, v4, &v8);
}

void sub_1000A774C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(**(a1 + 8) + 24))(*(a1 + 8), a3 & 4) != (a3 & 4 & a2))
  {
    sub_1000ABAC0(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
}

uint64_t sub_1000A7860(uint64_t a1, uint64_t a2, float *a3)
{
  sub_1000ABAC0(a1);
  v6 = *(a1 + 8);

  return sub_1000ABC98(v6, a2, a3);
}

uint64_t sub_1000A78B0(uint64_t a1, char **a2)
{
  sub_1000ABAC0(a1);
  v4 = *(a1 + 8);
  sub_1000ABD40(v4, a2);
  result = (*(*v4 + 16))(v4);
  v4[1] = v4[1] & 4 | result & 0x806A5A950007;
  return result;
}

uint64_t sub_1000A7930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1 || *(v1 + 8))
  {
    sub_1000A7D60();
  }

  v2 = *(a1 + 8);
  sub_10002EF8C(v2);
  result = (*(*v2 + 16))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x956A5A950003;
  return result;
}

uint64_t sub_1000A7A24(uint64_t a1, int a2, uint64_t a3)
{
  sub_1000ABAC0(a1);
  v6 = *(a1 + 8);
  sub_10002EB24(*(v6[7] + 8 * a2), a3);
  result = (*(*v6 + 16))(v6);
  v6[1] = v6[1] & 4 | result & 0x8A6A5A950007;
  return result;
}

uint64_t sub_1000A7AB4(uint64_t a1, int a2)
{
  sub_1000ABAC0(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[7] + 8 * a2);
  v5[1] = 0;
  v5[2] = 0;
  v5[4] = v5[3];
  result = (*(*v4 + 16))(v4);
  v4[1] = v4[1] & 4 | result & 0x8A6A5A950007;
  return result;
}

void sub_1000A7B3C(uint64_t a1, int a2)
{
  sub_1000ABAC0(a1);
  v4 = (*(a1 + 8) + 56);

  sub_10002E1F8(v4, a2);
}

void sub_1000A7B80(uint64_t a1, int a2, unint64_t a3)
{
  sub_1000ABAC0(a1);
  v6 = (*(*(*(a1 + 8) + 56) + 8 * a2) + 24);

  sub_1000AB82C(v6, a3);
}

uint64_t sub_1000A7C30(uint64_t a1, uint64_t a2)
{
  sub_1000ABAC0(a1);
  v4 = *(a1 + 8);

  return sub_10002DDA4(v4, a2);
}

uint64_t sub_1000A7C70(uint64_t a1, uint64_t a2)
{
  sub_1000ABAC0(a1);
  v4 = *(a1 + 8);

  return sub_10002DE44(v4, a2);
}

void *sub_1000A7DBC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100103B68;
  sub_1000A7EB4((a1 + 3));
  return a1;
}

void sub_1000A7E38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100103B68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000A7EB4(uint64_t a1)
{
  *a1 = off_100103C58;
  *(a1 + 8) = 0;
  sub_1000113AC((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = -1;
  *a1 = off_100103BB8;
  sub_1000113AC(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x956A5A950003;
  return a1;
}

void sub_1000A7F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000A7FAC(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A7FAC(void *a1)
{
  *a1 = &off_100103C28;
  v3 = a1 + 7;
  v2 = a1[7];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      sub_10002E5F4(v2[v4++]);
      v2 = a1[7];
    }

    while (v4 < (a1[8] - v2) >> 3);
  }

  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  return sub_1000A8100(a1);
}

void sub_1000A803C(void *a1)
{
  sub_1000A7FAC(a1);

  operator delete();
}

void sub_1000A808C(void *a1)
{
  sub_1000A7FAC(a1);

  operator delete();
}

void sub_1000A80C8(uint64_t a1)
{
  sub_1000A8100(a1);

  operator delete();
}

uint64_t sub_1000A8100(uint64_t a1)
{
  *a1 = off_100103C58;
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1000A81B0(uint64_t a1)
{
  sub_1000113AC(__p, "ERROR");
  sub_10002B1D4(&v11, __p);
  v2 = sub_10002AE44(&std::cerr, "Fst::Write: No write stream method for ", 39);
  v3 = (*(*a1 + 64))(a1);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  v7 = sub_10002AE44(v2, v5, v6);
  sub_10002AE44(v7, " FST type", 9);
  sub_10002B280(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1000A8284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000A82B0(uint64_t a1)
{
  sub_1000113AC(__p, "ERROR");
  sub_10002B1D4(&v11, __p);
  v2 = sub_10002AE44(&std::cerr, "Fst::Write: No write filename method for ", 41);
  v3 = (*(*a1 + 64))(a1);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  v7 = sub_10002AE44(v2, v5, v6);
  sub_10002AE44(v7, " FST type", 9);
  sub_10002B280(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1000A8384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1000A83D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (byte_10010E8AC == 1)
  {
    v6 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
    v7 = sub_1000A857C(a1, a2, a3, 0);
    if (!sub_10002B368(v6, v7))
    {
      if (byte_10010E280 == 1)
      {
        sub_1000113AC(__p, "FATAL");
      }

      else
      {
        sub_1000113AC(__p, "ERROR");
      }

      sub_10002B1D4(&v12, __p);
      v9 = sub_10002AE44(&std::cerr, "TestProperties: stored FST properties incorrect", 47);
      sub_10002AE44(v9, " (stored: props1, computed: props2)", 35);
      sub_10002B280(&v12);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return sub_1000A857C(a1, a2, a3, 1);
  }
}

void sub_1000A8544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1000A857C(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
  v9 = v8;
  if (a4)
  {
    v10 = v8 & 0xFFFFFFFF0000 | (2 * v8) & 0xAAAAAAAA0000 | (v8 >> 1) & 0x555555550000 | 7;
    if ((a2 & ~v10) == 0)
    {
      if (a3)
      {
        *a3 = v10;
      }

      return v9;
    }
  }

  v9 = v8 & 7;
  v48 = 0;
  v49 = v9;
  v46 = 0;
  v47 = 0;
  v11 = a2 & 0xCF3C00000000;
  if ((a2 & 0xCF3C00000000) != 0)
  {
    v41 = &v46;
    *&v42 = 0;
    *(&v42 + 1) = &v49;
    v44 = 0u;
    v45 = 0u;
    sub_1000A8EBC(a1, &v41, 0);
  }

  if ((a2 & 0xFFFFF0C3FFFFFFF8) == 0)
  {
    goto LABEL_92;
  }

  v36 = 0;
  v12 = 0x10425A810000;
  if ((a2 & 0xC0000) != 0)
  {
    v12 = 0x10425A850000;
  }

  v13 = v9 | v12;
  if ((a2 & 0x300000) != 0)
  {
    v13 |= 0x100000uLL;
  }

  v49 = v13;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  (*(*a1 + 112))(a1, &v36);
  v14 = 0;
LABEL_13:
  if (!v36)
  {
    if (v38 >= v37)
    {
      goto LABEL_84;
    }

    goto LABEL_18;
  }

  if (!(*(*v36 + 16))(v36))
  {
    if (v36)
    {
      v15 = (*(*v36 + 24))();
LABEL_19:
      if ((a2 & 0xC0000) != 0)
      {
        operator new();
      }

      if ((a2 & 0x300000) != 0)
      {
        operator new();
      }

      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      (*(*a1 + 120))(a1, v15, &v41);
      v17 = 1;
      while (v41)
      {
        if ((*(*v41 + 16))(v41))
        {
          if (v41)
          {
            (*(*v41 + 8))();
            goto LABEL_71;
          }

LABEL_69:
          if (*(&v42 + 1))
          {
            --**(&v42 + 1);
          }

LABEL_71:
          if (v14 > 0)
          {
            v49 = v49 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
          }

          v29 = (*(*a1 + 24))(&v50, a1, v15);
          v31 = sub_10002B59C(v29, v30);
          LODWORD(v41) = v50;
          HIDWORD(v50) = *v31;
          if (*&v50 == *(&v50 + 1))
          {
            if ((*(*a1 + 32))(a1, v15, *&v50) != 1)
            {
              v49 = v49 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
            }
          }

          else
          {
            v33 = sub_10002B564(v31, v32);
            LODWORD(v41) = v50;
            HIDWORD(v50) = *v33;
            v34.n128_u32[0] = v50;
            if (*&v50 != *(&v50 + 1))
            {
              v49 = v49 & 0xFFFFFFFCFFFFFFFFLL | &_mh_execute_header;
            }

            ++v14;
          }

          if (v36)
          {
            (*(*v36 + 32))(v36, v34);
          }

          else
          {
            ++v38;
          }

          goto LABEL_13;
        }

        if (!v41)
        {
          goto LABEL_29;
        }

        v18 = (*(*v41 + 24))();
LABEL_30:
        if (v40 && sub_100072A48(v40, v18))
        {
          v49 = v49 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
        }

        v19 = v39;
        if (v39)
        {
          v19 = sub_100072A48(v39, v18 + 1);
          if (v19)
          {
            v49 = v49 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
          }
        }

        v20 = *v18;
        v21 = *v18;
        if (*v18 != v18[1])
        {
          v49 = v49 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
          v21 = v18[1];
        }

        if (v20 | v21)
        {
          if (v20)
          {
            if (!v21)
            {
              goto LABEL_46;
            }

            goto LABEL_42;
          }

          v22 = v49;
        }

        else
        {
          v22 = v49 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
        }

        v49 = v22 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
        if (!v21)
        {
LABEL_46:
          v49 = v49 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
          if (v17)
          {
            goto LABEL_51;
          }

          goto LABEL_47;
        }

LABEL_42:
        if (v17)
        {
          goto LABEL_51;
        }

LABEL_47:
        if (v20 < v11)
        {
          v49 = v49 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
        }

        if (v21 < SHIDWORD(v11))
        {
          v49 = v49 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
        }

LABEL_51:
        v23 = sub_10002B564(v19, v16);
        HIDWORD(v50) = v18[2];
        LODWORD(v50) = *v23;
        v24.n128_u32[0] = HIDWORD(v50);
        if (*(&v50 + 1) != *&v50)
        {
          v25 = sub_10002B59C(v23, v16);
          HIDWORD(v50) = v18[2];
          LODWORD(v50) = *v25;
          v24.n128_u32[0] = HIDWORD(v50);
          if (*(&v50 + 1) != *&v50)
          {
            v26 = v49;
            v27 = v49 & 0xFFFFFFFCFFFFFFFFLL | &_mh_execute_header;
            v49 = v27;
            if ((v26 & 0x800000000000) != 0 && v46[v15] == v46[v18[3]])
            {
              v49 = v27 & 0xFFFF3FFDFFFFFFFFLL | 0x400000000000;
            }
          }
        }

        v28 = v18[3];
        if (v28 <= v15)
        {
          v49 = v49 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
        }

        if (v28 != v15 + 1)
        {
          v49 = v49 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
        }

        v11 = *v18;
        if (v40)
        {
          sub_100072AFC(v40, v18, v18);
        }

        if (v39)
        {
          sub_100072AFC(v39, v18 + 1, v18 + 1);
        }

        if (v41)
        {
          (*(*v41 + 32))(v41, v24);
          v17 = 0;
        }

        else
        {
          v17 = 0;
          ++v43;
        }
      }

      if (v43 >= v42)
      {
        goto LABEL_69;
      }

LABEL_29:
      v18 = (*(&v41 + 1) + 16 * v43);
      goto LABEL_30;
    }

LABEL_18:
    v15 = v38;
    goto LABEL_19;
  }

  if (v36)
  {
    (*(*v36 + 8))();
  }

LABEL_84:
  if ((*(*a1 + 16))(a1) != -1 && (*(*a1 + 16))(a1))
  {
    v49 = v49 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
  }

  if (v39)
  {
    sub_10001A12C(v39);
    operator delete();
  }

  if (v40)
  {
    sub_10001A12C(v40);
    operator delete();
  }

  v9 = v49;
LABEL_92:
  if (a3)
  {
    *a3 = v9 & 0xFFFFFFFF0000 | (2 * v9) & 0xAAAAAAAA0000 | (v9 >> 1) & 0x555555550000 | 7;
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  return v9;
}

void sub_1000A8DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  sub_10002B518(va, 0);
  sub_10002B518(va1, 0);
  v15 = *(v13 - 128);
  if (v15)
  {
    *(v13 - 120) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void sub_1000A96C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10002C1E4(&a23);
  sub_10002CC3C(&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void sub_1000A977C(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 16))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

uint64_t sub_1000A9930(uint64_t a1)
{
  if ((*(*a1 + 56))(a1, 1, 0))
  {
    v2 = *(*a1 + 136);

    return v2(a1);
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  (*(*a1 + 112))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

void sub_1000A9AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1000B9834();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000A9AD8(uint64_t a1, int a2, int a3)
{
  v19 = a2;
  sub_10002C79C(*(a1 + 80), &v19);
  v5 = **(a1 + 56);
  for (i = v19; v19 >= ((*(*(a1 + 56) + 8) - v5) >> 2); i = v19)
  {
    v7 = *a1;
    if (*a1)
    {
      v18 = -1;
      sub_10002C79C(v7, &v18);
    }

    v8 = *(a1 + 8);
    if (v8)
    {
      LOBYTE(v18) = 0;
      sub_10002C87C(v8, &v18);
    }

    v9 = *(a1 + 16);
    LOBYTE(v18) = 0;
    sub_10002C87C(v9, &v18);
    v10 = *(a1 + 56);
    v18 = -1;
    sub_10002C79C(v10, &v18);
    v11 = *(a1 + 64);
    v18 = -1;
    sub_10002C79C(v11, &v18);
    v12 = *(a1 + 72);
    LOBYTE(v18) = 0;
    sub_10002C87C(v12, &v18);
    v5 = **(a1 + 56);
  }

  v13 = *(a1 + 44);
  *(v5 + 4 * i) = v13;
  *(**(a1 + 64) + 4 * v19) = v13;
  v14 = v19 >> 6;
  v15 = 1 << v19;
  *(**(a1 + 72) + 8 * v14) |= 1 << v19;
  v16 = *(a1 + 8);
  if (*(a1 + 40) == a3)
  {
    if (v16)
    {
      *(*v16 + 8 * v14) |= v15;
    }
  }

  else
  {
    if (v16)
    {
      *(*v16 + 8 * v14) &= ~v15;
    }

    **(a1 + 24) = **(a1 + 24) & 0xFFFFFCFFFFFFFFFFLL | 0x20000000000;
  }

  ++*(a1 + 44);
  return 1;
}

unint64_t sub_1000A9C54(uint64_t a1, int a2, int a3)
{
  v6 = (*(**(a1 + 32) + 24))(&v22);
  result = sub_10002B59C(v6, v7);
  v23 = v22;
  HIDWORD(v22) = *result;
  if (*&v22 != *(&v22 + 1))
  {
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v9 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * a2) != *(v9 + 4 * a2))
  {
    goto LABEL_16;
  }

  v10 = 0;
  v11 = *(a1 + 80);
  v12 = **(a1 + 16);
  v13 = (*(v11 + 8) - 4);
  v14 = v13;
  do
  {
    v15 = *v14--;
    v10 |= *(v12 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15;
  }

  while (v15 != a2);
  v16 = *a1;
  v17 = **(a1 + 72);
  while (1)
  {
    v18 = *v13;
    if (v16)
    {
      *(*v16 + 4 * v18) = *(a1 + 48);
    }

    result = v18 >> 6;
    v19 = 1 << v18;
    if ((v10 & 1) == 0)
    {
      break;
    }

    *(v12 + 8 * result) |= v19;
    *(v17 + 8 * result) &= ~v19;
    if (v18 == a2)
    {
      *(v11 + 8) = v13;
      goto LABEL_15;
    }

LABEL_13:
    --v13;
  }

  *(v17 + 8 * result) &= ~v19;
  if (v18 != a2)
  {
    goto LABEL_13;
  }

  *(v11 + 8) = v13;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_15:
  ++*(a1 + 48);
LABEL_16:
  if (a3 != -1)
  {
    v20 = **(a1 + 16);
    if ((*(v20 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
    {
      *(v20 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v21 = *(v9 + 4 * a2);
    if (v21 < *(v9 + 4 * a3))
    {
      *(v9 + 4 * a3) = v21;
    }
  }

  return result;
}

void *sub_1000A9E5C(void *a1)
{
  *a1 = off_100101040;
  a1[1] = off_100101068;
  sub_10002C1E4(a1 + 4);
  return a1;
}

void sub_1000A9EC4(void *a1)
{
  *a1 = off_100101040;
  a1[1] = off_100101068;
  sub_10002C1E4(a1 + 4);

  operator delete();
}

void sub_1000A9F4C(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    sub_1000A9FD4(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void sub_1000A9FD4(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10002C638(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10007257C(a1, &v9);
}

void sub_1000AA15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000AA1A8(void *a1, void *a2, uint64_t *a3)
{
  v29 = 0u;
  v30 = 0u;
  *v27 = 0u;
  *v28 = 0u;
  v6 = -1;
  v32 = 0;
  v33 = 0;
  v31 = -1;
  v31 = (*(*a1 + 16))(a1);
  v32 = -1;
  if (*(*a1 + 56))(a1, 1, 0) || (*(a3 + 28))
  {
    v6 = 0;
LABEL_4:
    v7 = 0;
    v32 = sub_1000A9930(a1);
    goto LABEL_5;
  }

  v25 = a2 + *(*a2 - 24);
  if ((v25[32] & 5) == 0)
  {
    (*(**(v25 + 5) + 32))(__p);
    v6 = v35;
    if (v35 != -1)
    {
      goto LABEL_4;
    }
  }

  v7 = 1;
LABEL_5:
  v8 = (*(*a1 + 56))(a1, 0xFFFFFFFF0004, 0);
  sub_1000113AC(__p, "vector");
  sub_1000AA6E0(a1, a2, a3, 2, __p, v8 | 3, &v26 + 4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v9 = *(a1[1] + 64) - *(a1[1] + 56);
  if ((v9 >> 3) < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = (v9 >> 3) & 0x7FFFFFFF;
    do
    {
      (*(*a1 + 24))(&v26, a1, v10);
      LODWORD(__p[0].__r_.__value_.__l.__data_) = v26;
      std::ostream::write();
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 32))(a1, v10);
      std::ostream::write();
      v12 = *(*(a1[1] + 56) + 8 * v10);
      v13 = *(v12 + 24);
      v14 = *(v12 + 32);
      if (v13 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(v12 + 24);
      }

      if (v13 != v14)
      {
        v16 = (v14 - v13) >> 4;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        v18 = (v15 + 8);
        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 2);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 1);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v18;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v18[1];
          std::ostream::write();
          v18 += 4;
          --v17;
        }

        while (v17);
      }

      ++v10;
    }

    while (v10 != v11);
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    sub_1000113AC(__p, "ERROR");
    sub_10002B1D4(&v26, __p);
    v19 = sub_10002AE44(&std::cerr, "VectorFst::Write: Write failed: ", 32);
    v20 = *(a3 + 23);
    if (v20 >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    if (v20 >= 0)
    {
      v22 = *(a3 + 23);
    }

    else
    {
      v22 = a3[1];
    }

    sub_10002AE44(v19, v21, v22);
LABEL_29:
    sub_10002B280(&v26);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v23 = 0;
    goto LABEL_32;
  }

  if (!v7)
  {
    if (v32 == v11)
    {
      v23 = 1;
      goto LABEL_32;
    }

    sub_1000113AC(__p, "ERROR");
    sub_10002B1D4(&v26, __p);
    sub_10002AE44(&std::cerr, "Inconsistent number of states observed during write", 51);
    goto LABEL_29;
  }

  v32 = v11;
  sub_1000113AC(__p, "vector");
  v23 = sub_1000AA90C(a1, a2, a3, 2, __p, v8 | 3, &v26 + 4, v6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[1]);
  }

  if (SHIBYTE(v28[0]) < 0)
  {
    operator delete(v27[0]);
  }

  return v23;
}

uint64_t sub_1000AA6E0(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = sub_1000AAD0C();
    std::string::operator=((a7 + 32), v13);
    *(a7 + 56) = a4;
    *(a7 + 64) = a6;
    if ((*(*a1 + 96))(a1))
    {
      v14 = a3[25];
    }

    else
    {
      v14 = 0;
    }

    v15 = (*(*a1 + 104))(a1);
    if (a3[26])
    {
      v16 = v14 | 2;
    }

    else
    {
      v16 = v14;
    }

    if (!v15)
    {
      v16 = v14;
    }

    if (a3[27])
    {
      v16 |= 4u;
    }

    *(a7 + 60) = v16;
    sub_1000C8644(a7, a2);
  }

  if ((*(*a1 + 96))(a1) && a3[25] == 1)
  {
    v17 = (*(*a1 + 96))(a1);
    (*(*v17 + 144))(v17, a2);
  }

  result = (*(*a1 + 104))(a1);
  if (result && a3[26] == 1)
  {
    v19 = *(*(*(*a1 + 104))(a1) + 144);

    return v19();
  }

  return result;
}

uint64_t sub_1000AA90C(uint64_t a1, void *a2, uint64_t **a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  std::ostream::sentry::sentry();
  v16 = a2 + *(*a2 - 24);
  if ((v16[32] & 5) == 0)
  {
    v17 = *(v16 + 5);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    __p = 0u;
    v28 = 0u;
    v35 = a8;
    (*(*v17 + 40))(v26);
    if (v26[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  std::ostream::sentry::~sentry();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    sub_1000113AC(&__p, "ERROR");
    sub_10002B1D4(v26, &__p);
    v18 = sub_10002AE44(&std::cerr, "Fst::UpdateFstHeader: Write failed: ", 36);
    v19 = *(a3 + 23);
    if (v19 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    if (v19 >= 0)
    {
      v21 = *(a3 + 23);
    }

    else
    {
      v21 = a3[1];
    }
  }

  else
  {
    sub_1000AA6E0(a1, a2, a3, a4, a5, a6, a7);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      sub_1000113AC(&__p, "ERROR");
      sub_10002B1D4(v26, &__p);
      v18 = sub_10002AE44(&std::cerr, "Fst::UpdateFstHeader: Write failed: ", 36);
      v22 = *(a3 + 23);
      if (v22 >= 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      if (v22 >= 0)
      {
        v21 = *(a3 + 23);
      }

      else
      {
        v21 = a3[1];
      }
    }

    else
    {
      std::ostream::sentry::sentry();
      v23 = a2 + *(*a2 - 24);
      if ((v23[32] & 5) == 0)
      {
        (*(**(v23 + 5) + 32))(&__p);
        if (v35 == -1)
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
        }
      }

      std::ostream::sentry::~sentry();
      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        return 1;
      }

      sub_1000113AC(&__p, "ERROR");
      sub_10002B1D4(v26, &__p);
      v18 = sub_10002AE44(&std::cerr, "Fst::UpdateFstHeader: Write failed: ", 36);
      v24 = *(a3 + 23);
      if (v24 >= 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      if (v24 >= 0)
      {
        v21 = *(a3 + 23);
      }

      else
      {
        v21 = a3[1];
      }
    }
  }

  sub_10002AE44(v18, v20, v21);
  sub_10002B280(v26);
  if (SBYTE7(v28) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

uint64_t sub_1000AAD0C()
{
  if ((atomic_load_explicit(&qword_10010E268, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10010E268))
  {
    operator new();
  }

  return qword_10010E260;
}

uint64_t sub_1000AADD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    sub_10002D9AC(__p, a2, 20);
    if ((v29[*(__p[0] - 3)] & 5) != 0)
    {
      sub_1000113AC(v16, "ERROR");
      sub_10002B1D4(&v22, v16);
      v5 = sub_10002AE44(&std::cerr, "Fst::Write: Can't open file: ", 29);
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

      goto LABEL_31;
    }

    v10 = byte_10010E8AD;
    if (*(a2 + 23) < 0)
    {
      sub_1000732A4(v16, *a2, *(a2 + 8));
    }

    else
    {
      *v16 = *a2;
      v17 = *(a2 + 16);
    }

    v18 = 257;
    v19 = 1;
    v20 = v10;
    v21 = 0;
    v12 = (*(*a1 + 80))(a1, __p, v16);
    v13 = v12;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
      if (v13)
      {
        goto LABEL_23;
      }
    }

    else if (v12)
    {
LABEL_23:
      v11 = 1;
LABEL_34:
      std::filebuf::~filebuf();
      std::ostream::~ostream();
      std::ios::~ios();
      return v11;
    }

    sub_1000113AC(v16, "ERROR");
    sub_10002B1D4(&v22, v16);
    v5 = sub_10002AE44(&std::cerr, "Fst::Write failed: ", 19);
    v14 = *(a2 + 23);
    if (v14 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v14 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

LABEL_31:
    sub_10002AE44(v5, v7, v8);
    sub_10002B280(&v22);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }

    v11 = 0;
    goto LABEL_34;
  }

  sub_1000113AC(v16, "standard output");
  v9 = byte_10010E8AD;
  if (SHIBYTE(v17) < 0)
  {
    sub_1000732A4(__p, v16[0], v16[1]);
  }

  else
  {
    *__p = *v16;
    v24 = v17;
  }

  v25 = 257;
  v26 = 1;
  v27 = v9;
  v28 = 0;
  v11 = (*(*a1 + 80))(a1, &std::cout, __p);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  return v11;
}

void *sub_1000AB23C(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100103B68;
  sub_1000AB298((a1 + 3), a2);
  return a1;
}

uint64_t sub_1000AB298(uint64_t a1, uint64_t a2)
{
  *a1 = off_100103C58;
  *(a1 + 8) = 0;
  sub_1000113AC((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *a1 = off_100103BB8;
  sub_1000113AC(&__p, "vector");
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 96))(a2);
  sub_10002DDA4(a1, v4);
  v5 = (*(*a2 + 104))(a2);
  sub_10002DE44(a1, v5);
  *(a1 + 80) = (*(*a2 + 16))(a2);
  if ((*(*a2 + 56))(a2, 1, 0))
  {
    v6 = sub_1000A9930(a2);
    sub_10002E1F8((a1 + 56), v6);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  (*(*a2 + 112))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))();
      }

LABEL_10:
      sub_10002DEE4(a1);
    }

    if (v9)
    {
      (*(*v9 + 8))();
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 56))(a2, 0xFFFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

void sub_1000AB82C(uint64_t *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_10002E3F0(a1, a2);
    }

    sub_100017658();
  }
}

void sub_1000AB8CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000AB904(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[1];
  }

  if (!a2[1])
  {
    ++a1[2];
  }

  return sub_1000AB934(a1 + 3, a2);
}

uint64_t sub_1000AB934(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1000AB98C(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 12) = *(a2 + 12);
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1000AB98C(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_100017658();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_10002E3F0(a1, v7);
  }

  v8 = 16 * v2;
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 12) = *(a2 + 12);
  v13 = 16 * v2 + 16;
  sub_10002E370(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_1000ABA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000ABAC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1 || *(v1 + 8))
  {
    sub_1000ABB38();
  }
}

void *sub_1000ABBA4(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100103B68;
  sub_1000AB298((a1 + 3), a2);
  return a1;
}

float sub_1000ABC00(void *a1, int a2, float *a3)
{
  v9 = **(a1[7] + 8 * a2);
  v6 = (*(*a1 + 16))(a1);
  v7 = sub_100073A04(v6, &v9, a3);
  result = *a3;
  **(a1[7] + 8 * a2) = *a3;
  a1[1] = a1[1] & 4 | v7;
  return result;
}

uint64_t sub_1000ABC98(void *a1, uint64_t a2, float *a3)
{
  v6 = *(*(a1[7] + 8 * a2) + 32);
  if (v6 == *(*(a1[7] + 8 * a2) + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 16);
  }

  v8 = (*(*a1 + 16))(a1);
  a1[1] = a1[1] & 4 | sub_1000738DC(v8, a2, a3, v7);
  v9 = *(a1[7] + 8 * a2);

  return sub_1000AB904(v9, a3);
}

void sub_1000ABD40(uint64_t a1, char **a2)
{
  v4 = (a1 + 56);
  v5 = (*(a1 + 64) - *(a1 + 56)) >> 3;
  v39 = 0;
  sub_10002EB78(__p, v5, &v39);
  v6 = *a2;
  v7 = a2[1] - *a2;
  if (v7)
  {
    v8 = v7 >> 2;
    v9 = __p[0];
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      v10 = *v6++;
      v9[v10] = -1;
      --v8;
    }

    while (v8);
  }

  v11 = *(a1 + 56);
  if (*(a1 + 64) == v11)
  {
    v14 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (*(__p[0] + v12) == -1)
      {
        sub_10002E5F4(*(v11 + 8 * v12));
      }

      else
      {
        *(__p[0] + v12) = v13;
        if (v12 != v13)
        {
          *(v11 + 8 * v13) = *(v11 + 8 * v12);
        }

        ++v13;
      }

      ++v12;
      v11 = *(a1 + 56);
    }

    while (v12 < (*(a1 + 64) - v11) >> 3);
    v14 = v13;
  }

  sub_10002EAF4(v4, v14);
  v15 = *(a1 + 56);
  if (*(a1 + 64) != v15)
  {
    v16 = 0;
    do
    {
      v17 = *(v15 + 8 * v16);
      v18 = *(v17 + 24);
      v19 = *(v17 + 32);
      v20 = *(v17 + 8);
      v22 = v19 - v18;
      v21 = v19 == v18;
      if (v19 == v18)
      {
        v23 = 0;
      }

      else
      {
        v23 = *(v17 + 24);
      }

      if (v21)
      {
        v25 = 0;
        v32 = v22 >> 4;
        v33 = *(v17 + 16);
        v34 = *(v17 + 8);
      }

      else
      {
        v24 = 0;
        v25 = 0;
        v26 = (v23 + 12);
        do
        {
          v27 = *(__p[0] + *v26);
          if (v27 == -1)
          {
            v29 = *(v26 - 3);
            v30.i64[0] = v29;
            v30.i64[1] = HIDWORD(v29);
            v20 = vaddq_s64(v20, vceqzq_s64(v30));
          }

          else
          {
            *v26 = v27;
            if (v24 != v25)
            {
              v28 = v23 + 16 * v25;
              *v28 = *(v26 - 3);
              *(v28 + 8) = *(v26 - 1);
              *(v28 + 12) = v27;
              v15 = *v4;
            }

            ++v25;
          }

          v17 = *(v15 + 8 * v16);
          ++v24;
          v31 = *(v17 + 32) - *(v17 + 24);
          v26 += 4;
        }

        while (v24 < v31 >> 4);
        v32 = v31 >> 4;
        v33 = v20.i64[1];
        v34 = v20.i64[0];
      }

      sub_10002EB24(v17, v32 - v25);
      v15 = *(a1 + 56);
      v35 = *(a1 + 64);
      v36 = *(v15 + 8 * v16);
      *(v36 + 8) = v34;
      *(v36 + 16) = v33;
      ++v16;
    }

    while (v16 < (v35 - v15) >> 3);
  }

  v37 = *(a1 + 80);
  if (v37 == -1)
  {
    v38 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v38 = __p[0];
    *(a1 + 80) = *(__p[0] + v37);
  }

  __p[1] = v38;
  operator delete(v38);
}

void sub_1000ABF54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000ABFF0(uint64_t a1, float *a2)
{
  v4 = *(*(a1 + 8) + 24) + 16 * *(a1 + 24);
  v5 = *v4;
  v6 = *(v4 + 4);
  if (*v4 != v6)
  {
    **(a1 + 16) &= ~0x20000uLL;
  }

  if (v5)
  {
    if (!v6)
    {
      v7 = *(a1 + 16);
      v8 = *v7;
LABEL_8:
      *v7 = v8 & 0xFFFFFFFFFBFFFFFFLL;
    }
  }

  else
  {
    v7 = *(a1 + 16);
    v9 = *v7;
    *v7 &= ~0x1000000uLL;
    if (!v6)
    {
      v8 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      *v7 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      goto LABEL_8;
    }
  }

  v10 = sub_10002B59C(a1, a2);
  if (*(v4 + 8) != *v10 && *(v4 + 8) != *sub_10002B564(v10, v11))
  {
    **(a1 + 16) &= ~0x100000000uLL;
  }

  sub_10002F248(*(a1 + 8), a2, *(a1 + 24));
  v14 = *a2;
  v15 = *(a2 + 1);
  if (*a2 != v15)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v14 == 0.0)
  {
    v16 = *(a1 + 16);
    v18 = *v16 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v16 = v18;
    if (!v15)
    {
      v17 = v18 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v16 = v17;
      goto LABEL_19;
    }
  }

  else if (!v15)
  {
    v16 = *(a1 + 16);
    v17 = *v16;
LABEL_19:
    *v16 = v17 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  result = sub_10002B59C(v12, v13);
  if (a2[2] != *result)
  {
    result = sub_10002B564(result, v20);
    if (a2[2] != *result)
    {
      **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFCFFFFFFFFLL | &_mh_execute_header;
    }
  }

  **(a1 + 16) &= 0x30FC30007uLL;
  return result;
}

void sub_1000AC1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &off_100103678;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  v4 = (a1 + 48);
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0;
  v5 = (*(*a2 + 56))(a2, 0x4E00000000, 0);
  if ((v5 & 0x4000000000) == 0 && (*(*a2 + 16))(a2) != -1)
  {
    if ((v5 & 0x800000000) == 0)
    {
      if ((v5 & 0x200000000) == 0)
      {
        v9 = 0;
        __p[0] = v4;
        __p[1] = 0;
        __p[2] = 0;
        __p[3] = &v9;
        v7 = 0u;
        v8 = 0u;
        sub_1000A8EBC(a2, __p, 0);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1000ACCCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_10002B280(&a19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    operator delete();
  }

  if (a10)
  {
    operator delete();
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  sub_10002CCE8(&a23);
  v33 = *v29;
  if (*v29)
  {
    *(v28 + 56) = v33;
    operator delete(v33);
  }

  sub_10009FA44(&a23);
  v34 = *v31;
  *v31 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000ACEB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v11 = *(a3 + 8) - *a3;
  if (v11)
  {
    v12 = v11 >> 2;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    bzero(*a3, 4 * v12);
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  (*(*a1 + 112))(a1, &v32);
  while (1)
  {
    result = v32;
    if (!v32)
    {
      if (v34 >= v33)
      {
        return result;
      }

LABEL_11:
      v15 = v34;
      goto LABEL_12;
    }

    v14 = (*(*v32 + 16))(v32);
    result = v32;
    if (v14)
    {
      break;
    }

    if (!v32)
    {
      goto LABEL_11;
    }

    v15 = (*(*v32 + 24))();
LABEL_12:
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    (*(*a1 + 120))(a1, v15, &v29);
    while (1)
    {
      v17 = v29;
      if (!v29)
      {
        if (v31 >= v30)
        {
          goto LABEL_38;
        }

        goto LABEL_18;
      }

      v18 = (*(*v29 + 16))(v29);
      v17 = v29;
      if (v18)
      {
        break;
      }

      if (v29)
      {
        v17 = (*(*v29 + 24))();
        v19 = v17;
        goto LABEL_19;
      }

LABEL_18:
      v19 = *(&v29 + 1) + 16 * v31;
LABEL_19:
      v20 = *(*a2 + 4 * v15);
      if (v20 == *(*a2 + 4 * *(v19 + 12)))
      {
        v21 = *a3;
        if (!a4 || (v22 = sub_10002B564(v17, v16), v23 = (v19 + 8), v17 = sub_10009EC84(a4, (v19 + 8), v22), (v17 & 1) != 0))
        {
          v24 = 1;
          goto LABEL_23;
        }

        if ((v21[v20] | 2) == 2)
        {
          v17 = sub_10002B59C(v17, v16);
          v36 = *v23;
          v35 = *v17;
          if (v36 == v35 || (v17 = sub_10002B564(v17, v16), v36 = *v23, v35 = *v17, v36 == v35))
          {
            v24 = 2;
          }

          else
          {
            v24 = 3;
          }

LABEL_23:
          v21[v20] = v24;
        }

        *a5 = 0;
      }

      v25 = sub_10002B59C(v17, v16);
      v36 = *(v19 + 8);
      v35 = *v25;
      v26.n128_f32[0] = v36;
      if (v36 != v35)
      {
        v27 = sub_10002B564(v25, v16);
        v36 = *(v19 + 8);
        v35 = *v27;
        v26.n128_f32[0] = v36;
        if (v36 != v35)
        {
          *a6 = 0;
        }
      }

      if (v29)
      {
        (*(*v29 + 32))(v29, v26);
      }

      else
      {
        ++v31;
      }
    }

    if (v29)
    {
      (*(*v29 + 8))();
      goto LABEL_40;
    }

LABEL_38:
    if (*(&v30 + 1))
    {
      --**(&v30 + 1);
    }

LABEL_40:
    if (v32)
    {
      (*(*v32 + 32))(v32);
    }

    else
    {
      ++v34;
    }
  }

  if (v32)
  {
    return (*(*v32 + 8))();
  }

  return result;
}

void sub_1000AD294(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    (*(*a17 + 8))(a17, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000AD328(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = off_100103758;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = 0;
  v2[0] = a1 + 24;
  v2[1] = &v3;
  v2[2] = 0;
  sub_1000AD4FC(a2, v2, 0);
}

void sub_1000AD488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    sub_10002BE48(v23 + 16, a21);
  }

  v25 = v21[6];
  if (v25)
  {
    v21[7] = v25;
    operator delete(v25);
  }

  v26 = *v22;
  if (*v22)
  {
    v21[4] = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000ADCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a16)
  {
    (*(*a16 + 8))(a16, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10002C1E4(&a23);
  sub_10002CC3C(&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000ADD98(void *a1, int a2)
{
  if ((*(**a1 + 16))(*a1) == -1)
  {
    result = (*(**a1 + 56))(*a1, 4, 0);
    if (!result)
    {
      return result;
    }

    v89 = a1 + 140;
LABEL_114:
    *v89 = 1;
    return result;
  }

  v4 = (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    *(a1[1] + 8) = *a1[1];
    a1[6] = a1[5];
    a1[9] = a1[8];
    a1[12] = 0;
  }

  if (a2 == -1)
  {
    v4 = (*(**a1 + 16))();
    a2 = v4;
  }

  v6 = a2;
  while (1)
  {
    v7 = a1[1];
    if (v6 < (*(v7 + 8) - *v7) >> 2)
    {
      break;
    }

    v8 = sub_10002B59C(v4, v5);
    v9 = *(v7 + 8);
    if (v9 >= *(v7 + 16))
    {
      v10 = sub_1000A22F4(v7, v8);
    }

    else
    {
      *v9 = *v8;
      v10 = v9 + 1;
    }

    *(v7 + 8) = v10;
    v12 = *sub_10002B59C(v10, v8);
    LODWORD(v90) = v12;
    v13 = a1[6];
    if (v13 >= a1[7])
    {
      v14 = sub_1000A247C((a1 + 5), &v90);
    }

    else
    {
      *v13 = v12;
      v14 = (v13 + 1);
    }

    a1[6] = v14;
    v15 = *sub_10002B59C(v14, v11);
    LODWORD(v90) = v15;
    v16 = a1[9];
    if (v16 >= a1[10])
    {
      v17 = sub_1000A247C((a1 + 8), &v90);
    }

    else
    {
      *v16 = v15;
      v17 = (v16 + 1);
    }

    a1[9] = v17;
    LOBYTE(v90) = 0;
    sub_10002C87C((a1 + 11), &v90);
  }

  if (*(a1 + 33) == 1)
  {
    for (i = a1[14]; v6 >= (a1[15] - i) >> 2; i = a1[14])
    {
      sub_10002C79C(a1 + 14, &dword_1000D4FEC);
    }

    *(i + 4 * v6) = *(a1 + 34);
  }

  v19 = sub_10002B564(v4, v5);
  *(*a1[1] + 4 * v6) = *v19;
  v20 = a1[5];
  v22 = sub_10002B564(v19, v21);
  *(v20 + 4 * v6) = *v22;
  v23 = a1[8];
  *(v23 + 4 * v6) = *sub_10002B564(v22, v24);
  *(a1[11] + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v6;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), v6);
  v89 = a1 + 140;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_113;
    }

    v26 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    v27 = (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    while (1)
    {
      v29 = a1[1];
      if (v26 < ((*(v29 + 8) - *v29) >> 2))
      {
        break;
      }

      v30 = sub_10002B59C(v27, v28);
      v31 = *(v29 + 8);
      if (v31 >= *(v29 + 16))
      {
        v32 = sub_1000A22F4(v29, v30);
      }

      else
      {
        *v31 = *v30;
        v32 = v31 + 1;
      }

      *(v29 + 8) = v32;
      v34 = *sub_10002B59C(v32, v30);
      LODWORD(v90) = v34;
      v35 = a1[6];
      if (v35 >= a1[7])
      {
        v36 = sub_1000A247C((a1 + 5), &v90);
      }

      else
      {
        *v35 = v34;
        v36 = (v35 + 1);
      }

      a1[6] = v36;
      v37 = *sub_10002B59C(v36, v33);
      LODWORD(v90) = v37;
      v38 = a1[9];
      if (v38 >= a1[10])
      {
        v39 = sub_1000A247C((a1 + 8), &v90);
      }

      else
      {
        *v38 = v37;
        v39 = (v38 + 1);
      }

      a1[9] = v39;
      LOBYTE(v90) = 0;
      sub_10002C87C((a1 + 11), &v90);
    }

    if (*(a1 + 32) == 1)
    {
      v40 = (*(**a1 + 24))(&v93);
      v27 = sub_10002B59C(v40, v41);
      LODWORD(v90) = v93;
      HIDWORD(v93) = *v27;
      v25.n128_u32[0] = v93;
      if (*&v93 != *(&v93 + 1))
      {
LABEL_113:
        ++*(a1 + 34);
        result = (*(**a1 + 56))(*a1, 4, 0, v25);
        if (!result)
        {
          return result;
        }

        goto LABEL_114;
      }
    }

    *(a1[11] + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v26);
    v42 = a1[8];
    v43 = *(v42 + 4 * v26);
    *(v42 + 4 * v26) = *sub_10002B59C(v27, v28);
    v44 = *a1;
    v90 = 0u;
    v91 = 0u;
    v92 = 0;
    (*(*v44 + 120))(v44, v26, &v90);
    while (1)
    {
      v46 = v90;
      if (v90)
      {
        if ((*(*v90 + 16))(v90))
        {
          goto LABEL_103;
        }

        v46 = v90;
        if (v90)
        {
          v46 = (*(*v90 + 24))(v90);
          v47 = v46;
          goto LABEL_45;
        }
      }

      else if (v92 >= v91)
      {
LABEL_103:
        v87 = 1;
        goto LABEL_105;
      }

      v47 = *(&v90 + 1) + 16 * v92;
LABEL_45:
      v48 = a1[1];
      v49 = (v48 + 8);
      for (j = *(v47 + 12); j >= (*(v48 + 8) - *v48) >> 2; j = *(v47 + 12))
      {
        v51 = sub_10002B59C(v46, v45);
        v52 = *v49;
        if (*v49 >= *(v48 + 16))
        {
          v53 = sub_1000A22F4(v48, v51);
        }

        else
        {
          *v52 = *v51;
          v53 = v52 + 1;
        }

        *v49 = v53;
        v55 = *sub_10002B59C(v53, v51);
        HIDWORD(v93) = v55;
        v56 = a1[6];
        if (v56 >= a1[7])
        {
          v57 = sub_1000A247C((a1 + 5), &v93 + 1);
        }

        else
        {
          *v56 = v55;
          v57 = (v56 + 1);
        }

        a1[6] = v57;
        v58 = *sub_10002B59C(v57, v54);
        HIDWORD(v93) = v58;
        v59 = a1[9];
        if (v59 >= a1[10])
        {
          v60 = sub_1000A247C((a1 + 8), &v93 + 1);
        }

        else
        {
          *v59 = v58;
          v60 = (v59 + 1);
        }

        a1[9] = v60;
        BYTE4(v93) = 0;
        sub_10002C87C((a1 + 11), &v93 + 4);
        v48 = a1[1];
        v49 = (v48 + 8);
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v61 = a1[14];
          LODWORD(j) = *(v47 + 12);
          if (j < ((a1[15] - v61) >> 2))
          {
            break;
          }

          sub_10002C79C(a1 + 14, &dword_1000D4FEC);
        }

        if (*(v61 + 4 * j) != *(a1 + 34))
        {
          v62 = sub_10002B59C(v46, v45);
          v63 = *(v47 + 12);
          *(*a1[1] + 4 * v63) = *v62;
          v64 = a1[5];
          v66 = sub_10002B59C(v62, v65);
          *(v64 + 4 * v63) = *v66;
          v67 = *(v47 + 12);
          v68 = a1[8];
          v46 = sub_10002B59C(v66, v69);
          *(v68 + 4 * v67) = *v46;
          v70 = *(v47 + 12);
          *(a1[11] + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v70);
          *(a1[14] + 4 * v70) = *(a1 + 34);
          LODWORD(j) = *(v47 + 12);
        }
      }

      v71 = *a1[1];
      v72 = a1[5];
      v73 = a1[8];
      if (v43 == -INFINITY || (v74 = *(v47 + 8), v74 >= -INFINITY) && v74 <= -INFINITY)
      {
        v46 = sub_1000777A0(v46, v45);
        v75 = *v46;
      }

      else
      {
        v76 = v74 == INFINITY || v43 == INFINITY;
        v77 = v43 + v74;
        v75 = v76 ? INFINITY : v77;
      }

      v78 = *(v71 + 4 * j);
      if (v78 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
      {
        v46 = sub_1000777A0(v46, v45);
        v79 = *v46;
        v78 = *(v71 + 4 * j);
      }

      else
      {
        v79 = v78 >= v75 ? v75 : *(v71 + 4 * j);
      }

      v80 = *(a1 + 7);
      v81 = v79 + v80;
      v82 = v80 + v78;
      if (v78 > v81 || v79 > v82)
      {
        break;
      }

LABEL_100:
      if (v90)
      {
        (*(*v90 + 32))(v90);
      }

      else
      {
        ++v92;
      }
    }

    v84 = *(v72 + 4 * j);
    if (v84 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
    {
      v46 = sub_1000777A0(v46, v45);
      v84 = *v46;
    }

    else if (v84 >= v75)
    {
      v84 = v75;
    }

    *(v72 + 4 * j) = v84;
    *(v71 + 4 * j) = v84;
    v85 = *(v73 + 4 * j);
    if (v85 == -INFINITY || v75 >= -INFINITY && v75 <= -INFINITY)
    {
      v85 = *sub_1000777A0(v46, v45);
    }

    else if (v85 >= v75)
    {
      v85 = v75;
    }

    *(v73 + 4 * j) = v85;
    if (*(v71 + 4 * j) != -INFINITY && v85 != -INFINITY)
    {
      v86 = **(a1[2] + 16);
      if ((*(a1[11] + ((*(v47 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v47 + 12)))
      {
        (*(v86 + 40))();
      }

      else
      {
        (*(v86 + 24))();
        *(a1[11] + ((*(v47 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v47 + 12);
      }

      goto LABEL_100;
    }

    v87 = 0;
    *v89 = 1;
LABEL_105:
    result = v90;
    if (v90)
    {
      result = (*(*v90 + 8))(v90);
    }

    else if (*(&v91 + 1))
    {
      --**(&v91 + 1);
    }
  }

  while ((v87 & 1) != 0);
  return result;
}

void sub_1000AE7A8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

void sub_1000AE820(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 2)
  {
    if (a2)
    {
      v12 = 0;
      a4.i32[0] = *a3;
      v13 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = vdupq_n_s64(v13);
      v15 = v6 + 4 * a2;
      v16 = v13 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v17 = (v6 + 8);
      do
      {
        v18 = vdupq_n_s64(v12);
        v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_1000D1170)));
        if (vuzp1_s16(v19, a4).u8[0])
        {
          *(v17 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v19, a4).i8[2])
        {
          *(v17 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_1000D1160)))).i32[1])
        {
          *v17 = a4.i32[0];
          v17[1] = a4.i32[0];
        }

        v12 += 4;
        v17 += 4;
      }

      while (v16 != v12);
    }

    else
    {
      v15 = *(a1 + 8);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_100017658();
    }

    v9 = v7 >> 2;
    v10 = v5 - *a1;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    v30 = a1;
    if (v11)
    {
      sub_10002C924(a1, v11);
    }

    v20 = 0;
    __p = 0;
    v27 = 4 * v9;
    v29 = 0;
    a4.i32[0] = *a3;
    v21 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v22 = vdupq_n_s64(v21);
    v23 = (4 * v9 + 8);
    do
    {
      v24 = vdupq_n_s64(v20);
      v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_1000D1170)));
      if (vuzp1_s16(v25, a4).u8[0])
      {
        *(v23 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v25, a4).i8[2])
      {
        *(v23 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_1000D1160)))).i32[1])
      {
        *v23 = a4.i32[0];
        v23[1] = a4.i32[0];
      }

      v20 += 4;
      v23 += 4;
    }

    while (v21 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4 != v20);
    v28 = 4 * v9 + 4 * a2;
    sub_1000A2410(a1, &__p);
    if (v28 != v27)
    {
      v28 += (v27 - v28 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_1000AEA70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000AEAA8(uint64_t a1, _DWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 2;
  v3 = v2 + 1;
  if ((v2 + 1) >> 62)
  {
    sub_100017658();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 1 > v3)
  {
    v3 = v6 >> 1;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v7 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_10002C924(a1, v7);
  }

  __p = 0;
  v11 = (4 * v2);
  *v11 = *a2;
  v12 = 4 * v2 + 4;
  v13 = 0;
  sub_1000A2410(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_1000AEB8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1000AEBC4(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_1000943E0(a1, a2);
  }

  return a1;
}

void sub_1000AEC80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000AEC9C(uint64_t **a1, unsigned int *a2, int a3)
{
  v3 = a3;
  if (a3 >= 1)
  {
    v6 = a1[9];
    while (1)
    {
      v7 = v3 - 1;
      v8 = (v3 - 1) >> 1;
      if (sub_1000AED4C(a1, *(v6 + v8), *a2))
      {
        break;
      }

      v9 = a1[6];
      v10 = *(v9 + v3);
      v11 = *(v9 + v8);
      *(v9 + v3) = v11;
      v12 = a1[3];
      *(v12 + v11) = v3;
      *(v9 + v8) = v10;
      *(v12 + v10) = v8;
      v6 = a1[9];
      LODWORD(v10) = *(v6 + v3);
      *(v6 + v3) = *(v6 + v8);
      *(v6 + v8) = v10;
      v3 = v7 >> 1;
      if (v7 <= 1)
      {
        return *(a1[6] + v8);
      }
    }
  }

  v8 = v3;
  return *(a1[6] + v8);
}

BOOL sub_1000AED4C(uint64_t **a1, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = **a1;
  if (a2 >= (((*a1)[1] - v6) >> 2))
  {
    v7 = sub_10002B59C(a1, a2);
  }

  else
  {
    v7 = (v6 + 4 * a2);
  }

  v8 = *v7;
  v9 = *a1[1];
  if (v5 >= (a1[1][1] - v9) >> 2)
  {
    v10 = sub_10002B59C(v7, a2);
  }

  else
  {
    v10 = (v9 + 4 * v5);
  }

  if (v8 == -INFINITY || (v11 = *v10, *v10 >= -INFINITY) && *v10 <= -INFINITY)
  {
    v10 = sub_1000777A0(v10, a2);
    v12 = *v10;
  }

  else
  {
    v13 = v11 == INFINITY || v8 == INFINITY;
    v12 = v8 + v11;
    if (v13)
    {
      v12 = INFINITY;
    }
  }

  v24 = v12;
  v14 = **a1;
  if (a3 >= (((*a1)[1] - v14) >> 2))
  {
    v15 = sub_10002B59C(v10, a2);
  }

  else
  {
    v15 = (v14 + 4 * a3);
  }

  v16 = *v15;
  v17 = *a1[1];
  if (a3 >= ((a1[1][1] - v17) >> 2))
  {
    v18 = sub_10002B59C(v15, a2);
  }

  else
  {
    v18 = (v17 + 4 * a3);
  }

  if (v16 == -INFINITY || (v19 = *v18, *v18 >= -INFINITY) && *v18 <= -INFINITY)
  {
    v20 = *sub_1000777A0(v18, a2);
  }

  else
  {
    v21 = v19 == INFINITY || v16 == INFINITY;
    v20 = v16 + v19;
    if (v21)
    {
      v20 = INFINITY;
    }
  }

  v23 = v20;
  return sub_10009EC84((a1 + 2), &v24, &v23);
}

BOOL sub_1000AEEC8(_BOOL8 result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = (2 * a2) | 1u;
    if (v4 >= *(v3 + 96) || !(result = sub_1000AED4C(v3, *(*(v3 + 72) + 4 * v4), *(*(v3 + 72) + 4 * a2))))
    {
      v4 = a2;
    }

    v5 = 2 * a2 + 2;
    if (v5 < *(v3 + 96))
    {
      result = sub_1000AED4C(v3, *(*(v3 + 72) + 4 * v5), *(*(v3 + 72) + 4 * v4));
      if (result)
      {
        v4 = v5;
      }

      else
      {
        v4 = v4;
      }
    }

    if (v4 == a2)
    {
      break;
    }

    v6 = *(v3 + 48);
    v7 = *(v6 + 4 * a2);
    v8 = *(v6 + 4 * v4);
    *(v6 + 4 * a2) = v8;
    v9 = *(v3 + 24);
    *(v9 + 4 * v8) = a2;
    *(v6 + 4 * v4) = v7;
    *(v9 + 4 * v7) = v4;
    v10 = *(v3 + 72);
    LODWORD(v7) = *(v10 + 4 * a2);
    *(v10 + 4 * a2) = *(v10 + 4 * v4);
    *(v10 + 4 * v4) = v7;
    a2 = v4;
  }

  return result;
}

void *sub_1000AEF98(void *a1)
{
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[35];
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

  a1[35] = 0;
  v5 = a1[32];
  if (v5)
  {
    operator delete(v5);
  }

  sub_10009E4D4(a1 + 26);
  sub_10001A12C((a1 + 20));
  v6 = a1[16];
  if (v6)
  {
    a1[17] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  if (v7)
  {
    operator delete(v7);
  }

  v8 = a1[10];
  if (v8)
  {
    a1[11] = v8;
    operator delete(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    a1[8] = v9;
    operator delete(v9);
  }

  return a1;
}

uint64_t sub_1000AF040(uint64_t a1)
{
  *a1 = &off_100103678;
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 24);
  sub_10009FA44(&v5);
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t *sub_1000AF0D8(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10002EC8C(result, a4);
  }

  return result;
}

void sub_1000AF138(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000AF1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100016EC0(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000AF1D8(uint64_t a1, uint64_t a2, float **a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  if (v7 == 1)
  {
    v10 = 0;
    v11 = 0;
    *v12 = 0;
    LODWORD(v13) = 0;
    if (sub_1000AF65C(a1, a3, a4, &v13, &v10))
    {
      sub_1000AFEFC(a1, a2, &v10, v13);
    }

    else
    {
      (*(*a2 + 168))(a2, 4, 4);
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }
  }

  else if (v7 >= 1)
  {
    if ((*(a4 + 29) & 1) != 0 || (sub_1000A3B90(a1, a3, a4), a3[1] - *a3 != 4) || (v8 = **a3, v8 < -INFINITY) || v8 > -INFINITY)
    {
      sub_1000A7264(&v13);
    }

    v9 = *(*a2 + 168);

    v9(a2, 4, 4);
  }
}

void sub_1000AF5B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (a13)
  {
    sub_100016EC0(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v21 - 104) = off_100103ED8;
  v23 = *(v21 - 88);
  if (v23)
  {
    sub_100016EC0(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000AF65C(uint64_t a1, int **a2, uint64_t *a3, _DWORD *a4, void *a5)
{
  a5[1] = *a5;
  *a4 = -1;
  v9 = (*(*a1 + 16))(a1);
  if (v9 == -1)
  {
    return 1;
  }

  memset(__p, 0, sizeof(__p));
  v11 = *a3;
  v12 = *(a3 + 3);
  if (v12 == -1)
  {
    v9 = (*(*a1 + 16))(a1);
    v12 = v9;
  }

  v13 = *sub_10002B59C(v9, v10);
  a2[1] = *a2;
  v14 = (*(**(v11 + 16) + 56))(*(v11 + 16));
  while (v12 > (a2[1] - *a2))
  {
    v16 = sub_10002B59C(v14, v15);
    v17 = a2[1];
    if (v17 >= a2[2])
    {
      v18 = sub_1000A22F4(a2, v16);
    }

    else
    {
      *v17 = *v16;
      v18 = v17 + 1;
    }

    a2[1] = v18;
    LOBYTE(v58) = 0;
    sub_10002C87C(__p, &v58);
    v58 = xmmword_1000D2440;
    sub_1000B12A0(a5, &v58);
  }

  v19 = sub_10002B564(v14, v15);
  v20 = a2[1];
  if (v20 >= a2[2])
  {
    v21 = sub_1000A22F4(a2, v19);
  }

  else
  {
    *v20 = *v19;
    v21 = v20 + 1;
  }

  a2[1] = v21;
  v58 = xmmword_1000D2440;
  sub_1000B12A0(a5, &v58);
  (*(**(v11 + 16) + 24))(*(v11 + 16), v12);
  LOBYTE(v58) = 1;
  sub_10002C87C(__p, &v58);
  v56 = 0;
  v55 = a3;
LABEL_14:
  if ((*(**(v11 + 16) + 48))(*(v11 + 16)) & 1) != 0 || (v23 = (*(**(v11 + 16) + 16))(*(v11 + 16)), (*(**(v11 + 16) + 32))(*(v11 + 16)), *(__p[0] + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v23), v24 = *&(*a2)[v23], (*(a3 + 30) & v56) && (LODWORD(v58) = (*a2)[v23], *&v57 = v13, sub_1000B1378(v62, v23, &v58, &v57)))
  {
    v22 = 1;
    goto LABEL_91;
  }

  v25 = (*(*a1 + 24))(v62, a1, v23);
  v27 = sub_10002B59C(v25, v26);
  *&v58 = v62[0];
  LODWORD(v57) = *v27;
  if (v62[0] == *&v57)
  {
    goto LABEL_36;
  }

  v28 = (*(*a1 + 24))(&v58, a1, v23, v62[0]);
  if (v24 == -INFINITY || *&v58 >= -INFINITY && *&v58 <= -INFINITY)
  {
    v28 = sub_1000777A0(v28, v29);
    v30 = *v28;
  }

  else
  {
    v31 = *&v58 == INFINITY || v24 == INFINITY;
    v30 = v24 + *&v58;
    if (v31)
    {
      v30 = INFINITY;
    }
  }

  if (v13 == -INFINITY || v30 >= -INFINITY && v30 <= -INFINITY)
  {
    v30 = *sub_1000777A0(v28, v29);
  }

  else if (v13 < v30)
  {
    v30 = v13;
  }

  *&v58 = v13;
  *&v57 = v30;
  if (v13 != v30)
  {
    *a4 = v23;
    v13 = v30;
  }

  v22 = 0;
  v56 = 1;
  if (v13 != -INFINITY)
  {
LABEL_36:
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    (*(*a1 + 120))(a1, v23, &v58);
    while (1)
    {
      v33 = v58;
      if (v58)
      {
        v34 = (*(*v58 + 16))(v58);
        v33 = v58;
        if (v34)
        {
          v48 = 1;
LABEL_83:
          if (v33)
          {
            (*(*v33 + 8))(v33);
            a3 = v55;
            goto LABEL_88;
          }

LABEL_86:
          a3 = v55;
          if (*(&v59 + 1))
          {
            --**(&v59 + 1);
          }

LABEL_88:
          if ((v48 & 1) == 0)
          {
            v22 = 0;
            break;
          }

          goto LABEL_14;
        }

        if (v58)
        {
          v33 = (*(*v58 + 24))();
          v35 = v33;
          goto LABEL_43;
        }
      }

      else if (v60 >= v59)
      {
        v48 = 1;
        goto LABEL_86;
      }

      v35 = *(&v58 + 1) + 16 * v60;
LABEL_43:
      while (1)
      {
        v36 = *a2;
        v37 = *(v35 + 12);
        if (v37 < a2[1] - *a2)
        {
          break;
        }

        v38 = sub_10002B59C(v33, v32);
        v39 = a2[1];
        if (v39 >= a2[2])
        {
          v40 = sub_1000A22F4(a2, v38);
        }

        else
        {
          *v39 = *v38;
          v40 = v39 + 1;
        }

        a2[1] = v40;
        LOBYTE(v57) = 0;
        sub_10002C87C(__p, &v57);
        v57 = xmmword_1000D2440;
        sub_1000B12A0(a5, &v57);
      }

      if (v24 == -INFINITY || (v41 = *(v35 + 8), v41 >= -INFINITY) && v41 <= -INFINITY)
      {
        v33 = sub_1000777A0(v33, v32);
        v42 = *v33;
      }

      else
      {
        v43 = v41 == INFINITY || v24 == INFINITY;
        v44 = v24 + v41;
        if (v43)
        {
          v42 = INFINITY;
        }

        else
        {
          v42 = v44;
        }
      }

      v45 = *&v36[v37];
      if (v45 == -INFINITY || v42 >= -INFINITY && v42 <= -INFINITY)
      {
        v33 = sub_1000777A0(v33, v32);
        v46 = *v33;
        v45 = *&v36[v37];
      }

      else if (v45 >= v42)
      {
        v46 = v42;
      }

      else
      {
        v46 = *&v36[v37];
      }

      *&v57 = v45;
      v62[0] = v46;
      if (v45 != v46)
      {
        v47 = *&v36[v37];
        if (v47 == -INFINITY || v42 >= -INFINITY && v42 <= -INFINITY)
        {
          v47 = *sub_1000777A0(v33, v32);
        }

        else if (v47 >= v42)
        {
          v47 = v42;
        }

        v48 = 0;
        *&v36[v37] = v47;
        v33 = v58;
        if (v47 == -INFINITY)
        {
          goto LABEL_83;
        }

        if (v58)
        {
          v49 = (*(*v58 + 40))();
        }

        else
        {
          v49 = v60;
        }

        v50 = *(v35 + 12);
        v51 = *a5 + 16 * v50;
        *v51 = v23;
        *(v51 + 8) = v49;
        v52 = **(v11 + 16);
        if ((*(__p[0] + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v50))
        {
          (*(v52 + 40))();
        }

        else
        {
          (*(v52 + 24))();
          *(__p[0] + ((*(v35 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v35 + 12);
        }
      }

      if (v58)
      {
        (*(*v58 + 32))(v58);
      }

      else
      {
        ++v60;
      }
    }
  }

LABEL_91:
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v22;
}

void sub_1000AFE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000AFEFC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  (*(*a2 + 200))(a2);
  v8 = (*(*a1 + 96))(a1);
  (*(*a2 + 256))(a2, v8);
  v9 = (*(*a1 + 104))(a1);
  (*(*a2 + 264))(a2, v9);
  if (a4 != -1)
  {
    v10 = -1;
    v11 = a4;
    v12 = -1;
    while (1)
    {
      v13 = (*(*a2 + 176))(a2);
      if (v10 != -1)
      {
        break;
      }

      (*(*a1 + 24))(&v22, a1, a4);
      (*(*a2 + 160))(a2, v13, &v22);
LABEL_15:
      v10 = v11;
      v11 = *(*a3 + 16 * v11);
      v12 = v13;
      if (v11 == -1)
      {
        goto LABEL_18;
      }
    }

    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    (*(*a1 + 120))(a1, v11, &v22);
    v14 = *(*a3 + 16 * v10 + 8);
    if (v22)
    {
      (*(*v22 + 56))(v22, v14);
      if (v22)
      {
        v15 = (*(*v22 + 24))(v22);
        goto LABEL_11;
      }

      v14 = v24;
    }

    else
    {
      v24 = *(*a3 + 16 * v10 + 8);
    }

    v15 = *(&v22 + 1) + 16 * v14;
LABEL_11:
    v19 = *v15;
    v20 = *(v15 + 8);
    v21 = v12;
    (*(*a2 + 184))(a2, v13, &v19);
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    else if (*(&v23 + 1))
    {
      --**(&v23 + 1);
    }

    goto LABEL_15;
  }

  v13 = 0xFFFFFFFFLL;
LABEL_18:
  (*(*a2 + 152))(a2, v13);
  if ((*(*a1 + 56))(a1, 4, 0))
  {
    (*(*a2 + 168))(a2, 4, 4);
  }

  v16 = (*(*a2 + 56))(a2, 0xFFFFFFFF0007, 0);
  v17 = sub_1000C8D3C(v16, 1);
  return (*(*a2 + 168))(a2, v17, 0xFFFFFFFF0007);
}

void sub_1000B0354(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

char *sub_1000B03A8(char **a1, char *a2, float *a3)
{
  v3 = a2;
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    v9 = *a1;
    v10 = ((v6 - *a1) >> 2) + 1;
    if (v10 >> 62)
    {
      sub_100017658();
    }

    v11 = a2 - v9;
    v12 = v5 - v9;
    if (v12 >> 1 > v10)
    {
      v10 = v12 >> 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v13 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v10;
    }

    v14 = v11 >> 2;
    v25 = a1;
    if (v13)
    {
      sub_10002C924(a1, v13);
    }

    __p = 0;
    v22 = 4 * v14;
    v23 = 4 * v14;
    v24 = 0;
    sub_1000B1444(&__p, a3);
    v3 = sub_1000B153C(a1, &__p, v3);
    if (v23 != v22)
    {
      v23 += (v22 - v23 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v7 = v6 - 4;
    if (v6 < 4)
    {
      v8 = a1[1];
    }

    else
    {
      *v6 = *v7;
      v8 = (v6 + 4);
    }

    a1[1] = v8;
    if (v6 != a2 + 4)
    {
      v15 = (a2 - v6 + 4);
      v16 = v6 - 8;
      do
      {
        v17 = *v16;
        v16 -= 4;
        *v7 = v17;
        v7 -= 4;
        v15 += 4;
      }

      while (v15);
    }

    v18 = v8 <= a3 || a2 > a3;
    v19 = 1;
    if (v18)
    {
      v19 = 0;
    }

    *a2 = a3[v19];
  }

  return v3;
}

void sub_1000B0524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B055C(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, float *a5, int a6, float a7)
{
  if (a4 < 1)
  {
    return;
  }

  (*(*a2 + 200))(a2);
  v14 = (*(*a1 + 96))(a1);
  (*(*a2 + 256))(a2, v14);
  v15 = (*(*a1 + 104))(a1);
  (*(*a2 + 264))(a2, v15);
  __p = 0;
  v95 = 0;
  v96 = 0;
  if ((*(*a1 + 16))(a1) != -1)
  {
    v18 = *a3;
    v17 = a3[1];
    if ((*(*a1 + 16))(a1) < ((v17 - v18) >> 2))
    {
      v19 = (*(*a1 + 16))(a1);
      v20 = v19;
      v21 = *a3;
      v23 = sub_10002B59C(v19, v22);
      LODWORD(v100) = *(v21 + 4 * v20);
      LODWORD(v97[0]) = *v23;
      v16.n128_u32[0] = v100;
      if (*&v100 != *v97)
      {
        v25 = sub_10002B564(v23, v24);
        v26 = !sub_10009EC84(&v93, a5, v25);
        if (!a6)
        {
          LOBYTE(v26) = 0;
        }

        if (v26)
        {
          v27 = (*(*a2 + 176))(a2);
          (*(*a2 + 152))(a2, v27);
          v28 = (*(*a2 + 176))(a2);
          v92 = v28;
          LODWORD(v100) = *sub_10002B564(v28, v29);
          v30 = (*(*a2 + 160))(a2, v28, &v100);
          if (v28 >= ((v95 - __p) >> 3))
          {
            do
            {
              v32 = sub_10002B59C(v30, v31);
              LODWORD(v100) = -1;
              v33 = *v32;
              DWORD1(v100) = *v32;
              v34 = v95;
              if (v95 >= v96)
              {
                v30 = sub_1000B15D4(&__p, &v100);
              }

              else
              {
                *v95 = -1;
                *(v34 + 1) = v33;
                v30 = (v34 + 8);
              }

              v95 = v30;
            }

            while (v92 >= ((v30 - __p) >> 3));
          }

          v35 = (*(*a1 + 16))(a1);
          v36 = v35;
          v38 = *sub_10002B564(v35, v37);
          v39 = __p + 8 * v92;
          *v39 = v36;
          v39[1] = v38;
          v89 = 0;
          v90 = 0;
          v91 = 0;
          sub_10002C79C(&v89, &v92);
          v40 = (*(*a1 + 16))(a1);
          v42 = *(*a3 + 4 * v40);
          v80 = a6;
          if (v42 == -INFINITY || (v43 = *a5, *a5 >= -INFINITY) && *a5 <= -INFINITY)
          {
            v40 = sub_1000777A0(v40, v41);
            v44 = *v40;
          }

          else
          {
            v45 = v43 == INFINITY || v42 == INFINITY;
            v44 = v42 + v43;
            if (v45)
            {
              v44 = INFINITY;
            }
          }

          v88 = v44;
          v85 = 0;
          v86 = 0;
          v87 = 0;
          v47 = v89;
          v46 = v90;
          if (v89 == v90)
          {
            goto LABEL_99;
          }

          while (1)
          {
            *&v100 = &__p;
            *(&v100 + 1) = a3;
            LODWORD(v101) = -1;
            *(&v101 + 1) = a7;
            v48 = (v46 - v47) >> 2;
            if (v48 >= 2)
            {
              v49 = *v47;
              v40 = sub_1000B1778(v47, &v100, v48);
              v41 = v40;
              v50 = (v46 - 4);
              if (v46 - 4 == v40)
              {
                *v40 = v49;
              }

              else
              {
                *v40 = *v50;
                *v50 = v49;
                v40 = sub_1000B1824(v47, v40 + 4, &v100, (v40 + 4 - v47) >> 2);
              }
            }

            v51 = *(v90 - 1);
            v52 = (__p + 8 * v51);
            v53 = *v52;
            v54 = v52[1];
            --v90;
            if (v53 == -1)
            {
              v55 = sub_10002B564(v40, v41);
            }

            else if (v53 >= (a3[1] - *a3) >> 2)
            {
              v55 = sub_10002B59C(v40, v41);
            }

            else
            {
              v55 = (*a3 + 4 * v53);
            }

            v56 = *v55;
            if (*v55 == -INFINITY || v54 >= -INFINITY && v54 <= -INFINITY)
            {
              v57 = *sub_1000777A0(v55, v41);
            }

            else
            {
              v58 = v56 == INFINITY || v54 == INFINITY;
              v57 = v54 + v56;
              if (v58)
              {
                v57 = INFINITY;
              }
            }

            *&v100 = v57;
            v40 = sub_10009EC84(&v93, &v88, &v100);
            if (v40)
            {
              goto LABEL_98;
            }

            if (v80 != -1)
            {
              v40 = (*(*a2 + 136))(a2);
              if (v40 >= v80)
              {
                goto LABEL_98;
              }
            }

            v59 = v53 + 1;
            while (v59 >= (v86 - v85) >> 2)
            {
              LODWORD(v100) = 0;
              sub_10002C79C(&v85, &v100);
            }

            v60 = *(v85 + v59);
            *(v85 + v59) = v60 + 1;
            if (v53 == -1)
            {
              v70 = (*(*a2 + 16))(a2);
              v72 = *sub_10002B564(v70, v71);
              *&v100 = 0;
              *(&v100 + 1) = __PAIR64__(v51, v72);
              v40 = (*(*a2 + 184))(a2, v70, &v100);
              if (*v85 != a4)
              {
                goto LABEL_98;
              }

              goto LABEL_99;
            }

            if (v60 >= a4)
            {
              goto LABEL_98;
            }

            v102 = 0;
            v100 = 0u;
            v101 = 0u;
            (*(*a1 + 120))(a1, v53, &v100);
            while (1)
            {
              if (!v100)
              {
                if (v102 >= v101)
                {
                  goto LABEL_81;
                }

LABEL_60:
                v62 = *(&v100 + 1) + 16 * v102;
                goto LABEL_61;
              }

              if ((*(*v100 + 16))(v100))
              {
                break;
              }

              if (!v100)
              {
                goto LABEL_60;
              }

              v62 = (*(*v100 + 24))(v100);
LABEL_61:
              v63 = *(v62 + 8);
              v64 = *(v62 + 12);
              v82 = *v62;
              v83 = v63;
              v84 = v64;
              if (v54 == -INFINITY || v63 >= -INFINITY && v63 <= -INFINITY)
              {
                LODWORD(v65) = *sub_1000777A0(v62, v61);
              }

              else
              {
                v66 = v63 == INFINITY || v54 == INFINITY;
                v67 = v54 + v63;
                if (v66)
                {
                  v65 = INFINITY;
                }

                else
                {
                  v65 = v67;
                }
              }

              v81 = (*(*a2 + 176))(a2);
              v97[0] = __PAIR64__(LODWORD(v65), v84);
              v68 = v95;
              if (v95 >= v96)
              {
                v69 = sub_1000B15D4(&__p, v97);
              }

              else
              {
                *v95 = v84;
                *(v68 + 1) = v65;
                v69 = (v68 + 8);
              }

              v95 = v69;
              v84 = v51;
              (*(*a2 + 184))(a2, v81, &v82);
              sub_10002C79C(&v89, &v81);
              v97[0] = &__p;
              v97[1] = a3;
              v98 = -1;
              v99 = a7;
              sub_1000B1824(v89, v90, v97, (v90 - v89) >> 2);
              if (v100)
              {
                (*(*v100 + 32))(v100);
              }

              else
              {
                ++v102;
              }
            }

            if (v100)
            {
              (*(*v100 + 8))(v100);
            }

            else
            {
LABEL_81:
              if (*(&v101 + 1))
              {
                --**(&v101 + 1);
              }
            }

            v73 = (*(*a1 + 24))(&v100, a1, v53);
            LODWORD(v74) = v100;
            v40 = sub_10002B59C(v73, v75);
            *&v100 = v74;
            LODWORD(v97[0]) = *v40;
            if (v74 != *v97)
            {
              if (v54 == -INFINITY || v74 >= -INFINITY && v74 <= -INFINITY)
              {
                v76 = *sub_1000777A0(v40, v41);
              }

              else if (v74 == INFINITY || v54 == INFINITY)
              {
                v76 = INFINITY;
              }

              else
              {
                v76 = v54 + v74;
              }

              LODWORD(v97[0]) = (*(*a2 + 176))(a2);
              LODWORD(v100) = -1;
              *(&v100 + 1) = v76;
              v78 = v95;
              if (v95 >= v96)
              {
                v79 = sub_1000B15D4(&__p, &v100);
              }

              else
              {
                *v95 = -1;
                *(v78 + 1) = v76;
                v79 = (v78 + 8);
              }

              v95 = v79;
              *&v100 = 0;
              *(&v100 + 1) = __PAIR64__(v51, LODWORD(v74));
              (*(*a2 + 184))(a2, LODWORD(v97[0]), &v100);
              sub_10002C79C(&v89, v97);
              *&v100 = &__p;
              *(&v100 + 1) = a3;
              LODWORD(v101) = -1;
              *(&v101 + 1) = a7;
              v40 = sub_1000B1824(v89, v90, &v100, (v90 - v89) >> 2);
            }

LABEL_98:
            v47 = v89;
            v46 = v90;
            if (v89 == v90)
            {
LABEL_99:
              sub_100076284(a2);
            }
          }
        }
      }
    }
  }

  if ((*(*a1 + 56))(a1, 4, 0, v16))
  {
    (*(*a2 + 168))(a2, 4, 4);
  }

  if (__p)
  {
    v95 = __p;
    operator delete(__p);
  }
}

void sub_1000B116C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000B1254(void *a1)
{
  *a1 = off_1001046B0;
  v2 = a1[2];
  if (v2)
  {
    sub_100016EC0(v2);
  }

  return a1;
}

void sub_1000B12A0(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_100017658();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1000B13FC(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

BOOL sub_1000B1378(uint64_t a1, uint64_t a2, float *a3, float *a4)
{
  v5 = *a3;
  if (*a3 == -INFINITY || (v6 = *a4, *a4 >= -INFINITY) && *a4 <= -INFINITY)
  {
    v5 = *sub_1000777A0(a1, a2);
    v6 = *a4;
  }

  else if (v5 >= v6)
  {
    v5 = *a4;
  }

  return v6 == v5;
}

void sub_1000B13FC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100016D60();
}

float sub_1000B1444(unint64_t *a1, float *a2)
{
  v2 = a1[2];
  v3 = v2;
  if (v2 == a1[3])
  {
    v4 = a1[1];
    if (v4 <= *a1)
    {
      v8 = v2 - *a1;
      v7 = v8 == 0;
      v9 = v8 >> 1;
      if (v7)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      sub_10002C924(a1[4], v10);
    }

    v5 = &v4[-((((v4 - *a1) >> 2) + 1 + ((((v4 - *a1) >> 2) + 1) >> 63)) >> 1)];
    v3 = v5;
    if (v4 != v2)
    {
      v3 = &v4[-((((v4 - *a1) >> 2) + 1 + ((((v4 - *a1) >> 2) + 1) >> 63)) >> 1)];
      do
      {
        v6 = *v4++;
        *v3++ = v6;
      }

      while (v4 != v2);
    }

    a1[1] = v5;
  }

  result = *a2;
  *v3 = *a2;
  a1[2] = (v3 + 1);
  return result;
}

uint64_t sub_1000B153C(char **a1, void *a2, char *a3)
{
  v4 = a1[1];
  result = a2[1];
  v6 = a2[2];
  if (v4 != a3)
  {
    v7 = a3;
    v8 = a2[2];
    do
    {
      v9 = *v7;
      v7 += 4;
      *v8++ = v9;
    }

    while (v7 != v4);
  }

  a2[2] = v6 + v4 - a3;
  v10 = *a1;
  v11 = (result + *a1 - a3);
  if (*a1 != a3)
  {
    v12 = *a1;
    v13 = (result + *a1 - a3);
    do
    {
      v14 = *v12;
      v12 += 4;
      *v13++ = v14;
    }

    while (v12 != a3);
  }

  a2[1] = v11;
  v15 = *a1;
  *a1 = v11;
  a1[1] = v10;
  a2[1] = v15;
  v16 = a1[1];
  a1[1] = a2[2];
  a2[2] = v16;
  v17 = a1[2];
  a1[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
  return result;
}

uint64_t sub_1000B15D4(void *a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_100017658();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_10001A1CC(a1, v7);
  }

  v8 = (8 * v2);
  __p = 0;
  v12 = v8;
  *v8 = *a2;
  v8[1] = a2[1];
  v13 = 8 * v2 + 8;
  v14 = 0;
  sub_1000B16FC(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_1000B16C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000B16FC(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v5 += 2;
      v6 += 2;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

int *sub_1000B1778(int *a1, uint64_t **a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6 + 1];
    v9 = (2 * v6) | 1;
    v10 = 2 * v6 + 2;
    if (v10 < a3)
    {
      v11 = sub_1000B18C8(a2, *v8, a1[v6 + 2]);
      if (v11)
      {
        v12 = 4;
      }

      else
      {
        v12 = 0;
      }

      v8 = (v8 + v12);
      if (v11)
      {
        v9 = v10;
      }
    }

    *a1 = *v8;
    a1 = v8;
    v6 = v9;
  }

  while (v9 <= v7);
  return v8;
}

uint64_t sub_1000B1824(uint64_t result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 4 * (v4 >> 1));
    v9 = (a2 - 4);
    result = sub_1000B18C8(a3, *v8, *(a2 - 4));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 4 * v7);
        result = sub_1000B18C8(a3, *v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

uint64_t sub_1000B18C8(uint64_t **a1, int a2, int a3)
{
  v4 = **a1;
  v5 = (v4 + 8 * a2);
  v6 = (v4 + 8 * a3);
  sub_1000B1A6C(a1, *v5, &v30);
  if (v30 == -INFINITY || (v9 = v5[1], v9 >= -INFINITY) && v9 <= -INFINITY)
  {
    v10 = *sub_1000777A0(v7, v8);
  }

  else
  {
    v11 = v9 == INFINITY || v30 == INFINITY;
    v10 = v30 + v9;
    if (v11)
    {
      v10 = INFINITY;
    }
  }

  v31 = v10;
  sub_1000B1A6C(a1, *v6, &v29);
  if (v29 == -INFINITY || (v14 = v6[1], v14 >= -INFINITY) && v14 <= -INFINITY)
  {
    v15 = *sub_1000777A0(v12, v13);
  }

  else
  {
    v16 = v14 == INFINITY || v29 == INFINITY;
    v15 = v29 + v14;
    if (v16)
    {
      v15 = INFINITY;
    }
  }

  v30 = v15;
  v17 = *(a1 + 4);
  v18 = *v6;
  if (*v5 != v17 || LODWORD(v18) == v17)
  {
    v21 = *v5 == v17 || LODWORD(v18) != v17;
    v22 = sub_10009EC84((a1 + 3), &v30, &v31);
    v23 = v21 && v22;
    if (!v21 && v22)
    {
      v24 = *(a1 + 5);
      v23 = v30 > (v24 + v31);
      if (v31 > (v24 + v30))
      {
        v23 = 1;
      }
    }
  }

  else if (sub_10009EC84((a1 + 3), &v30, &v31))
  {
    v23 = 1;
  }

  else
  {
    v25 = *(a1 + 5);
    v27 = v31 > (v25 + v30);
    v26 = v25 + v31;
    v27 = v27 || v30 > v26;
    v23 = !v27;
  }

  return v23 & 1;
}

float sub_1000B1A6C@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  if (*(a1 + 16) == a2)
  {
    v4 = sub_10002B564(a1, a2);
  }

  else
  {
    v5 = **(a1 + 8);
    if (a2 >= ((*(*(a1 + 8) + 8) - v5) >> 2))
    {
      v4 = sub_10002B59C(a1, a2);
    }

    else
    {
      v4 = (v5 + 4 * a2);
    }
  }

  result = *v4;
  *a3 = *v4;
  return result;
}

void sub_1000B1ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  sub_1000B1F3C();
}

void sub_1000B1C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  *v14 = v15;
  v17 = v14[2];
  if (v17)
  {
    sub_100016EC0(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B1C80(void *a1)
{
  *a1 = off_1001046B0;
  v1 = a1[2];
  if (v1)
  {
    sub_100016EC0(v1);
  }

  operator delete();
}

unint64_t sub_1000B1D14(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = sub_1000A83D0(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 24);

    return v7();
  }
}

void sub_1000B1FC8(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001041B0;
  sub_1000B20C8(a1 + 3, a2, *a3, *a4, a5);
}

void sub_1000B204C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1001041B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000B22A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000B255C(v18 + 23);
  v20 = v18[22];
  v18[22] = 0;
  if (v20)
  {
    sub_1000B5070((v18 + 22), v20);
  }

  sub_1000B25A4(v18);
  _Unwind_Resume(a1);
}

void sub_1000B24F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *(v15 + 136);
  *(v15 + 136) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_1000B4C1C(v15);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000B255C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1000B4F84(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_1000B25A4(void *a1)
{
  *a1 = off_1001042B0;
  v2 = a1[17];
  a1[17] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_1000B4C1C(a1);
}

uint64_t sub_1000B2624(void *a1)
{
  *a1 = off_100104200;
  sub_1000B255C(a1 + 23);
  v2 = a1[22];
  a1[22] = 0;
  if (v2)
  {
    sub_1000B5070((a1 + 22), v2);
  }

  *a1 = off_1001042B0;
  v3 = a1[17];
  a1[17] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_1000B4C1C(a1);
}

void sub_1000B26D8(void *a1)
{
  *a1 = off_100104200;
  sub_1000B255C(a1 + 23);
  v2 = a1[22];
  a1[22] = 0;
  if (v2)
  {
    sub_1000B5070((a1 + 22), v2);
  }

  *a1 = off_1001042B0;
  v3 = a1[17];
  a1[17] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_1000B4C1C(a1);

  operator delete();
}

uint64_t sub_1000B27CC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 56))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void sub_1000B28A8(void *a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  sub_1000B5E78(a1, a2, &v8);
  v4 = v8;
  if (v8 != v9)
  {
    do
    {
      sub_1000B6138(a1, a2, v4 + 5);
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v9);
  }

  sub_1000B61A8(a1, a2);
  sub_10001A178(&v8, v9[0]);
}

uint64_t sub_1000B297C(uint64_t a1)
{
  result = (*(**(a1 + 136) + 16))(*(a1 + 136));
  if (result != -1)
  {
    sub_10002B564(result, v2);
    operator new();
  }

  return result;
}

int *sub_1000B2A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X8>)
{
  v5 = *(*(*(a1 + 184) + 112) + 8 * a2);
  result = sub_10002B59C(a1, a2);
  v7 = *result;
  for (i = *v5; i; i = *i)
  {
    result = (*(**(a1 + 136) + 24))(&v13);
    v10 = i[3];
    if (v10 == -INFINITY || *&v13 >= -INFINITY && *&v13 <= -INFINITY)
    {
      result = sub_1000777A0(result, v9);
      v11 = *result;
    }

    else
    {
      v12 = *&v13 == INFINITY || v10 == INFINITY;
      v11 = v10 + *&v13;
      if (v12)
      {
        v11 = INFINITY;
      }
    }

    if (v7 == -INFINITY || v11 >= -INFINITY && v11 <= -INFINITY)
    {
      result = sub_1000777A0(result, v9);
      v7 = *result;
    }

    else if (v7 >= v11)
    {
      v7 = v11;
    }

    if (v7 >= -INFINITY && v7 <= -INFINITY)
    {
      *(a1 + 8) |= 4uLL;
    }
  }

  *a3 = v7;
  return result;
}

void sub_1000B2B8C(uint64_t a1, uint64_t a2)
{
  *a1 = off_100103C58;
  *(a1 + 8) = 0;
  sub_1000113AC((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &off_100104300;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0xFFFFFFFFLL;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xFFFFFFFF00000000;
  *(a1 + 104) = *a2;
  *(a1 + 112) = *(a2 + 8);
  operator new();
}

void sub_1000B2CE4(uint64_t a1)
{
  sub_1000B4C1C(a1);

  operator delete();
}

void sub_1000B2D1C(uint64_t a1, _BYTE *a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 32;
  *(a1 + 40) = a1 + 32;
  *(a1 + 48) = 0;
  operator new();
}