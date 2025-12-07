void sub_750C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_750C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  *(v14 + 8) = v13;
  sub_11BD8(va);
  sub_11BD8(va1);
  _Unwind_Resume(a1);
}

void sub_750C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_11BD8(va);
  sub_11BD8(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_750CC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, char a6)
{
  v23 = a6;
  v11 = *(a3 + 1104) + 2616 * a4;
  v12 = sub_6CA524(a2, *(v11 + 16));
  v13 = *(a1 + 8);
  v14 = *v12 - v13;
  if (*v12 < v13)
  {
    v14 = 0;
  }

  v22 = v14;
  v15 = *(v11 + 24);
  if (v15)
  {
    v16 = *(a1 + 16) + *sub_6CA524(a2, v15 - 1);
  }

  else
  {
    v16 = *(a1 + 16);
  }

  v17 = sub_4D1DB8(a3);
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v21 = v18;
  v19 = a5[1];
  if (v19 >= a5[2])
  {
    result = sub_75175C(a5, &v23, &v22, &v21);
  }

  else
  {
    sub_68542C(a5[1], a6, &v22, &v21, 1);
    result = v19 + 616;
    a5[1] = v19 + 616;
  }

  a5[1] = result;
  return result;
}

void sub_750DCC(uint64_t a1, void *a2, void *a3, unint64_t a4, uint64_t *a5)
{
  v10 = sub_50EA30(a3 + 138, a4);
  v11 = sub_4D1F50(a3, *(v10 + 16));
  sub_6D3D8C(*(a1 + 176), *(v11 + 32) | (*(v11 + 36) << 32), __p);
  v12 = *(v10 + 160);
  v14 = *(v10 + 2200) > 1uLL || *(v10 + 2192) > *(a1 + 24) || v12 == 4;
  if (v14 || (v12 & 0xFFFFFFFE) == 0x3C)
  {
    sub_750CC8(a1, a2, a3, a4, a5, 1);
  }

  else if (a4)
  {
    v15 = sub_50EA30(a3 + 138, a4 - 1);
    v16 = *(v10 + 160);
    switch(v16)
    {
      case 1u:
      case 0x14u:
      case 0x1Bu:
      case 0x1Du:
      case 0x21u:
      case 0x3Cu:
      case 0x3Eu:
      case 0x41u:
        v17 = *(v15 + 160);
        if ((v17 - 20) <= 0x2D && ((1 << (v17 - 20)) & 0x250000002281) != 0 || v17 == 1)
        {
          goto LABEL_18;
        }

        if (v16 <= 0x3F && ((1 << v16) & 0xA000000450200004) != 0)
        {
          goto LABEL_16;
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
LABEL_16:
        v18 = *(v15 + 160);
        if ((v18 - 21) <= 0x2D && ((1 << (v18 - 21)) & 0x250000002281) != 0 || v18 == 2)
        {
LABEL_18:
          if (*(v10 + 1008) - *(v10 + 128) <= *(a1 + 32))
          {
            sub_750CC8(a1, a2, a3, a4, a5, 1);
            sub_750CC8(a1, a2, a3, a4 - 1, a5, 1);
          }
        }

        break;
      default:
        break;
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_750FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7510F4(uint64_t a1, void *a2)
{
  if (*a1 == 1 && *(*(a1 + 184) + 1460) == 1)
  {
    sub_750300(a2, v19);
    __p = 0;
    v17 = 0;
    v18 = 0;
    v4 = a2[139] - a2[138];
    if (v4)
    {
      v5 = 0;
      v6 = 0x3795876FF3795877 * (v4 >> 3);
      do
      {
        sub_750DCC(a1, v19, a2, v5++, &__p);
      }

      while (v6 != v5);
    }

    sub_7504A4(a1, v19, a2, &__p);
    if (__p != v17)
    {
      sub_685A18(&v20);
    }

    sub_7518D8(a2 + 1269, a2[1270], __p, v17, 0x4FCACE213F2B3885 * ((v17 - __p) >> 3));
    v7 = a2[1269];
    v8 = a2[1270];
    if (v8 - v7 < 1)
    {
      v13 = 0;
      v9 = 0;
    }

    else
    {
      v9 = 0x4FCACE213F2B3885 * ((v8 - v7) >> 3);
      while (1)
      {
        v10 = operator new(616 * v9, &std::nothrow);
        if (v10)
        {
          break;
        }

        v11 = v9 >> 1;
        v12 = v9 > 1;
        v9 >>= 1;
        if (!v12)
        {
          v13 = 0;
          v9 = v11;
          goto LABEL_16;
        }
      }

      v13 = v10;
    }

LABEL_16:
    sub_752274(v7, v8, &v20, 0x4FCACE213F2B3885 * ((v8 - v7) >> 3), v13, v9);
    if (v13)
    {
      operator delete(v13);
    }

    v14 = __p;
    if (__p)
    {
      for (i = v17; i != v14; sub_5ECDEC(&__p, i))
      {
        i = (i - 616);
      }

      v17 = v14;
      operator delete(__p);
    }

    if (v19[0])
    {
      v19[1] = v19[0];
      operator delete(v19[0]);
    }
  }
}

void sub_75131C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (v13)
  {
    operator delete(v13);
    sub_751ED4(&a9);
    v15 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_751ED4(&a9);
    v15 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  a13 = v15;
  operator delete(v15);
  _Unwind_Resume(a1);
}

void sub_75138C(uint64_t a1)
{
  nullsub_1();
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*v2 != v4)
  {
    do
    {
      sub_7510F4(a1, v3);
      v3 += 1582;
    }

    while (v3 != v4);
  }
}

void *sub_7513E4(void **a1, char *a2, void *a3, uint64_t *a4)
{
  v4 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x6A63BD81A98EF6)
  {
    sub_1794();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
  {
    v7 = 0x6A63BD81A98EF6;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x6A63BD81A98EF6)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 8 * ((a1[1] - *a1) >> 3);
  sub_68542C(v13, *a2, a3, a4, 1);
  v8 = (616 * v4 + 616);
  v9 = a1[1];
  v10 = (616 * v4 + *a1 - v9);
  sub_7515B8(a1, *a1, v9, v13 + *a1 - v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v8;
}

void sub_75154C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_751560(va);
  _Unwind_Resume(a1);
}

uint64_t sub_751560(uint64_t a1)
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
    *(a1 + 16) = v3 - 616;
    sub_5ECDEC(v4, v3 - 616);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_7515B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 80;
    do
    {
      v9 = *(v8 - 80);
      v10 = *(v8 - 48);
      v11 = *(v8 - 32);
      *(v4 + 16) = *(v8 - 64);
      *(v4 + 32) = v10;
      *v4 = v9;
      *(v4 + 48) = v11;
      *(v4 + 56) = 0;
      *(v4 + 64) = 0u;
      *(v4 + 56) = *(v8 - 24);
      *(v4 + 72) = *(v8 - 8);
      *(v8 - 8) = 0;
      *(v8 - 24) = 0u;
      sub_5D7BA0(v4 + 80, v8);
      *(v4 + 568) = 0;
      *(v4 + 552) = 0u;
      *(v4 + 552) = *(v8 + 472);
      *(v4 + 560) = *(v8 + 480);
      *(v8 + 472) = 0;
      *(v8 + 480) = 0;
      *(v8 + 488) = 0;
      v12 = *(v8 + 496);
      v13 = *(v8 + 512);
      *(v4 + 608) = *(v8 + 528);
      *(v4 + 576) = v12;
      *(v4 + 592) = v13;
      v4 = v15 + 616;
      v15 += 616;
      v14 = v8 + 536;
      v8 += 616;
    }

    while (v14 != a3);
    for (; v6 != a3; v6 += 616)
    {
      sub_5ECDEC(a1, v6);
    }
  }
}

uint64_t sub_7516F4(uint64_t a1)
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

uint64_t sub_75175C(uint64_t *a1, char *a2, void *a3, uint64_t *a4)
{
  v4 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x6A63BD81A98EF6)
  {
    sub_1794();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
  {
    v7 = 0x6A63BD81A98EF6;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x6A63BD81A98EF6)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 8 * ((a1[1] - *a1) >> 3);
  sub_68542C(v13, *a2, a3, a4, 1);
  v8 = 616 * v4 + 616;
  v9 = a1[1];
  v10 = 616 * v4 + *a1 - v9;
  sub_7515B8(a1, *a1, v9, v13 + *a1 - v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v8;
}

void sub_7518C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_751560(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7518D8(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (0x4FCACE213F2B3885 * ((v9 - v10) >> 3) < a5)
  {
    v11 = *a1;
    v12 = a5 + 0x4FCACE213F2B3885 * ((v10 - *a1) >> 3);
    if (v12 > 0x6A63BD81A98EF6)
    {
      sub_1794();
    }

    v13 = 0x4FCACE213F2B3885 * ((v9 - v11) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3531DEC0D4C77BLL)
    {
      v14 = 0x6A63BD81A98EF6;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0x6A63BD81A98EF6)
      {
        operator new();
      }

      sub_1808();
    }

    v22 = 8 * ((a2 - v11) >> 3);
    v29 = v22;
    v23 = 616 * a5;
    v24 = v22 + 616 * a5;
    do
    {
      sub_571154(v22, v7);
      v22 += 616;
      v7 = (v7 + 616);
      v23 -= 616;
    }

    while (v23);
    sub_7515B8(a1, v5, a1[1], v24);
    v25 = *a1;
    v30 = v24 + a1[1] - v5;
    a1[1] = v5;
    v26 = v29 + v25 - v5;
    sub_7515B8(a1, v25, v5, v26);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v30;
    a1[2] = 0;
    if (v27)
    {
      operator delete(v27);
    }

    return v29;
  }

  v15 = v10 - a2;
  if (0x4FCACE213F2B3885 * ((v10 - a2) >> 3) >= a5)
  {
    v21 = 616 * a5;
    sub_751BB8(a1, a2, a1[1], a2 + 616 * a5);
    v20 = (v7 + v21);
    v19 = v7;
    goto LABEL_19;
  }

  v31 = a1[1];
  v17 = v31;
  if ((a3 + v15) != a4)
  {
    v17 = v10;
    v18 = (a3 + v15);
    do
    {
      sub_571154(v17, v18);
      v18 = (v18 + 616);
      v17 = v31 + 616;
      v31 += 616;
    }

    while (v18 != a4);
  }

  a1[1] = v17;
  if (v15 >= 1)
  {
    sub_751BB8(a1, v5, v10, v5 + 616 * a5);
    v19 = v7;
    v20 = (v7 + v15);
LABEL_19:
    sub_751DAC(v19, v20, v5);
  }

  return v5;
}

void sub_751B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_751560(va);
  _Unwind_Resume(a1);
}

void sub_751B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_7516F4(va);
  *(v3 + 8) = v4;
  _Unwind_Resume(a1);
}

void sub_751BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_751560(va);
  _Unwind_Resume(a1);
}

__n128 sub_751BB8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  if (v7 >= a3)
  {
    *(a1 + 8) = v6;
    if (v6 == a4)
    {
      return result;
    }
  }

  else
  {
    v9 = v6 - a4 + a2 + 80;
    v10 = *(a1 + 8);
    do
    {
      v11 = *(v9 - 80);
      v12 = *(v9 - 48);
      v13 = *(v9 - 32);
      *(v10 + 16) = *(v9 - 64);
      *(v10 + 32) = v12;
      *v10 = v11;
      *(v10 + 48) = v13;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0u;
      *(v10 + 56) = *(v9 - 24);
      *(v10 + 72) = *(v9 - 8);
      *(v9 - 8) = 0;
      *(v9 - 24) = 0u;
      sub_5D7BA0(v10 + 80, v9);
      *(v10 + 568) = 0;
      *(v10 + 552) = 0u;
      *(v10 + 552) = *(v9 + 472);
      *(v10 + 560) = *(v9 + 480);
      *(v9 + 472) = 0;
      *(v9 + 480) = 0;
      *(v9 + 488) = 0;
      result = *(v9 + 496);
      v15 = *(v9 + 512);
      *(v10 + 608) = *(v9 + 528);
      *(v10 + 576) = result;
      *(v10 + 592) = v15;
      v10 += 616;
      v16 = v9 + 536;
      v9 += 616;
    }

    while (v16 < a3);
    *(a1 + 8) = v10;
    if (v6 == a4)
    {
      return result;
    }
  }

  v17 = 0;
  v18 = a4 - v6;
  do
  {
    v22 = v7 + v17;
    v23 = v6 + v17;
    v24 = v6 + v17 - 616;
    v25 = *(v7 + v17 - 616);
    v26 = *(v7 + v17 - 600);
    v27 = *(v7 + v17 - 584);
    *(v24 + 48) = *(v7 + v17 - 568);
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    *v24 = v25;
    v28 = (v6 + v17 - 560);
    v29 = *v28;
    if (*v28)
    {
      *(v23 - 552) = v29;
      operator delete(v29);
      *v28 = 0;
      *(v6 + v17 - 552) = 0;
      *(v6 + v17 - 544) = 0;
    }

    v30 = (v22 - 560);
    *v28 = *(v22 - 560);
    *(v23 - 544) = *(v22 - 544);
    *v30 = 0;
    v30[1] = 0;
    v30[2] = 0;
    sub_5D85BC(v23 - 536, (v22 - 536));
    v33 = *(v23 - 64);
    v32 = (v23 - 64);
    v31 = v33;
    if (v33)
    {
      *(v6 + v17 - 56) = v31;
      operator delete(v31);
      *v32 = 0;
      v32[1] = 0;
      v32[2] = 0;
    }

    v19 = v7 + v17;
    *v32 = *(v7 + v17 - 64);
    v20 = v6 + v17;
    *(v20 - 48) = *(v7 + v17 - 48);
    *(v19 - 64) = 0;
    *(v19 - 56) = 0;
    *(v19 - 48) = 0;
    result = *(v7 + v17 - 40);
    v21 = *(v7 + v17 - 24);
    *(v20 - 8) = *(v7 + v17 - 8);
    *(v20 - 24) = v21;
    *(v20 - 40) = result;
    v17 -= 616;
  }

  while (v18 != v17);
  return result;
}

uint64_t sub_751DAC(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      v7 = a3;
      v8 = *v4;
      v9 = v4[1];
      v10 = v4[2];
      *(a3 + 48) = *(v4 + 6);
      *(a3 + 16) = v9;
      *(a3 + 32) = v10;
      *a3 = v8;
      if (a3 != v4)
      {
        sub_31F64((a3 + 56), *(v4 + 7), *(v4 + 8), (*(v4 + 8) - *(v4 + 7)) >> 3);
      }

      v11 = *(v4 + 10);
      *(v7 + 88) = *(v4 + 22);
      *(v7 + 80) = v11;
      sub_594568(v7 + 96, (v4 + 6));
      sub_594568(v7 + 256, (v4 + 16));
      v12 = v4 + 26;
      sub_5410A0(v7 + 416, (v4 + 26));
      if (v7 != v4)
      {
        sub_31F64((v7 + 528), *(v4 + 66), *(v4 + 67), (*(v4 + 67) - *(v4 + 66)) >> 3);
        sub_5D8AE8((v7 + 552), *(v4 + 69), *(v4 + 70), 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 70) - *(v4 + 69)) >> 3));
      }

      v5 = v4[36];
      v6 = v4[37];
      *(v7 + 608) = *(v4 + 76);
      *(v7 + 576) = v5;
      *(v7 + 592) = v6;
      v4 = (v4 + 616);
      a3 = v7 + 616;
    }

    while ((v12 + 200) != a2);
    return v7 + 616;
  }

  return a3;
}

uint64_t sub_751ED4(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_5ECDEC(a1, i))
    {
      i -= 616;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

uint64_t **sub_751F38(void *a1, unsigned __int8 *a2, _BYTE *a3)
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
        if (*(v8 + 16) == v3)
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

  if (*(v8 + 16) != v3)
  {
    goto LABEL_12;
  }

  return v8;
}

void sub_752274(uint64_t result, __int128 *a2, uint64_t a3, unint64_t a4, __int128 *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if (*(a2 - 76) < *(result + 8))
      {
        v6 = (a2 - 616);

        sub_753534(result, v6);
      }
    }

    else if (a4 <= 0)
    {

      sub_752464(result, a2);
    }

    else
    {
      v8 = a4 >> 1;
      v9 = result + 616 * (a4 >> 1);
      if (a4 <= a6)
      {
        v21[0] = a5;
        v21[1] = &v22;
        v22 = 0;
        sub_7528DC(result, (result + 616 * (a4 >> 1)), a3, a4 >> 1, a5);
        v22 = v8;
        v19 = a4 - v8;
        v20 = (a5 + 616 * v8);
        sub_7528DC(v9, a2, a3, v19, v20);
        v22 = a4;
        sub_752D10(a5, v20, v20, (a5 + 616 * a4), result);
        sub_753044(v21);
      }

      else
      {
        sub_752274(result, result + 616 * (a4 >> 1), a3, a4 >> 1, a5, a6);
        v15 = a4 - v8;
        sub_752274(v9, a2, a3, v15, a5, a6);

        sub_75316C(result, v9, a2, a3, v8, v15, a5, a6);
      }
    }
  }
}

void sub_752450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_753044(va);
  _Unwind_Resume(a1);
}

void sub_752464(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a1 + 616;
  if (a1 + 616 == a2)
  {
    return;
  }

  v4 = 0;
  v5 = a1;
  v38 = a2;
  while (2)
  {
    v6 = v3;
    if (*(v5 + 624) >= *(v5 + 8))
    {
      goto LABEL_4;
    }

    v42 = *(v3 + 48);
    v40 = *(v3 + 16);
    v41 = *(v3 + 32);
    v39 = *v3;
    *v43 = *(v5 + 672);
    *&v43[16] = *(v5 + 688);
    *(v5 + 672) = 0u;
    *(v5 + 688) = 0;
    sub_5D7BA0(v44, (v5 + 696));
    *v55 = *(v5 + 1168);
    *&v55[16] = *(v5 + 1184);
    *(v5 + 1184) = 0;
    *(v5 + 1168) = 0u;
    v7 = *(v5 + 1208);
    v56 = *(v5 + 1192);
    v57 = v7;
    v58 = *(v5 + 1224);
    v8 = v4;
    while (1)
    {
      v9 = a1 + v8;
      v10 = (a1 + v8 + 616);
      v11 = *(a1 + v8 + 16);
      *v10 = *(a1 + v8);
      v10[1] = v11;
      v10[2] = *(a1 + v8 + 32);
      *(a1 + v8 + 664) = *(a1 + v8 + 48);
      v12 = *(a1 + v8 + 672);
      if (v12)
      {
        *(v9 + 680) = v12;
        operator delete(v12);
        *(v9 + 680) = 0u;
      }

      *(v9 + 672) = *(v9 + 56);
      v13 = *(v9 + 80);
      *(v9 + 688) = *(v9 + 72);
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 72) = 0;
      *(v9 + 696) = v13;
      *(v9 + 704) = *(v9 + 88);
      sub_53D784(v9 + 712, v9 + 96);
      sub_53D784(v9 + 872, v9 + 256);
      v14 = *(v9 + 1064);
      v15 = *(v9 + 448);
      if (v14 == -1)
      {
        if (v15 == -1)
        {
          goto LABEL_14;
        }
      }

      else if (v15 == -1)
      {
        (off_266C570[v14])(v59, v9 + 1032);
        *(v9 + 1064) = -1;
        goto LABEL_14;
      }

      v59[0] = v9 + 1032;
      (off_266C598[v15])(v59);
LABEL_14:
      v16 = a1 + v8;
      *(a1 + v8 + 1072) = *(a1 + v8 + 456);
      v17 = (a1 + v8 + 1080);
      if (*(a1 + v8 + 1103) < 0)
      {
        operator delete(*v17);
      }

      v18 = *(v16 + 464);
      *(a1 + v8 + 1096) = *(v16 + 480);
      *v17 = v18;
      *(v16 + 487) = 0;
      *(v16 + 464) = 0;
      *(v16 + 1104) = *(v16 + 488);
      v19 = (v16 + 1112);
      if (*(v16 + 1135) < 0)
      {
        operator delete(*v19);
      }

      v20 = a1 + v8;
      v21 = *(a1 + v8 + 496);
      *(v16 + 1128) = *(a1 + v8 + 512);
      *v19 = v21;
      *(v20 + 519) = 0;
      *(v20 + 496) = 0;
      *(v20 + 1136) = *(a1 + v8 + 520);
      v22 = *(a1 + v8 + 1144);
      if (v22)
      {
        *(v20 + 1152) = v22;
        operator delete(v22);
        *(v20 + 1152) = 0u;
      }

      *(v20 + 1144) = *(v20 + 528);
      *(v20 + 1160) = *(v20 + 544);
      *(v20 + 528) = 0;
      *(v20 + 536) = 0;
      *(v20 + 544) = 0;
      v23 = *(v20 + 1168);
      if (v23)
      {
        v24 = (a1 + v8 + 1176);
        *v24 = v23;
        operator delete(v23);
        *v24 = 0u;
      }

      v25 = (a1 + v8);
      *(v20 + 1168) = *(a1 + v8 + 552);
      v26 = *(a1 + v8 + 576);
      *(a1 + v8 + 1176) = *(a1 + v8 + 560);
      v25[69] = 0;
      v25[71] = 0;
      v25[70] = 0;
      v27 = (a1 + v8 + 1192);
      v28 = *(a1 + v8 + 592);
      *v27 = v26;
      v27[1] = v28;
      v25[153] = *(a1 + v8 + 608);
      if (!v8)
      {
        break;
      }

      v8 -= 616;
      if (*(&v39 + 1) >= *(v25 - 76))
      {
        v29 = a1 + v8 + 616;
        goto LABEL_26;
      }
    }

    v29 = a1;
LABEL_26:
    *(v29 + 48) = v42;
    *(v29 + 16) = v40;
    *(v29 + 32) = v41;
    *v29 = v39;
    v32 = v25[7];
    v31 = v25 + 7;
    v30 = v32;
    if (v32)
    {
      *(v29 + 64) = v30;
      operator delete(v30);
      *v31 = 0;
      v31[1] = 0;
      v31[2] = 0;
    }

    v33 = v31 + 62;
    *v31 = *v43;
    *(v29 + 64) = *&v43[8];
    sub_5D85BC((v31 + 3), v44);
    v34 = v31[62];
    if (v34)
    {
      *(v29 + 560) = v34;
      operator delete(v34);
      *v33 = 0;
      v31[63] = 0;
      v31[64] = 0;
    }

    *v33 = *v55;
    *(v29 + 560) = *&v55[8];
    memset(v55, 0, sizeof(v55));
    v35 = v56;
    v36 = v57;
    v31[69] = v58;
    *(v31 + 65) = v35;
    *(v31 + 67) = v36;
    if (__p)
    {
      v54 = __p;
      operator delete(__p);
    }

    if (v52 < 0)
    {
      operator delete(v51);
      if (v50 < 0)
      {
        goto LABEL_37;
      }

LABEL_34:
      v37 = v48;
      if (v48 != -1)
      {
LABEL_38:
        (off_266C570[v37])(v59, &v47);
      }
    }

    else
    {
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

LABEL_37:
      operator delete(v49);
      v37 = v48;
      if (v48 != -1)
      {
        goto LABEL_38;
      }
    }

    v48 = -1;
    sub_53A868(&v46);
    sub_53A868(&v45);
    a2 = v38;
LABEL_4:
    v3 = v6 + 616;
    v4 += 616;
    v5 = v6;
    if (v6 + 616 != a2)
    {
      continue;
    }

    break;
  }
}

void sub_7528DC(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v49[0] = a5;
      v49[1] = &v50;
      v50 = 0;
      v12 = a2 - 616;
      v13 = a5 + 552;
      v14 = a5 + 576;
      if (*(a2 - 76) >= *(a1 + 8))
      {
        v30 = *a1;
        v31 = *(a1 + 32);
        v32 = *(a1 + 48);
        *(a5 + 16) = *(a1 + 16);
        *(a5 + 32) = v31;
        *a5 = v30;
        *(a5 + 48) = v32;
        *(a5 + 56) = 0;
        *(a5 + 64) = 0u;
        *(a5 + 56) = *(a1 + 56);
        *(a5 + 72) = *(a1 + 72);
        *(a1 + 72) = 0;
        *(a1 + 56) = 0u;
        sub_5D7BA0(a5 + 80, (a1 + 80));
        *(v13 + 16) = 0;
        *v13 = 0u;
        *(a5 + 552) = *(a1 + 552);
        *(a5 + 560) = *(a1 + 560);
        *(a1 + 568) = 0;
        *(a1 + 552) = 0u;
        v36 = *(a1 + 576);
        v37 = *(a1 + 592);
        *(v14 + 32) = *(a1 + 608);
        *v14 = v36;
        *(v14 + 16) = v37;
        ++v50;
        v39 = *(v12 + 1);
        v38 = *(v12 + 2);
        v40 = *v12;
        *(a5 + 664) = *(v12 + 6);
        *(a5 + 632) = v39;
        *(a5 + 648) = v38;
        *(a5 + 616) = v40;
        v41 = a2 - 35;
        *(a5 + 672) = 0;
        *(a5 + 680) = 0u;
        *(a5 + 672) = *(a2 - 35);
        *(a5 + 688) = *(a2 - 68);
        *v41 = 0u;
        *(v41 + 2) = 0;
        sub_5D7BA0(a5 + 696, a2 - 67);
        *(a5 + 1184) = 0;
        *(a5 + 1168) = 0u;
        *(a5 + 1168) = *(a2 - 4);
        *(a5 + 1184) = *(a2 - 6);
        *(a2 - 8) = 0;
        *(a2 - 7) = 0;
        *(a2 - 6) = 0;
        v27 = (a5 + 1192);
        v28 = *(a2 - 40);
        v29 = *(a2 - 24);
        *(a5 + 1224) = *(a2 - 1);
      }

      else
      {
        v15 = *v12;
        v16 = *(a2 - 584);
        v17 = *(a2 - 71);
        *(a5 + 16) = *(a2 - 600);
        *(a5 + 32) = v16;
        *a5 = v15;
        v18 = a2 - 35;
        *(a5 + 48) = v17;
        *(a5 + 56) = 0;
        *(a5 + 64) = 0u;
        *(a5 + 56) = *(a2 - 35);
        *(a5 + 72) = *(a2 - 68);
        *(v18 + 2) = 0;
        *v18 = 0u;
        sub_5D7BA0(a5 + 80, a2 - 67);
        *(v13 + 16) = 0;
        *v13 = 0u;
        *v13 = *(a2 - 4);
        *(a5 + 568) = *(a2 - 6);
        *(a2 - 6) = 0;
        *(a2 - 4) = 0u;
        v22 = *(a2 - 40);
        v23 = *(a2 - 24);
        *(v14 + 32) = *(a2 - 1);
        *v14 = v22;
        *(v14 + 16) = v23;
        ++v50;
        v25 = *(a1 + 16);
        v24 = *(a1 + 32);
        v26 = *a1;
        *(a5 + 664) = *(a1 + 48);
        *(a5 + 632) = v25;
        *(a5 + 648) = v24;
        *(a5 + 616) = v26;
        *(a5 + 672) = 0;
        *(a5 + 680) = 0u;
        *(a5 + 672) = *(a1 + 56);
        *(a5 + 688) = *(a1 + 72);
        *(a1 + 56) = 0u;
        *(a1 + 72) = 0;
        sub_5D7BA0(a5 + 696, (a1 + 80));
        *(a5 + 1184) = 0;
        *(a5 + 1168) = 0u;
        *(a5 + 1168) = *(a1 + 552);
        *(a5 + 1184) = *(a1 + 568);
        *(a1 + 568) = 0;
        *(a1 + 552) = 0u;
        v27 = (a5 + 1192);
        v28 = *(a1 + 576);
        v29 = *(a1 + 592);
        *(a5 + 1224) = *(a1 + 608);
      }

      *v27 = v28;
      v27[1] = v29;
      v49[0] = 0;
      sub_753044(v49);
    }

    else if (a4 == 1)
    {
      v5 = *a1;
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      *(a5 + 16) = *(a1 + 16);
      *(a5 + 32) = v6;
      *a5 = v5;
      *(a5 + 48) = v7;
      *(a5 + 56) = 0;
      *(a5 + 64) = 0u;
      *(a5 + 56) = *(a1 + 56);
      *(a5 + 72) = *(a1 + 72);
      *(a1 + 72) = 0;
      *(a1 + 56) = 0u;
      sub_5D7BA0(a5 + 80, (a1 + 80));
      *(a5 + 568) = 0;
      *(a5 + 552) = 0u;
      *(a5 + 552) = *(a1 + 552);
      *(a5 + 560) = *(a1 + 560);
      *(a1 + 568) = 0;
      *(a1 + 552) = 0u;
      v10 = *(a1 + 576);
      v11 = *(a1 + 592);
      *(a5 + 608) = *(a1 + 608);
      *(a5 + 576) = v10;
      *(a5 + 592) = v11;
    }

    else if (a4 > 8)
    {
      v42 = a4 >> 1;
      v43 = 616 * (a4 >> 1);
      sub_752274(a1, v43 + a1, a3, v42, a5, v42);
      sub_752274(v43 + a1, a2, a3, a4 - v42, a5 + v43, a4 - v42);

      sub_753CDC(a1, (v43 + a1), (v43 + a1), a2, a5);
    }

    else
    {

      sub_7537C0(a1, a2, a5);
    }
  }
}

__n128 sub_752D10(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a1 == a2)
  {
LABEL_17:
    while (a3 != a4)
    {
      v24 = *a3;
      v25 = a3[1];
      v26 = a3[2];
      *(a5 + 48) = *(a3 + 6);
      *(a5 + 16) = v25;
      *(a5 + 32) = v26;
      *a5 = v24;
      v27 = *(a5 + 56);
      if (v27)
      {
        *(a5 + 64) = v27;
        operator delete(v27);
        *(a5 + 56) = 0;
        *(a5 + 64) = 0;
        *(a5 + 72) = 0;
      }

      *(a5 + 56) = *(a3 + 56);
      *(a5 + 72) = *(a3 + 9);
      *(a3 + 7) = 0;
      *(a3 + 8) = 0;
      *(a3 + 9) = 0;
      sub_5D85BC(a5 + 80, a3 + 10);
      v28 = *(a5 + 552);
      if (v28)
      {
        *(a5 + 560) = v28;
        operator delete(v28);
        *(a5 + 552) = 0;
        *(a5 + 560) = 0;
        *(a5 + 568) = 0;
      }

      *(a5 + 552) = *(a3 + 69);
      *(a5 + 560) = a3[35];
      *(a3 + 69) = 0;
      *(a3 + 70) = 0;
      *(a3 + 71) = 0;
      result = a3[36];
      v23 = a3[37];
      *(a5 + 608) = *(a3 + 76);
      *(a5 + 576) = result;
      *(a5 + 592) = v23;
      a5 += 616;
      a3 = (a3 + 616);
    }
  }

  else
  {
    v9 = a1;
    while (a3 != a4)
    {
      if (*(a3 + 1) >= *(v9 + 1))
      {
        v18 = *v9;
        v19 = v9[1];
        v20 = v9[2];
        *(a5 + 48) = *(v9 + 6);
        *(a5 + 16) = v19;
        *(a5 + 32) = v20;
        *a5 = v18;
        v21 = *(a5 + 56);
        if (v21)
        {
          *(a5 + 64) = v21;
          operator delete(v21);
          *(a5 + 56) = 0;
          *(a5 + 64) = 0;
          *(a5 + 72) = 0;
        }

        *(a5 + 56) = *(v9 + 56);
        *(a5 + 72) = *(v9 + 9);
        *(v9 + 7) = 0;
        *(v9 + 8) = 0;
        *(v9 + 9) = 0;
        sub_5D85BC(a5 + 80, v9 + 10);
        v22 = *(a5 + 552);
        if (v22)
        {
          *(a5 + 560) = v22;
          operator delete(v22);
          *(a5 + 552) = 0;
          *(a5 + 560) = 0;
          *(a5 + 568) = 0;
        }

        *(a5 + 552) = *(v9 + 69);
        *(a5 + 560) = v9[35];
        *(v9 + 71) = 0;
        *(v9 + 552) = 0u;
        result = v9[36];
        v11 = v9[37];
        *(a5 + 608) = *(v9 + 76);
        *(a5 + 576) = result;
        *(a5 + 592) = v11;
        v9 = (v9 + 616);
        a5 += 616;
        if (v9 == a2)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v12 = *a3;
        v13 = a3[1];
        v14 = a3[2];
        *(a5 + 48) = *(a3 + 6);
        *(a5 + 16) = v13;
        *(a5 + 32) = v14;
        *a5 = v12;
        v15 = *(a5 + 56);
        if (v15)
        {
          *(a5 + 64) = v15;
          operator delete(v15);
          *(a5 + 56) = 0;
          *(a5 + 64) = 0;
          *(a5 + 72) = 0;
        }

        *(a5 + 56) = *(a3 + 56);
        *(a5 + 72) = *(a3 + 9);
        *(a3 + 7) = 0;
        *(a3 + 8) = 0;
        *(a3 + 9) = 0;
        sub_5D85BC(a5 + 80, a3 + 10);
        v16 = *(a5 + 552);
        if (v16)
        {
          *(a5 + 560) = v16;
          operator delete(v16);
          *(a5 + 552) = 0;
          *(a5 + 560) = 0;
          *(a5 + 568) = 0;
        }

        *(a5 + 552) = *(a3 + 69);
        *(a5 + 560) = a3[35];
        *(a3 + 71) = 0;
        *(a3 + 552) = 0u;
        result = a3[36];
        v17 = a3[37];
        *(a5 + 608) = *(a3 + 76);
        *(a5 + 576) = result;
        *(a5 + 592) = v17;
        a3 = (a3 + 616);
        a5 += 616;
        if (v9 == a2)
        {
          goto LABEL_17;
        }
      }
    }

    while (v9 != a2)
    {
      v30 = *v9;
      v31 = v9[1];
      v32 = v9[2];
      *(a5 + 48) = *(v9 + 6);
      *(a5 + 16) = v31;
      *(a5 + 32) = v32;
      *a5 = v30;
      v33 = *(a5 + 56);
      if (v33)
      {
        *(a5 + 64) = v33;
        operator delete(v33);
        *(a5 + 56) = 0;
        *(a5 + 64) = 0;
        *(a5 + 72) = 0;
      }

      *(a5 + 56) = *(v9 + 56);
      *(a5 + 72) = *(v9 + 9);
      *(v9 + 7) = 0;
      *(v9 + 8) = 0;
      *(v9 + 9) = 0;
      sub_5D85BC(a5 + 80, v9 + 10);
      v34 = *(a5 + 552);
      if (v34)
      {
        *(a5 + 560) = v34;
        operator delete(v34);
        *(a5 + 552) = 0;
        *(a5 + 560) = 0;
        *(a5 + 568) = 0;
      }

      *(a5 + 552) = *(v9 + 69);
      *(a5 + 560) = v9[35];
      *(v9 + 69) = 0;
      *(v9 + 70) = 0;
      *(v9 + 71) = 0;
      result = v9[36];
      v29 = v9[37];
      *(a5 + 608) = *(v9 + 76);
      *(a5 + 576) = result;
      *(a5 + 592) = v29;
      a5 += 616;
      v9 = (v9 + 616);
    }
  }

  return result;
}

uint64_t *sub_753044(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = v2 + 416;
      do
      {
        v6 = *(v5 + 136);
        if (v6)
        {
          *(v5 + 144) = v6;
          operator delete(v6);
        }

        v7 = *(v5 + 112);
        if (v7)
        {
          *(v5 + 120) = v7;
          operator delete(v7);
        }

        if (*(v5 + 103) < 0)
        {
          operator delete(*(v5 + 80));
          if ((*(v5 + 71) & 0x80000000) == 0)
          {
LABEL_11:
            v8 = *(v5 + 32);
            if (v8 == -1)
            {
              goto LABEL_16;
            }

LABEL_15:
            (off_266C570[v8])(&v11, v5);
            goto LABEL_16;
          }
        }

        else if ((*(v5 + 71) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

        operator delete(*(v5 + 48));
        v8 = *(v5 + 32);
        if (v8 != -1)
        {
          goto LABEL_15;
        }

LABEL_16:
        *(v5 + 32) = -1;
        sub_53A868(v5 - 160);
        sub_53A868(v5 - 320);
        v9 = *(v5 - 360);
        if (v9)
        {
          *(v5 - 352) = v9;
          operator delete(v9);
        }

        ++v4;
        v5 += 616;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

void sub_75316C(__int128 *result, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{
  if (!a6)
  {
    return;
  }

  while (a6 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return;
    }

    v10 = 0;
    v11 = -a5;
    while (1)
    {
      v12 = (result + v10);
      if (*(a2 + 8) < *(result + v10 + 8))
      {
        break;
      }

      v10 += 616;
      if (__CFADD__(v11++, 1))
      {
        return;
      }
    }

    if (-v11 >= a6)
    {
      if (v11 == -1)
      {
        v47 = (result + v10);

        sub_753534(v47, a2);
        return;
      }

      v22 = -v11 / 2;
      v15 = a2;
      if (a2 != a3)
      {
        v24 = 0x4FCACE213F2B3885 * ((a3 - a2) >> 3);
        v15 = a2;
        do
        {
          v25 = v24 >> 1;
          v26 = v15 + 616 * (v24 >> 1);
          v27 = *(v26 + 8);
          v28 = v26 + 616;
          v24 += ~(v24 >> 1);
          if (v27 < *(result + 616 * v22 + v10 + 8))
          {
            v15 = v28;
          }

          else
          {
            v24 = v25;
          }
        }

        while (v24);
      }

      v16 = (result + 616 * v22 + v10);
      v14 = 0x4FCACE213F2B3885 * ((v15 - a2) >> 3);
      v23 = v15;
      if (a2 != v16)
      {
LABEL_27:
        v23 = v16;
        if (a2 != v15)
        {
          v48 = v14;
          v49 = a8;
          v50 = a4;
          v53 = a6;
          v54 = result;
          v52 = a3;
          sub_753534(v16, a2);
          v23 = (v16 + 616);
          v29 = (a2 + 616);
          for (i = a7; v29 != v15; v29 = (v29 + 616))
          {
            if (v23 == a2)
            {
              a2 = v29;
            }

            sub_753534(v23, v29);
            v23 = (v23 + 616);
          }

          if (v23 != a2)
          {
            v30 = v23;
            v31 = a2;
            while (1)
            {
              sub_753534(v30, v31);
              v31 = (v31 + 616);
              v32 = (v30 + 616) == a2;
              if (v31 == v15)
              {
                if ((v30 + 616) == a2)
                {
                  break;
                }

                v31 = (a2 + 616);
                v30 += 77;
                while (1)
                {
                  sub_753534((v30 - 616), a2);
                  v32 = v30 == a2;
                  if (v31 != v15)
                  {
                    break;
                  }

                  v33 = v30 == a2;
                  v30 = (v30 + 616);
                  if (v33)
                  {
                    goto LABEL_44;
                  }
                }
              }

              else
              {
                v30 = (v30 + 616);
              }

              if (v32)
              {
                a2 = v31;
              }
            }
          }

LABEL_44:
          a3 = v52;
          a6 = v53;
          result = v54;
          a4 = v50;
          a7 = i;
          v14 = v48;
          a8 = v49;
        }
      }
    }

    else
    {
      v14 = a6 / 2;
      v15 = a2 + 616 * (a6 / 2);
      v16 = a2;
      if (a2 - result != v10)
      {
        v17 = 0x4FCACE213F2B3885 * ((a2 - result - v10) >> 3);
        v16 = (result + v10);
        do
        {
          v18 = v17 >> 1;
          v19 = v16 + 616 * (v17 >> 1);
          v20 = *(v19 + 1);
          v21 = (v19 + 616);
          v17 += ~(v17 >> 1);
          if (*(v15 + 8) < v20)
          {
            v17 = v18;
          }

          else
          {
            v16 = v21;
          }
        }

        while (v17);
      }

      v22 = 0x4FCACE213F2B3885 * ((v16 - result - v10) >> 3);
      v23 = (a2 + 616 * (a6 / 2));
      if (a2 != v16)
      {
        goto LABEL_27;
      }
    }

    v34 = -v11 - v22;
    v35 = a6 - v14;
    if (v22 + v14 >= a6 - (v22 + v14) - v11)
    {
      v44 = v15;
      v38 = a4;
      v45 = v22;
      v41 = a7;
      v46 = a7;
      v43 = a8;
      v35 = v14;
      sub_75316C(v23, v44, a3, a4, v34, a6 - v14, v46, a8);
      a2 = v16;
      a5 = v45;
      a3 = v23;
    }

    else
    {
      v36 = result + v10;
      v37 = a3;
      v38 = a4;
      v39 = -v11 - v22;
      v40 = v22;
      v41 = a7;
      v42 = a7;
      v43 = a8;
      sub_75316C(v36, v16, v23, a4, v40, v14, v42, a8);
      a5 = v39;
      a3 = v37;
      v12 = v23;
      a2 = v15;
    }

    a6 = v35;
    result = v12;
    a4 = v38;
    a8 = v43;
    a7 = v41;
    if (!v35)
    {
      return;
    }
  }

  sub_753FC8(result, a2, a3, a4, a5, a6, a7);
}

void sub_753534(__int128 *a1, __int128 *a2)
{
  v18 = *a1;
  v19 = a1[1];
  v20 = a1[2];
  v21 = *(a1 + 6);
  v4 = a1 + 56;
  *v22 = *(a1 + 56);
  v23 = *(a1 + 9);
  *(a1 + 56) = 0u;
  *(a1 + 9) = 0;
  sub_5D7BA0(v24, a1 + 10);
  v5 = a1 + 69;
  v35 = *(a1 + 552);
  v36 = *(a1 + 71);
  *(a1 + 71) = 0;
  *(a1 + 552) = 0u;
  v6 = a1[37];
  v37 = a1[36];
  v38 = v6;
  v39 = *(a1 + 76);
  v7 = *(a2 + 6);
  v8 = a2[2];
  v9 = *a2;
  a1[1] = a2[1];
  a1[2] = v8;
  *a1 = v9;
  *(a1 + 6) = v7;
  v10 = *v4;
  if (*v4)
  {
    *(a1 + 8) = v10;
    operator delete(v10);
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 9) = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  sub_5D85BC((a1 + 5), a2 + 10);
  v11 = *(a1 + 69);
  if (v11)
  {
    *(a1 + 70) = v11;
    operator delete(v11);
    *v5 = 0;
    *(a1 + 70) = 0;
    *(a1 + 71) = 0;
  }

  *v5 = *(a2 + 552);
  *(a1 + 71) = *(a2 + 71);
  *(a2 + 71) = 0;
  *(a2 + 552) = 0u;
  v12 = a2[36];
  v13 = a2[37];
  *(a1 + 76) = *(a2 + 76);
  a1[36] = v12;
  a1[37] = v13;
  *a2 = v18;
  a2[1] = v19;
  a2[2] = v20;
  *(a2 + 6) = v21;
  v14 = *(a2 + 7);
  if (v14)
  {
    *(a2 + 8) = v14;
    operator delete(v14);
  }

  *(a2 + 56) = *v22;
  *(a2 + 9) = v23;
  sub_5D85BC((a2 + 5), v24);
  v15 = *(a2 + 69);
  if (v15)
  {
    *(a2 + 70) = v15;
    operator delete(v15);
  }

  *(a2 + 552) = v35;
  *(a2 + 71) = v36;
  v36 = 0;
  v35 = 0uLL;
  v16 = v38;
  a2[36] = v37;
  a2[37] = v16;
  *(a2 + 76) = v39;
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  if (v32 < 0)
  {
    operator delete(v31);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_13:
      v17 = v28;
      if (v28 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v30 & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(v29);
  v17 = v28;
  if (v28 != -1)
  {
LABEL_17:
    (off_266C570[v17])(&v40, &v27);
  }

LABEL_18:
  v28 = -1;
  sub_53A868(&v26);
  sub_53A868(&v25);
}

uint64_t *sub_7537C0(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v48[0] = a3;
    v48[1] = &v49;
    v49 = 0;
    v6 = *result;
    v7 = *(result + 2);
    v8 = result[6];
    *(a3 + 16) = *(result + 1);
    *(a3 + 32) = v7;
    *a3 = v6;
    *(a3 + 48) = v8;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0u;
    *(a3 + 56) = *(result + 7);
    *(a3 + 72) = result[9];
    result[9] = 0;
    *(result + 7) = 0u;
    sub_5D7BA0(a3 + 80, result + 10);
    *(a3 + 568) = 0;
    *(a3 + 552) = 0u;
    *(a3 + 552) = v5[69];
    *(a3 + 560) = *(v5 + 35);
    v5[71] = 0;
    *(v5 + 69) = 0u;
    v9 = *(v5 + 36);
    v10 = *(v5 + 37);
    *(a3 + 608) = v5[76];
    *(a3 + 576) = v9;
    *(a3 + 592) = v10;
    ++v49;
    v11 = v5 + 77;
    if (v5 + 77 != a2)
    {
      v12 = 0;
      v13 = a3;
      while (1)
      {
        while (1)
        {
          v19 = v11;
          v20 = (v13 + 616);
          if (v5[78] < *(v13 + 8))
          {
            break;
          }

          v14 = *v11;
          v15 = *(v11 + 1);
          v16 = *(v11 + 2);
          *(v13 + 664) = v11[6];
          *(v13 + 632) = v15;
          *(v13 + 648) = v16;
          *v20 = v14;
          *(v13 + 672) = 0;
          *(v13 + 680) = 0u;
          *(v13 + 672) = *(v5 + 42);
          *(v13 + 688) = v5[86];
          v5[86] = 0;
          *(v5 + 42) = 0u;
          sub_5D7BA0(v13 + 696, v5 + 87);
          *(v13 + 1184) = 0;
          *(v13 + 1168) = 0u;
          *(v13 + 1168) = *(v5 + 73);
          *(v13 + 1184) = v5[148];
          v5[148] = 0;
          *(v5 + 73) = 0u;
          v17 = *(v5 + 149);
          v18 = *(v5 + 151);
          *(v13 + 1224) = v5[153];
          *(v13 + 1192) = v17;
          *(v13 + 1208) = v18;
          ++v49;
          v11 = v19 + 77;
          v12 += 616;
          v13 += 616;
          v5 = v19;
          if (v19 + 77 == a2)
          {
            goto LABEL_31;
          }
        }

        v21 = *(v13 + 16);
        *v20 = *v13;
        *(v13 + 632) = v21;
        *(v13 + 648) = *(v13 + 32);
        *(v13 + 664) = *(v13 + 48);
        *(v13 + 672) = *(v13 + 56);
        *(v13 + 688) = *(v13 + 72);
        *(v13 + 56) = 0u;
        *(v13 + 72) = 0;
        sub_5D7BA0(v13 + 696, (v13 + 80));
        *(v13 + 1168) = *(v13 + 552);
        *(v13 + 1184) = *(v13 + 568);
        *(v13 + 568) = 0;
        *(v13 + 552) = 0u;
        v22 = *(v13 + 592);
        *(v13 + 1192) = *(v13 + 576);
        *(v13 + 1208) = v22;
        *(v13 + 1224) = *(v13 + 608);
        v23 = a3;
        ++v49;
        if (v13 != a3)
        {
          break;
        }

LABEL_26:
        v40 = *v19;
        v41 = *(v19 + 1);
        v42 = *(v19 + 2);
        *(v23 + 48) = v19[6];
        *(v23 + 16) = v41;
        *(v23 + 32) = v42;
        *v23 = v40;
        v43 = *(v23 + 56);
        if (v43)
        {
          *(v23 + 64) = v43;
          operator delete(v43);
          *(v23 + 56) = 0;
          *(v23 + 64) = 0;
          *(v23 + 72) = 0;
        }

        *(v23 + 56) = *(v5 + 42);
        *(v23 + 72) = v5[86];
        v5[84] = 0;
        v5[85] = 0;
        v5[86] = 0;
        sub_5D85BC(v23 + 80, v5 + 87);
        v44 = (v23 + 552);
        v45 = *(v23 + 552);
        if (v45)
        {
          *(v23 + 560) = v45;
          operator delete(v45);
          *v44 = 0;
          *(v23 + 560) = 0;
          *(v23 + 568) = 0;
        }

        *v44 = *(v5 + 73);
        *(v23 + 568) = v5[148];
        v5[148] = 0;
        *(v5 + 73) = 0u;
        v46 = *(v5 + 149);
        v47 = *(v5 + 151);
        *(v23 + 608) = v5[153];
        *(v23 + 576) = v46;
        *(v23 + 592) = v47;
        v11 = v19 + 77;
        v12 += 616;
        v13 = v20;
        v5 = v19;
        if (v19 + 77 == a2)
        {
          goto LABEL_31;
        }
      }

      v24 = v12;
      while (1)
      {
        v23 = a3 + v24;
        if (v5[78] >= *(a3 + v24 - 608))
        {
          goto LABEL_26;
        }

        v27 = *(v23 - 600);
        *v23 = *(v23 - 616);
        *(v23 + 16) = v27;
        *(v23 + 32) = *(v23 - 584);
        *(v23 + 48) = *(v23 - 568);
        v28 = *(v23 + 56);
        if (v28)
        {
          *(a3 + v24 + 64) = v28;
          operator delete(v28);
        }

        v29 = (v23 - 560);
        *(v23 + 56) = *(v23 - 560);
        v30 = a3 + v24;
        v31 = *(a3 + v24 - 544);
        *v29 = 0;
        v29[1] = 0;
        v29[2] = 0;
        v32 = *(a3 + v24 - 536);
        *(v30 + 72) = v31;
        *(v30 + 80) = v32;
        *(v30 + 88) = *(a3 + v24 - 528);
        sub_53D784(a3 + v24 + 96, a3 + v24 - 520);
        sub_53D784(v30 + 256, v30 - 360);
        v33 = *(a3 + v24 + 448);
        v34 = *(a3 + v24 - 168);
        if (v33 == -1)
        {
          if (v34 != -1)
          {
LABEL_16:
            v50 = v30 + 416;
            (off_266C598[v34])(&v50);
          }
        }

        else
        {
          if (v34 != -1)
          {
            goto LABEL_16;
          }

          (off_266C570[v33])(&v50, a3 + v24 + 416);
          *(v30 + 448) = -1;
        }

        v35 = a3 + v24;
        *(a3 + v24 + 456) = *(a3 + v24 - 160);
        if (*(a3 + v24 + 487) < 0)
        {
          operator delete(*(v35 + 464));
        }

        *(v35 + 464) = *(v35 - 152);
        *(v35 + 480) = *(v35 - 136);
        *(v35 - 129) = 0;
        *(v35 - 152) = 0;
        *(v35 + 488) = *(v35 - 128);
        v36 = v35 + 496;
        if (*(v35 + 519) < 0)
        {
          operator delete(*v36);
        }

        v37 = a3 + v24;
        *v36 = *(a3 + v24 - 120);
        *(v36 + 16) = *(a3 + v24 - 104);
        *(v37 - 97) = 0;
        *(v37 - 120) = 0;
        *(v37 + 520) = *(a3 + v24 - 96);
        v38 = *(a3 + v24 + 528);
        if (v38)
        {
          *(v37 + 536) = v38;
          operator delete(v38);
        }

        *(v37 + 528) = *(v37 - 88);
        *(v37 + 544) = *(v37 - 72);
        *(v37 - 80) = 0;
        *(v37 - 72) = 0;
        *(v37 - 88) = 0;
        v39 = *(v37 + 552);
        if (v39)
        {
          *(a3 + v24 + 560) = v39;
          operator delete(v39);
        }

        v25 = a3 + v24;
        *(v37 + 552) = *(a3 + v24 - 64);
        *(v25 + 568) = *(a3 + v24 - 48);
        *(v25 - 56) = 0;
        *(v25 - 48) = 0;
        *(v25 - 64) = 0;
        v26 = *(a3 + v24 - 24);
        *(v25 + 576) = *(a3 + v24 - 40);
        *(v25 + 592) = v26;
        *(v25 + 608) = *(a3 + v24 - 8);
        v24 -= 616;
        if (!v24)
        {
          v23 = a3;
          goto LABEL_26;
        }
      }
    }

LABEL_31:
    v48[0] = 0;
    return sub_753044(v48);
  }

  return result;
}

uint64_t *sub_753CDC(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a5;
  v41[0] = a5;
  v41[1] = &v42;
  v42 = 0;
  if (a1 == a2)
  {
LABEL_2:
    if (a3 != a4)
    {
      v8 = v5 + 80;
      v9 = a3 + 5;
      do
      {
        v10 = *(v9 - 5);
        v11 = *(v9 - 3);
        v12 = *(v9 - 4);
        *(v8 - 64) = *(v9 - 4);
        *(v8 - 48) = v11;
        *(v8 - 80) = v10;
        *(v8 - 32) = v12;
        *(v8 - 24) = 0;
        *(v8 - 16) = 0;
        *(v8 - 8) = 0;
        *(v8 - 24) = *(v9 - 24);
        *(v8 - 8) = *(v9 - 1);
        *(v9 - 3) = 0;
        *(v9 - 2) = 0;
        *(v9 - 1) = 0;
        sub_5D7BA0(v8, v9);
        *(v13 + 480) = 0;
        *(v13 + 488) = 0;
        *(v13 + 472) = 0;
        *(v13 + 472) = *(v9 + 59);
        *(v13 + 480) = v9[30];
        *(v9 + 60) = 0;
        *(v9 + 61) = 0;
        *(v9 + 59) = 0;
        v14 = *(v9 + 66);
        v15 = v9[32];
        *(v13 + 496) = v9[31];
        *(v13 + 512) = v15;
        *(v13 + 528) = v14;
        ++v42;
        v8 = v13 + 616;
        v16 = (v9 + 536);
        v9 = (v9 + 616);
      }

      while (v16 != a4);
    }
  }

  else
  {
    v18 = a1;
    while (a3 != a4)
    {
      v24 = (v5 + 552);
      v25 = (v5 + 576);
      if (*(a3 + 1) >= *(v18 + 1))
      {
        v19 = *v18;
        v20 = v18[2];
        v21 = *(v18 + 6);
        *(v5 + 16) = v18[1];
        *(v5 + 32) = v20;
        *v5 = v19;
        *(v5 + 48) = v21;
        *(v5 + 56) = 0;
        *(v5 + 64) = 0u;
        *(v5 + 56) = *(v18 + 56);
        *(v5 + 72) = *(v18 + 9);
        *(v18 + 9) = 0;
        *(v18 + 56) = 0u;
        sub_5D7BA0(v5 + 80, v18 + 10);
        *(v5 + 568) = 0;
        *v24 = 0u;
        *(v5 + 552) = *(v18 + 69);
        *(v5 + 560) = v18[35];
        *(v18 + 71) = 0;
        *(v18 + 552) = 0u;
        v22 = v18[36];
        v23 = v18[37];
        *(v5 + 608) = *(v18 + 76);
        *v25 = v22;
        *(v5 + 592) = v23;
        v18 = (v18 + 616);
      }

      else
      {
        v26 = *a3;
        v27 = a3[2];
        v28 = *(a3 + 6);
        *(v5 + 16) = a3[1];
        *(v5 + 32) = v27;
        *v5 = v26;
        *(v5 + 48) = v28;
        *(v5 + 56) = 0;
        *(v5 + 64) = 0u;
        *(v5 + 56) = *(a3 + 56);
        *(v5 + 72) = *(a3 + 9);
        *(a3 + 9) = 0;
        *(a3 + 56) = 0u;
        sub_5D7BA0(v5 + 80, a3 + 10);
        *(v5 + 568) = 0;
        *v24 = 0u;
        *v24 = *(a3 + 552);
        *(v5 + 568) = *(a3 + 71);
        *(a3 + 71) = 0;
        *(a3 + 552) = 0u;
        v29 = a3[36];
        v30 = a3[37];
        *(v5 + 608) = *(a3 + 76);
        *v25 = v29;
        *(v5 + 592) = v30;
        a3 = (a3 + 616);
      }

      ++v42;
      v5 += 616;
      if (v18 == a2)
      {
        goto LABEL_2;
      }
    }

    if (v18 != a2)
    {
      v31 = v5 + 80;
      v32 = v18 + 5;
      do
      {
        v33 = *(v32 - 5);
        v34 = *(v32 - 3);
        v35 = *(v32 - 4);
        *(v31 - 64) = *(v32 - 4);
        *(v31 - 48) = v34;
        *(v31 - 80) = v33;
        *(v31 - 32) = v35;
        *(v31 - 24) = 0;
        *(v31 - 16) = 0;
        *(v31 - 8) = 0;
        *(v31 - 24) = *(v32 - 24);
        *(v31 - 8) = *(v32 - 1);
        *(v32 - 3) = 0;
        *(v32 - 2) = 0;
        *(v32 - 1) = 0;
        sub_5D7BA0(v31, v32);
        *(v36 + 480) = 0;
        *(v36 + 488) = 0;
        *(v36 + 472) = 0;
        *(v36 + 472) = *(v32 + 59);
        *(v36 + 480) = v32[30];
        *(v32 + 60) = 0;
        *(v32 + 61) = 0;
        *(v32 + 59) = 0;
        v37 = *(v32 + 66);
        v38 = v32[32];
        *(v36 + 496) = v32[31];
        *(v36 + 512) = v38;
        *(v36 + 528) = v37;
        ++v42;
        v31 = v36 + 616;
        v39 = (v32 + 536);
        v32 = (v32 + 616);
      }

      while (v39 != a2);
    }
  }

  v41[0] = 0;
  return sub_753044(v41);
}

uint64_t *sub_753FC8(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v27[0] = a7;
  v27[1] = &v28;
  v28 = 0;
  v11 = a7;
  if (a5 <= a6)
  {
    if (a1 != a2)
    {
      v19 = a1 + 5;
      v11 = a7;
      do
      {
        v20 = *(v19 - 5);
        v21 = *(v19 - 3);
        v22 = *(v19 - 4);
        v11[1] = *(v19 - 4);
        v11[2] = v21;
        *v11 = v20;
        *(v11 + 6) = v22;
        *(v11 + 7) = 0;
        v11[4] = 0u;
        *(v11 + 56) = *(v19 - 24);
        *(v11 + 9) = *(v19 - 1);
        *(v19 - 1) = 0;
        *(v19 - 24) = 0u;
        sub_5D7BA0((v11 + 5), v19);
        *(v11 + 71) = 0;
        *(v11 + 552) = 0u;
        *(v11 + 69) = *(v19 + 59);
        v11[35] = v19[30];
        *(v19 + 60) = 0;
        *(v19 + 61) = 0;
        *(v19 + 59) = 0;
        v23 = *(v19 + 66);
        v24 = v19[32];
        v11[36] = v19[31];
        v11[37] = v24;
        *(v11 + 76) = v23;
        ++v28;
        v11 = (v11 + 616);
        v25 = (v19 + 536);
        v19 = (v19 + 616);
      }

      while (v25 != a2);
    }

    sub_75420C(a7, v11, a2, a3, a1);
  }

  else
  {
    if (a2 != a3)
    {
      v12 = a2 + 5;
      v11 = a7;
      do
      {
        v13 = *(v12 - 5);
        v14 = *(v12 - 3);
        v15 = *(v12 - 4);
        v11[1] = *(v12 - 4);
        v11[2] = v14;
        *v11 = v13;
        *(v11 + 6) = v15;
        *(v11 + 7) = 0;
        v11[4] = 0u;
        *(v11 + 56) = *(v12 - 24);
        *(v11 + 9) = *(v12 - 1);
        *(v12 - 1) = 0;
        *(v12 - 24) = 0u;
        sub_5D7BA0((v11 + 5), v12);
        *(v11 + 71) = 0;
        *(v11 + 552) = 0u;
        *(v11 + 69) = *(v12 + 59);
        v11[35] = v12[30];
        *(v12 + 60) = 0;
        *(v12 + 61) = 0;
        *(v12 + 59) = 0;
        v16 = *(v12 + 66);
        v17 = v12[32];
        v11[36] = v12[31];
        v11[37] = v17;
        *(v11 + 76) = v16;
        ++v28;
        v11 = (v11 + 616);
        v18 = (v12 + 536);
        v12 = (v12 + 616);
      }

      while (v18 != a3);
    }

    sub_754490(v11, v11, a7, a7, a2, a2, a1, a1, a3, a3);
  }

  return sub_753044(v27);
}

void sub_7541E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_753044(va);
  _Unwind_Resume(a1);
}

void sub_7541F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_753044(va);
  _Unwind_Resume(a1);
}

__n128 sub_75420C(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a1 != a2)
  {
    v9 = a1;
    while (a3 != a4)
    {
      if (*(a3 + 1) >= *(v9 + 1))
      {
        v18 = *v9;
        v19 = v9[1];
        v20 = v9[2];
        *(a5 + 48) = *(v9 + 6);
        *(a5 + 16) = v19;
        *(a5 + 32) = v20;
        *a5 = v18;
        v21 = *(a5 + 56);
        if (v21)
        {
          *(a5 + 64) = v21;
          operator delete(v21);
          *(a5 + 56) = 0;
          *(a5 + 64) = 0;
          *(a5 + 72) = 0;
        }

        *(a5 + 56) = *(v9 + 56);
        *(a5 + 72) = *(v9 + 9);
        *(v9 + 7) = 0;
        *(v9 + 8) = 0;
        *(v9 + 9) = 0;
        sub_5D85BC(a5 + 80, v9 + 10);
        v22 = *(a5 + 552);
        if (v22)
        {
          *(a5 + 560) = v22;
          operator delete(v22);
          *(a5 + 552) = 0;
          *(a5 + 560) = 0;
          *(a5 + 568) = 0;
        }

        *(a5 + 552) = *(v9 + 69);
        *(a5 + 560) = v9[35];
        *(v9 + 71) = 0;
        *(v9 + 552) = 0u;
        result = v9[36];
        v11 = v9[37];
        *(a5 + 608) = *(v9 + 76);
        *(a5 + 576) = result;
        *(a5 + 592) = v11;
        v9 = (v9 + 616);
        a5 += 616;
        if (v9 == a2)
        {
          return result;
        }
      }

      else
      {
        v12 = *a3;
        v13 = a3[1];
        v14 = a3[2];
        *(a5 + 48) = *(a3 + 6);
        *(a5 + 16) = v13;
        *(a5 + 32) = v14;
        *a5 = v12;
        v15 = *(a5 + 56);
        if (v15)
        {
          *(a5 + 64) = v15;
          operator delete(v15);
          *(a5 + 56) = 0;
          *(a5 + 64) = 0;
          *(a5 + 72) = 0;
        }

        *(a5 + 56) = *(a3 + 56);
        *(a5 + 72) = *(a3 + 9);
        *(a3 + 7) = 0;
        *(a3 + 8) = 0;
        *(a3 + 9) = 0;
        sub_5D85BC(a5 + 80, a3 + 10);
        v16 = *(a5 + 552);
        if (v16)
        {
          *(a5 + 560) = v16;
          operator delete(v16);
          *(a5 + 552) = 0;
          *(a5 + 560) = 0;
          *(a5 + 568) = 0;
        }

        *(a5 + 552) = *(a3 + 69);
        *(a5 + 560) = a3[35];
        *(a3 + 71) = 0;
        *(a3 + 552) = 0u;
        result = a3[36];
        v17 = a3[37];
        *(a5 + 608) = *(a3 + 76);
        *(a5 + 576) = result;
        *(a5 + 592) = v17;
        a3 = (a3 + 616);
        a5 += 616;
        if (v9 == a2)
        {
          return result;
        }
      }
    }

    do
    {
      v24 = *v9;
      v25 = v9[1];
      v26 = v9[2];
      *(a5 + 48) = *(v9 + 6);
      *(a5 + 16) = v25;
      *(a5 + 32) = v26;
      *a5 = v24;
      v27 = *(a5 + 56);
      if (v27)
      {
        *(a5 + 64) = v27;
        operator delete(v27);
        *(a5 + 56) = 0;
        *(a5 + 64) = 0;
        *(a5 + 72) = 0;
      }

      *(a5 + 56) = *(v9 + 56);
      *(a5 + 72) = *(v9 + 9);
      *(v9 + 7) = 0;
      *(v9 + 8) = 0;
      *(v9 + 9) = 0;
      v28 = v9 + 5;
      sub_5D85BC(a5 + 80, v28);
      v29 = *(a5 + 552);
      if (v29)
      {
        *(a5 + 560) = v29;
        operator delete(v29);
        *(a5 + 552) = 0;
        *(a5 + 560) = 0;
        *(a5 + 568) = 0;
      }

      *(a5 + 552) = *(v28 + 59);
      *(a5 + 560) = v28[30];
      *(v28 + 59) = 0;
      *(v28 + 60) = 0;
      *(v28 + 61) = 0;
      result = v28[31];
      v23 = v28[32];
      *(a5 + 608) = *(v28 + 66);
      *(a5 + 576) = result;
      *(a5 + 592) = v23;
      a5 += 616;
      v9 = (v28 + 536);
    }

    while (v9 != a2);
  }

  return result;
}

void sub_754490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 == a4)
  {
    return;
  }

  v13 = a2;
  v14 = a10;
  v15 = a10 - 64;
  while (a6 != a8)
  {
    v18 = (v15 - 552);
    v19 = (v15 - 496);
    if (*(v13 - 608) >= *(a6 - 608))
    {
      v29 = v13 - 616;
      v30 = *(v13 - 616);
      v31 = *(v13 - 600);
      v32 = *(v13 - 584);
      *(v15 - 504) = *(v13 - 568);
      *(v15 - 536) = v31;
      *(v15 - 520) = v32;
      *v18 = v30;
      v33 = *v19;
      if (*v19)
      {
        *(v15 - 488) = v33;
        operator delete(v33);
        *v19 = 0;
        *(v15 - 488) = 0;
        *(v15 - 480) = 0;
      }

      v34 = (v13 - 560);
      *v19 = *(v13 - 560);
      *(v15 - 480) = *(v13 - 544);
      *v34 = 0;
      v34[1] = 0;
      v34[2] = 0;
      sub_5D85BC(v15 - 472, (v13 - 536));
      v27 = *v15;
      v26 = v15;
      v28 = v13;
      v20 = a6;
      v13 -= 616;
      if (!*v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v20 = a6 - 616;
      v21 = *(a6 - 616);
      v22 = *(a6 - 600);
      v23 = *(a6 - 584);
      *(v15 - 504) = *(a6 - 568);
      *(v15 - 536) = v22;
      *(v15 - 520) = v23;
      *v18 = v21;
      v24 = *v19;
      if (*v19)
      {
        *(v15 - 488) = v24;
        operator delete(v24);
        *v19 = 0;
        *(v15 - 488) = 0;
        *(v15 - 480) = 0;
      }

      v25 = (a6 - 560);
      *v19 = *(a6 - 560);
      *(v15 - 480) = *(a6 - 544);
      *v25 = 0;
      v25[1] = 0;
      v25[2] = 0;
      sub_5D85BC(v15 - 472, (a6 - 536));
      v26 = (v14 - 64);
      v27 = *v15;
      v28 = a6;
      v29 = v13;
      if (!*v15)
      {
        goto LABEL_4;
      }
    }

    *(v15 + 8) = v27;
    operator delete(v27);
    *v26 = 0;
    v26[1] = 0;
    v13 = v29;
    v26[2] = 0;
LABEL_4:
    v14 -= 616;
    *v26 = *(v28 - 64);
    *(v15 + 8) = *(v28 - 56);
    *(v28 - 64) = 0;
    *(v28 - 56) = 0;
    *(v28 - 48) = 0;
    v16 = *(v28 - 40);
    v17 = *(v28 - 24);
    *(v15 + 56) = *(v28 - 8);
    *(v15 + 40) = v17;
    *(v15 + 24) = v16;
    v15 -= 616;
    a6 = v20;
    if (v13 == a4)
    {
      return;
    }
  }

  if (a4 != v13)
  {
    v35 = 0;
    do
    {
      v40 = v13 + v35;
      v41 = v15 + v35;
      v42 = v15 + v35 - 552;
      v43 = *(v13 + v35 - 616);
      v44 = *(v13 + v35 - 600);
      v45 = *(v13 + v35 - 584);
      *(v42 + 48) = *(v13 + v35 - 568);
      *(v42 + 16) = v44;
      *(v42 + 32) = v45;
      *v42 = v43;
      v46 = (v15 + v35 - 496);
      v47 = *v46;
      if (*v46)
      {
        *(v41 - 488) = v47;
        operator delete(v47);
        *v46 = 0;
        *(v15 + v35 - 488) = 0;
        *(v15 + v35 - 480) = 0;
      }

      v48 = (v40 - 560);
      *v46 = *(v40 - 560);
      *(v41 - 480) = *(v40 - 544);
      *v48 = 0;
      v48[1] = 0;
      v48[2] = 0;
      sub_5D85BC(v41 - 472, (v40 - 536));
      v49 = *v41;
      if (*v41)
      {
        *(v15 + v35 + 8) = v49;
        operator delete(v49);
        *v41 = 0;
        *(v41 + 8) = 0;
        *(v41 + 16) = 0;
      }

      v36 = v13 + v35;
      v37 = v15 + v35;
      *v37 = *(v13 + v35 - 64);
      *(v37 + 16) = *(v13 + v35 - 48);
      *(v36 - 64) = 0;
      *(v36 - 56) = 0;
      *(v36 - 48) = 0;
      v38 = *(v13 + v35 - 40);
      v39 = *(v13 + v35 - 24);
      *(v37 + 56) = *(v13 + v35 - 8);
      *(v37 + 40) = v39;
      *(v37 + 24) = v38;
      v35 -= 616;
    }

    while (v13 + v35 != a4);
  }
}

void sub_754768()
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
  xmmword_27A5378 = 0u;
  unk_27A5388 = 0u;
  dword_27A5398 = 1065353216;
  sub_3A9A34(&xmmword_27A5378, v0, v0);
  sub_3A9A34(&xmmword_27A5378, v3, v3);
  sub_3A9A34(&xmmword_27A5378, __p, __p);
  sub_3A9A34(&xmmword_27A5378, v9, v9);
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
    qword_27A5350 = 0;
    qword_27A5358 = 0;
    qword_27A5348 = 0;
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

void sub_7549B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A5360)
  {
    qword_27A5368 = qword_27A5360;
    operator delete(qword_27A5360);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_754A5C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0x11)
  {
    return 0;
  }

  else
  {
    return dword_229F1A8[v1];
  }
}

void sub_754A80(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_3AF6B4(a2);
  strcpy(v6, "RoadDescriptionBuilder");
  HIBYTE(v6[2]) = 22;
  memset(v5, 0, sizeof(v5));
  v4 = sub_3AEC94(a2, v6, v5);
  sub_41D598(v4, v7);
  sub_755AE8((a1 + 1), v7);
}

void sub_754BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_754C20(uint64_t a1, uint64_t *a2)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  if (*(a1 + 9) == 1 && !sub_4D1F6C(a2))
  {
    v14 = a1;
    v15 = sub_68C454(a2, 0);
    v16 = &v18;
    p_p = &__p;
    v18 = 0;
    v4 = *(v15 + 1104);
    v5 = *(v15 + 1112);
    if (v4 != v5 && v4 + 327 != v5)
    {
      do
      {
        sub_757054(&v14, v4, (v4 + 327));
        v7 = v4 + 654;
        v4 += 327;
      }

      while (v7 != v5);
    }
  }

  sub_754D5C(a1, &__p, a2);
  v8 = __p;
  if (__p)
  {
    v9 = v12;
    v10 = __p;
    if (v12 != __p)
    {
      do
      {
        if (*(v9 - 1) < 0)
        {
          operator delete(*(v9 - 3));
        }

        v9 -= 5;
      }

      while (v9 != v8);
      v10 = __p;
    }

    v12 = v8;
    operator delete(v10);
  }
}

void sub_754D5C(uint64_t a1, unsigned __int8 **a2, uint64_t *a3)
{
  if (*(a1 + 8) != 1)
  {
    return;
  }

  v22[7] = v3;
  v22[8] = v4;
  v8 = *(a1 + 24) * sub_68C7DC(a3);
  if (v8 >= 0.0)
  {
    if (v8 < 4.50359963e15)
    {
      v9 = (v8 + v8) + 1;
      goto LABEL_7;
    }
  }

  else if (v8 > -4.50359963e15)
  {
    v9 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
LABEL_7:
    v8 = (v9 >> 1);
  }

  v21 = v22;
  v22[0] = v8;
  sub_755934(a2, &v21);
  v10 = a2[1];
  v11 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v10 - *a2) >> 3));
  if (v10 == *a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  sub_757694(*a2, v10, &v21, v12, 1);
  v13 = a2[1];
  v14 = *(a1 + 10);
  v15 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - *a2) >> 3) > v14;
  v16 = 40 * v14;
  if (v15 && &(*a2)[v16] != v13)
  {
    v18 = &(*a2)[v16];
    v19 = a2[1];
    if (v19 != v13)
    {
      do
      {
        *v18 = *v19;
        if (v18[39] < 0)
        {
          operator delete(*(v18 + 2));
        }

        v20 = *(v19 + 1);
        *(v18 + 4) = *(v19 + 4);
        *(v18 + 1) = v20;
        v19[39] = 0;
        v19[16] = 0;
        v19 += 40;
        v18 += 40;
      }

      while (v19 != v13);
      v13 = a2[1];
    }

    while (v13 != v18)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 3));
      }

      v13 -= 40;
    }

    a2[1] = v18;
  }

  sub_68EBA0(a3, a2);
}

void sub_754F20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_755118(a4, 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3));
  v8 = *(a1 + 16) * *(a2 + 1008);
  if (v8 >= 0.0)
  {
    if (v8 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v9 = (v8 + v8) + 1;
  }

  else
  {
    if (v8 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v9 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
  }

  v8 = (v9 >> 1);
LABEL_7:
  v10 = *a3;
  v11 = a3[1];
  if (v10 != v11)
  {
    v12 = v8;
    do
    {
      if (*(v10 + 8) >= v12)
      {
        v14 = a4[1];
        if (v14 >= a4[2])
        {
          v13 = sub_756E7C(a4, v10);
        }

        else
        {
          *v14 = *v10;
          if (*(v10 + 39) < 0)
          {
            sub_325C((v14 + 16), *(v10 + 16), *(v10 + 24));
          }

          else
          {
            v15 = *(v10 + 16);
            *(v14 + 32) = *(v10 + 32);
            *(v14 + 16) = v15;
          }

          v13 = v14 + 40;
        }

        a4[1] = v13;
      }

      v10 += 40;
    }

    while (v10 != v11);
  }

  sub_755258(a4);
  sub_7553F0(a4, *(a1 + 32));
  v16 = a4[1];
  v17 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * (&v16[-*a4] >> 3));
  if (v16 == *a4)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  sub_757694(*a4, v16, &v19, v18, 1);
  sub_7557BC(a4);
}

void sub_7550EC(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_528FAC(v1);
  _Unwind_Resume(a1);
}

void sub_755118(uint64_t *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_755258(unsigned __int8 **a1)
{
  v1 = a1[1];
  v2 = *a1;
  if (*a1 != v1)
  {
    v4 = *a1;
    while (*v4 != 7)
    {
      v4 += 40;
      if (v4 == v1)
      {
        return;
      }
    }

    v5 = *a1;
    while (1)
    {
      v6 = *v5;
      if (v6 != 12 && v6 != 7)
      {
        break;
      }

      v5 += 40;
      if (v5 == v1)
      {
        return;
      }
    }

    while (*v2 != 7)
    {
      v2 += 40;
      if (v2 == v1)
      {
        return;
      }
    }

    if (v2 != v1)
    {
      v8 = v2 + 40;
      if (v2 + 40 != v1)
      {
        do
        {
          if (*v8 != 7)
          {
            *v2 = *v8;
            if (v2[39] < 0)
            {
              operator delete(*(v2 + 2));
            }

            v9 = *(v8 + 1);
            *(v2 + 4) = *(v8 + 4);
            *(v2 + 1) = v9;
            v8[39] = 0;
            v8[16] = 0;
            v2 += 40;
          }

          v8 += 40;
        }

        while (v8 != v1);
        v1 = a1[1];
      }
    }

    if (v2 != v1)
    {
      while (v1 != v2)
      {
        if (*(v1 - 1) < 0)
        {
          operator delete(*(v1 - 3));
        }

        v1 -= 40;
      }

      a1[1] = v2;
    }
  }
}

void sub_7553F0(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return;
  }

  v5 = v3 - v2 - 40;
  v6 = v5 / 0x28 + 1;
  if (v5 <= 0x27)
  {
    v7 = 0;
    v8 = *a1;
    do
    {
LABEL_13:
      if (*v8 == 1)
      {
        v15 = *(v8 + 8);
      }

      else
      {
        v15 = 0;
      }

      v7 += v15;
      v8 += 40;
    }

    while (v8 != v3);
    goto LABEL_17;
  }

  v9 = 0;
  v10 = 0;
  v8 = v2 + 40 * (v6 & 0xFFFFFFFFFFFFFFELL);
  v11 = v2 + 40;
  v12 = v6 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    if (*(v11 - 40) == 1)
    {
      v13 = *(v11 - 32);
    }

    else
    {
      v13 = 0;
    }

    if (*v11 == 1)
    {
      v14 = *(v11 + 8);
    }

    else
    {
      v14 = 0;
    }

    v9 += v13;
    v10 += v14;
    v11 += 80;
    v12 -= 2;
  }

  while (v12);
  v7 = v10 + v9;
  if (v6 != (v6 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_13;
  }

LABEL_17:
  if (v5 < 0x28)
  {
    v16 = 0;
    v17 = *a1;
    do
    {
LABEL_28:
      if (*v17)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(v17 + 8);
      }

      v16 += v24;
      v17 += 40;
    }

    while (v17 != v3);
    goto LABEL_32;
  }

  v18 = 0;
  v19 = 0;
  v17 = v2 + 40 * (v6 & 0xFFFFFFFFFFFFFFELL);
  v20 = v2 + 40;
  v21 = v6 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    if (*(v20 - 40))
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v20 - 32);
    }

    if (*v20)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v20 + 8);
    }

    v18 += v22;
    v19 += v23;
    v20 += 80;
    v21 -= 2;
  }

  while (v21);
  v16 = v19 + v18;
  if (v6 != (v6 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_28;
  }

LABEL_32:
  if (v7 >= 1 && v16 >= 1)
  {
    if (v7 / (v16 + v7) <= a2 / 1000000000.0)
    {
      while (*v2 != 1)
      {
        v2 += 40;
        if (v2 == v3)
        {
          return;
        }
      }

      if (v2 != v3)
      {
        v27 = v2 + 40;
        if (v2 + 40 != v3)
        {
          do
          {
            if (*v27 != 1)
            {
              *v2 = *v27;
              if (*(v2 + 39) < 0)
              {
                operator delete(*(v2 + 16));
              }

              v28 = *(v27 + 16);
              *(v2 + 32) = *(v27 + 32);
              *(v2 + 16) = v28;
              *(v27 + 39) = 0;
              *(v27 + 16) = 0;
              v2 += 40;
            }

            v27 += 40;
          }

          while (v27 != v3);
          v3 = a1[1];
        }
      }

      if (v2 != v3)
      {
        while (v3 != v2)
        {
          if (*(v3 - 1) < 0)
          {
            operator delete(*(v3 - 24));
          }

          v3 -= 40;
        }

        goto LABEL_71;
      }
    }

    else
    {
      while (*v2)
      {
        v2 += 40;
        if (v2 == v3)
        {
          return;
        }
      }

      if (v2 != v3)
      {
        v25 = v2 + 40;
        if (v2 + 40 != v3)
        {
          do
          {
            if (*v25)
            {
              *v2 = *v25;
              if (*(v2 + 39) < 0)
              {
                operator delete(*(v2 + 16));
              }

              v26 = *(v25 + 16);
              *(v2 + 32) = *(v25 + 32);
              *(v2 + 16) = v26;
              *(v25 + 39) = 0;
              *(v25 + 16) = 0;
              v2 += 40;
            }

            v25 += 40;
          }

          while (v25 != v3);
          v3 = a1[1];
        }
      }

      if (v2 != v3)
      {
        while (v3 != v2)
        {
          if (*(v3 - 1) < 0)
          {
            operator delete(*(v3 - 24));
          }

          v3 -= 40;
        }

LABEL_71:
        a1[1] = v2;
      }
    }
  }
}

void sub_7557BC(char **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      if (0xCCCCCCCCCCCCCCCDLL * (v4 >> 3) < 0x666666666666667)
      {
        operator new();
      }

      sub_1808();
    }

    if (v4 < v3)
    {
      v6 = (8 * (v4 >> 3));
      v7 = a1[1];
      v8 = &v6[v2 - v7];
      if (v2 != v7)
      {
        v9 = *a1;
        v10 = &v6[v2 - v7];
        do
        {
          *v10 = *v9;
          v11 = *(v9 + 16);
          *(v10 + 4) = *(v9 + 32);
          *(v10 + 1) = v11;
          *(v9 + 24) = 0;
          *(v9 + 32) = 0;
          *(v9 + 16) = 0;
          v9 += 40;
          v10 += 40;
        }

        while (v9 != v7);
        do
        {
          if (*(v2 + 39) < 0)
          {
            operator delete(*(v2 + 16));
          }

          v2 += 40;
        }

        while (v2 != v7);
        v2 = *a1;
      }

      *a1 = v8;
      a1[1] = v6;
      a1[2] = v6;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

void sub_755934(unsigned __int8 **a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = *a2;
    while (1)
    {
      v6 = *v3;
      v7 = v6 > 0xD;
      v8 = (1 << v6) & 0x3080;
      v9 = v7 || v8 == 0;
      if (!v9 || *(v3 + 1) < *v5)
      {
        break;
      }

      v3 += 40;
      if (v3 == v4)
      {
        return;
      }
    }

    if (v3 != v4)
    {
      v10 = v3 + 40;
      if (v3 + 40 != v4)
      {
        do
        {
          v12 = *v10;
          v7 = v12 > 0xD;
          v13 = (1 << v12) & 0x3080;
          v14 = v7 || v13 == 0;
          if (v14 && *(v10 + 1) >= *v5)
          {
            *v3 = *v10;
            if (v3[39] < 0)
            {
              operator delete(*(v3 + 2));
            }

            v11 = *(v10 + 1);
            *(v3 + 4) = *(v10 + 4);
            *(v3 + 1) = v11;
            v10[39] = 0;
            v10[16] = 0;
            v3 += 40;
          }

          v10 += 40;
        }

        while (v10 != v4);
        v4 = a1[1];
      }
    }
  }

  if (v3 != v4)
  {
    while (v4 != v3)
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 3));
      }

      v4 -= 40;
    }

    a1[1] = v3;
  }
}

void sub_755DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_755E14(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_3AF6B4(a2);
  strcpy(v6, "RoadDescriptionBuilder");
  HIBYTE(v6[2]) = 22;
  memset(v5, 0, sizeof(v5));
  v4 = sub_3AEC94(a2, v6, v5);
  sub_41D7AC(v4, v7);
  sub_7562E8((a1 + 1), v7);
}

void sub_755F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_755FB4(uint64_t a1, uint64_t *a2)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  if (*(a1 + 9) == 1 && !sub_4D1F6C(a2))
  {
    v14 = a1;
    v15 = sub_68C454(a2, 0);
    v16 = &v18;
    p_p = &__p;
    v18 = 0;
    v4 = *(v15 + 1104);
    v5 = *(v15 + 1112);
    if (v4 != v5 && v4 + 327 != v5)
    {
      do
      {
        sub_7591D4(&v14, v4, (v4 + 327));
        v7 = v4 + 654;
        v4 += 327;
      }

      while (v7 != v5);
    }
  }

  sub_754D5C(a1, &__p, a2);
  v8 = __p;
  if (__p)
  {
    v9 = v12;
    v10 = __p;
    if (v12 != __p)
    {
      do
      {
        if (*(v9 - 1) < 0)
        {
          operator delete(*(v9 - 3));
        }

        v9 -= 5;
      }

      while (v9 != v8);
      v10 = __p;
    }

    v12 = v8;
    operator delete(v10);
  }
}

void sub_7560F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_755118(a4, 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3));
  v8 = *(a1 + 16) * *(a2 + 1008);
  if (v8 >= 0.0)
  {
    if (v8 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v9 = (v8 + v8) + 1;
  }

  else
  {
    if (v8 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v9 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
  }

  v8 = (v9 >> 1);
LABEL_7:
  v10 = *a3;
  v11 = a3[1];
  if (v10 != v11)
  {
    v12 = v8;
    do
    {
      if (*(v10 + 8) >= v12)
      {
        v14 = a4[1];
        if (v14 >= a4[2])
        {
          v13 = sub_756E7C(a4, v10);
        }

        else
        {
          *v14 = *v10;
          if (*(v10 + 39) < 0)
          {
            sub_325C((v14 + 16), *(v10 + 16), *(v10 + 24));
          }

          else
          {
            v15 = *(v10 + 16);
            *(v14 + 32) = *(v10 + 32);
            *(v14 + 16) = v15;
          }

          v13 = v14 + 40;
        }

        a4[1] = v13;
      }

      v10 += 40;
    }

    while (v10 != v11);
  }

  sub_755258(a4);
  sub_7553F0(a4, *(a1 + 32));
  v16 = a4[1];
  v17 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * (&v16[-*a4] >> 3));
  if (v16 == *a4)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  sub_757694(*a4, v16, &v19, v18, 1);
  sub_7557BC(a4);
}

void sub_7562BC(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_528FAC(v1);
  _Unwind_Resume(a1);
}

void sub_7565E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_756614(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_3AF6B4(a2);
  strcpy(v6, "RoadDescriptionBuilder");
  HIBYTE(v6[2]) = 22;
  memset(v5, 0, sizeof(v5));
  v4 = sub_3AEC94(a2, v6, v5);
  sub_41D820(v4, v7);
  sub_756AE8((a1 + 1), v7);
}

void sub_756778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_7567B4(uint64_t a1, uint64_t *a2)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  if (*(a1 + 9) == 1 && !sub_4D1F6C(a2))
  {
    v14 = a1;
    v15 = sub_68C454(a2, 0);
    v16 = &v18;
    p_p = &__p;
    v18 = 0;
    v4 = *(v15 + 1104);
    v5 = *(v15 + 1112);
    if (v4 != v5 && v4 + 327 != v5)
    {
      do
      {
        sub_759814(&v14, v4, (v4 + 327));
        v7 = v4 + 654;
        v4 += 327;
      }

      while (v7 != v5);
    }
  }

  sub_754D5C(a1, &__p, a2);
  v8 = __p;
  if (__p)
  {
    v9 = v12;
    v10 = __p;
    if (v12 != __p)
    {
      do
      {
        if (*(v9 - 1) < 0)
        {
          operator delete(*(v9 - 3));
        }

        v9 -= 5;
      }

      while (v9 != v8);
      v10 = __p;
    }

    v12 = v8;
    operator delete(v10);
  }
}

void sub_7568F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_755118(a4, 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3));
  v8 = *(a1 + 16) * *(a2 + 1008);
  if (v8 >= 0.0)
  {
    if (v8 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v9 = (v8 + v8) + 1;
  }

  else
  {
    if (v8 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v9 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
  }

  v8 = (v9 >> 1);
LABEL_7:
  v10 = *a3;
  v11 = a3[1];
  if (v10 != v11)
  {
    v12 = v8;
    do
    {
      if (*(v10 + 8) >= v12)
      {
        v14 = a4[1];
        if (v14 >= a4[2])
        {
          v13 = sub_756E7C(a4, v10);
        }

        else
        {
          *v14 = *v10;
          if (*(v10 + 39) < 0)
          {
            sub_325C((v14 + 16), *(v10 + 16), *(v10 + 24));
          }

          else
          {
            v15 = *(v10 + 16);
            *(v14 + 32) = *(v10 + 32);
            *(v14 + 16) = v15;
          }

          v13 = v14 + 40;
        }

        a4[1] = v13;
      }

      v10 += 40;
    }

    while (v10 != v11);
  }

  sub_755258(a4);
  sub_7553F0(a4, *(a1 + 32));
  v16 = a4[1];
  v17 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * (&v16[-*a4] >> 3));
  if (v16 == *a4)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  sub_757694(*a4, v16, &v19, v18, 1);
  sub_7557BC(a4);
}

void sub_756ABC(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_528FAC(v1);
  _Unwind_Resume(a1);
}

void sub_756DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_756E14(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_756E7C(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  v15 = v6;
  *v6 = *a2;
  if (*(a2 + 39) < 0)
  {
    sub_325C((v6 + 16), *(a2 + 16), *(a2 + 24));
    v7 = 40 * v2 + 40;
    v8 = *a1;
    v9 = a1[1];
    v10 = v15 + *a1 - v9;
    if (v9 == *a1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *&dword_10[10 * v2] = *(a2 + 16);
    *(&stru_20.cmd + 5 * v2) = *(a2 + 32);
    v7 = v6 + 40;
    v8 = *a1;
    v9 = a1[1];
    v10 = v6 + *a1 - v9;
    if (v9 == *a1)
    {
      goto LABEL_21;
    }
  }

  v11 = v8;
  v12 = v10;
  do
  {
    *v12 = *v11;
    v13 = *(v11 + 16);
    *(v12 + 32) = *(v11 + 32);
    *(v12 + 16) = v13;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 16) = 0;
    v11 += 40;
    v12 += 40;
  }

  while (v11 != v9);
  do
  {
    if (*(v8 + 39) < 0)
    {
      operator delete(*(v8 + 16));
    }

    v8 += 40;
  }

  while (v8 != v9);
  v8 = *a1;
LABEL_21:
  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_757040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_756E14(va);
  _Unwind_Resume(a1);
}

void sub_757054(uint64_t a1, void *a2, uint64_t a3)
{
  v51 = *a1;
  __p = 0;
  v60 = 0;
  v61 = 0;
  v3 = *(a3 + 40);
  v4 = *(a3 + 24);
  v5 = v3 >= v4;
  if (v3 > v4)
  {
    v4 = *(a3 + 40);
  }

  v52 = v4;
  if (!v5)
  {
    v7 = 0;
    do
    {
      v8 = v3;
      v9 = sub_69AD38(*(a1 + 8), v3);
      if ((v9 & 4) != 0)
      {
        v11 = v9 & 0xFFFFFFFFFFFFFFF3 | 8;
      }

      else
      {
        v11 = v9;
      }

      v54 = v8;
      if (v8 == *(a3 + 24) - 1)
      {
        v12 = **(a1 + 16);
      }

      else
      {
        v13 = sub_69AD38(*(a1 + 8), v8 + 1);
        if ((v13 & 4) != 0)
        {
          v12 = v13 & 0xFFFFFFFFFFFFFFF3 | 8;
        }

        else
        {
          v12 = v13;
        }
      }

      v7 += sub_4D23F8(*(a1 + 8), v54, v10);
      if (v11 != v12)
      {
        if (v11)
        {
          while (1)
          {
            v14 = __clz(__rbit64(v11));
            v15 = v60;
            v16 = __p;
            if (__p != v60)
            {
              while (*v16 != v14)
              {
                v16 += 40;
                if (v16 == v60)
                {
                  goto LABEL_26;
                }
              }
            }

            if (v16 == v60)
            {
LABEL_26:
              if (v60 >= v61)
              {
                v22 = 0xCCCCCCCCCCCCCCCDLL * ((v60 - __p) >> 3) + 1;
                if (v22 > 0x666666666666666)
                {
                  goto LABEL_93;
                }

                if (0x999999999999999ALL * ((v61 - __p) >> 3) > v22)
                {
                  v22 = 0x999999999999999ALL * ((v61 - __p) >> 3);
                }

                if (0xCCCCCCCCCCCCCCCDLL * ((v61 - __p) >> 3) >= 0x333333333333333)
                {
                  v23 = 0x666666666666666;
                }

                else
                {
                  v23 = v22;
                }

                if (v23)
                {
                  if (v23 <= 0x666666666666666)
                  {
                    operator new();
                  }

LABEL_94:
                  sub_1808();
                }

                v24 = 8 * ((v60 - __p) >> 3);
                *v24 = v14;
                *(v24 + 1) = 0;
                *(v24 + 16) = 0;
                *(v24 + 24) = 0;
                *(v24 + 8) = v7;
                *(v24 + 39) = 0;
                v26 = __p;
                v25 = v60;
                v27 = (v24 + __p - v60);
                if (__p != v60)
                {
                  v28 = __p;
                  v29 = (v24 + __p - v60);
                  do
                  {
                    *v29 = *v28;
                    v30 = *(v28 + 1);
                    *(v29 + 4) = v28[4];
                    *(v29 + 1) = v30;
                    v28[3] = 0;
                    v28[4] = 0;
                    v28[2] = 0;
                    v28 += 5;
                    v29 += 40;
                  }

                  while (v28 != v25);
                  do
                  {
                    if (*(v26 + 39) < 0)
                    {
                      operator delete(v26[2]);
                    }

                    v26 += 5;
                  }

                  while (v26 != v25);
                  v26 = __p;
                }

                v21 = (v24 + 40);
                __p = v27;
                v60 = (v24 + 40);
                v61 = 0;
                if (v26)
                {
                  operator delete(v26);
                }
              }

              else
              {
                *v60 = v14;
                v15[1] = 0;
                *(v15 + 2) = 0;
                *(v15 + 3) = 0;
                *(v15 + 1) = v7;
                v21 = v15 + 40;
                v15[39] = 0;
              }

              v60 = v21;
              v17 = *(a1 + 24);
              v19 = *v17;
              v18 = v17[1];
              v20 = *v17;
              if (*v17 != v18)
              {
LABEL_48:
                while (*v20 != v14)
                {
                  v20 += 40;
                  if (v20 == v18)
                  {
                    goto LABEL_54;
                  }
                }
              }
            }

            else
            {
              *(v16 + 1) += v7;
              v16[1] = 0;
              v17 = *(a1 + 24);
              v19 = *v17;
              v18 = v17[1];
              v20 = *v17;
              if (*v17 != v18)
              {
                goto LABEL_48;
              }
            }

            if (v20 == v18)
            {
LABEL_54:
              v31 = v17[2];
              if (v18 < v31)
              {
                *v18 = v14;
                v18[1] = 0;
                *(v18 + 2) = v57;
                *(v18 + 3) = v58;
                *(v18 + 2) = 0;
                *(v18 + 3) = 0;
                *(v18 + 1) = v7;
                *(v18 + 8) = v55;
                *(v18 + 35) = *(&v55 + 3);
                v18[39] = 0;
                v17[1] = v18 + 40;
                v17[1] = v18 + 40;
                v11 &= v11 - 1;
                if (!v11)
                {
                  break;
                }
              }

              else
              {
                v32 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - v19) >> 3);
                v33 = v32 + 1;
                if (v32 + 1 > 0x666666666666666)
                {
LABEL_93:
                  sub_1794();
                }

                v34 = 0xCCCCCCCCCCCCCCCDLL * ((v31 - v19) >> 3);
                if (2 * v34 > v33)
                {
                  v33 = 2 * v34;
                }

                if (v34 >= 0x333333333333333)
                {
                  v35 = 0x666666666666666;
                }

                else
                {
                  v35 = v33;
                }

                if (v35)
                {
                  if (v35 <= 0x666666666666666)
                  {
                    operator new();
                  }

                  goto LABEL_94;
                }

                v36 = 40 * v32;
                *v36 = v14;
                *(v36 + 1) = 0;
                *(v36 + 2) = v57;
                *(v36 + 6) = v58;
                *(v36 + 16) = 0;
                *(v36 + 24) = 0;
                *(v36 + 8) = v7;
                *(v36 + 32) = v55;
                *(v36 + 35) = *(&v55 + 3);
                *(v36 + 39) = 0;
                v38 = *v17;
                v37 = v17[1];
                v39 = v36 + *v17 - v37;
                if (*v17 != v37)
                {
                  v40 = *v17;
                  v41 = v36 + *v17 - v37;
                  do
                  {
                    *v41 = *v40;
                    v42 = *(v40 + 1);
                    *(v41 + 32) = *(v40 + 4);
                    *(v41 + 16) = v42;
                    *(v40 + 3) = 0;
                    *(v40 + 4) = 0;
                    *(v40 + 2) = 0;
                    v40 += 40;
                    v41 += 40;
                  }

                  while (v40 != v37);
                  do
                  {
                    if (v38[39] < 0)
                    {
                      operator delete(*(v38 + 2));
                    }

                    v38 += 40;
                  }

                  while (v38 != v37);
                  v38 = *v17;
                }

                *v17 = v39;
                v17[1] = (v36 + 40);
                v17[2] = 0;
                if (v38)
                {
                  operator delete(v38);
                }

                v17[1] = (v36 + 40);
                v11 &= v11 - 1;
                if (!v11)
                {
                  break;
                }
              }
            }

            else
            {
              *(v20 + 1) += v7;
              v20[1] = 1;
              v11 &= v11 - 1;
              if (!v11)
              {
                break;
              }
            }
          }
        }

        v7 = 0;
      }

      v3 = v54 + 1;
    }

    while (v54 + 1 != v52);
  }

  sub_754F20(v51, a3, &__p, &v55);
  v43 = (a2 + 99);
  v44 = a2[99];
  if (v44)
  {
    v45 = a2[100];
    v46 = a2[99];
    if (v45 != v44)
    {
      do
      {
        if (*(v45 - 1) < 0)
        {
          operator delete(*(v45 - 24));
        }

        v45 -= 40;
      }

      while (v45 != v44);
      v46 = *v43;
    }

    a2[100] = v44;
    operator delete(v46);
    *v43 = 0;
    a2[100] = 0;
    a2[101] = 0;
  }

  *v43 = v55;
  a2[101] = v56;
  v47 = __p;
  if (__p)
  {
    v48 = v60;
    v49 = __p;
    if (v60 != __p)
    {
      do
      {
        if (*(v48 - 1) < 0)
        {
          operator delete(*(v48 - 3));
        }

        v48 -= 5;
      }

      while (v48 != v47);
      v49 = __p;
    }

    v60 = v47;
    operator delete(v49);
  }
}

void sub_75761C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_757630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_757644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_757658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_75766C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_757680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_757694(char *a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v9) >> 3);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:

          sub_757E18(v9, (v9 + 40), (a2 - 40));
          return;
        case 4uLL:
          sub_757E18(v9, (v9 + 40), v9 + 5);
          if (*(a2 - 4) > *(v9 + 11))
          {
            v70 = v9[5];
            v29 = *(v9 + 12);
            *&v65 = *(v9 + 13);
            *(&v65 + 7) = *(v9 + 111);
            v30 = *(v9 + 119);
            *(v9 + 12) = 0;
            *(v9 + 14) = 0;
            *(v9 + 13) = 0;
            v9[5] = *(a2 - 40);
            v31 = *(a2 - 1);
            v9[6] = *(a2 - 24);
            *(v9 + 14) = v31;
            *(a2 - 40) = v70;
            *(a2 - 3) = v29;
            *(a2 - 2) = v65;
            *(a2 - 9) = *(&v65 + 7);
            *(a2 - 1) = v30;
            if (*(v9 + 11) > *(v9 + 6))
            {
              v33 = *(v9 + 7);
              v32 = *(v9 + 40);
              *&v66 = *(v9 + 8);
              *(&v66 + 7) = *(v9 + 71);
              v34 = *(v9 + 79);
              *(v9 + 40) = v9[5];
              *(v9 + 56) = v9[6];
              *(v9 + 9) = *(v9 + 14);
              v9[5] = v32;
              *(v9 + 12) = v33;
              *(v9 + 13) = v66;
              *(v9 + 111) = *(&v66 + 7);
              *(v9 + 119) = v34;
              if (*(v9 + 6) > *(v9 + 1))
              {
                v71 = *v9;
                v35 = *(v9 + 2);
                *&v67 = *(v9 + 3);
                *(&v67 + 7) = *(v9 + 31);
                v36 = *(v9 + 39);
                v37 = *(v9 + 56);
                *v9 = *(v9 + 40);
                v9[1] = v37;
                *(v9 + 4) = *(v9 + 9);
                *(v9 + 40) = v71;
                *(v9 + 7) = v35;
                *(v9 + 8) = v67;
                *(v9 + 71) = *(&v67 + 7);
                *(v9 + 79) = v36;
              }
            }
          }

          return;
        case 5uLL:

          sub_758098(v9, v9 + 40, (v9 + 5), (v9 + 120), (a2 - 40));
          return;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if (*(a2 - 4) > *(v9 + 1))
        {
          v69 = *v9;
          v26 = *(v9 + 2);
          *&v64 = *(v9 + 3);
          *(&v64 + 7) = *(v9 + 31);
          v27 = *(v9 + 39);
          *(v9 + 3) = 0;
          *(v9 + 4) = 0;
          *(v9 + 2) = 0;
          *v9 = *(a2 - 40);
          v28 = *(a2 - 24);
          *(v9 + 4) = *(a2 - 1);
          v9[1] = v28;
          *(a2 - 40) = v69;
          *(a2 - 3) = v26;
          *(a2 - 2) = v64;
          *(a2 - 9) = *(&v64 + 7);
          *(a2 - 1) = v27;
        }

        return;
      }
    }

    if (v12 <= 959)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        sub_758C18(v9, a2, a2);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = v9 + 40 * (v13 >> 1);
    if (v12 < 0x1401)
    {
      sub_757E18(v15, v9, (a2 - 40));
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_757E18(v9, v15, (a2 - 40));
      v16 = v9 + 40;
      v17 = 40 * v14;
      v18 = &a1[40 * v14 - 40];
      sub_757E18((a1 + 40), v18, a2 - 5);
      sub_757E18(a1 + 5, &v16[v17], (a2 - 120));
      sub_757E18(v18, v15, &v16[v17]);
      v68 = *a1;
      *(&v63 + 7) = *(a1 + 31);
      v19 = *(a1 + 2);
      *&v63 = *(a1 + 3);
      v20 = a1[39];
      *(a1 + 3) = 0;
      *(a1 + 4) = 0;
      *(a1 + 2) = 0;
      v21 = *(v15 + 4);
      v22 = *(v15 + 1);
      *a1 = *v15;
      *(a1 + 1) = v22;
      *(a1 + 4) = v21;
      *v15 = v68;
      *(v15 + 2) = v19;
      *(v15 + 31) = *(&v63 + 7);
      *(v15 + 3) = v63;
      v15[39] = v20;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if (*(a1 - 4) <= *(a1 + 1))
    {
      v9 = sub_758450(a1, a2);
      goto LABEL_22;
    }

LABEL_17:
    v23 = sub_758638(a1, a2);
    if ((v24 & 1) == 0)
    {
      goto LABEL_20;
    }

    v25 = sub_758834(a1, v23);
    v9 = (v23 + 5);
    if (sub_758834((v23 + 5), a2))
    {
      a4 = -v11;
      a2 = v23;
      if (v25)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v25)
    {
LABEL_20:
      sub_757694(a1, v23, a3, -v11, a5 & 1);
      v9 = (v23 + 5);
LABEL_22:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  v38 = v9 + 40;
  v40 = v9 == a2 || v38 == a2;
  if (a5)
  {
    if (!v40)
    {
      v41 = 0;
      do
      {
        v42 = v38;
        v43 = *(v9 + 6);
        if (v43 > *(v9 + 1))
        {
          v44 = *v38;
          *&v72[7] = *(v9 + 71);
          v45 = *(v9 + 7);
          *v72 = *(v9 + 8);
          v46 = *(v9 + 79);
          *(v9 + 8) = 0;
          *(v9 + 9) = 0;
          *(v9 + 7) = 0;
          v47 = v38[39];
          *v42 = *v9;
          if (v47 < 0)
          {
            operator delete(*(v42 + 2));
          }

          v48 = (v9 + 1);
          *(v42 + 1) = v9[1];
          *(v42 + 4) = *(v9 + 4);
          *(v9 + 39) = 0;
          *(v9 + 16) = 0;
          if (v9 == a1)
          {
            v9 = a1;
          }

          else if (v43 > *(v9 - 4))
          {
            v49 = v41;
            while (1)
            {
              v50 = &a1[v49];
              v51 = *&a1[v49 - 24];
              *v50 = *&a1[v49 - 40];
              *(v50 + 1) = v51;
              *(v50 + 4) = *&a1[v49 - 8];
              *(v50 - 1) = 0;
              *(v50 - 24) = 0;
              v49 -= 40;
              if (!v49)
              {
                break;
              }

              if (v43 <= *(v50 - 9))
              {
                v9 = &a1[v49];
                goto LABEL_59;
              }
            }

            v9 = a1;
LABEL_59:
            v48 = v50 - 24;
          }

          *v9 = v44;
          *(v9 + 1) = v43;
          *v48 = v45;
          *(v9 + 3) = *v72;
          *(v9 + 31) = *&v72[7];
          *(v9 + 39) = v46;
        }

        v38 = v42 + 40;
        v41 += 40;
        v9 = v42;
      }

      while (v42 + 40 != a2);
    }
  }

  else if (!v40)
  {
    v52 = v9 - 72;
    do
    {
      v54 = v38;
      v55 = *(a1 + 6);
      if (v55 > *(a1 + 1))
      {
        v56 = *v38;
        *&v73[7] = *(a1 + 71);
        v57 = *(a1 + 7);
        *v73 = *(a1 + 8);
        v58 = a1[79];
        *(a1 + 8) = 0;
        *(a1 + 9) = 0;
        *(a1 + 7) = 0;
        v59 = v38[39];
        *v54 = *a1;
        if (v59 < 0)
        {
          operator delete(*(v54 + 16));
        }

        *(v54 + 16) = *(a1 + 1);
        *(v54 + 32) = *(a1 + 4);
        a1[39] = 0;
        a1[16] = 0;
        if (v55 <= *(a1 - 4))
        {
          v53 = a1 + 16;
        }

        else
        {
          v60 = v52;
          do
          {
            v61 = *(v60 + 3);
            *(v60 + 72) = *(v60 + 2);
            *(v60 + 88) = v61;
            *(v60 + 13) = *(v60 + 8);
            v60[71] = 0;
            v60[48] = 0;
            v62 = *v60;
            v60 -= 40;
          }

          while (v55 > v62);
          v53 = v60 + 88;
          a1 = v60 + 72;
        }

        *a1 = v56;
        *(a1 + 1) = v55;
        *v53 = v57;
        *(a1 + 3) = *v73;
        *(a1 + 31) = *&v73[7];
        a1[39] = v58;
      }

      v38 = (v54 + 40);
      v52 += 40;
      a1 = v54;
    }

    while ((v54 + 40) != a2);
  }
}

uint64_t sub_757E18(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a2 + 1);
  v4 = *(a3 + 1);
  if (v3 <= *(a1 + 1))
  {
    if (v4 <= v3)
    {
      return 0;
    }

    v20 = *a2;
    v9 = *(a2 + 2);
    *&v25 = *(a2 + 3);
    *(&v25 + 7) = *(a2 + 31);
    v10 = *(a2 + 39);
    *(a2 + 2) = 0;
    *(a2 + 24) = 0uLL;
    *a2 = *a3;
    v11 = *(a3 + 4);
    a2[1] = a3[1];
    *(a2 + 4) = v11;
    *a3 = v20;
    *(a3 + 2) = v9;
    *(a3 + 3) = v25;
    *(a3 + 31) = *(&v25 + 7);
    *(a3 + 39) = v10;
    if (*(a2 + 1) > *(a1 + 1))
    {
      v21 = *a1;
      v12 = *(a1 + 2);
      *&v26 = *(a1 + 3);
      *(&v26 + 7) = *(a1 + 31);
      v13 = *(a1 + 39);
      *(a1 + 24) = 0uLL;
      *(a1 + 2) = 0;
      *a1 = *a2;
      v14 = *(a2 + 4);
      a1[1] = a2[1];
      *(a1 + 4) = v14;
      *a2 = v21;
      *(a2 + 2) = v12;
      *(a2 + 3) = v26;
      *(a2 + 31) = *(&v26 + 7);
      result = 1;
      *(a2 + 39) = v13;
      return result;
    }
  }

  else
  {
    if (v4 > v3)
    {
      v19 = *a1;
      v5 = *(a1 + 2);
      *&v24 = *(a1 + 3);
      *(&v24 + 7) = *(a1 + 31);
      v6 = *(a1 + 39);
      *(a1 + 24) = 0uLL;
      *(a1 + 2) = 0;
      *a1 = *a3;
      v7 = *(a3 + 4);
      a1[1] = a3[1];
      *(a1 + 4) = v7;
      *a3 = v19;
      *(a3 + 2) = v5;
      *(a3 + 3) = v24;
      *(a3 + 31) = *(&v24 + 7);
      result = 1;
      *(a3 + 39) = v6;
      return result;
    }

    v22 = *a1;
    v15 = *(a1 + 2);
    *&v27 = *(a1 + 3);
    *(&v27 + 7) = *(a1 + 31);
    v16 = *(a1 + 39);
    *(a1 + 24) = 0uLL;
    *(a1 + 2) = 0;
    *a1 = *a2;
    v17 = *(a2 + 4);
    a1[1] = a2[1];
    *(a1 + 4) = v17;
    *a2 = v22;
    *(a2 + 2) = v15;
    *(a2 + 3) = v27;
    *(a2 + 31) = *(&v27 + 7);
    *(a2 + 39) = v16;
    if (*(a3 + 1) > *(a2 + 1))
    {
      v23 = *a2;
      *&v28 = *(a2 + 3);
      *(&v28 + 7) = *(a2 + 31);
      *(a2 + 24) = 0uLL;
      *(a2 + 2) = 0;
      *a2 = *a3;
      v18 = *(a3 + 4);
      a2[1] = a3[1];
      *(a2 + 4) = v18;
      *a3 = v23;
      *(a3 + 2) = v15;
      *(a3 + 3) = v28;
      *(a3 + 31) = *(&v28 + 7);
      result = 1;
      *(a3 + 39) = v16;
      return result;
    }
  }

  return 1;
}

uint64_t sub_758098(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  result = sub_757E18(a1, a2, a3);
  if (*(a4 + 1) > *(a3 + 8))
  {
    v32 = *a3;
    v11 = *(a3 + 16);
    *&v39 = *(a3 + 24);
    *(&v39 + 7) = *(a3 + 31);
    v12 = *(a3 + 39);
    *(a3 + 16) = 0;
    *(a3 + 32) = 0;
    *(a3 + 24) = 0;
    *a3 = *a4;
    v13 = *(a4 + 4);
    *(a3 + 16) = a4[1];
    *(a3 + 32) = v13;
    *a4 = v32;
    *(a4 + 2) = v11;
    *(a4 + 3) = v39;
    *(a4 + 31) = *(&v39 + 7);
    *(a4 + 39) = v12;
    if (*(a3 + 8) > *(a2 + 8))
    {
      v33 = *a2;
      v14 = *(a2 + 16);
      *&v40 = *(a2 + 24);
      *(&v40 + 7) = *(a2 + 31);
      v15 = *(a2 + 39);
      *(a2 + 16) = 0;
      *(a2 + 32) = 0;
      *(a2 + 24) = 0;
      *a2 = *a3;
      v16 = *(a3 + 32);
      *(a2 + 16) = *(a3 + 16);
      *(a2 + 32) = v16;
      *a3 = v33;
      *(a3 + 16) = v14;
      *(a3 + 24) = v40;
      *(a3 + 31) = *(&v40 + 7);
      *(a3 + 39) = v15;
      if (*(a2 + 8) > *(a1 + 8))
      {
        v34 = *a1;
        v17 = *(a1 + 16);
        *&v41 = *(a1 + 24);
        *(&v41 + 7) = *(a1 + 31);
        v18 = *(a1 + 39);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 16) = 0;
        *a1 = *a2;
        v19 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v19;
        *a2 = v34;
        *(a2 + 16) = v17;
        *(a2 + 24) = v41;
        *(a2 + 31) = *(&v41 + 7);
        *(a2 + 39) = v18;
      }
    }
  }

  if (*(a5 + 1) > *(a4 + 1))
  {
    v35 = *a4;
    v20 = *(a4 + 2);
    *&v42 = *(a4 + 3);
    *(&v42 + 7) = *(a4 + 31);
    v21 = *(a4 + 39);
    *(a4 + 2) = 0;
    *(a4 + 4) = 0;
    *(a4 + 3) = 0;
    *a4 = *a5;
    v22 = *(a5 + 4);
    a4[1] = a5[1];
    *(a4 + 4) = v22;
    *a5 = v35;
    *(a5 + 2) = v20;
    *(a5 + 3) = v42;
    *(a5 + 31) = *(&v42 + 7);
    *(a5 + 39) = v21;
    if (*(a4 + 1) > *(a3 + 8))
    {
      v36 = *a3;
      v23 = *(a3 + 16);
      *&v43 = *(a3 + 24);
      *(&v43 + 7) = *(a3 + 31);
      v24 = *(a3 + 39);
      *(a3 + 16) = 0;
      *(a3 + 32) = 0;
      *(a3 + 24) = 0;
      *a3 = *a4;
      v25 = *(a4 + 4);
      *(a3 + 16) = a4[1];
      *(a3 + 32) = v25;
      *a4 = v36;
      *(a4 + 2) = v23;
      *(a4 + 3) = v43;
      *(a4 + 31) = *(&v43 + 7);
      *(a4 + 39) = v24;
      if (*(a3 + 8) > *(a2 + 8))
      {
        v37 = *a2;
        v26 = *(a2 + 16);
        *&v44 = *(a2 + 24);
        *(&v44 + 7) = *(a2 + 31);
        v27 = *(a2 + 39);
        *(a2 + 16) = 0;
        *(a2 + 32) = 0;
        *(a2 + 24) = 0;
        *a2 = *a3;
        v28 = *(a3 + 32);
        *(a2 + 16) = *(a3 + 16);
        *(a2 + 32) = v28;
        *a3 = v37;
        *(a3 + 16) = v26;
        *(a3 + 24) = v44;
        *(a3 + 31) = *(&v44 + 7);
        *(a3 + 39) = v27;
        if (*(a2 + 8) > *(a1 + 8))
        {
          v38 = *a1;
          v29 = *(a1 + 16);
          *&v45 = *(a1 + 24);
          *(&v45 + 7) = *(a1 + 31);
          v30 = *(a1 + 39);
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 16) = 0;
          *a1 = *a2;
          v31 = *(a2 + 32);
          *(a1 + 16) = *(a2 + 16);
          *(a1 + 32) = v31;
          *a2 = v38;
          *(a2 + 16) = v29;
          *(a2 + 24) = v45;
          *(a2 + 31) = *(&v45 + 7);
          *(a2 + 39) = v30;
        }
      }
    }
  }

  return result;
}

__int128 *sub_758450(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1 + 2;
  v4 = a1[2];
  *v23 = a1[3];
  *&v23[7] = *(a1 + 31);
  v6 = *(a1 + 39);
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  if (v2 <= *(a2 - 32))
  {
    v10 = a1 + 5;
    do
    {
      v8 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v11 = v10[1];
      v10 += 5;
    }

    while (v2 <= v11);
  }

  else
  {
    v7 = a1;
    do
    {
      v8 = (v7 + 5);
      v9 = v7[6];
      v7 += 5;
    }

    while (v2 <= v9);
  }

  if (v8 >= a2)
  {
    v12 = a2;
  }

  else
  {
    do
    {
      v12 = a2 - 40;
      v13 = *(a2 - 32);
      a2 -= 40;
    }

    while (v2 > v13);
  }

  while (v8 < v12)
  {
    v22 = *v8;
    v14 = *(v8 + 16);
    *&v24 = *(v8 + 24);
    *(&v24 + 7) = *(v8 + 31);
    v15 = *(v8 + 39);
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 16) = 0;
    *v8 = *v12;
    v16 = *(v12 + 16);
    *(v8 + 32) = *(v12 + 32);
    *(v8 + 16) = v16;
    *v12 = v22;
    *(v12 + 16) = v14;
    *(v12 + 24) = v24;
    *(v12 + 31) = *(&v24 + 7);
    *(v12 + 39) = v15;
    do
    {
      v17 = *(v8 + 48);
      v8 += 40;
    }

    while (v2 <= v17);
    do
    {
      v18 = *(v12 - 32);
      v12 -= 40;
    }

    while (v2 > v18);
  }

  if ((v8 - 40) == a1)
  {
    v20 = *(v8 - 1);
    *(v8 - 40) = v3;
    *(v8 - 32) = v2;
    if (v20 < 0)
    {
      operator delete(*(v8 - 24));
    }
  }

  else
  {
    *a1 = *(v8 - 40);
    if (*(a1 + 39) < 0)
    {
      operator delete(*v5);
    }

    v19 = *(v8 - 24);
    v5[2] = *(v8 - 8);
    *v5 = v19;
    *(v8 - 1) = 0;
    *(v8 - 40) = v3;
    *(v8 - 32) = v2;
  }

  *(v8 - 24) = v4;
  *(v8 - 9) = *&v23[7];
  *(v8 - 16) = *v23;
  *(v8 - 1) = v6;
  return v8;
}

uint64_t *sub_758638(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v6 = a1 + 2;
  v5 = a1[2];
  *v24 = a1[3];
  *&v24[7] = *(a1 + 31);
  v7 = *(a1 + 39);
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  do
  {
    v8 = a1[v2 + 6];
    v2 += 5;
  }

  while (v8 > v4);
  v9 = &a1[v2];
  if (v2 == 5)
  {
    while (v9 < a2)
    {
      v10 = a2 - 40;
      v12 = *(a2 - 32);
      a2 -= 40;
      if (v12 > v4)
      {
        goto LABEL_9;
      }
    }

    v10 = a2;
  }

  else
  {
    do
    {
      v10 = a2 - 40;
      v11 = *(a2 - 32);
      a2 -= 40;
    }

    while (v11 <= v4);
  }

LABEL_9:
  v13 = v9;
  if (v9 < v10)
  {
    v14 = v10;
    do
    {
      v23 = *v13;
      v15 = v13[2];
      *&v25 = v13[3];
      *(&v25 + 7) = *(v13 + 31);
      v16 = *(v13 + 39);
      v13[3] = 0;
      v13[4] = 0;
      v13[2] = 0;
      *v13 = *v14;
      v17 = *(v14 + 16);
      v13[4] = *(v14 + 32);
      *(v13 + 1) = v17;
      *v14 = v23;
      *(v14 + 16) = v15;
      *(v14 + 24) = v25;
      *(v14 + 31) = *(&v25 + 7);
      *(v14 + 39) = v16;
      do
      {
        v18 = v13[6];
        v13 += 5;
      }

      while (v18 > v4);
      do
      {
        v19 = *(v14 - 32);
        v14 -= 40;
      }

      while (v19 <= v4);
    }

    while (v13 < v14);
  }

  if (v13 - 5 == a1)
  {
    v21 = *(v13 - 1);
    *(v13 - 5) = v3;
    *(v13 - 4) = v4;
    if (v21 < 0)
    {
      operator delete(*(v13 - 3));
    }
  }

  else
  {
    *a1 = *(v13 - 5);
    if (*(a1 + 39) < 0)
    {
      operator delete(*v6);
    }

    v20 = *(v13 - 3);
    v6[2] = *(v13 - 1);
    *v6 = v20;
    *(v13 - 1) = 0;
    *(v13 - 5) = v3;
    *(v13 - 4) = v4;
  }

  *(v13 - 3) = v5;
  *(v13 - 9) = *&v24[7];
  *(v13 - 2) = *v24;
  *(v13 - 1) = v7;
  return v13 - 5;
}

BOOL sub_758834(uint64_t a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_757E18(a1, (a1 + 40), (a2 - 5));
        break;
      case 4:
        sub_757E18(a1, (a1 + 40), (a1 + 80));
        if (*(a2 - 4) > *(a1 + 88))
        {
          v39 = *(a1 + 80);
          v23 = *(a1 + 96);
          *&v34 = *(a1 + 104);
          *(&v34 + 7) = *(a1 + 111);
          v24 = *(a1 + 119);
          *(a1 + 96) = 0;
          *(a1 + 112) = 0;
          *(a1 + 104) = 0;
          *(a1 + 80) = *(a2 - 5);
          v25 = *(a2 - 1);
          *(a1 + 96) = *(a2 - 3);
          *(a1 + 112) = v25;
          *(a2 - 5) = v39;
          *(a2 - 3) = v23;
          *(a2 - 2) = v34;
          *(a2 - 9) = *(&v34 + 7);
          *(a2 - 1) = v24;
          if (*(a1 + 88) > *(a1 + 48))
          {
            v27 = *(a1 + 56);
            v26 = *(a1 + 40);
            *&v35 = *(a1 + 64);
            *(&v35 + 7) = *(a1 + 71);
            v28 = *(a1 + 79);
            *(a1 + 40) = *(a1 + 80);
            *(a1 + 56) = *(a1 + 96);
            *(a1 + 72) = *(a1 + 112);
            *(a1 + 80) = v26;
            *(a1 + 96) = v27;
            *(a1 + 104) = v35;
            *(a1 + 111) = *(&v35 + 7);
            *(a1 + 119) = v28;
            if (*(a1 + 48) > *(a1 + 8))
            {
              v29 = *a1;
              v30 = *(a1 + 16);
              *&v36 = *(a1 + 24);
              *(&v36 + 7) = *(a1 + 31);
              v31 = *(a1 + 39);
              v32 = *(a1 + 56);
              *a1 = *(a1 + 40);
              *(a1 + 16) = v32;
              *(a1 + 32) = *(a1 + 72);
              *(a1 + 40) = v29;
              *(a1 + 56) = v30;
              *(a1 + 64) = v36;
              *(a1 + 71) = *(&v36 + 7);
              result = 1;
              *(a1 + 79) = v31;
              return result;
            }
          }
        }

        return 1;
      case 5:
        sub_758098(a1, a1 + 40, a1 + 80, (a1 + 120), (a2 - 5));
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 4) > *(a1 + 8))
    {
      v37 = *a1;
      v3 = *(a1 + 16);
      *&v33 = *(a1 + 24);
      *(&v33 + 7) = *(a1 + 31);
      v4 = *(a1 + 39);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      *a1 = *(a2 - 5);
      v5 = *(a2 - 1);
      *(a1 + 16) = *(a2 - 3);
      *(a1 + 32) = v5;
      *(a2 - 5) = v37;
      *(a2 - 3) = v3;
      *(a2 - 2) = v33;
      *(a2 - 9) = *(&v33 + 7);
      result = 1;
      *(a2 - 1) = v4;
      return result;
    }

    return 1;
  }

LABEL_11:
  v7 = (a1 + 80);
  sub_757E18(a1, (a1 + 40), (a1 + 80));
  v10 = (a1 + 120);
  if ((a1 + 120) == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v14 = v10[1];
    if (v14 > v7[1])
    {
      v15 = *v10;
      v16 = v10[2];
      *v38 = v10[3];
      *&v38[7] = *(v10 + 31);
      v17 = *(v10 + 39);
      v10[3] = 0;
      v10[4] = 0;
      v10[2] = 0;
      v18 = v11;
      do
      {
        v19 = a1 + v18;
        v20 = *(a1 + v18 + 96);
        *(v19 + 120) = *(a1 + v18 + 80);
        *(v19 + 136) = v20;
        *(v19 + 152) = *(a1 + v18 + 112);
        *(v19 + 119) = 0;
        *(v19 + 96) = 0;
        if (v18 == -80)
        {
          v13 = a1;
          goto LABEL_14;
        }

        v18 -= 40;
      }

      while (v14 > *(v19 + 48));
      v13 = a1 + v18 + 120;
LABEL_14:
      *v13 = v15;
      *(v13 + 8) = v14;
      *(v19 + 96) = v16;
      *(v13 + 24) = *v38;
      *(v13 + 31) = *&v38[7];
      *(v13 + 39) = v17;
      if (++v12 == 8)
      {
        return v10 + 5 == a2;
      }
    }

    v7 = v10;
    v11 += 40;
    v10 += 5;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

char *sub_758C18(char *a1, char *a2, char *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (a2 - a1 >= 41 && v3 >= 0x50)
  {
    v53 = (v4 - 2) >> 1;
    v54 = v53;
    do
    {
      if (v53 >= v54)
      {
        v55 = (2 * (v54 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        v56 = &a1[40 * v55];
        if (2 * v54 + 2 < v4)
        {
          v57 = v56[1];
          v58 = v56[6];
          v59 = v57 <= v58;
          v60 = v57 <= v58 ? 0 : 40;
          v56 = (v56 + v60);
          if (!v59)
          {
            v55 = 2 * v54 + 2;
          }
        }

        v61 = &a1[40 * v54];
        v62 = v61[1];
        if (v56[1] <= v62)
        {
          v63 = *v61;
          v64 = v61[2];
          *v79 = v61[3];
          *&v79[7] = *(v61 + 31);
          v65 = *(v61 + 39);
          v61[3] = 0;
          v61[4] = 0;
          v61[2] = 0;
          do
          {
            v66 = v61;
            v61 = v56;
            *v66 = *v56;
            v67 = *(v56 + 1);
            v66[4] = v56[4];
            *(v66 + 1) = v67;
            *(v56 + 39) = 0;
            *(v56 + 16) = 0;
            if (v53 < v55)
            {
              break;
            }

            v68 = (2 * v55) | 1;
            v56 = &a1[40 * v68];
            v69 = 2 * v55 + 2;
            if (v69 < v4)
            {
              v70 = v56[1];
              v71 = v56[6];
              v72 = v70 <= v71;
              v73 = v70 <= v71 ? 0 : 40;
              v56 = (v56 + v73);
              if (!v72)
              {
                v68 = v69;
              }
            }

            v55 = v68;
          }

          while (v56[1] <= v62);
          *v61 = v63;
          v61[1] = v62;
          v61[2] = v64;
          v61[3] = *v79;
          *(v61 + 31) = *&v79[7];
          *(v61 + 39) = v65;
        }
      }

      v14 = v54-- <= 0;
    }

    while (!v14);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 80)
    {
      i = a2;
      do
      {
        if (*(i + 1) > *(a1 + 1))
        {
          v75 = *i;
          v6 = *(i + 2);
          *&v80 = *(i + 3);
          *(&v80 + 7) = *(i + 31);
          v7 = i[39];
          *(i + 3) = 0;
          *(i + 4) = 0;
          *(i + 2) = 0;
          *i = *a1;
          v8 = *(a1 + 4);
          *(i + 1) = *(a1 + 1);
          *(i + 4) = v8;
          *a1 = v75;
          *(a1 + 2) = v6;
          *(a1 + 3) = v80;
          *(a1 + 31) = *(&v80 + 7);
          a1[39] = v7;
        }

        i += 40;
      }

      while (i != a3);
      goto LABEL_34;
    }

    for (i = a2; i != a3; i += 40)
    {
      if (*(i + 1) > *(a1 + 1))
      {
        v76 = *i;
        v9 = *(i + 2);
        *&v81 = *(i + 3);
        *(&v81 + 7) = *(i + 31);
        v10 = i[39];
        *(i + 3) = 0;
        *(i + 4) = 0;
        *(i + 2) = 0;
        *i = *a1;
        v11 = *(a1 + 4);
        *(i + 1) = *(a1 + 1);
        *(i + 4) = v11;
        *a1 = v76;
        *(a1 + 2) = v9;
        *(a1 + 3) = v81;
        *(a1 + 31) = *(&v81 + 7);
        a1[39] = v10;
        if (v4 < 3)
        {
          v16 = (a1 + 40);
          v17 = 1;
          v18 = *(a1 + 1);
          if (*(a1 + 6) <= v18)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v12 = *(a1 + 6);
          v13 = *(a1 + 11);
          v14 = v12 <= v13;
          if (v12 <= v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = 40;
          }

          v16 = &a1[v15 + 40];
          if (v14)
          {
            v17 = 1;
          }

          else
          {
            v17 = 2;
          }

          v18 = *(a1 + 1);
          if (v16[1] <= v18)
          {
LABEL_24:
            v19 = *a1;
            *v77 = *(a1 + 3);
            *&v77[7] = *(a1 + 31);
            *(a1 + 3) = 0;
            *(a1 + 4) = 0;
            *(a1 + 2) = 0;
            v20 = a1;
            do
            {
              v21 = v20;
              v20 = v16;
              *v21 = *v16;
              v22 = *(v16 + 1);
              *(v21 + 4) = v16[4];
              *(v21 + 1) = v22;
              *(v16 + 39) = 0;
              *(v16 + 16) = 0;
              if (((v4 - 2) >> 1) < v17)
              {
                break;
              }

              v23 = (2 * v17) | 1;
              v16 = &a1[40 * v23];
              v24 = 2 * v17 + 2;
              if (v24 < v4)
              {
                v25 = v16[1];
                v26 = v16[6];
                v27 = v25 <= v26;
                v28 = v25 <= v26 ? 0 : 40;
                v16 = (v16 + v28);
                if (!v27)
                {
                  v23 = v24;
                }
              }

              v17 = v23;
            }

            while (v16[1] <= v18);
            *v20 = v19;
            *(v20 + 1) = v18;
            *(v20 + 2) = v9;
            *(v20 + 3) = *v77;
            *(v20 + 31) = *&v77[7];
            v20[39] = v10;
          }
        }
      }
    }
  }

LABEL_34:
  if (v3 >= 41)
  {
    v29 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 3);
    do
    {
      if (v29 >= 2)
      {
        v30 = 0;
        v78 = *a1;
        v31 = *(a1 + 2);
        *v74 = *(a1 + 3);
        *&v74[7] = *(a1 + 31);
        v32 = a1[39];
        *(a1 + 3) = 0;
        *(a1 + 4) = 0;
        v33 = a1;
        *(a1 + 2) = 0;
        do
        {
          v39 = &v33[40 * v30];
          v37 = (v39 + 40);
          v40 = (2 * v30) | 1;
          v30 = 2 * v30 + 2;
          if (v30 < v29)
          {
            v34 = *(v39 + 6);
            v35 = *(v39 + 11);
            v36 = (v39 + 80);
            if (v34 <= v35)
            {
              v30 = v40;
            }

            else
            {
              v37 = v36;
            }
          }

          else
          {
            v30 = v40;
          }

          *v33 = *v37;
          v38 = *(v37 + 1);
          *(v33 + 4) = v37[4];
          *(v33 + 1) = v38;
          *(v37 + 39) = 0;
          *(v37 + 16) = 0;
          v33 = v37;
        }

        while (v30 <= ((v29 - 2) >> 1));
        v41 = a2 - 40;
        if (v37 == (a2 - 40))
        {
          *v37 = v78;
          v37[2] = v31;
          v37[3] = *v74;
          *(v37 + 31) = *&v74[7];
          *(v37 + 39) = v32;
        }

        else
        {
          *v37 = *v41;
          v42 = *(a2 - 24);
          v37[4] = *(a2 - 1);
          *(v37 + 1) = v42;
          *v41 = v78;
          *(a2 - 3) = v31;
          *(a2 - 2) = *v74;
          *(a2 - 9) = *&v74[7];
          *(a2 - 1) = v32;
          v43 = v37 - a1 + 40;
          if (v43 >= 41)
          {
            v44 = (0xCCCCCCCCCCCCCCCDLL * (v43 >> 3) - 2) >> 1;
            v45 = &a1[40 * v44];
            v46 = v37[1];
            if (v45[1] > v46)
            {
              v47 = *v37;
              v48 = v37[2];
              *v82 = v37[3];
              *&v82[7] = *(v37 + 31);
              v49 = *(v37 + 39);
              v37[3] = 0;
              v37[4] = 0;
              v37[2] = 0;
              do
              {
                v50 = v37;
                v37 = v45;
                *v50 = *v45;
                v51 = *(v45 + 1);
                v50[4] = v45[4];
                *(v50 + 1) = v51;
                *(v45 + 39) = 0;
                *(v45 + 16) = 0;
                if (!v44)
                {
                  break;
                }

                v44 = (v44 - 1) >> 1;
                v45 = &a1[40 * v44];
              }

              while (v45[1] > v46);
              *v37 = v47;
              v37[1] = v46;
              v37[2] = v48;
              v37[3] = *v82;
              *(v37 + 31) = *&v82[7];
              *(v37 + 39) = v49;
            }
          }
        }
      }

      a2 -= 40;
      v14 = v29-- > 2;
    }

    while (v14);
  }

  return i;
}

void sub_7591D4(uint64_t a1, void *a2, uint64_t a3)
{
  v51 = *a1;
  __p = 0;
  v60 = 0;
  v61 = 0;
  v3 = *(a3 + 40);
  v4 = *(a3 + 24);
  v5 = v3 >= v4;
  if (v3 > v4)
  {
    v4 = *(a3 + 40);
  }

  v52 = v4;
  if (!v5)
  {
    v7 = 0;
    do
    {
      v8 = v3;
      v9 = sub_69AD38(*(a1 + 8), v3);
      if ((v9 & 4) != 0)
      {
        v11 = v9 & 0xFFFFFFFFFFFFFFF3 | 8;
      }

      else
      {
        v11 = v9;
      }

      v54 = v8;
      if (v8 == *(a3 + 24) - 1)
      {
        v12 = **(a1 + 16);
      }

      else
      {
        v13 = sub_69AD38(*(a1 + 8), v8 + 1);
        if ((v13 & 4) != 0)
        {
          v12 = v13 & 0xFFFFFFFFFFFFFFF3 | 8;
        }

        else
        {
          v12 = v13;
        }
      }

      v7 += sub_4D23F8(*(a1 + 8), v54, v10);
      if (v11 != v12)
      {
        if (v11)
        {
          while (1)
          {
            v14 = __clz(__rbit64(v11));
            v15 = v60;
            v16 = __p;
            if (__p != v60)
            {
              while (*v16 != v14)
              {
                v16 += 40;
                if (v16 == v60)
                {
                  goto LABEL_26;
                }
              }
            }

            if (v16 == v60)
            {
LABEL_26:
              if (v60 >= v61)
              {
                v22 = 0xCCCCCCCCCCCCCCCDLL * ((v60 - __p) >> 3) + 1;
                if (v22 > 0x666666666666666)
                {
                  goto LABEL_93;
                }

                if (0x999999999999999ALL * ((v61 - __p) >> 3) > v22)
                {
                  v22 = 0x999999999999999ALL * ((v61 - __p) >> 3);
                }

                if (0xCCCCCCCCCCCCCCCDLL * ((v61 - __p) >> 3) >= 0x333333333333333)
                {
                  v23 = 0x666666666666666;
                }

                else
                {
                  v23 = v22;
                }

                if (v23)
                {
                  if (v23 <= 0x666666666666666)
                  {
                    operator new();
                  }

LABEL_94:
                  sub_1808();
                }

                v24 = 8 * ((v60 - __p) >> 3);
                *v24 = v14;
                *(v24 + 1) = 0;
                *(v24 + 16) = 0;
                *(v24 + 24) = 0;
                *(v24 + 8) = v7;
                *(v24 + 39) = 0;
                v26 = __p;
                v25 = v60;
                v27 = (v24 + __p - v60);
                if (__p != v60)
                {
                  v28 = __p;
                  v29 = (v24 + __p - v60);
                  do
                  {
                    *v29 = *v28;
                    v30 = *(v28 + 1);
                    *(v29 + 4) = v28[4];
                    *(v29 + 1) = v30;
                    v28[3] = 0;
                    v28[4] = 0;
                    v28[2] = 0;
                    v28 += 5;
                    v29 += 40;
                  }

                  while (v28 != v25);
                  do
                  {
                    if (*(v26 + 39) < 0)
                    {
                      operator delete(v26[2]);
                    }

                    v26 += 5;
                  }

                  while (v26 != v25);
                  v26 = __p;
                }

                v21 = (v24 + 40);
                __p = v27;
                v60 = (v24 + 40);
                v61 = 0;
                if (v26)
                {
                  operator delete(v26);
                }
              }

              else
              {
                *v60 = v14;
                v15[1] = 0;
                *(v15 + 2) = 0;
                *(v15 + 3) = 0;
                *(v15 + 1) = v7;
                v21 = v15 + 40;
                v15[39] = 0;
              }

              v60 = v21;
              v17 = *(a1 + 24);
              v19 = *v17;
              v18 = v17[1];
              v20 = *v17;
              if (*v17 != v18)
              {
LABEL_48:
                while (*v20 != v14)
                {
                  v20 += 40;
                  if (v20 == v18)
                  {
                    goto LABEL_54;
                  }
                }
              }
            }

            else
            {
              *(v16 + 1) += v7;
              v16[1] = 0;
              v17 = *(a1 + 24);
              v19 = *v17;
              v18 = v17[1];
              v20 = *v17;
              if (*v17 != v18)
              {
                goto LABEL_48;
              }
            }

            if (v20 == v18)
            {
LABEL_54:
              v31 = v17[2];
              if (v18 < v31)
              {
                *v18 = v14;
                v18[1] = 0;
                *(v18 + 2) = v57;
                *(v18 + 3) = v58;
                *(v18 + 2) = 0;
                *(v18 + 3) = 0;
                *(v18 + 1) = v7;
                *(v18 + 8) = v55;
                *(v18 + 35) = *(&v55 + 3);
                v18[39] = 0;
                v17[1] = v18 + 40;
                v17[1] = v18 + 40;
                v11 &= v11 - 1;
                if (!v11)
                {
                  break;
                }
              }

              else
              {
                v32 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - v19) >> 3);
                v33 = v32 + 1;
                if (v32 + 1 > 0x666666666666666)
                {
LABEL_93:
                  sub_1794();
                }

                v34 = 0xCCCCCCCCCCCCCCCDLL * ((v31 - v19) >> 3);
                if (2 * v34 > v33)
                {
                  v33 = 2 * v34;
                }

                if (v34 >= 0x333333333333333)
                {
                  v35 = 0x666666666666666;
                }

                else
                {
                  v35 = v33;
                }

                if (v35)
                {
                  if (v35 <= 0x666666666666666)
                  {
                    operator new();
                  }

                  goto LABEL_94;
                }

                v36 = 40 * v32;
                *v36 = v14;
                *(v36 + 1) = 0;
                *(v36 + 2) = v57;
                *(v36 + 6) = v58;
                *(v36 + 16) = 0;
                *(v36 + 24) = 0;
                *(v36 + 8) = v7;
                *(v36 + 32) = v55;
                *(v36 + 35) = *(&v55 + 3);
                *(v36 + 39) = 0;
                v38 = *v17;
                v37 = v17[1];
                v39 = v36 + *v17 - v37;
                if (*v17 != v37)
                {
                  v40 = *v17;
                  v41 = v36 + *v17 - v37;
                  do
                  {
                    *v41 = *v40;
                    v42 = *(v40 + 1);
                    *(v41 + 32) = *(v40 + 4);
                    *(v41 + 16) = v42;
                    *(v40 + 3) = 0;
                    *(v40 + 4) = 0;
                    *(v40 + 2) = 0;
                    v40 += 40;
                    v41 += 40;
                  }

                  while (v40 != v37);
                  do
                  {
                    if (v38[39] < 0)
                    {
                      operator delete(*(v38 + 2));
                    }

                    v38 += 40;
                  }

                  while (v38 != v37);
                  v38 = *v17;
                }

                *v17 = v39;
                v17[1] = (v36 + 40);
                v17[2] = 0;
                if (v38)
                {
                  operator delete(v38);
                }

                v17[1] = (v36 + 40);
                v11 &= v11 - 1;
                if (!v11)
                {
                  break;
                }
              }
            }

            else
            {
              *(v20 + 1) += v7;
              v20[1] = 1;
              v11 &= v11 - 1;
              if (!v11)
              {
                break;
              }
            }
          }
        }

        v7 = 0;
      }

      v3 = v54 + 1;
    }

    while (v54 + 1 != v52);
  }

  sub_7560F0(v51, a3, &__p, &v55);
  v43 = (a2 + 99);
  v44 = a2[99];
  if (v44)
  {
    v45 = a2[100];
    v46 = a2[99];
    if (v45 != v44)
    {
      do
      {
        if (*(v45 - 1) < 0)
        {
          operator delete(*(v45 - 24));
        }

        v45 -= 40;
      }

      while (v45 != v44);
      v46 = *v43;
    }

    a2[100] = v44;
    operator delete(v46);
    *v43 = 0;
    a2[100] = 0;
    a2[101] = 0;
  }

  *v43 = v55;
  a2[101] = v56;
  v47 = __p;
  if (__p)
  {
    v48 = v60;
    v49 = __p;
    if (v60 != __p)
    {
      do
      {
        if (*(v48 - 1) < 0)
        {
          operator delete(*(v48 - 3));
        }

        v48 -= 5;
      }

      while (v48 != v47);
      v49 = __p;
    }

    v60 = v47;
    operator delete(v49);
  }
}

void sub_75979C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_7597B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_7597C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_7597D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_7597EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_759800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_759814(uint64_t a1, void *a2, uint64_t a3)
{
  v51 = *a1;
  __p = 0;
  v60 = 0;
  v61 = 0;
  v3 = *(a3 + 40);
  v4 = *(a3 + 24);
  v5 = v3 >= v4;
  if (v3 > v4)
  {
    v4 = *(a3 + 40);
  }

  v52 = v4;
  if (!v5)
  {
    v7 = 0;
    do
    {
      v8 = v3;
      v9 = sub_69AD38(*(a1 + 8), v3);
      if ((v9 & 4) != 0)
      {
        v11 = v9 & 0xFFFFFFFFFFFFFFF3 | 8;
      }

      else
      {
        v11 = v9;
      }

      v54 = v8;
      if (v8 == *(a3 + 24) - 1)
      {
        v12 = **(a1 + 16);
      }

      else
      {
        v13 = sub_69AD38(*(a1 + 8), v8 + 1);
        if ((v13 & 4) != 0)
        {
          v12 = v13 & 0xFFFFFFFFFFFFFFF3 | 8;
        }

        else
        {
          v12 = v13;
        }
      }

      v7 += sub_4D23F8(*(a1 + 8), v54, v10);
      if (v11 != v12)
      {
        if (v11)
        {
          while (1)
          {
            v14 = __clz(__rbit64(v11));
            v15 = v60;
            v16 = __p;
            if (__p != v60)
            {
              while (*v16 != v14)
              {
                v16 += 40;
                if (v16 == v60)
                {
                  goto LABEL_26;
                }
              }
            }

            if (v16 == v60)
            {
LABEL_26:
              if (v60 >= v61)
              {
                v22 = 0xCCCCCCCCCCCCCCCDLL * ((v60 - __p) >> 3) + 1;
                if (v22 > 0x666666666666666)
                {
                  goto LABEL_93;
                }

                if (0x999999999999999ALL * ((v61 - __p) >> 3) > v22)
                {
                  v22 = 0x999999999999999ALL * ((v61 - __p) >> 3);
                }

                if (0xCCCCCCCCCCCCCCCDLL * ((v61 - __p) >> 3) >= 0x333333333333333)
                {
                  v23 = 0x666666666666666;
                }

                else
                {
                  v23 = v22;
                }

                if (v23)
                {
                  if (v23 <= 0x666666666666666)
                  {
                    operator new();
                  }

LABEL_94:
                  sub_1808();
                }

                v24 = 8 * ((v60 - __p) >> 3);
                *v24 = v14;
                *(v24 + 1) = 0;
                *(v24 + 16) = 0;
                *(v24 + 24) = 0;
                *(v24 + 8) = v7;
                *(v24 + 39) = 0;
                v26 = __p;
                v25 = v60;
                v27 = (v24 + __p - v60);
                if (__p != v60)
                {
                  v28 = __p;
                  v29 = (v24 + __p - v60);
                  do
                  {
                    *v29 = *v28;
                    v30 = *(v28 + 1);
                    *(v29 + 4) = v28[4];
                    *(v29 + 1) = v30;
                    v28[3] = 0;
                    v28[4] = 0;
                    v28[2] = 0;
                    v28 += 5;
                    v29 += 40;
                  }

                  while (v28 != v25);
                  do
                  {
                    if (*(v26 + 39) < 0)
                    {
                      operator delete(v26[2]);
                    }

                    v26 += 5;
                  }

                  while (v26 != v25);
                  v26 = __p;
                }

                v21 = (v24 + 40);
                __p = v27;
                v60 = (v24 + 40);
                v61 = 0;
                if (v26)
                {
                  operator delete(v26);
                }
              }

              else
              {
                *v60 = v14;
                v15[1] = 0;
                *(v15 + 2) = 0;
                *(v15 + 3) = 0;
                *(v15 + 1) = v7;
                v21 = v15 + 40;
                v15[39] = 0;
              }

              v60 = v21;
              v17 = *(a1 + 24);
              v19 = *v17;
              v18 = v17[1];
              v20 = *v17;
              if (*v17 != v18)
              {
LABEL_48:
                while (*v20 != v14)
                {
                  v20 += 40;
                  if (v20 == v18)
                  {
                    goto LABEL_54;
                  }
                }
              }
            }

            else
            {
              *(v16 + 1) += v7;
              v16[1] = 0;
              v17 = *(a1 + 24);
              v19 = *v17;
              v18 = v17[1];
              v20 = *v17;
              if (*v17 != v18)
              {
                goto LABEL_48;
              }
            }

            if (v20 == v18)
            {
LABEL_54:
              v31 = v17[2];
              if (v18 < v31)
              {
                *v18 = v14;
                v18[1] = 0;
                *(v18 + 2) = v57;
                *(v18 + 3) = v58;
                *(v18 + 2) = 0;
                *(v18 + 3) = 0;
                *(v18 + 1) = v7;
                *(v18 + 8) = v55;
                *(v18 + 35) = *(&v55 + 3);
                v18[39] = 0;
                v17[1] = v18 + 40;
                v17[1] = v18 + 40;
                v11 &= v11 - 1;
                if (!v11)
                {
                  break;
                }
              }

              else
              {
                v32 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - v19) >> 3);
                v33 = v32 + 1;
                if (v32 + 1 > 0x666666666666666)
                {
LABEL_93:
                  sub_1794();
                }

                v34 = 0xCCCCCCCCCCCCCCCDLL * ((v31 - v19) >> 3);
                if (2 * v34 > v33)
                {
                  v33 = 2 * v34;
                }

                if (v34 >= 0x333333333333333)
                {
                  v35 = 0x666666666666666;
                }

                else
                {
                  v35 = v33;
                }

                if (v35)
                {
                  if (v35 <= 0x666666666666666)
                  {
                    operator new();
                  }

                  goto LABEL_94;
                }

                v36 = 40 * v32;
                *v36 = v14;
                *(v36 + 1) = 0;
                *(v36 + 2) = v57;
                *(v36 + 6) = v58;
                *(v36 + 16) = 0;
                *(v36 + 24) = 0;
                *(v36 + 8) = v7;
                *(v36 + 32) = v55;
                *(v36 + 35) = *(&v55 + 3);
                *(v36 + 39) = 0;
                v38 = *v17;
                v37 = v17[1];
                v39 = v36 + *v17 - v37;
                if (*v17 != v37)
                {
                  v40 = *v17;
                  v41 = v36 + *v17 - v37;
                  do
                  {
                    *v41 = *v40;
                    v42 = *(v40 + 1);
                    *(v41 + 32) = *(v40 + 4);
                    *(v41 + 16) = v42;
                    *(v40 + 3) = 0;
                    *(v40 + 4) = 0;
                    *(v40 + 2) = 0;
                    v40 += 40;
                    v41 += 40;
                  }

                  while (v40 != v37);
                  do
                  {
                    if (v38[39] < 0)
                    {
                      operator delete(*(v38 + 2));
                    }

                    v38 += 40;
                  }

                  while (v38 != v37);
                  v38 = *v17;
                }

                *v17 = v39;
                v17[1] = (v36 + 40);
                v17[2] = 0;
                if (v38)
                {
                  operator delete(v38);
                }

                v17[1] = (v36 + 40);
                v11 &= v11 - 1;
                if (!v11)
                {
                  break;
                }
              }
            }

            else
            {
              *(v20 + 1) += v7;
              v20[1] = 1;
              v11 &= v11 - 1;
              if (!v11)
              {
                break;
              }
            }
          }
        }

        v7 = 0;
      }

      v3 = v54 + 1;
    }

    while (v54 + 1 != v52);
  }

  sub_7568F0(v51, a3, &__p, &v55);
  v43 = (a2 + 99);
  v44 = a2[99];
  if (v44)
  {
    v45 = a2[100];
    v46 = a2[99];
    if (v45 != v44)
    {
      do
      {
        if (*(v45 - 1) < 0)
        {
          operator delete(*(v45 - 24));
        }

        v45 -= 40;
      }

      while (v45 != v44);
      v46 = *v43;
    }

    a2[100] = v44;
    operator delete(v46);
    *v43 = 0;
    a2[100] = 0;
    a2[101] = 0;
  }

  *v43 = v55;
  a2[101] = v56;
  v47 = __p;
  if (__p)
  {
    v48 = v60;
    v49 = __p;
    if (v60 != __p)
    {
      do
      {
        if (*(v48 - 1) < 0)
        {
          operator delete(*(v48 - 3));
        }

        v48 -= 5;
      }

      while (v48 != v47);
      v49 = __p;
    }

    v60 = v47;
    operator delete(v49);
  }
}

void sub_759DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_759DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_759E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_759E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_759E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_759E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_759E54()
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
  xmmword_27A53D0 = 0u;
  unk_27A53E0 = 0u;
  dword_27A53F0 = 1065353216;
  sub_3A9A34(&xmmword_27A53D0, v0, v0);
  sub_3A9A34(&xmmword_27A53D0, v3, v3);
  sub_3A9A34(&xmmword_27A53D0, __p, __p);
  sub_3A9A34(&xmmword_27A53D0, v9, v9);
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
    qword_27A53A8 = 0;
    qword_27A53B0 = 0;
    qword_27A53A0 = 0;
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

void sub_75A09C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A53B8)
  {
    qword_27A53C0 = qword_27A53B8;
    operator delete(qword_27A53B8);
  }

  _Unwind_Resume(exception_object);
}

void sub_75A148(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  sub_21E2C18(a2, 0, *(a3 + 968));
}

void sub_75A254(_BYTE *a1@<X1>, int a2@<W2>, _BYTE *a3@<X8>)
{
  if (a1[1] == 1)
  {
    v27.__r_.__value_.__r.__words[2] = 0x700000000000000;
    *&v27.__r_.__value_.__l.__data_ = *"_PLURAL";
    if (!a2)
    {
LABEL_3:
      v5 = 0;
      HIBYTE(v26) = 0;
      LOBYTE(__p[0]) = 0;
      goto LABEL_6;
    }
  }

  else
  {
    *(&v27.__r_.__value_.__s + 23) = 0;
    v27.__r_.__value_.__s.__data_[0] = 0;
    if (!a2)
    {
      goto LABEL_3;
    }
  }

  *__p = *"_SECONDARY";
  v26 = 0xA00000000000000;
  v5 = 10;
LABEL_6:
  std::string::append(&v27, __p, v5);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  switch(*a1)
  {
    case 0:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v12 = size + 9;
      if (size + 9 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v12;
      a3[8] = 68;
      *a3 = *"SIDE_ROAD";
      v21 = a3 + 9;
      if (size)
      {
        goto LABEL_118;
      }

      goto LABEL_122;
    case 1:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v13 = size + 9;
      if (size + 9 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v13 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v13;
      a3[8] = 68;
      *a3 = *"MAIN_ROAD";
      v21 = a3 + 9;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 2:
    case 3:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v7 = size + 9;
      if (size + 9 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v7 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v7;
      a3[8] = 72;
      *a3 = *"BIKE_PATH";
      v21 = a3 + 9;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 4:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v10 = size + 14;
      if (size + 14 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v10 >= 0x17)
      {
        operator new();
      }

      a3[9] = 0;
      *(a3 + 5) = 0;
      *(a3 + 3) = 0;
      *(a3 + 2) = 0;
      a3[23] = v10;
      strcpy(a3, "PROTECTE");
      v21 = a3 + 14;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 5:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v15 = size + 9;
      if (size + 9 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v15;
      a3[8] = 69;
      *a3 = *"BIKE_LANE";
      v21 = a3 + 9;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 6:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v17 = size + 11;
      if (size + 11 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v17 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v17;
      *(a3 + 7) = 1145130834;
      *a3 = *"SHARED_ROAD";
      v21 = a3 + 11;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 7:
      a3[23] = 15;
      strcpy(a3, "PEDESTRIAN_PATH");
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_142;
      }

      return;
    case 8:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = v27.__r_.__value_.__l.__size_;
      }

      v20 = v19 + 8;
      if (v19 + 8 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v20 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      v23 = a3 + 8;
      *(a3 + 2) = 0;
      a3[23] = v20;
      *a3 = 0x4B4C415745444953;
      if (v19)
      {
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &v27;
        }

        else
        {
          v24 = v27.__r_.__value_.__r.__words[0];
        }

        memmove(v23, v24, v19);
      }

      v23[v19] = 0;
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_142;
      }

      return;
    case 9:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v11 = size + 10;
      if (size + 10 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v11 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v11;
      *(a3 + 4) = 18516;
      *a3 = *"PAVED_PATH";
      v21 = a3 + 10;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 0xA:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v18 = size + 12;
      if (size + 12 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v18 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v18;
      *(a3 + 2) = 1213481296;
      *a3 = *"UNPAVED_PATH";
      v21 = a3 + 12;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 0xB:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v9 = size + 12;
      if (size + 12 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v9 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v9;
      *(a3 + 2) = 1145130834;
      *a3 = *"UNPAVED_ROAD";
      v21 = a3 + 12;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 0xC:
      a3[23] = 6;
      strcpy(a3, "STAIRS");
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_142;
      }

      return;
    case 0xD:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v16 = size + 22;
      if (size + 22 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      a3[17] = 0;
      *(a3 + 9) = 0;
      *(a3 + 5) = 0;
      a3[23] = v16;
      strcpy(a3, "FERRY_INFRA_DESC");
      v21 = a3 + 22;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 0xE:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      if (size + 32 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (size + 32 > 0x16)
      {
        operator new();
      }

      qmemcpy(a3, "RAILWAY_SHUTTLE_INFRA_DESCRIPTOR", 32);
      v21 = a3 + 32;
      goto LABEL_118;
    case 0xF:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      if (size + 24 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (size + 24 > 0x16)
      {
        operator new();
      }

      qmemcpy(a3, "SHUTTLE_INFRA_DESCRIPTOR", 24);
      v21 = a3 + 24;
      goto LABEL_118;
    case 0x10:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v8 = size + 11;
      if (size + 11 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v8 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v8;
      *(a3 + 7) = 1213481296;
      *a3 = *"SHARED_PATH";
      v21 = a3 + 11;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 0x11:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v14 = size + 10;
      if (size + 10 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_143:
        sub_3244();
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v14;
      *(a3 + 4) = 17748;
      *a3 = *"BIKE_ROUTE";
      v21 = a3 + 10;
      if (!size)
      {
        goto LABEL_122;
      }

LABEL_118:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v27;
      }

      else
      {
        v22 = v27.__r_.__value_.__r.__words[0];
      }

      memmove(v21, v22, size);
LABEL_122:
      v21[size] = 0;
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_142;
    default:
      *a3 = 0;
      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_142:
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      return;
  }
}

void sub_75AE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (a21 < 0)
    {
LABEL_5:
      operator delete(a16);
      _Unwind_Resume(a1);
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

void sub_75AED0(uint64_t **a1@<X0>, void *a2@<X1>, std::string *a3@<X8>)
{
  v4 = a2[1];
  if (*a2 == v4)
  {
    *&a3->__r_.__value_.__l.__data_ = 0uLL;
    a3->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - *a2) >> 3) != 2)
  {
    a3->__r_.__value_.__r.__words[2] = 0xE00000000000000;
    *&a3->__r_.__value_.__l.__data_ = *"{description1}";
    v7 = a2[1] - *a2;
    if (!v7)
    {
      return;
    }

    goto LABEL_10;
  }

  v8 = sub_9274F4(*a1, "TWO_ROAD_DESCRIPTIONS");
  if (*(v8 + 23) < 0)
  {
    sub_325C(a3, *v8, v8[1]);
    v7 = a2[1] - *a2;
    if (!v7)
    {
      return;
    }

    goto LABEL_10;
  }

  v9 = *v8;
  a3->__r_.__value_.__r.__words[2] = v8[2];
  *&a3->__r_.__value_.__l.__data_ = v9;
  v7 = a2[1] - *a2;
  if (v7)
  {
LABEL_10:
    v10 = 0;
    v11 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
    do
    {
      v12 = sub_75B1D4(a2, v10);
      sub_75A254(v12, v10 != 0, v27);
      v13 = sub_9274F4(*a1, v27);
      if (*(v13 + 23) < 0)
      {
        sub_325C(__p, *v13, v13[1]);
      }

      else
      {
        v14 = *v13;
        v26 = v13[2];
        *__p = v14;
      }

      if (v10 == 1)
      {
        v15 = *"{description2}";
      }

      else
      {
        v15 = *"{description1}";
      }

      v24 = v15;
      size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v17 = a3;
      }

      else
      {
        v17 = a3->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = a3->__r_.__value_.__l.__size_;
      }

      if (size >= 14)
      {
        v18 = v17 + size;
        v19 = v17;
        do
        {
          v20 = memchr(v19, 123, size - 13);
          if (!v20)
          {
            break;
          }

          if (*v20 == v24 && *(v20 + 6) == *(&v24 + 6))
          {
            if (v20 != v18 && v20 - v17 != -1)
            {
              if (SHIBYTE(v26) >= 0)
              {
                v22 = __p;
              }

              else
              {
                v22 = __p[0];
              }

              if (SHIBYTE(v26) >= 0)
              {
                v23 = HIBYTE(v26);
              }

              else
              {
                v23 = __p[1];
              }

              std::string::replace(a3, v20 - v17, 0xEuLL, v22, v23);
            }

            break;
          }

          v19 = (v20 + 1);
          size = v18 - v19;
        }

        while (v18 - v19 >= 14);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
        if (v28 < 0)
        {
LABEL_45:
          operator delete(v27[0]);
        }
      }

      else if (v28 < 0)
      {
        goto LABEL_45;
      }

      ++v10;
    }

    while (v10 != v11);
  }
}

void sub_75B150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v24 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((*(v24 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v24);
  _Unwind_Resume(exception_object);
}

unint64_t sub_75B1D4(void *a1, unint64_t a2)
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

void sub_75B328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

void sub_75E2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_37:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_38:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_39:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_40:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_41:
              operator delete(a70);
              if ((a69 & 0x80000000) == 0)
              {
LABEL_42:
                if (a67 < 0)
                {
LABEL_43:
                  operator delete(a66);
                  if ((a65 & 0x80000000) == 0)
                  {
LABEL_44:
                    _Unwind_Resume(a1);
                  }

LABEL_36:
                  operator delete(a63);
                  _Unwind_Resume(a1);
                }

LABEL_35:
                if ((a65 & 0x80000000) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_36;
              }

LABEL_34:
              operator delete(a68);
              if (a67 < 0)
              {
                goto LABEL_43;
              }

              goto LABEL_35;
            }

LABEL_33:
            if ((a69 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_41;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_37;
  }

  goto LABEL_29;
}

void sub_75E4CC(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_75E808(a1, a2, &v10);
  v5 = v10;
  if (v10 != v11)
  {
    do
    {
      v6 = *(v5 + 2);
      if (v6 <= 1)
      {
        v6 = 1;
      }

      v7 = (v6 - 1);
      v8 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2) - 1;
      v9 = v5[2];
      if (v9 + 1 < v8)
      {
        v8 = v9 + 1;
      }

      if (v8 != v7)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((12 * v8 - 4 * (v7 + 2 * v7)) >> 2) <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1794();
      }

      v5 += 3;
    }

    while (v5 != v11);
    v5 = v10;
  }

  if (v5)
  {
    operator delete(v5);
  }
}

void sub_75E76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18)
{
  v21 = *v19;
  if (*v19)
  {
    *(v18 + 16) = v21;
    operator delete(v21);
  }

  *(a11 + 8) = v18;
  if (__p)
  {
    operator delete(__p);
    v22 = a15;
    if (!a15)
    {
LABEL_5:
      v23 = a18;
      if (!a18)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v22 = a15;
    if (!a15)
    {
      goto LABEL_5;
    }
  }

  operator delete(v22);
  v23 = a18;
  if (!a18)
  {
LABEL_6:
    sub_37484(a11);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v23);
  sub_37484(a11);
  _Unwind_Resume(a1);
}

void sub_75E808(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t **a3@<X8>)
{
  v4 = *a1;
  v40[0] = off_266C618;
  v40[1] = a1;
  v41 = v40;
  sub_2CD1E0(v4, v40, a2, __p);
  if (v41 == v40)
  {
    (*(*v41 + 32))(v41);
    v5 = __p[1];
    v6 = __p[0];
    if (__p[0] == __p[1])
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v41)
    {
      (*(*v41 + 40))();
    }

    v5 = __p[1];
    v6 = __p[0];
    if (__p[0] == __p[1])
    {
      goto LABEL_34;
    }
  }

  v7 = v6;
  while (1)
  {
    v8 = *v7;
    if (*v7 != *(v7 + 1))
    {
      break;
    }

    v7 += 24;
    if (v7 == v5)
    {
      goto LABEL_34;
    }
  }

  if (v7 == v5)
  {
LABEL_34:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (!v6)
    {
      return;
    }

LABEL_35:
    v26 = __p[1];
    v27 = v6;
    if (__p[1] != v6)
    {
      v28 = __p[1];
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

      while (v28 != v6);
      v27 = __p[0];
    }

    __p[1] = v6;
    operator delete(v27);
    return;
  }

  v38 = a3;
  v9 = v5 - v6;
  if (!v9)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = __p[0];
    if (!__p[0])
    {
      return;
    }

    goto LABEL_35;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
  v15 = HIDWORD(*v8);
  v16 = *v8;
  while (1)
  {
    while (1)
    {
      v17 = sub_75EF04(__p, v11);
      if (v17[1] - *v17 != 8)
      {
        break;
      }

      v18 = sub_75EF04(__p, v11);
      v19 = *v18;
      if (**v18 != v16 || v19[1] != v15 || v11 == -1 - 0x5555555555555555 * ((__p[1] - __p[0]) >> 3))
      {
        v20 = v12 - v10;
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v10) >> 3);
        v22 = v21 + 1;
        if (v21 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        if (0x5555555555555556 * (-v10 >> 3) > v22)
        {
          v22 = 0x5555555555555556 * (-v10 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v10 >> 3) >= 0x555555555555555)
        {
          v23 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          if (v23 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v24 = 24 * v21;
        *v24 = v16 | (v15 << 32);
        *(v24 + 8) = v13;
        *(v24 + 16) = v11;
        v12 = 24 * v21 + 24;
        v25 = (v24 + 24 * (v20 / -24));
        memcpy(v25, v10, v20);
        if (v10)
        {
          operator delete(v10);
        }

        v10 = v25;
        v16 = *v19;
        v15 = HIDWORD(*v19);
        v13 = v11;
      }

      if (v14 == ++v11)
      {
LABEL_46:
        *v38 = v10;
        v38[1] = v12;
        v38[2] = 0;
        v6 = __p[0];
        if (__p[0])
        {
          goto LABEL_35;
        }

        return;
      }
    }

    if (v11 == -1 - 0x5555555555555555 * ((__p[1] - __p[0]) >> 3))
    {
      break;
    }

    if (v14 == ++v11)
    {
      goto LABEL_46;
    }
  }

  v31 = v11 + 1;
  v32 = v12 - v10;
  v33 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v10) >> 3) + 1;
  if (v33 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (-v10 >> 3) > v33)
  {
    v33 = 0x5555555555555556 * (-v10 >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * (-v10 >> 3) >= 0x555555555555555)
  {
    v34 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v34 = v33;
  }

  if (v34)
  {
    if (v34 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v35 = (8 * ((v12 - v10) >> 3));
  *v35 = v16 | (v15 << 32);
  v35[1] = v13;
  v35[2] = v31;
  v36 = v35 + 3;
  v37 = (v35 - v32);
  memcpy(v35 - v32, v10, v32);
  if (v10)
  {
    operator delete(v10);
  }

  *v38 = v37;
  v38[1] = v36;
  v38[2] = 0;
  v6 = __p[0];
  if (__p[0])
  {
    goto LABEL_35;
  }
}

void sub_75ED04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_34BE0(va);
  if (v5)
  {
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_75ED44(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>, void *a5@<X2>)
{
  sub_75F120(a1, a2, a5, &v23);
  v9 = *(a3 + 24);
  if (v9 == 1)
  {
    sub_75F120(a1, a2, a3, __p);
    *v20 = *__p;
    v21 = v19;
    v22 = 1;
  }

  else
  {
    LOBYTE(v20[0]) = 0;
    v22 = 0;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 2) <= 1)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v10.n128_f64[0] = sub_2CBF08(*a1, *a2, __p);
  v12 = __p[0];
  if (__p[0] != __p[1])
  {
    sub_75F214(a1, __p, &v23, a4, v10, v11);
    v12 = __p[0];
    if (__p[0])
    {
      goto LABEL_9;
    }

LABEL_18:
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_9:
  v13 = __p[1];
  v14 = v12;
  if (__p[1] != v12)
  {
    v15 = __p[1];
    do
    {
      v17 = *(v15 - 3);
      v15 -= 24;
      v16 = v17;
      if (v17)
      {
        *(v13 - 2) = v16;
        operator delete(v16);
      }

      v13 = v15;
    }

    while (v15 != v12);
    v14 = __p[0];
  }

  __p[1] = v12;
  operator delete(v14);
  if (v22)
  {
LABEL_19:
    if (v20[0])
    {
      operator delete(v20[0]);
    }
  }

LABEL_21:
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_75EEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  sub_34BE0(&a9);
  if ((v19 & 1) != 0 && __p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_75EF04(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 24 * a2;
}

void sub_75F040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_75F120(uint64_t *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_2CB8B4(*a1, *a2, &__p);
  sub_75FA98(&__p, a3, a4);
  v6 = __p;
  if (__p)
  {
    v7 = v18;
    v8 = __p;
    if (v18 != __p)
    {
      v9 = v18;
      do
      {
        v12 = *(v9 - 3);
        v9 -= 3;
        v11 = v12;
        if (v12)
        {
          v13 = *(v7 - 2);
          v10 = v11;
          if (v13 != v11)
          {
            v14 = *(v7 - 2);
            do
            {
              v16 = *(v14 - 3);
              v14 -= 24;
              v15 = v16;
              if (v16)
              {
                *(v13 - 2) = v15;
                operator delete(v15);
              }

              v13 = v14;
            }

            while (v14 != v11);
            v10 = *v9;
          }

          *(v7 - 2) = v11;
          operator delete(v10);
        }

        v7 = v9;
      }

      while (v9 != v6);
      v8 = __p;
    }

    v18 = v6;
    operator delete(v8);
  }
}

void sub_75F200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_52FF0(va);
  _Unwind_Resume(a1);
}

void sub_75F214(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a5@<X8>, __n128 q0_0@<Q0>, double a6@<D1>)
{
  __p = 0;
  v75 = 0;
  v76 = 0;
  v10 = *a2;
  v11 = a2[1];
  p_p = &__p;
  LOBYTE(v78) = 0;
  if (v11 != v10)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = 0;
  v13 = *a3;
  v14 = a3[1];
  v15 = *(v14 - 12) - **a3;
  if (v15)
  {
    v17 = *(v14 - 8);
    v16 = v13[1];
  }

  else
  {
    v16 = v13[1];
    v17 = *(v14 - 8);
    v18 = 0.0;
    if (v16 == v17)
    {
      goto LABEL_16;
    }
  }

  v19 = --v15;
  if (v15 < -v15)
  {
    v19 = v15;
  }

  q0_0.n128_f64[0] = atan2(v17 - v16, v19);
  a6 = 180.0;
  v18 = (q0_0.n128_f64[0] + 1.57079633) * 180.0 / 3.14159265;
  if (v18 >= 180.0)
  {
    a6 = 180.0;
    do
    {
      v18 = v18 + -360.0;
    }

    while (v18 >= 180.0);
  }

  q0_0.n128_u64[0] = 0xC066800000000000;
  if (v18 < -180.0)
  {
    q0_0.n128_u64[0] = 0x4076800000000000;
    a6 = -180.0;
    do
    {
      v18 = v18 + 360.0;
    }

    while (v18 < -180.0);
  }

LABEL_16:
  v20 = __p;
  if (!__p)
  {
    goto LABEL_43;
  }

  do
  {
    v21 = *v20;
    v22 = *(v20 + 1);
    v23 = *(v22 - 12) - **v20;
    if (v23)
    {
      v25 = *(v22 - 8);
      v24 = v21[1];
    }

    else
    {
      v24 = v21[1];
      v25 = *(v22 - 8);
      i = 0.0;
      if (v24 == v25)
      {
        goto LABEL_30;
      }
    }

    v27 = --v23;
    if (v23 < -v23)
    {
      v27 = v23;
    }

      ;
    }

    while (i < -180.0)
    {
      i = i + 360.0;
    }

LABEL_30:
    v28 = i + 180.0;
    v29 = v28 + -360.0;
    if (v28 <= 360.0)
    {
      v29 = v28;
    }

    sub_455D0(v18, v29);
    a6 = *(a1 + 8);
    if (q0_0.n128_f64[0] < a6)
    {
      v30 = *v20;
      v31 = *(v20 + 1);
      v32 = v31 - 12;
      if (*v20 != v31 && v32 > v30)
      {
        v34 = v30 + 3;
        do
        {
          v35 = *(v34 - 1);
          v36 = *(v34 - 3);
          v37 = *(v32 + 8);
          *(v34 - 3) = *v32;
          *(v34 - 1) = v37;
          *v32 = v36;
          *(v32 + 8) = v35;
          v32 -= 12;
          v38 = v34 >= v32;
          v34 += 3;
        }

        while (!v38);
      }
    }

    v20 += 24;
  }

  while (v20);
  v20 = __p;
  v12 = v75;
LABEL_43:
  v73 = a5;
  if (v20 == v12)
  {
    v48 = v12;
    v59 = v75;
    if (v12 != v75)
    {
      goto LABEL_80;
    }

    goto LABEL_75;
  }

  v39 = *v20;
  v40 = *(v20 + 1);
  v41 = *(v40 - 12) - **v20;
  if (v41)
  {
    v43 = *(v40 - 8);
    v42 = v39[1];
  }

  else
  {
    v42 = v39[1];
    v43 = *(v40 - 8);
    j = 0.0;
    if (v42 == v43)
    {
      goto LABEL_55;
    }
  }

  v45 = --v41;
  if (v41 < -v41)
  {
    v45 = v41;
  }

    ;
  }

  while (j < -180.0)
  {
    j = j + 360.0;
  }

LABEL_55:
  sub_455D0(j, v18);
  a6 = *(a1 + 8);
  if (q0_0.n128_f64[0] <= a6)
  {
    sub_760014(v46, a3, v20, q0_0.n128_f64[0], a6);
  }

  if (v20 == v12)
  {
    v48 = v20;
    v59 = v75;
    if (v20 != v75)
    {
      goto LABEL_80;
    }

LABEL_75:
    v60 = a3;
    v61 = __p;
    v62 = v73;
    if (__p != v59)
    {
      goto LABEL_86;
    }

LABEL_76:
    *v62 = 0;
    v62[1] = 0;
    v62[2] = 0;
    if (v61)
    {
      goto LABEL_89;
    }

    return;
  }

  v47 = v20 + 24;
  if (v20 + 24 != v12)
  {
    v48 = v20;
    while (1)
    {
      v49 = v20;
      v20 = v47;
      v50 = *(v49 + 3);
      v51 = *(v49 + 4);
      v52 = *(v51 - 12);
      v53 = v52 - *v50;
      if (v52 != *v50)
      {
        break;
      }

      v54 = v50[1];
      v55 = *(v51 - 8);
      k = 0.0;
      if (v54 != v55)
      {
        goto LABEL_65;
      }

LABEL_72:
      sub_455D0(k, v18);
      a6 = *(a1 + 8);
      if (q0_0.n128_f64[0] <= a6)
      {
        sub_760014(v58, a3, v20, q0_0.n128_f64[0], a6);
      }

      v47 = v20 + 24;
      if (v20 + 24 == v12)
      {
        goto LABEL_79;
      }
    }

    v55 = *(v51 - 8);
    v54 = v50[1];
LABEL_65:
    v57 = --v53;
    if (v53 < -v53)
    {
      v57 = v53;
    }

      ;
    }

    while (k < -180.0)
    {
      k = k + 360.0;
    }

    goto LABEL_72;
  }

  v48 = v20;
LABEL_79:
  v59 = v75;
  if (v48 == v75)
  {
    goto LABEL_75;
  }

LABEL_80:
  v62 = v73;
  v60 = a3;
  v63 = v59;
  v59 = v48;
  if (v63 != v48)
  {
    v64 = v63;
    do
    {
      v66 = *(v64 - 3);
      v64 -= 24;
      v65 = v66;
      if (v66)
      {
        *(v63 - 2) = v65;
        operator delete(v65);
      }

      v63 = v64;
    }

    while (v64 != v48);
  }

  v75 = v48;
  v61 = __p;
  if (__p == v48)
  {
    goto LABEL_76;
  }

LABEL_86:
  p_p = a1;
  v78 = v60;
  sub_7605CC(v61, v59, &p_p, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v59 - v61) >> 3)), 1, q0_0, a6);
  v61 = __p;
  v62[1] = 0;
  v62[2] = 0;
  *v62 = 0;
  v67 = *(v61 + 1);
  if (v67 != *v61)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v67 - *v61) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

LABEL_89:
  v68 = v75;
  v69 = v61;
  if (v75 != v61)
  {
    v70 = v75;
    do
    {
      v72 = *(v70 - 3);
      v70 -= 24;
      v71 = v72;
      if (v72)
      {
        *(v68 - 2) = v71;
        operator delete(v71);
      }

      v68 = v70;
    }

    while (v70 != v61);
    v69 = __p;
  }

  v75 = v61;
  operator delete(v69);
}

void sub_75FA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_75FA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_35390(va);
  _Unwind_Resume(a1);
}

void sub_75FA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_75FA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_35390(va);
  _Unwind_Resume(a1);
}

void sub_75FA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_75FA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_75FA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_75FA98(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = (a2[1] - *a2) >> 2;
  v29 = -1;
  v7 = 0xAAAAAAAAAAAAAAABLL * v6;
  v30 = 0x7FFFFFFF;
  v27 = -1;
  v28 = 0x7FFFFFFF;
  __p = 0;
  v25 = 0;
  v26 = 0;
  v8 = 1;
  while (v7 != v8)
  {
    v9 = sub_41224(a2, v8 - 1);
    v10 = sub_41224(a2, v8++);
    if (sub_3BF04(v9, v10, a1, &__p))
    {
      v11 = *(__p + 2);
      v29 = *__p;
      v30 = v11;
      v12 = v8 - 1;
      goto LABEL_6;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2) - 2;
  if (v12 + 1 < v13)
  {
    v14 = v12 + 1;
  }

  else
  {
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2) - 2;
  }

  if (v13 <= v12 + 1)
  {
LABEL_12:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v17 = v7 - v12 + 2;
    if (v7 - v12 != -2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    while (1)
    {
      v15 = sub_41224(a2, v13);
      v16 = sub_41224(a2, v13 + 1);
      if (sub_3BF04(v15, v16, a1, &__p))
      {
        break;
      }

      if (v14 == --v13)
      {
        goto LABEL_12;
      }
    }

    v18 = *(v25 - 1);
    v27 = *(v25 - 3);
    v28 = v18;
    v7 = v13 + 1;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v19 = v13 + 1 - v12;
    v17 = v19 + 2;
    if (v19 != -2)
    {
LABEL_16:
      if (v17 < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }
  }

  if (v7 != v12)
  {
    v20 = *a2 + 12 * v7;
    v21 = (*a2 + 12 * v12);
    do
    {
      sub_376F0(a3, v21);
      v21 = (v21 + 12);
    }

    while (v21 != v20);
  }

  if (v29 != -1 || HIDWORD(v29) != -1)
  {
    sub_75FD84(a3, *a3, &v29);
  }

  if (v27 != -1 || HIDWORD(v27) != -1)
  {
    sub_376F0(a3, &v27);
  }

  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }
}

void sub_75FD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
    v14 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

char *sub_75FD84(char **a1, char *__src, uint64_t *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 < v7)
  {
    if (__src == v6)
    {
      v15 = *a3;
      *(v6 + 2) = *(a3 + 2);
      *v6 = v15;
      a1[1] = v6 + 12;
      return v4;
    }

    v8 = __src + 12;
    if (v6 < 0xC)
    {
      v9 = a1[1];
      a1[1] = v6;
      if (v6 == v8)
      {
LABEL_21:
        v17 = v9 <= a3 || v4 > a3;
        v18 = 12;
        if (v17)
        {
          v18 = 0;
        }

        v19 = (a3 + v18);
        v20 = *v19;
        *(v4 + 2) = *(v19 + 2);
        *v4 = v20;
        return v4;
      }
    }

    else
    {
      v9 = v6 + 12;
      v10 = *(v6 - 12);
      *(v6 + 2) = *(v6 - 1);
      *v6 = v10;
      a1[1] = v6 + 12;
      if (v6 == v8)
      {
        goto LABEL_21;
      }
    }

    memmove(__src + 12, __src, v6 - v8);
    v9 = a1[1];
    goto LABEL_21;
  }

  v11 = *a1;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 2) + 1;
  if (v12 > 0x1555555555555555)
  {
    sub_1794();
  }

  v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 2);
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

  v16 = 4 * ((__src - v11) >> 2);
  if (!(0xAAAAAAAAAAAAAAABLL * ((__src - v11) >> 2)))
  {
    if (__src - v11 < 1)
    {
      operator new();
    }

    v16 = 4 * ((__src - v11) >> 2) - 12 * ((1 - 0x5555555555555555 * ((4 * ((__src - v11) >> 2)) >> 2) + ((1 - 0x5555555555555555 * ((4 * ((__src - v11) >> 2)) >> 2)) >> 63)) >> 1);
  }

  v21 = *a3;
  *(v16 + 8) = *(a3 + 2);
  *v16 = v21;
  memcpy((v16 + 12), __src, a1[1] - __src);
  v22 = *a1;
  v23 = (v16 + 12 + a1[1] - v4);
  a1[1] = v4;
  v24 = v4 - v22;
  v25 = (v16 - (v4 - v22));
  memcpy(v25, v22, v24);
  v26 = *a1;
  *a1 = v25;
  a1[1] = v23;
  a1[2] = 0;
  if (v26)
  {
    operator delete(v26);
  }

  return v16;
}