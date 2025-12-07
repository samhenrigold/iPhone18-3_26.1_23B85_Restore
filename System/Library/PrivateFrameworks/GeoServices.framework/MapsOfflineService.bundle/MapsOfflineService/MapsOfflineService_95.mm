void sub_5FFF64(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v11 = *(v9 - 3);
          if (v11)
          {
            operator delete(v11);
          }

          v12 = *(v9 - 13);
          if (v12)
          {
            *(v9 - 12) = v12;
            operator delete(v12);
          }

          v9 -= 22;
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

    if (a4 <= 0x1745D1745D1745DLL)
    {
      v30 = 0x2E8BA2E8BA2E8BA3 * (v7 >> 4);
      v31 = 2 * v30;
      if (2 * v30 <= a4)
      {
        v31 = a4;
      }

      if (v30 >= 0xBA2E8BA2E8BA2ELL)
      {
        v32 = 0x1745D1745D1745DLL;
      }

      else
      {
        v32 = v31;
      }

      if (v32 <= 0x1745D1745D1745DLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  if (0x2E8BA2E8BA2E8BA3 * ((v13 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v23 = a2 + 80;
      do
      {
        v26 = v23 - 80;
        *v8 = *(v23 - 80);
        v27 = *(v23 - 64);
        v28 = *(v23 - 48);
        v29 = *(v23 - 32);
        *(v8 + 63) = *(v23 - 17);
        *(v8 + 2) = v28;
        *(v8 + 3) = v29;
        *(v8 + 1) = v27;
        if (v8 != (v23 - 80))
        {
          sub_146EC(v8 + 9, *(v23 - 8), *v23, (*v23 - *(v23 - 8)) >> 2);
        }

        v24 = *(v23 + 16);
        *(v8 + 112) = *(v23 + 32);
        *(v8 + 6) = v24;
        v25 = *(v23 + 40);
        *(v8 + 17) = *(v23 + 56);
        *(v8 + 15) = v25;
        sub_3E428(v8 + 19, v23 + 72);
        v8 += 22;
        v23 += 176;
      }

      while (v26 + 176 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v33 = *(v13 - 3);
      if (v33)
      {
        operator delete(v33);
      }

      v34 = *(v13 - 13);
      if (v34)
      {
        *(v13 - 12) = v34;
        operator delete(v34);
      }

      v13 -= 22;
    }

    a1[1] = v8;
  }

  else
  {
    v14 = a2 + v13 - v8;
    if (v13 != v8)
    {
      v15 = v8 + 9;
      v16 = a2 + 80;
      do
      {
        v19 = v16 - 80;
        *(v15 - 9) = *(v16 - 80);
        v20 = *(v16 - 64);
        v21 = *(v16 - 48);
        v22 = *(v16 - 32);
        *(v15 - 9) = *(v16 - 17);
        *(v15 - 3) = v22;
        *(v15 - 5) = v21;
        *(v15 - 7) = v20;
        if (v15 - 9 != (v16 - 80))
        {
          sub_146EC(v15, *(v16 - 8), *v16, (*v16 - *(v16 - 8)) >> 2);
        }

        v17 = *(v16 + 16);
        *(v15 + 40) = *(v16 + 32);
        *(v15 + 3) = v17;
        v18 = *(v16 + 40);
        *(v15 + 4) = *(v16 + 56);
        *(v15 + 3) = v18;
        sub_3E428(v15 + 10, v16 + 72);
        v15 += 22;
        v16 += 176;
      }

      while (v19 + 176 != v14);
    }

    sub_5F62A0(a1, v14, a3);
  }
}

uint64_t sub_6002A4(uint64_t result, _OWORD *a2, _OWORD *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = *(result + 16);
  v8 = *result;
  if (0x2E8BA2E8BA2E8BA3 * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(result + 8);
      v11 = *result;
      if (v10 != v8)
      {
        do
        {
          v12 = v10 - 176;
          sub_53A868((v10 - 160));
          v10 = v12;
        }

        while (v12 != v8);
        v11 = *v6;
      }

      *(v6 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0x1745D1745D1745DLL)
    {
      v13 = 0x2E8BA2E8BA2E8BA3 * (v7 >> 4);
      v14 = 2 * v13;
      if (2 * v13 <= a4)
      {
        v14 = a4;
      }

      if (v13 >= 0xBA2E8BA2E8BA2ELL)
      {
        v15 = 0x1745D1745D1745DLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15 <= 0x1745D1745D1745DLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v16 = *(result + 8);
  if (0x2E8BA2E8BA2E8BA3 * ((v16 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v5;
        result = sub_594568((v8 + 16), (v5 + 1));
        v8 += 176;
        v5 += 11;
      }

      while (v5 != a3);
      v16 = *(v6 + 8);
    }

    for (; v16 != v8; v16 -= 176)
    {
      result = sub_53A868((v16 - 160));
    }

    *(v6 + 8) = v8;
  }

  else
  {
    v17 = (a2 + v16 - v8);
    if (v16 != v8)
    {
      do
      {
        *v8 = *v5;
        result = sub_594568((v8 + 16), (v5 + 1));
        v5 += 11;
        v8 += 176;
      }

      while (v5 != v17);
      v16 = *(v6 + 8);
    }

    v18 = v16;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        *&v16[v19 * 16] = v17[v19];
        result = sub_55BD50(&v16[v19 * 16 + 16], &v17[v19 + 1]);
        v19 += 11;
      }

      while (&v17[v19] != a3);
      v18 = &v16[v19 * 16];
    }

    *(v6 + 8) = v18;
  }

  return result;
}

void sub_60054C(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    v6 = -v3;
    v7 = v4 - 160;
    do
    {
      v7 = sub_53A868(v7) - 176;
      v6 += 176;
    }

    while (v6);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

char *sub_600578(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 4) < a4)
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

    if (a4 <= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2AAAAAAAAAAAAAALL)
      {
        v11 = 0x555555555555555;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x555555555555555)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 4) >= a4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 4);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 4);
      v12 = a1[1];
    }

    v15 = (a3 - v14);
    if (v15)
    {
      result = memmove(v12, v14, (v15 - 4));
    }

    a1[1] = &v15[v12];
  }

  return result;
}

void sub_60070C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x4FCACE213F2B3885 * ((v7 - *a1) >> 3) < a4)
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
          v10 -= 616;
          sub_5C2320(v10);
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

    if (a4 <= 0x6A63BD81A98EF6)
    {
      v12 = 0x4FCACE213F2B3885 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x3531DEC0D4C77BLL)
      {
        v14 = 0x6A63BD81A98EF6;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x6A63BD81A98EF6)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  if (0x4FCACE213F2B3885 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v5;
        sub_5410A0(v8 + 16, v5 + 16);
        *(v8 + 128) = *(v5 + 128);
        sub_594568(v8 + 136, v5 + 136);
        sub_594568(v8 + 296, v5 + 296);
        sub_594568(v8 + 456, v5 + 456);
        v8 += 616;
        v5 += 616;
      }

      while (v5 != a3);
      v15 = a1[1];
    }

    while (v15 != v8)
    {
      v15 -= 616;
      sub_5C2320(v15);
    }

    a1[1] = v8;
  }

  else
  {
    v16 = a2 + v15 - v8;
    if (v15 != v8)
    {
      do
      {
        *v8 = *v5;
        sub_5410A0(v8 + 16, v5 + 16);
        *(v8 + 128) = *(v5 + 128);
        sub_594568(v8 + 136, v5 + 136);
        sub_594568(v8 + 296, v5 + 296);
        sub_594568(v8 + 456, v5 + 456);
        v5 += 616;
        v8 += 616;
      }

      while (v5 != v16);
      v15 = a1[1];
    }

    v17 = v15;
    if (v16 != a3)
    {
      v18 = 0;
      do
      {
        sub_5F6904(v15 + v18, v16 + v18);
        v18 += 616;
      }

      while (v16 + v18 != a3);
      v17 = v15 + v18;
    }

    a1[1] = v17;
  }
}

char *sub_600A2C(char **a1, char *a2, char *a3, unint64_t a4)
{
  v4 = a2;
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  if (a4 <= (v12 - result) >> 4)
  {
    while (v4 != a3)
    {
      *result = *v4;
      result[8] = v4[8];
      v4 += 16;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v13 = &a2[v12 - result];
    if (v12 != result)
    {
      do
      {
        *result = *v4;
        result[8] = v4[8];
        v4 += 16;
        result += 16;
      }

      while (v4 != v13);
      v12 = a1[1];
    }

    v14 = v12;
    if (v13 != a3)
    {
      v14 = v12;
      v15 = v12;
      do
      {
        v16 = *v13;
        v13 += 16;
        *v15 = v16;
        v15 += 16;
        v14 += 16;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

void sub_600BE8(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 4) < a4)
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
          v11 = *(v9 - 40);
          if (v11)
          {
            *(v9 - 32) = v11;
            operator delete(v11);
          }

          v9 -= 48;
        }

        while (v9 != v7);
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

    if (a4 <= 0x555555555555555)
    {
      v21 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4);
      v22 = 2 * v21;
      if (2 * v21 <= a4)
      {
        v22 = a4;
      }

      if (v21 >= 0x2AAAAAAAAAAAAAALL)
      {
        v23 = 0x555555555555555;
      }

      else
      {
        v23 = v22;
      }

      if (v23 <= 0x555555555555555)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v7) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v18 = a2 + 16;
      do
      {
        v20 = v18 - 16;
        *v7 = *(v18 - 16);
        if (v7 != v18 - 16)
        {
          sub_35354C((v7 + 8), *(v18 - 8), *v18, 0xAAAAAAAAAAAAAAABLL * ((*v18 - *(v18 - 8)) >> 2));
        }

        v19 = *(v18 + 16);
        *(v7 + 40) = *(v18 + 24);
        *(v7 + 32) = v19;
        v7 += 48;
        v18 += 48;
      }

      while (v20 + 48 != a3);
      v12 = a1[1];
    }

    while (v12 != v7)
    {
      v24 = *(v12 - 40);
      if (v24)
      {
        *(v12 - 32) = v24;
        operator delete(v24);
      }

      v12 -= 48;
    }

    a1[1] = v7;
  }

  else
  {
    v13 = a2 + v12 - v7;
    if (v12 != v7)
    {
      v14 = v7 + 8;
      v15 = a2 + 16;
      do
      {
        v17 = v15 - 16;
        *(v14 - 8) = *(v15 - 16);
        if (v14 - 8 != v15 - 16)
        {
          sub_35354C(v14, *(v15 - 8), *v15, 0xAAAAAAAAAAAAAAABLL * ((*v15 - *(v15 - 8)) >> 2));
        }

        v16 = *(v15 + 16);
        *(v14 + 32) = *(v15 + 24);
        *(v14 + 24) = v16;
        v14 += 48;
        v15 += 48;
      }

      while (v17 + 48 != v13);
      v12 = a1[1];
    }

    a1[1] = sub_5F6C24(a1, v13, a3, v12);
  }
}

void sub_600EA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
        *(v7 + 4) = *(a2 + 4);
        *(v7 + 6) = *(a2 + 6);
        if (v7 != a2)
        {
          sub_35354C(v7 + 4, a2[4], a2[5], 0xAAAAAAAAAAAAAAABLL * ((a2[5] - a2[4]) >> 2));
        }

        v8 = a2[7];
        *(v7 + 16) = *(a2 + 16);
        v7[7] = v8;
        v9 = *v7;
        sub_601004(a1, v7);
        a2 = *a2;
        v7 = v9;
        if (!v9)
        {
          goto LABEL_12;
        }
      }

      do
      {
        v10 = *v7;
        v11 = v7[4];
        if (v11)
        {
          v7[5] = v11;
          operator delete(v11);
        }

        operator delete(v7);
        v7 = v10;
      }

      while (v10);
    }
  }

LABEL_12:
  if (a2 != a3)
  {
    sub_601134();
  }
}

void sub_600FC0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_5EC928(v1, v2);
  __cxa_rethrow();
}

void sub_600FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F72B0(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_601004(uint64_t *a1, unsigned __int8 *a2)
{
  v5 = a2 + 16;
  v4 = a2[16];
  *(v5 - 1) = v4;
  v6 = sub_13EC4(a1, v4, v5);
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

void sub_601240(_Unwind_Exception *a1)
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

void sub_601264(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
        v7[2] = a2[2];
        *(v7 + 6) = *(a2 + 6);
        v8 = *v7;
        sub_6013A4(a1, v7);
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

void sub_60135C(void *a1)
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

void *sub_6013A4(uint64_t *a1, void *a2)
{
  v5 = a2 + 2;
  v4 = a2[2];
  *(v5 - 1) = v4;
  v6 = sub_6014D4(a1, v4, v5);
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

void *sub_6014D4(uint64_t a1, unint64_t a2, void *a3)
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
    sub_601754(a1, prime);
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

      v16 = v10[1];
      if ((v16 & v9) != (v9 & a2))
      {
        break;
      }

      v12 = v16 == a2 && v10[2] == *a3;
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

    v32 = v27[1];
    v33 = v32;
    if (v32 >= v6)
    {
      v33 = v32 % v6;
    }

    if (v33 != v26)
    {
      break;
    }

    v29 = v32 == a2 && v27[2] == *a3;
    v30 = v29 != (v28 & 1);
    v31 = v28 & v30;
    v28 |= v30;
  }

  while (v31 != 1);
  return result;
}

void sub_601754(uint64_t a1, unint64_t a2)
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

void sub_601910(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
        v7[2] = a2[2];
        *(v7 + 6) = *(a2 + 6);
        v8 = *v7;
        sub_6013A4(a1, v7);
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

void sub_601A08(void *a1)
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

void sub_601A50(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  v9 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((v8 - *a1) >> 4) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v9)
      {
        do
        {
          v10 -= 176;
          sub_5C17B4(v10);
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

    if (a4 <= 0x1745D1745D1745DLL)
    {
      v12 = 0x2E8BA2E8BA2E8BA3 * (v8 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0xBA2E8BA2E8BA2ELL)
      {
        v14 = 0x1745D1745D1745DLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x1745D1745D1745DLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  v16 = v15 - v9;
  if (0x2E8BA2E8BA2E8BA3 * ((v15 - v9) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_52CB8C(v9, v6);
        if (v6 != v9)
        {
          sub_3865E0((v9 + 152), *(v6 + 152), *(v6 + 160), (*(v6 + 160) - *(v6 + 152)) >> 4);
        }

        v6 += 176;
        v9 += 176;
      }

      while (v6 != a3);
      v15 = a1[1];
    }

    while (v15 != v9)
    {
      v15 -= 176;
      sub_5C17B4(v15);
    }

    a1[1] = v9;
  }

  else
  {
    if (v15 != v9)
    {
      v17 = v15 - v9;
      v18 = a2;
      do
      {
        sub_52CB8C(v9, v18);
        if (v18 != v9)
        {
          sub_3865E0((v9 + 152), *(v18 + 152), *(v18 + 160), (*(v18 + 160) - *(v18 + 152)) >> 4);
        }

        v18 += 176;
        v9 += 176;
        v17 -= 176;
      }

      while (v17);
    }

    sub_5F4034(a1, v6 + v16, a3);
  }
}

void sub_601CBC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0x7E3F1F8FC7E3F1F9 * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      for (i = *(a1 + 8); i != v8; sub_5EC268(a1, i))
      {
        i -= 1168;
      }

      *(a1 + 8) = v8;
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0x381C0E070381C0)
    {
      v19 = 0x7E3F1F8FC7E3F1F9 * (v7 >> 4);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x1C0E070381C0E0)
      {
        v21 = 0x381C0E070381C0;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0x381C0E070381C0)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v11 = *(a1 + 8) - v8;
  if (0x7E3F1F8FC7E3F1F9 * (v11 >> 4) >= a4)
  {
    sub_602078(a2, a3, v8);
    v23 = v22;
    for (j = *(a1 + 8); j != v23; sub_5EC268(a1, j))
    {
      j -= 1168;
    }

    *(a1 + 8) = v23;
  }

  else
  {
    v12 = a2 + v11;
    sub_602078(a2, a2 + v11, v8);
    v13 = *(a1 + 8);
    v25 = v13;
    if (v12 != a3)
    {
      v14 = v11 + a2 + 16;
      v15 = *(a1 + 8);
      do
      {
        v17 = v14 - 16;
        *v15 = *(v14 - 16);
        *(v15 + 8) = *(v14 - 8);
        *(v15 + 16) = 0;
        *(v15 + 1136) = 0;
        v18 = v15;
        if (*(v14 + 1120) == 1)
        {
          sub_52B7D8(v15 + 16, v14);
          *(v15 + 1136) = 1;
          v18 = v25;
        }

        v16 = *(v14 + 1128);
        *(v15 + 1159) = *(v14 + 1143);
        *(v15 + 1144) = v16;
        v15 = v18 + 1168;
        v25 = v18 + 1168;
        v14 += 1168;
      }

      while (v17 + 1168 != a3);
      v13 = v18 + 1168;
    }

    *(a1 + 8) = v13;
  }
}

void sub_601FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5EC394(v10);
  sub_602010(&a9);
  *(v9 + 8) = v11;
  _Unwind_Resume(a1);
}

void sub_601FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5EC394(v11);
  sub_602010(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_602010(uint64_t a1)
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
        v4 -= 1168;
        sub_5EC268(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_602078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a2;
    for (i = 0; ; i += 1168)
    {
      v9 = a1 + i;
      v10 = a3 + i;
      *v10 = *(a1 + i);
      *(v10 + 8) = *(a1 + i + 8);
      if (*(a3 + i + 1136) == *(a1 + i + 1136))
      {
        if (*(a3 + i + 1136))
        {
          sub_52C990(v10 + 16, v9 + 16);
        }

        goto LABEL_4;
      }

      if (!*(a3 + i + 1136))
      {
        sub_52B7D8(v10 + 16, v9 + 16);
        *(v10 + 1136) = 1;
        goto LABEL_4;
      }

      v11 = a3 + i;
      sub_529324(a3 + i + 760);
      *(a3 + i + 720) = off_26696C8;
      if (*(a3 + i + 751) < 0)
      {
        operator delete(*(v11 + 728));
        if ((*(v11 + 671) & 0x80000000) == 0)
        {
LABEL_11:
          v12 = a3 + i;
          if ((*(a3 + i + 639) & 0x80000000) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_20;
        }
      }

      else if ((*(v11 + 671) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      operator delete(*(a3 + i + 648));
      v12 = a3 + i;
      if ((*(a3 + i + 639) & 0x80000000) == 0)
      {
LABEL_12:
        if ((*(v12 + 615) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_21;
      }

LABEL_20:
      operator delete(*(v12 + 616));
      if ((*(v12 + 615) & 0x80000000) == 0)
      {
LABEL_13:
        v13 = a3 + i;
        if ((*(a3 + i + 575) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_22;
      }

LABEL_21:
      operator delete(*(a3 + i + 592));
      v13 = a3 + i;
      if ((*(a3 + i + 575) & 0x80000000) == 0)
      {
LABEL_14:
        if ((*(v13 + 543) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_23;
      }

LABEL_22:
      operator delete(*(v13 + 552));
      if ((*(v13 + 543) & 0x80000000) == 0)
      {
LABEL_15:
        v14 = a3 + i;
        if (*(a3 + i + 519) < 0)
        {
          goto LABEL_24;
        }

        goto LABEL_3;
      }

LABEL_23:
      operator delete(*(v11 + 520));
      v14 = a3 + i;
      if (*(a3 + i + 519) < 0)
      {
LABEL_24:
        operator delete(*(v14 + 496));
      }

LABEL_3:
      sub_2C0F28(v10 + 16);
      *(v10 + 1136) = 0;
LABEL_4:
      v7 = a3 + i + 1144;
      v8 = *(v9 + 1144);
      *(v7 + 15) = *(v9 + 1159);
      *v7 = v8;
      if (v9 + 1168 == v5)
      {
        return v5;
      }
    }
  }

  return a1;
}

uint64_t sub_60226C(uint64_t a1, uint64_t a2)
{
  sub_594568(a1, a2);
  *(a1 + 160) = *(a2 + 160);
  if (a1 == a2)
  {
    sub_594568(a1 + 192, a2 + 192);
    sub_5410A0(a1 + 352, a2 + 352);
  }

  else
  {
    sub_6025E0((a1 + 168), *(a2 + 168), *(a2 + 176), 0x8F5C28F5C28F5C29 * ((*(a2 + 176) - *(a2 + 168)) >> 5));
    sub_594568(a1 + 192, a2 + 192);
    sub_5410A0(a1 + 352, a2 + 352);
    sub_74300((a1 + 464), *(a2 + 464), *(a2 + 472), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 472) - *(a2 + 464)) >> 3));
  }

  *(a1 + 488) = *(a2 + 488);
  return a1;
}

uint64_t *sub_602340(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xEF7BDEF7BDEF7BDFLL * ((v7 - *result) >> 4) < a4)
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
          v10 = sub_55A8B4(v10 - 496);
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

    if (a4 <= 0x84210842108421)
    {
      v12 = 0xEF7BDEF7BDEF7BDFLL * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x42108421084210)
      {
        v14 = 0x84210842108421;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x84210842108421)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0xEF7BDEF7BDEF7BDFLL * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_60226C(v8, v5);
        v5 += 496;
        v8 += 496;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 496;
      result = sub_55A8B4(v15);
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
        result = sub_60226C(v8, v5);
        v5 += 496;
        v8 += 496;
        v16 -= 496;
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
        result = sub_5F4668((v15 + v19), v17 + v19);
        v19 += 496;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_6025B4(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 496;
    v7 = -v4;
    do
    {
      v6 = sub_55A8B4(v6) - 496;
      v7 += 496;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_6025E0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x8F5C28F5C28F5C29 * ((v7 - *a1) >> 5) < a4)
  {
    if (v8)
    {
      v35 = a4;
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v11 = *(v9 - 24);
          if (v11)
          {
            v12 = *(v9 - 16);
            v13 = *(v9 - 24);
            if (v12 != v11)
            {
              do
              {
                v14 = *(v12 - 1);
                v12 -= 3;
                if (v14 < 0)
                {
                  operator delete(*v12);
                }
              }

              while (v12 != v11);
              v13 = *(v9 - 24);
            }

            *(v9 - 16) = v11;
            operator delete(v13);
          }

          v15 = v9 - 800;
          v16 = *(v9 - 32);
          if (v16 != -1)
          {
            (off_266BAF8[v16])(&v36, v9 - 800);
          }

          *(v9 - 32) = -1;
          v9 -= 800;
        }

        while (v15 != v8);
        v10 = *a1;
      }

      a1[1] = v8;
      operator delete(v10);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v35;
    }

    if (a4 <= 0x51EB851EB851EBLL)
    {
      v26 = 0x8F5C28F5C28F5C29 * (v7 >> 5);
      v27 = 2 * v26;
      if (2 * v26 <= a4)
      {
        v27 = a4;
      }

      if (v26 >= 0x28F5C28F5C28F5)
      {
        v28 = 0x51EB851EB851EBLL;
      }

      else
      {
        v28 = v27;
      }

      if (v28 <= 0x51EB851EB851EBLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v17 = a1[1];
  v18 = v17 - v8;
  if (0x8F5C28F5C28F5C29 * ((v17 - v8) >> 5) >= a4)
  {
    if (a2 == a3)
    {
LABEL_50:
      if (v17 != v8)
      {
        do
        {
          v29 = *(v17 - 24);
          if (v29)
          {
            v30 = *(v17 - 16);
            v31 = *(v17 - 24);
            if (v30 != v29)
            {
              do
              {
                v32 = *(v30 - 1);
                v30 -= 3;
                if (v32 < 0)
                {
                  operator delete(*v30);
                }
              }

              while (v30 != v29);
              v31 = *(v17 - 24);
            }

            *(v17 - 16) = v29;
            operator delete(v31);
          }

          v33 = v17 - 800;
          v34 = *(v17 - 32);
          if (v34 != -1)
          {
            (off_266BAF8[v34])(&v36, v17 - 800);
          }

          *(v17 - 32) = -1;
          v17 -= 800;
        }

        while (v33 != v8);
      }

      a1[1] = v8;
      return;
    }

    v23 = (v8 + 776);
    while (1)
    {
      v24 = *(v23 - 2);
      v25 = *(v5 + 768);
      if (v24 == -1)
      {
        if (v25 != -1)
        {
LABEL_34:
          v36 = v23 - 97;
          (off_266BC18[v25])(&v36, v23 - 97, v5);
        }
      }

      else
      {
        if (v25 != -1)
        {
          goto LABEL_34;
        }

        (off_266BAF8[v24])(&v36, v23 - 97);
        *(v23 - 2) = -1;
      }

      if (v5 != v23 - 97)
      {
        sub_74300(v23, *(v5 + 776), *(v5 + 784), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 784) - *(v5 + 776)) >> 3));
      }

      v5 += 800;
      v23 += 100;
      if (v5 == a3)
      {
        v17 = a1[1];
        v8 = (v23 - 97);
        goto LABEL_50;
      }
    }
  }

  if (v17 == v8)
  {
    goto LABEL_48;
  }

  v19 = 0;
  do
  {
    v20 = v8 + v19;
    v21 = *(v8 + v19 + 768);
    v22 = *(v5 + v19 + 768);
    if (v21 == -1)
    {
      if (v22 == -1)
      {
        goto LABEL_25;
      }
    }

    else if (v22 == -1)
    {
      (off_266BAF8[v21])(&v36, v8 + v19);
      *(v20 + 768) = -1;
      goto LABEL_25;
    }

    v36 = (v8 + v19);
    (off_266BC18[v22])(&v36, v8 + v19, v5 + v19);
LABEL_25:
    if (v5 + v19 != v20)
    {
      sub_74300((v8 + v19 + 776), *(v5 + v19 + 776), *(v5 + v19 + 784), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + v19 + 784) - *(v5 + v19 + 776)) >> 3));
    }

    v19 += 800;
  }

  while (v18 != v19);
  v17 = a1[1];
LABEL_48:
  a1[1] = sub_5F4818(a1, v5 + v18, a3, v17);
}

uint64_t *sub_602A1C(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 768);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_266BAF8[v2])(&v3, v1);
  }

  *(v1 + 768) = 0;
  return result;
}

uint64_t *sub_602A84(uint64_t *result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 768);
  if (v4 != -1)
  {
    if (v4 == 3)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_266BAF8[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 768) = 3;
  return result;
}

void **sub_602B0C(void **result, uint64_t a2, __int128 *a3)
{
  v3 = *(result + 192);
  if (v3 != 1)
  {
    v6 = result;
    if (*(a3 + 23) < 0)
    {
      result = sub_325C(&v11, *a3, *(a3 + 1));
      v3 = *(v6 + 192);
      if (v3 == -1)
      {
LABEL_12:
        *v6 = v11;
        v6[2] = v12;
        *(v6 + 192) = 1;
        return result;
      }
    }

    else
    {
      v11 = *a3;
      v12 = *(a3 + 2);
      if (v3 == -1)
      {
        goto LABEL_12;
      }
    }

    result = (off_266BAF8[v3])(&v13, v6);
    goto LABEL_12;
  }

  if (a2 != a3)
  {
    v4 = *(a3 + 23);
    if (*(a2 + 23) < 0)
    {
      if (v4 >= 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = *a3;
      }

      if (v4 >= 0)
      {
        v8 = *(a3 + 23);
      }

      else
      {
        v8 = *(a3 + 1);
      }

      return sub_13B38(a2, v7, v8);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      v10 = *a3;
      v9 = *(a3 + 1);

      return sub_13A68(a2, v10, v9);
    }

    else
    {
      v5 = *a3;
      *(a2 + 16) = *(a3 + 2);
      *a2 = v5;
    }
  }

  return result;
}

uint64_t sub_602C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 768) == 2)
  {
    sub_594568(a2, a3);
    sub_594568(a2 + 160, a3 + 160);
    sub_5410A0(a2 + 320, a3 + 320);
    sub_594568(a2 + 432, a3 + 432);
    result = sub_594568(a2 + 592, a3 + 592);
    *(a2 + 752) = *(a3 + 752);
    return result;
  }

  sub_55BC9C(v9, a3);
  v7 = *(a1 + 768);
  if (v7 != -1)
  {
    (off_266BAF8[v7])(&v19, a1);
  }

  *(a1 + 768) = -1;
  sub_55B2F8(a1, v9);
  *(a1 + 768) = 2;
  sub_53A868(&v18);
  sub_53A868(&v17);
  if (v16 < 0)
  {
    operator delete(__p);
    if ((v14 & 0x80000000) == 0)
    {
LABEL_7:
      v8 = v12;
      if (v12 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v13);
  v8 = v12;
  if (v12 != -1)
  {
LABEL_11:
    (off_266BAC0[v8])(&v19, &v11);
  }

LABEL_12:
  v12 = -1;
  sub_53A868(&v10);
  return sub_53A868(v9);
}

char *sub_602DCC(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 5)
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

    if (!(a4 >> 59))
    {
      v9 = v6 >> 4;
      if (v6 >> 4 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFE0;
      v11 = 0x7FFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 59))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 5)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 4);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 4);
      v12 = a1[1];
    }

    v15 = (a3 - v14);
    if (v15)
    {
      result = memmove(v12, v14, (v15 - 4));
    }

    a1[1] = &v15[v12];
  }

  return result;
}

void **sub_602F2C(void **result, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x70913F8BCD29C245 * ((v7 - *result) >> 3) < a4)
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
          v12 = (v10 - 1128);
          v13 = *(v10 - 2);
          if (v13 != -1)
          {
            (off_266BAE8[v13])(v30, v10 - 1128);
          }

          *(v10 - 2) = -1;
          v10 -= 1128;
        }

        while (v12 != v8);
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

    if (a4 <= 0x3A196B1EDD80E8)
    {
      v27 = 0x70913F8BCD29C245 * (v7 >> 3);
      v28 = 2 * v27;
      if (2 * v27 <= a4)
      {
        v28 = a4;
      }

      if (v27 >= 0x1D0CB58F6EC074)
      {
        v29 = 0x3A196B1EDD80E8;
      }

      else
      {
        v29 = v28;
      }

      if (v29 <= 0x3A196B1EDD80E8)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = result[1];
  v15 = (v14 - v8);
  if (0x70913F8BCD29C245 * ((v14 - v8) >> 3) >= a4)
  {
    if (a2 == a3)
    {
LABEL_32:
      if (v14 != v8)
      {
        do
        {
          v25 = (v14 - 1128);
          v26 = *(v14 - 2);
          if (v26 != -1)
          {
            result = (off_266BAE8[v26])(v30, v14 - 1128);
          }

          *(v14 - 2) = -1;
          v14 -= 1128;
        }

        while (v25 != v8);
      }

      v6[1] = v8;
      return result;
    }

    while (1)
    {
      while (1)
      {
        v23 = v8[280];
        v24 = *(v5 + 1120);
        if (v23 != -1)
        {
          break;
        }

        if (v24 != -1)
        {
          goto LABEL_26;
        }

LABEL_27:
        v5 += 1128;
        v8 += 282;
        if (v5 == a3)
        {
          goto LABEL_31;
        }
      }

      if (v24 != -1)
      {
LABEL_26:
        v30[0] = v8;
        result = (off_266BC48[v24])(v30, v8, v5);
        goto LABEL_27;
      }

      result = (off_266BAE8[v23])(v30, v8);
      v8[280] = -1;
      v5 += 1128;
      v8 += 282;
      if (v5 == a3)
      {
LABEL_31:
        v14 = v6[1];
        goto LABEL_32;
      }
    }
  }

  if (v14 == v8)
  {
    goto LABEL_18;
  }

  v16 = (v14 - v8);
  v17 = a2;
  do
  {
    while (1)
    {
      v18 = v8[280];
      v19 = *(v17 + 1120);
      if (v18 != -1)
      {
        break;
      }

      if (v19 != -1)
      {
        goto LABEL_12;
      }

LABEL_13:
      v17 += 1128;
      v8 += 282;
      v16 -= 1128;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    if (v19 != -1)
    {
LABEL_12:
      v30[0] = v8;
      result = (off_266BC48[v19])(v30, v8, v17);
      goto LABEL_13;
    }

    result = (off_266BAE8[v18])(v30, v8);
    v8[280] = -1;
    v17 += 1128;
    v8 += 282;
    v16 -= 1128;
  }

  while (v16);
LABEL_17:
  v14 = v6[1];
LABEL_18:
  v20 = &v15[v5];
  v32 = v14;
  v33 = v14;
  v30[0] = v6;
  v30[1] = &v32;
  v30[2] = &v33;
  v21 = v14;
  v31 = 0;
  if (v20 != a3)
  {
    v21 = v14;
    do
    {
      *v21 = 0;
      v21[280] = -1;
      v22 = *(v20 + 280);
      if (v22 != -1)
      {
        v34 = v21;
        result = (off_266BC38[v22])(&v34, v20);
        v21[280] = v22;
        v21 = v33;
      }

      v20 += 1128;
      v21 += 282;
      v33 = v21;
    }

    while (v20 != a3);
  }

  v6[1] = v21;
  return result;
}

void sub_603350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5EBFA8(v4);
  sub_6033B4(va);
  *(v3 + 8) = v5;
  _Unwind_Resume(a1);
}

void sub_603374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5EBFA8(v5);
  sub_6033B4(va);
  *(v3 + 8) = v4;
  _Unwind_Resume(a1);
}

uint64_t *sub_60339C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *(v2 + 8) = *(a2 + 2);
  *v2 = v3;
  return result;
}

uint64_t sub_6033B4(uint64_t a1)
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
        v6 = v4 - 1128;
        v7 = *(v4 - 8);
        if (v7 != -1)
        {
          (off_266BAE8[v7])(&v9, v4 - 1128);
        }

        *(v4 - 8) = -1;
        v4 -= 1128;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

uint64_t *sub_60345C(uint64_t *result, uint64_t a2, uint64_t *a3)
{
  v3 = *result;
  v4 = *(*result + 1120);
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      v5 = *a3;
      *(a2 + 8) = *(a3 + 8);
      *a2 = v5;
      return result;
    }

    v6 = a3;
    result = (off_266BAE8[v4])(&v8, v3);
    a3 = v6;
  }

  *(v3 + 1120) = -1;
  v7 = *a3;
  *(v3 + 8) = *(a3 + 2);
  *v3 = v7;
  *(v3 + 1120) = 1;
  return result;
}

uint64_t sub_6034FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 1120))
  {
    sub_52B7D8(v6, a3);
    v4 = *(a1 + 1120);
    if (v4 != -1)
    {
      (off_266BAE8[v4])(&v23, a1);
    }

    *(a1 + 1120) = -1;
    sub_529850(a1, v6);
    *(a1 + 1120) = 0;
    sub_529324(&v22);
    v19 = off_26696C8;
    if (v21 < 0)
    {
      operator delete(__p);
      if ((v18 & 0x80000000) == 0)
      {
LABEL_6:
        if ((v16 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    else if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(v17);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_7:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    operator delete(v15);
    if ((v14 & 0x80000000) == 0)
    {
LABEL_8:
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_18:
    operator delete(v13);
    if ((v12 & 0x80000000) == 0)
    {
LABEL_9:
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_19:
    operator delete(v11);
    if ((v10 & 0x80000000) == 0)
    {
LABEL_10:
      if ((v8 & 0x80000000) == 0)
      {
        return sub_2C0F28(v6);
      }

LABEL_21:
      operator delete(v7);
      return sub_2C0F28(v6);
    }

LABEL_20:
    operator delete(v9);
    if ((v8 & 0x80000000) == 0)
    {
      return sub_2C0F28(v6);
    }

    goto LABEL_21;
  }

  return sub_52C990(a2, a3);
}

uint64_t sub_603684(void **a1, uint64_t a2)
{
  v2 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x3A83A83A83A83ALL)
  {
    sub_1794();
  }

  if (0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 5) >= 0x1D41D41D41D41DLL)
  {
    v5 = 0x3A83A83A83A83ALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x3A83A83A83A83ALL)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 32 * ((a1[1] - *a1) >> 5);
  sub_52B7D8(v13, a2);
  v6 = 1120 * v2 + 1120;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 + v13 - v8;
  v14 = v9;
  if (*a1 != v8)
  {
    v10 = &v7[v13 - v8];
    v11 = *a1;
    do
    {
      sub_529850(v10, v11);
      v11 += 1120;
      v10 = v14 + 1120;
      v14 += 1120;
    }

    while (v11 != v8);
    do
    {
      sub_5EBD80(a1, v7);
      v7 += 1120;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_603830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_603860(va);
  _Unwind_Resume(a1);
}

void sub_603844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_5F4B9C(va1);
  sub_603860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_603860(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    v4 = *(a1 + 32);
    *(a1 + 16) = v3 - 1120;
    sub_5EBD80(v4, v3 - 1120);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_6038B8(void **result, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xFAFAFAFAFAFAFAFBLL * ((v7 - *result) >> 4) < a4)
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
          v10 = sub_5C0F34(v10 - 816);
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

    if (a4 <= 0x50505050505050)
    {
      v12 = 0xFAFAFAFAFAFAFAFBLL * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x28282828282828)
      {
        v14 = 0x50505050505050;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x50505050505050)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = &v15[-v8];
  if (0xFAFAFAFAFAFAFAFBLL * (&v15[-v8] >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_603B58(v8, v5);
        v5 += 816;
        v8 += 816;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 816;
      result = sub_5C0F34(v15);
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
        result = sub_603B58(v8, v5);
        v5 += 816;
        v8 += 816;
        v16 -= 816;
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
        result = sub_5DAD70(&v15[v19], &v17[v19]);
        v19 += 816;
      }

      while (&v17[v19] != a3);
      v18 = &v15[v19];
    }

    v6[1] = v18;
  }

  return result;
}

void sub_603B2C(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 816;
    v7 = -v4;
    do
    {
      v6 = sub_5C0F34(v6) - 816;
      v7 += 816;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_603B58(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (a1 != a2)
  {
    v5 = *(a2 + 31);
    if (*(a1 + 31) < 0)
    {
      if (v5 >= 0)
      {
        v9 = (a2 + 8);
      }

      else
      {
        v9 = *(a2 + 8);
      }

      if (v5 >= 0)
      {
        v10 = *(a2 + 31);
      }

      else
      {
        v10 = *(a2 + 16);
      }

      sub_13B38(v4, v9, v10);
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
        goto LABEL_16;
      }
    }

    else if ((*(a2 + 31) & 0x80) != 0)
    {
      sub_13A68(v4, *(a2 + 8), *(a2 + 16));
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
LABEL_16:
        if ((v8 & 0x80u) == 0)
        {
          v12 = v7;
        }

        else
        {
          v12 = *(a2 + 32);
        }

        if ((v8 & 0x80u) == 0)
        {
          v13 = v8;
        }

        else
        {
          v13 = *(a2 + 40);
        }

        sub_13B38((a1 + 32), v12, v13);
        goto LABEL_24;
      }
    }

    else
    {
      v6 = *(a2 + 8);
      *(v4 + 16) = *(a2 + 24);
      *v4 = v6;
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
        goto LABEL_16;
      }
    }

    if ((v8 & 0x80) != 0)
    {
      sub_13A68((a1 + 32), *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v11 = *v7;
      *(a1 + 48) = v7[2];
      *(a1 + 32) = v11;
    }

LABEL_24:
    *(a1 + 88) = *(a2 + 88);
    sub_5CE3D0(a1 + 56, *(a2 + 72), 0);
    sub_31F64((a1 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
    sub_5F9F30((a1 + 120), *(a2 + 120), *(a2 + 128), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 128) - *(a2 + 120)) >> 5));
    sub_5F9F30((a1 + 144), *(a2 + 144), *(a2 + 152), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 152) - *(a2 + 144)) >> 5));
  }

  sub_594568(a1 + 168, a2 + 168);
  sub_594568(a1 + 328, a2 + 328);
  v15 = *(a2 + 504);
  v14 = *(a2 + 520);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 504) = v15;
  *(a1 + 520) = v14;
  v17 = *(a2 + 552);
  v16 = *(a2 + 568);
  v18 = *(a2 + 536);
  *(a1 + 580) = *(a2 + 580);
  *(a1 + 552) = v17;
  *(a1 + 568) = v16;
  *(a1 + 536) = v18;
  sub_5410A0(a1 + 600, a2 + 600);
  if (a1 == a2)
  {
    v25 = *(a2 + 736);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 736) = v25;
    v26 = *(a2 + 784);
    *(a1 + 788) = *(a2 + 788);
    *(a1 + 784) = v26;
    return a1;
  }

  else
  {
    sub_603E24((a1 + 712), *(a2 + 712), *(a2 + 720), (*(a2 + 720) - *(a2 + 712)) >> 6);
    v19 = *(a2 + 736);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 736) = v19;
    sub_6041FC((a1 + 760), *(a2 + 760), *(a2 + 768), 0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 768) - *(a2 + 760)) >> 3));
    v20 = *(a2 + 784);
    *(a1 + 788) = *(a2 + 788);
    *(a1 + 784) = v20;
    v21 = (a1 + 792);
    v22 = *(a2 + 815);
    if (*(a1 + 815) < 0)
    {
      if (v22 >= 0)
      {
        v27 = (a2 + 792);
      }

      else
      {
        v27 = *(a2 + 792);
      }

      if (v22 >= 0)
      {
        v28 = *(a2 + 815);
      }

      else
      {
        v28 = *(a2 + 800);
      }

      sub_13B38(v21, v27, v28);
      return a1;
    }

    else
    {
      if ((*(a2 + 815) & 0x80) != 0)
      {
        sub_13A68(v21, *(a2 + 792), *(a2 + 800));
      }

      else
      {
        v23 = *(a2 + 792);
        *(a1 + 808) = *(a2 + 808);
        *v21 = v23;
      }

      return a1;
    }
  }
}

void sub_603E24(uint64_t *a1, const void **a2, const void **a3, unint64_t a4)
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
          v12 = *(v10 - 41);
          v10 -= 8;
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

    if (!(a4 >> 58))
    {
      v31 = v7 >> 5;
      if (v7 >> 5 <= a4)
      {
        v31 = a4;
      }

      v32 = v7 >= 0x7FFFFFFFFFFFFFC0;
      v33 = 0x3FFFFFFFFFFFFFFLL;
      if (!v32)
      {
        v33 = v31;
      }

      if (!(v33 >> 58))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (a4 <= (v13 - v8) >> 6)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          v29 = *(v5 + 23);
          if (*(v8 + 23) < 0)
          {
            if (v29 >= 0)
            {
              v25 = v5;
            }

            else
            {
              v25 = *v5;
            }

            if (v29 >= 0)
            {
              v26 = *(v5 + 23);
            }

            else
            {
              v26 = v5[1];
            }

            sub_13B38(v8, v25, v26);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_13A68(v8, *v5, v5[1]);
          }

          else
          {
            v30 = *v5;
            *(v8 + 16) = v5[2];
            *v8 = v30;
          }
        }

        v27 = *(v5 + 3);
        v28 = *(v5 + 5);
        *(v8 + 56) = *(v5 + 14);
        *(v8 + 40) = v28;
        *(v8 + 24) = v27;
        v5 += 8;
        v8 += 64;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v39 = *(v13 - 41);
      v13 -= 8;
      if (v39 < 0)
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
        v21 = &v16[v8];
        v22 = &v16[v5];
        if (v5 != v8)
        {
          v23 = *(v22 + 23);
          if (v21[23] < 0)
          {
            if (v23 >= 0)
            {
              v17 = &v16[v5];
            }

            else
            {
              v17 = *&v16[v5];
            }

            if (v23 >= 0)
            {
              v18 = *(v22 + 23);
            }

            else
            {
              v18 = *&v16[v5 + 8];
            }

            sub_13B38(&v16[v8], v17, v18);
          }

          else if ((*(v22 + 23) & 0x80) != 0)
          {
            sub_13A68(&v16[v8], *&v16[v5], *&v16[v5 + 8]);
          }

          else
          {
            v24 = *v22;
            *(v21 + 2) = v22[2];
            *v21 = v24;
          }
        }

        v19 = *(v22 + 3);
        v20 = *(v22 + 5);
        *(v21 + 14) = *(v22 + 14);
        *(v21 + 40) = v20;
        *(v21 + 24) = v19;
        v16 += 64;
      }

      while (v14 != v16);
      v13 = a1[1];
    }

    v40 = v13;
    v34 = v13;
    if (v15 != a3)
    {
      v34 = v13;
      do
      {
        if (*(v15 + 23) < 0)
        {
          sub_325C(v34, *v15, v15[1]);
          v36 = v40;
        }

        else
        {
          v35 = *v15;
          *(v34 + 16) = v15[2];
          *v34 = v35;
          v36 = v34;
        }

        v37 = *(v15 + 3);
        v38 = *(v15 + 5);
        *(v34 + 56) = *(v15 + 14);
        *(v34 + 40) = v38;
        *(v34 + 24) = v37;
        v15 += 8;
        v34 = v36 + 64;
        v40 = (v36 + 64);
      }

      while (v15 != a3);
    }

    a1[1] = v34;
  }
}

void sub_6041CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5DB33C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_6041E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_5DB33C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t *sub_6041FC(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCF3CF3CF3CF3CF3DLL * ((v7 - *result) >> 3) < a4)
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
          v10 = sub_53A868(v10 - 168);
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

    if (a4 <= 0x186186186186186)
    {
      v12 = 0xCF3CF3CF3CF3CF3DLL * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0xC30C30C30C30C3)
      {
        v14 = 0x186186186186186;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x186186186186186)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  if (0xCF3CF3CF3CF3CF3DLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_594568(v8, v5);
        *(v8 + 160) = *(v5 + 160);
        v5 += 168;
        v8 += 168;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 168;
      result = sub_53A868(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v16 = a2 + v15 - v8;
    if (v15 != v8)
    {
      do
      {
        result = sub_594568(v8, v5);
        *(v8 + 160) = *(v5 + 160);
        v5 += 168;
        v8 += 168;
      }

      while (v5 != v16);
      v15 = v6[1];
    }

    v17 = v15;
    if (v16 != a3)
    {
      v18 = 0;
      do
      {
        result = sub_55BD50(v15 + v18, v16 + v18);
        *(v15 + v18 + 160) = *(v16 + v18 + 160);
        v18 += 168;
      }

      while (v16 + v18 != a3);
      v17 = v15 + v18;
    }

    v6[1] = v17;
  }

  return result;
}

void sub_604498(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 168;
    v7 = -v4;
    do
    {
      v6 = sub_53A868(v6) - 168;
      v7 += 168;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t *sub_6044C4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x4FBCDA3AC10C9715 * ((v7 - *result) >> 7) < a4)
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
          v10 = sub_5C1158(v10 - 7808);
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

    if (a4 <= 0x864B8A7DE6D1DLL)
    {
      v12 = 0x4FBCDA3AC10C9715 * (v7 >> 7);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x4325C53EF368ELL)
      {
        v14 = 0x864B8A7DE6D1DLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x864B8A7DE6D1DLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x4FBCDA3AC10C9715 * ((v15 - v8) >> 7) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5EB618(v8, v5);
        v5 += 7808;
        v8 += 7808;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    for (; v15 != v8; result = sub_5C1158(v15))
    {
      v15 -= 7808;
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
        result = sub_5EB618(v8, v5);
        v5 += 7808;
        v8 += 7808;
        v16 -= 7808;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      v20 = 7808;
      do
      {
        result = sub_6047A4(v15 + v19, v17 + v19);
        v20 -= 7808;
        v19 += 7808;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_604770(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    v6 = v2 - v4;
    v7 = -v3;
    do
    {
      v6 = sub_5C1158(v6) - 7808;
      v7 += 7808;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_6047A4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_60504C(a1, *a2, *(a2 + 8), 0x5DDB1ADCB91F64A7 * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v5 != v4)
  {
    if ((0x2E8BA2E8BA2E8BA3 * ((v5 - v4) >> 4)) < 0x1745D1745D1745ELL)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = *(a2 + 80);
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  v9 = *(a2 + 128);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  *(a1 + 136) = 0;
  *(a1 + 64) = v11;
  *(a1 + 48) = v10;
  *(a1 + 128) = v9;
  *(a1 + 112) = v8;
  *(a1 + 96) = v7;
  *(a1 + 80) = v6;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_605200(a1 + 136, *(a2 + 136), *(a2 + 144), 0x7E3F1F8FC7E3F1F9 * ((*(a2 + 144) - *(a2 + 136)) >> 4));
  v12 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v12;
  sub_55BD50(a1 + 176, a2 + 176);
  sub_55BD50(a1 + 336, a2 + 336);
  sub_55BD50(a1 + 496, a2 + 496);
  sub_55BD50(a1 + 656, a2 + 656);
  sub_55BD50(a1 + 816, a2 + 816);
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  sub_353184(a1 + 976, *(a2 + 976), *(a2 + 984), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 984) - *(a2 + 976)) >> 3));
  sub_55BD50(a1 + 1000, a2 + 1000);
  *(a1 + 1160) = *(a2 + 1160);
  sub_55F1E8(a1 + 1168, a2 + 1168);
  *(a1 + 1280) = *(a2 + 1280);
  sub_5F4380(a1 + 1288, (a2 + 1288));
  sub_5F49A4(a1 + 2376, a2 + 2376);
  *(a1 + 7192) = 0;
  *(a1 + 7176) = 0u;
  v13 = *(a2 + 7176);
  v14 = *(a2 + 7184);
  if (v14 != v13)
  {
    if (((v14 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v15 = *(a2 + 7200);
  *(a1 + 7208) = *(a2 + 7208);
  *(a1 + 7200) = v15;
  if (*(a2 + 7239) < 0)
  {
    sub_325C((a1 + 7216), *(a2 + 7216), *(a2 + 7224));
  }

  else
  {
    v16 = *(a2 + 7216);
    *(a1 + 7232) = *(a2 + 7232);
    *(a1 + 7216) = v16;
  }

  if (*(a2 + 7263) < 0)
  {
    sub_325C((a1 + 7240), *(a2 + 7240), *(a2 + 7248));
  }

  else
  {
    v17 = *(a2 + 7240);
    *(a1 + 7256) = *(a2 + 7256);
    *(a1 + 7240) = v17;
  }

  sub_55F1E8(a1 + 7264, a2 + 7264);
  *(a1 + 7392) = 0;
  *(a1 + 7376) = 0u;
  sub_605408(a1 + 7376, *(a2 + 7376), *(a2 + 7384), 0xFAFAFAFAFAFAFAFBLL * ((*(a2 + 7384) - *(a2 + 7376)) >> 4));
  *(a1 + 7416) = 0;
  *(a1 + 7400) = 0u;
  sub_52DE3C((a1 + 7400), *(a2 + 7400), *(a2 + 7408), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 7408) - *(a2 + 7400)) >> 3));
  if (*(a2 + 7447) < 0)
  {
    sub_325C((a1 + 7424), *(a2 + 7424), *(a2 + 7432));
  }

  else
  {
    v18 = *(a2 + 7424);
    *(a1 + 7440) = *(a2 + 7440);
    *(a1 + 7424) = v18;
  }

  if (*(a2 + 7471) < 0)
  {
    sub_325C((a1 + 7448), *(a2 + 7448), *(a2 + 7456));
  }

  else
  {
    v19 = *(a2 + 7448);
    *(a1 + 7464) = *(a2 + 7464);
    *(a1 + 7448) = v19;
  }

  if (*(a2 + 7495) < 0)
  {
    sub_325C((a1 + 7472), *(a2 + 7472), *(a2 + 7480));
  }

  else
  {
    v20 = *(a2 + 7472);
    *(a1 + 7488) = *(a2 + 7488);
    *(a1 + 7472) = v20;
  }

  *(a1 + 7512) = 0;
  *(a1 + 7496) = 0u;
  v21 = *(a2 + 7496);
  v22 = *(a2 + 7504);
  if (v22 != v21)
  {
    if (((v22 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 7536) = 0;
  *(a1 + 7520) = 0u;
  sub_5713F4(a1 + 7520, *(a2 + 7520), *(a2 + 7528), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 7528) - *(a2 + 7520)) >> 5));
  *(a1 + 7544) = 0u;
  *(a1 + 7560) = 0;
  sub_5713F4(a1 + 7544, *(a2 + 7544), *(a2 + 7552), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 7552) - *(a2 + 7544)) >> 5));
  *(a1 + 7584) = 0;
  *(a1 + 7568) = 0u;
  sub_60559C(a1 + 7568, *(a2 + 7568), *(a2 + 7576), 0x70913F8BCD29C245 * ((*(a2 + 7576) - *(a2 + 7568)) >> 3));
  *(a1 + 7592) = 0u;
  *(a1 + 7608) = 0;
  sub_60559C(a1 + 7592, *(a2 + 7592), *(a2 + 7600), 0x70913F8BCD29C245 * ((*(a2 + 7600) - *(a2 + 7592)) >> 3));
  *(a1 + 7616) = *(a2 + 7616);
  sub_55BD50(a1 + 7624, a2 + 7624);
  *(a1 + 7800) = 0;
  *(a1 + 7784) = 0u;
  sub_5CEC4C(a1 + 7784, *(a2 + 7784), *(a2 + 7792), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 7792) - *(a2 + 7784)) >> 5));
  return a1;
}

void sub_604D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, char *a14)
{
  if (a14[3375] < 0)
  {
    operator delete(*a10);
    if ((a14[3351] & 0x80000000) == 0)
    {
LABEL_4:
      sub_528FAC((v14 + 7400));
      sub_5D9FE8((v14 + 7376));
      sub_53E440(v14 + 7264);
      if (a14[3167] < 0)
      {
        operator delete(*a12);
        if ((a14[3143] & 0x80000000) == 0)
        {
          goto LABEL_6;
        }
      }

      else if ((a14[3143] & 0x80000000) == 0)
      {
LABEL_6:
        v18 = *(v14 + 7176);
        if (!v18)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      operator delete(*a13);
      v18 = *(v14 + 7176);
      if (!v18)
      {
LABEL_8:
        sub_5C1688(v14 + 2376);
        sub_559E70((v14 + 1288));
        sub_53E440(v14 + 1168);
        sub_53A868(v14 + 1000);
        sub_1A104((v14 + 976));
        sub_53A868(v14 + 816);
        sub_53A868(v14 + 656);
        sub_53A868(v14 + 496);
        sub_53A868(v14 + 336);
        sub_53A868(v14 + 176);
        sub_5EC204(v16);
        sub_5EBF44(v15);
        sub_5EC430(v14);
        _Unwind_Resume(a1);
      }

LABEL_7:
      *(v14 + 7184) = v18;
      operator delete(v18);
      goto LABEL_8;
    }
  }

  else if ((a14[3351] & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(*a11);
  goto LABEL_4;
}

void sub_605020()
{
  if (!*(v0 + v1))
  {
    JUMPOUT(0x604F4CLL);
  }

  JUMPOUT(0x604F44);
}

void sub_605030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_5F4178(va);
  sub_5EC430(v13);
  _Unwind_Resume(a1);
}

void sub_60504C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x52DA224E52347)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_605148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v11)
  {
    v14 = v10 - v12;
    v15 = -v11;
    do
    {
      v14 = sub_5C186C(v14) - 12656;
      v15 += 12656;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_605184(&a9);
  _Unwind_Resume(a1);
}

void ***sub_605184(void ***result)
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
          v4 = sub_5C186C(v4 - 12656);
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

void sub_605200(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x381C0E070381C1)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_60536C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_5EC394(v12);
  sub_602010(va);
  *(v10 + 8) = v11;
  sub_605394(&a9);
  _Unwind_Resume(a1);
}

void ***sub_605394(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      for (i = v2[1]; i != v3; sub_5EC268(v2, i))
      {
        i -= 1168;
      }

      v2[1] = v3;
      operator delete(**a1);
    }
  }

  return a1;
}

void sub_605408(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x50505050505051)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_6054F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = v11 - 816;
    v15 = -v12;
    do
    {
      v14 = sub_5C0F34(v14) - 816;
      v15 += 816;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_605524(&a9);
  _Unwind_Resume(a1);
}

void ***sub_605524(void ***result)
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
          v4 = sub_5C0F34(v4 - 816);
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

void sub_60559C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x3A196B1EDD80E9)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_6056C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_605704(va);
  _Unwind_Resume(a1);
}

void sub_6056DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void **);
  v9 = va_arg(va1, void);
  sub_5EBFA8(v5);
  sub_6033B4(va1);
  *(v3 + 8) = v4;
  sub_605704(va);
  _Unwind_Resume(a1);
}

void ***sub_605704(void ***a1)
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
          v6 = v4 - 282;
          v7 = *(v4 - 2);
          if (v7 != -1)
          {
            (off_266BAE8[v7])(&v9, v4 - 282);
          }

          *(v4 - 2) = -1;
          v4 -= 282;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_6057C4()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_2799118 = 0u;
  unk_2799128 = 0u;
  dword_2799138 = 1065353216;
  sub_3A9A34(&xmmword_2799118, v0, v0);
  sub_3A9A34(&xmmword_2799118, v3, v3);
  sub_3A9A34(&xmmword_2799118, __p, __p);
  sub_3A9A34(&xmmword_2799118, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27990F0 = 0;
    qword_27990F8 = 0;
    qword_27990E8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_605A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2799100)
  {
    qword_2799108 = qword_2799100;
    operator delete(qword_2799100);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_605AB8(uint64_t *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a2[1579];
  v5 = v4 & 0x3F;
  if (v4 > 0x3F || v5 != 0)
  {
    v9 = 0;
    v10 = a2[1578];
    v11 = &v10[v4 >> 6];
    while (((*v10 >> v9) & 1) == 0)
    {
      v10 += v9 == 63;
      if (v9 == 63)
      {
        v9 = 0;
      }

      else
      {
        ++v9;
      }

      if (v9 == v5 && v10 == v11)
      {
        return result;
      }
    }

    sub_6F2FC8(a1, a2, a3, 1, (a1 + 8));
    v16 = a1[18];
    v15 = a1 + 18;
    v17 = v15[3];
    if (v16 != v15[1] && v17 != -1)
    {
      *(a4 + 24) = 0;
      *(a4 + 8) = *a4;
      *(a4 + 48) = *(a4 + 40);
      v19.f64[0] = NAN;
      v19.f64[1] = NAN;
      *(a4 + 72) = v19;
      *(a4 + 64) = 0;
      *(a4 + 88) = v19;
      *(a4 + 104) = v19;
      *(a4 + 120) = -1;
      *(a4 + 128) = 0;
      *(a4 + 136) = -1;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = vnegq_f64(v19);
      *(a4 + 176) = 0;
      *(a4 + 184) = 98;
      *(a4 + 192) = 0;
      *(a4 + 200) = 0;
      *(a4 + 208) = xmmword_229B660;
      *(a4 + 232) = 0;
      *(a4 + 245) = 0;
      *(a4 + 224) = 0;
      v20 = sub_605E3C(v15, v17);
      v21 = sub_4D1DC0(a2);
      if (a3 <= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = a3;
      }

      if (v21 <= a3)
      {
        v27 = *(a4 + 8);
      }

      else
      {
        v23 = a3;
        do
        {
          while (1)
          {
            v24 = *(sub_4D1F50(a2, v23) + 32);
            v26 = *(a4 + 8);
            v25 = *(a4 + 16);
            if (v26 >= v25)
            {
              v28 = *a4;
              v29 = v26 - *a4;
              v30 = (v29 >> 3) + 1;
              if (v30 >> 61)
              {
                sub_1794();
              }

              v31 = v25 - v28;
              if (v31 >> 2 > v30)
              {
                v30 = v31 >> 2;
              }

              if (v31 >= 0x7FFFFFFFFFFFFFF8)
              {
                v32 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v32 = v30;
              }

              if (v32)
              {
                if (!(v32 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v33 = (8 * (v29 >> 3));
              *v33 = v24 & 0xFFFFFFFFFFFFFFLL;
              v27 = v33 + 1;
              memcpy(0, v28, v29);
              *a4 = 0;
              *(a4 + 8) = v27;
              *(a4 + 16) = 0;
              if (v28)
              {
                operator delete(v28);
              }
            }

            else
            {
              *v26 = v24 & 0xFFFFFFFFFFFFFFLL;
              v27 = v26 + 1;
            }

            *(a4 + 8) = v27;
            v34 = *(v20 + 32);
            if (v34 == v24)
            {
              break;
            }

            if (++v23 == v22)
            {
              goto LABEL_46;
            }
          }

          ++v23;
        }

        while ((HIDWORD(v34) & 0xFFFFFF) != (HIDWORD(v24) & 0xFFFFFF) && v23 != v22);
      }

LABEL_46:
      v36 = a3 + ((v27 - *a4) >> 3) - 1;
      v37 = a2[1578];
      v38 = *(v37 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v36);
      if ((*(v37 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
      {
        if (v38)
        {
          *(a4 + 24) = 0;
          return result;
        }

        v39 = 90;
        goto LABEL_52;
      }

      if (v38)
      {
        v39 = 89;
LABEL_52:
        *(a4 + 24) = v39;
        return result;
      }

      *(a4 + 8) = *a4;
      *(a4 + 48) = *(a4 + 40);
      v40.f64[0] = NAN;
      v40.f64[1] = NAN;
      *(a4 + 72) = v40;
      *(a4 + 88) = v40;
      *(a4 + 104) = v40;
      *(a4 + 120) = -1;
      *(a4 + 24) = 0;
      *(a4 + 64) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = -1;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = vnegq_f64(v40);
      *(a4 + 176) = 0;
      *(a4 + 184) = 98;
      *(a4 + 192) = 0;
      *(a4 + 200) = 0;
      result = xmmword_229B660;
      *(a4 + 208) = xmmword_229B660;
      *(a4 + 232) = 0;
      *(a4 + 245) = 0;
      *(a4 + 224) = 0;
    }
  }

  return result;
}

unint64_t sub_605E3C(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v16, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v16, &v17);
    v6 = std::string::append(&v17, ",size=", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v18, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20 = v10->__r_.__value_.__r.__words[2];
    v19 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v20 >= 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = *(&v19 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  return *a1 + 40 * a2;
}

void sub_605F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_606070()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_2799170 = 0u;
  unk_2799180 = 0u;
  dword_2799190 = 1065353216;
  sub_3A9A34(&xmmword_2799170, v0, v0);
  sub_3A9A34(&xmmword_2799170, v3, v3);
  sub_3A9A34(&xmmword_2799170, __p, __p);
  sub_3A9A34(&xmmword_2799170, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_2799148 = 0;
    qword_2799150 = 0;
    qword_2799140 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_6062B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2799158)
  {
    qword_2799160 = qword_2799158;
    operator delete(qword_2799158);
  }

  _Unwind_Resume(exception_object);
}

void sub_606364(unsigned int **a1@<X0>, unsigned int **a2@<X1>, void *a4@<X8>)
{
  if (*a1 != a1[1])
  {
    v4 = a2[1];
    if (*a2 != v4)
    {
      if (!((0x2E8BA2E8BA2E8BA3 * ((v4 - *a2) >> 4)) >> 60))
      {
        operator new();
      }

      sub_1794();
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
}

void sub_606874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6068C8(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, unint64_t **a4@<X8>)
{
  if (sub_4D1F6C(a1) || (v6 = a2[1], *a2 == v6) || (v7 = (v6 - *a2) >> 3, v7 < a3))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  v8 = sub_4D1DC0(a1);
  v10 = v7 - 1;
  v65 = a2;
  if (!v8)
  {
    if (a3)
    {
      v60 = a4;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = a2;
      v17 = 0;
      v43 = 0;
      v16 = 0;
      v44 = *(*v42 + 8 * v10);
      v45 = 1;
      goto LABEL_67;
    }

    v58 = 0;
    v13 = 0;
    v46 = 0;
LABEL_104:
    *a4 = v46;
    a4[1] = v13;
    a4[2] = v58;
    return;
  }

  v11 = v8;
  v61 = 0;
  v62 = v7 - 1;
  v60 = a4;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = v8;
LABEL_9:
  v18 = v13 - v12;
  v19 = (v13 - v12) >> 4;
  if (v19 != a3)
  {
    v20 = v11--;
    v21 = sub_4D23F8(a1, v11, *v9.i64) + v14;
    if (v21 < *(*v65 + 8 * v62) || ((v22 = sub_4D1DC0(a1) - 1, v23 = *(*v65 + 8 * v62), v23 - v14 >= v21 - v23) ? (v24 = v11) : (v24 = v20), v23 >= v14 ? (v25 = v11 >= v22) : (v25 = 1), !v25 ? (v16 = v24) : (v16 = v11), v21 >= v23 ? (v26 = v19 >= a3) : (v26 = 1), v26))
    {
      v16 = v15;
      v17 = v12;
      goto LABEL_8;
    }

    if (v13 >= v61)
    {
      v27 = v19 + 1;
      if ((v19 + 1) >> 60)
      {
LABEL_105:
        sub_1794();
      }

      if ((v61 - v12) >> 3 > v27)
      {
        v27 = (v61 - v12) >> 3;
      }

      if ((v61 - v12) >= 0x7FFFFFFFFFFFFFF0)
      {
        v28 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      if (v28)
      {
        if (!(v28 >> 60))
        {
          operator new();
        }

LABEL_106:
        sub_1808();
      }

      v17 = 0;
      v29 = (16 * v19);
      v61 = 0;
      *v29 = v16;
      v29[1] = v15;
      v13 = (16 * v19 + 16);
      memcpy(0, v12, v18);
    }

    else
    {
      *v13 = v16;
      v13[1] = v15;
      v13 += 2;
      v17 = v12;
    }

    v30 = v62;
    if (!v62)
    {
      v62 = 0;
      goto LABEL_8;
    }

    v31 = v62 - 1;
    if (v21 < *(*v65 + 8 * (v62 - 1)))
    {
LABEL_55:
      v62 = v31;
      goto LABEL_8;
    }

    v9 = vdupq_n_s64(v16);
    v63 = v9;
    v32 = v30 - 2;
    v33 = v61;
    while (1)
    {
      v34 = v13 - v17;
      v35 = (v13 - v17) >> 4;
      if (v35 >= a3)
      {
LABEL_54:
        v61 = v33;
        v31 = v32 + 1;
        goto LABEL_55;
      }

      if (v13 >= v33)
      {
        v36 = v35 + 1;
        if ((v35 + 1) >> 60)
        {
          goto LABEL_105;
        }

        if ((v33 - v17) >> 3 > v36)
        {
          v36 = (v33 - v17) >> 3;
        }

        if (v33 - v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (v37)
        {
          if (!(v37 >> 60))
          {
            operator new();
          }

          goto LABEL_106;
        }

        v33 = 0;
        *(16 * v35) = v63;
        v13 = (16 * v35 + 16);
        memcpy(0, v17, v34);
        v17 = 0;
        if (v32 == -1)
        {
LABEL_57:
          v61 = v33;
          v62 = 0;
LABEL_8:
          v12 = v17;
          v15 = v16;
          v14 = v21;
          if (!v11)
          {
            goto LABEL_61;
          }

          goto LABEL_9;
        }
      }

      else
      {
        *v13 = v16;
        v13[1] = v16;
        v13 += 2;
        if (v32 == -1)
        {
          goto LABEL_57;
        }
      }

      v38 = *(*v65 + 8 * v32--);
      if (v21 < v38)
      {
        goto LABEL_54;
      }
    }
  }

  v16 = v15;
  v17 = v12;
LABEL_61:
  v40 = v13 - v17;
  v39 = (v13 - v17) >> 4;
  if (v39 >= a3)
  {
    v46 = v17;
  }

  else
  {
    v43 = v61;
    v10 = v62;
    v44 = *(*v65 + 8 * v62);
    if (v13 < v61)
    {
      *v13 = 0;
      v13[1] = v16;
      v13 += 2;
      v46 = v17;
      goto LABEL_76;
    }

    v45 = v39 + 1;
    if ((v39 + 1) >> 60)
    {
LABEL_107:
      sub_1794();
    }

    v41 = v17;
LABEL_67:
    v47 = v43 - v41;
    if (v47 >> 3 > v45)
    {
      v45 = v47 >> 3;
    }

    if (v47 >= 0x7FFFFFFFFFFFFFF0)
    {
      v48 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v48 = v45;
    }

    if (v48)
    {
      if (!(v48 >> 60))
      {
        operator new();
      }

LABEL_108:
      sub_1808();
    }

    v46 = 0;
    v49 = (16 * v39);
    v43 = 0;
    *v49 = 0;
    v49[1] = v16;
    v13 = (16 * v39 + 16);
    memcpy(0, v17, v40);
LABEL_76:
    v61 = v43;
    if (v10 && v44 >= *(*v65 + 8 * v10 - 8))
    {
      v50 = v10 - 2;
      while (1)
      {
        v51 = v13 - v46;
        v52 = (v13 - v46) >> 4;
        if (v52 >= a3)
        {
          break;
        }

        if (v13 >= v61)
        {
          v53 = v52 + 1;
          if ((v52 + 1) >> 60)
          {
            goto LABEL_107;
          }

          if (v61 - v46 > v53)
          {
            v53 = v61 - v46;
          }

          if ((v61 - v46) >= 0x7FFFFFFFFFFFFFF0)
          {
            v54 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v54 = v53;
          }

          if (v54)
          {
            if (!(v54 >> 60))
            {
              operator new();
            }

            goto LABEL_108;
          }

          v55 = (16 * v52);
          v61 = 0;
          v13 = (16 * v52 + 16);
          *v55 = 0;
          v55[1] = 0;
          memcpy(0, v46, v51);
          v46 = 0;
        }

        else
        {
          *v13 = 0;
          v13[1] = 0;
          v13 += 2;
        }

        if (v50 != -1)
        {
          v56 = *(*v65 + 8 * v50--);
          if (v44 >= v56)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  if (a3 == (v13 - v46) >> 4)
  {
    a4 = v60;
    if (v46 == v13)
    {
      v58 = v61;
    }

    else
    {
      v57 = v13 - 2;
      v58 = v61;
      if (v13 - 2 > v46)
      {
        v59 = v46 + 2;
        do
        {
          v67 = *(v59 - 1);
          *(v59 - 1) = *v57;
          *v57 = v67;
          v57 -= 2;
          v25 = v59 >= v57;
          v59 += 2;
        }

        while (!v25);
      }
    }

    goto LABEL_104;
  }

  *v60 = 0;
  v60[1] = 0;
  v60[2] = 0;
}

void sub_606EF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_606F2C@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  v2 = result[1];
  if (*result == v2)
  {
    result = 0;
    *a2 = 0;
    a2[2] = 0;
    a2[1] = 0;
    if (a2[1])
    {
      v4 = a2[1] - 1;
      if (v4)
      {
        v5 = *v4;
        do
        {
          v6 = *--v4;
          v5 += v6;
          *v4 = v5;
        }

        while (v4);
      }
    }
  }

  else
  {
    v3 = *result;
    while (*(v3 + 16) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 += 176;
      if (v3 == v2)
      {
        if (!((0x2E8BA2E8BA2E8BA3 * ((v2 - *result) >> 4)) >> 61))
        {
          operator new();
        }

        sub_1794();
      }
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void sub_607094(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *v2 = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_6070B0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, int a5@<W4>, char **a6@<X8>)
{
  if (*a3 == a3[1] || *a2 == *(a2 + 8) || !sub_4D389C(a1) || (v12 = sub_3CF22C(a1), *(v12 + 16) == *(v12 + 24)) || (v13 = sub_3CF22C(a1), *(v13 + 24) - *(v13 + 16) != *(a2 + 8) - *a2))
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    return;
  }

  v67 = a3;
  sub_606F2C(a3, &v85);
  if (v85 == v86)
  {
    if (a5 == 2)
    {
      v14 = *a3;
      v15 = a3[1];
      if (*a3 == v15)
      {
        v16 = 0;
        v17 = 0;
      }

      else
      {
        v16 = 0x2E8BA2E8BA2E8BA3 * ((v15 - v14) >> 4);
        if (*(v14 + 4))
        {
          v17 = 0;
        }

        else
        {
          --v16;
          v17 = 1;
        }
      }

      sub_6068C8(a1, a4, v16, v78);
      goto LABEL_16;
    }

    sub_606364(a2, a3, v78);
  }

  else
  {
    sub_6068C8(a1, &v85, v86 - v85, v78);
  }

  v17 = 0;
LABEL_16:
  v68 = v17;
  v18 = 0x2E8BA2E8BA2E8BA3 * ((v67[1] - *v67) >> 4) - v17;
  v19 = *v78;
  if (v18 == (*&v78[8] - *v78) >> 4)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v20 = sub_4D39C4(a1);
    v21 = sub_4D39FC(a1);
    sub_4DABE0(v20, v21, v76);
    v22 = v67[1] - *v67;
    if (v22)
    {
      v23 = 0;
      v66 = 0x2E8BA2E8BA2E8BA3 * (v22 >> 4);
      v65 = v19;
      while (1)
      {
        v24 = (*v67 + 176 * v23);
        if (!v68 || v23)
        {
          break;
        }

        v73.n128_u32[0] = 0;
        nullsub_1();
        *v78 = 0x7FFFFFFFLL;
        *&v78[16] = 0u;
        v83 = 0;
        *&v78[8] = 0x7FFFFFFF;
        *&v78[12] = 0x7FFFFFFF7FFFFFFFLL;
        v79 = 0x8000000080000000;
        *v80 = 0u;
        v81 = 0u;
        memset(__p_8, 0, sizeof(__p_8));
        *(&__p_8[2] + 4) = 0x8000000080000000;
        HIDWORD(__p_8[3]) = 0x7FFFFFFF;
        v84 = xmmword_2297C00;
        v26 = a6[1];
        if (v26 < a6[2])
        {
          sub_607CB0(a6[1], *v24, v73.n128_i32[0], v25, v78);
LABEL_36:
          v36 = v26 + 2616;
          goto LABEL_38;
        }

        v36 = sub_607B04(a6, v24, &v73, v25, v78);
LABEL_38:
        a6[1] = v36;
        if (*(&v81 + 1))
        {
          __p_8[0] = *(&v81 + 1);
          operator delete(*(&v81 + 1));
        }

        if (v80[0])
        {
          v80[1] = v80[0];
          operator delete(v80[0]);
        }

LABEL_20:
        if (++v23 == v66)
        {
          goto LABEL_79;
        }
      }

      v27 = &v19[16 * (v23 - v68)];
      if (v27[1] > *v27)
      {
        v28 = *(sub_3CF22C(a1) + 16);
        v29 = *v27;
        v30 = sub_3CF22C(a1);
        v31 = (v28 + 4 * v29);
        v32 = v27[1];
        v33 = *(v30 + 16) + 4 * v32;
        if (v31 == v33)
        {
          v34 = 0;
        }

        else
        {
          v37 = v33 - v31 - 4;
          if (v37 >= 0x1C)
          {
            v40 = (v37 >> 2) + 1;
            v38 = &v31->i32[v40 & 0x7FFFFFFFFFFFFFF8];
            v41 = v31 + 1;
            v42 = 0uLL;
            v43 = v40 & 0x7FFFFFFFFFFFFFF8;
            v44 = 0uLL;
            do
            {
              v42 = vaddq_s32(v41[-1], v42);
              v44 = vaddq_s32(*v41, v44);
              v41 += 2;
              v43 -= 8;
            }

            while (v43);
            v34 = vaddvq_s32(vaddq_s32(v44, v42));
            if (v40 == (v40 & 0x7FFFFFFFFFFFFFF8))
            {
              goto LABEL_46;
            }
          }

          else
          {
            v34 = 0;
            v38 = (v28 + 4 * v29);
          }

          do
          {
            v45 = *v38++;
            v34 += v45;
          }

          while (v38 != v33);
        }

LABEL_46:
        v75 = v34;
        sub_4DB030(v76, v32 - *v27, v78);
        *v76 = *v78;
        v77 = *&v78[16];
        v46 = sub_4D39C4(a1);
        v47 = sub_4D39FC(a1);
        sub_4DAC4C(v46, v47, &v73);
        if (sub_4D397C(a1) && sub_4DB0FC(v76, &v73))
        {
          nullsub_1();
          v49 = *v48;
          v72 = *(v48 + 16);
          v71 = v49;
        }

        else
        {
          HIDWORD(v71) = 0;
          v72 = 0;
          LODWORD(v71) = 0x7FFFFFFF;
          *(&v71 + 4) = 0x7FFFFFFF7FFFFFFFLL;
        }

        *&v78[16] = 0u;
        v83 = 0;
        *v78 = 0x7FFFFFFFLL;
        *&v78[8] = 0x7FFFFFFF;
        *&v78[12] = 0x7FFFFFFF7FFFFFFFLL;
        v79 = 0x8000000080000000;
        *v80 = 0u;
        v81 = 0u;
        memset(__p_8, 0, sizeof(__p_8));
        *(&__p_8[2] + 4) = 0x8000000080000000;
        HIDWORD(__p_8[3]) = 0x7FFFFFFF;
        v84 = xmmword_2297C00;
        v50 = a6[1];
        if (v50 >= a6[2])
        {
          v52 = sub_608F9C(a6, v24, &v75, &v71, v78);
        }

        else
        {
          sub_607CB0(a6[1], *v24, v75, &v71, v78);
          v52 = (v50 + 2616);
        }

        a6[1] = v52;
        if (*(&v81 + 1))
        {
          __p_8[0] = *(&v81 + 1);
          operator delete(*(&v81 + 1));
        }

        if (v80[0])
        {
          v80[1] = v80[0];
          operator delete(v80[0]);
        }

        v53 = a6[1];
        memset(v78, 0, 24);
        v55 = *v27;
        v54 = v27[1];
        if (v54 >= *v27)
        {
          v56 = v54 - *v27;
        }

        else
        {
          v56 = 0;
        }

        if (v54 > *v27)
        {
          if (!(v56 >> 60))
          {
            operator new();
          }

          sub_1794();
        }

        if (v55 < v54)
        {
          sub_4D23F8(a1, v55, v51);
          sub_3CF22C(a1);
          operator new();
        }

        sub_87CA10(v78, &v75, &v69);
        v57 = *(v53 - 24);
        if (v57)
        {
          *(v53 - 23) = v57;
          operator delete(v57);
          *(v53 - 24) = 0;
          *(v53 - 23) = 0;
          *(v53 - 22) = 0;
        }

        *(v53 - 12) = v69;
        *(v53 - 22) = v70;
        if (*v78)
        {
          *&v78[8] = *v78;
          operator delete(*v78);
        }

        v19 = v65;
        goto LABEL_20;
      }

      if (v23)
      {
        v35 = &(*a6)[2616 * v23 - 408];
      }

      else
      {
        nullsub_1();
      }

      v39 = *v35;
      v74 = *(v35 + 16);
      v73 = v39;
      LODWORD(v71) = 0;
      *v78 = 0x7FFFFFFFLL;
      *&v78[16] = 0u;
      v83 = 0;
      *&v78[8] = 0x7FFFFFFF;
      *&v78[12] = 0x7FFFFFFF7FFFFFFFLL;
      v79 = 0x8000000080000000;
      *v80 = 0u;
      v81 = 0u;
      memset(__p_8, 0, sizeof(__p_8));
      *(&__p_8[2] + 4) = 0x8000000080000000;
      HIDWORD(__p_8[3]) = 0x7FFFFFFF;
      v84 = xmmword_2297C00;
      v26 = a6[1];
      if (v26 >= a6[2])
      {
        v36 = sub_607B04(a6, v24, &v71, &v73, v78);
        goto LABEL_38;
      }

      sub_607CB0(a6[1], *v24, 0, &v73, v78);
      goto LABEL_36;
    }
  }

  else
  {
    v58 = "session_state";
    if (!a5)
    {
      v58 = "zilch";
    }

    if (v85 == v86)
    {
      v59 = v58;
    }

    else
    {
      v59 = "step_distances";
    }

    if (sub_7E7E4(1u))
    {
      sub_19594F8(v78);
      sub_4A5C(v78, "driving_update_eta_step_builder::build() invalid step_segment_ranges. size=", 75);
      v60 = std::ostream::operator<<();
      sub_4A5C(v60, " expected_size=", 15);
      v61 = std::ostream::operator<<();
      sub_4A5C(v61, ", has_empty_start_step: ", 24);
      v62 = std::ostream::operator<<();
      v63 = sub_4A5C(v62, ", computation_method: ", 22);
      v64 = strlen(v59);
      sub_4A5C(v63, v59, v64);
      sub_66B8(&v78[8], v76);
      sub_7E854(v76, 1u);
      if (SBYTE7(v77) < 0)
      {
        operator delete(v76[0]);
      }

      sub_1959728(v78);
    }

    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
  }

LABEL_79:
  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v19)
  {
    operator delete(v19);
  }
}

void sub_6079B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a40);
  v44 = *(v42 - 136);
  if (v44)
  {
    *(v42 - 128) = v44;
    operator delete(v44);
    if (!v41)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_5;
  }

  operator delete(v41);
  _Unwind_Resume(a1);
}

char *sub_607B04(char **a1, unsigned int *a2, unsigned int *a3, __int128 *a4, __int128 *a5)
{
  v5 = 0x3795876FF3795877 * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if ((v5 + 1) > 0x190D4F120190D4)
  {
    sub_1794();
  }

  if (0x6F2B0EDFE6F2B0EELL * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0x6F2B0EDFE6F2B0EELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x3795876FF3795877 * ((a1[2] - *a1) >> 3)) >= 0xC86A78900C86ALL)
  {
    v8 = 0x190D4F120190D4;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x190D4F120190D4)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 8 * ((a1[1] - *a1) >> 3);
  sub_607CB0(v18, *a2, *a3, a4, a5);
  v9 = (2616 * v5 + 2616);
  v10 = *a1;
  v11 = a1[1];
  v12 = (*a1 - v11);
  v13 = &v12[2616 * v5];
  if (v11 != *a1)
  {
    v14 = *a1;
    v15 = &v12[v18];
    do
    {
      v16 = sub_6083DC(v15, v14);
      v14 += 2616;
      v15 = v16 + 2616;
    }

    while (v14 != v11);
    do
    {
      sub_5C25A8(v10);
      v10 += 2616;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v13;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_607C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_608388(va);
  _Unwind_Resume(a1);
}

uint64_t sub_607CB0(uint64_t a1, int a2, int a3, __int128 *a4, __int128 *a5)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *(a1 + 16) = v9;
  *(a1 + 32) = v9;
  *(a1 + 48) = 0;
  *(a1 + 56) = v9;
  *(a1 + 72) = v9;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = -1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = -1;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 256) = -1;
  *(a1 + 224) = v9;
  *(a1 + 240) = v9;
  *(a1 + 208) = v9;
  *(a1 + 264) = 0;
  *(a1 + 272) = -1;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 304) = xmmword_2297C80;
  *(a1 + 320) = 98;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = -1;
  *(a1 + 352) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 374) = 0;
  *(a1 + 384) = 5;
  *(a1 + 386) = 0;
  *(a1 + 456) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  sub_734CE0(a1 + 464);
  *(a1 + 616) = 0;
  *&v10 = -1;
  *(&v10 + 1) = -1;
  *(a1 + 624) = v10;
  *(a1 + 640) = v10;
  *(a1 + 656) = v10;
  *(a1 + 672) = -1;
  *(a1 + 680) = 0;
  *(a1 + 688) = -1;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 769) = 0u;
  *(a1 + 824) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 804) = 0;
  *(a1 + 809) = 0;
  *(a1 + 788) = 0u;
  sub_734CE0(a1 + 848);
  *(a1 + 1000) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1008) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1016) = a3;
  *(a1 + 1020) = 0x7FFFFFFF;
  *(a1 + 1024) = 0x7FFFFFFFLL;
  sub_608080(a1 + 1032);
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 1984) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 1936) = 0u;
  *(a1 + 1920) = 0u;
  *(a1 + 1904) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 2041) = 0u;
  *(a1 + 2057) = 3;
  *(a1 + 2064) = 0;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 1;
  *(a1 + 2092) = 0;
  *(a1 + 2104) = -1;
  *(a1 + 2096) = -1;
  *(a1 + 2112) = -1;
  *(a1 + 2116) = 0x7FFFFFFF;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0;
  *(a1 + 2176) = 0xBFF0000000000000;
  *(a1 + 2184) = 0;
  *(a1 + 2192) = 0u;
  v11 = *a4;
  *(a1 + 2224) = *(a4 + 2);
  *(a1 + 2208) = v11;
  *(a1 + 2240) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2232) = off_266BB28;
  *(a1 + 2272) = 0;
  *(a1 + 2276) = 1;
  *(a1 + 2288) = 0;
  *(a1 + 2296) = 0u;
  *(a1 + 2280) = off_266BB60;
  *(a1 + 2312) = 0;
  *(a1 + 2314) = 0;
  *(a1 + 2328) = 0u;
  *(a1 + 2344) = 0;
  *(a1 + 2320) = off_266B8A8;
  *(a1 + 2352) = 0;
  *(a1 + 2408) = 0;
  *(a1 + 2392) = 0u;
  *(a1 + 2384) = 0;
  *(a1 + 2376) = 0;
  *(a1 + 2360) = 0u;
  *(a1 + 2416) = 1;
  *(a1 + 2433) = 0;
  *(a1 + 2440) = 0;
  *(a1 + 2417) = 0u;
  sub_3EDBB0(a1 + 2448, a5);
  *(a1 + 2592) = -1;
  *(a1 + 2584) = -1;
  *(a1 + 2600) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2608) = 0;
  return a1;
}

void sub_607FB4(_Unwind_Exception *a1)
{
  v7 = *(v1 + 2424);
  if (v7)
  {
    *(v1 + 2432) = v7;
    operator delete(v7);
  }

  sub_5ED3D8(v3);
  sub_5940E0(v5);
  sub_50E554((v1 + 2032));
  sub_5ED5A8((v1 + 2008));
  sub_5ED73C((v1 + 1984));
  sub_5ECEBC((v1 + 1960));
  sub_5ED7B0((v1 + 1936));
  sub_5EC5AC((v1 + 1912));
  sub_5EC628(v4);
  sub_5936E4((v1 + 1032));
  sub_3E5388(v1 + 848);
  sub_5ED22C((v1 + 824));
  sub_528FAC((v1 + 792));
  sub_5ED8EC((v1 + 704));
  sub_3E5388(v1 + 464);
  sub_593FC8((v1 + 440));
  sub_593FC8((v1 + 416));
  sub_593FC8(v2);
  sub_5ECFBC(v1 + 136);
  _Unwind_Resume(a1);
}

uint64_t sub_608080(uint64_t a1)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  v3 = vnegq_f64(v2);
  *(a1 + 40) = v3;
  *(a1 + 56) = v3;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0x7FFFFFFF;
  *(a1 + 104) = v3;
  *(a1 + 120) = 0x7FFFFFFF;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0x7FFFFFFF;
  *(a1 + 132) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 152) = 0x8000000080000000;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 212) = 0x8000000080000000;
  *(a1 + 220) = 0x7FFFFFFF;
  *(a1 + 232) = 0;
  *(a1 + 240) = xmmword_2297C00;
  *(a1 + 256) = 0x7FFFFFFF;
  *(a1 + 260) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0xBFF0000000000000;
  *(a1 + 288) = 0xBFF0000000000000;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 356) = -1;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 376) = 0;
  *(a1 + 432) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 440) = 1065353216;
  *(a1 + 448) = 1;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = 1065353216;
  *(a1 + 520) = 1;
  sub_64B998(a1 + 528);
  sub_64B998(a1 + 688);
  *(a1 + 848) = 0;
  return a1;
}

void sub_6081BC(_Unwind_Exception *a1)
{
  sub_6081F0(v1 + 528);
  sub_53A58C(v2);
  sub_53A58C((v1 + 384));
  sub_55D550(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_6081F0(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 96);
      *(a1 + 96) = 0;
      if (v2)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if ((*(a1 + 135) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 112));
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
LABEL_4:
    sub_6081F0(v2);
    operator delete();
  }

LABEL_5:
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = *(a1 + 80);
    v5 = *(a1 + 72);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(a1 + 72);
    }

    *(a1 + 80) = v3;
    operator delete(v5);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 48);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = *(a1 + 48);
    }

    *(a1 + 56) = v7;
    operator delete(v9);
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 24);
    if (v12 != v11)
    {
      do
      {
        v12 = sub_5C42C0(v12 - 144);
      }

      while (v12 != v11);
      v13 = *(a1 + 24);
    }

    *(a1 + 32) = v11;
    operator delete(v13);
  }

  v14 = *a1;
  if (*a1)
  {
    v15 = *(a1 + 8);
    v16 = *a1;
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = *a1;
    }

    *(a1 + 8) = v14;
    operator delete(v16);
  }

  return a1;
}

uint64_t sub_608388(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 2616;
    sub_5C25A8(i - 2616);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_6083DC(uint64_t a1, uint64_t a2)
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
  *(a1 + 152) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a2 + 136) = 0u;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 184) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a2 + 176) = 0u;
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
  *(a1 + 392) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 408) = 0;
  *(a2 + 392) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = *(a2 + 432);
  *(a2 + 432) = 0;
  *(a2 + 416) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  *(a2 + 456) = 0;
  *(a2 + 440) = 0u;
  v19 = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 464) = v19;
  *(a2 + 464) = 0;
  *(a2 + 472) = 0u;
  *(a1 + 488) = *(a2 + 488);
  v20 = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 496) = v20;
  *(a2 + 504) = 0u;
  *(a2 + 496) = 0;
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  v21 = *(a2 + 536);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 536) = v21;
  *(a2 + 544) = 0u;
  *(a2 + 536) = 0;
  v22 = *(a2 + 560);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 560) = v22;
  *(a2 + 568) = 0u;
  *(a2 + 560) = 0;
  *(a1 + 584) = *(a2 + 584);
  v23 = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 592) = v23;
  *(a2 + 600) = 0u;
  *(a2 + 592) = 0;
  v25 = *(a2 + 664);
  v24 = *(a2 + 680);
  v26 = *(a2 + 648);
  *(a1 + 696) = *(a2 + 696);
  v27 = *(a2 + 632);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 632) = v27;
  *(a1 + 664) = v25;
  *(a1 + 680) = v24;
  *(a1 + 648) = v26;
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = 0u;
  *(a1 + 712) = 0;
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 728) = 0;
  *(a2 + 712) = 0u;
  *(a1 + 752) = 0;
  *(a1 + 736) = 0u;
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 752) = *(a2 + 752);
  *(a2 + 752) = 0;
  *(a2 + 736) = 0u;
  *(a1 + 776) = 0;
  *(a1 + 760) = 0u;
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 768) = *(a2 + 768);
  *(a2 + 776) = 0;
  *(a2 + 760) = 0u;
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 800) = 0u;
  *(a1 + 792) = 0;
  *(a1 + 792) = *(a2 + 792);
  *(a1 + 800) = *(a2 + 800);
  *(a2 + 808) = 0;
  *(a2 + 792) = 0u;
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 832) = 0u;
  *(a1 + 824) = 0;
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);
  *(a2 + 840) = 0;
  *(a2 + 824) = 0u;
  v28 = *(a2 + 848);
  *(a1 + 864) = *(a2 + 864);
  *(a1 + 848) = v28;
  *(a2 + 848) = 0;
  *(a2 + 856) = 0u;
  *(a1 + 872) = *(a2 + 872);
  v29 = *(a2 + 880);
  *(a1 + 896) = *(a2 + 896);
  *(a1 + 880) = v29;
  *(a2 + 888) = 0u;
  *(a2 + 880) = 0;
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);
  v30 = *(a2 + 920);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 920) = v30;
  *(a2 + 928) = 0u;
  *(a2 + 920) = 0;
  v31 = *(a2 + 944);
  *(a1 + 960) = *(a2 + 960);
  *(a1 + 944) = v31;
  *(a2 + 952) = 0u;
  *(a2 + 944) = 0;
  *(a1 + 968) = *(a2 + 968);
  v32 = *(a2 + 976);
  *(a1 + 992) = *(a2 + 992);
  *(a1 + 976) = v32;
  *(a2 + 984) = 0u;
  *(a2 + 976) = 0;
  *(a1 + 1000) = *(a2 + 1000);
  v33 = *(a2 + 1008);
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1008) = v33;
  sub_608B98(a1 + 1032, a2 + 1032);
  *(a1 + 1904) = 0;
  *(a1 + 1888) = 0u;
  *(a1 + 1888) = *(a2 + 1888);
  *(a1 + 1904) = *(a2 + 1904);
  *(a2 + 1904) = 0;
  *(a2 + 1888) = 0u;
  *(a1 + 1928) = 0;
  *(a1 + 1912) = 0u;
  *(a1 + 1912) = *(a2 + 1912);
  *(a1 + 1920) = *(a2 + 1920);
  *(a2 + 1928) = 0;
  *(a2 + 1912) = 0u;
  *(a1 + 1952) = 0;
  *(a1 + 1936) = 0u;
  *(a1 + 1936) = *(a2 + 1936);
  *(a1 + 1952) = *(a2 + 1952);
  *(a2 + 1952) = 0;
  *(a2 + 1936) = 0u;
  *(a1 + 1976) = 0;
  *(a1 + 1960) = 0u;
  *(a1 + 1960) = *(a2 + 1960);
  *(a1 + 1968) = *(a2 + 1968);
  *(a2 + 1976) = 0;
  *(a2 + 1960) = 0u;
  *(a1 + 2000) = 0;
  *(a1 + 1984) = 0u;
  *(a1 + 1984) = *(a2 + 1984);
  *(a1 + 2000) = *(a2 + 2000);
  *(a2 + 2000) = 0;
  *(a2 + 1984) = 0u;
  *(a1 + 2024) = 0;
  *(a1 + 2008) = 0u;
  *(a1 + 2008) = *(a2 + 2008);
  *(a1 + 2016) = *(a2 + 2016);
  *(a2 + 2024) = 0;
  *(a2 + 2008) = 0u;
  *(a1 + 2048) = 0;
  *(a1 + 2032) = 0u;
  *(a1 + 2032) = *(a2 + 2032);
  *(a1 + 2048) = *(a2 + 2048);
  *(a2 + 2048) = 0;
  *(a2 + 2032) = 0u;
  v34 = *(a2 + 2056);
  *(a1 + 2058) = *(a2 + 2058);
  *(a1 + 2056) = v34;
  *(a1 + 2064) = 0;
  *(a1 + 2072) = 0u;
  *(a1 + 2064) = *(a2 + 2064);
  *(a1 + 2080) = *(a2 + 2080);
  *(a2 + 2080) = 0;
  *(a2 + 2064) = 0u;
  v35 = *(a2 + 2104);
  *(a1 + 2088) = *(a2 + 2088);
  *(a1 + 2104) = v35;
  *(a1 + 2120) = 0;
  *(a1 + 2128) = 0u;
  *(a1 + 2120) = *(a2 + 2120);
  *(a1 + 2128) = *(a2 + 2128);
  *(a2 + 2136) = 0;
  *(a2 + 2120) = 0u;
  v36 = *(a2 + 2144);
  v37 = *(a2 + 2160);
  *(a1 + 2169) = *(a2 + 2169);
  *(a1 + 2160) = v37;
  *(a1 + 2144) = v36;
  *(a1 + 2192) = *(a2 + 2192);
  v38 = *(a2 + 2208);
  *(a1 + 2224) = *(a2 + 2224);
  *(a1 + 2208) = v38;
  *(a1 + 2232) = off_26696C8;
  v39 = *(a2 + 2240);
  *(a1 + 2256) = *(a2 + 2256);
  *(a1 + 2240) = v39;
  *(a2 + 2248) = 0u;
  *(a2 + 2240) = 0;
  *(a1 + 2232) = off_266BB28;
  v40 = *(a2 + 2264);
  *(a1 + 2269) = *(a2 + 2269);
  *(a1 + 2264) = v40;
  *(a1 + 2280) = off_26696C8;
  v41 = *(a2 + 2288);
  *(a1 + 2304) = *(a2 + 2304);
  *(a1 + 2288) = v41;
  *(a2 + 2296) = 0u;
  *(a2 + 2288) = 0;
  *(a1 + 2280) = off_266BB60;
  v42 = *(a2 + 2312);
  *(a1 + 2314) = *(a2 + 2314);
  *(a1 + 2312) = v42;
  *(a1 + 2320) = off_26696C8;
  v43 = *(a2 + 2328);
  *(a1 + 2344) = *(a2 + 2344);
  *(a1 + 2328) = v43;
  *(a2 + 2336) = 0u;
  *(a2 + 2328) = 0;
  *(a1 + 2320) = off_266B8A8;
  *(a1 + 2352) = *(a2 + 2352);
  v44 = *(a2 + 2360);
  *(a1 + 2376) = *(a2 + 2376);
  *(a1 + 2360) = v44;
  *(a2 + 2368) = 0u;
  *(a2 + 2360) = 0;
  *(a1 + 2384) = *(a2 + 2384);
  v45 = *(a2 + 2392);
  *(a1 + 2408) = *(a2 + 2408);
  *(a1 + 2392) = v45;
  *(a2 + 2400) = 0u;
  *(a2 + 2392) = 0;
  *(a1 + 2416) = *(a2 + 2416);
  *(a1 + 2432) = 0u;
  *(a1 + 2424) = 0;
  *(a1 + 2424) = *(a2 + 2424);
  *(a1 + 2432) = *(a2 + 2432);
  *(a2 + 2440) = 0;
  *(a2 + 2424) = 0u;
  v46 = *(a2 + 2448);
  v47 = *(a2 + 2464);
  *(a1 + 2480) = *(a2 + 2480);
  *(a1 + 2464) = v47;
  *(a1 + 2448) = v46;
  *(a1 + 2488) = 0;
  *(a1 + 2496) = 0u;
  *(a1 + 2488) = *(a2 + 2488);
  *(a1 + 2496) = *(a2 + 2496);
  *(a2 + 2504) = 0;
  *(a2 + 2488) = 0u;
  *(a1 + 2528) = 0;
  *(a1 + 2512) = 0u;
  *(a1 + 2512) = *(a2 + 2512);
  *(a1 + 2528) = *(a2 + 2528);
  *(a2 + 2528) = 0;
  *(a2 + 2512) = 0u;
  v48 = *(a2 + 2536);
  v49 = *(a2 + 2568);
  *(a1 + 2552) = *(a2 + 2552);
  *(a1 + 2568) = v49;
  *(a1 + 2536) = v48;
  v50 = *(a2 + 2584);
  *(a1 + 2593) = *(a2 + 2593);
  *(a1 + 2584) = v50;
  return a1;
}

__n128 sub_608B98(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v3 = *(a2 + 80);
  v2 = *(a2 + 96);
  v4 = *(a2 + 64);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v3;
  *(a1 + 96) = v2;
  *(a1 + 64) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  v6 = *(a2 + 120);
  v7 = *(a2 + 152);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v6;
  *(a1 + 152) = v7;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  v8 = *(a2 + 208);
  v9 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v9;
  *(a1 + 208) = v8;
  v10 = *(a2 + 272);
  v11 = *(a2 + 288);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v10;
  *(a1 + 288) = v11;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 296) = 0;
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  v12 = *(a2 + 352);
  *(a1 + 361) = *(a2 + 361);
  *(a1 + 352) = v12;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 384) = 0;
  *(a1 + 384) = *(a2 + 384);
  v13 = *(a2 + 408);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  v14 = *(a2 + 416);
  v15 = *(a2 + 424);
  *(a1 + 408) = v13;
  *(a1 + 416) = v14;
  *(a2 + 416) = 0;
  v16 = *(a2 + 432);
  *(a1 + 424) = v15;
  *(a1 + 432) = v16;
  *(a1 + 440) = *(a2 + 440);
  if (v16)
  {
    v17 = *(v15 + 8);
    v18 = *(a1 + 416);
    if ((v18 & (v18 - 1)) != 0)
    {
      if (v17 >= v18)
      {
        v17 %= v18;
      }
    }

    else
    {
      v17 &= v18 - 1;
    }

    *(v13 + 8 * v17) = a1 + 424;
    *(a2 + 424) = 0;
    *(a2 + 432) = 0;
  }

  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0;
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  *(a2 + 456) = 0;
  *(a2 + 464) = 0;
  v19 = *(a2 + 480);
  v20 = *(a2 + 488);
  *(a2 + 472) = 0;
  *(a2 + 480) = 0;
  *(a1 + 480) = v19;
  *(a1 + 488) = v20;
  *(a2 + 488) = 0;
  v22 = *(a2 + 496);
  v21 = *(a2 + 504);
  *(a1 + 496) = v22;
  *(a1 + 504) = v21;
  *(a1 + 512) = *(a2 + 512);
  if (v21)
  {
    v23 = *(v22 + 8);
    v24 = *(a1 + 488);
    if ((v24 & (v24 - 1)) != 0)
    {
      if (v23 >= v24)
      {
        v23 %= v24;
      }
    }

    else
    {
      v23 &= v24 - 1;
    }

    *(v19 + 8 * v23) = a1 + 496;
    *(a2 + 496) = 0;
    *(a2 + 504) = 0;
  }

  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a2 + 544) = 0;
  *(a2 + 528) = 0u;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a2 + 568) = 0;
  *(a2 + 552) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  *(a2 + 592) = 0;
  *(a2 + 576) = 0u;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 608) = *(a2 + 608);
  *(a2 + 616) = 0;
  *(a2 + 600) = 0u;
  v25 = *(a2 + 624);
  *(a2 + 624) = 0;
  *(a1 + 624) = v25;
  LODWORD(v25) = *(a2 + 632);
  *(a1 + 636) = *(a2 + 636);
  *(a1 + 632) = v25;
  v26 = *(a2 + 640);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 640) = v26;
  *(a2 + 640) = 0;
  *(a2 + 648) = 0u;
  v27 = *(a2 + 664);
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 664) = v27;
  *(a2 + 672) = 0u;
  *(a2 + 664) = 0;
  *(a1 + 704) = 0;
  *(a1 + 688) = 0u;
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 704) = *(a2 + 704);
  *(a2 + 704) = 0;
  *(a2 + 688) = 0u;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 728) = 0;
  *(a2 + 712) = 0u;
  *(a1 + 752) = 0;
  *(a1 + 736) = 0u;
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 752) = *(a2 + 752);
  *(a2 + 752) = 0;
  *(a2 + 736) = 0u;
  *(a1 + 776) = 0;
  *(a1 + 760) = 0u;
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 768) = *(a2 + 768);
  *(a2 + 776) = 0;
  *(a2 + 760) = 0u;
  v28 = *(a2 + 784);
  *(a2 + 784) = 0;
  *(a1 + 784) = v28;
  LODWORD(v28) = *(a2 + 792);
  *(a1 + 796) = *(a2 + 796);
  *(a1 + 792) = v28;
  v29 = *(a2 + 800);
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 800) = v29;
  *(a2 + 800) = 0;
  *(a2 + 816) = 0;
  *(a2 + 808) = 0;
  result = *(a2 + 824);
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 824) = result;
  *(a2 + 840) = 0;
  *(a2 + 832) = 0;
  *(a2 + 824) = 0;
  v31 = *(a2 + 848);
  *(a2 + 848) = 0;
  *(a1 + 848) = v31;
  return result;
}

uint64_t sub_608F9C(void **a1, int *a2, int *a3, __int128 *a4, __int128 *a5)
{
  v5 = 0x3795876FF3795877 * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if ((v5 + 1) > 0x190D4F120190D4)
  {
    sub_1794();
  }

  if (0x6F2B0EDFE6F2B0EELL * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0x6F2B0EDFE6F2B0EELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x3795876FF3795877 * ((a1[2] - *a1) >> 3)) >= 0xC86A78900C86ALL)
  {
    v8 = 0x190D4F120190D4;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x190D4F120190D4)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 8 * ((a1[1] - *a1) >> 3);
  sub_607CB0(v18, *a2, *a3, a4, a5);
  v9 = 2616 * v5 + 2616;
  v10 = *a1;
  v11 = a1[1];
  v12 = *a1 - v11;
  v13 = &v12[2616 * v5];
  if (v11 != *a1)
  {
    v14 = *a1;
    v15 = &v12[v18];
    do
    {
      v16 = sub_6083DC(v15, v14);
      v14 += 2616;
      v15 = v16 + 2616;
    }

    while (v14 != v11);
    do
    {
      sub_5C25A8(v10);
      v10 += 2616;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v13;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_609134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_608388(va);
  _Unwind_Resume(a1);
}

void sub_609148()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27991C8 = 0u;
  unk_27991D8 = 0u;
  dword_27991E8 = 1065353216;
  sub_3A9A34(&xmmword_27991C8, v0, v0);
  sub_3A9A34(&xmmword_27991C8, v3, v3);
  sub_3A9A34(&xmmword_27991C8, __p, __p);
  sub_3A9A34(&xmmword_27991C8, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27991A0 = 0;
    qword_27991A8 = 0;
    qword_2799198 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_609390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27991B0)
  {
    qword_27991B8 = qword_27991B0;
    operator delete(qword_27991B0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_60943C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  sub_7E9A4(a1 + 16);
  bzero((a1 + 40), 0x240uLL);
  *(a1 + 616) = 0x8000000080000000;
  *(a1 + 624) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 632) = 0;
  return a1;
}

uint64_t sub_609488@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != *(a3 + 8))
  {
    v7 = *(*(a1 + 8) + 1524);
    result = sub_5CB398(*a3);
    if (!v7)
    {
      goto LABEL_8;
    }

    v10 = *a3;
    v9 = *(a3 + 8);
    if (v10 != v9)
    {
      do
      {
        result = sub_5CB398(v10);
        v10 += 524;
        if (v10 == v9)
        {
          v11 = 1;
        }

        else
        {
          v11 = result;
        }
      }

      while ((v11 & 1) == 0);
LABEL_8:
      v12 = *a2;
      v13 = a2[1];
      if (*a2 == v13)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  result = 0;
  v12 = *a2;
  v13 = a2[1];
  if (*a2 == v13)
  {
    return result;
  }

LABEL_11:
  if (result)
  {
    do
    {
      result = sub_4C4AC8(v12);
      if (result != 4)
      {
        if (!sub_4C4AC8(v12) || (result = sub_4C4AC8(v12), result == 2))
        {
          v14 = a4[1];
          if (v14 >= a4[2])
          {
            result = sub_60B450(a4, v12);
          }

          else
          {
            sub_60B5B0(a4, a4[1], v12);
            result = v14 + 152;
          }

          a4[1] = result;
        }
      }

      v12 += 152;
    }

    while (v12 != v13);
  }

  else
  {
    do
    {
      result = sub_4C4AC8(v12);
      if (result != 4)
      {
        result = sub_4C4AC8(v12);
        if (result == 2)
        {
          v15 = a4[1];
          if (v15 >= a4[2])
          {
            result = sub_60B450(a4, v12);
          }

          else
          {
            sub_60B5B0(a4, a4[1], v12);
            result = v15 + 152;
          }

          a4[1] = result;
        }
      }

      v12 += 152;
    }

    while (v12 != v13);
  }

  return result;
}

void sub_60960C(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_609664(v1);
  _Unwind_Resume(a1);
}

char **sub_609664(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; sub_60A974(a1, i))
    {
      i -= 152;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_6096C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v47 = v9;
  v46 = v10;
  v12 = v11;
  v13 = v8;
  v14 = sub_7E9A4(v85);
  sub_7E974(v14);
  v82 = 0;
  v83 = 0;
  v84 = 0;
  sub_60BAC4(&v82, 0x86BCA1AF286BCA1BLL * ((v12[1] - *v12) >> 3));
  v15 = *v12;
  v48 = v12[1];
  v49 = v13;
  if (*v12 != v48)
  {
    do
    {
      __p[0] = 0;
      __p[1] = 0;
      v52 = 0;
      v19 = *v15;
      v18 = v15[1];
      v79 = __p;
      v80 = 0;
      v50 = v15;
      if (v18 != v19)
      {
        if (0xCCCCCCCCCCCCCCCDLL * ((v18 - v19) >> 4) < 0x333333333333334)
        {
          operator new();
        }

        sub_1794();
      }

      v13 = v49;
      v53 = 0uLL;
      v54 = 0;
      v20 = v15[3];
      v21 = v15[4];
      *&v77 = &v53;
      BYTE8(v77) = 0;
      if (v21 != v20)
      {
        if (0xE21A291C077975B9 * ((v21 - v20) >> 3) < 0x3BCBADC7F10D15)
        {
          operator new();
        }

        sub_1794();
      }

      v17 = v50;
      v22 = *(v50 + 3);
      v23 = *(v50 + 4);
      v24 = *(v50 + 5);
      *&v57[14] = *(v50 + 94);
      v56 = v23;
      *v57 = v24;
      v55 = v22;
      if (*(v50 + 127) < 0)
      {
        sub_325C(&v58, v50[13], v50[14]);
      }

      else
      {
        v25 = *(v50 + 13);
        v59 = v50[15];
        v58 = v25;
      }

      v26 = v83;
      if (v83 >= v84)
      {
        v83 = sub_60BC14(&v82, __p);
        if (SHIBYTE(v59) < 0)
        {
          operator delete(v58);
          v31 = v53;
          if (v53)
          {
LABEL_20:
            v32 = *(&v53 + 1);
            v33 = v31;
            if (*(&v53 + 1) != v31)
            {
              do
              {
                v32 = sub_3EEA68(v32 - 1096);
              }

              while (v32 != v31);
              v33 = v53;
            }

            *(&v53 + 1) = v31;
            operator delete(v33);
          }
        }

        else
        {
          v31 = v53;
          if (v53)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        *(v83 + 16) = 0;
        *(v26 + 24) = 0;
        *v26 = 0;
        *(v26 + 8) = 0;
        *v26 = *__p;
        *(v26 + 16) = v52;
        __p[0] = 0;
        __p[1] = 0;
        v52 = 0;
        *(v26 + 32) = 0;
        *(v26 + 40) = 0;
        *(v26 + 24) = v53;
        *(v26 + 40) = v54;
        v53 = 0uLL;
        v54 = 0;
        v27 = v55;
        v28 = v56;
        v29 = *v57;
        *(v26 + 94) = *&v57[14];
        *(v26 + 64) = v28;
        *(v26 + 80) = v29;
        *(v26 + 48) = v27;
        v30 = v58;
        *(v26 + 120) = v59;
        *(v26 + 104) = v30;
        v59 = 0;
        v58 = 0uLL;
        v83 = v26 + 128;
        v31 = v53;
        if (v53)
        {
          goto LABEL_20;
        }
      }

      v34 = __p[0];
      if (__p[0])
      {
        v35 = __p[1];
        v16 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v36 = *(v35 - 3);
            if (v36)
            {
              v37 = *(v35 - 2);
              v38 = *(v35 - 3);
              if (v37 != v36)
              {
                do
                {
                  v39 = v37 - 32;
                  v40 = *(v37 - 8);
                  if (v40 != -1)
                  {
                    (off_266BC58[v40])(&v77, v37 - 32);
                  }

                  *(v37 - 8) = -1;
                  v37 -= 32;
                }

                while (v39 != v36);
                v38 = *(v35 - 3);
              }

              *(v35 - 2) = v36;
              operator delete(v38);
            }

            v41 = *(v35 - 8);
            if (v41 != -1)
            {
              (off_266BC58[v41])(&v77, v35 - 7);
            }

            v42 = (v35 - 10);
            *(v35 - 8) = -1;
            if (*(v35 - 57) < 0)
            {
              operator delete(*v42);
            }

            v35 -= 10;
          }

          while (v42 != v34);
          v16 = __p[0];
        }

        __p[1] = v34;
        operator delete(v16);
        v17 = v50;
      }

      v15 = v17 + 19;
    }

    while (v15 != v48);
  }

  *v47 = 0;
  *(v47 + 23) = 0;
  *(v47 + 39) = 0;
  *(v47 + 31) = 0;
  *(v47 + 47) = 0;
  sub_60AB38(v47 + 48);
  *(v47 + 7888) = 0u;
  *(v47 + 7872) = 0u;
  *(v47 + 7856) = 0u;
  v43 = sub_3AF6B4(*v13);
  sub_4E5784(&v82, v43, v81);
  sub_67A1F8(&v79, *v13, 0, 0, v81);
  sub_5EB5B8(v47, (v13[1] + 1608));
  v44 = *(v46 + 16);
  if (!v44)
  {
LABEL_64:
    sub_615A70(&v78, *v49, v49[1], v81);
  }

  while (1)
  {
    if (sub_4C2B90((v44 + 2)))
    {
      goto LABEL_46;
    }

    LOBYTE(v77) = 0;
    BYTE8(v77) = 0;
    v45 = sub_4C2C3C((v44 + 2));
    sub_658AD4(__p, &v77, v45);
    sub_5EBC90(v47, __p);
    if (v76 == 1)
    {
      sub_3A98D4(v75);
      v72 = off_26696C8;
      if (v74 < 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v72 = off_26696C8;
      if (v74 < 0)
      {
LABEL_50:
        operator delete(v73);
        if (v71 < 0)
        {
          goto LABEL_51;
        }

        goto LABEL_58;
      }
    }

    if (v71 < 0)
    {
LABEL_51:
      operator delete(v70);
      if (v69 < 0)
      {
        goto LABEL_52;
      }

      goto LABEL_59;
    }

LABEL_58:
    if (v69 < 0)
    {
LABEL_52:
      operator delete(v68);
      if (v67 < 0)
      {
        goto LABEL_53;
      }

      goto LABEL_60;
    }

LABEL_59:
    if (v67 < 0)
    {
LABEL_53:
      operator delete(v66);
      if (v65 < 0)
      {
        goto LABEL_54;
      }

      goto LABEL_61;
    }

LABEL_60:
    if (v65 < 0)
    {
LABEL_54:
      operator delete(v64);
      if (v63 < 0)
      {
        goto LABEL_44;
      }

      goto LABEL_62;
    }

LABEL_61:
    if (v63 < 0)
    {
LABEL_44:
      operator delete(v62);
      if (v61 < 0)
      {
        goto LABEL_63;
      }

      goto LABEL_45;
    }

LABEL_62:
    if (v61 < 0)
    {
LABEL_63:
      operator delete(v60);
    }

LABEL_45:
    sub_2C0F28(__p);
LABEL_46:
    v44 = *v44;
    if (!v44)
    {
      goto LABEL_64;
    }
  }
}

void sub_60A508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_4EC948(&a29);
  sub_60B0D4(&a46);
  sub_60B118(&a59);
  sub_5DAA94(&STACK[0x21A0]);
  sub_609664(&STACK[0x21B8]);
  sub_60B1B8(&STACK[0x21D0]);
  v61 = STACK[0x24B0];
  if (STACK[0x24B0])
  {
    STACK[0x24B8] = v61;
    operator delete(v61);
  }

  sub_5C1158(&STACK[0x24C8]);
  sub_615AA0(&STACK[0x4348]);
  if (SLOBYTE(STACK[0x5FE7]) < 0)
  {
    operator delete(STACK[0x5FD0]);
  }

  if (SLOBYTE(STACK[0x60BF]) < 0)
  {
    operator delete(*(v59 - 168));
  }

  sub_60B2B4(a15);
  sub_60A84C((v59 - 144));
  _Unwind_Resume(a1);
}

void sub_60A754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v17 != a16)
  {
    do
    {
      sub_3ED230(v18);
      v18 -= 80;
      v16 += 80;
    }

    while (v16);
  }

  JUMPOUT(0x60A830);
}

void sub_60A760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_84350(&STACK[0x4348]);
  sub_3ED1D4(a21);
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  if (v22 != a16)
  {
    do
    {
      sub_3ED230(v23);
      v23 -= 80;
      v21 += 80;
    }

    while (v21);
  }

  JUMPOUT(0x60A830);
}

void sub_60A780()
{
  if (v1)
  {
    v2 = v0 - 1096;
    v3 = -v1;
    do
    {
      v2 = sub_3EEA68(v2) - 1096;
      v3 += 1096;
    }

    while (v3);
  }

  JUMPOUT(0x60A7A4);
}

void sub_60A7CC()
{
  sub_840B0(v2);
  sub_84254(&STACK[0x24C8]);
  *(v1 + 64) = v0;
  JUMPOUT(0x60A7E8);
}

char **sub_60A84C(char **a1)
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
        v3 -= 128;
        sub_60B38C(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

__n128 sub_60A8B0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  *a2 = *(a1 + 40);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 72);
  memcpy((a2 + 48), (a1 + 88), 0x1F8uLL);
  *(a2 + 552) = 0;
  *(a2 + 568) = 0;
  *(a2 + 560) = 0;
  v5 = *(a1 + 592);
  v6 = *(a1 + 600);
  if (v6 != v5)
  {
    if (((v6 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a2 + 592) = *(a1 + 632);
  result = *(a1 + 616);
  *(a2 + 576) = result;
  return result;
}

void sub_60A974(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  if (v3)
  {
    v4 = *(a2 + 136);
    v5 = *(a2 + 128);
    if (v4 != v3)
    {
      do
      {
        v4 = sub_60AA70(v4 - 14);
      }

      while (v4 != v3);
      v5 = *(a2 + 128);
    }

    *(a2 + 136) = v3;
    operator delete(v5);
  }

  if (*(a2 + 127) < 0)
  {
    operator delete(*(a2 + 104));
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = *(a2 + 24);
    if (v7 != v6)
    {
      do
      {
        v7 = sub_3EEA68(v7 - 1096);
      }

      while (v7 != v6);
      v8 = *(a2 + 24);
    }

    *(a2 + 32) = v6;
    operator delete(v8);
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = *(a2 + 8);
    v11 = *a2;
    if (v10 != v9)
    {
      do
      {
        v10 -= 80;
        sub_3ED230(v10);
      }

      while (v10 != v9);
      v11 = *a2;
    }

    *(a2 + 8) = v9;

    operator delete(v11);
  }
}

char **sub_60AA70(char **a1)
{
  v2 = a1[10];
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

  v4 = a1[8];
  a1[8] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[5];
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

  v7 = a1[3];
  a1[3] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    v9 = a1[1];
    v10 = *a1;
    if (v9 != v8)
    {
      v11 = a1[1];
      do
      {
        v13 = *(v11 - 5);
        v11 -= 40;
        v12 = v13;
        if (v13)
        {
          *(v9 - 4) = v12;
          operator delete(v12);
        }

        v9 = v11;
      }

      while (v11 != v8);
      v10 = *a1;
    }

    a1[1] = v8;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_60AB38(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v2 = sub_394BD0();
  *(a1 + 136) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 0x8000000080000000;
  *(a1 + 64) = 0x7FFFFFFF;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0x7FFFFFFF;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = -1;
  *(a1 + 168) = 0;
  sub_64B998(a1 + 176);
  sub_64B998(a1 + 336);
  sub_64B998(a1 + 496);
  sub_64B998(a1 + 656);
  sub_64B998(a1 + 816);
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  sub_64B998(a1 + 1000);
  *(a1 + 1160) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = -1;
  *(a1 + 1211) = -1;
  *(a1 + 1223) = 0;
  *(a1 + 1231) = 0;
  *(a1 + 1215) = 0;
  *(a1 + 1239) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1256) = 0;
  *(a1 + 1272) = 0;
  *(a1 + 1280) = 0;
  sub_559C9C(a1 + 1288);
  sub_60AEEC(a1 + 2376);
  *(a1 + 7296) = 0;
  *(a1 + 7208) = 0;
  *(a1 + 7176) = 0u;
  *(a1 + 7192) = 0u;
  *(a1 + 7216) = 0u;
  *(a1 + 7232) = 0u;
  *(a1 + 7248) = 0u;
  *(a1 + 7304) = -1;
  *(a1 + 7307) = -1;
  *(a1 + 7319) = 0;
  *(a1 + 7327) = 0;
  *(a1 + 7311) = 0;
  *(a1 + 7335) = 0;
  *(a1 + 7344) = 0;
  *(a1 + 7360) = 0;
  *(a1 + 7352) = 0;
  *(a1 + 7368) = 0;
  *(a1 + 7376) = 0u;
  *(a1 + 7392) = 0u;
  *(a1 + 7408) = 0u;
  *(a1 + 7424) = 0u;
  *(a1 + 7440) = 0u;
  *(a1 + 7456) = 0u;
  *(a1 + 7472) = 0u;
  *(a1 + 7488) = 0u;
  *(a1 + 7504) = 0u;
  *(a1 + 7520) = 0u;
  *(a1 + 7536) = 0u;
  *(a1 + 7552) = 0u;
  *(a1 + 7568) = 0u;
  *(a1 + 7584) = 0u;
  *(a1 + 7600) = 0u;
  *(a1 + 7616) = 0;
  sub_64B998(a1 + 7624);
  *(a1 + 7784) = 0u;
  *(a1 + 7800) = 0;
  return a1;
}

void sub_60AD34(_Unwind_Exception *a1)
{
  sub_5EBE9C((v1 + 7592));
  sub_5EBE9C((v1 + 7568));
  sub_5706DC((v1 + 7544));
  sub_5706DC((v1 + 7520));
  v10 = *(v1 + 7496);
  if (v10)
  {
    *(v1 + 7504) = v10;
    operator delete(v10);
    if ((v4[3399] & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4[3375] & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4[3399] & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 7472));
  if ((v4[3375] & 0x80000000) == 0)
  {
LABEL_4:
    if ((v4[3351] & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  operator delete(*(v1 + 7448));
  if ((v4[3351] & 0x80000000) == 0)
  {
LABEL_6:
    sub_528FAC((v1 + v8));
    sub_5D9FE8(v3);
    sub_53E440(v1 + v7);
    if (v4[3167] < 0)
    {
      operator delete(*(v1 + 7240));
      if ((v4[3143] & 0x80000000) == 0)
      {
LABEL_8:
        v11 = *v5;
        if (!*v5)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if ((v4[3143] & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    operator delete(*(v1 + v6));
    v11 = *v5;
    if (!*v5)
    {
LABEL_10:
      sub_5C1688(v1 + 2376);
      sub_559E70((v1 + 1288));
      sub_53E440(v1 + 1168);
      sub_53A868(v1 + 1000);
      sub_1A104((v1 + 976));
      sub_53A868(v1 + 816);
      sub_53A868(v1 + 656);
      sub_53A868(v1 + 496);
      sub_53A868(v1 + 336);
      sub_53A868((v2 + 5));
      sub_5EC204(v2);
      sub_5EBF44((v1 + 24));
      sub_5EC430(v1);
      _Unwind_Resume(a1);
    }

LABEL_9:
    *(v1 + 7184) = v11;
    operator delete(v11);
    goto LABEL_10;
  }

LABEL_5:
  operator delete(*(v1 + 7424));
  goto LABEL_6;
}

void sub_60AED0(_Unwind_Exception *a1)
{
  sub_5EBF44((v1 + 24));
  sub_5EC430(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_60AEEC(uint64_t a1)
{
  sub_64B998(a1);
  sub_64B998(v2 + 160);
  sub_64B998(a1 + 320);
  sub_5E5940(a1 + 480);
  sub_5E5940(a1 + 1920);
  sub_5E5940(a1 + 3360);
  return a1;
}

void sub_60AF3C(_Unwind_Exception *a1)
{
  sub_5E58CC(v1 + 1920);
  sub_5E58CC(v1 + 480);
  sub_53A868(v1 + 320);
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_60AF9C(uint64_t a1)
{
  if (*(a1 + 1120) == 1)
  {
    if (*(a1 + 1104) == 1)
    {
      sub_3A98D4(a1 + 744);
      *(a1 + 704) = off_26696C8;
      if ((*(a1 + 735) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(a1 + 655) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 704) = off_26696C8;
      if ((*(a1 + 735) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    operator delete(*(a1 + 712));
    if ((*(a1 + 655) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 623) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_14:
    operator delete(*(a1 + 632));
    if ((*(a1 + 623) & 0x80000000) == 0)
    {
LABEL_6:
      if ((*(a1 + 599) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

LABEL_15:
    operator delete(*(a1 + 600));
    if ((*(a1 + 599) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 559) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    operator delete(*(a1 + 576));
    if ((*(a1 + 559) & 0x80000000) == 0)
    {
LABEL_8:
      if ((*(a1 + 527) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    operator delete(*(a1 + 536));
    if ((*(a1 + 527) & 0x80000000) == 0)
    {
LABEL_9:
      if ((*(a1 + 503) & 0x80000000) == 0)
      {
LABEL_10:
        sub_2C0F28(a1);
        return a1;
      }

LABEL_19:
      operator delete(*(a1 + 480));
      goto LABEL_10;
    }

LABEL_18:
    operator delete(*(a1 + 504));
    if ((*(a1 + 503) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  return a1;
}

void *sub_60B0D4(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_60B118(uint64_t a1)
{
  if (*(a1 + 7983) < 0)
  {
    operator delete(*(a1 + 7960));
  }

  sub_528AB4(a1 + 4032);
  sub_559B98(a1 + 784);
  v2 = *(a1 + 776);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 736);
  if (v3)
  {
    *(a1 + 744) = v3;
    operator delete(v3);
  }

  return a1;
}

char **sub_60B1B8(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; sub_60B21C(a1, i))
    {
      i -= 2096;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

char **sub_60B21C(uint64_t a1, uint64_t a2)
{
  result = sub_5C0BF4((a2 + 2016));
  if (*(a2 + 2008) != 1)
  {
    return result;
  }

  if (*(a2 + 2007) < 0)
  {
    operator delete(*(a2 + 1984));
    if (*(a2 + 1976) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (*(a2 + 1976) == 1)
  {
LABEL_4:
    sub_52A624(a2 + 1808);
  }

LABEL_5:
  sub_5706DC((a2 + 1760));
  sub_570440(a2 + 1144);

  return sub_60AF9C(a2 + 16);
}

uint64_t sub_60B2B4(uint64_t a1)
{
  v2 = *(a1 + 7880);
  if (v2)
  {
    v3 = *(a1 + 7888);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_5C0F34(v3 - 816);
      }

      while (v3 != v2);
      v4 = *(a1 + 7880);
    }

    *(a1 + 7888) = v2;
    operator delete(v4);
  }

  sub_5706DC((a1 + 7856));
  sub_5C1158(a1 + 48);
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 24);
    if (v6 != v5)
    {
      do
      {
        v6 = sub_5C1158(v6 - 7808);
      }

      while (v6 != v5);
      v7 = *(a1 + 24);
    }

    *(a1 + 32) = v5;
    operator delete(v7);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_60B38C(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_3EEA68(v3 - 1096);
      }

      while (v3 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = *(a1 + 8);
    v7 = *a1;
    if (v6 != v5)
    {
      do
      {
        v6 -= 80;
        sub_3ED230(v6);
      }

      while (v6 != v5);
      v7 = *a1;
    }

    *(a1 + 8) = v5;

    operator delete(v7);
  }
}

void *sub_60B450(void **a1, uint64_t a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v5 = 0x1AF286BCA1AF286;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  sub_60B5B0(a1, v11, a2);
  v6 = (152 * v2 + 152);
  v7 = a1[1];
  v8 = (152 * v2 + *a1 - v7);
  sub_60B8CC(a1, *a1, v7, v11 + *a1 - v7);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_60B59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_60BA6C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_60B5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_3ECFD8(a2, *a3, *(a3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 4));
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_3ED39C(a2 + 24, *(a3 + 24), *(a3 + 32), 0xE21A291C077975B9 * ((*(a3 + 32) - *(a3 + 24)) >> 3));
  v5 = *(a3 + 48);
  v6 = *(a3 + 64);
  v7 = *(a3 + 80);
  *(a2 + 94) = *(a3 + 94);
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 48) = v5;
  if (*(a3 + 127) < 0)
  {
    sub_325C((a2 + 104), *(a3 + 104), *(a3 + 112));
  }

  else
  {
    v8 = *(a3 + 104);
    *(a2 + 120) = *(a3 + 120);
    *(a2 + 104) = v8;
  }

  return sub_60B6D4((a2 + 128), (a3 + 128));
}

void sub_60B690(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_60B6D4(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v2 - *a2) >> 4)) < 0x24924924924924ALL)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_60B80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v11)
  {
    v13 = (v10 + v11 - 112);
    v14 = -v11;
    do
    {
      v13 = sub_60AA70(v13) - 14;
      v14 += 112;
    }

    while (v14);
  }

  *(v9 + 8) = v10;
  sub_60B854(&a9);
  _Unwind_Resume(a1);
}

void ***sub_60B854(void ***result)
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
          v4 = sub_60AA70(v4 - 14);
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

void sub_60B8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v8 = *(v7 + 48);
      v9 = *(v7 + 64);
      v10 = *(v7 + 80);
      *(a4 + 94) = *(v7 + 94);
      *(a4 + 64) = v9;
      *(a4 + 80) = v10;
      *(a4 + 48) = v8;
      v11 = *(v7 + 104);
      *(a4 + 120) = *(v7 + 120);
      *(a4 + 104) = v11;
      *(v7 + 112) = 0;
      *(v7 + 120) = 0;
      *(v7 + 104) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 128) = *(v7 + 128);
      *(a4 + 144) = *(v7 + 144);
      *(v7 + 128) = 0;
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      v7 += 152;
      a4 += 152;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      do
      {
        sub_60A974(a1, v5);
        v5 += 152;
      }

      while (v5 != a3);
    }
  }
}

uint64_t sub_60BA04(uint64_t a1)
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
        v4 -= 152;
        sub_60A974(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_60BA6C(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    v4 = *(a1 + 32);
    *(a1 + 16) = v3 - 152;
    sub_60A974(v4, v3 - 152);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_60BAC4(void **a1, unint64_t a2)
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

uint64_t sub_60BC14(void **a1, uint64_t a2)
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

  if (v6)
  {
    if (!(v6 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = v2 << 7;
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
  v8 = *(a2 + 48);
  v9 = *(a2 + 64);
  v10 = *(a2 + 80);
  *(v7 + 94) = *(a2 + 94);
  *(v7 + 64) = v9;
  *(v7 + 80) = v10;
  *(v7 + 48) = v8;
  v11 = *(a2 + 104);
  *(v7 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v12 = (v2 << 7) + 128;
  v13 = *a1;
  v14 = a1[1];
  v15 = *a1 + v7 - v14;
  *(v7 + 104) = v11;
  if (v14 != v13)
  {
    v16 = v13;
    v17 = v15;
    do
    {
      *v17 = *v16;
      *(v17 + 16) = *(v16 + 2);
      *v16 = 0;
      *(v16 + 1) = 0;
      *(v16 + 2) = 0;
      *(v17 + 32) = 0;
      *(v17 + 40) = 0;
      *(v17 + 24) = *(v16 + 24);
      *(v17 + 40) = *(v16 + 5);
      *(v16 + 3) = 0;
      *(v16 + 4) = 0;
      *(v16 + 5) = 0;
      v18 = *(v16 + 3);
      v19 = *(v16 + 4);
      v20 = *(v16 + 5);
      *(v17 + 94) = *(v16 + 94);
      *(v17 + 64) = v19;
      *(v17 + 80) = v20;
      *(v17 + 48) = v18;
      v21 = *(v16 + 104);
      *(v17 + 120) = *(v16 + 15);
      *(v17 + 104) = v21;
      *(v16 + 14) = 0;
      *(v16 + 15) = 0;
      *(v16 + 13) = 0;
      v16 += 128;
      v17 += 128;
    }

    while (v16 != v14);
    do
    {
      sub_60B38C(v13);
      v13 += 128;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = v12;
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v12;
}

void sub_60BDE0()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_2799250 = 0u;
  unk_2799260 = 0u;
  dword_2799270 = 1065353216;
  sub_3A9A34(&xmmword_2799250, v0, v0);
  sub_3A9A34(&xmmword_2799250, v3, v3);
  sub_3A9A34(&xmmword_2799250, __p, __p);
  sub_3A9A34(&xmmword_2799250, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    byte_279928F = 3;
    LODWORD(qword_2799278) = 5136193;
    byte_27992A7 = 3;
    LODWORD(qword_2799290) = 5136194;
    byte_27992BF = 3;
    LODWORD(qword_27992A8) = 5136195;
    byte_27992D7 = 15;
    strcpy(&qword_27992C0, "vehicle_mass_kg");
    byte_27992EF = 21;
    strcpy(&xmmword_27992D8, "vehicle_cargo_mass_kg");
    byte_2799307 = 19;
    strcpy(&qword_27992F0, "vehicle_aux_power_w");
    byte_279931F = 15;
    strcpy(&qword_2799308, "dcdc_efficiency");
    strcpy(&qword_2799320, "drive_train_efficiency");
    HIBYTE(word_2799336) = 22;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_60C1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2799238)
  {
    qword_2799240 = qword_2799238;
    operator delete(qword_2799238);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_60C2EC(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  sub_92AA50((a1 + 8), a2);
  HIBYTE(v4[2]) = 18;
  strcpy(v4, "ETADrivingGuidance");
  memset(v3, 0, sizeof(v3));
  sub_3AEC94(a2, v4, v3);
  operator new();
}

void sub_60C44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

void sub_60CA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  *(v17 + 8) = v18;
  sub_60E03C(v17);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_60CA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_60E03C(v17);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_60CAC0(uint64_t a1, uint64_t *a2, int a3, __int128 **a4)
{
  v6 = *(a4 + 74);
  v7 = *(a4 + 9);
  v38 = v7;
  v39 = v6;
  v8 = *(a1 + 48);
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  if (v8 == 1 && a3 != 0 && v6 != 0x7FFFFFFF && v7 != 0x7FFFFFFF)
  {
    v12 = sub_92AA54(a1 + 8, &v38, &v39);
    *(a4 + 80) = v12;
    sub_92AC84(v12, v40);
    *v36 = *v40;
    v37 = *__p;
  }

  v13 = *a4;
  if (*a4 != a4[1])
  {
    *__p = 0xB00000000000000;
    *v40 = *"{RouteName}";
    if (*(v13 + 23) < 0)
    {
      sub_325C(&__p[8], *v13, *(v13 + 1));
    }

    else
    {
      v14 = *v13;
      v42 = *(v13 + 2);
      *&__p[8] = v14;
    }

    *v33 = 0u;
    v34 = 0u;
    v35 = 1065353216;
    sub_2C7D4(v33, v40, v40);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(*&__p[8]);
      if ((__p[7] & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else if ((__p[7] & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v40[0]);
LABEL_18:
    if (v37 >= 0)
    {
      v15 = HIBYTE(v37);
    }

    else
    {
      v15 = v36[1];
    }

    if (v15)
    {
      if (v15 + 17 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v15 + 17 >= 0x17)
      {
        operator new();
      }

      v32[0] = 103;
      *v31 = *"Proactive_Driving";
      if (v37 >= 0)
      {
        v16 = v36;
      }

      else
      {
        v16 = v36[0];
      }

      memmove(v32 + 1, v16, v15);
      *(v32 + v15 + 1) = 0;
      v17 = SHIBYTE(v32[0]);
      if ((SHIBYTE(v32[0]) & 0x8000000000000000) != 0)
      {
        v17 = v31[1];
        v18 = (v32[0] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v18 - v31[1] < 0xA)
        {
          if ((0x7FFFFFFFFFFFFFF7 - (v32[0] & 0x7FFFFFFFFFFFFFFFLL)) < v31[1] - v18 + 10)
          {
            sub_3244();
          }

LABEL_35:
          operator new();
        }

        v19 = v31[0];
      }

      else
      {
        if ((SHIBYTE(v32[0]) - 13) < 0xA)
        {
          goto LABEL_35;
        }

        v19 = v31;
      }

      qmemcpy(v17 + v19, "_RouteName", 10);
      v20 = v17 + 10;
      if (SHIBYTE(v32[0]) < 0)
      {
        v31[1] = v17 + 10;
      }

      else
      {
        HIBYTE(v32[0]) = v20 & 0x7F;
      }

      v20[v19] = 0;
      *v40 = *v31;
      *__p = v32[0];
      sub_6A5584(v40, v33, a2, 0, v31);
      v21 = a4[42];
      if (v21 >= a4[43])
      {
        v22 = sub_5C4594(a4 + 41, v31);
      }

      else
      {
        sub_64BC20(a4[42], v31);
        v22 = v21 + 10;
        a4[42] = v21 + 10;
      }

      a4[42] = v22;
      if (SHIBYTE(v32[0]) < 0)
      {
        operator delete(v31[0]);
        if ((__p[7] & 0x80000000) == 0)
        {
          goto LABEL_46;
        }
      }

      else if ((__p[7] & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      operator delete(v40[0]);
    }

LABEL_46:
    operator new();
  }

  v23 = SHIBYTE(v37);
  if (v37 >= 0)
  {
    v24 = HIBYTE(v37);
  }

  else
  {
    v24 = v36[1];
  }

  if (v24)
  {
    *v40 = 0u;
    *__p = 0u;
    *&__p[16] = 1065353216;
    if (v24 + 17 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v24 + 17 >= 0x17)
    {
      operator new();
    }

    *&v34 = 103;
    *v33 = *"Proactive_Driving";
    if (v37 >= 0)
    {
      v25 = v36;
    }

    else
    {
      v25 = v36[0];
    }

    memmove(&v34 + 1, v25, v24);
    *(&v34 + v24 + 1) = 0;
    sub_6A5584(v33, v40, a2, 0, v31);
    v26 = a4[42];
    if (v26 >= a4[43])
    {
      v27 = sub_5C4594(a4 + 41, v31);
    }

    else
    {
      sub_64BC20(a4[42], v31);
      v27 = v26 + 10;
      a4[42] = v26 + 10;
    }

    a4[42] = v27;
    if (SHIBYTE(v32[0]) < 0)
    {
      operator delete(v31[0]);
      if ((SBYTE7(v34) & 0x80000000) == 0)
      {
LABEL_62:
        v28 = *__p;
        if (*__p)
        {
          goto LABEL_69;
        }

        goto LABEL_72;
      }
    }

    else if ((SBYTE7(v34) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    operator delete(v33[0]);
    v28 = *__p;
    if (!*__p)
    {
LABEL_72:
      v30 = v40[0];
      v40[0] = 0;
      if (v30)
      {
        operator delete(v30);
      }

      goto LABEL_74;
    }

    while (1)
    {
LABEL_69:
      v29 = *v28;
      if (v28[63] < 0)
      {
        operator delete(*(v28 + 5));
        if ((v28[39] & 0x80000000) == 0)
        {
          goto LABEL_68;
        }

LABEL_71:
        operator delete(*(v28 + 2));
        operator delete(v28);
        v28 = v29;
        if (!v29)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (v28[39] < 0)
        {
          goto LABEL_71;
        }

LABEL_68:
        operator delete(v28);
        v28 = v29;
        if (!v29)
        {
          goto LABEL_72;
        }
      }
    }
  }

LABEL_74:
  if (v23 < 0)
  {
    operator delete(v36[0]);
  }
}

void sub_60D1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  sub_2CD04(&a16);
  if ((a30 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_60D2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_2CD04(va);
  sub_1AB28(va1);
  if (SHIBYTE(v17) < 0)
  {
    JUMPOUT(0x60D224);
  }

  JUMPOUT(0x60D2F0);
}

void *sub_60D330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v27 = v11;
  if (*(v10 + 99) == 1)
  {
    v12 = v9;
    sub_7B8FC0(v28, *result, v10);
    v13 = sub_58BBC(v12);
    v14 = *v13;
    v26 = *(v13 + 8);
    if (*v13 != v26)
    {
      v15 = 0;
      while (1)
      {
        v29[0] = 0;
        v29[128] = 0;
        v29[136] = 0;
        v29[264] = 0;
        v38 = 0;
        v36 = 0;
        v37 = 0;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        memset(v35, 0, sizeof(v35));
        v42 = 0x3FF0000000000000;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 5;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0x7FFFFFFF;
        v55 = 0;
        v56 = 0;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        memset(v54, 0, sizeof(v54));
        v57 = -1;
        v58 = 0x7FFFFFFF;
        v59 = 0;
        v60 = 0;
        v61 = -1;
        v62 = -1;
        v63 = 0;
        sub_7B8FC4(v28, v14, v29, &v64);
        sub_5287C0(v29);
        v17 = v64;
        v18 = v65;
        if (v64 != v65)
        {
          v19 = v64;
          do
          {
            if ((*(v19 + 472) & 1) == 0)
            {
              sub_4F0F0C();
            }

            *(v19 + 464) += v15;
            v19 += 1120;
          }

          while (v19 != v18);
        }

        sub_610A44((v27 + 352), *(v27 + 360), v17, v18, 0xAF8AF8AF8AF8AF8BLL * ((v18 - v17) >> 5));
        v20 = sub_4D1DB8(v14);
        v21 = v64;
        if (!v64)
        {
          goto LABEL_6;
        }

        v22 = v65;
        v16 = v64;
        if (v65 != v64)
        {
          break;
        }

LABEL_5:
        v65 = v21;
        operator delete(v16);
LABEL_6:
        v15 += v20;
        v14 += 137;
        if (v14 == v26)
        {
          return sub_60E098(v28);
        }
      }

      while (1)
      {
        if (*(v22 - 16) != 1)
        {
          *(v22 - 416) = off_26696C8;
          if ((*(v22 - 385) & 0x80000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_43;
        }

        v23 = *(v22 - 40);
        if (v23)
        {
          break;
        }

LABEL_37:
        if (*(v22 - 49) < 0)
        {
          operator delete(*(v22 - 72));
          if ((*(v22 - 81) & 0x80000000) == 0)
          {
LABEL_39:
            if ((*(v22 - 113) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_52;
          }
        }

        else if ((*(v22 - 81) & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        operator delete(*(v22 - 104));
        if ((*(v22 - 113) & 0x80000000) == 0)
        {
LABEL_40:
          if ((*(v22 - 137) & 0x80000000) == 0)
          {
            goto LABEL_41;
          }

LABEL_53:
          operator delete(*(v22 - 160));
          if ((*(v22 - 161) & 0x80000000) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_54;
        }

LABEL_52:
        operator delete(*(v22 - 136));
        if (*(v22 - 137) < 0)
        {
          goto LABEL_53;
        }

LABEL_41:
        if ((*(v22 - 161) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

LABEL_54:
        operator delete(*(v22 - 184));
LABEL_42:
        sub_33D080(v22 - 376);
        *(v22 - 416) = off_26696C8;
        if ((*(v22 - 385) & 0x80000000) == 0)
        {
LABEL_17:
          if ((*(v22 - 465) & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_44;
        }

LABEL_43:
        operator delete(*(v22 - 408));
        if ((*(v22 - 465) & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v22 - 497) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_45;
        }

LABEL_44:
        operator delete(*(v22 - 488));
        if ((*(v22 - 497) & 0x80000000) == 0)
        {
LABEL_19:
          if ((*(v22 - 521) & 0x80000000) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_46;
        }

LABEL_45:
        operator delete(*(v22 - 520));
        if ((*(v22 - 521) & 0x80000000) == 0)
        {
LABEL_20:
          if ((*(v22 - 561) & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_47;
        }

LABEL_46:
        operator delete(*(v22 - 544));
        if ((*(v22 - 561) & 0x80000000) == 0)
        {
LABEL_21:
          if ((*(v22 - 593) & 0x80000000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_48;
        }

LABEL_47:
        operator delete(*(v22 - 584));
        if ((*(v22 - 593) & 0x80000000) == 0)
        {
LABEL_22:
          if (*(v22 - 617) < 0)
          {
            goto LABEL_49;
          }

          goto LABEL_14;
        }

LABEL_48:
        operator delete(*(v22 - 616));
        if (*(v22 - 617) < 0)
        {
LABEL_49:
          operator delete(*(v22 - 640));
        }

LABEL_14:
        v22 -= 1120;
        sub_2C0F28(v22);
        if (v22 == v21)
        {
          v16 = v64;
          goto LABEL_5;
        }
      }

      v24 = *(v22 - 32);
      v25 = *(v22 - 40);
      if (v24 == v23)
      {
LABEL_36:
        *(v22 - 32) = v23;
        operator delete(v25);
        goto LABEL_37;
      }

      while (1)
      {
        if (*(v24 - 1) < 0)
        {
          operator delete(*(v24 - 3));
          if ((*(v24 - 25) & 0x80000000) == 0)
          {
LABEL_30:
            if (*(v24 - 49) < 0)
            {
              goto LABEL_34;
            }

            goto LABEL_27;
          }
        }

        else if ((*(v24 - 25) & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        operator delete(*(v24 - 6));
        if (*(v24 - 49) < 0)
        {
LABEL_34:
          operator delete(*(v24 - 9));
        }

LABEL_27:
        v24 -= 31;
        sub_33D5A0(v24);
        if (v24 == v23)
        {
          v25 = *(v22 - 40);
          goto LABEL_36;
        }
      }
    }

    return sub_60E098(v28);
  }

  return result;
}

void sub_60D7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_60E098(va);
  _Unwind_Resume(a1);
}

void sub_60D7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_5706DC((v13 - 112));
  sub_60E098(va);
  _Unwind_Resume(a1);
}

void *sub_60D834(void **a1, uint64_t a2)
{
  v2 = 0x51B3BEA3677D46CFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xAE4C415C9882B9)
  {
    sub_1794();
  }

  if (0xA3677D46CEFA8D9ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA3677D46CEFA8D9ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x51B3BEA3677D46CFLL * ((a1[2] - *a1) >> 3)) >= 0x572620AE4C415CLL)
  {
    v5 = 0xAE4C415C9882B9;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAE4C415C9882B9)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  sub_60D988(v11, a2);
  v6 = (376 * v2 + 376);
  v7 = a1[1];
  v8 = (v11 + *a1 - v7);
  sub_60DB70(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_60D974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_60DEE8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_60D988(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = sub_4C4BD8(a2);
  *(a1 + 32) = 0x8000000080000000;
  *(a1 + 24) = v4;
  *(a1 + 40) = 0x7FFFFFFF;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *&v5 = 0x8000000080000000;
  *(&v5 + 1) = 0x8000000080000000;
  *(a1 + 272) = 0u;
  *(a1 + 288) = v5;
  *(a1 + 304) = v5;
  *(a1 + 320) = 5;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  if (!sub_4C49D0(a2))
  {
    *(a1 + 32) = sub_4C4C40(a2);
    *(a1 + 36) = sub_4E4B18(a2, 0, 6);
    *(a1 + 296) = sub_4E4B18(a2, 1, 6);
    *(a1 + 300) = sub_4E4B18(a2, 2, 6);
    *(a1 + 304) = sub_4E4B18(a2, 3, 6);
    *(a1 + 308) = sub_4E4B18(a2, 4, 6);
    *(a1 + 312) = sub_4E4B18(a2, 5, 6);
  }

  return a1;
}

void sub_60DAB0(_Unwind_Exception *a1)
{
  sub_5706DC((v2 + 320));
  sub_5C0ED8(v3);
  sub_3EE9A4(v2);
  sub_60DB0C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_60DB0C(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_5ED330(a1, i))
    {
      i -= 152;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_60DB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      v7 = *(v6 + 32);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 32) = v7;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = 0;
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 88) = *(v6 + 88);
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v6 + 96);
      *(a4 + 112) = *(v6 + 112);
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = *(v6 + 120);
      *(a4 + 136) = *(v6 + 136);
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(v6 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 144) = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(a4 + 168) = 0;
      *(a4 + 176) = 0;
      *(a4 + 184) = 0;
      *(a4 + 168) = *(v6 + 168);
      *(a4 + 184) = *(v6 + 184);
      *(v6 + 168) = 0;
      *(v6 + 176) = 0;
      *(v6 + 184) = 0;
      *(a4 + 192) = 0;
      *(a4 + 200) = 0;
      *(a4 + 208) = 0;
      *(a4 + 192) = *(v6 + 192);
      *(a4 + 208) = *(v6 + 208);
      *(v6 + 192) = 0;
      *(v6 + 200) = 0;
      *(v6 + 208) = 0;
      *(a4 + 216) = 0;
      *(a4 + 224) = 0;
      *(a4 + 232) = 0;
      *(a4 + 216) = *(v6 + 216);
      *(a4 + 232) = *(v6 + 232);
      *(v6 + 216) = 0;
      *(v6 + 224) = 0;
      *(v6 + 232) = 0;
      *(a4 + 240) = 0;
      *(a4 + 248) = 0;
      *(a4 + 256) = 0;
      *(a4 + 240) = *(v6 + 240);
      *(a4 + 256) = *(v6 + 256);
      *(v6 + 240) = 0;
      *(v6 + 248) = 0;
      *(v6 + 256) = 0;
      *(a4 + 264) = 0;
      *(a4 + 272) = 0;
      *(a4 + 280) = 0;
      *(a4 + 264) = *(v6 + 264);
      *(a4 + 272) = *(v6 + 272);
      *(v6 + 264) = 0;
      *(v6 + 272) = 0;
      *(v6 + 280) = 0;
      v8 = *(v6 + 304);
      *(a4 + 288) = *(v6 + 288);
      *(a4 + 304) = v8;
      *(a4 + 320) = *(v6 + 320);
      *(a4 + 336) = 0;
      *(a4 + 344) = 0;
      *(a4 + 328) = 0;
      *(a4 + 328) = *(v6 + 328);
      *(a4 + 336) = *(v6 + 336);
      *(v6 + 328) = 0;
      *(v6 + 336) = 0;
      *(v6 + 344) = 0;
      *(a4 + 352) = 0;
      *(a4 + 360) = 0;
      *(a4 + 368) = 0;
      *(a4 + 352) = *(v6 + 352);
      *(a4 + 368) = *(v6 + 368);
      *(v6 + 352) = 0;
      *(v6 + 360) = 0;
      *(v6 + 368) = 0;
      v6 += 376;
      a4 += 376;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_60DD90(v5) + 376;
    }
  }
}

uint64_t sub_60DD90(uint64_t a1)
{
  v2 = *(a1 + 352);
  if (v2)
  {
    for (i = *(a1 + 360); i != v2; sub_5EBD80(a1 + 352, i))
    {
      i -= 1120;
    }

    *(a1 + 360) = v2;
    operator delete(*(a1 + 352));
  }

  v4 = *(a1 + 328);
  if (v4)
  {
    v5 = *(a1 + 336);
    v6 = *(a1 + 328);
    if (v5 != v4)
    {
      do
      {
        v5 = sub_53A868(v5 - 160);
      }

      while (v5 != v4);
      v6 = *(a1 + 328);
    }

    *(a1 + 336) = v4;
    operator delete(v6);
  }

  sub_3EE9A4((a1 + 32));
  v7 = *a1;
  if (*a1)
  {
    v8 = *(a1 + 8);
    v9 = *a1;
    if (v8 == v7)
    {
LABEL_27:
      *(a1 + 8) = v7;
      operator delete(v9);
      return a1;
    }

    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 3));
        if ((*(v8 - 33) & 0x80000000) == 0)
        {
LABEL_17:
          if ((*(v8 - 57) & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_23;
        }
      }

      else if ((*(v8 - 33) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      operator delete(*(v8 - 7));
      if ((*(v8 - 57) & 0x80000000) == 0)
      {
LABEL_18:
        if ((*(v8 - 97) & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_24;
      }

LABEL_23:
      operator delete(*(v8 - 10));
      if ((*(v8 - 97) & 0x80000000) == 0)
      {
LABEL_19:
        v10 = v8 - 19;
        if (*(v8 - 129) < 0)
        {
          goto LABEL_25;
        }

        goto LABEL_14;
      }

LABEL_24:
      operator delete(*(v8 - 15));
      v10 = v8 - 19;
      if (*(v8 - 129) < 0)
      {
LABEL_25:
        operator delete(*v10);
      }

LABEL_14:
      v8 = v10;
      if (v10 == v7)
      {
        v9 = *a1;
        goto LABEL_27;
      }
    }
  }

  return a1;
}