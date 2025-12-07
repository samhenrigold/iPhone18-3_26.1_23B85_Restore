void sub_10036106C(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (a1[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      sub_1003613B4(a1, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = a1;
      if (v12)
      {
        sub_1003138F4(a1, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] -= v7 << 9; v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      sub_1003613B4(a1, v16);
    }
  }
}

void sub_100361310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100361350(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
    }

    else
    {
      result += v4 >> 9;
    }
  }

  return result;
}

void sub_1003613B4(unint64_t *a1, void *a2)
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

      sub_1003138F4(a1, v11);
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

void sub_1003614BC(const void **a1, void *a2)
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

      sub_1003138F4(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_1003615C8(unint64_t *a1, void *a2)
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

      sub_1003138F4(a1[4], v11);
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

void sub_1003616D0(const void **a1, void *a2)
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

      sub_1003138F4(a1[4], v9);
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

uint64_t sub_1003617DC(void *a1)
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
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10035F858(a1);
}

uint64_t sub_100361888(void *a1, void *a2)
{
  result = sub_1003618D4(a1, a2);
  if (result)
  {
    sub_1003619C0(a1, result, v4);
    sub_100360E04(v4);
    return 1;
  }

  return result;
}

void *sub_1003618D4(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_1003619C0@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t *sub_100361EA4(uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_10035EA68(a1, (v2 - *a2) >> 3);
  }

  return a1;
}

uint64_t *sub_100361F0C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_100361FE0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_100362034(unint64_t *result, _DWORD *a2)
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
    sub_1003620BC(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  result[5] = v7 + 1;
}

void sub_1003620BC(unint64_t *a1)
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
    sub_1003626B8(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_100362290(a1, &v9);
}

void sub_100362244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100362290(unint64_t *a1, void *a2)
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

      sub_1003626B8(a1, v11);
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

void sub_100362398(const void **a1, void *a2)
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

      sub_1003626B8(a1, v9);
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

void sub_1003624A4(unint64_t *a1, void *a2)
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

      sub_1003626B8(a1[4], v11);
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

void sub_1003625AC(const void **a1, void *a2)
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

      sub_1003626B8(a1[4], v9);
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

void sub_1003626B8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_100362700(uint64_t a1, int a2)
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

uint64_t *sub_100362760(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_10035EA68(v6, v10);
    }

    sub_1000C7698();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sub_10036288C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1003628EC(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 24) = *(a2 + 24);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1003628EC(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000C7698();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_100362AB0(a1, v7);
  }

  v8 = 32 * v2;
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 24) = *(a2 + 24);
  v13 = 32 * v2 + 32;
  sub_100362A28(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 31) & 0xFFFFFFFFFFFFFFE0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_1003629F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100362A28(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 8) = *(v2 + 8);
      *(v5 + 16) = *(v2 + 16);
      *(v5 + 24) = *(v2 + 24);
      v2 += 32;
      v5 += 32;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void sub_100362AB0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_100362AF8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v3 = a1[1];
    if (a3 == v3)
    {
      v9 = a2;
    }

    else
    {
      v4 = *a1;
      v5 = *a1 + a2;
      v6 = -*a1;
      v7 = *a1 + a3;
      do
      {
        v8 = v5 + v6;
        *v8 = *(v7 + v6);
        *(v8 + 8) = *(v7 + v6 + 8);
        *(v8 + 16) = *(v7 + v6 + 16);
        *(v8 + 24) = *(v7 + v6 + 24);
        v5 += 32;
        v7 += 32;
      }

      while (v7 + v6 != v3);
      v9 = v5 - v4;
    }

    a1[1] = v9;
  }

  return a2;
}

uint64_t sub_100362B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (*result != a3 || a4 != *(result + 8))
    {
      result += 32;
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 32; i != a2; i += 32)
      {
        if (*i != a3 || a4 != *(i + 8))
        {
          *result = *i;
          *(result + 8) = *(i + 8);
          *(result + 16) = *(i + 16);
          *(result + 24) = *(i + 24);
          result += 32;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_100362C7C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100362CF8(result, a4);
  }

  return result;
}

void sub_100362CF8(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_100362AB0(a1, a2);
  }

  sub_1000C7698();
}

void sub_100362E04(unint64_t *a1)
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
    sub_1003138F4(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1003613B4(a1, &v9);
}

void sub_100362F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100362FD8(const void **a1)
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
    v4 = ((v2 - v1) << 6) - 1;
  }

  v5 = a1[4];
  if ((v4 - (a1[5] + v5)) < 0x200)
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
    sub_1003138F4(a1, v9);
  }

  a1[4] = (v5 + 512);
  v10[0] = *(v2 - 8);
  a1[2] = (v2 - 8);
  sub_1003614BC(a1, v10);
}

void sub_1003631D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100363220(unint64_t *a1, void **a2, uint64_t *a3, char *a4, uint64_t *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((a5 - *a4) >> 3) + ((a4 - a2) << 6) - ((a3 - *a2) >> 3);
  }

  return sub_100363254(a1, a2, a3, v5);
}

void *sub_100363254(unint64_t *a1, void **a2, uint64_t *a3, unint64_t a4)
{
  v20 = a2;
  v21 = a3;
  v7 = a1[5];
  if (v7 >= a4)
  {
    v14 = a1[1];
    v15 = (v14 + 8 * (a1[4] >> 9));
    if (a1[2] == v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = *v15 + 8 * (a1[4] & 0x1FF);
    }

    v22[0] = a2;
    v22[1] = a3;
    v18 = sub_100361350(v22, a4);
    v23 = v15;
    v24 = v16;
    sub_100363478(a2, a3, v18, v19, &v23);
    return sub_10036337C(a1, v23, v24);
  }

  else
  {
    v9 = sub_100361350(&v20, v7);
    v10 = v8;
    v11 = a1[1];
    if (a1[2] == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(v11 + 8 * (a1[4] >> 9)) + 8 * (a1[4] & 0x1FF);
    }

    v23 = (v11 + 8 * (a1[4] >> 9));
    v24 = v12;
    sub_100363478(v20, v21, v9, v8, &v23);
    return sub_100360F30(a1, v9, v10, a4 - a1[5]);
  }
}

uint64_t sub_10036337C(uint64_t result, char *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 >> 9));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 8 * (v5 & 0x1FF);
  }

  if (v9 != a3)
  {
    v10 = ((v9 - *v8) >> 3) + ((v8 - a2) << 6);
    v11 = a3 - *a2;
    v12 = v10 - (v11 >> 3);
    if (v12 >= 1)
    {
      v13 = (v6 + 8 * (v4 >> 9));
      if (v7 == v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = *v13 + 8 * (*(result + 32) & 0x1FFLL);
      }

      v16[0] = v13;
      v16[1] = v14;
      if (a3 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = (v11 >> 3) + ((a2 - v13) << 6) - ((v14 - *v13) >> 3);
      }

      sub_100361350(v16, v15);
      v3[5] -= v12;
      do
      {
        result = sub_100363608(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

double sub_100363478(void **a1, uint64_t *__src, void **a3, uint64_t *a4, void ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_10036353C(&v15, __src, a5[1], *a1 + 512, *a5);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_10036353C(&v15, v13, a5[1], v13 + 512, *a5);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = a5[1];
  }

  sub_10036353C(&v15, v9, v8, a4, v7);
  result = *&v16;
  *a5 = v16;
  return result;
}

uint64_t *sub_10036353C@<X0>(uint64_t **__return_ptr a1@<X8>, uint64_t *__src@<X0>, char *__dst@<X3>, uint64_t *a4@<X1>, void **a5@<X2>)
{
  v6 = a5;
  if (__src != a4)
  {
    v9 = __src;
    v6 = a5 + 1;
    v10 = *a5;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = a4 - v9 >= v11 >> 3 ? v11 >> 3 : a4 - v9;
      if (v12)
      {
        __src = memmove(__dst, v9, 8 * v12);
      }

      v9 += v12;
      if (v9 == a4)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 8 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = __dst;
  return __src;
}

uint64_t sub_100363608(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
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

void sub_1003636AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 4) = a3;
  *(a2 + 12) = 2081;
  *(a2 + 14) = v3;
}

void sub_1003636C0(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 4) = v3;
  *(a2 + 12) = 1024;
  *(a2 + 14) = a3;
}

void sub_1003636E0()
{
  v0 = objc_autoreleasePoolPush();
  sub_100007E30(v2, "com.apple.Preferences");
  v3 = 1;
  sub_100007E30(v4, "com.apple.SharingViewService");
  v5 = 2;
  sub_100007E30(v6, "com.apple.HeadphoneProxService");
  v7 = 3;
  sub_10035FE10(&qword_100BCE4B8, v2, 3);
  for (i = 0; i != -12; i -= 4)
  {
    if (SHIBYTE(v6[i + 2]) < 0)
    {
      operator delete(v6[i]);
    }
  }

  __cxa_atexit(sub_10032F188, &qword_100BCE4B8, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_100363804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 87);
  v13 = -96;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 32;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void *sub_10036386C(void *a1, uint64_t a2)
{
  *a1 = off_100AED6E8;
  a1[1] = a2;
  a1[2] = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  a1[3] = Mutable;
  CFDictionarySetValue(Mutable, @"Power Source State", @"Battery Power");
  return a1;
}

uint64_t sub_1003638F0(uint64_t a1)
{
  *a1 = off_100AED6E8;
  CFRelease(*(a1 + 24));
  if (*(a1 + 16))
  {
    IOPSReleasePowerSource();
  }

  return a1;
}

void sub_100363948(uint64_t a1)
{
  sub_1003638F0(a1);

  operator delete();
}

void sub_100363980(uint64_t *a1)
{
  sub_1000C23E0(a1[1], __p);
  (*(*a1 + 24))(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003639F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100363A0C(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 16))
  {
    IOPSCreatePowerSource();
    sub_100363AE0(a1);
  }

  sub_100363C04(a1, a2);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 24);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Publishing remote battery report %@", &v7, 0xCu);
  }

  return IOPSSetPowerSourceDetails();
}

void sub_100363AE0(uint64_t a1)
{
  CFDictionarySetValue(*(a1 + 24), @"Type", @"Accessory Source");
  CFDictionarySetValue(*(a1 + 24), @"Transport Type", @"Bluetooth");
  valuePtr = 100;
  v2 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(*(a1 + 24), @"Max Capacity", v2);
  CFRelease(v2);
  sub_1000BE6F8((*(a1 + 8) + 128), __p);
  if (v6 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v4 = CFStringCreateWithCString(kCFAllocatorDefault, v3, 0x8000100u);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  CFDictionarySetValue(*(a1 + 24), @"Accessory Identifier", v4);
  CFRelease(v4);
}

void sub_100363BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100363C04(uint64_t a1, uint64_t *a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (!*(a2 + 23))
    {
      goto LABEL_7;
    }

LABEL_6:
    v3 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
    CFDictionarySetValue(*(a1 + 24), @"Name", v3);
    CFRelease(v3);
    goto LABEL_8;
  }

  if (a2[1])
  {
    a2 = *a2;
    goto LABEL_6;
  }

LABEL_7:
  CFDictionaryRemoveValue(*(a1 + 24), @"Name");
LABEL_8:
  Value = CFDictionaryGetValue(*(a1 + 24), @"Part Identifier");
  v13 = 0;
  v14 = 0;
  if (sub_1000C2364(*(a1 + 8), &v14 + 1, &v14, &v13 + 1, &v13))
  {
    valuePtr = BYTE4(v14);
    v11 = v14;
    v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
    CFDictionarySetValue(*(a1 + 24), @"Vendor ID Source", v5);
    CFRelease(v5);
    v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &v11);
    CFDictionarySetValue(*(a1 + 24), @"Vendor ID", v6);
    CFRelease(v6);
    v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v13 + 4);
    CFDictionarySetValue(*(a1 + 24), @"Product ID", v7);
    CFRelease(v7);
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 24), @"Vendor ID Source");
    CFDictionaryRemoveValue(*(a1 + 24), @"Vendor ID");
    CFDictionaryRemoveValue(*(a1 + 24), @"Product ID");
  }

  v8 = sub_1000DEB14(*(a1 + 8));
  v9 = *(a1 + 24);
  if (v8 == 16 || v8 == 20)
  {
    v10 = @"Headphone";
LABEL_16:
    CFDictionarySetValue(v9, @"Accessory Category", v10);
    if (!Value)
    {
      return;
    }

    goto LABEL_19;
  }

  if (v8 == 19)
  {
    v10 = @"Speaker";
    goto LABEL_16;
  }

  CFDictionaryRemoveValue(v9, @"Accessory Category");
  if (!Value)
  {
    return;
  }

LABEL_19:
  if (CFEqual(Value, @"Case"))
  {
    CFDictionarySetValue(*(a1 + 24), @"Accessory Category", @"Audio Battery Case");
  }
}

void sub_100363E30(uint64_t a1, const char *a2)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v3 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  CFDictionarySetValue(*(a1 + 24), @"Group Identifier", v3);

  CFRelease(v3);
}

void sub_100363EA4(uint64_t a1, const char *a2)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v3 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  CFDictionarySetValue(*(a1 + 24), @"Part Name", v3);

  CFRelease(v3);
}

void sub_100363F18(uint64_t a1, unsigned int a2)
{
  if (a2 > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(&off_100AED738 + a2);
  }

  CFDictionarySetValue(*(a1 + 24), @"Part Identifier", v2);
}

void sub_100363F44(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(*(a1 + 24), @"Current Capacity", v3);
  CFRelease(v3);
}

const __CFNumber *sub_100363FA8(uint64_t a1, void *a2)
{
  result = CFDictionaryGetValue(*(a1 + 24), @"Current Capacity");
  if (result)
  {
    return (CFNumberGetValue(result, kCFNumberIntType, a2) != 0);
  }

  return result;
}

void sub_100363FF0(uint64_t a1, int a2)
{
  v3 = &kCFBooleanTrue;
  if (a2 != 1)
  {
    v3 = &kCFBooleanFalse;
  }

  v4 = *(a1 + 24);
  if (a2 == 1)
  {
    v5 = @"AC Power";
  }

  else
  {
    v5 = @"Battery Power";
  }

  CFDictionarySetValue(v4, @"Is Charging", *v3);
  v6 = *(a1 + 24);

  CFDictionarySetValue(v6, @"Power Source State", v5);
}

uint64_t sub_100364070()
{
  if (qword_100B6D2F0 != -1)
  {
    sub_10081E3B8();
  }

  if (byte_100B6D2E8 != 1)
  {
    return 0;
  }

  v0 = mach_absolute_time();
  kdebug_trace();
  return v0;
}

uint64_t sub_1003640E4()
{
  if (qword_100B6D2F0 != -1)
  {
    sub_10081E3B8();
  }

  if (byte_100B6D2E8 != 1)
  {
    return 0;
  }

  v0 = mach_absolute_time();
  kdebug_trace();
  return v0;
}

void sub_100364158(uint64_t result)
{
  if (qword_100B6D2F0 != -1)
  {
    sub_10081E3B8();
  }

  if (byte_100B6D2E8 == 1 && (result - 3) <= 3)
  {

    kdebug_trace();
  }
}

void sub_1003641E4(uint64_t result)
{
  if (qword_100B6D2F0 != -1)
  {
    sub_10081E3B8();
  }

  if (byte_100B6D2E8 == 1 && (result == 7 || result == 8))
  {

    kdebug_trace();
  }
}

void sub_100364274(uint64_t result)
{
  if (qword_100B6D2F0 != -1)
  {
    sub_10081E3B8();
  }

  if (byte_100B6D2E8 == 1 && (result - 9) <= 3)
  {

    kdebug_trace();
  }
}

void sub_100364300(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (qword_100B6D2F0 != -1)
  {
    sub_10081E3B8();
  }

  if (byte_100B6D2E8 == 1)
  {
    if (a2)
    {
      sub_100018384(a2, __p);
      sub_10050DFDC(__p);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    [v5 hash];
    if ((a1 - 17) < 4)
    {
      kdebug_trace();
    }
  }
}

void sub_1003643C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003643F4(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v4, "Signposts");
  sub_100007E30(__p, "Enabled");
  (*(*v1 + 72))(v1, v4, __p, &byte_100B6D2E8);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_100364498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

pthread_cond_t *sub_1003644CC(pthread_cond_t *a1)
{
  if (pthread_cond_init(a1, 0) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    sub_10081E674();
  }

  return a1;
}

pthread_cond_t *sub_10036453C(pthread_cond_t *a1)
{
  if (pthread_cond_destroy(a1) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    sub_10081E674();
  }

  return a1;
}

void sub_1003645A4(pthread_cond_t *a1, pthread_mutex_t *a2)
{
  if (pthread_cond_wait(a1, a2))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_10081E674();
    }
  }
}

void sub_100364600(pthread_cond_t *a1)
{
  if (pthread_cond_signal(a1))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_10081E674();
    }
  }
}

uint64_t sub_100364654(uint64_t a1, char *__s1, char a3)
{
  *a1 = off_100AED790;
  *(a1 + 8) = strdup(__s1);
  *(a1 + 16) = a3;
  sub_100044AFC((a1 + 24));
  *(a1 + 88) = 0;
  return a1;
}

uint64_t sub_1003646B4(uint64_t a1)
{
  *a1 = off_100AED790;
  free(*(a1 + 8));
  sub_10007A06C((a1 + 24));
  return a1;
}

void sub_10036470C(pthread_t *a1)
{
  v2 = a1 + 3;
  v3 = 0;
  sub_100007FB8(&v2);
  sub_1001C5BA4(a1 + 11, sub_100364794, a1);
  if (v3 == 1)
  {
    sub_10000801C(&v2);
  }
}

void sub_100364774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a10 == 1)
  {
    sub_10000801C(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003647C0(uint64_t a1)
{
  sub_100008078((a1 + 24));
  sub_1000089A8((a1 + 24));
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_1001C5D20(v3);
  }

  (*(*a1 + 16))(a1);
  if (v2)
  {
    (*(*a1 + 8))(a1);
  }

  return 0;
}

uint64_t sub_100364948(uint64_t a1)
{
  *a1 = off_100AED7B8;
  *(a1 + 8) = off_100AED858;
  *(a1 + 16) = off_100AED918;
  *(a1 + 24) = off_100AED948;
  *(a1 + 32) = off_100AED988;
  *(a1 + 40) = &off_100AED9B8;
  *(a1 + 56) = 0;
  *(a1 + 62) = 0;
  *(a1 + 64) = &stru_100B0F9E0;
  *(a1 + 72) = 1;
  sub_100044BBC((a1 + 80));
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  *(a1 + 144) = a1 + 152;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  return a1;
}

uint64_t sub_100364A88(uint64_t a1)
{
  if (qword_100B512C8 != -1)
  {
    sub_10081E6DC();
  }

  sub_10036EF4C(off_100B512C0 + 80, a1);
  if (qword_100B508B0 != -1)
  {
    sub_10081E6F0();
  }

  sub_100749B80(off_100B508A8, a1 + 8, 0);
  if (qword_100B50AA0 != -1)
  {
    sub_10081E704();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 32);
  v4 = sub_1004327A0(v2, v3);
  result = (*(*v4 + 32))(v4, a1 + 40);
  *(a1 + 57) = 0;
  return result;
}

void sub_100364B5C(uint64_t a1)
{
  *(a1 + 228) = 0;
  *(a1 + 224) = 0;
  v23 = 1;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "Magnet");
  sub_100007E30(__p, "AllowPeripheralModeSupport");
  (*(*v2 + 72))(v2, buf, __p, &v23);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(*buf);
  }

  v20 = 0;
  v3 = sub_10000E92C();
  sub_100007E30(buf, "Magnet");
  sub_100007E30(__p, "EnableAutomaticPairing");
  (*(*v3 + 72))(v3, buf, __p, &v20);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(*buf);
  }

  v19 = 0;
  v4 = sub_10000E92C();
  sub_100007E30(buf, "Magnet");
  sub_100007E30(__p, "ForceERTMOnNonReliablePipes");
  v5 = (*(*v4 + 72))(v4, buf, __p, &v19);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(*buf);
  }

  if (v19 == 1)
  {
    v7 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Forcing ERTM on non reliable pipe", buf, 2u);
      v8 = v19;
    }

    else
    {
      v8 = 1;
    }

    v5 = sub_100199488(v8 & 1);
  }

  v9 = sub_100007EE8(v5, v6);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1003654BC;
  v16[3] = &unk_100AEB940;
  v16[4] = a1;
  v17 = v23;
  v18 = v20;
  sub_10000D334(v9, v16);
  v10 = qword_100BCE928;
  if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v23;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Initialized ScalablePipe. Peripheral Support: %d", buf, 8u);
  }

  v11 = sub_100017E6C();
  sub_1003128B0(v11 + 384, a1 + 16);
  v14 = sub_1000D999C(v12, v13);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100366430;
  v15[3] = &unk_100ADF8F8;
  v15[4] = a1;
  sub_10000D334(v14, v15);
}

void sub_100364EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 57) < 0)
  {
    operator delete(*(v26 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_100364F08(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v8 = sub_1000D5BF0(a1);
  v9 = qword_100BCE928;
  if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v24 = a1;
    v25 = 1024;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Scalable pipe transport has been upgraded handle:%p p:0x%4x", buf, 0x12u);
  }

  if (a2 == 1)
  {
    v10 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_FAULT))
    {
      sub_10081E718(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  if (qword_100B508F0 != -1)
  {
    sub_10081E790();
  }

  *buf = *a3;
  LOWORD(v24) = *(a3 + 4);
  v18 = sub_1000E6554(off_100B508E8, buf, 1);
  v20 = sub_100007EE8(v18, v19);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10036B300;
  v21[3] = &unk_100AEAF08;
  v22 = a4;
  v21[4] = a1;
  v21[5] = v18;
  sub_10000CA94(v20, v21);
}

void sub_1003650A4(uint64_t a1, char a2, char a3, char a4)
{
  v17 = 0;
  v8 = sub_1000D42DC(&v17 + 1, &v17);
  v10 = sub_100007EE8(v8, v9);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10036B8D8;
  v11[3] = &unk_100AEDA40;
  v11[4] = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v12 = HIDWORD(v17);
  v13 = v17;
  sub_10000CA94(v10, v11);
}

void sub_100365224(unsigned __int8 *a1, int a2, int a3, int a4)
{
  v19 = 0;
  if (sub_1000ABD24(a1))
  {
    v8 = (a1[49] << 40) | (a1[50] << 32) | (a1[51] << 24) | (a1[52] << 16) | (a1[53] << 8) | a1[54] | (a1[48] << 48);
LABEL_5:
    v9 = sub_100197C20(v8, &v19);
    goto LABEL_6;
  }

  if (sub_1000B8B5C(a1))
  {
    v8 = (a1[48] << 40) | (a1[49] << 32) | (a1[50] << 24) | (a1[51] << 16) | (a1[52] << 8) | a1[53];
    goto LABEL_5;
  }

  v12 = qword_100BCE928;
  v9 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Invalid handle in error metric CB", buf, 2u);
  }

LABEL_6:
  v11 = sub_100007EE8(v9, v10);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10036BC7C;
  v13[3] = &unk_100AEDA80;
  v13[4] = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = v19;
  sub_10000CA94(v11, v13);
}

void sub_1003653A0(uint64_t a1, int a2, __int16 a3)
{
  v6 = qword_100BCE928;
  v7 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    *buf = 67109376;
    v14 = a2;
    v15 = 2048;
    v16 = a1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AP wakeup by pipe 0x%04x handle %p", buf, 0x12u);
  }

  v9 = sub_100007EE8(v7, v8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10036C200;
  v10[3] = &unk_100ADF940;
  v10[4] = a1;
  v11 = a2;
  v12 = a3;
  sub_10000CA94(v9, v10);
}

_BYTE *sub_1003654BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v66 = 0;
  sub_1000216B4(&v66);
  v3 = sub_1002D359C();
  if ((v3 & 1) == 0)
  {
    return sub_10002249C(&v66);
  }

  v5 = sub_10000C798(v3, v4);
  if (!(*(*v5 + 96))(v5))
  {
    return sub_10002249C(&v66);
  }

  if (sub_100195DB0(*(a1 + 40), *(a1 + 41)))
  {
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
    {
      sub_10081E7B8();
    }

    return sub_10002249C(&v66);
  }

  v65 = 0;
  v64 = 0;
  v63 = 0;
  v61 = 0;
  v62 = -84;
  v60 = 0;
  v6 = sub_10000E92C();
  if ((*(*v6 + 8))(v6))
  {
    v7 = 10;
  }

  else
  {
    v7 = 0;
  }

  v59 = v7;
  v8 = sub_10000E92C();
  sub_100007E30(buf, "Magnet");
  sub_100007E30(__p, "DisableClassic");
  (*(*v8 + 72))(v8, buf, __p, &v65);
  if (SHIBYTE(v70) < 0)
  {
    operator delete(*__p);
  }

  if (SBYTE7(v73) < 0)
  {
    operator delete(*buf);
  }

  v9 = sub_10000E92C();
  sub_100007E30(buf, "Magnet");
  sub_100007E30(__p, "EnableAWDL");
  (*(*v9 + 72))(v9, buf, __p, &v64 + 1);
  if (SHIBYTE(v70) < 0)
  {
    operator delete(*__p);
  }

  if (SBYTE7(v73) < 0)
  {
    operator delete(*buf);
  }

  v10 = sub_10000E92C();
  sub_100007E30(buf, "Magnet");
  sub_100007E30(__p, "HistorySize");
  (*(*v10 + 88))(v10, buf, __p, &v59);
  if (SHIBYTE(v70) < 0)
  {
    operator delete(*__p);
  }

  if (SBYTE7(v73) < 0)
  {
    operator delete(*buf);
  }

  v11 = sub_10000E92C();
  sub_100007E30(buf, "Magnet");
  sub_100007E30(__p, "AssertUpgrade");
  (*(*v11 + 72))(v11, buf, __p, &v64);
  if (SHIBYTE(v70) < 0)
  {
    operator delete(*__p);
  }

  if (SBYTE7(v73) < 0)
  {
    operator delete(*buf);
  }

  v12 = sub_10000E92C();
  sub_100007E30(buf, "Magnet");
  sub_100007E30(__p, "DisableFlush");
  (*(*v12 + 72))(v12, buf, __p, &v63 + 1);
  if (SHIBYTE(v70) < 0)
  {
    operator delete(*__p);
  }

  if (SBYTE7(v73) < 0)
  {
    operator delete(*buf);
  }

  v13 = sub_10000E92C();
  sub_100007E30(buf, "Magnet");
  sub_100007E30(__p, "EnablePerPacketLogging");
  (*(*v13 + 72))(v13, buf, __p, &v63);
  if (SHIBYTE(v70) < 0)
  {
    operator delete(*__p);
  }

  if (SBYTE7(v73) < 0)
  {
    operator delete(*buf);
  }

  v14 = sub_10000E92C();
  sub_100007E30(buf, "Magnet");
  sub_100007E30(__p, "RSSIMinSwitchThreshold");
  (*(*v14 + 88))(v14, buf, __p, &v62);
  if (SHIBYTE(v70) < 0)
  {
    operator delete(*__p);
  }

  if (SBYTE7(v73) < 0)
  {
    operator delete(*buf);
  }

  v15 = sub_10000E92C();
  sub_100007E30(buf, "Magnet");
  sub_100007E30(__p, "ForceMaxLatency");
  (*(*v15 + 128))(v15, buf, __p, &v61);
  if (SHIBYTE(v70) < 0)
  {
    operator delete(*__p);
  }

  if (SBYTE7(v73) < 0)
  {
    operator delete(*buf);
  }

  v16 = sub_10000E92C();
  sub_100007E30(buf, "Magnet");
  sub_100007E30(__p, "enableTSEverywhere");
  (*(*v16 + 72))(v16, buf, __p, &v60);
  if (SHIBYTE(v70) < 0)
  {
    operator delete(*__p);
  }

  if (SBYTE7(v73) < 0)
  {
    operator delete(*buf);
  }

  if (HIBYTE(v64) == 1 && os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
  {
    sub_10081E7F4();
  }

  v17 = v65;
  if (v65 == 1)
  {
    v18 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "User forced disable Classic transport !", buf, 2u);
      v17 = v65;
    }
  }

  if (HIBYTE(v64))
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  sub_10002223C();
  v20 = qword_100BCE928;
  if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v62;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "rssiThreshold = %d", buf, 8u);
  }

  sub_1002314AC(v62);
  if (v64 == 1)
  {
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
    {
      sub_10081E830();
    }

    v21 = 200;
  }

  else
  {
    v21 = 0;
  }

  sub_1001949E8(v21, 0, 0);
  v23 = v19 | v17 ^ 1u;
  if (v23)
  {
    *buf = *&off_100AED9C0;
    v73 = *&off_100AED9D0;
    v74 = *&off_100AED9E0;
    v75 = sub_1003653A0;
    v24 = sub_10022EEF4(v19 | v17 ^ 1u, buf);
    if (v24)
    {
      if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
      {
        sub_10081E86C();
      }

      return sub_10002249C(&v66);
    }
  }

  else
  {
    v26 = sub_10000C7D0(v23, v22);
    if (sub_1000ABD54(v26))
    {
      sub_10019685C();
    }

    v27 = qword_100BCE928;
    v24 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Warning: Transport switching disabled by defaults write", buf, 2u);
    }
  }

  if (HIBYTE(v63) == 1)
  {
    v28 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Disabling L2CAP flush on Isoch endpoint !", buf, 2u);
      v29 = HIBYTE(v63);
    }

    else
    {
      v29 = 1;
    }

    v24 = sub_100232820(v29 & 1);
  }

  if (v63 == 1)
  {
    v30 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "User forced enable per packet logging", buf, 2u);
      v31 = v63;
    }

    else
    {
      v31 = 1;
    }

    v24 = sub_100194DB4(v31 & 1);
  }

  v32 = v61;
  if (v61)
  {
    v33 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v32;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "User forced enable ForceMaxLatency=%u", buf, 8u);
      v32 = v61;
    }

    v24 = sub_100199B78(v32);
  }

  if (v60 == 1)
  {
    v34 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = 1;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "User forced enable forceTSEverywhere=%d", buf, 8u);
      v35 = v60;
    }

    else
    {
      v35 = 1;
    }

    v24 = sub_100199B84(v35 & 1);
  }

  v36 = sub_10000C7D0(v24, v25);
  (*(*v36 + 3864))(v36);
  *(v2 + 56) = 1;
  v58[0] = 0;
  v58[1] = 0;
  sub_100007F88(v58, v2 + 80);
  v37 = *(v2 + 144);
  v55 = (v2 + 152);
  if (v37 != (v2 + 152))
  {
    do
    {
      v38 = v37[5];
      v39 = *(v38 + 32);
LABEL_87:
      v40 = *(v38 + 40);
      while (v39 != v40)
      {
        v41 = *v39;
        *&v74 = sub_100366310;
        *buf = *&off_100AED9F8;
        v73 = *&off_100AEDA08;
        v42 = v41[23];
        if (v42 < 0)
        {
          v43 = *v41;
          v42 = *(v41 + 1);
        }

        else
        {
          v43 = v41;
        }

        v44 = *(v41 + 7);
        if ((v44 - 1) > 3)
        {
          v45 = 1;
        }

        else
        {
          v45 = dword_1008A6410[v44 - 1];
        }

        v46 = sub_100197C9C(v43, (v42 + 1), *(v41 + 6), v45, v41[36], v41[37], v41[38], v44 == 4, buf);
        if (!v46)
        {
          v39 += 8;
          goto LABEL_87;
        }

        v47 = qword_100BCE928;
        if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
        {
          if (v41[23] < 0)
          {
            v41 = *v41;
          }

          sub_100018384(v37[4], v56);
          v50 = v56;
          if (v57 < 0)
          {
            v50 = v56[0];
          }

          *__p = 136446722;
          *&__p[4] = v41;
          v68 = 2082;
          v69 = v50;
          v70 = 1024;
          v71 = v46;
          _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Failed to re-register endpoint %{public}s after power cycle, for session %{public}s with result %{bluetooth:OI_STATUS}u", __p, 0x1Cu);
          if (v57 < 0)
          {
            operator delete(v56[0]);
          }
        }

        v48 = *(v38 + 40);
        v49 = v48 - (v39 + 8);
        if (v48 != v39 + 8)
        {
          memmove(v39, v39 + 8, v48 - (v39 + 8));
        }

        v40 = &v39[v49];
        *(v38 + 40) = &v39[v49];
      }

      v51 = v37[1];
      if (v51)
      {
        do
        {
          v52 = v51;
          v51 = *v51;
        }

        while (v51);
      }

      else
      {
        do
        {
          v52 = v37[2];
          v53 = *v52 == v37;
          v37 = v52;
        }

        while (!v53);
      }

      v37 = v52;
    }

    while (v52 != v55);
  }

  sub_1000088CC(v58);
  return sub_10002249C(&v66);
}

void sub_1003660A0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  if (qword_100B540F0 != -1)
  {
    sub_1000C0DF4();
  }

  sub_10036DEC0(qword_100B540E8, v6);
  v8 = sub_1000BE280(a1);
  sub_100007EE8(v8, v9);
  operator new();
}

uint64_t sub_100366430(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54080 != -1)
  {
    sub_10081E8A8();
  }

  sub_1006FCA38(off_100B54078, v1 + 24);

  return sub_10036648C(v1, v2);
}

uint64_t sub_10036648C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C7D0(a1, a2);
  v5 = sub_100413640(v3, v4);
  if (v5)
  {
    v7 = sub_1004327A0(v5, v6);
    v8 = (**v7)(v7);
  }

  else
  {
    if (qword_100B54080 != -1)
    {
      sub_10081E8A8();
    }

    v8 = sub_1006FCE7C(off_100B54078);
  }

  v9 = v8;
  v11 = *(a1 + 64);
  v10 = (a1 + 64);
  v12 = [v11 isEqualToString:v8];
  if ((v12 & 1) == 0)
  {
    objc_storeStrong(v10, v9);
    v13 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *v10;
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updated country code: %{public}@", &v16, 0xCu);
    }
  }

  return v12 ^ 1;
}

void sub_100366600(uint64_t a1)
{
  v2 = qword_100BCE928;
  v3 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ScalablePipe::stackWillStop enter", buf, 2u);
  }

  v5 = sub_1000D999C(v3, v4);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10036678C;
  v15[3] = &unk_100ADF8F8;
  v15[4] = a1;
  sub_10000D334(v5, v15);
  v8 = sub_1004327A0(v6, v7);
  (*(*v8 + 40))(v8, a1 + 40);
  v9 = sub_100017E6C();
  sub_10036F1AC(v9 + 384, a1 + 16);
  v12 = sub_100007EE8(v10, v11);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003667E0;
  v14[3] = &unk_100ADF8F8;
  v14[4] = a1;
  sub_10000D334(v12, v14);
  v13 = qword_100BCE928;
  if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ScalablePipe::stackWillStop exit", buf, 2u);
  }
}

void sub_10036678C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54080 != -1)
  {
    sub_10081E8A8();
  }

  v2 = off_100B54078;

  sub_1006FCB0C(v2, v1 + 24);
}

_BYTE *sub_1003667E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v42 = 0;
  sub_1000216B4(&v42);
  v2 = sub_1002D359C();
  if (v2)
  {
    v4 = sub_10000C798(v2, v3);
    if ((*(*v4 + 96))(v4))
    {
      sub_10022FD68();
      sub_1001967B4();
      sub_100022214(&v42);
      *(v1 + 56) = 0;
      v41[0] = 0;
      v41[1] = 0;
      sub_100007F88(v41, v1 + 80);
      v5 = *(v1 + 144);
      v6 = (v1 + 152);
      v35 = (v1 + 152);
      if (v5 != (v1 + 152))
      {
        do
        {
          v7 = v5[5];
          v9 = *(v7 + 32);
          v8 = *(v7 + 40);
          v36 = v8;
          while (v9 != v8)
          {
            v10 = *v9;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v11 = *(v10 + 40);
            v12 = [v11 countByEnumeratingWithState:&v37 objects:v43 count:16];
            v14 = v12;
            if (v12)
            {
              v15 = *v38;
              do
              {
                v16 = 0;
                do
                {
                  if (*v38 != v15)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v17 = *(*(&v37 + 1) + 8 * v16);
                  v18 = sub_1000B4EFC(v12, v13);
                  sub_100373ADC(v18, [v17 pipeHandle]);
                  v16 = v16 + 1;
                }

                while (v14 != v16);
                v12 = [v11 countByEnumeratingWithState:&v37 objects:v43 count:16];
                v14 = v12;
              }

              while (v12);
            }

            [*(v10 + 40) removeAllObjects];
            ++v9;
            v8 = v36;
          }

          v19 = v5[1];
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
              v20 = v5[2];
              v21 = *v20 == v5;
              v5 = v20;
            }

            while (!v21);
          }

          v5 = v20;
          v6 = (v1 + 152);
        }

        while (v20 != v35);
        v5 = *(v1 + 144);
      }

      if (v5 != v6)
      {
        do
        {
          v22 = v5[5];
          if (*(v22 + 56) == 1)
          {
            sub_10036F284(v22);
            operator delete();
          }

          v23 = v5[1];
          if (v23)
          {
            do
            {
              v24 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              v24 = v5[2];
              v21 = *v24 == v5;
              v5 = v24;
            }

            while (!v21);
          }

          v5 = v24;
        }

        while (v24 != v35);
      }

      v26 = *(v1 + 168);
      for (i = *(v1 + 176); v26 != i; v26 += 6)
      {
        v27 = *v35;
        if (*v35)
        {
          v28 = *v26;
          v29 = v1 + 152;
          do
          {
            v30 = *(v27 + 32);
            v31 = v30 >= v28;
            v32 = v30 < v28;
            if (v31)
            {
              v29 = v27;
            }

            v27 = *(v27 + 8 * v32);
          }

          while (v27);
          if (v29 != v35 && v28 >= *(v29 + 32))
          {
            v33 = **(v29 + 40);
            if (v33)
            {
              (*(*v33 + 24))(v33, v26 + 1, 1);
              i = *(v1 + 176);
            }
          }
        }
      }

      sub_100366BB0((v1 + 168));
      *(v1 + 200) = *(v1 + 192);
      sub_1000088CC(v41);
    }
  }

  return sub_10002249C(&v42);
}

void sub_100366BB0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    if (*(i - 17) < 0)
    {
      operator delete(*(i - 40));
    }
  }

  a1[1] = v2;
}

unint64_t sub_100366C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = sub_10000C798(a1, a2);
  if ((*(*v9 + 96))(v9))
  {
    v10 = *(a1 + 144);
    if (v10 == (a1 + 152))
    {
LABEL_10:
      v21 = 0;
      if (qword_100B50B88 != -1)
      {
        sub_10081E958();
      }

      if (!sub_100044414(qword_100B50B80, a4, &v21, 4))
      {
        __p[0] = 0;
        __p[1] = 0;
        sub_100007F88(__p, a1 + 80);
        v16 = qword_100BCE928;
        if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a4 + 23) >= 0)
          {
            v17 = a4;
          }

          else
          {
            v17 = *a4;
          }

          buf[0] = 136446210;
          *&buf[1] = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Registering scalable pipe session %{public}s", buf, 0xCu);
        }

        if (qword_100B50B88 != -1)
        {
          sub_10081E8BC();
        }

        v20 = sub_1000117DC(qword_100B50B80, v21);
        operator new();
      }

      if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
      {
        sub_10081E96C();
      }
    }

    else
    {
      while (*v10[5] != a2)
      {
        v11 = v10[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v10[2];
            v13 = *v12 == v10;
            v10 = v12;
          }

          while (!v13);
        }

        v10 = v12;
        if (v12 == (a1 + 152))
        {
          goto LABEL_10;
        }
      }

      v14 = qword_100BCE928;
      if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
      {
        sub_100018384(v10[4], __p);
        v18 = v23 >= 0 ? __p : __p[0];
        v19 = *(a3 + 23) >= 0 ? a3 : *a3;
        buf[0] = 136446466;
        *&buf[1] = v18;
        v25 = 2082;
        v26 = v19;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Duplicate check-in message from session %{public}s in application %{public}s", buf, 0x16u);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
  {
    sub_10081E8E4();
  }

  return 0;
}

uint64_t sub_100366FA0(uint64_t a1, uint64_t a2)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 80);
  v4 = *(a1 + 144);
  if (v4 != (a1 + 152))
  {
    while (1)
    {
      v5 = v4[5];
      if (*v5 == a2)
      {
        break;
      }

      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
      if (v7 == (a1 + 152))
      {
        return sub_1000088CC(v24);
      }
    }

    v9 = v4[4];
    v10 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v9, __p);
      v11 = v23 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unregistering scalable pipe session %{public}s", buf, 0xCu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v12 = *(v5 + 57);
    v13 = *(a1 + 168);
    v14 = *(a1 + 176);
    while (v13 != v14)
    {
      if (v9 == *v13)
      {
        sub_10036FEBC(__p, (v13 + 6), v14, v13);
        v14 = v15;
        for (i = *(a1 + 176); i != v14; i -= 48)
        {
          if (*(i - 17) < 0)
          {
            operator delete(*(i - 40));
          }
        }

        *(a1 + 176) = v14;
      }

      else
      {
        v13 += 6;
      }
    }

    v17 = *(v5 + 32);
    if (*(v5 + 40) == v17)
    {
      goto LABEL_38;
    }

    *(v5 + 56) = 1;
    *v5 = 0;
    do
    {
      v18 = *v17;
      if ((*(*v17 + 39) & 1) == 0 && !sub_1003672D0(a1, v9, *v17))
      {
        v19 = *(v5 + 40);
        v20 = v19 - (v17 + 1);
        if (v19 != v17 + 1)
        {
          memmove(v17, v17 + 1, v19 - (v17 + 1));
        }

        *(v5 + 40) = v17 + v20;

        if (*(v18 + 23) < 0)
        {
          operator delete(*v18);
        }

        operator delete();
      }

      ++v17;
    }

    while (v17 != *(v5 + 40));
    if (v17 == *(v5 + 32))
    {
LABEL_38:
      sub_10002717C((a1 + 144), v4);
      operator delete(v4);
      sub_10036F284(v5);
      operator delete();
    }

    if (v12)
    {
      sub_100367510(a1);
    }
  }

  return sub_1000088CC(v24);
}

void sub_1003672A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003672D0(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = qword_100BCE928;
  if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a3;
    if (*(a3 + 23) < 0)
    {
      v7 = *a3;
    }

    sub_100018384(a2, __p);
    if (v20 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = *__p;
    }

    *buf = 136446466;
    v22 = v7;
    v23 = 2082;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unregistering endpoint %{public}s on session %{public}s", buf, 0x16u);
    if (v20 < 0)
    {
      operator delete(*__p);
    }
  }

  if (*(a1 + 56))
  {
    *(a3 + 39) = 1;
    buf[0] = 0;
    sub_1000216B4(buf);
    v9 = *(a3 + 23);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = *a3;
      v9 = a3[1];
    }

    else
    {
      v10 = a3;
    }

    v12 = *(a3 + 7) - 1;
    if (v12 > 3)
    {
      v13 = 1;
    }

    else
    {
      v13 = dword_1008A6410[v12];
    }

    v14 = sub_1001987C4(v10, v9 + 1, *(a3 + 6), v13);
    if (v14)
    {
      v15 = qword_100BCE928;
      if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_FAULT))
      {
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }

        *__p = 136446466;
        *&__p[4] = a3;
        v18 = 1024;
        v19 = v14;
        _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Couldn't unregister valid endpoint %{public}s with result %{bluetooth:OI_STATUS}u", __p, 0x12u);
      }

      v11 = 0;
    }

    else
    {
      v11 = 10;
    }

    sub_10002249C(buf);
  }

  else
  {
    if ([a3[5] count] && os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_FAULT))
    {
      sub_10081E9E0();
    }

    return 0;
  }

  return v11;
}

void sub_1003674F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_100367510(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v1 = *(a1 + 144);
    v2 = (a1 + 152);
    if (v1 != (a1 + 152))
    {
      do
      {
        v3 = v1[5];
        if (*(v3 + 57) == 1)
        {
          if (*(v3 + 56) != 1)
          {
            return;
          }

          v4 = v1[4];
          v5 = qword_100BCE928;
          if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
          {
            sub_100018384(v4, __p);
            v6 = v11 >= 0 ? __p : __p[0];
            *buf = 136446210;
            v13 = v6;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Session %{public}s has link requirements but it's zombied", buf, 0xCu);
            if (v11 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v7 = v1[1];
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
          do
          {
            v8 = v1[2];
            v9 = *v8 == v1;
            v1 = v8;
          }

          while (!v9);
        }

        v1 = v8;
      }

      while (v8 != v2);
    }

    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_100194D40();
    sub_10002249C(__p);
  }
}

void sub_100367694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003676B0(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, int a7, int a8, char a9)
{
  v123[0] = 0;
  v123[1] = 0;
  sub_100007F88(v123, a1 + 80);
  v119 = a1;
  v19 = *(a1 + 152);
  v18 = (a1 + 152);
  v17 = v19;
  if (!v19)
  {
    goto LABEL_205;
  }

  v20 = v18;
  do
  {
    v21 = v17[4];
    v22 = v21 >= a2;
    v23 = v21 < a2;
    if (v22)
    {
      v20 = v17;
    }

    v17 = v17[v23];
  }

  while (v17);
  if (v20 == v18 || v20[4] > a2)
  {
LABEL_205:
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_FAULT))
    {
      sub_100018384(a2, __p);
      sub_10081EAD8();
    }

LABEL_11:
    v24 = 1;
    goto LABEL_12;
  }

  v26 = *(a3 + 23);
  if ((v26 & 0x80u) != 0)
  {
    v26 = *(a3 + 8);
  }

  if (!v26)
  {
    v24 = 5;
    goto LABEL_12;
  }

  if (a5 == 4)
  {
    sub_100018384(a2, __p);
    v27 = __p[23];
    v28 = *__p;
    v29 = *&__p[8];
    if (__p[23] >= 0)
    {
      v28 = __p;
      v29 = __p[23];
    }

    v30 = 31;
    if (v29 < 0x1F)
    {
      v30 = v29;
    }

    if (!v29)
    {
      goto LABEL_57;
    }

    v31 = &v28[v30];
    v32 = v28;
    v33 = v31;
    do
    {
      if (*v32 == 99)
      {
        v34 = &_mh_execute_header.magic + 1;
        while (v34 != 31)
        {
          if (&v32[v34] == v31)
          {
            goto LABEL_33;
          }

          v35 = v32[v34];
          v36 = aComAppleSharin_0[v34++];
          if (v35 != v36)
          {
            goto LABEL_24;
          }
        }

        v33 = v32;
      }

LABEL_24:
      ++v32;
    }

    while (v32 != v31);
    if (v33 == v31 || v33 != v28)
    {
      goto LABEL_57;
    }

    v37 = *(a3 + 23);
    v38 = v37 < 0;
    if (v37 >= 0)
    {
      v39 = a3;
    }

    else
    {
      v39 = *a3;
    }

    if (v38)
    {
      v40 = *(a3 + 8);
    }

    else
    {
      v40 = *(a3 + 23);
    }

    v41 = 29;
    if (v40 < 0x1D)
    {
      v41 = v40;
    }

    if (!v40)
    {
      goto LABEL_57;
    }

LABEL_33:
    v42 = (v39 + v41);
    v43 = v39;
    v44 = v42;
    do
    {
      if (*v43 == 99)
      {
        v45 = &_mh_execute_header.magic + 1;
        while (v45 != 29)
        {
          if (&v43[v45] == v42)
          {
            goto LABEL_54;
          }

          v46 = v43[v45];
          v47 = aComAppleSharin_1[v45++];
          if (v46 != v47)
          {
            goto LABEL_46;
          }
        }

        v44 = v43;
      }

LABEL_46:
      ++v43;
    }

    while (v43 != v42);
LABEL_54:
    if (v44 != v42 && v44 == v39)
    {
      v48 = 1;
    }

    else
    {
LABEL_57:
      sub_100018384(a2, buf);
      v49 = *&buf[8];
      if (v125 >= 0)
      {
        v50 = buf;
      }

      else
      {
        v50 = *buf;
      }

      if (v125 >= 0)
      {
        v49 = HIBYTE(v125);
      }

      v51 = 15;
      if (v49 < 0xF)
      {
        v51 = v49;
      }

      v52 = &v50[v51];
      if (v49)
      {
        v53 = v50;
        v54 = v52;
        do
        {
          if (*v53 == 99)
          {
            v55 = &_mh_execute_header.magic + 1;
            while (v55 != 15)
            {
              if (&v53[v55] == v52)
              {
                goto LABEL_76;
              }

              v56 = v53[v55];
              v57 = aComAppleLeapp[v55++];
              if (v56 != v57)
              {
                goto LABEL_67;
              }
            }

            v54 = v53;
          }

LABEL_67:
          ++v53;
        }

        while (v53 != v52);
      }

      else
      {
        v54 = v52;
      }

LABEL_76:
      v58 = v54 != v52 && v54 == v50;
      v48 = v58;
      if (SHIBYTE(v125) < 0)
      {
        operator delete(*buf);
      }

      v27 = __p[23];
    }

    if (v27 < 0)
    {
      operator delete(*__p);
    }

    if ((v48 & 1) == 0)
    {
      v79 = qword_100BCE928;
      if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
      {
        sub_100018384(a2, __p);
        v80 = __p[23] >= 0 ? __p : *__p;
        v81 = *(a3 + 23) >= 0 ? a3 : *a3;
        *buf = 136446466;
        *&buf[4] = v80;
        *&buf[12] = 2082;
        *&buf[14] = v81;
        _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "session %{public}s name %{public}s is not allowed to use PipeEndpointPriorityHighLeOnly", buf, 0x16u);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      goto LABEL_11;
    }
  }

  v115 = a4;
  v116 = a7;
  v117 = a5;
  v118 = a3;
  v113 = a6;
  v114 = a8;
  v59 = *(v119 + 144);
  if (v59 == v18)
  {
LABEL_112:
    v72 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
    {
      if (v117 < 5 && ((0x17u >> v117) & 1) != 0)
      {
        v73 = (&off_100AEDD70)[v117];
      }

      else if (v117 == 3)
      {
        v73 = "isochronous";
      }

      else
      {
        v73 = "unknown";
      }

      v92 = *(v118 + 23);
      v93 = *v118;
      sub_100018384(a2, buf);
      if (v92 >= 0)
      {
        v94 = v118;
      }

      else
      {
        v94 = v93;
      }

      v95 = "client";
      if (v115 == 1)
      {
        v95 = "server";
      }

      *__p = 136448002;
      *&__p[4] = v73;
      if (v115 == 2)
      {
        v95 = "peer-to-peer";
      }

      if (v125 >= 0)
      {
        v96 = buf;
      }

      else
      {
        v96 = *buf;
      }

      v97 = "No ";
      *&__p[12] = 2082;
      *&__p[14] = v95;
      v98 = "";
      if (v116)
      {
        v97 = "";
      }

      *&__p[22] = 2082;
      *&__p[24] = v94;
      v99 = "NO";
      if (v114)
      {
        v98 = "NO";
      }

      *v128 = 2082;
      *&v128[2] = v96;
      v100 = "Socket";
      if (v113)
      {
        v100 = "Skywalk";
      }

      *&v128[10] = 2082;
      v129 = v97;
      v130 = 2082;
      v131 = v98;
      v132 = 2082;
      v133 = v100;
      if (v117 == 4)
      {
        v99 = "YES";
      }

      v134 = 2082;
      v135 = v99;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Registering %{public}s priority %{public}s endpoint %{public}s for session %{public}s %{public}sencryption required, %{public}sERTM, with %{public}s transport, staOnLe:%{public}s.", __p, 0x52u);
      if (SHIBYTE(v125) < 0)
      {
        operator delete(*buf);
      }
    }

    if (*(v119 + 56) == 1)
    {
      v122 = 0;
      sub_1000216B4(&v122);
      *__p = *&off_100AED9F8;
      *&__p[16] = *&off_100AEDA08;
      *v128 = sub_100366310;
      v101 = *(v118 + 23);
      if ((v101 & 0x80u) == 0)
      {
        v102 = v118;
      }

      else
      {
        v102 = *v118;
      }

      if ((v101 & 0x80u) != 0)
      {
        v101 = *(v118 + 8);
      }

      if (v117 - 1 > 3)
      {
        v103 = 1;
      }

      else
      {
        v103 = dword_1008A6410[v117 - 1];
      }

      v104 = sub_100197C9C(v102, (v101 + 1), v115, v103, v116, v114, a9, v117 == 4, __p);
      if (v104)
      {
        v105 = qword_100BCE928;
        if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
        {
          v107 = *(v118 + 23);
          v108 = *v118;
          sub_100018384(a2, v120);
          v109 = v107 >= 0 ? v118 : v108;
          v110 = v121 >= 0 ? v120 : v120[0];
          *buf = 136446722;
          *&buf[4] = v109;
          *&buf[12] = 2082;
          *&buf[14] = v110;
          v125 = 1024;
          v126 = v104;
          _os_log_error_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "Failed to register endpoint %{public}s for session %{public}s with result %{bluetooth:OI_STATUS}u", buf, 0x1Cu);
          if (v121 < 0)
          {
            operator delete(v120[0]);
          }
        }

        sub_10002249C(&v122);
        goto LABEL_11;
      }

      sub_10002249C(&v122);
    }

    operator new();
  }

  v60 = *(v118 + 23);
  v112 = v60;
  if (v60 >= 0)
  {
    v61 = *(v118 + 23);
  }

  else
  {
    v61 = *(v118 + 8);
  }

  if (v60 >= 0)
  {
    v62 = v118;
  }

  else
  {
    v62 = *v118;
  }

LABEL_95:
  v63 = v59[5];
  v65 = *(v63 + 32);
  v64 = *(v63 + 40);
  while (1)
  {
    if (v65 == v64)
    {
      v70 = v59[1];
      if (v70)
      {
        do
        {
          v71 = v70;
          v70 = *v70;
        }

        while (v70);
      }

      else
      {
        do
        {
          v71 = v59[2];
          v58 = *v71 == v59;
          v59 = v71;
        }

        while (!v58);
      }

      v59 = v71;
      if (v71 == v18)
      {
        goto LABEL_112;
      }

      goto LABEL_95;
    }

    v66 = *v65;
    v67 = *(*v65 + 23);
    v68 = v67 >= 0 ? *(*v65 + 23) : *(*v65 + 8);
    if (v68 == v61)
    {
      v69 = v67 >= 0 ? *v65 : *v66;
      if (!memcmp(v69, v62, v68))
      {
        break;
      }
    }

    ++v65;
  }

  if (*(v66 + 39) == 1)
  {
    v75 = *(v119 + 168);
    v74 = *(v119 + 176);
    while (v75 != v74)
    {
      v76 = *(v75 + 31);
      v77 = v76;
      if ((v76 & 0x80u) != 0)
      {
        v76 = *(v75 + 16);
      }

      if (v68 == v76)
      {
        v78 = v77 >= 0 ? (v75 + 8) : *(v75 + 8);
        if (!memcmp(v62, v78, v68))
        {
          v106 = qword_100BCE928;
          if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
          {
            sub_100018384(*v75, __p);
            v111 = __p[23] >= 0 ? __p : *__p;
            *buf = 136446466;
            *&buf[4] = v62;
            *&buf[12] = 2082;
            *&buf[14] = v111;
            _os_log_error_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "Failed to register endpoint %{public}s as it is already pending registration by session %{public}s", buf, 0x16u);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

          goto LABEL_189;
        }
      }

      v75 += 48;
    }

    v83 = qword_100BCE928;
    v84 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_INFO);
    v85 = v112;
    if (v84)
    {
      sub_100018384(v59[4], __p);
      if (__p[23] >= 0)
      {
        v86 = __p;
      }

      else
      {
        v86 = *__p;
      }

      *buf = 136446466;
      *&buf[4] = v62;
      *&buf[12] = 2082;
      *&buf[14] = v86;
      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "Delaying registration of endpoint %{public}s as it is currently being unregistered by session %{public}s", buf, 0x16u);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v85 = *(v118 + 23);
    }

    *__p = a2;
    if (v85 < 0)
    {
      sub_100008904(&__p[8], *v118, *(v118 + 8));
      v89 = v113;
      v88 = v114;
      v91 = v115;
      v90 = v116;
      v87 = v117;
    }

    else
    {
      v87 = v117;
      *&__p[8] = *v118;
      *&__p[24] = *(v118 + 16);
      v89 = v113;
      v88 = v114;
      v91 = v115;
      v90 = v116;
    }

    *v128 = v91;
    *&v128[4] = v87;
    *&v128[8] = v89;
    LOBYTE(v129) = v90;
    BYTE1(v129) = v88;
    BYTE2(v129) = a9;
    sub_100368274((v119 + 168), __p);
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    v24 = 10;
  }

  else
  {
    v82 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(v59[4], __p);
      sub_10081EA54(v62, __p, buf, v82);
    }

LABEL_189:
    v24 = 103;
  }

LABEL_12:
  sub_1000088CC(v123);
  return v24;
}

uint64_t sub_100368274(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10036FF50(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v5 = *(a2 + 32);
    *(v3 + 39) = *(a2 + 39);
    *(v3 + 32) = v5;
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1003682E4(void *a1, unint64_t a2, char *a3)
{
  v54[0] = 0;
  v54[1] = 0;
  sub_100007F88(v54, (a1 + 10));
  v6 = a1[19];
  if (!v6)
  {
    goto LABEL_83;
  }

  v7 = a1 + 19;
  do
  {
    v8 = v6[4];
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 == a1 + 19 || v7[4] > a2)
  {
LABEL_83:
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_FAULT))
    {
      sub_100018384(a2, __p);
      sub_10081EAD8();
    }

LABEL_44:
    v36 = 1;
    goto LABEL_45;
  }

  v11 = v7[5];
  v13 = a1[21];
  v12 = a1[22];
  if (v13 == v12)
  {
LABEL_27:
    v51 = v11;
    v26 = *(v11 + 32);
    v25 = *(v11 + 40);
    if (v26 == v25)
    {
LABEL_43:
      v35 = qword_100BCE928;
      if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
      {
        v47 = a3[23];
        v48 = *a3;
        sub_100018384(a2, __p);
        v49 = v47 >= 0 ? a3 : v48;
        v50 = v53 >= 0 ? __p : __p[0];
        *buf = 136446466;
        v56 = v49;
        v57 = 2082;
        v58 = v50;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Unable to unregister endpoint %{public}s on session %{public}s as it wasn't registered", buf, 0x16u);
        if (v53 < 0)
        {
          operator delete(__p[0]);
        }
      }

      goto LABEL_44;
    }

    v27 = a3[23];
    if (v27 >= 0)
    {
      v28 = a3[23];
    }

    else
    {
      v28 = *(a3 + 1);
    }

    if (v27 >= 0)
    {
      v29 = a3;
    }

    else
    {
      v29 = *a3;
    }

    v30 = v26 + 8;
    while (1)
    {
      v31 = *v26;
      v32 = *(*v26 + 23);
      v33 = v32;
      if ((v32 & 0x80u) != 0)
      {
        v32 = *(*v26 + 8);
      }

      if (v32 == v28)
      {
        v34 = v33 >= 0 ? *v26 : *v31;
        if (!memcmp(v34, v29, v28))
        {
          break;
        }
      }

      v26 += 8;
      v30 += 8;
      if (v26 == v25)
      {
        goto LABEL_43;
      }
    }

    if (*(v31 + 39))
    {
      v38 = qword_100BCE928;
      if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(a2, __p);
        v39 = v53 >= 0 ? __p : __p[0];
        *buf = 136446466;
        v56 = v34;
        v57 = 2082;
        v58 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Endpoint %{public}s on session %{public}s is already being unregistered", buf, 0x16u);
        if (v53 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v36 = 10;
    }

    else
    {
      v36 = sub_1003672D0(a1, a2, v31);
      if (!v36)
      {
        v45 = *(v51 + 40);
        v46 = v45 - v30;
        if (v45 != v30)
        {
          memmove(v30 - 8, v30, v45 - v30);
        }

        *(v51 + 40) = &v30[v46 - 8];

        if (*(v31 + 23) < 0)
        {
          operator delete(*v31);
        }

        operator delete();
      }
    }
  }

  else
  {
    v14 = 0;
    v15 = a3[23];
    if (v15 >= 0)
    {
      v16 = a3[23];
    }

    else
    {
      v16 = *(a3 + 1);
    }

    if (v15 >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    while (1)
    {
      if (*(v13 + v14) == a2)
      {
        v18 = v13 + v14;
        v19 = *(v13 + v14 + 31);
        v20 = v19;
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v13 + v14 + 16);
        }

        if (v16 == v19)
        {
          v23 = *(v18 + 8);
          v21 = v18 + 8;
          v22 = v23;
          v24 = (v20 >= 0 ? v21 : v22);
          if (!memcmp(v17, v24, v16))
          {
            break;
          }
        }
      }

      v14 += 48;
      if (v13 + v14 == v12)
      {
        goto LABEL_27;
      }
    }

    v40 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(a2, __p);
      if (v53 >= 0)
      {
        v41 = __p;
      }

      else
      {
        v41 = __p[0];
      }

      *buf = 136446466;
      v56 = v17;
      v57 = 2082;
      v58 = v41;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Unregistering pending endpoint %{public}s on session %{public}s", buf, 0x16u);
      if (v53 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = a1[22];
    }

    sub_10036FEBC(__p, v13 + v14 + 48, v12, v13 + v14);
    v43 = v42;
    for (i = a1[22]; i != v43; i -= 48)
    {
      if (*(i - 17) < 0)
      {
        operator delete(*(i - 40));
      }
    }

    v36 = 0;
    a1[22] = v43;
  }

LABEL_45:
  sub_1000088CC(v54);
  return v36;
}

void sub_100368788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1003687B8(uint64_t a1, unint64_t a2, void *a3, int a4, int a5, int a6, void *a7)
{
  v13 = a3;
  v14 = a7;
  if (*(a1 + 56) == 1)
  {
    v17 = *(a1 + 152);
    v16 = a1 + 152;
    v15 = v17;
    if (!v17)
    {
      goto LABEL_50;
    }

    v18 = v16;
    do
    {
      v19 = *(v15 + 32);
      v20 = v19 >= a2;
      v21 = v19 < a2;
      if (v20)
      {
        v18 = v15;
      }

      v15 = *(v15 + 8 * v21);
    }

    while (v15);
    if (v18 != v16 && *(v18 + 32) <= a2)
    {
      v22 = qword_100BCE928;
      if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(a2, __p);
        v23 = (SBYTE7(v49) & 0x80u) == 0 ? __p : __p[0];
        *buf = 136447234;
        *&buf[4] = v23;
        *&buf[12] = 2114;
        *&buf[14] = v13;
        *&buf[22] = 1024;
        *&buf[24] = a4;
        *&buf[28] = 1024;
        *&buf[30] = a5;
        *&buf[34] = 1024;
        *&buf[36] = a6;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Session %{public}s is requesting %{public}@ link requirements of %d pps, %d Bps input, %d Bps output", buf, 0x28u);
        if (SBYTE7(v49) < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(*(v18 + 40) + 57) = a4 != 0;
      v36 = [v14 isEqualToString:@"com.apple.private.alloy.siri.proxy"];
      if ([v14 isEqualToString:@"metrics"])
      {
        v24 = qword_100BCE928;
        if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Metrics!", buf, 2u);
        }

        if (qword_100B540F0 != -1)
        {
          sub_10081EB2C();
        }

        sub_100368CB8(qword_100B540E8, v25);
      }

      memcpy(buf, "clientname", 0x400uLL);
      v40 = 0;
      v41 = 0;
      v42 = 0;
      sub_100018384(a2, &v40);
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v26 = v14;
      sub_100007E30(&v37, [v14 UTF8String]);
      *__p = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      LOBYTE(__p[0]) = 4;
      v27 = SHIBYTE(v39);
      if (v39 >= 0)
      {
        v28 = &v37;
      }

      else
      {
        v27 = v38;
        v28 = v37;
      }

      WORD1(__p[0]) = v27;
      __p[1] = v28;
      LOBYTE(v49) = 4;
      v29 = SHIBYTE(v42);
      if (v42 < 0)
      {
        v29 = v41;
      }

      v30 = &v40;
      if (v42 < 0)
      {
        v30 = v40;
      }

      WORD1(v49) = v29;
      *(&v49 + 1) = v30;
      LOBYTE(v50) = 1;
      WORD1(v50) = 4;
      DWORD2(v50) = a5;
      LOBYTE(v51) = 1;
      WORD1(v51) = 4;
      DWORD2(v51) = a4;
      sub_1000CC0B0("Magnet", buf, __p, 4u);
      v31 = qword_100BCE928;
      if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v14;
        v33 = [v14 UTF8String];
        sub_100018384(a2, v43);
        v34 = v44 >= 0 ? v43 : v43[0];
        *v45 = 136446466;
        *&v45[4] = v33;
        v46 = 2082;
        v47 = v34;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Magnet clientname %{public}s: %{public}s", v45, 0x16u);
        if (v44 < 0)
        {
          operator delete(v43[0]);
        }
      }

      *v45 = 0;
      if (qword_100B508B0 != -1)
      {
        sub_10081EB54();
      }

      v35 = off_100B508A8;
      sub_10004DFB4(v43, v13);
      if (sub_1000C4FCC(v35, v43, v45))
      {
        LOBYTE(v43[0]) = 0;
        sub_1000216B4(v43);
        sub_100194A04(*v45, a4, a5, a6, v36);
        sub_10002249C(v43);
      }

      else if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
      {
        sub_10081EB7C();
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(v37);
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(v40);
      }
    }

    else
    {
LABEL_50:
      if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_FAULT))
      {
        sub_100018384(a2, buf);
        sub_10081EAD8();
      }
    }
  }
}

void sub_100368C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_10002249C(&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_100368CB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10036C518;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

void sub_100368D34(uint64_t a1, unint64_t a2, void *a3, int a4, int a5, int a6)
{
  v11 = a3;
  if (*(a1 + 56) == 1)
  {
    v14 = *(a1 + 152);
    v13 = a1 + 152;
    v12 = v14;
    if (!v14)
    {
      goto LABEL_28;
    }

    v15 = v13;
    do
    {
      v16 = *(v12 + 32);
      v17 = v16 >= a2;
      v18 = v16 < a2;
      if (v17)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * v18);
    }

    while (v12);
    if (v15 != v13 && *(v15 + 32) <= a2)
    {
      v19 = qword_100BCE928;
      if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(a2, __p);
        v20 = v24 >= 0 ? __p : __p[0];
        *buf = 136447234;
        v26 = v20;
        v27 = 2114;
        v28 = v11;
        v29 = 1024;
        v30 = a4;
        v31 = 1024;
        v32 = a5;
        v33 = 1024;
        v34 = a6;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Session %{public}s is requesting %{public}@ link requirements of latency %d ms, %d Bps input, %d Bps output", buf, 0x28u);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(*(v15 + 40) + 57) = a4 != 0;
      v22 = 0;
      sub_1000216B4(&v22);
      __p[0] = 0;
      if (qword_100B508B0 != -1)
      {
        sub_10081EB54();
      }

      v21 = off_100B508A8;
      sub_10004DFB4(buf, v11);
      if (sub_1000C4FCC(v21, buf, __p))
      {
        sub_100194CB0(__p[0], a4, a5, a6);
      }

      else if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
      {
        sub_10081EB7C();
      }

      sub_10002249C(&v22);
    }

    else
    {
LABEL_28:
      if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_FAULT))
      {
        sub_100018384(a2, buf);
        sub_10081EAD8();
      }
    }
  }
}

void sub_100368F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10002249C(&a13);

  _Unwind_Resume(a1);
}

uint64_t sub_100368FBC(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v29[0] = 0;
  v29[1] = 0;
  sub_100007F88(v29, a1 + 80);
  v3 = *(a1 + 144);
  v21 = (a1 + 152);
  if (v3 != (a1 + 152))
  {
    do
    {
      v4 = v3[5];
      v5 = *(v4 + 32);
      v22 = v4;
      while (v5 != *(v4 + 40))
      {
        v23 = v5;
        v6 = *v5;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v7 = *(v6 + 40);
        v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v8)
        {
          v9 = *v26;
          while (2)
          {
            v10 = 0;
            do
            {
              if (*v26 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = *(*(&v25 + 1) + 8 * v10);
              v12 = [v11 identifier];
              v13 = [v2 containsObject:v12];

              if ((v13 & 1) == 0)
              {
                v24 = 0;
                if (qword_100B508B0 != -1)
                {
                  sub_10081EB54();
                }

                v14 = off_100B508A8;
                v15 = [v11 identifier];
                sub_10004DFB4(v30, v15);
                LODWORD(v14) = sub_1000C4FCC(v14, v30, &v24);

                if (v14)
                {
                  if (sub_1000BE280(v24))
                  {

                    v19 = 1;
                    goto LABEL_25;
                  }
                }
              }

              v10 = v10 + 1;
            }

            while (v8 != v10);
            v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

        v4 = v22;
        v5 = v23 + 1;
      }

      v16 = v3[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v3[2];
          v18 = *v17 == v3;
          v3 = v17;
        }

        while (!v18);
      }

      v3 = v17;
    }

    while (v17 != v21);
  }

  v19 = 0;
LABEL_25:
  sub_1000088CC(v29);

  return v19;
}

id sub_100369260(uint64_t a1, void *a2)
{
  v3 = a2;
  v23 = +[NSMutableSet set];
  v32[0] = 0;
  v32[1] = 0;
  sub_100007F88(v32, a1 + 80);
  v4 = *(a1 + 144);
  v24 = (a1 + 152);
  if (v4 != (a1 + 152))
  {
    do
    {
      v5 = v4[5];
      v6 = *(v5 + 32);
      v25 = v5;
      while (1)
      {
        v26 = v6;
        if (v6 == *(v5 + 40))
        {
          break;
        }

        v7 = *v6;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v8 = *(v7 + 40);
        v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v9)
        {
          v10 = *v29;
          while (2)
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v29 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = [*(*(&v28 + 1) + 8 * i) identifier];
              v13 = [v12 UUIDString];
              v14 = [v3 UUIDString];
              v15 = [v13 isEqualToString:v14];

              if (v15)
              {
                sub_100614BB8(v4[4], &__p);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                v17 = [NSString stringWithUTF8String:p_p];
                [v23 addObject:v17];

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                goto LABEL_19;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v5 = v25;
        v6 = v26 + 1;
      }

LABEL_19:
      v18 = v4[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v4[2];
          v20 = *v19 == v4;
          v4 = v19;
        }

        while (!v20);
      }

      v4 = v19;
    }

    while (v19 != v24);
  }

  v21 = [v23 allObjects];
  sub_1000088CC(v32);

  return v21;
}

void sub_1003694E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_1000088CC(&a28);

  _Unwind_Resume(a1);
}

void sub_10036957C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v60 = 0;
  v59 = 0;
  sub_100369A78(a1, a1 + 57, &v60, &v59, &v60 + 1);
  if (a1[57] == 1)
  {
    v8 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ePA disabled by defaults write", buf, 2u);
    }

    return;
  }

  v9 = sub_10000C7D0(v6, v7);
  v11 = sub_100410C60(v9, v10);
  if (!v11)
  {
    v23 = sub_10000C7D0(v11, v12);
    if (!sub_100410D34(v23, v24))
    {
      return;
    }

    v25 = qword_100BCE928;
    v26 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Enable increased Tx power for Marconi2", buf, 2u);
    }

    v28 = sub_10000C7D0(v26, v27);
    (*(*v28 + 168))(v28, a2, 2, 0, 30, 10);
    goto LABEL_23;
  }

  sub_100369D4C(v11, a1 + 61);
  v15 = sub_10000C798(v13, v14);
  v16 = (*(*v15 + 168))(v15);
  if (v16)
  {
    v17 = qword_100BCE928;
    v18 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      v20 = a1[61];
      *buf = 67109376;
      v62 = HIBYTE(v60);
      v63 = 1024;
      v64 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Enabling ePABF on HDR magnet (available >= 4378B1/4378B3), policy: %#x, RSSI threshold: %d dBm", buf, 0xEu);
    }

    v21 = sub_10000C7D0(v18, v19);
    if (*(v21 + 800) >= 0x7D0u)
    {
      v21 = sub_10000C7D0(v21, v22);
      if (*(v21 + 800) <= 0xF9Fu)
      {
        v21 = sub_10000C7D0(v21, v22);
      }
    }

    v45 = *(*sub_10000C7D0(v21, v22) + 112);
    v46 = v45();
    sub_100369ED0(v46, a2, 1);
    goto LABEL_23;
  }

  sub_10036A0BC(v16, a3, a1 + 59, a1 + 60);
  v30 = sub_10036A120(a1, v29);
  v32 = sub_10000C7D0(v30, v31);
  v34 = sub_100410F60(v32, v33);
  v35 = a1[60];
  v36 = qword_100BCE928;
  v37 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT);
  v39 = HIBYTE(v60);
  if (v34 == v35)
  {
    if (v37)
    {
      v40 = a1[61];
      v41 = 25 * a1[59];
      *buf = 67109888;
      v62 = HIBYTE(v60);
      v63 = 1024;
      v64 = v40;
      v65 = 1024;
      v66 = v41;
      v67 = 1024;
      v68 = 25 * v34;
      v42 = "Enabling ePA, policy: %#x, Threshold: %d dBm, Tx power high: %d, low: %d";
      v43 = v36;
      v44 = 26;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, v42, buf, v44);
    }
  }

  else if (v37)
  {
    v47 = a1[61];
    v48 = 25 * a1[59];
    *buf = 67110144;
    v62 = HIBYTE(v60);
    v63 = 1024;
    v64 = v47;
    v65 = 1024;
    v66 = v48;
    v67 = 1024;
    v68 = 25 * v35;
    v69 = 1024;
    v70 = 25 * v34;
    v42 = "Enabling ePA, policy: %#x, Threshold: %d dBm, Tx power high: %d, medium: %d, low (unused): %d";
    v43 = v36;
    v44 = 32;
    goto LABEL_21;
  }

  v49 = sub_10000C7D0(v37, v38);
  v50 = (*(*v49 + 88))(v49, a2, 3, v39, a1[59], a1[60], a1[61]);
  v52 = sub_10000C7D0(v50, v51);
  v53 = (*(*v52 + 104))(v52, 1);
  v55 = sub_10000C7D0(v53, v54);
  v56 = (*(*v55 + 88))(v55, a2, 4, v39, a1[59], a1[60], a1[61]);
  v58 = sub_10000C7D0(v56, v57);
  (*(*v58 + 104))(v58, 1);
LABEL_23:
  if (qword_100B50AC0 != -1)
  {
    sub_10081EBB8();
  }

  sub_100594AA0(off_100B50AB8, a2, 0xFFFFFFFFLL, 0, 702, 0);
}

void sub_100369A78(uint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  v19 = 0;
  v18 = 0;
  v9 = sub_10000E92C();
  sub_100007E30(buf, "ePA");
  sub_100007E30(__p, "DisableMagnetEPA");
  (*(*v9 + 72))(v9, buf, __p, &v19 + 1);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(*buf);
  }

  v10 = sub_10000E92C();
  sub_100007E30(buf, "ePA");
  sub_100007E30(__p, "DisableReTxEPA");
  (*(*v10 + 72))(v10, buf, __p, &v19);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(*buf);
  }

  v11 = sub_10000E92C();
  sub_100007E30(buf, "ePA");
  sub_100007E30(__p, "DisableThresholdEPA");
  (*(*v11 + 72))(v11, buf, __p, &v18);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(*buf);
  }

  *a2 = HIBYTE(v19);
  *a3 = v19;
  *a4 = v18;
  *a5 = 3;
  if (*a3 == 1)
  {
    *a5 = 1;
    v12 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning: Disabling ePA for retransmission policy through defaults write", buf, 2u);
    }
  }

  if (*a4 == 1)
  {
    *a5 &= ~1u;
    v13 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Warning: Disabling threshold based ePA policy through defaults write", buf, 2u);
    }
  }
}

void sub_100369D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100369D4C(uint64_t a1, _BYTE *a2)
{
  v9 = 0;
  v3 = sub_10000E92C();
  sub_100007E30(buf, "ePA");
  sub_100007E30(__p, "ePAThreshold");
  v4 = (*(*v3 + 88))(v3, buf, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v11 & 0x80000000) == 0)
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_8:
    *a2 = -69;
    return;
  }

  operator delete(*buf);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_5:
  v5 = v9;
  *a2 = v9;
  v6 = qword_100BCE928;
  if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Warning: Setting user defined ePA threshold to %d dBm through defaults write", buf, 8u);
  }
}

void sub_100369E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100369ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000E92C();
  if (!(*(*v5 + 384))(v5))
  {
    return 0;
  }

  v6 = sub_10000E92C();
  if (!(*(*v6 + 392))(v6))
  {
    return 0;
  }

  v7 = qword_100BCE928;
  v8 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v24 = 0;
    v10 = "Enabling ePA/beamforming VSE Logging for Magnet";
    v11 = &v24;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    *buf = 0;
    v10 = "Disabling ePA/beamforming VSE Logging for Magnet";
    v11 = buf;
  }

  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
LABEL_9:
  v12 = sub_10000C7D0(v8, v9);
  v13 = (*(*v12 + 112))(v12, 2, a2, a3, 0, 0, 0);
  v14 = qword_100BCE928;
  if (!v13)
  {
    v17 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_INFO);
    if (a3)
    {
      if (v17)
      {
        v22 = 0;
        v18 = "Beamforming VSE Logging enabled for Magnet";
        v19 = &v22;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v18, v19, 2u);
      }
    }

    else if (v17)
    {
      v21 = 0;
      v18 = "Beamforming VSE Logging disabled for Magnet";
      v19 = &v21;
      goto LABEL_20;
    }

    return 0;
  }

  v15 = v13;
  v16 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR);
  if (a3)
  {
    if (v16)
    {
      sub_10081EC54();
    }
  }

  else if (v16)
  {
    sub_10081EBE0();
  }

  return v15;
}

uint64_t sub_10036A0BC(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v6 = a2;
  v7 = sub_10000C7D0(a1, a2);
  v9 = sub_100411100(v7, v8);
  *a3 = v9;
  v11 = sub_10000C7D0(v9, v10);
  v13 = sub_100410F60(v11, v12);
  *a4 = v13;
  sub_10000C7D0(v13, v14);
  result = sub_100410EE8();
  if (result)
  {
    if ((v6 & 1) == 0)
    {
      v17 = sub_10000C7D0(result, v16);
      result = sub_1004112E4(v17, v18);
      *a4 = result;
    }
  }

  return result;
}

uint64_t sub_10036A120(uint64_t result, uint64_t a2)
{
  if ((*(result + 57) & 1) == 0)
  {
    v3 = result;
    v4 = *(result + 58);
    v5 = sub_10000C7D0(result, a2);
    if (v4)
    {
      v6 = 5;
    }

    else
    {
      v6 = 0;
    }

    v7 = (*(*v5 + 64))(v5, 3, v6, *(v3 + 59), *(v3 + 60), *(v3 + 61));
    v9 = *(*sub_10000C7D0(v7, v8) + 64);

    return v9();
  }

  return result;
}

void sub_10036A1E0(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 == 1)
  {
    v10 = v3;
    v11 = v4;
    v7 = sub_100007EE8(a1, a2);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10036A270;
    v8[3] = &unk_100ADF940;
    v8[4] = a1;
    v9 = a3;
    sub_10000CA94(v7, v8);
  }
}

void *sub_10036A270(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 144);
  v3 = (v1 + 152);
  if (v2 != (v1 + 152))
  {
    v4 = result;
    do
    {
      result = *v2[5];
      if (result)
      {
        result = (*(*result + 40))(result, v2[4], *(v4 + 10));
      }

      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

void sub_10036A31C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10036648C(a1, a2);
  if (v3)
  {
    v5 = sub_100007EE8(v3, v4);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10036A3A0;
    v6[3] = &unk_100ADF8F8;
    v6[4] = a1;
    sub_10000CA94(v5, v6);
  }
}

void sub_10036A3A8(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = sub_1000C4DA4(a1);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        v9 = 0;
        if (qword_100B508B0 != -1)
        {
          sub_10081EB54();
        }

        v7 = off_100B508A8;
        sub_10004DFB4(buf, v6);
        if (sub_1000C4FCC(v7, buf, &v9))
        {
          sub_10036DD04(a1, v9);
        }

        else
        {
          v8 = qword_100BCE928;
          if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v15 = v6;
            _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not get handle from uuid %{public}@", buf, 0xCu);
          }
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v3);
  }
}

void sub_10036A588(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (!a3 && (*(a1 + 56) & 1) != 0)
  {
    v9 = 0;
    if (qword_100B508B0 != -1)
    {
      sub_10081E6F0();
    }

    v6 = off_100B508A8;
    sub_10004DFB4(buf, v5);
    if (sub_1000C4FCC(v6, buf, &v9))
    {
      v8 = 0;
      sub_1000216B4(&v8);
      if (!sub_1000BE280(v9))
      {
        v7 = qword_100BCE928;
        if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v11 = v5;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Initiating pipe capability exchange with device %{public}@", buf, 0xCu);
        }

        if (sub_100197070(v9) && os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
        {
          sub_10081ED38();
        }
      }

      sub_10002249C(&v8);
    }

    else if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
    {
      sub_10081ECC8();
    }
  }
}

void sub_10036A710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  sub_10002249C(&a12);

  _Unwind_Resume(a1);
}

void sub_10036A748(uint64_t a1, void *a2, int a3, int a4, int a5, int a6)
{
  v11 = a2;
  v12 = qword_100BCE928;
  v13 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_INFO);
  if (v13)
  {
    *buf = 67109888;
    v25 = a3;
    v26 = 1024;
    v27 = a4;
    v28 = 1024;
    v29 = a5;
    v30 = 1024;
    v31 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "CL Ready in ScalablePipe peerVersion:%d peerFeatures:%x localVersion:%d localFeatures:%x", buf, 0x1Au);
  }

  v15 = sub_100007EE8(v13, v14);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10036A8DC;
  v17[3] = &unk_100AE15B8;
  v19 = a1;
  v16 = v11;
  v18 = v16;
  v22 = a3;
  v23 = a5;
  v20 = a4;
  v21 = a6;
  sub_10000CA94(v15, v17);
}

void sub_10036A8DC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B508B0 != -1)
  {
    sub_10081E6F0();
  }

  v9 = 0;
  v3 = off_100B508A8;
  sub_10004DFB4(buf, *(a1 + 32));
  if (sub_1000C4FCC(v3, buf, &v9))
  {
    v8 = 0;
    sub_1000216B4(&v8);
    v4 = sub_100199668(v9);
    if (sub_10019975C(v9))
    {
      *(v9 + 32) = 1;
    }

    sub_100022214(&v8);
    v5 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      *buf = 138543618;
      v11 = v6;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "device %{public}@ companionLink=%d", buf, 0x12u);
    }

    if (v4)
    {
      v7 = qword_100BCE928;
      if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "This is a companion link, pre-taggine with HasTS", buf, 2u);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10081EDAC();
      }

      sub_100788E4C(off_100B508C8, *(a1 + 32));
    }

    sub_10002249C(&v8);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10081EDAC();
  }

  sub_100790180(off_100B508C8, *(a1 + 32), *(a1 + 56), *(a1 + 48));
  *(v2 + 224) = *(a1 + 57);
  *(v2 + 228) = *(a1 + 52);
}

void sub_10036AAFC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, a1 + 80);
  v6 = *(a1 + 144);
  v23 = (a1 + 152);
  if (v6 != (a1 + 152))
  {
    do
    {
      v24 = v6;
      v7 = v6[5];
      if (*v7)
      {
        for (i = v7[4]; i != v7[5]; i = v25 + 1)
        {
          v25 = i;
          v9 = *i;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v10 = v9[5];
          v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v11)
          {
            v12 = *v27;
            do
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v27 != v12)
                {
                  objc_enumerationMutation(v10);
                }

                v14 = [*(*(&v26 + 1) + 8 * j) identifier];
                v15 = [v5 isEqual:v14];

                if (v15)
                {
                  v16 = v9;
                  if (*(v9 + 23) < 0)
                  {
                    v16 = *v9;
                  }

                  v17 = *v7;
                  v18 = [NSString stringWithUTF8String:v16];
                  (*(*v17 + 48))(v17, v18, v5, a3);
                }
              }

              v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
            }

            while (v11);
          }
        }
      }

      v19 = v24;
      v20 = v24[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v19[2];
          v22 = *v21 == v19;
          v19 = v21;
        }

        while (!v22);
      }

      v6 = v21;
    }

    while (v21 != v23);
  }

  sub_1000088CC(v30);
}

void sub_10036AD80(uint64_t a1, void *a2, int a3, int a4)
{
  v6 = a2;
  if (qword_100B508B0 != -1)
  {
    sub_10081E6F0();
  }

  v10 = 0;
  v7 = off_100B508A8;
  sub_10004DFB4(buf, v6);
  if (sub_1000C4FCC(v7, buf, &v10))
  {
    v8 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_INFO))
    {
      v9 = "high";
      if (a3)
      {
        v9 = "low";
      }

      *buf = 67109378;
      v12 = a4;
      v13 = 2082;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "RSSI threshold crossed with RSSI=%d, crossed %{public}s threshold", buf, 0x12u);
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    sub_10023089C(v10, a4);
    sub_10002249C(buf);
  }
}

void sub_10036AEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002249C(va);

  _Unwind_Resume(a1);
}

void sub_10036AF04(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10036AF80;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000D334(v3, v4);
}

uint64_t sub_10036AF80(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 62) == 1)
  {
    v2 = qword_100BCE928;
    v3 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_INFO);
    if (v3)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "System will sleep, disabling asymmetric peripheral latency", v6, 2u);
    }

    v5 = sub_10000C7D0(v3, v4);
    result = (*(*v5 + 800))(v5, 0);
    *(v1 + 62) = 0;
  }

  return result;
}

void sub_10036B038(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10036B0B4;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

void sub_10036B0B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 62) & 1) == 0)
  {
    v7 = sub_1000C4DA4(*(a1 + 32));
    if ([v7 count])
    {
      v2 = sub_100368FBC(v1);

      if (v2)
      {
        v3 = qword_100BCE928;
        v4 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_INFO);
        if (v4)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Peripheral connection exists, enabling asymmetric peripheral latency", buf, 2u);
        }

        v6 = sub_10000C7D0(v4, v5);
        (*(*v6 + 800))(v6, 1);
        *(v1 + 62) = 1;
      }
    }

    else
    {
    }
  }
}

void sub_10036B1E0(uint64_t a1)
{
  if (*(a1 + 216))
  {
    v1 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_FAULT))
    {
      sub_10081EDD4(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  sub_100088DD4(3, 7, 0);
}

void sub_10036B300(uint64_t a1)
{
  if (qword_100B540F0 != -1)
  {
    sub_1000C0DF4();
  }

  sub_10036B1E0(qword_100B540E8);
}

void sub_10036B498(uint64_t a1, char a2, int a3, int a4, int a5, int a6)
{
  v36 = 0;
  v37 = 0;
  sub_1000D38CC(&v36, 14);
  BYTE4(v36) = a2;
  v37 = 0;
  v35 = 0;
  if (qword_100B508B0 != -1)
  {
    sub_10081EB54();
  }

  v11 = sub_1000ACEE4(off_100B508A8, a1);
  if (v11)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10081EDAC();
    }

    v12 = sub_100786AA0(off_100B508C8, v11);
    if (v12)
    {
      v37 = a6 / 1000 + 1000 * a5 - v12;
    }

    v14 = sub_10000F034(v12, v13);
    if (v14)
    {
      v16 = sub_10000F034(v14, v15);
      (*(*v16 + 40))(v16, &v36);
    }

    v17 = sub_10000E92C();
    sub_100007E30(v33, "Magnet");
    sub_100007E30(__p, "EnableRSSIHistory");
    v18 = (*(*v17 + 72))(v17, v33, __p, &v35);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    if (v35 == 1)
    {
      v20 = sub_10000C7D0(v18, v19);
      (*(*v20 + 808))(v20, a1, 1, 1);
    }

    v21 = sub_10000E92C();
    sub_100007E30(v33, "Magnet");
    sub_100007E30(__p, "EnableRSSIMonitoring");
    v22 = (*(*v21 + 72))(v21, v33, __p, &v35 + 1);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    if (HIBYTE(v35) == 1)
    {
      v24 = sub_10000C7D0(v22, v23);
      (*(*v24 + 816))(v24, a1, 1);
    }

    if (qword_100B508D0 != -1)
    {
      sub_10081EDAC();
    }

    if (sub_100788ED8(off_100B508C8, v11))
    {
      if (qword_100B508D0 != -1)
      {
        sub_10081EDAC();
      }

      v25 = off_100B508C8;
      sub_100007E30(v29, "_CTKD_");
      v26 = sub_10004EB40(v25, v11, v29);
      v27 = v26;
      if (v30 < 0)
      {
        operator delete(v29[0]);
        if (v27)
        {
LABEL_38:
          if (qword_100B54100 != -1)
          {
            sub_10081EE9C();
          }

          if (a3)
          {
            v28 = 8000;
          }

          else
          {
            v28 = 3000;
          }

          sub_1007E6570(qword_100B540F8, v28);
          goto LABEL_44;
        }
      }

      else if (v26)
      {
        goto LABEL_38;
      }

      if (qword_100B508C0 != -1)
      {
        sub_10081EE74();
      }
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_10081EDAC();
      }

      sub_100788E4C(off_100B508C8, v11);
      if (qword_100B508C0 != -1)
      {
        sub_10081EE74();
      }
    }

    sub_1007BDBFC(off_100B508B8, v11, 0);
    goto LABEL_38;
  }

LABEL_44:
}

void sub_10036B874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10036B8D8(uint64_t a1)
{
  if (qword_100B540F0 != -1)
  {
    sub_1000C0DF4();
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 49);
  v5 = *(a1 + 50);
  v6 = *(a1 + 40);
  v7 = *(a1 + 44);

  sub_10036B498(v2, v3, v4, v5, v6, v7);
}

void sub_10036B934(char a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, unsigned int a7, unsigned int a8)
{
  v28 = a3;
  v27 = a4;
  v11 = a5;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = a7;
  v13 = a8;
  sub_1000D38CC(&v23, 15);
  BYTE4(v23) = a1;
  DWORD2(v23) = a2;
  v24 = 0uLL;
  *&v25 = v11;
  DWORD2(v25) = a6;
  *&v26 = v12;
  *(&v26 + 1) = v13;
  *&v24 = sub_1000B6B74(&v28);
  v14 = sub_1000B6B74(&v27);
  *(&v24 + 1) = v14;
  v16 = sub_10000F034(v14, v15);
  if (v16)
  {
    v18 = sub_10000F034(v16, v17);
    v16 = (*(*v18 + 40))(v18, &v23);
  }

  v19 = sub_1000B4EFC(v16, v17);
  sub_100374808(v19);
  v22 = sub_100007EE8(v20, v21);
  sub_10000CA94(v22, &stru_100AEDA60);
}

void sub_10036BA24(id a1)
{
  if (qword_100B540F0 != -1)
  {
    sub_1000C0DF4();
  }

  v2 = qword_100B540E8;

  sub_1000D43B4(v2);
}

void sub_10036BA68(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v5 = a5;
  v20 = 0;
  v21 = 0;
  v10 = sub_1000D38CC(&v20, 17);
  HIDWORD(v20) = a2;
  v21 = __PAIR64__(a4, a3);
  v12 = sub_10000F034(v10, v11);
  if (v12)
  {
    v14 = sub_10000F034(v12, v13);
    v12 = (*(*v14 + 40))(v14, &v20);
  }

  v15 = sub_10000C798(v12, v13);
  if (((*(*v15 + 368))(v15) & 1) == 0 && (a4 == 723 || a4 == 705))
  {
    v16 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
    {
      sub_10081EEC4(v5, v16);
    }

    if (v5)
    {
      memset(uu, 0, sizeof(uu));
      uuid_clear(uu);
      if (qword_100B508B0 != -1)
      {
        sub_10081EB54();
      }

      if (sub_100748908(off_100B508A8, a1, uu) && !uuid_is_null(uu))
      {
        v17 = qword_100BCE928;
        if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
        {
          sub_10081EFA4(uu, v17);
        }

        if (qword_100B508C0 != -1)
        {
          sub_10081EE74();
        }

        v18 = off_100B508B8;
        v19 = sub_10004DF60(uu);
        sub_1007BDBFC(v18, v19, 1);
      }

      else if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
      {
        sub_10081EF68();
      }
    }
  }
}

void sub_10036BC7C(uint64_t a1)
{
  if (qword_100B540F0 != -1)
  {
    sub_1000C0DF4();
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v5 = *(a1 + 48);
  v6 = *(a1 + 52);

  sub_10036BA68(v2, v3, v4, v5, v6);
}

void sub_10036BCD4(uint64_t a1, uint64_t a2, int a3)
{
  v49 = &off_100AE0A78;
  v50 = 0;
  v48[0] = 0;
  v48[1] = 0;
  sub_100007F88(v48, a1 + 80);
  v6 = *(a1 + 144);
  v33 = (a1 + 152);
  if (v6 != (a1 + 152))
  {
    do
    {
      v34 = v6[5];
      for (i = *(v34 + 32); i != *(v34 + 40); ++i)
      {
        v8 = *i;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v9 = *(v8 + 40);
        v10 = [v9 countByEnumeratingWithState:&v44 objects:v51 count:16];
        if (v10)
        {
          v11 = *v45;
          while (2)
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v45 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v44 + 1) + 8 * j);
              if ([v13 pipeHandle] == a3)
              {
                sub_100614BB8(v6[4], &v39);
                v19 = std::string::append(&v39, "(");
                v20 = *&v19->__r_.__value_.__l.__data_;
                v40.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
                *&v40.__r_.__value_.__l.__data_ = v20;
                v19->__r_.__value_.__l.__size_ = 0;
                v19->__r_.__value_.__r.__words[2] = 0;
                v19->__r_.__value_.__r.__words[0] = 0;
                v21 = *(v8 + 23);
                if (v21 >= 0)
                {
                  v22 = v8;
                }

                else
                {
                  v22 = *v8;
                }

                if (v21 >= 0)
                {
                  v23 = *(v8 + 23);
                }

                else
                {
                  v23 = *(v8 + 8);
                }

                v24 = std::string::append(&v40, v22, v23);
                v25 = *&v24->__r_.__value_.__l.__data_;
                v41.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
                *&v41.__r_.__value_.__l.__data_ = v25;
                v24->__r_.__value_.__l.__size_ = 0;
                v24->__r_.__value_.__r.__words[2] = 0;
                v24->__r_.__value_.__r.__words[0] = 0;
                v26 = std::string::append(&v41, ")");
                v28 = *&v26->__r_.__value_.__l.__data_;
                v43 = v26->__r_.__value_.__r.__words[2];
                *__p = v28;
                v26->__r_.__value_.__l.__size_ = 0;
                v26->__r_.__value_.__r.__words[2] = 0;
                v26->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v41.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v40.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v39.__r_.__value_.__l.__data_);
                }

                v29 = sub_100432718(v26, v27);
                if (v43 >= 0)
                {
                  v30 = __p;
                }

                else
                {
                  v30 = __p[0];
                }

                v31 = [v13 identifier];
                v37 = &off_100AE0A78;
                v38 = v50;
                if (v50)
                {
                  sub_10000C69C(v50);
                }

                (*(*v29 + 40))(v29, 4, v30, v31, &v37);
                v37 = &off_100AE0A78;
                if (v38)
                {
                  sub_10000C808(v38);
                }

                if (SHIBYTE(v43) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_48;
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v44 objects:v51 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v14 = v6[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v6[2];
          v16 = *v15 == v6;
          v6 = v15;
        }

        while (!v16);
      }

      v6 = v15;
    }

    while (v15 != v33);
  }

  sub_10000801C(v48);
  if (a2)
  {
    if (qword_100B508B0 != -1)
    {
      sub_10081EB54();
    }

    v17 = sub_1000ACEE4(off_100B508A8, a2);
    v9 = v17;
  }

  else
  {
    v9 = 0;
  }

  v32 = sub_100432718(v17, v18);
  v35 = &off_100AE0A78;
  v36 = v50;
  if (v50)
  {
    sub_10000C69C(v50);
  }

  (*(*v32 + 40))(v32, 4, "com.apple.bluetoothd", v9, &v35);
  v35 = &off_100AE0A78;
  if (v36)
  {
    sub_10000C808(v36);
  }

LABEL_48:

  sub_1000088CC(v48);
  v49 = &off_100AE0A78;
  if (v50)
  {
    sub_10000C808(v50);
  }
}

void sub_10036C10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a52);
  *(v54 - 248) = a11;
  v56 = *(v54 - 240);
  if (v56)
  {
    sub_10000C808(v56);
  }

  _Unwind_Resume(a1);
}

void sub_10036C200(uint64_t a1)
{
  if (qword_100B540F0 != -1)
  {
    sub_1000C0DF4();
  }

  v2 = qword_100B540E8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10036BCD4(v2, v3, v4);
}

void sub_10036C25C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10036C2D8;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

_BYTE *sub_10036C2D8(_BYTE *result)
{
  if (*(*(result + 4) + 56) != 1)
  {
    return result;
  }

  v18 = 0;
  v19 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  sub_1000216B4(&v14);
  sub_10023130C(&v19 + 1, &v19, &v18 + 1, &v18, &v17, 0, 0, 0, &v15);
  sub_100022214(&v14);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  sub_1000D38CC(&v10, 18);
  BYTE4(v10) = HIDWORD(v19) != 0;
  *(&v10 + 1) = v19;
  *&v11 = HIDWORD(v18);
  *(&v11 + 1) = (HIDWORD(v18) - v19);
  LODWORD(v12) = v18;
  *(&v12 + 1) = v17;
  if (v18)
  {
    v1 = (HIDWORD(v18) - (v19 + v17)) / v18;
  }

  else
  {
    v1 = 0;
  }

  *&v13 = v1;
  if (!HIDWORD(v19))
  {
    goto LABEL_9;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_10081F03C();
  }

  if (!sub_1005A8028(off_100B50A98, v15, &v16))
  {
    v6 = v16;
    *(&v13 + 1) = v16;
    v2 = qword_100BCE928;
    v3 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      *buf = 67109120;
      v21 = v6;
      v5 = "LE Rssi %d";
      goto LABEL_13;
    }
  }

  else
  {
LABEL_9:
    *(&v13 + 1) = 0;
    v2 = qword_100BCE928;
    v3 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      *buf = 67109120;
      v21 = BYTE4(v10);
      v5 = "LE Rssi read with link connected = %d";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v5, buf, 8u);
    }
  }

  v7 = sub_10000F034(v3, v4);
  if (v7)
  {
    v9 = sub_10000F034(v7, v8);
    (*(*v9 + 40))(v9, &v10);
  }

  return sub_10002249C(&v14);
}

_BYTE *sub_10036C518(_BYTE *result)
{
  if (*(*(result + 4) + 56) == 1)
  {
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    v32 = 0;
    v59 = 0;
    memset(v58, 0, sizeof(v58));
    v57 = 0;
    memset(v56, 0, sizeof(v56));
    v55 = 0;
    memset(v54, 0, sizeof(v54));
    v53 = 0;
    memset(v52, 0, sizeof(v52));
    memset(__dst, 0, sizeof(__dst));
    memset(v50, 0, sizeof(v50));
    v31 = 0;
    sub_1000216B4(&v31);
    sub_100230A88(&v37 + 1, &v37, &v36 + 1, &v35 + 1, &v36, __dst, v58, v56, &v35, &v34 + 1, &v34, &v33, &v33 + 1, v50, v54, v52, &v32);
    sub_100022214(&v31);
    v1 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_INFO))
    {
      *buf = 67111424;
      *&buf[4] = HIDWORD(v37);
      *&buf[8] = 1024;
      *&buf[10] = v37;
      *&buf[14] = 1024;
      LODWORD(v41[0]) = HIDWORD(v36);
      WORD2(v41[0]) = 1024;
      *(v41 + 6) = HIDWORD(v35);
      WORD5(v41[0]) = 1024;
      HIDWORD(v41[0]) = v36;
      LOWORD(v41[1]) = 1024;
      *(&v41[1] + 2) = v35;
      WORD3(v41[1]) = 1024;
      DWORD2(v41[1]) = HIDWORD(v34);
      WORD6(v41[1]) = 1024;
      *(&v41[1] + 14) = v34;
      WORD1(v41[2]) = 1024;
      DWORD1(v41[2]) = HIDWORD(v33);
      WORD4(v41[2]) = 1024;
      *(&v41[2] + 10) = v33;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Stats fetched successfully : lePhy : %d, cumTx : %u, cumRx : %u, coexDen : %x, durationInMs : %u, classicPhy : %d,\t\t\t\t\t\t   cumTx : %u, cumRx : %u, durationInMs : %u, coexDen : %u", buf, 0x3Eu);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    memset(v41, 0, sizeof(v41));
    *buf = 0u;
    v3 = v37;
    v2 = HIDWORD(v37);
    v29 = HIDWORD(v36);
    v27 = v36;
    v5 = v35;
    v4 = HIDWORD(v35);
    v7 = v34;
    v6 = HIDWORD(v34);
    v9 = v33;
    v8 = HIDWORD(v33);
    v10 = v32;
    v11 = sub_1000D38CC(buf, 24);
    v13 = 0;
    *&buf[4] = v2;
    *&buf[8] = v3;
    memset(v41 + 8, 0, 96);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    *&buf[12] = v29;
    *&v41[0] = __PAIR64__(v4, v27);
    *(&v41[6] + 1) = __PAIR64__(v6, v5);
    *&v42 = __PAIR64__(v8, v7);
    DWORD2(v42) = v9;
    v49 = v10;
    v14 = 0;
    do
    {
      v15 = 10;
      v28 = v14;
      v30 = v13;
      v16 = v13;
      do
      {
        if (v58[v16])
        {
          v5 = v5 & 0xFFFFFFFF00000000 | v58[v16];
          sub_10036C9BC(buf, 1, 0, v14, v5);
        }

        if (v56[v16])
        {
          v4 = v4 & 0xFFFFFFFF00000000 | v56[v16];
          sub_10036C9BC(buf, 1, 1, v14, v4);
        }

        if (v54[v16])
        {
          v3 = v3 & 0xFFFFFFFF00000000 | v54[v16];
          sub_10036C9BC(buf, 2, 0, v14, v3);
        }

        if (v52[v16])
        {
          v2 = v2 & 0xFFFFFFFF00000000 | v52[v16];
          sub_10036C9BC(buf, 2, 1, v14, v2);
        }

        v14 += &_mh_execute_header;
        ++v16;
        --v15;
      }

      while (v15);
      v14 = v28 + 1;
      v13 = v30 + 10;
    }

    while (v28 != 9);
    for (i = 0; i != 80; i += 4)
    {
      v18 = *&__dst[i];
      v19 = __dst[i + 2];
      if (*&__dst[i])
      {
        v20 = 0;
      }

      else
      {
        v20 = v19 == 0;
      }

      if (!v20)
      {
        v38 = v19;
        v39 = v18;
        sub_10036F480(&v41[5], &v38);
        sub_10036F480(&v41[3] + 1, &v39);
      }

      v21 = *&v50[i];
      v22 = v50[i + 2];
      if (*&v50[i])
      {
        v23 = 0;
      }

      else
      {
        v23 = v22 == 0;
      }

      if (!v23)
      {
        v38 = v22;
        v39 = v21;
        sub_10036F480(&v47 + 1, &v38);
        sub_10036F480(&v46, &v39);
      }
    }

    v24 = sub_10000F034(v11, v12);
    if (v24)
    {
      v26 = sub_10000F034(v24, v25);
      (*(*v26 + 40))(v26, buf);
    }

    sub_10036F5A8(buf);
    return sub_10002249C(&v31);
  }

  return result;
}

void sub_10036C9BC(uint64_t a1, int a2, int a3, unint64_t a4, int a5)
{
  if (a2 == 2)
  {
    if (a3 == 1)
    {
      operator new();
    }

    if (!a3)
    {
      operator new();
    }
  }

  else if (a2 == 1)
  {
    if (a3 == 1)
    {
      operator new();
    }

    if (!a3)
    {
      operator new();
    }
  }
}

uint64_t sub_10036CAD4(void *a1, unsigned __int8 *a2)
{
  v3 = a1;
  v52[0] = 0;
  v52[1] = 0;
  sub_100007F88(v52, (a1 + 10));
  v4 = v3[18];
  v50 = v3 + 19;
  v51 = v3;
  if (v4 != v3 + 19)
  {
    v5 = a2[23];
    if (v5 >= 0)
    {
      v6 = a2[23];
    }

    else
    {
      v6 = *(a2 + 1);
    }

    if (v5 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    do
    {
      v8 = v4[5];
      v10 = *(v8 + 32);
      v9 = *(v8 + 40);
      if (v10 != v9)
      {
        v11 = v10 + 8;
        do
        {
          v12 = *v10;
          v13 = *(*v10 + 23);
          v14 = v13;
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(*v10 + 8);
          }

          if (v13 == v6)
          {
            v15 = v14 >= 0 ? *v10 : *v12;
            if (!memcmp(v15, v7, v6))
            {
              if ((*(v12 + 39) & 1) == 0 && os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_FAULT))
              {
                sub_10081F064();
              }

              v19 = [*(v12 + 40) count];
              v20 = qword_100BCE928;
              if (v19 && os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_FAULT))
              {
                if ((a2[23] & 0x80u) == 0)
                {
                  v49 = a2;
                }

                else
                {
                  v49 = *a2;
                }

                *buf = 136446210;
                v54 = v49;
                _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Endpoint %{public}s has been unregistered with pipes remaining!", buf, 0xCu);
                v20 = qword_100BCE928;
              }

              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                if ((a2[23] & 0x80u) == 0)
                {
                  v21 = a2;
                }

                else
                {
                  v21 = *a2;
                }

                *buf = 136446210;
                v54 = v21;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Successfully unregistered endpoint %{public}s", buf, 0xCu);
              }

              v22 = *(v8 + 40);
              v23 = v22 - v11;
              if (v22 != v11)
              {
                memmove(v11 - 8, v11, v22 - v11);
              }

              *(v8 + 40) = &v11[v23 - 8];

              if (*(v12 + 23) < 0)
              {
                operator delete(*v12);
              }

              operator delete();
            }
          }

          v10 += 8;
          v11 += 8;
        }

        while (v10 != v9);
      }

      v16 = v4[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v4[2];
          v18 = *v17 == v4;
          v4 = v17;
        }

        while (!v18);
      }

      v4 = v17;
      v3 = v51;
    }

    while (v17 != v50);
  }

  v24 = v3[21];
  v25 = v3[22];
  if (v24 != v25)
  {
    v26 = 0;
    v27 = a2[23];
    if (v27 >= 0)
    {
      v28 = a2[23];
    }

    else
    {
      v28 = *(a2 + 1);
    }

    if (v27 < 0)
    {
      a2 = *a2;
    }

    while (1)
    {
      v29 = v24 + v26;
      v30 = *(v24 + v26 + 31);
      v31 = v30;
      if ((v30 & 0x80u) != 0)
      {
        v30 = *(v24 + v26 + 16);
      }

      if (v28 == v30)
      {
        v34 = *(v29 + 8);
        v32 = v29 + 8;
        v33 = v34;
        v35 = (v31 >= 0 ? v32 : v33);
        if (!memcmp(a2, v35, v28))
        {
          break;
        }
      }

      v26 += 48;
      if (v24 + v26 == v25)
      {
        return sub_1000088CC(v52);
      }
    }

    v36 = v50;
    v37 = *v50;
    if (!*v50)
    {
      goto LABEL_80;
    }

    v38 = v24 + v26;
    v39 = *(v24 + v26);
    do
    {
      v40 = v37[4];
      v41 = v40 >= v39;
      v42 = v40 < v39;
      if (v41)
      {
        v36 = v37;
      }

      v37 = v37[v42];
    }

    while (v37);
    if (v36 != v50 && v39 >= v36[4])
    {
      v43 = sub_1003676B0(v3, v39, v38 + 8, *(v24 + v26 + 32), *(v24 + v26 + 36), *(v24 + v26 + 40), *(v24 + v26 + 44), 0, 0);
      v44 = *v36[5];
      if (v44)
      {
        (*(*v44 + 24))(v44, v38 + 8, v43);
      }
    }

    else
    {
LABEL_80:
      if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_FAULT))
      {
        sub_10081F0CC();
      }
    }

    sub_10036FEBC(buf, v24 + v26 + 48, v3[22], v24 + v26);
    v46 = v45;
    for (i = v3[22]; i != v46; i -= 48)
    {
      if (*(i - 17) < 0)
      {
        operator delete(*(i - 40));
      }
    }

    v51[22] = v46;
  }

  return sub_1000088CC(v52);
}

void sub_10036CFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10036D018(uint64_t a1, uint64_t a2, unsigned int a3, char *a4, unsigned int a5, int a6, int a7)
{
  if (qword_100B508B0 != -1)
  {
    sub_10081E6F0();
  }

  v9 = sub_1000ACEE4(off_100B508A8, a2);
  v105 = 2031;
  v90 = v9;
  if (v9)
  {
    if (a7)
    {
      v109 = 0;
      memset(buf, 0, sizeof(buf));
      if (qword_100B508B0 != -1)
      {
        sub_10081E6F0();
      }

      sub_100740410(off_100B508A8, v9, buf);
      if (*buf)
      {
        v10 = [NSString alloc];
        if (a4[23] >= 0)
        {
          v11 = a4;
        }

        else
        {
          v11 = *a4;
        }

        v12 = [v10 initWithUTF8String:v11];
        v13 = [*&buf[8] mutableCopy];
        if (([v13 containsObject:v12] & 1) == 0)
        {
          [v13 addObject:v12];
        }

        objc_storeStrong(&buf[8], v13);
        if (qword_100B508B0 != -1)
        {
          sub_10081EB54();
        }

        v14 = off_100B508A8;
        v100[0] = *buf;
        v100[1] = *&buf[8];
        v101 = *&buf[16];
        v102 = *&buf[32];
        v103 = *&buf[48];
        v104 = v109;
        v15 = v14;
        v9 = v90;
        sub_100740538(v15, v90, v100);
      }
    }

    v99[0] = 0;
    v99[1] = 0;
    sub_100007F88(v99, a1 + 80);
    v16 = *(a1 + 144);
    if (v16 != (a1 + 152))
    {
      v88 = (a6 - 1);
      do
      {
        v17 = v16[5];
        v19 = v17[4];
        v18 = v17[5];
        while (v19 != v18)
        {
          v20 = *v19;
          v21 = *(*v19 + 23);
          if (v21 >= 0)
          {
            v22 = *(*v19 + 23);
          }

          else
          {
            v22 = *(*v19 + 8);
          }

          v23 = a4[23];
          v24 = v23;
          if ((v23 & 0x80u) != 0)
          {
            v23 = *(a4 + 1);
          }

          if (v22 == v23)
          {
            v25 = v21 >= 0 ? *v19 : *v20;
            v26 = v24 >= 0 ? a4 : *a4;
            if (!memcmp(v25, v26, v22))
            {
              if (*(v20 + 39) == 1)
              {
                if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
                {
                  sub_10081F134();
                }

                goto LABEL_116;
              }

              v98 = 0;
              v97 = 0;
              if (qword_100B508D0 != -1)
              {
                sub_10081EDAC();
              }

              sub_100790214(off_100B508C8, v9, &v98, &v97);
              if ((v97 & 0x100) != 0)
              {
                v29 = 1;
              }

              else
              {
                v29 = 3;
              }

              if ((v97 & 0x80) != 0)
              {
                v30 = 2;
              }

              else
              {
                v30 = v29;
              }

              v31 = *(v20 + 32);
              if ((v31 - 1) >= 2)
              {
                *uu = 0;
                v39 = sub_1000B4EFC(v27, v28);
                if (sub_100371A24(v39, a2, a3, *(v17 + 15), uu, a6, *(v20 + 37)))
                {
                  v81 = qword_100BCE928;
                  if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
                  {
                    if (a4[23] >= 0)
                    {
                      v84 = a4;
                    }

                    else
                    {
                      v84 = *a4;
                    }

                    *buf = 136446466;
                    *&buf[4] = v84;
                    *&buf[12] = 2114;
                    *&buf[14] = v9;
                    _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "Failed to register pipe for endpoint %{public}s on device %{public}@", buf, 0x16u);
                  }

                  goto LABEL_116;
                }

                v40 = *(v20 + 40);
                v41 = [[PipeMapping alloc] initWithIdentifier:v9 handle:a3];
                [v40 addObject:v41];

                v42 = qword_100BCE928;
                if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
                {
                  if (a4[23] >= 0)
                  {
                    v43 = a4;
                  }

                  else
                  {
                    v43 = *a4;
                  }

                  *buf = 67109890;
                  *&buf[4] = a3;
                  *&buf[8] = 2082;
                  *&buf[10] = v43;
                  *&buf[18] = 2114;
                  *&buf[20] = v9;
                  *&buf[28] = 1024;
                  *&buf[30] = a6;
                  _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Successfully created pipe 0x%04X to endpoint %{public}s on device %{public}@ with priority %d", buf, 0x22u);
                }

                if (*v17)
                {
                  (***v17)(*v17, a4, v9, a5, a6, *uu, *(v20 + 37), v98, __PAIR64__(v30, v97));
                }
              }

              else
              {
                if (v31 == 1)
                {
                  v32 = "skywalk";
                }

                else
                {
                  v32 = "networkrelay";
                }

                if (v31 == 2 && (_os_feature_enabled_impl() & 1) == 0)
                {
                  v83 = qword_100BCE928;
                  if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_FAULT))
                  {
                    if (a4[23] >= 0)
                    {
                      v86 = a4;
                    }

                    else
                    {
                      v86 = *a4;
                    }

                    *buf = 136446722;
                    *&buf[4] = "networkrelay";
                    *&buf[12] = 2082;
                    *&buf[14] = v86;
                    *&buf[22] = 2114;
                    *&buf[24] = v9;
                    _os_log_fault_impl(&_mh_execute_header, v83, OS_LOG_TYPE_FAULT, "Failed to register %{public}s pipe for endpoint %{public}s on device %{public}@ due to missing feature", buf, 0x20u);
                  }

                  goto LABEL_116;
                }

                memset(uu, 0, sizeof(uu));
                v106[0] = 0;
                v106[1] = 0;
                v33 = [v9 getUUIDBytes:v106];
                v91 = v32;
                if (*(v20 + 32) == 2)
                {
                  uuid_clear(uu);
                  v37 = sub_1000B4EFC(v35, v36);
                  v38 = sub_100371ED8(v37, a2, a3, a6, &v105, *(v20 + 37), 1, v106);
                }

                else
                {
                  v44 = sub_1000B4EFC(v33, v34);
                  v89 = v30;
                  v45 = *(v17 + 15);
                  v46 = *(v20 + 37);
                  v47 = a4[23];
                  if (v47 >= 0)
                  {
                    v48 = a4;
                  }

                  else
                  {
                    v48 = *a4;
                  }

                  if (v47 < 0)
                  {
                    v47 = *(a4 + 1);
                  }

                  v49 = &v48[v47];
                  if (v47 >= 8)
                  {
                    v50 = v48;
                    do
                    {
                      v51 = memchr(v50, 116, v47 - 7);
                      if (!v51)
                      {
                        break;
                      }

                      if (*v51 == 0x73756E696D726574)
                      {
                        goto LABEL_70;
                      }

                      v50 = v51 + 1;
                      v47 = v49 - v50;
                    }

                    while (v49 - v50 > 7);
                  }

                  v51 = v49;
LABEL_70:
                  v52 = v51 == v49 || v51 - v48 == -1;
                  v53 = !v52;
                  v54 = v45;
                  v9 = v90;
                  v38 = sub_100372D04(v44, a2, a3, v54, uu, a6, &v105, v46, v53);
                  v30 = v89;
                }

                if (v38)
                {
                  v82 = qword_100BCE928;
                  if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
                  {
                    if (a4[23] >= 0)
                    {
                      v85 = a4;
                    }

                    else
                    {
                      v85 = *a4;
                    }

                    *buf = 136446722;
                    *&buf[4] = v91;
                    *&buf[12] = 2082;
                    *&buf[14] = v85;
                    *&buf[22] = 2114;
                    *&buf[24] = v9;
                    _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "Failed to register %{public}s pipe for endpoint %{public}s on device %{public}@", buf, 0x20u);
                  }

LABEL_116:
                  sub_10036DC68(a1, a3);
                  goto LABEL_117;
                }

                v55 = *(v20 + 40);
                v56 = [[PipeMapping alloc] initWithIdentifier:v9 handle:a3];
                [v55 addObject:v56];

                v57 = qword_100BCE928;
                if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
                {
                  v58 = *a4;
                  if (a4[23] >= 0)
                  {
                    v58 = a4;
                  }

                  if (v88 > 3)
                  {
                    v59 = 1;
                  }

                  else
                  {
                    v59 = dword_1008A6410[v88];
                  }

                  *buf = 136447746;
                  *&buf[4] = v91;
                  *&buf[12] = 1024;
                  *&buf[14] = a3;
                  *&buf[18] = 2082;
                  *&buf[20] = v58;
                  *&buf[28] = 2114;
                  *&buf[30] = v9;
                  *&buf[38] = 1024;
                  *&buf[40] = a6;
                  *&buf[44] = 1024;
                  *&buf[46] = v59;
                  *&buf[50] = 1024;
                  *&buf[52] = v105;
                  _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Successfully created %{public}s pipe 0x%04X to endpoint %{public}s on device %{public}@  with priority [%d, stack %d] and MTU=%d", buf, 0x38u);
                }

                if (*v17)
                {
                  (*(**v17 + 8))(*v17, a4, v9, a5, a6, uu, *(v20 + 37), v98, __PAIR64__(v30, v97));
                }
              }

              v60 = sub_10036DD04(a1, a2);
              v62 = sub_10000C7D0(v60, v61);
              v63 = (*(*v62 + 960))(v62, a2, 1, 1);
              v65 = sub_10000C7D0(v63, v64);
              (*(*v65 + 552))(v65, 1, 1);
              v18 = v17[5];
            }
          }

          ++v19;
        }

        v66 = v16[1];
        if (v66)
        {
          do
          {
            v67 = v66;
            v66 = *v66;
          }

          while (v66);
        }

        else
        {
          do
          {
            v67 = v16[2];
            v52 = *v67 == v16;
            v16 = v67;
          }

          while (!v52);
        }

        v16 = v67;
      }

      while (v67 != (a1 + 152));
    }

    sub_10036DC68(a1, a3);
    sub_10000801C(v99);
    v68 = sub_1000C4DA4(a1);
    v69 = [v68 count] == 1;

    if (v69)
    {
      v72 = sub_10000C7D0(v70, v71);
      (*(*v72 + 848))(v72, 1, 1);
    }

    if ((*(a1 + 62) & 1) == 0)
    {
      v73 = sub_1000C4DA4(a1);
      if ([v73 count])
      {
        v74 = sub_100368FBC(a1);

        if (v74)
        {
          v75 = qword_100BCE928;
          v76 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_INFO);
          if (v76)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "Peripheral connection exists, enabling asymmetric peripheral latency", buf, 2u);
          }

          v78 = sub_10000C7D0(v76, v77);
          (*(*v78 + 800))(v78, 1);
          *(a1 + 62) = 1;
        }
      }

      else
      {
      }
    }

LABEL_117:
    sub_1000088CC(v99);
  }

  else
  {
    v79 = qword_100BCE928;
    if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218752;
      *&buf[4] = a2;
      *&buf[12] = 1024;
      *&buf[14] = a3;
      *&buf[18] = 1024;
      *&buf[20] = a5;
      *&buf[24] = 1024;
      *&buf[26] = a6;
      _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "Connection manager wasn't tracking a device for connection handle %p, pipeID 0x%x, type %d, priority %d", buf, 0x1Eu);
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v80 = sub_1002CDF48(a2);
    sub_100022214(buf);
    if (v80)
    {
      if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_ERROR))
      {
        sub_10081F1A4();
      }

      v87 = sub_10000E92C();
      sub_100693F74(v87, 1);
    }

    sub_10002249C(buf);
  }
}

void sub_10036DB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

_BYTE *sub_10036DC68(uint64_t a1, int a2)
{
  v8 = 0;
  sub_1000216B4(&v8);
  v5 = *(a1 + 192);
  v4 = *(a1 + 200);
  if (v5 != v4)
  {
    v6 = v4 - v5 - 2;
    while (*v5 != a2)
    {
      ++v5;
      v6 -= 2;
      if (v5 == v4)
      {
        return sub_10002249C(&v8);
      }
    }

    if (v5 + 1 != v4)
    {
      memmove(v5, v5 + 1, v6);
    }

    *(a1 + 200) = v5 + v6;
  }

  return sub_10002249C(&v8);
}

uint64_t sub_10036DD04(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v20 = 1;
  v19 = 1;
  v4 = sub_10000C798(a1, a2);
  v5 = (*(*v4 + 128))(v4);
  if ((v5 & 1) != 0 || (v7 = sub_10000C7D0(v5, v6), v5 = sub_100413640(v7, v8), v5))
  {
    v9 = sub_1004327A0(v5, v6);
    result = (*(*v9 + 8))(v9, *(a1 + 64), &v21, &v20, &v19);
    if (v20 != *(a1 + 72))
    {
      *(a1 + 72) = v20;
      v11 = qword_100BCE928;
      v12 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating power settings for BlackMagick", v18, 2u);
      }

      v14 = sub_10000C7D0(v12, v13);
      return (*(*v14 + 952))(v14, a2, v20);
    }
  }

  else
  {
    v15 = [*(a1 + 64) isEqualToString:@"us"];
    v17 = *(*sub_10000C7D0(v15, v16) + 952);

    return v17();
  }

  return result;
}

void sub_10036DEC0(void *a1, __int16 a2)
{
  v5 = a1[25];
  v4 = a1[26];
  if (v5 >= v4)
  {
    v7 = a1[24];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 1;
    if (v9 <= -2)
    {
      sub_1000C7698();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_1003705C4((a1 + 24), v13);
    }

    v14 = (v5 - v7) >> 1;
    v15 = (2 * v9);
    v16 = (2 * v9 - 2 * v14);
    *v15 = a2;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = a1[24];
    a1[24] = v16;
    a1[25] = v6;
    a1[26] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 2;
  }

  a1[25] = v6;
}

uint64_t sub_10036DF9C(uint64_t a1, int a2, unsigned int a3)
{
  v40[0] = 0;
  v40[1] = 0;
  sub_100007F88(v40, a1 + 80);
  v4 = *(a1 + 144);
  if (v4 != (a1 + 152))
  {
    do
    {
      v34 = v4;
      v5 = v4[5];
      for (i = v5[4]; i != v5[5]; ++i)
      {
        v7 = *i;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v8 = v7[5];
        v9 = [v8 countByEnumeratingWithState:&v36 objects:v47 count:16];
        if (v9)
        {
          v10 = *v37;
          while (2)
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v37 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v36 + 1) + 8 * j);
              if ([v12 pipeHandle] == a2)
              {
                v14 = qword_100BCE928;
                v15 = os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT);
                if (v15)
                {
                  v17 = [v12 pipeHandle];
                  v18 = v7;
                  if (*(v7 + 23) < 0)
                  {
                    v18 = *v7;
                  }

                  v19 = [v12 identifier];
                  *buf = 67109634;
                  v42 = v17;
                  v43 = 2082;
                  v44 = v18;
                  v45 = 2114;
                  v46 = v19;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Destroying pipe 0x%04x from endpoint %{public}s on device %{public}@", buf, 0x1Cu);
                }

                v20 = sub_1000B4EFC(v15, v16);
                sub_100373ADC(v20, [v12 pipeHandle]);
                v21 = *v5;
                if (*v5)
                {
                  v22 = [v12 identifier];
                  (*(*v21 + 16))(v21, v7, v22, a3);
                }

                v13 = v12;

                if (v13)
                {
                  [v7[5] removeObject:v13];
                }

                goto LABEL_21;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v36 objects:v47 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v13 = 0;
LABEL_21:
      }

      v23 = v34;
      v24 = v34[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v23[2];
          v26 = *v25 == v23;
          v23 = v25;
        }

        while (!v26);
      }

      v4 = v25;
    }

    while (v25 != (a1 + 152));
  }

  sub_10000801C(v40);
  v27 = sub_1000C4DA4(a1);
  v28 = [v27 count] == 0;

  if (v28)
  {
    v31 = sub_10000C7D0(v29, v30);
    (*(*v31 + 848))(v31, 2, 1);
  }

  return sub_1000088CC(v40);
}

void sub_10036E2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10036E338(uint64_t a1)
{
  if (qword_100B540F0 != -1)
  {
    sub_1000C0DF4();
  }

  v2 = qword_100B540E8;
  v3 = *(a1 + 32);

  sub_10036BCD4(v2, 0, v3);
}

void sub_10036E394(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  v9 = a2;
  v10 = qword_100BCE928;
  if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v17 = v9;
    v18 = 1024;
    v19 = a3;
    v20 = 1024;
    v21 = a4;
    v22 = 1024;
    v23 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CountryCode callback: %{public}@ %d %d %d", buf, 0x1Eu);
  }

  v12 = sub_10036648C(a1, v11);
  if (v12)
  {
    v14 = sub_100007EE8(v12, v13);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10036E4F4;
    v15[3] = &unk_100ADF8F8;
    v15[4] = a1;
    sub_10000CA94(v14, v15);
  }
}

void sub_10036E504(uint64_t a1, int a2)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v5 = a2;
  v2 = *(a1 + 48);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10036E59C;
  v3[3] = &unk_100AE25F0;
  v3[4] = v4;
  v3[5] = a1;
  dispatch_async(v2, v3);
  _Block_object_dispose(v4, 8);
}

void sub_10036E5B0(uint64_t a1, _DWORD *a2)
{
  v4 = sub_10000C798(a1, a2);
  v5 = (*(*v4 + 336))(v4);
  if (v5)
  {
    if ((*(a1 + 56) & 1) == 0)
    {
      v14 = qword_100BCE928;
      if (!os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v15 = "Stack is not ready, cannot update power source";
      v16 = buf;
      goto LABEL_9;
    }

    if (*a2 == 2)
    {
      *(a1 + 58) = 1;
      if (*(a1 + 216))
      {
        v7 = *(a1 + 59);
        v8 = *(a1 + 60);
        v9 = *(a1 + 61);
        v10 = sub_10000C7D0(v5, v6);
        v11 = (*(*v10 + 64))(v10, 3, 0, v7, v8, v9);
        v13 = sub_10000C7D0(v11, v12);
        (*(*v13 + 64))(v13, 4, 0, v7, v8, v9);
        v14 = qword_100BCE928;
        if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 0;
          v15 = "Wireless charging started: PCAP limits bypassed";
          v16 = &v25;
LABEL_9:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
        }
      }
    }

    else if (*(a1 + 58) == 1)
    {
      *(a1 + 58) = 0;
      if (*(a1 + 216))
      {
        v17 = *(a1 + 59);
        v18 = *(a1 + 60);
        v19 = *(a1 + 61);
        v20 = sub_10000C7D0(v5, v6);
        v21 = (*(*v20 + 64))(v20, 3, 0, v17, v18, v19);
        v23 = sub_10000C7D0(v21, v22);
        (*(*v23 + 64))(v23, 4, 0, v17, v18, v19);
        v14 = qword_100BCE928;
        if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 0;
          v15 = "Wireless charging stopped: PCAP limits enforced";
          v16 = &v24;
          goto LABEL_9;
        }
      }
    }
  }
}

uint64_t sub_10036E814(uint64_t result, _BYTE *a2, _DWORD *a3)
{
  *a2 = *(result + 224);
  *a3 = *(result + 228);
  return result;
}

uint64_t sub_10036E828(uint64_t a1)
{
  v2 = qword_100BCE928;
  if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ LE Scalable Pipes -------------------", buf, 2u);
    v2 = qword_100BCE928;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Registered Sessions:", buf, 2u);
  }

  v43[0] = 0;
  v43[1] = 0;
  v3 = sub_100007F88(v43, a1 + 80);
  v5 = *(a1 + 144);
  v35 = (a1 + 152);
  if (v5 != (a1 + 152))
  {
    do
    {
      v37 = v5[5];
      v6 = qword_100BCE928;
      if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(v5[4], buf);
        v7 = buf;
        if (v48 < 0)
        {
          v7 = *buf;
        }

        *v49 = 136446210;
        v50 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", v49, 0xCu);
        if (v48 < 0)
        {
          operator delete(*buf);
        }

        v6 = qword_100BCE928;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = "No";
        if (*(v37 + 56))
        {
          v8 = "Yes";
        }

        *buf = 136446210;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump:    Zombied: %{public}s", buf, 0xCu);
        v6 = qword_100BCE928;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "No";
        if (*(v37 + 57))
        {
          v9 = "Yes";
        }

        *buf = 136446210;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump:    Link requirement:  %{public}s", buf, 0xCu);
        v6 = qword_100BCE928;
      }

      v36 = v5;
      v3 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v3)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump:    Endpoints:", buf, 2u);
      }

      v10 = v37;
      for (i = *(v37 + 32); i != *(v10 + 40); i = v38 + 1)
      {
        v12 = *i;
        v13 = qword_100BCE928;
        if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v12;
          if (*(v12 + 23) < 0)
          {
            v14 = *v12;
          }

          *buf = 136446210;
          *&buf[4] = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "statedump:       %{public}s", buf, 0xCu);
          v13 = qword_100BCE928;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(v12 + 6);
          v16 = "client";
          if (v15 == 1)
          {
            v16 = "server";
          }

          v17 = v15 == 2;
          v18 = "peer-to-peer";
          if (!v17)
          {
            v18 = v16;
          }

          *buf = 136446210;
          *&buf[4] = v18;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "statedump:          Type: %{public}s", buf, 0xCu);
          v13 = qword_100BCE928;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(v12 + 7);
          if (v19 < 5 && ((0x17u >> v19) & 1) != 0)
          {
            v20 = (&off_100AEDD70)[v19];
          }

          else
          {
            v17 = v19 == 3;
            v20 = "unknown";
            if (v17)
            {
              v20 = "isochronous";
            }
          }

          *buf = 136446210;
          *&buf[4] = v20;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "statedump:          Priority: %{public}s", buf, 0xCu);
          v13 = qword_100BCE928;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v21 = "No";
          if (*(v12 + 39))
          {
            v21 = "Yes";
          }

          *buf = 136446210;
          *&buf[4] = v21;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "statedump:          Zombied: %{public}s", buf, 0xCu);
          v13 = qword_100BCE928;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v22 = "";
          if (*(v12 + 37))
          {
            v22 = "Non-";
          }

          *buf = 136446210;
          *&buf[4] = v22;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "statedump:          %{public}sReliable Pipe", buf, 0xCu);
          v13 = qword_100BCE928;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v23 = "NO";
          if (*(v12 + 7) == 4)
          {
            v23 = "YES";
          }

          *buf = 136446210;
          *&buf[4] = v23;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "statedump:          LE Only: %{public}s", buf, 0xCu);
          v13 = qword_100BCE928;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "statedump:          Connected devices:", buf, 2u);
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v24 = v12[5];
        v25 = [v24 countByEnumeratingWithState:&v39 objects:v44 count:16];
        v38 = i;
        if (v25)
        {
          v26 = *v40;
          do
          {
            for (j = 0; j != v25; j = j + 1)
            {
              if (*v40 != v26)
              {
                objc_enumerationMutation(v24);
              }

              v28 = qword_100BCE928;
              if (os_log_type_enabled(qword_100BCE928, OS_LOG_TYPE_DEFAULT))
              {
                v29 = v12;
                if (*(v12 + 23) < 0)
                {
                  v29 = *v12;
                }

                v30 = *(*(&v39 + 1) + 8 * j);
                *buf = 136446466;
                *&buf[4] = v29;
                v46 = 2114;
                v47 = v30;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "statedump:             %{public}s; %{public}@", buf, 0x16u);
              }
            }

            v25 = [v24 countByEnumeratingWithState:&v39 objects:v44 count:16];
          }

          while (v25);
        }

        v10 = v37;
      }

      v31 = v36;
      v32 = v36[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v31[2];
          v17 = *v33 == v31;
          v31 = v33;
        }

        while (!v17);
      }

      v5 = v33;
    }

    while (v33 != v35);
  }

  sub_1000B4EFC(v3, v4);
  nullsub_21();
  return sub_1000088CC(v43);
}

void sub_10036EEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10036EF4C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_10036EFD8((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10036EFD8(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10036F174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036F1AC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

uint64_t sub_10036F284(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {

        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        operator delete();
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 32);
  }

  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_10036F32C(void *__dst, __int128 *a2, int a3, int a4, int a5, char a6, char a7, char a8)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v15 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v15;
  }

  *(__dst + 6) = a3;
  *(__dst + 7) = a4;
  *(__dst + 8) = a5;
  *(__dst + 36) = a6;
  *(__dst + 37) = a7;
  *(__dst + 38) = a8;
  *(__dst + 39) = 0;
  __dst[5] = 0;
  v16 = +[NSMutableArray array];
  v17 = __dst[5];
  __dst[5] = v16;

  return __dst;
}

void sub_10036F3E4(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_10036F420(uint64_t a1)
{
  if (qword_100B540F0 != -1)
  {
    sub_1000C0DF4();
  }

  v2 = *(a1 + 10);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 36);
  v8 = *(a1 + 40);
  v9 = *(a1 + 44);

  sub_10036B934(v2, v3, v4, v5, v6, v7, v8, v9);
}

void sub_10036F480(const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_1000C7698();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_10036F560(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_10036F560(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_1000C7698();
}

void *sub_10036F5A8(void *a1)
{
  for (i = a1[3]; i != a1[4]; ++i)
  {
    if (*i)
    {
      operator delete();
    }
  }

  for (j = a1[6]; j != a1[7]; ++j)
  {
    if (*j)
    {
      operator delete();
    }
  }

  for (k = a1[18]; k != a1[19]; ++k)
  {
    if (*k)
    {
      operator delete();
    }
  }

  for (m = a1[21]; m != a1[22]; ++m)
  {
    if (*m)
    {
      operator delete();
    }
  }

  v6 = a1[27];
  if (v6)
  {
    a1[28] = v6;
    operator delete(v6);
  }

  v7 = a1[24];
  if (v7)
  {
    a1[25] = v7;
    operator delete(v7);
  }

  v8 = a1[21];
  if (v8)
  {
    a1[22] = v8;
    operator delete(v8);
  }

  v9 = a1[18];
  if (v9)
  {
    a1[19] = v9;
    operator delete(v9);
  }

  v10 = a1[12];
  if (v10)
  {
    a1[13] = v10;
    operator delete(v10);
  }

  v11 = a1[9];
  if (v11)
  {
    a1[10] = v11;
    operator delete(v11);
  }

  v12 = a1[6];
  if (v12)
  {
    a1[7] = v12;
    operator delete(v12);
  }

  v13 = a1[3];
  if (v13)
  {
    a1[4] = v13;
    operator delete(v13);
  }

  return a1;
}

uint64_t sub_10036F6F4(uint64_t a1)
{
  *a1 = off_100AEDB20;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10036F744(uint64_t a1)
{
  *a1 = off_100AEDB20;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_10036F7B4(uint64_t a1)
{
  if (qword_100B540F0 != -1)
  {
    sub_1000C0DF4();
  }

  v2 = qword_100B540E8;

  return sub_10036CAD4(v2, (a1 + 16));
}

uint64_t sub_10036F808(uint64_t a1, uint64_t a2, __int16 a3, __int128 *a4, int a5, int a6, char a7)
{
  *(a1 + 8) = 1;
  *a1 = off_100AEDB58;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_100008904((a1 + 32), *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    *(a1 + 48) = *(a4 + 2);
    *(a1 + 32) = v11;
  }

  *(a1 + 64) = a7;
  if (a6 == 6)
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  if (a6 == 2)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (a6 == 1)
  {
    v13 = 0;
  }

  *(a1 + 56) = a5;
  *(a1 + 60) = v13;
  return a1;
}

uint64_t sub_10036F8BC(uint64_t a1)
{
  *a1 = off_100AEDB58;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_10036F90C(uint64_t a1)
{
  *a1 = off_100AEDB58;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

void sub_10036F97C(uint64_t a1)
{
  if (qword_100B540F0 != -1)
  {
    sub_1000C0DF4();
  }

  v2 = qword_100B540E8;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 56);
  v6 = *(a1 + 60);
  v7 = *(a1 + 64);

  sub_10036D018(v2, v3, v4, (a1 + 32), v5, v6, v7);
}

uint64_t sub_10036F9F8(uint64_t a1)
{
  if (qword_100B540F0 != -1)
  {
    sub_1000C0DF4();
  }

  v2 = qword_100B540E8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 12);

  return sub_10036DF9C(v2, v3, v4);
}

uint64_t sub_10036FA50(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4, char a5)
{
  *(a1 + 8) = 1;
  *a1 = &off_100AEDBC8;
  *(a1 + 10) = a2;
  v8 = *(a3 + 8);
  *(a1 + 16) = &off_100AE0A78;
  *(a1 + 24) = v8;
  if (v8)
  {
    sub_10000C69C(v8);
  }

  *(a1 + 32) = a4;
  *(a1 + 34) = a5;
  return a1;
}

void *sub_10036FAE0(void *a1)
{
  *a1 = &off_100AEDBC8;
  a1[2] = &off_100AE0A78;
  v2 = a1[3];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return a1;
}

void sub_10036FB4C(void *a1)
{
  *a1 = &off_100AEDBC8;
  a1[2] = &off_100AE0A78;
  v1 = a1[3];
  if (v1)
  {
    sub_10000C808(v1);
  }

  operator delete();
}

void sub_10036FBD8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000B4EFC(a1, a2);
  v4 = *(a1 + 10);
  v5 = sub_10000C5F8(a1 + 16);
  v6 = sub_10000C5E0(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(a1 + 34);

  sub_1000B5050(v3, v4, v5, v6, v7, 0, v8);
}

uint64_t sub_10036FEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (*(a4 + 31) < 0)
      {
        operator delete(*(a4 + 8));
      }

      v7 = *(v5 + 8);
      *(a4 + 24) = *(v5 + 24);
      *(a4 + 8) = v7;
      *(v5 + 31) = 0;
      *(v5 + 8) = 0;
      v8 = *(v5 + 32);
      *(a4 + 39) = *(v5 + 39);
      *(a4 + 32) = v8;
      v5 += 48;
      a4 += 48;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_10036FF50(unint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000C7698();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_1003700A0(a1, v6);
  }

  v7 = 48 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v9 = *(a2 + 32);
  *(v7 + 39) = *(a2 + 39);
  *(v7 + 32) = v9;
  *&v18 = 48 * v2 + 48;
  v10 = a1[1];
  v11 = 48 * v2 + *a1 - v10;
  sub_1003700F8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_10037018C(&v16);
  return v15;
}

void sub_10037008C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10037018C(va);
  _Unwind_Resume(a1);
}

void sub_1003700A0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_1003700F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v8 = *(v6 + 32);
      *(a4 + 39) = *(v6 + 39);
      *(a4 + 32) = v8;
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 48;
    }
  }
}

uint64_t sub_10037018C(uint64_t a1)
{
  sub_1003701C4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003701C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 17) < 0)
      {
        operator delete(*(v2 - 40));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_1003705C4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_100370608(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10081F1E0();
  }

  v2 = off_100B50A98 + 64;

  sub_100312650(v2, a1);
}

uint64_t sub_1003706C8(uint64_t a1)
{
  *a1 = &off_100AEDDC8;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = a1 + 72;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 140) = 0;
  v2 = (a1 + 140);
  *(a1 + 136) = 0;
  qword_100BCE4D0 = a1;
  memset(&__attr, 0, sizeof(__attr));
  pthread_attr_init(&__attr);
  pthread_attr_set_qos_class_np(&__attr, QOS_CLASS_USER_INTERACTIVE, 0);
  v3 = dispatch_pthread_root_queue_create();
  pthread_attr_destroy(&__attr);
  *(a1 + 8) = dispatch_queue_create_with_target_V2("com.apple.MobileBluetooth.Pipe", 0, v3);
  dispatch_release(v3);
  v4 = sub_10000E92C();
  if ((*(*v4 + 8))(v4))
  {
    v23 = 0;
    v5 = sub_10000E92C();
    sub_100007E30(buf, "Pipe");
    sub_100007E30(__p, "TxSlotSize");
    (*(*v5 + 128))(v5, buf, __p, &v23);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v6 = v23;
    if (v23)
    {
      v7 = qword_100BCE958;
      if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting custom Skywalk TxSlotSize to %llu", buf, 0xCu);
      }
    }

    else
    {
      v6 = 32;
    }

    v20 = 0;
    v9 = sub_10000E92C();
    sub_100007E30(buf, "Pipe");
    sub_100007E30(__p, "RxSlotSize");
    (*(*v9 + 128))(v9, buf, __p, &v20);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v8 = v20;
    if (v20)
    {
      v10 = qword_100BCE958;
      if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting custom Skywalk RxSlotSize to %llu", buf, 0xCu);
      }
    }

    else
    {
      v8 = 32;
    }

    v11 = sub_10000E92C();
    sub_100007E30(buf, "Magnet");
    sub_100007E30(__p, "EnableCrossLayerLogs");
    (*(*v11 + 72))(v11, buf, __p, a1 + 138);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (*(a1 + 138) == 1 && os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
    {
      sub_10081F208();
    }

    v12 = sub_10000E92C();
    sub_100007E30(buf, "Magnet");
    sub_100007E30(__p, "EnableSkywalkDataLogs");
    (*(*v12 + 72))(v12, buf, __p, a1 + 139);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (*(a1 + 139) == 1)
    {
      v13 = qword_100BCE958;
      if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = "Enable";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s Skywalk data logs", buf, 0xCu);
      }
    }

    v14 = sub_10000E92C();
    sub_100007E30(buf, "Magnet");
    sub_100007E30(__p, "EnableSkywalkDataCRC");
    (*(*v14 + 72))(v14, buf, __p, v2);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (*v2 == 1)
    {
      v15 = qword_100BCE958;
      if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_DEFAULT))
      {
        v16 = "Disable";
        if (*(a1 + 139))
        {
          v16 = "Enable";
        }

        *buf = 136446466;
        *&buf[4] = "Enable";
        *&buf[12] = 2082;
        *&buf[14] = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s Skywalk data logs CRC, %{public}s fSkywalkDataLogs", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = 32;
    v6 = 32;
  }

  v17 = os_nexus_controller_create();
  *(a1 + 112) = v17;
  v18 = qword_100BCE958;
  if (v17)
  {
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219008;
      *&buf[4] = 2048;
      *&buf[12] = 2048;
      *&buf[14] = 1;
      *&buf[22] = 2048;
      *&buf[24] = 1;
      *&buf[32] = 2048;
      *&buf[34] = v6;
      *&buf[42] = 2048;
      *&buf[44] = v8;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Creating nexus with NEXUS_ATTR_SLOT_BUF_SIZE: %llu, NEXUS_ATTR_RX_RINGS: %llu, NEXUS_ATTR_TX_RINGS: %llu, NEXUS_ATTR_TX_SLOTS: %llu, NEXUS_ATTR_RX_SLOTS: %llu", buf, 0x34u);
    }

    os_nexus_attr_create();
    os_nexus_attr_set();
    os_nexus_attr_set();
    os_nexus_attr_set();
    os_nexus_attr_set();
    os_nexus_attr_set();
    strcpy(buf, "com.apple.bluetooth.Pipe");
    memset(&buf[25], 0, 39);
    os_nexus_controller_register_provider();
    os_nexus_attr_destroy();
  }

  else if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
  {
    sub_10081F288();
  }

  return a1;
}

uint64_t sub_100370E84(uint64_t a1)
{
  *a1 = &off_100AEDDC8;
  if (*(a1 + 112))
  {
    os_nexus_controller_deregister_provider();
    os_nexus_controller_destroy();
  }

  dispatch_release(*(a1 + 8));
  sub_10000CEDC(a1 + 88, *(a1 + 96));
  sub_10000CEDC(a1 + 64, *(a1 + 72));
  sub_10037505C(a1 + 40, *(a1 + 48));
  sub_10000CEDC(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_100370F14(_Unwind_Exception *a1)
{
  sub_10000CEDC((v1 + 11), v1[12]);
  sub_10000CEDC((v1 + 8), v1[9]);
  sub_10037505C((v1 + 5), v1[6]);
  sub_10000CEDC((v1 + 2), v1[3]);
  _Unwind_Resume(a1);
}

void sub_100370F54(uint64_t a1)
{
  sub_100370E84(a1);

  operator delete();
}

uint64_t sub_100370F8C(uint64_t a1, int a2, uint64_t a3, __int16 a4)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = *(a1 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100371044;
  v7[3] = &unk_100AEDE20;
  v9 = a4;
  v7[4] = &v10;
  v7[5] = a1;
  v8 = a2;
  v7[6] = a3;
  dispatch_sync(v4, v7);
  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_100371044(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = *(v2 + 24);
  v4 = v2 + 24;
  v3 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *(a1 + 60);
  v7 = v4;
  do
  {
    v8 = *(v3 + 32);
    v9 = v8 >= v6;
    v10 = v8 < v6;
    if (v9)
    {
      v7 = v3;
    }

    v3 = *(v3 + 8 * v10);
  }

  while (v3);
  if (v7 == v4 || v6 < *(v7 + 32))
  {
LABEL_9:
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
  {
    sub_10081F2C4();
  }

  *(*(*(a1 + 32) + 8) + 24) = 103;
}

uint64_t sub_100371168(uint64_t a1, int a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = *(a1 + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100371224;
  v11[3] = &unk_100AEDE48;
  v14 = a4;
  v11[4] = &v16;
  v11[5] = a1;
  v12 = a2;
  v13 = a7;
  v15 = a8;
  v11[6] = a3;
  v11[7] = a6;
  dispatch_sync(v8, v11);
  v9 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);
  return v9;
}

void sub_100371224(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 24);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 72);
  v5 = v2 + 24;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= v4;
    v8 = v6 < v4;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != v2 + 24 && v4 >= *(v5 + 32))
  {
    if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
    {
      sub_10081F2C4();
    }

    v17 = *(*(a1 + 32) + 8);
    v18 = 103;
  }

  else
  {
LABEL_9:
    v27 = 0;
    if (socketpair(1, 1, 0, &v27))
    {
      if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
      {
        sub_10081F334();
      }
    }

    else
    {
      v9 = v27;
      v10 = fcntl(v27, 3, 0);
      fcntl(v9, 4, v10 | 4u);
      v11 = dispatch_group_create();
      v12 = dispatch_source_create(&_dispatch_source_type_read, v9, 0, *(v2 + 8));
      if (v12)
      {
        v13 = v12;
        v14 = dispatch_source_create(&_dispatch_source_type_write, v9, 0, *(v2 + 8));
        if (v14)
        {
          v15 = v14;
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_1003716B4;
          handler[3] = &unk_100ADF940;
          handler[4] = v2;
          v26 = v9;
          dispatch_source_set_event_handler(v13, handler);
          dispatch_group_enter(v11);
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_1003717A4;
          v24[3] = &unk_100ADF8F8;
          v24[4] = v11;
          dispatch_source_set_cancel_handler(v13, v24);
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_1003717AC;
          v22[3] = &unk_100ADF940;
          v22[4] = v2;
          v23 = v9;
          dispatch_source_set_event_handler(v15, v22);
          dispatch_group_enter(v11);
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100371A14;
          v21[3] = &unk_100ADF8F8;
          v21[4] = v11;
          dispatch_source_set_cancel_handler(v15, v21);
          dispatch_resume(v13);
          v16 = *(v2 + 8);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100371A1C;
          block[3] = &unk_100AE0900;
          v20 = v9;
          dispatch_group_notify(v11, v16, block);
          dispatch_release(v11);
          operator new();
        }

        if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
        {
          sub_10081F3B4();
        }

        dispatch_release(v13);
      }

      else if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_ERROR))
      {
        sub_10081F434();
      }
    }

    v17 = *(*(a1 + 32) + 8);
    v18 = 4;
  }

  *(v17 + 24) = v18;
}

void sub_1003716B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = v2 + 72;
    do
    {
      if (*(v3 + 28) >= v4)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 28) < v4));
    }

    while (v3);
    if (v5 != v2 + 72 && v4 >= *(v5 + 28))
    {
      v6 = *(v2 + 24);
      if (!v6)
      {
        goto LABEL_24;
      }

      v7 = *(v5 + 32);
      v8 = v2 + 24;
      do
      {
        v9 = *(v6 + 32);
        v10 = v9 >= v7;
        v11 = v9 < v7;
        if (v10)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * v11);
      }

      while (v6);
      if (v8 != v2 + 24 && v7 >= *(v8 + 32))
      {
        v12 = *(v8 + 40);

        sub_1000CA7EC(v2, v7, v12);
      }

      else
      {
LABEL_24:
        if (os_log_type_enabled(qword_100BCE958, OS_LOG_TYPE_FAULT))
        {
          sub_10081F4B4();
        }
      }
    }
  }
}