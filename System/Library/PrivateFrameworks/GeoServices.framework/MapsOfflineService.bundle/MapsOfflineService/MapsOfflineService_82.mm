void sub_530060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_530080(uint64_t a1, uint64_t *a2)
{
  v16 = 0;
  v17 = 0;
  v3 = *a2;
  v4 = a2[1];
  v18 = 0;
  __p[0] = &v16;
  LOBYTE(__p[1]) = 0;
  if (v4 != v3)
  {
    if (0xCF3CF3CF3CF3CF3DLL * ((v4 - v3) >> 3) < 0x186186186186187)
    {
      operator new();
    }

    sub_1794();
  }

  sub_530314(&v16, 0, a2[3], a2[4], 0xCF3CF3CF3CF3CF3DLL * ((a2[4] - a2[3]) >> 3));
  sub_530314(&v16, v17, a2[6], a2[7], 0xCF3CF3CF3CF3CF3DLL * ((a2[7] - a2[6]) >> 3));
  v5 = 3735928559;
  v6 = v16;
  v7 = v17;
  if (v16 != v17)
  {
    do
    {
      if (*(v6 + 31) < 0)
      {
        sub_325C(__p, *(v6 + 8), *(v6 + 16));
      }

      else
      {
        v8 = *(v6 + 8);
        v20 = *(v6 + 24);
        *__p = v8;
      }

      if (v20 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if (v20 >= 0)
      {
        v10 = HIBYTE(v20);
      }

      else
      {
        v10 = __p[1];
      }

      v11 = sub_AAD8(&v21, v9, v10);
      if (SHIBYTE(v20) < 0)
      {
        v12 = v11;
        operator delete(__p[0]);
        v11 = v12;
      }

      v5 ^= (v5 << 6) + (v5 >> 2) + 2654435769u + v11;
      v6 += 168;
    }

    while (v6 != v7);
    v6 = v16;
  }

  if (v6)
  {
    v13 = v17;
    v14 = v6;
    if (v17 != v6)
    {
      do
      {
        v13 = sub_52A624(v13 - 168);
      }

      while (v13 != v6);
      v14 = v16;
    }

    v17 = v6;
    operator delete(v14);
  }

  return v5;
}

void sub_53028C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51B6E0(va);
  _Unwind_Resume(a1);
}

void sub_5302A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51B6E0(va);
  _Unwind_Resume(a1);
}

void sub_5302B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_52A6FC(va);
  _Unwind_Resume(a1);
}

void sub_5302C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51B6E0(va);
  _Unwind_Resume(a1);
}

void sub_5302E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v10)
  {
    v12 = v9 - 168;
    v13 = -v10;
    do
    {
      v12 = sub_52A624(v12) - 168;
      v13 += 168;
    }

    while (v13);
  }

  sub_52A6FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_530314(uint64_t *a1, uint64_t a2, char *a3, char *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xCF3CF3CF3CF3CF3DLL * ((v9 - v10) >> 3)) >= a5)
    {
      v15 = v10 - a2;
      if ((0xCF3CF3CF3CF3CF3DLL * ((v10 - a2) >> 3)) >= a5)
      {
        v19 = v10 - 168 * a5;
        for (i = a1[1]; v19 < v10; i += 168)
        {
          *i = *v19;
          v21 = *(v19 + 8);
          *(i + 24) = *(v19 + 24);
          *(i + 8) = v21;
          *(v19 + 16) = 0;
          *(v19 + 24) = 0;
          *(v19 + 8) = 0;
          v22 = *(v19 + 32);
          *(i + 48) = *(v19 + 48);
          *(i + 32) = v22;
          v23 = *(v19 + 56);
          *(i + 72) = *(v19 + 72);
          *(i + 56) = v23;
          *(v19 + 64) = 0;
          *(v19 + 72) = 0;
          *(v19 + 56) = 0;
          v24 = *(v19 + 80);
          *(i + 96) = *(v19 + 96);
          *(i + 80) = v24;
          *(v19 + 80) = 0;
          *(v19 + 88) = 0;
          *(v19 + 96) = 0;
          *(i + 104) = 0;
          *(i + 112) = 0;
          *(i + 120) = 0;
          *(i + 104) = *(v19 + 104);
          *(i + 120) = *(v19 + 120);
          *(v19 + 104) = 0;
          *(v19 + 112) = 0;
          *(v19 + 120) = 0;
          *(i + 128) = *(v19 + 128);
          v25 = *(v19 + 136);
          *(i + 152) = *(v19 + 152);
          *(i + 136) = v25;
          *(v19 + 144) = 0;
          *(v19 + 152) = 0;
          *(v19 + 136) = 0;
          *(i + 160) = *(v19 + 160);
          v19 += 168;
        }

        a1[1] = i;
        if (v10 != a2 + 168 * a5)
        {
          v26 = v10 - 168;
          v27 = a2 + 168 * a5 - v10;
          v28 = v10 - 168 - 168 * a5;
          do
          {
            sub_530A44(v26, v28);
            v26 -= 168;
            v28 -= 168;
            v27 += 168;
          }

          while (v27);
        }

        v29 = &v7[168 * a5];
        v30 = v5;
        do
        {
          sub_52AE4C(v30, v7);
          v7 += 168;
          v30 += 168;
        }

        while (v7 != v29);
      }

      else
      {
        v17 = &a3[v15];
        if (&a3[v15] == a4)
        {
          v18 = a1[1];
          a1[1] = v10;
          if (v15 < 1)
          {
            return v5;
          }
        }

        else
        {
          v36 = 0;
          do
          {
            sub_52A464(v10 + v36, &v17[v36]);
            v36 += 168;
          }

          while (&v17[v36] != a4);
          v18 = v10 + v36;
          a1[1] = v10 + v36;
          if (v15 < 1)
          {
            return v5;
          }
        }

        v37 = v18 - 168 * a5;
        for (j = v18; v37 < v10; j += 168)
        {
          *j = *v37;
          v39 = *(v37 + 8);
          *(j + 24) = *(v37 + 24);
          *(j + 8) = v39;
          *(v37 + 16) = 0;
          *(v37 + 24) = 0;
          *(v37 + 8) = 0;
          v40 = *(v37 + 32);
          *(j + 48) = *(v37 + 48);
          *(j + 32) = v40;
          v41 = *(v37 + 56);
          *(j + 72) = *(v37 + 72);
          *(j + 56) = v41;
          *(v37 + 64) = 0;
          *(v37 + 72) = 0;
          *(v37 + 56) = 0;
          v42 = *(v37 + 80);
          *(j + 96) = *(v37 + 96);
          *(j + 80) = v42;
          *(v37 + 80) = 0;
          *(v37 + 88) = 0;
          *(v37 + 96) = 0;
          *(j + 104) = 0;
          *(j + 112) = 0;
          *(j + 120) = 0;
          *(j + 104) = *(v37 + 104);
          *(j + 120) = *(v37 + 120);
          *(v37 + 104) = 0;
          *(v37 + 112) = 0;
          *(v37 + 120) = 0;
          *(j + 128) = *(v37 + 128);
          v43 = *(v37 + 136);
          *(j + 152) = *(v37 + 152);
          *(j + 136) = v43;
          *(v37 + 144) = 0;
          *(v37 + 152) = 0;
          *(v37 + 136) = 0;
          *(j + 160) = *(v37 + 160);
          v37 += 168;
        }

        a1[1] = j;
        if (v18 != v5 + 168 * a5)
        {
          v44 = v18 - 168;
          v45 = v5 + 168 * a5 - v18;
          v46 = v18 - 168 - 168 * a5;
          do
          {
            sub_530A44(v44, v46);
            v44 -= 168;
            v46 -= 168;
            v45 += 168;
          }

          while (v45);
        }

        v47 = v5;
        do
        {
          sub_52AE4C(v47, v7);
          v7 += 168;
          v47 += 168;
        }

        while (v7 != v17);
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x30C30C30C30C30C3 * ((v10 - *a1) >> 3);
      if (v12 > 0x186186186186186)
      {
        sub_1794();
      }

      v13 = 0xCF3CF3CF3CF3CF3DLL * ((v9 - v11) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0xC30C30C30C30C3)
      {
        v14 = 0x186186186186186;
      }

      else
      {
        v14 = v12;
      }

      v53 = a1;
      if (v14)
      {
        if (v14 <= 0x186186186186186)
        {
          operator new();
        }

        sub_1808();
      }

      v31 = 8 * ((a2 - v11) >> 3);
      __p = 0;
      v50 = v31;
      v51 = v31;
      v52 = 0;
      v32 = 168 * a5;
      v33 = v31 + 168 * a5;
      do
      {
        sub_52A464(v31, v7);
        v31 += 168;
        v7 += 168;
        v32 -= 168;
      }

      while (v32);
      v51 = v33;
      v5 = sub_5307F8(a1, &__p, v5);
      v35 = v50;
      for (k = v51; v51 != v35; k = v51)
      {
        v51 = k - 168;
        sub_52A624(k - 168);
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_5307A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_530BBC(va);
  _Unwind_Resume(a1);
}

void sub_5307B4(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v2 - 168;
    v7 = -v4;
    do
    {
      v6 = sub_52A624(v6) - 168;
      v7 += 168;
    }

    while (v7);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

void sub_5307E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_530BBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5307F8(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = *v9;
      v10 = *(v9 + 8);
      *(v8 + 24) = *(v9 + 24);
      *(v8 + 8) = v10;
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 8) = 0;
      v11 = *(v9 + 32);
      *(v8 + 48) = *(v9 + 48);
      *(v8 + 32) = v11;
      v12 = *(v9 + 56);
      *(v8 + 72) = *(v9 + 72);
      *(v8 + 56) = v12;
      *(v9 + 64) = 0;
      *(v9 + 72) = 0;
      *(v9 + 56) = 0;
      v13 = *(v9 + 80);
      *(v8 + 96) = *(v9 + 96);
      *(v8 + 80) = v13;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 96) = 0;
      *(v8 + 104) = 0;
      *(v8 + 112) = 0;
      *(v8 + 120) = 0;
      *(v8 + 104) = *(v9 + 104);
      *(v8 + 120) = *(v9 + 120);
      *(v9 + 104) = 0;
      *(v9 + 112) = 0;
      *(v9 + 120) = 0;
      *(v8 + 128) = *(v9 + 128);
      v14 = *(v9 + 136);
      *(v8 + 152) = *(v9 + 152);
      *(v8 + 136) = v14;
      *(v9 + 144) = 0;
      *(v9 + 152) = 0;
      *(v9 + 136) = 0;
      *(v8 + 160) = *(v9 + 160);
      v9 += 168;
      v8 += 168;
    }

    while (v9 != v7);
    v15 = a3;
    do
    {
      v15 = sub_52A624(v15) + 168;
    }

    while (v15 != v7);
  }

  v16 = *a1;
  v17 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v18 = v17 + v16 - a3;
  if (v16 != a3)
  {
    v19 = v16;
    v20 = v17 + v16 - a3;
    do
    {
      *v20 = *v19;
      v21 = *(v19 + 8);
      *(v20 + 24) = *(v19 + 24);
      *(v20 + 8) = v21;
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      *(v19 + 8) = 0;
      v22 = *(v19 + 32);
      *(v20 + 48) = *(v19 + 48);
      *(v20 + 32) = v22;
      v23 = *(v19 + 56);
      *(v20 + 72) = *(v19 + 72);
      *(v20 + 56) = v23;
      *(v19 + 64) = 0;
      *(v19 + 72) = 0;
      *(v19 + 56) = 0;
      v24 = *(v19 + 80);
      *(v20 + 96) = *(v19 + 96);
      *(v20 + 80) = v24;
      *(v19 + 80) = 0;
      *(v19 + 88) = 0;
      *(v19 + 96) = 0;
      *(v20 + 104) = 0;
      *(v20 + 112) = 0;
      *(v20 + 120) = 0;
      *(v20 + 104) = *(v19 + 104);
      *(v20 + 120) = *(v19 + 120);
      *(v19 + 104) = 0;
      *(v19 + 112) = 0;
      *(v19 + 120) = 0;
      *(v20 + 128) = *(v19 + 128);
      v25 = *(v19 + 136);
      *(v20 + 152) = *(v19 + 152);
      *(v20 + 136) = v25;
      *(v19 + 144) = 0;
      *(v19 + 152) = 0;
      *(v19 + 136) = 0;
      *(v20 + 160) = *(v19 + 160);
      v19 += 168;
      v20 += 168;
    }

    while (v19 != a3);
    do
    {
      v16 = sub_52A624(v16) + 168;
    }

    while (v16 != a3);
  }

  a2[1] = v18;
  v26 = *a1;
  *a1 = v18;
  a1[1] = v26;
  a2[1] = v26;
  v27 = a1[1];
  a1[1] = a2[2];
  a2[2] = v27;
  v28 = a1[2];
  a1[2] = a2[3];
  a2[3] = v28;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_530A44(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v6;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v7 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v7;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v8 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v8;
  *(a2 + 103) = 0;
  *(a2 + 80) = 0;
  v9 = (a1 + 104);
  v10 = *(a1 + 104);
  if (v10)
  {
    v11 = *(a1 + 112);
    v12 = *(a1 + 104);
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = *v9;
    }

    *(a1 + 112) = v10;
    operator delete(v12);
    *v9 = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0;
  *(a1 + 128) = *(a2 + 128);
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v14 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v14;
  *(a2 + 159) = 0;
  *(a2 + 136) = 0;
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t sub_530BBC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 168;
    sub_52A624(i - 168);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_530C10(uint64_t a1, int *a2)
{
  v2 = (*a2 + 0x388152A534) ^ 0xDEADBEEFLL;
  memset(v6, 0, 24);
  v3 = *(a2 + 1);
  v4 = *(a2 + 2);
  v6[3] = v6;
  __p_8 = 0;
  if (v4 != v3)
  {
    if (0xCF3CF3CF3CF3CF3DLL * ((v4 - v3) >> 3) < 0x186186186186187)
    {
      operator new();
    }

    sub_1794();
  }

  return v2;
}

void sub_530DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_52A6FC(va);
  _Unwind_Resume(a1);
}

void sub_530E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51B6E0(va);
  _Unwind_Resume(a1);
}

void sub_530E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v10)
  {
    v12 = v9 - 168;
    v13 = -v10;
    do
    {
      v12 = sub_52A624(v12) - 168;
      v13 += 168;
    }

    while (v13);
  }

  sub_52A6FC(va);
  _Unwind_Resume(a1);
}

void *sub_530E54(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v4);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    if (v4 <= a2)
    {
      v8 = a2 % v4;
    }

    else
    {
      v8 = a2;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = (v4 - 1) & a2;
    v9 = *(*a1 + 8 * v8);
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v10 = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      while (1)
      {
        v11 = v10[1];
        if (v11 == a2)
        {
          if (sub_531088((v10 + 2), a3))
          {
            return v10;
          }
        }

        else if ((v11 & (v4 - 1)) != v8)
        {
          goto LABEL_23;
        }

        v10 = *v10;
        if (!v10)
        {
          goto LABEL_23;
        }
      }
    }

    do
    {
      v12 = v10[1];
      if (v12 == a2)
      {
        if (sub_531088((v10 + 2), a3))
        {
          return v10;
        }
      }

      else
      {
        if (v12 >= v4)
        {
          v12 %= v4;
        }

        if (v12 != v8)
        {
          break;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

LABEL_23:
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (v4 && (v14 * v4) >= v13)
  {
    return 0;
  }

  v15 = 1;
  if (v4 >= 3)
  {
    v15 = (v4 & (v4 - 1)) != 0;
  }

  v16 = v15 | (2 * v4);
  v17 = vcvtps_u32_f32(v13 / v14);
  if (v16 <= v17)
  {
    prime = v17;
  }

  else
  {
    prime = v16;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v19 = *(a1 + 8);
  if (prime <= *&v19)
  {
    if (prime >= *&v19)
    {
      return 0;
    }

    v20 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v19 < 3uLL || (v21 = vcnt_s8(v19), v21.i16[0] = vaddlv_u8(v21), v21.u32[0] > 1uLL))
    {
      v23 = prime;
      v24 = std::__next_prime(v20);
      if (v23 <= v24)
      {
        prime = v24;
      }

      else
      {
        prime = v23;
      }

      if (prime >= *&v19)
      {
        return 0;
      }
    }

    else
    {
      v22 = 1 << -__clz(v20 - 1);
      if (v20 >= 2)
      {
        v20 = v22;
      }

      if (prime <= v20)
      {
        prime = v20;
      }

      if (prime >= *&v19)
      {
        return 0;
      }
    }
  }

  sub_B07C(a1, prime);
  return 0;
}

BOOL sub_531088(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 31);
  if (v4 >= 0)
  {
    v5 = *(a1 + 31);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = *(a2 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 16);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = v4 >= 0 ? (a1 + 8) : *(a1 + 8);
  v9 = v7 >= 0 ? (a2 + 8) : *(a2 + 8);
  if (memcmp(v8, v9, v5))
  {
    return 0;
  }

  if (!sub_65901C(a1 + 32, a2 + 32))
  {
    return 0;
  }

  v10 = *(a1 + 1184);
  v11 = *(a1 + 1176);
  v12 = *(a2 + 1176);
  if (v10 - v11 != *(a2 + 1184) - v12)
  {
    return 0;
  }

  if (v11 != v10)
  {
    while (*v11 == *v12 && *(v11 + 4) == *(v12 + 4))
    {
      v13 = *(v11 + 31);
      if (v13 >= 0)
      {
        v14 = *(v11 + 31);
      }

      else
      {
        v14 = *(v11 + 16);
      }

      v15 = *(v12 + 31);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(v12 + 16);
      }

      if (v14 != v15)
      {
        break;
      }

      v19 = *(v12 + 8);
      v18 = v12 + 8;
      v17 = v19;
      v22 = *(v11 + 8);
      v21 = v11 + 8;
      v20 = v22;
      v23 = (v13 >= 0 ? v21 : v20);
      v24 = (v16 >= 0 ? v18 : v17);
      if (memcmp(v23, v24, v14) || *(v21 + 24) != *(v18 + 24))
      {
        break;
      }

      v11 = v21 + 160;
      v12 = v18 + 160;
      if (v11 == v10)
      {
        goto LABEL_35;
      }
    }

    return 0;
  }

LABEL_35:
  v25 = *(a1 + 1208);
  v26 = *(a1 + 1200);
  v27 = *(a2 + 1200);
  if (v25 - v26 != *(a2 + 1208) - v27)
  {
    return 0;
  }

  if (v26 != v25)
  {
    while (*v26 == *v27 && *(v26 + 4) == *(v27 + 4))
    {
      v28 = *(v26 + 31);
      if (v28 >= 0)
      {
        v29 = *(v26 + 31);
      }

      else
      {
        v29 = *(v26 + 16);
      }

      v30 = *(v27 + 31);
      v31 = v30;
      if ((v30 & 0x80u) != 0)
      {
        v30 = *(v27 + 16);
      }

      if (v29 != v30)
      {
        break;
      }

      v34 = *(v27 + 8);
      v33 = v27 + 8;
      v32 = v34;
      v37 = *(v26 + 8);
      v36 = v26 + 8;
      v35 = v37;
      v38 = (v28 >= 0 ? v36 : v35);
      v39 = (v31 >= 0 ? v33 : v32);
      if (memcmp(v38, v39, v29) || *(v36 + 24) != *(v33 + 24))
      {
        break;
      }

      v26 = v36 + 160;
      v27 = v33 + 160;
      if (v26 == v25)
      {
        goto LABEL_54;
      }
    }

    return 0;
  }

LABEL_54:
  v40 = *(a1 + 1232);
  v41 = *(a1 + 1224);
  v42 = *(a2 + 1224);
  if (v40 - v41 != *(a2 + 1232) - v42)
  {
    return 0;
  }

  if (v41 != v40)
  {
    while (*v41 == *v42 && *(v41 + 4) == *(v42 + 4))
    {
      v43 = *(v41 + 31);
      if (v43 >= 0)
      {
        v44 = *(v41 + 31);
      }

      else
      {
        v44 = *(v41 + 16);
      }

      v45 = *(v42 + 31);
      v46 = v45;
      if ((v45 & 0x80u) != 0)
      {
        v45 = *(v42 + 16);
      }

      if (v44 != v45)
      {
        break;
      }

      v49 = *(v42 + 8);
      v48 = v42 + 8;
      v47 = v49;
      v52 = *(v41 + 8);
      v51 = v41 + 8;
      v50 = v52;
      v53 = (v43 >= 0 ? v51 : v50);
      v54 = (v46 >= 0 ? v48 : v47);
      if (memcmp(v53, v54, v44) || *(v51 + 24) != *(v48 + 24))
      {
        break;
      }

      v41 = v51 + 160;
      v42 = v48 + 160;
      if (v41 == v40)
      {
        goto LABEL_73;
      }
    }

    return 0;
  }

LABEL_73:
  if (*(a1 + 1248) != *(a2 + 1248))
  {
    return 0;
  }

  v55 = *(a1 + 1264);
  v56 = *(a1 + 1256);
  v57 = *(a2 + 1256);
  if (v55 - v56 != *(a2 + 1264) - v57)
  {
    return 0;
  }

  if (v56 != v55)
  {
    while (*v56 == *v57 && *(v56 + 4) == *(v57 + 4))
    {
      v58 = *(v56 + 31);
      if (v58 >= 0)
      {
        v59 = *(v56 + 31);
      }

      else
      {
        v59 = *(v56 + 16);
      }

      v60 = *(v57 + 31);
      v61 = v60;
      if ((v60 & 0x80u) != 0)
      {
        v60 = *(v57 + 16);
      }

      if (v59 != v60)
      {
        break;
      }

      v64 = *(v57 + 8);
      v63 = v57 + 8;
      v62 = v64;
      v67 = *(v56 + 8);
      v66 = v56 + 8;
      v65 = v67;
      v68 = (v58 >= 0 ? v66 : v65);
      v69 = (v61 >= 0 ? v63 : v62);
      if (memcmp(v68, v69, v59) || *(v66 + 24) != *(v63 + 24))
      {
        break;
      }

      v56 = v66 + 160;
      v57 = v63 + 160;
      if (v56 == v55)
      {
        goto LABEL_93;
      }
    }

    return 0;
  }

LABEL_93:
  if (*(a1 + 1304) != *(a2 + 1304) || *(a1 + 1336) != *(a2 + 1336))
  {
    return 0;
  }

  v70 = *(a1 + 1375);
  if (v70 >= 0)
  {
    v71 = *(a1 + 1375);
  }

  else
  {
    v71 = *(a1 + 1360);
  }

  v72 = *(a2 + 1375);
  v73 = v72;
  if ((v72 & 0x80u) != 0)
  {
    v72 = *(a2 + 1360);
  }

  if (v71 != v72)
  {
    return 0;
  }

  v74 = v70 >= 0 ? (a1 + 1352) : *(a1 + 1352);
  v75 = v73 >= 0 ? (a2 + 1352) : *(a2 + 1352);
  if (memcmp(v74, v75, v71) || !sub_53152C((a1 + 1376), (a2 + 1376)) || *(a1 + 1408) != *(a2 + 1408) || *(a1 + 1404) != *(a2 + 1404) || *(a1 + 1400) != *(a2 + 1400) || !sub_BB4E4((a1 + 1424), (a2 + 1424)) || !sub_531618(a1 + 1448, a2 + 1448))
  {
    return 0;
  }

  return sub_65901C(a1 + 1488, a2 + 1488);
}

uint64_t sub_53152C(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 == a2[1] - *a2)
  {
    if (v3 == v2)
    {
      return 1;
    }

    while (*v3 == *v4 && *(v3 + 1) == *(v4 + 1) && v3[1] == v4[1])
    {
      v5 = v3[39];
      if (v5 >= 0)
      {
        v6 = v3[39];
      }

      else
      {
        v6 = *(v3 + 3);
      }

      v7 = v4[39];
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v4 + 3);
      }

      if (v6 != v7)
      {
        break;
      }

      v11 = *(v4 + 2);
      v10 = v4 + 16;
      v9 = v11;
      v14 = *(v3 + 2);
      v13 = v3 + 16;
      v12 = v14;
      v15 = v5 >= 0 ? v13 : v12;
      v16 = v8 >= 0 ? v10 : v9;
      if (memcmp(v15, v16, v6))
      {
        break;
      }

      v3 = v13 + 24;
      v4 = v10 + 24;
      if (v3 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL sub_531618(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 39);
  if (v2 >= 0)
  {
    v3 = *(a1 + 39);
  }

  else
  {
    v3 = *(a1 + 24);
  }

  v4 = *(a2 + 39);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 24);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v6 = (a1 + 16);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v11 = *(a2 + 16);
  v9 = (a2 + 16);
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  return memcmp(v6, v9, v3) == 0;
}

void sub_531860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_52F610(va);
  _Unwind_Resume(a1);
}

void sub_531874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_52F610(va);
  _Unwind_Resume(a1);
}

uint64_t sub_531888(uint64_t a1, __int128 **a2)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_52DE3C(&__p, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  sub_531950(a1, &__p);
  v3 = __p;
  if (__p)
  {
    v4 = v8;
    v5 = __p;
    if (v8 != __p)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 5;
      }

      while (v4 != v3);
      v5 = __p;
    }

    v8 = v3;
    operator delete(v5);
  }

  return a1;
}

void sub_53193C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_531950(uint64_t a1, uint64_t a2)
{
  *a1 = 52;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_529078(a1 + 32);
  *(a1 + 1152) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1175) = 0u;
  *(a1 + 1191) = 0u;
  *(a1 + 1207) = 0u;
  *(a1 + 1223) = 0u;
  *(a1 + 1248) = 2;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 13;
  *(a1 + 1312) = 0x7FFFFFFF;
  *(a1 + 1316) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 1328) = 0u;
  *(a1 + 1344) = 0x7FFFFFFF;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1400) = xmmword_22983D0;
  *(a1 + 1416) = 0;
  *(a1 + 1440) = 0;
  *(a1 + 1424) = 0u;
  *(a1 + 1448) = -1;
  *(a1 + 1456) = 0x7FFFFFFF;
  *(a1 + 1480) = 0;
  *(a1 + 1464) = 0u;
  sub_529078(a1 + 1488);
  if (a1 + 1376 != a2)
  {
    sub_52EE18((a1 + 1376), *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 3));
  }

  return a1;
}

void sub_531A64(_Unwind_Exception *a1)
{
  sub_3A9518(v1 + 1488);
  if (*(v1 + 1487) < 0)
  {
    operator delete(*v5);
    if ((*(v1 + 1447) & 0x80000000) == 0)
    {
LABEL_3:
      sub_528FAC(v2);
      if ((*(v1 + 1375) & 0x80000000) == 0)
      {
LABEL_5:
        sub_51B73C(v1 + 1248);
        sub_5294D8((v1 + 1176));
        sub_529020(v1 + 32);
        if (*(v1 + 31) < 0)
        {
          operator delete(*v3);
        }

        _Unwind_Resume(a1);
      }

LABEL_4:
      operator delete(*v4);
      goto LABEL_5;
    }
  }

  else if ((*(v1 + 1447) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 1424));
  sub_528FAC(v2);
  if ((*(v1 + 1375) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

uint64_t sub_531B08(uint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
  v10 = (v8 - 2608);
  for (i = 1 - a4; ; ++i)
  {
    v12 = a2 - v9;
    v13 = 0x1F693A1C451AB30BLL * ((a2 - v9) >> 4);
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
      v28 = a2 - 652;
      v29 = v9;
      result = sub_5337DC(a2 - 652, v9);
      if (result)
      {
        v21 = &v29;
        v22 = &v28;
        return sub_531F40(v21, v22);
      }

      return result;
    }

LABEL_10:
    if (v12 <= 62591)
    {
      if (a5)
      {

        return sub_532314(v9, a2);
      }

      else
      {

        return sub_5326DC(v9, a2);
      }
    }

    if (i == 1)
    {
      if (v9 != a2)
      {
        v23 = (v13 - 2) >> 1;
        v24 = v23 + 1;
        v25 = v9 + 2608 * v23;
        do
        {
          sub_533D68(v9, a3, 0x1F693A1C451AB30BLL * ((a2 - v9) >> 4), v25);
          v25 -= 2608;
          --v24;
        }

        while (v24);
        v26 = 0x1F693A1C451AB30BLL * (v12 >> 4);
        do
        {
          result = sub_534054(v9, a2, a3, v26);
          a2 -= 652;
        }

        while (v26-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = (v9 + 2608 * (v13 >> 1));
    v16 = a2 - 652;
    if (v12 < 0x51801)
    {
      sub_532130(v15, v9, v16);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_532130(v9, v15, v16);
      v17 = v9 + 2608 * v14;
      sub_532130((v9 + 2608), (v17 - 2608), a2 - 1304);
      sub_532130((v9 + 5216), (v17 + 2608), a2 - 1956);
      sub_532130((v17 - 2608), v15, (v17 + 2608));
      sub_533B8C(v9, v15);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if ((sub_5337DC(v10, v9) & 1) == 0)
    {
      result = sub_532A40(v9, a2);
      v8 = result;
      goto LABEL_24;
    }

LABEL_17:
    v18 = sub_532F14(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_22;
    }

    v20 = sub_5333D4(v9, v18);
    v8 = (v18 + 652);
    result = sub_5333D4(v18 + 652, a2);
    if (!result)
    {
      a4 = -i;
      if (v20)
      {
        goto LABEL_2;
      }

LABEL_22:
      result = sub_531B08(v9, v18, a3, -i, a5 & 1);
      v8 = (v18 + 652);
LABEL_24:
      a5 = 0;
      a4 = -i;
      goto LABEL_2;
    }

    a2 = v18;
    if (v20)
    {
      return result;
    }
  }

  if (v13 == 3)
  {

    return sub_532130(v9, (v9 + 2608), a2 - 652);
  }

  if (v13 != 4)
  {
    if (v13 == 5)
    {

      return sub_5321E8(v9, (v9 + 2608), (v9 + 5216), (v9 + 7824), a2 - 652);
    }

    goto LABEL_10;
  }

  v28 = a2 - 652;
  v29 = v9;
  v32 = (v9 + 2608);
  v33 = v9;
  v30 = a2 - 652;
  v31 = (v9 + 5216);
  sub_532130(v9, (v9 + 2608), (v9 + 5216));
  result = sub_5337DC(a2 - 652, (v9 + 5216));
  if (result)
  {
    sub_531F40(&v31, &v30);
    result = sub_5337DC(v31, (v9 + 2608));
    if (result)
    {
      sub_531F40(&v32, &v31);
      result = sub_5337DC(v32, v9);
      if (result)
      {
        v21 = &v33;
        v22 = &v32;
        return sub_531F40(v21, v22);
      }
    }
  }

  return result;
}

uint64_t sub_531F40(int **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v14 = **a1;
  v4 = *(v2 + 3);
  v15 = *(v2 + 2);
  v16 = v4;
  *(v2 + 1) = 0;
  *(v2 + 1) = 0u;
  sub_529850(v17, (v2 + 8));
  v5 = *(v2 + 72);
  v18 = *(v2 + 146);
  v17[70] = v5;
  *(v2 + 72) = 0u;
  *(v2 + 146) = 0;
  v19 = *(v2 + 147);
  v20 = *(v2 + 74);
  *(v2 + 149) = 0;
  *(v2 + 294) = 0u;
  v21 = *(v2 + 75);
  v22 = *(v2 + 152);
  *(v2 + 152) = 0;
  *(v2 + 75) = 0u;
  v23 = *(v2 + 153);
  v24 = *(v2 + 77);
  *(v2 + 155) = 0;
  *(v2 + 306) = 0u;
  v25 = v2[312];
  v26 = *(v2 + 157);
  v27 = *(v2 + 79);
  *(v2 + 159) = 0;
  *(v2 + 314) = 0u;
  v6 = *(v2 + 80);
  v29 = *(v2 + 162);
  v28 = v6;
  *(v2 + 162) = 0;
  *(v2 + 80) = 0u;
  v7 = *(v2 + 326);
  v8 = *(v2 + 330);
  *(v31 + 12) = *(v2 + 333);
  v30 = v7;
  v31[0] = v8;
  v9 = *(v2 + 171);
  v31[2] = *(v2 + 338);
  v32 = v9;
  *(v2 + 171) = 0;
  *(v2 + 338) = 0u;
  v33 = *(v2 + 86);
  v34 = *(v2 + 174);
  *(v2 + 174) = 0;
  *(v2 + 86) = 0u;
  LODWORD(v9) = v2[354];
  v35 = *(v2 + 350);
  v36 = v9;
  v10 = *(v2 + 89);
  v38 = *(v2 + 180);
  v37 = v10;
  *(v2 + 180) = 0;
  *(v2 + 89) = 0u;
  v11 = *(v2 + 181);
  v40 = v2[364];
  v39 = v11;
  v12 = *(v2 + 185);
  v41 = *(v2 + 366);
  v42 = v12;
  *(v2 + 185) = 0;
  *(v2 + 366) = 0u;
  sub_529850(&v43, (v2 + 372));
  sub_52E7E8(v2, v3);
  sub_52E7E8(v3, &v14);
  return sub_52E078(&v14);
}

uint64_t sub_532130(unsigned __int8 *a1, unsigned __int8 *a2, int *a3)
{
  v10 = a2;
  v11 = a1;
  v9 = a3;
  v5 = sub_5337DC(a2, a1);
  result = sub_5337DC(a3, a2);
  if (v5)
  {
    if (result)
    {
      v7 = &v11;
LABEL_9:
      v8 = &v9;
      goto LABEL_10;
    }

    sub_531F40(&v11, &v10);
    if (sub_5337DC(v9, v10))
    {
      v7 = &v10;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    sub_531F40(&v10, &v9);
    if (sub_5337DC(v10, v11))
    {
      v7 = &v11;
      v8 = &v10;
LABEL_10:
      sub_531F40(v7, v8);
    }
  }

  return 1;
}

uint64_t sub_5321E8(int *a1, int *a2, int *a3, int *a4, int *a5)
{
  v14 = a2;
  v15 = a1;
  v12 = a4;
  v13 = a3;
  v11 = a5;
  v19 = a1;
  v17 = a3;
  v18 = a2;
  v16 = a4;
  sub_532130(a1, a2, a3);
  if (sub_5337DC(a4, a3))
  {
    sub_531F40(&v17, &v16);
    if (sub_5337DC(v17, a2))
    {
      sub_531F40(&v18, &v17);
      if (sub_5337DC(v18, a1))
      {
        sub_531F40(&v19, &v18);
      }
    }
  }

  result = sub_5337DC(a5, a4);
  if (result)
  {
    sub_531F40(&v12, &v11);
    result = sub_5337DC(v12, a3);
    if (result)
    {
      sub_531F40(&v13, &v12);
      result = sub_5337DC(v13, a2);
      if (result)
      {
        sub_531F40(&v14, &v13);
        result = sub_5337DC(v14, a1);
        if (result)
        {
          return sub_531F40(&v15, &v14);
        }
      }
    }
  }

  return result;
}

uint64_t sub_532314(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = a2;
    v3 = result;
    v4 = (result + 2608);
    if (result + 2608 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v8 = v4;
        result = sub_5337DC(v4, v6);
        if (result)
        {
          v26 = *(v6 + 2608);
          v28 = *(v6 + 2632);
          v27 = *(v6 + 2616);
          *(v6 + 2624) = 0u;
          *(v6 + 2616) = 0;
          sub_529850(v29, v6 + 2640);
          v31 = *(v6 + 3760);
          v32 = *(v6 + 3776);
          *(v6 + 3760) = 0u;
          v9 = *(v6 + 3784);
          *(v6 + 3776) = 0u;
          v33 = v9;
          v34 = *(v6 + 3792);
          *(v6 + 3792) = 0u;
          v35 = *(v6 + 3808);
          v36 = *(v6 + 3824);
          v10 = *(v6 + 3832);
          *(v6 + 3824) = 0u;
          *(v6 + 3808) = 0u;
          v37 = v10;
          v38 = *(v6 + 3840);
          *(v6 + 3840) = 0u;
          v39 = *(v6 + 3856);
          v40 = *(v6 + 3864);
          v41 = *(v6 + 3872);
          *(v6 + 3864) = 0;
          *(v6 + 3872) = 0u;
          v11 = *(v6 + 3888);
          v43 = *(v6 + 3904);
          v42 = v11;
          *(v6 + 3904) = 0;
          *(v6 + 3888) = 0u;
          v12 = *(v6 + 3912);
          v13 = *(v6 + 3928);
          *(v45 + 12) = *(v6 + 3940);
          v44 = v12;
          v45[0] = v13;
          v14 = *(v6 + 3960);
          v46 = *(v6 + 3976);
          v45[2] = v14;
          *(v6 + 3976) = 0;
          *(v6 + 3960) = 0u;
          v47 = *(v6 + 3984);
          v48 = *(v6 + 4000);
          *(v6 + 3984) = 0u;
          *(v6 + 4000) = 0;
          v15 = *(v6 + 4008);
          v50 = *(v6 + 4024);
          v49 = v15;
          v16 = *(v6 + 4032);
          v52 = *(v6 + 4048);
          v51 = v16;
          *(v6 + 4048) = 0;
          *(v6 + 4032) = 0u;
          v17 = *(v6 + 4056);
          v54 = *(v6 + 4064);
          v53 = v17;
          v18 = *(v6 + 4072);
          v56 = *(v6 + 4088);
          v55 = v18;
          *(v6 + 4088) = 0;
          *(v6 + 4072) = 0u;
          sub_529850(&v57, v6 + 4096);
          sub_52E7E8(v8, v6);
          v7 = v3;
          if (v6 != v3)
          {
            v19 = v5;
            do
            {
              v20 = sub_5338EC(&v26);
              v21 = sub_5338EC(v3 + v19 - 2608);
              if (v20 == v21)
              {
                if (v26 == 52)
                {
                  if (!sub_659540(v29))
                  {
                    goto LABEL_25;
                  }

                  v22 = HIBYTE(v32);
                  if (v32 < 0)
                  {
                    v22 = *(&v31 + 1);
                  }

                  if (v22)
                  {
                    v23 = sub_658AAC(v30);
                    if (v23 == sub_658AAC((v3 + v19 - 1832)))
                    {
                      if (!sub_658FC4(v29, v3 + v19 - 2576))
                      {
                        v7 = v3 + v19;
                        goto LABEL_5;
                      }
                    }

                    else
                    {
                      v24 = sub_658AAC(v30);
                      if (v24 <= sub_658AAC((v3 + v19 - 1832)))
                      {
                        goto LABEL_4;
                      }
                    }
                  }

                  else
                  {
LABEL_25:
                    if (v39 == 2 || v39 >= *(v3 + v19 - 1360))
                    {
LABEL_4:
                      v7 = v6;
                      goto LABEL_5;
                    }
                  }
                }

                else if (v26 >= *(v3 + v19 - 2608))
                {
                  goto LABEL_4;
                }
              }

              else if (v20 >= v21)
              {
                goto LABEL_4;
              }

              v6 -= 2608;
              sub_52E7E8(v3 + v19, v3 + v19 - 2608);
              v19 -= 2608;
            }

            while (v19);
            v7 = v3;
LABEL_5:
            v2 = a2;
          }

          sub_52E7E8(v7, &v26);
          result = sub_52E078(&v26);
        }

        v4 = (v8 + 2608);
        v5 += 2608;
        v6 = v8;
      }

      while (v8 + 2608 != v2);
    }
  }

  return result;
}

void sub_5326C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_52E078(va);
  _Unwind_Resume(a1);
}

int *sub_5326DC(int *result, int *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 652;
    if (result + 652 != a2)
    {
      do
      {
        v5 = v4;
        result = sub_5337DC(v4, v3);
        if (result)
        {
          v22 = *v5;
          v24 = *(v3 + 2632);
          v23 = *(v3 + 2616);
          *(v3 + 2624) = 0u;
          *(v3 + 2616) = 0;
          sub_529850(v25, v3 + 2640);
          v27 = *(v3 + 3760);
          v28 = *(v3 + 3776);
          *(v3 + 3760) = 0u;
          v6 = *(v3 + 3784);
          *(v3 + 3776) = 0u;
          v29 = v6;
          v30 = *(v3 + 3792);
          *(v3 + 3792) = 0u;
          v31 = *(v3 + 3808);
          v32 = *(v3 + 3824);
          v7 = *(v3 + 3832);
          *(v3 + 3824) = 0u;
          *(v3 + 3808) = 0u;
          v33 = v7;
          v34 = *(v3 + 3840);
          *(v3 + 3840) = 0u;
          v35 = *(v3 + 3856);
          v36 = *(v3 + 3864);
          v37 = *(v3 + 3872);
          *(v3 + 3864) = 0;
          *(v3 + 3872) = 0u;
          v8 = *(v3 + 3888);
          v39 = *(v3 + 3904);
          v38 = v8;
          *(v3 + 3904) = 0;
          *(v3 + 3888) = 0u;
          v9 = *(v3 + 3912);
          v10 = *(v3 + 3928);
          *(v41 + 12) = *(v3 + 3940);
          v40 = v9;
          v41[0] = v10;
          v11 = *(v3 + 3960);
          v42 = *(v3 + 3976);
          v41[2] = v11;
          *(v3 + 3976) = 0;
          *(v3 + 3960) = 0u;
          v43 = *(v3 + 3984);
          v44 = *(v3 + 4000);
          *(v3 + 3984) = 0u;
          *(v3 + 4000) = 0;
          v12 = *(v3 + 4008);
          v46 = *(v3 + 4024);
          v45 = v12;
          v13 = *(v3 + 4032);
          v48 = *(v3 + 4048);
          v47 = v13;
          *(v3 + 4048) = 0;
          *(v3 + 4032) = 0u;
          v14 = *(v3 + 4056);
          v50 = *(v3 + 4064);
          v49 = v14;
          v15 = *(v3 + 4072);
          v52 = *(v3 + 4088);
          v51 = v15;
          *(v3 + 4088) = 0;
          *(v3 + 4072) = 0u;
          sub_529850(&v53, v3 + 4096);
          do
          {
            while (1)
            {
              while (1)
              {
                while (1)
                {
                  v16 = v3;
                  sub_52E7E8(v3 + 2608, v3);
                  v17 = sub_5338EC(&v22);
                  v3 -= 2608;
                  v18 = sub_5338EC(v16 - 2608);
                  if (v17 == v18)
                  {
                    break;
                  }

                  if (v17 >= v18)
                  {
                    goto LABEL_4;
                  }
                }

                if (v22 == 52)
                {
                  break;
                }

                if (v22 >= *v3)
                {
                  goto LABEL_4;
                }
              }

              if (!sub_659540(v25))
              {
                break;
              }

              v19 = HIBYTE(v28);
              if (v28 < 0)
              {
                v19 = *(&v27 + 1);
              }

              if (!v19)
              {
                break;
              }

              v20 = sub_658AAC(v26);
              if (v20 == sub_658AAC((v16 - 1832)))
              {
                if ((sub_658FC4(v25, v16 - 2576) & 1) == 0)
                {
                  goto LABEL_4;
                }
              }

              else
              {
                v21 = sub_658AAC(v26);
                if (v21 <= sub_658AAC((v16 - 1832)))
                {
                  goto LABEL_4;
                }
              }
            }
          }

          while (v35 != 2 && v35 < *(v16 - 1360));
LABEL_4:
          sub_52E7E8(v16, &v22);
          result = sub_52E078(&v22);
        }

        v4 = v5 + 652;
        v3 = v5;
      }

      while (v5 + 652 != a2);
    }
  }

  return result;
}

void sub_532A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_52E078(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_532A40(uint64_t a1, unsigned __int8 *a2)
{
  v64 = a2;
  v65 = a1;
  v32 = *a1;
  v33 = *(a1 + 8);
  v34 = *(a1 + 24);
  *(a1 + 16) = 0u;
  *(a1 + 8) = 0;
  sub_529850(v35, a1 + 32);
  v37 = *(a1 + 1152);
  v38 = *(a1 + 1168);
  *(a1 + 1152) = 0u;
  v3 = *(a1 + 1176);
  *(a1 + 1168) = 0u;
  v39 = v3;
  v40 = *(a1 + 1184);
  *(a1 + 1184) = 0u;
  v41 = *(a1 + 1200);
  v42 = *(a1 + 1216);
  v4 = *(a1 + 1224);
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  v43 = v4;
  v44 = *(a1 + 1232);
  *(a1 + 1232) = 0u;
  v45 = *(a1 + 1248);
  v46 = *(a1 + 1256);
  v47 = *(a1 + 1264);
  *(a1 + 1256) = 0;
  *(a1 + 1264) = 0u;
  v5 = *(a1 + 1280);
  v49 = *(a1 + 1296);
  v48 = v5;
  *(a1 + 1296) = 0;
  *(a1 + 1280) = 0u;
  v6 = *(a1 + 1304);
  v7 = *(a1 + 1320);
  *(v51 + 12) = *(a1 + 1332);
  v50 = v6;
  v51[0] = v7;
  v8 = *(a1 + 1368);
  v51[2] = *(a1 + 1352);
  v52 = v8;
  *(a1 + 1368) = 0;
  *(a1 + 1352) = 0u;
  v53 = *(a1 + 1376);
  v54 = *(a1 + 1392);
  *(a1 + 1376) = 0u;
  *(a1 + 1392) = 0;
  LODWORD(v8) = *(a1 + 1416);
  v55 = *(a1 + 1400);
  v56 = v8;
  v9 = *(a1 + 1424);
  v58 = *(a1 + 1440);
  v57 = v9;
  *(a1 + 1440) = 0;
  *(a1 + 1424) = 0u;
  v10 = *(a1 + 1448);
  v60 = *(a1 + 1456);
  v59 = v10;
  v11 = *(a1 + 1480);
  v61 = *(a1 + 1464);
  v62 = v11;
  *(a1 + 1480) = 0;
  *(a1 + 1464) = 0u;
  sub_529850(&v63, a1 + 1488);
  if (sub_5337DC(&v32, v64 - 2608))
  {
    do
    {
      v65 += 2608;
    }

    while ((sub_5337DC(&v32, v65) & 1) == 0);
  }

  else
  {
    do
    {
      v12 = (v65 + 2608);
      v65 = v12;
    }

    while (v12 < v64 && !sub_5337DC(&v32, v12));
  }

  v14 = v64;
  v13 = v65;
  if (v65 < v64)
  {
    do
    {
      v64 -= 2608;
    }

    while ((sub_5337DC(&v32, v64) & 1) != 0);
    v14 = v64;
    v13 = v65;
  }

  if (v13 < v14)
  {
    do
    {
      sub_531F40(&v65, &v64);
      do
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              v15 = v65;
              v16 = (v65 + 2608);
              v65 += 2608;
              v17 = sub_5338EC(&v32);
              v18 = sub_5338EC((v15 + 2608));
              if (v17 == v18)
              {
                break;
              }

              if (v17 < v18)
              {
                goto LABEL_31;
              }
            }

            if (v32 == 52)
            {
              break;
            }

            if (v32 < *v16)
            {
              goto LABEL_31;
            }
          }

          if (!sub_659540(v35))
          {
            break;
          }

          v19 = HIBYTE(v38);
          if (v38 < 0)
          {
            v19 = *(&v37 + 1);
          }

          if (!v19)
          {
            break;
          }

          v20 = sub_658AAC(v36);
          if (v20 == sub_658AAC(v15 + 3384))
          {
            if (sub_658FC4(v35, (v15 + 2640)))
            {
              goto LABEL_31;
            }
          }

          else
          {
            v21 = sub_658AAC(v36);
            if (v21 > sub_658AAC(v15 + 3384))
            {
              goto LABEL_31;
            }
          }
        }
      }

      while (v45 == 2 || v45 >= *(v15 + 964));
      do
      {
        while (1)
        {
          while (1)
          {
LABEL_31:
            while (1)
            {
              v22 = v64;
              v23 = v64 - 2608;
              v64 -= 2608;
              v24 = sub_5338EC(&v32);
              v25 = sub_5338EC((v22 - 2608));
              if (v24 == v25)
              {
                break;
              }

              if (v24 >= v25)
              {
                goto LABEL_11;
              }
            }

            if (v32 == 52)
            {
              break;
            }

            if (v32 >= *v23)
            {
              goto LABEL_11;
            }
          }

          if (!sub_659540(v35))
          {
            break;
          }

          v26 = HIBYTE(v38);
          if (v38 < 0)
          {
            v26 = *(&v37 + 1);
          }

          if (!v26)
          {
            break;
          }

          v27 = sub_658AAC(v36);
          if (v27 == sub_658AAC(v22 - 1832))
          {
            if ((sub_658FC4(v35, (v22 - 2576)) & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v28 = sub_658AAC(v36);
            if (v28 <= sub_658AAC(v22 - 1832))
            {
              goto LABEL_11;
            }
          }
        }
      }

      while (v45 != 2 && v45 < *(v22 - 340));
LABEL_11:
      v13 = v65;
    }

    while (v65 < v64);
  }

  v29 = (v13 - 2608);
  if (v13 - 2608 != a1)
  {
    sub_52E7E8(a1, (v13 - 2608));
  }

  sub_52E7E8(v29, &v32);
  v30 = v65;
  sub_52E078(&v32);
  return v30;
}

uint64_t sub_532F14(uint64_t a1, int *a2)
{
  v66 = a2;
  v67 = a1;
  v34 = *a1;
  v35 = *(a1 + 8);
  v36 = *(a1 + 24);
  *(a1 + 16) = 0u;
  *(a1 + 8) = 0;
  sub_529850(v37, a1 + 32);
  v39 = *(a1 + 1152);
  v40 = *(a1 + 1168);
  *(a1 + 1152) = 0u;
  v3 = *(a1 + 1176);
  *(a1 + 1168) = 0u;
  v41 = v3;
  v42 = *(a1 + 1184);
  *(a1 + 1184) = 0u;
  v43 = *(a1 + 1200);
  v44 = *(a1 + 1216);
  v4 = *(a1 + 1224);
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  v45 = v4;
  v46 = *(a1 + 1232);
  *(a1 + 1232) = 0u;
  v47 = *(a1 + 1248);
  v48 = *(a1 + 1256);
  v49 = *(a1 + 1264);
  *(a1 + 1256) = 0;
  *(a1 + 1264) = 0u;
  v5 = *(a1 + 1280);
  v51 = *(a1 + 1296);
  v50 = v5;
  *(a1 + 1296) = 0;
  *(a1 + 1280) = 0u;
  v6 = *(a1 + 1304);
  v7 = *(a1 + 1320);
  *(v53 + 12) = *(a1 + 1332);
  v52 = v6;
  v53[0] = v7;
  v8 = *(a1 + 1368);
  v53[2] = *(a1 + 1352);
  v54 = v8;
  *(a1 + 1368) = 0;
  *(a1 + 1352) = 0u;
  v55 = *(a1 + 1376);
  v56 = *(a1 + 1392);
  *(a1 + 1376) = 0u;
  *(a1 + 1392) = 0;
  LODWORD(v8) = *(a1 + 1416);
  v57 = *(a1 + 1400);
  v58 = v8;
  v9 = *(a1 + 1424);
  v60 = *(a1 + 1440);
  v59 = v9;
  *(a1 + 1440) = 0;
  *(a1 + 1424) = 0u;
  v10 = *(a1 + 1448);
  v62 = *(a1 + 1456);
  v61 = v10;
  v11 = *(a1 + 1480);
  v63 = *(a1 + 1464);
  v64 = v11;
  *(a1 + 1480) = 0;
  *(a1 + 1464) = 0u;
  sub_529850(&v65, a1 + 1488);
  do
  {
    v67 += 652;
  }

  while ((sub_5337DC(v67, &v34) & 1) != 0);
  if (v67 - 652 == a1)
  {
    do
    {
      v12 = v66;
      if (v67 >= v66)
      {
        break;
      }

      v66 -= 652;
    }

    while ((sub_5337DC(v12 - 652, &v34) & 1) == 0);
  }

  else
  {
    do
    {
      v66 -= 652;
    }

    while (!sub_5337DC(v66, &v34));
  }

  v13 = v67;
  if (v67 >= v66)
  {
    goto LABEL_51;
  }

  while (2)
  {
    sub_531F40(&v67, &v66);
    do
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v14 = v67;
            v67 += 652;
            v15 = sub_5338EC(v67);
            v16 = sub_5338EC(&v34);
            if (v15 == v16)
            {
              break;
            }

            if (v15 >= v16)
            {
              goto LABEL_32;
            }
          }

          v17 = v14[652];
          if (v17 == 52)
          {
            break;
          }

          if (v17 >= v34)
          {
            goto LABEL_32;
          }
        }

        if (!sub_659540((v14 + 660)))
        {
          goto LABEL_24;
        }

        if ((*(v14 + 3783) & 0x8000000000000000) != 0)
        {
          break;
        }

        if (!*(v14 + 3783))
        {
          goto LABEL_24;
        }

LABEL_18:
        v18 = sub_658AAC(v14 + 3384);
        if (v18 == sub_658AAC(v38))
        {
          if ((sub_658FC4((v14 + 660), v37) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v21 = sub_658AAC(v14 + 3384);
          if (v21 <= sub_658AAC(v38))
          {
            goto LABEL_32;
          }
        }
      }

      if (*(v14 + 471))
      {
        goto LABEL_18;
      }

LABEL_24:
      v19 = v14[964];
    }

    while (v19 != 2 && v19 < v47);
    do
    {
      while (1)
      {
        while (1)
        {
LABEL_32:
          while (1)
          {
            v22 = v66;
            v66 -= 652;
            v23 = sub_5338EC(v66);
            v24 = sub_5338EC(&v34);
            if (v23 == v24)
            {
              break;
            }

            if (v23 < v24)
            {
              goto LABEL_10;
            }
          }

          v25 = *(v22 - 652);
          if (v25 == 52)
          {
            break;
          }

          if (v25 < v34)
          {
            goto LABEL_10;
          }
        }

        v26 = (v22 - 644);
        if (!sub_659540((v22 - 644)))
        {
          goto LABEL_43;
        }

        if ((*(v22 - 1433) & 0x8000000000000000) != 0)
        {
          break;
        }

        if (!*(v22 - 1433))
        {
          goto LABEL_43;
        }

LABEL_37:
        v27 = (v22 - 458);
        v28 = sub_658AAC(v22 - 1832);
        if (v28 == sub_658AAC(v38))
        {
          if (sub_658FC4(v26, v37))
          {
            goto LABEL_10;
          }
        }

        else
        {
          v31 = sub_658AAC(v27);
          if (v31 > sub_658AAC(v38))
          {
            goto LABEL_10;
          }
        }
      }

      if (*(v22 - 181))
      {
        goto LABEL_37;
      }

LABEL_43:
      v29 = *(v22 - 340);
    }

    while (v29 == 2 || v29 >= v47);
LABEL_10:
    v13 = v67;
    if (v67 < v66)
    {
      continue;
    }

    break;
  }

LABEL_51:
  v32 = (v13 - 652);
  if (v13 - 652 != a1)
  {
    sub_52E7E8(a1, (v13 - 652));
  }

  sub_52E7E8(v32, &v34);
  sub_52E078(&v34);
  return v32;
}

BOOL sub_5333D4(int *a1, char *a2)
{
  v57 = a2;
  v58 = a1;
  v2 = 0x1F693A1C451AB30BLL * ((a2 - a1) >> 4);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_532130(a1, a1 + 2608, a2 - 652);
        return 1;
      case 4:
        v21 = (a1 + 652);
        v22 = (a1 + 1304);
        v27 = a1;
        v60 = a1 + 1304;
        v61[0] = a1 + 652;
        v23 = (a2 - 2608);
        v59 = (a2 - 2608);
        sub_532130(a1, a1 + 2608, a1 + 1304);
        if (!sub_5337DC(v23, v22))
        {
          return 1;
        }

        sub_531F40(&v60, &v59);
        if (!sub_5337DC(v60, v21))
        {
          return 1;
        }

        sub_531F40(v61, &v60);
        if (!sub_5337DC(v61[0], a1))
        {
          return 1;
        }

        v3 = &v27;
        v4 = v61;
        goto LABEL_6;
      case 5:
        sub_5321E8(a1, a1 + 652, a1 + 1304, a1 + 1956, a2 - 652);
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
      v57 = (a2 - 2608);
      if (sub_5337DC(a2 - 652, a1))
      {
        v3 = &v58;
        v4 = &v57;
LABEL_6:
        sub_531F40(v3, v4);
      }

      return 1;
    }
  }

  v5 = (a1 + 1304);
  sub_532130(a1, a1 + 2608, a1 + 1304);
  v8 = a1 + 1956;
  if (v8 == a2)
  {
    return 1;
  }

  v9 = 0;
  while (1)
  {
    if (!sub_5337DC(v8, v5))
    {
      goto LABEL_16;
    }

    LODWORD(v27) = *v8;
    v28 = *(v8 + 2);
    v29 = *(v8 + 3);
    *(v8 + 1) = 0u;
    *(v8 + 1) = 0;
    sub_529850(v30, (v8 + 8));
    v30[70] = *(v8 + 72);
    v31 = *(v8 + 146);
    *(v8 + 72) = 0u;
    v10 = *(v8 + 147);
    *(v8 + 73) = 0u;
    v32 = v10;
    v33 = *(v8 + 74);
    *(v8 + 74) = 0u;
    v34 = *(v8 + 75);
    v35 = *(v8 + 152);
    v11 = *(v8 + 153);
    *(v8 + 76) = 0u;
    *(v8 + 75) = 0u;
    v36 = v11;
    v37 = *(v8 + 77);
    *(v8 + 77) = 0u;
    v38 = v8[312];
    v39 = *(v8 + 157);
    v40 = *(v8 + 79);
    *(v8 + 157) = 0;
    *(v8 + 79) = 0u;
    v12 = *(v8 + 80);
    v42 = *(v8 + 162);
    v41 = v12;
    *(v8 + 162) = 0;
    *(v8 + 80) = 0u;
    v13 = *(v8 + 326);
    v14 = *(v8 + 330);
    *(v44 + 12) = *(v8 + 333);
    v43 = v13;
    v44[0] = v14;
    v15 = *(v8 + 338);
    v45 = *(v8 + 171);
    v44[2] = v15;
    *(v8 + 171) = 0;
    *(v8 + 338) = 0u;
    v46 = *(v8 + 86);
    v47 = *(v8 + 174);
    *(v8 + 86) = 0u;
    *(v8 + 174) = 0;
    v16 = *(v8 + 350);
    v49 = v8[354];
    v48 = v16;
    v17 = *(v8 + 89);
    v51 = *(v8 + 180);
    v50 = v17;
    *(v8 + 180) = 0;
    *(v8 + 89) = 0u;
    v18 = *(v8 + 181);
    v53 = v8[364];
    v52 = v18;
    v19 = *(v8 + 366);
    v55 = *(v8 + 185);
    v54 = v19;
    *(v8 + 185) = 0;
    *(v8 + 366) = 0u;
    sub_529850(&v56, (v8 + 372));
    do
    {
      v20 = v5;
      sub_52E7E8((v5 + 2608), v5);
      if (v5 == v58)
      {
        break;
      }

      v5 -= 2608;
    }

    while ((sub_5337DC(&v27, (v20 - 2608)) & 1) != 0);
    sub_52E7E8(v20, &v27);
    if (++v9 == 8)
    {
      break;
    }

    sub_52E078(&v27);
LABEL_16:
    v5 = v8;
    v8 += 652;
    if (v8 == v57)
    {
      return 1;
    }
  }

  v26 = v8 + 652 == v57;
  sub_52E078(&v27);
  return v26;
}

void sub_5337C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_52E078(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5337DC(int *a1, unsigned __int8 *a2)
{
  v4 = sub_5338EC(a1);
  v5 = sub_5338EC(a2);
  v6 = v4 < v5;
  if (v4 != v5)
  {
    return v6;
  }

  v7 = *a1;
  if (*a1 != 52)
  {
    v11 = *a2;
    return v7 < v11;
  }

  if (!sub_659540((a1 + 8)))
  {
    goto LABEL_12;
  }

  v8 = *(a1 + 1175);
  if (v8 < 0)
  {
    v8 = *(a1 + 145);
  }

  if (!v8)
  {
LABEL_12:
    v7 = a1[312];
    if (v7 == 2)
    {
      return 0;
    }

    v11 = *(a2 + 312);
    return v7 < v11;
  }

  v9 = sub_658AAC(a1 + 776);
  if (v9 == sub_658AAC(a2 + 776))
  {

    return sub_658FC4((a1 + 8), (a2 + 32));
  }

  else
  {
    v12 = sub_658AAC(a1 + 776);
    return v12 > sub_658AAC(a2 + 776);
  }
}

uint64_t sub_5338EC(uint64_t a1)
{
  if (*(a1 + 1376) != *(a1 + 1384))
  {
    return 1;
  }

  v2 = *(a1 + 1408);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(a1 + 1400);
      if (v3 != 0x7FFFFFFF && *(a1 + 1404) < v3 && *(a1 + 1412) != 0x7FFFFFFF)
      {
        return 2;
      }
    }
  }

  else
  {
    v4 = *(a1 + 1400);
    if (v4 != 0x7FFFFFFF && *(a1 + 1404) < v4)
    {
      return 2;
    }
  }

  if (*a1 == 45)
  {
    return 3;
  }

  v6 = sub_659540(a1 + 32);
  v7 = a1;
  if (!v6)
  {
    goto LABEL_20;
  }

  v8 = *(a1 + 1175);
  if (v8 < 0)
  {
    v8 = *(a1 + 1160);
  }

  if (v8)
  {
    v9 = sub_659608(a1 + 32);
    v7 = a1;
    if (v9)
    {
      return 4;
    }
  }

LABEL_20:
  if (*(v7 + 1248) != 2)
  {
    return 5;
  }

  if (*(v7 + 1176) != *(v7 + 1184))
  {
    return 6;
  }

  if (*(v7 + 1200) != *(v7 + 1208))
  {
    return 6;
  }

  if (*(v7 + 1224) != *(v7 + 1232))
  {
    return 6;
  }

  v10 = sub_659540(a1 + 32);
  v11 = a1;
  if (!v10)
  {
    goto LABEL_34;
  }

  v12 = *(a1 + 1175);
  if (v12 < 0)
  {
    v12 = *(a1 + 1160);
  }

  if (v12)
  {
    v13 = sub_6595D0(a1 + 32);
    v11 = a1;
    if (v13)
    {
      return 7;
    }
  }

LABEL_34:
  if (sub_659BD0(v11 + 1488))
  {
    return 8;
  }

  if (*a1 == 51)
  {
    return 9;
  }

  if (*(a1 + 1304) != 13)
  {
    return 10;
  }

  if (*a1 != 52)
  {
    return 11;
  }

  v14 = *(a1 + 1447);
  if (v14 < 0)
  {
    v14 = *(a1 + 1432);
  }

  if (v14)
  {
    return 12;
  }

  if (*(a1 + 1448) == -1 && *(a1 + 1452) == -1)
  {
    return 0;
  }

  return 13;
}

uint64_t sub_533B8C(int *a1, uint64_t a2)
{
  v14 = *a1;
  v15 = *(a1 + 2);
  v16 = *(a1 + 3);
  *(a1 + 1) = 0u;
  *(a1 + 1) = 0;
  sub_529850(v17, (a1 + 8));
  v17[70] = *(a1 + 72);
  v18 = *(a1 + 146);
  *(a1 + 72) = 0u;
  v4 = *(a1 + 147);
  *(a1 + 73) = 0u;
  v19 = v4;
  v20 = *(a1 + 74);
  *(a1 + 74) = 0u;
  v21 = *(a1 + 75);
  v22 = *(a1 + 152);
  v5 = *(a1 + 153);
  *(a1 + 76) = 0u;
  *(a1 + 75) = 0u;
  v23 = v5;
  v24 = *(a1 + 77);
  *(a1 + 77) = 0u;
  v25 = a1[312];
  v26 = *(a1 + 157);
  v27 = *(a1 + 79);
  *(a1 + 157) = 0;
  *(a1 + 79) = 0u;
  v6 = *(a1 + 80);
  v29 = *(a1 + 162);
  v28 = v6;
  *(a1 + 162) = 0;
  *(a1 + 80) = 0u;
  v7 = *(a1 + 326);
  v8 = *(a1 + 330);
  *(v31 + 12) = *(a1 + 333);
  v30 = v7;
  v31[0] = v8;
  v9 = *(a1 + 171);
  v31[2] = *(a1 + 338);
  v32 = v9;
  *(a1 + 171) = 0;
  *(a1 + 338) = 0u;
  v33 = *(a1 + 86);
  v34 = *(a1 + 174);
  *(a1 + 86) = 0u;
  *(a1 + 174) = 0;
  LODWORD(v9) = a1[354];
  v35 = *(a1 + 350);
  v36 = v9;
  v10 = *(a1 + 89);
  v38 = *(a1 + 180);
  v37 = v10;
  *(a1 + 180) = 0;
  *(a1 + 89) = 0u;
  v11 = *(a1 + 181);
  v40 = a1[364];
  v39 = v11;
  v12 = *(a1 + 185);
  v41 = *(a1 + 366);
  v42 = v12;
  *(a1 + 185) = 0;
  *(a1 + 366) = 0u;
  sub_529850(&v43, (a1 + 372));
  sub_52E7E8(a1, a2);
  sub_52E7E8(a2, &v14);
  return sub_52E078(&v14);
}

uint64_t sub_533D68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= 0x1F693A1C451AB30BLL * ((a4 - result) >> 4))
    {
      v9 = (0x3ED274388A356616 * ((a4 - result) >> 4)) | 1;
      v10 = result + 2608 * v9;
      v11 = 0x3ED274388A356616 * ((a4 - result) >> 4) + 2;
      if (v11 < a3 && sub_5337DC((result + 2608 * v9), (v10 + 2608)))
      {
        v10 += 2608;
        v9 = v11;
      }

      result = sub_5337DC(v10, v5);
      if ((result & 1) == 0)
      {
        *v23 = *v5;
        v24 = *(v5 + 8);
        v25 = *(v5 + 24);
        *(v5 + 16) = 0u;
        *(v5 + 8) = 0;
        sub_529850(v26, v5 + 32);
        v26[70] = *(v5 + 1152);
        v27 = *(v5 + 1168);
        *(v5 + 1152) = 0u;
        v12 = *(v5 + 1176);
        *(v5 + 1168) = 0u;
        v28 = v12;
        v29 = *(v5 + 1184);
        *(v5 + 1184) = 0u;
        v30 = *(v5 + 1200);
        v31 = *(v5 + 1216);
        v13 = *(v5 + 1224);
        *(v5 + 1216) = 0u;
        *(v5 + 1200) = 0u;
        v32 = v13;
        v33 = *(v5 + 1232);
        *(v5 + 1232) = 0u;
        v34 = *(v5 + 1248);
        v35 = *(v5 + 1256);
        v36 = *(v5 + 1264);
        *(v5 + 1256) = 0;
        *(v5 + 1264) = 0u;
        v14 = *(v5 + 1280);
        v38 = *(v5 + 1296);
        v37 = v14;
        *(v5 + 1296) = 0;
        *(v5 + 1280) = 0u;
        v15 = *(v5 + 1304);
        v16 = *(v5 + 1320);
        *(v40 + 12) = *(v5 + 1332);
        v39 = v15;
        v40[0] = v16;
        v17 = *(v5 + 1368);
        v40[2] = *(v5 + 1352);
        v41 = v17;
        *(v5 + 1368) = 0;
        *(v5 + 1352) = 0u;
        v42 = *(v5 + 1376);
        v43 = *(v5 + 1392);
        *(v5 + 1376) = 0u;
        *(v5 + 1392) = 0;
        LODWORD(v17) = *(v5 + 1416);
        v44 = *(v5 + 1400);
        v45 = v17;
        v18 = *(v5 + 1424);
        v47 = *(v5 + 1440);
        v46 = v18;
        *(v5 + 1440) = 0;
        *(v5 + 1424) = 0u;
        v19 = *(v5 + 1448);
        v49 = *(v5 + 1456);
        v48 = v19;
        v20 = *(v5 + 1480);
        v50 = *(v5 + 1464);
        v51 = v20;
        *(v5 + 1480) = 0;
        *(v5 + 1464) = 0u;
        sub_529850(&v52, v5 + 1488);
        do
        {
          v21 = v10;
          sub_52E7E8(v5, v10);
          if (v7 < v9)
          {
            break;
          }

          v22 = (2 * v9) | 1;
          v10 = v6 + 2608 * v22;
          v9 = 2 * v9 + 2;
          if (v9 >= a3)
          {
            v9 = v22;
          }

          else if (sub_5337DC((v6 + 2608 * v22), (v10 + 2608)))
          {
            v10 += 2608;
          }

          else
          {
            v9 = v22;
          }

          v5 = v21;
        }

        while (!sub_5337DC(v10, v23));
        sub_52E7E8(v21, v23);
        return sub_52E078(v23);
      }
    }
  }

  return result;
}

int *sub_534054(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v26 = *result;
    v27 = *(result + 2);
    v28 = *(result + 3);
    *(result + 1) = 0u;
    *(result + 1) = 0;
    sub_529850(v29, (result + 8));
    v29[70] = *(v6 + 1152);
    v30 = *(v6 + 1168);
    *(v6 + 1152) = 0u;
    v7 = *(v6 + 1176);
    *(v6 + 1168) = 0u;
    v31 = v7;
    v32 = *(v6 + 1184);
    *(v6 + 1184) = 0u;
    v33 = *(v6 + 1200);
    v34 = *(v6 + 1216);
    v8 = *(v6 + 1224);
    *(v6 + 1216) = 0u;
    *(v6 + 1200) = 0u;
    v35 = v8;
    v36 = *(v6 + 1232);
    *(v6 + 1232) = 0u;
    v37 = *(v6 + 1248);
    v38 = *(v6 + 1256);
    v39 = *(v6 + 1264);
    *(v6 + 1256) = 0;
    *(v6 + 1264) = 0u;
    v9 = *(v6 + 1280);
    v41 = *(v6 + 1296);
    v40 = v9;
    *(v6 + 1296) = 0;
    *(v6 + 1280) = 0u;
    v10 = *(v6 + 1304);
    v11 = *(v6 + 1320);
    *(v43 + 12) = *(v6 + 1332);
    v42 = v10;
    v43[0] = v11;
    v12 = *(v6 + 1368);
    v43[2] = *(v6 + 1352);
    v44 = v12;
    *(v6 + 1368) = 0;
    *(v6 + 1352) = 0u;
    v45 = *(v6 + 1376);
    v46 = *(v6 + 1392);
    *(v6 + 1376) = 0u;
    *(v6 + 1392) = 0;
    LODWORD(v12) = *(v6 + 1416);
    v47 = *(v6 + 1400);
    v48 = v12;
    v13 = *(v6 + 1424);
    v50 = *(v6 + 1440);
    v49 = v13;
    *(v6 + 1440) = 0;
    *(v6 + 1424) = 0u;
    v14 = *(v6 + 1448);
    v52 = *(v6 + 1456);
    v51 = v14;
    v15 = *(v6 + 1480);
    v53 = *(v6 + 1464);
    v54 = v15;
    *(v6 + 1480) = 0;
    *(v6 + 1464) = 0u;
    sub_529850(&v55, v6 + 1488);
    v16 = 0;
    v17 = v4 >> 1;
    v18 = v6;
    do
    {
      v19 = v18 + 2608 * v16;
      v20 = v19 + 2608;
      v21 = (2 * v16) | 1;
      v22 = 2 * v16 + 2;
      if (v22 < a4)
      {
        v23 = v19 + 5216;
        if (sub_5337DC((v19 + 2608), (v19 + 5216)))
        {
          v20 = v23;
          v21 = v22;
        }
      }

      sub_52E7E8(v18, v20);
      v18 = v20;
      v16 = v21;
    }

    while (v21 <= v17);
    if (v20 == a2 - 2608)
    {
      sub_52E7E8(v20, &v26);
    }

    else
    {
      sub_52E7E8(v20, a2 - 2608);
      sub_52E7E8(a2 - 2608, &v26);
      sub_534360(v6, v20 + 2608, a3, 0x1F693A1C451AB30BLL * ((v20 + 2608 - v6) >> 4));
    }

    return sub_52E078(&v26);
  }

  return result;
}

void sub_534338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_52E078(va);
  _Unwind_Resume(a1);
}

void sub_53434C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_52E078(va);
  _Unwind_Resume(a1);
}

uint64_t sub_534360(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = result;
    v6 = (a4 - 2) >> 1;
    v7 = (result + 2608 * v6);
    v8 = (a2 - 2608);
    result = sub_5337DC(v7, (a2 - 2608));
    if (result)
    {
      *v30 = *v8;
      v9 = a2 - 2600;
      v31 = *(a2 - 2600);
      v32 = *(a2 - 2584);
      *(v9 + 8) = 0u;
      *v9 = 0;
      sub_529850(v33, a2 - 2576);
      v10 = a2 - 1456;
      v33[70] = *(a2 - 1456);
      v34 = *(a2 - 1440);
      *v10 = 0;
      *(v10 + 8) = 0u;
      v11 = a2 - 1432;
      v35 = *(a2 - 1432);
      v36 = *(a2 - 1416);
      *v11 = 0u;
      *(v11 + 16) = 0;
      v12 = a2 - 1408;
      v37 = *(a2 - 1408);
      v38 = *(a2 - 1392);
      *(v12 + 16) = 0;
      *v12 = 0u;
      v13 = a2 - 1384;
      v39 = *(a2 - 1384);
      v40 = *(a2 - 1368);
      *v13 = 0u;
      *(v13 + 16) = 0;
      v41 = *(a2 - 1360);
      v14 = a2 - 1352;
      v42 = *(a2 - 1352);
      v43 = *(a2 - 1336);
      *v14 = 0u;
      *(v14 + 16) = 0;
      v15 = a2 - 1328;
      v16 = *(a2 - 1328);
      v45 = *(a2 - 1312);
      v44 = v16;
      *(v15 + 16) = 0;
      *v15 = 0u;
      v17 = *(a2 - 1304);
      v18 = *(a2 - 1288);
      *(v47 + 12) = *(a2 - 1276);
      v46 = v17;
      v47[0] = v18;
      v19 = a2 - 1256;
      v20 = *(a2 - 1240);
      v47[2] = *(a2 - 1256);
      v48 = v20;
      *(v19 + 16) = 0;
      *v19 = 0u;
      v21 = a2 - 1232;
      v49 = *(a2 - 1232);
      v50 = *(a2 - 1216);
      *v21 = 0u;
      *(v21 + 16) = 0;
      LODWORD(v20) = *(a2 - 1192);
      v51 = *(a2 - 1208);
      v52 = v20;
      v22 = a2 - 1184;
      v23 = *(a2 - 1184);
      v54 = *(a2 - 1168);
      v53 = v23;
      *(v22 + 16) = 0;
      *v22 = 0u;
      v24 = *(a2 - 1160);
      v56 = *(a2 - 1152);
      v55 = v24;
      v25 = a2 - 1144;
      v26 = *(a2 - 1128);
      v57 = *(a2 - 1144);
      v58 = v26;
      *(v25 + 16) = 0;
      *v25 = 0u;
      sub_529850(&v59, a2 - 1120);
      v27 = v8;
      do
      {
        v28 = v7;
        sub_52E7E8(v27, v7);
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (v5 + 2608 * v6);
        v29 = sub_5337DC(v7, v30);
        v27 = v28;
      }

      while ((v29 & 1) != 0);
      sub_52E7E8(v28, v30);
      return sub_52E078(v30);
    }
  }

  return result;
}

void sub_5346B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_52F610(v15);
  _Unwind_Resume(a1);
}

void sub_5346DC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a2 + 23);
  v8 = *(a2 + 8);
  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  v10 = *(a3 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 1);
  }

  if (v9 == v10)
  {
    v12 = v7 >= 0 ? a2 : *a2;
    v13 = v11 >= 0 ? a3 : *a3;
    if (!memcmp(v12, v13, v9))
    {
      return;
    }
  }

  if (v7 < 0)
  {
    sub_325C(v26, *a2, v8);
    p_p = &__p;
    if ((*(a3 + 23) & 0x80) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    sub_325C(&__p, *a3, *(a3 + 1));
    goto LABEL_19;
  }

  *v26 = *a2;
  v27 = *(a2 + 16);
  p_p = &__p;
  if ((v11 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  __p = *a3;
  v29 = *(a3 + 2);
LABEL_19:
  v15 = *(v6 + 2064);
  v16 = *(v6 + 2072);
  if (v15 != v16)
  {
    if (v27 >= 0)
    {
      v17 = HIBYTE(v27);
    }

    else
    {
      v17 = v26[1];
    }

    if (v27 >= 0)
    {
      v18 = v26;
    }

    else
    {
      v18 = v26[0];
    }

    if (v29 >= 0)
    {
      v19 = HIBYTE(v29);
    }

    else
    {
      v19 = *(&__p + 1);
    }

    if (v29 < 0)
    {
      p_p = __p;
    }

    while (1)
    {
      v20 = *(v15 + 23);
      v21 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(v15 + 8);
      }

      if (v20 == v17)
      {
        v22 = v21 >= 0 ? v15 : *v15;
        if (!memcmp(v22, v18, v17))
        {
          v23 = *(v15 + 47);
          v24 = v23;
          if ((v23 & 0x80u) != 0)
          {
            v23 = *(v15 + 32);
          }

          if (v23 == v19)
          {
            v25 = v24 >= 0 ? (v15 + 24) : *(v15 + 24);
            if (!memcmp(v25, p_p, v19))
            {
              break;
            }
          }
        }
      }

      v15 += 48;
      if (v15 == v16)
      {
        v15 = v16;
        break;
      }
    }
  }

  **a1 |= v15 == v16;
  if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      return;
    }

LABEL_53:
    operator delete(v26[0]);
    return;
  }

  operator delete(__p);
  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_53;
  }
}

void sub_5348EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5349C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_52F610(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_5349E8(uint64_t a1, const void **a2)
{
  *a1 = 52;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_529078(a1 + 32);
  *(a1 + 1152) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1175) = 0u;
  *(a1 + 1191) = 0u;
  *(a1 + 1207) = 0u;
  *(a1 + 1223) = 0u;
  *(a1 + 1248) = 2;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 13;
  *(a1 + 1312) = 0x7FFFFFFF;
  *(a1 + 1316) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 1328) = 0u;
  *(a1 + 1344) = 0x7FFFFFFF;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1400) = xmmword_22983D0;
  *(a1 + 1416) = 0;
  *(a1 + 1440) = 0;
  *(a1 + 1424) = 0u;
  *(a1 + 1448) = -1;
  *(a1 + 1456) = 0x7FFFFFFF;
  *(a1 + 1480) = 0;
  *(a1 + 1464) = 0u;
  sub_529078(a1 + 1488);
  if ((a1 + 1424) != a2)
  {
    v4 = *(a2 + 23);
    if (*(a1 + 1447) < 0)
    {
      if (v4 >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      if (v4 >= 0)
      {
        v8 = *(a2 + 23);
      }

      else
      {
        v8 = a2[1];
      }

      sub_13B38((a1 + 1424), v7, v8);
    }

    else
    {
      if ((*(a2 + 23) & 0x80) == 0)
      {
        v5 = *a2;
        *(a1 + 1440) = a2[2];
        *(a1 + 1424) = v5;
        return a1;
      }

      sub_13A68((a1 + 1424), *a2, a2[1]);
    }
  }

  return a1;
}

void sub_534B40(_Unwind_Exception *a1)
{
  sub_3A9518(v1 + 1488);
  if (*(v1 + 1487) < 0)
  {
    operator delete(*v5);
    if ((*(v1 + 1447) & 0x80000000) == 0)
    {
LABEL_3:
      sub_528FAC((v1 + 1376));
      if ((*(v1 + 1375) & 0x80000000) == 0)
      {
LABEL_5:
        sub_51B73C(v1 + 1248);
        sub_5294D8((v1 + 1176));
        sub_529020(v1 + 32);
        if (*(v1 + 31) < 0)
        {
          operator delete(*v3);
        }

        _Unwind_Resume(a1);
      }

LABEL_4:
      operator delete(*v4);
      goto LABEL_5;
    }
  }

  else if ((*(v1 + 1447) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  sub_528FAC((v1 + 1376));
  if ((*(v1 + 1375) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

uint64_t *sub_534BE0(uint64_t *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (*result == v3)
  {
LABEL_10:
    v7 = v1[1];
    if (v2 == v7)
    {
      return result;
    }

    goto LABEL_15;
  }

  do
  {
    v4 = v2 + 2608;
    if (v2 + 2608 == v3)
    {
      v2 = v3;
      goto LABEL_10;
    }

    result = sub_531088(v2, v2 + 2608);
    v2 += 2608;
  }

  while (!result);
  v5 = v4 + 2608;
  v6 = v4 - 2608;
  while (v5 != v3)
  {
    result = sub_531088(v6, v5);
    if ((result & 1) == 0)
    {
      v6 += 2608;
      result = sub_52E7E8(v6, v5);
    }

    v5 += 2608;
  }

  v2 = v6 + 2608;
  v7 = v1[1];
  if (v2 != v7)
  {
LABEL_15:
    while (v7 != v2)
    {
      v7 -= 2608;
      result = sub_52E078(v7);
    }

    v1[1] = v2;
  }

  return result;
}

void sub_534CF4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a2 + 23);
  v8 = *(a2 + 8);
  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  v10 = *(a3 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 1);
  }

  if (v9 == v10)
  {
    v12 = v7 >= 0 ? a2 : *a2;
    v13 = v11 >= 0 ? a3 : *a3;
    if (!memcmp(v12, v13, v9))
    {
      return;
    }
  }

  if (v7 < 0)
  {
    sub_325C(v26, *a2, v8);
    p_p = &__p;
    if ((*(a3 + 23) & 0x80) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    sub_325C(&__p, *a3, *(a3 + 1));
    goto LABEL_19;
  }

  *v26 = *a2;
  v27 = *(a2 + 16);
  p_p = &__p;
  if ((v11 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  __p = *a3;
  v29 = *(a3 + 2);
LABEL_19:
  v15 = *(v6 + 2064);
  v16 = *(v6 + 2072);
  if (v15 != v16)
  {
    if (v27 >= 0)
    {
      v17 = HIBYTE(v27);
    }

    else
    {
      v17 = v26[1];
    }

    if (v27 >= 0)
    {
      v18 = v26;
    }

    else
    {
      v18 = v26[0];
    }

    if (v29 >= 0)
    {
      v19 = HIBYTE(v29);
    }

    else
    {
      v19 = *(&__p + 1);
    }

    if (v29 < 0)
    {
      p_p = __p;
    }

    while (1)
    {
      v20 = *(v15 + 23);
      v21 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(v15 + 8);
      }

      if (v20 == v17)
      {
        v22 = v21 >= 0 ? v15 : *v15;
        if (!memcmp(v22, v18, v17))
        {
          v23 = *(v15 + 47);
          v24 = v23;
          if ((v23 & 0x80u) != 0)
          {
            v23 = *(v15 + 32);
          }

          if (v23 == v19)
          {
            v25 = v24 >= 0 ? (v15 + 24) : *(v15 + 24);
            if (!memcmp(v25, p_p, v19))
            {
              break;
            }
          }
        }
      }

      v15 += 48;
      if (v15 == v16)
      {
        v15 = v16;
        break;
      }
    }
  }

  **a1 |= v15 == v16;
  if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      return;
    }

LABEL_53:
    operator delete(v26[0]);
    return;
  }

  operator delete(__p);
  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_53;
  }
}

void sub_534F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_534F20(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a2 + 23);
  v8 = *(a2 + 8);
  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  v10 = *(a3 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 1);
  }

  if (v9 == v10)
  {
    v12 = v7 >= 0 ? a2 : *a2;
    v13 = v11 >= 0 ? a3 : *a3;
    if (!memcmp(v12, v13, v9))
    {
      return;
    }
  }

  if (v7 < 0)
  {
    sub_325C(v26, *a2, v8);
    p_p = &__p;
    if ((*(a3 + 23) & 0x80) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    sub_325C(&__p, *a3, *(a3 + 1));
    goto LABEL_19;
  }

  *v26 = *a2;
  v27 = *(a2 + 16);
  p_p = &__p;
  if ((v11 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  __p = *a3;
  v29 = *(a3 + 2);
LABEL_19:
  v15 = *(v6 + 2064);
  v16 = *(v6 + 2072);
  if (v15 != v16)
  {
    if (v27 >= 0)
    {
      v17 = HIBYTE(v27);
    }

    else
    {
      v17 = v26[1];
    }

    if (v27 >= 0)
    {
      v18 = v26;
    }

    else
    {
      v18 = v26[0];
    }

    if (v29 >= 0)
    {
      v19 = HIBYTE(v29);
    }

    else
    {
      v19 = *(&__p + 1);
    }

    if (v29 < 0)
    {
      p_p = __p;
    }

    while (1)
    {
      v20 = *(v15 + 23);
      v21 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(v15 + 8);
      }

      if (v20 == v17)
      {
        v22 = v21 >= 0 ? v15 : *v15;
        if (!memcmp(v22, v18, v17))
        {
          v23 = *(v15 + 47);
          v24 = v23;
          if ((v23 & 0x80u) != 0)
          {
            v23 = *(v15 + 32);
          }

          if (v23 == v19)
          {
            v25 = v24 >= 0 ? (v15 + 24) : *(v15 + 24);
            if (!memcmp(v25, p_p, v19))
            {
              break;
            }
          }
        }
      }

      v15 += 48;
      if (v15 == v16)
      {
        v15 = v16;
        break;
      }
    }
  }

  **a1 |= v15 == v16;
  if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      return;
    }

LABEL_53:
    operator delete(v26[0]);
    return;
  }

  operator delete(__p);
  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_53;
  }
}

void sub_535130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5383B8(_Unwind_Exception *a1)
{
  if (qword_2791588)
  {
    qword_2791590 = qword_2791588;
    operator delete(qword_2791588);
  }

  _Unwind_Resume(a1);
}

void sub_538680()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = sub_527724(v0, v1);
  sub_5678A8(v6 + 1576, v4, v2);
  sub_5597A0(v5 + 3168);
}

void sub_538FE0(_Unwind_Exception *a1)
{
  sub_1F1A8(v3 - 112);
  sub_1AB28(v1 + v2);
  sub_1F1A8(v1 + 5872);
  sub_559B98(v1 + 3168);
  sub_6E3B8((v1 + 3152));
  sub_528AB4(v1 + 1576);
  sub_528AB4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_5390C4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0uLL;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a2[1];
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *(a1 + 24);
  *(a1 + 16) = v6;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  memcpy((a1 + 32), a2 + 2, 0x92CuLL);
  v8 = (a1 + 2384);
  if (*(a1 + 2407) < 0)
  {
    operator delete(*v8);
  }

  v9 = a2[149];
  *(a1 + 2400) = *(a2 + 300);
  *v8 = v9;
  *(a2 + 2407) = 0;
  *(a2 + 2384) = 0;
  v11 = *(a2 + 2504);
  v10 = *(a2 + 2520);
  v12 = *(a2 + 2488);
  *(a1 + 2472) = *(a2 + 2472);
  *(a1 + 2488) = v12;
  *(a1 + 2504) = v11;
  *(a1 + 2520) = v10;
  v14 = *(a2 + 2440);
  v13 = *(a2 + 2456);
  v15 = *(a2 + 2424);
  *(a1 + 2408) = *(a2 + 2408);
  *(a1 + 2424) = v15;
  *(a1 + 2440) = v14;
  *(a1 + 2456) = v13;
  v16 = *(a2 + 2536);
  v17 = *(a2 + 2552);
  v18 = *(a2 + 2584);
  *(a1 + 2568) = *(a2 + 2568);
  *(a1 + 2584) = v18;
  *(a1 + 2536) = v16;
  *(a1 + 2552) = v17;
  *(a1 + 2600) = *(a2 + 650);
  v19 = *(a1 + 2608);
  if (v19)
  {
    *(a1 + 2616) = v19;
    operator delete(v19);
    *(a1 + 2608) = 0;
    *(a1 + 2616) = 0;
    *(a1 + 2624) = 0;
  }

  *(a1 + 2608) = a2[163];
  *(a1 + 2624) = *(a2 + 328);
  *(a2 + 327) = 0;
  *(a2 + 328) = 0;
  *(a2 + 326) = 0;
  *(a1 + 2632) = *(a2 + 658);
  v20 = *(a1 + 2640);
  if (v20)
  {
    *(a1 + 2648) = v20;
    operator delete(v20);
    *(a1 + 2640) = 0;
    *(a1 + 2648) = 0;
    *(a1 + 2656) = 0;
  }

  *(a1 + 2640) = a2[165];
  *(a1 + 2656) = *(a2 + 332);
  *(a2 + 330) = 0;
  *(a2 + 331) = 0;
  *(a2 + 332) = 0;
  v21 = (a1 + 2664);
  if (*(a1 + 2687) < 0)
  {
    operator delete(*v21);
  }

  v22 = *(a2 + 2664);
  *(a1 + 2680) = *(a2 + 335);
  *v21 = v22;
  *(a2 + 2687) = 0;
  *(a2 + 2664) = 0;
  *(a1 + 2688) = *(a2 + 2688);
  *(a1 + 2696) = *(a2 + 2696);
  return a1;
}

void sub_5392D4(uint64_t a1, uint64_t *a2, void *a3)
{
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v5 = *a2;
  v6 = a2[1];
  v49 = &v57;
  v50 = 0;
  v7 = (v6 - v5);
  if (v6 != v5)
  {
    if ((0x1F693A1C451AB30BLL * (v7 >> 4)) < 0x1920FB49D0E229)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = 0x1F693A1C451AB30BLL * ((v5 - v6) >> 4);
  if (-v7 >= 1)
  {
    v8 = v13;
    while (1)
    {
      v9 = operator new(2608 * v8, &std::nothrow);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_11;
      }
    }

    v12 = v9;
  }

  else
  {
    v12 = 0;
    v8 = 0;
  }

LABEL_11:
  sub_55F934(v7, 0, &v49, v13, v12, v8);
  if (v12)
  {
    operator delete(v12);
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v14 = a2[1] - *a2;
  if (v14)
  {
    v15 = 0;
    v16 = 0x1F693A1C451AB30BLL * (v14 >> 4);
    v17 = (a3 + 133);
    v18 = -1;
    while (1)
    {
      v19 = *a2 + 2608 * v15;
      v20 = *v19;
      if (*v19 != 45 && v20 != 52 && *(v19 + 1448) == -1 && (v20 & 0xFFFFFFFE) != 0x30 && *(v19 + 1452) == -1)
      {
        break;
      }

      v22 = *(v19 + 1304);
      if ((v22 - 11) < 2)
      {
        break;
      }

      if ((*(v19 + 1447) & 0x8000000000000000) != 0)
      {
        if (*(v19 + 1432))
        {
          break;
        }
      }

      else if (*(v19 + 1447))
      {
        break;
      }

      if (*(v19 + 1176) != *(v19 + 1184) || *(v19 + 1200) != *(v19 + 1208))
      {
        goto LABEL_63;
      }

      v31 = v22 - 2;
      v32 = *(v19 + 1224) == *(v19 + 1232) && v31 >= 9;
      if (!v32 || *(v19 + 1248) == 1 && *(v19 + 1256) != *(v19 + 1264))
      {
        goto LABEL_63;
      }

      if (sub_659540(v19 + 32))
      {
        v33 = *(v19 + 1175);
        if (v33 < 0)
        {
          v33 = *(v19 + 1160);
        }

        if (v33)
        {
          goto LABEL_63;
        }
      }

      if (*(v19 + 1448) == -1 && *(v19 + 1452) == -1 && !sub_659BD0(v19 + 1488) && (*v19 & 0xFFFFFFFE) != 0x30)
      {
        sub_53C0EC(a1, v19, &v49);
        v36 = a3[134];
        if (v36 >= a3[135])
        {
          v38 = sub_55A36C(v17, &v49);
        }

        else
        {
          sub_55A4D0(v36, &v49);
          v38 = (v37 + 496);
        }

        a3[134] = v38;
        sub_55A8B4(&v49);
      }

      else
      {
LABEL_63:
        if (v18 < 0)
        {
          v18 = -1108378657 * ((a3[134] - a3[133]) >> 4);
          v34 = v52;
          if (v52 >= v53)
          {
LABEL_70:
            v52 = sub_52D920(&v51, v19);
            goto LABEL_31;
          }
        }

        else
        {
          v34 = v52;
          if (v52 >= v53)
          {
            goto LABEL_70;
          }
        }

        sub_52DA74(v34, v19);
        v52 = v34 + 2608;
      }

LABEL_31:
      v25 = 0x1F693A1C451AB30BLL * ((a2[1] - *a2) >> 4) - 1;
      if (v15 == v25 || v15 < v25 && (*v19 - 50) < 0xFFFFFFFE == ((*(*a2 + 2608 * v15 + 2608) & 0xFFFFFFFE) == 48))
      {
        if ((0x1F693A1C451AB30BLL * ((v52 - v51) >> 4)) > 1)
        {
          goto LABEL_35;
        }

        if (v51 == v52)
        {
          if (v54 != v55)
          {
            sub_53BBA8(a1, &v54, &v49);
          }
        }

        else
        {
          if (v54 == v55)
          {
            v35 = *v17;
            sub_53C0EC(a1, v51, &v49);
            sub_53C468(v17, &v35[496 * v18], &v49);
          }

          else
          {
LABEL_35:
            v26 = *v17;
            sub_53C724(a1, &v51, &v54, &v49);
            sub_53C468(v17, &v26[496 * v18], &v49);
          }

          sub_55A8B4(&v49);
        }

        v28 = v54;
        v27 = v55;
        if (v55 != v54)
        {
          do
          {
            v27 = sub_52E078(v27 - 2608);
          }

          while (v27 != v28);
        }

        v55 = v28;
        v30 = v51;
        v29 = v52;
        if (v52 != v51)
        {
          do
          {
            v29 = sub_52E078(v29 - 2608);
          }

          while (v29 != v30);
        }

        v52 = v30;
        v18 = -1;
      }

      if (++v15 == v16)
      {
        v39 = v51;
        if (v51)
        {
          v40 = v52;
          v41 = v51;
          if (v52 != v51)
          {
            do
            {
              v40 = sub_52E078(v40 - 2608);
            }

            while (v40 != v39);
            v41 = v51;
          }

          v52 = v39;
          operator delete(v41);
        }

        goto LABEL_80;
      }
    }

    v23 = v55;
    if (v55 >= v56)
    {
      v24 = sub_52D920(&v54, *a2 + 2608 * v15);
    }

    else
    {
      sub_52DA74(v55, *a2 + 2608 * v15);
      v24 = v23 + 2608;
    }

    v55 = v24;
    goto LABEL_31;
  }

LABEL_80:
  v42 = v54;
  if (v54)
  {
    v43 = v55;
    v44 = v54;
    if (v55 != v54)
    {
      do
      {
        v43 = sub_52E078(v43 - 2608);
      }

      while (v43 != v42);
      v44 = v54;
    }

    v55 = v42;
    operator delete(v44);
  }

  v45 = v57;
  if (v57)
  {
    v46 = v58;
    v47 = v57;
    if (v58 != v57)
    {
      do
      {
        v46 = sub_52E078(v46 - 2608);
      }

      while (v46 != v45);
      v47 = v57;
    }

    v58 = v45;
    operator delete(v47);
  }
}

void sub_5398C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_55A8B4(va);
  sub_518B48((v5 - 160));
  sub_518B48((v5 - 136));
  sub_518B48((v5 - 112));
  _Unwind_Resume(a1);
}

void sub_539960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v7)
  {
    v10 = v6 - 2608;
    v11 = -v7;
    do
    {
      v10 = sub_52E078(v10) - 2608;
      v11 += 2608;
    }

    while (v11);
  }

  *(v8 - 104) = v5;
  sub_55F8BC(va);
  _Unwind_Resume(a1);
}

void ***sub_539994(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_559C9C(v7);
  if (*(a1 + 1463) == 1)
  {
    sub_5392D4(a1, a2, v7);
  }

  else if (*(a1 + 1415) == 1)
  {
    sub_539A4C(a1, a2, v7);
  }

  else
  {
    sub_539EBC(a1, a2, v7);
  }

  sub_68DEC8(a3, v7);
  return sub_559E70(v7);
}

void sub_539A4C(uint64_t a1, uint64_t *a2, void *a3)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    return;
  }

  do
  {
    if (!sub_51BBA8(v3))
    {
      goto LABEL_5;
    }

    _X8 = v3 + 3912;
    __asm { PRFM            #0, [X8] }

    if ((*(v3 + 1304) - 2) <= 8)
    {
      sub_53AA04(a1, v3, v27);
    }

    v14 = sub_659540(v3 + 32);
    _X8 = v3 + 3783;
    __asm { PRFM            #0, [X8] }

    if (v14)
    {
      if ((*(v3 + 1175) & 0x8000000000000000) != 0)
      {
        if (*(v3 + 1160))
        {
LABEL_12:
          sub_53AFB4(a1, v3, v27);
        }
      }

      else if (*(v3 + 1175))
      {
        goto LABEL_12;
      }
    }

    _X9 = v3 + 4056;
    _X8 = v3 + 2608;
    __asm { PRFM            #0, [X8] }

    v20 = *v3;
    __asm { PRFM            #0, [X9] }

    if (*v3 != 52)
    {
      if (v20 == 45)
      {
        sub_53D0D0(a1, v3, v27);
      }

      if (*(v3 + 1448) == -1 && (v20 & 0xFFFFFFFE) != 0x30 && *(v3 + 1452) == -1)
      {
        goto LABEL_26;
      }
    }

    v22 = *(v3 + 1304);
    if ((v22 - 11) < 2)
    {
LABEL_26:
      v23 = v29;
      if (v29 >= v30)
      {
        v7 = sub_52D920(&v28, v3);
      }

      else
      {
        sub_52DA74(v29, v3);
        v7 = v23 + 2608;
      }

      v29 = v7;
      goto LABEL_5;
    }

    if ((*(v3 + 1447) & 0x8000000000000000) != 0)
    {
      if (*(v3 + 1432))
      {
        goto LABEL_26;
      }
    }

    else if (*(v3 + 1447))
    {
      goto LABEL_26;
    }

    if (*(v3 + 1176) != *(v3 + 1184) || *(v3 + 1200) != *(v3 + 1208) || *(v3 + 1224) != *(v3 + 1232))
    {
      sub_53B394(a1, v3, v27);
    }

    if (*(v3 + 1248) != 2)
    {
      if (sub_4D1F6C(a3 + 6))
      {
        sub_53B6C0(a1, v3, v27);
      }

      sub_53B6C0(a1, v3, v27);
    }

    if (v22 != 13)
    {
      sub_53D0D0(a1, v3, v27);
    }

LABEL_5:
    v3 += 2608;
  }

  while (v3 != v4);
  v24 = v28;
  if (v28 != v29)
  {
    sub_53BBA8(a1, &v28, v27);
  }

  if (v28)
  {
    v25 = v29;
    v26 = v28;
    if (v29 != v28)
    {
      do
      {
        v25 = sub_52E078(v25 - 2608);
      }

      while (v25 != v24);
      v26 = v28;
    }

    v29 = v24;
    operator delete(v26);
  }
}

void sub_539DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_55A8B4(va);
  sub_518B48((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_539EBC(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v3 = a2[1] - *a2;
  if (!v3)
  {
    return;
  }

  v7 = 0;
  v8 = 0x1F693A1C451AB30BLL * (v3 >> 4);
  do
  {
    v10 = (*a2 + 2608 * v7);
    if (!sub_51BBA8(v10))
    {
      goto LABEL_5;
    }

    if ((*v10 - 40) <= 4)
    {
      v11 = v43;
      if (v43 >= v44)
      {
        v9 = sub_52D920(&v42, v10);
      }

      else
      {
        sub_52DA74(v43, v10);
        v9 = v11 + 2608;
      }

      v43 = v9;
      goto LABEL_5;
    }

    sub_5678AC(a1 + 1576, v10, &v34);
    sub_67F320(&v34, v40);
    if (v41 < 0)
    {
      if (v40[1])
      {
        goto LABEL_15;
      }

      operator delete(v40[0]);
      v12 = v37;
      if (!v37)
      {
        goto LABEL_38;
      }

      while (1)
      {
LABEL_26:
        v17 = *v12;
        if (*(v12 + 191) < 0)
        {
          operator delete(v12[21]);
          if (*(v12 + 159) < 0)
          {
            goto LABEL_33;
          }

LABEL_28:
          if ((*(v12 + 135) & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

LABEL_34:
          operator delete(v12[14]);
          if (*(v12 + 95) < 0)
          {
            goto LABEL_35;
          }

LABEL_30:
          if ((*(v12 + 63) & 0x80000000) == 0)
          {
            goto LABEL_36;
          }

LABEL_24:
          operator delete(v12[5]);
          if (*(v12 + 39) < 0)
          {
            goto LABEL_37;
          }

LABEL_25:
          operator delete(v12);
          v12 = v17;
          if (!v17)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if ((*(v12 + 159) & 0x80000000) == 0)
          {
            goto LABEL_28;
          }

LABEL_33:
          operator delete(v12[17]);
          if (*(v12 + 135) < 0)
          {
            goto LABEL_34;
          }

LABEL_29:
          if ((*(v12 + 95) & 0x80000000) == 0)
          {
            goto LABEL_30;
          }

LABEL_35:
          operator delete(v12[9]);
          if (*(v12 + 63) < 0)
          {
            goto LABEL_24;
          }

LABEL_36:
          if ((*(v12 + 39) & 0x80000000) == 0)
          {
            goto LABEL_25;
          }

LABEL_37:
          operator delete(v12[2]);
          operator delete(v12);
          v12 = v17;
          if (!v17)
          {
            goto LABEL_38;
          }
        }
      }
    }

    if (!v41)
    {
      v12 = v37;
      if (v37)
      {
        goto LABEL_26;
      }

LABEL_38:
      v18 = __p;
      __p = 0;
      if (v18)
      {
        operator delete(v18);
      }

      v19 = v34;
      if (v34)
      {
        v20 = v35;
        v21 = v34;
        if (v35 == v34)
        {
          goto LABEL_74;
        }

        do
        {
          v22 = *(v20 - 1);
          v20 -= 3;
          if (v22 < 0)
          {
            operator delete(*v20);
          }
        }

        while (v20 != v19);
LABEL_73:
        v21 = v34;
LABEL_74:
        v35 = v19;
        operator delete(v21);
        goto LABEL_5;
      }

      goto LABEL_5;
    }

LABEL_15:
    sub_53A484(a1, 1, &v34);
    v13 = sub_58BBC(&v34);
    sub_65DED0((a1 + 3168), v40, v13, 0, &v38);
    v14 = *(a3 + 8);
    if (v14 >= *(a3 + 16))
    {
      *(a3 + 8) = sub_1CEE8(a3, &v38);
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (SHIBYTE(v39) < 0)
      {
        sub_325C(*(a3 + 8), v38, *(&v38 + 1));
      }

      else
      {
        v15 = v38;
        *(v14 + 16) = v39;
        *v14 = v15;
      }

      *(a3 + 8) = v14 + 24;
      *(a3 + 8) = v14 + 24;
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
LABEL_19:
        if (v41 < 0)
        {
          goto LABEL_49;
        }

        goto LABEL_20;
      }
    }

    operator delete(v38);
    if (v41 < 0)
    {
LABEL_49:
      operator delete(v40[0]);
      v16 = v37;
      if (!v37)
      {
        goto LABEL_65;
      }

      while (1)
      {
LABEL_53:
        v23 = *v16;
        if (*(v16 + 191) < 0)
        {
          operator delete(v16[21]);
          if (*(v16 + 159) < 0)
          {
            goto LABEL_60;
          }

LABEL_55:
          if ((*(v16 + 135) & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

LABEL_61:
          operator delete(v16[14]);
          if (*(v16 + 95) < 0)
          {
            goto LABEL_62;
          }

LABEL_57:
          if ((*(v16 + 63) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

LABEL_51:
          operator delete(v16[5]);
          if (*(v16 + 39) < 0)
          {
            goto LABEL_64;
          }

LABEL_52:
          operator delete(v16);
          v16 = v23;
          if (!v23)
          {
            goto LABEL_65;
          }
        }

        else
        {
          if ((*(v16 + 159) & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_60:
          operator delete(v16[17]);
          if (*(v16 + 135) < 0)
          {
            goto LABEL_61;
          }

LABEL_56:
          if ((*(v16 + 95) & 0x80000000) == 0)
          {
            goto LABEL_57;
          }

LABEL_62:
          operator delete(v16[9]);
          if (*(v16 + 63) < 0)
          {
            goto LABEL_51;
          }

LABEL_63:
          if ((*(v16 + 39) & 0x80000000) == 0)
          {
            goto LABEL_52;
          }

LABEL_64:
          operator delete(v16[2]);
          operator delete(v16);
          v16 = v23;
          if (!v23)
          {
            goto LABEL_65;
          }
        }
      }
    }

LABEL_20:
    v16 = v37;
    if (v37)
    {
      goto LABEL_53;
    }

LABEL_65:
    v24 = __p;
    __p = 0;
    if (v24)
    {
      operator delete(v24);
    }

    v19 = v34;
    if (v34)
    {
      v25 = v35;
      v21 = v34;
      if (v35 == v34)
      {
        goto LABEL_74;
      }

      do
      {
        v26 = *(v25 - 1);
        v25 -= 3;
        if (v26 < 0)
        {
          operator delete(*v25);
        }
      }

      while (v25 != v19);
      goto LABEL_73;
    }

LABEL_5:
    ++v7;
  }

  while (v7 != v8);
  v27 = v42;
  if (v42 != v43)
  {
    sub_543738(&v42, &v34);
    v28 = sub_53A634(&v34, 0);
    v29 = *(a3 + 8);
    if (v29 >= *(a3 + 16))
    {
      v31 = sub_1CEE8(a3, v28);
    }

    else
    {
      if (*(v28 + 23) < 0)
      {
        sub_325C(*(a3 + 8), *v28, *(v28 + 8));
      }

      else
      {
        v30 = *v28;
        *(v29 + 16) = *(v28 + 16);
        *v29 = v30;
      }

      v31 = v29 + 24;
      *(a3 + 8) = v29 + 24;
    }

    *(a3 + 8) = v31;
    sub_53A868(&v34);
    v27 = v42;
  }

  if (v27)
  {
    v32 = v43;
    v33 = v27;
    if (v43 != v27)
    {
      do
      {
        v32 = sub_52E078(v32 - 2608);
      }

      while (v32 != v27);
      v33 = v42;
    }

    v43 = v27;
    operator delete(v33);
  }
}

void sub_53A384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 8) = v4;
  sub_53A868(va);
  sub_518B48((v5 - 104));
  _Unwind_Resume(a1);
}

void sub_53A3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(va);
  sub_518B48((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_53A3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 8) = v4;
  if (*(v5 - 129) < 0)
  {
    operator delete(*(v5 - 152));
  }

  if (*(v5 - 105) < 0)
  {
    operator delete(*(v5 - 128));
  }

  sub_53A58C(va);
  sub_518B48((v5 - 104));
  _Unwind_Resume(a1);
}

void sub_53A484(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    *__p = 0u;
    v8 = 0u;
    v9 = 1065353216;
    sub_65DED0((a1 + 3168), "Period", __p, 0, v10);
    v4 = v8;
    if (v8)
    {
      do
      {
        v5 = *v4;
        sub_55F7FC((v4 + 2));
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = __p[0];
    __p[0] = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    v11 = 0;
    LOBYTE(v10[0]) = 0;
  }

  sub_67ECF8(a3, "{OptionalPeriod}", v10);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_53A570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_53A58C(void ***a1)
{
  v2 = a1[5];
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_55F7FC((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = a1[1];
    v7 = *a1;
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *a1;
    }

    a1[1] = v5;
    operator delete(v7);
  }

  return a1;
}

unint64_t sub_53A634(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
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
    std::to_string(&v15, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
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

  return *a1 + 24 * a2;
}

void sub_53A788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

uint64_t sub_53A868(uint64_t a1)
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
    for (i = *(a1 + 32); i != v11; sub_55A0A0(a1 + 24, i))
    {
      i -= 144;
    }

    *(a1 + 32) = v11;
    operator delete(*(a1 + 24));
  }

  v13 = *a1;
  if (*a1)
  {
    v14 = *(a1 + 8);
    v15 = *a1;
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = *a1;
    }

    *(a1 + 8) = v13;
    operator delete(v15);
  }

  return a1;
}

void sub_53AEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, uint64_t a63, ...)
{
  va_start(va, a63);
  sub_53A58C(va);
  sub_53A58C((v64 - 120));
  sub_55A8B4(v63);
  _Unwind_Resume(a1);
}

void sub_53B2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  sub_55D550(&a9);
  if (a62 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C((v63 - 120));
  sub_55A8B4(v62);
  _Unwind_Resume(a1);
}

void sub_53B61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_51B6E0(va);
  sub_55A8B4(v3);
  _Unwind_Resume(a1);
}

void sub_53B684(_Unwind_Exception *a1)
{
  if (v3)
  {
    v6 = v2 - 168;
    v7 = -v3;
    do
    {
      v6 = sub_52A624(v6) - 168;
      v7 += 168;
    }

    while (v7);
  }

  sub_52A6FC((v4 - 104));
  sub_55A8B4(v1);
  _Unwind_Resume(a1);
}

void sub_53B834(_Unwind_Exception *a1)
{
  sub_53DC88((v2 - 104));
  sub_55A8B4(v1);
  _Unwind_Resume(a1);
}

void sub_53B88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_53DC88((v16 - 104));
  sub_55A8B4(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_53B8B8(uint64_t a1, uint64_t a2)
{
  sub_53D784(a1, a2);
  v4 = (a1 + 168);
  v5 = *(a1 + 168);
  *(a1 + 160) = *(a2 + 160);
  if (v5)
  {
    v6 = *(a1 + 176);
    v7 = v5;
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 3);
        if (v8)
        {
          v9 = *(v6 - 2);
          v10 = *(v6 - 3);
          if (v9 != v8)
          {
            do
            {
              v11 = *(v9 - 1);
              v9 -= 3;
              if (v11 < 0)
              {
                operator delete(*v9);
              }
            }

            while (v9 != v8);
            v10 = *(v6 - 3);
          }

          *(v6 - 2) = v8;
          operator delete(v10);
        }

        v12 = v6 - 800;
        v13 = *(v6 - 8);
        if (v13 != -1)
        {
          (off_266B240[v13])(&v25, v6 - 800);
        }

        *(v6 - 8) = -1;
        v6 -= 800;
      }

      while (v12 != v5);
      v7 = *v4;
    }

    *(a1 + 176) = v5;
    operator delete(v7);
    *v4 = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  sub_53D784(a1 + 192, a2 + 192);
  v14 = *(a1 + 384);
  v15 = *(a2 + 384);
  if (v14 == -1)
  {
    if (v15 == -1)
    {
      goto LABEL_22;
    }
  }

  else if (v15 == -1)
  {
    (off_266B1F0[v14])(&v24, a1 + 352);
    *(a1 + 384) = -1;
    goto LABEL_22;
  }

  v23 = a1 + 352;
  (off_266B280[v15])(&v23);
LABEL_22:
  *(a1 + 392) = *(a2 + 392);
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  v16 = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 400) = v16;
  *(a2 + 423) = 0;
  *(a2 + 400) = 0;
  *(a1 + 424) = *(a2 + 424);
  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  v17 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 432) = v17;
  *(a2 + 455) = 0;
  *(a2 + 432) = 0;
  *(a1 + 456) = *(a2 + 456);
  v18 = *(a1 + 464);
  if (v18)
  {
    v19 = *(a1 + 472);
    v20 = *(a1 + 464);
    if (v19 != v18)
    {
      do
      {
        v21 = *(v19 - 1);
        v19 -= 3;
        if (v21 < 0)
        {
          operator delete(*v19);
        }
      }

      while (v19 != v18);
      v20 = *(a1 + 464);
    }

    *(a1 + 472) = v18;
    operator delete(v20);
    *(a1 + 464) = 0;
    *(a1 + 472) = 0;
    *(a1 + 480) = 0;
  }

  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a2 + 464) = 0;
  *(a2 + 472) = 0;
  *(a2 + 480) = 0;
  *(a1 + 488) = *(a2 + 488);
  return a1;
}

BOOL sub_53BB38(_DWORD *a1)
{
  v1 = a1[352];
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = a1[350];
      if (v2 == 0x7FFFFFFF)
      {
        return 0;
      }

      if (a1[351] < v2)
      {
        return a1[353] != 0x7FFFFFFF;
      }
    }
  }

  else
  {
    v4 = a1[350];
    if (v4 != 0x7FFFFFFF)
    {
      return a1[351] < v4;
    }
  }

  return 0;
}

void sub_53BBA8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(a3);
  *(a3 + 168) = 0;
  *(a3 + 160) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  sub_64B998(a3 + 192);
  *(a3 + 384) = 0;
  *(a3 + 392) = -1;
  *(a3 + 395) = -1;
  *(a3 + 407) = 0;
  *(a3 + 415) = 0;
  *(a3 + 399) = 0;
  *(a3 + 423) = 0;
  *(a3 + 440) = 0;
  *(a3 + 448) = 0;
  *(a3 + 432) = 0;
  *(a3 + 456) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v6 = *a2;
  v7 = a2[1];
  while (v6 != v7)
  {
    if ((*v6 - 40) > 4)
    {
      v10 = v23;
      if (v23 >= v24)
      {
        v8 = sub_52D920(&v22, v6);
      }

      else
      {
        sub_52DA74(v23, v6);
        v8 = v10 + 2608;
      }

      v23 = v8;
      v6 += 652;
    }

    else
    {
      v9 = v20;
      if (v20 >= v21)
      {
        v20 = sub_52D920(&v19, v6);
      }

      else
      {
        sub_52DA74(v20, v6);
        v20 = v9 + 2608;
      }

      v6 += 652;
    }
  }

  sub_542FD4(a1, &v22, &v19, __p);
  sub_53D784(a3, __p);
  sub_53A868(__p);
  v11 = *(a3 + 176);
  if (v11 >= *(a3 + 184))
  {
    v12 = sub_55D320((a3 + 168));
  }

  else
  {
    *(v11 + 768) = 0;
    *(v11 + 776) = 0;
    *(v11 + 792) = 0;
    v12 = v11 + 800;
    *(v11 + 784) = 0;
  }

  *(a3 + 176) = v12;
  sub_54317C(a1, a2, __p);
  v13 = *(a3 + 176);
  v14 = v13 - 800;
  v15 = *(v13 - 32);
  if (v15 != 2)
  {
    if (v15)
    {
      sub_5AF20();
    }

    *(v13 - 32) = -1;
    v14 = sub_55D480(v14);
    *(v13 - 32) = 2;
  }

  sub_53D784(v14, __p);
  sub_53A868(__p);
  sub_542FD4(a1, &v22, &v19, __p);
  v16 = *(a3 + 176);
  v17 = *(v16 - 32);
  if (v17 != 2)
  {
    if (v17)
    {
      sub_5AF20();
    }

    *(v16 - 32) = -1;
    sub_55D480(v16 - 800);
    *(v16 - 32) = 2;
  }

  sub_53D784(v16 - 640, __p);
  sub_53A868(__p);
  *(a3 + 160) = 0;
  sub_53E044(a1, *a2);
}

void sub_53C024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_518B48((v16 - 120));
  sub_518B48((v16 - 96));
  sub_55A8B4(v15);
  _Unwind_Resume(a1);
}

void sub_53C0EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(a3);
  *(a3 + 168) = 0;
  *(a3 + 160) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  sub_64B998(a3 + 192);
  *(a3 + 384) = 0;
  *(a3 + 392) = -1;
  *(a3 + 395) = -1;
  *(a3 + 407) = 0;
  *(a3 + 415) = 0;
  *(a3 + 399) = 0;
  *(a3 + 423) = 0;
  *(a3 + 440) = 0;
  *(a3 + 448) = 0;
  *(a3 + 432) = 0;
  *(a3 + 456) = 0;
  v6 = *(a2 + 1304) - 2;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  if (v6 <= 8)
  {
    sub_53AA04(a1, a2, __p);
  }

  if (sub_659540(a2 + 32))
  {
    v7 = *(a2 + 1175);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 1160);
    }

    if (v7)
    {
      sub_53AFB4(a1, a2, __p);
    }
  }

  if (*a2 == 45)
  {
    sub_53D0D0(a1, a2, __p);
  }

  if (*(a2 + 1176) != *(a2 + 1184) || *(a2 + 1200) != *(a2 + 1208) || *(a2 + 1224) != *(a2 + 1232))
  {
    sub_53B394(a1, a2, __p);
  }

  if (*(a2 + 1248) != 2)
  {
    sub_53B6C0(a1, a2, __p);
  }

  if (*(a2 + 1304) != 13)
  {
    sub_53D0D0(a1, a2, __p);
  }

  if (*(a2 + 1376) != *(a2 + 1384))
  {
    sub_53DCEC(a1, a2, __p);
  }

  if (sub_53BB38(a2))
  {
    sub_53D0D0(a1, a2, __p);
  }

  v8 = *(a2 + 1447);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 1432);
  }

  if (v8)
  {
    sub_53D0D0(a1, a2, __p);
  }

  if (*(a2 + 1448) != -1 || *(a2 + 1452) != -1)
  {
    sub_5E00FC(__p);
  }

  if (*a2 == 49)
  {
    sub_53F6A4(a1);
  }

  if (*a2 == 48)
  {
    sub_53EB88(a1);
  }

  if (sub_659BD0(a2 + 1488))
  {
    sub_53FE3C(a1, a2, __p);
  }

  if (*(a3 + 464) == *(a3 + 472))
  {
    sub_53D408(a2, __p);
    sub_794D4(a3 + 464, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }
}

void sub_53C44C(_Unwind_Exception *a1)
{
  sub_55AA68(v2);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

char *sub_53C468(char **a1, char *a2, uint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v13 = *a1;
    v14 = 0xEF7BDEF7BDEF7BDFLL * ((v7 - *a1) >> 4) + 1;
    if (v14 > 0x84210842108421)
    {
      sub_1794();
    }

    v15 = 0xEF7BDEF7BDEF7BDFLL * ((v6 - v13) >> 4);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x42108421084210)
    {
      v16 = 0x84210842108421;
    }

    else
    {
      v16 = v14;
    }

    v39 = a1;
    if (v16)
    {
      if (v16 <= 0x84210842108421)
      {
        operator new();
      }

      sub_1808();
    }

    v35 = 0;
    v36 = 16 * ((a2 - v13) >> 4);
    v37 = v36;
    v38 = 0;
    sub_55ACE4(&v35, a3);
    v17 = v36;
    v18 = a1[1];
    v19 = v36;
    v20 = v4;
    if (v18 != v4)
    {
      v21 = v37;
      v22 = v4;
      do
      {
        sub_55A4D0(v21, v22);
        v22 += 496;
        v21 = v23 + 496;
      }

      while (v22 != v18);
      v24 = v4;
      do
      {
        v24 = sub_55A8B4(v24) + 496;
      }

      while (v24 != v18);
      v20 = a1[1];
      v19 = v36;
    }

    v25 = &v37[v20 - v4];
    v37 = v25;
    a1[1] = v4;
    v26 = *a1;
    v27 = (v19 + *a1 - v4);
    if (*a1 != v4)
    {
      v28 = *a1;
      v29 = (v19 + *a1 - v4);
      do
      {
        sub_55A4D0(v29, v28);
        v28 += 496;
        v29 = (v30 + 496);
      }

      while (v28 != v4);
      do
      {
        sub_55A8B4(v26);
        v26 += 496;
      }

      while (v26 != v4);
      v26 = *a1;
      v25 = v37;
    }

    *a1 = v27;
    a1[1] = v25;
    v31 = a1[2];
    a1[2] = v38;
    v37 = v26;
    v38 = v31;
    v35 = v26;
    v36 = v26;
    if (v26)
    {
      operator delete(v26);
    }

    return v17;
  }

  else
  {
    if (a2 != v7)
    {
      v8 = a2 + 496;
      v9 = (v7 - 496);
      if (v7 < 0x1F0)
      {
        a1[1] = v7;
        if (v7 == v8)
        {
LABEL_35:
          sub_53B8B8(v4, a3);
          return v4;
        }
      }

      else
      {
        v10 = (v7 - 496);
        v11 = a1[1];
        do
        {
          sub_55A4D0(v11, v10);
          v10 += 496;
          v11 = (v12 + 496);
        }

        while (v10 < v7);
        a1[1] = v11;
        if (v7 == v8)
        {
          goto LABEL_35;
        }
      }

      v32 = v4 - v7 + 496;
      v33 = (v7 - 992);
      do
      {
        sub_53B8B8(v9, v33);
        v9 -= 496;
        v33 -= 496;
        v32 += 496;
      }

      while (v32);
      goto LABEL_35;
    }

    sub_55A4D0(a1[1], a3);
    a1[1] = v7 + 496;
  }

  return v4;
}

void sub_53C710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_55A860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_53C724@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_64B998(a4);
  *(a4 + 168) = 0;
  *(a4 + 160) = 0;
  *(a4 + 176) = 0;
  *(a4 + 184) = 0;
  sub_64B998(a4 + 192);
  *(a4 + 384) = 0;
  *(a4 + 392) = -1;
  *(a4 + 395) = -1;
  *(a4 + 407) = 0;
  *(a4 + 415) = 0;
  *(a4 + 399) = 0;
  *(a4 + 423) = 0;
  *(a4 + 440) = 0;
  *(a4 + 448) = 0;
  *(a4 + 432) = 0;
  *(a4 + 456) = 0;
  *(a4 + 464) = 0u;
  *(a4 + 480) = 0u;
  sub_5407F8(a1, a2, v38);
  v37 = a4 + 352;
  v8 = *(a4 + 384);
  if (v8 == -1)
  {
    v9 = a1;
    if (v39 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v39 != -1)
  {
LABEL_5:
    v62 = a4 + 352;
    (off_266B280[v39])(&v62);
    goto LABEL_6;
  }

  (off_266B1F0[v8])(&v62, v37);
  *(a4 + 384) = -1;
LABEL_6:
  v9 = a1;
LABEL_7:
  *(a4 + 392) = v40;
  if (*(a4 + 423) < 0)
  {
    operator delete(*(a4 + 400));
    v9 = a1;
  }

  *(a4 + 400) = *__p;
  *(a4 + 416) = v42;
  HIBYTE(v42) = 0;
  LOBYTE(__p[0]) = 0;
  *(a4 + 424) = v43;
  if ((*(a4 + 455) & 0x80000000) == 0)
  {
    *(a4 + 432) = v44;
    *(a4 + 448) = v45;
    HIBYTE(v45) = 0;
    LOBYTE(v44) = 0;
    *(a4 + 456) = v46;
    v10 = v39;
    if (v39 == -1)
    {
      goto LABEL_11;
    }

LABEL_15:
    (off_266B1F0[v10])(&v62, v38);
    v9 = a1;
    *(a4 + 160) = 1;
    v11 = *a2;
    v35 = a2[1];
    if (*a2 == v35)
    {
      goto LABEL_64;
    }

    goto LABEL_16;
  }

  operator delete(*(a4 + 432));
  v9 = a1;
  v12 = SHIBYTE(v42);
  *(a4 + 432) = v44;
  *(a4 + 448) = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44) = 0;
  *(a4 + 456) = v46;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    v9 = a1;
    v10 = v39;
    if (v39 != -1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = v39;
    if (v39 != -1)
    {
      goto LABEL_15;
    }
  }

LABEL_11:
  *(a4 + 160) = 1;
  v11 = *a2;
  v35 = a2[1];
  if (*a2 != v35)
  {
LABEL_16:
    v33 = a3;
    v34 = a2;
    v32 = v9;
    do
    {
      v36 = v11;
      sub_53C0EC(v9, v11, v38);
      v14 = v47;
      v13 = v48;
      while (v14 != v13)
      {
        if (*(v14 + 768) != 2 || sub_55DD5C(v49, v37))
        {
          goto LABEL_56;
        }

        v16 = *(v14 + 768);
        if (v16 != 2)
        {
          if (v16)
          {
            sub_5AF20();
          }

          *(v14 + 768) = -1;
          bzero(v14, 0x300uLL);
          sub_64B998(v14);
          sub_64B998(v14 + 160);
          *(v14 + 352) = 0;
          *(v14 + 360) = -1;
          *(v14 + 363) = -1;
          *(v14 + 375) = 0;
          *(v14 + 383) = 0;
          *(v14 + 367) = 0;
          *(v14 + 391) = 0;
          *(v14 + 408) = 0;
          *(v14 + 416) = 0;
          *(v14 + 400) = 0;
          *(v14 + 424) = 0;
          sub_64B998(v14 + 432);
          sub_64B998(v14 + 592);
          *(v14 + 752) = xmmword_2291330;
          *(v14 + 768) = 2;
        }

        v17 = *(v14 + 352);
        if (v17 == -1)
        {
          if (v50 != -1)
          {
LABEL_30:
            v62 = v14 + 320;
            (off_266B2A8[v50])(&v62, v14 + 320, v49);
          }
        }

        else
        {
          if (v50 != -1)
          {
            goto LABEL_30;
          }

          (off_266B1F0[v17])(&v62, v14 + 320);
          *(v14 + 352) = -1;
        }

        *(v14 + 360) = v51;
        if ((v14 + 320) == v49)
        {
          *(v14 + 392) = v54;
        }

        else
        {
          if (*(v14 + 391) < 0)
          {
            if (v53 >= 0)
            {
              v19 = &v52;
            }

            else
            {
              v19 = v52;
            }

            if (v53 >= 0)
            {
              v20 = HIBYTE(v53);
            }

            else
            {
              v20 = *(&v52 + 1);
            }

            sub_13B38((v14 + 368), v19, v20);
          }

          else if (v53 < 0)
          {
            sub_13A68((v14 + 368), v52, *(&v52 + 1));
          }

          else
          {
            v18 = v52;
            *(v14 + 384) = v53;
            *(v14 + 368) = v18;
          }

          *(v14 + 392) = v54;
          if (*(v14 + 423) < 0)
          {
            if (v56 >= 0)
            {
              v22 = &v55;
            }

            else
            {
              v22 = v55;
            }

            if (v56 >= 0)
            {
              v23 = HIBYTE(v56);
            }

            else
            {
              v23 = *(&v55 + 1);
            }

            sub_13B38((v14 + 400), v22, v23);
          }

          else if (v56 < 0)
          {
            sub_13A68((v14 + 400), v55, *(&v55 + 1));
          }

          else
          {
            v21 = v55;
            *(v14 + 416) = v56;
            *(v14 + 400) = v21;
          }
        }

        *(v14 + 424) = v57;
LABEL_56:
        v24 = *(a4 + 176);
        if (v24 >= *(a4 + 184))
        {
          v15 = sub_55E618((a4 + 168), v14);
        }

        else
        {
          *v24 = 0;
          *(v24 + 768) = -1;
          v25 = *(v14 + 768);
          if (v25 != -1)
          {
            v62 = v24;
            (off_266B2D0[v25])(&v62, v14);
            *(v24 + 768) = v25;
          }

          *(v24 + 792) = 0;
          *(v24 + 776) = 0u;
          v26 = *(v14 + 776);
          v27 = *(v14 + 784);
          v60 = v24 + 776;
          v61 = 0;
          if (v27 != v26)
          {
            if (0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3) < 0xAAAAAAAAAAAAAABLL)
            {
              operator new();
            }

            sub_1794();
          }

          v15 = v24 + 800;
        }

        *(a4 + 176) = v15;
        v14 += 800;
      }

      sub_93FE4(a4 + 464, *(a4 + 472), v58, v59, 0xAAAAAAAAAAAAAAABLL * ((v59 - v58) >> 3));
      a3 = v33;
      a2 = v34;
      sub_55A8B4(v38);
      v11 = v36 + 2608;
      v9 = v32;
    }

    while (v36 + 2608 != v35);
  }

LABEL_64:
  if (*a3 != a3[1])
  {
    sub_53BBA8(v9, a3, v38);
  }

  v28 = v9;
  sub_541238();
  sub_53D784(a4, v38);
  result = sub_53A868(v38);
  v30 = *(a4 + 168);
  v31 = *(a4 + 176);
  if (v30 != v31)
  {
    sub_53D580(v28, v38, 0x8F5C28F5C28F5C29 * ((v31 - v30) >> 5));
    sub_53D784(a4 + 192, v38);
    result = sub_53A868(v38);
  }

  *(a4 + 492) = (**a2 & 0xFFFFFFFE) == 48;
  return result;
}

void sub_53CF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_55ABBC(v22);
  *(v21 + 176) = v22;
  sub_55A8B4(va);
  sub_55A8B4(v21);
  _Unwind_Resume(a1);
}

void sub_53CF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_55A8B4(va);
  sub_55A8B4(v21);
  _Unwind_Resume(a1);
}

void sub_53D094()
{
  sub_746A0(v2 - 136);
  *(v1 + 784) = v0;
  JUMPOUT(0x53D0A4);
}

void sub_53D0D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(a3);
  *(a3 + 168) = 0;
  *(a3 + 160) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  sub_64B998(a3 + 192);
  *(a3 + 384) = 0;
  *(a3 + 392) = -1;
  *(a3 + 395) = -1;
  *(a3 + 407) = 0;
  *(a3 + 415) = 0;
  *(a3 + 399) = 0;
  *(a3 + 423) = 0;
  *(a3 + 440) = 0;
  *(a3 + 448) = 0;
  *(a3 + 432) = 0;
  *(a3 + 456) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  sub_542BB4(a1, a2, v8);
  sub_53D784(a3, v8);
  sub_53A868(v8);
  if (*(a2 + 1176) != *(a2 + 1184) || *(a2 + 1200) != *(a2 + 1208) || *(a2 + 1224) != *(a2 + 1232) || (*(a2 + 1304) - 2) < 9 || *(a2 + 1248) == 1 && *(a2 + 1256) != *(a2 + 1264))
  {
    goto LABEL_17;
  }

  if (sub_659540(a2 + 32))
  {
    if (*(a2 + 1175) >= 0)
    {
      v6 = *(a2 + 1175);
    }

    else
    {
      v6 = *(a2 + 1160);
    }

    v7 = 1;
    if (v6 || *(a2 + 1448) != -1)
    {
LABEL_18:
      *(a3 + 160) = v7;
      sub_53E044(a1, a2);
    }
  }

  else if (*(a2 + 1448) != -1)
  {
    goto LABEL_17;
  }

  if (*(a2 + 1452) == -1 && !sub_659BD0(a2 + 1488))
  {
    v7 = (*a2 & 0xFFFFFFFE) == 48;
    goto LABEL_18;
  }

LABEL_17:
  v7 = 1;
  goto LABEL_18;
}

void sub_53D3EC(_Unwind_Exception *a1)
{
  sub_55AA68(v2);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_53D408(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (sub_659540(a1 + 32))
  {
    if ((*(a1 + 1175) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 1160))
      {
LABEL_4:
        sub_55B734((a1 + 832), &v5);
        v4 = std::string::insert(&v5, 0, "AE_", 3uLL);
        *a2 = *v4;
        v4->__r_.__value_.__l.__size_ = 0;
        v4->__r_.__value_.__r.__words[2] = 0;
        v4->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v5.__r_.__value_.__l.__data_);
        }

        return;
      }
    }

    else if (*(a1 + 1175))
    {
      goto LABEL_4;
    }
  }

  if (*(a1 + 1176) == *(a1 + 1184) && *(a1 + 1200) == *(a1 + 1208) && *(a1 + 1224) == *(a1 + 1232))
  {
    if (*(a1 + 1248) != 1 || *(a1 + 1256) == *(a1 + 1264))
    {
      a2->__r_.__value_.__r.__words[0] = 0;
      a2->__r_.__value_.__l.__size_ = 0;
      a2->__r_.__value_.__r.__words[2] = 0;
    }

    else
    {
      a2->__r_.__value_.__r.__words[2] = 0x300000000000000;
      *&a2->__r_.__value_.__l.__data_ = xmmword_2298B90;
    }
  }

  else
  {
    a2->__r_.__value_.__r.__words[2] = 0x200000000000000;
    *&a2->__r_.__value_.__l.__data_ = xmmword_2298B78;
  }
}

void sub_53D564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_53D580(uint64_t a1@<X0>, uint64_t a2@<X8>, unint64_t a3@<X1>)
{
  sub_56AFC8(a1 + 1576, a3, &v19);
  sub_67F320(&v19, __p);
  v5 = sub_58BBC(&v19);
  sub_65DED0((a1 + 3168), __p, v5, 0, v17);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  sub_6EDEC(v13, *(a1 + 968));
  sub_2C68(v17, v13, __p);
  sub_64BC20(a2, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
    if ((v14 & 0x80000000) == 0)
    {
LABEL_5:
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_21:
      operator delete(v17[0]);
      v6 = v22;
      if (!v22)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v13[0]);
  if (v18 < 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v6 = v22;
  if (!v22)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_7:
    v7 = *v6;
    sub_55F7FC((v6 + 2));
    operator delete(v6);
    v6 = v7;
  }

  while (v7);
LABEL_8:
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = v19;
  if (v19)
  {
    v10 = v20;
    v11 = v19;
    if (v20 != v19)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v19;
    }

    v20 = v9;
    operator delete(v11);
  }
}

void sub_53D6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void **a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
LABEL_8:
        sub_53A58C(&a27);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a21);
      goto LABEL_8;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_53D784(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a1 + 24);
  if (v8)
  {
    for (i = *(a1 + 32); i != v8; sub_55A0A0(a1 + 24, i))
    {
      i -= 144;
    }

    *(a1 + 32) = v8;
    operator delete(*(a1 + 24));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v10 = (a1 + 48);
  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(a1 + 56);
    v13 = *(a1 + 48);
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
      v13 = *v10;
    }

    *(a1 + 56) = v11;
    operator delete(v13);
    *v10 = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v15 = (a1 + 72);
  v16 = *(a1 + 72);
  if (v16)
  {
    v17 = *(a1 + 80);
    v18 = *(a1 + 72);
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 9);
        v17 -= 4;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = *v15;
    }

    *(a1 + 80) = v16;
    operator delete(v18);
    *v15 = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *(a2 + 72);
  v20 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  if (v20)
  {
    *(a2 + 96) = 0;
    v21 = *(a1 + 96);
    *(a1 + 96) = v20;
    if (v21)
    {
      sub_53A868(v21);
      operator delete();
    }

    v22 = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 104) = v22;
    if (*(a1 + 135) < 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    sub_559FF0((a1 + 96), 0);
    v26 = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 104) = v26;
    if (*(a1 + 135) < 0)
    {
LABEL_34:
      operator delete(*(a1 + 112));
    }
  }

  v23 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v23;
  *(a2 + 135) = 0;
  *(a2 + 112) = 0;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v24 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v24;
  *(a2 + 159) = 0;
  *(a2 + 136) = 0;
  return a1;
}

void sub_53DA0C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 1248);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v3)
  {
    memset(v8, 0, sizeof(v8));
    v4 = *(a1 + 1256);
    v5 = *(a1 + 1264);
    v6 = v8;
    v7 = 0;
    if (v5 != v4)
    {
      if (0xCF3CF3CF3CF3CF3DLL * ((v5 - v4) >> 3) < 0x186186186186187)
      {
        operator new();
      }

      sub_1794();
    }
  }
}

void sub_53DC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_52A6FC(va);
  sub_53DC88(v3);
  _Unwind_Resume(a1);
}

void sub_53DC1C(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_51B6E0((v3 - 88));
  sub_53DC88(v1);
  _Unwind_Resume(a1);
}

void sub_53DC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v6)
  {
    v9 = v5 - 168;
    v10 = -v6;
    do
    {
      v9 = sub_52A624(v9) - 168;
      v10 += 168;
    }

    while (v10);
  }

  *(v7 - 80) = v4;
  sub_52A6FC(va);
  sub_53DC88(v3);
  _Unwind_Resume(a1);
}

char **sub_53DC88(char **a1)
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
        v3 -= 768;
        sub_55D270(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_53DCEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(a3);
  *(a3 + 168) = 0;
  *(a3 + 160) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  sub_64B998(a3 + 192);
  *(a3 + 384) = 0;
  *(a3 + 392) = -1;
  *(a3 + 395) = -1;
  *(a3 + 407) = 0;
  *(a3 + 415) = 0;
  *(a3 + 399) = 0;
  *(a3 + 423) = 0;
  *(a3 + 440) = 0;
  *(a3 + 448) = 0;
  *(a3 + 432) = 0;
  *(a3 + 456) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  sub_75AED0((a1 + 5872), (a2 + 1376), &v8);
  sub_64C184(a3, &v8);
  if (*(a2 + 1176) != *(a2 + 1184) || *(a2 + 1200) != *(a2 + 1208) || *(a2 + 1224) != *(a2 + 1232) || (*(a2 + 1304) - 2) < 9 || *(a2 + 1248) == 1 && *(a2 + 1256) != *(a2 + 1264))
  {
    goto LABEL_17;
  }

  if (sub_659540(a2 + 32))
  {
    if (*(a2 + 1175) >= 0)
    {
      v6 = *(a2 + 1175);
    }

    else
    {
      v6 = *(a2 + 1160);
    }

    v7 = 1;
    if (v6 || *(a2 + 1448) != -1)
    {
LABEL_18:
      *(a3 + 160) = v7;
      sub_53E044(a1, a2);
    }
  }

  else if (*(a2 + 1448) != -1)
  {
    goto LABEL_17;
  }

  if (*(a2 + 1452) == -1 && !sub_659BD0(a2 + 1488))
  {
    v7 = (*a2 & 0xFFFFFFFE) == 48;
    goto LABEL_18;
  }

LABEL_17:
  v7 = 1;
  goto LABEL_18;
}

void sub_53DFEC(_Unwind_Exception *a1)
{
  if (*(v2 - 41) < 0)
  {
    operator delete(*(v2 - 64));
  }

  sub_55A8B4(v1);
  _Unwind_Resume(a1);
}

void sub_53E044(uint64_t a1, uint64_t a2)
{
  if (sub_659540(a2 + 32))
  {
    v3 = *(a2 + 1175);
    if ((v3 & 0x80u) != 0)
    {
      v3 = *(a2 + 1160);
    }

    if (v3)
    {
      v4 = *(a2 + 832);
      if (v4 > 0x16)
      {
LABEL_6:
        v5 = 4;
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  if (sub_659BD0(a2 + 1488))
  {
    v4 = *(a2 + 2288);
    if (v4 > 0x16)
    {
      goto LABEL_6;
    }

LABEL_9:
    v5 = (dword_2298D9C[v4] | dword_2298D40[v4]);
    goto LABEL_10;
  }

  if (*(a2 + 1248) == 2)
  {
    v6 = *(a2 + 1176);
    v7 = *(a2 + 1184);
    if (v6 != v7)
    {
      __p[0] = 0;
      __p[1] = 0;
      v16 = 0;
      v17 = __p;
      v18 = 0;
      if (0xCF3CF3CF3CF3CF3DLL * ((v7 - v6) >> 3) < 0x186186186186187)
      {
        operator new();
      }

      sub_1794();
    }

    if (*(a2 + 1200) != *(a2 + 1208) || *(a2 + 1224) != *(a2 + 1232))
    {
      sub_587F3C(4);
    }

    if (*a2 == 45)
    {
LABEL_23:
      v5 = 39;
      goto LABEL_10;
    }

    if ((*(a2 + 1304) - 2) >= 0xC)
    {
      v5 = 5;
    }

    else
    {
      if (*(a2 + 1376) == *(a2 + 1384))
      {
        if (!sub_53BB38(a2))
        {
          if ((*a2 - 48) >= 2)
          {
            if (*a2 == 51)
            {
              v5 = 38;
            }

            else
            {
              v5 = 4;
            }
          }

          else
          {
            v5 = 51;
          }

          goto LABEL_10;
        }

        goto LABEL_23;
      }

      v5 = 6;
    }

LABEL_10:

    sub_587F3C(v5);
  }

  v8 = (a2 + 1280);
  if (*(a2 + 1303) < 0)
  {
    v10 = *(a2 + 1288);
    if (v10)
    {
      v11 = *v8;
      goto LABEL_39;
    }
  }

  else if (*(a2 + 1303))
  {
    *__p = *v8;
    v9 = *(a2 + 1296);
LABEL_35:
    v16 = v9;
    goto LABEL_40;
  }

  v12 = *(a2 + 1256);
  v13 = *(a2 + 1264);
  if (v12 != v13)
  {
    while (1)
    {
      v14 = *(v12 + 159);
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v12 + 144);
      }

      if (v14)
      {
        break;
      }

      v12 += 168;
      if (v12 == v13)
      {
        goto LABEL_36;
      }
    }
  }

  if (v12 == v13)
  {
LABEL_36:
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    goto LABEL_40;
  }

  if ((*(v12 + 159) & 0x80000000) == 0)
  {
    *__p = *(v12 + 136);
    v9 = *(v12 + 152);
    goto LABEL_35;
  }

  v11 = *(v12 + 136);
  v10 = *(v12 + 144);
LABEL_39:
  sub_325C(__p, v11, v10);
LABEL_40:
  sub_5885E4(__p);
}

void sub_53E3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_53E3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_52A6FC(va);
  _Unwind_Resume(a1);
}

void sub_53E40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v10)
  {
    v12 = v9 - 168;
    v13 = -v10;
    do
    {
      v12 = sub_52A624(v12) - 168;
      v13 += 168;
    }

    while (v13);
  }

  sub_52A6FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_53E440(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 32);
      if (v2 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 48));
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
LABEL_7:
    (off_266B1F0[v2])(&v4, a1);
  }

LABEL_8:
  *(a1 + 32) = -1;
  return a1;
}

void sub_53E820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_56C570(a2, &v19);
  __p = 0uLL;
  v18 = 0;
  sub_64FB18(a3 + 432, &unk_2298CB0, &__p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  nullsub_1();
  v7 = *v6;
  v8 = v6[1];
  while (v7 != v8)
  {
    v9 = sub_58BBC(&v19);
    sub_65DED0((a1 + 3168), v7, v9, 0, &__p);
    sub_64C184(a3 + 432, &__p);
    sub_543BEC(a1, a2, &__p, (a3 + 432));
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    v7 += 24;
  }

  v10 = v22;
  if (v22)
  {
    do
    {
      v11 = *v10;
      sub_55F7FC((v10 + 2));
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = v21;
  v21 = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }
}

void sub_53E984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_53E998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_53A58C(&a15);
    _Unwind_Resume(a1);
  }

  sub_53A58C(&a15);
  _Unwind_Resume(a1);
}

void sub_53E9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_56CAE4(a2, &v19);
  __p = 0uLL;
  v18 = 0;
  sub_64FB18(a3 + 592, &unk_2298C98, &__p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  nullsub_1();
  v7 = *v6;
  v8 = v6[1];
  while (v7 != v8)
  {
    v9 = sub_58BBC(&v19);
    sub_65DED0((a1 + 3168), v7, v9, 0, &__p);
    sub_64C184(a3 + 592, &__p);
    sub_543BEC(a1, a2, &__p, (a3 + 592));
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    v7 += 24;
  }

  v10 = v22;
  if (v22)
  {
    do
    {
      v11 = *v10;
      sub_55F7FC((v10 + 2));
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = v21;
  v21 = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }
}

void sub_53EB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_53EB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_53A58C(&a15);
    _Unwind_Resume(a1);
  }

  sub_53A58C(&a15);
  _Unwind_Resume(a1);
}

void sub_53EB88(uint64_t a1)
{
  sub_64B998(v16);
  sub_64B998(v17);
  *&v17[192] = 0;
  memset(&v17[200], 255, 7);
  v19 = 0;
  v18 = 0uLL;
  v20 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  sub_64B998(v25);
  sub_64B998(v26);
  v26[10] = xmmword_2291330;
  sub_56CC5C(&v15);
  sub_67F320(&v15, &v8);
  v4 = sub_58BBC(&v15);
  sub_65DED0((a1 + 3168), &v8, v4, 0, &__p);
  sub_64BC20(v14, &__p);
  sub_53D784(v16, v14);
  sub_53A868(v14);
  if (v13 < 0)
  {
    operator delete(__p);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v8);
LABEL_3:
  sub_56CC6C(&__p);
  sub_67F320(&__p, v6);
  v5 = sub_58BBC(&__p);
  sub_65DED0((a1 + 3168), v6, v5, 0, &v8);
  sub_64BC20(v14, &v8);
  sub_53D784(v17, v14);
  sub_53A868(v14);
  if (v9 < 0)
  {
    operator delete(v8);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_5:
      if ((byte_2792647 & 0x80000000) == 0)
      {
LABEL_6:
        *v10 = xmmword_2792630;
        v11 = unk_2792640;
        goto LABEL_12;
      }

LABEL_11:
      sub_325C(v10, xmmword_2792630, *(&xmmword_2792630 + 1));
LABEL_12:
      sub_64BC20(v14, v10);
      sub_53D784(v25, v14);
      sub_53A868(v14);
      sub_56CC7C();
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v6[0]);
  if ((byte_2792647 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  goto LABEL_11;
}

void sub_53F11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      if ((a14 & 0x80000000) == 0)
      {
LABEL_9:
        sub_53A58C(&a31);
        if (a45 < 0)
        {
          operator delete(a40);
        }

        sub_53A58C(&a47);
        sub_53A58C(&a65);
        sub_53F5F4(&STACK[0x200]);
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a9);
      goto LABEL_9;
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

uint64_t sub_53F320(uint64_t a1)
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
          v4 = sub_53A868(v4 - 168);
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
        (off_266B1F0[v15])(&v19, v14);
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

uint64_t sub_53F5F4(uint64_t a1)
{
  sub_53A868(a1 + 592);
  sub_53A868(a1 + 432);
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
    if ((*(a1 + 391) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 352);
      if (v2 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 391) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 368));
  v2 = *(a1 + 352);
  if (v2 != -1)
  {
LABEL_7:
    (off_266B1F0[v2])(&v4, a1 + 320);
  }

LABEL_8:
  *(a1 + 352) = -1;
  sub_53A868(a1 + 160);
  return sub_53A868(a1);
}

void sub_53F6A4(uint64_t a1)
{
  sub_64B998(v16);
  sub_64B998(v17);
  *&v17[192] = 0;
  memset(&v17[200], 255, 7);
  v19 = 0;
  v18 = 0uLL;
  v20 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  sub_64B998(v25);
  sub_64B998(v26);
  v26[10] = xmmword_2291330;
  sub_56CD38(&v15);
  sub_67F320(&v15, &v8);
  v4 = sub_58BBC(&v15);
  sub_65DED0((a1 + 3168), &v8, v4, 0, &__p);
  sub_64BC20(v14, &__p);
  sub_53D784(v16, v14);
  sub_53A868(v14);
  if (v13 < 0)
  {
    operator delete(__p);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v8);
LABEL_3:
  sub_56CD48(&__p);
  sub_67F320(&__p, v6);
  v5 = sub_58BBC(&__p);
  sub_65DED0((a1 + 3168), v6, v5, 0, &v8);
  sub_64BC20(v14, &v8);
  sub_53D784(v17, v14);
  sub_53A868(v14);
  if (v9 < 0)
  {
    operator delete(v8);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_5:
      if ((byte_279265F & 0x80000000) == 0)
      {
LABEL_6:
        *v10 = xmmword_2792648;
        v11 = unk_2792658;
        goto LABEL_12;
      }

LABEL_11:
      sub_325C(v10, xmmword_2792648, *(&xmmword_2792648 + 1));
LABEL_12:
      sub_64BC20(v14, v10);
      sub_53D784(v25, v14);
      sub_53A868(v14);
      sub_56CC7C();
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v6[0]);
  if ((byte_279265F & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  goto LABEL_11;
}

void sub_53FC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      if ((a14 & 0x80000000) == 0)
      {
LABEL_9:
        sub_53A58C(&a31);
        if (a45 < 0)
        {
          operator delete(a40);
        }

        sub_53A58C(&a47);
        sub_53A58C(&a65);
        sub_53F5F4(&STACK[0x200]);
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a9);
      goto LABEL_9;
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_53FE3C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(v31);
  sub_64B998(v32);
  *&v32[192] = 0;
  memset(&v32[200], 255, 7);
  v34 = 0;
  v33 = 0uLL;
  v35 = 0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v39 = 0;
  sub_64B998(&__s);
  sub_64B998(v42);
  v42[10] = xmmword_2291330;
  sub_56A230(a2, &v30);
  HIBYTE(v27) = 0;
  LOBYTE(__p[0]) = 0;
  sub_67ECF8(&v30, "{OptionalPeriod}", __p);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  sub_67F320(&v30, &v22);
  v6 = sub_58BBC(&v30);
  sub_65DED0((a1 + 3168), &v22, v6, 0, &v24);
  sub_64BC20(__p, &v24);
  sub_53D784(v31, __p);
  sub_53A868(__p);
  if (v25 < 0)
  {
    operator delete(v24);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v22);
LABEL_5:
  sub_56CD58(a2, &v24);
  sub_53A484(a1, 1, &v24);
  sub_67F320(&v24, v18);
  v7 = sub_58BBC(&v24);
  sub_65DED0((a1 + 3168), v18, v7, 0, &v22);
  sub_64BC20(__p, &v22);
  sub_53D784(v32, __p);
  sub_53A868(__p);
  if (v23 < 0)
  {
    operator delete(v22);
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v18[0]);
LABEL_7:
  sub_56CEA8(a2, &v22);
  if (!sub_6F390(&v22))
  {
    goto LABEL_10;
  }

  sub_67F320(&v22, v20);
  v8 = sub_58BBC(&v22);
  sub_65DED0((a1 + 3168), v20, v8, 0, v18);
  sub_64BC20(__p, v18);
  sub_53D784(&__s, __p);
  sub_53A868(__p);
  if (v19 < 0)
  {
    operator delete(v18[0]);
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
LABEL_10:
      v9 = __s;
      if (__s == v41)
      {
        goto LABEL_52;
      }

LABEL_11:
      v10 = *(v9 + 23);
      if (v10 < 0)
      {
        v11 = v9;
        v9 = *v9;
        v10 = v11[1];
        if (v10 < 21)
        {
          goto LABEL_52;
        }
      }

      else if (v10 < 21)
      {
        goto LABEL_52;
      }

      v12 = v9 + v10;
      v13 = v9;
      while (1)
      {
        v14 = memchr(v13, 123, v10 - 20);
        if (!v14)
        {
          goto LABEL_52;
        }

        v15 = *v14 == 0x636E49616572417BLL && *(v14 + 1) == 0x626557746E656469;
        if (v15 && *(v14 + 13) == 0x7D6B6E696C626557)
        {
          break;
        }

        v13 = (v14 + 1);
        v10 = v12 - v13;
        if (v12 - v13 < 21)
        {
          goto LABEL_52;
        }
      }

      if (v14 != v12 && v14 - v9 != -1)
      {
        if (*(a2 + 2471) < 0)
        {
          sub_325C(__p, *(a2 + 2448), *(a2 + 2456));
        }

        else
        {
          *__p = *(a2 + 2448);
          v27 = *(a2 + 2464);
        }

        if (*(a2 + 2495) < 0)
        {
          sub_325C(&v28, *(a2 + 2472), *(a2 + 2480));
        }

        else
        {
          v28 = *(a2 + 2472);
          v29 = *(a2 + 2488);
        }

        if (v29 >= 0)
        {
          v17 = HIBYTE(v29);
        }

        else
        {
          v17 = *(&v28 + 1);
        }

        if (v17)
        {
          if (SHIBYTE(v29) < 0)
          {
            sub_325C(v20, v28, *(&v28 + 1));
          }

          else
          {
            *v20 = v28;
            v21 = v29;
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(v28);
          }

          v28 = *v20;
          v29 = v21;
          HIBYTE(v21) = 0;
          LOBYTE(v20[0]) = 0;
          sub_64F700(&__s, "{AreaIncidentWeblink}", __p);
        }

        operator new();
      }

LABEL_52:
      sub_53D0D0(a1, a2, a3);
    }
  }

  else if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(v20[0]);
  v9 = __s;
  if (__s == v41)
  {
    goto LABEL_52;
  }

  goto LABEL_11;
}

void sub_5405A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void **a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1AB28(&a39);
  sub_53A58C(&a21);
  sub_53A58C(&a30);
  sub_53A58C(&a59);
  sub_53F5F4(&a65);
  _Unwind_Resume(a1);
}

uint64_t sub_540798(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_55F7FC((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_5407F8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = 0;
  v4 = 0uLL;
  v60 = 0u;
  v59 = 0;
  v58 = 0u;
  v51[0] = 0;
  v57 = 0;
  v44[0] = 0;
  v50 = 0;
  v37[0] = 0;
  v43 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    while (1)
    {
      v8 = sub_659540(v5 + 32);
      _X8 = v5 + 3783;
      __asm { PRFM            #0, [X8] }

      if (!v8)
      {
        goto LABEL_11;
      }

      if ((*(v5 + 1175) & 0x8000000000000000) != 0)
      {
        if (!*(v5 + 1160))
        {
          goto LABEL_11;
        }
      }

      else if (!*(v5 + 1175))
      {
        goto LABEL_11;
      }

      if (sub_659608(v5 + 32))
      {
        sub_53E044(a1, v5);
      }

LABEL_11:
      if (sub_659BD0(v5 + 1488))
      {
        goto LABEL_12;
      }

      if (!sub_659540(v5 + 32))
      {
        goto LABEL_19;
      }

      if ((*(v5 + 1175) & 0x8000000000000000) != 0)
      {
        if (*(v5 + 1160))
        {
LABEL_18:
          if (sub_6595D0(v5 + 32))
          {
LABEL_12:
            sub_53E044(a1, v5);
          }
        }
      }

      else if (*(v5 + 1175))
      {
        goto LABEL_18;
      }

LABEL_19:
      _X8 = v5 + 3856;
      __asm { PRFM            #0, [X8] }

      if (*(v5 + 1248) == 1 && *(v5 + 1256) != *(v5 + 1264))
      {
        sub_53E044(a1, v5);
      }

      if (*(v5 + 1176) != *(v5 + 1184) || *(v5 + 1200) != *(v5 + 1208) || *(v5 + 1224) != *(v5 + 1232))
      {
        sub_53E044(a1, v5);
      }

      _X8 = v5 + 2608;
      __asm { PRFM            #0, [X8] }

      if ((*v5 & 0xFFFFFFFE) == 0x30)
      {
        sub_53E044(a1, v5);
      }

      v5 += 2608;
      if (v5 == v6)
      {
        v4 = v60;
        break;
      }
    }
  }

  v19 = sub_5623F4(v4, *(&v4 + 1));
  sub_5621D8(&v60, v19, *(&v60 + 1));
  v20 = sub_5623F4(v58, *(&v58 + 1));
  sub_5621D8(&v58, v20, *(&v58 + 1));
  v22 = *(&v60 + 1);
  v21 = v60;
  if (v60 != *(&v60 + 1) || (v22 = *(&v58 + 1), v21 = v58, v58 != *(&v58 + 1)))
  {
    if (v22 - v21 == 112)
    {
      goto LABEL_33;
    }

LABEL_31:
    sub_587F3C(4);
  }

  if (v43 != 1)
  {
    goto LABEL_31;
  }

  v21 = v37;
LABEL_33:
  sub_55F1E8(a3, v21);
  if (v43 != 1)
  {
    goto LABEL_41;
  }

  if ((v42 & 0x80000000) == 0)
  {
    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_39:
    operator delete(v39);
    v23 = v38;
    if (v38 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  operator delete(v41);
  if (v40 < 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  v23 = v38;
  if (v38 != -1)
  {
LABEL_40:
    (off_266B1F0[v23])(&v36, v37);
  }

LABEL_41:
  if (v50 != 1)
  {
    goto LABEL_49;
  }

  if ((v49 & 0x80000000) == 0)
  {
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_47:
    operator delete(v46);
    v24 = v45;
    if (v45 == -1)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  operator delete(v48);
  if (v47 < 0)
  {
    goto LABEL_47;
  }

LABEL_44:
  v24 = v45;
  if (v45 != -1)
  {
LABEL_48:
    (off_266B1F0[v24])(v37, v44);
  }

LABEL_49:
  if (v57 == 1)
  {
    if (v56 < 0)
    {
      operator delete(v55);
      if ((v54 & 0x80000000) == 0)
      {
LABEL_52:
        v25 = v52;
        if (v52 == -1)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }
    }

    else if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    operator delete(v53);
    v25 = v52;
    if (v52 != -1)
    {
LABEL_56:
      (off_266B1F0[v25])(v44, v51);
    }
  }

LABEL_57:
  v26 = v58;
  if (!v58)
  {
    goto LABEL_70;
  }

  v27 = *(&v58 + 1);
  v28 = v58;
  if (*(&v58 + 1) == v58)
  {
    goto LABEL_69;
  }

  do
  {
    if (*(v27 - 9) < 0)
    {
      operator delete(*(v27 - 32));
      if (*(v27 - 41) < 0)
      {
LABEL_66:
        operator delete(*(v27 - 64));
        v29 = v27 - 112;
        v30 = *(v27 - 80);
        if (v30 == -1)
        {
          goto LABEL_60;
        }

LABEL_67:
        (off_266B1F0[v30])(v51, v29);
        goto LABEL_60;
      }
    }

    else if (*(v27 - 41) < 0)
    {
      goto LABEL_66;
    }

    v29 = v27 - 112;
    v30 = *(v27 - 80);
    if (v30 != -1)
    {
      goto LABEL_67;
    }

LABEL_60:
    *(v27 - 80) = -1;
    v27 = v29;
  }

  while (v29 != v26);
  v28 = v58;
LABEL_69:
  *(&v58 + 1) = v26;
  operator delete(v28);
LABEL_70:
  v31 = v60;
  if (!v60)
  {
    return;
  }

  v32 = *(&v60 + 1);
  v33 = v60;
  if (*(&v60 + 1) == v60)
  {
    goto LABEL_82;
  }

  while (2)
  {
    if (*(v32 - 9) < 0)
    {
      operator delete(*(v32 - 32));
      if (*(v32 - 41) < 0)
      {
        goto LABEL_79;
      }

LABEL_76:
      v34 = v32 - 112;
      v35 = *(v32 - 80);
      if (v35 != -1)
      {
LABEL_80:
        (off_266B1F0[v35])(v51, v34);
      }
    }

    else
    {
      if ((*(v32 - 41) & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

LABEL_79:
      operator delete(*(v32 - 64));
      v34 = v32 - 112;
      v35 = *(v32 - 80);
      if (v35 != -1)
      {
        goto LABEL_80;
      }
    }

    *(v32 - 80) = -1;
    v32 = v34;
    if (v34 != v31)
    {
      continue;
    }

    break;
  }

  v33 = v60;
LABEL_82:
  *(&v60 + 1) = v31;
  operator delete(v33);
}

void sub_541008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  sub_53E440(&a9);
  sub_5427D0(&a23);
  sub_5427D0(&a38);
  sub_5427D0(va);
  sub_542870((v52 - 152));
  sub_542870((v52 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_5410A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 == -1)
  {
    if (v5 == -1)
    {
      goto LABEL_6;
    }
  }

  else if (v5 == -1)
  {
    (off_266B1F0[v4])(&v17, a1);
    *(a1 + 32) = -1;
    goto LABEL_6;
  }

  v16 = a1;
  (off_266B2A8[v5])(&v16, a1, a2);
LABEL_6:
  *(a1 + 40) = *(a2 + 40);
  if (a1 == a2)
  {
    *(a1 + 72) = *(a2 + 72);
    goto LABEL_30;
  }

  v6 = *(a2 + 71);
  if (*(a1 + 71) < 0)
  {
    if (v6 >= 0)
    {
      v10 = (a2 + 48);
    }

    else
    {
      v10 = *(a2 + 48);
    }

    if (v6 >= 0)
    {
      v11 = *(a2 + 71);
    }

    else
    {
      v11 = *(a2 + 56);
    }

    sub_13B38((a1 + 48), v10, v11);
    *(a1 + 72) = *(a2 + 72);
    v8 = (a2 + 80);
    v9 = *(a2 + 103);
    if (*(a1 + 103) < 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if ((*(a2 + 71) & 0x80) == 0)
  {
    v7 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v7;
    *(a1 + 72) = *(a2 + 72);
    v8 = (a2 + 80);
    v9 = *(a2 + 103);
    if (*(a1 + 103) < 0)
    {
      goto LABEL_22;
    }

LABEL_19:
    if ((v9 & 0x80) != 0)
    {
      sub_13A68((a1 + 80), *(a2 + 80), *(a2 + 88));
    }

    else
    {
      v12 = *v8;
      *(a1 + 96) = v8[2];
      *(a1 + 80) = v12;
    }

    goto LABEL_30;
  }

  sub_13A68((a1 + 48), *(a2 + 48), *(a2 + 56));
  *(a1 + 72) = *(a2 + 72);
  v8 = (a2 + 80);
  v9 = *(a2 + 103);
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  if ((v9 & 0x80u) == 0)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(a2 + 80);
  }

  if ((v9 & 0x80u) == 0)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(a2 + 88);
  }

  sub_13B38((a1 + 80), v13, v14);
LABEL_30:
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void sub_541238()
{
  v0 = __chkstk_darwin();
  v92 = v2;
  v94 = v3;
  v4 = v1;
  v146 = 0;
  v5 = 0uLL;
  v145 = 0u;
  v144 = 0;
  v143 = 0u;
  v141[0] = 0;
  v142 = 0;
  LOBYTE(v139[0]) = 0;
  v140 = 0;
  v137[0] = 0;
  v138 = 0;
  v135[0] = 0;
  v136 = 0;
  v95 = v0;
  v134 = v0;
  v8 = *v6;
  v7 = v6[1];
  if (*v6 != v7)
  {
    v93 = v1;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v13 = sub_659540(v8 + 32);
      _X8 = v8 + 3783;
      __asm { PRFM            #0, [X8] }

      if (!v13)
      {
        goto LABEL_15;
      }

      if ((*(v8 + 1175) & 0x8000000000000000) != 0)
      {
        if (!*(v8 + 1160))
        {
          goto LABEL_15;
        }
      }

      else if (!*(v8 + 1175))
      {
        goto LABEL_15;
      }

      if (sub_659608(v8 + 32))
      {
        sub_542954(&v134, v8, __p);
        v20 = *(&v145 + 1);
        if (*(&v145 + 1) >= v146)
        {
          v34 = v145;
          v35 = *(&v145 + 1) - v145;
          v36 = 0xAAAAAAAAAAAAAAABLL * ((*(&v145 + 1) - v145) >> 3);
          v37 = v36 + 1;
          if (v36 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v146 - v145) >> 3) > v37)
          {
            v37 = 0x5555555555555556 * ((v146 - v145) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v146 - v145) >> 3) >= 0x555555555555555)
          {
            v38 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v38 = v37;
          }

          if (v38)
          {
            if (v38 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v39 = 8 * ((*(&v145 + 1) - v145) >> 3);
          *v39 = *__p;
          *(v39 + 16) = v98;
          *&v98 = 0;
          __p[0] = 0;
          __p[1] = 0;
          v40 = 24 * v36 + 24;
          v41 = 24 * v36 - v35;
          memcpy((v39 - v35), v34, v35);
          *&v145 = v41;
          *(&v145 + 1) = v40;
          v146 = 0;
          if (v34)
          {
            operator delete(v34);
            *(&v145 + 1) = v40;
            if (SBYTE7(v98) < 0)
            {
              operator delete(__p[0]);
            }

            ++v9;
          }

          else
          {
            *(&v145 + 1) = v40;
            ++v9;
          }
        }

        else
        {
          v21 = *__p;
          *(*(&v145 + 1) + 16) = v98;
          *v20 = v21;
          *(&v145 + 1) = v20 + 24;
          ++v9;
        }

        goto LABEL_6;
      }

LABEL_15:
      if (sub_659BD0(v8 + 1488))
      {
        goto LABEL_16;
      }

      if (sub_659540(v8 + 32))
      {
        if ((*(v8 + 1175) & 0x8000000000000000) != 0)
        {
          if (!*(v8 + 1160))
          {
            goto LABEL_36;
          }
        }

        else if (!*(v8 + 1175))
        {
          goto LABEL_36;
        }

        if (sub_6595D0(v8 + 32))
        {
LABEL_16:
          sub_542954(&v134, v8, __p);
          v22 = *(&v143 + 1);
          if (*(&v143 + 1) < v144)
          {
            v11 = *__p;
            *(*(&v143 + 1) + 16) = v98;
            *v22 = v11;
            v12 = v22 + 24;
          }

          else
          {
            v23 = v143;
            v24 = *(&v143 + 1) - v143;
            v25 = 0xAAAAAAAAAAAAAAABLL * ((*(&v143 + 1) - v143) >> 3);
            v26 = v25 + 1;
            if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            if (0x5555555555555556 * ((v144 - v143) >> 3) > v26)
            {
              v26 = 0x5555555555555556 * ((v144 - v143) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v144 - v143) >> 3) >= 0x555555555555555)
            {
              v27 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v27 = v26;
            }

            if (v27)
            {
              if (v27 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1808();
            }

            v28 = 8 * ((*(&v143 + 1) - v143) >> 3);
            *v28 = *__p;
            *(v28 + 16) = v98;
            *&v98 = 0;
            __p[0] = 0;
            __p[1] = 0;
            v12 = 24 * v25 + 24;
            v29 = 24 * v25 - v24;
            memcpy((v28 - v24), v23, v24);
            *&v143 = v29;
            *(&v143 + 1) = v12;
            v144 = 0;
            if (v23)
            {
              operator delete(v23);
              *(&v143 + 1) = v12;
              if (SBYTE7(v98) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_5;
            }
          }

          *(&v143 + 1) = v12;
LABEL_5:
          ++v10;
          goto LABEL_6;
        }
      }

LABEL_36:
      _X8 = v8 + 3856;
      __asm { PRFM            #0, [X8] }

      if (*(v8 + 1248) != 1 || *(v8 + 1256) == *(v8 + 1264))
      {
        if (*(v8 + 1176) == *(v8 + 1184) && *(v8 + 1200) == *(v8 + 1208) && *(v8 + 1224) == *(v8 + 1232))
        {
          _X8 = v8 + 2608;
          __asm { PRFM            #0, [X8] }

          if (*v8 == 49)
          {
            if (v136 != 1)
            {
              sub_52DA74(v135, v8);
              v136 = 1;
              goto LABEL_6;
            }

            v32 = v135;
          }

          else
          {
            if (*v8 != 48)
            {
              goto LABEL_6;
            }

            if ((v138 & 1) == 0)
            {
              sub_52DA74(v137, v8);
              v33 = v137;
              goto LABEL_57;
            }

            v32 = v137;
          }
        }

        else
        {
          if ((v140 & 1) == 0)
          {
            sub_52DA74(v139, v8);
            v33 = v139;
LABEL_57:
            v33[2608] = 1;
            goto LABEL_6;
          }

          v32 = v139;
        }
      }

      else
      {
        if ((v142 & 1) == 0)
        {
          sub_52DA74(v141, v8);
          v33 = v141;
          goto LABEL_57;
        }

        v32 = v141;
      }

      sub_52EA78(v32, v8);
LABEL_6:
      v8 += 2608;
      if (v8 == v7)
      {
        v5 = v145;
        v4 = v93;
        v44 = v9;
        goto LABEL_73;
      }
    }
  }

  v10 = 0;
  v44 = 0;
LABEL_73:
  v45 = sub_95EB4(v5, *(&v5 + 1));
  v46 = *(&v145 + 1);
  if (v45 != *(&v145 + 1))
  {
    while (v46 != v45)
    {
      v47 = *(v46 - 1);
      v46 -= 3;
      if (v47 < 0)
      {
        operator delete(*v46);
      }
    }

    *(&v145 + 1) = v45;
  }

  v48 = sub_95EB4(v143, *(&v143 + 1));
  v49 = *(&v143 + 1);
  if (v48 != *(&v143 + 1))
  {
    while (v49 != v48)
    {
      v50 = *(v49 - 1);
      v49 -= 3;
      if (v50 < 0)
      {
        operator delete(*v49);
      }
    }

    *(&v143 + 1) = v48;
  }

  if (v44 < 1)
  {
    if (v142 == 1)
    {
      sub_52DA74(v96, v141);
      sub_56A8B0(v96, v94 > 1, &v130);
      sub_52E078(v96);
      sub_67F320(&v130, v128);
      v60 = sub_58BBC(&v130);
      v126 = 0u;
      v124 = 1uLL;
      v120 = 0;
      v119 = 0;
      v115 = 0u;
      v112 = 0;
      v107 = 0;
      v106 = 0u;
      *&v105[8] = 0u;
      v104 = 0x7FFFFFFFLL;
      v103 = 0u;
      v99 = 0;
      v61.f64[0] = NAN;
      v61.f64[1] = NAN;
      v100 = vnegq_f64(v61);
      v101 = v100;
      *v105 = v100;
      __p[0] = 0xFFFFFFFFLL;
      __p[1] = 0;
      v98 = 0uLL;
      v102 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v103) = 0;
      *&v105[16] = 0x7FFFFFFF;
      LODWORD(v106) = 0x7FFFFFFF;
      *(&v106 + 4) = 0x7FFFFFFF7FFFFFFFLL;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0x8000000080000000;
      v113 = 0x8000000080000000;
      v114 = 0x7FFFFFFF;
      v116 = xmmword_2297C00;
      v117 = 0x7FFFFFFF;
      v118 = 0x7FFFFFFF7FFFFFFFLL;
      v121 = 0xBFF0000000000000;
      v122 = 0xBFF0000000000000;
      v123 = 0uLL;
      v125 = 0uLL;
      LOWORD(v126) = 0;
      DWORD1(v126) = -1;
      v127 = 0x7FFFFFFFFFFFFFFFuLL;
      sub_660FE4((v95 + 3168), v128, v60, __p, v4);
      sub_55D550(__p);
      if (v129 < 0)
      {
        operator delete(v128[0]);
      }

      v62 = v133;
      if (v133)
      {
        do
        {
          v63 = *v62;
          sub_55F7FC((v62 + 2));
          operator delete(v62);
          v62 = v63;
        }

        while (v63);
      }

      v64 = v132;
      v132 = 0;
      if (v64)
      {
        operator delete(v64);
      }

      v56 = v130;
      if (v130)
      {
        v65 = v131;
        v58 = v130;
        if (v131 == v130)
        {
          goto LABEL_138;
        }

        do
        {
          v66 = *(v65 - 1);
          v65 -= 3;
          if (v66 < 0)
          {
            operator delete(*v65);
          }
        }

        while (v65 != v56);
        goto LABEL_137;
      }
    }

    else if (v140 == 1)
    {
      sub_56A988(v95 + 1576, v139, v94 > 1, &v130);
      sub_67F320(&v130, v128);
      v67 = sub_58BBC(&v130);
      v126 = 0u;
      v124 = 1uLL;
      v120 = 0;
      v119 = 0;
      v115 = 0u;
      v112 = 0;
      v107 = 0;
      v106 = 0u;
      *&v105[8] = 0u;
      v104 = 0x7FFFFFFFLL;
      v103 = 0u;
      v99 = 0;
      v68.f64[0] = NAN;
      v68.f64[1] = NAN;
      v100 = vnegq_f64(v68);
      v101 = v100;
      *v105 = v100;
      __p[0] = 0xFFFFFFFFLL;
      __p[1] = 0;
      v98 = 0uLL;
      v102 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v103) = 0;
      *&v105[16] = 0x7FFFFFFF;
      LODWORD(v106) = 0x7FFFFFFF;
      *(&v106 + 4) = 0x7FFFFFFF7FFFFFFFLL;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0x8000000080000000;
      v113 = 0x8000000080000000;
      v114 = 0x7FFFFFFF;
      v116 = xmmword_2297C00;
      v117 = 0x7FFFFFFF;
      v118 = 0x7FFFFFFF7FFFFFFFLL;
      v121 = 0xBFF0000000000000;
      v122 = 0xBFF0000000000000;
      v123 = 0uLL;
      v125 = 0uLL;
      LOWORD(v126) = 0;
      DWORD1(v126) = -1;
      v127 = 0x7FFFFFFFFFFFFFFFuLL;
      sub_660FE4((v95 + 3168), v128, v67, __p, v4);
      sub_55D550(__p);
      if (v129 < 0)
      {
        operator delete(v128[0]);
      }

      v69 = v133;
      if (v133)
      {
        do
        {
          v70 = *v69;
          sub_55F7FC((v69 + 2));
          operator delete(v69);
          v69 = v70;
        }

        while (v70);
      }

      v71 = v132;
      v132 = 0;
      if (v71)
      {
        operator delete(v71);
      }

      v56 = v130;
      if (v130)
      {
        v72 = v131;
        v58 = v130;
        if (v131 == v130)
        {
          goto LABEL_138;
        }

        do
        {
          v73 = *(v72 - 1);
          v72 -= 3;
          if (v73 < 0)
          {
            operator delete(*v72);
          }
        }

        while (v72 != v56);
        goto LABEL_137;
      }
    }

    else
    {
      if (v10 < 1)
      {
        if (v138)
        {
          v88 = v137;
          v89 = v95;
        }

        else
        {
          v89 = v95;
          if (v136 != 1)
          {
            sub_56AFC8(v95 + 1576, v92, &v130);
            sub_67F320(&v130, v128);
            v90 = sub_58BBC(&v130);
            v126 = 0u;
            v124 = 1uLL;
            v120 = 0;
            v119 = 0;
            v115 = 0u;
            v112 = 0;
            v107 = 0;
            v106 = 0u;
            *&v105[8] = 0u;
            v104 = 0x7FFFFFFFLL;
            v103 = 0u;
            v99 = 0;
            v91.f64[0] = NAN;
            v91.f64[1] = NAN;
            v100 = vnegq_f64(v91);
            v101 = v100;
            *v105 = v100;
            __p[0] = 0xFFFFFFFFLL;
            __p[1] = 0;
            v98 = 0uLL;
            v102 = 0x7FFFFFFFFFFFFFFFLL;
            BYTE8(v103) = 0;
            *&v105[16] = 0x7FFFFFFF;
            LODWORD(v106) = 0x7FFFFFFF;
            *(&v106 + 4) = 0x7FFFFFFF7FFFFFFFLL;
            v109 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0x8000000080000000;
            v113 = 0x8000000080000000;
            v114 = 0x7FFFFFFF;
            v116 = xmmword_2297C00;
            v117 = 0x7FFFFFFF;
            v118 = 0x7FFFFFFF7FFFFFFFLL;
            v121 = 0xBFF0000000000000;
            v122 = 0xBFF0000000000000;
            v123 = 0uLL;
            v125 = 0uLL;
            LOWORD(v126) = 0;
            DWORD1(v126) = -1;
            v127 = 0x7FFFFFFFFFFFFFFFuLL;
            sub_660FE4((v95 + 3168), v128, v90, __p, v4);
            sub_55D550(__p);
            if (v129 < 0)
            {
              operator delete(v128[0]);
            }

            sub_53A58C(&v130);
            goto LABEL_139;
          }

          v88 = v135;
        }

        sub_542BB4(v89, v88, v4);
        goto LABEL_139;
      }

      sub_56A308(v95 + 1576, v10, &v143, v10 != v94, 1, &v130);
      sub_67F320(&v130, v128);
      v74 = sub_58BBC(&v130);
      v126 = 0u;
      v124 = 1uLL;
      v120 = 0;
      v119 = 0;
      v115 = 0u;
      v112 = 0;
      v107 = 0;
      v106 = 0u;
      *&v105[8] = 0u;
      v104 = 0x7FFFFFFFLL;
      v103 = 0u;
      v99 = 0;
      v75.f64[0] = NAN;
      v75.f64[1] = NAN;
      v100 = vnegq_f64(v75);
      v101 = v100;
      *v105 = v100;
      __p[0] = 0xFFFFFFFFLL;
      __p[1] = 0;
      v98 = 0uLL;
      v102 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v103) = 0;
      *&v105[16] = 0x7FFFFFFF;
      LODWORD(v106) = 0x7FFFFFFF;
      *(&v106 + 4) = 0x7FFFFFFF7FFFFFFFLL;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0x8000000080000000;
      v113 = 0x8000000080000000;
      v114 = 0x7FFFFFFF;
      v116 = xmmword_2297C00;
      v117 = 0x7FFFFFFF;
      v118 = 0x7FFFFFFF7FFFFFFFLL;
      v121 = 0xBFF0000000000000;
      v122 = 0xBFF0000000000000;
      v123 = 0uLL;
      v125 = 0uLL;
      LOWORD(v126) = 0;
      DWORD1(v126) = -1;
      v127 = 0x7FFFFFFFFFFFFFFFuLL;
      sub_660FE4((v95 + 3168), v128, v74, __p, v4);
      sub_55D550(__p);
      if (v129 < 0)
      {
        operator delete(v128[0]);
      }

      v76 = v133;
      if (v133)
      {
        do
        {
          v77 = *v76;
          sub_55F7FC((v76 + 2));
          operator delete(v76);
          v76 = v77;
        }

        while (v77);
      }

      v78 = v132;
      v132 = 0;
      if (v78)
      {
        operator delete(v78);
      }

      v56 = v130;
      if (v130)
      {
        v79 = v131;
        v58 = v130;
        if (v131 == v130)
        {
          goto LABEL_138;
        }

        do
        {
          v80 = *(v79 - 1);
          v79 -= 3;
          if (v80 < 0)
          {
            operator delete(*v79);
          }
        }

        while (v79 != v56);
        goto LABEL_137;
      }
    }
  }

  else
  {
    sub_56A308(v95 + 1576, v44, &v145, v44 != v94, 0, &v130);
    sub_67F320(&v130, v128);
    v51 = sub_58BBC(&v130);
    v126 = 0u;
    v124 = 1uLL;
    v120 = 0;
    v119 = 0;
    v115 = 0u;
    v112 = 0;
    v107 = 0;
    v106 = 0u;
    *&v105[8] = 0u;
    v104 = 0x7FFFFFFFLL;
    v103 = 0u;
    v99 = 0;
    v52.f64[0] = NAN;
    v52.f64[1] = NAN;
    v100 = vnegq_f64(v52);
    v101 = v100;
    *v105 = v100;
    __p[0] = 0xFFFFFFFFLL;
    __p[1] = 0;
    v98 = 0uLL;
    v102 = 0x7FFFFFFFFFFFFFFFLL;
    BYTE8(v103) = 0;
    *&v105[16] = 0x7FFFFFFF;
    LODWORD(v106) = 0x7FFFFFFF;
    *(&v106 + 4) = 0x7FFFFFFF7FFFFFFFLL;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0x8000000080000000;
    v113 = 0x8000000080000000;
    v114 = 0x7FFFFFFF;
    v116 = xmmword_2297C00;
    v117 = 0x7FFFFFFF;
    v118 = 0x7FFFFFFF7FFFFFFFLL;
    v121 = 0xBFF0000000000000;
    v122 = 0xBFF0000000000000;
    v123 = 0uLL;
    v125 = 0uLL;
    LOWORD(v126) = 0;
    DWORD1(v126) = -1;
    v127 = 0x7FFFFFFFFFFFFFFFuLL;
    sub_660FE4((v95 + 3168), v128, v51, __p, v4);
    sub_55D550(__p);
    if (v129 < 0)
    {
      operator delete(v128[0]);
    }

    v53 = v133;
    if (v133)
    {
      do
      {
        v54 = *v53;
        sub_55F7FC((v53 + 2));
        operator delete(v53);
        v53 = v54;
      }

      while (v54);
    }

    v55 = v132;
    v132 = 0;
    if (v55)
    {
      operator delete(v55);
    }

    v56 = v130;
    if (v130)
    {
      v57 = v131;
      v58 = v130;
      if (v131 == v130)
      {
        goto LABEL_138;
      }

      do
      {
        v59 = *(v57 - 1);
        v57 -= 3;
        if (v59 < 0)
        {
          operator delete(*v57);
        }
      }

      while (v57 != v56);
LABEL_137:
      v58 = v130;
LABEL_138:
      v131 = v56;
      operator delete(v58);
    }
  }

LABEL_139:
  if (v136 == 1)
  {
    sub_52E078(v135);
    if (v138 != 1)
    {
      goto LABEL_141;
    }
  }

  else if (v138 != 1)
  {
LABEL_141:
    if (v140 == 1)
    {
      goto LABEL_142;
    }

    goto LABEL_152;
  }

  sub_52E078(v137);
  if (v140 == 1)
  {
LABEL_142:
    sub_52E078(v139);
    if (v142 != 1)
    {
      goto LABEL_143;
    }

    goto LABEL_153;
  }

LABEL_152:
  if (v142 != 1)
  {
LABEL_143:
    v81 = v143;
    if (v143)
    {
      goto LABEL_144;
    }

LABEL_154:
    v83 = v145;
    if (!v145)
    {
      return;
    }

    goto LABEL_157;
  }

LABEL_153:
  sub_52E078(v141);
  v81 = v143;
  if (!v143)
  {
    goto LABEL_154;
  }

LABEL_144:
  v82 = *(&v143 + 1);
  if (*(&v143 + 1) == v81)
  {
    *(&v143 + 1) = v81;
    operator delete(v81);
    v83 = v145;
    if (!v145)
    {
      return;
    }

    goto LABEL_157;
  }

  do
  {
    v84 = *(v82 - 1);
    v82 -= 3;
    if (v84 < 0)
    {
      operator delete(*v82);
    }
  }

  while (v82 != v81);
  *(&v143 + 1) = v81;
  operator delete(v143);
  v83 = v145;
  if (v145)
  {
LABEL_157:
    v85 = *(&v145 + 1);
    v86 = v83;
    if (*(&v145 + 1) != v83)
    {
      do
      {
        v87 = *(v85 - 1);
        v85 -= 3;
        if (v87 < 0)
        {
          operator delete(*v85);
        }
      }

      while (v85 != v83);
      v86 = v145;
    }

    *(&v145 + 1) = v83;
    operator delete(v86);
  }
}