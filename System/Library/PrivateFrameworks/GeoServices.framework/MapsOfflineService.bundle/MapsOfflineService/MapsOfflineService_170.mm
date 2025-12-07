void sub_A5564C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_93C19C(v11);
  a11 = v11;
  sub_A54870(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A5566C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(result + 8);
  v7 = a2 + v6 - a4;
  if (v7 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v9 = a2 + v6 - a4;
    v10 = *(result + 8);
    do
    {
      *v10 = 0;
      *(v10 + 1128) = -1;
      v11 = *(v9 + 1128);
      if (v11 != -1)
      {
        v16 = v10;
        result = (off_26707E8[v11])(&v16, v9);
        *(v10 + 1128) = v11;
      }

      v9 += 1136;
      v10 += 1136;
    }

    while (v9 < a3);
  }

  *(v5 + 8) = v10;
  if (v6 != a4)
  {
    v12 = 0;
    v13 = a4 - v6;
    do
    {
      while (1)
      {
        v14 = *(v6 + v12 - 8);
        v15 = *(v7 + v12 - 8);
        if (v14 != -1)
        {
          break;
        }

        if (v15 != -1)
        {
          goto LABEL_10;
        }

LABEL_11:
        v12 -= 1136;
        if (v13 == v12)
        {
          return result;
        }
      }

      if (v15 != -1)
      {
LABEL_10:
        v16 = v6 + v12 - 1136;
        result = (off_2670858[v15])(&v16);
        goto LABEL_11;
      }

      result = (off_26707C0[v14])(&v16, v6 + v12 - 1136);
      *(v6 + v12 - 8) = -1;
      v12 -= 1136;
    }

    while (v13 != v12);
  }

  return result;
}

uint64_t sub_A557CC(uint64_t *a1, void *a2, uint64_t a3)
{
  v22 = a2[1];
  v6 = a1[1];
  if (v6 != a3)
  {
    v7 = a2[2];
    v8 = a3;
    do
    {
      *v7 = 0;
      *(v7 + 1128) = -1;
      v9 = *(v8 + 1128);
      if (v9 != -1)
      {
        v23 = v7;
        (off_26707E8[v9])(&v23, v8);
        *(v7 + 1128) = v9;
      }

      v8 += 1136;
      v7 += 1136;
    }

    while (v8 != v6);
    v10 = a3;
    do
    {
      v11 = *(v10 + 1128);
      if (v11 != -1)
      {
        (off_26707C0[v11])(&v23, v10);
      }

      *(v10 + 1128) = -1;
      v10 += 1136;
    }

    while (v10 != v6);
  }

  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v12 = *a1;
  v13 = a2[1] + *a1 - a3;
  if (*a1 != a3)
  {
    v21 = a2[1] + *a1 - a3;
    v14 = *a1;
    do
    {
      *v13 = 0;
      *(v13 + 1128) = -1;
      v15 = *(v14 + 1128);
      if (v15 != -1)
      {
        v23 = v13;
        (off_26707E8[v15])(&v23, v14);
        *(v13 + 1128) = v15;
      }

      v14 += 1136;
      v13 += 1136;
    }

    while (v14 != a3);
    v13 = v21;
    do
    {
      v16 = *(v12 + 1128);
      if (v16 != -1)
      {
        (off_26707C0[v16])(&v23, v12);
      }

      *(v12 + 1128) = -1;
      v12 += 1136;
    }

    while (v12 != a3);
  }

  a2[1] = v13;
  v17 = *a1;
  *a1 = v13;
  a1[1] = v17;
  a2[1] = v17;
  v18 = a1[1];
  a1[1] = a2[2];
  a2[2] = v18;
  v19 = a1[2];
  a1[2] = a2[3];
  a2[3] = v19;
  *a2 = a2[1];
  return v22;
}

uint64_t sub_A559D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v9 = a4;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 1128) = -1;
      v8 = *(v7 + 1128);
      if (v8 != -1)
      {
        v10 = v4;
        (off_2670830[v8])(&v10, v7);
        *(v4 + 1128) = v8;
        v4 = v9;
      }

      v7 += 1136;
      v4 += 1136;
      v9 = v4;
    }

    while (v7 != a3);
  }

  return v4;
}

void sub_A55A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_93C19C(v3);
  sub_A54910(va);
  _Unwind_Resume(a1);
}

__n128 sub_A55AA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 1128);
  if (v4 != -1)
  {
    if (!v4)
    {
      result = *a3;
      v6 = *(a3 + 16);
      v7 = *(a3 + 48);
      *(a2 + 32) = *(a3 + 32);
      *(a2 + 48) = v7;
      *a2 = result;
      *(a2 + 16) = v6;
      return result;
    }

    v8 = a3;
    (off_26707C0[v4])(&v11, v3);
    a3 = v8;
  }

  *(v3 + 1128) = -1;
  result = *a3;
  v9 = *(a3 + 16);
  v10 = *(a3 + 48);
  *(v3 + 32) = *(a3 + 32);
  *(v3 + 48) = v10;
  *v3 = result;
  *(v3 + 16) = v9;
  *(v3 + 1128) = 0;
  return result;
}

__n128 sub_A55B40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 1128);
  if (v5 == 1)
  {
    result = *a3;
    v7 = *(a3 + 16);
    *(a2 + 28) = *(a3 + 28);
    *a2 = result;
    *(a2 + 16) = v7;
    if (a2 != a3)
    {
      v8 = a2;
      sub_31F64((a2 + 48), *(a3 + 48), *(a3 + 56), (*(a3 + 56) - *(a3 + 48)) >> 3);
      a2 = v8;
    }

    *(a2 + 72) = *(a3 + 72);
  }

  else
  {
    v12 = *a3;
    *v13 = *(a3 + 16);
    *&v13[12] = *(a3 + 28);
    v10 = *(a3 + 48);
    v9 = *(a3 + 56);
    if (v9 != v10)
    {
      if (((v9 - v10) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v11 = *(a3 + 72);
    if (v5 != -1)
    {
      (off_26707C0[v5])(&v14, v4);
    }

    *v4 = v12;
    *(v4 + 16) = *v13;
    result = *&v13[12];
    *(v4 + 28) = *&v13[12];
    *(v4 + 48) = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
    *(v4 + 72) = v11;
    *(v4 + 1128) = 1;
  }

  return result;
}

__n128 sub_A55C98(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[70].n128_u32[2];
  if (v4 != -1)
  {
    if (v4 == 2)
    {
      result = *a3;
      a2[1].n128_u32[0] = a3[1].n128_u32[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_26707C0[v4])(&v7, v3);
    a3 = v6;
  }

  v3[70].n128_u32[2] = -1;
  result = *a3;
  v3[1].n128_u32[0] = a3[1].n128_u32[0];
  *v3 = result;
  v3[70].n128_u32[2] = 2;
  return result;
}

uint64_t sub_A55D38(uint64_t *a1, _OWORD *a2, __int128 *a3)
{
  v3 = *a1;
  if (*(*a1 + 1128) == 3)
  {
    v4 = *a3;
    *(a2 + 12) = *(a3 + 12);
    *a2 = v4;

    return sub_4D6664((a2 + 2), (a3 + 2));
  }

  else
  {
    *v7 = *a3;
    *&v7[12] = *(a3 + 12);
    sub_790648(v8, (a3 + 2));
    v6 = *(v3 + 1128);
    if (v6 != -1)
    {
      (off_26707C0[v6])(&v9, v3);
    }

    *(v3 + 1128) = -1;
    *v3 = *v7;
    *(v3 + 12) = *&v7[12];
    sub_4C6AE8(v3 + 32, v8);
    *(v3 + 1128) = 3;
    return sub_3EEA68(v8);
  }
}

__n128 sub_A55E2C(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[70].n128_u32[2];
  if (v4 != -1)
  {
    if (v4 == 4)
    {
      result = *a3;
      a2[1].n128_u32[0] = a3[1].n128_u32[0];
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_26707C0[v4])(&v7, v3);
    a3 = v6;
  }

  v3[70].n128_u32[2] = -1;
  result = *a3;
  v3[1].n128_u32[0] = a3[1].n128_u32[0];
  *v3 = result;
  v3[70].n128_u32[2] = 4;
  return result;
}

uint64_t sub_A55ECC(void *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 144 * v2;
  *v6 = *a2;
  __p = 0;
  v14 = 144 * v2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = *(a2 + 48);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(v6 + 80) = *(a2 + 80);
  *(v6 + 96) = *(a2 + 96);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(v6 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v7 = *(a2 + 120);
  v8 = *(a2 + 128);
  *(a2 + 120) = 0;
  *(v6 + 133) = *(a2 + 133);
  *(v6 + 120) = v7;
  *(v6 + 128) = v8;
  v15 = 144 * v2 + 144;
  v16 = 0;
  sub_A5609C(a1, &__p);
  v9 = a1[1];
  v11 = v14;
  for (i = v15; v15 != v11; i = v15)
  {
    v15 = i - 144;
    sub_9FFEB4((i - 144));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_A56088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A561F8(va);
  _Unwind_Resume(a1);
}

char *sub_A5609C(uint64_t a1, void *a2)
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
      *v9 = *v8;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = 0;
      *(v9 + 8) = *(v8 + 8);
      *(v9 + 3) = *(v8 + 3);
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v9 + 4) = 0;
      *(v9 + 5) = 0;
      *(v9 + 6) = 0;
      *(v9 + 2) = *(v8 + 2);
      *(v9 + 6) = *(v8 + 6);
      *(v8 + 4) = 0;
      *(v8 + 5) = 0;
      *(v8 + 6) = 0;
      *(v9 + 7) = 0;
      *(v9 + 8) = 0;
      *(v9 + 9) = 0;
      *(v9 + 56) = *(v8 + 56);
      *(v9 + 9) = *(v8 + 9);
      *(v8 + 7) = 0;
      *(v8 + 8) = 0;
      *(v8 + 9) = 0;
      *(v9 + 10) = 0;
      *(v9 + 11) = 0;
      *(v9 + 12) = 0;
      *(v9 + 5) = *(v8 + 5);
      *(v9 + 12) = *(v8 + 12);
      *(v8 + 10) = 0;
      *(v8 + 11) = 0;
      *(v8 + 12) = 0;
      *(v9 + 13) = 0;
      *(v9 + 14) = 0;
      *(v9 + 15) = 0;
      *(v9 + 104) = *(v8 + 104);
      *(v9 + 15) = *(v8 + 15);
      *(v8 + 13) = 0;
      *(v8 + 14) = 0;
      *(v8 + 15) = 0;
      v10 = *(v8 + 16);
      *(v9 + 133) = *(v8 + 133);
      *(v9 + 16) = v10;
      v8 += 144;
      v9 += 144;
    }

    while (v8 != v5);
    do
    {
      result = (sub_9FFEB4(result) + 18);
    }

    while (result != v5);
  }

  a2[1] = v7;
  v11 = *a1;
  *a1 = v7;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
  return result;
}

uint64_t sub_A561F8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    sub_9FFEB4((i - 144));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_A5624C(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 5 > v3)
  {
    v3 = v5 >> 5;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFC0)
  {
    v6 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = v2 << 6;
  v17 = 0;
  v18 = v7;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v7 + 54) = *(a2 + 54);
  *(v7 + 40) = v8;
  *(v7 + 48) = v9;
  v10 = *a1;
  v11 = a1[1];
  v12 = ((v2 << 6) + *a1 - v11);
  v19 = ((v2 << 6) + 64);
  sub_A5650C(a1, v10, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_A56398(&v17);
  return v16;
}

void sub_A56384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_A56398(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A56398(uint64_t a1)
{
  v2 = *(a1 + 16);
  for (i = *(a1 + 8); v2 != i; v2 = *(a1 + 16))
  {
    v4 = (v2 - 64);
    *(a1 + 16) = v2 - 64;
    v5 = *(v2 - 40);
    if (v5)
    {
      *(v2 - 32) = v5;
      operator delete(v5);
    }

    v6 = *v4;
    if (*v4)
    {
      v7 = *(v2 - 56);
      v3 = *v4;
      if (v7 != v6)
      {
        do
        {
          v9 = *(v7 - 5);
          if (v9)
          {
            *(v7 - 4) = v9;
            operator delete(v9);
          }

          v10 = *(v7 - 8);
          if (v10)
          {
            *(v7 - 7) = v10;
            operator delete(v10);
          }

          v11 = *(v7 - 11);
          if (v11)
          {
            *(v7 - 10) = v11;
            operator delete(v11);
          }

          v12 = *(v7 - 14);
          if (v12)
          {
            *(v7 - 13) = v12;
            operator delete(v12);
          }

          v13 = *(v7 - 17);
          if (v13)
          {
            v14 = *(v7 - 16);
            v8 = *(v7 - 17);
            if (v14 != v13)
            {
              do
              {
                v15 = v14 - 1136;
                v16 = *(v14 - 8);
                if (v16 != -1)
                {
                  (off_26707C0[v16])(&v19, v14 - 1136);
                }

                *(v14 - 8) = -1;
                v14 -= 1136;
              }

              while (v15 != v13);
              v8 = *(v7 - 17);
            }

            *(v7 - 16) = v13;
            operator delete(v8);
          }

          v7 -= 144;
        }

        while (v7 != v6);
        v3 = *v4;
      }

      *(v2 - 56) = v6;
      operator delete(v3);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A5650C(uint64_t a1, void **a2, void **a3, void *a4)
{
  v23 = a4;
  v24 = a4;
  v21[0] = a1;
  v21[1] = &v23;
  v21[2] = &v24;
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v6 + 3);
      a4[5] = v6[5];
      v6[3] = 0;
      v6[4] = 0;
      v6[5] = 0;
      v7 = v6[6];
      *(a4 + 54) = *(v6 + 54);
      a4[6] = v7;
      v6 += 8;
      a4 += 8;
    }

    while (v6 != a3);
    v24 = a4;
    v22 = 1;
    if (a2 != a3)
    {
      do
      {
        v9 = v5[3];
        if (v9)
        {
          v5[4] = v9;
          operator delete(v9);
        }

        v10 = *v5;
        if (*v5)
        {
          v11 = v5[1];
          v8 = *v5;
          if (v11 != v10)
          {
            do
            {
              v13 = *(v11 - 5);
              if (v13)
              {
                *(v11 - 4) = v13;
                operator delete(v13);
              }

              v14 = *(v11 - 8);
              if (v14)
              {
                *(v11 - 7) = v14;
                operator delete(v14);
              }

              v15 = *(v11 - 11);
              if (v15)
              {
                *(v11 - 10) = v15;
                operator delete(v15);
              }

              v16 = *(v11 - 14);
              if (v16)
              {
                *(v11 - 13) = v16;
                operator delete(v16);
              }

              v17 = *(v11 - 17);
              if (v17)
              {
                v18 = *(v11 - 16);
                v12 = *(v11 - 17);
                if (v18 != v17)
                {
                  do
                  {
                    v19 = v18 - 1136;
                    v20 = *(v18 - 8);
                    if (v20 != -1)
                    {
                      (off_26707C0[v20])(&v25, v18 - 1136);
                    }

                    *(v18 - 8) = -1;
                    v18 -= 1136;
                  }

                  while (v19 != v17);
                  v12 = *(v11 - 17);
                }

                *(v11 - 16) = v17;
                operator delete(v12);
              }

              v11 -= 144;
            }

            while (v11 != v10);
            v8 = *v5;
          }

          v5[1] = v10;
          operator delete(v8);
        }

        v5 += 8;
      }

      while (v5 != a3);
      if ((v22 & 1) == 0)
      {
        sub_A31A74(v21);
      }
    }
  }
}

unint64_t sub_A56700(uint64_t *a1, unsigned int *a2, unsigned int a3, int a4)
{
  v8 = sub_3A231C(*a1 + 24, a2[1] | (*a2 << 32), 0);
  v9 = v8;
  v10 = *v8;
  v11 = -v10;
  v12 = &v8[-v10];
  v13 = *v12;
  if (v13 < 5)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v12 + 2);
    if (*(v12 + 2))
    {
      v14 += &v8[*&v8[v14]];
    }
  }

  v15 = (v14 + 4 * *a2 + 4 + *(v14 + 4 * *a2 + 4));
  if (a4 == 0x7FFFFFFF)
  {
    if (v13 >= 0xD && *(v12 + 6))
    {
      v16 = &v8[*(v12 + 6) + *&v8[*(v12 + 6)]];
      v17 = (v15 - *v15);
      if (*v17 < 0x15u)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
      v17 = (v15 - *v15);
      if (*v17 < 0x15u)
      {
        goto LABEL_13;
      }
    }

    v18 = v17[10];
    if (v18)
    {
      v19 = *(v15 + v18);
      goto LABEL_14;
    }

LABEL_13:
    v19 = -1;
LABEL_14:
    v20 = sub_A56DB8(v16, a2[2] + v19)[1];
    v21 = (v15 - *v15);
    if (*v21 >= 0xBu && (v22 = v21[5]) != 0)
    {
      v23 = *(v15 + v22);
    }

    else
    {
      v23 = 0x7FFFFFFF;
    }

    a4 = sub_96AE18(v23 + v20);
    v11 = -*v9;
  }

  v24 = (v9 + v11);
  if (*v24 >= 7u && (v25 = v24[3]) != 0)
  {
    v26 = (v9 + v25 + *(v9 + v25));
    v27 = (v15 - *v15);
    if (*v27 < 0xDu)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v26 = 0;
    v27 = (v15 - *v15);
    if (*v27 < 0xDu)
    {
LABEL_26:
      v29 = -1;
      goto LABEL_27;
    }
  }

  v28 = v27[6];
  if (!v28)
  {
    goto LABEL_26;
  }

  v29 = *(v15 + v28);
LABEL_27:
  v30 = sub_3A2E6C(v26, v29 + a3)[3];
  v31 = sub_585D8((*a1 + 3896));
  v32 = *a1;
  if (!sub_4C2B90(*a1 + 3896))
  {
    return (v30 + a4) | ((v30 + a4) << 32);
  }

  if (!*(v32 + 3960))
  {
    return (v30 + a4) | ((v30 + a4) << 32);
  }

  v33 = sub_39F47C(*(*a1 + 3960), a2[1] | (*a2 << 32), a2[2], v31);
  if (!v33)
  {
    return (v30 + a4) | ((v30 + a4) << 32);
  }

  v34 = v33[5];
  if (0xCCCCCCCCCCCCCCCDLL * ((v33[6] - v34) >> 2) <= a3)
  {
    v36 = v30 + a4;
    v37 = 0x7FFFFFFF00000000;
  }

  else
  {
    v35 = *(v34 + 20 * a3 + 12);
    v36 = v30 + a4;
    if (v35 == 0x7FFFFFFF)
    {
      v37 = 0x7FFFFFFF00000000;
    }

    else
    {
      v39 = v35 / 10;
      v40 = v35 % 10;
      if (v35 < 0)
      {
        v41 = -5;
      }

      else
      {
        v41 = 5;
      }

      v37 = (v39 + a4 + (((103 * (v41 + v40)) >> 15) & 1) + ((103 * (v41 + v40)) >> 10)) << 32;
    }
  }

  if (*(v33 + 32) == 1)
  {
    v37 = 0x7FFFFFFF00000000;
  }

  return v37 | v36;
}

unint64_t sub_A56A5C(uint64_t *a1, unsigned int *a2, unsigned int a3, int a4)
{
  v8 = sub_3A231C(*a1 + 24, a2[1] | (*a2 << 32), 0);
  v9 = v8;
  v10 = *v8;
  v11 = -v10;
  v12 = &v8[-v10];
  v13 = *v12;
  if (v13 < 5)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v12 + 2);
    if (*(v12 + 2))
    {
      v14 += &v8[*&v8[v14]];
    }
  }

  v15 = (v14 + 4 * *a2 + 4 + *(v14 + 4 * *a2 + 4));
  if (a4 == 0x7FFFFFFF)
  {
    if (v13 >= 0xD && *(v12 + 6))
    {
      v16 = &v8[*(v12 + 6) + *&v8[*(v12 + 6)]];
      v17 = (v15 - *v15);
      if (*v17 < 0x15u)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
      v17 = (v15 - *v15);
      if (*v17 < 0x15u)
      {
        goto LABEL_13;
      }
    }

    v18 = v17[10];
    if (v18)
    {
      v19 = *(v15 + v18);
      goto LABEL_14;
    }

LABEL_13:
    v19 = -1;
LABEL_14:
    v20 = sub_A56DB8(v16, a2[2] + v19)[1];
    v21 = (v15 - *v15);
    if (*v21 >= 0xBu && (v22 = v21[5]) != 0)
    {
      v23 = *(v15 + v22);
    }

    else
    {
      v23 = 0x7FFFFFFF;
    }

    a4 = sub_96AE18(v23 + v20);
    v11 = -*v9;
  }

  v24 = (v9 + v11);
  if (*v24 >= 7u && (v25 = v24[3]) != 0)
  {
    v26 = (v9 + v25 + *(v9 + v25));
    v27 = (v15 - *v15);
    if (*v27 < 0xDu)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v26 = 0;
    v27 = (v15 - *v15);
    if (*v27 < 0xDu)
    {
LABEL_26:
      v29 = -1;
      goto LABEL_27;
    }
  }

  v28 = v27[6];
  if (!v28)
  {
    goto LABEL_26;
  }

  v29 = *(v15 + v28);
LABEL_27:
  v30 = sub_3A2E6C(v26, v29 + a3)[2];
  v31 = sub_585D8((*a1 + 3896));
  v32 = *a1;
  if (!sub_4C2B90(*a1 + 3896))
  {
    return (v30 + a4) | ((v30 + a4) << 32);
  }

  if (!*(v32 + 3960))
  {
    return (v30 + a4) | ((v30 + a4) << 32);
  }

  v33 = sub_39F47C(*(*a1 + 3960), a2[1] | (*a2 << 32), a2[2], v31);
  if (!v33)
  {
    return (v30 + a4) | ((v30 + a4) << 32);
  }

  v34 = v33[5];
  if (0xCCCCCCCCCCCCCCCDLL * ((v33[6] - v34) >> 2) <= a3)
  {
    v36 = v30 + a4;
    v37 = 0x7FFFFFFF00000000;
  }

  else
  {
    v35 = *(v34 + 20 * a3 + 8);
    v36 = v30 + a4;
    if (v35 == 0x7FFFFFFF)
    {
      v37 = 0x7FFFFFFF00000000;
    }

    else
    {
      v39 = v35 / 10;
      v40 = v35 % 10;
      if (v35 < 0)
      {
        v41 = -5;
      }

      else
      {
        v41 = 5;
      }

      v37 = (v39 + a4 + (((103 * (v41 + v40)) >> 15) & 1) + ((103 * (v41 + v40)) >> 10)) << 32;
    }
  }

  if (*(v33 + 32) == 1)
  {
    v37 = 0x7FFFFFFF00000000;
  }

  return v37 | v36;
}

unsigned int *sub_A56DB8(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(&v10, " is out of range", &v9);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[2 * a2 + 1];
}

void sub_A56E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A56F04(uint64_t *a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v6 = a2;
  v7 = sub_A5706C(a1, a2);
  v8 = v7;
  v9 = &v7[-*v7];
  if (*v9 < 5u)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v9 + 2);
    if (v10)
    {
      v10 += &v7[*&v7[v10]];
    }
  }

  v11 = (v10 + 4 * v6 + 4 + *(v10 + 4 * v6 + 4));
  v12 = (v11 - *v11);
  if (*v12 >= 9u && (v13 = v12[4]) != 0)
  {
    v14 = (v11 + v13 + *(v11 + v13));
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_A571D4(v14, v5);
  v16 = (v8 - *v8);
  if (*v16 >= 0xBu)
  {
    v17 = v16[5];
    if (v17)
    {
      v17 = (v17 + v8 + *(v17 + v8));
    }

    v18 = (v11 - *v11);
    if (*v18 >= 0x11u)
    {
      goto LABEL_13;
    }

LABEL_16:
    LODWORD(v19) = 0;
    goto LABEL_17;
  }

  v17 = 0;
  v18 = (v11 - *v11);
  if (*v18 < 0x11u)
  {
    goto LABEL_16;
  }

LABEL_13:
  v19 = v18[8];
  if (v18[8])
  {
    LODWORD(v19) = *(v11 + v19);
  }

LABEL_17:
  v20 = sub_A57320(v17, v19 + *(v11 + v18[2] + *(v11 + v18[2])) * a4 + *(v15 + 14));
  if (v20)
  {
    return __ROR8__(*v20, 32);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

char *sub_A5706C(uint64_t *a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  if (sub_A576FC(a1, SHIDWORD(a2)))
  {
    v5 = *(*(*a1 + 3944) + 72);
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v7 = "Incident stop pattern quad data requested on nullptr buffer";
      goto LABEL_14;
    }

    return v5 + *v5;
  }

  v8 = &unk_2733000;
  if ((atomic_load_explicit(&qword_27339D8, memory_order_acquire) & 1) == 0)
  {
    v12 = __cxa_guard_acquire(&qword_27339D8);
    v8 = &unk_2733000;
    if (v12)
    {
      v13 = sub_A57824(-85.0, -13.0);
      sub_58168(v13 >> 17, v13 >> 49);
      dword_27339D0 = v14 | 0x40000000;
      __cxa_guard_release(&qword_27339D8);
      v8 = &unk_2733000;
    }
  }

  v9 = v8[628];
  v10 = *a1;
  if (v9 == v4)
  {
    v5 = *(*(v10 + 3976) + 72);
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v7 = "Realtime stop pattern quad data requested on nullptr buffer";
LABEL_14:
      v15 = sub_2D390(exception, v7, 0x3BuLL);
    }

    return v5 + *v5;
  }

  return sub_A57470(v10 + 24, a2, 0);
}

unsigned int *sub_A571D4(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(&v10, " is out of range", &v9);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[4 * a2 + 1];
}

void sub_A572A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

unsigned int *sub_A57320(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(&v10, " is out of range", &v9);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[3 * a2 + 1];
}

void sub_A573F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

char *sub_A57470(uint64_t a1, unint64_t a2, int a3)
{
  v4 = a2;
  v5 = HIDWORD(a2);
  result = sub_3D4D04(a1, HIDWORD(a2), a3);
  if (result)
  {
    v7 = &result[-*result];
    v8 = *v7;
    if (v8 >= 7)
    {
      v9 = *(v7 + 3);
      if (*(v7 + 3))
      {
        v10 = &result[v9 + *&result[v9]];
        v11 = &v10[-*v10];
        if (*v11 >= 5u)
        {
          v12 = *(v11 + 2);
          if (v12)
          {
            if (*&v10[v12 + *&v10[v12]] > v4)
            {
              goto LABEL_11;
            }
          }
        }
      }
    }

    if (a3 == 1)
    {
      return 0;
    }

    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v14 = v5;
      v15 = exception;
      std::to_string(&v24, v14);
      sub_23E08("Failed to acquire stop pattern in quad node ", &v24, &v25);
      sub_30F54(&v26, " and position ", &v25);
      std::to_string(&v23, v4);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v23;
      }

      else
      {
        v16 = v23.__r_.__value_.__r.__words[0];
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v23.__r_.__value_.__l.__size_;
      }

      v18 = std::string::append(&v26, v16, size);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v28 = v18->__r_.__value_.__r.__words[2];
      v27 = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (v28 >= 0)
      {
        v20 = &v27;
      }

      else
      {
        v20 = v27;
      }

      if (v28 >= 0)
      {
        v21 = HIBYTE(v28);
      }

      else
      {
        v21 = *(&v27 + 1);
      }

      v22 = sub_2D390(v15, v20, v21);
    }

    if (v8 >= 7 && (LODWORD(v9) = *(v7 + 3), *(v7 + 3)))
    {
LABEL_11:
      result += v9 + *&result[v9];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_A5761C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
    if (a32 < 0)
    {
LABEL_7:
      operator delete(a27);
      if (a26 < 0)
      {
LABEL_10:
        operator delete(a21);
        if ((a20 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

LABEL_12:
      if ((a20 & 0x80000000) == 0)
      {
LABEL_14:
        _Unwind_Resume(a1);
      }

LABEL_13:
      operator delete(a15);
      goto LABEL_14;
    }
  }

  else if (a32 < 0)
  {
    goto LABEL_7;
  }

  if (a26 < 0)
  {
    goto LABEL_10;
  }

  goto LABEL_12;
}

BOOL sub_A576FC(void *a1, int a2)
{
  v3 = &unk_2733000;
  if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0)
  {
    v13 = a1;
    v7 = __cxa_guard_acquire(&qword_27339C8);
    v3 = &unk_2733000;
    v8 = v7;
    a1 = v13;
    if (v8)
    {
      v9 = sub_A57824(-85.0, 0.0);
      sub_58168(v9 >> 17, v9 >> 49);
      dword_27339C0 = v10 | 0x40000000;
      __cxa_guard_release(&qword_27339C8);
      v3 = &unk_2733000;
      a1 = v13;
    }
  }

  v4 = v3[624];
  if (v4 == a2)
  {
    v5 = *a1;
    if (!sub_68312C(*a1 + 3896) || !*(v5 + 3944))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = sub_2D390(exception, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
    }
  }

  return v4 == a2;
}

uint64_t sub_A57824(double a1, double a2)
{
  result = -1;
  if (a2 <= 180.0 && fabs(a1) <= 85.0511288 && a2 >= -180.0)
  {
    v4 = sin(fmin(fmax(a1, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
    LODWORD(v5) = ((log((v4 + 1.0) / (1.0 - v4)) / -12.5663706 + 0.5) * 4294967300.0);
    if (v5 >= 0xFFFFFFFE)
    {
      v5 = 4294967294;
    }

    else
    {
      v5 = v5;
    }

    return ((a2 + 180.0) / 360.0 * 4294967300.0) | (v5 << 32);
  }

  return result;
}

uint64_t sub_A57920(void *a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  if (sub_A576FC(a1, SHIDWORD(a2)))
  {
    v5 = *(*a1 + 3944);

    return sub_A57AFC(v5, a2);
  }

  else
  {
    v7 = &unk_2733000;
    if ((atomic_load_explicit(&qword_27339D8, memory_order_acquire) & 1) == 0)
    {
      v16 = __cxa_guard_acquire(&qword_27339D8);
      v7 = &unk_2733000;
      if (v16)
      {
        v17 = sub_A57824(-85.0, -13.0);
        sub_58168(v17 >> 17, v17 >> 49);
        dword_27339D0 = v18 | 0x40000000;
        __cxa_guard_release(&qword_27339D8);
        v7 = &unk_2733000;
      }
    }

    v8 = v7[628];
    v9 = *a1;
    if (v8 == v4)
    {
      v10 = *(*(v9 + 3976) + 72);
      if (!v10)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v20 = sub_2D390(exception, "Realtime stop pattern quad data requested on nullptr buffer", 0x3BuLL);
      }

      v11 = (v10 + *v10);
      v12 = (v11 - *v11);
      if (*v12 >= 5u && (v13 = v12[2]) != 0)
      {
        v14 = (v11 + v13 + *(v11 + v13));
        v15 = a2;
      }

      else
      {
        v14 = 0;
        v15 = a2;
      }

      return sub_A57CB8(v14, v15);
    }

    else
    {

      return sub_A57E08(v9 + 24, a2, 0, "stop pattern");
    }
  }
}

uint64_t sub_A57AFC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v14 = sub_2D390(exception, "Incident stop pattern quad data requested on nullptr buffer", 0x3BuLL);
  }

  v3 = (v2 + *v2);
  v4 = (v3 - *v3);
  if (*v4 < 5u || (v5 = v4[2]) == 0 || (v6 = (v3 + v5 + *(v3 + v5)), *v6 <= a2))
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v15, a2);
    sub_23E08("Requested new incident stop pattern at object id ", &v15, &v16);
    sub_30F54(&v17, ", which is out of range", &v16);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    v12 = sub_2D390(v9, v10, size);
  }

  return &v6[a2 + 1] + v6[a2 + 1];
}

void sub_A57C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A57CB8(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(&v10, " is out of range", &v9);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[a2 + 1] + a1[a2 + 1];
}

void sub_A57D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A57E08(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v24 = a4;
  v7 = sub_3D4D04(a1, HIDWORD(a2), a3);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = &v7[-*v7];
  if (*v8 < 7u)
  {
    goto LABEL_10;
  }

  v9 = *(v8 + 3);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = (v9 + v7 + *(v9 + v7));
  v11 = (v10 - *v10);
  if (*v11 < 5u)
  {
    v9 = 0;
    if (a3 == 1)
    {
      return 0;
    }

    goto LABEL_8;
  }

  v12 = v11[2];
  if (!v12)
  {
LABEL_10:
    v9 = 0;
    if (a3 == 1)
    {
      return 0;
    }

LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v20 = v5;
      v21 = v6;
      v19[0] = sub_7FCF0(9u);
      v19[1] = v15;
      sub_2C956C("Failed to acquire entity ", &v24, " in quad node ", " at position ", " on layer ", v19, v22);
      if ((v23 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v22[0];
      }

      if ((v23 & 0x80u) == 0)
      {
        v17 = v23;
      }

      else
      {
        v17 = v22[1];
      }

      v18 = sub_2D390(exception, v16, v17);
    }

    return &v9[v5 + 1] + v9[v5 + 1];
  }

  v9 = (v10 + v12 + *(v10 + v12));
  if (*v9 > v5)
  {
    return &v9[v5 + 1] + v9[v5 + 1];
  }

LABEL_7:
  if (a3 != 1)
  {
    goto LABEL_8;
  }

  return 0;
}

void sub_A57F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A57FC4(void *a1, void *a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v3 - *a2) >> 2)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v4 = a3[1] - *a3;
  if (v4)
  {
    if ((0x6DB6DB6DB6DB6DB7 * (v4 >> 2)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_A580E8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A5811C(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 3;
  v9 = (a2 - 3);
  v10 = a2 - 9;
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 2);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v90 = *(a2 - 3);
      v89 = (a2 - 12);
      if (v90 >= *v11)
      {
        return result;
      }

LABEL_108:
      v207 = *(v11 + 8);
      v181 = *v11;
      v95 = *v89;
      *(v11 + 8) = *(v89 + 4);
      *v11 = v95;
      *(v89 + 4) = v207;
      *v89 = v181;
      return result;
    }

LABEL_10:
    if (v12 <= 287)
    {
      v100 = v11 + 12;
      v102 = v11 == a2 || v100 == a2;
      if (a4)
      {
        if (v102)
        {
          return result;
        }

        v103 = 0;
        v104 = v11;
        while (1)
        {
          v106 = v100;
          v107 = *(v104 + 12);
          if (v107 < *v104)
          {
            v108 = *(v104 + 16);
            v109 = v103;
            do
            {
              v110 = v11 + v109;
              *(v110 + 12) = *(v11 + v109);
              *(v110 + 20) = *(v11 + v109 + 8);
              if (!v109)
              {
                v105 = v11;
                goto LABEL_122;
              }

              v109 -= 12;
            }

            while (v107 < *(v110 - 12));
            v105 = v11 + v109 + 12;
LABEL_122:
            *v105 = v107;
            *(v105 + 4) = v108;
            *(v105 + 8) = WORD2(v108);
          }

          v100 = v106 + 12;
          v103 += 12;
          v104 = v106;
          if ((v106 + 12) == a2)
          {
            return result;
          }
        }
      }

      if (!v102)
      {
        do
        {
          v147 = v100;
          v148 = *(v7 + 12);
          if (v148 < *v7)
          {
            v149 = *(v7 + 16);
            v150 = v147;
            do
            {
              v151 = v150;
              v152 = *(v150 - 12);
              v150 -= 12;
              *v151 = v152;
              *(v151 + 8) = *(v151 - 4);
            }

            while (v148 < *(v151 - 24));
            *v150 = v148;
            *(v150 + 4) = v149;
            *(v150 + 8) = WORD2(v149);
          }

          v100 = v147 + 12;
          v7 = v147;
        }

        while ((v147 + 12) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 == a2)
      {
        return result;
      }

      v111 = (v13 - 2) >> 1;
      v112 = v111;
      while (1)
      {
        if (v111 >= v112)
        {
          v113 = (2 * (v112 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
          v114 = (v11 + 12 * v113);
          if (2 * v112 + 2 >= v13)
          {
            v117 = (v11 + 12 * v112);
            v118 = *v117;
            if (*v114 >= *v117)
            {
              goto LABEL_142;
            }
          }

          else
          {
            v115 = v114[3];
            v116 = *v114 < v115;
            if (*v114 > v115)
            {
              v115 = *v114;
            }

            if (v116)
            {
              v114 += 3;
              v113 = 2 * v112 + 2;
            }

            v117 = (v11 + 12 * v112);
            v118 = *v117;
            if (v115 >= *v117)
            {
LABEL_142:
              v119 = *(v117 + 1);
              while (1)
              {
                v122 = v117;
                v117 = v114;
                v123 = *v114;
                *(v122 + 4) = *(v117 + 4);
                *v122 = v123;
                if (v111 < v113)
                {
                  break;
                }

                v124 = (2 * v113) | 1;
                v114 = (v11 + 12 * v124);
                v113 = 2 * v113 + 2;
                if (v113 < v13)
                {
                  v120 = *v114;
                  v121 = v114[3];
                  if (*v114 <= v121)
                  {
                    v120 = v114[3];
                  }

                  if (*v114 >= v121)
                  {
                    v113 = v124;
                  }

                  else
                  {
                    v114 += 3;
                  }

                  if (v120 < v118)
                  {
                    break;
                  }
                }

                else
                {
                  v113 = v124;
                  if (*v114 < v118)
                  {
                    break;
                  }
                }
              }

              *v117 = v118;
              v117[1] = v119;
              *(v117 + 4) = WORD2(v119);
            }
          }
        }

        v116 = v112-- <= 0;
        if (v116)
        {
          v125 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
          do
          {
            v126 = 0;
            v209 = *(v11 + 8);
            v183 = *v11;
            v127 = v11;
            do
            {
              v132 = v127 + 12 * v126;
              v130 = (v132 + 12);
              result = 2 * v126;
              v133 = (2 * v126) | 1;
              v126 = 2 * v126 + 2;
              if (v126 < v125)
              {
                v129 = *(v132 + 24);
                v128 = (v132 + 24);
                result = v129;
                if (*(v128 - 3) >= v129)
                {
                  v126 = v133;
                }

                else
                {
                  v130 = v128;
                }
              }

              else
              {
                v126 = v133;
              }

              v131 = *v130;
              *(v127 + 8) = *(v130 + 4);
              *v127 = v131;
              v127 = v130;
            }

            while (v126 <= ((v125 - 2) >> 1));
            a2 = (a2 - 12);
            if (v130 == a2)
            {
              *(v130 + 4) = v209;
              *v130 = v183;
            }

            else
            {
              v134 = *a2;
              *(v130 + 4) = *(a2 + 4);
              *v130 = v134;
              *(a2 + 4) = v209;
              *a2 = v183;
              v135 = v130 - v11 + 12;
              if (v135 >= 13)
              {
                v136 = (-2 - 0x5555555555555555 * (v135 >> 2)) >> 1;
                v137 = (v11 + 12 * v136);
                v138 = *v130;
                if (*v137 < *v130)
                {
                  v139 = *(v130 + 4);
                  do
                  {
                    v140 = v130;
                    v130 = v137;
                    v141 = *v137;
                    result = *(v130 + 4);
                    *(v140 + 4) = result;
                    *v140 = v141;
                    if (!v136)
                    {
                      break;
                    }

                    v136 = (v136 - 1) >> 1;
                    v137 = (v11 + 12 * v136);
                  }

                  while (*v137 < v138);
                  *v130 = v138;
                  *(v130 + 1) = v139;
                  *(v130 + 4) = WORD2(v139);
                }
              }
            }

            v116 = v125-- <= 2;
          }

          while (!v116);
          return result;
        }
      }
    }

    v14 = v13 >> 1;
    v15 = v11 + 12 * (v13 >> 1);
    v16 = *v8;
    if (v12 < 0x601)
    {
      v19 = *v11;
      if (*v11 < *v15)
      {
        if (v16 < v19)
        {
          v189 = *(v15 + 8);
          v163 = *v15;
          v20 = *v8;
          *(v15 + 8) = *(a2 - 2);
          *v15 = v20;
          goto LABEL_37;
        }

        v196 = *(v15 + 8);
        v170 = *v15;
        v41 = *v11;
        *(v15 + 8) = *(v11 + 8);
        *v15 = v41;
        *(v11 + 8) = v196;
        *v11 = v170;
        if (*v8 < *v11)
        {
          v189 = *(v11 + 8);
          v163 = *v11;
          v42 = *v8;
          *(v11 + 8) = *(a2 - 2);
          *v11 = v42;
LABEL_37:
          *(a2 - 2) = v189;
          *v8 = v163;
        }

LABEL_38:
        --a3;
        v25 = *v11;
        if (a4)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      if (v16 >= v19)
      {
        goto LABEL_38;
      }

      v192 = *(v11 + 8);
      v166 = *v11;
      v23 = *v8;
      *(v11 + 8) = *(a2 - 2);
      *v11 = v23;
      *(a2 - 2) = v192;
      *v8 = v166;
      if (*v11 >= *v15)
      {
        goto LABEL_38;
      }

      v193 = *(v15 + 8);
      v167 = *v15;
      v24 = *v11;
      *(v15 + 8) = *(v11 + 8);
      *v15 = v24;
      *(v11 + 8) = v193;
      *v11 = v167;
      --a3;
      v25 = v167;
      if (a4)
      {
        goto LABEL_61;
      }

LABEL_60:
      if (*(v11 - 12) < v25)
      {
        goto LABEL_61;
      }

      if (v25 >= *v8)
      {
        v81 = v11 + 12;
        do
        {
          v11 = v81;
          if (v81 >= a2)
          {
            break;
          }

          v81 += 12;
        }

        while (v25 >= *v11);
      }

      else
      {
        do
        {
          v80 = *(v11 + 12);
          v11 += 12;
        }

        while (v25 >= v80);
      }

      v82 = a2;
      if (v11 < a2)
      {
        v82 = a2;
        do
        {
          v83 = *(v82 - 12);
          v82 -= 12;
        }

        while (v25 < v83);
      }

      v84 = *(v7 + 4);
      while (v11 < v82)
      {
        v206 = *(v11 + 8);
        v180 = *v11;
        v85 = *v82;
        *(v11 + 8) = *(v82 + 8);
        *v11 = v85;
        *(v82 + 8) = v206;
        *v82 = v180;
        do
        {
          v86 = *(v11 + 12);
          v11 += 12;
        }

        while (v25 >= v86);
        do
        {
          v87 = *(v82 - 12);
          v82 -= 12;
        }

        while (v25 < v87);
      }

      if (v11 - 12 != v7)
      {
        v88 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v88;
      }

      a4 = 0;
      *(v11 - 12) = v25;
      *(v11 - 8) = v84;
      *(v11 - 4) = WORD2(v84);
    }

    else
    {
      v17 = *v15;
      if (*v15 >= *v11)
      {
        if (v16 < v17)
        {
          v190 = *(v15 + 8);
          v164 = *v15;
          v21 = *v8;
          *(v15 + 8) = *(a2 - 2);
          *v15 = v21;
          *(a2 - 2) = v190;
          *v8 = v164;
          if (*v15 < *v11)
          {
            v191 = *(v11 + 8);
            v165 = *v11;
            v22 = *v15;
            *(v11 + 8) = *(v15 + 8);
            *v11 = v22;
            *(v15 + 8) = v191;
            *v15 = v165;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          v194 = *(v11 + 8);
          v168 = *v11;
          v26 = *v15;
          *(v11 + 8) = *(v15 + 8);
          *v11 = v26;
          *(v15 + 8) = v194;
          *v15 = v168;
          if (*v8 >= *v15)
          {
            goto LABEL_29;
          }

          v188 = *(v15 + 8);
          v162 = *v15;
          v27 = *v8;
          *(v15 + 8) = *(a2 - 2);
          *v15 = v27;
        }

        else
        {
          v188 = *(v11 + 8);
          v162 = *v11;
          v18 = *v8;
          *(v11 + 8) = *(a2 - 2);
          *v11 = v18;
        }

        *(a2 - 2) = v188;
        *v8 = v162;
      }

LABEL_29:
      v28 = (v11 + 12);
      v29 = v11 + 12 * v14;
      v32 = *(v29 - 12);
      v30 = v29 - 12;
      v31 = v32;
      v33 = *v9;
      if (v32 >= *(v11 + 12))
      {
        if (v33 < v31)
        {
          v195 = *(v30 + 8);
          v169 = *v30;
          v37 = *v9;
          *(v30 + 8) = *(a2 - 8);
          *v30 = v37;
          *(a2 - 8) = v195;
          *v9 = v169;
          if (*v30 < *v28)
          {
            v38 = *v28;
            v39 = *(v11 + 20);
            v40 = *(v30 + 8);
            *v28 = *v30;
            *(v11 + 20) = v40;
            *(v30 + 8) = v39;
            *v30 = v38;
          }
        }
      }

      else if (v33 >= v31)
      {
        v43 = *v28;
        v44 = *(v11 + 20);
        v45 = *(v30 + 8);
        *v28 = *v30;
        *(v11 + 20) = v45;
        *(v30 + 8) = v44;
        *v30 = v43;
        if (*v9 < v43)
        {
          v197 = *(v30 + 8);
          v171 = *v30;
          v46 = *v9;
          *(v30 + 8) = *(a2 - 8);
          *v30 = v46;
          *(a2 - 8) = v197;
          *v9 = v171;
        }
      }

      else
      {
        v34 = *v28;
        v35 = *(v11 + 20);
        v36 = *(a2 - 8);
        *v28 = *v9;
        *(v11 + 20) = v36;
        *(a2 - 8) = v35;
        *v9 = v34;
      }

      v47 = (v11 + 24);
      v48 = v11 + 12 * v14;
      v51 = *(v48 + 12);
      v49 = v48 + 12;
      v50 = v51;
      v52 = *v10;
      if (v51 >= *(v11 + 24))
      {
        if (v52 < v50)
        {
          v198 = *(v49 + 8);
          v172 = *v49;
          v56 = *v10;
          *(v49 + 8) = *(a2 - 14);
          *v49 = v56;
          *(a2 - 14) = v198;
          *v10 = v172;
          if (*v49 < *v47)
          {
            v57 = *v47;
            v58 = *(v11 + 32);
            v59 = *(v49 + 8);
            *v47 = *v49;
            *(v11 + 32) = v59;
            *(v49 + 8) = v58;
            *v49 = v57;
          }
        }
      }

      else if (v52 >= v50)
      {
        v60 = *v47;
        v61 = *(v11 + 32);
        v62 = *(v49 + 8);
        *v47 = *v49;
        *(v11 + 32) = v62;
        *(v49 + 8) = v61;
        *v49 = v60;
        if (*v10 < v60)
        {
          v199 = *(v49 + 8);
          v173 = *v49;
          v63 = *v10;
          *(v49 + 8) = *(a2 - 14);
          *v49 = v63;
          *(a2 - 14) = v199;
          *v10 = v173;
        }
      }

      else
      {
        v53 = *v47;
        v54 = *(v11 + 32);
        v55 = *(a2 - 14);
        *v47 = *v10;
        *(v11 + 32) = v55;
        *(a2 - 14) = v54;
        *v10 = v53;
      }

      v64 = *v15;
      v65 = *v49;
      if (*v15 >= *v30)
      {
        if (v65 < v64)
        {
          v201 = *(v15 + 8);
          v175 = *v15;
          *v15 = *v49;
          *(v15 + 8) = *(v49 + 8);
          *(v49 + 8) = v201;
          *v49 = v175;
          if (*v15 < *v30)
          {
            v202 = *(v30 + 8);
            v176 = *v30;
            *v30 = *v15;
            *(v30 + 8) = *(v15 + 8);
            *(v15 + 8) = v202;
            *v15 = v176;
          }
        }
      }

      else
      {
        if (v65 >= v64)
        {
          v203 = *(v30 + 8);
          v177 = *v30;
          *v30 = *v15;
          *(v30 + 8) = *(v15 + 8);
          *(v15 + 8) = v203;
          *v15 = v177;
          if (*v49 >= *v15)
          {
            goto LABEL_59;
          }

          v200 = *(v15 + 8);
          v174 = *v15;
          *v15 = *v49;
          *(v15 + 8) = *(v49 + 8);
        }

        else
        {
          v200 = *(v30 + 8);
          v174 = *v30;
          *v30 = *v49;
          *(v30 + 8) = *(v49 + 8);
        }

        *(v49 + 8) = v200;
        *v49 = v174;
      }

LABEL_59:
      v204 = *(v11 + 8);
      v178 = *v11;
      v66 = *v15;
      *(v11 + 8) = *(v15 + 8);
      *v11 = v66;
      *(v15 + 8) = v204;
      *v15 = v178;
      --a3;
      v25 = *v11;
      if ((a4 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_61:
      v67 = 0;
      v68 = *(v11 + 4);
      do
      {
        v69 = *(v11 + v67 + 12);
        v67 += 12;
      }

      while (v69 < v25);
      v70 = v11 + v67;
      v71 = a2;
      if (v67 == 12)
      {
        v71 = a2;
        do
        {
          if (v70 >= v71)
          {
            break;
          }

          v73 = *(v71 - 12);
          v71 -= 12;
        }

        while (v73 >= v25);
      }

      else
      {
        do
        {
          v72 = *(v71 - 12);
          v71 -= 12;
        }

        while (v72 >= v25);
      }

      v11 += v67;
      if (v70 < v71)
      {
        v74 = v71;
        do
        {
          v205 = *(v11 + 8);
          v179 = *v11;
          v75 = *v74;
          *(v11 + 8) = *(v74 + 8);
          *v11 = v75;
          *(v74 + 8) = v205;
          *v74 = v179;
          do
          {
            v76 = *(v11 + 12);
            v11 += 12;
          }

          while (v76 < v25);
          do
          {
            v77 = *(v74 - 12);
            v74 -= 12;
          }

          while (v77 >= v25);
        }

        while (v11 < v74);
      }

      if (v11 - 12 != v7)
      {
        v78 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v78;
      }

      *(v11 - 12) = v25;
      *(v11 - 8) = v68;
      *(v11 - 4) = WORD2(v68);
      if (v70 < v71)
      {
LABEL_80:
        result = sub_A5811C(v7, v11 - 12, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v79 = sub_A59304(v7, (v11 - 12));
        result = sub_A59304(v11, a2);
        if (result)
        {
          a2 = (v11 - 12);
          if (v79)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v79)
        {
          goto LABEL_80;
        }
      }
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      v91 = v11 + 12;
      v96 = *(v11 + 12);
      v97 = (v11 + 24);
      v98 = *(v11 + 24);
      if (v96 >= *v11)
      {
        if (v98 < v96)
        {
          v145 = *(v11 + 20);
          v146 = *v91;
          *v91 = *v97;
          *(v11 + 20) = *(v11 + 32);
          *v97 = v146;
          *(v11 + 32) = v145;
          if (*(v11 + 12) < *v11)
          {
            v210 = *(v11 + 8);
            v184 = *v11;
            *v11 = *v91;
            *(v11 + 8) = *(v11 + 20);
            *v91 = v184;
            *(v11 + 20) = v210;
          }
        }
      }

      else
      {
        if (v98 < v96)
        {
          v208 = *(v11 + 8);
          v182 = *v11;
          *v11 = *v97;
          *(v11 + 8) = *(v11 + 32);
          *v97 = v182;
          LOWORD(v99) = v208;
          goto LABEL_186;
        }

        v212 = *(v11 + 8);
        v186 = *v11;
        *v11 = *v91;
        *(v11 + 8) = *(v11 + 20);
        *v91 = v186;
        *(v11 + 20) = v212;
        if (v98 < *(v11 + 12))
        {
          v99 = *(v11 + 20);
          v156 = *v91;
          *v91 = *v97;
          *(v11 + 20) = *(v11 + 32);
          *v97 = v156;
LABEL_186:
          *(v11 + 32) = v99;
        }
      }

      if (*v8 >= *v97)
      {
        return result;
      }

      v157 = *v97;
      v158 = *(v11 + 32);
      v159 = *(a2 - 2);
      *v97 = *v8;
      *(v11 + 32) = v159;
      *(a2 - 2) = v158;
      *v8 = v157;
      if (*v97 >= *v91)
      {
        return result;
      }

      v160 = *(v11 + 20);
      v161 = *v91;
      *v91 = *v97;
      *(v11 + 20) = *(v11 + 32);
      *v97 = v161;
      *(v11 + 32) = v160;
LABEL_190:
      if (*(v11 + 12) < *v11)
      {
        v213 = *(v11 + 8);
        v187 = *v11;
        *v11 = *v91;
        *(v11 + 8) = *(v91 + 8);
        *v91 = v187;
        *(v91 + 8) = v213;
      }

      return result;
    }

    if (v13 == 5)
    {

      return sub_A590C4(v11, (v11 + 12), (v11 + 24), (v11 + 36), (a2 - 12));
    }

    goto LABEL_10;
  }

  v91 = v11 + 12;
  v92 = *(v11 + 12);
  v94 = *(a2 - 3);
  v89 = (a2 - 12);
  v93 = v94;
  if (v92 >= *v11)
  {
    if (v93 >= v92)
    {
      return result;
    }

    v142 = *v91;
    v143 = *(v11 + 20);
    v144 = *(v89 + 4);
    *v91 = *v89;
    *(v11 + 20) = v144;
    *(v89 + 4) = v143;
    *v89 = v142;
    goto LABEL_190;
  }

  if (v93 < v92)
  {
    goto LABEL_108;
  }

  v211 = *(v11 + 8);
  v185 = *v11;
  *v11 = *v91;
  *(v11 + 8) = *(v11 + 20);
  *v91 = v185;
  *(v11 + 20) = v211;
  if (*v89 < *(v11 + 12))
  {
    v153 = *v91;
    v154 = *(v11 + 20);
    v155 = *(v89 + 4);
    *v91 = *v89;
    *(v11 + 20) = v155;
    *(v89 + 4) = v154;
    *v89 = v153;
  }

  return result;
}

uint64_t *sub_A590C4(uint64_t *result, _DWORD *a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v10 = a2[2];
      v11 = *a2;
      v12 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v12;
      *a3 = v11;
      *(a3 + 4) = v10;
      if (*a2 < *result)
      {
        v13 = *(result + 2);
        v14 = *result;
        v15 = *(a2 + 4);
        *result = *a2;
        *(result + 4) = v15;
        *a2 = v14;
        *(a2 + 4) = v13;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v7 = *(result + 2);
      v8 = *result;
      v9 = *(a3 + 4);
      *result = *a3;
      *(result + 4) = v9;
LABEL_9:
      *a3 = v8;
      *(a3 + 4) = v7;
      goto LABEL_10;
    }

    v16 = *(result + 2);
    v17 = *result;
    v18 = *(a2 + 4);
    *result = *a2;
    *(result + 4) = v18;
    *a2 = v17;
    *(a2 + 4) = v16;
    if (*a3 < v17)
    {
      v7 = a2[2];
      v8 = *a2;
      v19 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v19;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    v20 = a3[2];
    v21 = *a3;
    v22 = *(a4 + 4);
    *a3 = *a4;
    *(a3 + 4) = v22;
    *a4 = v21;
    *(a4 + 4) = v20;
    if (*a3 < *a2)
    {
      v23 = a2[2];
      v24 = *a2;
      v25 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v25;
      *a3 = v24;
      *(a3 + 4) = v23;
      if (*a2 < *result)
      {
        v26 = *(result + 2);
        v27 = *result;
        v28 = *(a2 + 4);
        *result = *a2;
        *(result + 4) = v28;
        *a2 = v27;
        *(a2 + 4) = v26;
      }
    }
  }

  if (*a5 < *a4)
  {
    v29 = *(a4 + 2);
    v30 = *a4;
    v31 = *(a5 + 4);
    *a4 = *a5;
    *(a4 + 4) = v31;
    *a5 = v30;
    *(a5 + 4) = v29;
    if (*a4 < *a3)
    {
      v32 = a3[2];
      v33 = *a3;
      v34 = *(a4 + 4);
      *a3 = *a4;
      *(a3 + 4) = v34;
      *a4 = v33;
      *(a4 + 4) = v32;
      if (*a3 < *a2)
      {
        v35 = a2[2];
        v36 = *a2;
        v37 = *(a3 + 4);
        *a2 = *a3;
        *(a2 + 4) = v37;
        *a3 = v36;
        *(a3 + 4) = v35;
        if (*a2 < *result)
        {
          v38 = *(result + 2);
          v39 = *result;
          v40 = *(a2 + 4);
          *result = *a2;
          *(result + 4) = v40;
          *a2 = v39;
          *(a2 + 4) = v38;
        }
      }
    }
  }

  return result;
}

BOOL sub_A59304(int *a1, char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1 + 3;
      v7 = a1[3];
      v9 = *(a2 - 3);
      v3 = a2 - 12;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v38 = a1[2];
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 4) = *(a1 + 10);
          *v6 = v39;
          *(a1 + 10) = v38;
          if (*v3 < a1[3])
          {
            v40 = a1[5];
            v41 = *v6;
            v42 = *(v3 + 4);
            *v6 = *v3;
            *(a1 + 10) = v42;
            *v3 = v41;
            *(v3 + 4) = v40;
            return 1;
          }

          return 1;
        }

        goto LABEL_12;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v27 = a1[5];
      v28 = *v6;
      v29 = *(v3 + 4);
      *v6 = *v3;
      *(a1 + 10) = v29;
      *v3 = v28;
      *(v3 + 4) = v27;
LABEL_48:
      if (a1[3] < *a1)
      {
        v62 = a1[2];
        v63 = *a1;
        *a1 = *v6;
        *(a1 + 4) = *(v6 + 4);
        *v6 = v63;
        *(v6 + 4) = v62;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_A590C4(a1, a1 + 3, a1 + 6, (a1 + 9), (a2 - 12));
        return 1;
      }

      goto LABEL_13;
    }

    v6 = a1 + 3;
    v20 = a1[3];
    v21 = a1 + 6;
    v22 = a1[6];
    v23 = (a2 - 12);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = a1[5];
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 10) = *(a1 + 16);
        *v21 = v35;
        *(a1 + 16) = v34;
        if (*v6 < v24)
        {
          v36 = a1[2];
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 4) = *(a1 + 10);
          *v6 = v37;
          *(a1 + 10) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 >= v20)
    {
      v55 = a1[2];
      v56 = *a1;
      *a1 = *v6;
      *(a1 + 4) = *(a1 + 10);
      *v6 = v56;
      *(a1 + 10) = v55;
      if (v22 >= a1[3])
      {
        goto LABEL_45;
      }

      v25 = a1[5];
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 10) = *(a1 + 16);
    }

    else
    {
      v25 = a1[2];
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 4) = *(a1 + 16);
    }

    *v21 = v26;
    *(a1 + 16) = v25;
LABEL_45:
    if (*v23 >= *v21)
    {
      return 1;
    }

    v57 = a1[8];
    v58 = *v21;
    v59 = *(a2 - 2);
    *v21 = *v23;
    *(a1 + 16) = v59;
    *v23 = v58;
    *(a2 - 2) = v57;
    if (*v21 >= *v6)
    {
      return 1;
    }

    v60 = a1[5];
    v61 = *v6;
    *v6 = *v21;
    *(a1 + 10) = *(a1 + 16);
    *v21 = v61;
    *(a1 + 16) = v60;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v4 = *(a2 - 3);
    v3 = a2 - 12;
    if (v4 >= *a1)
    {
      return 1;
    }

LABEL_12:
    v10 = a1[2];
    v11 = *a1;
    v12 = *(v3 + 4);
    *a1 = *v3;
    *(a1 + 4) = v12;
    *v3 = v11;
    *(v3 + 4) = v10;
    return 1;
  }

LABEL_13:
  v13 = a1 + 6;
  v14 = a1[6];
  v15 = a1 + 3;
  v16 = a1[3];
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = a1[5];
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 10) = *(a1 + 16);
      *v13 = v31;
      *(a1 + 16) = v30;
      if (*v15 < v17)
      {
        v32 = a1[2];
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 4) = *(a1 + 10);
        *v15 = v33;
        *(a1 + 10) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = a1[2];
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 4) = *(a1 + 10);
    *v15 = v44;
    *(a1 + 10) = v43;
    if (v14 < a1[3])
    {
      v45 = a1[5];
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 10) = *(a1 + 16);
      *v13 = v46;
      *(a1 + 16) = v45;
    }
  }

  else
  {
    v18 = a1[2];
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 4) = *(a1 + 16);
    *v13 = v19;
    *(a1 + 16) = v18;
  }

  v47 = (a1 + 9);
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 < *v13)
    {
      break;
    }

LABEL_40:
    v13 = v47;
    v48 += 12;
    v47 = (v47 + 12);
    if (v47 == a2)
    {
      return 1;
    }
  }

  v51 = *(v47 + 4);
  v52 = v48;
  do
  {
    v53 = a1 + v52;
    *(v53 + 36) = *(a1 + v52 + 24);
    *(v53 + 22) = *(a1 + v52 + 32);
    if (v52 == -24)
    {
      *a1 = v50;
      a1[1] = v51;
      *(a1 + 4) = WORD2(v51);
      if (++v49 != 8)
      {
        goto LABEL_40;
      }

      return v47 + 12 == a2;
    }

    v52 -= 12;
  }

  while (v50 < *(v53 + 3));
  v54 = a1 + v52;
  *(v54 + 9) = v50;
  *(v54 + 10) = v51;
  *(v54 + 22) = WORD2(v51);
  if (++v49 != 8)
  {
    goto LABEL_40;
  }

  return v47 + 12 == a2;
}

uint64_t sub_A597BC(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 3;
  v9 = (a2 - 3);
  v10 = a2 - 9;
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 2);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v90 = *(a2 - 3);
      v89 = (a2 - 12);
      if (v90 <= *v11)
      {
        return result;
      }

LABEL_108:
      v207 = *(v11 + 8);
      v181 = *v11;
      v95 = *v89;
      *(v11 + 8) = *(v89 + 4);
      *v11 = v95;
      *(v89 + 4) = v207;
      *v89 = v181;
      return result;
    }

LABEL_10:
    if (v12 <= 287)
    {
      v100 = v11 + 12;
      v102 = v11 == a2 || v100 == a2;
      if (a4)
      {
        if (v102)
        {
          return result;
        }

        v103 = 0;
        v104 = v11;
        while (1)
        {
          v106 = v100;
          v107 = *(v104 + 12);
          if (v107 > *v104)
          {
            v108 = *(v104 + 16);
            v109 = v103;
            do
            {
              v110 = v11 + v109;
              *(v110 + 12) = *(v11 + v109);
              *(v110 + 20) = *(v11 + v109 + 8);
              if (!v109)
              {
                v105 = v11;
                goto LABEL_122;
              }

              v109 -= 12;
            }

            while (v107 > *(v110 - 12));
            v105 = v11 + v109 + 12;
LABEL_122:
            *v105 = v107;
            *(v105 + 4) = v108;
            *(v105 + 8) = WORD2(v108);
          }

          v100 = v106 + 12;
          v103 += 12;
          v104 = v106;
          if ((v106 + 12) == a2)
          {
            return result;
          }
        }
      }

      if (!v102)
      {
        do
        {
          v147 = v100;
          v148 = *(v7 + 12);
          if (v148 > *v7)
          {
            v149 = *(v7 + 16);
            v150 = v147;
            do
            {
              v151 = v150;
              v152 = *(v150 - 12);
              v150 -= 12;
              *v151 = v152;
              *(v151 + 8) = *(v151 - 4);
            }

            while (v148 > *(v151 - 24));
            *v150 = v148;
            *(v150 + 4) = v149;
            *(v150 + 8) = WORD2(v149);
          }

          v100 = v147 + 12;
          v7 = v147;
        }

        while ((v147 + 12) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 == a2)
      {
        return result;
      }

      v111 = (v13 - 2) >> 1;
      v112 = v111;
      while (1)
      {
        if (v111 >= v112)
        {
          v113 = (2 * (v112 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
          v114 = (v11 + 12 * v113);
          if (2 * v112 + 2 >= v13)
          {
            v117 = (v11 + 12 * v112);
            v118 = *v117;
            if (*v114 <= *v117)
            {
              goto LABEL_142;
            }
          }

          else
          {
            v115 = v114[3];
            v116 = *v114 <= v115;
            if (*v114 < v115)
            {
              v115 = *v114;
            }

            if (!v116)
            {
              v114 += 3;
              v113 = 2 * v112 + 2;
            }

            v117 = (v11 + 12 * v112);
            v118 = *v117;
            if (v115 <= *v117)
            {
LABEL_142:
              v119 = *(v117 + 1);
              while (1)
              {
                v122 = v117;
                v117 = v114;
                v123 = *v114;
                *(v122 + 4) = *(v117 + 4);
                *v122 = v123;
                if (v111 < v113)
                {
                  break;
                }

                v124 = (2 * v113) | 1;
                v114 = (v11 + 12 * v124);
                v113 = 2 * v113 + 2;
                if (v113 < v13)
                {
                  v120 = *v114;
                  v121 = v114[3];
                  if (*v114 >= v121)
                  {
                    v120 = v114[3];
                  }

                  if (*v114 <= v121)
                  {
                    v113 = v124;
                  }

                  else
                  {
                    v114 += 3;
                  }

                  if (v120 > v118)
                  {
                    break;
                  }
                }

                else
                {
                  v113 = v124;
                  if (*v114 > v118)
                  {
                    break;
                  }
                }
              }

              *v117 = v118;
              v117[1] = v119;
              *(v117 + 4) = WORD2(v119);
            }
          }
        }

        v116 = v112-- <= 0;
        if (v116)
        {
          v125 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
          do
          {
            v126 = 0;
            v209 = *(v11 + 8);
            v183 = *v11;
            v127 = v11;
            do
            {
              v132 = v127 + 12 * v126;
              v130 = (v132 + 12);
              result = 2 * v126;
              v133 = (2 * v126) | 1;
              v126 = 2 * v126 + 2;
              if (v126 < v125)
              {
                v129 = *(v132 + 24);
                v128 = (v132 + 24);
                result = v129;
                if (*(v128 - 3) <= v129)
                {
                  v126 = v133;
                }

                else
                {
                  v130 = v128;
                }
              }

              else
              {
                v126 = v133;
              }

              v131 = *v130;
              *(v127 + 8) = *(v130 + 4);
              *v127 = v131;
              v127 = v130;
            }

            while (v126 <= ((v125 - 2) >> 1));
            a2 = (a2 - 12);
            if (v130 == a2)
            {
              *(v130 + 4) = v209;
              *v130 = v183;
            }

            else
            {
              v134 = *a2;
              *(v130 + 4) = *(a2 + 4);
              *v130 = v134;
              *(a2 + 4) = v209;
              *a2 = v183;
              v135 = v130 - v11 + 12;
              if (v135 >= 13)
              {
                v136 = (-2 - 0x5555555555555555 * (v135 >> 2)) >> 1;
                v137 = (v11 + 12 * v136);
                v138 = *v130;
                if (*v137 > *v130)
                {
                  v139 = *(v130 + 4);
                  do
                  {
                    v140 = v130;
                    v130 = v137;
                    v141 = *v137;
                    result = *(v130 + 4);
                    *(v140 + 4) = result;
                    *v140 = v141;
                    if (!v136)
                    {
                      break;
                    }

                    v136 = (v136 - 1) >> 1;
                    v137 = (v11 + 12 * v136);
                  }

                  while (*v137 > v138);
                  *v130 = v138;
                  *(v130 + 1) = v139;
                  *(v130 + 4) = WORD2(v139);
                }
              }
            }

            v116 = v125-- <= 2;
          }

          while (!v116);
          return result;
        }
      }
    }

    v14 = v13 >> 1;
    v15 = v11 + 12 * (v13 >> 1);
    v16 = *v8;
    if (v12 < 0x601)
    {
      v19 = *v11;
      if (*v11 > *v15)
      {
        if (v16 > v19)
        {
          v189 = *(v15 + 8);
          v163 = *v15;
          v20 = *v8;
          *(v15 + 8) = *(a2 - 2);
          *v15 = v20;
          goto LABEL_37;
        }

        v196 = *(v15 + 8);
        v170 = *v15;
        v41 = *v11;
        *(v15 + 8) = *(v11 + 8);
        *v15 = v41;
        *(v11 + 8) = v196;
        *v11 = v170;
        if (*v8 > *v11)
        {
          v189 = *(v11 + 8);
          v163 = *v11;
          v42 = *v8;
          *(v11 + 8) = *(a2 - 2);
          *v11 = v42;
LABEL_37:
          *(a2 - 2) = v189;
          *v8 = v163;
        }

LABEL_38:
        --a3;
        v25 = *v11;
        if (a4)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      if (v16 <= v19)
      {
        goto LABEL_38;
      }

      v192 = *(v11 + 8);
      v166 = *v11;
      v23 = *v8;
      *(v11 + 8) = *(a2 - 2);
      *v11 = v23;
      *(a2 - 2) = v192;
      *v8 = v166;
      if (*v11 <= *v15)
      {
        goto LABEL_38;
      }

      v193 = *(v15 + 8);
      v167 = *v15;
      v24 = *v11;
      *(v15 + 8) = *(v11 + 8);
      *v15 = v24;
      *(v11 + 8) = v193;
      *v11 = v167;
      --a3;
      v25 = v167;
      if (a4)
      {
        goto LABEL_61;
      }

LABEL_60:
      if (*(v11 - 12) > v25)
      {
        goto LABEL_61;
      }

      if (v25 <= *v8)
      {
        v81 = v11 + 12;
        do
        {
          v11 = v81;
          if (v81 >= a2)
          {
            break;
          }

          v81 += 12;
        }

        while (v25 <= *v11);
      }

      else
      {
        do
        {
          v80 = *(v11 + 12);
          v11 += 12;
        }

        while (v25 <= v80);
      }

      v82 = a2;
      if (v11 < a2)
      {
        v82 = a2;
        do
        {
          v83 = *(v82 - 12);
          v82 -= 12;
        }

        while (v25 > v83);
      }

      v84 = *(v7 + 4);
      while (v11 < v82)
      {
        v206 = *(v11 + 8);
        v180 = *v11;
        v85 = *v82;
        *(v11 + 8) = *(v82 + 8);
        *v11 = v85;
        *(v82 + 8) = v206;
        *v82 = v180;
        do
        {
          v86 = *(v11 + 12);
          v11 += 12;
        }

        while (v25 <= v86);
        do
        {
          v87 = *(v82 - 12);
          v82 -= 12;
        }

        while (v25 > v87);
      }

      if (v11 - 12 != v7)
      {
        v88 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v88;
      }

      a4 = 0;
      *(v11 - 12) = v25;
      *(v11 - 8) = v84;
      *(v11 - 4) = WORD2(v84);
    }

    else
    {
      v17 = *v15;
      if (*v15 <= *v11)
      {
        if (v16 > v17)
        {
          v190 = *(v15 + 8);
          v164 = *v15;
          v21 = *v8;
          *(v15 + 8) = *(a2 - 2);
          *v15 = v21;
          *(a2 - 2) = v190;
          *v8 = v164;
          if (*v15 > *v11)
          {
            v191 = *(v11 + 8);
            v165 = *v11;
            v22 = *v15;
            *(v11 + 8) = *(v15 + 8);
            *v11 = v22;
            *(v15 + 8) = v191;
            *v15 = v165;
          }
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v194 = *(v11 + 8);
          v168 = *v11;
          v26 = *v15;
          *(v11 + 8) = *(v15 + 8);
          *v11 = v26;
          *(v15 + 8) = v194;
          *v15 = v168;
          if (*v8 <= *v15)
          {
            goto LABEL_29;
          }

          v188 = *(v15 + 8);
          v162 = *v15;
          v27 = *v8;
          *(v15 + 8) = *(a2 - 2);
          *v15 = v27;
        }

        else
        {
          v188 = *(v11 + 8);
          v162 = *v11;
          v18 = *v8;
          *(v11 + 8) = *(a2 - 2);
          *v11 = v18;
        }

        *(a2 - 2) = v188;
        *v8 = v162;
      }

LABEL_29:
      v28 = (v11 + 12);
      v29 = v11 + 12 * v14;
      v32 = *(v29 - 12);
      v30 = v29 - 12;
      v31 = v32;
      v33 = *v9;
      if (v32 <= *(v11 + 12))
      {
        if (v33 > v31)
        {
          v195 = *(v30 + 8);
          v169 = *v30;
          v37 = *v9;
          *(v30 + 8) = *(a2 - 8);
          *v30 = v37;
          *(a2 - 8) = v195;
          *v9 = v169;
          if (*v30 > *v28)
          {
            v38 = *v28;
            v39 = *(v11 + 20);
            v40 = *(v30 + 8);
            *v28 = *v30;
            *(v11 + 20) = v40;
            *(v30 + 8) = v39;
            *v30 = v38;
          }
        }
      }

      else if (v33 <= v31)
      {
        v43 = *v28;
        v44 = *(v11 + 20);
        v45 = *(v30 + 8);
        *v28 = *v30;
        *(v11 + 20) = v45;
        *(v30 + 8) = v44;
        *v30 = v43;
        if (*v9 > v43)
        {
          v197 = *(v30 + 8);
          v171 = *v30;
          v46 = *v9;
          *(v30 + 8) = *(a2 - 8);
          *v30 = v46;
          *(a2 - 8) = v197;
          *v9 = v171;
        }
      }

      else
      {
        v34 = *v28;
        v35 = *(v11 + 20);
        v36 = *(a2 - 8);
        *v28 = *v9;
        *(v11 + 20) = v36;
        *(a2 - 8) = v35;
        *v9 = v34;
      }

      v47 = (v11 + 24);
      v48 = v11 + 12 * v14;
      v51 = *(v48 + 12);
      v49 = v48 + 12;
      v50 = v51;
      v52 = *v10;
      if (v51 <= *(v11 + 24))
      {
        if (v52 > v50)
        {
          v198 = *(v49 + 8);
          v172 = *v49;
          v56 = *v10;
          *(v49 + 8) = *(a2 - 14);
          *v49 = v56;
          *(a2 - 14) = v198;
          *v10 = v172;
          if (*v49 > *v47)
          {
            v57 = *v47;
            v58 = *(v11 + 32);
            v59 = *(v49 + 8);
            *v47 = *v49;
            *(v11 + 32) = v59;
            *(v49 + 8) = v58;
            *v49 = v57;
          }
        }
      }

      else if (v52 <= v50)
      {
        v60 = *v47;
        v61 = *(v11 + 32);
        v62 = *(v49 + 8);
        *v47 = *v49;
        *(v11 + 32) = v62;
        *(v49 + 8) = v61;
        *v49 = v60;
        if (*v10 > v60)
        {
          v199 = *(v49 + 8);
          v173 = *v49;
          v63 = *v10;
          *(v49 + 8) = *(a2 - 14);
          *v49 = v63;
          *(a2 - 14) = v199;
          *v10 = v173;
        }
      }

      else
      {
        v53 = *v47;
        v54 = *(v11 + 32);
        v55 = *(a2 - 14);
        *v47 = *v10;
        *(v11 + 32) = v55;
        *(a2 - 14) = v54;
        *v10 = v53;
      }

      v64 = *v15;
      v65 = *v49;
      if (*v15 <= *v30)
      {
        if (v65 > v64)
        {
          v201 = *(v15 + 8);
          v175 = *v15;
          *v15 = *v49;
          *(v15 + 8) = *(v49 + 8);
          *(v49 + 8) = v201;
          *v49 = v175;
          if (*v15 > *v30)
          {
            v202 = *(v30 + 8);
            v176 = *v30;
            *v30 = *v15;
            *(v30 + 8) = *(v15 + 8);
            *(v15 + 8) = v202;
            *v15 = v176;
          }
        }
      }

      else
      {
        if (v65 <= v64)
        {
          v203 = *(v30 + 8);
          v177 = *v30;
          *v30 = *v15;
          *(v30 + 8) = *(v15 + 8);
          *(v15 + 8) = v203;
          *v15 = v177;
          if (*v49 <= *v15)
          {
            goto LABEL_59;
          }

          v200 = *(v15 + 8);
          v174 = *v15;
          *v15 = *v49;
          *(v15 + 8) = *(v49 + 8);
        }

        else
        {
          v200 = *(v30 + 8);
          v174 = *v30;
          *v30 = *v49;
          *(v30 + 8) = *(v49 + 8);
        }

        *(v49 + 8) = v200;
        *v49 = v174;
      }

LABEL_59:
      v204 = *(v11 + 8);
      v178 = *v11;
      v66 = *v15;
      *(v11 + 8) = *(v15 + 8);
      *v11 = v66;
      *(v15 + 8) = v204;
      *v15 = v178;
      --a3;
      v25 = *v11;
      if ((a4 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_61:
      v67 = 0;
      v68 = *(v11 + 4);
      do
      {
        v69 = *(v11 + v67 + 12);
        v67 += 12;
      }

      while (v69 > v25);
      v70 = v11 + v67;
      v71 = a2;
      if (v67 == 12)
      {
        v71 = a2;
        do
        {
          if (v70 >= v71)
          {
            break;
          }

          v73 = *(v71 - 12);
          v71 -= 12;
        }

        while (v73 <= v25);
      }

      else
      {
        do
        {
          v72 = *(v71 - 12);
          v71 -= 12;
        }

        while (v72 <= v25);
      }

      v11 += v67;
      if (v70 < v71)
      {
        v74 = v71;
        do
        {
          v205 = *(v11 + 8);
          v179 = *v11;
          v75 = *v74;
          *(v11 + 8) = *(v74 + 8);
          *v11 = v75;
          *(v74 + 8) = v205;
          *v74 = v179;
          do
          {
            v76 = *(v11 + 12);
            v11 += 12;
          }

          while (v76 > v25);
          do
          {
            v77 = *(v74 - 12);
            v74 -= 12;
          }

          while (v77 <= v25);
        }

        while (v11 < v74);
      }

      if (v11 - 12 != v7)
      {
        v78 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v78;
      }

      *(v11 - 12) = v25;
      *(v11 - 8) = v68;
      *(v11 - 4) = WORD2(v68);
      if (v70 < v71)
      {
LABEL_80:
        result = sub_A597BC(v7, v11 - 12, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v79 = sub_A5A9A4(v7, (v11 - 12));
        result = sub_A5A9A4(v11, a2);
        if (result)
        {
          a2 = (v11 - 12);
          if (v79)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v79)
        {
          goto LABEL_80;
        }
      }
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      v91 = v11 + 12;
      v96 = *(v11 + 12);
      v97 = (v11 + 24);
      v98 = *(v11 + 24);
      if (v96 <= *v11)
      {
        if (v98 > v96)
        {
          v145 = *(v11 + 20);
          v146 = *v91;
          *v91 = *v97;
          *(v11 + 20) = *(v11 + 32);
          *v97 = v146;
          *(v11 + 32) = v145;
          if (*(v11 + 12) > *v11)
          {
            v210 = *(v11 + 8);
            v184 = *v11;
            *v11 = *v91;
            *(v11 + 8) = *(v11 + 20);
            *v91 = v184;
            *(v11 + 20) = v210;
          }
        }
      }

      else
      {
        if (v98 > v96)
        {
          v208 = *(v11 + 8);
          v182 = *v11;
          *v11 = *v97;
          *(v11 + 8) = *(v11 + 32);
          *v97 = v182;
          LOWORD(v99) = v208;
          goto LABEL_186;
        }

        v212 = *(v11 + 8);
        v186 = *v11;
        *v11 = *v91;
        *(v11 + 8) = *(v11 + 20);
        *v91 = v186;
        *(v11 + 20) = v212;
        if (v98 > *(v11 + 12))
        {
          v99 = *(v11 + 20);
          v156 = *v91;
          *v91 = *v97;
          *(v11 + 20) = *(v11 + 32);
          *v97 = v156;
LABEL_186:
          *(v11 + 32) = v99;
        }
      }

      if (*v8 <= *v97)
      {
        return result;
      }

      v157 = *v97;
      v158 = *(v11 + 32);
      v159 = *(a2 - 2);
      *v97 = *v8;
      *(v11 + 32) = v159;
      *(a2 - 2) = v158;
      *v8 = v157;
      if (*v97 <= *v91)
      {
        return result;
      }

      v160 = *(v11 + 20);
      v161 = *v91;
      *v91 = *v97;
      *(v11 + 20) = *(v11 + 32);
      *v97 = v161;
      *(v11 + 32) = v160;
LABEL_190:
      if (*(v11 + 12) > *v11)
      {
        v213 = *(v11 + 8);
        v187 = *v11;
        *v11 = *v91;
        *(v11 + 8) = *(v91 + 8);
        *v91 = v187;
        *(v91 + 8) = v213;
      }

      return result;
    }

    if (v13 == 5)
    {

      return sub_A5A764(v11, (v11 + 12), (v11 + 24), (v11 + 36), (a2 - 12));
    }

    goto LABEL_10;
  }

  v91 = v11 + 12;
  v92 = *(v11 + 12);
  v94 = *(a2 - 3);
  v89 = (a2 - 12);
  v93 = v94;
  if (v92 <= *v11)
  {
    if (v93 <= v92)
    {
      return result;
    }

    v142 = *v91;
    v143 = *(v11 + 20);
    v144 = *(v89 + 4);
    *v91 = *v89;
    *(v11 + 20) = v144;
    *(v89 + 4) = v143;
    *v89 = v142;
    goto LABEL_190;
  }

  if (v93 > v92)
  {
    goto LABEL_108;
  }

  v211 = *(v11 + 8);
  v185 = *v11;
  *v11 = *v91;
  *(v11 + 8) = *(v11 + 20);
  *v91 = v185;
  *(v11 + 20) = v211;
  if (*v89 > *(v11 + 12))
  {
    v153 = *v91;
    v154 = *(v11 + 20);
    v155 = *(v89 + 4);
    *v91 = *v89;
    *(v11 + 20) = v155;
    *(v89 + 4) = v154;
    *v89 = v153;
  }

  return result;
}

uint64_t *sub_A5A764(uint64_t *result, _DWORD *a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 <= *result)
  {
    if (v6 > v5)
    {
      v10 = a2[2];
      v11 = *a2;
      v12 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v12;
      *a3 = v11;
      *(a3 + 4) = v10;
      if (*a2 > *result)
      {
        v13 = *(result + 2);
        v14 = *result;
        v15 = *(a2 + 4);
        *result = *a2;
        *(result + 4) = v15;
        *a2 = v14;
        *(a2 + 4) = v13;
      }
    }
  }

  else
  {
    if (v6 > v5)
    {
      v7 = *(result + 2);
      v8 = *result;
      v9 = *(a3 + 4);
      *result = *a3;
      *(result + 4) = v9;
LABEL_9:
      *a3 = v8;
      *(a3 + 4) = v7;
      goto LABEL_10;
    }

    v16 = *(result + 2);
    v17 = *result;
    v18 = *(a2 + 4);
    *result = *a2;
    *(result + 4) = v18;
    *a2 = v17;
    *(a2 + 4) = v16;
    if (*a3 > v17)
    {
      v7 = a2[2];
      v8 = *a2;
      v19 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v19;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 > *a3)
  {
    v20 = a3[2];
    v21 = *a3;
    v22 = *(a4 + 4);
    *a3 = *a4;
    *(a3 + 4) = v22;
    *a4 = v21;
    *(a4 + 4) = v20;
    if (*a3 > *a2)
    {
      v23 = a2[2];
      v24 = *a2;
      v25 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v25;
      *a3 = v24;
      *(a3 + 4) = v23;
      if (*a2 > *result)
      {
        v26 = *(result + 2);
        v27 = *result;
        v28 = *(a2 + 4);
        *result = *a2;
        *(result + 4) = v28;
        *a2 = v27;
        *(a2 + 4) = v26;
      }
    }
  }

  if (*a5 > *a4)
  {
    v29 = *(a4 + 2);
    v30 = *a4;
    v31 = *(a5 + 4);
    *a4 = *a5;
    *(a4 + 4) = v31;
    *a5 = v30;
    *(a5 + 4) = v29;
    if (*a4 > *a3)
    {
      v32 = a3[2];
      v33 = *a3;
      v34 = *(a4 + 4);
      *a3 = *a4;
      *(a3 + 4) = v34;
      *a4 = v33;
      *(a4 + 4) = v32;
      if (*a3 > *a2)
      {
        v35 = a2[2];
        v36 = *a2;
        v37 = *(a3 + 4);
        *a2 = *a3;
        *(a2 + 4) = v37;
        *a3 = v36;
        *(a3 + 4) = v35;
        if (*a2 > *result)
        {
          v38 = *(result + 2);
          v39 = *result;
          v40 = *(a2 + 4);
          *result = *a2;
          *(result + 4) = v40;
          *a2 = v39;
          *(a2 + 4) = v38;
        }
      }
    }
  }

  return result;
}

BOOL sub_A5A9A4(int *a1, char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1 + 3;
      v7 = a1[3];
      v9 = *(a2 - 3);
      v3 = a2 - 12;
      v8 = v9;
      if (v7 > *a1)
      {
        if (v8 <= v7)
        {
          v38 = a1[2];
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 4) = *(a1 + 10);
          *v6 = v39;
          *(a1 + 10) = v38;
          if (*v3 > a1[3])
          {
            v40 = a1[5];
            v41 = *v6;
            v42 = *(v3 + 4);
            *v6 = *v3;
            *(a1 + 10) = v42;
            *v3 = v41;
            *(v3 + 4) = v40;
            return 1;
          }

          return 1;
        }

        goto LABEL_12;
      }

      if (v8 <= v7)
      {
        return 1;
      }

      v27 = a1[5];
      v28 = *v6;
      v29 = *(v3 + 4);
      *v6 = *v3;
      *(a1 + 10) = v29;
      *v3 = v28;
      *(v3 + 4) = v27;
LABEL_48:
      if (a1[3] > *a1)
      {
        v62 = a1[2];
        v63 = *a1;
        *a1 = *v6;
        *(a1 + 4) = *(v6 + 4);
        *v6 = v63;
        *(v6 + 4) = v62;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_A5A764(a1, a1 + 3, a1 + 6, (a1 + 9), (a2 - 12));
        return 1;
      }

      goto LABEL_13;
    }

    v6 = a1 + 3;
    v20 = a1[3];
    v21 = a1 + 6;
    v22 = a1[6];
    v23 = (a2 - 12);
    v24 = *a1;
    if (v20 <= *a1)
    {
      if (v22 > v20)
      {
        v34 = a1[5];
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 10) = *(a1 + 16);
        *v21 = v35;
        *(a1 + 16) = v34;
        if (*v6 > v24)
        {
          v36 = a1[2];
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 4) = *(a1 + 10);
          *v6 = v37;
          *(a1 + 10) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 <= v20)
    {
      v55 = a1[2];
      v56 = *a1;
      *a1 = *v6;
      *(a1 + 4) = *(a1 + 10);
      *v6 = v56;
      *(a1 + 10) = v55;
      if (v22 <= a1[3])
      {
        goto LABEL_45;
      }

      v25 = a1[5];
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 10) = *(a1 + 16);
    }

    else
    {
      v25 = a1[2];
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 4) = *(a1 + 16);
    }

    *v21 = v26;
    *(a1 + 16) = v25;
LABEL_45:
    if (*v23 <= *v21)
    {
      return 1;
    }

    v57 = a1[8];
    v58 = *v21;
    v59 = *(a2 - 2);
    *v21 = *v23;
    *(a1 + 16) = v59;
    *v23 = v58;
    *(a2 - 2) = v57;
    if (*v21 <= *v6)
    {
      return 1;
    }

    v60 = a1[5];
    v61 = *v6;
    *v6 = *v21;
    *(a1 + 10) = *(a1 + 16);
    *v21 = v61;
    *(a1 + 16) = v60;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v4 = *(a2 - 3);
    v3 = a2 - 12;
    if (v4 <= *a1)
    {
      return 1;
    }

LABEL_12:
    v10 = a1[2];
    v11 = *a1;
    v12 = *(v3 + 4);
    *a1 = *v3;
    *(a1 + 4) = v12;
    *v3 = v11;
    *(v3 + 4) = v10;
    return 1;
  }

LABEL_13:
  v13 = a1 + 6;
  v14 = a1[6];
  v15 = a1 + 3;
  v16 = a1[3];
  v17 = *a1;
  if (v16 <= *a1)
  {
    if (v14 > v16)
    {
      v30 = a1[5];
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 10) = *(a1 + 16);
      *v13 = v31;
      *(a1 + 16) = v30;
      if (*v15 > v17)
      {
        v32 = a1[2];
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 4) = *(a1 + 10);
        *v15 = v33;
        *(a1 + 10) = v32;
      }
    }
  }

  else if (v14 <= v16)
  {
    v43 = a1[2];
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 4) = *(a1 + 10);
    *v15 = v44;
    *(a1 + 10) = v43;
    if (v14 > a1[3])
    {
      v45 = a1[5];
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 10) = *(a1 + 16);
      *v13 = v46;
      *(a1 + 16) = v45;
    }
  }

  else
  {
    v18 = a1[2];
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 4) = *(a1 + 16);
    *v13 = v19;
    *(a1 + 16) = v18;
  }

  v47 = (a1 + 9);
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 > *v13)
    {
      break;
    }

LABEL_40:
    v13 = v47;
    v48 += 12;
    v47 = (v47 + 12);
    if (v47 == a2)
    {
      return 1;
    }
  }

  v51 = *(v47 + 4);
  v52 = v48;
  do
  {
    v53 = a1 + v52;
    *(v53 + 36) = *(a1 + v52 + 24);
    *(v53 + 22) = *(a1 + v52 + 32);
    if (v52 == -24)
    {
      *a1 = v50;
      a1[1] = v51;
      *(a1 + 4) = WORD2(v51);
      if (++v49 != 8)
      {
        goto LABEL_40;
      }

      return v47 + 12 == a2;
    }

    v52 -= 12;
  }

  while (v50 > *(v53 + 3));
  v54 = a1 + v52;
  *(v54 + 9) = v50;
  *(v54 + 10) = v51;
  *(v54 + 22) = WORD2(v51);
  if (++v49 != 8)
  {
    goto LABEL_40;
  }

  return v47 + 12 == a2;
}

void *sub_A5AE5C(void **a1, __int128 *a2)
{
  v2 = 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_1794();
  }

  if (0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((a1[2] - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v5 = 0x11A7B9611A7B961;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x11A7B9611A7B961)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  sub_A31084(v11, a2);
  v6 = (232 * v2 + 232);
  v7 = a1[1];
  v8 = (v11 + *a1 - v7);
  sub_A5B004(a1, *a1, v7, v8);
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

void sub_A5AF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A5AFB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A5AFB0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 232;
    sub_A30978((i - 232));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A5B004(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = *(v6 + 1);
      *(a4 + 30) = *(v6 + 30);
      *a4 = v7;
      *(a4 + 16) = v8;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = 0;
      *(a4 + 48) = *(v6 + 3);
      *(a4 + 64) = v6[8];
      v6[6] = 0;
      v6[7] = 0;
      v6[8] = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v6 + 9);
      *(a4 + 88) = v6[11];
      v6[9] = 0;
      v6[10] = 0;
      v6[11] = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v6 + 6);
      *(a4 + 112) = v6[14];
      v6[12] = 0;
      v6[13] = 0;
      v6[14] = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = *(v6 + 15);
      *(a4 + 136) = v6[17];
      v6[15] = 0;
      v6[16] = 0;
      v6[17] = 0;
      v9 = *(v6 + 9);
      *(a4 + 157) = *(v6 + 157);
      *(a4 + 144) = v9;
      *(a4 + 176) = 0;
      *(a4 + 184) = 0;
      *(a4 + 168) = 0;
      *(a4 + 168) = *(v6 + 21);
      *(a4 + 184) = v6[23];
      v6[22] = 0;
      v6[23] = 0;
      v6[21] = 0;
      *(a4 + 192) = *(v6 + 12);
      *(a4 + 216) = 0;
      *(a4 + 224) = 0;
      *(a4 + 208) = 0;
      *(a4 + 208) = *(v6 + 13);
      *(a4 + 224) = v6[28];
      v6[26] = 0;
      v6[27] = 0;
      v6[28] = 0;
      v6 += 29;
      a4 += 232;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_A30978(v5) + 29;
    }
  }
}

uint64_t sub_A5B144(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0x193D4BB7E327A977 * (v4 >> 4) + 1;
  if (v5 > 0x39B0AD12073615)
  {
    sub_1794();
  }

  if (0x327A976FC64F52EELL * ((*(a1 + 16) - v2) >> 4) > v5)
  {
    v5 = 0x327A976FC64F52EELL * ((*(a1 + 16) - v2) >> 4);
  }

  if ((0x193D4BB7E327A977 * ((*(a1 + 16) - v2) >> 4)) >= 0x1CD85689039B0ALL)
  {
    v7 = 0x39B0AD12073615;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x39B0AD12073615)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 16 * (v4 >> 4);
  *v8 = *a2;
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 1128) = 4;
  v9 = v8 - v4;
  if (v2 != v3)
  {
    v14 = v8 - v4;
    v10 = v2;
    do
    {
      *v9 = 0;
      *(v9 + 1128) = -1;
      v11 = v10[282];
      if (v11 != -1)
      {
        v15 = v9;
        (off_26707E8[v11])(&v15, v10);
        *(v9 + 1128) = v11;
      }

      v10 += 284;
      v9 += 1136;
    }

    while (v10 != v3);
    do
    {
      v12 = v2[282];
      if (v12 != -1)
      {
        (off_26707C0[v12])(&v16, v2);
      }

      v2[282] = -1;
      v2 += 284;
    }

    while (v2 != v3);
    v2 = *a1;
    v9 = v14;
  }

  *a1 = v9;
  *(a1 + 8) = v8 + 1136;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v8 + 1136;
}

uint64_t sub_A5B338(void *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 144 * v2;
  v13 = 0;
  sub_A316EC(144 * v2, a2);
  v12 = 144 * v2 + 144;
  sub_A5609C(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 144;
    sub_9FFEB4((i - 144));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_A5B488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A561F8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A5B49C(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_1794();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 5 > v3)
  {
    v3 = v5 >> 5;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFC0)
  {
    v6 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 0;
  v14 = (v2 << 6);
  sub_A314BC((v2 << 6), a2);
  v15 = ((v2 << 6) + 64);
  v7 = *(a1 + 8);
  v8 = (v2 << 6) + *a1 - v7;
  sub_A5650C(a1, *a1, v7, (v14 + *a1 - v7));
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_A56398(&v13);
  return v12;
}

void sub_A5B5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_A56398(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A5B5C8(uint64_t a1, __int128 *a2)
{
  v2 = 0x34F72C234F72C235 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_1794();
  }

  if (0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((*(a1 + 16) - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v5 = 0x11A7B9611A7B961;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x11A7B9611A7B961)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((*(a1 + 8) - *a1) >> 3);
  sub_A31084(v11, a2);
  v6 = 232 * v2 + 232;
  v7 = *(a1 + 8);
  v8 = v11 + *a1 - v7;
  sub_A5B004(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_A5B708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A5AFB0(va);
  _Unwind_Resume(a1);
}

double sub_A5B71C(unint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  v6 = 0xEEEEEEEEEEEEEEEFLL * (v5 >> 4);
  v7 = v6 + 1;
  if (v6 + 1 > 0x111111111111111)
  {
    sub_1794();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - v3) >> 4) > v7)
  {
    v7 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - v3) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - v3) >> 4) >= 0x88888888888888)
  {
    v9 = 0x111111111111111;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (v9 <= 0x111111111111111)
    {
      operator new();
    }

    sub_1808();
  }

  v14 = 16 * (v5 >> 4);
  *v14 = *a2;
  *(v14 + 8) = 0x8000000080000000;
  *(v14 + 16) = 0;
  *(v14 + 20) = 0x8000000080000000;
  *(v14 + 28) = 0;
  *(v14 + 32) = 0x8000000080000000;
  *(v14 + 40) = 0;
  *(v14 + 44) = 0x8000000080000000;
  *(v14 + 52) = 0;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0u;
  *(v14 + 120) = 0u;
  *(v14 + 136) = 0u;
  *(v14 + 152) = 0;
  *(v14 + 156) = -1;
  *(v14 + 160) = 0;
  *(v14 + 164) = 0;
  *(v14 + 172) = 0;
  *(v14 + 184) = 0;
  *(v14 + 192) = 0;
  *(v14 + 176) = 0;
  *(v14 + 200) = 0;
  *(v14 + 208) = 0x3FF0000000000000;
  *(v14 + 216) = 0;
  *(v14 + 224) = 0;
  *(v14 + 232) = 0;
  v10 = v14 - v5;
  sub_A5B91C(a1, v3, v4, v14 - v5);
  v11 = *a1;
  *a1 = v10;
  v12 = 240 * v6 + 240;
  *(a1 + 1) = v12;
  if (v11)
  {
    operator delete(v11);
    *&v12 = 240 * v6 + 240;
  }

  return *&v12;
}

void sub_A5B8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_A5B8C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A5B8C4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 240;
    sub_A30978((i - 232));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_A5B91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      v8 = *(v6 + 24);
      *(a4 + 38) = *(v6 + 38);
      *(a4 + 24) = v8;
      *(a4 + 8) = v7;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = 0;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 72) = *(v6 + 72);
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 104) = *(v6 + 104);
      *(a4 + 120) = *(v6 + 120);
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *(v6 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 128) = *(v6 + 128);
      *(a4 + 144) = *(v6 + 144);
      *(v6 + 128) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      v9 = *(v6 + 152);
      *(a4 + 165) = *(v6 + 165);
      *(a4 + 152) = v9;
      *(a4 + 184) = 0;
      *(a4 + 192) = 0;
      *(a4 + 176) = 0;
      *(a4 + 176) = *(v6 + 176);
      *(a4 + 192) = *(v6 + 192);
      *(v6 + 184) = 0;
      *(v6 + 192) = 0;
      *(v6 + 176) = 0;
      *(a4 + 200) = *(v6 + 200);
      *(a4 + 224) = 0;
      *(a4 + 232) = 0;
      *(a4 + 216) = 0;
      *(a4 + 216) = *(v6 + 216);
      *(a4 + 232) = *(v6 + 232);
      *(v6 + 216) = 0;
      *(v6 + 224) = 0;
      *(v6 + 232) = 0;
      v6 += 240;
      a4 += 240;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      result = sub_A30978((v5 + 8));
      v5 += 240;
    }
  }

  return result;
}

_DWORD *sub_A5BA70(uint64_t *a1, __int128 *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    sub_1794();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 4) >= 0x88888888888888)
  {
    v5 = 0x111111111111111;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x111111111111111)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = (16 * ((a1[1] - *a1) >> 4));
  *v11 = 0;
  sub_A31084(240 * v2 + 8, a2);
  v6 = 240 * v2 + 240;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_A5B91C(a1, *a1, v7, v8);
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

void sub_A5BB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A5B8C4(va);
  _Unwind_Resume(a1);
}

char **sub_A5BBB0(char **a1)
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

        v6 = v3 - 56;
        v7 = *(v3 - 7);
        if (v7)
        {
          *(v3 - 6) = v7;
          operator delete(v7);
        }

        v3 -= 56;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_A5BC38(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

int *sub_A5BC7C(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  *a1 = -1;
  v6 = sub_A56F04((a2 + 4136), *(a3 + 28), *(a3 + 48), *(a3 + 36));
  v8 = v7;
  v9 = sub_A56F04((a2 + 4136), *(a3 + 28), *(a3 + 52), *(a3 + 36));
  v11 = v10;
  v12 = *(a3 + 48);
  v13 = sub_A57920((a2 + 4136), *(a3 + 28));
  v14 = (v13 - *v13);
  if (*v14 >= 9u && (v15 = v14[4]) != 0)
  {
    v16 = *(sub_A571D4((v13 + v15 + *(v13 + v15)), v12) + 6);
    if (v6 != v9 || v8 != v11)
    {
LABEL_15:
      result = sub_3A25A8(*(a2 + 4184) + 24, __ROR8__(v6, 32), 0, "trip");
      v26 = (result - *result);
      if (*v26 >= 9u && (v27 = v26[4]) != 0)
      {
        v28 = *(result + v27) - 1;
      }

      else
      {
        v28 = -1;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v16 = *(sub_A571D4(0, v12) + 6);
    if (v6 != v9 || v8 != v11)
    {
      goto LABEL_15;
    }
  }

  v18 = *(a3 + 28);
  v19 = *(a3 + 48);
  v20 = sub_A57920((a2 + 4136), v18);
  v21 = (v20 - *v20);
  if (*v21 >= 9u && (v22 = v21[4]) != 0)
  {
    v23 = (v20 + v22 + *(v20 + v22));
  }

  else
  {
    v23 = 0;
  }

  result = sub_A571D4(v23, v19);
  v28 = *(result + 6);
LABEL_21:
  *a1 = v6;
  a1[2] = v8;
  a1[3] = v16;
  a1[4] = v28;
  return result;
}

uint64_t *sub_A5BE18(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 < 0x39B0AD12073616)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_A5BF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A551C8(va);
  _Unwind_Resume(a1);
}

void sub_A5BF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void **);
  v9 = va_arg(va1, void);
  sub_93C19C(v5);
  sub_A54910(va1);
  *(v3 + 8) = v4;
  sub_A551C8(va);
  _Unwind_Resume(a1);
}

unint64_t sub_A5BF80(unint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x222222222222222)
  {
    sub_1794();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v4 = 0x222222222222222;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x222222222222222)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 8 * ((a1[1] - *a1) >> 3);
  *v5 = *a2;
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v5 + 48) = *(a2 + 48);
  *(v5 + 56) = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  *(v5 + 88) = *(a2 + 88);
  *(v5 + 72) = v6;
  *(v5 + 80) = v7;
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v8 = v5 + 120;
  v9 = *a1;
  v10 = a1[1];
  v11 = v5 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v5 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 4);
      *v13 = v14;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 24) = *(v12 + 3);
      *(v13 + 40) = v12[5];
      v12[4] = 0;
      v12[5] = 0;
      v12[3] = 0;
      *(v13 + 48) = *(v12 + 12);
      *(v13 + 64) = 0;
      *(v13 + 72) = 0;
      *(v13 + 56) = *(v12 + 7);
      *(v13 + 72) = v12[9];
      v12[7] = 0;
      v12[8] = 0;
      v12[9] = 0;
      v15 = v12[10];
      *(v13 + 88) = *(v12 + 22);
      *(v13 + 80) = v15;
      *(v13 + 104) = 0;
      *(v13 + 112) = 0;
      *(v13 + 96) = *(v12 + 6);
      *(v13 + 112) = v12[14];
      v12[12] = 0;
      v12[13] = 0;
      v12[14] = 0;
      v12 += 15;
      v13 += 120;
    }

    while (v12 != v10);
    do
    {
      v9 = sub_93C358(v9) + 15;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void **sub_A5C188(void ***a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 38) = *(a2 + 38);
  v7 = (48 * v2 + 48);
  v8 = *a1;
  v9 = a1[1];
  v10 = (v6 + *a1 - v9);
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = (v6 + *a1 - v9);
    do
    {
      *v12 = *v11;
      *(v12 + 2) = *(v11 + 2);
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      v13 = *(v11 + 24);
      *(v12 + 38) = *(v11 + 38);
      *(v12 + 24) = v13;
      v11 += 48;
      v12 += 48;
    }

    while (v11 != v9);
    do
    {
      v14 = *v8;
      if (*v8)
      {
        *(v8 + 1) = v14;
        operator delete(v14);
      }

      v8 += 48;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

unint64_t sub_A5C314(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5));
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

  return *a1 + 160 * a2;
}

void sub_A5C450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_A5C530(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  v18 = a1;
  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 56 * v2;
  __p = 0;
  v15 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v16 = 56 * v2 + 56;
  v17 = 0;
  sub_A5C6D0(a1, &__p);
  v7 = a1[1];
  v8 = v15;
  while (1)
  {
    v9 = v16;
    if (v16 == v8)
    {
      break;
    }

    v10 = (v16 - 56);
    v16 -= 56;
    v11 = *(v9 - 24);
    if (v11)
    {
      *(v9 - 16) = v11;
      operator delete(v11);
    }

    v12 = *v10;
    if (*v10)
    {
      *(v9 - 48) = v12;
      operator delete(v12);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_A5C6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A5C7E8(va);
  _Unwind_Resume(a1);
}

void sub_A5C6D0(uint64_t *a1, void *a2)
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
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v8 + 32) = *(v7 + 32);
      *(v8 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      v7 += 56;
      v8 += 56;
    }

    while (v7 != v4);
    do
    {
      v9 = *(v5 + 32);
      if (v9)
      {
        *(v5 + 40) = v9;
        operator delete(v9);
      }

      v10 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v10;
        operator delete(v10);
      }

      v5 += 56;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  a1[1] = v11;
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_A5C7E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 56);
    *(a1 + 16) = i - 56;
    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }

    v6 = *v4;
    if (*v4)
    {
      *(i - 48) = v6;
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_A5C860(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v24 = a1;
  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  __p = 0;
  v21 = v7;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 24) = *(a2 + 24);
  v22 = 32 * v2 + 32;
  v23 = 0;
  sub_A5CA04(a1, &__p);
  v8 = a1[1];
  v9 = v21;
  v10 = v22;
  if (v22 != v21)
  {
    v11 = v22;
    do
    {
      v14 = *(v11 - 4);
      v11 -= 4;
      v13 = v14;
      v22 = v11;
      if (v14)
      {
        v15 = *(v10 - 24);
        v12 = v13;
        if (v15 != v13)
        {
          do
          {
            v16 = *(v15 - 3);
            if (v16)
            {
              *(v15 - 2) = v16;
              operator delete(v16);
            }

            v17 = v15 - 56;
            v18 = *(v15 - 7);
            if (v18)
            {
              *(v15 - 6) = v18;
              operator delete(v18);
            }

            v15 -= 56;
          }

          while (v17 != v13);
          v12 = *v11;
        }

        *(v10 - 24) = v13;
        operator delete(v12);
        v11 = v22;
      }

      v10 = v11;
    }

    while (v11 != v9);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_A5C9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A5CB3C(va);
  _Unwind_Resume(a1);
}

void sub_A5CA04(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
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
      *(v8 + 16) = v7[2];
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      *(v8 + 24) = *(v7 + 24);
      v7 += 4;
      v8 += 32;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5;
      if (*v5)
      {
        v11 = v5[1];
        v9 = *v5;
        if (v11 != v10)
        {
          do
          {
            v12 = *(v11 - 3);
            if (v12)
            {
              *(v11 - 2) = v12;
              operator delete(v12);
            }

            v13 = v11 - 56;
            v14 = *(v11 - 7);
            if (v14)
            {
              *(v11 - 6) = v14;
              operator delete(v14);
            }

            v11 -= 56;
          }

          while (v13 != v10);
          v9 = *v5;
        }

        v5[1] = v10;
        operator delete(v9);
      }

      v5 += 4;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v15 = *a1;
  *a1 = v6;
  *(a1 + 8) = v15;
  a2[1] = v15;
  v16 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v16;
  v17 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
}

void **sub_A5CB3C(void **a1)
{
  sub_A5CB70(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A5CB70(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v1)
  {
    v4 = *(a1 + 16);
    do
    {
      v7 = *(v4 - 4);
      v4 -= 4;
      v6 = v7;
      *(a1 + 16) = v4;
      if (v7)
      {
        v8 = *(v2 - 3);
        v5 = v6;
        if (v8 != v6)
        {
          do
          {
            v9 = *(v8 - 3);
            if (v9)
            {
              *(v8 - 2) = v9;
              operator delete(v9);
            }

            v10 = v8 - 56;
            v11 = *(v8 - 7);
            if (v11)
            {
              *(v8 - 6) = v11;
              operator delete(v11);
            }

            v8 -= 56;
          }

          while (v10 != v6);
          v5 = *v4;
        }

        *(v2 - 3) = v6;
        operator delete(v5);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v1);
  }
}

void sub_A5CCE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A5CCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 16);
  sub_C9E53C(v8 + 3896, *(a2 + 144));
  v9 = sub_3B0454(*(a1 + 8));
  sub_64AEEC((v8 + 3896), v9);
  v10 = *(a2 + 120);
  v11 = *(a2 + 128);
  while (v10 != v11)
  {
    v12 = *v10++;
    sub_C9E568(v8 + 3896, v12, 1);
  }

  if (*a1)
  {
    result = sub_A89068(*(a1 + 16), *(a2 + 104));
  }

  else
  {
    result = 0;
  }

  *(a4 + 32) = *a2;
  *(a4 + 40) = *(a2 + 8);
  if (result < 0)
  {
    v14 = -5;
  }

  else
  {
    v14 = 5;
  }

  *(a4 + 4) = vadd_s32(vdup_n_s32(result / 10 + (((103 * (v14 + result % 10)) >> 15) & 1) + ((103 * (v14 + result % 10)) >> 10)), *(a2 + 104));
  *a4 = *(a2 + 48) != 0;
  *(a4 + 24) = *(a2 + 112);
  *(a4 + 12) = result;
  *(a4 + 16) = a3;
  if (result)
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&v16);
      sub_4A5C(&v16, "Shifted transit journey planner request time from ", 50);
      sub_35CC(&__dst, *(a2 + 104));
      operator new();
    }
  }

  return result;
}

void sub_A5D1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, char a55)
{
  if (a45 < 0)
  {
    operator delete(__p);
    sub_1959728(&a55);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a55);
  _Unwind_Resume(a1);
}

uint64_t sub_A5D2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  sub_C9E53C(v6 + 3896, *(a2 + 52));
  v7 = sub_3B0454(*(a1 + 8));
  sub_64AEEC((v6 + 3896), v7);
  if (*a1 == 1)
  {
    result = sub_A89068(*(a1 + 16), *(a2 + 48));
  }

  else
  {
    result = 0;
  }

  *(a3 + 12) = 0x7FFFFFFF7FFFFFFFLL;
  *(a3 + 32) = *a2;
  *(a3 + 40) = *(a2 + 8);
  if (result < 0)
  {
    v9 = -5;
  }

  else
  {
    v9 = 5;
  }

  v10 = result / 10 + *(a2 + 48) + (((103 * (v9 + result % 10)) >> 15) & 1) + ((103 * (v9 + result % 10)) >> 10);
  *(a3 + 4) = v10;
  *(a3 + 8) = v10;
  *a3 = 0;
  *(a3 + 24) = 0;
  if (result)
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&v12);
      sub_4A5C(&v12, "Shifted transit journey updater current time from ", 50);
      sub_35CC(&__dst, *(a2 + 48));
      operator new();
    }
  }

  return result;
}

void sub_A5D780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53)
{
  if (a43 < 0)
  {
    operator delete(__p);
    sub_1959728(&a53);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a53);
  _Unwind_Resume(a1);
}

void sub_A5D870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = v8;
  v34[0] = v8;
  v34[1] = v10;
  v12 = *v8;
  v11 = v8[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = 0;
  v34[2] = v12;
  v34[3] = v11;
  do
  {
    v14 = &v34[v13];
    *(v14 + 8) = 0;
    *(v14 + 14) = 0;
    v14[5] = 0;
    v14[8] = 0;
    v13 += 6;
  }

  while (v13 != 480);
  v35 = 0u;
  v15 = *v8;
  v16 = v9[1];
  v36 = *v9;
  v37 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    v15 = *v9;
  }

  if (v15)
  {
    v17 = sub_2D5658(v15);
    v18 = *v9;
    v19 = v9[1];
    v38 = v17;
    if (!v19)
    {
LABEL_10:
      v20 = 0;
      v39 = v18;
      v40 = v19;
      do
      {
        v21 = &v34[v20];
        *(v21 + 982) = 0;
        *(v21 + 988) = 0;
        v21[492] = 0;
        v21[495] = 0;
        v20 += 6;
      }

      while (v20 != 480);
      v41 = 0u;
      v22 = *v9;
      v23 = v9[1];
      v42 = *v9;
      v43 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        v22 = *v9;
      }

      if (v22)
      {
        v24 = sub_2D5658(v22);
        v25 = *v9;
        v26 = v9[1];
        v44 = v24;
        if (!v26)
        {
LABEL_17:
          v45 = v25;
          v46 = v26;
          v27 = 0x1FFFFFFFFFFFFE20;
          do
          {
            v28 = &v34[v27];
            *(v28 + 2916) = 0;
            *(v28 + 2922) = 0;
            v28[1459] = 0;
            v28[1462] = 0;
            v27 += 6;
          }

          while (v27 * 8);
          v47 = 0u;
          v29 = *v9;
          v30 = v9[1];
          v48 = *v9;
          v49 = v30;
          if (v30)
          {
            atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
            v29 = *v9;
          }

          if (v29)
          {
            LOBYTE(v29) = sub_2D5658(v29);
            v31 = *v9;
          }

          else
          {
            v31 = 0;
          }

          v50 = v29;
          v32 = v9[1];
          v55 = v31;
          v56 = v32;
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_3603F0(v51, &v55);
          v33 = v56;
          if (v56)
          {
            if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v33->__on_zero_shared)(v33);
              std::__shared_weak_count::__release_weak(v33);
            }
          }

          v51[1956] = 11;
          sub_123316C(0xBu);
          v52 = 0;
          v53 = 0;
          v54 = 0;
          operator new();
        }
      }

      else
      {
        v25 = 0;
        v44 = 0;
        v26 = v9[1];
        if (!v26)
        {
          goto LABEL_17;
        }
      }

      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      goto LABEL_17;
    }
  }

  else
  {
    v18 = 0;
    v38 = 0;
    v19 = v9[1];
    if (!v19)
    {
      goto LABEL_10;
    }
  }

  atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  goto LABEL_10;
}

void sub_A5FD6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A6050C(uint64_t a1)
{
  v2 = *(a1 + 20240);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        do
        {
          v6 = *v4;
          v7 = *(v4 + 12);
          if (v7 != -1)
          {
            (off_2670920[v7])(&v139, v4 + 5);
          }

          *(v4 + 12) = -1;
          if (*(v4 + 39) < 0)
          {
            operator delete(v4[2]);
          }

          operator delete(v4);
          v4 = v6;
        }

        while (v6);
      }

      v5 = v2[2];
      v2[2] = 0;
      if (v5)
      {
        operator delete(v5);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v8 = *(a1 + 20224);
  *(a1 + 20224) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(a1 + 20200);
  if (v9)
  {
    v10 = *(a1 + 20208);
    v11 = *(a1 + 20200);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 3);
        if (v12)
        {
          do
          {
            v15 = *v12;
            v16 = *(v12 + 12);
            if (v16 != -1)
            {
              (off_2670920[v16])(&v129, v12 + 5);
            }

            *(v12 + 12) = -1;
            if (*(v12 + 39) < 0)
            {
              operator delete(v12[2]);
            }

            operator delete(v12);
            v12 = v15;
          }

          while (v15);
        }

        v14 = *(v10 - 5);
        v10 -= 5;
        v13 = v14;
        *v10 = 0;
        if (v14)
        {
          operator delete(v13);
        }
      }

      while (v10 != v9);
      v11 = *(a1 + 20200);
    }

    *(a1 + 20208) = v9;
    operator delete(v11);
  }

  v17 = *(a1 + 20176);
  if (v17)
  {
    do
    {
      v18 = *v17;
      operator delete(v17);
      v17 = v18;
    }

    while (v18);
  }

  v19 = *(a1 + 20160);
  *(a1 + 20160) = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = *(a1 + 20136);
  if (v20)
  {
    v21 = *(a1 + 20144);
    v22 = *(a1 + 20136);
    if (v21 != v20)
    {
      do
      {
        v23 = *(v21 - 3);
        if (v23)
        {
          do
          {
            v26 = *v23;
            v27 = *(v23 + 12);
            if (v27 != -1)
            {
              (off_2670920[v27])(&v130, v23 + 5);
            }

            *(v23 + 12) = -1;
            if (*(v23 + 39) < 0)
            {
              operator delete(v23[2]);
            }

            operator delete(v23);
            v23 = v26;
          }

          while (v26);
        }

        v25 = *(v21 - 5);
        v21 -= 5;
        v24 = v25;
        *v21 = 0;
        if (v25)
        {
          operator delete(v24);
        }
      }

      while (v21 != v20);
      v22 = *(a1 + 20136);
    }

    *(a1 + 20144) = v20;
    operator delete(v22);
  }

  v28 = *(a1 + 20112);
  if (v28)
  {
    do
    {
      v29 = *v28;
      v30 = v28[4];
      if (v30)
      {
        do
        {
          v32 = *v30;
          v33 = *(v30 + 12);
          if (v33 != -1)
          {
            (off_2670920[v33])(&v140, v30 + 5);
          }

          *(v30 + 12) = -1;
          if (*(v30 + 39) < 0)
          {
            operator delete(v30[2]);
          }

          operator delete(v30);
          v30 = v32;
        }

        while (v32);
      }

      v31 = v28[2];
      v28[2] = 0;
      if (v31)
      {
        operator delete(v31);
      }

      operator delete(v28);
      v28 = v29;
    }

    while (v29);
  }

  v34 = *(a1 + 20096);
  *(a1 + 20096) = 0;
  if (v34)
  {
    operator delete(v34);
  }

  v35 = *(a1 + 20072);
  if (v35)
  {
    v36 = *(a1 + 20080);
    v37 = *(a1 + 20072);
    if (v36 != v35)
    {
      do
      {
        v38 = *(v36 - 3);
        if (v38)
        {
          do
          {
            v41 = *v38;
            v42 = *(v38 + 12);
            if (v42 != -1)
            {
              (off_2670920[v42])(&v131, v38 + 5);
            }

            *(v38 + 12) = -1;
            if (*(v38 + 39) < 0)
            {
              operator delete(v38[2]);
            }

            operator delete(v38);
            v38 = v41;
          }

          while (v41);
        }

        v40 = *(v36 - 5);
        v36 -= 5;
        v39 = v40;
        *v36 = 0;
        if (v40)
        {
          operator delete(v39);
        }
      }

      while (v36 != v35);
      v37 = *(a1 + 20072);
    }

    *(a1 + 20080) = v35;
    operator delete(v37);
  }

  v43 = *(a1 + 20048);
  if (v43)
  {
    do
    {
      v44 = *v43;
      operator delete(v43);
      v43 = v44;
    }

    while (v44);
  }

  v45 = *(a1 + 20032);
  *(a1 + 20032) = 0;
  if (v45)
  {
    operator delete(v45);
  }

  v46 = *(a1 + 20008);
  if (v46)
  {
    v47 = *(a1 + 20016);
    v48 = *(a1 + 20008);
    if (v47 != v46)
    {
      do
      {
        v49 = *(v47 - 3);
        if (v49)
        {
          do
          {
            v52 = *v49;
            v53 = *(v49 + 12);
            if (v53 != -1)
            {
              (off_2670920[v53])(&v132, v49 + 5);
            }

            *(v49 + 12) = -1;
            if (*(v49 + 39) < 0)
            {
              operator delete(v49[2]);
            }

            operator delete(v49);
            v49 = v52;
          }

          while (v52);
        }

        v51 = *(v47 - 5);
        v47 -= 5;
        v50 = v51;
        *v47 = 0;
        if (v51)
        {
          operator delete(v50);
        }
      }

      while (v47 != v46);
      v48 = *(a1 + 20008);
    }

    *(a1 + 20016) = v46;
    operator delete(v48);
  }

  v54 = *(a1 + 19984);
  if (v54)
  {
    do
    {
      v55 = *v54;
      operator delete(v54);
      v54 = v55;
    }

    while (v55);
  }

  v56 = *(a1 + 19968);
  *(a1 + 19968) = 0;
  if (v56)
  {
    operator delete(v56);
  }

  v57 = *(a1 + 19944);
  if (v57)
  {
    v58 = *(a1 + 19952);
    v59 = *(a1 + 19944);
    if (v58 != v57)
    {
      do
      {
        v60 = *(v58 - 3);
        if (v60)
        {
          do
          {
            v63 = *v60;
            v64 = *(v60 + 12);
            if (v64 != -1)
            {
              (off_2670920[v64])(&v133, v60 + 5);
            }

            *(v60 + 12) = -1;
            if (*(v60 + 39) < 0)
            {
              operator delete(v60[2]);
            }

            operator delete(v60);
            v60 = v63;
          }

          while (v63);
        }

        v62 = *(v58 - 5);
        v58 -= 5;
        v61 = v62;
        *v58 = 0;
        if (v62)
        {
          operator delete(v61);
        }
      }

      while (v58 != v57);
      v59 = *(a1 + 19944);
    }

    *(a1 + 19952) = v57;
    operator delete(v59);
  }

  v65 = *(a1 + 19920);
  if (v65)
  {
    do
    {
      v66 = *v65;
      operator delete(v65);
      v65 = v66;
    }

    while (v66);
  }

  v67 = *(a1 + 19904);
  *(a1 + 19904) = 0;
  if (v67)
  {
    operator delete(v67);
  }

  v68 = *(a1 + 19880);
  if (v68)
  {
    v69 = *(a1 + 19888);
    v70 = *(a1 + 19880);
    if (v69 != v68)
    {
      do
      {
        v71 = *(v69 - 3);
        if (v71)
        {
          do
          {
            v74 = *v71;
            v75 = *(v71 + 12);
            if (v75 != -1)
            {
              (off_2670920[v75])(&v134, v71 + 5);
            }

            *(v71 + 12) = -1;
            if (*(v71 + 39) < 0)
            {
              operator delete(v71[2]);
            }

            operator delete(v71);
            v71 = v74;
          }

          while (v74);
        }

        v73 = *(v69 - 5);
        v69 -= 5;
        v72 = v73;
        *v69 = 0;
        if (v73)
        {
          operator delete(v72);
        }
      }

      while (v69 != v68);
      v70 = *(a1 + 19880);
    }

    *(a1 + 19888) = v68;
    operator delete(v70);
  }

  v76 = *(a1 + 19856);
  if (v76)
  {
    do
    {
      v77 = *v76;
      operator delete(v76);
      v76 = v77;
    }

    while (v77);
  }

  v78 = *(a1 + 19840);
  *(a1 + 19840) = 0;
  if (v78)
  {
    operator delete(v78);
  }

  v79 = *(a1 + 19816);
  if (v79)
  {
    v80 = *(a1 + 19824);
    v81 = *(a1 + 19816);
    if (v80 != v79)
    {
      do
      {
        v82 = *(v80 - 3);
        if (v82)
        {
          do
          {
            v85 = *v82;
            v86 = *(v82 + 12);
            if (v86 != -1)
            {
              (off_2670920[v86])(&v135, v82 + 5);
            }

            *(v82 + 12) = -1;
            if (*(v82 + 39) < 0)
            {
              operator delete(v82[2]);
            }

            operator delete(v82);
            v82 = v85;
          }

          while (v85);
        }

        v84 = *(v80 - 5);
        v80 -= 5;
        v83 = v84;
        *v80 = 0;
        if (v84)
        {
          operator delete(v83);
        }
      }

      while (v80 != v79);
      v81 = *(a1 + 19816);
    }

    *(a1 + 19824) = v79;
    operator delete(v81);
  }

  v87 = *(a1 + 19792);
  if (v87)
  {
    do
    {
      v88 = *v87;
      operator delete(v87);
      v87 = v88;
    }

    while (v88);
  }

  v89 = *(a1 + 19776);
  *(a1 + 19776) = 0;
  if (v89)
  {
    operator delete(v89);
  }

  v90 = *(a1 + 19752);
  if (v90)
  {
    v91 = *(a1 + 19760);
    v92 = *(a1 + 19752);
    if (v91 != v90)
    {
      do
      {
        v93 = *(v91 - 3);
        if (v93)
        {
          do
          {
            v96 = *v93;
            v97 = *(v93 + 12);
            if (v97 != -1)
            {
              (off_2670920[v97])(&v136, v93 + 5);
            }

            *(v93 + 12) = -1;
            if (*(v93 + 39) < 0)
            {
              operator delete(v93[2]);
            }

            operator delete(v93);
            v93 = v96;
          }

          while (v96);
        }

        v95 = *(v91 - 5);
        v91 -= 5;
        v94 = v95;
        *v91 = 0;
        if (v95)
        {
          operator delete(v94);
        }
      }

      while (v91 != v90);
      v92 = *(a1 + 19752);
    }

    *(a1 + 19760) = v90;
    operator delete(v92);
  }

  v98 = *(a1 + 19728);
  if (v98)
  {
    do
    {
      v99 = *v98;
      operator delete(v98);
      v98 = v99;
    }

    while (v99);
  }

  v100 = *(a1 + 19712);
  *(a1 + 19712) = 0;
  if (v100)
  {
    operator delete(v100);
  }

  v101 = *(a1 + 19688);
  if (v101)
  {
    v102 = *(a1 + 19696);
    v103 = *(a1 + 19688);
    if (v102 != v101)
    {
      do
      {
        v104 = *(v102 - 3);
        if (v104)
        {
          do
          {
            v107 = *v104;
            v108 = *(v104 + 12);
            if (v108 != -1)
            {
              (off_2670920[v108])(&v137, v104 + 5);
            }

            *(v104 + 12) = -1;
            if (*(v104 + 39) < 0)
            {
              operator delete(v104[2]);
            }

            operator delete(v104);
            v104 = v107;
          }

          while (v107);
        }

        v106 = *(v102 - 5);
        v102 -= 5;
        v105 = v106;
        *v102 = 0;
        if (v106)
        {
          operator delete(v105);
        }
      }

      while (v102 != v101);
      v103 = *(a1 + 19688);
    }

    *(a1 + 19696) = v101;
    operator delete(v103);
  }

  v109 = *(a1 + 19664);
  if (v109)
  {
    do
    {
      v110 = *v109;
      operator delete(v109);
      v109 = v110;
    }

    while (v110);
  }

  v111 = *(a1 + 19648);
  *(a1 + 19648) = 0;
  if (v111)
  {
    operator delete(v111);
  }

  v112 = *(a1 + 19624);
  if (v112)
  {
    v113 = *(a1 + 19632);
    v114 = *(a1 + 19624);
    if (v113 != v112)
    {
      do
      {
        v115 = *(v113 - 3);
        if (v115)
        {
          do
          {
            v118 = *v115;
            v119 = *(v115 + 12);
            if (v119 != -1)
            {
              (off_2670920[v119])(&v138, v115 + 5);
            }

            *(v115 + 12) = -1;
            if (*(v115 + 39) < 0)
            {
              operator delete(v115[2]);
            }

            operator delete(v115);
            v115 = v118;
          }

          while (v118);
        }

        v117 = *(v113 - 5);
        v113 -= 5;
        v116 = v117;
        *v113 = 0;
        if (v117)
        {
          operator delete(v116);
        }
      }

      while (v113 != v112);
      v114 = *(a1 + 19624);
    }

    *(a1 + 19632) = v112;
    operator delete(v114);
  }

  if (*(a1 + 19615) < 0)
  {
    operator delete(*(a1 + 19592));
  }

  v120 = *(a1 + 19568);
  if (v120)
  {
    *(a1 + 19576) = v120;
    operator delete(v120);
  }

  v121 = *(a1 + 19536);
  if (v121)
  {
    *(a1 + 19544) = v121;
    operator delete(v121);
  }

  sub_360B9C((a1 + 11704));
  v122 = *(a1 + 11688);
  if (v122 && !atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v122->__on_zero_shared)(v122);
    std::__shared_weak_count::__release_weak(v122);
  }

  v123 = *(a1 + 7816);
  if (v123 && !atomic_fetch_add(&v123->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v123->__on_zero_shared)(v123);
    std::__shared_weak_count::__release_weak(v123);
  }

  v124 = *(a1 + 7792);
  if (v124 && !atomic_fetch_add(&v124->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v124->__on_zero_shared)(v124);
    std::__shared_weak_count::__release_weak(v124);
  }

  v125 = *(a1 + 3920);
  if (v125 && !atomic_fetch_add(&v125->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v125->__on_zero_shared)(v125);
    std::__shared_weak_count::__release_weak(v125);
  }

  v126 = *(a1 + 3896);
  if (v126 && !atomic_fetch_add(&v126->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v126->__on_zero_shared)(v126);
    std::__shared_weak_count::__release_weak(v126);
  }

  v127 = *(a1 + 24);
  if (v127 && !atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v127->__on_zero_shared)(v127);
    std::__shared_weak_count::__release_weak(v127);
  }

  return a1;
}

void sub_A60FD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = *(v3 + 12);
      if (v5 != -1)
      {
        (off_2670920[v5])(&v7, v3 + 5);
      }

      *(v3 + 12) = -1;
      if (*(v3 + 39) < 0)
      {
        operator delete(v3[2]);
      }

      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v6 = *a2;
  *a2 = 0;
  if (v6)
  {
    operator delete(v6);
  }
}

void *sub_A61084(void *a1, uint64_t a2)
{
  sub_19594F8(&v16);
  v3 = *(*&v16 - 24);
  v4 = std::locale::classic();
  std::ios_base::getloc((&v16 + v3));
  std::ios_base::imbue((&v16 + v3), v4);
  std::locale::~locale(__p);
  v5 = *(&v20 + v3);
  if (v5)
  {
    (*(v5->__locale_ + 2))(v5, v4);
    std::locale::locale(&v27, v5 + 1);
    std::locale::operator=(v5 + 1, v4);
    std::locale::~locale(&v27);
  }

  std::locale::~locale(&v15);
  std::ostream::operator<<();
  if ((v26 & 0x10) != 0)
  {
    v7 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v7 = v22;
    }

    v8 = v21;
    v6 = v7 - v21;
    if (v7 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v6 = 0;
      v14 = 0;
      goto LABEL_14;
    }

    v8 = v19;
    v6 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_3244();
    }
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  v14 = v6;
  if (v6)
  {
    memmove(__p, v8, v6);
  }

LABEL_14:
  *(__p + v6) = 0;
  if ((v14 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v10 = v14;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = sub_4A5C(a1, v9, v10);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  std::locale::~locale(&v18);
  std::ostream::~ostream();
  std::ios::~ios();
  return v11;
}

void sub_A61384(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, std::locale a8, void *a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_A613D8(void *a1, uint64_t a2)
{
  sub_5F328(v9);
  v8 = 5;
  strcpy(__p, "score");
  v5 = *(a2 + 192);
  v6 = 2;
  sub_607AC(v9, __p, &v5);
  if (v6 != -1)
  {
    (off_2670920[v6])(v14, &v5);
  }

  v6 = -1;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v4[23] = 8;
  strcpy(v4, "criteria");
  sub_5F328(&v12);
  strcpy(v13, "is_blocked_by_incident");
  HIBYTE(v13[2]) = 22;
  if (*a2)
  {
    v3 = 7;
  }

  else
  {
    v3 = 8;
  }

  v11 = v3;
  sub_607AC(&v12, v13, v10);
  if (v11 != -1)
  {
    (off_2670920[v11])(v14, v10);
  }

  v11 = -1;
  if (SHIBYTE(v13[2]) < 0)
  {
    operator delete(v13[0]);
  }

  operator new();
}

void sub_A633A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  *(v36 + 20208) = v35;
  sub_5C010(va);
  _Unwind_Resume(a1);
}

void sub_A633C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

double sub_A639CC(uint64_t a1, char **a2)
{
  v7 = 0uLL;
  v8 = 0;
  sub_5D72C(&v7, 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  v3 = *a2;
  if (*a2 != a2[1])
  {
    sub_5F328(&v9);
    v37 = 10;
    strcpy(v36, "start_time");
    v34 = *v3;
    v35 = 3;
    sub_607AC(&v9, v36, &v34);
    if (v35 != -1)
    {
      (off_2670920[v35])(v32, &v34);
    }

    v35 = -1;
    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    v33 = 8;
    strcpy(v32, "end_time");
    v30 = *(v3 + 1);
    v31 = 3;
    sub_607AC(&v9, v32, &v30);
    if (v31 != -1)
    {
      (off_2670920[v31])(v28, &v30);
    }

    v31 = -1;
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    v29 = 11;
    strcpy(v28, "min_headway");
    v26 = *(v3 + 2) / 10.0;
    v27 = 2;
    sub_607AC(&v9, v28, &v26);
    if (v27 != -1)
    {
      (off_2670920[v27])(__p, &v26);
    }

    v27 = -1;
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    v25 = 12;
    strcpy(__p, "mean_headway");
    v22 = *(v3 + 4) / 10.0;
    v23 = 2;
    sub_607AC(&v9, __p, &v22);
    if (v23 != -1)
    {
      (off_2670920[v23])(v20, &v22);
    }

    v23 = -1;
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    v21 = 11;
    strcpy(v20, "max_headway");
    v18 = *(v3 + 3) / 10.0;
    v19 = 2;
    sub_607AC(&v9, v20, &v18);
    if (v19 != -1)
    {
      (off_2670920[v19])(v16, &v18);
    }

    v19 = -1;
    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    v17 = 14;
    strcpy(v16, "num_departures");
    v14 = *(v3 + 3);
    v15 = 4;
    sub_607AC(&v9, v16, &v14);
    if (v15 != -1)
    {
      (off_2670920[v15])(v12, &v14);
    }

    v15 = -1;
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    v13 = 12;
    strcpy(v12, "is_estimated");
    if (v3[32])
    {
      v4 = 7;
    }

    else
    {
      v4 = 8;
    }

    v11 = v4;
    sub_607AC(&v9, v12, v10);
    if (v11 != -1)
    {
      (off_2670920[v11])(v38, v10);
    }

    v11 = -1;
    if (v13 < 0)
    {
      operator delete(v12[0]);
      if (*(&v7 + 1) < v8)
      {
LABEL_33:
        operator new();
      }
    }

    else if (*(&v7 + 1) < v8)
    {
      goto LABEL_33;
    }

    sub_A728A8(&v7, &v9);
  }

  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  return result;
}

void sub_A63EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_32A8F8(va);
  _Unwind_Resume(a1);
}

void sub_A63FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, char *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_5BF0C(v5 - 160);
  if (*(v5 - 121) < 0)
  {
    operator delete(*(v5 - 144));
  }

  sub_5C010(va1);
  sub_32A8F8(va);
  _Unwind_Resume(a1);
}

void sub_A63FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_5BF0C(&a29);
  if (a36 < 0)
  {
    operator delete(a31);
  }

  sub_5C010(&a14);
  sub_32A8F8(&a11);
  _Unwind_Resume(a1);
}

void sub_A6400C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_5BF0C(&a34);
  if (a41 < 0)
  {
    JUMPOUT(0xA64024);
  }

  JUMPOUT(0xA6402CLL);
}

void sub_A64048(void *a1, unsigned int *a2)
{
  sub_5F328(a1);
  v13 = 11;
  strcpy(v12, "static_time");
  sub_A64AB0(v4, v12, *a2);
  v5 = a2[1];
  v13 = 13;
  strcpy(v12, "expected_time");
  sub_A64AB0(a1, v12, v5);
  v6 = *(a2 + 8);
  v11 = 20;
  strcpy(__p, "expected_time_source");
  if (v6 == 1)
  {
    v9 = 0x656D69746C616572;
    v7 = &v8;
  }

  else if (v6)
  {
    v7 = &v9 + 7;
    qmemcpy(&v9, "unknown", 7);
  }

  else
  {
    v7 = &v9 + 6;
    qmemcpy(&v9, "static", 6);
  }

  *v7 = 0;
  v9 = 0;
  v8 = 0;
  operator new();
}

void sub_A64408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_A64478(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 0x7FFFFFFF)
  {
    if (*(a2 + 23) < 0)
    {
      v3 = a1;
      v4 = a3;
      sub_325C(__p, *a2, *(a2 + 8));
      LODWORD(a3) = v4;
      a1 = v3;
    }

    else
    {
      *__p = *a2;
      v8 = *(a2 + 16);
    }

    v5 = a3 / 10.0;
    v6 = 2;
    sub_607AC(a1, __p, &v5);
    if (v6 != -1)
    {
      (off_2670920[v6])(&v9, &v5);
    }

    v6 = -1;
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_A6455C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_5BF0C(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A64580(void *a1, unsigned int *a2)
{
  sub_5F328(a1);
  v13 = 11;
  strcpy(v12, "static_time");
  sub_A64478(v4, v12, *a2);
  v5 = a2[1];
  v13 = 13;
  strcpy(v12, "expected_time");
  sub_A64478(a1, v12, v5);
  v6 = *(a2 + 8);
  v11 = 20;
  strcpy(__p, "expected_time_source");
  if (v6 == 1)
  {
    v9 = 0x656D69746C616572;
    v7 = &v8;
  }

  else if (v6)
  {
    v7 = &v9 + 7;
    qmemcpy(&v9, "unknown", 7);
  }

  else
  {
    v7 = &v9 + 6;
    qmemcpy(&v9, "static", 6);
  }

  *v7 = 0;
  v9 = 0;
  v8 = 0;
  operator new();
}

void sub_A64940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_A649B0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 0xFFFFFFFFLL)
  {
    if (*(a2 + 23) < 0)
    {
      v3 = a1;
      v4 = a3;
      sub_325C(__p, *a2, *(a2 + 8));
      LODWORD(a3) = v4;
      a1 = v3;
    }

    else
    {
      *__p = *a2;
      v8 = *(a2 + 16);
    }

    v5 = a3;
    v6 = 4;
    sub_607AC(a1, __p, &v5);
    if (v6 != -1)
    {
      (off_2670920[v6])(&v9, &v5);
    }

    v6 = -1;
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_A64A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_5BF0C(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A64AB0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 0x7FFFFFFF)
  {
    if (*(a2 + 23) < 0)
    {
      v3 = a1;
      v4 = a3;
      sub_325C(__p, *a2, *(a2 + 8));
      LODWORD(a3) = v4;
      a1 = v3;
    }

    else
    {
      *__p = *a2;
      v8 = *(a2 + 16);
    }

    v5 = a3;
    v6 = 3;
    sub_607AC(a1, __p, &v5);
    if (v6 != -1)
    {
      (off_2670920[v6])(&v9, &v5);
    }

    v6 = -1;
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_A64B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_5BF0C(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A64BB0(void *a1, uint64_t (**a2)(), unsigned int *a3)
{
  sub_5F328(a1);
  v31 = 20;
  strcpy(__p, "next_journey_leg_idx");
  if (a3[40] >= 2)
  {
    sub_5AF20();
  }

  v28 = *a3;
  v29 = 4;
  sub_607AC(a1, __p, &v28);
  if (v29 != -1)
  {
    (off_2670920[v29])(&v35, &v28);
  }

  v29 = -1;
  if ((v31 & 0x80000000) == 0)
  {
    v6 = a3[40];
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_9:
    v27 = 15;
    strcpy(v26, "buffer_duration");
    v24 = a3[1] / 10.0;
    v25 = 2;
    sub_607AC(a1, v26, &v24);
    if (v25 != -1)
    {
      (off_2670920[v25])(&v35, &v24);
    }

    v25 = -1;
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    v23 = 12;
    strcpy(v22, "stop_pattern");
    v33 = *(a3 + 4);
    v35.__r_.__value_.__r.__words[0] = 0xCCCCCCCCCCCCCCCDLL * ((a2[2486] - a2[2485]) >> 3);
    v7 = sub_A6BEC4(a2 + 2488, &v33, &v33, &v35)[3];
    if (v7 < 0xCCCCCCCCCCCCCCCDLL * ((a2[2486] - a2[2485]) >> 3))
    {
      v20 = v7;
      v21 = 4;
      sub_607AC(a1, v22, &v20);
      if (v21 != -1)
      {
        (off_2670920[v21])(&v35, &v20);
      }

      v21 = -1;
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      v19 = 11;
      strcpy(v18, "is_frequent");
      if (*(a3 + 157))
      {
        v13 = 7;
      }

      else
      {
        v13 = 8;
      }

      v17 = v13;
      sub_607AC(a1, v18, v16);
      if (v17 != -1)
      {
        (off_2670920[v17])(&v35, v16);
      }

      v17 = -1;
      if (v19 < 0)
      {
        operator delete(v18[0]);
      }

      v15[23] = 19;
      strcpy(v15, "service_frequencies");
      sub_A639CC(&v35, a3 + 15);
      operator new();
    }

    v8 = *a2;
    sub_5F328(&v35);
    HIBYTE(v32[5]) = 18;
    strcpy(v32, "routing_preference");
    v9 = sub_A57920((v8 + 4136), v33);
    v10 = (v9 - *v9);
    if (*v10 < 0xBu)
    {
      LODWORD(v11) = 0;
    }

    else
    {
      v11 = v10[5];
      if (v11)
      {
        LODWORD(v11) = *(v9 + v11);
        if (v11 > 4)
        {
          v12 = "";
          goto LABEL_20;
        }
      }
    }

    v12 = off_26709B0[v11];
LABEL_20:
    sub_A6C234(v34, v12);
  }

  operator delete(*__p);
  v6 = a3[40];
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (v6 == 1)
  {
    v14[23] = 14;
    strcpy(v14, "departure_time");
    v32[0] = a3[1];
    v32[1] = a3[1];
    LOWORD(v32[2]) = 0;
    sub_A64048(&v35, v32);
  }
}

void sub_A68B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_5C010(&STACK[0x5A0]);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(a14);
  _Unwind_Resume(a1);
}

void sub_A69738(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0xA69734);
}

void sub_A69740(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0xA69734);
}

void sub_A69748(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0xA69734);
}

void sub_A69750(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0xA69734);
}

void sub_A69758(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0xA69734);
}

unint64_t sub_A69768(void *a1, unint64_t a2)
{
  v26 = a2;
  v25 = 0xCCCCCCCCCCCCCCCDLL * ((a1[2454] - a1[2453]) >> 3);
  v3 = sub_A6BEC4(a1 + 2456, &v26, &v26, &v25)[3];
  if (v3 >= 0xCCCCCCCCCCCCCCCDLL * ((a1[2454] - a1[2453]) >> 3))
  {
    sub_5F328(&v25);
    v24 = 4;
    strcpy(v23, "name");
    if (HIDWORD(v26) == 1 && (v26 + 3) < 2)
    {
      if (v26 == -2)
      {
        qmemcpy(v18, "origin", 6);
      }

      else
      {
        qmemcpy(v18, "destin", 6);
      }

      v21 = v18[0];
      v22 = v18[1];
      v18[0] = 0;
      LOWORD(v18[1]) = 0;
      goto LABEL_28;
    }

    v6 = sub_502FF8((a1 + 489), __ROR8__(v26, 32), 0, "stop");
    v7 = (v6 - *v6);
    if (*v7 >= 9u && (v8 = v7[4]) != 0)
    {
      v9 = (v6 + v8 + *(v6 + v8));
      memset(&v28, 0, sizeof(v28));
      sub_943AEC(&v28, *v9);
      v29 = (v9 + 1);
      v27 = &v9[*v9 + 1];
      sub_943E24(&v29, &v27, &v28, sub_509164);
      v10 = *&v28.__r_.__value_.__l.__data_;
      v11 = v28.__r_.__value_.__r.__words[2];
    }

    else
    {
      v11 = 0;
      v10 = 0uLL;
    }

    *__p = v10;
    __p[2] = v11;
    nullsub_1();
    sub_9D6590(__p, (a1 + 2441), &v29);
    sub_9D43A4(&v29, &v28);
    v21 = v28.__r_.__value_.__r.__words[1];
    v22 = WORD2(v28.__r_.__value_.__r.__words[1]);
    v19 = WORD2(v28.__r_.__value_.__r.__words[2]);
    v20 = v28.__r_.__value_.__s.__data_[22];
    memset(&v28, 0, sizeof(v28));
    v12 = v29;
    if (!v29)
    {
LABEL_28:
      operator new();
    }

    v13 = v30;
    v14 = v29;
    if (v30 == v29)
    {
LABEL_27:
      v30 = v12;
      operator delete(v14);
      goto LABEL_28;
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 3));
        v15 = v13 - 7;
        if (*(v13 - 33) < 0)
        {
LABEL_23:
          operator delete(*v15);
        }
      }

      else
      {
        v15 = v13 - 7;
        if (*(v13 - 33) < 0)
        {
          goto LABEL_23;
        }
      }

      v13 = v15;
      if (v15 == v12)
      {
        v14 = v29;
        goto LABEL_27;
      }
    }
  }

  return v3;
}

void sub_A6A278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

const char *sub_A6A46C(int a1)
{
  if (a1 <= 699)
  {
    result = "LIGHT_RAIL";
    switch("LIGHT_RAIL")
    {
      case 0u:
        return result;
      case 1u:
        return "SUBWAY";
      case 2u:
        return "RAIL";
      case 3u:
        return "BUS";
      case 4u:
        return "FERRY";
      case 5u:
        return "CABLE_CAR_SERVICE";
      case 6u:
        return "AERIAL_TRAMWAY";
      case 7u:
        return "FUNICULAR";
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x27u:
      case 0x28u:
      case 0x29u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Eu:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x32u:
      case 0x33u:
      case 0x34u:
      case 0x35u:
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
      case 0x3Au:
      case 0x3Bu:
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
      case 0x3Fu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x47u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
      case 0x4Du:
      case 0x4Eu:
      case 0x4Fu:
      case 0x50u:
      case 0x51u:
      case 0x52u:
      case 0x53u:
      case 0x54u:
      case 0x55u:
      case 0x56u:
      case 0x57u:
      case 0x58u:
      case 0x59u:
      case 0x5Au:
      case 0x5Bu:
      case 0x5Cu:
      case 0x5Du:
      case 0x5Eu:
      case 0x5Fu:
      case 0x60u:
      case 0x61u:
      case 0x62u:
      case 0x63u:
      case 0x76u:
      case 0x77u:
      case 0x78u:
      case 0x79u:
      case 0x7Au:
      case 0x7Bu:
      case 0x7Cu:
      case 0x7Du:
      case 0x7Eu:
      case 0x7Fu:
      case 0x80u:
      case 0x81u:
      case 0x82u:
      case 0x83u:
      case 0x84u:
      case 0x85u:
      case 0x86u:
      case 0x87u:
      case 0x88u:
      case 0x89u:
      case 0x8Au:
      case 0x8Bu:
      case 0x8Cu:
      case 0x8Du:
      case 0x8Eu:
      case 0x8Fu:
      case 0x90u:
      case 0x91u:
      case 0x92u:
      case 0x93u:
      case 0x94u:
      case 0x95u:
      case 0x96u:
      case 0x97u:
      case 0x98u:
      case 0x99u:
      case 0x9Au:
      case 0x9Bu:
      case 0x9Cu:
      case 0x9Du:
      case 0x9Eu:
      case 0x9Fu:
      case 0xA0u:
      case 0xA1u:
      case 0xA2u:
      case 0xA3u:
      case 0xA4u:
      case 0xA5u:
      case 0xA6u:
      case 0xA7u:
      case 0xA8u:
      case 0xA9u:
      case 0xAAu:
      case 0xABu:
      case 0xACu:
      case 0xADu:
      case 0xAEu:
      case 0xAFu:
      case 0xB0u:
      case 0xB1u:
      case 0xB2u:
      case 0xB3u:
      case 0xB4u:
      case 0xB5u:
      case 0xB6u:
      case 0xB7u:
      case 0xB8u:
      case 0xB9u:
      case 0xBAu:
      case 0xBBu:
      case 0xBCu:
      case 0xBDu:
      case 0xBEu:
      case 0xBFu:
      case 0xC0u:
      case 0xC1u:
      case 0xC2u:
      case 0xC3u:
      case 0xC4u:
      case 0xC5u:
      case 0xC6u:
      case 0xC7u:
      case 0xD2u:
      case 0xD3u:
      case 0xD4u:
      case 0xD5u:
      case 0xD6u:
      case 0xD7u:
      case 0xD8u:
      case 0xD9u:
      case 0xDAu:
      case 0xDBu:
      case 0xDCu:
      case 0xDDu:
      case 0xDEu:
      case 0xDFu:
      case 0xE0u:
      case 0xE1u:
      case 0xE2u:
      case 0xE3u:
      case 0xE4u:
      case 0xE5u:
      case 0xE6u:
      case 0xE7u:
      case 0xE8u:
      case 0xE9u:
      case 0xEAu:
      case 0xEBu:
      case 0xECu:
      case 0xEDu:
      case 0xEEu:
      case 0xEFu:
      case 0xF0u:
      case 0xF1u:
      case 0xF2u:
      case 0xF3u:
      case 0xF4u:
      case 0xF5u:
      case 0xF6u:
      case 0xF7u:
      case 0xF8u:
      case 0xF9u:
      case 0xFAu:
      case 0xFBu:
      case 0xFCu:
      case 0xFDu:
      case 0xFEu:
      case 0xFFu:
      case 0x100u:
      case 0x101u:
      case 0x102u:
      case 0x103u:
      case 0x104u:
      case 0x105u:
      case 0x106u:
      case 0x107u:
      case 0x108u:
      case 0x109u:
      case 0x10Au:
      case 0x10Bu:
      case 0x10Cu:
      case 0x10Du:
      case 0x10Eu:
      case 0x10Fu:
      case 0x110u:
      case 0x111u:
      case 0x112u:
      case 0x113u:
      case 0x114u:
      case 0x115u:
      case 0x116u:
      case 0x117u:
      case 0x118u:
      case 0x119u:
      case 0x11Au:
      case 0x11Bu:
      case 0x11Cu:
      case 0x11Du:
      case 0x11Eu:
      case 0x11Fu:
      case 0x120u:
      case 0x121u:
      case 0x122u:
      case 0x123u:
      case 0x124u:
      case 0x125u:
      case 0x126u:
      case 0x127u:
      case 0x128u:
      case 0x129u:
      case 0x12Au:
      case 0x12Bu:
      case 0x12Du:
      case 0x12Eu:
      case 0x12Fu:
      case 0x130u:
      case 0x131u:
      case 0x132u:
      case 0x133u:
      case 0x134u:
      case 0x135u:
      case 0x136u:
      case 0x137u:
      case 0x138u:
      case 0x139u:
      case 0x13Au:
      case 0x13Bu:
      case 0x13Cu:
      case 0x13Du:
      case 0x13Eu:
      case 0x13Fu:
      case 0x140u:
      case 0x141u:
      case 0x142u:
      case 0x143u:
      case 0x144u:
      case 0x145u:
      case 0x146u:
      case 0x147u:
      case 0x148u:
      case 0x149u:
      case 0x14Au:
      case 0x14Bu:
      case 0x14Cu:
      case 0x14Du:
      case 0x14Eu:
      case 0x14Fu:
      case 0x150u:
      case 0x151u:
      case 0x152u:
      case 0x153u:
      case 0x154u:
      case 0x155u:
      case 0x156u:
      case 0x157u:
      case 0x158u:
      case 0x159u:
      case 0x15Au:
      case 0x15Bu:
      case 0x15Cu:
      case 0x15Du:
      case 0x15Eu:
      case 0x15Fu:
      case 0x160u:
      case 0x161u:
      case 0x162u:
      case 0x163u:
      case 0x164u:
      case 0x165u:
      case 0x166u:
      case 0x167u:
      case 0x168u:
      case 0x169u:
      case 0x16Au:
      case 0x16Bu:
      case 0x16Cu:
      case 0x16Du:
      case 0x16Eu:
      case 0x16Fu:
      case 0x170u:
      case 0x171u:
      case 0x172u:
      case 0x173u:
      case 0x174u:
      case 0x175u:
      case 0x176u:
      case 0x177u:
      case 0x178u:
      case 0x179u:
      case 0x17Au:
      case 0x17Bu:
      case 0x17Cu:
      case 0x17Du:
      case 0x17Eu:
      case 0x17Fu:
      case 0x180u:
      case 0x181u:
      case 0x182u:
      case 0x183u:
      case 0x184u:
      case 0x185u:
      case 0x186u:
      case 0x187u:
      case 0x188u:
      case 0x189u:
      case 0x18Au:
      case 0x18Bu:
      case 0x18Cu:
      case 0x18Du:
      case 0x18Eu:
      case 0x18Fu:
        return "";
      case 0xCu:
        return "MONORAIL";
      case 0x64u:
        return "RAILWAY_SERVICE";
      case 0x65u:
        return "HIGH_SPEED_RAIL_SERVICE";
      case 0x66u:
        return "LONG_DISTANCE_TRAINS";
      case 0x67u:
        return "INTER_REGIONAL_RAIL_SERVICE";
      case 0x68u:
        return "CAR_TRANSPORT_RAIL_SERVICE";
      case 0x69u:
        return "SLEEPER_RAIL_SERVICE";
      case 0x6Au:
        return "REGIONAL_RAIL_SERVICE";
      case 0x6Bu:
        return "TOURIST_RAILWAY_SERVICE";
      case 0x6Cu:
        return "RAIL_SHUTTLE_WITHIN_COMPLEX";
      case 0x6Du:
        return "SUBURBAN_RAILWAY";
      case 0x6Eu:
        return "REPLACEMENT_RAIL_SERVICE";
      case 0x6Fu:
        return "SPECIAL_RAIL_SERVICE";
      case 0x70u:
        return "LORRY_TRANSPORT_RAIL_SERVICE";
      case 0x71u:
        return "ALL_RAIL_SERVICES";
      case 0x72u:
        return "CROSS_COUNTRY_RAIL_SERVICE";
      case 0x73u:
        return "VEHICLE_TRANSPORT_RAIL_SERVICE";
      case 0x74u:
        return "RACK_AND_PINION_RAILWAY";
      case 0x75u:
        return "ADDITIONAL_RAIL_SERVICE";
      case 0xC8u:
        return "COACH_SERVICE";
      case 0xC9u:
        return "INTERNATIONAL_COACH_SERVICE";
      case 0xCAu:
        return "NATIONAL_COACH_SERVICE";
      case 0xCBu:
        return "SHUTTLE_COACH_SERVICE";
      case 0xCCu:
        return "REGIONAL_COACH_SERVICE";
      case 0xCDu:
        return "SPECIAL_COACH_SERVICE";
      case 0xCEu:
        return "SIGHTSEEING_COACH_SERVICE";
      case 0xCFu:
        return "TOURIST_COACH_SERVICE";
      case 0xD0u:
        return "COMMUTER_COACH_SERVICE";
      case 0xD1u:
        return "ALL_COACH_SERVICES";
      case 0x12Cu:
        return "SUBURBAN_RAILWAY_SERVICE";
      case 0x190u:
        return "URBAN_RAILWAY_SERVICE";
      case 0x191u:
        return "METRO_SERVICE";
      case 0x192u:
        return "UNDERGROUND_SERVICE";
      case 0x193u:
        return "URBAN_RAILWAY_SERVICE_MINOR";
      case 0x194u:
        return "ALL_URBAN_RAILWAY_SERVICES";
      case 0x195u:
        return "MONORAIL_SERVICE";
      default:
        if ("LIGHT_RAIL" == 500)
        {
          result = "METRO_SERVICE_MAJOR";
        }

        else
        {
          if ("LIGHT_RAIL" != 600)
          {
            return "";
          }

          result = "UNDERGROUND_SERVICE_MAJOR";
        }

        break;
    }
  }

  else if (a1 > 1599)
  {
    if (a1 <= 1603)
    {
      if (a1 > 1601)
      {
        if (a1 == 1602)
        {
          return "HIRE_VAN";
        }

        else
        {
          return "HIRE_MOTORBIKE";
        }
      }

      else if (a1 == 1600)
      {
        return "SELF_DRIVE";
      }

      else
      {
        return "HIRE_CAR";
      }
    }

    else
    {
      if (a1 <= 1700)
      {
        if (a1 == 1604)
        {
          return "HIRE_CYCLE";
        }

        if (a1 == 1700)
        {
          return "MISCELLANEOUS_SERVICE";
        }
      }

      else
      {
        switch(a1)
        {
          case 0x6A5:
            return "HORSE_DRAWN_CARRIAGE";
          case 0x708:
            return "BUS_RAPID_TRANSIT";
          case 0x7FFF:
            return "UNKNOWN";
        }
      }

      return "";
    }
  }

  else
  {
    switch(a1)
    {
      case 700:
        result = "BUS_SERVICE";
        break;
      case 701:
        result = "REGIONAL_BUS_SERVICE";
        break;
      case 702:
        result = "EXPRESS_BUS_SERVICE";
        break;
      case 703:
        result = "STOPPING_BUS_SERVICE";
        break;
      case 704:
        result = "LOCAL_BUS_SERVICE";
        break;
      case 705:
        result = "NIGHT_BUS_SERVICE";
        break;
      case 706:
        result = "POST_BUS_SERVICE";
        break;
      case 707:
        result = "SPECIAL_NEEDS_BUS";
        break;
      case 708:
        result = "MOBILITY_BUS_SERVICE";
        break;
      case 709:
        result = "MOBILITY_BUS_FOR_REGISTERED_DISABLED";
        break;
      case 710:
        result = "SIGHTSEEING_BUS";
        break;
      case 711:
        result = "SHUTTLE_BUS";
        break;
      case 712:
        result = "SCHOOL_BUS";
        break;
      case 713:
        result = "SCHOOL_AND_PUBLIC_SERVICE_BUS";
        break;
      case 714:
        result = "RAIL_REPLACEMENT_BUS_SERVICE";
        break;
      case 715:
        result = "DEMAND_AND_RESPONSE_BUS_SERVICE";
        break;
      case 716:
        result = "ALL_BUS_SERVICES";
        break;
      case 717:
        result = "SHARE_TAXI_SERVICE";
        break;
      case 800:
        result = "TROLLEYBUS_SERVICE";
        break;
      case 900:
        result = "TRAM_SERVICE";
        break;
      case 901:
        result = "CITY_TRAM_SERVICE";
        break;
      case 902:
        result = "LOCAL_TRAM_SERVICE";
        break;
      case 903:
        result = "REGIONAL_TRAM_SERVICE";
        break;
      case 904:
        result = "SIGHTSEEING_TRAM_SERVICE";
        break;
      case 905:
        result = "SHUTTLE_TRAM_SERVICE";
        break;
      case 906:
        result = "ALL_TRAM_SERVICES";
        break;
      case 1000:
        result = "WATER_TRANSPORT_SERVICE";
        break;
      case 1001:
        result = "INTERNATIONAL_CAR_FERRY_SERVICE";
        break;
      case 1002:
        result = "NATIONAL_CAR_FERRY_SERVICE";
        break;
      case 1003:
        result = "REGIONAL_CAR_FERRY_SERVICE";
        break;
      case 1004:
        result = "LOCAL_CAR_FERRY_SERVICE";
        break;
      case 1005:
        result = "INTERNATIONAL_PASSENGER_FERRY_SERVICE";
        break;
      case 1006:
        result = "NATIONAL_PASSENGER_FERRY_SERVICE";
        break;
      case 1007:
        result = "REGIONAL_PASSENGER_FERRY_SERVICE";
        break;
      case 1008:
        result = "LOCAL_PASSENGER_FERRY_SERVICE";
        break;
      case 1009:
        result = "POST_BOAT_SERVICE";
        break;
      case 1010:
        result = "TRAIN_FERRY_SERVICE";
        break;
      case 1011:
        result = "ROAD_LINK_FERRY_SERVICE";
        break;
      case 1012:
        result = "AIRPORT_LINK_FERRY_SERVICE";
        break;
      case 1013:
        result = "CAR_HIGH_SPEED_FERRY_SERVICE";
        break;
      case 1014:
        result = "PASSENGER_HIGH_SPEED_FERRY_SERVICE";
        break;
      case 1015:
        result = "SIGHTSEEING_BOAT_SERVICE";
        break;
      case 1016:
        result = "SCHOOL_BOAT";
        break;
      case 1017:
        result = "CABLE_DRAWN_BOAT_SERVICE";
        break;
      case 1018:
        result = "RIVER_BUS_SERVICE";
        break;
      case 1019:
        result = "SCHEDULED_FERRY_SERVICE";
        break;
      case 1020:
        result = "SHUTTLE_FERRY_SERVICE";
        break;
      case 1021:
        result = "ALL_WATER_TRANSPORT_SERVICES";
        break;
      case 1100:
        result = "AIR_SERVICE";
        break;
      case 1101:
        result = "INTERNATIONAL_AIR_SERVICE";
        break;
      case 1102:
        result = "DOMESTIC_AIR_SERVICE";
        break;
      case 1103:
        result = "INTERCONTINENTAL_AIR_SERVICE";
        break;
      case 1104:
        result = "DOMESTIC_SCHEDULED_AIR_SERVICE";
        break;
      case 1105:
        result = "SHUTTLE_AIR_SERVICE";
        break;
      case 1106:
        result = "INTERCONTINENTAL_CHARTER_AIR_SERVICE";
        break;
      case 1107:
        result = "INTERNATIONAL_CHARTER_AIR_SERVICE";
        break;
      case 1108:
        result = "ROUND_TRIP_CHARTER_AIR_SERVICE";
        break;
      case 1109:
        result = "SIGHTSEEING_AIR_SERVICE";
        break;
      case 1110:
        result = "HELICOPTER_AIR_SERVICE";
        break;
      case 1111:
        result = "DOMESTIC_CHARTER_AIR_SERVICE";
        break;
      case 1112:
        result = "SCHENGEN_AREA_AIR_SERVICE";
        break;
      case 1113:
        result = "AIRSHIP_SERVICE";
        break;
      case 1114:
        result = "ALL_AIR_SERVICES";
        break;
      case 1200:
        result = "FERRY_SERVICE";
        break;
      case 1300:
        result = "TELECABIN_SERVICE";
        break;
      case 1301:
        result = "TELECABIN_SERVICE_MINOR";
        break;
      case 1302:
        result = "TELECABIN_CABLE_CAR_SERVICE";
        break;
      case 1303:
        result = "ELEVATOR_SERVICE";
        break;
      case 1304:
        result = "CHAIR_LIFT_SERVICE";
        break;
      case 1305:
        result = "DRAG_LIFT_SERVICE";
        break;
      case 1306:
        result = "SMALL_TELECABIN_SERVICE";
        break;
      case 1307:
        result = "ALL_TELECABIN_SERVICES";
        break;
      case 1400:
        result = "FUNICULAR_SERVICE";
        break;
      case 1401:
        result = "FUNICULAR_SERVICE_MINOR";
        break;
      case 1402:
        result = "ALL_FUNICULAR_SERVICE";
        break;
      case 1500:
        result = "TAXI_SERVICE";
        break;
      case 1501:
        result = "COMMUNAL_TAXI_SERVICE";
        break;
      case 1502:
        result = "WATER_TAXI_SERVICE";
        break;
      case 1503:
        result = "RAIL_TAXI_SERVICE";
        break;
      case 1504:
        result = "BIKE_TAXI_SERVICE";
        break;
      case 1505:
        result = "LICENSED_TAXI_SERVICE";
        break;
      case 1506:
        result = "PRIVATE_HIRE_SERVICE_VEHICLE";
        break;
      case 1507:
        result = "ALL_TAXI_SERVICES";
        break;
      default:
        return "";
    }
  }

  return result;
}

uint64_t *sub_A6BEC4(void *a1, unint64_t *a2, void *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v6 = (0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33);
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
LABEL_31:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v11[1];
      if (v14 == v6)
      {
        if (*(v11 + 5) == HIDWORD(v4) && *(v11 + 4) == v4)
        {
          return v11;
        }
      }

      else if ((v14 & (*&v7 - 1)) != v9)
      {
        goto LABEL_31;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_31;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_31;
    }
  }

  if (*(v11 + 5) != HIDWORD(v4) || *(v11 + 4) != v4)
  {
    goto LABEL_12;
  }

  return v11;
}

void sub_A6C234(uint64_t a1, char *__s)
{
  v3 = strlen(__s);
  if (v3 < 0x7FFFFFFFFFFFFFF8)
  {
    v4 = v3;
    if (v3 < 0x17)
    {
      v7 = v3;
      if (v3)
      {
        memcpy(&v5, __s, v3);
      }

      v6[v4 - 8] = 0;
      v8[0] = *v6;
      *(v8 + 7) = *&v6[7];
      operator new();
    }

    operator new();
  }

  sub_3244();
}

void sub_A6C36C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_A6C384(void *a1, unint64_t a2)
{
  v18 = a2;
  v17 = 0xCCCCCCCCCCCCCCCDLL * ((a1[2494] - a1[2493]) >> 3);
  v3 = sub_A6BEC4(a1 + 2496, &v18, &v18, &v17)[3];
  if (v3 >= 0xCCCCCCCCCCCCCCCDLL * ((a1[2494] - a1[2493]) >> 3))
  {
    sub_92FC60(*(*a1 + 4056) + 24, __ROR8__(v18, 32), 0, "line");
    sub_5F328(&v17);
    v16 = 4;
    strcpy(v15, "muid");
    v4 = *a1;
    sub_92FC60(*(*a1 + 4056) + 24, __ROR8__(v18, 32), 0, "line");
    v5 = sub_2C939C(*(v4 + 4056) + 24, 1u, 0);
    if (v5)
    {
      v6 = &v5[-*v5];
      if (*v6 >= 0xDu)
      {
        v7 = *(v6 + 6);
        if (v7)
        {
          v8 = &v5[v7 + *&v5[v7]];
          v9 = &v8[-*v8];
          if (*v9 >= 0xBu)
          {
            v10 = *(v9 + 5);
            if (v10)
            {
              if (v8[v10])
              {
                nullsub_1();
              }
            }
          }

          nullsub_1();
          std::to_string(&v20, v11);
          *v19 = v20.__r_.__value_.__l.__size_;
          *&v19[7] = *(&v20.__r_.__value_.__r.__words[1] + 7);
          operator new();
        }
      }
    }

    exception = __cxa_allocate_exception(0x40uLL);
    v14 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  return v3;
}

void sub_A6D264(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

const char *sub_A6D558(unsigned int a1)
{
  if (a1 <= 0xA)
  {
    return off_2670A18[a1];
  }

  else
  {
    return "";
  }
}

void sub_A6D57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = *(a3 + 23);
      if ((v4 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v3 != 4)
      {
        return;
      }

      if ((*(a3 + 23) & 0x8000000000000000) == 0)
      {
        if (!*(a3 + 23))
        {
          return;
        }

        goto LABEL_18;
      }
    }

    v4 = *(a3 + 8);
LABEL_17:
    if (!v4)
    {
      return;
    }

    goto LABEL_18;
  }

  if (v3 == 1)
  {
    if (*a3 == -1)
    {
      return;
    }

LABEL_18:
    if (*(a2 + 23) < 0)
    {
      v5 = a3;
      sub_325C(v7, *a2, *(a2 + 8));
      a3 = v5;
    }

    else
    {
      *v7 = *a2;
      v8 = *(a2 + 16);
    }

    sub_A6D918(&__p, a3);
    operator new();
  }

  if (v3 == 2 && (*(a3 + 4) != -1 || *a3 != -1 || *(a3 + 8) != *(a3 + 16)))
  {
    goto LABEL_18;
  }
}