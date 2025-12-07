uint64_t **sub_5F264C(void *a1, unsigned __int8 *a2, _BYTE *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % a1[1];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (v3 == *(v8 + 16))
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (v3 != *(v8 + 16))
  {
    goto LABEL_12;
  }

  return v8;
}

void *sub_5F2988(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_5F2A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_47D80(&a9);
  _Unwind_Resume(a1);
}

void sub_5F2A94(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 58))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5F2B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_5F2CC4(va);
  *(v10 + 8) = v11;
  sub_5F2D38(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5F2BA0(uint64_t a1, __int128 *a2)
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

void sub_5F2C90(_Unwind_Exception *exception_object)
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

uint64_t sub_5F2CC4(uint64_t a1)
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

      v6 = *(v3 - 48);
      if (v6)
      {
        *(v3 - 40) = v6;
        operator delete(v6);
      }

      v3 -= 64;
    }
  }

  return a1;
}

void ***sub_5F2D38(void ***a1)
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

          v7 = *(v4 - 6);
          if (v7)
          {
            *(v4 - 5) = v7;
            operator delete(v7);
          }

          v4 -= 64;
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

void ***sub_5F2DCC(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_5C3168(v4 - 360);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_5F2E44(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (a2 != a3)
  {
    v14 = result;
    v6 = 0;
    do
    {
      v7 = v3 + v6;
      sub_5139E8(v3 + v6, (a2 + v6));
      v8 = *(a2 + v6 + 152);
      *(v7 + 168) = *(a2 + v6 + 168);
      *(v7 + 152) = v8;
      v9 = *(a2 + v6 + 184);
      v10 = *(a2 + v6 + 200);
      v11 = *(a2 + v6 + 216);
      *(v7 + 228) = *(a2 + v6 + 228);
      *(v7 + 216) = v11;
      *(v7 + 200) = v10;
      *(v7 + 248) = 0;
      *(v7 + 184) = v9;
      *(v7 + 256) = 0;
      *(v7 + 264) = 0;
      v13 = *(a2 + v6 + 248);
      v12 = *(a2 + v6 + 256);
      if (v12 != v13)
      {
        if (((v12 - v13) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v6 += 272;
    }

    while (a2 + v6 != a3);
    v3 += v6;
    result = v14;
  }

  *(result + 8) = v3;
  return result;
}

void sub_5F2F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *(v10 + v11 + 248);
  if (v13)
  {
    *(v10 + v11 + 256) = v13;
    operator delete(v13);
  }

  sub_3E5388(v10 + v11);
  if (v11)
  {
    v14 = v10 + v11 - 272;
    v15 = -v11;
    do
    {
      sub_513694(v14);
      v14 -= 272;
      v15 += 272;
    }

    while (v15);
  }

  *(a10 + 8) = v10;
  _Unwind_Resume(a1);
}

void ***sub_5F2FD4(void ***result)
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
        do
        {
          v4 -= 272;
          sub_513694(v4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_5F304C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x97B425ED097B43)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5F3134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = v11 - 432;
    v15 = -v12;
    do
    {
      v14 = sub_5941F8(v14) - 432;
      v15 += 432;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_5F32F8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5F3168(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_5139E8(a1 + 8, (a2 + 8));
  v4 = *(a2 + 160);
  v5 = *(a2 + 169);
  *(a1 + 192) = 0;
  *(a1 + 169) = v5;
  *(a1 + 160) = v4;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v7 = *(a2 + 192);
  v6 = *(a2 + 200);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = *(a2 + 216);
  v9 = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v8;
  *(a1 + 248) = v9;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v11 = *(a2 + 256);
  v10 = *(a2 + 264);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5139E8(a1 + 280, (a2 + 280));
  return a1;
}

void sub_5F3298(_Unwind_Exception *a1)
{
  v5 = v2[32];
  if (v5)
  {
    v2[33] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_3E5388(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v2[25] = v6;
  operator delete(v6);
  sub_3E5388(v1);
  _Unwind_Resume(a1);
}

void ***sub_5F32F8(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_5941F8(v4 - 432);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_5F3370(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1642C8590B21643)
    {
      operator new();
    }

    sub_1794();
  }
}

uint64_t sub_5F34B0(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    v1 = result;
    sub_5F34E4(result);
    return v1;
  }

  return result;
}

void sub_5F34E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 184)
  {
    if (*(v3 - 9) < 0)
    {
      operator delete(*(v3 - 32));
      if ((*(v3 - 41) & 0x80000000) == 0)
      {
LABEL_6:
        v5 = *(v3 - 80);
        if (v5 == -1)
        {
          goto LABEL_3;
        }

LABEL_10:
        (off_266BAC0[v5])(&v6, v3 - 112);
        goto LABEL_3;
      }
    }

    else if ((*(v3 - 41) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(v3 - 64));
    v5 = *(v3 - 80);
    if (v5 != -1)
    {
      goto LABEL_10;
    }

LABEL_3:
    *(v3 - 80) = -1;
  }
}

uint64_t sub_5F35A4(uint64_t a1, uint64_t a2)
{
  *a1 = off_26696C8;
  if (*(a2 + 31) < 0)
  {
    sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  *a1 = off_266BB28;
  v5 = *(a2 + 32);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 32) = v5;
  *(a1 + 48) = off_26696C8;
  if (*(a2 + 79) < 0)
  {
    sub_325C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  *(a1 + 48) = off_266BB60;
  v7 = *(a2 + 80);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 80) = v7;
  sub_5F3E34(a1 + 88, a2 + 88);
  return a1;
}

void sub_5F36D8(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if ((*(v1 + 31) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

void sub_5F3C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5F3C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 1414) == 1)
  {
    return *(a1 + 32) & (*(a1 + 43) ^ 1 | *(a3 + 1056)) & 1;
  }

  else
  {
    return 0;
  }
}

void sub_5F3DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5F3E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 1454) == 1 && *(a2 + 2417) == 1)
  {
    return *(a1 + 32) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5F3E34(uint64_t a1, uint64_t a2)
{
  *a1 = off_26696C8;
  if (*(a2 + 31) < 0)
  {
    sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
    *a1 = off_266B8A8;
    *(a1 + 32) = *(a2 + 32);
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    *a1 = off_266B8A8;
    *(a1 + 32) = *(a2 + 32);
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v5;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 40), *(a2 + 40), *(a2 + 48));
LABEL_6:
  *(a1 + 64) = *(a2 + 64);
  if (*(a2 + 95) < 0)
  {
    sub_325C((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v6;
  }

  return a1;
}

void sub_5F3F64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
    *v1 = v3;
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    *v1 = v3;
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

void ***sub_5F3FBC(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_5C25A8(v4 - 2616);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_5F4034(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 8);
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (v4 + v7);
      result = sub_5139E8(v4 + v7, (a2 + v7));
      v8[19] = 0;
      v8[20] = 0;
      v8[21] = 0;
      v10 = *(a2 + v7 + 152);
      v9 = *(a2 + v7 + 160);
      if (v9 != v10)
      {
        if (((v9 - v10) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v7 += 176;
    }

    while (a2 + v7 != a3);
    v4 += v7;
  }

  *(v3 + 8) = v4;
  return result;
}

void sub_5F411C(_Unwind_Exception *a1)
{
  v5 = *(v2 + v3 + 152);
  if (v5)
  {
    *(v2 + v3 + 160) = v5;
    operator delete(v5);
  }

  sub_3E5388(v2 + v3);
  if (v3)
  {
    v6 = v2 + v3 - 176;
    v7 = -v3;
    do
    {
      sub_5C17B4(v6);
      v6 -= 176;
      v7 += 176;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

void ***sub_5F4178(void ***result)
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
        do
        {
          v4 -= 176;
          sub_5C17B4(v4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_5F41F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x19999999999999ALL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5F42F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_5F4318(va);
  *(v10 + 8) = v11;
  sub_5F005C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5F4318(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 160;
        sub_5ED330(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_5F4380(uint64_t a1, __int128 **a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_353184(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_5F44D4(a1 + 24, a2[3], a2[4], 0xEF7BDEF7BDEF7BDFLL * (a2[4] - a2[3]));
  sub_5F4668((a1 + 48), (a2 + 6));
  sub_5F4668((a1 + 544), (a2 + 68));
  *(a1 + 1056) = 0;
  *(a1 + 1040) = 0u;
  sub_5F44D4(a1 + 1040, a2[130], a2[131], 0xEF7BDEF7BDEF7BDFLL * (a2[131] - a2[130]));
  *(a1 + 1080) = 0;
  *(a1 + 1064) = 0u;
  sub_5F44D4(a1 + 1064, a2[133], a2[134], 0xEF7BDEF7BDEF7BDFLL * (a2[134] - a2[133]));
  return a1;
}

void sub_5F4474(_Unwind_Exception *a1)
{
  sub_559E14((v1 + 1040));
  sub_55A8B4(v1 + 544);
  sub_55A8B4(v1 + 48);
  sub_559E14(v2);
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

void sub_5F44D4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x84210842108422)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5F45BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = v11 - 496;
    v15 = -v12;
    do
    {
      v14 = sub_55A8B4(v14) - 496;
      v15 += 496;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_5F45F0(&a9);
  _Unwind_Resume(a1);
}

void ***sub_5F45F0(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_55A8B4(v4 - 496);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void *sub_5F4668(void *a1, uint64_t a2)
{
  v4 = sub_55BD50(a1, a2);
  v5 = *(a2 + 160);
  *(v4 + 168) = 0;
  *(v4 + 160) = v5;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  v6 = *(a2 + 168);
  v7 = *(a2 + 176);
  if (v7 != v6)
  {
    if (0x8F5C28F5C28F5C29 * ((v7 - v6) >> 5) < 0x51EB851EB851ECLL)
    {
      operator new();
    }

    sub_1794();
  }

  sub_55BD50((a1 + 24), a2 + 192);
  sub_55F1E8((a1 + 44), a2 + 352);
  a1[58] = 0;
  a1[59] = 0;
  a1[60] = 0;
  sub_353184((a1 + 58), *(a2 + 464), *(a2 + 472), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 472) - *(a2 + 464)) >> 3));
  a1[61] = *(a2 + 488);
  return a1;
}

void sub_5F479C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 176) = v10;
  sub_5EC004(&a9);
  sub_53A868(v9);
  _Unwind_Resume(a1);
}

void sub_5F47BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_53E440(v9 + 352);
  sub_53A868(v9 + 192);
  sub_5EC004(&a9);
  sub_53A868(v9);
  _Unwind_Resume(a1);
}

void sub_5F47FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_5EC004(&a9);
  sub_53A868(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_5F4818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v9 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 768) = -1;
      v7 = *(v6 + 768);
      if (v7 != -1)
      {
        v10 = v4;
        (off_266BB88[v7])(&v10, v6);
        *(v4 + 768) = v7;
      }

      *(v4 + 792) = 0;
      *(v4 + 776) = 0u;
      sub_353184(v4 + 776, *(v6 + 776), *(v6 + 784), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 784) - *(v6 + 776)) >> 3));
      v6 += 800;
      v4 = v9 + 800;
      v9 += 800;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_5F4904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_55ABBC(v3);
  sub_5F493C(va);
  _Unwind_Resume(a1);
}

void sub_5F4920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5EC1A8(v3);
  sub_5F493C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5F493C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 800;
        sub_5EC100(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_5F49A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_55BD50(a1, a2);
  sub_55BD50(v4 + 160, a2 + 160);
  sub_55BD50(a1 + 320, a2 + 320);
  sub_5F4A6C(a1 + 480, a2 + 480);
  sub_5F4A6C(a1 + 1920, a2 + 1920);
  sub_5F4A6C(a1 + 3360, a2 + 3360);
  return a1;
}

void sub_5F4A0C(_Unwind_Exception *a1)
{
  sub_5E58CC(v1 + 1920);
  sub_5E58CC(v1 + 480);
  sub_53A868(v1 + 320);
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_5F4A6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_55BD50(a1, a2);
  sub_55BD50(v4 + 160, a2 + 160);
  sub_55BD50(a1 + 320, a2 + 320);
  sub_55BD50(a1 + 480, a2 + 480);
  sub_55BD50(a1 + 640, a2 + 640);
  sub_55BD50(a1 + 800, a2 + 800);
  sub_55BD50(a1 + 960, a2 + 960);
  sub_55BD50(a1 + 1120, a2 + 1120);
  sub_55BD50(a1 + 1280, a2 + 1280);
  return a1;
}

void sub_5F4AF8(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 1120);
  sub_53A868(v1 + 960);
  sub_53A868(v1 + 800);
  sub_53A868(v1 + 640);
  sub_53A868(v1 + 480);
  sub_53A868(v1 + 320);
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_5F4B6C(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_5F4B9C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 1120;
        sub_5EBD80(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_5F4C04(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x3A83A83A83A83BLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5F4CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = (v11 - 1120);
    v15 = -v12;
    do
    {
      v14 = sub_5938B0(v14) - 140;
      v15 += 1120;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_5F5044(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5F4D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_5F4F00(a1, a2);
  v5 = *(a2 + 856);
  *(v4 + 864) = *(a2 + 864);
  *(v4 + 856) = v5;
  *(v4 + 872) = 0;
  *(v4 + 888) = 0;
  *(v4 + 880) = 0;
  v6 = *(a2 + 872);
  v7 = *(a2 + 880);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 896) = *(a2 + 896);
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);
  if (*(a2 + 943) < 0)
  {
    sub_325C((a1 + 920), *(a2 + 920), *(a2 + 928));
  }

  else
  {
    v8 = *(a2 + 920);
    *(a1 + 936) = *(a2 + 936);
    *(a1 + 920) = v8;
  }

  v9 = (a1 + 944);
  if (*(a2 + 967) < 0)
  {
    sub_325C(v9, *(a2 + 944), *(a2 + 952));
  }

  else
  {
    v10 = *(a2 + 944);
    *(a1 + 960) = *(a2 + 960);
    *v9 = v10;
  }

  sub_5F0850(a1 + 968, a2 + 968);
  *(a1 + 1040) = *(a2 + 1040);
  sub_5F0850(a1 + 1048, a2 + 1048);
  return a1;
}

void sub_5F4E6C(_Unwind_Exception *a1)
{
  if (*(v1 + 943) < 0)
  {
    operator delete(*v2);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_5936E4(v1);
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

  *(v1 + 880) = v5;
  operator delete(v5);
  sub_5936E4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_5F4F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_5F046C(a1, a2);
  sub_5F0850(v4 + 384, a2 + 384);
  sub_5F0850(a1 + 456, a2 + 456);
  sub_55BD50(a1 + 528, a2 + 528);
  sub_55BD50(a1 + 688, a2 + 688);
  if (*(a2 + 848))
  {
    operator new();
  }

  *(a1 + 848) = 0;
  return a1;
}

void sub_5F5014(_Unwind_Exception *a1)
{
  sub_53A58C((v1 + 384));
  sub_55D550(v1);
  _Unwind_Resume(a1);
}

void ***sub_5F5044(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_5938B0((v4 - 140));
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_5F50BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x92492492492493)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5F51C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_5F52E4(va);
  *(v10 + 8) = v11;
  sub_5F5350(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5F51E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5F046C(a1, a2);
  v5 = *(a2 + 380);
  *(v4 + 396) = *(a2 + 396);
  *(v4 + 380) = v5;
  *(v4 + 408) = 0;
  *(v4 + 416) = 0;
  *(v4 + 400) = 0;
  v7 = *(a2 + 400);
  v6 = *(a2 + 408);
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = *(a2 + 424);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 424) = v8;
  return a1;
}

void sub_5F52C0(_Unwind_Exception *a1)
{
  v3 = v1[50];
  if (v3)
  {
    v1[51] = v3;
    operator delete(v3);
  }

  sub_55D550(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_5F52E4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 6);
      if (v5)
      {
        *(v3 - 5) = v5;
        operator delete(v5);
      }

      v3 -= 56;
      sub_55D550(v3);
    }
  }

  return a1;
}

void ***sub_5F5350(void ***result)
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
        do
        {
          v6 = *(v4 - 6);
          if (v6)
          {
            *(v4 - 5) = v6;
            operator delete(v6);
          }

          v4 -= 56;
          sub_55D550(v4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_5F53E0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x4C8F8D28AC42FELL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5F54C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = (v11 - 856);
    v15 = -v12;
    do
    {
      v14 = sub_5936E4(v14) - 107;
      v15 += 856;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_5F54FC(&a9);
  _Unwind_Resume(a1);
}

void ***sub_5F54FC(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_5936E4(v4 - 107);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_5F5574(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x108421084210843)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5F5678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_5F5698(va);
  *(v10 + 8) = v11;
  sub_5F5714(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5F5698(uint64_t a1)
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
        v7 = *(v4 - 208);
        if (v7)
        {
          *(v4 - 200) = v7;
          operator delete(v7);
        }

        v8 = v4 - 248;
        v9 = *(v4 - 248);
        if (v9)
        {
          *(v4 - 240) = v9;
          operator delete(v9);
        }

        v4 -= 248;
      }

      while (v8 != v5);
    }
  }

  return a1;
}

void ***sub_5F5714(void ***a1)
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
          v6 = *(v4 - 26);
          if (v6)
          {
            *(v4 - 25) = v6;
            operator delete(v6);
          }

          v7 = v4 - 248;
          v8 = *(v4 - 31);
          if (v8)
          {
            *(v4 - 30) = v8;
            operator delete(v8);
          }

          v4 -= 248;
        }

        while (v7 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_5F57B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5F58B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_4E6B1C(va);
  *(v10 + 8) = v11;
  sub_5F1560(&a9);
  _Unwind_Resume(a1);
}

void sub_5F58D4(uint64_t result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x6A63BD81A98EF7)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5F59D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_5F59F8(va);
  *(v10 + 8) = v11;
  sub_5F5A60(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5F59F8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 616;
        sub_5ECDEC(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void ***sub_5F5A60(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      for (i = v2[1]; i != v3; sub_5ECDEC(v2, i))
      {
        i -= 616;
      }

      v2[1] = v3;
      operator delete(**a1);
    }
  }

  return a1;
}

uint64_t sub_5F5AD4(uint64_t a1, __int128 *a2)
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
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v5 = *(a2 + 5);
  v6 = *(a2 + 6);
  if (v6 != v5)
  {
    if (!(((v6 - v5) >> 6) >> 58))
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 64) = *(a2 + 16);
  return a1;
}

void sub_5F5C10(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_5F5C3C(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *v3 = *v4;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      *(v3 + 32) = 0;
      v5 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v6 != v5)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      *(v3 + 40) = *(v4 + 40);
      *(v3 + 48) = *(v4 + 48);
      v4 += 64;
      v3 += 64;
    }

    while (v4 != a3);
  }

  result[1] = v3;
  return result;
}

void sub_5F5D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_35390(va1);
  sub_5F5DBC(va);
  *(a5 + 8) = a4;
  _Unwind_Resume(a1);
}

uint64_t sub_5F5DBC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v6 = *(v3 - 48);
      if (v6)
      {
        v7 = *(v3 - 40);
        v5 = *(v3 - 48);
        if (v7 != v6)
        {
          v8 = *(v3 - 40);
          do
          {
            v10 = *(v8 - 24);
            v8 -= 24;
            v9 = v10;
            if (v10)
            {
              *(v7 - 16) = v9;
              operator delete(v9);
            }

            v7 = v8;
          }

          while (v8 != v6);
          v5 = *(v3 - 48);
        }

        *(v3 - 40) = v6;
        operator delete(v5);
      }

      v3 -= 64;
    }
  }

  return a1;
}

void ***sub_5F5E60(void ***a1)
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
          v7 = *(v4 - 6);
          if (v7)
          {
            v8 = *(v4 - 5);
            v6 = *(v4 - 6);
            if (v8 != v7)
            {
              v9 = *(v4 - 5);
              do
              {
                v11 = *(v9 - 24);
                v9 -= 24;
                v10 = v11;
                if (v11)
                {
                  *(v8 - 16) = v10;
                  operator delete(v10);
                }

                v8 = v9;
              }

              while (v9 != v7);
              v6 = *(v4 - 6);
            }

            *(v4 - 5) = v7;
            operator delete(v6);
          }

          v4 -= 64;
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

void sub_5F5F24(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x276276276276277)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5F6070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_5F6090(va);
  *(v10 + 8) = v11;
  sub_5F6100(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5F6090(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      do
      {
        v4 = v2 - 104;
        v6 = (v2 - 72);
        sub_5ECC44(&v6);
        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void ***sub_5F6100(void ***result)
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
        do
        {
          v6 = v4 - 104;
          v7 = (v4 - 72);
          sub_5ECC44(&v7);
          v4 = v6;
        }

        while (v6 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_5F618C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4E9DA4(a1, a2);
  v4[55] = 0;
  v4[56] = 0;
  v4[57] = 0;
  v6 = *(a2 + 440);
  v5 = *(a2 + 448);
  if (v5 != v6)
  {
    if (0x8E38E38E38E38E39 * ((v5 - v6) >> 3) < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 464) = *(a2 + 464);
  sub_55BD50(a1 + 472, a2 + 472);
  sub_55F1E8(a1 + 632, a2 + 632);
  return a1;
}

void sub_5F6268(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 472);
  v3 = *(v1 + 440);
  if (v3)
  {
    *(v1 + 448) = v3;
    operator delete(v3);
  }

  sub_44FDEC(v1);
  _Unwind_Resume(a1);
}

uint64_t **sub_5F62A0(uint64_t **result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v15 = result[1];
  if (a2 == a3)
  {
    v6 = result[1];
  }

  else
  {
    v5 = a2 + 152;
    v6 = result[1];
    do
    {
      *v6 = *(v5 - 152);
      v7 = *(v5 - 136);
      v8 = *(v5 - 120);
      v9 = *(v5 - 104);
      *(v6 + 63) = *(v5 - 89);
      *(v6 + 2) = v8;
      *(v6 + 3) = v9;
      v6[9] = 0;
      *(v6 + 1) = v7;
      v6[10] = 0;
      v6[11] = 0;
      v11 = *(v5 - 80);
      v10 = *(v5 - 72);
      if (v10 != v11)
      {
        if (((v10 - v11) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v12 = v5 - 152;
      v13 = *(v5 - 56);
      *(v6 + 112) = *(v5 - 40);
      *(v6 + 6) = v13;
      v14 = *(v5 - 32);
      *(v6 + 17) = *(v5 - 16);
      *(v6 + 15) = v14;
      result = sub_81988(v6 + 19, v5);
      v6 = v15 + 22;
      v15 += 22;
      v5 += 176;
    }

    while (v12 + 176 != a3);
  }

  v3[1] = v6;
  return result;
}

void sub_5F63F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *v12;
  if (*v12)
  {
    *(v11 + 80) = v14;
    operator delete(v14);
  }

  sub_4A0D48(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void *sub_5F6420(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_52A348(a1, *a2, a2[1], 0xCF3CF3CF3CF3CF3DLL * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_52A348((a1 + 3), a2[3], a2[4], 0xCF3CF3CF3CF3CF3DLL * ((a2[4] - a2[3]) >> 3));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_52A348((a1 + 6), a2[6], a2[7], 0xCF3CF3CF3CF3CF3DLL * ((a2[7] - a2[6]) >> 3));
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  sub_52A348((a1 + 9), a2[9], a2[10], 0xCF3CF3CF3CF3CF3DLL * ((a2[10] - a2[9]) >> 3));
  return a1;
}

void sub_5F64F0(_Unwind_Exception *a1)
{
  sub_51B6E0(v3);
  sub_51B6E0(v2);
  sub_51B6E0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_5F6530(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = 0;
  *a1 = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = *(a2 + 5);
  *(a1 + 48) = 0;
  *(a1 + 40) = v7;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_5F6640(a1 + 48, *(a2 + 6), *(a2 + 7), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 7) - *(a2 + 6)) >> 4));
  sub_55BD50(a1 + 72, a2 + 72);
  return a1;
}

void sub_5F6610(_Unwind_Exception *a1)
{
  sub_5ECB64(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_5F6640(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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

void sub_5F6734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v11)
  {
    v14 = -v11;
    v15 = v12 - 160;
    do
    {
      v15 = sub_53A868(v15) - 176;
      v14 += 176;
    }

    while (v14);
  }

  *(v9 + 8) = v10;
  sub_5F6768(&a9);
  _Unwind_Resume(a1);
}

void ***sub_5F6768(void ***result)
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
        do
        {
          v6 = v4 - 176;
          sub_53A868((v4 - 160));
          v4 = v6;
        }

        while (v6 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_5F67E4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x6A63BD81A98EF7)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5F68CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = v11 - 616;
    v15 = -v12;
    do
    {
      sub_5C2320(v14);
      v14 -= 616;
      v15 += 616;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_5F69A4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5F6904(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_55F1E8(a1 + 16, a2 + 16);
  *(a1 + 128) = *(a2 + 128);
  sub_55BD50(a1 + 136, a2 + 136);
  sub_55BD50(a1 + 296, a2 + 296);
  sub_55BD50(a1 + 456, a2 + 456);
  return a1;
}

void sub_5F6964(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 296);
  sub_53A868(v1 + 136);
  sub_53E440(v1 + 16);
  _Unwind_Resume(a1);
}

void ***sub_5F69A4(void ***result)
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
        do
        {
          v4 -= 616;
          sub_5C2320(v4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_5F6A1C(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = *(a2 + 14);
  prime = a2[4];
  if (prime == 1)
  {
    prime = 2;
LABEL_20:
    sub_B07C(a1 + 24, prime);
    goto LABEL_21;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(a2[4]);
    v6 = *(a1 + 32);
    v7 = prime >= *&v6;
    if (prime > *&v6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v6 = 0;
    v7 = 1;
    if (prime)
    {
      goto LABEL_20;
    }
  }

  if (!v7)
  {
    v8 = vcvtps_u32_f32(*(a1 + 48) / *(a1 + 56));
    if (*&v6 < 3uLL || (v9 = vcnt_s8(v6), v9.i16[0] = vaddlv_u8(v9), v9.u32[0] > 1uLL))
    {
      v8 = std::__next_prime(v8);
    }

    else
    {
      v10 = 1 << -__clz(v8 - 1);
      if (v8 >= 2)
      {
        v8 = v10;
      }
    }

    if (prime <= v8)
    {
      prime = v8;
    }

    if (prime < *&v6)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  for (i = a2[5]; i; i = *i)
  {
    sub_5F6E60((a1 + 24), (i + 16));
  }

  return a1;
}

void sub_5F6BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_5F6DDC(&a9);
  _Unwind_Resume(a1);
}

void sub_5F6BF0(_Unwind_Exception *a1)
{
  sub_5EC8BC(v2);
  sub_5EC97C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_5F6C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = *v5;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      v8 = *(v5 + 8);
      v7 = *(v5 + 16);
      if (v7 != v8)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 2) < 0x1555555555555556)
        {
          operator new();
        }

        sub_1794();
      }

      v6 = *(v5 + 32);
      *(a4 + 40) = *(v5 + 40);
      *(a4 + 32) = v6;
      v5 += 48;
      a4 += 48;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_5F6D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 16) = v12;
    operator delete(v12);
  }

  sub_5F6D78(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_5F6D78(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 40);
      if (v5)
      {
        *(v3 - 32) = v5;
        operator delete(v5);
      }

      v3 -= 48;
    }
  }

  return a1;
}

void ***sub_5F6DDC(void ***a1)
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
          v6 = *(v4 - 5);
          if (v6)
          {
            *(v4 - 4) = v6;
            operator delete(v6);
          }

          v4 -= 48;
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

void *sub_5F6E60(void *a1, int *a2)
{
  v2 = *a2;
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = *a2 % a1[1];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (result = *v7) == 0)
  {
LABEL_23:
    sub_5F7188();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = result[1];
      if (v10 == v3)
      {
        if (*(result + 4) == v2)
        {
          return result;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = result[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_5F7174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F72B0(va);
  _Unwind_Resume(a1);
}

void sub_5F728C(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 40) = v5;
    operator delete(v5);
  }

  sub_5F72B0(v1);
  _Unwind_Resume(a1);
}

void **sub_5F72B0(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[4];
      if (v4)
      {
        v2[5] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_5F73B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5F747C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5F74A0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
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
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
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
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_5F7700(a1, i + 2, i + 1);
  }

  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = *(a2 + 72);
  v11 = *(a2 + 48);
  if (v11 == 1)
  {
    v11 = 2;
LABEL_36:
    sub_B07C(a1 + 40, v11);
    goto LABEL_37;
  }

  if ((v11 & (v11 - 1)) != 0)
  {
    v11 = std::__next_prime(*(a2 + 48));
    v12 = *(a1 + 48);
    v13 = v11 >= *&v12;
    if (v11 > *&v12)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v12 = 0;
    v13 = 1;
    if (v11)
    {
      goto LABEL_36;
    }
  }

  if (!v13)
  {
    v14 = vcvtps_u32_f32(*(a1 + 64) / *(a1 + 72));
    if (*&v12 < 3uLL || (v15 = vcnt_s8(v12), v15.i16[0] = vaddlv_u8(v15), v15.u32[0] > 1uLL))
    {
      v14 = std::__next_prime(v14);
    }

    else
    {
      v16 = 1 << -__clz(v14 - 1);
      if (v14 >= 2)
      {
        v14 = v16;
      }
    }

    if (v11 <= v14)
    {
      v11 = v14;
    }

    if (v11 < *&v12)
    {
      goto LABEL_36;
    }
  }

LABEL_37:
  for (j = *(a2 + 56); j; j = *j)
  {
    sub_5F7A34((a1 + 40), j + 2, j + 1);
  }

  return a1;
}

void sub_5F76B8(_Unwind_Exception *a1)
{
  sub_11BD8(v2);
  sub_11BD8(v1);
  _Unwind_Resume(a1);
}

void *sub_5F7700(void *a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (v8[2] == v3)
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_12;
  }

  return v8;
}

void *sub_5F7A34(void *a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_23;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (v8[2] == v3)
        {
          return v8;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v9 >= *&v4)
    {
      v9 %= *&v4;
    }

    if (v9 != v6)
    {
      goto LABEL_23;
    }

LABEL_12:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_12;
  }

  return v8;
}

uint64_t sub_5F7D68(uint64_t a1, void *a2)
{
  v4 = a2 + 7463;
  v5 = (a1 + 7463);
  sub_4D4310(a1, a2);
  *(a1 + 1096) = *(a2 + 548);
  if (a1 == a2)
  {
    sub_5EDA08((a1 + 1320), a2 + 165);
    sub_5EDB04(a1 + 2408, (a2 + 301));
    sub_594568(a1 + 7232, (a2 + 904));
    goto LABEL_48;
  }

  sub_5F8A38((a1 + 1104), a2[138], a2[139], 0x3795876FF3795877 * ((a2[139] - a2[138]) >> 3));
  sub_5F8A38((a1 + 1128), a2[141], a2[142], 0x3795876FF3795877 * ((a2[142] - a2[141]) >> 3));
  sub_601A50((a1 + 1152), a2[144], a2[145], 0x2E8BA2E8BA2E8BA3 * ((a2[145] - a2[144]) >> 4));
  sub_601A50((a1 + 1176), a2[147], a2[148], 0x2E8BA2E8BA2E8BA3 * ((a2[148] - a2[147]) >> 4));
  sub_146EC((a1 + 1200), a2[150], a2[151], (a2[151] - a2[150]) >> 2);
  sub_146EC((a1 + 1224), a2[153], a2[154], (a2[154] - a2[153]) >> 2);
  sub_5FD8A0(a1 + 1248, a2[156], a2[157], 0xCCCCCCCCCCCCCCCDLL * ((a2[157] - a2[156]) >> 5));
  v6 = (a1 + 1272);
  v7 = *(a2 + 1295);
  if (*(a1 + 1295) < 0)
  {
    if (v7 >= 0)
    {
      v12 = a2 + 159;
    }

    else
    {
      v12 = a2[159];
    }

    if (v7 >= 0)
    {
      v13 = *(a2 + 1295);
    }

    else
    {
      v13 = a2[160];
    }

    sub_13B38(v6, v12, v13);
    v9 = (a1 + 1296);
    v10 = a2 + 162;
    v11 = *(a2 + 1319);
    if (*(a1 + 1319) < 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ((*(a2 + 1295) & 0x80) == 0)
  {
    v8 = *(a2 + 159);
    *(a1 + 1288) = a2[161];
    *v6 = v8;
    v9 = (a1 + 1296);
    v10 = a2 + 162;
    v11 = *(a2 + 1319);
    if (*(a1 + 1319) < 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    if ((v11 & 0x80) != 0)
    {
      sub_13A68(v9, a2[162], a2[163]);
    }

    else
    {
      v14 = *v10;
      v9[2] = v10[2];
      *v9 = v14;
    }

    goto LABEL_25;
  }

  sub_13A68(v6, a2[159], a2[160]);
  v9 = (a1 + 1296);
  v10 = a2 + 162;
  v11 = *(a2 + 1319);
  if ((*(a1 + 1319) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  if ((v11 & 0x80u) == 0)
  {
    v15 = v10;
  }

  else
  {
    v15 = a2[162];
  }

  if ((v11 & 0x80u) == 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = a2[163];
  }

  sub_13B38(v9, v15, v16);
LABEL_25:
  sub_5EDA08((a1 + 1320), a2 + 165);
  sub_5EDB04(a1 + 2408, (a2 + 301));
  sub_74300((a1 + 7208), a2[901], a2[902], 0xAAAAAAAAAAAAAAABLL * ((a2[902] - a2[901]) >> 3));
  sub_594568(a1 + 7232, (a2 + 904));
  sub_5FDB48(a1 + 7392, a2[924], a2[925], 0xAAAAAAAAAAAAAAABLL * ((a2[925] - a2[924]) >> 3));
  sub_5D8C78((a1 + 7416), a2[927], a2[928], 0xAF8AF8AF8AF8AF8BLL * ((a2[928] - a2[927]) >> 5));
  v17 = (a1 + 7440);
  v18 = *v4;
  if (*v5 < 0)
  {
    if (v18 >= 0)
    {
      v23 = a2 + 930;
    }

    else
    {
      v23 = a2[930];
    }

    if (v18 >= 0)
    {
      v24 = *v4;
    }

    else
    {
      v24 = a2[931];
    }

    sub_13B38(v17, v23, v24);
    v20 = a1 + 7464;
    v21 = a2 + 933;
    v22 = v4[24];
    if (v5[24] < 0)
    {
      goto LABEL_39;
    }
  }

  else if ((*v4 & 0x80) != 0)
  {
    sub_13A68(v17, a2[930], a2[931]);
    v20 = a1 + 7464;
    v21 = a2 + 933;
    v22 = v4[24];
    if (v5[24] < 0)
    {
LABEL_39:
      if ((v22 & 0x80u) == 0)
      {
        v26 = v21;
      }

      else
      {
        v26 = a2[933];
      }

      if ((v22 & 0x80u) == 0)
      {
        v27 = v22;
      }

      else
      {
        v27 = a2[934];
      }

      sub_13B38(v20, v26, v27);
      goto LABEL_47;
    }
  }

  else
  {
    v19 = *(a2 + 465);
    *(a1 + 7456) = a2[932];
    *v17 = v19;
    v20 = a1 + 7464;
    v21 = a2 + 933;
    v22 = v4[24];
    if (v5[24] < 0)
    {
      goto LABEL_39;
    }
  }

  if ((v22 & 0x80) != 0)
  {
    sub_13A68(v20, a2[933], a2[934]);
  }

  else
  {
    v25 = *v21;
    *(v20 + 16) = v21[2];
    *v20 = v25;
  }

LABEL_47:
  sub_74300((a1 + 7488), a2[936], a2[937], 0xAAAAAAAAAAAAAAABLL * ((a2[937] - a2[936]) >> 3));
  sub_5FDD68((a1 + 7512), a2[939], a2[940], 0xAF8AF8AF8AF8AF8BLL * ((a2[940] - a2[939]) >> 5));
  sub_5FE12C((a1 + 7536), a2[942], a2[943], 0x6DB6DB6DB6DB6DB7 * ((a2[943] - a2[942]) >> 6));
  sub_5FE64C((a1 + 7560), a2[945], a2[946], 0x77A04C8F8D28AC43 * ((a2[946] - a2[945]) >> 3));
LABEL_48:
  v28 = a2 + 1533;
  v29 = (a1 + 12264);
  sub_5F8954(a1 + 7584, (a2 + 948));
  sub_5F8954(a1 + 8440, (a2 + 1055));
  sub_594568(a1 + 9296, (a2 + 1162));
  sub_594568(a1 + 9456, (a2 + 1182));
  sub_594568(a1 + 9616, (a2 + 1202));
  sub_594568(a1 + 9776, (a2 + 1222));
  sub_594568(a1 + 9936, (a2 + 1242));
  if (a1 == a2)
  {
    *(v5 + 2657) = *(v4 + 2657);
    *(a1 + 10248) = *(a2 + 1281);
    *(a1 + 10312) = *(a2 + 2578);
    sub_5FFC40(a1 + 10344, (a2 + 1293));
  }

  else
  {
    sub_5FE8EC((a1 + 10096), a2[1262], a2[1263], 0xEF7BDEF7BDEF7BDFLL * ((a2[1263] - a2[1262]) >> 3));
    *(v5 + 2657) = *(v4 + 2657);
    sub_5FED44((a1 + 10128), a2[1266], a2[1267], 0xCCCCCCCCCCCCCCCDLL * ((a2[1267] - a2[1266]) >> 3));
    sub_5FF000(a1 + 10152, a2[1269], a2[1270], 0x4FCACE213F2B3885 * ((a2[1270] - a2[1269]) >> 3));
    sub_5FF000(a1 + 10176, a2[1272], a2[1273], 0x4FCACE213F2B3885 * ((a2[1273] - a2[1272]) >> 3));
    sub_5FF000(a1 + 10200, a2[1275], a2[1276], 0x4FCACE213F2B3885 * ((a2[1276] - a2[1275]) >> 3));
    v30 = (a1 + 10224);
    v31 = v4[2784];
    if (v5[2784] < 0)
    {
      if (v31 >= 0)
      {
        v33 = a2 + 1278;
      }

      else
      {
        v33 = a2[1278];
      }

      if (v31 >= 0)
      {
        v34 = v4[2784];
      }

      else
      {
        v34 = a2[1279];
      }

      sub_13B38(v30, v33, v34);
    }

    else if ((v4[2784] & 0x80) != 0)
    {
      sub_13A68(v30, a2[1278], a2[1279]);
    }

    else
    {
      v32 = *(a2 + 639);
      *(a1 + 10240) = a2[1280];
      *v30 = v32;
    }

    *(a1 + 10248) = *(a2 + 1281);
    sub_5FF3AC((a1 + 10264), a2[1283], a2[1284], 0xAAAAAAAAAAAAAAABLL * ((a2[1284] - a2[1283]) >> 3));
    sub_5FF53C((a1 + 10288), a2[1286], a2[1287], (a2[1287] - a2[1286]) >> 6);
    *(a1 + 10312) = *(a2 + 2578);
    sub_5FF834((a1 + 10320), a2[1290], a2[1291], 0x4EC4EC4EC4EC4EC5 * ((a2[1291] - a2[1290]) >> 3));
    sub_5FFC40(a1 + 10344, (a2 + 1293));
    sub_516FFC((a1 + 10784), a2[1348], a2[1349], 0x8E38E38E38E38E39 * ((a2[1349] - a2[1348]) >> 3));
  }

  *(a1 + 10808) = *(a2 + 2702);
  sub_594568(a1 + 10816, (a2 + 1352));
  sub_5410A0(a1 + 10976, (a2 + 1372));
  sub_5FFC40(a1 + 11088, (a2 + 1386));
  if (a1 == a2)
  {
    *(a1 + 11552) = *(a2 + 2888);
    sub_594568(a1 + 11560, (a2 + 1445));
    sub_5410A0(a1 + 11720, (a2 + 1465));
    *(a1 + 11976) = a2[1497];
    *(a1 + 12008) = *(a2 + 1501);
    *(a1 + 12048) = a2[1506];
    sub_594568(a1 + 12080, (a2 + 1510));
    *v29 = *v28;
    *(a1 + 12368) = a2[1546];
    *(a1 + 12496) = *(a2 + 12496);
    *(a1 + 12536) = *(a2 + 12536);
  }

  else
  {
    sub_516FFC((a1 + 11528), a2[1441], a2[1442], 0x8E38E38E38E38E39 * ((a2[1442] - a2[1441]) >> 3));
    *(a1 + 11552) = *(a2 + 2888);
    sub_594568(a1 + 11560, (a2 + 1445));
    sub_5410A0(a1 + 11720, (a2 + 1465));
    sub_384B90((a1 + 11832), a2[1479], a2[1480], a2[1480] - a2[1479]);
    sub_52ABAC((a1 + 11856), a2[1482], a2[1483], 0xCF3CF3CF3CF3CF3DLL * ((a2[1483] - a2[1482]) >> 3));
    sub_52ABAC((a1 + 11880), a2[1485], a2[1486], 0xCF3CF3CF3CF3CF3DLL * ((a2[1486] - a2[1485]) >> 3));
    sub_52ABAC((a1 + 11904), a2[1488], a2[1489], 0xCF3CF3CF3CF3CF3DLL * ((a2[1489] - a2[1488]) >> 3));
    sub_52ABAC((a1 + 11928), a2[1491], a2[1492], 0xCF3CF3CF3CF3CF3DLL * ((a2[1492] - a2[1491]) >> 3));
    sub_602DCC((a1 + 11952), a2[1494], a2[1495], (a2[1495] - a2[1494]) >> 5);
    *(a1 + 11976) = a2[1497];
    sub_5D8AE8((a1 + 11984), a2[1498], a2[1499], 0xAAAAAAAAAAAAAAABLL * ((a2[1499] - a2[1498]) >> 3));
    *(a1 + 12008) = *(a2 + 1501);
    sub_4F3B08((a1 + 12024), a2[1503], a2[1504], (a2[1504] - a2[1503]) >> 4);
    *(a1 + 12048) = a2[1506];
    sub_6002A4(a1 + 12056, a2[1507], a2[1508], 0x2E8BA2E8BA2E8BA3 * ((a2[1508] - a2[1507]) >> 4));
    sub_594568(a1 + 12080, (a2 + 1510));
    sub_600578((a1 + 12240), a2[1530], a2[1531], 0xAAAAAAAAAAAAAAABLL * ((a2[1531] - a2[1530]) >> 4));
    *v29 = *v28;
    sub_60070C((a1 + 12272), a2[1534], a2[1535], 0x4FCACE213F2B3885 * ((a2[1535] - a2[1534]) >> 3));
    sub_52EE18((a1 + 12296), a2[1537], a2[1538], 0xCCCCCCCCCCCCCCCDLL * ((a2[1538] - a2[1537]) >> 3));
    v35 = (a1 + 12320);
    v36 = *(a2 + 12343);
    if (*(a1 + 12343) < 0)
    {
      if (v36 >= 0)
      {
        v38 = a2 + 1540;
      }

      else
      {
        v38 = a2[1540];
      }

      if (v36 >= 0)
      {
        v39 = *(a2 + 12343);
      }

      else
      {
        v39 = a2[1541];
      }

      sub_13B38(v35, v38, v39);
    }

    else if ((*(a2 + 12343) & 0x80) != 0)
    {
      sub_13A68(v35, a2[1540], a2[1541]);
    }

    else
    {
      v37 = *(a2 + 770);
      *(a1 + 12336) = a2[1542];
      *v35 = v37;
    }

    sub_4F3B08((a1 + 12344), a2[1543], a2[1544], (a2[1544] - a2[1543]) >> 4);
    *(a1 + 12368) = a2[1546];
    sub_600A2C((a1 + 12376), a2[1547], a2[1548], (a2[1548] - a2[1547]) >> 4);
    sub_600BE8((a1 + 12400), a2[1550], a2[1551], 0xAAAAAAAAAAAAAAABLL * ((a2[1551] - a2[1550]) >> 4));
    *(a1 + 12456) = *(a2 + 3114);
    sub_600EA0(a1 + 12424, a2[1555], 0);
    v40 = (a1 + 12472);
    v41 = *(a2 + 12495);
    if (*(a1 + 12495) < 0)
    {
      if (v41 >= 0)
      {
        v43 = a2 + 1559;
      }

      else
      {
        v43 = a2[1559];
      }

      if (v41 >= 0)
      {
        v44 = *(a2 + 12495);
      }

      else
      {
        v44 = a2[1560];
      }

      sub_13B38(v40, v43, v44);
    }

    else if ((*(a2 + 12495) & 0x80) != 0)
    {
      sub_13A68(v40, a2[1559], a2[1560]);
    }

    else
    {
      v42 = *(a2 + 1559);
      *(a1 + 12488) = a2[1561];
      *v40 = v42;
    }

    *(a1 + 12496) = *(a2 + 12496);
    v45 = (a1 + 12512);
    v46 = *(a2 + 12535);
    if (*(a1 + 12535) < 0)
    {
      if (v46 >= 0)
      {
        v48 = a2 + 1564;
      }

      else
      {
        v48 = a2[1564];
      }

      if (v46 >= 0)
      {
        v49 = *(a2 + 12535);
      }

      else
      {
        v49 = a2[1565];
      }

      sub_13B38(v45, v48, v49);
    }

    else if ((*(a2 + 12535) & 0x80) != 0)
    {
      sub_13A68(v45, a2[1564], a2[1565]);
    }

    else
    {
      v47 = *(a2 + 782);
      *(a1 + 12528) = a2[1566];
      *v45 = v47;
    }

    *(a1 + 12536) = *(a2 + 12536);
    *(a1 + 12576) = *(a2 + 3144);
    sub_601264(a1 + 12544, a2[1570], 0);
    *(a1 + 12616) = *(a2 + 3154);
    sub_601910(a1 + 12584, a2[1575], 0);
  }

  sub_3E428((a1 + 12624), (a2 + 1578));
  *(a1 + 12648) = *(a2 + 12648);
  return a1;
}

uint64_t sub_5F8954(uint64_t a1, uint64_t a2)
{
  sub_5F9D98(a1, a2);
  if (a1 == a2)
  {
    *(a1 + 448) = *(a2 + 448);
  }

  else
  {
    sub_74300((a1 + 384), *(a2 + 384), *(a2 + 392), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 392) - *(a2 + 384)) >> 3));
    *(a1 + 440) = *(a2 + 440);
    sub_5FA69C(a1 + 408, *(a2 + 424), 0);
    *(a1 + 448) = *(a2 + 448);
    sub_74300((a1 + 456), *(a2 + 456), *(a2 + 464), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 464) - *(a2 + 456)) >> 3));
    *(a1 + 512) = *(a2 + 512);
    sub_5FA69C(a1 + 480, *(a2 + 496), 0);
  }

  *(a1 + 520) = *(a2 + 520);
  sub_594568(a1 + 528, a2 + 528);
  sub_594568(a1 + 688, a2 + 688);
  sub_594EF8((a1 + 848), (a2 + 848));
  return a1;
}

void **sub_5F8A38(void **result, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x3795876FF3795877 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_5C25A8(v10 - 2616);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x190D4F120190D4)
    {
      v12 = 0x3795876FF3795877 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0xC86A78900C86ALL)
      {
        v14 = 0x190D4F120190D4;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x190D4F120190D4)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = &v15[-v8];
  if (0x3795876FF3795877 * (&v15[-v8] >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5F8CD8(v8, v5);
        v5 += 2616;
        v8 += 2616;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 2616;
      result = sub_5C25A8(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = &v16[a2];
    if (v15 != v8)
    {
      do
      {
        result = sub_5F8CD8(v8, v5);
        v5 += 2616;
        v8 += 2616;
        v16 -= 2616;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_5EF290(&v15[v19], &v17[v19]);
        v19 += 2616;
      }

      while (&v17[v19] != a3);
      v18 = &v15[v19];
    }

    v6[1] = v18;
  }

  return result;
}

void sub_5F8CAC(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 2616;
    v7 = -v4;
    do
    {
      v6 = sub_5C25A8(v6) - 2616;
      v7 += 2616;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_5F8CD8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 80) = v7;
  if (a1 == a2)
  {
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 200) = *(a2 + 200);
    v19 = *(a2 + 208);
    v20 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v20;
    *(a1 + 208) = v19;
    v21 = *(a2 + 256);
    v22 = *(a2 + 272);
    v23 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v23;
    *(a1 + 256) = v21;
    *(a1 + 272) = v22;
    v24 = *(a2 + 320);
    v25 = *(a2 + 336);
    v26 = *(a2 + 352);
    *(a1 + 366) = *(a2 + 366);
    *(a1 + 336) = v25;
    *(a1 + 352) = v26;
    *(a1 + 320) = v24;
    v27 = *(a2 + 384);
    *(a1 + 386) = *(a2 + 386);
    *(a1 + 384) = v27;
  }

  else
  {
    sub_30945C((a1 + 136), *(a2 + 136), *(a2 + 144), (*(a2 + 144) - *(a2 + 136)) >> 3);
    *(a1 + 160) = *(a2 + 160);
    sub_596098((a1 + 176), *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
    *(a1 + 200) = *(a2 + 200);
    v10 = *(a2 + 208);
    v11 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v11;
    *(a1 + 208) = v10;
    v12 = *(a2 + 256);
    v13 = *(a2 + 272);
    v14 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v14;
    *(a1 + 256) = v12;
    *(a1 + 272) = v13;
    v15 = *(a2 + 320);
    v16 = *(a2 + 336);
    v17 = *(a2 + 352);
    *(a1 + 366) = *(a2 + 366);
    *(a1 + 336) = v16;
    *(a1 + 352) = v17;
    *(a1 + 320) = v15;
    v18 = *(a2 + 384);
    *(a1 + 386) = *(a2 + 386);
    *(a1 + 384) = v18;
    sub_5F9374(a1 + 392, *(a2 + 392), *(a2 + 400), 0x86BCA1AF286BCA1BLL * ((*(a2 + 400) - *(a2 + 392)) >> 3));
    sub_5F9374(a1 + 416, *(a2 + 416), *(a2 + 424), 0x86BCA1AF286BCA1BLL * ((*(a2 + 424) - *(a2 + 416)) >> 3));
    sub_5F9374(a1 + 440, *(a2 + 440), *(a2 + 448), 0x86BCA1AF286BCA1BLL * ((*(a2 + 448) - *(a2 + 440)) >> 3));
  }

  sub_52CB8C((a1 + 464), (a2 + 464));
  v28 = *(a2 + 632);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 632) = v28;
  v30 = *(a2 + 664);
  v29 = *(a2 + 680);
  v31 = *(a2 + 648);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 664) = v30;
  *(a1 + 680) = v29;
  *(a1 + 648) = v31;
  *(a1 + 704) = *(a2 + 704);
  if (a1 == a2)
  {
    *(a1 + 784) = *(a2 + 784);
    *(a1 + 816) = *(a2 + 816);
  }

  else
  {
    sub_31F64((a1 + 712), *(a2 + 712), *(a2 + 720), (*(a2 + 720) - *(a2 + 712)) >> 3);
    sub_31F64((a1 + 736), *(a2 + 736), *(a2 + 744), (*(a2 + 744) - *(a2 + 736)) >> 3);
    sub_31F64((a1 + 760), *(a2 + 760), *(a2 + 768), (*(a2 + 768) - *(a2 + 760)) >> 3);
    *(a1 + 784) = *(a2 + 784);
    sub_52EE18((a1 + 792), *(a2 + 792), *(a2 + 800), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 800) - *(a2 + 792)) >> 3));
    *(a1 + 816) = *(a2 + 816);
    sub_5F9710(a1 + 824, *(a2 + 824), *(a2 + 832), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 832) - *(a2 + 824)) >> 5));
  }

  sub_52CB8C((a1 + 848), (a2 + 848));
  *(a1 + 1000) = *(a2 + 1000);
  v32 = *(a2 + 1008);
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1008) = v32;
  sub_5F8954(a1 + 1032, a2 + 1032);
  if (a1 == a2)
  {
    v35 = *(a2 + 2056);
    *(a1 + 2058) = *(a2 + 2058);
    *(a1 + 2056) = v35;
    v36 = *(a2 + 2104);
    *(a1 + 2088) = *(a2 + 2088);
    *(a1 + 2104) = v36;
  }

  else
  {
    sub_5FDD68((a1 + 1888), *(a2 + 1888), *(a2 + 1896), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 1896) - *(a2 + 1888)) >> 5));
    sub_5FE12C((a1 + 1912), *(a2 + 1912), *(a2 + 1920), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1920) - *(a2 + 1912)) >> 6));
    sub_5F99B8((a1 + 1936), *(a2 + 1936), *(a2 + 1944), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 1944) - *(a2 + 1936)) >> 6));
    sub_5FAFC4((a1 + 1960), *(a2 + 1960), *(a2 + 1968), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1968) - *(a2 + 1960)) >> 3));
    sub_5FB250((a1 + 1984), *(a2 + 1984), *(a2 + 1992), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1992) - *(a2 + 1984)) >> 3));
    sub_5FB61C((a1 + 2008), *(a2 + 2008), *(a2 + 2016), 0x4FA4FA4FA4FA4FA5 * ((*(a2 + 2016) - *(a2 + 2008)) >> 3));
    sub_5FC968((a1 + 2032), *(a2 + 2032), *(a2 + 2040), 0xF0F0F0F0F0F0F0F1 * ((*(a2 + 2040) - *(a2 + 2032)) >> 4));
    v33 = *(a2 + 2056);
    *(a1 + 2058) = *(a2 + 2058);
    *(a1 + 2056) = v33;
    sub_5FCEE0((a1 + 2064), *(a2 + 2064), *(a2 + 2072), 0x84BDA12F684BDA13 * ((*(a2 + 2072) - *(a2 + 2064)) >> 4));
    v34 = *(a2 + 2104);
    *(a1 + 2088) = *(a2 + 2088);
    *(a1 + 2104) = v34;
    sub_5FD2CC((a1 + 2120), *(a2 + 2120), *(a2 + 2128), 0xD37A6F4DE9BD37A7 * ((*(a2 + 2128) - *(a2 + 2120)) >> 3));
  }

  v37 = *(a2 + 2144);
  v38 = *(a2 + 2160);
  *(a1 + 2169) = *(a2 + 2169);
  *(a1 + 2160) = v38;
  *(a1 + 2144) = v37;
  *(a1 + 2192) = *(a2 + 2192);
  v39 = *(a2 + 2208);
  *(a1 + 2224) = *(a2 + 2224);
  *(a1 + 2208) = v39;
  sub_5F925C(a1 + 2232, a2 + 2232);
  *(a1 + 2416) = *(a2 + 2416);
  if (a1 == a2)
  {
    v42 = *(a2 + 2448);
    v43 = *(a2 + 2464);
    *(a1 + 2480) = *(a2 + 2480);
    *(a1 + 2464) = v43;
    *(a1 + 2448) = v42;
  }

  else
  {
    sub_4F3B08((a1 + 2424), *(a2 + 2424), *(a2 + 2432), (*(a2 + 2432) - *(a2 + 2424)) >> 4);
    v40 = *(a2 + 2448);
    v41 = *(a2 + 2464);
    *(a1 + 2480) = *(a2 + 2480);
    *(a1 + 2464) = v41;
    *(a1 + 2448) = v40;
    sub_4D88D0((a1 + 2488), *(a2 + 2488), *(a2 + 2496), (*(a2 + 2496) - *(a2 + 2488)) >> 4);
    sub_4D88D0((a1 + 2512), *(a2 + 2512), *(a2 + 2520), (*(a2 + 2520) - *(a2 + 2512)) >> 4);
  }

  v44 = *(a2 + 2536);
  v45 = *(a2 + 2568);
  *(a1 + 2552) = *(a2 + 2552);
  *(a1 + 2568) = v45;
  *(a1 + 2536) = v44;
  v46 = *(a2 + 2584);
  *(a1 + 2593) = *(a2 + 2593);
  *(a1 + 2584) = v46;
  return a1;
}

uint64_t sub_5F925C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v6 = *(a2 + 32);
    *(a1 + 37) = *(a2 + 37);
    *(a1 + 32) = v6;
  }

  else
  {
    v4 = *(a2 + 31);
    if (*(a1 + 31) < 0)
    {
      if (v4 >= 0)
      {
        v7 = (a2 + 8);
      }

      else
      {
        v7 = *(a2 + 8);
      }

      if (v4 >= 0)
      {
        v8 = *(a2 + 31);
      }

      else
      {
        v8 = *(a2 + 16);
      }

      sub_13B38((a1 + 8), v7, v8);
    }

    else if ((*(a2 + 31) & 0x80) != 0)
    {
      sub_13A68((a1 + 8), *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
    }

    v9 = *(a2 + 32);
    *(a1 + 37) = *(a2 + 37);
    *(a1 + 32) = v9;
    v10 = *(a2 + 79);
    if (*(a1 + 79) < 0)
    {
      if (v10 >= 0)
      {
        v12 = (a2 + 56);
      }

      else
      {
        v12 = *(a2 + 56);
      }

      if (v10 >= 0)
      {
        v13 = *(a2 + 79);
      }

      else
      {
        v13 = *(a2 + 64);
      }

      sub_13B38((a1 + 56), v12, v13);
    }

    else if ((*(a2 + 79) & 0x80) != 0)
    {
      sub_13A68((a1 + 56), *(a2 + 56), *(a2 + 64));
    }

    else
    {
      v11 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v11;
    }
  }

  v14 = *(a2 + 80);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 80) = v14;
  sub_5FD6D4(a1 + 88, a2 + 88);
  return a1;
}

void sub_5F9374(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0x86BCA1AF286BCA1BLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      sub_5ED940(a1, *a1);
      operator delete(*a1);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x1AF286BCA1AF286)
    {
      v10 = 0x86BCA1AF286BCA1BLL * (v7 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0xD79435E50D7943)
      {
        v12 = 0x1AF286BCA1AF286;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x1AF286BCA1AF286)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = *(a1 + 8);
  v14 = v13 - v8;
  if (0x86BCA1AF286BCA1BLL * (v13 - v8) >= a4)
  {
    while (v5 != a3)
    {
      sub_52CB8C(v8, v5);
      v5 = (v5 + 152);
      v8 += 19;
    }

    sub_5ED940(a1, v8);
  }

  else
  {
    v15 = (a2 + v14);
    if (v13 != v8)
    {
      do
      {
        sub_52CB8C(v8, v5);
        v5 = (v5 + 152);
        v8 += 19;
        v14 -= 152;
      }

      while (v14);
      v13 = *(a1 + 8);
    }

    v17 = v13;
    v16 = v13;
    if (v15 != a3)
    {
      v16 = v13;
      do
      {
        sub_5139E8(v16, v15);
        v15 = (v15 + 152);
        v16 = (v17 + 19);
        v17 += 19;
      }

      while (v15 != a3);
    }

    *(a1 + 8) = v16;
  }
}

void sub_5F95D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5EFC4C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5F95EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5EFC4C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_5F9604(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = a1 + 8;
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a2 + 31);
  if (*(a1 + 31) < 0)
  {
    if ((v5 & 0x80u) == 0)
    {
      v9 = (a2 + 8);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    if ((v5 & 0x80u) == 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = *(a2 + 16);
    }

    sub_13B38(v3, v9, v10);
    v7 = (a2 + 32);
    v8 = *(a2 + 55);
    if (*(a1 + 55) < 0)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if ((v5 & 0x80) == 0)
  {
    v6 = *(a2 + 8);
    *(v3 + 16) = *(a2 + 24);
    *v3 = v6;
    v7 = (a2 + 32);
    v8 = *(a2 + 55);
    if (*(a1 + 55) < 0)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  sub_13A68(v3, *(a2 + 8), *(a2 + 16));
  v7 = (a2 + 32);
  v8 = *(a2 + 55);
  if ((*(a1 + 55) & 0x80000000) == 0)
  {
LABEL_13:
    if ((v8 & 0x80) != 0)
    {
      sub_13A68((a1 + 32), *(a2 + 32), *(a2 + 40));
      return a1;
    }

    v11 = *v7;
    *(a1 + 48) = v7[2];
    *(a1 + 32) = v11;
    return a1;
  }

LABEL_17:
  if ((v8 & 0x80u) == 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(a2 + 32);
  }

  if ((v8 & 0x80u) == 0)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(a2 + 40);
  }

  sub_13B38((a1 + 32), v13, v14);
  return a1;
}

void sub_5F9710(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 5) < a4)
  {
    if (v8)
    {
      v9 = a4;
      sub_5ED268(a1, *a1);
      operator delete(*a1);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x199999999999999)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 5);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0xCCCCCCCCCCCCCCLL)
      {
        v12 = 0x199999999999999;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x199999999999999)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = *(a1 + 8);
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - v8) >> 5) >= a4)
  {
    while (v5 != a3)
    {
      sub_52CB8C(v8, v5);
      v8[19] = *(v5 + 19);
      v5 += 10;
      v8 += 20;
    }

    sub_5ED268(a1, v8);
  }

  else
  {
    v14 = (a2 + v13 - v8);
    if (v13 != v8)
    {
      do
      {
        sub_52CB8C(v8, v5);
        v8[19] = *(v5 + 19);
        v5 += 10;
        v8 += 20;
      }

      while (v5 != v14);
      v13 = *(a1 + 8);
    }

    v16 = v13;
    v15 = v13;
    if (v14 != a3)
    {
      v15 = v13;
      do
      {
        *(sub_5139E8(v15, v14) + 152) = *(v14 + 19);
        v14 += 10;
        v15 = (v16 + 20);
        v16 += 20;
      }

      while (v14 != a3);
    }

    *(a1 + 8) = v15;
  }
}

void sub_5F9988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5EFFF4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5F99A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5EFFF4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void **sub_5F99B8(void **result, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x2E8BA2E8BA2E8BA3 * ((v7 - *result) >> 6) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_5C3378((v10 - 88));
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x5D1745D1745D17)
    {
      v12 = 0x2E8BA2E8BA2E8BA3 * (v7 >> 6);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x2E8BA2E8BA2E8BLL)
      {
        v14 = 0x5D1745D1745D17;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x5D1745D1745D17)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = &v15[-v8];
  if (0x2E8BA2E8BA2E8BA3 * (&v15[-v8] >> 6) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5F9C58(v8, v5);
        v5 += 704;
        v8 += 704;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 704;
      result = sub_5C3378(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = &v16[a2];
    if (v15 != v8)
    {
      do
      {
        result = sub_5F9C58(v8, v5);
        v5 += 704;
        v8 += 704;
        v16 -= 704;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_5F01C8(&v15[v19], &v17[v19]);
        v19 += 704;
      }

      while (&v17[v19] != a3);
      v18 = &v15[v19];
    }

    v6[1] = v18;
  }

  return result;
}

void sub_5F9C2C(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = (v3 - 704);
    v7 = -v4;
    do
    {
      v6 = sub_5C3378(v6) - 88;
      v7 += 704;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_5F9C58(uint64_t a1, uint64_t a2)
{
  sub_5F9D98(a1, a2);
  *(a1 + 380) = *(a2 + 380);
  sub_594568(a1 + 384, a2 + 384);
  if (a1 == a2)
  {
    *(a1 + 632) = *(a2 + 632);
    return a1;
  }

  else
  {
    v4 = (a1 + 544);
    v5 = *(a2 + 567);
    if (*(a1 + 567) < 0)
    {
      if (v5 >= 0)
      {
        v8 = (a2 + 544);
      }

      else
      {
        v8 = *(a2 + 544);
      }

      if (v5 >= 0)
      {
        v9 = *(a2 + 567);
      }

      else
      {
        v9 = *(a2 + 552);
      }

      sub_13B38(v4, v8, v9);
    }

    else if ((*(a2 + 567) & 0x80) != 0)
    {
      sub_13A68(v4, *(a2 + 544), *(a2 + 552));
    }

    else
    {
      v6 = *(a2 + 544);
      *(a1 + 560) = *(a2 + 560);
      *v4 = v6;
    }

    sub_74300((a1 + 568), *(a2 + 568), *(a2 + 576), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 576) - *(a2 + 568)) >> 3));
    *(a1 + 624) = *(a2 + 624);
    sub_5FA69C(a1 + 592, *(a2 + 608), 0);
    *(a1 + 632) = *(a2 + 632);
    *(a1 + 672) = *(a2 + 672);
    sub_5FAA80(a1 + 640, *(a2 + 656), 0);
    sub_5FAE24((a1 + 680), *(a2 + 680), *(a2 + 688), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 688) - *(a2 + 680)) >> 3));
    return a1;
  }
}

uint64_t sub_5F9D98(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 == a2)
  {
    v14 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v14;
    v15 = *(a2 + 64);
    v16 = *(a2 + 80);
    v17 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 80) = v16;
    *(a1 + 96) = v17;
    *(a1 + 64) = v15;
    v18 = *(a2 + 120);
    v19 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v19;
    *(a1 + 120) = v18;
    v20 = *(a2 + 208);
    v21 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v21;
    *(a1 + 208) = v20;
    v22 = *(a2 + 256);
    v23 = *(a2 + 272);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 256) = v22;
    *(a1 + 272) = v23;
    *(a1 + 320) = *(a2 + 320);
  }

  else
  {
    sub_5F9F30((a1 + 8), *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 5));
    v4 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v4;
    v5 = *(a2 + 64);
    v6 = *(a2 + 80);
    v7 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 80) = v6;
    *(a1 + 96) = v7;
    *(a1 + 64) = v5;
    v8 = *(a2 + 120);
    v9 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v9;
    *(a1 + 120) = v8;
    sub_4D88D0((a1 + 160), *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 4);
    sub_4D88D0((a1 + 184), *(a2 + 184), *(a2 + 192), (*(a2 + 192) - *(a2 + 184)) >> 4);
    v10 = *(a2 + 208);
    v11 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v11;
    *(a1 + 208) = v10;
    v12 = *(a2 + 256);
    v13 = *(a2 + 272);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 256) = v12;
    *(a1 + 272) = v13;
    sub_5FA1C0(a1 + 296, *(a2 + 296), *(a2 + 304), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 304) - *(a2 + 296)) >> 3));
    *(a1 + 320) = *(a2 + 320);
    sub_146EC((a1 + 328), *(a2 + 328), *(a2 + 336), (*(a2 + 336) - *(a2 + 328)) >> 2);
  }

  v24 = *(a2 + 352);
  *(a1 + 361) = *(a2 + 361);
  *(a1 + 352) = v24;
  return a1;
}

uint64_t *sub_5F9F30(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 5) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_53A868(v10 - 160);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x199999999999999)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 5);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0xCCCCCCCCCCCCCCLL)
      {
        v14 = 0x199999999999999;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x199999999999999)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v15 - v8) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_594568(v8, v5);
        v5 += 160;
        v8 += 160;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 160;
      result = sub_53A868(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = a2 + v16;
    if (v15 != v8)
    {
      do
      {
        result = sub_594568(v8, v5);
        v5 += 160;
        v8 += 160;
        v16 -= 160;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_55BD50(v15 + v19, v17 + v19);
        v19 += 160;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_5FA194(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 160;
    v7 = -v4;
    do
    {
      v6 = sub_53A868(v6) - 160;
      v7 += 160;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_5FA1C0(uint64_t a1, void ***a2, void ***a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      for (i = *(a1 + 8); i != v8; sub_5ED0A8(a1, i))
      {
        i -= 13;
      }

      *(a1 + 8) = v8;
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0x276276276276276)
    {
      v21 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 3);
      v22 = 2 * v21;
      if (2 * v21 <= a4)
      {
        v22 = a4;
      }

      if (v21 >= 0x13B13B13B13B13BLL)
      {
        v23 = 0x276276276276276;
      }

      else
      {
        v23 = v22;
      }

      if (v23 <= 0x276276276276276)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0x4EC4EC4EC4EC4EC5 * (v11 - v8) >= a4)
  {
    if (a2 != a3)
    {
      v24 = 0;
      do
      {
        v26 = &v8[v24];
        if (a2 != v8)
        {
          sub_74300(&v8[v24], a2[v24], a2[v24 + 1], 0xAAAAAAAAAAAAAAABLL * (a2[v24 + 1] - a2[v24]));
          *(v26 + 14) = a2[v24 + 7];
          sub_5FA69C((v26 + 3), a2[v24 + 5], 0);
        }

        *(v26 + 64) = a2[v24 + 8];
        *(v26 + 18) = a2[v24 + 9];
        v28 = a2[v24 + 10];
        v27 = a2[v24 + 11];
        if (v27)
        {
          atomic_fetch_add_explicit(v27 + 1, 1uLL, memory_order_relaxed);
        }

        v26[10] = v28;
        v29 = &v8[v24];
        v30 = v8[v24 + 11];
        v8[v24 + 11] = v27;
        if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v30->__on_zero_shared)(v30);
          std::__shared_weak_count::__release_weak(v30);
        }

        v25 = a2[v24 + 12];
        *(v29 + 98) = BYTE2(a2[v24 + 12]);
        *(v29 + 48) = v25;
        v24 += 13;
      }

      while (&a2[v24] != a3);
      v11 = *(a1 + 8);
      v8 = (v8 + v24 * 8);
    }

    while (v11 != v8)
    {
      v11 -= 13;
      sub_5ED0A8(a1, v11);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v13 = a2 + v12;
    if (v11 != v8)
    {
      v14 = 0;
      do
      {
        v16 = &v8[v14 / 8];
        if (a2 != v8)
        {
          sub_74300(&v8[v14 / 8], a2[v14 / 8], a2[v14 / 8 + 1], 0xAAAAAAAAAAAAAAABLL * (a2[v14 / 8 + 1] - a2[v14 / 8]));
          *(v16 + 14) = a2[v14 / 8 + 7];
          sub_5FA69C((v16 + 3), a2[v14 / 8 + 5], 0);
        }

        *(v16 + 64) = a2[v14 / 8 + 8];
        *(v16 + 18) = a2[v14 / 8 + 9];
        v18 = a2[v14 / 8 + 10];
        v17 = a2[v14 / 8 + 11];
        if (v17)
        {
          atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
        }

        v16[10] = v18;
        v19 = &v8[v14 / 8];
        v20 = v8[v14 / 8 + 11];
        v8[v14 / 8 + 11] = v17;
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v15 = a2[v14 / 8 + 12];
        *(v19 + 98) = BYTE2(a2[v14 / 8 + 12]);
        *(v19 + 48) = v15;
        v14 += 104;
      }

      while (v12 != v14);
      v11 = *(a1 + 8);
    }

    v35 = v11;
    v31 = v11;
    if (v13 != a3)
    {
      v31 = v11;
      do
      {
        v33 = sub_5F0850(v31, v13);
        *(v33 + 72) = *(v13 + 72);
        *(v33 + 80) = *(v13 + 80);
        v34 = *(v13 + 88);
        *(v33 + 88) = v34;
        if (v34)
        {
          atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
        }

        v32 = *(v13 + 96);
        *(v33 + 98) = *(v13 + 98);
        *(v33 + 96) = v32;
        v13 += 104;
        v31 = (v35 + 13);
        v35 += 13;
      }

      while (v13 != a3);
    }

    *(a1 + 8) = v31;
  }
}

void sub_5FA664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F0774(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FA684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F0774(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FA69C(uint64_t a1, void **a2, void **a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        if (v7 != a2)
        {
          v8 = *(a2 + 39);
          if (*(v7 + 39) < 0)
          {
            if (v8 >= 0)
            {
              v10 = a2 + 2;
            }

            else
            {
              v10 = a2[2];
            }

            if (v8 >= 0)
            {
              v11 = *(a2 + 39);
            }

            else
            {
              v11 = a2[3];
            }

            sub_13B38((v7 + 16), v10, v11);
          }

          else if ((*(a2 + 39) & 0x80) != 0)
          {
            sub_13A68((v7 + 16), a2[2], a2[3]);
          }

          else
          {
            v9 = *(a2 + 1);
            *(v7 + 32) = a2[4];
            *(v7 + 16) = v9;
          }
        }

        sub_52CB8C((v7 + 40), a2 + 5);
        v12 = *v7;
        sub_5FA81C(a1, v7);
        a2 = *a2;
        v7 = v12;
        if (!v12)
        {
          goto LABEL_19;
        }
      }

      do
      {
        v13 = *v7;
        sub_55F7FC(v7 + 16);
        operator delete(v7);
        v7 = v13;
      }

      while (v13);
    }
  }

LABEL_19:
  if (a2 != a3)
  {
    sub_5FA980();
  }
}

void sub_5FA7D8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_5ED000(v1, v2);
  __cxa_rethrow();
}

void sub_5FA808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F0E20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5FA81C(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_AAD8(&v19, v7, v8);
  *(a2 + 8) = v9;
  v10 = sub_61CC8(a1, v9, v4);
  v11 = a1[1];
  v12 = *(a2 + 8);
  v13 = vcnt_s8(v11);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    if (v12 >= *&v11)
    {
      v12 %= *&v11;
    }
  }

  else
  {
    v12 &= *&v11 - 1;
  }

  if (v10)
  {
    *a2 = *v10;
    *v10 = a2;
    if (*a2)
    {
      v14 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v14 >= *&v11)
        {
          v14 %= *&v11;
        }
      }

      else
      {
        v14 &= *&v11 - 1;
      }

      if (v14 != v12)
      {
        v17 = (*a1 + 8 * v14);
LABEL_25:
        *v17 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v15 = *a1;
    *(*a1 + 8 * v12) = a1 + 2;
    if (*a2)
    {
      v16 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }
      }

      else
      {
        v16 &= *&v11 - 1;
      }

      v17 = (v15 + 8 * v16);
      goto LABEL_25;
    }
  }

  ++a1[3];
  return a2;
}

void sub_5FAA5C(_Unwind_Exception *a1)
{
  if (*(v2 + 39) < 0)
  {
    operator delete(*v3);
  }

  sub_5F0E20(v1);
  _Unwind_Resume(a1);
}

void sub_5FAA80(uint64_t a1, char *a2, char *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        if (v7 == a2)
        {
          *(v7 + 40) = *(a2 + 10);
        }

        else
        {
          v8 = a2[39];
          if (*(v7 + 39) < 0)
          {
            if (v8 >= 0)
            {
              v10 = a2 + 16;
            }

            else
            {
              v10 = *(a2 + 2);
            }

            if (v8 >= 0)
            {
              v11 = a2[39];
            }

            else
            {
              v11 = *(a2 + 3);
            }

            sub_13B38((v7 + 16), v10, v11);
          }

          else if (a2[39] < 0)
          {
            sub_13A68((v7 + 16), *(a2 + 2), *(a2 + 3));
          }

          else
          {
            v9 = *(a2 + 1);
            *(v7 + 32) = *(a2 + 4);
            *(v7 + 16) = v9;
          }

          *(v7 + 40) = *(a2 + 10);
          sub_596098((v7 + 48), *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 2);
        }

        *(v7 + 72) = *(a2 + 18);
        *(v7 + 80) = a2[80];
        v12 = *v7;
        sub_5FACC0(a1, v7);
        a2 = *a2;
        v7 = v12;
        if (!v12)
        {
          goto LABEL_19;
        }
      }

      do
      {
        v13 = *v7;
        v14 = *(v7 + 48);
        if (v14)
        {
          *(v7 + 56) = v14;
          operator delete(v14);
        }

        if (*(v7 + 39) < 0)
        {
          operator delete(*(v7 + 16));
        }

        operator delete(v7);
        v7 = v13;
      }

      while (v13);
    }
  }

LABEL_19:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_5FAC64(void *a1)
{
  __cxa_begin_catch(a1);
  sub_5ED888(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_5FACC0(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_AAD8(&v19, v7, v8);
  *(a2 + 8) = v9;
  v10 = sub_61CC8(a1, v9, v4);
  v11 = a1[1];
  v12 = *(a2 + 8);
  v13 = vcnt_s8(v11);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    if (v12 >= *&v11)
    {
      v12 %= *&v11;
    }
  }

  else
  {
    v12 &= *&v11 - 1;
  }

  if (v10)
  {
    *a2 = *v10;
    *v10 = a2;
    if (*a2)
    {
      v14 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v14 >= *&v11)
        {
          v14 %= *&v11;
        }
      }

      else
      {
        v14 &= *&v11 - 1;
      }

      if (v14 != v12)
      {
        v17 = (*a1 + 8 * v14);
LABEL_25:
        *v17 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v15 = *a1;
    *(*a1 + 8 * v12) = a1 + 2;
    if (*a2)
    {
      v16 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }
      }

      else
      {
        v16 &= *&v11 - 1;
      }

      v17 = (v15 + 8 * v16);
      goto LABEL_25;
    }
  }

  ++a1[3];
  return a2;
}

char *sub_5FAE24(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - result) >> 3) < a4)
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

    if (a4 <= 0x492492492492492)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x249249249249249)
      {
        v11 = 0x492492492492492;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x492492492492492)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - result) >> 3) >= a4)
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

void sub_5FAFC4(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 40);
          v12 -= 40;
          v13 = v14;
          if (v14)
          {
            *(v10 - 32) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x666666666666666)
    {
      v21 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v22 = 2 * v21;
      if (2 * v21 <= a4)
      {
        v22 = a4;
      }

      if (v21 >= 0x333333333333333)
      {
        v23 = 0x666666666666666;
      }

      else
      {
        v23 = v22;
      }

      if (v23 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 == a3)
    {
      if (v15 == v8)
      {
LABEL_37:
        a1[1] = v8;
        return;
      }
    }

    else
    {
      do
      {
        if (v5 != v8)
        {
          sub_31F64(v8, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 3);
        }

        v20 = *(v5 + 24);
        *(v8 + 32) = *(v5 + 32);
        *(v8 + 24) = v20;
        v5 += 40;
        v8 += 40;
      }

      while (v5 != a3);
      v15 = a1[1];
      if (v15 == v8)
      {
        goto LABEL_37;
      }
    }

    v24 = v15;
    do
    {
      v26 = *(v24 - 40);
      v24 -= 40;
      v25 = v26;
      if (v26)
      {
        *(v15 - 32) = v25;
        operator delete(v25);
      }

      v15 = v24;
    }

    while (v24 != v8);
    goto LABEL_37;
  }

  if (v15 != v8)
  {
    v17 = v15 - v8;
    v18 = a2;
    do
    {
      if (v18 != v8)
      {
        sub_31F64(v8, *v18, *(v18 + 8), (*(v18 + 8) - *v18) >> 3);
      }

      v19 = *(v18 + 24);
      *(v8 + 32) = *(v18 + 32);
      *(v8 + 24) = v19;
      v18 += 40;
      v8 += 40;
      v17 -= 40;
    }

    while (v17);
    v15 = a1[1];
  }

  a1[1] = sub_5F1440(a1, v5 + v16, a3, v15);
}

void sub_5FB250(uint64_t *a1, const void **a2, const void **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 17);
          v10 -= 5;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x666666666666666)
    {
      v27 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v28 = 2 * v27;
      if (2 * v27 <= a4)
      {
        v28 = a4;
      }

      if (v27 >= 0x333333333333333)
      {
        v29 = 0x666666666666666;
      }

      else
      {
        v29 = v28;
      }

      if (v29 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          v25 = *(v5 + 23);
          if (*(v8 + 23) < 0)
          {
            if (v25 >= 0)
            {
              v23 = v5;
            }

            else
            {
              v23 = *v5;
            }

            if (v25 >= 0)
            {
              v24 = *(v5 + 23);
            }

            else
            {
              v24 = v5[1];
            }

            sub_13B38(v8, v23, v24);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_13A68(v8, *v5, v5[1]);
          }

          else
          {
            v26 = *v5;
            *(v8 + 16) = v5[2];
            *v8 = v26;
          }
        }

        *(v8 + 24) = *(v5 + 3);
        v5 += 5;
        v8 += 40;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v33 = *(v13 - 17);
      v13 -= 5;
      if (v33 < 0)
      {
        operator delete(*v13);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v15 = &v14[a2];
    if (v13 != v8)
    {
      v16 = 0;
      do
      {
        v19 = &v16[v8];
        v20 = &v16[v5];
        if (v5 != v8)
        {
          v21 = *(v20 + 23);
          if (v19[23] < 0)
          {
            if (v21 >= 0)
            {
              v17 = &v16[v5];
            }

            else
            {
              v17 = *&v16[v5];
            }

            if (v21 >= 0)
            {
              v18 = *(v20 + 23);
            }

            else
            {
              v18 = *&v16[v5 + 8];
            }

            sub_13B38(&v16[v8], v17, v18);
          }

          else if ((*(v20 + 23) & 0x80) != 0)
          {
            sub_13A68(&v16[v8], *&v16[v5], *&v16[v5 + 8]);
          }

          else
          {
            v22 = *v20;
            *(v19 + 2) = v20[2];
            *v19 = v22;
          }
        }

        *(v19 + 24) = *(v20 + 3);
        v16 += 40;
      }

      while (v14 != v16);
      v13 = a1[1];
    }

    v34 = v13;
    v30 = v13;
    if (v15 != a3)
    {
      v30 = v13;
      do
      {
        if (*(v15 + 23) < 0)
        {
          sub_325C(v30, *v15, v15[1]);
          v32 = v34;
        }

        else
        {
          v31 = *v15;
          *(v30 + 16) = v15[2];
          *v30 = v31;
          v32 = v30;
        }

        *(v30 + 24) = *(v15 + 3);
        v15 += 5;
        v30 = v32 + 40;
        v34 = (v32 + 40);
      }

      while (v15 != a3);
    }

    a1[1] = v30;
  }
}

void sub_5FB5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F1734(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FB604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F1734(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void **sub_5FB61C(void **result, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x4FA4FA4FA4FA4FA5 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_5C3168(v10 - 360);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xB60B60B60B60B6)
    {
      v12 = 0x4FA4FA4FA4FA4FA5 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x5B05B05B05B05BLL)
      {
        v14 = 0xB60B60B60B60B6;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0xB60B60B60B60B6)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = &v15[-v8];
  if (0x4FA4FA4FA4FA4FA5 * (&v15[-v8] >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5FB8BC(v8, v5);
        v5 += 360;
        v8 += 360;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 360;
      result = sub_5C3168(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = &v16[a2];
    if (v15 != v8)
    {
      do
      {
        result = sub_5FB8BC(v8, v5);
        v5 += 360;
        v8 += 360;
        v16 -= 360;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_5F1934(&v15[v19], &v17[v19]);
        v19 += 360;
      }

      while (&v17[v19] != a3);
      v18 = &v15[v19];
    }

    v6[1] = v18;
  }

  return result;
}

void sub_5FB890(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 360;
    v7 = -v4;
    do
    {
      v6 = sub_5C3168(v6) - 360;
      v7 += 360;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_5FB8BC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *(a1 + 160) = *(a2 + 160);
    v5 = *(a2 + 216);
    *(a1 + 223) = *(a2 + 223);
    *(a1 + 216) = v5;
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
    sub_5FB9FC(a1, *(a2 + 16), 0);
    *(a1 + 72) = *(a2 + 72);
    sub_5FC0A8(a1 + 40, *(a2 + 56), 0);
    *(a1 + 112) = *(a2 + 112);
    sub_5FC2D0(a1 + 80, *(a2 + 96), 0);
    *(a1 + 152) = *(a2 + 152);
    sub_5FC2D0(a1 + 120, *(a2 + 136), 0);
    *(a1 + 160) = *(a2 + 160);
    sub_5FC404((a1 + 168), *(a2 + 168), *(a2 + 176), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 176) - *(a2 + 168)) >> 3));
    sub_5FC404((a1 + 192), *(a2 + 192), *(a2 + 200), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 200) - *(a2 + 192)) >> 3));
    v4 = *(a2 + 216);
    *(a1 + 223) = *(a2 + 223);
    *(a1 + 216) = v4;
    sub_5FC668((a1 + 232), *(a2 + 232), *(a2 + 240), (*(a2 + 240) - *(a2 + 232)) >> 6);
  }

  v6 = *(a2 + 256);
  v7 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v7;
  *(a1 + 256) = v6;
  v8 = *(a2 + 304);
  v9 = *(a2 + 320);
  v10 = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 320) = v9;
  *(a1 + 336) = v10;
  *(a1 + 304) = v8;
  return a1;
}

void sub_5FB9FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v7[16] = *(a2 + 16);
        v7[17] = *(a2 + 17);
        v8 = *v7;
        sub_5FBB3C(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      do
      {
        v9 = *v7;
        operator delete(v7);
        v7 = v9;
      }

      while (v9);
    }
  }

LABEL_7:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_5FBAF4(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

unsigned __int8 *sub_5FBB3C(uint64_t *a1, unsigned __int8 *a2)
{
  v5 = a2 + 16;
  v4 = a2[16];
  *(v5 - 1) = v4;
  v6 = sub_5FBC6C(a1, v4, v5);
  v7 = a1[1];
  v8 = *(v5 - 1);
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    if (v8 >= *&v7)
    {
      v8 %= *&v7;
    }
  }

  else
  {
    v8 &= *&v7 - 1;
  }

  if (v6)
  {
    *a2 = *v6;
    *v6 = a2;
    if (*a2)
    {
      v10 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v10 >= *&v7)
        {
          v10 %= *&v7;
        }
      }

      else
      {
        v10 &= *&v7 - 1;
      }

      if (v10 != v8)
      {
        v13 = (*a1 + 8 * v10);
LABEL_19:
        *v13 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v11 = *a1;
    *(*a1 + 8 * v8) = a1 + 2;
    if (*a2)
    {
      v12 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
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

      v13 = (v11 + 8 * v12);
      goto LABEL_19;
    }
  }

  ++a1[3];
  return a2;
}

uint64_t *sub_5FBC6C(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (v6 && (v8 * v6) >= v7)
  {
    v9 = v6 - 1;
    if ((v6 & (v6 - 1)) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  v17 = 1;
  if (v6 >= 3)
  {
    v17 = (v6 & (v6 - 1)) != 0;
  }

  v18 = v17 | (2 * v6);
  v19 = vcvtps_u32_f32(v7 / v8);
  if (v18 <= v19)
  {
    prime = v19;
  }

  else
  {
    prime = v18;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v6 = *(a1 + 8);
  }

  if (prime > v6)
  {
    goto LABEL_22;
  }

  if (prime < v6)
  {
    v21 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v6 < 3 || (v22 = vcnt_s8(v6), v22.i16[0] = vaddlv_u8(v22), v22.u32[0] > 1uLL))
    {
      v24 = prime;
      v25 = std::__next_prime(v21);
      if (v24 <= v25)
      {
        prime = v25;
      }

      else
      {
        prime = v24;
      }

      if (prime >= v6)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v23 = 1 << -__clz(v21 - 1);
      if (v21 >= 2)
      {
        v21 = v23;
      }

      if (prime <= v21)
      {
        prime = v21;
      }

      if (prime >= v6)
      {
        goto LABEL_38;
      }
    }

LABEL_22:
    sub_5FBEEC(a1, prime);
  }

LABEL_38:
  v6 = *(a1 + 8);
  v9 = v6 - 1;
  if ((v6 & (v6 - 1)) == 0)
  {
LABEL_4:
    v10 = *(*a1 + 8 * (v9 & a2));
    if (!v10)
    {
      return 0;
    }

    v11 = 0;
    do
    {
      result = v10;
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      v16 = *(v10 + 8);
      if ((v16 & v9) != (v9 & a2))
      {
        break;
      }

      v12 = v16 == a2 && *a3 == *(v10 + 16);
      v13 = v12 != (v11 & 1);
      v14 = v11 & v13;
      v11 |= v13;
    }

    while ((v14 & 1) == 0);
    return result;
  }

LABEL_39:
  v26 = a2;
  if (v6 <= a2)
  {
    v26 = a2 % v6;
  }

  v27 = *(*a1 + 8 * v26);
  if (!v27)
  {
    return 0;
  }

  v28 = 0;
  do
  {
    result = v27;
    v27 = *v27;
    if (!v27)
    {
      break;
    }

    v32 = *(v27 + 8);
    v33 = v32;
    if (v32 >= v6)
    {
      v33 = v32 % v6;
    }

    if (v33 != v26)
    {
      break;
    }

    v29 = v32 == a2 && *a3 == *(v27 + 16);
    v30 = v29 != (v28 & 1);
    v31 = v28 & v30;
    v28 |= v30;
  }

  while (v31 != 1);
  return result;
}

void sub_5FBEEC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_5FC0A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        *(v7 + 16) = *(a2 + 16);
        if (v7 != a2)
        {
          sub_74300(v7 + 3, a2[3], a2[4], 0xAAAAAAAAAAAAAAABLL * ((a2[4] - a2[3]) >> 3));
        }

        v8 = *v7;
        sub_5FBB3C(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_18;
        }
      }

      do
      {
        v10 = *v7;
        v11 = v7[3];
        if (v11)
        {
          v12 = v7[4];
          v9 = v7[3];
          if (v12 != v11)
          {
            do
            {
              v13 = *(v12 - 1);
              v12 -= 3;
              if (v13 < 0)
              {
                operator delete(*v12);
              }
            }

            while (v12 != v11);
            v9 = v7[3];
          }

          v7[4] = v11;
          operator delete(v9);
        }

        operator delete(v7);
        v7 = v10;
      }

      while (v10);
    }
  }

LABEL_18:
  if (a2 != a3)
  {
    sub_5FC204(a1, (a2 + 2));
  }
}

void sub_5FC1D4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_5ED6AC(v1, v2);
  __cxa_rethrow();
}

void sub_5FC2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F25B8(va);
  _Unwind_Resume(a1);
}

void sub_5FC2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F25B8(va);
  _Unwind_Resume(a1);
}

void sub_5FC2D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v7[16] = *(a2 + 16);
        v8 = *v7;
        sub_5FBB3C(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      do
      {
        v9 = *v7;
        operator delete(v7);
        v7 = v9;
      }

      while (v9);
    }
  }

LABEL_7:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_5FC3BC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_5FC404(char ***a1, void *a2, void *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 3;
          v13 = v14;
          if (v14)
          {
            *(v10 - 2) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v15 - v8) >= a4)
  {
    if (a2 == a3)
    {
      if (v15 == v8)
      {
LABEL_37:
        a1[1] = v8;
        return;
      }
    }

    else
    {
      do
      {
        if (v5 != v8)
        {
          sub_384B90(v8, *v5, *(v5 + 8), *(v5 + 8) - *v5);
        }

        v5 += 24;
        v8 += 3;
      }

      while (v5 != a3);
      v15 = a1[1];
      if (v15 == v8)
      {
        goto LABEL_37;
      }
    }

    v22 = v15;
    do
    {
      v24 = *(v22 - 3);
      v22 -= 3;
      v23 = v24;
      if (v24)
      {
        *(v15 - 2) = v23;
        operator delete(v23);
      }

      v15 = v22;
    }

    while (v22 != v8);
    goto LABEL_37;
  }

  if (v15 != v8)
  {
    v17 = v15 - v8;
    v18 = a2;
    do
    {
      if (v18 != v8)
      {
        sub_384B90(v8, *v18, *(v18 + 8), *(v18 + 8) - *v18);
      }

      v18 += 24;
      v8 += 3;
      v17 -= 24;
    }

    while (v17);
    v15 = a1[1];
  }

  a1[1] = sub_5F2988(a1, (v5 + v16), a3, v15);
}

void sub_5FC668(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 6)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 24);
          if (v12)
          {
            *(v10 - 16) = v12;
            operator delete(v12);
          }

          v13 = *(v10 - 48);
          if (v13)
          {
            *(v10 - 40) = v13;
            operator delete(v13);
          }

          v10 -= 64;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (!(a4 >> 58))
    {
      v18 = v7 >> 5;
      if (v7 >> 5 <= a4)
      {
        v18 = a4;
      }

      v19 = v7 >= 0x7FFFFFFFFFFFFFC0;
      v20 = 0x3FFFFFFFFFFFFFFLL;
      if (!v19)
      {
        v20 = v18;
      }

      if (!(v20 >> 58))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = a1[1];
  v15 = v14 - v8;
  if (a4 <= (v14 - v8) >> 6)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v5;
        if (v5 != v8)
        {
          sub_384B90((v8 + 16), *(v5 + 2), *(v5 + 3), *(v5 + 3) - *(v5 + 2));
          sub_384B90((v8 + 40), *(v5 + 5), *(v5 + 6), *(v5 + 6) - *(v5 + 5));
        }

        v5 += 4;
        v8 += 64;
      }

      while (v5 != a3);
      v14 = a1[1];
    }

    while (v14 != v8)
    {
      v22 = *(v14 - 24);
      if (v22)
      {
        *(v14 - 16) = v22;
        operator delete(v22);
      }

      v23 = *(v14 - 48);
      if (v23)
      {
        *(v14 - 40) = v23;
        operator delete(v23);
      }

      v14 -= 64;
    }

    a1[1] = v8;
  }

  else
  {
    v16 = (a2 + v15);
    if (v14 != v8)
    {
      v17 = 0;
      do
      {
        *(v8 + v17) = v5[v17 / 0x10];
        if (v5 != v8)
        {
          sub_384B90((v8 + v17 + 16), *&v5[v17 / 0x10 + 1], *(&v5[v17 / 0x10 + 1] + 1), *(&v5[v17 / 0x10 + 1] + 1) - *&v5[v17 / 0x10 + 1]);
          sub_384B90((v8 + v17 + 40), *(&v5[v17 / 0x10 + 2] + 1), *&v5[v17 / 0x10 + 3], *&v5[v17 / 0x10 + 3] - *(&v5[v17 / 0x10 + 2] + 1));
        }

        v17 += 64;
      }

      while (v15 != v17);
      v14 = a1[1];
    }

    v24 = v14;
    v21 = v14;
    if (v16 != a3)
    {
      v21 = v14;
      do
      {
        sub_5F2BA0(v21, v16);
        v16 += 4;
        v21 = v24 + 64;
        v24 += 64;
      }

      while (v16 != a3);
    }

    a1[1] = v21;
  }
}

void sub_5FC938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F2CC4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FC950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F2CC4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FC968(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  v9 = *a1;
  if (0xF0F0F0F0F0F0F0F1 * ((v8 - *a1) >> 4) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        do
        {
          v10 -= 272;
          sub_513694(v10);
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xF0F0F0F0F0F0F0)
    {
      v12 = 0xF0F0F0F0F0F0F0F1 * (v8 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x78787878787878)
      {
        v14 = 0xF0F0F0F0F0F0F0;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0xF0F0F0F0F0F0F0)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  if (0xF0F0F0F0F0F0F0F1 * ((v15 - v9) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_52CB8C(v9, v6);
        v21 = *(v6 + 168);
        *(v9 + 152) = *(v6 + 152);
        *(v9 + 168) = v21;
        v22 = *(v6 + 200);
        v23 = *(v6 + 216);
        v24 = *(v6 + 228);
        *(v9 + 184) = *(v6 + 184);
        *(v9 + 228) = v24;
        *(v9 + 216) = v23;
        *(v9 + 200) = v22;
        if (v9 != v6)
        {
          sub_5FCC10(v9 + 31, *(v6 + 248), *(v6 + 256), (*(v6 + 256) - *(v6 + 248)) >> 4);
        }

        v6 += 272;
        v9 += 17;
      }

      while (v6 != a3);
      v15 = a1[1];
    }

    while (v15 != v9)
    {
      v15 -= 272;
      sub_513694(v15);
    }

    a1[1] = v9;
  }

  else
  {
    v16 = a2 + v15 - v9;
    if (v15 != v9)
    {
      do
      {
        sub_52CB8C(v9, v6);
        v17 = *(v6 + 168);
        *(v9 + 152) = *(v6 + 152);
        *(v9 + 168) = v17;
        v18 = *(v6 + 200);
        v19 = *(v6 + 216);
        v20 = *(v6 + 228);
        *(v9 + 184) = *(v6 + 184);
        *(v9 + 228) = v20;
        *(v9 + 216) = v19;
        *(v9 + 200) = v18;
        if (v9 != v6)
        {
          sub_5FCC10(v9 + 31, *(v6 + 248), *(v6 + 256), (*(v6 + 256) - *(v6 + 248)) >> 4);
        }

        v6 += 272;
        v9 += 17;
      }

      while (v6 != v16);
    }

    sub_5F2E44(a1, v16, a3);
  }
}

char *sub_5FCC10(char **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a1[2];
  result = *a1;
  if (a4 > (v5 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      v7 = a4;
      operator delete(result);
      a4 = v7;
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v8 = v5 >> 3;
      if (v5 >> 3 <= a4)
      {
        v8 = a4;
      }

      v9 = v5 >= 0x7FFFFFFFFFFFFFF0;
      v10 = 0xFFFFFFFFFFFFFFFLL;
      if (!v9)
      {
        v10 = v8;
      }

      if (!(v10 >> 60))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    if (a2 == a3)
    {
      a1[1] = result;
      return result;
    }

    v28 = a3 - a2 - 16;
    if (v28 >= 0x90 && ((v29 = (v28 & 0xFFFFFFFFFFFFFFF0) + 16, result >= &a2[v29]) || &result[v29] <= a2))
    {
      v35 = (v28 >> 4) + 1;
      v36 = 16 * (v35 & 0x1FFFFFFFFFFFFFFCLL);
      v30 = &result[v36];
      v31 = &a2[v36];
      v37 = a2 + 32;
      v38 = result + 32;
      v39 = v35 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v41 = *(v37 - 2);
        v40 = *(v37 - 1);
        v43 = *v37;
        v42 = *(v37 + 1);
        v37 += 64;
        *(v38 - 2) = v41;
        *(v38 - 1) = v40;
        *v38 = v43;
        *(v38 + 1) = v42;
        v38 += 64;
        v39 -= 4;
      }

      while (v39);
      if (v35 == (v35 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v30 = result;
      v31 = a2;
    }

    do
    {
      *v30 = *v31;
      *(v30 + 1) = *(v31 + 1);
      v31 += 16;
      v30 += 16;
    }

    while (v31 != a3);
LABEL_28:
    a1[1] = v30;
    return result;
  }

  v12 = &a2[v11 - result];
  v13 = v11 - result;
  if (v11 != result)
  {
    v14 = v13 - 16;
    if ((v13 - 16) < 0x90 || ((v15 = (v14 & 0xFFFFFFFFFFFFFFF0) + 16, result < &a2[v15]) ? (v16 = &result[v15] > a2) : (v16 = 0), v16))
    {
      v19 = result;
      v20 = a2;
    }

    else
    {
      v17 = (v14 >> 4) + 1;
      v18 = 16 * (v17 & 0x1FFFFFFFFFFFFFFCLL);
      v19 = &result[v18];
      v20 = &a2[v18];
      v21 = a2 + 32;
      v22 = result + 32;
      v23 = v17 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v25 = *(v21 - 2);
        v24 = *(v21 - 1);
        v27 = *v21;
        v26 = *(v21 + 1);
        v21 += 64;
        *(v22 - 2) = v25;
        *(v22 - 1) = v24;
        *v22 = v27;
        *(v22 + 1) = v26;
        v22 += 64;
        v23 -= 4;
      }

      while (v23);
      if (v17 == (v17 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_31;
      }
    }

    do
    {
      *v19 = *v20;
      *(v19 + 1) = *(v20 + 1);
      v20 += 16;
      v19 += 16;
    }

    while (v20 != v12);
LABEL_31:
    v11 = a1[1];
  }

  v32 = v11;
  if (v12 != a3)
  {
    v32 = v11;
    v33 = v11;
    do
    {
      v34 = *v12;
      v12 += 16;
      *v33 = v34;
      v33 += 16;
      v32 += 16;
    }

    while (v12 != a3);
  }

  a1[1] = v32;
  return result;
}

char **sub_5FCEE0(char **result, char *a2, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x84BDA12F684BDA13 * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_5941F8((v10 - 432));
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x97B425ED097B42)
    {
      v12 = 0x84BDA12F684BDA13 * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x4BDA12F684BDA1)
      {
        v14 = 0x97B425ED097B42;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x97B425ED097B42)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  if (0x84BDA12F684BDA13 * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v25 = 0;
      do
      {
        v28 = &v8[v25];
        v29 = &a2[v25];
        *&v8[v25] = *&a2[v25];
        sub_52CB8C(&v8[v25 + 8], &a2[v25 + 8]);
        v30 = *&a2[v25 + 169];
        *(v28 + 10) = *&a2[v25 + 160];
        *(v28 + 169) = v30;
        if (v8 == a2)
        {
          v31 = *(v29 + 216);
          v32 = *(v29 + 232);
          *(v28 + 31) = *(v29 + 31);
          *(v28 + 232) = v32;
          *(v28 + 216) = v31;
        }

        else
        {
          sub_31F64(v28 + 24, *(v29 + 24), *(v29 + 25), (*(v29 + 25) - *(v29 + 24)) >> 3);
          v26 = *(v29 + 216);
          v27 = *(v29 + 232);
          *(v28 + 31) = *(v29 + 31);
          *(v28 + 232) = v27;
          *(v28 + 216) = v26;
          sub_31F64(v28 + 32, *(v29 + 32), *(v29 + 33), (*(v29 + 33) - *(v29 + 32)) >> 3);
        }

        result = sub_52CB8C(v28 + 280, v29 + 35);
        v25 += 432;
      }

      while (v29 + 432 != a3);
      v15 = v6[1];
      v8 += v25;
    }

    while (v15 != v8)
    {
      v15 -= 432;
      result = sub_5941F8(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v16 = &a2[v15 - v8];
    if (v15 != v8)
    {
      v17 = v8 + 192;
      v18 = a2 + 192;
      do
      {
        v21 = v18 - 192;
        *(v17 - 24) = *(v18 - 24);
        sub_52CB8C(v17 - 184, v18 - 23);
        v22 = *(v18 - 23);
        *(v17 - 2) = *(v18 - 2);
        *(v17 - 23) = v22;
        if (v17 == v18)
        {
          v23 = *(v18 + 24);
          v24 = *(v18 + 40);
          *(v17 + 7) = *(v18 + 7);
          *(v17 + 40) = v24;
          *(v17 + 24) = v23;
        }

        else
        {
          sub_31F64(v17, *v18, *(v18 + 1), (*(v18 + 1) - *v18) >> 3);
          v19 = *(v18 + 24);
          v20 = *(v18 + 40);
          *(v17 + 7) = *(v18 + 7);
          *(v17 + 40) = v20;
          *(v17 + 24) = v19;
          sub_31F64(v17 + 8, *(v18 + 8), *(v18 + 9), (*(v18 + 9) - *(v18 + 8)) >> 3);
        }

        result = sub_52CB8C(v17 + 88, v18 + 11);
        v17 += 432;
        v18 += 432;
      }

      while (v21 + 432 != v16);
      v15 = v6[1];
    }

    v33 = v15;
    if (v16 != a3)
    {
      v34 = 0;
      do
      {
        result = sub_5F3168(&v15[v34], &v16[v34]);
        v34 += 432;
      }

      while (&v16[v34] != a3);
      v33 = &v15[v34];
    }

    v6[1] = v33;
  }

  return result;
}

void sub_5FD2CC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xD37A6F4DE9BD37A7 * ((v7 - *a1) >> 3) < a4)
  {
    if (!v8)
    {
      goto LABEL_37;
    }

    v9 = a4;
    v10 = a1[1];
    v11 = *a1;
    if (v10 == v8)
    {
      goto LABEL_36;
    }

    while (1)
    {
      if (*(v10 - 9) < 0)
      {
        operator delete(*(v10 - 32));
        if ((*(v10 - 41) & 0x80000000) == 0)
        {
LABEL_8:
          v12 = *(v10 - 80);
          if (v12 == -1)
          {
            goto LABEL_5;
          }

LABEL_12:
          (off_266BAC0[v12])(v29, v10 - 112);
          goto LABEL_5;
        }
      }

      else if ((*(v10 - 41) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v10 - 64));
      v12 = *(v10 - 80);
      if (v12 != -1)
      {
        goto LABEL_12;
      }

LABEL_5:
      *(v10 - 80) = -1;
      v10 -= 184;
      if (v10 == v8)
      {
        v11 = *a1;
LABEL_36:
        a1[1] = v8;
        operator delete(v11);
        v7 = 0;
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
        a4 = v9;
LABEL_37:
        if (a4 <= 0x1642C8590B21642)
        {
          v26 = 0xD37A6F4DE9BD37A7 * (v7 >> 3);
          v27 = 2 * v26;
          if (2 * v26 <= a4)
          {
            v27 = a4;
          }

          if (v26 >= 0xB21642C8590B21)
          {
            v28 = 0x1642C8590B21642;
          }

          else
          {
            v28 = v27;
          }

          if (v28 <= 0x1642C8590B21642)
          {
            operator new();
          }
        }

        sub_1794();
      }
    }
  }

  v13 = a1[1];
  if (0xD37A6F4DE9BD37A7 * ((v13 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v5;
        v22 = *(v5 + 16);
        v23 = *(v5 + 32);
        v24 = *(v5 + 48);
        *(v8 + 64) = *(v5 + 64);
        *(v8 + 32) = v23;
        *(v8 + 48) = v24;
        *(v8 + 16) = v22;
        sub_5410A0(v8 + 72, v5 + 72);
        v8 += 184;
        v5 += 184;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    if (v13 == v8)
    {
LABEL_34:
      a1[1] = v8;
      return;
    }

    while (1)
    {
      if (*(v13 - 9) < 0)
      {
        operator delete(*(v13 - 32));
        if ((*(v13 - 41) & 0x80000000) == 0)
        {
LABEL_29:
          v25 = *(v13 - 80);
          if (v25 == -1)
          {
            goto LABEL_26;
          }

LABEL_33:
          (off_266BAC0[v25])(v29, v13 - 112);
          goto LABEL_26;
        }
      }

      else if ((*(v13 - 41) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      operator delete(*(v13 - 64));
      v25 = *(v13 - 80);
      if (v25 != -1)
      {
        goto LABEL_33;
      }

LABEL_26:
      *(v13 - 80) = -1;
      v13 -= 184;
      if (v13 == v8)
      {
        goto LABEL_34;
      }
    }
  }

  v14 = a2 + v13 - v8;
  if (v13 != v8)
  {
    do
    {
      *v8 = *v5;
      v15 = *(v5 + 16);
      v16 = *(v5 + 32);
      v17 = *(v5 + 48);
      *(v8 + 64) = *(v5 + 64);
      *(v8 + 32) = v16;
      *(v8 + 48) = v17;
      *(v8 + 16) = v15;
      sub_5410A0(v8 + 72, v5 + 72);
      v5 += 184;
      v8 += 184;
    }

    while (v5 != v14);
    v13 = a1[1];
  }

  v31 = v13;
  v32 = v13;
  v29[0] = a1;
  v29[1] = &v31;
  v29[2] = &v32;
  v18 = v13;
  v30 = 0;
  if (v14 != a3)
  {
    v18 = v13;
    do
    {
      *v18 = *v14;
      v19 = *(v14 + 16);
      v20 = *(v14 + 32);
      v21 = *(v14 + 48);
      *(v18 + 64) = *(v14 + 64);
      *(v18 + 32) = v20;
      *(v18 + 48) = v21;
      *(v18 + 16) = v19;
      sub_55F1E8(v18 + 72, v14 + 72);
      v14 += 184;
      v18 = v32 + 184;
      v32 += 184;
    }

    while (v14 != a3);
  }

  a1[1] = v18;
}

void sub_5FD6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F34B0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FD6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F34B0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_5FD6D4(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (result == a2)
  {
    *(result + 32) = *(a2 + 32);
    *(result + 64) = *(a2 + 64);
    return result;
  }

  v4 = *(a2 + 31);
  if ((*(result + 31) & 0x80000000) == 0)
  {
    if ((*(a2 + 31) & 0x80) != 0)
    {
      sub_13A68((result + 8), *(a2 + 8), *(a2 + 16));
      *(v3 + 32) = *(a2 + 32);
      v6 = (a2 + 40);
      v7 = *(a2 + 63);
      if (*(v3 + 63) < 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v5 = *(a2 + 8);
      *(result + 24) = *(a2 + 24);
      *(result + 8) = v5;
      *(result + 32) = *(a2 + 32);
      v6 = (a2 + 40);
      v7 = *(a2 + 63);
      if (*(result + 63) < 0)
      {
        goto LABEL_18;
      }
    }

LABEL_14:
    if ((v7 & 0x80) != 0)
    {
      sub_13A68((v3 + 40), *(a2 + 40), *(a2 + 48));
      *(v3 + 64) = *(a2 + 64);
      v11 = (a2 + 72);
      v12 = *(a2 + 95);
      if (*(v3 + 95) < 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v10 = *v6;
      *(v3 + 56) = v6[2];
      *(v3 + 40) = v10;
      *(v3 + 64) = *(a2 + 64);
      v11 = (a2 + 72);
      v12 = *(a2 + 95);
      if (*(v3 + 95) < 0)
      {
        goto LABEL_29;
      }
    }

LABEL_25:
    if ((v12 & 0x80) != 0)
    {
      sub_13A68((v3 + 72), *(a2 + 72), *(a2 + 80));
    }

    else
    {
      v15 = *v11;
      *(v3 + 88) = v11[2];
      *(v3 + 72) = v15;
    }

    return v3;
  }

  if (v4 >= 0)
  {
    v8 = (a2 + 8);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  if (v4 >= 0)
  {
    v9 = *(a2 + 31);
  }

  else
  {
    v9 = *(a2 + 16);
  }

  sub_13B38((result + 8), v8, v9);
  *(v3 + 32) = *(a2 + 32);
  v6 = (a2 + 40);
  v7 = *(a2 + 63);
  if ((*(v3 + 63) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_18:
  if ((v7 & 0x80u) == 0)
  {
    v13 = v6;
  }

  else
  {
    v13 = *(a2 + 40);
  }

  if ((v7 & 0x80u) == 0)
  {
    v14 = v7;
  }

  else
  {
    v14 = *(a2 + 48);
  }

  sub_13B38((v3 + 40), v13, v14);
  *(v3 + 64) = *(a2 + 64);
  v11 = (a2 + 72);
  v12 = *(a2 + 95);
  if ((*(v3 + 95) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_29:
  if ((v12 & 0x80u) == 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(a2 + 72);
  }

  if ((v12 & 0x80u) == 0)
  {
    v17 = v12;
  }

  else
  {
    v17 = *(a2 + 80);
  }

  sub_13B38((v3 + 72), v16, v17);
  return v3;
}

void sub_5FD8A0(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 5) < a4)
  {
    if (v8)
    {
      v9 = a4;
      sub_5ED268(a1, *a1);
      operator delete(*a1);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x199999999999999)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 5);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0xCCCCCCCCCCCCCCLL)
      {
        v12 = 0x199999999999999;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x199999999999999)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = *(a1 + 8);
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - v8) >> 5) >= a4)
  {
    while (v5 != a3)
    {
      sub_52CB8C(v8, v5);
      v8[19] = *(v5 + 19);
      v5 += 10;
      v8 += 20;
    }

    sub_5ED268(a1, v8);
  }

  else
  {
    v14 = (a2 + v13 - v8);
    if (v13 != v8)
    {
      do
      {
        sub_52CB8C(v8, v5);
        v8[19] = *(v5 + 19);
        v5 += 10;
        v8 += 20;
      }

      while (v5 != v14);
      v13 = *(a1 + 8);
    }

    v16 = v13;
    v15 = v13;
    if (v14 != a3)
    {
      v15 = v13;
      do
      {
        *(sub_5139E8(v15, v14) + 152) = *(v14 + 19);
        v14 += 10;
        v15 = (v16 + 20);
        v16 += 20;
      }

      while (v14 != a3);
    }

    *(a1 + 8) = v15;
  }
}

void sub_5FDB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F4318(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FDB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F4318(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

char *sub_5FDB48(uint64_t a1, char *a2, char *a3, unint64_t a4)
{
  v4 = a2;
  v6 = *(a1 + 16);
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v4 != a3)
    {
      *result = *v4;
      *(result + 1) = *(v4 + 1);
      *(result + 4) = *(v4 + 4);
      v4 += 24;
      result += 24;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v13 = &a2[v12 - result];
    if (v12 != result)
    {
      do
      {
        *result = *v4;
        *(result + 1) = *(v4 + 1);
        *(result + 4) = *(v4 + 4);
        v4 += 24;
        result += 24;
      }

      while (v4 != v13);
      v12 = *(a1 + 8);
    }

    v14 = v12;
    if (v13 != a3)
    {
      v14 = v12;
      v15 = v12;
      do
      {
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        v15 += 24;
        v13 += 24;
        v14 += 24;
      }

      while (v13 != a3);
    }

    *(a1 + 8) = v14;
  }

  return result;
}

void **sub_5FDD68(void **result, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAF8AF8AF8AF8AF8BLL * ((v7 - *result) >> 5) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_5938B0((v10 - 140));
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x3A83A83A83A83ALL)
    {
      v12 = 0xAF8AF8AF8AF8AF8BLL * (v7 >> 5);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x1D41D41D41D41DLL)
      {
        v14 = 0x3A83A83A83A83ALL;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x3A83A83A83A83ALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = &v15[-v8];
  if (0xAF8AF8AF8AF8AF8BLL * (&v15[-v8] >> 5) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5FE008(v8, v5);
        v5 += 1120;
        v8 += 1120;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 1120;
      result = sub_5938B0(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = &v16[a2];
    if (v15 != v8)
    {
      do
      {
        result = sub_5FE008(v8, v5);
        v5 += 1120;
        v8 += 1120;
        v16 -= 1120;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_5F4D20(&v15[v19], &v17[v19]);
        v19 += 1120;
      }

      while (&v17[v19] != a3);
      v18 = &v15[v19];
    }

    v6[1] = v18;
  }

  return result;
}

void sub_5FDFDC(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = (v3 - 1120);
    v7 = -v4;
    do
    {
      v6 = sub_5938B0(v6) - 140;
      v7 += 1120;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_5FE008(uint64_t a1, uint64_t a2)
{
  sub_5F8954(a1, a2);
  v4 = *(a2 + 864);
  *(a1 + 856) = *(a2 + 856);
  *(a1 + 864) = v4;
  if (a1 != a2)
  {
    sub_596098((a1 + 872), *(a2 + 872), *(a2 + 880), (*(a2 + 880) - *(a2 + 872)) >> 2);
  }

  *(a1 + 896) = *(a2 + 896);
  *(a1 + 904) = *(a2 + 904);
  sub_5F9604(a1 + 912, a2 + 912);
  if (a1 == a2)
  {
    *(a1 + 1032) = *(a2 + 1032);
    *(a1 + 1040) = *(a2 + 1040);
  }

  else
  {
    sub_74300((a1 + 968), *(a2 + 968), *(a2 + 976), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 976) - *(a2 + 968)) >> 3));
    *(a1 + 1024) = *(a2 + 1024);
    sub_5FA69C(a1 + 992, *(a2 + 1008), 0);
    *(a1 + 1032) = *(a2 + 1032);
    *(a1 + 1040) = *(a2 + 1040);
    sub_74300((a1 + 1048), *(a2 + 1048), *(a2 + 1056), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1056) - *(a2 + 1048)) >> 3));
    *(a1 + 1104) = *(a2 + 1104);
    sub_5FA69C(a1 + 1072, *(a2 + 1088), 0);
  }

  *(a1 + 1112) = *(a2 + 1112);
  return a1;
}

uint64_t *sub_5FE12C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *result) >> 6) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = *result;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 6);
          if (v12)
          {
            *(v10 - 5) = v12;
            operator delete(v12);
          }

          v10 -= 56;
          sub_55D550(v10);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x92492492492492)
    {
      v17 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 6);
      v18 = 2 * v17;
      if (2 * v17 <= a4)
      {
        v18 = a4;
      }

      if (v17 >= 0x49249249249249)
      {
        v19 = 0x92492492492492;
      }

      else
      {
        v19 = v18;
      }

      if (v19 <= 0x92492492492492)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = result[1];
  if (0x6DB6DB6DB6DB6DB7 * ((v13 - v8) >> 6) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5F9D98(v8, v5);
        *(v8 + 380) = *(v5 + 380);
        *(v8 + 384) = *(v5 + 384);
        *(v8 + 392) = *(v5 + 392);
        if (v8 != v5)
        {
          result = sub_5FE4B8((v8 + 400), *(v5 + 400), *(v5 + 408), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 408) - *(v5 + 400)) >> 2));
        }

        v16 = *(v5 + 424);
        *(v8 + 440) = *(v5 + 440);
        *(v8 + 424) = v16;
        v5 += 448;
        v8 += 448;
      }

      while (v5 != a3);
      v13 = v6[1];
    }

    while (v13 != v8)
    {
      v20 = *(v13 - 6);
      if (v20)
      {
        *(v13 - 5) = v20;
        operator delete(v20);
      }

      v13 -= 56;
      result = sub_55D550(v13);
    }

    v6[1] = v8;
  }

  else
  {
    v14 = v13 + a2 - v8;
    if (v13 != v8)
    {
      do
      {
        sub_5F9D98(v8, v5);
        *(v8 + 380) = *(v5 + 380);
        *(v8 + 384) = *(v5 + 384);
        *(v8 + 392) = *(v5 + 392);
        if (v8 != v5)
        {
          sub_5FE4B8((v8 + 400), *(v5 + 400), *(v5 + 408), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 408) - *(v5 + 400)) >> 2));
        }

        v15 = *(v5 + 424);
        *(v8 + 440) = *(v5 + 440);
        *(v8 + 424) = v15;
        v5 += 448;
        v8 += 448;
      }

      while (v5 != v14);
      v13 = v6[1];
    }

    v21 = v13;
    result = v13;
    if (v14 != a3)
    {
      result = v13;
      do
      {
        sub_5F51E0(result, v14);
        v14 += 448;
        result = v21 + 56;
        v21 += 56;
      }

      while (v14 != a3);
    }

    v6[1] = result;
  }

  return result;
}

void sub_5FE488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F52E4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FE4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F52E4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

char *sub_5FE4B8(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 2) < a4)
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

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 2) >= a4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 3);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 3);
      v12 = a1[1];
    }

    v15 = (a3 - v14);
    if (v15)
    {
      result = memmove(v12, v14, (v15 - 3));
    }

    a1[1] = &v15[v12];
  }

  return result;
}

uint64_t *sub_5FE64C(uint64_t *result, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x77A04C8F8D28AC43 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_5936E4(v10 - 107);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x4C8F8D28AC42FDLL)
    {
      v12 = 0x77A04C8F8D28AC43 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x2647C69456217ELL)
      {
        v14 = 0x4C8F8D28AC42FDLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x4C8F8D28AC42FDLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x77A04C8F8D28AC43 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5F8954(v8, v5);
        v5 += 856;
        v8 += 856;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 107;
      result = sub_5936E4(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = &v16[a2];
    if (v15 != v8)
    {
      do
      {
        result = sub_5F8954(v8, v5);
        v5 += 856;
        v8 += 856;
        v16 -= 856;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_5F4F00(&v15[v19], &v17[v19 * 8]);
        v19 += 107;
      }

      while (&v17[v19 * 8] != a3);
      v18 = &v15[v19];
    }

    v6[1] = v18;
  }

  return result;
}

void sub_5FE8C0(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = (v3 - 856);
    v7 = -v4;
    do
    {
      v6 = sub_5936E4(v6) - 107;
      v7 += 856;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_5FE8EC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0xEF7BDEF7BDEF7BDFLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 208);
          if (v12)
          {
            *(v10 - 200) = v12;
            operator delete(v12);
          }

          v13 = v10 - 248;
          v14 = *(v10 - 248);
          if (v14)
          {
            *(v10 - 240) = v14;
            operator delete(v14);
          }

          v10 -= 248;
        }

        while (v13 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x108421084210842)
    {
      v40 = 0xEF7BDEF7BDEF7BDFLL * (v7 >> 3);
      v41 = 2 * v40;
      if (2 * v40 <= a4)
      {
        v41 = a4;
      }

      if (v40 >= 0x84210842108421)
      {
        v42 = 0x108421084210842;
      }

      else
      {
        v42 = v41;
      }

      if (v42 <= 0x108421084210842)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xEF7BDEF7BDEF7BDFLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v29 = 0;
      do
      {
        v39 = v8 + v29;
        if (a2 == v8)
        {
          *(v39 + 24) = *(a2 + v29 + 24);
        }

        else
        {
          sub_30945C((v8 + v29), *(a2 + v29), *(a2 + v29 + 8), (*(a2 + v29 + 8) - *(a2 + v29)) >> 3);
          *(v39 + 24) = *(a2 + v29 + 24);
          sub_596098((v39 + 40), *(a2 + v29 + 40), *(a2 + v29 + 48), (*(a2 + v29 + 48) - *(a2 + v29 + 40)) >> 2);
        }

        v30 = v8 + v29;
        *(v30 + 64) = *(a2 + v29 + 64);
        v31 = *(a2 + v29 + 72);
        v32 = *(a2 + v29 + 88);
        *(v30 + 104) = *(a2 + v29 + 104);
        *(v30 + 88) = v32;
        *(v30 + 72) = v31;
        v33 = *(a2 + v29 + 120);
        v34 = *(a2 + v29 + 136);
        v35 = *(a2 + v29 + 152);
        *(v30 + 168) = *(a2 + v29 + 168);
        *(v30 + 152) = v35;
        *(v30 + 136) = v34;
        *(v30 + 120) = v33;
        v36 = *(a2 + v29 + 184);
        v37 = *(a2 + v29 + 200);
        v38 = *(a2 + v29 + 216);
        *(v30 + 230) = *(a2 + v29 + 230);
        *(v30 + 216) = v38;
        *(v30 + 200) = v37;
        *(v30 + 184) = v36;
        v29 += 248;
      }

      while (a2 + v29 != a3);
      v15 = a1[1];
      v8 += v29;
    }

    if (v15 != v8)
    {
      do
      {
        v44 = *(v15 - 208);
        if (v44)
        {
          *(v15 - 200) = v44;
          operator delete(v44);
        }

        v45 = v15 - 248;
        v46 = *(v15 - 248);
        if (v46)
        {
          *(v15 - 240) = v46;
          operator delete(v46);
        }

        v15 -= 248;
      }

      while (v45 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    v17 = a2 + v16;
    if (v15 != v8)
    {
      v18 = 0;
      do
      {
        v28 = v8 + v18;
        if (a2 == v8)
        {
          *(v28 + 24) = *(a2 + v18 + 24);
        }

        else
        {
          sub_30945C((v8 + v18), *(a2 + v18), *(a2 + v18 + 8), (*(a2 + v18 + 8) - *(a2 + v18)) >> 3);
          *(v28 + 24) = *(a2 + v18 + 24);
          sub_596098((v28 + 40), *(a2 + v18 + 40), *(a2 + v18 + 48), (*(a2 + v18 + 48) - *(a2 + v18 + 40)) >> 2);
        }

        v19 = v8 + v18;
        *(v19 + 64) = *(a2 + v18 + 64);
        v20 = *(a2 + v18 + 72);
        v21 = *(a2 + v18 + 88);
        *(v19 + 104) = *(a2 + v18 + 104);
        *(v19 + 88) = v21;
        *(v19 + 72) = v20;
        v22 = *(a2 + v18 + 120);
        v23 = *(a2 + v18 + 136);
        v24 = *(a2 + v18 + 152);
        *(v19 + 168) = *(a2 + v18 + 168);
        *(v19 + 152) = v24;
        *(v19 + 136) = v23;
        *(v19 + 120) = v22;
        v25 = *(a2 + v18 + 184);
        v26 = *(a2 + v18 + 200);
        v27 = *(a2 + v18 + 216);
        *(v19 + 230) = *(a2 + v18 + 230);
        *(v19 + 216) = v27;
        *(v19 + 200) = v26;
        *(v19 + 184) = v25;
        v18 += 248;
      }

      while (v16 != v18);
      v15 = a1[1];
    }

    v47 = v15;
    v43 = v15;
    if (v17 != a3)
    {
      v43 = v15;
      do
      {
        sub_5EF9A8(v43, v17);
        v17 += 248;
        v43 = v47 + 248;
        v47 += 248;
      }

      while (v17 != a3);
    }

    a1[1] = v43;
  }
}

void sub_5FED14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F5698(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FED2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F5698(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FED44(char ***a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 40);
          v12 -= 40;
          v13 = v14;
          if (v14)
          {
            *(v10 - 32) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x666666666666666)
    {
      v22 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v23 = 2 * v22;
      if (2 * v22 <= a4)
      {
        v23 = a4;
      }

      if (v22 >= 0x333333333333333)
      {
        v24 = 0x666666666666666;
      }

      else
      {
        v24 = v23;
      }

      if (v24 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_F54940(v8, v5);
        v5 += 40;
        v8 += 5;
      }

      while (v5 != a3);
      v15 = a1[1];
    }

    if (v15 != v8)
    {
      v19 = v15;
      do
      {
        v21 = *(v19 - 5);
        v19 -= 5;
        v20 = v21;
        if (v21)
        {
          *(v15 - 32) = v20;
          operator delete(v20);
        }

        v15 = v19;
      }

      while (v19 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    v17 = a2 + v16;
    if (v15 != v8)
    {
      do
      {
        sub_F54940(v8, v5);
        v5 += 40;
        v8 += 5;
        v16 -= 40;
      }

      while (v16);
      v15 = a1[1];
    }

    v25 = v15;
    v18 = v15;
    if (v17 != a3)
    {
      v18 = v15;
      do
      {
        sub_F548B4(v18, v17);
        v17 += 40;
        v18 = v25 + 40;
        v25 += 40;
      }

      while (v17 != a3);
    }

    a1[1] = v18;
  }
}

void sub_5FEFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_4E6B1C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FEFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_4E6B1C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FF000(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = *a1;
  if (0x4FCACE213F2B3885 * ((v6 - *a1) >> 3) < a4)
  {
    if (v7)
    {
      v8 = a4;
      for (i = *(a1 + 8); i != v7; sub_5ECDEC(a1, i))
      {
        i -= 616;
      }

      *(a1 + 8) = v7;
      operator delete(*a1);
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v8;
    }

    if (a4 <= 0x6A63BD81A98EF6)
    {
      v14 = 0x4FCACE213F2B3885 * (v6 >> 3);
      v15 = 2 * v14;
      if (2 * v14 <= a4)
      {
        v15 = a4;
      }

      if (v14 >= 0x3531DEC0D4C77BLL)
      {
        v16 = 0x6A63BD81A98EF6;
      }

      else
      {
        v16 = v15;
      }

      if (v16 <= 0x6A63BD81A98EF6)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v10 = *(a1 + 8) - v7;
  if (0x4FCACE213F2B3885 * (v10 >> 3) >= a4)
  {
    sub_5FF27C(a2, a3, v7);
    v18 = v17;
    for (j = *(a1 + 8); j != v18; sub_5ECDEC(a1, j))
    {
      j -= 616;
    }

    *(a1 + 8) = v18;
  }

  else
  {
    v11 = (a2 + v10);
    sub_5FF27C(a2, (a2 + v10), v7);
    v12 = *(a1 + 8);
    v20 = v12;
    if (v11 != a3)
    {
      v13 = *(a1 + 8);
      do
      {
        sub_571154(v13, v11);
        v11 = (v11 + 616);
        v13 = v20 + 616;
        v20 += 616;
      }

      while (v11 != a3);
      v12 = v13;
    }

    *(a1 + 8) = v12;
  }
}

void sub_5FF244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F59F8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FF264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F59F8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

__int128 *sub_5FF27C(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return a1;
  }

  v4 = a2;
  do
  {
    v7 = a3;
    v8 = *v3;
    v9 = v3[1];
    v10 = v3[2];
    *(a3 + 48) = *(v3 + 6);
    *(a3 + 16) = v9;
    *(a3 + 32) = v10;
    *a3 = v8;
    if (a3 != v3)
    {
      sub_31F64((a3 + 56), *(v3 + 7), *(v3 + 8), (*(v3 + 8) - *(v3 + 7)) >> 3);
    }

    v11 = *(v3 + 10);
    *(v7 + 88) = *(v3 + 22);
    *(v7 + 80) = v11;
    sub_594568(v7 + 96, (v3 + 6));
    sub_594568(v7 + 256, (v3 + 16));
    v12 = v3 + 26;
    sub_5410A0(v7 + 416, (v3 + 26));
    if (v7 != v3)
    {
      sub_31F64((v7 + 528), *(v3 + 66), *(v3 + 67), (*(v3 + 67) - *(v3 + 66)) >> 3);
      sub_5D8AE8((v7 + 552), *(v3 + 69), *(v3 + 70), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 70) - *(v3 + 69)) >> 3));
    }

    v5 = v3[36];
    v6 = v3[37];
    *(v7 + 608) = *(v3 + 76);
    *(v7 + 576) = v5;
    *(v7 + 592) = v6;
    v3 = (v3 + 616);
    a3 = v7 + 616;
  }

  while ((v12 + 200) != v4);
  return v4;
}

char *sub_5FF3AC(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
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

void sub_5FF53C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 6)
  {
    if (v8)
    {
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v12 = *(v9 - 48);
          if (v12)
          {
            v13 = *(v9 - 40);
            v11 = *(v9 - 48);
            if (v13 != v12)
            {
              v14 = *(v9 - 40);
              do
              {
                v16 = *(v14 - 24);
                v14 -= 24;
                v15 = v16;
                if (v16)
                {
                  *(v13 - 16) = v15;
                  operator delete(v15);
                }

                v13 = v14;
              }

              while (v14 != v12);
              v11 = *(v9 - 48);
            }

            *(v9 - 40) = v12;
            operator delete(v11);
          }

          v9 -= 64;
        }

        while (v9 != v8);
        v10 = *a1;
      }

      a1[1] = v8;
      operator delete(v10);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 58))
    {
      v24 = v7 >> 5;
      if (v7 >> 5 <= a4)
      {
        v24 = a4;
      }

      v25 = v7 >= 0x7FFFFFFFFFFFFFC0;
      v26 = 0x3FFFFFFFFFFFFFFLL;
      if (!v25)
      {
        v26 = v24;
      }

      if (!(v26 >> 58))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v17 = a1[1];
  if (a4 <= (v17 - v8) >> 6)
  {
    if (a2 != a3)
    {
      v22 = a2 + 24;
      do
      {
        v23 = v22 - 24;
        *v8 = *(v22 - 24);
        if (v8 != v22 - 24)
        {
          sub_3532D0((v8 + 16), *(v22 - 8), *v22, 0xAAAAAAAAAAAAAAABLL * ((*v22 - *(v22 - 8)) >> 3));
        }

        *(v8 + 40) = *(v22 + 16);
        *(v8 + 48) = *(v22 + 24);
        v8 += 64;
        v22 += 64;
      }

      while (v23 + 64 != a3);
      v17 = a1[1];
    }

    while (v17 != v8)
    {
      v28 = *(v17 - 48);
      if (v28)
      {
        v29 = *(v17 - 40);
        v27 = *(v17 - 48);
        if (v29 != v28)
        {
          v30 = *(v17 - 40);
          do
          {
            v32 = *(v30 - 24);
            v30 -= 24;
            v31 = v32;
            if (v32)
            {
              *(v29 - 16) = v31;
              operator delete(v31);
            }

            v29 = v30;
          }

          while (v30 != v28);
          v27 = *(v17 - 48);
        }

        *(v17 - 40) = v28;
        operator delete(v27);
      }

      v17 -= 64;
    }

    a1[1] = v8;
  }

  else
  {
    v18 = a2 + v17 - v8;
    if (v17 != v8)
    {
      v19 = v8 + 16;
      v20 = a2 + 24;
      do
      {
        v21 = v20 - 24;
        *(v19 - 16) = *(v20 - 24);
        if (v19 - 16 != v20 - 24)
        {
          sub_3532D0(v19, *(v20 - 8), *v20, 0xAAAAAAAAAAAAAAABLL * ((*v20 - *(v20 - 8)) >> 3));
        }

        *(v19 + 24) = *(v20 + 16);
        *(v19 + 32) = *(v20 + 24);
        v19 += 64;
        v20 += 64;
      }

      while (v21 + 64 != v18);
    }

    sub_5F5C3C(a1, v18, a3);
  }
}

void sub_5FF834(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  v7 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((v6 - *a1) >> 3) < a4)
  {
    if (v7)
    {
      v8 = a4;
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v7)
      {
        do
        {
          v11 = (v9 - 104);
          v32[0] = (v9 - 72);
          sub_5ECC44(v32);
          v9 = v11;
        }

        while (v11 != v7);
        v10 = *a1;
      }

      a1[1] = v7;
      operator delete(v10);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v8;
    }

    if (a4 <= 0x276276276276276)
    {
      v12 = 0x4EC4EC4EC4EC4EC5 * (v6 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x13B13B13B13B13BLL)
      {
        v14 = 0x276276276276276;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x276276276276276)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  if (0x4EC4EC4EC4EC4EC5 * ((v15 - v7) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v23 = a2 + 40;
      do
      {
        v26 = v23 - 40;
        v27 = *(v23 - 24);
        *v7 = *(v23 - 40);
        *(v7 + 1) = v27;
        if (v7 != (v23 - 40))
        {
          sub_5FD2CC(v7 + 4, *(v23 - 8), *v23, 0xD37A6F4DE9BD37A7 * ((*v23 - *(v23 - 8)) >> 3));
        }

        v24 = *(v23 + 16);
        v25 = *(v23 + 32);
        *(v7 + 81) = *(v23 + 41);
        *(v7 + 72) = v25;
        *(v7 + 56) = v24;
        v7 += 104;
        v23 += 104;
      }

      while (v26 + 104 != a3);
      v15 = a1[1];
    }

    for (; v15 != v7; v15 -= 104)
    {
      v32[0] = (v15 - 72);
      sub_5ECC44(v32);
    }

    a1[1] = v7;
  }

  else
  {
    v16 = a2 + v15 - v7;
    if (v15 != v7)
    {
      v17 = v7 + 32;
      v18 = a2 + 40;
      do
      {
        v21 = v18 - 40;
        v22 = *(v18 - 24);
        *(v17 - 2) = *(v18 - 40);
        *(v17 - 1) = v22;
        if (v17 - 32 != (v18 - 40))
        {
          sub_5FD2CC(v17, *(v18 - 8), *v18, 0xD37A6F4DE9BD37A7 * ((*v18 - *(v18 - 8)) >> 3));
        }

        v19 = *(v18 + 16);
        v20 = *(v18 + 32);
        *(v17 + 49) = *(v18 + 41);
        *(v17 + 40) = v20;
        *(v17 + 24) = v19;
        v17 += 104;
        v18 += 104;
      }

      while (v21 + 104 != v16);
      v15 = a1[1];
    }

    v34 = v15;
    v35 = v15;
    v32[0] = a1;
    v32[1] = &v34;
    v32[2] = &v35;
    v28 = v15;
    v33 = 0;
    if (v16 != a3)
    {
      v28 = v15;
      do
      {
        v29 = *(v16 + 16);
        *v28 = *v16;
        *(v28 + 16) = v29;
        *(v28 + 32) = 0;
        *(v28 + 40) = 0;
        *(v28 + 48) = 0;
        sub_5F3370(v28 + 32, *(v16 + 32), *(v16 + 40), 0xD37A6F4DE9BD37A7 * ((*(v16 + 40) - *(v16 + 32)) >> 3));
        v30 = *(v16 + 56);
        v31 = *(v16 + 72);
        *(v28 + 81) = *(v16 + 81);
        *(v28 + 72) = v31;
        *(v28 + 56) = v30;
        v16 += 104;
        v28 = v35 + 104;
        v35 += 104;
      }

      while (v16 != a3);
    }

    a1[1] = v28;
  }
}

void sub_5FFC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F6090(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5FFC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5F6090(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_5FFC40(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  if (a1 != a2)
  {
    sub_146EC((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  }

  v7 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v7;
  v8 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v8;
  sub_3E428((a1 + 152), a2 + 152);
  v9 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v9;
  if (a1 != a2)
  {
    v10 = *(a2 + 215);
    if (*(a1 + 215) < 0)
    {
      if (v10 >= 0)
      {
        v15 = (a2 + 192);
      }

      else
      {
        v15 = *(a2 + 192);
      }

      if (v10 >= 0)
      {
        v16 = *(a2 + 215);
      }

      else
      {
        v16 = *(a2 + 200);
      }

      sub_13B38((a1 + 192), v15, v16);
      v12 = (a2 + 216);
      v13 = *(a2 + 239);
      if (*(a1 + 239) < 0)
      {
LABEL_20:
        if ((v13 & 0x80u) == 0)
        {
          v20 = v12;
        }

        else
        {
          v20 = *(a2 + 216);
        }

        if ((v13 & 0x80u) == 0)
        {
          v21 = v13;
        }

        else
        {
          v21 = *(a2 + 224);
        }

        sub_13B38((a1 + 216), v20, v21);
        v18 = (a2 + 240);
        v19 = *(a2 + 263);
        if ((*(a1 + 263) & 0x80000000) == 0)
        {
LABEL_27:
          if ((v19 & 0x80) != 0)
          {
            sub_13A68((a1 + 240), *(a2 + 240), *(a2 + 248));
            v23 = a1 + 264;
            v24 = (a2 + 264);
            v25 = *(a2 + 287);
            if (*(a1 + 287) < 0)
            {
LABEL_41:
              if ((v25 & 0x80u) == 0)
              {
                v29 = v24;
              }

              else
              {
                v29 = *(a2 + 264);
              }

              if ((v25 & 0x80u) == 0)
              {
                v30 = v25;
              }

              else
              {
                v30 = *(a2 + 272);
              }

              sub_13B38(v23, v29, v30);
              goto LABEL_49;
            }
          }

          else
          {
            v22 = *v18;
            *(a1 + 256) = v18[2];
            *(a1 + 240) = v22;
            v23 = a1 + 264;
            v24 = (a2 + 264);
            v25 = *(a2 + 287);
            if (*(a1 + 287) < 0)
            {
              goto LABEL_41;
            }
          }

LABEL_38:
          if ((v25 & 0x80) != 0)
          {
            sub_13A68(v23, *(a2 + 264), *(a2 + 272));
          }

          else
          {
            v28 = *v24;
            *(v23 + 16) = v24[2];
            *v23 = v28;
          }

LABEL_49:
          *(a1 + 288) = *(a2 + 288);
          v31 = *(a2 + 304);
          *(a1 + 296) = *(a2 + 296);
          *(a1 + 304) = v31;
          sub_5FFF64((a1 + 312), *(a2 + 312), *(a2 + 320), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 320) - *(a2 + 312)) >> 4));
          sub_4D8010((a1 + 336), *(a2 + 336), *(a2 + 344), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 344) - *(a2 + 336)) >> 3));
          sub_516FFC((a1 + 360), *(a2 + 360), *(a2 + 368), 0x8E38E38E38E38E39 * ((*(a2 + 368) - *(a2 + 360)) >> 3));
          *(a1 + 384) = *(a2 + 384);
          sub_3532D0((a1 + 400), *(a2 + 400), *(a2 + 408), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 408) - *(a2 + 400)) >> 3));
          goto LABEL_50;
        }

LABEL_31:
        if ((v19 & 0x80u) == 0)
        {
          v26 = v18;
        }

        else
        {
          v26 = *(a2 + 240);
        }

        if ((v19 & 0x80u) == 0)
        {
          v27 = v19;
        }

        else
        {
          v27 = *(a2 + 248);
        }

        sub_13B38((a1 + 240), v26, v27);
        v23 = a1 + 264;
        v24 = (a2 + 264);
        v25 = *(a2 + 287);
        if (*(a1 + 287) < 0)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }
    }

    else if ((*(a2 + 215) & 0x80) != 0)
    {
      sub_13A68((a1 + 192), *(a2 + 192), *(a2 + 200));
      v12 = (a2 + 216);
      v13 = *(a2 + 239);
      if (*(a1 + 239) < 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v11 = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 192) = v11;
      v12 = (a2 + 216);
      v13 = *(a2 + 239);
      if (*(a1 + 239) < 0)
      {
        goto LABEL_20;
      }
    }

    if ((v13 & 0x80) != 0)
    {
      sub_13A68((a1 + 216), *(a2 + 216), *(a2 + 224));
      v18 = (a2 + 240);
      v19 = *(a2 + 263);
      if ((*(a1 + 263) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = *v12;
      *(a1 + 232) = v12[2];
      *(a1 + 216) = v17;
      v18 = (a2 + 240);
      v19 = *(a2 + 263);
      if ((*(a1 + 263) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_31;
  }

  *(a1 + 288) = *(a2 + 288);
  v14 = *(a2 + 304);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = v14;
  *(a1 + 384) = *(a2 + 384);
LABEL_50:
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  return a1;
}