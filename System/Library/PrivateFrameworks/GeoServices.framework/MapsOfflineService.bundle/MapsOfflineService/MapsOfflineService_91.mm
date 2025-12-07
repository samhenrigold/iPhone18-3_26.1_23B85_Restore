void sub_5C3764(_Unwind_Exception *a1)
{
  if (*(v2 + 1968) == 1)
  {
    sub_52A624(v2 + 1800);
  }

  sub_5706DC(v3);
  sub_570440(v2 + 1136);
  if (*(v2 + 1128))
  {
    sub_3A9518(v1);
  }

  _Unwind_Resume(a1);
}

void sub_5C37D8(uint64_t a1)
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
    sub_53A868(v2);
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
    if (v15 == v14)
    {
      *(a1 + 8) = v14;
    }

    else
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
      *(a1 + 8) = v14;
    }

    operator delete(v16);
  }
}

uint64_t sub_5C39A8(uint64_t a1)
{
  v2 = *(a1 + 448);
  if (v2)
  {
    *(a1 + 456) = v2;
    operator delete(v2);
  }

  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
    if ((*(a1 + 407) & 0x80000000) == 0)
    {
LABEL_5:
      v3 = *(a1 + 368);
      if (v3 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 407) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 384));
  v3 = *(a1 + 368);
  if (v3 != -1)
  {
LABEL_9:
    (off_266B860[v3])(&v5, a1 + 336);
  }

LABEL_10:
  *(a1 + 368) = -1;
  sub_53A868(a1 + 176);
  sub_53A868(a1 + 16);
  return a1;
}

uint64_t sub_5C3A5C(uint64_t a1)
{
  if (*(a1 + 1999) < 0)
  {
    operator delete(*(a1 + 1976));
    if (*(a1 + 1968) != 1)
    {
LABEL_3:
      v2 = *(a1 + 1752);
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_9:
      v4 = *(a1 + 1760);
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_3A9518(v4 - 1120);
        }

        while (v4 != v2);
        v5 = *(a1 + 1752);
      }

      *(a1 + 1760) = v2;
      operator delete(v5);
      sub_570440(a1 + 1136);
      if (*(a1 + 1128) == 1)
      {
        goto LABEL_5;
      }

      return a1;
    }
  }

  else if (*(a1 + 1968) != 1)
  {
    goto LABEL_3;
  }

  sub_52A624(a1 + 1800);
  v2 = *(a1 + 1752);
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_570440(a1 + 1136);
  if (*(a1 + 1128) == 1)
  {
LABEL_5:
    sub_3A9518(a1 + 8);
  }

  return a1;
}

uint64_t sub_5C3B24(uint64_t *a1, uint64_t a2, _DWORD *a3, int *a4)
{
  v4 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x186186186186186)
  {
    sub_1794();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v7 = 0x186186186186186;
  }

  else
  {
    v7 = v5;
  }

  v16 = a1;
  if (v7)
  {
    if (v7 <= 0x186186186186186)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v13 = 168 * v4;
  v15 = 0;
  sub_5CBC00(168 * v4, a2, a3, a4);
  v14 = 168 * v4 + 168;
  sub_5C3CA0(a1, &__p);
  v8 = a1[1];
  v10 = v13;
  for (i = v14; v14 != v10; i = v14)
  {
    v14 = i - 168;
    sub_53A868(i - 168);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_5C3C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C3E10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5C3CA0(uint64_t *a1, void *a2)
{
  result = *a1;
  v5 = a1[1];
  v7 = a2[1] + result - v5;
  if (v5 != result)
  {
    v8 = result;
    v9 = a2[1] + result - v5;
    do
    {
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = *(v8 + 24);
      *(v9 + 40) = *(v8 + 40);
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 48) = *(v8 + 48);
      *(v9 + 64) = *(v8 + 64);
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v9 + 72) = 0;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 72) = *(v8 + 72);
      v10 = *(v8 + 96);
      *(v9 + 88) = *(v8 + 88);
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v9 + 96) = v10;
      v11 = *(v8 + 104);
      *(v9 + 108) = *(v8 + 108);
      *(v9 + 104) = v11;
      v12 = *(v8 + 112);
      *(v9 + 128) = *(v8 + 128);
      *(v9 + 112) = v12;
      *(v8 + 120) = 0;
      *(v8 + 128) = 0;
      *(v8 + 112) = 0;
      v13 = *(v8 + 136);
      *(v9 + 152) = *(v8 + 152);
      *(v9 + 136) = v13;
      *(v8 + 144) = 0;
      *(v8 + 152) = 0;
      *(v8 + 136) = 0;
      *(v9 + 160) = *(v8 + 160);
      v8 += 168;
      v9 += 168;
    }

    while (v8 != v5);
    do
    {
      result = sub_53A868(result) + 168;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v14 = *a1;
  *a1 = v7;
  a1[1] = v14;
  a2[1] = v14;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
  return result;
}

uint64_t sub_5C3E10(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 168;
    sub_53A868(i - 168);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_5C3E64(uint64_t *a1, __int128 *a2, char *a3, _DWORD *a4)
{
  v4 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v7 = 0x1C71C71C71C71C7;
  }

  else
  {
    v7 = v5;
  }

  v16 = a1;
  if (v7)
  {
    if (v7 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v13 = 144 * v4;
  v14 = 144 * v4;
  v15 = 0;
  sub_64A2CC(144 * v4, a2, *a3, a4);
  v14 = 144 * v4 + 144;
  sub_5C3FE0(a1, &__p);
  v8 = a1[1];
  v10 = v13;
  for (i = v14; v14 != v10; i = v14)
  {
    v14 = i - 144;
    sub_5C42C0(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_5C3FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C4118(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5C3FE0(uint64_t *a1, void *a2)
{
  result = *a1;
  v5 = a1[1];
  v7 = a2[1] + result - v5;
  if (v5 != result)
  {
    v8 = result;
    v9 = a2[1] + result - v5;
    do
    {
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      *(v8 + 8) = 0uLL;
      *v8 = 0;
      v11 = *(v8 + 24);
      *(v9 + 32) = *(v8 + 32);
      *(v9 + 24) = v11;
      v12 = *(v8 + 40);
      *(v8 + 40) = 0uLL;
      *(v9 + 40) = v12;
      v13 = *(v8 + 56);
      *(v8 + 56) = 0;
      *(v9 + 56) = v13;
      *(v9 + 64) = 0;
      *(v9 + 72) = 0uLL;
      *(v9 + 64) = *(v8 + 64);
      v14 = *(v8 + 88);
      *(v9 + 80) = *(v8 + 80);
      *(v8 + 64) = 0uLL;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v9 + 88) = v14;
      LODWORD(v13) = *(v8 + 96);
      *(v9 + 100) = *(v8 + 100);
      *(v9 + 96) = v13;
      v15 = *(v8 + 104);
      *(v8 + 104) = 0uLL;
      *(v9 + 104) = v15;
      v16 = *(v8 + 120);
      *(v8 + 120) = 0uLL;
      *(v9 + 120) = v16;
      *(v9 + 136) = *(v8 + 136);
      v8 += 144;
      v9 += 144;
    }

    while (v8 != v5);
    do
    {
      result = sub_5C42C0(result) + 144;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v17 = *a1;
  *a1 = v7;
  a1[1] = v17;
  a2[1] = v17;
  v18 = a1[1];
  a1[1] = a2[2];
  a2[2] = v18;
  v19 = a1[2];
  a1[2] = a2[3];
  a2[3] = v19;
  *a2 = a2[1];
  return result;
}

uint64_t sub_5C4118(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    sub_5C42C0(i - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_5C416C(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v6, *a2, *(a2 + 8));
    v6 = 24 * v2;
  }

  else
  {
    *v6 = *a2;
    *&dword_10[6 * v2] = *(a2 + 16);
  }

  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = v6 - v8;
  memcpy((v6 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_5C42AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5C42C0(uint64_t a1)
{
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = v2[1];
      v5 = *v2;
      if (v4 != v3)
      {
        do
        {
          v4 -= 168;
          sub_5C37D8(v4);
        }

        while (v4 != v3);
        v5 = *v2;
      }

      v2[1] = v3;
      operator delete(v5);
    }

    operator delete();
  }

  v6 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v6)
  {
    if (*(v6 + 24) == 1 && *(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete();
  }

  v7 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      *(v7 + 16) = v8;
      operator delete(v8);
    }

    operator delete();
  }

  v9 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v9)
  {
    if (*(v9 + 47) < 0)
    {
      operator delete(*(v9 + 24));
      if ((*(v9 + 23) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    else if ((*(v9 + 23) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    operator delete(*v9);
LABEL_20:
    operator delete();
  }

  v10 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v10)
  {
    sub_55CE04(a1 + 88, v10);
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    v12 = *(a1 + 72);
    v13 = *(a1 + 64);
    if (v12 != v11)
    {
      do
      {
        if (*(v12 - 9) < 0)
        {
          operator delete(*(v12 - 32));
        }

        v12 -= 40;
      }

      while (v12 != v11);
      v13 = *(a1 + 64);
    }

    *(a1 + 72) = v11;
    operator delete(v13);
  }

  v14 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v14)
  {
    if (*(v14 + 103) < 0)
    {
      operator delete(*(v14 + 80));
      if ((*(v14 + 71) & 0x80000000) == 0)
      {
LABEL_34:
        v15 = *(v14 + 32);
        if (v15 == -1)
        {
LABEL_41:
          *(v14 + 32) = -1;
          operator delete();
        }

LABEL_40:
        (off_266B860[v15])(&v19, v14);
        goto LABEL_41;
      }
    }

    else if ((*(v14 + 71) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    operator delete(*(v14 + 48));
    v15 = *(v14 + 32);
    if (v15 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v16 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v16)
  {
    if (*(v16 + 31) < 0)
    {
      operator delete(*(v16 + 8));
    }

    operator delete();
  }

  v17 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v17)
  {
    if (*(v17 + 23) < 0)
    {
      operator delete(*v17);
    }

    operator delete();
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_5C4594(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v5 = 0x199999999999999;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x199999999999999)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 160 * v2;
  v13 = 0;
  sub_64BC20(160 * v2, a2);
  v12 = 160 * v2 + 160;
  sub_5C46E0(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 160;
    sub_53A868(i - 160);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_5C46CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C4848(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5C46E0(uint64_t *a1, void *a2)
{
  result = *a1;
  v5 = a1[1];
  v7 = a2[1] + result - v5;
  if (v5 != result)
  {
    v8 = result;
    v9 = a2[1] + result - v5;
    do
    {
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = *(v8 + 24);
      *(v9 + 40) = *(v8 + 40);
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 48) = *(v8 + 48);
      *(v9 + 64) = *(v8 + 64);
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v9 + 72) = 0;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 72) = *(v8 + 72);
      v10 = *(v8 + 96);
      *(v9 + 88) = *(v8 + 88);
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v9 + 96) = v10;
      v11 = *(v8 + 104);
      *(v9 + 108) = *(v8 + 108);
      *(v9 + 104) = v11;
      v12 = *(v8 + 112);
      *(v9 + 128) = *(v8 + 128);
      *(v9 + 112) = v12;
      *(v8 + 120) = 0;
      *(v8 + 128) = 0;
      *(v8 + 112) = 0;
      v13 = *(v8 + 136);
      *(v9 + 152) = *(v8 + 152);
      *(v9 + 136) = v13;
      *(v8 + 144) = 0;
      *(v8 + 152) = 0;
      *(v8 + 136) = 0;
      v8 += 160;
      v9 += 160;
    }

    while (v8 != v5);
    do
    {
      result = sub_53A868(result) + 160;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v14 = *a1;
  *a1 = v7;
  a1[1] = v14;
  a2[1] = v14;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
  return result;
}

uint64_t sub_5C4848(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 160;
    sub_53A868(i - 160);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_5C489C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v5 = 0x199999999999999;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x199999999999999)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 160 * v2;
  v13 = 0;
  sub_55BD50(160 * v2, a2);
  v12 = 160 * v2 + 160;
  sub_5C46E0(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 160;
    sub_53A868(i - 160);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_5C49D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C4848(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5C49E8(__int128 **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  if (v7)
  {
    if (!(v7 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = v2 << 6;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
  }

  v9 = v8;
  *(v8 + 24) = *(a2 + 24);
  *(v8 + 40) = *(a2 + 40);
  *(v8 + 56) = *(a2 + 56);
  v10 = v8 + 64;
  v11 = *a1;
  v12 = a1[1];
  v13 = *a1 + v9 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v13;
    do
    {
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *v14 = 0;
      v17 = *(v14 + 24);
      v18 = *(v14 + 40);
      *(v15 + 56) = *(v14 + 14);
      *(v15 + 40) = v18;
      *(v15 + 24) = v17;
      v14 += 4;
      v15 += 64;
    }

    while (v14 != v12);
    do
    {
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      v11 += 4;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_5C4BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C4BBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5C4BBC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 8;
      *(a1 + 16) = v2 - 8;
      if (*(v2 - 41) < 0)
      {
        operator delete(*v5);
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

uint64_t sub_5C4C24(__int128 **a1, __int128 *a2, unsigned int *a3, void *a4, uint64_t *a5)
{
  v5 = (a1[1] - *a1) >> 6;
  v6 = v5 + 1;
  if ((v5 + 1) >> 58)
  {
    sub_1794();
  }

  v8 = a1[2] - *a1;
  if (v8 >> 5 > v6)
  {
    v6 = v8 >> 5;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFC0)
  {
    v9 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (!(v9 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v20 = v5 << 6;
  sub_5CBC34(v5 << 6, a2, *a3, a4, a5);
  v10 = (v5 << 6) + 64;
  v11 = *a1;
  v12 = a1[1];
  v13 = *a1 + v20 - v12;
  if (v12 != *a1)
  {
    v14 = *a1;
    v15 = *a1 + v20 - v12;
    do
    {
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *v14 = 0;
      v17 = *(v14 + 24);
      v18 = *(v14 + 40);
      *(v15 + 56) = *(v14 + 14);
      *(v15 + 40) = v18;
      *(v15 + 24) = v17;
      v14 += 4;
      v15 += 64;
    }

    while (v14 != v12);
    do
    {
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      v11 += 4;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_5C4DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C4BBC(va);
  _Unwind_Resume(a1);
}

void sub_5C4DCC(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unsigned int *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t **a6@<X8>)
{
  v9 = a1;
  if (a1 != a2)
  {
    v11 = a2;
    while (1)
    {
      if (a3 == a4)
      {
        while (v9 != v11)
        {
          sub_376F0(a5, v9);
          v9 = (v9 + 12);
        }

        goto LABEL_80;
      }

      v12 = *(v9 + 2);
      v13 = a3[2];
      v14 = v12 != 0x7FFFFFFF;
      if (v12 == 0x7FFFFFFF)
      {
        v15 = v13 != 0x7FFFFFFF;
        v16 = *v9;
        v17 = *a3;
        if (*v9 >= *a3)
        {
          v18 = 1;
        }

        else
        {
          v18 = -1;
        }

        if (v16 != v17)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 != 0x7FFFFFFF)
        {
          v16 = *v9;
          v17 = *a3;
          if (*v9 >= *a3)
          {
            v18 = 1;
          }

          else
          {
            v18 = -1;
          }

          if (v16 != v17)
          {
            goto LABEL_36;
          }

          v19 = a3[1];
          v20 = *(v9 + 1);
          if (v12 >= v13)
          {
            v22 = 0;
          }

          else
          {
            v22 = -1;
          }

          goto LABEL_29;
        }

        v15 = 0;
        v16 = *v9;
        v17 = *a3;
        if (*v9 >= *a3)
        {
          v18 = 1;
        }

        else
        {
          v18 = -1;
        }

        if (v16 != v17)
        {
          goto LABEL_36;
        }
      }

      v19 = a3[1];
      v20 = *(v9 + 1);
      if (v15 && v12 == 0x7FFFFFFF)
      {
        v21 = -1;
      }

      else
      {
        v21 = 1;
      }

      if ((v12 != 0x7FFFFFFF) != v15)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

LABEL_29:
      v23 = v20 == v19;
      if (v20 >= v19)
      {
        v24 = 1;
      }

      else
      {
        v24 = -1;
      }

      if (v23)
      {
        v18 = v22;
      }

      else
      {
        v18 = v24;
      }

      v17 = v16;
LABEL_36:
      if (v18 < 0)
      {
        sub_376F0(a5, v9);
        v9 = (v9 + 12);
        if (v9 == v11)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v13 != 0x7FFFFFFF)
        {
          if (v12 != 0x7FFFFFFF)
          {
            v35 = v17 == v16;
            if (v17 >= v16)
            {
              v26 = 1;
            }

            else
            {
              v26 = -1;
            }

            if (!v35)
            {
              goto LABEL_70;
            }

            v36 = *(v9 + 1);
            v37 = a3[1];
            if (v13 >= v12)
            {
              v32 = 0;
            }

            else
            {
              v32 = -1;
            }

            v33 = v37 >= v36;
            v34 = v37 == v36;
            goto LABEL_64;
          }

          v14 = 0;
        }

        v25 = v17 == v16;
        if (v17 >= v16)
        {
          v26 = 1;
        }

        else
        {
          v26 = -1;
        }

        if (!v25)
        {
          goto LABEL_70;
        }

        v27 = *(v9 + 1);
        v28 = a3[1];
        v23 = v13 == 0x7FFFFFFF;
        v29 = v13 != 0x7FFFFFFF;
        v30 = v23;
        if ((v14 & v30) != 0)
        {
          v31 = -1;
        }

        else
        {
          v31 = 1;
        }

        if (v29 != v14)
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        v33 = v28 >= v27;
        v34 = v28 == v27;
LABEL_64:
        if (v33)
        {
          v38 = 1;
        }

        else
        {
          v38 = -1;
        }

        if (v34)
        {
          v26 = v32;
        }

        else
        {
          v26 = v38;
        }

LABEL_70:
        if (v26 < 0)
        {
          sub_376F0(a5, a3);
          a3 += 3;
          if (v9 == v11)
          {
LABEL_74:
            v9 = v11;
            break;
          }
        }

        else
        {
          v9 = (v9 + 12);
          a3 += 3;
          if (v9 == v11)
          {
            goto LABEL_74;
          }
        }
      }
    }
  }

  while (a3 != a4)
  {
    sub_376F0(a5, a3);
    a3 += 3;
  }

  v11 = v9;
LABEL_80:
  *a6 = v11;
  a6[1] = a4;
  a6[2] = a5;
}

uint64_t sub_5C4FF4(uint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 12;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10);
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 2);
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3uLL:

        return sub_5C555C(v10, v10 + 3, a2 - 3);
      case 4uLL:

        return sub_5C5A20(v10, v10 + 3, v10 + 6, a2 - 3);
      case 5uLL:

        return sub_5C5D44(v10, v10 + 3, v10 + 6, v10 + 9, a2 - 3);
    }

LABEL_11:
    if (v13 <= 287)
    {
      if (a5)
      {

        return sub_5C615C(v10, a2);
      }

      else
      {

        return sub_5C6374(v10, a2);
      }
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return sub_5C7254(v10, a2, a2, a3);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = &v10[3 * (v14 >> 1)];
    if (v13 < 0x601)
    {
      sub_5C555C(&v10[3 * v15], v10, a2 - 3);
      if (a5)
      {
        goto LABEL_57;
      }
    }

    else
    {
      sub_5C555C(v10, &v10[3 * v15], a2 - 3);
      v17 = v10 + 3;
      v18 = 3 * v15;
      v19 = &v8[3 * v15 - 3];
      sub_5C555C(v8 + 3, v19, a2 - 6);
      sub_5C555C(v8 + 6, &v17[v18], a2 - 9);
      sub_5C555C(v19, v16, &v17[v18]);
      v57 = v8[2];
      v55 = *v8;
      v20 = *v16;
      v8[2] = v16[2];
      *v8 = v20;
      v16[2] = v57;
      *v16 = v55;
      if (a5)
      {
        goto LABEL_57;
      }
    }

    v21 = *(v8 - 1);
    v22 = v8[2];
    if (v21 == 0x7FFFFFFF)
    {
      v23 = v22 != 0x7FFFFFFF;
      v27 = *(v8 - 3);
      v28 = v27 == *v8;
      if (v27 >= *v8)
      {
        v26 = 1;
      }

      else
      {
        v26 = -1;
      }

      if (!v28)
      {
        goto LABEL_56;
      }

      goto LABEL_29;
    }

    if (v22 == 0x7FFFFFFF)
    {
      v23 = 0;
      v24 = *(v8 - 3);
      v25 = v24 == *v8;
      if (v24 >= *v8)
      {
        v26 = 1;
      }

      else
      {
        v26 = -1;
      }

      if (!v25)
      {
        goto LABEL_56;
      }

LABEL_29:
      v29 = v8[1];
      v30 = *(v8 - 2);
      v31 = v30 == v29;
      if (v30 >= v29)
      {
        v26 = 1;
      }

      else
      {
        v26 = -1;
      }

      if (v31)
      {
        v25 = v21 == 0x7FFFFFFF;
        v32 = v21 != 0x7FFFFFFF;
        v33 = v25;
        v26 = (v23 & v33) != 0 ? -1 : 1;
        if (v32 == v23)
        {
          v26 = 0;
        }
      }

      goto LABEL_56;
    }

    v34 = *(v8 - 3);
    v35 = v34 == *v8;
    if (v34 >= *v8)
    {
      v26 = 1;
    }

    else
    {
      v26 = -1;
    }

    if (v35)
    {
      v36 = v8[1];
      v37 = *(v8 - 2);
      v38 = v37 == v36;
      v26 = v37 >= v36 ? 1 : -1;
      if (v38)
      {
        if (v21 >= v22)
        {
          v26 = 0;
        }

        else
        {
          v26 = -1;
        }
      }
    }

LABEL_56:
    if ((v26 & 0x80) == 0)
    {
      result = sub_5C6544(v8, a2);
      v10 = result;
      goto LABEL_62;
    }

LABEL_57:
    v39 = sub_5C6A18(v8, a2);
    if ((v40 & 1) == 0)
    {
      goto LABEL_60;
    }

    v41 = sub_5C6E0C(v8, v39);
    v10 = v39 + 3;
    result = sub_5C6E0C(v39 + 3, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v39;
      if (v41)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v41)
    {
LABEL_60:
      result = sub_5C4FF4(v8, v39, a3, -v12, a5 & 1);
      v10 = v39 + 3;
LABEL_62:
      a5 = 0;
      a4 = -v12;
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

  v42 = *(a2 - 1);
  v43 = v10[2];
  if (v42 == 0x7FFFFFFF)
  {
    v44 = v43 != 0x7FFFFFFF;
LABEL_86:
    if (*v9 >= *v10)
    {
      v45 = 1;
    }

    else
    {
      v45 = -1;
    }

    if (*v9 == *v10)
    {
      v46 = v10[1];
      v47 = *(a2 - 2);
      v25 = v42 == 0x7FFFFFFF;
      v48 = v42 != 0x7FFFFFFF;
      v49 = v25;
      v25 = (v44 & v49) == 0;
      v50 = -1;
      if (v25)
      {
        v50 = 1;
      }

      if (v48 != v44)
      {
        v51 = v50;
      }

      else
      {
        v51 = 0;
      }

      goto LABEL_108;
    }
  }

  else
  {
    if (v43 == 0x7FFFFFFF)
    {
      v44 = 0;
      goto LABEL_86;
    }

    if (*v9 >= *v10)
    {
      v45 = 1;
    }

    else
    {
      v45 = -1;
    }

    if (*v9 == *v10)
    {
      v46 = v10[1];
      v47 = *(a2 - 2);
      v52 = v42 < v43;
      v51 = -1;
      if (!v52)
      {
        v51 = 0;
      }

LABEL_108:
      v53 = -1;
      if (v47 >= v46)
      {
        v53 = 1;
      }

      if (v47 == v46)
      {
        v45 = v51;
      }

      else
      {
        v45 = v53;
      }
    }
  }

  if (v45 < 0)
  {
    v58 = v10[2];
    v56 = *v10;
    v54 = *v9;
    v10[2] = *(a2 - 1);
    *v10 = v54;
    *v9 = v56;
    *(a2 - 1) = v58;
  }

  return result;
}

uint64_t sub_5C555C(unsigned int *a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a2[2];
  v4 = a1[2];
  v5 = v3 != 0x7FFFFFFF;
  if (v3 == 0x7FFFFFFF)
  {
    v6 = v4 != 0x7FFFFFFF;
    v7 = *a2;
    if (*a2 >= *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    if (*a2 != *a1)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v4 != 0x7FFFFFFF)
    {
      v7 = *a2;
      if (*a2 >= *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = -1;
      }

      if (*a2 != *a1)
      {
        goto LABEL_29;
      }

      v9 = a1[1];
      v10 = a2[1];
      v13 = v3 < v4;
      v12 = -1;
      if (!v13)
      {
        v12 = 0;
      }

      goto LABEL_23;
    }

    v6 = 0;
    v7 = *a2;
    if (*a2 >= *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    if (*a2 != *a1)
    {
      goto LABEL_29;
    }
  }

  v9 = a1[1];
  v10 = a2[1];
  v11 = -1;
  if (!v6 || v3 != 0x7FFFFFFF)
  {
    v11 = 1;
  }

  if ((v3 != 0x7FFFFFFF) != v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_23:
  v14 = v10 >= v9;
  v15 = v10 == v9;
  v8 = -1;
  if (v14)
  {
    v8 = 1;
  }

  if (v15)
  {
    v8 = v12;
  }

LABEL_29:
  v16 = a3[2];
  if ((v8 & 0x80) == 0)
  {
    if (v16 != 0x7FFFFFFF)
    {
      if (v3 != 0x7FFFFFFF)
      {
        v37 = *a3 == v7;
        if (*a3 >= v7)
        {
          v18 = 1;
        }

        else
        {
          v18 = -1;
        }

        if (v37)
        {
          v38 = a2[1];
          v39 = a3[1];
          v13 = v16 < v3;
          v40 = -1;
          if (!v13)
          {
            v40 = 0;
          }

          v14 = v39 >= v38;
          v41 = v39 == v38;
          v42 = -1;
          if (v14)
          {
            v42 = 1;
          }

          if (v41)
          {
            v18 = v40;
          }

          else
          {
            v18 = v42;
          }
        }

LABEL_89:
        if ((v18 & 0x80) == 0)
        {
          return 0;
        }

        v44 = a2[2];
        v45 = *a2;
        v46 = a3[2];
        *a2 = *a3;
        a2[2] = v46;
        *a3 = v45;
        a3[2] = v44;
        v47 = a2[2];
        v48 = a1[2];
        if (v47 == 0x7FFFFFFF)
        {
          v49 = v48 != 0x7FFFFFFF;
          if (*a2 >= *a1)
          {
            v50 = 1;
          }

          else
          {
            v50 = -1;
          }

          if (*a2 != *a1)
          {
            goto LABEL_167;
          }
        }

        else
        {
          if (v48 != 0x7FFFFFFF)
          {
            if (*a2 >= *a1)
            {
              v50 = 1;
            }

            else
            {
              v50 = -1;
            }

            if (*a2 == *a1)
            {
              v77 = a1[1];
              v78 = a2[1];
              v13 = v47 < v48;
              v79 = -1;
              if (!v13)
              {
                v79 = 0;
              }

              v80 = -1;
              if (v78 >= v77)
              {
                v80 = 1;
              }

              if (v78 == v77)
              {
                v50 = v79;
              }

              else
              {
                v50 = v80;
              }
            }

            goto LABEL_167;
          }

          v49 = 0;
          if (*a2 >= *a1)
          {
            v50 = 1;
          }

          else
          {
            v50 = -1;
          }

          if (*a2 != *a1)
          {
LABEL_167:
            if (v50 < 0)
            {
              v81 = a1[2];
              v82 = *a1;
              v83 = a2[2];
              *a1 = *a2;
              a1[2] = v83;
              *a2 = v82;
              a2[2] = v81;
            }

            return 1;
          }
        }

        v67 = a1[1];
        v68 = a2[1];
        v69 = v68 == v67;
        if (v68 >= v67)
        {
          v50 = 1;
        }

        else
        {
          v50 = -1;
        }

        if (v69)
        {
          v15 = v47 == 0x7FFFFFFF;
          v70 = v47 != 0x7FFFFFFF;
          v71 = v15;
          v15 = (v49 & v71) == 0;
          v50 = -1;
          if (v15)
          {
            v50 = 1;
          }

          if (v70 == v49)
          {
            v50 = 0;
          }
        }

        goto LABEL_167;
      }

      v5 = 0;
    }

    v17 = *a3 == v7;
    if (*a3 >= v7)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v17)
    {
      v19 = a2[1];
      v20 = a3[1];
      v15 = v16 == 0x7FFFFFFF;
      v21 = v16 != 0x7FFFFFFF;
      v22 = v15;
      v15 = (v5 & v22) == 0;
      v23 = -1;
      if (v15)
      {
        v23 = 1;
      }

      if (v21 != v5)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v14 = v20 >= v19;
      v25 = v20 == v19;
      v26 = -1;
      if (v14)
      {
        v26 = 1;
      }

      if (v25)
      {
        v18 = v24;
      }

      else
      {
        v18 = v26;
      }
    }

    goto LABEL_89;
  }

  if (v16 == 0x7FFFFFFF)
  {
    goto LABEL_56;
  }

  if (v3 == 0x7FFFFFFF)
  {
    v5 = 0;
LABEL_56:
    v27 = *a3 == v7;
    if (*a3 >= v7)
    {
      v28 = 1;
    }

    else
    {
      v28 = -1;
    }

    if (v27)
    {
      v29 = a2[1];
      v30 = a3[1];
      v15 = v16 == 0x7FFFFFFF;
      v31 = v16 != 0x7FFFFFFF;
      v32 = v15;
      v15 = (v5 & v32) == 0;
      v33 = -1;
      if (v15)
      {
        v33 = 1;
      }

      if (v31 != v5)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v14 = v30 >= v29;
      v35 = v30 == v29;
      v36 = -1;
      if (v14)
      {
        v36 = 1;
      }

      if (v35)
      {
        v28 = v34;
      }

      else
      {
        v28 = v36;
      }
    }

    goto LABEL_111;
  }

  v51 = *a3 == v7;
  if (*a3 >= v7)
  {
    v28 = 1;
  }

  else
  {
    v28 = -1;
  }

  if (v51)
  {
    v52 = a2[1];
    v53 = a3[1];
    v13 = v16 < v3;
    v54 = -1;
    if (!v13)
    {
      v54 = 0;
    }

    v14 = v53 >= v52;
    v55 = v53 == v52;
    v56 = -1;
    if (v14)
    {
      v56 = 1;
    }

    if (v55)
    {
      v28 = v54;
    }

    else
    {
      v28 = v56;
    }
  }

LABEL_111:
  if (v28 < 0)
  {
    v64 = a1[2];
    v65 = *a1;
    v66 = a3[2];
    *a1 = *a3;
    a1[2] = v66;
    *a3 = v65;
    a3[2] = v64;
    return 1;
  }

  v57 = a1[2];
  v58 = *a1;
  v59 = a2[2];
  *a1 = *a2;
  a1[2] = v59;
  *a2 = v58;
  a2[2] = v57;
  v60 = a3[2];
  v61 = a2[2];
  if (v60 == 0x7FFFFFFF)
  {
    v62 = v61 != 0x7FFFFFFF;
    if (*a3 >= *a2)
    {
      v63 = 1;
    }

    else
    {
      v63 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_181;
    }

    goto LABEL_142;
  }

  if (v61 == 0x7FFFFFFF)
  {
    v62 = 0;
    if (*a3 >= *a2)
    {
      v63 = 1;
    }

    else
    {
      v63 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_181;
    }

LABEL_142:
    v72 = a2[1];
    v73 = a3[1];
    v74 = v73 == v72;
    if (v73 >= v72)
    {
      v63 = 1;
    }

    else
    {
      v63 = -1;
    }

    if (v74)
    {
      v15 = v60 == 0x7FFFFFFF;
      v75 = v60 != 0x7FFFFFFF;
      v76 = v15;
      v15 = (v62 & v76) == 0;
      v63 = -1;
      if (v15)
      {
        v63 = 1;
      }

      if (v75 == v62)
      {
        v63 = 0;
      }
    }

    goto LABEL_181;
  }

  if (*a3 >= *a2)
  {
    v63 = 1;
  }

  else
  {
    v63 = -1;
  }

  if (*a3 == *a2)
  {
    v84 = a2[1];
    v85 = a3[1];
    v13 = v60 < v61;
    v86 = -1;
    if (!v13)
    {
      v86 = 0;
    }

    v87 = -1;
    if (v85 >= v84)
    {
      v87 = 1;
    }

    if (v85 == v84)
    {
      v63 = v86;
    }

    else
    {
      v63 = v87;
    }
  }

LABEL_181:
  if ((v63 & 0x80) == 0)
  {
    return 1;
  }

  v88 = a2[2];
  v89 = *a2;
  v90 = a3[2];
  *a2 = *a3;
  a2[2] = v90;
  *a3 = v89;
  a3[2] = v88;
  return 1;
}

uint64_t sub_5C5A20(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  result = sub_5C555C(a1, a2, a3);
  v9 = a4[2];
  v10 = a3[2];
  if (v9 == 0x7FFFFFFF)
  {
    v11 = v10 != 0x7FFFFFFF;
    if (*a4 >= *a3)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    if (*a4 != *a3)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v10 != 0x7FFFFFFF)
    {
      if (*a4 >= *a3)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      if (*a4 != *a3)
      {
        goto LABEL_32;
      }

      v13 = a3[1];
      v14 = a4[1];
      v19 = v9 < v10;
      v18 = -1;
      if (!v19)
      {
        v18 = 0;
      }

      goto LABEL_27;
    }

    v11 = 0;
    if (*a4 >= *a3)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    if (*a4 != *a3)
    {
      goto LABEL_32;
    }
  }

  v13 = a3[1];
  v14 = a4[1];
  v44 = v9 == 0x7FFFFFFF;
  v15 = v9 != 0x7FFFFFFF;
  v16 = v44;
  v44 = (v11 & v16) == 0;
  v17 = -1;
  if (v44)
  {
    v17 = 1;
  }

  if (v15 != v11)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

LABEL_27:
  v20 = -1;
  if (v14 >= v13)
  {
    v20 = 1;
  }

  if (v14 == v13)
  {
    v12 = v18;
  }

  else
  {
    v12 = v20;
  }

LABEL_32:
  if ((v12 & 0x80) == 0)
  {
    return result;
  }

  v21 = a3[2];
  v22 = *a3;
  v23 = a4[2];
  *a3 = *a4;
  a3[2] = v23;
  *a4 = v22;
  a4[2] = v21;
  v24 = a3[2];
  v25 = a2[2];
  if (v24 == 0x7FFFFFFF)
  {
    v26 = v25 != 0x7FFFFFFF;
    if (*a3 >= *a2)
    {
      v27 = 1;
    }

    else
    {
      v27 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if (v25 != 0x7FFFFFFF)
    {
      if (*a3 >= *a2)
      {
        v27 = 1;
      }

      else
      {
        v27 = -1;
      }

      if (*a3 != *a2)
      {
        goto LABEL_64;
      }

      v28 = a2[1];
      v29 = a3[1];
      v19 = v24 < v25;
      v33 = -1;
      if (!v19)
      {
        v33 = 0;
      }

      goto LABEL_59;
    }

    v26 = 0;
    if (*a3 >= *a2)
    {
      v27 = 1;
    }

    else
    {
      v27 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_64;
    }
  }

  v28 = a2[1];
  v29 = a3[1];
  v44 = v24 == 0x7FFFFFFF;
  v30 = v24 != 0x7FFFFFFF;
  v31 = v44;
  v44 = (v26 & v31) == 0;
  v32 = -1;
  if (v44)
  {
    v32 = 1;
  }

  if (v30 != v26)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

LABEL_59:
  v34 = -1;
  if (v29 >= v28)
  {
    v34 = 1;
  }

  if (v29 == v28)
  {
    v27 = v33;
  }

  else
  {
    v27 = v34;
  }

LABEL_64:
  if ((v27 & 0x80) == 0)
  {
    return result;
  }

  v35 = a2[2];
  v36 = *a2;
  v37 = a3[2];
  *a2 = *a3;
  a2[2] = v37;
  *a3 = v36;
  a3[2] = v35;
  v38 = a2[2];
  v39 = a1[2];
  if (v38 == 0x7FFFFFFF)
  {
    v40 = v39 != 0x7FFFFFFF;
    if (*a2 >= *a1)
    {
      v41 = 1;
    }

    else
    {
      v41 = -1;
    }

    if (*a2 != *a1)
    {
      goto LABEL_102;
    }

LABEL_76:
    v42 = a1[1];
    v43 = a2[1];
    v44 = v43 == v42;
    if (v43 >= v42)
    {
      v41 = 1;
    }

    else
    {
      v41 = -1;
    }

    if (v44)
    {
      v44 = v38 == 0x7FFFFFFF;
      v45 = v38 != 0x7FFFFFFF;
      v46 = v44;
      v44 = (v40 & v46) == 0;
      v41 = -1;
      if (v44)
      {
        v41 = 1;
      }

      if (v45 == v40)
      {
        v41 = 0;
      }
    }

    goto LABEL_102;
  }

  if (v39 != 0x7FFFFFFF)
  {
    if (*a2 >= *a1)
    {
      v41 = 1;
    }

    else
    {
      v41 = -1;
    }

    if (*a2 == *a1)
    {
      v47 = a1[1];
      v48 = a2[1];
      v49 = v48 == v47;
      v41 = v48 >= v47 ? 1 : -1;
      if (v49)
      {
        if (v38 >= v39)
        {
          v41 = 0;
        }

        else
        {
          v41 = -1;
        }
      }
    }

    goto LABEL_102;
  }

  v40 = 0;
  if (*a2 >= *a1)
  {
    v41 = 1;
  }

  else
  {
    v41 = -1;
  }

  if (*a2 == *a1)
  {
    goto LABEL_76;
  }

LABEL_102:
  if (v41 < 0)
  {
    v50 = a1[2];
    v51 = *a1;
    v52 = a2[2];
    *a1 = *a2;
    a1[2] = v52;
    *a2 = v51;
    a2[2] = v50;
  }

  return result;
}

uint64_t sub_5C5D44(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  result = sub_5C5A20(a1, a2, a3, a4);
  v11 = a5[2];
  v12 = a4[2];
  if (v11 == 0x7FFFFFFF)
  {
    v13 = v12 != 0x7FFFFFFF;
    if (*a5 >= *a4)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }

    if (*a5 != *a4)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v12 != 0x7FFFFFFF)
    {
      if (*a5 >= *a4)
      {
        v14 = 1;
      }

      else
      {
        v14 = -1;
      }

      if (*a5 != *a4)
      {
        goto LABEL_32;
      }

      v15 = a4[1];
      v16 = a5[1];
      v21 = v11 < v12;
      v20 = -1;
      if (!v21)
      {
        v20 = 0;
      }

      goto LABEL_27;
    }

    v13 = 0;
    if (*a5 >= *a4)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }

    if (*a5 != *a4)
    {
      goto LABEL_32;
    }
  }

  v15 = a4[1];
  v16 = a5[1];
  v46 = v11 == 0x7FFFFFFF;
  v17 = v11 != 0x7FFFFFFF;
  v18 = v46;
  v46 = (v13 & v18) == 0;
  v19 = -1;
  if (v46)
  {
    v19 = 1;
  }

  if (v17 != v13)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

LABEL_27:
  v22 = -1;
  if (v16 >= v15)
  {
    v22 = 1;
  }

  if (v16 == v15)
  {
    v14 = v20;
  }

  else
  {
    v14 = v22;
  }

LABEL_32:
  if ((v14 & 0x80) == 0)
  {
    return result;
  }

  v23 = a4[2];
  v24 = *a4;
  v25 = a5[2];
  *a4 = *a5;
  a4[2] = v25;
  *a5 = v24;
  a5[2] = v23;
  v26 = a4[2];
  v27 = a3[2];
  if (v26 == 0x7FFFFFFF)
  {
    v28 = v27 != 0x7FFFFFFF;
    if (*a4 >= *a3)
    {
      v29 = 1;
    }

    else
    {
      v29 = -1;
    }

    if (*a4 != *a3)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if (v27 != 0x7FFFFFFF)
    {
      if (*a4 >= *a3)
      {
        v29 = 1;
      }

      else
      {
        v29 = -1;
      }

      if (*a4 != *a3)
      {
        goto LABEL_64;
      }

      v30 = a3[1];
      v31 = a4[1];
      v21 = v26 < v27;
      v35 = -1;
      if (!v21)
      {
        v35 = 0;
      }

      goto LABEL_59;
    }

    v28 = 0;
    if (*a4 >= *a3)
    {
      v29 = 1;
    }

    else
    {
      v29 = -1;
    }

    if (*a4 != *a3)
    {
      goto LABEL_64;
    }
  }

  v30 = a3[1];
  v31 = a4[1];
  v46 = v26 == 0x7FFFFFFF;
  v32 = v26 != 0x7FFFFFFF;
  v33 = v46;
  v46 = (v28 & v33) == 0;
  v34 = -1;
  if (v46)
  {
    v34 = 1;
  }

  if (v32 != v28)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

LABEL_59:
  v36 = -1;
  if (v31 >= v30)
  {
    v36 = 1;
  }

  if (v31 == v30)
  {
    v29 = v35;
  }

  else
  {
    v29 = v36;
  }

LABEL_64:
  if ((v29 & 0x80) == 0)
  {
    return result;
  }

  v37 = a3[2];
  v38 = *a3;
  v39 = a4[2];
  *a3 = *a4;
  a3[2] = v39;
  *a4 = v38;
  a4[2] = v37;
  v40 = a3[2];
  v41 = a2[2];
  if (v40 == 0x7FFFFFFF)
  {
    v42 = v41 != 0x7FFFFFFF;
    if (*a3 >= *a2)
    {
      v43 = 1;
    }

    else
    {
      v43 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_102;
    }

    goto LABEL_76;
  }

  if (v41 == 0x7FFFFFFF)
  {
    v42 = 0;
    if (*a3 >= *a2)
    {
      v43 = 1;
    }

    else
    {
      v43 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_102;
    }

LABEL_76:
    v44 = a2[1];
    v45 = a3[1];
    v46 = v45 == v44;
    if (v45 >= v44)
    {
      v43 = 1;
    }

    else
    {
      v43 = -1;
    }

    if (v46)
    {
      v46 = v40 == 0x7FFFFFFF;
      v47 = v40 != 0x7FFFFFFF;
      v48 = v46;
      v46 = (v42 & v48) == 0;
      v43 = -1;
      if (v46)
      {
        v43 = 1;
      }

      if (v47 == v42)
      {
        v43 = 0;
      }
    }

    goto LABEL_102;
  }

  if (*a3 >= *a2)
  {
    v43 = 1;
  }

  else
  {
    v43 = -1;
  }

  if (*a3 == *a2)
  {
    v49 = a2[1];
    v50 = a3[1];
    v51 = v50 == v49;
    v43 = v50 >= v49 ? 1 : -1;
    if (v51)
    {
      if (v40 >= v41)
      {
        v43 = 0;
      }

      else
      {
        v43 = -1;
      }
    }
  }

LABEL_102:
  if ((v43 & 0x80) == 0)
  {
    return result;
  }

  v52 = a2[2];
  v53 = *a2;
  v54 = a3[2];
  *a2 = *a3;
  a2[2] = v54;
  *a3 = v53;
  a3[2] = v52;
  v55 = a2[2];
  v56 = a1[2];
  if (v55 == 0x7FFFFFFF)
  {
    v57 = v56 != 0x7FFFFFFF;
  }

  else
  {
    if (v56 != 0x7FFFFFFF)
    {
      if (*a2 >= *a1)
      {
        v58 = 1;
      }

      else
      {
        v58 = -1;
      }

      if (*a2 == *a1)
      {
        v64 = a1[1];
        v65 = a2[1];
        v66 = v65 == v64;
        v58 = v65 >= v64 ? 1 : -1;
        if (v66)
        {
          if (v55 >= v56)
          {
            v58 = 0;
          }

          else
          {
            v58 = -1;
          }
        }
      }

      goto LABEL_137;
    }

    v57 = 0;
  }

  if (*a2 >= *a1)
  {
    v58 = 1;
  }

  else
  {
    v58 = -1;
  }

  if (*a2 == *a1)
  {
    v59 = a1[1];
    v60 = a2[1];
    v61 = v60 == v59;
    v58 = v60 >= v59 ? 1 : -1;
    if (v61)
    {
      v46 = v55 == 0x7FFFFFFF;
      v62 = v55 != 0x7FFFFFFF;
      v63 = v46;
      v46 = (v57 & v63) == 0;
      v58 = -1;
      if (v46)
      {
        v58 = 1;
      }

      if (v62 == v57)
      {
        v58 = 0;
      }
    }
  }

LABEL_137:
  if (v58 < 0)
  {
    v67 = a1[2];
    v68 = *a1;
    v69 = a2[2];
    *a1 = *a2;
    a1[2] = v69;
    *a2 = v68;
    a2[2] = v67;
  }

  return result;
}

unsigned int *sub_5C615C(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v2 = result + 3;
    if (result + 3 != a2)
    {
      v3 = 0;
      v4 = result;
      while (1)
      {
        v6 = v2;
        v7 = v4[5];
        v8 = v4[2];
        v9 = *v4;
        if (v7 == 0x7FFFFFFF)
        {
          break;
        }

        if (v8 == 0x7FFFFFFF)
        {
          v10 = 0;
          v11 = *v6;
          if (*v6 >= v9)
          {
            v12 = 1;
          }

          else
          {
            v12 = -1;
          }

          if (v11 != v9)
          {
            goto LABEL_47;
          }

LABEL_18:
          v13 = v4[1];
          v14 = v4[4];
          if (v10 && v7 == 0x7FFFFFFF)
          {
            v15 = -1;
          }

          else
          {
            v15 = 1;
          }

          if ((v7 != 0x7FFFFFFF) != v10)
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          v17 = v14 == v13;
          if (v14 >= v13)
          {
            v18 = 1;
          }

          else
          {
            v18 = -1;
          }

          if (v17)
          {
            v18 = v16;
          }

          if (v18 < 0)
          {
            goto LABEL_48;
          }

          goto LABEL_6;
        }

        v11 = *v6;
        if (*v6 >= v9)
        {
          v12 = 1;
        }

        else
        {
          v12 = -1;
        }

        if (v11 != v9)
        {
          goto LABEL_47;
        }

        v19 = v4[1];
        v20 = v4[4];
        if (v7 >= v8)
        {
          v21 = 0;
        }

        else
        {
          v21 = -1;
        }

        v22 = v20 == v19;
        if (v20 >= v19)
        {
          v23 = 1;
        }

        else
        {
          v23 = -1;
        }

        if (v22)
        {
          v23 = v21;
        }

        if (v23 < 0)
        {
LABEL_48:
          v24 = v4[4];
          v25 = v3;
          if (v7 == 0x7FFFFFFF)
          {
            while (1)
            {
              v5 = v4;
              v38 = result + v25;
              *(v38 + 12) = *(result + v25);
              *(v38 + 5) = *(result + v25 + 8);
              if (!v25)
              {
                break;
              }

              v39 = *(v38 - 3);
              if (v9 >= v39)
              {
                v40 = 1;
              }

              else
              {
                v40 = 255;
              }

              if (v9 == v39)
              {
                v41 = *(result + v25 - 8);
                v42 = v24 == v41;
                if (v24 >= v41)
                {
                  v40 = 1;
                }

                else
                {
                  v40 = 255;
                }

                if (v42)
                {
                  v40 = 255;
                }

                if (v42 && *(result + v25 - 4) == 0x7FFFFFFF)
                {
                  v5 = (result + v25);
                  goto LABEL_5;
                }
              }

              v4 = v5 - 3;
              v25 -= 12;
              if (v40 < 0x80)
              {
                goto LABEL_5;
              }
            }
          }

          else
          {
            v26 = v3;
            while (1)
            {
              v27 = result + v26;
              *(v27 + 12) = *(result + v26);
              *(v27 + 5) = *(result + v26 + 8);
              if (!v26)
              {
                break;
              }

              v28 = *(v27 - 1);
              v29 = *(v27 - 3);
              if (v28 == 0x7FFFFFFF)
              {
                v30 = v9 == v29;
                if (v9 >= v29)
                {
                  v31 = 1;
                }

                else
                {
                  v31 = -1;
                }

                if (v30)
                {
                  v32 = *(result + v26 - 8);
                  v33 = v24 == v32;
                  if (v24 >= v32)
                  {
                    v31 = 1;
                  }

                  else
                  {
                    v31 = -1;
                  }

                  if (v33)
                  {
                    v31 = 1;
                  }
                }
              }

              else
              {
                v34 = v9 == v29;
                if (v9 >= v29)
                {
                  v31 = 1;
                }

                else
                {
                  v31 = -1;
                }

                if (v34)
                {
                  v35 = *(result + v26 - 8);
                  v36 = v7 >= v28 ? 0 : -1;
                  v37 = v24 == v35;
                  v31 = v24 >= v35 ? 1 : -1;
                  if (v37)
                  {
                    v31 = v36;
                  }
                }
              }

              v26 -= 12;
              if ((v31 & 0x80) == 0)
              {
                v5 = (result + v26 + 12);
                goto LABEL_5;
              }
            }
          }

          v5 = result;
LABEL_5:
          *v5 = v9;
          v5[1] = v24;
          v5[2] = v7;
        }

LABEL_6:
        v2 = v6 + 3;
        v3 += 12;
        v4 = v6;
        if (v6 + 3 == a2)
        {
          return result;
        }
      }

      v10 = v8 != 0x7FFFFFFF;
      v11 = *v6;
      if (*v6 >= v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      if (v11 != v9)
      {
LABEL_47:
        v9 = v11;
        if (v12 < 0)
        {
          goto LABEL_48;
        }

        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  return result;
}

unsigned int *sub_5C6374(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v2 = result + 3;
    if (result + 3 != a2)
    {
      do
      {
        v3 = v2;
        v4 = result[5];
        v5 = result[2];
        v6 = *result;
        if (v4 == 0x7FFFFFFF)
        {
          v7 = v5 != 0x7FFFFFFF;
          v8 = *v3;
          if (*v3 >= v6)
          {
            v9 = 1;
          }

          else
          {
            v9 = -1;
          }

          if (v8 == v6)
          {
LABEL_17:
            v10 = result[1];
            v11 = result[4];
            if (v7 && v4 == 0x7FFFFFFF)
            {
              v12 = -1;
            }

            else
            {
              v12 = 1;
            }

            if ((v4 != 0x7FFFFFFF) != v7)
            {
              v13 = v12;
            }

            else
            {
              v13 = 0;
            }

            v14 = v11 == v10;
            if (v11 >= v10)
            {
              v15 = 1;
            }

            else
            {
              v15 = -1;
            }

            if (v14)
            {
              v15 = v13;
            }

            if ((v15 & 0x80) == 0)
            {
              goto LABEL_5;
            }

            goto LABEL_47;
          }
        }

        else if (v5 == 0x7FFFFFFF)
        {
          v7 = 0;
          v8 = *v3;
          if (*v3 >= v6)
          {
            v9 = 1;
          }

          else
          {
            v9 = -1;
          }

          if (v8 == v6)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = *v3;
          if (*v3 >= v6)
          {
            v9 = 1;
          }

          else
          {
            v9 = -1;
          }

          if (v8 == v6)
          {
            v16 = result[1];
            v17 = result[4];
            if (v4 >= v5)
            {
              v18 = 0;
            }

            else
            {
              v18 = -1;
            }

            v19 = v17 == v16;
            if (v17 >= v16)
            {
              v20 = 1;
            }

            else
            {
              v20 = -1;
            }

            if (v19)
            {
              v20 = v18;
            }

            if ((v20 & 0x80) == 0)
            {
              goto LABEL_5;
            }

LABEL_47:
            v21 = result[4];
            if (v4 == 0x7FFFFFFF)
            {
              do
              {
                v22 = result;
                *(result + 3) = *result;
                result[5] = result[2];
                v33 = *(result - 3);
                result -= 3;
                v34 = v6 == v33;
                if (v6 >= v33)
                {
                  v35 = 1;
                }

                else
                {
                  v35 = 255;
                }

                if (v34)
                {
                  v36 = *(v22 - 2);
                  v37 = v21 == v36;
                  if (v21 >= v36)
                  {
                    v35 = 1;
                  }

                  else
                  {
                    v35 = 255;
                  }

                  if (v37)
                  {
                    v35 = 255;
                  }

                  if (v37 && *(v22 - 1) == 0x7FFFFFFF)
                  {
                    break;
                  }
                }
              }

              while (v35 > 0x7F);
            }

            else
            {
              v22 = v3;
              do
              {
                *v22 = *(v22 - 3);
                v22[2] = *(v22 - 1);
                v23 = *(v22 - 4);
                v24 = *(v22 - 6);
                if (v23 == 0x7FFFFFFF)
                {
                  v25 = v6 == v24;
                  if (v6 >= v24)
                  {
                    v26 = 1;
                  }

                  else
                  {
                    v26 = -1;
                  }

                  if (v25)
                  {
                    v27 = *(v22 - 5);
                    v28 = v21 == v27;
                    if (v21 >= v27)
                    {
                      v26 = 1;
                    }

                    else
                    {
                      v26 = -1;
                    }

                    if (v28)
                    {
                      v26 = 1;
                    }
                  }
                }

                else
                {
                  v29 = v6 == v24;
                  if (v6 >= v24)
                  {
                    v26 = 1;
                  }

                  else
                  {
                    v26 = -1;
                  }

                  if (v29)
                  {
                    v30 = *(v22 - 5);
                    v31 = v4 >= v23 ? 0 : -1;
                    v32 = v21 == v30;
                    v26 = v21 >= v30 ? 1 : -1;
                    if (v32)
                    {
                      v26 = v31;
                    }
                  }
                }

                v22 -= 3;
              }

              while (v26 < 0);
            }

            *v22 = v6;
            v22[1] = v21;
            v22[2] = v4;
            goto LABEL_5;
          }
        }

        v6 = v8;
        if (v9 < 0)
        {
          goto LABEL_47;
        }

LABEL_5:
        v2 = v3 + 3;
        result = v3;
      }

      while (v3 + 3 != a2);
    }
  }

  return result;
}

unsigned int *sub_5C6544(unsigned int *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a2 - 4);
  if (v4 == 0x7FFFFFFF)
  {
    v6 = v5 != 0x7FFFFFFF;
    v10 = *(a2 - 12);
    v11 = v2 == v10;
    if (v2 >= v10)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (v5 != 0x7FFFFFFF)
    {
      v15 = *(a2 - 12);
      v16 = v2 == v15;
      if (v2 >= v15)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }

      if (!v16)
      {
        goto LABEL_31;
      }

      v12 = *(a2 - 8);
      v17 = v4 < v5;
      v14 = -1;
      if (!v17)
      {
        v14 = 0;
      }

      goto LABEL_25;
    }

    v6 = 0;
    v7 = *(a2 - 12);
    v8 = v2 == v7;
    if (v2 >= v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    if (!v8)
    {
      goto LABEL_31;
    }
  }

  v12 = *(a2 - 8);
  v13 = -1;
  if (!v6 || v4 != 0x7FFFFFFF)
  {
    v13 = 1;
  }

  if ((v4 != 0x7FFFFFFF) != v6)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

LABEL_25:
  v18 = v3 >= v12;
  v19 = v3 == v12;
  v9 = -1;
  if (v18)
  {
    v9 = 1;
  }

  if (v19)
  {
    v9 = v14;
  }

LABEL_31:
  if ((v9 & 0x80) == 0)
  {
    v20 = a1 + 3;
    while (1)
    {
      v23 = v20;
      if (v20 >= a2)
      {
        goto LABEL_110;
      }

      v24 = v20[2];
      if (v4 == 0x7FFFFFFF)
      {
        v25 = v24 != 0x7FFFFFFF;
        if (v2 >= *v23)
        {
          v22 = 1;
        }

        else
        {
          v22 = -1;
        }

        if (v2 == *v23)
        {
LABEL_52:
          v26 = v23[1];
          if (v25 && v4 == 0x7FFFFFFF)
          {
            v27 = -1;
          }

          else
          {
            v27 = 1;
          }

          if ((v4 != 0x7FFFFFFF) != v25)
          {
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }

LABEL_33:
          v21 = v3 == v26;
          if (v3 >= v26)
          {
            v22 = 1;
          }

          else
          {
            v22 = -1;
          }

          if (v21)
          {
            v22 = v28;
          }
        }
      }

      else if (v24 == 0x7FFFFFFF)
      {
        v25 = 0;
        if (v2 >= *v23)
        {
          v22 = 1;
        }

        else
        {
          v22 = -1;
        }

        if (v2 == *v23)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v2 >= *v23)
        {
          v22 = 1;
        }

        else
        {
          v22 = -1;
        }

        if (v2 == *v23)
        {
          v26 = v23[1];
          if (v4 >= v24)
          {
            v28 = 0;
          }

          else
          {
            v28 = -1;
          }

          goto LABEL_33;
        }
      }

      v20 = v23 + 3;
      if (v22 < 0)
      {
        goto LABEL_110;
      }
    }
  }

  if (v4 == 0x7FFFFFFF)
  {
    v42 = a1 + 3;
    do
    {
      v23 = v42;
      if (v2 >= *v42)
      {
        v43 = 1;
      }

      else
      {
        v43 = 255;
      }

      if (v2 == *v42)
      {
        v44 = v42[1];
        v45 = v42[2];
        v46 = v3 == v44;
        if (v3 >= v44)
        {
          v43 = 1;
        }

        else
        {
          v43 = 255;
        }

        if (v46)
        {
          v43 = 0;
        }

        if (v46 && v45 != 0x7FFFFFFF)
        {
          break;
        }
      }

      v42 = v23 + 3;
    }

    while (v43 < 0x80);
  }

  else
  {
    v29 = a1;
    v23 = a1;
    do
    {
      v31 = v23[3];
      v23 += 3;
      v30 = v31;
      v32 = v23[2];
      if (v32 == 0x7FFFFFFF)
      {
        v33 = v2 == v30;
        if (v2 >= v30)
        {
          v34 = 1;
        }

        else
        {
          v34 = -1;
        }

        if (v33)
        {
          v35 = v29[4];
          v36 = v3 == v35;
          if (v3 >= v35)
          {
            v37 = 1;
          }

          else
          {
            v37 = -1;
          }

          if (v36)
          {
            v34 = 1;
          }

          else
          {
            v34 = v37;
          }
        }
      }

      else
      {
        v38 = v2 == v30;
        if (v2 >= v30)
        {
          v34 = 1;
        }

        else
        {
          v34 = -1;
        }

        if (v38)
        {
          v39 = v29[4];
          v34 = v4 >= v32 ? 0 : -1;
          v40 = v3 == v39;
          v41 = v3 >= v39 ? 1 : -1;
          if (!v40)
          {
            v34 = v41;
          }
        }
      }

      v29 = v23;
    }

    while ((v34 & 0x80) == 0);
  }

LABEL_110:
  if (v23 < a2)
  {
    v48 = a2;
    while (1)
    {
      v52 = *(v48 - 12);
      v48 -= 12;
      v51 = v52;
      v53 = *(v48 + 8);
      if (v4 == 0x7FFFFFFF)
      {
        v54 = v53 != 0x7FFFFFFF;
        v56 = v2 == v51;
        if (v2 >= v51)
        {
          v50 = 1;
        }

        else
        {
          v50 = -1;
        }

        if (v56)
        {
LABEL_132:
          v57 = *(a2 - 8);
          if (v54 && v4 == 0x7FFFFFFF)
          {
            v58 = -1;
          }

          else
          {
            v58 = 1;
          }

          if ((v4 != 0x7FFFFFFF) != v54)
          {
            v59 = v58;
          }

          else
          {
            v59 = 0;
          }

LABEL_112:
          v49 = v3 == v57;
          if (v3 >= v57)
          {
            v50 = 1;
          }

          else
          {
            v50 = -1;
          }

          if (v49)
          {
            v50 = v59;
          }
        }
      }

      else if (v53 == 0x7FFFFFFF)
      {
        v54 = 0;
        v55 = v2 == v51;
        if (v2 >= v51)
        {
          v50 = 1;
        }

        else
        {
          v50 = -1;
        }

        if (v55)
        {
          goto LABEL_132;
        }
      }

      else
      {
        v60 = v2 == v51;
        if (v2 >= v51)
        {
          v50 = 1;
        }

        else
        {
          v50 = -1;
        }

        if (v60)
        {
          v57 = *(a2 - 8);
          if (v4 >= v53)
          {
            v59 = 0;
          }

          else
          {
            v59 = -1;
          }

          goto LABEL_112;
        }
      }

      a2 = v48;
      if ((v50 & 0x80) == 0)
      {
        goto LABEL_147;
      }
    }
  }

  v48 = a2;
LABEL_147:
  if (v23 < v48)
  {
LABEL_150:
    v92 = v23[2];
    v91 = *v23;
    v61 = *v48;
    v23[2] = *(v48 + 8);
    *v23 = v61;
    *(v48 + 8) = v92;
    *v48 = v91;
    if (v4 == 0x7FFFFFFF)
    {
      v75 = v23 + 3;
      do
      {
        v23 = v75;
        if (v2 >= *v75)
        {
          v76 = 1;
        }

        else
        {
          v76 = 255;
        }

        if (v2 == *v75)
        {
          v77 = v75[1];
          v78 = v75[2];
          v79 = v3 == v77;
          if (v3 >= v77)
          {
            v76 = 1;
          }

          else
          {
            v76 = 255;
          }

          if (v79)
          {
            v76 = 0;
          }

          if (v79 && v78 != 0x7FFFFFFF)
          {
            break;
          }
        }

        v75 = v23 + 3;
      }

      while (v76 < 0x80);
    }

    else
    {
      v62 = v23;
      do
      {
        v64 = v23[3];
        v23 += 3;
        v63 = v64;
        v65 = v23[2];
        if (v65 == 0x7FFFFFFF)
        {
          v66 = v2 == v63;
          if (v2 >= v63)
          {
            v67 = 1;
          }

          else
          {
            v67 = -1;
          }

          if (v66)
          {
            v68 = v62[4];
            v69 = v3 == v68;
            if (v3 >= v68)
            {
              v70 = 1;
            }

            else
            {
              v70 = -1;
            }

            if (v69)
            {
              v67 = 1;
            }

            else
            {
              v67 = v70;
            }
          }
        }

        else
        {
          v71 = v2 == v63;
          if (v2 >= v63)
          {
            v67 = 1;
          }

          else
          {
            v67 = -1;
          }

          if (v71)
          {
            v72 = v62[4];
            v67 = v4 >= v65 ? 0 : -1;
            v73 = v3 == v72;
            v74 = v3 >= v72 ? 1 : -1;
            if (!v73)
            {
              v67 = v74;
            }
          }
        }

        v62 = v23;
      }

      while ((v67 & 0x80) == 0);
    }

    while (1)
    {
      v84 = v48;
      v48 -= 12;
      v85 = *(v84 - 4);
      if (v4 == 0x7FFFFFFF)
      {
        v86 = v85 != 0x7FFFFFFF;
        if (v2 >= *v48)
        {
          v83 = 1;
        }

        else
        {
          v83 = -1;
        }

        if (v2 == *v48)
        {
LABEL_213:
          v87 = *(v84 - 8);
          if (v86 && v4 == 0x7FFFFFFF)
          {
            v88 = -1;
          }

          else
          {
            v88 = 1;
          }

          if ((v4 != 0x7FFFFFFF) != v86)
          {
            v83 = v88;
          }

          else
          {
            v83 = 0;
          }

LABEL_196:
          v81 = v3 == v87;
          if (v3 >= v87)
          {
            v82 = 1;
          }

          else
          {
            v82 = -1;
          }

          if (!v81)
          {
            v83 = v82;
          }
        }
      }

      else if (v85 == 0x7FFFFFFF)
      {
        v86 = 0;
        if (v2 >= *v48)
        {
          v83 = 1;
        }

        else
        {
          v83 = -1;
        }

        if (v2 == *v48)
        {
          goto LABEL_213;
        }
      }

      else
      {
        if (v2 >= *v48)
        {
          v83 = 1;
        }

        else
        {
          v83 = -1;
        }

        if (v2 == *v48)
        {
          v87 = *(v84 - 8);
          if (v4 >= v85)
          {
            v83 = 0;
          }

          else
          {
            v83 = -1;
          }

          goto LABEL_196;
        }
      }

      if ((v83 & 0x80) == 0)
      {
        if (v23 >= v48)
        {
          break;
        }

        goto LABEL_150;
      }
    }
  }

  if (v23 - 3 != a1)
  {
    v89 = *(v23 - 3);
    a1[2] = *(v23 - 1);
    *a1 = v89;
  }

  *(v23 - 3) = v2;
  *(v23 - 2) = v3;
  *(v23 - 1) = v4;
  return v23;
}

unsigned int *sub_5C6A18(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (v4 != 0x7FFFFFFF)
  {
    v17 = a1 + 3;
    while (1)
    {
      v6 = v17;
      v18 = v17[2];
      v19 = *v6;
      if (v18 == 0x7FFFFFFF)
      {
        v20 = v19 == v2;
        if (v19 >= v2)
        {
          v21 = 1;
        }

        else
        {
          v21 = 255;
        }

        if (v20)
        {
          if (v6[1] > v3)
          {
            v21 = 1;
          }

          else
          {
            v21 = 255;
          }
        }
      }

      else
      {
        v22 = v19 == v2;
        if (v19 >= v2)
        {
          v21 = 1;
        }

        else
        {
          v21 = 255;
        }

        if (v22)
        {
          v23 = v6[1];
          v24 = v23 == v3;
          v21 = v23 >= v3 ? 1 : 255;
          if (v24)
          {
            if (v18 >= v4)
            {
              goto LABEL_13;
            }

            v21 = 255;
          }
        }
      }

      v17 = v6 + 3;
      if (v21 < 0x80)
      {
        goto LABEL_13;
      }
    }
  }

  v5 = a1 + 3;
  do
  {
    v6 = v5;
    if (*v5 >= v2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 255;
    }

    if (*v5 == v2)
    {
      v8 = v5[1];
      v9 = v8 == v3;
      v7 = v8 >= v3 ? 1 : 255;
      if (v9)
      {
        break;
      }
    }

    v5 += 3;
  }

  while (v7 >= 0x80);
LABEL_13:
  if (v6 - 3 == a1)
  {
    while (1)
    {
      if (v6 >= a2)
      {
        v10 = a2;
        goto LABEL_113;
      }

      v27 = v4 != 0x7FFFFFFF;
      v10 = a2 - 3;
      v28 = *(a2 - 3);
      v29 = *(a2 - 1);
      if (v29 != 0x7FFFFFFF)
      {
        v27 = 0;
      }

      if (v4 == 0x7FFFFFFF || v29 == 0x7FFFFFFF)
      {
        v33 = v28 == v2;
        if (v28 >= v2)
        {
          v26 = 1;
        }

        else
        {
          v26 = -1;
        }

        if (v33)
        {
          v31 = *(a2 - 2);
          if (v27)
          {
            v34 = -1;
          }

          else
          {
            v34 = 1;
          }

          if (v4 == 0x7FFFFFFF && v29 == 0x7FFFFFFF)
          {
            v32 = 0;
          }

          else
          {
            v32 = v34;
          }

LABEL_52:
          v25 = v31 == v3;
          if (v31 >= v3)
          {
            v26 = 1;
          }

          else
          {
            v26 = -1;
          }

          if (v25)
          {
            v26 = v32;
          }
        }
      }

      else
      {
        v30 = v28 == v2;
        if (v28 >= v2)
        {
          v26 = 1;
        }

        else
        {
          v26 = -1;
        }

        if (v30)
        {
          v31 = *(a2 - 2);
          if (v29 >= v4)
          {
            v32 = 0;
          }

          else
          {
            v32 = -1;
          }

          goto LABEL_52;
        }
      }

      a2 -= 3;
      if (v26 < 0)
      {
        goto LABEL_113;
      }
    }
  }

  if (v4 != 0x7FFFFFFF)
  {
    v36 = a2 - 3;
    while (1)
    {
      v10 = v36;
      v37 = v36[2];
      v38 = *v10;
      if (v37 == 0x7FFFFFFF)
      {
        v39 = v38 == v2;
        if (v38 >= v2)
        {
          v40 = 1;
        }

        else
        {
          v40 = 255;
        }

        if (v39)
        {
          v41 = v10[1];
          v42 = v41 == v3;
          v40 = v41 >= v3 ? 1 : 255;
          if (v42)
          {
            goto LABEL_113;
          }
        }
      }

      else
      {
        v43 = v38 == v2;
        if (v38 >= v2)
        {
          v40 = 1;
        }

        else
        {
          v40 = 255;
        }

        if (v43)
        {
          v44 = v10[1];
          v45 = v44 == v3;
          v40 = v44 >= v3 ? 1 : 255;
          if (v45)
          {
            if (v37 < v4)
            {
              goto LABEL_113;
            }

            v40 = 0;
          }
        }
      }

      v36 = v10 - 3;
      if (v40 >= 0x80)
      {
        goto LABEL_113;
      }
    }
  }

  v10 = a2;
  do
  {
    v11 = *(v10 - 3);
    v10 -= 3;
    v12 = v11 == v2;
    if (v11 >= v2)
    {
      v13 = 1;
    }

    else
    {
      v13 = 255;
    }

    if (v12)
    {
      v14 = *(a2 - 2);
      v13 = *(a2 - 1) != 0x7FFFFFFF;
      v15 = v14 == v3;
      v16 = v14 >= v3 ? 1 : 255;
      if (!v15)
      {
        v13 = v16;
      }
    }

    a2 = v10;
  }

  while (v13 < 0x80);
LABEL_113:
  v46 = v6;
  if (v6 >= v10)
  {
    goto LABEL_184;
  }

  v46 = v6;
  v47 = v10;
  while (2)
  {
    v77 = v46[2];
    v76 = *v46;
    v48 = *v47;
    v46[2] = v47[2];
    *v46 = v48;
    v47[2] = v77;
    *v47 = v76;
    v49 = v46 + 3;
    if (v4 == 0x7FFFFFFF)
    {
      do
      {
        v46 = v49;
        if (*v49 >= v2)
        {
          v57 = 1;
        }

        else
        {
          v57 = 255;
        }

        if (*v49 == v2)
        {
          v58 = v49[1];
          v59 = v58 == v3;
          v57 = v58 >= v3 ? 1 : 255;
          if (v59)
          {
            break;
          }
        }

        v49 += 3;
      }

      while (v57 >= 0x80);
      goto LABEL_158;
    }

    while (1)
    {
      v46 = v49;
      v50 = v49[2];
      v51 = *v46;
      if (v50 == 0x7FFFFFFF)
      {
        v52 = v51 == v2;
        if (v51 >= v2)
        {
          v53 = 1;
        }

        else
        {
          v53 = 255;
        }

        if (v52)
        {
          if (v46[1] > v3)
          {
            v53 = 1;
          }

          else
          {
            v53 = 255;
          }
        }

        goto LABEL_118;
      }

      v54 = v51 == v2;
      v53 = v51 >= v2 ? 1 : 255;
      if (v54)
      {
        v55 = v46[1];
        v56 = v55 == v3;
        v53 = v55 >= v3 ? 1 : 255;
        if (v56)
        {
          break;
        }
      }

LABEL_118:
      v49 = v46 + 3;
      if (v53 <= 0x7F)
      {
        goto LABEL_158;
      }
    }

    if (v50 < v4)
    {
      v53 = 255;
      goto LABEL_118;
    }

    do
    {
LABEL_158:
      v63 = v47;
      v64 = v4 != 0x7FFFFFFF;
      v66 = *(v47 - 3);
      v47 -= 3;
      v65 = v66;
      v67 = v47[2];
      if (v67 != 0x7FFFFFFF)
      {
        v64 = 0;
      }

      if (v4 == 0x7FFFFFFF || v67 == 0x7FFFFFFF)
      {
        v71 = v65 == v2;
        if (v65 >= v2)
        {
          v62 = 1;
        }

        else
        {
          v62 = -1;
        }

        if (v71)
        {
          v69 = *(v63 - 2);
          if (v64)
          {
            v72 = -1;
          }

          else
          {
            v72 = 1;
          }

          if (v4 == 0x7FFFFFFF && v67 == 0x7FFFFFFF)
          {
            v70 = 0;
          }

          else
          {
            v70 = v72;
          }

          goto LABEL_151;
        }
      }

      else
      {
        v68 = v65 == v2;
        if (v65 >= v2)
        {
          v62 = 1;
        }

        else
        {
          v62 = -1;
        }

        if (v68)
        {
          v69 = *(v63 - 2);
          if (v67 >= v4)
          {
            v70 = 0;
          }

          else
          {
            v70 = -1;
          }

LABEL_151:
          v60 = v69 == v3;
          if (v69 >= v3)
          {
            v61 = 1;
          }

          else
          {
            v61 = -1;
          }

          if (v60)
          {
            v62 = v70;
          }

          else
          {
            v62 = v61;
          }
        }
      }
    }

    while ((v62 & 0x80) == 0);
    if (v46 < v47)
    {
      continue;
    }

    break;
  }

LABEL_184:
  if (v46 - 3 != a1)
  {
    v74 = *(v46 - 3);
    a1[2] = *(v46 - 1);
    *a1 = v74;
  }

  *(v46 - 3) = v2;
  *(v46 - 2) = v3;
  *(v46 - 1) = v4;
  return v46 - 3;
}

BOOL sub_5C6E0C(unsigned int *a1, unsigned int *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_5C555C(a1, a1 + 3, a2 - 3);
        return 1;
      case 4:
        sub_5C5A20(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        sub_5C5D44(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
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
      v4 = a2 - 3;
      v5 = *(a2 - 1);
      v6 = a1[2];
      if (v5 == 0x7FFFFFFF)
      {
        v7 = v6 != 0x7FFFFFFF;
      }

      else
      {
        if (v6 != 0x7FFFFFFF)
        {
          if (*v4 >= *a1)
          {
            v53 = 1;
          }

          else
          {
            v53 = -1;
          }

          if (*v4 != *a1)
          {
            goto LABEL_135;
          }

          v54 = a1[1];
          v55 = *(a2 - 2);
          v60 = v5 < v6;
          v59 = -1;
          if (!v60)
          {
            v59 = 0;
          }

LABEL_130:
          v61 = -1;
          if (v55 >= v54)
          {
            v61 = 1;
          }

          if (v55 == v54)
          {
            v53 = v59;
          }

          else
          {
            v53 = v61;
          }

LABEL_135:
          if (v53 < 0)
          {
            v62 = a1[2];
            v63 = *a1;
            v64 = *(a2 - 1);
            *a1 = *v4;
            a1[2] = v64;
            *v4 = v63;
            *(a2 - 1) = v62;
            return 1;
          }

          return 1;
        }

        v7 = 0;
      }

      if (*v4 >= *a1)
      {
        v53 = 1;
      }

      else
      {
        v53 = -1;
      }

      if (*v4 != *a1)
      {
        goto LABEL_135;
      }

      v54 = a1[1];
      v55 = *(a2 - 2);
      v25 = v5 == 0x7FFFFFFF;
      v56 = v5 != 0x7FFFFFFF;
      v57 = v25;
      v25 = (v7 & v57) == 0;
      v58 = -1;
      if (v25)
      {
        v58 = 1;
      }

      if (v56 != v7)
      {
        v59 = v58;
      }

      else
      {
        v59 = 0;
      }

      goto LABEL_130;
    }
  }

  v8 = a1 + 6;
  sub_5C555C(a1, a1 + 3, a1 + 6);
  v11 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v15 = v11[2];
    v16 = v8[2];
    v17 = *v8;
    if (v15 != 0x7FFFFFFF)
    {
      break;
    }

    v18 = v16 != 0x7FFFFFFF;
    v19 = *v11;
    if (*v11 >= v17)
    {
      v20 = 1;
    }

    else
    {
      v20 = -1;
    }

    if (v19 != v17)
    {
      goto LABEL_58;
    }

LABEL_29:
    v21 = v8[1];
    v22 = v11[1];
    if (v18 && v15 == 0x7FFFFFFF)
    {
      v23 = -1;
    }

    else
    {
      v23 = 1;
    }

    if ((v15 != 0x7FFFFFFF) != v18)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v22 == v21;
    if (v22 >= v21)
    {
      v26 = 1;
    }

    else
    {
      v26 = -1;
    }

    if (v25)
    {
      v26 = v24;
    }

    if (v26 < 0)
    {
      goto LABEL_59;
    }

LABEL_17:
    v8 = v11;
    v12 += 12;
    v11 += 3;
    if (v11 == a2)
    {
      return 1;
    }
  }

  if (v16 == 0x7FFFFFFF)
  {
    v18 = 0;
    v19 = *v11;
    if (*v11 >= v17)
    {
      v20 = 1;
    }

    else
    {
      v20 = -1;
    }

    if (v19 != v17)
    {
      goto LABEL_58;
    }

    goto LABEL_29;
  }

  v19 = *v11;
  if (*v11 >= v17)
  {
    v20 = 1;
  }

  else
  {
    v20 = -1;
  }

  if (v19 != v17)
  {
LABEL_58:
    v17 = v19;
    if (v20 < 0)
    {
      goto LABEL_59;
    }

    goto LABEL_17;
  }

  v27 = v8[1];
  v28 = v11[1];
  if (v15 >= v16)
  {
    v29 = 0;
  }

  else
  {
    v29 = -1;
  }

  v30 = v28 == v27;
  if (v28 >= v27)
  {
    v31 = 1;
  }

  else
  {
    v31 = -1;
  }

  if (v30)
  {
    v31 = v29;
  }

  if ((v31 & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_59:
  v32 = v11[1];
  v33 = v12;
  if (v15 == 0x7FFFFFFF)
  {
    while (1)
    {
      v46 = a1 + v33;
      *(v46 + 36) = *(a1 + v33 + 24);
      *(v46 + 11) = *(a1 + v33 + 32);
      if (v33 == -24)
      {
        break;
      }

      v14 = v8;
      v47 = *(v46 + 3);
      v48 = v17 == v47;
      if (v17 >= v47)
      {
        v49 = 1;
      }

      else
      {
        v49 = 255;
      }

      if (v48)
      {
        v50 = *(a1 + v33 + 16);
        v51 = v32 == v50;
        if (v32 >= v50)
        {
          v49 = 1;
        }

        else
        {
          v49 = 255;
        }

        if (v51)
        {
          v49 = 255;
        }

        if (v51 && *(a1 + v33 + 20) == 0x7FFFFFFF)
        {
          v14 = (a1 + v33 + 24);
          goto LABEL_16;
        }
      }

      v8 -= 3;
      v33 -= 12;
      if (v49 < 0x80)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v34 = v12;
    while (1)
    {
      v35 = a1 + v34;
      *(v35 + 36) = *(a1 + v34 + 24);
      *(v35 + 11) = *(a1 + v34 + 32);
      if (v34 == -24)
      {
        break;
      }

      v36 = *(v35 + 5);
      v37 = *(v35 + 3);
      if (v36 == 0x7FFFFFFF)
      {
        v38 = v17 == v37;
        if (v17 >= v37)
        {
          v39 = 1;
        }

        else
        {
          v39 = -1;
        }

        if (v38)
        {
          v40 = *(a1 + v34 + 16);
          v41 = v32 == v40;
          v39 = v32 >= v40 ? 1 : -1;
          if (v41)
          {
            v39 = 1;
          }
        }
      }

      else
      {
        v42 = v17 == v37;
        if (v17 >= v37)
        {
          v39 = 1;
        }

        else
        {
          v39 = -1;
        }

        if (v42)
        {
          v43 = *(a1 + v34 + 16);
          v44 = v15 >= v36 ? 0 : -1;
          v45 = v32 == v43;
          v39 = v32 >= v43 ? 1 : -1;
          if (v45)
          {
            v39 = v44;
          }
        }
      }

      v34 -= 12;
      if ((v39 & 0x80) == 0)
      {
        v14 = (a1 + v34 + 36);
        goto LABEL_16;
      }
    }
  }

  v14 = a1;
LABEL_16:
  *v14 = v17;
  v14[1] = v32;
  v14[2] = v15;
  if (++v13 != 8)
  {
    goto LABEL_17;
  }

  return v11 + 3 == a2;
}

char *sub_5C7254(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
    if (a2 - a1 >= 13)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[12 * v10];
      do
      {
        sub_5C75D0(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    i = v6;
    if (v6 != a3)
    {
      for (i = v6; i != a3; i += 12)
      {
        v14 = *(i + 2);
        v15 = *(a1 + 2);
        v16 = *a1;
        if (v14 == 0x7FFFFFFF)
        {
          v17 = v15 != 0x7FFFFFFF;
          v20 = *i == v16;
          if (*i >= v16)
          {
            v19 = 1;
          }

          else
          {
            v19 = -1;
          }

          if (v20)
          {
LABEL_20:
            v21 = *(a1 + 1);
            v22 = *(i + 1);
            v18 = v14 == 0x7FFFFFFF;
            v23 = v14 != 0x7FFFFFFF;
            v24 = v18;
            if ((v17 & v24) != 0)
            {
              v25 = -1;
            }

            else
            {
              v25 = 1;
            }

            if (v23 != v17)
            {
              v26 = v25;
            }

            else
            {
              v26 = 0;
            }

LABEL_37:
            v28 = v22 == v21;
            if (v22 >= v21)
            {
              v19 = 1;
            }

            else
            {
              v19 = -1;
            }

            if (v28)
            {
              v19 = v26;
            }
          }
        }

        else if (v15 == 0x7FFFFFFF)
        {
          v17 = 0;
          v18 = *i == v16;
          if (*i >= v16)
          {
            v19 = 1;
          }

          else
          {
            v19 = -1;
          }

          if (v18)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v27 = *i == v16;
          if (*i >= v16)
          {
            v19 = 1;
          }

          else
          {
            v19 = -1;
          }

          if (v27)
          {
            v21 = *(a1 + 1);
            v22 = *(i + 1);
            if (v14 >= v15)
            {
              v26 = 0;
            }

            else
            {
              v26 = -1;
            }

            goto LABEL_37;
          }
        }

        if (v19 < 0)
        {
          v29 = *(i + 2);
          v30 = *i;
          v31 = *(a1 + 2);
          *i = *a1;
          *(i + 2) = v31;
          *a1 = v30;
          *(a1 + 2) = v29;
          sub_5C75D0(a1, a4, v9, a1);
        }
      }
    }

    if (v8 < 13)
    {
      return i;
    }

    v32 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
LABEL_51:
    if (v32 < 2)
    {
      goto LABEL_49;
    }

    v36 = 0;
    v57 = *a1;
    v58 = *(a1 + 2);
    v37 = a1;
    while (1)
    {
      v44 = &v37[12 * v36];
      v41 = v44 + 12;
      v42 = (2 * v36) | 1;
      v45 = 2 * v36 + 2;
      if (v45 < v32)
      {
        break;
      }

LABEL_61:
      v43 = *v41;
      *(v37 + 2) = *(v41 + 2);
      *v37 = v43;
      v37 = v41;
      v36 = v42;
      if (v42 > ((v32 - 2) >> 1))
      {
        v33 = v6 - 12;
        if (v41 == v6 - 12)
        {
          *(v41 + 2) = v58;
          *v41 = v57;
        }

        else
        {
          v34 = *v33;
          *(v41 + 2) = *(v6 - 1);
          *v41 = v34;
          *v33 = v57;
          *(v6 - 1) = v58;
          sub_5C7954(a1, (v41 + 12), a4, 0xAAAAAAAAAAAAAAABLL * ((v41 + 12 - a1) >> 2));
        }

LABEL_49:
        v6 -= 12;
        if (v32-- <= 2)
        {
          return i;
        }

        goto LABEL_51;
      }
    }

    v46 = v44 + 24;
    v47 = *(v44 + 5);
    v48 = *(v44 + 8);
    if (v47 == 0x7FFFFFFF)
    {
      v49 = v48 != 0x7FFFFFFF;
      if (*v41 >= *v46)
      {
        v40 = 1;
      }

      else
      {
        v40 = -1;
      }

      if (*v41 != *v46)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v48 != 0x7FFFFFFF)
      {
        if (*v41 >= *v46)
        {
          v40 = 1;
        }

        else
        {
          v40 = -1;
        }

        if (*v41 != *v46)
        {
          goto LABEL_59;
        }

        v50 = *(v44 + 7);
        v51 = *(v44 + 4);
        if (v47 >= v48)
        {
          v55 = 0;
        }

        else
        {
          v55 = -1;
        }

        goto LABEL_53;
      }

      v49 = 0;
      if (*v41 >= *v46)
      {
        v40 = 1;
      }

      else
      {
        v40 = -1;
      }

      if (*v41 != *v46)
      {
        goto LABEL_59;
      }
    }

    v50 = *(v44 + 7);
    v51 = *(v44 + 4);
    v18 = v47 == 0x7FFFFFFF;
    v52 = v47 != 0x7FFFFFFF;
    v53 = v18;
    if ((v49 & v53) != 0)
    {
      v54 = -1;
    }

    else
    {
      v54 = 1;
    }

    if (v52 != v49)
    {
      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

LABEL_53:
    v38 = v51 == v50;
    if (v51 >= v50)
    {
      v39 = 1;
    }

    else
    {
      v39 = -1;
    }

    if (v38)
    {
      v40 = v55;
    }

    else
    {
      v40 = v39;
    }

LABEL_59:
    if (v40 < 0)
    {
      v41 = v46;
      v42 = v45;
    }

    goto LABEL_61;
  }

  return a3;
}

uint64_t sub_5C75D0(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 2)))
    {
      v5 = (0x5555555555555556 * ((a4 - result) >> 2)) | 1;
      v6 = (result + 12 * v5);
      if (0x5555555555555556 * ((a4 - result) >> 2) + 2 >= a3)
      {
        goto LABEL_34;
      }

      v7 = v6[2];
      v8 = v6[5];
      if (v7 == 0x7FFFFFFF)
      {
        v9 = v8 != 0x7FFFFFFF;
      }

      else
      {
        if (v8 != 0x7FFFFFFF)
        {
          v18 = v6[3];
          if (*v6 >= v18)
          {
            v11 = 1;
          }

          else
          {
            v11 = -1;
          }

          if (*v6 == v18)
          {
            v12 = v6[4];
            v13 = v6[1];
            v19 = v7 < v8;
            v17 = -1;
            if (!v19)
            {
              v17 = 0;
            }

            goto LABEL_27;
          }

LABEL_32:
          if (v11 < 0)
          {
            v6 += 3;
            v5 = 0x5555555555555556 * ((a4 - result) >> 2) + 2;
          }

LABEL_34:
          v21 = v6[2];
          v22 = a4[2];
          if (v21 == 0x7FFFFFFF)
          {
            v23 = v22 != 0x7FFFFFFF;
            v24 = *v6;
            v25 = *a4;
            v26 = -1;
            if (*v6 >= *a4)
            {
              v26 = 1;
            }

            if (v24 != v25)
            {
              goto LABEL_67;
            }
          }

          else
          {
            if (v22 != 0x7FFFFFFF)
            {
              v24 = *v6;
              v25 = *a4;
              if (*v6 >= *a4)
              {
                v26 = 1;
              }

              else
              {
                v26 = -1;
              }

              if (v24 != v25)
              {
LABEL_67:
                if (v26 < 0)
                {
                  return result;
                }

                v38 = a4[1];
                while (1)
                {
                  v41 = a4;
                  a4 = v6;
                  v42 = *v6;
                  v41[2] = a4[2];
                  *v41 = v42;
                  if (v4 < v5)
                  {
LABEL_142:
                    *a4 = v25;
                    a4[1] = v38;
                    a4[2] = v22;
                    return result;
                  }

                  v43 = (2 * v5) | 1;
                  v6 = (result + 12 * v43);
                  v5 = 2 * v5 + 2;
                  if (v5 < a3)
                  {
                    break;
                  }

                  v5 = v43;
LABEL_115:
                  v58 = v6[2];
                  v59 = v22 != 0x7FFFFFFF && v58 == 0x7FFFFFFF;
                  v60 = *v6;
                  if (v58 == 0x7FFFFFFF || v22 == 0x7FFFFFFF)
                  {
                    v62 = v60 == v25;
                    if (v60 >= v25)
                    {
                      v40 = 1;
                    }

                    else
                    {
                      v40 = -1;
                    }

                    if (!v62)
                    {
                      goto LABEL_75;
                    }

                    v63 = v6[1];
                    v64 = v58 != 0x7FFFFFFF;
                    if (v59)
                    {
                      v65 = -1;
                    }

                    else
                    {
                      v65 = 1;
                    }

                    if (v64 != v59)
                    {
                      v66 = v65;
                    }

                    else
                    {
                      v66 = 0;
                    }
                  }

                  else
                  {
                    v67 = v60 == v25;
                    if (v60 >= v25)
                    {
                      v40 = 1;
                    }

                    else
                    {
                      v40 = -1;
                    }

                    if (!v67)
                    {
                      goto LABEL_75;
                    }

                    v63 = v6[1];
                    if (v58 >= v22)
                    {
                      v66 = 0;
                    }

                    else
                    {
                      v66 = -1;
                    }
                  }

                  v39 = v63 == v38;
                  if (v63 >= v38)
                  {
                    v40 = 1;
                  }

                  else
                  {
                    v40 = -1;
                  }

                  if (v39)
                  {
                    v40 = v66;
                  }

LABEL_75:
                  if (v40 < 0)
                  {
                    goto LABEL_142;
                  }
                }

                v44 = v6[2];
                v45 = v6[5];
                if (v44 == 0x7FFFFFFF)
                {
                  v46 = v45 != 0x7FFFFFFF;
                  v49 = v6[3];
                  if (*v6 >= v49)
                  {
                    v48 = 1;
                  }

                  else
                  {
                    v48 = -1;
                  }

                  if (*v6 != v49)
                  {
                    goto LABEL_112;
                  }
                }

                else
                {
                  if (v45 != 0x7FFFFFFF)
                  {
                    v56 = v6[3];
                    if (*v6 >= v56)
                    {
                      v48 = 1;
                    }

                    else
                    {
                      v48 = -1;
                    }

                    if (*v6 != v56)
                    {
                      goto LABEL_112;
                    }

                    v50 = v6[4];
                    v51 = v6[1];
                    if (v44 >= v45)
                    {
                      v55 = 0;
                    }

                    else
                    {
                      v55 = -1;
                    }

                    goto LABEL_106;
                  }

                  v46 = 0;
                  v47 = v6[3];
                  if (*v6 >= v47)
                  {
                    v48 = 1;
                  }

                  else
                  {
                    v48 = -1;
                  }

                  if (*v6 != v47)
                  {
                    goto LABEL_112;
                  }
                }

                v50 = v6[4];
                v51 = v6[1];
                v34 = v44 == 0x7FFFFFFF;
                v52 = v44 != 0x7FFFFFFF;
                v53 = v34;
                if ((v46 & v53) != 0)
                {
                  v54 = -1;
                }

                else
                {
                  v54 = 1;
                }

                if (v52 != v46)
                {
                  v55 = v54;
                }

                else
                {
                  v55 = 0;
                }

LABEL_106:
                if (v51 >= v50)
                {
                  v57 = 1;
                }

                else
                {
                  v57 = -1;
                }

                if (v51 == v50)
                {
                  v48 = v55;
                }

                else
                {
                  v48 = v57;
                }

LABEL_112:
                if (v48 < 0)
                {
                  v6 += 3;
                }

                else
                {
                  v5 = v43;
                }

                goto LABEL_115;
              }

              v35 = a4[1];
              v36 = v6[1];
              v19 = v21 < v22;
              v32 = -1;
              if (!v19)
              {
                v32 = 0;
              }

              v33 = v36 >= v35;
              v34 = v36 == v35;
LABEL_60:
              v37 = -1;
              if (v33)
              {
                v37 = 1;
              }

              if (v34)
              {
                v26 = v32;
              }

              else
              {
                v26 = v37;
              }

              v25 = v24;
              goto LABEL_67;
            }

            v23 = 0;
            v24 = *v6;
            v25 = *a4;
            v26 = -1;
            if (*v6 >= *a4)
            {
              v26 = 1;
            }

            if (v24 != v25)
            {
              goto LABEL_67;
            }
          }

          v27 = a4[1];
          v28 = v6[1];
          v34 = v21 == 0x7FFFFFFF;
          v29 = v21 != 0x7FFFFFFF;
          v30 = v34;
          v34 = (v23 & v30) == 0;
          v31 = -1;
          if (v34)
          {
            v31 = 1;
          }

          if (v29 != v23)
          {
            v32 = v31;
          }

          else
          {
            v32 = 0;
          }

          v33 = v28 >= v27;
          v34 = v28 == v27;
          goto LABEL_60;
        }

        v9 = 0;
      }

      v10 = v6[3];
      if (*v6 >= v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = -1;
      }

      if (*v6 == v10)
      {
        v12 = v6[4];
        v13 = v6[1];
        v34 = v7 == 0x7FFFFFFF;
        v14 = v7 != 0x7FFFFFFF;
        v15 = v34;
        v34 = (v9 & v15) == 0;
        v16 = -1;
        if (v34)
        {
          v16 = 1;
        }

        if (v14 != v9)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

LABEL_27:
        v20 = -1;
        if (v13 >= v12)
        {
          v20 = 1;
        }

        if (v13 == v12)
        {
          v11 = v17;
        }

        else
        {
          v11 = v20;
        }

        goto LABEL_32;
      }

      goto LABEL_32;
    }
  }

  return result;
}

uint64_t sub_5C7954(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = (result + 12 * (v4 >> 1));
  v7 = (a2 - 12);
  v8 = v6[2];
  v9 = *(a2 - 4);
  if (v8 != 0x7FFFFFFF)
  {
    if (v9 != 0x7FFFFFFF)
    {
      v11 = *v6;
      v12 = *v7;
      if (*v6 >= *v7)
      {
        v13 = 1;
      }

      else
      {
        v13 = -1;
      }

      if (v11 != v12)
      {
        goto LABEL_35;
      }

      v22 = *(a2 - 8);
      v23 = v6[1];
      v24 = v8 < v9;
      v19 = -1;
      if (!v24)
      {
        v19 = 0;
      }

      v20 = v23 >= v22;
      v21 = v23 == v22;
      goto LABEL_28;
    }

    v10 = 0;
    v11 = *v6;
    v12 = *v7;
    v13 = -1;
    if (*v6 >= *v7)
    {
      v13 = 1;
    }

    if (v11 != v12)
    {
      goto LABEL_35;
    }

LABEL_11:
    v14 = *(a2 - 8);
    v15 = v6[1];
    v21 = v8 == 0x7FFFFFFF;
    v16 = v8 != 0x7FFFFFFF;
    v17 = v21;
    v21 = (v10 & v17) == 0;
    v18 = -1;
    if (v21)
    {
      v18 = 1;
    }

    if (v16 != v10)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v15 >= v14;
    v21 = v15 == v14;
LABEL_28:
    v25 = -1;
    if (v20)
    {
      v25 = 1;
    }

    if (v21)
    {
      v13 = v19;
    }

    else
    {
      v13 = v25;
    }

    v12 = v11;
    goto LABEL_35;
  }

  v10 = v9 != 0x7FFFFFFF;
  v11 = *v6;
  v12 = *v7;
  v13 = -1;
  if (*v6 >= *v7)
  {
    v13 = 1;
  }

  if (v11 == v12)
  {
    goto LABEL_11;
  }

LABEL_35:
  if (v13 < 0)
  {
    v26 = *(a2 - 8);
    if (v9 == 0x7FFFFFFF)
    {
      do
      {
        v27 = v7;
        v7 = v6;
        v28 = *v6;
        v27[2] = v7[2];
        *v27 = v28;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 12 * v5);
        v29 = *v6 >= v12 ? 1 : 255;
        if (*v6 == v12)
        {
          v30 = v6[1];
          v31 = v30 == v26;
          v29 = v30 >= v26 ? 1 : 255;
          if (v31)
          {
            break;
          }
        }
      }

      while (v29 >= 0x80);
    }

    else
    {
      do
      {
        v33 = v7;
        v7 = v6;
        v34 = *v6;
        v33[2] = v7[2];
        *v33 = v34;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 12 * v5);
        v35 = v6[2];
        v36 = *v6;
        if (v35 == 0x7FFFFFFF)
        {
          v37 = v36 == v12;
          if (v36 >= v12)
          {
            v32 = 1;
          }

          else
          {
            v32 = 255;
          }

          if (v37)
          {
            if (v6[1] > v26)
            {
              v32 = 1;
            }

            else
            {
              v32 = 255;
            }
          }
        }

        else
        {
          v38 = v36 == v12;
          if (v36 >= v12)
          {
            v32 = 1;
          }

          else
          {
            v32 = 255;
          }

          if (v38)
          {
            v39 = v6[1];
            v40 = v39 == v26;
            v32 = v39 >= v26 ? 1 : 255;
            if (v40)
            {
              if (v35 >= v9)
              {
                break;
              }

              v32 = 255;
            }
          }
        }
      }

      while (v32 > 0x7F);
    }

    *v7 = v12;
    v7[1] = v26;
    v7[2] = v9;
  }

  return result;
}

void sub_5C7B50()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  LODWORD(v2) = 0;
  HIBYTE(v4[0]) = 14;
  strcpy(v3, "ROUTES_THROUGH");
  LODWORD(v4[1]) = 1;
  v6 = 9;
  strcpy(v5, "ROUTES_TO");
  LODWORD(v7) = 3;
  v9 = 11;
  strcpy(__p, "ROUTES_FROM");
  LODWORD(v10) = 2;
  xmmword_2795B50 = 0u;
  unk_2795B60 = 0u;
  dword_2795B70 = 1065353216;
  sub_3A9A34(&xmmword_2795B50, v0, v0);
  sub_3A9A34(&xmmword_2795B50, v3, v3);
  sub_3A9A34(&xmmword_2795B50, v5, v5);
  sub_3A9A34(&xmmword_2795B50, __p, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v4[0]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v5[0]);
  if ((SHIBYTE(v4[0]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    byte_2795B8F = 3;
    LODWORD(qword_2795B78) = 5136193;
    byte_2795BA7 = 3;
    LODWORD(qword_2795B90) = 5136194;
    byte_2795BBF = 3;
    LODWORD(qword_2795BA8) = 5136195;
    byte_2795BD7 = 15;
    strcpy(&qword_2795BC0, "vehicle_mass_kg");
    byte_2795BEF = 21;
    strcpy(&xmmword_2795BD8, "vehicle_cargo_mass_kg");
    byte_2795C07 = 19;
    strcpy(&qword_2795BF0, "vehicle_aux_power_w");
    byte_2795C1F = 15;
    strcpy(&qword_2795C08, "dcdc_efficiency");
    strcpy(&qword_2795C20, "drive_train_efficiency");
    HIBYTE(word_2795C36) = 22;
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

void sub_5CAF44(_Unwind_Exception *a1)
{
  if (qword_2795B38)
  {
    qword_2795B40 = qword_2795B38;
    operator delete(qword_2795B38);
  }

  _Unwind_Resume(a1);
}

double sub_5CB20C(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 2008) = 0;
  result = 0.0;
  *(a1 + 2016) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2080) = 0;
  return result;
}

uint64_t sub_5CB234(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = a2;
  sub_5C3640(a1 + 8, a3);
  *(a1 + 2008) = 1;
  *(a1 + 2016) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2080) = 0;
  return a1;
}

uint64_t sub_5CB28C(uint64_t a1)
{
  if ((*(a1 + 2008) & 1) == 0)
  {
    sub_4F0F0C();
  }

  return a1 + 8;
}

uint64_t sub_5CB2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_570D48(a1 + 8, v4);
  result = sub_529850(a2, v4);
  if (v4[1120] == 1)
  {
    return sub_3A9518(v4);
  }

  return result;
}

BOOL sub_5CB31C(uint64_t a1)
{
  if (*(a1 + 2008) != 1 || !sub_570BFC(a1 + 8))
  {
    return 0;
  }

  return sub_570C4C((a1 + 8));
}

uint64_t sub_5CB3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_55BD50(a1 + 48, a4);
  sub_64B998(a1 + 208);
  v7 = *(a1 + 8);
  if (v7 >= *(a1 + 16))
  {
    v8 = sub_5C489C(a1, a2);
  }

  else
  {
    sub_55BD50(*(a1 + 8), a2);
    v8 = v7 + 160;
    *(a1 + 8) = v7 + 160;
  }

  *(a1 + 8) = v8;
  v9 = *(a1 + 32);
  if (v9 >= *(a1 + 40))
  {
    *(a1 + 32) = sub_5C489C((a1 + 24), a3);
  }

  else
  {
    sub_55BD50(*(a1 + 32), a3);
    *(a1 + 32) = v9 + 160;
    *(a1 + 32) = v9 + 160;
  }

  return a1;
}

void sub_5CB498(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_53A868(v1 + 208);
  sub_53A868(v1 + 48);
  sub_5C0ED8((v1 + 24));
  sub_5C0ED8(v1);
  _Unwind_Resume(a1);
}

void sub_5CB4E4(_Unwind_Exception *a1)
{
  sub_5C0ED8(v1 + 3);
  sub_5C0ED8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_5CB504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_64B998(a1 + 48);
  sub_64B998(a1 + 208);
  sub_64BC20(&v19, a2);
  v8 = *(a1 + 8);
  if (v8 >= *(a1 + 16))
  {
    v12 = sub_5CE200(a1, &v19);
  }

  else
  {
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *v8 = 0;
    *(v8 + 8) = 0;
    *v8 = v19;
    *(v8 + 16) = v20;
    v19 = 0uLL;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    *(v8 + 24) = v21;
    *(v8 + 40) = v22;
    *(v8 + 48) = 0;
    v20 = 0;
    v21 = 0uLL;
    v22 = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    *(v8 + 48) = v23;
    v23 = 0uLL;
    *(v8 + 64) = v24;
    *(v8 + 72) = 0;
    *(v8 + 80) = 0;
    *(v8 + 88) = 0;
    *(v8 + 72) = v25;
    *(v8 + 88) = v26;
    v24 = 0;
    v25 = 0uLL;
    v26 = 0;
    v9 = v27;
    v27 = 0;
    *(v8 + 96) = v9;
    LODWORD(v9) = v28;
    *(v8 + 108) = v29;
    *(v8 + 104) = v9;
    v10 = v30;
    *(v8 + 128) = v31;
    *(v8 + 112) = v10;
    v30 = 0uLL;
    v11 = v32;
    *(v8 + 152) = v33;
    *(v8 + 136) = v11;
    v33 = 0;
    v31 = 0;
    v32 = 0uLL;
    v12 = v8 + 160;
    *(a1 + 8) = v8 + 160;
  }

  *(a1 + 8) = v12;
  sub_53A868(&v19);
  sub_64BC20(&v19, a3);
  v13 = *(a1 + 32);
  if (v13 >= *(a1 + 40))
  {
    v17 = sub_5CE200((a1 + 24), &v19);
  }

  else
  {
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *v13 = 0;
    *(v13 + 8) = 0;
    *v13 = v19;
    *(v13 + 16) = v20;
    v19 = 0uLL;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 24) = v21;
    *(v13 + 40) = v22;
    *(v13 + 48) = 0;
    v20 = 0;
    v21 = 0uLL;
    v22 = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    *(v13 + 48) = v23;
    v23 = 0uLL;
    *(v13 + 64) = v24;
    *(v13 + 72) = 0;
    *(v13 + 80) = 0;
    *(v13 + 88) = 0;
    *(v13 + 72) = v25;
    *(v13 + 88) = v26;
    v24 = 0;
    v25 = 0uLL;
    v26 = 0;
    v14 = v27;
    v27 = 0;
    *(v13 + 96) = v14;
    LODWORD(v14) = v28;
    *(v13 + 108) = v29;
    *(v13 + 104) = v14;
    v15 = v30;
    *(v13 + 128) = v31;
    *(v13 + 112) = v15;
    v30 = 0uLL;
    v16 = v32;
    *(v13 + 152) = v33;
    *(v13 + 136) = v16;
    v33 = 0;
    v31 = 0;
    v32 = 0uLL;
    v17 = v13 + 160;
    *(a1 + 32) = v13 + 160;
  }

  *(a1 + 32) = v17;
  sub_53A868(&v19);
  sub_64BC20(&v19, a4);
  sub_53D784(a1 + 48, &v19);
  sub_53A868(&v19);
  return a1;
}

void sub_5CB760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_53A868(&a9);
  sub_53A868((v9 + 26));
  sub_53A868((v9 + 6));
  sub_5C0ED8(v9 + 3);
  sub_5C0ED8(v9);
  _Unwind_Resume(a1);
}

void sub_5CB7B0(_Unwind_Exception *a1)
{
  sub_5C0ED8(v1 + 3);
  sub_5C0ED8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_5CB7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_64B998(a1 + 48);
  sub_64B998(a1 + 208);
  sub_64BC20(&v21, a2);
  v10 = *(a1 + 8);
  if (v10 >= *(a1 + 16))
  {
    v14 = sub_5CE200(a1, &v21);
  }

  else
  {
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *v10 = 0;
    *(v10 + 8) = 0;
    *v10 = v21;
    *(v10 + 16) = v22;
    v21 = 0uLL;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
    *(v10 + 24) = v23;
    *(v10 + 40) = v24;
    *(v10 + 48) = 0;
    v22 = 0;
    v23 = 0uLL;
    v24 = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    *(v10 + 48) = v25;
    v25 = 0uLL;
    *(v10 + 64) = v26;
    *(v10 + 72) = 0;
    *(v10 + 80) = 0;
    *(v10 + 88) = 0;
    *(v10 + 72) = v27;
    *(v10 + 88) = v28;
    v26 = 0;
    v27 = 0uLL;
    v28 = 0;
    v11 = v29;
    v29 = 0;
    *(v10 + 96) = v11;
    LODWORD(v11) = v30;
    *(v10 + 108) = v31;
    *(v10 + 104) = v11;
    v12 = v32;
    *(v10 + 128) = v33;
    *(v10 + 112) = v12;
    v32 = 0uLL;
    v13 = v34;
    *(v10 + 152) = v35;
    *(v10 + 136) = v13;
    v35 = 0;
    v33 = 0;
    v34 = 0uLL;
    v14 = v10 + 160;
    *(a1 + 8) = v10 + 160;
  }

  *(a1 + 8) = v14;
  sub_53A868(&v21);
  sub_64BC20(&v21, a3);
  v15 = *(a1 + 32);
  if (v15 >= *(a1 + 40))
  {
    v19 = sub_5CE200((a1 + 24), &v21);
  }

  else
  {
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *v15 = 0;
    *(v15 + 8) = 0;
    *v15 = v21;
    *(v15 + 16) = v22;
    v21 = 0uLL;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 24) = v23;
    *(v15 + 40) = v24;
    *(v15 + 48) = 0;
    v22 = 0;
    v23 = 0uLL;
    v24 = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    *(v15 + 48) = v25;
    v25 = 0uLL;
    *(v15 + 64) = v26;
    *(v15 + 72) = 0;
    *(v15 + 80) = 0;
    *(v15 + 88) = 0;
    *(v15 + 72) = v27;
    *(v15 + 88) = v28;
    v26 = 0;
    v27 = 0uLL;
    v28 = 0;
    v16 = v29;
    v29 = 0;
    *(v15 + 96) = v16;
    LODWORD(v16) = v30;
    *(v15 + 108) = v31;
    *(v15 + 104) = v16;
    v17 = v32;
    *(v15 + 128) = v33;
    *(v15 + 112) = v17;
    v32 = 0uLL;
    v18 = v34;
    *(v15 + 152) = v35;
    *(v15 + 136) = v18;
    v35 = 0;
    v33 = 0;
    v34 = 0uLL;
    v19 = v15 + 160;
    *(a1 + 32) = v15 + 160;
  }

  *(a1 + 32) = v19;
  sub_53A868(&v21);
  sub_64BC20(&v21, a4);
  sub_53D784(a1 + 48, &v21);
  sub_53A868(&v21);
  sub_64BC20(&v21, a5);
  sub_53D784(a1 + 208, &v21);
  sub_53A868(&v21);
  return a1;
}

void sub_5CBA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_53A868(&a9);
  sub_53A868((v9 + 26));
  sub_53A868((v9 + 6));
  sub_5C0ED8(v9 + 3);
  sub_5C0ED8(v9);
  _Unwind_Resume(a1);
}

void sub_5CBAAC(_Unwind_Exception *a1)
{
  sub_5C0ED8(v1 + 3);
  sub_5C0ED8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_5CBB0C(uint64_t result, void *a2, _DWORD *a3)
{
  *result = *a2;
  *(result + 8) = 0;
  *(result + 16) = 0x7FFFFFFFFFFFFFFFLL;
  *(result + 24) = 0;
  *(result + 32) = *a3;
  return result;
}

BOOL sub_5CBBA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v1 == 0x7FFFFFFFFFFFFFFFLL && *(a1 + 32) == 0x7FFFFFFF;
  }

  else
  {
    return v1 != 0x7FFFFFFFFFFFFFFFLL || *(a1 + 32) != 0x7FFFFFFF;
  }
}

uint64_t sub_5CBC00(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4)
{
  result = sub_64BC20(a1, a2);
  v7 = *a4;
  *(result + 160) = *a3;
  *(result + 164) = v7;
  return result;
}

uint64_t sub_5CBC34(uint64_t result, __int128 *a2, int a3, void *a4, uint64_t *a5)
{
  if (*(a2 + 23) < 0)
  {
    v9 = result;
    sub_325C(result, *a2, *(a2 + 1));
    result = v9;
  }

  else
  {
    v8 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v8;
  }

  *(result + 24) = a3;
  *(result + 28) = 1;
  *(result + 32) = 0;
  *(result + 40) = *a4;
  v10 = *a5;
  *(result + 56) = *(a5 + 2);
  *(result + 48) = v10;
  return result;
}

double sub_5CBCBC(uint64_t a1, __int128 *a2, int a3, void *a4)
{
  if (*(a2 + 23) < 0)
  {
    v7 = a1;
    sub_325C(a1, *a2, *(a2 + 1));
    a1 = v7;
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
  }

  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = a3;
  *(a1 + 40) = *a4;
  result = NAN;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0x7FFFFFFF;
  return result;
}

BOOL sub_5CBD54(uint64_t a1)
{
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
      return *(a1 + 40) != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (*(a1 + 23))
  {
    return *(a1 + 40) != 0x7FFFFFFFFFFFFFFFLL;
  }

  return 0;
}

BOOL sub_5CBD84(uint64_t a1)
{
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
      return 0;
    }
  }

  else if (*(a1 + 23))
  {
    return 0;
  }

  return *(a1 + 40) == 0x7FFFFFFFFFFFFFFFLL;
}

__int128 *sub_5CBDB4(__int128 *__dst, __int128 *a2)
{
  v2 = __dst;
  *__dst = 0uLL;
  *(__dst + 2) = 0;
  if (__dst != a2)
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      v3 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v3;
      return __dst;
    }

    sub_13A68(__dst, *a2, *(a2 + 1));
  }

  return v2;
}

void sub_5CBE20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_5CBE3C(void *a1, int a2, int a3)
{
  v4 = a1[6];
  v5 = a1[7];
  if (v4 < v5)
  {
    *v4 = a2;
    *(v4 + 1) = a3;
    v6 = (v4 + 8);
LABEL_3:
    a1[6] = v6;
    return;
  }

  v7 = a1[5];
  v8 = v4 - v7;
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    sub_1794();
  }

  v11 = v5 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v13 = (8 * v9);
  *v13 = a2;
  v13[1] = a3;
  v6 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  a1[5] = 0;
  a1[6] = v6;
  a1[7] = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  a1[6] = v6;
}

unsigned int *sub_5CBF60(unsigned int *result, void *a2)
{
  v2 = *result;
  *(result + 62) = *a2;
  *(result + 504) = (v2 < 0x2A) & (0x3FFFFFFFFBFuLL >> v2);
  return result;
}

unsigned int *sub_5CBF8C(unsigned int *result, void *a2)
{
  v2 = *result;
  *(result + 64) = *a2;
  *(result + 520) = (v2 < 0x2A) & (0x3FFFFFFFFBFuLL >> v2);
  return result;
}

BOOL sub_5CBFD0(uint64_t a1)
{
  if (*(a1 + 536) == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (*(a1 + 552) == 0x7FFFFFFFFFFFFFFFLL)
  {
    return *(a1 + 568) != 0x7FFFFFFF;
  }

  return 1;
}

BOOL sub_5CC024(uint64_t a1)
{
  v1 = *(a1 + 712);
  v2 = *(a1 + 720);
  if (v1 == v2)
  {
    return 1;
  }

  v3 = v1 + 64;
  do
  {
    v4 = *(v3 - 41);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(v3 - 56);
    }

    if (v4)
    {
      v5 = *(v3 - 24) == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = 1;
    }

    result = !v5;
    v7 = !result || v3 == v2;
    v3 += 64;
  }

  while (!v7);
  return result;
}

BOOL sub_5CC07C(uint64_t a1)
{
  if ((*(a1 + 496) == 0x7FFFFFFFFFFFFFFFLL || *(a1 + 512) == 0x7FFFFFFFFFFFFFFFLL && *(a1 + 528) == 0x7FFFFFFF) && (*a1 - 38) > 3)
  {
    return 0;
  }

  v1 = *(a1 + 552);
  if (*(a1 + 536) != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v1 != 0x7FFFFFFFFFFFFFFFLL || *(a1 + 568) != 0x7FFFFFFF)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v1 != 0x7FFFFFFFFFFFFFFFLL || *(a1 + 568) != 0x7FFFFFFF)
  {
    return 0;
  }

LABEL_13:
  v3 = *(a1 + 120);
  v4 = *(a1 + 128);
  if (v3 == v4)
  {
    return 0;
  }

  do
  {
    v6 = sub_4D1F6C(v3);
    if (v6)
    {
      break;
    }

    v3 += 20;
  }

  while (v3 != v4);
  if (v6)
  {
    return 0;
  }

  v7 = *(a1 + 144);
  v8 = *(a1 + 152);
  if (v7 == v8)
  {
    return 0;
  }

  do
  {
    v9 = sub_4D1F6C(v7);
    if (v9)
    {
      break;
    }

    v7 += 20;
  }

  while (v7 != v8);
  if (v9 || sub_4D1F6C((a1 + 168)) && (*a1 - 38) > 3)
  {
    return 0;
  }

  v10 = *(a1 + 712);
  for (i = *(a1 + 720); v10 != i; v10 += 64)
  {
    v12 = *(v10 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v10 + 8);
    }

    if (!v12 || *(v10 + 40) == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  v14 = *(a1 + 31);
  if (v14 < 0)
  {
    v14 = *(a1 + 16);
  }

  return v14 != 0;
}

uint64_t sub_5CC218(uint64_t a1)
{
  v1 = *(a1 + 768);
  v2 = *(a1 + 760);
  if (v1 - v2 != 336)
  {
    return 0;
  }

  if (v2 == v1)
  {
    return 1;
  }

  while (1)
  {
    v3 = sub_4D1F6C(v2);
    result = 0;
    if (v3 || !*(v2 + 160))
    {
      break;
    }

    if (!*(v2 + 164))
    {
      return 0;
    }

    v2 += 168;
    if (v2 == v1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_5CC2B4(int a1)
{
  if ((a1 - 1) > 0x28)
  {
    return 0;
  }

  else
  {
    return dword_229AE60[a1 - 1];
  }
}

void *sub_5CC2FC@<X0>(void *result@<X0>, const void **a2@<X1>, const void **a3@<X2>, void *a4@<X8>)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 38:
    case 39:
    case 40:
    case 41:
      v4 = *(a2 + 23);
      if (v4 < 0)
      {
        v4 = a2[1];
      }

      if (v4)
      {
        v5 = a2;
      }

      else
      {
        v5 = a3;
      }

      if (*(v5 + 23) < 0)
      {
        v6 = *v5;
        v7 = v5[1];
        goto LABEL_10;
      }

      *a4 = *v5;
      a4[2] = v5[2];
      return result;
    case 8:
      v21 = *(a2 + 23);
      if (v21 >= 0)
      {
        v9 = *(a2 + 23);
      }

      else
      {
        v9 = a2[1];
      }

      v22 = v9 + 22;
      if (v9 + 22 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_134;
      }

      if (v22 >= 0x17)
      {
        operator new();
      }

      *(a4 + 17) = 0;
      *(a4 + 9) = 0;
      *(a4 + 5) = 0;
      *(a4 + 23) = v22;
      strcpy(a4, "IncidentsCausing");
      v23 = a4 + 22;
      if (!v9)
      {
        goto LABEL_127;
      }

      v28 = v21;
      goto LABEL_130;
    case 26:
      v8 = *(a3 + 23);
      if (v8 >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = a3[1];
      }

      v19 = v9 + 21;
      if (v9 + 21 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_134;
      }

      if (v19 >= 0x17)
      {
        operator new();
      }

      *(a4 + 17) = 0;
      *(a4 + 9) = 0;
      *(a4 + 5) = 0;
      *(a4 + 23) = v19;
      strcpy(a4, "EVTowingNotSuppo");
      v23 = a4 + 21;
      if (!v9)
      {
        goto LABEL_127;
      }

      goto LABEL_122;
    case 27:
      v8 = *(a3 + 23);
      if (v8 >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = a3[1];
      }

      v16 = v9 + 13;
      if (v9 + 13 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_134;
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      a4[1] = 0;
      a4[2] = 0;
      v29 = "EVDisconnect_";
      goto LABEL_109;
    case 28:
      v8 = *(a3 + 23);
      if (v8 >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = a3[1];
      }

      v20 = v9 + 12;
      if (v9 + 12 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_134;
      }

      if (v20 >= 0x17)
      {
        operator new();
      }

      a4[1] = 0;
      a4[2] = 0;
      *(a4 + 23) = v20;
      *(a4 + 2) = 1601463141;
      *a4 = *"EVReconnect_";
      v23 = a4 + 12;
      if (v9)
      {
        goto LABEL_122;
      }

      goto LABEL_127;
    case 29:
      if (byte_27966B7 >= 0)
      {
        v12 = byte_27966B7;
      }

      else
      {
        v12 = *(&xmmword_27966A0 + 1);
      }

      if (*(a3 + 23) >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = a3[1];
      }

      v17 = v9 + v12;
      if (v9 + v12 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_134;
      }

      if (v17 > 0x16)
      {
        operator new();
      }

      a4[1] = 0;
      a4[2] = 0;
      *a4 = 0;
      *(a4 + 23) = v17;
      if (!v12)
      {
        goto LABEL_117;
      }

      v24 = &xmmword_27966A0;
      goto LABEL_113;
    case 30:
      v8 = *(a3 + 23);
      if (v8 >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = a3[1];
      }

      v16 = v9 + 13;
      if (v9 + 13 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_134;
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      a4[1] = 0;
      a4[2] = 0;
      v29 = "EVOfflineSAR_";
LABEL_109:
      *(a4 + 23) = v16;
      *(a4 + 5) = *(v29 + 5);
      *a4 = *v29;
      v23 = a4 + 13;
      if (!v9)
      {
        goto LABEL_127;
      }

      goto LABEL_122;
    case 31:
      if (byte_27967BF >= 0)
      {
        v12 = byte_27967BF;
      }

      else
      {
        v12 = *(&xmmword_27967A8 + 1);
      }

      if (*(a3 + 23) >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = a3[1];
      }

      v13 = v9 + v12;
      if (v9 + v12 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_134;
      }

      if (v13 > 0x16)
      {
        operator new();
      }

      a4[1] = 0;
      a4[2] = 0;
      *a4 = 0;
      *(a4 + 23) = v13;
      if (!v12)
      {
        goto LABEL_117;
      }

      v24 = &xmmword_27967A8;
      goto LABEL_113;
    case 32:
      if (byte_279684F >= 0)
      {
        v14 = byte_279684F;
      }

      else
      {
        v14 = *(&xmmword_2796838 + 1);
      }

      if (*(a2 + 23) >= 0)
      {
        v9 = *(a2 + 23);
      }

      else
      {
        v9 = a2[1];
      }

      v15 = v9 + v14;
      if (v9 + v14 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_134;
      }

      if (v15 > 0x16)
      {
        operator new();
      }

      a4[1] = 0;
      a4[2] = 0;
      *a4 = 0;
      *(a4 + 23) = v15;
      if (v14)
      {
        v25 = &xmmword_2796838;
        if (byte_279684F < 0)
        {
          v25 = xmmword_2796838;
        }

        v26 = a2;
        v27 = a4;
        result = memmove(a4, v25, v14);
        a2 = v26;
        a4 = v27;
      }

      v23 = a4 + v14;
      if (!v9)
      {
        goto LABEL_127;
      }

      v28 = *(a2 + 23);
LABEL_130:
      if (v28 < 0)
      {
        a2 = *a2;
      }

      goto LABEL_126;
    case 33:
    case 35:
      v8 = *(a3 + 23);
      if (v8 >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = a3[1];
      }

      v10 = v9 + 16;
      if (v9 + 16 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_134;
      }

      if (v10 >= 0x17)
      {
        operator new();
      }

      a4[2] = 0;
      v23 = (a4 + 2);
      *(a4 + 23) = v10;
      *a4 = *"LPR_OFFLINE_SAR_";
      if (!v9)
      {
        goto LABEL_127;
      }

      goto LABEL_122;
    case 34:
    case 36:
      v8 = *(a3 + 23);
      if (v8 >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = a3[1];
      }

      v11 = v9 + 20;
      if (v9 + 20 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_134;
      }

      if (v11 >= 0x17)
      {
        operator new();
      }

      a4[2] = 0;
      *(a4 + 23) = v11;
      *(a4 + 4) = 1598379093;
      *a4 = *"LPR_OFFLINE_REROUTE_";
      v23 = a4 + 20;
      if (!v9)
      {
        goto LABEL_127;
      }

LABEL_122:
      v33 = v8;
      goto LABEL_123;
    case 37:
      if (byte_279669F >= 0)
      {
        v12 = byte_279669F;
      }

      else
      {
        v12 = *(&xmmword_2796688 + 1);
      }

      if (*(a3 + 23) >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = a3[1];
      }

      v18 = v9 + v12;
      if (v9 + v12 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_134:
        sub_3244();
      }

      if (v18 > 0x16)
      {
        operator new();
      }

      a4[1] = 0;
      a4[2] = 0;
      *a4 = 0;
      *(a4 + 23) = v18;
      if (!v12)
      {
        goto LABEL_117;
      }

      v24 = &xmmword_2796688;
LABEL_113:
      if (*(v24 + 23) >= 0)
      {
        v30 = v24;
      }

      else
      {
        v30 = *v24;
      }

      v31 = a3;
      v32 = a4;
      result = memmove(a4, v30, v12);
      a4 = v32;
      a3 = v31;
LABEL_117:
      v23 = a4 + v12;
      if (v9)
      {
        v33 = *(a3 + 23);
LABEL_123:
        if (v33 >= 0)
        {
          a2 = a3;
        }

        else
        {
          a2 = *a3;
        }

LABEL_126:
        result = memmove(v23, a2, v9);
      }

LABEL_127:
      v23[v9] = 0;
      return result;
    default:
      if (*(a3 + 23) < 0)
      {
        v6 = *a3;
        v7 = a3[1];
LABEL_10:

        return sub_325C(a4, v6, v7);
      }

      else
      {
        *a4 = *a3;
        a4[2] = a3[2];
      }

      return result;
  }
}

void *sub_5CCD14@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 1:
      if (byte_27965F7 < 0)
      {
        result = sub_325C(a2, xmmword_27965E0, *(&xmmword_27965E0 + 1));
      }

      else
      {
        *a2 = xmmword_27965E0;
        *(a2 + 16) = unk_27965F0;
      }

      break;
    case 2:
      if (byte_2796627 < 0)
      {
        result = sub_325C(a2, xmmword_2796610, *(&xmmword_2796610 + 1));
      }

      else
      {
        *a2 = xmmword_2796610;
        *(a2 + 16) = unk_2796620;
      }

      break;
    case 3:
      if (byte_279660F < 0)
      {
        result = sub_325C(a2, xmmword_27965F8, *(&xmmword_27965F8 + 1));
      }

      else
      {
        *a2 = xmmword_27965F8;
        *(a2 + 16) = unk_2796608;
      }

      break;
    case 4:
      strcpy(a2, "EVInfeasibleRoute_");
      *(a2 + 19) = unk_229AE43;
      *(a2 + 20) = unk_229AE44;
      break;
    case 5:
      if (byte_2796687 < 0)
      {
        result = sub_325C(a2, xmmword_2796670, *(&xmmword_2796670 + 1));
      }

      else
      {
        *a2 = xmmword_2796670;
        *(a2 + 16) = unk_2796680;
      }

      break;
    case 6:
      strcpy(a2, "VotableRoadIncident_");
      *(a2 + 21) = unk_229ADE5;
      *(a2 + 22) = unk_229ADE6;
      break;
    case 7:
      *a2 = *"AreaIncident_";
      *(a2 + 16) = 0xD00000000000000;
      break;
    case 8:
      strcpy(a2, "IncidentsCausingDelay_");
      *(a2 + 23) = unk_229AD9F;
      break;
    case 9:
      *(a2 + 16) = 0xF00000000000000;
      strcpy(a2, "CongestionZone_");
      break;
    case 10:
      if (byte_279663F < 0)
      {
        result = sub_325C(a2, xmmword_2796628, *(&xmmword_2796628 + 1));
      }

      else
      {
        *a2 = xmmword_2796628;
        *(a2 + 16) = unk_2796638;
      }

      break;
    case 11:
      if (byte_279666F < 0)
      {
        result = sub_325C(a2, xmmword_2796658, *(&xmmword_2796658 + 1));
      }

      else
      {
        *a2 = xmmword_2796658;
        *(a2 + 16) = unk_2796668;
      }

      break;
    case 12:
      if (byte_2796657 < 0)
      {
        result = sub_325C(a2, xmmword_2796640, *(&xmmword_2796640 + 1));
      }

      else
      {
        *a2 = xmmword_2796640;
        *(a2 + 16) = unk_2796650;
      }

      break;
    case 13:
      if (byte_27966CF < 0)
      {
        result = sub_325C(a2, xmmword_27966B8, *(&xmmword_27966B8 + 1));
      }

      else
      {
        *a2 = xmmword_27966B8;
        *(a2 + 16) = unk_27966C8;
      }

      break;
    case 14:
      if (byte_27966E7 < 0)
      {
        result = sub_325C(a2, xmmword_27966D0, *(&xmmword_27966D0 + 1));
      }

      else
      {
        *a2 = xmmword_27966D0;
        *(a2 + 16) = unk_27966E0;
      }

      break;
    case 15:
      if (byte_27966FF < 0)
      {
        result = sub_325C(a2, xmmword_27966E8, *(&xmmword_27966E8 + 1));
      }

      else
      {
        *a2 = xmmword_27966E8;
        *(a2 + 16) = unk_27966F8;
      }

      break;
    case 16:
      if (byte_2796717 < 0)
      {
        result = sub_325C(a2, xmmword_2796700, *(&xmmword_2796700 + 1));
      }

      else
      {
        *a2 = xmmword_2796700;
        *(a2 + 16) = unk_2796710;
      }

      break;
    case 17:
      if (byte_2796747 < 0)
      {
        result = sub_325C(a2, xmmword_2796730, *(&xmmword_2796730 + 1));
      }

      else
      {
        *a2 = xmmword_2796730;
        *(a2 + 16) = unk_2796740;
      }

      break;
    case 18:
      if (byte_279675F < 0)
      {
        result = sub_325C(a2, xmmword_2796748, *(&xmmword_2796748 + 1));
      }

      else
      {
        *a2 = xmmword_2796748;
        *(a2 + 16) = unk_2796758;
      }

      break;
    case 19:
      if (byte_27967D7 < 0)
      {
        result = sub_325C(a2, xmmword_27967C0, *(&xmmword_27967C0 + 1));
      }

      else
      {
        *a2 = xmmword_27967C0;
        *(a2 + 16) = unk_27967D0;
      }

      break;
    case 20:
      if (byte_2796777 < 0)
      {
        result = sub_325C(a2, xmmword_2796760, *(&xmmword_2796760 + 1));
      }

      else
      {
        *a2 = xmmword_2796760;
        *(a2 + 16) = unk_2796770;
      }

      break;
    case 21:
      if (byte_279678F < 0)
      {
        result = sub_325C(a2, xmmword_2796778, *(&xmmword_2796778 + 1));
      }

      else
      {
        *a2 = xmmword_2796778;
        *(a2 + 16) = unk_2796788;
      }

      break;
    case 22:
      strcpy(a2, "SuggestFasterRoute_");
      *(a2 + 20) = unk_229AE5C;
      break;
    case 23:
      if (byte_279672F < 0)
      {
        result = sub_325C(a2, xmmword_2796718, *(&xmmword_2796718 + 1));
      }

      else
      {
        *a2 = xmmword_2796718;
        *(a2 + 16) = unk_2796728;
      }

      break;
    case 24:
      if (byte_27967A7 < 0)
      {
        result = sub_325C(a2, xmmword_2796790, *(&xmmword_2796790 + 1));
      }

      else
      {
        *a2 = xmmword_2796790;
        *(a2 + 16) = unk_27967A0;
      }

      break;
    case 25:
      strcpy(a2, "NACS_ADAPTER_REQUIRED_");
      *(a2 + 23) = unk_229AE2F;
      break;
    case 26:
      strcpy(a2, "EVTowingNotSupported_");
      *(a2 + 22) = unk_229AD86;
      break;
    case 27:
      *a2 = *"EVDisconnect_";
      *(a2 + 16) = 0xD00000000000000;
      break;
    case 28:
      *(a2 + 16) = 0xC00000000000000;
      *a2 = *"EVReconnect_";
      break;
    case 29:
      if (byte_27966B7 < 0)
      {
        result = sub_325C(a2, xmmword_27966A0, *(&xmmword_27966A0 + 1));
      }

      else
      {
        *a2 = xmmword_27966A0;
        *(a2 + 16) = unk_27966B0;
      }

      break;
    case 30:
      *a2 = *"EVOfflineSAR_";
      *(a2 + 16) = 0xD00000000000000;
      break;
    case 31:
      if (byte_27967BF < 0)
      {
        result = sub_325C(a2, xmmword_27967A8, *(&xmmword_27967A8 + 1));
      }

      else
      {
        *a2 = xmmword_27967A8;
        *(a2 + 16) = unk_27967B8;
      }

      break;
    case 32:
      if (byte_279684F < 0)
      {
        result = sub_325C(a2, xmmword_2796838, *(&xmmword_2796838 + 1));
      }

      else
      {
        *a2 = xmmword_2796838;
        *(a2 + 16) = unk_2796848;
      }

      break;
    case 33:
    case 35:
      *(a2 + 16) = 0x1000000000000000;
      *a2 = *"LPR_OFFLINE_SAR_";
      break;
    case 34:
    case 36:
      strcpy(a2, "LPR_OFFLINE_REROUTE_");
      *(a2 + 21) = unk_229ADCD;
      *(a2 + 22) = unk_229ADCE;
      break;
    case 37:
      if (byte_279669F < 0)
      {
        result = sub_325C(a2, xmmword_2796688, *(&xmmword_2796688 + 1));
      }

      else
      {
        *a2 = xmmword_2796688;
        *(a2 + 16) = unk_2796698;
      }

      break;
    case 38:
      if (byte_2796807 < 0)
      {
        result = sub_325C(a2, xmmword_27967F0, *(&xmmword_27967F0 + 1));
      }

      else
      {
        *a2 = xmmword_27967F0;
        *(a2 + 16) = unk_2796800;
      }

      break;
    case 39:
      if (byte_279681F < 0)
      {
        result = sub_325C(a2, xmmword_2796808, *(&xmmword_2796808 + 1));
      }

      else
      {
        *a2 = xmmword_2796808;
        *(a2 + 16) = unk_2796818;
      }

      break;
    case 40:
    case 41:
      if (byte_2796837 < 0)
      {
        result = sub_325C(a2, xmmword_2796820, *(&xmmword_2796820 + 1));
      }

      else
      {
        *a2 = xmmword_2796820;
        *(a2 + 16) = unk_2796830;
      }

      break;
    default:
      *(a2 + 23) = 0;
      *a2 = 0;
      break;
  }

  return result;
}

void sub_5CD53C(unsigned int *a1, uint64_t a2, char a3)
{
  v5 = *(a1 + 89);
  if (v5 == *(a1 + 90))
  {
    HIBYTE(v29) = 0;
    LOBYTE(__p[0]) = 0;
    if ((a3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(v5 + 23) & 0x80000000) == 0)
    {
      v6 = *v5;
      v29 = *(v5 + 2);
      *__p = v6;
      if (a3)
      {
        goto LABEL_4;
      }

LABEL_7:
      sub_5CC2FC(*a1, __p, a2, __dst);
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 1));
      }

      *(a1 + 2) = *__dst;
      *(a1 + 3) = *&__dst[16];
      if (SHIBYTE(v29) < 0)
      {
        goto LABEL_10;
      }

      return;
    }

    sub_325C(__p, *v5, *(v5 + 1));
    if ((a3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_4:
  if (*(a2 + 23) < 0)
  {
    sub_325C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    *&__dst[16] = *(a2 + 16);
  }

  if (a1[146] != 0x7FFFFFFF || a1[145] != 0x7FFFFFFF)
  {
    sub_71D8C(1, &v26);
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }

    *__dst = *&v26.__r_.__value_.__l.__data_;
    v10 = v26.__r_.__value_.__r.__words[2];
LABEL_23:
    *&__dst[16] = v10;
    goto LABEL_24;
  }

  if (*(a1 + 748) != 1)
  {
    v17 = HIBYTE(v29);
    if (v29 < 0)
    {
      v17 = __p[1];
    }

    if (!v17)
    {
      goto LABEL_24;
    }

    if ((__dst[23] & 0x80000000) != 0)
    {
      if (v29 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      sub_13B38(__dst, v18, v17);
      goto LABEL_24;
    }

    if (SHIBYTE(v29) < 0)
    {
      sub_13A68(__dst, __p[0], __p[1]);
      goto LABEL_24;
    }

    *__dst = *__p;
    v10 = v29;
    goto LABEL_23;
  }

  std::to_string(&v30, a1[184]);
  size = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v30.__r_.__value_.__l.__size_;
    if ((v30.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1 == v30.__r_.__value_.__l.__size_)
    {
      if ((v30.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

LABEL_47:
      operator new();
    }

    v9 = v30.__r_.__value_.__r.__words[0];
  }

  else
  {
    v9 = &v30;
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) == 22)
    {
      goto LABEL_47;
    }
  }

  v9->__r_.__value_.__s.__data_[size] = 95;
  v19 = size + 1;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    v30.__r_.__value_.__l.__size_ = v19;
  }

  else
  {
    *(&v30.__r_.__value_.__s + 23) = v19 & 0x7F;
  }

  v9->__r_.__value_.__s.__data_[v19] = 0;
  v26 = v30;
  memset(&v30, 0, sizeof(v30));
  if ((a1[187] & 1) == 0)
  {
    sub_4F0F0C();
  }

  std::to_string(&v25, a1[185]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v25;
  }

  else
  {
    v20 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v25.__r_.__value_.__l.__size_;
  }

  v22 = std::string::append(&v26, v20, v21);
  v23 = v22->__r_.__value_.__r.__words[0];
  v31[0] = v22->__r_.__value_.__l.__size_;
  *(v31 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
  v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  *__dst = v23;
  *&__dst[8] = v31[0];
  *&__dst[15] = *(v31 + 7);
  __dst[23] = v24;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_67:
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_71;
      }

      goto LABEL_24;
    }
  }

  else if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

  operator delete(v26.__r_.__value_.__l.__data_);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_71:
    operator delete(v30.__r_.__value_.__l.__data_);
  }

LABEL_24:
  sub_5CCD14(*a1, &v26);
  if (__dst[23] >= 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = *__dst;
  }

  if (__dst[23] >= 0)
  {
    v12 = __dst[23];
  }

  else
  {
    v12 = *&__dst[8];
  }

  v13 = std::string::append(&v26, v11, v12);
  v14 = v13->__r_.__value_.__r.__words[0];
  v30.__r_.__value_.__r.__words[0] = v13->__r_.__value_.__l.__size_;
  *(v30.__r_.__value_.__r.__words + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
  v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 1));
  }

  v16 = v30.__r_.__value_.__r.__words[0];
  *(a1 + 1) = v14;
  *(a1 + 2) = v16;
  *(a1 + 23) = *(v30.__r_.__value_.__r.__words + 7);
  *(a1 + 31) = v15;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((__dst[23] & 0x80000000) == 0)
    {
LABEL_34:
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
        return;
      }

LABEL_10:
      operator delete(__p[0]);
      return;
    }
  }

  else if ((__dst[23] & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

  operator delete(*__dst);
  if (SHIBYTE(v29) < 0)
  {
    goto LABEL_10;
  }
}

void sub_5CD9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_5CDAD4(uint64_t *result, unsigned int **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      result = sub_5280AC((v4 + 56), v2, v2);
      v2 += 3;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_5CDCDC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_5CDD0C(uint64_t a1, unsigned int a2)
{
  v3 = a2 | 0xFFFFFF00000000;
  v4 = *(a1 + 632);
  if (v4 == -1)
  {
LABEL_8:
    *(a1 + 600) = v3;
    *(a1 + 608) = 0;
    *(a1 + 624) = 0;
    *(a1 + 616) = 0;
    *(a1 + 632) = 1;
    *(a1 + 640) = 0xFFFFFFFFFFFFFFLL;
    v6 = a1 + 648;
    if (*(a1 + 671) < 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v4 != 1)
  {
    (off_266B8D0[v4])(&v8, a1 + 600);
    goto LABEL_8;
  }

  *(a1 + 600) = v3;
  v5 = (a1 + 608);
  if (*(a1 + 631) < 0)
  {
    operator delete(*v5);
  }

  *v5 = 0;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0;
  *(a1 + 640) = 0xFFFFFFFFFFFFFFLL;
  v6 = a1 + 648;
  if (*(a1 + 671) < 0)
  {
LABEL_11:
    operator delete(*v6);
    v7 = a1 + 680;
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 24) = 0;
    *(v6 + 16) = 0;
    if (*(a1 + 703) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_9:
  v7 = a1 + 680;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  if (*(a1 + 703) < 0)
  {
LABEL_12:
    operator delete(*v7);
  }

LABEL_10:
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
}

void sub_5CDE28(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 48) == *(a1 + 56))
  {
    sub_5CDFA0(a1, &v12);
    v4 = *(a1 + 72);
    if (v4 > 5 || (v5 = 1 << v4, (v5 & 0x23) != 0))
    {
      v6 = 0;
      v11 = 0;
    }

    else if ((v5 & 0x18) != 0)
    {
      v6 = 14;
      v11 = 14;
      qmemcpy(__p, "_Heavy_Traffic", 14);
    }

    else
    {
      v6 = 17;
      v11 = 17;
      v10 = 99;
      *__p = *"_Moderate_Traffic";
    }

    *(__p + v6) = 0;
    v7 = std::string::append(&v12, __p, v6);
    v8 = *&v7->__r_.__value_.__l.__data_;
    a2[2] = *(&v7->__r_.__value_.__l + 2);
    *a2 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (v11 < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    operator delete(v12.__r_.__value_.__l.__data_);
    return;
  }

  sub_5CDFA0(a1, a2);
}

void sub_5CDF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

std::string *sub_5CDFA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = a1[6];
  if (result != a1[7])
  {
    *(a2 + 23) = 9;
    strcpy(a2, "_Blockage");
    result = sub_570E68(result);
    size = HIBYTE(result->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = result->__r_.__value_.__l.__size_;
    }

    if (size)
    {
      return std::string::append(a2, "_Road", 5uLL);
    }

    return result;
  }

  v6 = a1[1] - *a1;
  if ((0x1CAC083126E978D5 * (v6 >> 4)) < 2)
  {
    if (v6 == 2000)
    {
      *(a2 + 23) = 14;
      strcpy(a2, "_Area_Incident");
    }
  }

  else
  {
    result = sub_195A048(a2, "_Multiple_Area_Incident", 0x17uLL);
  }

  v7 = a1[4];
  v8 = a1[3];
  if (v8 != v7)
  {
    v9 = 0;
    do
    {
      result = sub_570D48(v8, v17);
      v10 = v18;
      if (v19 == 1)
      {
        result = sub_3A9518(v17);
      }

      if (!v10)
      {
        ++v9;
      }

      v8 += 2000;
    }

    while (v8 != v7);
    if (v9 >= 2)
    {
      return std::string::append(a2, "_Multiple_Incidents", 0x13uLL);
    }

    v11 = a1[3];
    v12 = a1[4];
    if (v11 == v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        result = sub_570D48(v11, v17);
        v14 = v18;
        if (v19 == 1)
        {
          result = sub_3A9518(v17);
        }

        if (v14 == 1)
        {
          ++v13;
        }

        v11 += 2000;
      }

      while (v11 != v12);
      if (v13 > 1)
      {
        v15 = "_Multiple_Incidents";
        v16 = 19;
        return std::string::append(a2, v15, v16);
      }
    }

    if (v9 == 1)
    {
      result = std::string::append(a2, "_Accident", 9uLL);
    }

    if (v13)
    {
      v15 = "_Construction";
      v16 = 13;
      return std::string::append(a2, v15, v16);
    }
  }

  return result;
}

void sub_5CE1D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5CE200(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v5 = 0x199999999999999;
  }

  else
  {
    v5 = v3;
  }

  v19 = a1;
  if (v5)
  {
    if (v5 <= 0x199999999999999)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 160 * v2;
  __p = 0;
  v16 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v6 + 48) = *(a2 + 48);
  *(v6 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v6 + 72) = *(a2 + 72);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(v6 + 88) = v7;
  *(v6 + 96) = v8;
  LODWORD(v7) = *(a2 + 104);
  *(v6 + 108) = *(a2 + 108);
  *(v6 + 104) = v7;
  v9 = *(a2 + 112);
  *(v6 + 128) = *(a2 + 128);
  *(v6 + 112) = v9;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v10 = *(a2 + 136);
  *(v6 + 152) = *(a2 + 152);
  *(v6 + 136) = v10;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v17 = 160 * v2 + 160;
  v18 = 0;
  sub_5C46E0(a1, &__p);
  v11 = a1[1];
  v13 = v16;
  for (i = v17; v17 != v13; i = v17)
  {
    v17 = i - 160;
    sub_53A868(i - 160);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_5CE3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5C4848(va);
  _Unwind_Resume(a1);
}

void sub_5CE3D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
        v8 = a2[2];
        v7[6] = *(a2 + 6);
        *(v7 + 2) = v8;
        v9 = *v7;
        sub_5CE56C(a1, v7);
        a2 = *a2;
        v7 = v9;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      do
      {
        v10 = *v7;
        operator delete(v7);
        v7 = v10;
      }

      while (v10);
    }
  }

LABEL_7:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_5CE524(void *a1)
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

uint64_t sub_5CE56C(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = (*(a2 + 16) + 0x388152A534) ^ 0xDEADBEEFLL;
  v6 = (*(a2 + 20) + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v7 = (*(a2 + 24) + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  *(v4 - 1) = v7;
  v8 = sub_5CE6DC(a1, v7, v4);
  v9 = a1[1];
  v10 = *(v4 - 1);
  v11 = vcnt_s8(v9);
  v11.i16[0] = vaddlv_u8(v11);
  if (v10 >= *&v9)
  {
    v12 = v10 % *&v9;
  }

  else
  {
    v12 = *(v4 - 1);
  }

  v13 = *&v9 - 1;
  v14 = (*&v9 - 1) & v10;
  if (v11.u32[0] > 1uLL)
  {
    v14 = v12;
  }

  if (v8)
  {
    *a2 = *v8;
    *v8 = a2;
    if (*a2)
    {
      v15 = *(*a2 + 8);
      if (v11.u32[0] > 1uLL)
      {
        if (v15 >= *&v9)
        {
          v15 %= *&v9;
        }
      }

      else
      {
        v15 &= v13;
      }

      if (v15 != v14)
      {
        v18 = (*a1 + 8 * v15);
LABEL_20:
        *v18 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v16 = *a1;
    *(*a1 + 8 * v14) = a1 + 2;
    if (*a2)
    {
      v17 = *(*a2 + 8);
      if (v11.u32[0] > 1uLL)
      {
        if (v17 >= *&v9)
        {
          v17 %= *&v9;
        }
      }

      else
      {
        v17 &= v13;
      }

      v18 = (v16 + 8 * v17);
      goto LABEL_20;
    }
  }

  ++a1[3];
  return a2;
}

uint64_t *sub_5CE6DC(uint64_t a1, unint64_t a2, int *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v12 = 1;
    if (v6 >= 3)
    {
      v12 = (v6 & (v6 - 1)) != 0;
    }

    v13 = v12 | (2 * v6);
    v14 = vcvtps_u32_f32(v7 / v8);
    if (v13 <= v14)
    {
      prime = v14;
    }

    else
    {
      prime = v13;
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
      goto LABEL_15;
    }

    if (prime < v6)
    {
      v16 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v17 = vcnt_s8(v6), v17.i16[0] = vaddlv_u8(v17), v17.u32[0] > 1uLL))
      {
        v19 = prime;
        v20 = std::__next_prime(v16);
        if (v19 <= v20)
        {
          prime = v20;
        }

        else
        {
          prime = v19;
        }

        if (prime >= v6)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v18 = 1 << -__clz(v16 - 1);
        if (v16 >= 2)
        {
          v16 = v18;
        }

        if (prime <= v16)
        {
          prime = v16;
        }

        if (prime >= v6)
        {
          goto LABEL_29;
        }
      }

LABEL_15:
      sub_5CE9BC(a1, prime);
    }

LABEL_29:
    v6 = *(a1 + 8);
    v21 = vcnt_s8(v6);
    v21.i16[0] = vaddlv_u8(v21);
    v10 = v21.u32[0];
    if (v21.u32[0] <= 1uLL)
    {
      goto LABEL_4;
    }

    goto LABEL_30;
  }

  v9 = vcnt_s8(v6);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] <= 1uLL)
  {
LABEL_4:
    v11 = (v6 - 1) & a2;
    goto LABEL_32;
  }

LABEL_30:
  v11 = a2;
  if (v6 <= a2)
  {
    v11 = a2 % v6;
  }

LABEL_32:
  v22 = *(*a1 + 8 * v11);
  if (!v22)
  {
    return 0;
  }

  v23 = *a3;
  v24 = a3[1];
  v25 = a3[2];
  if (v10 >= 2)
  {
    v33 = 0;
    do
    {
      result = v22;
      v22 = *v22;
      if (!v22)
      {
        break;
      }

      v34 = *(v22 + 8);
      v35 = v34;
      if (v34 >= v6)
      {
        v35 = v34 % v6;
      }

      if (v35 != v11)
      {
        break;
      }

      v36 = v34 == a2 && *(v22 + 16) == v23 && *(v22 + 20) == v24 && *(v22 + 24) == v25;
      v37 = v36 != (v33 & 1);
      v38 = v33 & v37;
      v33 |= v37;
    }

    while (v38 != 1);
  }

  else
  {
    v26 = 0;
    while (1)
    {
      result = v22;
      v22 = *v22;
      if (!v22)
      {
        break;
      }

      v28 = *(v22 + 8);
      if ((v28 & (v6 - 1)) != v11)
      {
        break;
      }

      if (v28 == a2 && *(v22 + 16) == v23 && *(v22 + 20) == v24)
      {
        v29 = (*(v22 + 24) == v25) != (v26 & 1);
        v30 = v26 & v29;
        v26 |= v29;
        if (v30)
        {
          return result;
        }
      }

      else
      {
        v31 = (v26 & 1) != 0;
        v32 = v26 & v31;
        v26 |= v31;
        if (v32)
        {
          return result;
        }
      }
    }
  }

  return result;
}