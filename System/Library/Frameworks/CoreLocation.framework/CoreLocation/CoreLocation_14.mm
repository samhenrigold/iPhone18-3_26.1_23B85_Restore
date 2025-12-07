void sub_19BA2E71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_19B966FCC(&a21);
  sub_19B966FCC(&a42);
  sub_19B966FCC(&a65);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA2E838(uint64_t a1)
{
  v2 = *(a1 + 2248);
  if (v2)
  {
    *(a1 + 2256) = v2;
    operator delete(v2);
  }

  return sub_19B9B0E48(a1);
}

void sub_19BA2E87C(uint64_t a1)
{
  v2 = *(a1 + 2248);
  if (v2)
  {
    *(a1 + 2256) = v2;
    operator delete(v2);
  }

  sub_19B9B0E48(a1);

  JUMPOUT(0x19EAE98C0);
}

os_log_t sub_19BA2E8D4()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

uint64_t *sub_19BA2E904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  v5 = *(a2 + 56);
  v6 = *(a2 + 65);
  *(a1 + 88) = 0;
  *(a1 + 65) = v6;
  *(a1 + 56) = v5;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return sub_19B96775C((a1 + 88), *(a2 + 88), *(a2 + 96), 0x8E38E38E38E38E39 * ((*(a2 + 96) - *(a2 + 88)) >> 3));
}

void sub_19BA2E990(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA2E9A8(char *a1)
{
  if (a1)
  {
    sub_19BA2E9A8(*a1);
    sub_19BA2E9A8(*(a1 + 1));
    v2 = *(a1 + 144);
    if (v2)
    {
      sub_19B8750F8(v2);
    }

    v5 = (a1 + 1120);
    sub_19B988734(&v5);
    if (a1[807] < 0)
    {
      operator delete(*(a1 + 98));
    }

    if (a1[375] < 0)
    {
      operator delete(*(a1 + 44));
    }

    v3 = *(a1 + 19);
    if (v3)
    {
      *(a1 + 20) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 9);
    if (v4)
    {
      sub_19B8750F8(v4);
    }

    operator delete(a1);
  }
}

uint64_t sub_19BA2EA48(uint64_t a1)
{
  v2 = *(a1 + 1096);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  v6 = (a1 + 1064);
  sub_19B988734(&v6);
  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  return a1;
}

uint64_t sub_19BA2EACC(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v7 = *(a3 + 8);
      *a3 = v6;
      if (v7)
      {
        sub_19B8750F8(v7);
      }

      v8 = v5[1];
      v9 = v5[2];
      *(a3 + 48) = *(v5 + 6);
      *(a3 + 16) = v8;
      *(a3 + 32) = v9;
      v10 = *(v5 + 56);
      *(a3 + 65) = *(v5 + 65);
      *(a3 + 56) = v10;
      sub_19BA2F10C(a3 + 88, (v5 + 88));
      a3 += 112;
      v5 += 7;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_19BA2EB5C(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v7 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4) < a4)
  {
    sub_19BA2ECC0(a1);
    if (a4 <= 0x249249249249249)
    {
      v8 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
      {
        v9 = 0x249249249249249;
      }

      else
      {
        v9 = v8;
      }

      sub_19BA2ED28(a1, v9);
    }

    sub_19B8B8A40();
  }

  v10 = a1[1] - v7;
  if (0x6DB6DB6DB6DB6DB7 * (v10 >> 4) >= a4)
  {
    sub_19BA2EE80(a2, a3, v7);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v14 -= 14;
        sub_19B988BB4(v14);
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    v11 = sub_19BA2EE80(a2, (a2 + v10), v7);
    a1[1] = sub_19BA2ED78(v11, a3, a1[1]);
  }
}

void sub_19BA2ECC0(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 14;
        sub_19B988BB4(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_19BA2ED28(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_19B988AB4(a1, a2);
  }

  sub_19B8B8A40();
}

uint64_t sub_19BA2ED78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a1 + v6;
      v8 = *(a1 + v6 + 8);
      *a3 = *(a1 + v6);
      *(a3 + 8) = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = *(v7 + 16);
      v10 = *(v7 + 32);
      *(a3 + 48) = *(v7 + 48);
      *(a3 + 16) = v9;
      *(a3 + 32) = v10;
      v11 = *(v7 + 56);
      v12 = *(v7 + 65);
      *(a3 + 88) = 0;
      *(a3 + 65) = v12;
      *(a3 + 56) = v11;
      *(a3 + 96) = 0;
      *(a3 + 104) = 0;
      sub_19B96775C((a3 + 88), *(v7 + 88), *(v7 + 96), 0x8E38E38E38E38E39 * ((*(v7 + 96) - *(v7 + 88)) >> 3));
      a3 += 112;
      v6 += 112;
    }

    while (v7 + 112 != a2);
  }

  return a3;
}

void sub_19BA2EE48(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 8);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  if (v2)
  {
    v5 = (v1 - 112);
    v6 = -v2;
    do
    {
      sub_19B988BB4(v5);
      v5 -= 14;
      v6 += 112;
    }

    while (v6);
  }

  _Unwind_Resume(exception_object);
}

char **sub_19BA2EE80(char **result, char **a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result + 12;
    do
    {
      v7 = *(v5 - 12);
      v6 = *(v5 - 11);
      v8 = v5 - 12;
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = *(a3 + 8);
      *a3 = v7;
      *(a3 + 8) = v6;
      if (v9)
      {
        sub_19B8750F8(v9);
      }

      v10 = *(v5 - 5);
      v11 = *(v5 - 4);
      *(a3 + 48) = *(v5 - 6);
      *(a3 + 16) = v10;
      *(a3 + 32) = v11;
      v12 = *(v5 - 5);
      *(a3 + 65) = *(v5 - 31);
      *(a3 + 56) = v12;
      if (a3 != v8)
      {
        sub_19B967884((a3 + 88), *(v5 - 1), *v5, 0x8E38E38E38E38E39 * ((*v5 - *(v5 - 1)) >> 3));
      }

      a3 += 112;
      v5 += 14;
    }

    while (v8 + 14 != a2);
    return a2;
  }

  return result;
}

uint64_t *sub_19BA2EF54(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19BA2ED28(result, a4);
  }

  return result;
}

void sub_19BA2EFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_19B988734(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_19BA2EFD8(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_19B988D6C(v7, v11);
    }

    sub_19B8B8A40();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

__n128 sub_19BA2F10C(uint64_t a1, __n128 *a2)
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

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t *sub_19BA2F160(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = (v1 + 232);
    sub_19B8F0E84(&v3);
    v2 = sub_19B9B1004(v1);
    return MEMORY[0x19EAE98C0](v2, 0x10B2C406FD4C524);
  }

  return result;
}

uint64_t sub_19BA2F1BC(uint64_t a1)
{
  v2 = *(a1 + 736);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    *(a1 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  return a1;
}

void *sub_19BA2F234(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_19BA2F288(uint64_t a1)
{
  sub_19BA2E9A8(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_19BA2E9A8(v2);
  }

  return a1;
}

void sub_19BA2F2D8(uint64_t *result, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v10 = result[1];
    v9 = result[2];
    if (a5 <= (v9 - v10) >> 6)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 6;
      if (v17 >= a5)
      {
        sub_19BA2F5E4(result, a2, result[1], a2 + (a5 << 6));

        sub_19BA2F6FC(a3, a3 + (a5 << 6), a2);
      }

      else
      {
        v19 = v16 + a3;
        v38 = result[1];
        v39 = v10;
        v34 = result;
        v35 = &v38;
        *&v36 = &v39;
        v20 = v10;
        BYTE8(v36) = 0;
        if ((v16 + a3) != a4)
        {
          v20 = v10;
          v21 = v16 + a3;
          do
          {
            *v20 = *v21;
            v20[2] = 0;
            v20[3] = 0;
            v20[1] = 0;
            sub_19B8F2708(v20 + 1, *(v21 + 8), *(v21 + 16), (*(v21 + 16) - *(v21 + 8)) >> 4);
            v20[4] = *(v21 + 32);
            v20[5] = *(v21 + 40);
            v20[6] = *(v21 + 48);
            v20[7] = *(v21 + 56);
            v21 += 64;
            v20 = (v39 + 64);
            v39 += 64;
          }

          while (v21 != a4);
        }

        BYTE8(v36) = 1;
        sub_19B8F28A4(&v34);
        result[1] = v20;
        if (v17 >= 1)
        {
          sub_19BA2F5E4(result, a2, v10, a2 + (a5 << 6));
          sub_19BA2F6FC(a3, v19, a2);
        }
      }
    }

    else
    {
      v11 = *result;
      v12 = a5 + ((v10 - *result) >> 6);
      if (v12 >> 58)
      {
        sub_19B8B8A40();
      }

      v13 = a2 - v11;
      v14 = v9 - v11;
      if (v14 >> 5 > v12)
      {
        v12 = v14 >> 5;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFC0)
      {
        v15 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v37 = result;
      if (v15)
      {
        sub_19B8F278C(result, v15);
      }

      v22 = 0;
      v23 = v13 >> 6 << 6;
      v34 = 0;
      v35 = v23;
      v36 = v23;
      v24 = a5 << 6;
      v25 = v23 + (a5 << 6);
      do
      {
        v26 = (v23 + v22);
        *v26 = *(a3 + v22);
        v26[2] = 0;
        v26[3] = 0;
        *(v23 + v22 + 8) = 0;
        sub_19B8F2708((v23 + v22 + 8), *(a3 + v22 + 8), *(a3 + v22 + 16), (*(a3 + v22 + 16) - *(a3 + v22 + 8)) >> 4);
        v26[4] = *(a3 + v22 + 32);
        v26[5] = *(a3 + v22 + 40);
        v26[6] = *(a3 + v22 + 48);
        v27.n128_u64[0] = *(a3 + v22 + 56);
        v26[7] = v27.n128_u64[0];
        v22 += 64;
      }

      while (v24 != v22);
      *&v36 = v25;
      sub_19B8F27D4(result, a2, result[1], v25, v27);
      v28 = *result;
      v29 = v35;
      *&v36 = v25 + result[1] - a2;
      result[1] = a2;
      v30 = v29 + v28 - a2;
      sub_19B8F27D4(result, v28, a2, v30, v31);
      v32 = *result;
      *result = v30;
      v33 = result[2];
      *(result + 1) = v36;
      *&v36 = v32;
      *(&v36 + 1) = v33;
      v34 = v32;
      v35 = v32;
      sub_19B8F2924(&v34);
    }
  }
}

void sub_19BA2F5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B8F2924(va);
  _Unwind_Resume(a1);
}

__n128 sub_19BA2F5E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = a2 + v4 - a4;
    v7 = *(a1 + 8);
    do
    {
      *v7 = *v6;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      *(v7 + 8) = *(v6 + 8);
      *(v7 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v7 + 32) = *(v6 + 32);
      result = *(v6 + 48);
      *(v7 + 48) = result;
      v6 += 64;
      v7 += 64;
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v9 = 0;
    v10 = a4 - v4;
    do
    {
      v11 = v5 + v9;
      v12 = v4 + v9;
      v14 = (v4 + v9 - 56);
      v13 = *v14;
      *(v4 + v9 - 64) = *(v5 + v9 - 64);
      if (v13)
      {
        *(v12 - 48) = v13;
        operator delete(v13);
        *v14 = 0;
        *(v4 + v9 - 48) = 0;
        *(v4 + v9 - 40) = 0;
      }

      v15 = (v11 - 56);
      *v14 = *(v11 - 56);
      *(v12 - 40) = *(v11 - 40);
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      *(v12 - 32) = *(v11 - 32);
      result = *(v11 - 16);
      *(v12 - 16) = result;
      v9 -= 64;
    }

    while (v10 != v9);
  }

  return result;
}

__n128 sub_19BA2F6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      *a3 = *v4;
      if (a3 != v4)
      {
        v5 = *(a3 + 8);
        v6 = *(v4 + 8);
        v7 = *(v4 + 16);
        v8 = v7 - v6;
        v9 = *(a3 + 24);
        if (v9 - v5 < (v7 - v6))
        {
          if (v5)
          {
            *(a3 + 16) = v5;
            operator delete(v5);
            v9 = 0;
            *(a3 + 8) = 0;
            *(a3 + 16) = 0;
            *(a3 + 24) = 0;
          }

          v10 = v8 >> 4;
          if (!((v8 >> 4) >> 60))
          {
            if (v9 >> 3 > v10)
            {
              v10 = v9 >> 3;
            }

            if (v9 >= 0x7FFFFFFFFFFFFFF0)
            {
              v11 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v11 = v10;
            }

            sub_19B8F18CC((a3 + 8), v11);
          }

          sub_19B8B8A40();
        }

        v12 = *(a3 + 16);
        v13 = v12 - v5;
        if (v12 - v5 >= v8)
        {
          while (v6 != v7)
          {
            v17 = *v6++;
            *v5 = v17;
            v5 += 16;
          }

          *(a3 + 16) = v5;
        }

        else
        {
          if (v12 != v5)
          {
            v14 = (v6 + v13);
            do
            {
              v15 = *v6++;
              *v5 = v15;
              v5 += 16;
              v13 -= 16;
            }

            while (v13);
            v6 = v14;
          }

          if (v6 == v7)
          {
            v16 = v12;
          }

          else
          {
            v16 = v12;
            do
            {
              *v12 = *v6;
              *(v12 + 1) = *(v6++ + 1);
              v12 += 16;
              v16 += 16;
            }

            while (v6 != v7);
          }

          *(a3 + 16) = v16;
        }
      }

      *(a3 + 32) = *(v4 + 32);
      result = *(v4 + 48);
      *(a3 + 48) = result;
      v4 += 64;
      a3 += 64;
    }

    while (v4 != a2);
  }

  return result;
}

void sub_19BA2F8A0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 7);
        if (v6)
        {
          *(v4 - 6) = v6;
          operator delete(v6);
        }

        v4 -= 64;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_19BA2F92C(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v2 = result;
    result = 1;
    v3 = *a2;
    v4 = a2[1];
    while (1)
    {
      v5 = *(v2 + 32);
      if (v3 == v5)
      {
        if (a2[2] & 1) != 0 && (*(v2 + 48))
        {
          v6 = *(v2 + 40);
          if (v4 >= v6)
          {
            if (v6 >= v4)
            {
              return result;
            }

LABEL_14:
            v2 += 8;
          }
        }

        else if ((a2[2] & 1) == 0)
        {
          if ((*(v2 + 48) & 1) == 0)
          {
            return result;
          }

          goto LABEL_14;
        }
      }

      else if (v3 >= v5)
      {
        if (v5 >= v3)
        {
          return result;
        }

        goto LABEL_14;
      }

      v2 = *v2;
      if (!v2)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t **sub_19BA2F99C(uint64_t a1, uint64_t *a2, _OWORD **a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_17:
    operator new();
  }

  v4 = *a2;
  v5 = a2[1];
  while (1)
  {
    while (1)
    {
      v6 = v3;
      v7 = v3[4];
      if (v4 != v7)
      {
        if (v4 >= v7)
        {
          if (v7 >= v4)
          {
            return v6;
          }

          goto LABEL_16;
        }

        goto LABEL_13;
      }

      if ((a2[2] & 1) == 0 || (v6[6] & 1) == 0)
      {
        break;
      }

      v8 = v6[5];
      if (v5 >= v8)
      {
        if (v8 >= v5)
        {
          return v6;
        }

        goto LABEL_16;
      }

LABEL_13:
      v3 = *v6;
      if (!*v6)
      {
        goto LABEL_17;
      }
    }

    if (a2[2])
    {
      goto LABEL_13;
    }

    if ((v6[6] & 1) == 0)
    {
      return v6;
    }

LABEL_16:
    v3 = v6[1];
    if (!v3)
    {
      goto LABEL_17;
    }
  }
}

void sub_19BA2FBB8(std::string *a1)
{
  sub_19B8759E8(&v50, "{public}");
  sub_19B8759E8(&__p, "");
  v2 = 0;
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v5 = v52;
  if ((v52 & 0x80u) == 0)
  {
    v6 = v52;
  }

  else
  {
    v6 = v51;
  }

  if ((v52 & 0x80u) == 0)
  {
    v7 = &v50;
  }

  else
  {
    v7 = v50;
  }

  while (!v6)
  {
LABEL_22:
    if (v2 != -1)
    {
      if ((v49 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v49 & 0x80u) == 0)
      {
        v15 = v49;
      }

      else
      {
        v15 = v48;
      }

      std::string::replace(a1, v2, v6, p_p, v15);
      v16 = v49;
      if ((v49 & 0x80u) != 0)
      {
        v16 = v48;
      }

      v2 += v16;
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v4 = a1;
      }

      else
      {
        v4 = a1->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = a1->__r_.__value_.__l.__size_;
      }

      v5 = v52;
      v7 = (v52 & 0x80u) == 0 ? &v50 : v50;
      v6 = (v52 & 0x80u) == 0 ? v52 : v51;
      if (size >= v2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

  v8 = size - v2;
  if ((size - v2) >= v6)
  {
    v9 = v4 + size;
    v10 = v4 + v2;
    v11 = *v7;
    do
    {
      if (v8 - v6 == -1)
      {
        break;
      }

      v12 = memchr(v10, v11, v8 - v6 + 1);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      if (!memcmp(v12, v7, v6))
      {
        if (v13 == v9)
        {
          break;
        }

        v2 = v13 - v4;
        goto LABEL_22;
      }

      v10 = v13 + 1;
      v8 = v9 - (v13 + 1);
    }

    while (v8 >= v6);
  }

LABEL_43:
  if (v49 < 0)
  {
    operator delete(__p);
    if ((v52 & 0x80) == 0)
    {
      goto LABEL_45;
    }

LABEL_135:
    operator delete(v50);
    goto LABEL_45;
  }

  if ((v5 & 0x80) != 0)
  {
    goto LABEL_135;
  }

LABEL_45:
  sub_19B8759E8(&v50, "{private}");
  sub_19B8759E8(&__p, "");
  v17 = 0;
  v18 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v18 & 0x80u) == 0)
  {
    v19 = a1;
  }

  else
  {
    v19 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v18 & 0x80u) != 0)
  {
    v18 = a1->__r_.__value_.__l.__size_;
  }

  v20 = v52;
  if ((v52 & 0x80u) == 0)
  {
    v21 = v52;
  }

  else
  {
    v21 = v51;
  }

  if ((v52 & 0x80u) == 0)
  {
    v22 = &v50;
  }

  else
  {
    v22 = v50;
  }

  while (!v21)
  {
LABEL_66:
    if (v17 != -1)
    {
      if ((v49 & 0x80u) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p;
      }

      if ((v49 & 0x80u) == 0)
      {
        v30 = v49;
      }

      else
      {
        v30 = v48;
      }

      std::string::replace(a1, v17, v21, v29, v30);
      v31 = v49;
      if ((v49 & 0x80u) != 0)
      {
        v31 = v48;
      }

      v17 += v31;
      v18 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((v18 & 0x80u) == 0)
      {
        v19 = a1;
      }

      else
      {
        v19 = a1->__r_.__value_.__r.__words[0];
      }

      if ((v18 & 0x80u) != 0)
      {
        v18 = a1->__r_.__value_.__l.__size_;
      }

      v20 = v52;
      v22 = (v52 & 0x80u) == 0 ? &v50 : v50;
      v21 = (v52 & 0x80u) == 0 ? v52 : v51;
      if (v18 >= v17)
      {
        continue;
      }
    }

    goto LABEL_87;
  }

  v23 = v18 - v17;
  if ((v18 - v17) >= v21)
  {
    v24 = v19 + v18;
    v25 = v19 + v17;
    v26 = *v22;
    do
    {
      if (v23 - v21 == -1)
      {
        break;
      }

      v27 = memchr(v25, v26, v23 - v21 + 1);
      if (!v27)
      {
        break;
      }

      v28 = v27;
      if (!memcmp(v27, v22, v21))
      {
        if (v28 == v24)
        {
          break;
        }

        v17 = v28 - v19;
        goto LABEL_66;
      }

      v25 = v28 + 1;
      v23 = v24 - (v28 + 1);
    }

    while (v23 >= v21);
  }

LABEL_87:
  if (v49 < 0)
  {
    operator delete(__p);
    if ((v52 & 0x80) == 0)
    {
      goto LABEL_89;
    }

LABEL_137:
    operator delete(v50);
    goto LABEL_89;
  }

  if ((v20 & 0x80) != 0)
  {
    goto LABEL_137;
  }

LABEL_89:
  sub_19B8759E8(&v50, "{sensitive}");
  sub_19B8759E8(&__p, "");
  v32 = 0;
  v33 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v33 & 0x80u) == 0)
  {
    v34 = a1;
  }

  else
  {
    v34 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v33 & 0x80u) != 0)
  {
    v33 = a1->__r_.__value_.__l.__size_;
  }

  v35 = v52;
  if ((v52 & 0x80u) == 0)
  {
    v36 = v52;
  }

  else
  {
    v36 = v51;
  }

  if ((v52 & 0x80u) == 0)
  {
    v37 = &v50;
  }

  else
  {
    v37 = v50;
  }

  while (!v36)
  {
LABEL_110:
    if (v32 != -1)
    {
      if ((v49 & 0x80u) == 0)
      {
        v44 = &__p;
      }

      else
      {
        v44 = __p;
      }

      if ((v49 & 0x80u) == 0)
      {
        v45 = v49;
      }

      else
      {
        v45 = v48;
      }

      std::string::replace(a1, v32, v36, v44, v45);
      v46 = v49;
      if ((v49 & 0x80u) != 0)
      {
        v46 = v48;
      }

      v32 += v46;
      v33 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((v33 & 0x80u) == 0)
      {
        v34 = a1;
      }

      else
      {
        v34 = a1->__r_.__value_.__r.__words[0];
      }

      if ((v33 & 0x80u) != 0)
      {
        v33 = a1->__r_.__value_.__l.__size_;
      }

      v35 = v52;
      v37 = (v52 & 0x80u) == 0 ? &v50 : v50;
      v36 = (v52 & 0x80u) == 0 ? v52 : v51;
      if (v33 >= v32)
      {
        continue;
      }
    }

    goto LABEL_131;
  }

  v38 = v33 - v32;
  if ((v33 - v32) >= v36)
  {
    v39 = v34 + v33;
    v40 = v34 + v32;
    v41 = *v37;
    do
    {
      if (v38 - v36 == -1)
      {
        break;
      }

      v42 = memchr(v40, v41, v38 - v36 + 1);
      if (!v42)
      {
        break;
      }

      v43 = v42;
      if (!memcmp(v42, v37, v36))
      {
        if (v43 == v39)
        {
          break;
        }

        v32 = v43 - v34;
        goto LABEL_110;
      }

      v40 = v43 + 1;
      v38 = v39 - (v43 + 1);
    }

    while (v38 >= v36);
  }

LABEL_131:
  if ((v49 & 0x80000000) == 0)
  {
    if ((v35 & 0x80) == 0)
    {
      return;
    }

LABEL_139:
    operator delete(v50);
    return;
  }

  operator delete(__p);
  if ((v52 & 0x80) != 0)
  {
    goto LABEL_139;
  }
}

void sub_19BA30054(uint64_t *a1, uint64_t *a2)
{
  sub_19B916DC0(a1);
  v4 = a2[2];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = *(*a2 + 8);
    v8 = *v5;
    *(v8 + 8) = v7;
    *v7 = v8;
    v9 = *a1;
    *(v9 + 8) = v5;
    *v5 = v9;
    *a1 = v6;
    *(v6 + 8) = a1;
    a1[2] += v4;
    a2[2] = 0;
  }
}

double sub_19BA31688()
{
  if ((atomic_load_explicit(&qword_1ED519320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519320))
  {
    dword_1ED519310[0] = 1;
    __cxa_guard_release(&qword_1ED519320);
  }

  if ((atomic_load_explicit(&qword_1ED519330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519330))
  {
    qword_1ED519328 = 0x3FF0000000000000;
    __cxa_guard_release(&qword_1ED519330);
  }

  v0 = 48271 * (dword_1ED519310[0] % 0xADC8u);
  v1 = 3399 * (dword_1ED519310[0] / 0xADC8u);
  v2 = v0 >= v1;
  v3 = v0 - v1;
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  v5 = v4 + v3;
  v6 = v5 - 1;
  v7 = v5 / 0xADC8;
  v8 = 48271 * (v5 % 0xADC8);
  v7 *= 3399;
  v2 = v8 >= v7;
  v9 = v8 - v7;
  if (v2)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x7FFFFFFF;
  }

  dword_1ED519310[0] = v10 + v9;
  return *&qword_1ED519328 * ((v6 + (v10 + v9 - 1) * 2147483650.0) / 4.61168601e18) + 0.0;
}

void *sub_19BA317C4(double *a1, void *a2, id *a3, double a4)
{
  v8 = sub_19BA319F8() * a4;
  v9 = sub_19BA319F8() * a4;
  objc_msgSend_horizontalAccuracy(a2, v10, v11, v12);
  v14 = v13;
  objc_msgSend_horizontalAccuracy(a2, v15, v16, v17);
  v93 = sqrt(v14 * v18 + a4 * a4);
  v19 = v9 * a1[15];
  v20 = v8 * a1[16];
  v21 = [CLTripSegmentLocation alloc];
  v25 = objc_msgSend_timestamp(a2, v22, v23, v24);
  objc_msgSend_latitude(a2, v26, v27, v28);
  v33 = v19 + v32;
  if (v33 > 90.0)
  {
    v33 = 90.0;
  }

  if (v33 >= -90.0)
  {
    v34 = v33;
  }

  else
  {
    v34 = -90.0;
  }

  objc_msgSend_longitude(a2, v29, v30, v31);
  v39 = fmod(v20 + v35, 360.0);
  if (v39 <= -180.0)
  {
    v39 = v39 + 360.0;
  }

  else if (v39 > 180.0)
  {
    v39 = v39 + -360.0;
  }

  objc_msgSend_course(a2, v36, v37, v38);
  v41 = v40;
  objc_msgSend_courseAccuracy(a2, v42, v43, v44);
  v46 = v45;
  objc_msgSend_speed(a2, v47, v48, v49);
  v51 = v50;
  objc_msgSend_speedAccuracy(a2, v52, v53, v54);
  v56 = v55;
  objc_msgSend_altitude(a2, v57, v58, v59);
  v61 = v60;
  objc_msgSend_altitudeAccuracy(a2, v62, v63, v64);
  v66 = v65;
  v70 = objc_msgSend_referenceFrame(a2, v67, v68, v69);
  v72 = objc_msgSend_initWithTime_latitude_longitude_horizontalAccuracy_course_courseAccuracy_speed_speedAccuracy_altitude_altitudeAccuracy_locType_referenceFrame_(v21, v71, v25, 1, v70, v34, v39, v93, v41, v46, v51, v56, v61, v66);
  objc_msgSend_addObject_(*a3, v73, v72, v74);
  objc_msgSend_iOSTime(v72, v75, v76, v77);
  v82 = v81 + 1.0;
  v83 = a1[20];
  if (v82 > v83)
  {
    objc_msgSend_iOSTime(v72, v78, v79, v80);
    v83 = v84 + 1.0;
  }

  a1[20] = v83;
  result = objc_msgSend_iOSTime(v72, v78, v79, v80);
  v90 = v89 + 1.0;
  v91 = a1[25];
  if (v90 > v91)
  {
    result = objc_msgSend_iOSTime(v72, v86, v87, v88);
    v91 = v92 + 1.0;
  }

  a1[25] = v91;
  return result;
}

double sub_19BA319F8()
{
  if ((atomic_load_explicit(&qword_1ED519350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519350))
  {
    sub_19BA32500(&unk_1ED519318);
    __cxa_atexit(MEMORY[0x1E69E52D8], &unk_1ED519318, &dword_19B873000);
    __cxa_guard_release(&qword_1ED519350);
  }

  if ((atomic_load_explicit(&qword_1ED519358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519358))
  {
    v1 = MEMORY[0x19EAE97B0](&unk_1ED519318);
    dword_1EAFE5130[0] = v1;
    for (i = 1; i != 624; ++i)
    {
      v1 = i + 1812433253 * (v1 ^ (v1 >> 30));
      dword_1EAFE5130[i] = v1;
    }

    qword_1EAFE5AF0 = 0;
    __cxa_guard_release(&qword_1ED519358);
  }

  if ((atomic_load_explicit(qword_1ED519360, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1ED519360))
  {
    xmmword_1ED519390 = xmmword_19BA8BCB0;
    byte_1ED5193A8 = 0;
    __cxa_guard_release(qword_1ED519360);
  }

  return sub_19BA32588(&xmmword_1ED519390, dword_1EAFE5130, &xmmword_1ED519390);
}

BOOL sub_19BA31B74(uint64_t a1, void *a2, id *a3, uint64_t a4)
{
  result = 0;
  if (a2 && a3)
  {
    v7 = a4;
    if (objc_msgSend_count(a2, a2, a3, a4) >= (2 * *(a1 + 92)))
    {
      Object = objc_msgSend_firstObject(a2, v9, v10, v11);
      objc_msgSend_iOSTime(Object, v13, v14, v15);
      *(a1 + 160) = v16;
      *(a1 + 200) = v16;
      context = objc_autoreleasePoolPush();
      if (v7)
      {
        v20 = objc_msgSend_array(MEMORY[0x1E695DF70], v17, v18, v19);
        sub_19B9A338C(a2, v20);
        v24 = objc_msgSend_count(v20, v21, v22, v23) != 0;
      }

      else
      {
        v24 = 0;
      }

      if (*(a1 + 92))
      {
        v25 = 0;
        do
        {
          v26 = objc_msgSend_objectAtIndexedSubscript_(a2, v17, v25, v19);
          sub_19BA317C4(a1, v26, a3, *(a1 + 96));
          ++v25;
        }

        while (v25 < *(a1 + 92));
      }

      v27 = objc_msgSend_lastObject(*a3, v17, v18, v19);
      objc_msgSend_speed(v27, v28, v29, v30);
      *(a1 + 136) = v31;
      v35 = objc_msgSend_lastObject(*a3, v32, v33, v34);
      objc_msgSend_course(v35, v36, v37, v38);
      *(a1 + 144) = v39;
      v40 = *(a1 + 92);
      if (objc_msgSend_count(a2, v41, v42, v43) - v40 > v40)
      {
        do
        {
          v47 = objc_msgSend_objectAtIndexedSubscript_(a2, v44, v40, v46);
          v51 = v47;
          if (v24 && objc_msgSend_isWiFiLocationType(v47, v48, v49, v50))
          {
            objc_msgSend_addObject_(*a3, v48, v51, v50);
          }

          else
          {
            objc_msgSend_iOSTime(v51, v48, v49, v50);
            v59 = v58;
            if (v58 > *(a1 + 160))
            {
              objc_msgSend_latitude(v51, v55, v56, v57);
              *(a1 + 128) = cos(v60 * 0.0174532925) * 0.00000899321606;
              v61 = *a1;
              v62 = *(a1 + 8) - *a1;
              *(a1 + 160) = v59 + v61 + sub_19BA31688() * v62;
              v63 = (*(a1 + 24) + 1);
              *(a1 + 168) = ((sub_19BA31688() * *(a1 + 24)) + v63 * 0.5);
              if (objc_msgSend_mapsRoadClass(v51, v64, v65, v66))
              {
                objc_msgSend_mapsRoadClass(v51, v67, v68, v69);
              }

              v70 = *(a1 + 16);
              *(a1 + 192) = v70;
              v71 = sub_19BA319F8();
              v72 = sub_19BA319F8();
              v73 = v70 * sqrt(v72 * v72 + v71 * v71);
              v74 = sub_19BA31688();
              v75 = __sincos_stret(v74 * 360.0 * 0.0174532925);
              *(a1 + 176) = v73 * v75.__cosval;
              *(a1 + 184) = v73 * v75.__sinval;
            }

            if (*(a1 + 168) >= 1)
            {
              v76 = *(a1 + 192);
              objc_msgSend_horizontalAccuracy(v51, v55, v56, v57);
              v78 = v77;
              objc_msgSend_horizontalAccuracy(v51, v79, v80, v81);
              v83 = v82;
              v84 = *(a1 + 32);
              v85 = *(a1 + 176);
              v86 = *(a1 + 120) * v85.f64[0];
              v87 = vmuld_lane_f64(*(a1 + 128), v85, 1);
              *(a1 + 176) = vmulq_n_f64(v85, v84);
              *(a1 + 192) = v84 * *(a1 + 192);
              --*(a1 + 168);
              v88 = [CLTripSegmentLocation alloc];
              v92 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v89, v90, v91, v59);
              objc_msgSend_latitude(v51, v93, v94, v95);
              v100 = v86 + v99;
              if (v100 > 90.0)
              {
                v100 = 90.0;
              }

              if (v100 < -90.0)
              {
                v100 = -90.0;
              }

              v259 = v100;
              objc_msgSend_longitude(v51, v96, v97, v98);
              v105 = fmod(v87 + v101, 360.0);
              if (v105 <= -180.0)
              {
                v105 = v105 + 360.0;
              }

              else if (v105 > 180.0)
              {
                v105 = v105 + -360.0;
              }

              v106 = sqrt(v78 * v83 + v76 * v76);
              objc_msgSend_course(v51, v102, v103, v104);
              v108 = v107;
              objc_msgSend_courseAccuracy(v51, v109, v110, v111);
              v113 = v112;
              objc_msgSend_speed(v51, v114, v115, v116);
              v118 = v117;
              objc_msgSend_speedAccuracy(v51, v119, v120, v121);
              v123 = v122;
              objc_msgSend_altitude(v51, v124, v125, v126);
              v128 = v127;
              objc_msgSend_altitudeAccuracy(v51, v129, v130, v131);
              v133 = v132;
              v137 = objc_msgSend_referenceFrame(v51, v134, v135, v136);
              v139 = objc_msgSend_initWithTime_latitude_longitude_horizontalAccuracy_course_courseAccuracy_speed_speedAccuracy_altitude_altitudeAccuracy_locType_referenceFrame_(v88, v138, v92, 1, v137, v259, v105, v106, v108, v113, v118, v123, v128, v133, context);
              if (v139)
              {
                objc_msgSend_addObject_(*a3, v55, v139, v57);
              }
            }

            if (!v24)
            {
              v140 = objc_msgSend_timestamp(v51, v55, v56, v57);
              objc_msgSend_timeIntervalSinceReferenceDate(v140, v141, v142, v143);
              v145 = v144;
              objc_msgSend_speed(v51, v146, v147, v148);
              v150 = v149;
              v151 = *(a1 + 136);
              objc_msgSend_speed(v51, v152, v153, v154);
              v156 = v155;
              v157 = *(a1 + 152) + 6.0;
              objc_msgSend_course(v51, v158, v159, v160);
              v162 = fmod(v161 - *(a1 + 144), 360.0);
              if (v162 < 0.0)
              {
                v162 = v162 + 360.0;
              }

              if (v162 > 180.0)
              {
                v162 = v162 + -360.0;
              }

              v164 = fabs(v162) <= 20.0 || v156 >= 25.0 || v145 <= v157;
              if (v164)
              {
                if (vabdd_f64(v150, v151) <= 5.0)
                {
                  v165 = *(a1 + 200);
                }

                else
                {
                  v165 = v145 + sub_19BA31688() * 3.0;
                  if (v165 >= *(a1 + 200))
                  {
                    v165 = *(a1 + 200);
                  }

                  *(a1 + 200) = v165;
                }
              }

              else
              {
                v165 = v145 + 1.0;
                *(a1 + 200) = v145 + 1.0;
                *(a1 + 152) = v145 + 1.0;
              }

              if (v145 >= v165)
              {
                objc_msgSend_latitude(v51, v55, v56, v57);
                *(a1 + 128) = cos(v167 * 0.0174532925) * 0.00000899321606;
                objc_msgSend_speed(v51, v168, v169, v170);
                v172 = vdup_n_s32(v171 > 25.0);
                v173.i64[0] = v172.u32[0];
                v173.i64[1] = v172.u32[1];
                *(a1 + 48) = vbslq_s8(vcltzq_s64(vshlq_n_s64(v173, 0x3FuLL)), xmmword_19BA8D500, xmmword_19BA8D4F0);
                objc_msgSend_speed(v51, v174, v175, v176);
                v177 = 6.0;
                if (v178 > *(a1 + 104))
                {
                  v179 = *(a1 + 56) - *(a1 + 48);
                  v177 = *(a1 + 48) + sub_19BA31688() * v179;
                }

                *(a1 + 200) = v145 + v177;
                v180 = *(a1 + 88) + 1;
                v166 = (sub_19BA31688() * *(a1 + 88)) + v180 / 2;
                *(a1 + 208) = v166;
              }

              else
              {
                v166 = *(a1 + 208);
              }

              if (v166 >= 1)
              {
                v260 = *(a1 + 64);
                if ((atomic_load_explicit(&qword_1ED519338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519338))
                {
                  sub_19BA32500(&stru_1ED519314);
                  __cxa_atexit(MEMORY[0x1E69E52D8], &stru_1ED519314, &dword_19B873000);
                  __cxa_guard_release(&qword_1ED519338);
                }

                if ((atomic_load_explicit(&qword_1ED519340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519340))
                {
                  v244 = MEMORY[0x19EAE97B0](&stru_1ED519314);
                  dword_1ED5193B0 = v244;
                  v245 = 41;
                  v246 = 1;
                  do
                  {
                    v247 = 1812433253 * (v244 ^ (v244 >> 30));
                    v244 = v247 + v246;
                    dword_1ED519310[v245] = v245 + v247 - 40;
                    ++v246;
                    ++v245;
                  }

                  while (v245 != 664);
                  qword_1ED519D70 = 0;
                  __cxa_guard_release(&qword_1ED519340);
                }

                if ((atomic_load_explicit(&qword_1ED519348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519348))
                {
                  *xmmword_1ED519370 = v260;
                  byte_1ED519388 = 0;
                  __cxa_guard_release(&qword_1ED519348);
                }

                v181 = sub_19BA32588(xmmword_1ED519370, &dword_1ED5193B0, xmmword_1ED519370);
                v185 = exp(v181);
                if (*(a1 + 40) >= v185)
                {
                  v186 = v185;
                }

                else
                {
                  v186 = *(a1 + 40);
                }

                objc_msgSend_course(v51, v182, v183, v184);
                v188 = v187;
                v164 = sub_19BA31688() <= 0.5;
                v189 = -1.0;
                if (!v164)
                {
                  v189 = 1.0;
                }

                v190 = __sincos_stret((v188 + v189 * 90.0) * 0.0174532925);
                v191 = v186 * v190.__sinval;
                v192 = v186 * v190.__cosval;
                v193 = *(a1 + 80);
                objc_msgSend_horizontalAccuracy(v51, v194, v195, v196);
                v198 = v197;
                objc_msgSend_horizontalAccuracy(v51, v199, v200, v201);
                v203 = v202;
                v204 = *(a1 + 120) * v192;
                v205 = *(a1 + 128) * v191;
                --*(a1 + 208);
                v206 = [CLTripSegmentLocation alloc];
                v210 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v207, v208, v209, v145);
                objc_msgSend_latitude(v51, v211, v212, v213);
                v218 = v204 + v217;
                if (v218 > 90.0)
                {
                  v218 = 90.0;
                }

                if (v218 >= -90.0)
                {
                  v219 = v218;
                }

                else
                {
                  v219 = -90.0;
                }

                objc_msgSend_longitude(v51, v214, v215, v216);
                v224 = fmod(v205 + v220, 360.0);
                if (v224 <= -180.0)
                {
                  v224 = v224 + 360.0;
                }

                else if (v224 > 180.0)
                {
                  v224 = v224 + -360.0;
                }

                v225 = sqrt(v193 + v198 * v203);
                objc_msgSend_altitude(v51, v221, v222, v223);
                v227 = v226;
                objc_msgSend_altitudeAccuracy(v51, v228, v229, v230);
                v232 = v231;
                v236 = objc_msgSend_referenceFrame(v51, v233, v234, v235);
                v238 = objc_msgSend_initWithTime_latitude_longitude_horizontalAccuracy_course_courseAccuracy_speed_speedAccuracy_altitude_altitudeAccuracy_locType_referenceFrame_(v206, v237, v210, 4, v236, v219, v224, v225, -1.0, -1.0, -1.0, -1.0, v227, v232);
                if (v238)
                {
                  objc_msgSend_addObject_(*a3, v55, v238, v57);
                }
              }
            }

            objc_msgSend_speed(v51, v55, v56, v57);
            *(a1 + 136) = v239;
            objc_msgSend_course(v51, v240, v241, v242);
            *(a1 + 144) = v243;
          }

          ++v40;
        }

        while (v40 < objc_msgSend_count(a2, v52, v53, v54) - *(a1 + 92));
      }

      for (i = objc_msgSend_count(a2, v44, v45, v46) - *(a1 + 92); i < objc_msgSend_count(a2, v248, v249, v250); ++i)
      {
        v254 = objc_msgSend_objectAtIndexedSubscript_(a2, v252, i, v253);
        sub_19BA317C4(a1, v254, a3, *(a1 + 96));
      }

      objc_autoreleasePoolPop(context);
      return objc_msgSend_count(*a3, v255, v256, v257) != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

std::random_device *sub_19BA32500(std::random_device *a1)
{
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_19BA3256C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19BA32588(uint64_t a1, uint64_t a2, double *a3)
{
  if (*(a1 + 24))
  {
    *(a1 + 24) = 0;
    v5 = *(a1 + 16);
  }

  else
  {
    do
    {
      do
      {
        v7 = sub_19B91408C(a2);
        v8 = (v7 + sub_19B91408C(a2) * 4294967300.0) * 5.42101086e-20 * 2.0 + -1.0;
        v9 = sub_19B91408C(a2);
        v10 = (v9 + sub_19B91408C(a2) * 4294967300.0) * 5.42101086e-20 * 2.0 + -1.0;
        v11 = v10 * v10 + v8 * v8;
      }

      while (v11 > 1.0);
    }

    while (v11 == 0.0);
    v12 = sqrt(log(v10 * v10 + v8 * v8) * -2.0 / v11);
    *(a1 + 16) = v10 * v12;
    *(a1 + 24) = 1;
    v5 = v8 * v12;
  }

  return *a3 + v5 * a3[1];
}

void sub_19BA329E0(NSObject *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a1[325].isa)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v1 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_INFO, "CLMM,Pedestrian,Maps API already initialized", buf, 2u);
    }

    v2 = sub_19B87DD40();
    if (*(v2 + 160) <= 1 && *(v2 + 164) <= 1 && *(v2 + 168) <= 1 && !*(v2 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    LOWORD(v35) = 0;
    v3 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLMM,Pedestrian,Maps API already initialized", &v35, 2);
    sub_19B885924("Generic", 1, 0, 2, "virtual void CLGeoMapFeatureAccessGeometryPedestrian::initializeMapsAPI()", "CoreLocation: %s\n", v3);
    if (v3 == buf)
    {
      return;
    }

LABEL_30:
    free(v3);
    return;
  }

  v4 = a1;
  a1[326].isa = dispatch_queue_create("cl_geo_access_map_feature_geometry_pedestrian_queue", 0);
  v5 = objc_alloc(MEMORY[0x1E69A2198]);
  v8 = objc_msgSend_initWithQueue_(v5, v6, v4[326].isa, v7);
  v4[325].isa = v8;
  if (v8)
  {
    objc_msgSend_setAllowNetworkTileLoad_(v8, v9, 1, v10);
    objc_msgSend_setFlipNegativeTravelDirectionRoads_(v4[325].isa, v11, 1, v12);
    objc_msgSend_setVisitDoubleTravelDirectionRoadsTwice_(v4[325].isa, v13, 0, v14);
    objc_msgSend_setAllowStaleData_(v4[325].isa, v15, 1, v16);
    objc_msgSend_setAllowOfflineData_(v4[325].isa, v17, 1, v18);
    v19 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v33 = off_1EAFE4708;
    v19 = &off_19BA89000;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v40 = 0;
      *&v40[4] = 2082;
      *&v40[6] = "";
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "fGEOMapFeatureAccess != nullptr";
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed,fGEOMapFeatureAccess==nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }
    }

    v34 = off_1EAFE4708;
    if (os_signpost_enabled(off_1EAFE4708))
    {
      *buf = 68289539;
      *v40 = 0;
      *&v40[4] = 2082;
      *&v40[6] = "";
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "fGEOMapFeatureAccess != nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed,fGEOMapFeatureAccess==nil", "{msg%{public}.0s:Assertion failed,fGEOMapFeatureAccess==nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }
    }

    v4 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v40 = 0;
      *&v40[4] = 2082;
      *&v40[6] = "";
      v41 = 2082;
      v42 = "assert";
      v43 = 2081;
      v44 = "fGEOMapFeatureAccess != nullptr";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed,fGEOMapFeatureAccess==nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Positioning/MapMatching/CLGeoMapFeatureAccessGeometryPedestrian.mm", 47, "initializeMapsAPI");
  }

  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
LABEL_16:
  v20 = off_1EAFE4708;
  v21 = "Pedestrian";
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(v4->isa + 13))(v4))
    {
      v25 = "Cycling";
    }

    else
    {
      v25 = "Pedestrian";
    }

    v26 = objc_msgSend_allowStaleData(v4[325].isa, v22, v23, v24);
    *buf = 136446466;
    *v40 = v25;
    *&v40[8] = 1026;
    *&v40[10] = v26;
    _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEFAULT, "CLMMPED,%{public}s,using maps API,stale data,%{public}d", buf, 0x12u);
  }

  v27 = sub_19B87DD40();
  if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (*(v19 + 218) != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v28 = off_1EAFE4708;
    if ((*(v4->isa + 13))(v4))
    {
      v21 = "Cycling";
    }

    v32 = objc_msgSend_allowStaleData(v4[325].isa, v29, v30, v31);
    v35 = 136446466;
    v36 = v21;
    v37 = 1026;
    v38 = v32;
    v3 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v28, 0, "CLMMPED,%{public}s,using maps API,stale data,%{public}d", &v35, 18);
    sub_19B885924("Generic", 1, 0, 2, "virtual void CLGeoMapFeatureAccessGeometryPedestrian::initializeMapsAPI()", "CoreLocation: %s\n", v3);
    if (v3 != buf)
    {
      goto LABEL_30;
    }
  }
}

uint64_t sub_19BA32FFC(uint64_t a1, uint64_t *a2, uint64_t a3, double a4)
{
  v116 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a3 + 64);
    v77 = *(a3 + 56);
    v86 = 0;
    v87 = 0;
    v88 = 0;
    if (*(a1 + 33) == 1)
    {
      if (!*(a1 + 16))
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v61 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_ERROR, "CLMMPED,roadsWithinDistance,fRoadGeometryBuffer is unexpectedly nullptr", buf, 2u);
        }

        v62 = sub_19B87DD40();
        if ((*(v62 + 160) & 0x80000000) != 0 && (*(v62 + 164) & 0x80000000) != 0 && (*(v62 + 168) & 0x80000000) != 0 && !*(v62 + 152))
        {
          goto LABEL_142;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        LOWORD(v92[0]) = 0;
        v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,roadsWithinDistance,fRoadGeometryBuffer is unexpectedly nullptr", v92, 2);
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v16);
        goto LABEL_87;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v9 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v10 = (*(*(a1 + 16) + 336) - *(*(a1 + 16) + 328)) >> 4;
        *buf = 134349056;
        *&buf[4] = v10;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "CLMMPED,RoadBuffer,findRoadsNear fRoadBuffer.size,%{public}lu", buf, 0xCu);
      }

      v11 = sub_19B87DD40();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v12 = (*(*(a1 + 16) + 336) - *(*(a1 + 16) + 328)) >> 4;
        LODWORD(v92[0]) = 134349056;
        *(v92 + 4) = v12;
        v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,RoadBuffer,findRoadsNear fRoadBuffer.size,%{public}lu", v92, 12);
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      if ((sub_19B8E77AC(*(a1 + 16), &v86, 1, 0, *(a3 + 56), *(a3 + 64), a4) & 1) == 0)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v14 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "CLMMPED,Warning,RoadBuffer,findRoadsNear returned false", buf, 2u);
        }

        v15 = sub_19B87DD40();
        if (*(v15 + 160) <= 1 && *(v15 + 164) <= 1 && *(v15 + 168) <= 1 && !*(v15 + 152))
        {
          goto LABEL_142;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        LOWORD(v92[0]) = 0;
        v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,Warning,RoadBuffer,findRoadsNear returned false", v92, 2);
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v16);
LABEL_87:
        if (v16 != buf)
        {
          free(v16);
        }

LABEL_142:
        v22 = 0;
        goto LABEL_143;
      }
    }

    else if ((sub_19BA340C8(a1, &v86, a3, a4) & 1) == 0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v59 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_DEBUG, "CLMMPED,Warning,MapsAPI,findRoadsNear returned false", buf, 2u);
      }

      v60 = sub_19B87DD40();
      if (*(v60 + 160) <= 1 && *(v60 + 164) <= 1 && *(v60 + 168) <= 1 && !*(v60 + 152))
      {
        goto LABEL_142;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      LOWORD(v92[0]) = 0;
      v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,Warning,MapsAPI,findRoadsNear returned false", v92, 2);
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v16);
      goto LABEL_87;
    }

    v22 = 1;
    if (v86 == v87)
    {
LABEL_143:
      *buf = &v86;
      sub_19B8F0E84(buf);
      objc_autoreleasePoolPop(v7);
      return v22;
    }

    v75 = v7;
    __asm { FMOV            V0.2D, #-1.0 }

    v81 = 0.0;
    v79 = 0;
    v80 = 0;
    v82 = 1;
    v83 = 0.0;
    v85 = 0;
    v84 = 0uLL;
    v29 = *v86;
    v28 = v86[1];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      v79 = v29;
      v80 = v28;
      if (!v29)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v79 = *v86;
      v80 = 0;
      if (!v29)
      {
LABEL_89:
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v7 = v75;
        v63 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v63, OS_LOG_TYPE_DEBUG, "#Warning,CLMMPED,roadsWithinDistance returned nullptr", buf, 2u);
        }

        v64 = sub_19B87DD40();
        if (*(v64 + 160) > 1 || *(v64 + 164) > 1 || *(v64 + 168) > 1 || *(v64 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
          }

          LOWORD(v92[0]) = 0;
          v65 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "#Warning,CLMMPED,roadsWithinDistance returned nullptr", v92, 2);
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v65);
          if (v65 != buf)
          {
            free(v65);
          }
        }

        sub_19B916DC0(a2);
LABEL_140:
        if (v80)
        {
          sub_19B8750F8(v80);
        }

        goto LABEL_142;
      }
    }

    v92[0] = 0uLL;
    v92[1] = _Q0;
    v93 = 0;
    v94 = 0;
    v95 = 0xBFF0000000000000;
    v107 = 0;
    v108 = 0;
    memset(&v105[32], 0, 32);
    v106 = 0;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    memset(v112, 0, 27);
    memset(&v112[32], 0, 48);
    memset(v105, 0, 30);
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v114 = 0xBFF0000000000000;
    v113 = 0;
    v30 = *(v29 + 17);
    v31 = *(v29 + 18) - v30;
    v78 = 0xBFF0000000000000;
    if ((v31 >> 4) <= 1)
    {
      v7 = v75;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v66 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_DEBUG, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", buf, 2u);
      }

      v67 = sub_19B87DD40();
      if (*(v67 + 160) > 1 || *(v67 + 164) > 1 || *(v67 + 168) > 1 || *(v67 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        LOWORD(v89) = 0;
        v68 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", &v89, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::findClosestPointOnRoad(CLDistanceCalc &, const int, const std::vector<Coordinate> &, const Coordinate &, double &, double &) [Coordinate = GEOLocationCoordinate2D]", "CoreLocation: %s\n", v68);
        if (v68 != buf)
        {
          free(v68);
        }
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v69 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v69, OS_LOG_TYPE_DEBUG, "#Warning,CLMMPED,findClosestPointOnRoad returned false", buf, 2u);
      }

      v70 = sub_19B87DD40();
      if (*(v70 + 160) > 1 || *(v70 + 164) > 1 || *(v70 + 168) > 1 || *(v70 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        LOWORD(v89) = 0;
        v71 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "#Warning,CLMMPED,findClosestPointOnRoad returned false", &v89, 2);
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v71);
LABEL_136:
        if (v71 != buf)
        {
          free(v71);
        }
      }

LABEL_138:
      if (SHIBYTE(v101) < 0)
      {
        operator delete(*(&v100 + 1));
      }

      goto LABEL_140;
    }

    v32 = *v30;
    v33 = v30[1];
    *buf = 0uLL;
    v34 = 0.0;
    sub_19BA0BE88((a1 + 56), buf, &buf[8], &v89, v77, v8, 0.0, v32, v33, 0.0);
    v35 = 0;
    v37 = *&buf[8];
    v36 = *buf;
    v38 = ((v31 >> 4) & 0x7FFFFFFF) - 1;
    v39 = -1.0;
    v40 = 0.0;
    while (1)
    {
      v41 = v36;
      v42 = v37;
      v43 = *(v29 + 17) + v35;
      v44 = *(v43 + 16);
      v45 = *(v43 + 24);
      v89 = 0.0;
      v90[0] = 0.0;
      sub_19BA0BE88((a1 + 56), &v89, v90, &v91, v77, v8, 0.0, v44, v45, 0.0);
      v36 = v89;
      v37 = v90[0];
      v46 = (v41 - v89) * (v41 - v89) + (v42 - v90[0]) * (v42 - v90[0]);
      v47 = 0.0 - v41;
      if (v46 >= 0.001)
      {
        v49 = ((0.0 - v42) * (v90[0] - v42) + v47 * (v89 - v41)) / v46;
        if (v49 < 0.0)
        {
          v51 = v47 * v47 + (0.0 - v42) * (0.0 - v42);
          v49 = 0.0;
          goto LABEL_55;
        }

        if (v49 > 1.0)
        {
          v51 = (0.0 - v89) * (0.0 - v89) + (0.0 - v90[0]) * (0.0 - v90[0]);
          v49 = 1.0;
          goto LABEL_55;
        }

        v48 = (0.0 - (v41 + (v89 - v41) * v49)) * (0.0 - (v41 + (v89 - v41) * v49));
        v50 = 0.0 - (v42 + (v90[0] - v42) * v49);
      }

      else
      {
        v48 = v47 * v47;
        v49 = 0.0;
        v50 = 0.0 - v42;
      }

      v51 = v48 + v50 * v50;
LABEL_55:
      v52 = sqrt(v46);
      v53 = sqrt(v51);
      v54 = v39 < 0.0;
      if (v53 < v39)
      {
        v54 = 1;
      }

      v55 = v34 + v52 * v49;
      if (v54)
      {
        v39 = v53;
        v40 = v55;
      }

      v34 = v34 + v52;
      v35 += 16;
      if (!--v38)
      {
        v56 = v40 / v34;
        if (v34 < 0.001)
        {
          v56 = 0.0;
        }

        v78 = *&v56;
        if (sub_19B9DF3F8(a1, v92, &v79, 1, &v78, 1))
        {
          v57 = v39;
          v81 = v57;
          v84 = v102;
          v58 = *&v103;
          v83 = v58;
          v85 = v78;
          v82 = 1;
          sub_19B9117CC(a2, &v79);
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v7 = v75;
        v72 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v72, OS_LOG_TYPE_DEBUG, "#Warning,CLMMPED,interpolateOnRoad returned false", buf, 2u);
        }

        v73 = sub_19B87DD40();
        if (*(v73 + 160) > 1 || *(v73 + 164) > 1 || *(v73 + 168) > 1 || *(v73 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
          }

          LOWORD(v89) = 0;
          v71 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "#Warning,CLMMPED,interpolateOnRoad returned false", &v89, 2);
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v71);
          goto LABEL_136;
        }

        goto LABEL_138;
      }
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
  }

  v17 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    v18 = *(a1 + 8);
    *buf = 134349056;
    *&buf[4] = v18;
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
  }

  v19 = sub_19B87DD40();
  if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v20 = *(a1 + 8);
    LODWORD(v92[0]) = 134349056;
    *(v92 + 4) = v20;
    v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", v92, 12);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  return 0;
}

void sub_19BA34058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_19B8750F8(a20);
  }

  a33 = &a26;
  sub_19B8F0E84(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA340C8(uint64_t a1, const void **a2, uint64_t a3, double a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = a4;
  if (*(a1 + 32))
  {
    if (*(a1 + 2600))
    {
      objc_autoreleasePoolPush();
      v19 = *(a3 + 56);
      v9 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7, v8);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_19BA34E44;
      v18[3] = &unk_1E753ECA8;
      v18[4] = v9;
      v18[5] = a1;
      v18[6] = v18;
      v21 = 0;
      operator new();
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v15 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "CLMMPED,roadsWithinDistanceLite,fGEOMapFeatureAccess is unexpectedly nil", buf, 2u);
    }

    v16 = sub_19B87DD40();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      LOWORD(v23) = 0;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,roadsWithinDistanceLite,fGEOMapFeatureAccess is unexpectedly nil", &v23, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistanceLite(std::vector<CLMapRoadPtr> &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v14);
LABEL_24:
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v10 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v11;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v13 = *(a1 + 8);
      v23 = 134349056;
      v24 = v13;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", &v23, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistanceLite(std::vector<CLMapRoadPtr> &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v14);
      goto LABEL_24;
    }
  }

  return 0;
}

void *sub_19BA34E44(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if ((v5 = result, v6 = result[5], isRoadPedestrianNavigable = objc_msgSend_isRoadPedestrianNavigable(a2, a2, a3, a4), v11 = objc_msgSend_walkableSide(a2, v8, v9, v10), result = objc_msgSend_isRail(a2, v12, v13, v14), (((v11 - 1) > 2) & ~isRoadPedestrianNavigable) == 0) && !result || *(v6 + 2648) == 1 && (v19 = objc_msgSend_bikeableSide(a2, v15, v16, v17), result = objc_msgSend_isRail(a2, v20, v21, v22), (result & 1) == 0) && (v19 - 4) >= 0xFFFFFFFD)
    {
      v18 = v5[4];

      return objc_msgSend_addObject_(v18, v15, a2, v17);
    }
  }

  return result;
}

uint64_t sub_19BA34F14(uint64_t a1, uint64_t *a2, double **a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 32) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v15 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v16;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v17 = sub_19B87DD40();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v18 = *(a1 + 8);
      LODWORD(v31) = 134349056;
      *(&v31 + 4) = v18;
      v19 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", &v31, 12);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsConnected(ConnectedQueryResultList &, const CLMapRoadPtr &, BOOL, double, double, BOOL) const", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    return 0;
  }

  v9 = *a3;
  if (!*a3)
  {
    return 0;
  }

  v10 = a5;
  v13 = a4;
  if (a4)
  {
    sub_19B9F5AA8(*a3);
    v14 = (1.0 - a6) * v9[5];
  }

  else
  {
    sub_19B9F5AA8(*a3);
    v14 = v9[5] * a6;
  }

  if (v14 > a7)
  {
    return 1;
  }

  v22 = a7 - v14;
  v31 = 0uLL;
  v32 = 0;
  v23 = *a3;
  v24 = a3[1];
  v30[0] = v23;
  v30[1] = &v24->__vftable;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = sub_19BA35404(a1, v30, v13, &v31, v10, v22);
  if (v24)
  {
    sub_19B8750F8(v24);
  }

  if (v20)
  {
    if (v31 != *(&v31 + 1))
    {
      v25 = *(v31 + 8);
      if (v25)
      {
        atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v26 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "#Warning,CLMMPED, findAllDigitizedRoads returned false", buf, 2u);
    }

    v27 = sub_19B87DD40();
    if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v29[0] = 0;
      v28 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "#Warning,CLMMPED, findAllDigitizedRoads returned false", v29, 2);
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsConnected(ConnectedQueryResultList &, const CLMapRoadPtr &, BOOL, double, double, BOOL) const", "CoreLocation: %s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }
  }

  *buf = &v31;
  sub_19BA39F60(buf);
  return v20;
}

void sub_19BA353B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19)
{
  a19 = &a15;
  sub_19BA39F60(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA35404(uint64_t a1, const void ***a2, int a3, unint64_t *a4, int a5, double a6)
{
  v201 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 32) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v17 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v18;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v19 = sub_19B87DD40();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v20 = *(a1 + 8);
      *v172 = 134349056;
      *&v172[4] = v20;
      v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", v172, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoads(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    return 0;
  }

  v7 = a5;
  v11 = *a2;
  if (*(a1 + 33) != 1)
  {
    if (v11)
    {
      *v172 = 0;
      *&v172[8] = 0;
      __asm { FMOV            V0.2D, #-1.0 }

      *&v172[16] = _Q0;
      *v173 = 0;
      *&v173[8] = 0;
      *&v173[16] = 0xBFF0000000000000;
      v183 = 0;
      v184 = 0;
      memset(&v181[32], 0, 32);
      v182 = 0;
      v185 = 0u;
      v186 = 0u;
      v187 = 0u;
      memset(v188, 0, 27);
      memset(&v188[32], 0, 48);
      memset(v181, 0, 30);
      v180 = 0u;
      v179 = 0u;
      v178 = 0u;
      v177 = 0u;
      v176 = 0u;
      v175 = 0u;
      memset(v174, 0, sizeof(v174));
      *&v173[24] = 0u;
      v190 = 0xBFF0000000000000;
      v189 = 0;
      v28 = v11[17];
      v29 = v11[18];
      if (a3)
      {
        if (v29 != v28)
        {
          v30 = *(v29 - 2);
          *&v173[24] = v30;
          v31 = v29 - 1;
LABEL_46:
          v38 = *v31;
          goto LABEL_58;
        }
      }

      else if (v29 != v28)
      {
        v37 = *v28;
        v31 = v28 + 1;
        v30 = v37;
        *&v173[24] = v37;
        goto LABEL_46;
      }

      v30 = 0.0;
      v38 = 0.0;
LABEL_58:
      *&v173[32] = v38;
      v156 = &v156;
      v157 = &v156;
      v158 = 0;
      v153 = *v11;
      v41 = sub_19B8E5F08((a1 + 2616), &v153, 0);
      v42 = v41;
      v151 = a3;
      if (v41)
      {
        v150 = v7;
        v43 = 8;
        if (a3)
        {
          v43 = 32;
        }

        v44 = v41 + v43;
        v45 = *v44;
        if (*v44 != *(v44 + 8))
        {
          v46 = *v45;
          v47 = v45[1];
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v46)
          {
            memset(buf, 0, 20);
            *&buf[20] = 1;
            LODWORD(v193) = 0;
            memset(v194, 0, 24);
            if (v47)
            {
              atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
              v48 = *&buf[8];
              *buf = v46;
              *&buf[8] = v47;
              if (v48)
              {
                sub_19B8750F8(v48);
              }
            }

            else
            {
              *buf = v46;
              *&buf[8] = 0;
            }

            sub_19B9117CC(&v156, buf);
          }

          sub_19B916DC0(&v156);
          if (v47)
          {
            sub_19B8750F8(v47);
          }
        }

        v7 = v150;
        if (v158)
        {
          *(v42 + 56) = *(a1 + 8);
          v49 = 1;
          if (!v150)
          {
LABEL_129:
            for (i = v157; i != &v156; i = i[1])
            {
              v69 = i[2];
              if (*v69 != **a2)
              {
                v71 = *(v69 + 17);
                v70 = *(v69 + 18);
                if (v70 == v71)
                {
                  v73 = 0.0;
                  v72 = 0.0;
                }

                else
                {
                  v73 = *v71;
                  v72 = v71[1];
                }

                if (vabdd_f64(v30, v73) < 0.0000001 && vabdd_f64(v38, v72) < 0.0000001)
                {
                  v74 = i[3];
                  if (v74)
                  {
                    atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  *&buf[8] = v74;
                  *buf = v69;
                  buf[16] = 1;
                  sub_19BA370C8(a4, buf);
LABEL_147:
                  if (v74)
                  {
                    sub_19B8750F8(v74);
                    sub_19B8750F8(v74);
                  }

                  continue;
                }

                if (v70 == v71)
                {
                  v76 = 0.0;
                  v75 = 0.0;
                }

                else
                {
                  v76 = *(v70 - 2);
                  v75 = *(v70 - 1);
                }

                if (vabdd_f64(v30, v76) < 0.0000001 && vabdd_f64(v38, v75) < 0.0000001)
                {
                  v74 = i[3];
                  if (v74)
                  {
                    atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  *&buf[8] = v74;
                  *buf = v69;
                  buf[16] = 0;
                  sub_19BA370C8(a4, buf);
                  goto LABEL_147;
                }
              }
            }

            if ((v49 & 1) == 0 && a4[1] != *a4)
            {
              v77 = sub_19B8E5F08((a1 + 2616), &v153, 1);
              v78 = v77;
              if (v77)
              {
                sub_19B8E6054(v77, v151 ^ 1);
                v78[7] = *(a1 + 8);
                v79 = *a4;
                v80 = a4[1];
                if (*a4 != v80)
                {
                  do
                  {
                    v81 = *v79;
                    v82 = *(v79 + 8);
                    *buf = *v79;
                    *&buf[8] = v82;
                    if (v82)
                    {
                      atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
                    }

                    buf[16] = *(v79 + 16);
                    if (v81)
                    {
                      if (*v81 == **a2)
                      {
                        v83 = 27;
                      }

                      else
                      {
                        if (v151)
                        {
                          *v78 = 1;
                          v84 = 4;
                        }

                        else
                        {
                          *(v78 + 1) = 1;
                          v84 = 1;
                        }

                        sub_19B8EAB68(&v78[v84], buf);
                        v83 = 0;
                      }
                    }

                    else
                    {
                      sub_19B8E6054(v78, v151 ^ 1);
                      v78[7] = 0xBFF0000000000000;
                      v83 = 26;
                    }

                    if (*&buf[8])
                    {
                      sub_19B8750F8(*&buf[8]);
                    }

                    if (v83 != 27 && v83)
                    {
                      break;
                    }

                    v79 += 24;
                  }

                  while (v79 != v80);
                }
              }

              else
              {
                v87 = v7;
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
                }

                v88 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
                {
                  v89 = *(a1 + 8);
                  *buf = 134217984;
                  *&buf[4] = v89;
                  _os_log_impl(&dword_19B873000, v88, OS_LOG_TYPE_ERROR, "CLMM,%.1lf,Unexpected,RoadConnectionsEntry could not be created", buf, 0xCu);
                }

                v90 = sub_19B87DD40();
                v7 = v87;
                if ((*(v90 + 160) & 0x80000000) == 0 || (*(v90 + 164) & 0x80000000) == 0 || (*(v90 + 168) & 0x80000000) == 0 || *(v90 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
                  }

                  v91 = *(a1 + 8);
                  LODWORD(v159[0]) = 134217984;
                  *(v159 + 4) = v91;
                  v92 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%.1lf,Unexpected,RoadConnectionsEntry could not be created", v159, 12);
                  sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoads(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v92);
                  if (v92 != buf)
                  {
                    free(v92);
                  }

                  v7 = v87;
                }
              }
            }

            if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) == v7)
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
              }

              v93 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                v94 = *(a1 + 8);
                v95 = **a2;
                v96 = (*a2)[17];
                v97 = (*a2)[18];
                if (v97 == v96)
                {
                  v100 = 0;
                  v98 = 0;
                  v99 = 0;
                  v101 = 0;
                }

                else
                {
                  v98 = *v96;
                  v99 = v96[1];
                  v100 = *(v97 - 2);
                  v101 = *(v97 - 1);
                }

                *buf = 134351105;
                *&buf[4] = v94;
                *&buf[12] = 2049;
                *&buf[14] = v95;
                v192 = 2050;
                v193 = v158;
                *v194 = 2053;
                *&v194[2] = v98;
                *&v194[10] = 2053;
                *&v194[12] = v99;
                *&v194[20] = 2053;
                *&v194[22] = v100;
                v195 = 2053;
                v196 = v101;
                v197 = 2053;
                v198 = v30;
                v199 = 2053;
                v200 = v38;
                _os_log_impl(&dword_19B873000, v93, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.2lf,CLGeoMapFeatureAccessGeometryPedestrian,ConnectedRoads found 0 roads, %{private}lld, totalResults,%{public}lu,roadStartLL,%{sensitive}.7lf,%{sensitive}.7lf,roadEndLL,%{sensitive}.7lf,%{sensitive}.7lf,searchCoordinate,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x5Cu);
              }

              v102 = sub_19B87DD40();
              if (*(v102 + 160) > 1 || *(v102 + 164) > 1 || *(v102 + 168) > 1 || *(v102 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
                }

                v103 = *(a1 + 8);
                v104 = **a2;
                v105 = (*a2)[17];
                v106 = (*a2)[18];
                if (v106 == v105)
                {
                  v109 = 0;
                  v107 = 0;
                  v108 = 0;
                  v110 = 0;
                }

                else
                {
                  v107 = *v105;
                  v108 = v105[1];
                  v109 = *(v106 - 2);
                  v110 = *(v106 - 1);
                }

                LODWORD(v159[0]) = 134351105;
                *(v159 + 4) = v103;
                WORD2(v159[1]) = 2049;
                *(&v159[1] + 6) = v104;
                HIWORD(v159[2]) = 2050;
                v159[3] = v158;
                v160 = 2053;
                v161 = v107;
                v162 = 2053;
                v163 = v108;
                v164 = 2053;
                v165 = v109;
                v166 = 2053;
                v167 = v110;
                v168 = 2053;
                v169 = v30;
                v170 = 2053;
                v171 = v38;
                v111 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.2lf,CLGeoMapFeatureAccessGeometryPedestrian,ConnectedRoads found 0 roads, %{private}lld, totalResults,%{public}lu,roadStartLL,%{sensitive}.7lf,%{sensitive}.7lf,roadEndLL,%{sensitive}.7lf,%{sensitive}.7lf,searchCoordinate,%{sensitive}.7lf,%{sensitive}.7lf", v159, 92);
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoads(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v111);
                if (v111 != buf)
                {
                  free(v111);
                }
              }
            }

            v60 = 1;
LABEL_288:
            sub_19B916DC0(&v156);
            return v60;
          }

LABEL_91:
          v56 = *a2;
          v57 = a2[1];
          if (v57)
          {
            atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
            *&buf[8] = v57;
            atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            *&buf[8] = 0;
          }

          *buf = v56;
          buf[16] = a3 ^ 1;
          sub_19BA370C8(a4, buf);
          if (*&buf[8])
          {
            sub_19B8750F8(*&buf[8]);
          }

          if (v57)
          {
            sub_19B8750F8(v57);
          }

          goto LABEL_129;
        }
      }

      else if (v158)
      {
        v49 = 0;
        if (!v7)
        {
          goto LABEL_129;
        }

        goto LABEL_91;
      }

      memset(v159, 0, 24);
      if (sub_19BA340C8(a1, v159, v172, a6))
      {
        v51 = v159[0];
        v50 = v159[1];
        if (v159[1] != v159[0] || (v52 = fmin(a6 * 4.0, 250.0), v52 <= a6))
        {
LABEL_84:
          if (v51 != v50)
          {
            memset(buf, 0, 20);
            *&buf[20] = 1;
            LODWORD(v193) = 0;
            memset(v194, 0, 24);
            v53 = *v51;
            v54 = v51[1];
            if (v54)
            {
              atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
              v55 = *&buf[8];
              *buf = v53;
              *&buf[8] = v54;
              if (v55)
              {
                sub_19B8750F8(v55);
              }
            }

            else
            {
              *buf = *v51;
              *&buf[8] = 0;
            }

            sub_19B9117CC(&v156, buf);
          }

          *buf = v159;
          sub_19B8F0E84(buf);
          v49 = 0;
          if (!v7)
          {
            goto LABEL_129;
          }

          goto LABEL_91;
        }

        if (sub_19BA340C8(a1, v159, v172, v52))
        {
          v51 = v159[0];
          v50 = v159[1];
          goto LABEL_84;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v146 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v146, OS_LOG_TYPE_DEBUG, "#Warning,CLMMPED, roadsWithinDistance returned false, expanded search", buf, 2u);
        }

        v147 = sub_19B87DD40();
        if (*(v147 + 160) > 1 || *(v147 + 164) > 1 || *(v147 + 168) > 1 || *(v147 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
          }

          v152[0] = 0;
          v148 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "#Warning,CLMMPED, roadsWithinDistance returned false, expanded search", v152, 2);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoads(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v148);
          if (v148 != buf)
          {
            free(v148);
          }
        }
      }

      *buf = v159;
      sub_19B8F0E84(buf);
      v60 = 0;
      goto LABEL_288;
    }

    return 0;
  }

  v12 = a2[1];
  v154 = *a2;
  v155 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    if ((*(a1 + 32) & 1) == 0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v32 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v33 = *(a1 + 8);
        *buf = 134349056;
        *&buf[4] = v33;
        _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
      }

      v34 = sub_19B87DD40();
      if ((*(v34 + 160) & 0x80000000) != 0 && (*(v34 + 164) & 0x80000000) != 0 && (*(v34 + 168) & 0x80000000) != 0 && !*(v34 + 152))
      {
        goto LABEL_105;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v35 = *(a1 + 8);
      *v172 = 134349056;
      *&v172[4] = v35;
      v36 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", v172, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoadsUsingRoadBuffer(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v36);
      goto LABEL_103;
    }
  }

  v13 = *(a1 + 16);
  if (!v13)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v39 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_ERROR, "CLMMPED,findAllDigitizedRoadsUsingRoadBuffer,fRoadGeometryBuffer is unexpectedly nullptr", buf, 2u);
    }

    v40 = sub_19B87DD40();
    if ((*(v40 + 160) & 0x80000000) != 0 && (*(v40 + 164) & 0x80000000) != 0 && (*(v40 + 168) & 0x80000000) != 0 && !*(v40 + 152))
    {
      goto LABEL_105;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    *v172 = 0;
    v36 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,findAllDigitizedRoadsUsingRoadBuffer,fRoadGeometryBuffer is unexpectedly nullptr", v172, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoadsUsingRoadBuffer(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v36);
    goto LABEL_103;
  }

  if (!v11)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v58 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v58, OS_LOG_TYPE_ERROR, "CLMMPED,findAllDigitizedRoadsUsingRoadBuffer,road is unexpectedly nullptr", buf, 2u);
    }

    v59 = sub_19B87DD40();
    if ((*(v59 + 160) & 0x80000000) != 0 && (*(v59 + 164) & 0x80000000) != 0 && (*(v59 + 168) & 0x80000000) != 0 && !*(v59 + 152))
    {
      goto LABEL_105;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    *v172 = 0;
    v36 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,findAllDigitizedRoadsUsingRoadBuffer,road is unexpectedly nullptr", v172, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoadsUsingRoadBuffer(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v36);
LABEL_103:
    if (v36 != buf)
    {
      free(v36);
    }

LABEL_105:
    v60 = 0;
    goto LABEL_273;
  }

  v159[0] = v159;
  v159[1] = v159;
  v159[2] = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  if (!a3)
  {
    if ((sub_19B8EB310(v13, &v154, &v156, a5 ^ 1u) & 1) == 0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v85 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v85, OS_LOG_TYPE_ERROR, "CLMMPED,findAllDigitizedRoadsUsingRoadBuffer,findRoadsConnectedToStartOfThisRoad returned false", buf, 2u);
      }

      v86 = sub_19B87DD40();
      if ((*(v86 + 160) & 0x80000000) != 0 && (*(v86 + 164) & 0x80000000) != 0 && (*(v86 + 168) & 0x80000000) != 0 && !*(v86 + 152))
      {
        goto LABEL_182;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      *v172 = 0;
      v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,findAllDigitizedRoadsUsingRoadBuffer,findRoadsConnectedToStartOfThisRoad returned false", v172, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoadsUsingRoadBuffer(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v16);
      goto LABEL_180;
    }

LABEL_107:
    v62 = v156;
    for (j = v157; v62 != j; v62 += 2)
    {
      v63 = *v62;
      v64 = v62[1];
      if (v64)
      {
        atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v63)
      {
        memset(buf, 0, 20);
        *&buf[20] = 1;
        LODWORD(v193) = 0;
        memset(v194, 0, 24);
        if (v64)
        {
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          v65 = *&buf[8];
          *buf = v63;
          *&buf[8] = v64;
          if (v65)
          {
            sub_19B8750F8(v65);
          }
        }

        else
        {
          *buf = v63;
          *&buf[8] = 0;
        }

        sub_19B9117CC(v159, buf);
      }

      if (v64)
      {
        sub_19B8750F8(v64);
      }
    }

    if (v7)
    {
      v66 = v154;
      v67 = v155;
      if (v155)
      {
        atomic_fetch_add_explicit(&v155->__shared_owners_, 1uLL, memory_order_relaxed);
        *&buf[8] = v67;
        atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        *&buf[8] = 0;
      }

      *buf = v66;
      buf[16] = a3 ^ 1;
      sub_19BA370C8(a4, buf);
      if (*&buf[8])
      {
        sub_19B8750F8(*&buf[8]);
      }

      if (v67)
      {
        sub_19B8750F8(v67);
      }
    }

    v112 = v154[17];
    v113 = v154[18];
    if (a3)
    {
      if (v113 != v112)
      {
        v112 = v113 - 2;
        v114 = v113 - 1;
LABEL_225:
        v115 = v7;
        v116 = *v112;
        v117 = *v114;
        goto LABEL_227;
      }
    }

    else if (v113 != v112)
    {
      v114 = v112 + 1;
      goto LABEL_225;
    }

    v115 = v7;
    v116 = 0.0;
    v117 = 0.0;
LABEL_227:
    v118 = v159[1];
    if (v159[1] == v159)
    {
LABEL_248:
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) == v115)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v127 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v128 = *(a1 + 8);
          v129 = *v154;
          v130 = v154[17];
          v131 = v154[18];
          if (v131 == v130)
          {
            v134 = 0;
            v132 = 0;
            v133 = 0;
            v135 = 0;
          }

          else
          {
            v132 = *v130;
            v133 = v130[1];
            v134 = *(v131 - 2);
            v135 = *(v131 - 1);
          }

          *buf = 134351105;
          *&buf[4] = v128;
          *&buf[12] = 2049;
          *&buf[14] = v129;
          v192 = 2050;
          v193 = v159[2];
          *v194 = 2053;
          *&v194[2] = v132;
          *&v194[10] = 2053;
          *&v194[12] = v133;
          *&v194[20] = 2053;
          *&v194[22] = v134;
          v195 = 2053;
          v196 = v135;
          v197 = 2053;
          v198 = v116;
          v199 = 2053;
          v200 = v117;
          _os_log_impl(&dword_19B873000, v127, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.2lf,CLGeoMapFeatureAccessGeometryPedestrian,ConnectedRoads found 0 roads in buffer, %{private}lld, totalResults,%{public}lu,roadStartLL,%{sensitive}.7lf,%{sensitive}.7lf,roadEndLL,%{sensitive}.7lf,%{sensitive}.7lf,searchCoordinate,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x5Cu);
        }

        v136 = sub_19B87DD40();
        if (*(v136 + 160) > 1 || *(v136 + 164) > 1 || *(v136 + 168) > 1 || *(v136 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
          }

          v137 = *(a1 + 8);
          v138 = *v154;
          v139 = v154[17];
          v140 = v154[18];
          if (v140 == v139)
          {
            v143 = 0;
            v141 = 0;
            v142 = 0;
            v144 = 0;
          }

          else
          {
            v141 = *v139;
            v142 = v139[1];
            v143 = *(v140 - 2);
            v144 = *(v140 - 1);
          }

          *v172 = 134351105;
          *&v172[4] = v137;
          *&v172[12] = 2049;
          *&v172[14] = v138;
          *&v172[22] = 2050;
          *&v172[24] = v159[2];
          *v173 = 2053;
          *&v173[2] = v141;
          *&v173[10] = 2053;
          *&v173[12] = v142;
          *&v173[20] = 2053;
          *&v173[22] = v143;
          *&v173[30] = 2053;
          *&v173[32] = v144;
          LOWORD(v174[0]) = 2053;
          *(v174 + 2) = v116;
          HIWORD(v174[2]) = 2053;
          *&v174[3] = v117;
          v145 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,%{public}.2lf,CLGeoMapFeatureAccessGeometryPedestrian,ConnectedRoads found 0 roads in buffer, %{private}lld, totalResults,%{public}lu,roadStartLL,%{sensitive}.7lf,%{sensitive}.7lf,roadEndLL,%{sensitive}.7lf,%{sensitive}.7lf,searchCoordinate,%{sensitive}.7lf,%{sensitive}.7lf", v172, 92);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoadsUsingRoadBuffer(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v145);
          if (v145 != buf)
          {
            free(v145);
          }
        }
      }

      v60 = 1;
      goto LABEL_272;
    }

    while (1)
    {
      v119 = v118[2];
      if (*v119 != *v154)
      {
        v121 = v119[17];
        v120 = v119[18];
        if (v120 == v121)
        {
          v123 = 0.0;
          v122 = 0.0;
        }

        else
        {
          v123 = *v121;
          v122 = v121[1];
        }

        if (vabdd_f64(v116, v123) < 0.0000001 && vabdd_f64(v117, v122) < 0.0000001)
        {
          v124 = v118[3];
          if (v124)
          {
            atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *&buf[8] = v124;
          *buf = v119;
          buf[16] = 1;
          sub_19BA370C8(a4, buf);
LABEL_245:
          if (v124)
          {
            sub_19B8750F8(v124);
            sub_19B8750F8(v124);
          }

          goto LABEL_247;
        }

        if (v120 == v121)
        {
          v126 = 0.0;
          v125 = 0.0;
        }

        else
        {
          v126 = *(v120 - 2);
          v125 = *(v120 - 1);
        }

        if (vabdd_f64(v116, v126) < 0.0000001 && vabdd_f64(v117, v125) < 0.0000001)
        {
          v124 = v118[3];
          if (v124)
          {
            atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *&buf[8] = v124;
          *buf = v119;
          buf[16] = 0;
          sub_19BA370C8(a4, buf);
          goto LABEL_245;
        }
      }

LABEL_247:
      v118 = v118[1];
      if (v118 == v159)
      {
        goto LABEL_248;
      }
    }
  }

  if (sub_19B8EAC7C(v13, &v154, &v156, a5 ^ 1u))
  {
    goto LABEL_107;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
  }

  v14 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "CLMMPED,findAllDigitizedRoadsUsingRoadBuffer,findRoadsConnectedToEndOfThisRoad returned false", buf, 2u);
  }

  v15 = sub_19B87DD40();
  if ((*(v15 + 160) & 0x80000000) != 0 && (*(v15 + 164) & 0x80000000) != 0 && (*(v15 + 168) & 0x80000000) != 0 && !*(v15 + 152))
  {
    goto LABEL_182;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
  }

  *v172 = 0;
  v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,findAllDigitizedRoadsUsingRoadBuffer,findRoadsConnectedToEndOfThisRoad returned false", v172, 2);
  sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoadsUsingRoadBuffer(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v16);
LABEL_180:
  if (v16 != buf)
  {
    free(v16);
  }

LABEL_182:
  v60 = 0;
LABEL_272:
  *buf = &v156;
  sub_19B8F0E84(buf);
  sub_19B916DC0(v159);
LABEL_273:
  if (v155)
  {
    sub_19B8750F8(v155);
  }

  return v60;
}

void sub_19BA36CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  STACK[0x280] = &a23;
  sub_19B8F0E84(&STACK[0x280]);
  sub_19B916DC0(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA36E14(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v1 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_ERROR, "CLGeoMapFeatureAccessGeometryPedestrian::roadsAtIntersection - Code not implemented", buf, 2u);
    }

    v2 = sub_19B87DD40();
    if ((*(v2 + 160) & 0x80000000) == 0 || (*(v2 + 164) & 0x80000000) == 0 || (*(v2 + 168) & 0x80000000) == 0 || *(v2 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      LOWORD(v11) = 0;
      v3 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLGeoMapFeatureAccessGeometryPedestrian::roadsAtIntersection - Code not implemented", &v11, 2);
LABEL_22:
      v9 = v3;
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsAtIntersection(CLMapCrumb &, CLMapGeometry::IntersectionQueryResultList *, CLMapGeometry::IntersectionQueryResultList *, BOOL, const CLMapRoadPtr &, BOOL, double, double, double &) const", "CoreLocation: %s\n", v3);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 8);
      *buf = 134349056;
      v14 = v6;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v8 = *(a1 + 8);
      v11 = 134349056;
      v12 = v8;
      v3 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", &v11, 12);
      goto LABEL_22;
    }
  }

  return 0;
}

void sub_19BA370C8(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_19B8B8A40();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_19B8B8AB0();
    }

    v11 = *(a2 + 8);
    v12 = 24 * v7;
    *v12 = *a2;
    *(v12 + 8) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    *(24 * v7 + 0x10) = *(a2 + 16);
    v6 = v12 + 24;
    v13 = *a1;
    v14 = a1[1];
    v15 = v12 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = v12 + *a1 - v14;
      v17 = *a1;
      do
      {
        v18 = v17[1];
        *v16 = *v17;
        *(v16 + 8) = v18;
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        *(v16 + 16) = *(v17 + 16);
        v17 += 3;
        v16 += 24;
      }

      while (v17 != v14);
      do
      {
        v19 = v13[1];
        if (v19)
        {
          sub_19B8750F8(v19);
        }

        v13 += 3;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v6;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 8);
    *v3 = *a2;
    *(v3 + 8) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    *(v3 + 16) = *(a2 + 16);
    v6 = v3 + 24;
  }

  a1[1] = v6;
}

unint64_t sub_19BA37268(uint64_t a1, uint64_t a2, const void ***a3, int a4, double a5, double a6)
{
  v80 = *MEMORY[0x1E69E9840];
  v12 = objc_autoreleasePoolPush();
  v13 = *a3;
  if (!*a3)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v23 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "#Warning,CLMMPED,input road is nullptr", buf, 2u);
    }

    v24 = sub_19B87DD40();
    if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
    {
      goto LABEL_37;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    LOWORD(v76[0]) = 0;
    v22 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "#Warning,CLMMPED,input road is nullptr", v76, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v22);
    goto LABEL_35;
  }

  sub_19B9F5AA8(*a3);
  v14 = v13[5];
  if (v14 <= 0.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v25 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "#Warning,CLMMPED, road length is 0.0", buf, 2u);
    }

    v26 = sub_19B87DD40();
    if ((*(v26 + 160) & 0x80000000) != 0 && (*(v26 + 164) & 0x80000000) != 0 && (*(v26 + 168) & 0x80000000) != 0 && !*(v26 + 152))
    {
      goto LABEL_37;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    LOWORD(v76[0]) = 0;
    v22 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "#Warning,CLMMPED, road length is 0.0", v76, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v22);
    goto LABEL_35;
  }

  v15 = *a3;
  if ((((*a3)[18] - (*a3)[17]) >> 4) <= 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v17 = **a3;
      v18 = (((*a3)[18] - (*a3)[17]) >> 4);
      *buf = 134283777;
      *&buf[4] = v17;
      v78 = 2050;
      v79 = v18;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "#Warning,CLMMPED,GEOMapFeatureRoad id,%{private}lld,has less than two coordinate (moveOnRoadInternal),%{public}ld", buf, 0x16u);
    }

    v19 = sub_19B87DD40();
    if (*(v19 + 160) <= 1 && *(v19 + 164) <= 1 && *(v19 + 168) <= 1 && !*(v19 + 152))
    {
      goto LABEL_37;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v20 = **a3;
    v21 = (((*a3)[18] - (*a3)[17]) >> 4);
    LODWORD(v76[0]) = 134283777;
    *(v76 + 4) = v20;
    WORD2(v76[1]) = 2050;
    *(&v76[1] + 6) = v21;
    v22 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "#Warning,CLMMPED,GEOMapFeatureRoad id,%{private}lld,has less than two coordinate (moveOnRoadInternal),%{public}ld", v76, 22);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v22);
LABEL_35:
    if (v22 != buf)
    {
      free(v22);
    }

LABEL_37:
    objc_autoreleasePoolPop(v12);
    LOBYTE(v27) = 0;
    return v27 & 1;
  }

  v29 = fabs(a6);
  v30 = *(a3 + 20);
  v31 = 1.0 - a5;
  context = v12;
  if (v30 == 1)
  {
    if (a6 < 0.0)
    {
      v31 = a5;
    }

    v32 = v31 * v14;
    if (v31 * v14 <= v29)
    {
      v33 = 0;
      if (a6 < 0.0)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = 1.0;
      }

      goto LABEL_55;
    }
  }

  else
  {
    if (a6 >= 0.0)
    {
      v31 = a5;
    }

    v32 = v31 * v14;
    if (v31 * v14 <= v29)
    {
      v33 = 0;
      if (a6 >= 0.0)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = 1.0;
      }

      goto LABEL_55;
    }
  }

  v35 = a6 / v14;
  if (!*(a3 + 20))
  {
    v35 = -v35;
  }

  v34 = v35 + a5;
  v33 = 1;
LABEL_55:
  memset(v76, 0, 24);
  if ((a4 & 0x80000000) == 0 && v32 <= v29)
  {
    v36 = a3[1];
    v75[0] = v15;
    v75[1] = &v36->__vftable;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      LOBYTE(v30) = *(a3 + 20);
    }

    v37 = sub_19BA35404(a1, v75, v30 & 1, v76, 1, 10.0);
    if (v36)
    {
      sub_19B8750F8(v36);
    }

    if ((v37 & 1) == 0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v38 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_DEBUG, "CLMMPED,Warning,moveOnRoad,findAllDigitizedRoads returned false", buf, 2u);
      }

      v39 = sub_19B87DD40();
      if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        LOWORD(v74) = 0;
        v40 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,Warning,moveOnRoad,findAllDigitizedRoads returned false", &v74, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v40);
        if (v40 != buf)
        {
          free(v40);
        }
      }
    }
  }

  v41 = a1;
  if (a6 >= 0.0 || (v42 = v76[0], v43 = v76[1], v76[0] == v76[1]))
  {
    LODWORD(v27) = -1;
    if (v33)
    {
LABEL_108:
      v54 = a3[1];
      v72[0] = *a3;
      v72[1] = v54;
      v73 = 0.0;
      if (v54)
      {
        atomic_fetch_add_explicit(v54 + 1, 1uLL, memory_order_relaxed);
      }

      LOBYTE(v27) = sub_19BA37DD8((v41 + 56), v72, &v74, &v73, v34);
      if (v54)
      {
        sub_19B8750F8(v54);
      }

      if (v27)
      {
        *(a3 + 6) = v34;
        *(a3 + 2) = v74;
        v55 = v73;
        *(a3 + 6) = v55;
        if ((*(a3 + 20) & 1) == 0)
        {
          v56 = fmod((v55 + 180.0), 360.0);
          if (v56 < 0.0)
          {
            v56 = v56 + 360.0;
          }

          v57 = v56;
          *(a3 + 6) = v57;
        }
      }

      else
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v58 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v58, OS_LOG_TYPE_DEBUG, "#Warning CLMMPED,moveOnRoadInternal,interpolateProjections returned false", buf, 2u);
        }

        v59 = sub_19B87DD40();
        if (*(v59 + 160) > 1 || *(v59 + 164) > 1 || *(v59 + 168) > 1 || *(v59 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
          }

          v71 = 0;
          v60 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "#Warning CLMMPED,moveOnRoadInternal,interpolateProjections returned false", &v71, 2);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v60);
          if (v60 != buf)
          {
            free(v60);
          }
        }
      }

      v61 = 0;
      goto LABEL_147;
    }
  }

  else
  {
    v44 = 0;
    LODWORD(v27) = -1;
    do
    {
      v46 = *v42;
      v45 = *(v42 + 8);
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v47 = a2;
      while (1)
      {
        v47 = *(v47 + 8);
        if (v47 == a2)
        {
          break;
        }

        if (*(v47 + 16) == *v46 && (*(v47 + 24) & 1) == *(v42 + 16))
        {
          LODWORD(v27) = v44;
          break;
        }
      }

      if (v45)
      {
        sub_19B8750F8(v45);
      }

      if ((v27 & 0x80000000) == 0)
      {
        break;
      }

      ++v44;
      v42 += 24;
    }

    while (v42 != v43);
    if (v33)
    {
      goto LABEL_108;
    }
  }

  v50 = a6 < 0.0 && v27 == -1;
  if (a4 < 0)
  {
    goto LABEL_108;
  }

  v51 = v76[0];
  if (v76[1] == v76[0] || v50)
  {
    goto LABEL_108;
  }

  v52 = -v32;
  if (a6 < 0.0)
  {
    v52 = v32;
  }

  v53 = v52 + a6;
  if ((v27 & 0x80000000) != 0)
  {
    v62 = sub_19B91408C(v41 + 96);
    v51 = v76[0];
    v27 = v62 % (0xAAAAAAAAAAAAAAABLL * ((v76[1] - v76[0]) >> 3));
    goto LABEL_135;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v76[1] - v76[0]) >> 3) > v27)
  {
    v27 = v27;
LABEL_135:
    v63 = v51 + 24 * v27;
    v64 = *(v63 + 16);
    v66 = *v63;
    v65 = *(v63 + 8);
    if (v65)
    {
      atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
    }

    v67 = a3[1];
    *a3 = v66;
    a3[1] = v65;
    if (v67)
    {
      sub_19B8750F8(v67);
      v51 = v76[0];
    }

    LOBYTE(v27) = *(v51 + 24 * v27 + 16);
    *(a3 + 20) = v27;
    if (v64)
    {
      v34 = 0.0;
    }

    else
    {
      v68 = fmod((*(a3 + 6) + 180.0), 360.0);
      if (v68 < 0.0)
      {
        v68 = v68 + 360.0;
      }

      v69 = v68;
      *(a3 + 6) = v69;
      v34 = 1.0;
    }

    if (a6 < 0.0)
    {
      *(a3 + 20) = v27 ^ 1;
    }
  }

  v61 = 1;
  a6 = v53;
LABEL_147:
  *buf = v76;
  sub_19BA39F60(buf);
  objc_autoreleasePoolPop(context);
  if (v61)
  {
    LOBYTE(v27) = sub_19BA37268(v41, a2, a3, a4 - 1, v34, a6);
  }

  return v27 & 1;
}

void sub_19BA37D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25)
{
  a25 = &a21;
  sub_19BA39F60(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA37DD8(float64x2_t *a1, double **a2, double *a3, double *a4, double a5)
{
  v66 = *MEMORY[0x1E69E9840];
  *a3 = 0.0;
  a3[1] = 0.0;
  *a4 = 0.0;
  v5 = *a2;
  if (!*a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v19 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLMM, NULL road", buf, 2u);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    LOWORD(__y[0]) = 0;
    v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM, NULL road", __y, 2);
LABEL_17:
    v22 = v21;
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n");
    goto LABEL_41;
  }

  v6 = (*(v5 + 18) - *(v5 + 17)) >> 4;
  if (v6 <= 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v23 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,CoordinateCount is 0", buf, 2u);
    }

    v24 = sub_19B87DD40();
    if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    LOWORD(__y[0]) = 0;
    v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,interpolateProjections,CoordinateCount is 0", __y, 2);
    goto LABEL_40;
  }

  if (v6 != 1)
  {
    sub_19B9F5AA8(*a2);
    v12 = (*(v5 + 21) - *(v5 + 20)) >> 3;
    if (v12 == v6 - 1)
    {
      v13 = *a2;
      sub_19B9F5AA8(v13);
      if (a5 < 0.000001)
      {
        *a3 = **(v13 + 17);
        v14 = *a3;
        v15 = a3[1];
        v16 = *(v13 + 17);
        v17 = *(v16 + 16);
        v18 = *(v16 + 24);
LABEL_62:
        *buf = 0;
        __y[0] = 0.0;
        sub_19BA0BE88(a1, buf, __y, &v63, v14, v15, 0.0, v17, v18, 0.0);
        v38 = atan2(__y[0], *buf);
        if (v38 < 0.0)
        {
          v38 = v38 + 6.28318531;
        }

        v39 = v38 * 57.2957795;
LABEL_65:
        *a4 = v39;
        return 1;
      }

      if (a5 >= 0.999999)
      {
        *a3 = *(*(v13 + 17) + 16 * v12);
        v37 = *(v13 + 17) + 16 * v12;
        v14 = *(v37 - 16);
        v15 = *(v37 - 8);
        v17 = *a3;
        v18 = a3[1];
        goto LABEL_62;
      }

      v29 = *(v5 + 20);
      v30 = *(v5 + 21);
      if (v29 != v30)
      {
        v31 = 0.0;
        v32 = 2;
        v33 = 24;
        while (1)
        {
          v34 = *v29 / v13[5];
          if (vabdd_f64(a5, v31 + v34) < 0.000001)
          {
            break;
          }

          if (v31 + v34 > a5)
          {
            v53 = (a5 - v31) / v34;
            v54 = (*(v13 + 17) + v33);
            v55 = *(v54 - 2);
            v56 = *v54;
            *a3 = *(v54 - 3) + (*(v54 - 1) - *(v54 - 3)) * v53;
            v57 = v55 + 360.0;
            if (v55 >= 0.0)
            {
              v57 = v55;
            }

            v58 = v56 + 360.0;
            if (v56 >= 0.0)
            {
              v58 = v56;
            }

            v59 = v58 - v57;
            if (v59 <= 180.0)
            {
              if (v59 < -180.0)
              {
                v59 = v59 + 360.0;
              }
            }

            else
            {
              v59 = v59 + -360.0;
            }

            v62 = fmod(v55 + v59 * v53, 360.0);
            if (v62 <= -180.0)
            {
              v62 = v62 + 360.0;
            }

            else if (v62 > 180.0)
            {
              v62 = v62 + -360.0;
            }

            a3[1] = v62;
            v14 = *(v54 - 3);
            v15 = *(v54 - 2);
            v17 = *(v54 - 1);
            v18 = *v54;
            goto LABEL_62;
          }

          ++v29;
          v33 += 16;
          ++v32;
          v31 = v31 + v34;
          if (v29 == v30)
          {
            goto LABEL_50;
          }
        }

        if (v32 < v6)
        {
          *a3 = *(*(v13 + 17) + v33 - 8);
          v40 = *(v13 + 17) + v33;
          v41 = *(v40 - 24);
          v42 = *(v40 - 16);
          v43 = *a3;
          v44 = a3[1];
          *buf = 0;
          __y[0] = 0.0;
          sub_19BA0BE88(a1, buf, __y, &v63, v41, v42, 0.0, v43, v44, 0.0);
          v45 = atan2(__y[0], *buf);
          if (v45 < 0.0)
          {
            v45 = v45 + 6.28318531;
          }

          v46 = v45 * 57.2957795;
          v47 = *a3;
          v48 = a3[1];
          v49 = *(v13 + 17) + v33;
          v50 = *(v49 + 8);
          v51 = *(v49 + 16);
          *buf = 0;
          __y[0] = 0.0;
          sub_19BA0BE88(a1, buf, __y, &v63, v47, v48, 0.0, v50, v51, 0.0);
          v52 = atan2(__y[0], *buf);
          if (v52 < 0.0)
          {
            v52 = v52 + 6.28318531;
          }

          sub_19B8B646C(v46, v52 * 57.2957795);
          goto LABEL_65;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v60 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v60, OS_LOG_TYPE_ERROR, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", buf, 2u);
        }

        v61 = sub_19B87DD40();
        if ((*(v61 + 160) & 0x80000000) != 0 && (*(v61 + 164) & 0x80000000) != 0 && (*(v61 + 168) & 0x80000000) != 0 && !*(v61 + 152))
        {
          return 0;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        LOWORD(__y[0]) = 0;
        v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", __y, 2);
        goto LABEL_17;
      }

LABEL_50:
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v35 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,Could not interpolate to intended projection", buf, 2u);
      }

      v36 = sub_19B87DD40();
      if (*(v36 + 160) <= 1 && *(v36 + 164) <= 1 && *(v36 + 168) <= 1 && !*(v36 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      LOWORD(__y[0]) = 0;
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,interpolateProjections,Could not interpolate to intended projection", __y, 2);
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v26 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,inconsistent array size", buf, 2u);
      }

      v27 = sub_19B87DD40();
      if (*(v27 + 160) <= 1 && *(v27 + 164) <= 1 && *(v27 + 168) <= 1 && !*(v27 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      LOWORD(__y[0]) = 0;
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,interpolateProjections,inconsistent array size", __y, 2);
    }

LABEL_40:
    v22 = v25;
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n");
LABEL_41:
    if (v22 != buf)
    {
      free(v22);
    }

    return 0;
  }

  return 1;
}

unint64_t sub_19BA386B0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v5 = 1050.0;
    if (a4 <= 1050.0)
    {
      v5 = a4;
      if (a4 < -1050.0)
      {
        v5 = -1050.0;
      }
    }

    v6 = *(a2 + 48);

    return sub_19BA37268(a1, a3, a2, 30, v6, v5);
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v8 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 8);
      *buf = 134349056;
      v16 = v9;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v11 = *(a1 + 8);
      v13 = 134349056;
      v14 = v11;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", &v13, 12);
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRoad(struct CLMapGeometry::DistanceQueryResult &, double, const CLMapGeometry::RoadInfoList &) const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    return 0;
  }
}

uint64_t sub_19BA38900(uint64_t a1, double **a2, uint64_t *a3, int *a4, double a5, double a6)
{
  *&v71[813] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 32) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v21 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 8);
      *buf = 134349056;
      v69 = v22;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v23 = sub_19B87DD40();
    if ((*(v23 + 160) & 0x80000000) != 0 && (*(v23 + 164) & 0x80000000) != 0 && (*(v23 + 168) & 0x80000000) != 0 && !*(v23 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v24 = *(a1 + 8);
    *v67 = 134349056;
    *&v67[4] = v24;
    v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", v67, 12);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v20);
    goto LABEL_46;
  }

  v8 = *a2;
  if (!*a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v25 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "#Warning,CLMMPED,input road is nullptr", buf, 2u);
    }

    v26 = sub_19B87DD40();
    if ((*(v26 + 160) & 0x80000000) != 0 && (*(v26 + 164) & 0x80000000) != 0 && (*(v26 + 168) & 0x80000000) != 0 && !*(v26 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    *v67 = 0;
    v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "#Warning,CLMMPED,input road is nullptr", v67, 2);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v20);
    goto LABEL_46;
  }

  sub_19B9F5AA8(*a2);
  v13 = v8[5];
  if (v13 <= 0.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v27 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_ERROR, "#Warning,CLMMPED, road length is 0.0", buf, 2u);
    }

    v28 = sub_19B87DD40();
    if ((*(v28 + 160) & 0x80000000) != 0 && (*(v28 + 164) & 0x80000000) != 0 && (*(v28 + 168) & 0x80000000) != 0 && !*(v28 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    *v67 = 0;
    v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "#Warning,CLMMPED, road length is 0.0", v67, 2);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v20);
    goto LABEL_46;
  }

  if (((*(*a2 + 18) - *(*a2 + 17)) >> 4) <= 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v14 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v15 = **a2;
      v16 = ((*(*a2 + 18) - *(*a2 + 17)) >> 4);
      *buf = 134283777;
      v69 = v15;
      v70 = 2050;
      *v71 = v16;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "#Warning,CLMMPED,GEOMapFeatureRoad id,%{private}lld,has less than two coordinate (moveOnRoadInternal),%{public}ld", buf, 0x16u);
    }

    v17 = sub_19B87DD40();
    if (*(v17 + 160) <= 1 && *(v17 + 164) <= 1 && *(v17 + 168) <= 1 && !*(v17 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v18 = **a2;
    v19 = ((*(*a2 + 18) - *(*a2 + 17)) >> 4);
    *v67 = 134283777;
    *&v67[4] = v18;
    *&v67[12] = 2050;
    *&v67[14] = v19;
    v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "#Warning,CLMMPED,GEOMapFeatureRoad id,%{private}lld,has less than two coordinate (moveOnRoadInternal),%{public}ld", v67, 22);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v20);
LABEL_46:
    if (v20 != buf)
    {
      free(v20);
    }

    return 0;
  }

  v31 = 1.0 - a5;
  if (!*(a2 + 20))
  {
    v31 = a5;
  }

  v32 = v13 * v31;
  if (v13 * v31 > fabs(a6))
  {
    v33 = a6 / v13;
    if (!*(a2 + 20))
    {
      v33 = -v33;
    }

    v34 = a2[1];
    v35 = v33 + a5;
    v65[0] = *a2;
    v65[1] = v34;
    v66 = 0.0;
    if (v34)
    {
      atomic_fetch_add_explicit(v34 + 1, 1uLL, memory_order_relaxed);
    }

    v29 = sub_19BA37DD8((a1 + 56), v65, v67, &v66, v33 + a5);
    if (v34)
    {
      sub_19B8750F8(v34);
    }

    if (v29)
    {
      *(a2 + 6) = v35;
      *(a2 + 2) = *v67;
      v36 = v66;
      *(a2 + 6) = v36;
      if ((*(a2 + 20) & 1) == 0)
      {
        v37 = fmod((v36 + 180.0), 360.0);
        if (v37 < 0.0)
        {
          v37 = v37 + 360.0;
        }

        v38 = v37;
        *(a2 + 6) = v38;
      }
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v57 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_DEBUG, "#Warning CLMMPED,moveOnRouteRoads,interpolateProjections returned false", buf, 2u);
      }

      v58 = sub_19B87DD40();
      if (*(v58 + 160) > 1 || *(v58 + 164) > 1 || *(v58 + 168) > 1 || *(v58 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v64 = 0;
        v59 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "#Warning CLMMPED,moveOnRouteRoads,interpolateProjections returned false", &v64, 2);
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v59);
        if (v59 != buf)
        {
          free(v59);
        }
      }
    }

    return v29;
  }

  v39 = *a4;
  v40 = v39 + 1;
  *a4 = v39 + 1;
  if (v39 > 9 || a3[2] <= v40)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v49 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v50 = *(a1 + 8);
      v51 = *a4;
      v52 = a3[2];
      *buf = 134218496;
      v69 = v50;
      v70 = 1024;
      *v71 = v51;
      v71[2] = 2048;
      *&v71[3] = v52;
      _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_DEBUG, "CLMMPED,%.3lf, no more route roads available to cover the distance travelled,index,%d,size,%lu", buf, 0x1Cu);
    }

    v53 = sub_19B87DD40();
    if (*(v53 + 160) <= 1 && *(v53 + 164) <= 1 && *(v53 + 168) <= 1 && !*(v53 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v54 = *(a1 + 8);
    v55 = *a4;
    v56 = a3[2];
    *v67 = 134218496;
    *&v67[4] = v54;
    *&v67[12] = 1024;
    *&v67[14] = v55;
    *&v67[18] = 2048;
    *&v67[20] = v56;
    v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMMPED,%.3lf, no more route roads available to cover the distance travelled,index,%d,size,%lu", v67, 28);
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v20);
    goto LABEL_46;
  }

  v41 = a3[1];
  if (v39 <= -2)
  {
    do
    {
      v41 = *v41;
    }

    while (!__CFADD__(v40++, 1));
  }

  else if (v39 != -1)
  {
    v42 = v39 + 2;
    do
    {
      v41 = *(v41 + 8);
      --v42;
    }

    while (v42 > 1);
  }

  if (v41 == a3)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v60 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v61 = *(a1 + 8);
      *buf = 134217984;
      v69 = v61;
      _os_log_impl(&dword_19B873000, v60, OS_LOG_TYPE_ERROR, "CLMMPED,%.3lf, unexpectedly reached to the end of routeRoadList", buf, 0xCu);
    }

    v62 = sub_19B87DD40();
    if ((*(v62 + 160) & 0x80000000) != 0 && (*(v62 + 164) & 0x80000000) != 0 && (*(v62 + 168) & 0x80000000) != 0 && !*(v62 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v63 = *(a1 + 8);
    *v67 = 134217984;
    *&v67[4] = v63;
    v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMMPED,%.3lf, unexpectedly reached to the end of routeRoadList", v67, 12);
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v20);
    goto LABEL_46;
  }

  v44 = *(v41 + 36);
  sub_19B911784(a2, (v41 + 16));
  *(a2 + 20) = *(v41 + 36);
  v46.n128_u64[0] = 0;
  if ((v44 & 1) == 0)
  {
    v46.n128_f64[0] = fmod((*(a2 + 6) + 180.0), 360.0);
    if (v46.n128_f64[0] < 0.0)
    {
      v46.n128_f64[0] = v46.n128_f64[0] + 360.0;
    }

    v47 = v46.n128_f64[0];
    *(a2 + 6) = v47;
    v46.n128_u64[0] = 1.0;
  }

  v48 = *(*a1 + 56);

  v45.n128_f64[0] = a6 - v32;
  return v48(a1, a2, a3, a4, v46, v45);
}

void sub_19BA39588(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA395A8(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      Current = CFAbsoluteTimeGetCurrent();
      sub_19B8E62BC(v2 + 288, Current, 0.5, 0.5);
    }

    v4 = *(a1 + 8);

    sub_19B8E62BC(a1 + 2616, v4, 60.0, 60.0);
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 8);
      *buf = 134349056;
      v13 = v6;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v8 = *(a1 + 8);
      v10 = 134349056;
      v11 = v8;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", &v10, 12);
      sub_19B885924("Generic", 1, 0, 0, "virtual void CLGeoMapFeatureAccessGeometryPedestrian::clearStoredStaleConnections()", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }
}

void sub_19BA397E8(uint64_t a1)
{
  sub_19B9DE4D8(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19BA39820(uint64_t a1)
{
  if (*(a1 + 2648))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

os_log_t sub_19BA3983C()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19BA39888(void *a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v4 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349571;
      v46 = objc_msgSend_code(a2, v5, v6, v7);
      v47 = 2114;
      v48 = objc_msgSend_domain(a2, v8, v9, v10);
      v49 = 2113;
      v50 = objc_msgSend_localizedDescription(a2, v11, v12, v13);
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "#Warning CLMM,GEOMapFeatureAccessRequest reported errorcode,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v18 = off_1EAFE4708;
      v39 = 134349571;
      v40 = objc_msgSend_code(a2, v15, v16, v17);
      v41 = 2114;
      v42 = objc_msgSend_domain(a2, v19, v20, v21);
      v43 = 2113;
      v44 = objc_msgSend_localizedDescription(a2, v22, v23, v24);
      v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v18, 0, "#Warning CLMM,GEOMapFeatureAccessRequest reported errorcode,%{public}lld,domain,%{public}@,description,%{private}@", &v39, 32);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    *(*(a1[4] + 8) + 24) = 1;
  }

  if (*(*(a1[5] + 8) + 40))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v26 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(*(a1[6] + 8) + 24);
      v28 = *(*(a1[4] + 8) + 24);
      *buf = 134349312;
      v46 = v27;
      v47 = 1026;
      LODWORD(v48) = v28;
      _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLMM,releasing dispatch_group,%{public}lu,errorReported,%{public}d", buf, 0x12u);
    }

    v29 = sub_19B87DD40();
    if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v30 = *(*(a1[6] + 8) + 24);
      v31 = *(*(a1[4] + 8) + 24);
      v39 = 134349312;
      v40 = v30;
      v41 = 1026;
      LODWORD(v42) = v31;
      v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,releasing dispatch_group,%{public}lu,errorReported,%{public}d", &v39, 18);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    dispatch_group_leave(*(*(a1[5] + 8) + 40));
  }

  if (*(*(a1[6] + 8) + 24))
  {
    if (*(*(a1[5] + 8) + 40))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v33 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEBUG, "CLMM,clearing dispatchGroup when time-out has happened", buf, 2u);
      }

      v34 = sub_19B87DD40();
      if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        LOWORD(v39) = 0;
        v35 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLMM,clearing dispatchGroup when time-out has happened", &v39, 2);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v35);
        if (v35 != buf)
        {
          free(v35);
        }
      }

      *(*(a1[5] + 8) + 40) = 0;
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v36 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_ERROR, "CLMM,dispatchGroup is unexpectedly nil", buf, 2u);
      }

      v37 = sub_19B87DD40();
      if ((*(v37 + 160) & 0x80000000) == 0 || (*(v37 + 164) & 0x80000000) == 0 || (*(v37 + 168) & 0x80000000) == 0 || *(v37 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        LOWORD(v39) = 0;
        v38 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,dispatchGroup is unexpectedly nil", &v39, 2);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v38);
        if (v38 != buf)
        {
          free(v38);
        }
      }
    }
  }
}

void sub_19BA39F60(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 2);
        if (v6)
        {
          sub_19B8750F8(v6);
        }

        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 sub_19BA3A064(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0E6EC80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_19BA3A0C0(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6ECE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::string *sub_19BA3A10C(std::string *result, uint64_t a2)
{
  if (result->__r_.__value_.__s.__data_[0] != 1)
  {
    return result;
  }

  v3 = result;
  v4 = &result->__r_.__value_.__r.__words[1];
  v5 = result[1].__r_.__value_.__s.__data_[7];
  if (v5 < 0)
  {
    if (result->__r_.__value_.__r.__words[2])
    {
      goto LABEL_4;
    }
  }

  else if (result[1].__r_.__value_.__s.__data_[7])
  {
LABEL_4:
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    v8 = result->__r_.__value_.__r.__words[2];
    if (v5 >= 0)
    {
      v8 = result[1].__r_.__value_.__s.__data_[7];
    }

    if (v7 == v8)
    {
      v9 = v6 >= 0 ? a2 : *a2;
      v10 = v5 >= 0 ? v4 : v4->__r_.__value_.__r.__words[0];
      result = memcmp(v9, v10, v7);
      if (!result)
      {
        ++LODWORD(v3[12].__r_.__value_.__l.__data_);
        return result;
      }
    }

    sub_19BA3A1F8(v3);
    sub_19BA3A418(v3);
    goto LABEL_20;
  }

  ++LODWORD(result[12].__r_.__value_.__l.__data_);
LABEL_20:

  return std::string::operator=(v4, a2);
}

void sub_19BA3A1F8(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*a1 == 1 && *(a1 + 32) >= 1)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = sub_19BA3BD00;
    v9 = &unk_1E753DC40;
    v10 = a1;
    AnalyticsSendEventLazy();
    sub_19BA3A418(a1);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6ED10);
    }

    v2 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLTSP,Analytics Submitted", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6ED10);
      }

      v5 = 0;
      v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLTSP,Analytics Submitted", &v5, 2);
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentAnalytics::submitStats()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }
}

void sub_19BA3A418(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
  }

  else
  {
    v2 = (a1 + 8);
    *(a1 + 31) = 0;
  }

  *v2 = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  v3 = 0uLL;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 304) = -1;
  *(a1 + 312) = 0xBFF0000000000000;
  *(a1 + 320) = 0xBFF0000000000000;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0;
  *(a1 + 488) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  v4 = *(a1 + 544);
  if (v4)
  {

    v3 = 0uLL;
    *(a1 + 544) = 0;
  }

  *(a1 + 552) = 0;
  *(a1 + 584) = 0;
  *(a1 + 568) = v3;
  *(a1 + 592) = 0;
  *(a1 + 600) = v3;
  *(a1 + 664) = 0;
  *(a1 + 648) = v3;
  *(a1 + 672) = 0;
  *(a1 + 688) = 0;
  *(a1 + 680) = 0;
  v5 = *(a1 + 720);
  if (v5)
  {

    *(a1 + 720) = 0;
  }

  *(a1 + 728) = 0;
  *(a1 + 760) = 0;
  v6 = 0uLL;
  *(a1 + 744) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 840) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 848) = 0;
  *(a1 + 864) = 0;
  *(a1 + 856) = 0;
  v7 = *(a1 + 896);
  if (v7)
  {

    v6 = 0uLL;
    *(a1 + 896) = 0;
  }

  *(a1 + 904) = 0;
  *(a1 + 936) = 0;
  *(a1 + 920) = v6;
  *(a1 + 944) = 0;
  *(a1 + 952) = v6;
  *(a1 + 1016) = 0;
  *(a1 + 1000) = v6;
  *(a1 + 1024) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1032) = 0;
  v8 = *(a1 + 1072);
  if (v8)
  {

    *(a1 + 1072) = 0;
  }

  *(a1 + 1080) = 0;
  *(a1 + 1112) = 0;
  v9 = 0uLL;
  *(a1 + 1096) = 0u;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 0u;
  *(a1 + 1192) = 0;
  *(a1 + 1176) = 0u;
  *(a1 + 1200) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1208) = 0;
  v10 = *(a1 + 1248);
  if (v10)
  {

    v9 = 0uLL;
    *(a1 + 1248) = 0;
  }

  *(a1 + 1280) = 0;
  *(a1 + 1264) = v9;
  *(a1 + 1288) = 0;
  *(a1 + 1296) = v9;
}

void sub_19BA3A614(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v258 = *MEMORY[0x1E69E9840];
  if (a2 && (*a1 & 1) != 0)
  {
    v6 = objc_msgSend_tripLocations(a2, a2, a3, a4);
    *(a1 + 32) += objc_msgSend_count(v6, v7, v8, v9);
    v13 = objc_msgSend_tripLocations(a2, v10, v11, v12);
    if (objc_msgSend_count(v13, v14, v15, v16))
    {
      v20 = objc_msgSend_tripLocations(a2, v17, v18, v19);
      Object = objc_msgSend_firstObject(v20, v21, v22, v23);
      v28 = objc_msgSend_timestamp(Object, v25, v26, v27);
      v32 = objc_msgSend_tripLocations(a2, v29, v30, v31);
      v36 = objc_msgSend_lastObject(v32, v33, v34, v35);
      v40 = objc_msgSend_timestamp(v36, v37, v38, v39);
      if (v28)
      {
        if (v40)
        {
          objc_msgSend_timeIntervalSinceDate_(v40, v17, v28, v19);
          *(a1 + 40) += fabs(v41);
        }
      }
    }

    *(a1 + 48) = objc_msgSend_modeOfTransport(a2, v17, v18, v19);
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    obj = objc_msgSend_tripLocations(a2, v42, v43, v44);
    v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v149, v257, 16);
    if (v46)
    {
      v50 = v46;
      v51 = *v150;
      v147 = 1;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v150 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v53 = *(*(&v149 + 1) + 8 * i);
          if (*(a1 + 1072))
          {
            objc_msgSend_iOSTime(*(*(&v149 + 1) + 8 * i), v47, v48, v49);
            v55 = v54;
            objc_msgSend_iOSTime(*(a1 + 1072), v56, v57, v58);
            sub_19B9988CC((a1 + 992), vabdd_f64(v55, v59));
            objc_msgSend_distanceFromLocation_(v53, v60, *(a1 + 1072), v61);
            sub_19B9988CC((a1 + 912), v62);
          }

          ++*(a1 + 904);
          sub_19BA3ADC8(a1 + 904, v53);
          v66 = a1 + 376;
          if ((objc_msgSend_isWiFiLocationType(v53, v63, v64, v65) & 1) == 0)
          {
            v66 = a1 + 552;
            if ((objc_msgSend_isGPSLocationType(v53, v47, v48, v49) & 1) == 0)
            {
              v66 = a1 + 728;
              if (!objc_msgSend_isLoiLocationType(v53, v47, v48, v49))
              {
                continue;
              }
            }
          }

          v67 = objc_msgSend_tripLocations(a2, v47, v48, v49);
          v71 = objc_msgSend_firstObject(v67, v68, v69, v70);
          if (*(v66 + 168))
          {
            v75 = v71;
            objc_msgSend_iOSTime(v53, v72, v73, v74);
            v77 = v76;
            objc_msgSend_iOSTime(*(v66 + 168), v78, v79, v80);
            v82 = vabdd_f64(v77, v81);
            if (v53 == v75 && v82 <= 0.000001)
            {
              --*(a1 + 32);
              continue;
            }

            v83 = *(v66 + 168);
            ++*v66;
            if (v83)
            {
              sub_19B9988CC((v66 + 88), v82);
              objc_msgSend_distanceFromLocation_(v53, v84, *(v66 + 168), v85);
              v87 = v86;
              sub_19B9988CC((v66 + 8), v86);
              if (objc_msgSend_isGPSLocationType(v53, v88, v89, v90))
              {
                if (v82 >= 3.0)
                {
                  ++*(a1 + 1080);
                  sub_19B9988CC((a1 + 1088), v87);
                  sub_19B9988CC((a1 + 1168), v82);
                  sub_19B9988CC((a1 + 1256), v147);
                  v91 = 1;
                }

                else
                {
                  v91 = v147 + 1;
                }

                v147 = v91;
              }
            }
          }

          else
          {
            ++*v66;
          }

          sub_19BA3ADC8(v66, v53);
        }

        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v149, v257, 16);
      }

      while (v50);
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6ED10);
    }

    v92 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      v93 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v93 = *v93;
      }

      v94 = *(a1 + 32);
      v95 = *(a1 + 552);
      v96 = 0.0;
      v97 = 0.0;
      if (v94)
      {
        v97 = v95 / v94 * 100.0;
      }

      v98 = *(a1 + 944);
      v99 = *(a1 + 1024);
      v100 = *(a1 + 920);
      v101 = *(a1 + 1000);
      v102 = *(a1 + 592);
      v103 = *(a1 + 672);
      v104 = *(a1 + 568);
      v105 = *(a1 + 648);
      v106 = *(a1 + 1080);
      v107 = *(a1 + 1264);
      v108 = *(a1 + 1288);
      v109 = *(a1 + 1272);
      v110 = *(a1 + 1120);
      v111 = *(a1 + 1200);
      v112 = *(a1 + 1096);
      v113 = *(a1 + 1176);
      v114 = *(a1 + 376);
      if (v94)
      {
        v96 = v114 / v94 * 100.0;
      }

      v115 = *(a1 + 416);
      v116 = *(a1 + 496);
      v117 = *(a1 + 392);
      v118 = *(a1 + 472);
      *buf = 136452610;
      v206 = v93;
      v207 = 1026;
      v208 = v94;
      v209 = 2050;
      v210 = v98;
      v211 = 2050;
      v212 = v99;
      v213 = 2050;
      v214 = v100;
      v215 = 2050;
      v216 = v101;
      v217 = 1026;
      v218 = v95;
      v219 = 2050;
      v220 = v97;
      v221 = 2050;
      v222 = v102;
      v223 = 2050;
      v224 = v103;
      v225 = 2050;
      v226 = v104;
      v227 = 2050;
      v228 = v105;
      v229 = 1026;
      v230 = v106;
      v231 = 2050;
      v232 = v107;
      v233 = 2050;
      v234 = v108;
      v235 = 2050;
      v236 = v109;
      v237 = 2050;
      v238 = v110;
      v239 = 2050;
      v240 = v111;
      v241 = 2050;
      v242 = v112;
      v243 = 2050;
      v244 = v113;
      v245 = 1026;
      v246 = v114;
      v247 = 2050;
      v248 = v96;
      v249 = 2050;
      v250 = v115;
      v251 = 2050;
      v252 = v116;
      v253 = 2050;
      v254 = v117;
      v255 = 2050;
      v256 = v118;
      _os_log_impl(&dword_19B873000, v92, OS_LOG_TYPE_INFO, "CLTSP,crumbStatistics,tripID,%{public}s,totalCrumbs,%{public}d,avgCrumbDistance,%{public}.2lf,avgCrumbTimeDiff,%{public}.2lf,maxCrumbDistance,%{public}.2lf,maxCrumbTimeDiff,%{public}.2lf,gpsCount,%{public}d,gpsPercentage,%{public}.2lf,avgGPSCrumbDistance,%{public}.2lf,avgGPSCrumbTimeDiff,%{public}.2lf,maxGPSCrumbDistance,%{public}.2lf,maxGPSCrumbTimeDiff,%{public}.2lf,numGPSSessions,%{public}d,maxFixCountInAGPSSession,%{public}.1lf,avgFixCountInAGPSSession,%{public}.1lf,minFixCountInAGPSSession,%{public}.1lf,avgDistanceBetweenGPSSessions,%{public}.2lf,avgTimeDiffBetweenGPSSessions,%{public}.2lf,maxDistanceBetweenGPSSessions,%{public}.2lf,maxTimeDiffBetweenGPSSessions,%{public}.2lf,wifiCount,%{public}d,wifiPercentage,%{public}.2lf,avgWiFiCrumbDistance,%{public}.2lf,avgWiFiCrumbTimeDiff,%{public}.2lf,maxWiFiCrumbDistance,%{public}.2lf,maxWiFiCrumbTimeDiff,%{public}.2lf", buf, 0xF6u);
    }

    v119 = sub_19B87DD40();
    if (*(v119 + 160) > 1 || *(v119 + 164) > 1 || *(v119 + 168) > 1 || *(v119 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6ED10);
      }

      v120 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v120 = *v120;
      }

      v121 = *(a1 + 32);
      v122 = 0.0;
      v123 = 0.0;
      v124 = *(a1 + 552);
      if (v121)
      {
        v123 = v124 / v121 * 100.0;
      }

      v125 = *(a1 + 944);
      v126 = *(a1 + 1024);
      v127 = *(a1 + 920);
      v128 = *(a1 + 1000);
      v129 = *(a1 + 592);
      v130 = *(a1 + 672);
      v131 = *(a1 + 568);
      v132 = *(a1 + 648);
      v133 = *(a1 + 1080);
      v134 = *(a1 + 1264);
      v135 = *(a1 + 1288);
      v136 = *(a1 + 1272);
      v137 = *(a1 + 1120);
      v138 = *(a1 + 1200);
      v139 = *(a1 + 1096);
      v140 = *(a1 + 1176);
      v141 = *(a1 + 376);
      if (v121)
      {
        v122 = v141 / v121 * 100.0;
      }

      v142 = *(a1 + 416);
      v143 = *(a1 + 496);
      v144 = *(a1 + 392);
      v145 = *(a1 + 472);
      v153 = 136452610;
      v154 = v120;
      v155 = 1026;
      v156 = v121;
      v157 = 2050;
      v158 = v125;
      v159 = 2050;
      v160 = v126;
      v161 = 2050;
      v162 = v127;
      v163 = 2050;
      v164 = v128;
      v165 = 1026;
      v166 = v124;
      v167 = 2050;
      v168 = v123;
      v169 = 2050;
      v170 = v129;
      v171 = 2050;
      v172 = v130;
      v173 = 2050;
      v174 = v131;
      v175 = 2050;
      v176 = v132;
      v177 = 1026;
      v178 = v133;
      v179 = 2050;
      v180 = v134;
      v181 = 2050;
      v182 = v135;
      v183 = 2050;
      v184 = v136;
      v185 = 2050;
      v186 = v137;
      v187 = 2050;
      v188 = v138;
      v189 = 2050;
      v190 = v139;
      v191 = 2050;
      v192 = v140;
      v193 = 1026;
      v194 = v141;
      v195 = 2050;
      v196 = v122;
      v197 = 2050;
      v198 = v142;
      v199 = 2050;
      v200 = v143;
      v201 = 2050;
      v202 = v144;
      v203 = 2050;
      v204 = v145;
      v146 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,crumbStatistics,tripID,%{public}s,totalCrumbs,%{public}d,avgCrumbDistance,%{public}.2lf,avgCrumbTimeDiff,%{public}.2lf,maxCrumbDistance,%{public}.2lf,maxCrumbTimeDiff,%{public}.2lf,gpsCount,%{public}d,gpsPercentage,%{public}.2lf,avgGPSCrumbDistance,%{public}.2lf,avgGPSCrumbTimeDiff,%{public}.2lf,maxGPSCrumbDistance,%{public}.2lf,maxGPSCrumbTimeDiff,%{public}.2lf,numGPSSessions,%{public}d,maxFixCountInAGPSSession,%{public}.1lf,avgFixCountInAGPSSession,%{public}.1lf,minFixCountInAGPSSession,%{public}.1lf,avgDistanceBetweenGPSSessions,%{public}.2lf,avgTimeDiffBetweenGPSSessions,%{public}.2lf,maxDistanceBetweenGPSSessions,%{public}.2lf,maxTimeDiffBetweenGPSSessions,%{public}.2lf,wifiCount,%{public}d,wifiPercentage,%{public}.2lf,avgWiFiCrumbDistance,%{public}.2lf,avgWiFiCrumbTimeDiff,%{public}.2lf,maxWiFiCrumbDistance,%{public}.2lf,maxWiFiCrumbTimeDiff,%{public}.2lf", &v153, 246);
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentAnalytics::fillAnalyticsFromTripSegmentInputData(CLTripSegmentInputData * _Nonnull)", "CoreLocation: %s\n", v146);
      if (v146 != buf)
      {
        free(v146);
      }
    }
  }
}

id sub_19BA3ADC8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 168);
  if (v4)
  {

    *(a1 + 168) = 0;
  }

  result = a2;
  *(a1 + 168) = result;
  return result;
}

void sub_19BA3AE04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v154 = *MEMORY[0x1E69E9840];
  if (a2 && (*a1 & 1) != 0)
  {
    v6 = objc_msgSend_tripLocations(a2, a2, a3, a4);
    *(a1 + 36) += objc_msgSend_count(v6, v7, v8, v9);
    objc_msgSend_distance_m(a2, v10, v11, v12);
    *(a1 + 44) += v13;
    *v146 = 0;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    v150 = 0u;
    *__p = 0u;
    v152 = 0u;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v17 = objc_msgSend_tripLocations(a2, v14, v15, v16);
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v142, v153, 16);
    v140 = a2;
    if (v22)
    {
      v23 = 0;
      v24 = *v143;
      v25 = 0.0;
      v26 = 0.0;
      v141 = 0.0;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          v28 = v23;
          if (*v143 != v24)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v142 + 1) + 8 * i);
          objc_msgSend_speed(v23, v19, v20, v21, v140);
          if (v32 < 0.0 || (objc_msgSend_speedAccuracy(v23, v29, v30, v31), v33 <= 0.0) || (objc_msgSend_speed(v23, v29, v30, v31), (v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || (objc_msgSend_speedAccuracy(v23, v29, v30, v31), (v35 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000))
          {
            ++*(a1 + 112);
          }

          objc_msgSend_course(v23, v29, v30, v31);
          if (v39 < 0.0 || (objc_msgSend_courseAccuracy(v23, v36, v37, v38), v40 <= 0.0) || (objc_msgSend_course(v23, v36, v37, v38), (v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || (objc_msgSend_courseAccuracy(v23, v36, v37, v38), (v42 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000))
          {
            ++*(a1 + 116);
          }

          if (objc_msgSend_isOriginalLocationType(v23, v36, v37, v38))
          {
            ++*(a1 + 56);
          }

          if (objc_msgSend_isInertialIntegrated(v23, v43, v44, v45))
          {
            ++*(a1 + 64);
          }

          if (objc_msgSend_isLinearInterpolated(v23, v46, v47, v48))
          {
            ++*(a1 + 60);
          }

          if (objc_msgSend_isMapMatched(v23, v49, v50, v51))
          {
            ++*(a1 + 68);
          }

          if (v28)
          {
            v52 = objc_msgSend_timestamp(v23, v19, v20, v21);
            v56 = objc_msgSend_timestamp(v28, v53, v54, v55);
            objc_msgSend_timeIntervalSinceDate_(v52, v57, v56, v58);
            v60 = v59;
            sub_19B9988CC((a1 + 208), v59);
            if (v60 > 0.0)
            {
              objc_msgSend_speed(v23, v19, v20, v21);
              v64 = 0.0;
              if (v65 >= 0.0)
              {
                objc_msgSend_speed(v28, v61, v62, v63);
                if (v66 >= 0.0)
                {
                  objc_msgSend_speed(v23, v61, v62, v63);
                  v68 = v67;
                  objc_msgSend_speed(v28, v69, v70, v71);
                  v64 = v68 - v72;
                }
              }

              objc_msgSend_altitude(v23, v61, v62, v63);
              v74 = v73;
              objc_msgSend_altitude(v28, v75, v76, v77);
              v79 = v78;
              objc_msgSend_speed(v28, v80, v81, v82);
              v84 = v83;
              objc_msgSend_speed(v28, v85, v86, v87);
              v92 = v84 * v91;
              if (v64 > 0.0)
              {
                objc_msgSend_speed(v23, v88, v89, v90);
                v94 = v93;
                objc_msgSend_speed(v23, v95, v96, v97);
                v141 = v141 + -(v92 - v94 * v98) * 0.5;
              }

              if (v74 - v79 > 0.0)
              {
                v26 = v26 + v74 - v79;
              }

              objc_msgSend_speed(v28, v88, v89, v90, v74 - v79);
              v100 = v99;
              objc_msgSend_speed(v28, v101, v102, v103);
              v105 = v104;
              sub_19B9988CC(v146, v64 / v60);
              v25 = v25 + (v92 * v100 + v92 * 1.5 * v64 + v105 * (v64 * v64) + v64 * (v64 * v64) * 0.25) * v60;
            }
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v142, v153, 16);
      }

      while (v22);
    }

    else
    {
      v25 = 0.0;
      v26 = 0.0;
      v141 = 0.0;
    }

    v106 = v140;
    objc_msgSend_distance_m(v140, v19, v20, v21, v140);
    if (v110 > 0.001)
    {
      objc_msgSend_distance_m(v106, v107, v108, v109);
      *(a1 + 328) = v141 / v114;
      v115 = 0.0;
      if (v25 > 0.0)
      {
        objc_msgSend_distance_m(v106, v111, v112, v113, 0.0);
        v115 = sqrt(v25 / v116);
      }

      *(a1 + 352) = v115;
      v117 = objc_msgSend_tripLocations(v106, v111, v112, v113);
      Object = objc_msgSend_lastObject(v117, v118, v119, v120);
      objc_msgSend_altitude(Object, v122, v123, v124);
      v126 = v125;
      v130 = objc_msgSend_tripLocations(v106, v127, v128, v129);
      v134 = objc_msgSend_firstObject(v130, v131, v132, v133);
      objc_msgSend_altitude(v134, v135, v136, v137);
      *(a1 + 336) = v26;
      *(a1 + 344) = v126 - v138;
      v139 = v150;
      *(a1 + 360) = v147;
      *(a1 + 368) = v139;
    }

    if (__p[1])
    {
      *&v152 = __p[1];
      operator delete(__p[1]);
    }
  }
}

void sub_19BA3B288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA3B2C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v199[55] = *MEMORY[0x1E69E9840];
  v198[0] = @"modeOfTransport";
  v199[0] = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, *(a1 + 48), a4);
  v198[1] = @"breadcrumbCount";
  v199[1] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v5, *(a1 + 32), v6);
  v198[2] = @"avgCrumbDistance";
  v199[2] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, *(a1 + 944), v8);
  v198[3] = @"maxCrumbDistance";
  v199[3] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v9, *(a1 + 920), v10);
  v198[4] = @"avgCrumbTimeDiff";
  v199[4] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v11, *(a1 + 1024), v12);
  v198[5] = @"maxCrumbTimeDiff";
  v199[5] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v13, *(a1 + 1000), v14);
  v198[6] = @"gpsCrumbsCount";
  v199[6] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v15, *(a1 + 552), v16);
  v198[7] = @"gpsPercentage";
  v20 = *(a1 + 32);
  v21 = 0.0;
  v22 = 0.0;
  if (v20)
  {
    v23 = *(a1 + 552) / v20 * 100.0;
    v24 = v23 > 1.0 || v23 <= 0.0;
    v22 = llround(v23);
    if (!v24)
    {
      v22 = 1.0;
    }
  }

  v199[7] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v17, v18, v19, v22);
  v198[8] = @"avgGPSCrumbDistance";
  v199[8] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v25, *(a1 + 592), v26);
  v198[9] = @"maxGPSCrumbDistance";
  v199[9] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v27, *(a1 + 568), v28);
  v198[10] = @"avgGPSCrumbTimeDiff";
  v199[10] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v29, *(a1 + 672), v30);
  v198[11] = @"maxGPSCrumbTimeDiff";
  v199[11] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v31, *(a1 + 648), v32);
  v198[12] = @"numGPSSessions";
  v199[12] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v33, *(a1 + 1080), v34);
  v198[13] = @"maxFixCountInAGPSSession";
  v199[13] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v35, *(a1 + 1264), v36);
  v198[14] = @"avgFixCountInAGPSSession";
  v199[14] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v37, *(a1 + 1288), v38);
  v198[15] = @"minFixCountInAGPSSession";
  v199[15] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v39, *(a1 + 1272), v40);
  v198[16] = @"avgDistanceBetweenGPSSessions";
  v199[16] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v41, *(a1 + 1120), v42);
  v198[17] = @"maxDistanceBetweenGPSSessions";
  v199[17] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v43, *(a1 + 1096), v44);
  v198[18] = @"avgTimeDiffBetweenGPSSessions";
  v199[18] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v45, *(a1 + 1200), v46);
  v198[19] = @"maxTimeDiffBetweenGPSSessions";
  v199[19] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v47, *(a1 + 1176), v48);
  v198[20] = @"wiFiCrumbsCount";
  v199[20] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v49, *(a1 + 376), v50);
  v198[21] = @"wiFiPercentage";
  v54 = *(a1 + 32);
  if (!v54)
  {
    goto LABEL_14;
  }

  v55 = *(a1 + 376) / v54 * 100.0;
  v56 = v55 > 1.0 || v55 <= 0.0;
  v57 = llround(v55);
  if (v56)
  {
    v21 = v57;
LABEL_14:
    v58 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v51, v52, v53, v21);
    goto LABEL_15;
  }

  v58 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v51, v52, v53, 1.0);
LABEL_15:
  v199[21] = v58;
  v198[22] = @"avgWiFiCrumbDistance";
  v199[22] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v59, *(a1 + 416), v60);
  v198[23] = @"maxWiFiCrumbDistance";
  v199[23] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v61, *(a1 + 392), v62);
  v198[24] = @"avgWiFiCrumbTimeDiff";
  v199[24] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v63, *(a1 + 496), v64);
  v198[25] = @"maxWiFiCrumbTimeDiff";
  v199[25] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v65, *(a1 + 472), v66);
  v198[26] = @"tripSegmentDuration";
  v199[26] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v67, *(a1 + 40), v68);
  v198[27] = @"tripSegmentDistance";
  v199[27] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v69, *(a1 + 44), v70);
  v198[28] = @"tripSegmentReconstructedLocCount";
  v199[28] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v71, *(a1 + 36), v72);
  v198[29] = @"originalLocationPercentage";
  v76 = *(a1 + 36);
  v77 = 0.0;
  v78 = 0.0;
  if (v76)
  {
    v79 = *(a1 + 56) / v76 * 100.0;
    v80 = v79 > 1.0 || v79 <= 0.0;
    v78 = llround(v79);
    if (!v80)
    {
      v78 = 1.0;
    }
  }

  v199[29] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v73, v74, v75, v78);
  v198[30] = @"linearInterpolationPercentage";
  v84 = *(a1 + 36);
  if (!v84)
  {
    goto LABEL_28;
  }

  v85 = *(a1 + 60) / v84 * 100.0;
  v86 = v85 > 1.0 || v85 <= 0.0;
  v87 = llround(v85);
  if (v86)
  {
    v77 = v87;
LABEL_28:
    v88 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v81, v82, v83, v77);
    goto LABEL_29;
  }

  v88 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v81, v82, v83, 1.0);
LABEL_29:
  v199[30] = v88;
  v198[31] = @"inertialIntegrationPercentgae";
  v92 = *(a1 + 36);
  v93 = 0.0;
  v94 = 0.0;
  if (v92)
  {
    v95 = *(a1 + 64) / v92 * 100.0;
    v96 = v95 > 1.0 || v95 <= 0.0;
    v94 = llround(v95);
    if (!v96)
    {
      v94 = 1.0;
    }
  }

  v199[31] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v89, v90, v91, v94);
  v198[32] = @"mapmatchedPercentage";
  v100 = *(a1 + 36);
  if (!v100)
  {
    goto LABEL_42;
  }

  v101 = *(a1 + 68) / v100 * 100.0;
  v102 = v101 > 1.0 || v101 <= 0.0;
  v103 = llround(v101);
  if (v102)
  {
    v93 = v103;
LABEL_42:
    v104 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v97, v98, v99, v93);
    goto LABEL_43;
  }

  v104 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v97, v98, v99, 1.0);
LABEL_43:
  v199[32] = v104;
  v198[33] = @"mapmatcherSegmentCount";
  v199[33] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v105, *(a1 + 72), v106);
  v198[34] = @"aStarAttemptCount";
  v199[34] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v107, *(a1 + 76), v108);
  v198[35] = @"aStarRejectedPercentage";
  v112 = *(a1 + 76);
  v113 = 0.0;
  v114 = 0.0;
  if (v112)
  {
    v115 = *(a1 + 92) / v112 * 100.0;
    v116 = v115 > 1.0 || v115 <= 0.0;
    v114 = llround(v115);
    if (!v116)
    {
      v114 = 1.0;
    }
  }

  v199[35] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v109, v110, v111, v114);
  v198[36] = @"aStarFailurePercentage";
  v120 = *(a1 + 76);
  if (!v120)
  {
    goto LABEL_56;
  }

  v121 = *(a1 + 80) / v120 * 100.0;
  v122 = v121 > 1.0 || v121 <= 0.0;
  v123 = llround(v121);
  if (v122)
  {
    v113 = v123;
LABEL_56:
    v124 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v117, v118, v119, v113);
    goto LABEL_57;
  }

  v124 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v117, v118, v119, 1.0);
LABEL_57:
  v199[36] = v124;
  v198[37] = @"astarRoadCountExceededMaxPercentage";
  v128 = *(a1 + 76);
  v129 = 0.0;
  v130 = 0.0;
  if (v128)
  {
    v131 = *(a1 + 84) / v128 * 100.0;
    v132 = v131 > 1.0 || v131 <= 0.0;
    v130 = llround(v131);
    if (!v132)
    {
      v130 = 1.0;
    }
  }

  v199[37] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v125, v126, v127, v130);
  v198[38] = @"astarIterationExceededMaxPercentage";
  v136 = *(a1 + 76);
  if (!v136)
  {
    goto LABEL_70;
  }

  v137 = *(a1 + 88) / v136 * 100.0;
  v138 = v137 > 1.0 || v137 <= 0.0;
  v139 = llround(v137);
  if (v138)
  {
    v129 = v139;
LABEL_70:
    v140 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v133, v134, v135, v129);
    goto LABEL_71;
  }

  v140 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v133, v134, v135, 1.0);
LABEL_71:
  v199[38] = v140;
  v198[39] = @"astarMaxIterations";
  v199[39] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v141, *(a1 + 136), v142);
  v198[40] = @"astarAvgIterations";
  v199[40] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v143, *(a1 + 160), v144);
  v198[41] = @"aStarProcessingTime";
  v199[41] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v145, *(a1 + 96), v146);
  v198[42] = @"mapDataQueryCount";
  v199[42] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v147, *(a1 + 104), v148);
  v198[43] = @"mapDataUnavailablePercentage";
  v152 = *(a1 + 104);
  v153 = 0.0;
  v154 = 0.0;
  if (v152)
  {
    v155 = *(a1 + 108) / v152 * 100.0;
    v156 = v155 > 1.0 || v155 <= 0.0;
    v154 = llround(v155);
    if (!v156)
    {
      v154 = 1.0;
    }
  }

  v199[43] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v149, v150, v151, v154);
  v198[44] = @"maxTimeBetweenEpochs";
  v199[44] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v157, v158, v159, *(a1 + 216));
  v198[45] = @"avgTimeBetweenEpochs";
  v199[45] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v160, v161, v162, *(a1 + 240));
  v198[46] = @"invalidSpeedPercentage";
  v166 = *(a1 + 36);
  if (v166)
  {
    v167 = *(a1 + 112) / v166 * 100.0;
    v168 = v167 > 1.0 || v167 <= 0.0;
    v169 = llround(v167);
    if (!v168)
    {
      v170 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v163, v164, v165, 1.0);
      goto LABEL_85;
    }

    v153 = v169;
  }

  v170 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v163, v164, v165, v153);
LABEL_85:
  v199[46] = v170;
  v198[47] = @"invalidCoursePercentage";
  v174 = *(a1 + 36);
  if (!v174)
  {
    v177 = 0.0;
LABEL_93:
    v178 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v171, v172, v173, v177);
    goto LABEL_94;
  }

  v175 = *(a1 + 112) / v174 * 100.0;
  v176 = v175 > 1.0 || v175 <= 0.0;
  v177 = llround(v175);
  if (v176)
  {
    goto LABEL_93;
  }

  v178 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v171, v172, v173, 1.0);
LABEL_94:
  v199[47] = v178;
  v198[48] = @"tripChunksCount";
  v199[48] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v179, *(a1 + 288), v180);
  v198[49] = @"processingTime";
  v199[49] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v181, v182, v183, *(a1 + 120));
  v198[50] = @"percentageOfRailwaySnap";
  v199[50] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v184, *(a1 + 296), v185);
  v198[51] = @"routeLengthMatchPercentageComparedTo1HzGPS";
  v199[51] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v186, *(a1 + 304), v187);
  v198[52] = @"routeDeviationComparedTo1HzGPS";
  v199[52] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v188, *(a1 + 308), v189);
  v198[53] = @"routeDeviationPerKmComparedTo1HzGPS";
  v199[53] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v190, v191, v192, *(a1 + 312));
  v198[54] = @"routeDeviationPerHrComparedTo1HzGPS";
  v199[54] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v193, v194, v195, *(a1 + 320));
  return objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v196, v199, v198, 55);
}

void sub_19BA3BD08(uint64_t a1)
{
  v195 = *MEMORY[0x1E69E9840];
  if (*a1 == 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6ED10);
    }

    v2 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      v4 = *(a1 + 36);
      v5 = 0uLL;
      if (v4)
      {
        v6 = *(a1 + 56);
        v7.i64[0] = SDWORD2(v6);
        v7.i64[1] = SHIDWORD(v6);
        v8 = vcvtq_f64_s64(v7);
        v7.i64[0] = v6;
        v7.i64[1] = SDWORD1(v6);
        v9 = vdupq_lane_s64(COERCE__INT64(v4), 0);
        v10 = vdivq_f64(vcvtq_f64_s64(v7), v9);
        v11 = vdivq_f64(v8, v9);
        v12 = vdupq_n_s64(0x4059000000000000uLL);
        v13 = vmulq_f64(v11, v12);
        v14 = vmulq_f64(v10, v12);
      }

      else
      {
        v14 = 0uLL;
        v13 = 0uLL;
      }

      v15 = *(a1 + 76);
      if (v15)
      {
        v16 = *(a1 + 80);
        v17.i64[0] = SDWORD2(v16);
        v17.i64[1] = SHIDWORD(v16);
        v18 = vcvtq_f64_s64(v17);
        v17.i64[0] = v16;
        v17.i64[1] = SDWORD1(v16);
        v19 = vdupq_lane_s64(COERCE__INT64(v15), 0);
        v20 = vdivq_f64(vcvtq_f64_s64(v17), v19);
        v21 = vdivq_f64(v18, v19);
        v22 = vdupq_n_s64(0x4059000000000000uLL);
        v23 = vmulq_f64(v21, v22);
        v5 = vmulq_f64(v20, v22);
      }

      else
      {
        v23 = 0uLL;
      }

      v24 = *(a1 + 104);
      if (v24)
      {
        v25 = *(a1 + 108) / v24 * 100.0;
      }

      else
      {
        v25 = 0.0;
      }

      v26 = *(a1 + 44);
      v27 = *(a1 + 48);
      v28 = *(a1 + 32);
      v29 = *(a1 + 40);
      v30 = *(a1 + 72);
      v31 = *(a1 + 136);
      v32 = *(a1 + 160);
      v33 = *(a1 + 96);
      v34 = *(a1 + 216);
      v35 = *(a1 + 240);
      if (v4)
      {
        v36 = *(a1 + 112);
        v37.i64[0] = v36;
        v37.i64[1] = SHIDWORD(v36);
        v38 = vmulq_f64(vdivq_f64(vcvtq_f64_s64(v37), vdupq_lane_s64(COERCE__INT64(v4), 0)), vdupq_n_s64(0x4059000000000000uLL));
      }

      else
      {
        v38 = 0uLL;
      }

      v39 = *(a1 + 288);
      v40 = *(a1 + 296);
      v41 = *(a1 + 120);
      *buf = 136453122;
      v140 = v3;
      v141 = 1026;
      v142 = v27;
      v143 = 1026;
      v144 = v28;
      v145 = 1026;
      v146 = v29;
      v147 = 1026;
      v148 = v26;
      v149 = 1026;
      v150 = v4;
      v151 = 2050;
      v152 = v14.f64[0];
      v153 = 2050;
      v154 = v14.f64[1];
      v155 = 2050;
      v156 = v13.f64[0];
      v157 = 2050;
      v158 = v13.f64[1];
      v159 = 1026;
      v160 = v30;
      v161 = 1026;
      v162 = v15;
      v163 = 2050;
      v164 = v23.f64[1];
      v165 = 2050;
      v166 = v5.f64[0];
      v167 = 2050;
      v168 = v5.f64[1];
      v169 = 2050;
      v170 = v23.f64[0];
      v171 = 2050;
      v172 = v31;
      v173 = 2050;
      v174 = v32;
      v175 = 2050;
      v176 = v33;
      v177 = 1026;
      v178 = v24;
      v179 = 2050;
      v180 = v25;
      v181 = 2050;
      v182 = v34;
      v183 = 2050;
      v184 = v35;
      v185 = 2050;
      v186 = v38.f64[0];
      v187 = 2050;
      v188 = v38.f64[1];
      v189 = 1026;
      v190 = v39;
      v191 = 2050;
      v192 = v40;
      v193 = 2050;
      v194 = v41;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLTSP,Analytics,tripID,%{public}s,modeOfTransport,%{public}d,bcCount,%{public}d,tripDuration,%{public}d,tripDistance,%{public}d,reconstructedCount,%{public}d,origPct,%{public}.2lf,liPct,%{public}.2lf,iiPct,%{public}.2lf,miPct,%{public}.2lf,miSegments,%{public}d,astarAttemptCount,%{public}d,miRouteRejectedPct,%{public}.2lf,astarFailPct,%{public}.2lf,astarIterationExceededMaxPct,%{public}.2lf,astarRoadCountExceededMaxPct,%{public}.2lf,astarMaxIterations,%{public}.2lf,astarAvgIterations,%{public}.2lf,astarProcessingTime,%{public}.2lf,mapQueryCount,%{public}d,mapFailPct,%{public}.2lf,maxTimeBetweenEpochs,%{public}.2lf,avgTimeBetweenEpochs,%{public}.2lf,invalidSpeedPct,%{public}.2lf,invalidCoursePct,%{public}.2lf,tripChunksCount,%{public}d,percentageOfRailwaySnap,%{public}.2lf,processingTime,%{public}.2lf", buf, 0xF6u);
    }

    v42 = sub_19B87DD40();
    if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6ED10);
      }

      v43 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v43 = *v43;
      }

      v44 = *(a1 + 36);
      v45 = 0uLL;
      if (v44)
      {
        v46 = *(a1 + 56);
        v47.i64[0] = SDWORD2(v46);
        v47.i64[1] = SHIDWORD(v46);
        v48 = vcvtq_f64_s64(v47);
        v47.i64[0] = v46;
        v47.i64[1] = SDWORD1(v46);
        v49 = vdupq_lane_s64(COERCE__INT64(v44), 0);
        v50 = vdivq_f64(vcvtq_f64_s64(v47), v49);
        v51 = vdivq_f64(v48, v49);
        v52 = vdupq_n_s64(0x4059000000000000uLL);
        v53 = vmulq_f64(v51, v52);
        v54 = vmulq_f64(v50, v52);
      }

      else
      {
        v54 = 0uLL;
        v53 = 0uLL;
      }

      v55 = *(a1 + 76);
      if (v55)
      {
        v56 = *(a1 + 80);
        v57.i64[0] = SDWORD2(v56);
        v57.i64[1] = SHIDWORD(v56);
        v58 = vcvtq_f64_s64(v57);
        v57.i64[0] = v56;
        v57.i64[1] = SDWORD1(v56);
        v59 = vdupq_lane_s64(COERCE__INT64(v55), 0);
        v60 = vdivq_f64(vcvtq_f64_s64(v57), v59);
        v61 = vdivq_f64(v58, v59);
        v62 = vdupq_n_s64(0x4059000000000000uLL);
        v63 = vmulq_f64(v61, v62);
        v45 = vmulq_f64(v60, v62);
      }

      else
      {
        v63 = 0uLL;
      }

      v64 = *(a1 + 104);
      if (v64)
      {
        v65 = *(a1 + 108) / v64 * 100.0;
      }

      else
      {
        v65 = 0.0;
      }

      v66 = *(a1 + 44);
      v67 = *(a1 + 48);
      v68 = *(a1 + 32);
      v69 = *(a1 + 40);
      v70 = *(a1 + 72);
      v71 = *(a1 + 136);
      v72 = *(a1 + 160);
      v73 = *(a1 + 96);
      v74 = *(a1 + 216);
      v75 = *(a1 + 240);
      if (v44)
      {
        v76 = *(a1 + 112);
        v77.i64[0] = v76;
        v77.i64[1] = SHIDWORD(v76);
        v78 = vmulq_f64(vdivq_f64(vcvtq_f64_s64(v77), vdupq_lane_s64(COERCE__INT64(v44), 0)), vdupq_n_s64(0x4059000000000000uLL));
      }

      else
      {
        v78 = 0uLL;
      }

      v79 = *(a1 + 288);
      v80 = *(a1 + 296);
      v81 = *(a1 + 120);
      v83 = 136453122;
      v84 = v43;
      v85 = 1026;
      v86 = v67;
      v87 = 1026;
      v88 = v68;
      v89 = 1026;
      v90 = v69;
      v91 = 1026;
      v92 = v66;
      v93 = 1026;
      v94 = v44;
      v95 = 2050;
      v96 = v54.f64[0];
      v97 = 2050;
      v98 = v54.f64[1];
      v99 = 2050;
      v100 = v53.f64[0];
      v101 = 2050;
      v102 = v53.f64[1];
      v103 = 1026;
      v104 = v70;
      v105 = 1026;
      v106 = v55;
      v107 = 2050;
      v108 = v63.f64[1];
      v109 = 2050;
      v110 = v45.f64[0];
      v111 = 2050;
      v112 = v45.f64[1];
      v113 = 2050;
      v114 = v63.f64[0];
      v115 = 2050;
      v116 = v71;
      v117 = 2050;
      v118 = v72;
      v119 = 2050;
      v120 = v73;
      v121 = 1026;
      v122 = v64;
      v123 = 2050;
      v124 = v65;
      v125 = 2050;
      v126 = v74;
      v127 = 2050;
      v128 = v75;
      v129 = 2050;
      v130 = v78.f64[0];
      v131 = 2050;
      v132 = v78.f64[1];
      v133 = 1026;
      v134 = v79;
      v135 = 2050;
      v136 = v80;
      v137 = 2050;
      v138 = v81;
      v82 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLTSP,Analytics,tripID,%{public}s,modeOfTransport,%{public}d,bcCount,%{public}d,tripDuration,%{public}d,tripDistance,%{public}d,reconstructedCount,%{public}d,origPct,%{public}.2lf,liPct,%{public}.2lf,iiPct,%{public}.2lf,miPct,%{public}.2lf,miSegments,%{public}d,astarAttemptCount,%{public}d,miRouteRejectedPct,%{public}.2lf,astarFailPct,%{public}.2lf,astarIterationExceededMaxPct,%{public}.2lf,astarRoadCountExceededMaxPct,%{public}.2lf,astarMaxIterations,%{public}.2lf,astarAvgIterations,%{public}.2lf,astarProcessingTime,%{public}.2lf,mapQueryCount,%{public}d,mapFailPct,%{public}.2lf,maxTimeBetweenEpochs,%{public}.2lf,avgTimeBetweenEpochs,%{public}.2lf,invalidSpeedPct,%{public}.2lf,invalidCoursePct,%{public}.2lf,tripChunksCount,%{public}d,percentageOfRailwaySnap,%{public}.2lf,processingTime,%{public}.2lf", &v83, 246);
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentAnalytics::debugLog()", "CoreLocation: %s\n", v82);
      if (v82 != buf)
      {
        free(v82);
      }
    }
  }
}

uint64_t sub_19BA3C324()
{
  if (qword_1ED519D80 != -1)
  {
    dispatch_once(&qword_1ED519D80, &unk_1F0E6ECF0);
  }

  return qword_1ED519D78;
}

void sub_19BA3C480(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, double a7)
{
  v404 = *MEMORY[0x1E69E9840];
  if (*a1 == 1)
  {
    v10 = a4;
    v13 = objc_msgSend_UUIDString(a2, a2, a3, a4);
    v17 = objc_msgSend_UTF8String(v13, v14, v15, v16);
    v18 = strlen(v17);
    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_19B890AD4();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v18;
    if (v18)
    {
      memmove(&__dst, v17, v18);
    }

    __dst.__r_.__value_.__s.__data_[v19] = 0;
    v262 = (a1 + 16);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    v21 = *(a1 + 39);
    v22 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(a1 + 24);
    }

    if (size != v21 || ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_dst = &__dst) : (p_dst = __dst.__r_.__value_.__r.__words[0]), v22 >= 0 ? (v24 = (a1 + 16)) : (v24 = v262->__r_.__value_.__r.__words[0]), memcmp(p_dst, v24, size)))
    {
      if (*(a1 + 608) >= 1)
      {
        sub_19BA3D1E8(a1);
      }
    }

    ++*(a1 + 608);
    std::string::operator=(v262, &__dst);
    v28 = objc_msgSend_UUIDString(a3, v25, v26, v27);
    v32 = objc_msgSend_UTF8String(v28, v29, v30, v31);
    v261 = (a1 + 40);
    sub_19B8D7878((a1 + 40), v32);
    *(a1 + 616) = *(a1 + 616) + a7;
    objc_msgSend_distance_m(a6, v33, v34, v35);
    *(a1 + 632) = v36 + *(a1 + 632);
    v40 = objc_msgSend_tripLocations(a6, v37, v38, v39);
    *(a1 + 640) += objc_msgSend_count(v40, v41, v42, v43);
    *(a1 + 624) += v10;
    *(a1 + 8) = objc_msgSend_modeOfTransport(a6, v44, v45, v46);
    v271 = 0u;
    v272 = 0u;
    v273 = 0u;
    v274 = 0u;
    v50 = objc_msgSend_tripLocations(a6, v47, v48, v49);
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v271, v403, 16);
    if (v55)
    {
      v56 = *v272;
      obj = v50;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v272 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v58 = *(*(&v271 + 1) + 8 * i);
          if (objc_msgSend_isMapMatched(v58, v52, v53, v54))
          {
            ++*(a1 + 584);
          }

          if (objc_msgSend_isInertialIntegrated(v58, v59, v60, v61))
          {
            ++*(a1 + 588);
          }

          if (objc_msgSend_isLinearInterpolated(v58, v62, v63, v64))
          {
            ++*(a1 + 592);
          }

          objc_msgSend_speed(v58, v65, v66, v67);
          if (v71 < 0.0)
          {
            ++*(a1 + 596);
          }

          if (*(a1 + 600) < 0.0 || (objc_msgSend_speed(v58, v68, v69, v70), v72 > *(a1 + 600)))
          {
            objc_msgSend_speed(v58, v68, v69, v70);
            *(a1 + 600) = v73;
          }

          if (objc_msgSend_isGPSLocationType(v58, v68, v69, v70))
          {
            if ((objc_msgSend_isOriginalLocationType(v58, v52, v53, v54) & 1) == 0)
            {
              v74 = objc_msgSend_timestamp(v58, v52, v53, v54);
              objc_msgSend_timeIntervalSinceReferenceDate(v74, v75, v76, v77);
              v79 = v78;
              v269 = 0u;
              v270 = 0u;
              v267 = 0u;
              v268 = 0u;
              v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(a5, v80, &v267, v402, 16);
              if (v81)
              {
                v82 = *v268;
                while (2)
                {
                  for (j = 0; j != v81; ++j)
                  {
                    if (*v268 != v82)
                    {
                      objc_enumerationMutation(a5);
                    }

                    v84 = *(*(&v267 + 1) + 8 * j);
                    if (objc_msgSend_isGPSLocationType(v84, v52, v53, v54))
                    {
                      if (objc_msgSend_isOriginalLocationType(v84, v52, v53, v54))
                      {
                        v85 = objc_msgSend_timestamp(v84, v52, v53, v54);
                        objc_msgSend_timeIntervalSinceReferenceDate(v85, v86, v87, v88);
                        if (vabdd_f64(v89, v79) < 0.5)
                        {
                          if (v84)
                          {
                            *buf = 0;
                            *v276 = 0;
                            v264 = 0.0;
                            v265 = 0.0;
                            objc_msgSend_latitude(v58, v52, v53, v54);
                            v91 = v90;
                            objc_msgSend_longitude(v58, v92, v93, v94);
                            v96 = v95;
                            objc_msgSend_altitude(v58, v97, v98, v99);
                            v101 = v100;
                            objc_msgSend_latitude(v84, v102, v103, v104);
                            v106 = v105;
                            objc_msgSend_longitude(v84, v107, v108, v109);
                            v111 = v110;
                            objc_msgSend_altitude(v84, v112, v113, v114);
                            sub_19BA0BE88((a1 + 64), buf, v276, &v266, v91, v96, v101, v106, v111, v115);
                            objc_msgSend_latitude(v84, v116, v117, v118);
                            v120 = v119;
                            objc_msgSend_longitude(v84, v121, v122, v123);
                            v125 = v124;
                            objc_msgSend_altitude(v84, v126, v127, v128);
                            v130 = v129;
                            objc_msgSend_course(v84, v131, v132, v133);
                            v135 = v134;
                            objc_msgSend_latitude(v58, v136, v137, v138);
                            v140 = v139;
                            objc_msgSend_longitude(v58, v141, v142, v143);
                            sub_19BA0C3BC((a1 + 64), &v264, &v265, v120, v125, v130, v135, v140, v144);
                            sub_19B9988CC((a1 + 104), v264);
                            sub_19B9988CC((a1 + 184), v265);
                            sub_19B9988CC((a1 + 264), sqrt(*v276 * *v276 + *buf * *buf));
                            objc_msgSend_altitude(v58, v145, v146, v147);
                            v149 = v148;
                            objc_msgSend_altitude(v84, v150, v151, v152);
                            sub_19B9988CC((a1 + 424), vabdd_f64(v149, v153));
                            objc_msgSend_speed(v58, v154, v155, v156);
                            if (v160 >= 0.0)
                            {
                              objc_msgSend_speed(v84, v157, v158, v159);
                              if (v161 >= 0.0)
                              {
                                objc_msgSend_speed(v58, v157, v158, v159);
                                v163 = v162;
                                objc_msgSend_speed(v84, v164, v165, v166);
                                sub_19B9988CC((a1 + 344), vabdd_f64(v163, v167));
                              }
                            }

                            objc_msgSend_course(v58, v157, v158, v159);
                            if (v168 >= 0.0)
                            {
                              objc_msgSend_course(v84, v52, v53, v54);
                              if (v169 >= 0.0)
                              {
                                objc_msgSend_course(v58, v52, v53, v54);
                                v171 = v170;
                                objc_msgSend_course(v84, v172, v173, v174);
                                v176 = fmod(v171 - v175, 360.0);
                                if (v176 < 0.0)
                                {
                                  v176 = v176 + 360.0;
                                }

                                if (v176 > 180.0)
                                {
                                  v176 = v176 + -360.0;
                                }

                                sub_19B9988CC((a1 + 504), fabs(v176));
                              }
                            }
                          }

                          goto LABEL_63;
                        }
                      }
                    }
                  }

                  v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(a5, v52, &v267, v402, 16);
                  if (v81)
                  {
                    continue;
                  }

                  break;
                }
              }
            }
          }

LABEL_63:
          ;
        }

        v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, &v271, v403, 16);
      }

      while (v55);
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6ED10);
    }

    v177 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v178 = a1 + 16;
      if (*(a1 + 39) < 0)
      {
        v178 = v262->__r_.__value_.__r.__words[0];
      }

      v179 = a1 + 40;
      if (*(a1 + 63) < 0)
      {
        v179 = *v261;
      }

      v180 = 0.0;
      v181 = 0.0;
      if (*(a1 + 128))
      {
        v181 = sqrt(*(a1 + 152));
      }

      if (*(a1 + 208))
      {
        v180 = sqrt(*(a1 + 232));
      }

      v182 = *(a1 + 288);
      v183 = 0.0;
      v184 = 0.0;
      if (v182)
      {
        v184 = sqrt(*(a1 + 312));
      }

      if (*(a1 + 368))
      {
        v183 = sqrt(*(a1 + 392));
      }

      v185 = 0.0;
      v186 = 0.0;
      if (*(a1 + 448))
      {
        v186 = sqrt(*(a1 + 472));
      }

      if (*(a1 + 528))
      {
        v185 = sqrt(*(a1 + 552));
      }

      v187 = *(a1 + 8);
      v188 = *(a1 + 632);
      v189 = fabs(*(a1 + 112));
      v190 = fabs(*(a1 + 136));
      v191 = fabs(*(a1 + 192));
      v192 = fabs(*(a1 + 216));
      v193 = *(a1 + 272);
      v194 = *(a1 + 296);
      v195 = fabs(*(a1 + 352));
      v196 = fabs(*(a1 + 376));
      v197 = fabs(*(a1 + 432));
      v198 = fabs(*(a1 + 456));
      v199 = fabs(*(a1 + 512));
      v200 = fabs(*(a1 + 536));
      v201 = *(a1 + 600);
      v202 = *(a1 + 596);
      v203 = *(a1 + 640);
      if (v203)
      {
        v204 = *(a1 + 584);
        v205.i64[0] = v204;
        v205.i64[1] = SHIDWORD(v204);
        v206 = vmulq_f64(vdivq_f64(vcvtq_f64_s64(v205), vdupq_lane_s64(COERCE__INT64(v203), 0)), vdupq_n_s64(0x4059000000000000uLL));
        __asm { FMOV            V27.2D, #1.0 }

        v212 = vandq_s8(vcgtzq_f64(v206), vcgeq_f64(_Q27, v206));
        *&v206.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v206)));
        v205.i64[0] = SLODWORD(v206.f64[0]);
        v205.i64[1] = SHIDWORD(v206.f64[0]);
        v213 = vbslq_s8(v212, _Q27, vcvtq_f64_s64(v205));
        v214 = *(a1 + 592) / v203 * 100.0;
        v215 = llround(v214);
        v216 = v214 > 1.0 || v214 <= 0.0;
        v217 = v215;
        if (!v216)
        {
          v217 = 1.0;
        }
      }

      else
      {
        v217 = 0.0;
        v213 = 0uLL;
      }

      v218 = *(a1 + 624);
      v219 = *(a1 + 608);
      v220 = *(a1 + 616);
      *buf = 136454146;
      *&buf[4] = v178;
      v340 = 2082;
      v341 = v179;
      v342 = 1026;
      v343 = v187;
      v344 = 2050;
      v345 = v188;
      v346 = 2050;
      v347 = v189;
      v348 = 2050;
      v349 = v181;
      v350 = 2050;
      v351 = v190;
      v352 = 2050;
      v353 = v191;
      v354 = 2050;
      v355 = v180;
      v356 = 2050;
      v357 = v192;
      v358 = 2050;
      v359 = v193;
      v360 = 2050;
      v361 = v184;
      v362 = 2050;
      v363 = v194;
      v364 = 2050;
      v365 = v195;
      v366 = 2050;
      v367 = v183;
      v368 = 2050;
      v369 = v196;
      v370 = 2050;
      v371 = v197;
      v372 = 2050;
      v373 = v186;
      v374 = 2050;
      v375 = v198;
      v376 = 2050;
      v377 = v199;
      v378 = 2050;
      v379 = v185;
      v380 = 2050;
      v381 = v200;
      v382 = 1026;
      v383 = v182;
      v384 = 2050;
      v385 = v201;
      v386 = 1026;
      v387 = v202;
      v388 = 2050;
      v389 = v213.i64[0];
      v390 = 2050;
      v391 = v213.i64[1];
      v392 = 2050;
      v393 = v217;
      v394 = 1026;
      v395 = v218;
      v396 = 1026;
      v397 = v203;
      v398 = 1026;
      v399 = v219;
      v400 = 2050;
      v401 = v220;
      _os_log_impl(&dword_19B873000, v177, OS_LOG_TYPE_DEFAULT, "CLTSP,AnalyticsSimulated submitted,tripID,%{public}s,simTripID,%{public}s,modeOfTransport,%{public}d,distance,%{public}.2lf,acrossTrackMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,alongTrackMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,horizontalMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,speedMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,altitudeMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,courseMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,count,%{public}d,maxSpeed,%{public}.2lf,invalidSpeed,%{public}d,mmPCT,%{public}.2lf,iiPCT,%{public}.2lf,liPCT,%{public}.2lf,sparseBreadCrumbCount,%{public}d,reconstructedCount,%{public}d,chunkCount,%{public}d,processingTimeMSec,%{public}.2lf", buf, 0x12Au);
    }

    v221 = sub_19B87DD40();
    if (*(v221 + 160) > 1 || *(v221 + 164) > 1 || *(v221 + 168) > 1 || *(v221 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6ED10);
      }

      v222 = a1 + 40;
      if (*(a1 + 39) < 0)
      {
        v262 = v262->__r_.__value_.__r.__words[0];
      }

      if (*(a1 + 63) < 0)
      {
        v222 = *v261;
      }

      v223 = 0.0;
      v224 = 0.0;
      if (*(a1 + 128))
      {
        v224 = sqrt(*(a1 + 152));
      }

      if (*(a1 + 208))
      {
        v223 = sqrt(*(a1 + 232));
      }

      v225 = *(a1 + 288);
      v226 = 0.0;
      v227 = 0.0;
      if (v225)
      {
        v227 = sqrt(*(a1 + 312));
      }

      if (*(a1 + 368))
      {
        v226 = sqrt(*(a1 + 392));
      }

      v228 = 0.0;
      v229 = 0.0;
      if (*(a1 + 448))
      {
        v229 = sqrt(*(a1 + 472));
      }

      if (*(a1 + 528))
      {
        v228 = sqrt(*(a1 + 552));
      }

      v230 = *(a1 + 8);
      v231 = *(a1 + 632);
      v232 = fabs(*(a1 + 112));
      v233 = fabs(*(a1 + 136));
      v234 = fabs(*(a1 + 192));
      v235 = fabs(*(a1 + 216));
      v236 = *(a1 + 272);
      v237 = *(a1 + 296);
      v238 = fabs(*(a1 + 352));
      v239 = fabs(*(a1 + 376));
      v240 = fabs(*(a1 + 432));
      v241 = fabs(*(a1 + 456));
      v242 = fabs(*(a1 + 512));
      v243 = fabs(*(a1 + 536));
      v244 = *(a1 + 600);
      v245 = *(a1 + 596);
      v246 = *(a1 + 640);
      if (v246)
      {
        v247 = *(a1 + 584);
        v248.i64[0] = v247;
        v248.i64[1] = SHIDWORD(v247);
        v249 = vmulq_f64(vdivq_f64(vcvtq_f64_s64(v248), vdupq_lane_s64(COERCE__INT64(v246), 0)), vdupq_n_s64(0x4059000000000000uLL));
        __asm { FMOV            V27.2D, #1.0 }

        v251 = vandq_s8(vcgtzq_f64(v249), vcgeq_f64(_Q27, v249));
        *&v249.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v249)));
        v248.i64[0] = SLODWORD(v249.f64[0]);
        v248.i64[1] = SHIDWORD(v249.f64[0]);
        v252 = vbslq_s8(v251, _Q27, vcvtq_f64_s64(v248));
        v253 = *(a1 + 592) / v246 * 100.0;
        v254 = llround(v253);
        v255 = v253 > 1.0 || v253 <= 0.0;
        v256 = v254;
        if (!v255)
        {
          v256 = 1.0;
        }
      }

      else
      {
        v256 = 0.0;
        v252 = 0uLL;
      }

      v257 = *(a1 + 624);
      v258 = *(a1 + 608);
      v259 = *(a1 + 616);
      *v276 = 136454146;
      *&v276[4] = v262;
      v277 = 2082;
      v278 = v222;
      v279 = 1026;
      v280 = v230;
      v281 = 2050;
      v282 = v231;
      v283 = 2050;
      v284 = v232;
      v285 = 2050;
      v286 = v224;
      v287 = 2050;
      v288 = v233;
      v289 = 2050;
      v290 = v234;
      v291 = 2050;
      v292 = v223;
      v293 = 2050;
      v294 = v235;
      v295 = 2050;
      v296 = v236;
      v297 = 2050;
      v298 = v227;
      v299 = 2050;
      v300 = v237;
      v301 = 2050;
      v302 = v238;
      v303 = 2050;
      v304 = v226;
      v305 = 2050;
      v306 = v239;
      v307 = 2050;
      v308 = v240;
      v309 = 2050;
      v310 = v229;
      v311 = 2050;
      v312 = v241;
      v313 = 2050;
      v314 = v242;
      v315 = 2050;
      v316 = v228;
      v317 = 2050;
      v318 = v243;
      v319 = 1026;
      v320 = v225;
      v321 = 2050;
      v322 = v244;
      v323 = 1026;
      v324 = v245;
      v325 = 2050;
      v326 = v252.i64[0];
      v327 = 2050;
      v328 = v252.i64[1];
      v329 = 2050;
      v330 = v256;
      v331 = 1026;
      v332 = v257;
      v333 = 1026;
      v334 = v246;
      v335 = 1026;
      v336 = v258;
      v337 = 2050;
      v338 = v259;
      v260 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLTSP,AnalyticsSimulated submitted,tripID,%{public}s,simTripID,%{public}s,modeOfTransport,%{public}d,distance,%{public}.2lf,acrossTrackMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,alongTrackMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,horizontalMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,speedMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,altitudeMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,courseMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,count,%{public}d,maxSpeed,%{public}.2lf,invalidSpeed,%{public}d,mmPCT,%{public}.2lf,iiPCT,%{public}.2lf,liPCT,%{public}.2lf,sparseBreadCrumbCount,%{public}d,reconstructedCount,%{public}d,chunkCount,%{public}d,processingTimeMSec,%{public}.2lf", v276, 298);
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentAnalyticsSimulatedTripSegment::compareAndSubmitCoreAnalytics(NSUUID * _Nonnull, NSUUID * _Nonnull, const int, NSArray<CLTripSegmentLocation *> * _Nonnull, CLTripSegmentOutputData * _Nonnull, const double)", "CoreLocation: %s\n", v260);
      if (v260 != buf)
      {
        free(v260);
      }
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

void sub_19BA3D1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19BA3D1E8(uint64_t a1)
{
  if (*a1 == 1)
  {
    AnalyticsSendEventLazy();
    if (*(a1 + 39) < 0)
    {
      *(a1 + 24) = 0;
      v2 = *(a1 + 16);
    }

    else
    {
      v2 = (a1 + 16);
      *(a1 + 39) = 0;
    }

    *v2 = 0;
    if (*(a1 + 63) < 0)
    {
      *(a1 + 48) = 0;
      v3 = *(a1 + 40);
    }

    else
    {
      v3 = (a1 + 40);
      *(a1 + 63) = 0;
    }

    *v3 = 0;
    *(a1 + 128) = 0;
    result = 0.0;
    *(a1 + 112) = 0u;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 288) = 0;
    *(a1 + 312) = 0;
    *(a1 + 296) = 0u;
    *(a1 + 368) = 0;
    *(a1 + 352) = 0u;
    *(a1 + 392) = 0;
    *(a1 + 376) = 0u;
    *(a1 + 432) = 0u;
    *(a1 + 448) = 0;
    *(a1 + 472) = 0;
    *(a1 + 456) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 600) = 0xBFF0000000000000;
    *(a1 + 608) = 0;
    *(a1 + 616) = 0;
    *(a1 + 624) = 0;
    *(a1 + 632) = 0;
    *(a1 + 640) = 0;
  }

  return result;
}

uint64_t sub_19BA3D33C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v114[34] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v113[0] = @"modeOfTransport";
  v114[0] = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, *(v4 + 8), a4);
  v113[1] = @"acrossTrackMax";
  v114[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v5, v6, v7, fabs(*(v4 + 112)));
  v113[2] = @"acrossTrackRMS";
  if (*(v4 + 128))
  {
    v10 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v8, sqrt(*(v4 + 152)), v9);
  }

  else
  {
    v10 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v8, 0, v9);
  }

  v114[2] = v10;
  v113[3] = @"acrossTrackAvg";
  v114[3] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v11, v12, v13, fabs(*(v4 + 136)));
  v113[4] = @"alongTrackMax";
  v114[4] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v14, v15, v16, fabs(*(v4 + 192)));
  v113[5] = @"alongTrackRMS";
  if (*(v4 + 208))
  {
    v19 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v17, sqrt(*(v4 + 232)), v18);
  }

  else
  {
    v19 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v17, 0, v18);
  }

  v114[5] = v19;
  v113[6] = @"alongTrackAvg";
  v114[6] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v20, v21, v22, fabs(*(v4 + 216)));
  v113[7] = @"horizontalErrorMax";
  v114[7] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v23, *(v4 + 272), v24);
  v113[8] = @"horizontalErrorRMS";
  if (*(v4 + 288))
  {
    v27 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v25, sqrt(*(v4 + 312)), v26);
  }

  else
  {
    v27 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v25, 0, v26);
  }

  v114[8] = v27;
  v113[9] = @"horizontalErrorAvg";
  v114[9] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v28, *(v4 + 296), v29);
  v113[10] = @"speedErrorMax";
  LODWORD(v30) = llround(fabs(*(v4 + 352)));
  v114[10] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v31, v30, v32);
  v113[11] = @"speedErrorRMS";
  if (*(v4 + 368))
  {
    v36 = sqrt(*(v4 + 392));
  }

  else
  {
    v36 = 0.0;
  }

  LODWORD(v34) = llround(v36);
  v114[11] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v33, v34, v35);
  v113[12] = @"speedErrorAvg";
  LODWORD(v37) = llround(fabs(*(v4 + 376)));
  v114[12] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v38, v37, v39);
  v113[13] = @"altitudeErrorMax";
  v114[13] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v40, fabs(*(v4 + 432)), v41);
  v113[14] = @"altitudeErrorRMS";
  if (*(v4 + 448))
  {
    v44 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v42, sqrt(*(v4 + 472)), v43);
  }

  else
  {
    v44 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v42, 0, v43);
  }

  v114[14] = v44;
  v113[15] = @"altitudeErrorAvg";
  v114[15] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v45, fabs(*(v4 + 456)), v46);
  v113[16] = @"courseErrorMax";
  LODWORD(v47) = llround(fabs(*(v4 + 512)));
  v114[16] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v48, v47, v49);
  v113[17] = @"courseErrorRMS";
  v53 = 0.0;
  v54 = 0.0;
  if (*(v4 + 528))
  {
    v54 = sqrt(*(v4 + 552));
  }

  LODWORD(v51) = llround(v54);
  v114[17] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v50, v51, v52);
  v113[18] = @"courseErrorAvg";
  LODWORD(v55) = llround(fabs(*(v4 + 536)));
  v114[18] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v56, v55, v57);
  v113[19] = @"positionErrorCount";
  v114[19] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v58, *(v4 + 288), v59);
  v113[20] = @"speedErrorCount";
  v114[20] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v60, *(v4 + 368), v61);
  v113[21] = @"courseErrorCount";
  v114[21] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v62, *(v4 + 528), v63);
  v113[22] = @"maxSpeed";
  v114[22] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v64, fabs(*(v4 + 600)), v65);
  v113[23] = @"distance";
  v114[23] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v66, fabs(*(v4 + 632)), v67);
  v113[24] = @"invalidSpeed";
  v114[24] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v68, *(v4 + 596), v69);
  v113[25] = @"sparseBreadCrumbCount";
  v114[25] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v70, *(v4 + 624), v71);
  v113[26] = @"sparseBreadCrumbCountPercentage";
  v75 = *(v4 + 640);
  if (!v75)
  {
    goto LABEL_25;
  }

  v76 = *(v4 + 624) / v75 * 100.0;
  v77 = v76 > 1.0 || v76 <= 0.0;
  v78 = llround(v76);
  if (v77)
  {
    v53 = v78;
LABEL_25:
    v79 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v72, v73, v74, v53);
    goto LABEL_26;
  }

  v79 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v72, v73, v74, 1.0);
LABEL_26:
  v114[26] = v79;
  v113[27] = @"reconstructedCount";
  v114[27] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v80, *(v4 + 640), v81);
  v113[28] = @"mapMatchedPercentage";
  v85 = *(v4 + 640);
  v86 = 0.0;
  v87 = 0.0;
  if (v85)
  {
    v88 = *(v4 + 584) / v85 * 100.0;
    v89 = v88 > 1.0 || v88 <= 0.0;
    v87 = llround(v88);
    if (!v89)
    {
      v87 = 1.0;
    }
  }

  v114[28] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v82, v83, v84, v87);
  v113[29] = @"inertialPercentage";
  v93 = *(v4 + 640);
  if (v93)
  {
    v94 = *(v4 + 588) / v93 * 100.0;
    v95 = v94 > 1.0 || v94 <= 0.0;
    v96 = llround(v94);
    if (!v95)
    {
      v97 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v90, v91, v92, 1.0);
      goto LABEL_40;
    }

    v86 = v96;
  }

  v97 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v90, v91, v92, v86);
LABEL_40:
  v114[29] = v97;
  v113[30] = @"linearInterpolatedPercentage";
  v101 = *(v4 + 640);
  if (!v101)
  {
    v104 = 0.0;
LABEL_48:
    v105 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v98, v99, v100, v104);
    goto LABEL_49;
  }

  v102 = *(v4 + 592) / v101 * 100.0;
  v103 = v102 > 1.0 || v102 <= 0.0;
  v104 = llround(v102);
  if (v103)
  {
    goto LABEL_48;
  }

  v105 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v98, v99, v100, 1.0);
LABEL_49:
  v114[30] = v105;
  v113[31] = @"chunkCount";
  v114[31] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v106, *(v4 + 608), v107);
  v113[32] = @"processingTimeMSec";
  v110 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v108, *(v4 + 616), v109);
  v113[33] = @"simulated";
  v114[32] = v110;
  v114[33] = &unk_1F0E8CDA8;
  return objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v111, v114, v113, 34);
}

os_log_t sub_19BA3D984()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

void sub_19BA3F808(void *a1, int a2)
{
  if (a2)
  {
    sub_19B890AB0(a1);
  }

  JUMPOUT(0x19BA3F8D8);
}

void sub_19BA3F8E0(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (objc_loadWeak((*(a1 + 32) + 24)))
  {
    Weak = objc_loadWeak((*(a1 + 32) + 24));

    MEMORY[0x1EEE66B58](Weak, sel_locationSelectorDidSelectLocation_, a2, v5);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 138477827;
      v14 = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelector,sendLocationCB,self:%{private}@,nil fDelegate,early return", buf, 0xCu);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v9 = *(a1 + 32);
      v11 = 138477827;
      v12 = v9;
      v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#CLELS,CLEmergencyLocationSelector,sendLocationCB,self:%{private}@,nil fDelegate,early return", &v11, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLEmergencyLocationSelector initWithConfig:bundle:delegate:queue:]_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }
}

void sub_19BA410E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_19B890AB0(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_19BA41B08(uint64_t **a1, const char *a2, unint64_t a3, NSObject *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v23 = a2;
  if (a4 & 1 | a3)
  {
    v4 = a4;
    v5 = a3;
    LODWORD(v6) = a2;
    if (qword_1EAFE4778 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v19 = qword_1EAFE4780;
    a1 = "";
    v6 = "assert";
    v5 = "h && invalid handler";
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "h && invalid handler";
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v20 = qword_1EAFE4780;
    if (os_signpost_enabled(qword_1EAFE4780))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "h && invalid handler";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v4 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "h && invalid handler";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Positioning/GPS/Core/CLStateMachine.h", 80, "setStateHandler");
    __break(1u);
  }

  dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
LABEL_3:
  v8 = qword_1EAFE4780;
  v9 = *(a1 + 120);
  if (os_log_type_enabled(qword_1EAFE4780, v9))
  {
    v10 = (a1 + 12);
    if (*(a1 + 119) < 0)
    {
      v10 = *v10;
    }

    sub_19BA46990(__p, v6);
    if (SBYTE3(v28) >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = *__p;
    }

    *buf = 136315650;
    *&buf[4] = v10;
    *&buf[12] = 1024;
    *&buf[14] = v6;
    v30 = 2080;
    v31 = v11;
    _os_log_impl(&dword_19B873000, v8, v9, "%sstate,%d,%s", buf, 0x1Cu);
    if (SBYTE3(v28) < 0)
    {
      operator delete(*__p);
    }
  }

  v12 = sub_19B87DD40();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v13 = (a1 + 12);
    if (*(a1 + 119) < 0)
    {
      v13 = *v13;
    }

    v14 = qword_1EAFE4780;
    v15 = *(a1 + 120);
    sub_19BA46990(v21, v6);
    if (v22 >= 0)
    {
      v16 = v21;
    }

    else
    {
      v16 = v21[0];
    }

    *__p = 136315650;
    *&__p[4] = v13;
    v25 = 1024;
    v26 = v6;
    v27 = 2080;
    v28 = v16;
    v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v14, v15, "%sstate,%d,%s", __p, 28);
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    sub_19B885924("Generic", 1, 0, 2, "void CLStateMachine<CLEmergencyLocationSelectorInternal>::setStateHandler(State, StateHandler) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  *buf = &v23;
  result = sub_19BA4BCDC(a1 + 1, v6, buf);
  result[5] = v5;
  result[6] = v4;
  return result;
}

uint64_t sub_19BA41FC8(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v144 = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return v5;
      }

      sub_19BA4759C((a1 + 3), 4);
    }

    else
    {
      objc_msgSend_firstLocationTimeout(*a1, a2, a3, a4);
      sub_19BA469A0((a1 + 3), v63);
    }

    return 0;
  }

  if (a2 == 2)
  {
    return 3;
  }

  if (a2 == 3)
  {
    LocationUsabilityCriteria = objc_msgSend_firstLocationUsabilityCriteria(*a1, a2, a3, a4);
    if (!sub_19BA47A64(a1, LocationUsabilityCriteria, a1[19], v18))
    {
      return 0;
    }

    a1[22] = a1[19];
    v22 = objc_msgSend_firstLocationUsabilityCriteria(*a1, v19, v20, v21);
    if (objc_msgSend_altitudeStitchingEnabled(v22, v23, v24, v25))
    {
      v29 = objc_msgSend_firstLocationUsabilityCriteria(*a1, v26, v27, v28);
      if (sub_19BA48598(a1, v29, a1[19], v30))
      {

        a1[23] = a1[19];
      }
    }

    if (!*a1)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v67 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 134283521;
        v143 = a1;
        _os_log_impl(&dword_19B873000, v67, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,shouldSendFirstLocationEarly,this:%{private}p,nil fConfig,early return", buf, 0xCu);
      }

      v68 = sub_19B87DD40();
      if ((*(v68 + 160) & 0x80000000) != 0 && (*(v68 + 164) & 0x80000000) != 0 && (*(v68 + 168) & 0x80000000) != 0 && !*(v68 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v140 = 134283521;
      v141 = a1;
      v66 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#CLELS,CLEmergencyLocationSelectorInternal,shouldSendFirstLocationEarly,this:%{private}p,nil fConfig,early return", &v140, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLEmergencyLocationSelectorInternal::shouldSendFirstLocationEarly()", "CoreLocation: %s\n", v66);
      goto LABEL_59;
    }

    v31 = a1[22];
    if (v31)
    {
      objc_msgSend_coordinate(v31, v26, v27, v28);
      if (CLLocationCoordinate2DIsValid(v145))
      {
        if (!objc_msgSend_firstLocationEarlyReturnEnabled(*a1, v32, v33, v34))
        {
          return 0;
        }

        objc_msgSend_horizontalAccuracy(a1[22], v35, v36, v37);
        v39 = v38;
        objc_msgSend_firstLocationMaxEarlyReturnHunc(*a1, v40, v41, v42);
        if (v39 <= v46)
        {
          objc_msgSend_verticalAccuracy(a1[22], v43, v44, v45);
          v101 = v100;
          objc_msgSend_firstLocationMaxEarlyReturnVunc(*a1, v102, v103, v104);
          if (v101 <= v105)
          {
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
            }

            v121 = qword_1ED519090;
            if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
            {
              v125 = objc_msgSend_feature(*a1, v122, v123, v124);
              *buf = 138543362;
              v143 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v126, v125, v127);
              _os_log_impl(&dword_19B873000, v121, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendFirstLocationEarly,can send first location early", buf, 0xCu);
            }

            v128 = sub_19B87DD40();
            if (*(v128 + 160) > 1 || *(v128 + 164) > 1 || *(v128 + 168) > 1 || *(v128 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED519088 != -1)
              {
                dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
              }

              v135 = qword_1ED519090;
              v136 = objc_msgSend_feature(*a1, v132, v133, v134);
              v140 = 138543362;
              v141 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v137, v136, v138);
              v139 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v135, 0, "#CLELS,%{public}@,shouldSendFirstLocationEarly,can send first location early", &v140, 12);
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::shouldSendFirstLocationEarly()", "CoreLocation: %s\n", v139);
              if (v139 != buf)
              {
                free(v139);
              }
            }

            v5 = 1;
            *(a1 + 209) = 1;
            v9 = objc_msgSend_firstLocationUsabilityCriteria(*a1, v129, v130, v131);
            goto LABEL_10;
          }

          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v106 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            v110 = objc_msgSend_feature(*a1, v107, v108, v109);
            *buf = 138543362;
            v143 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v111, v110, v112);
            _os_log_impl(&dword_19B873000, v106, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendFirstLocationEarly,not sending,First location early return Vunc not satisfied", buf, 0xCu);
          }

          v113 = sub_19B87DD40();
          if (*(v113 + 160) <= 1 && *(v113 + 164) <= 1 && *(v113 + 168) <= 1 && !*(v113 + 152))
          {
            return 0;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v117 = qword_1ED519090;
          v118 = objc_msgSend_feature(*a1, v114, v115, v116);
          v140 = 138543362;
          v141 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v119, v118, v120);
          v62 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v117, 0, "#CLELS,%{public}@,shouldSendFirstLocationEarly,not sending,First location early return Vunc not satisfied", &v140, 12);
        }

        else
        {
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v47 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            v51 = objc_msgSend_feature(*a1, v48, v49, v50);
            *buf = 138543362;
            v143 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v52, v51, v53);
            _os_log_impl(&dword_19B873000, v47, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendFirstLocationEarly,not sending,First location early return Hunc not satisfied", buf, 0xCu);
          }

          v54 = sub_19B87DD40();
          if (*(v54 + 160) <= 1 && *(v54 + 164) <= 1 && *(v54 + 168) <= 1 && !*(v54 + 152))
          {
            return 0;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v58 = qword_1ED519090;
          v59 = objc_msgSend_feature(*a1, v55, v56, v57);
          v140 = 138543362;
          v141 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v60, v59, v61);
          v62 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v58, 0, "#CLELS,%{public}@,shouldSendFirstLocationEarly,not sending,First location early return Hunc not satisfied", &v140, 12);
        }
      }

      else
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v84 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          v88 = objc_msgSend_feature(*a1, v85, v86, v87);
          *buf = 138543362;
          v143 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v89, v88, v90);
          _os_log_impl(&dword_19B873000, v84, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendFirstLocationEarly,not sending,invalid coordinates", buf, 0xCu);
        }

        v91 = sub_19B87DD40();
        if (*(v91 + 160) <= 1 && *(v91 + 164) <= 1 && *(v91 + 168) <= 1 && !*(v91 + 152))
        {
          return 0;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v95 = qword_1ED519090;
        v96 = objc_msgSend_feature(*a1, v92, v93, v94);
        v140 = 138543362;
        v141 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v97, v96, v98);
        v62 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v95, 0, "#CLELS,%{public}@,shouldSendFirstLocationEarly,not sending,invalid coordinates", &v140, 12);
      }
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v69 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v73 = objc_msgSend_feature(*a1, v70, v71, v72);
        *buf = 138543362;
        v143 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v74, v73, v75);
        _os_log_impl(&dword_19B873000, v69, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendFirstLocationEarly,not sending,invalid cached location", buf, 0xCu);
      }

      v76 = sub_19B87DD40();
      if (*(v76 + 160) <= 1 && *(v76 + 164) <= 1 && *(v76 + 168) <= 1 && !*(v76 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v80 = qword_1ED519090;
      v81 = objc_msgSend_feature(*a1, v77, v78, v79);
      v140 = 138543362;
      v141 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v82, v81, v83);
      v62 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v80, 0, "#CLELS,%{public}@,shouldSendFirstLocationEarly,not sending,invalid cached location", &v140, 12);
    }

    v66 = v62;
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::shouldSendFirstLocationEarly()", "CoreLocation: %s\n", v62);
    if (v66 != buf)
    {
LABEL_84:
      free(v66);
    }

    return 0;
  }

  if (a2 != 4)
  {
    return v5;
  }

  v6 = *a1;
  if (!*a1)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v64 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v143 = a1;
      _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,FirstLocation,SendLocationTimeout,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v65 = sub_19B87DD40();
    if ((*(v65 + 160) & 0x80000000) != 0 && (*(v65 + 164) & 0x80000000) != 0 && (*(v65 + 168) & 0x80000000) != 0 && !*(v65 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v140 = 134283521;
    v141 = a1;
    v66 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#CLELS,CLEmergencyLocationSelectorInternal,FirstLocation,SendLocationTimeout,this:%{private}p,nil fConfig,early return", &v140, 12);
    sub_19B885924("Generic", 1, 0, 0, "CLEmergencyLocationSelectorInternal::State CLEmergencyLocationSelectorInternal::handler_FirstLocation(CLEmergencyLocationSelectorInternal::Event)", "CoreLocation: %s\n", v66);
LABEL_59:
    if (v66 == buf)
    {
      return 0;
    }

    goto LABEL_84;
  }

  if (a1[22])
  {
    v7 = objc_msgSend_firstLocationUsabilityCriteria(v6, a2, a3, a4);
    if ((sub_19BA4962C(a1, v7, a1[22], v8) & 1) == 0)
    {

      a1[22] = 0;
    }
  }

  *(a1 + 209) = 0;
  v9 = objc_msgSend_firstLocationUsabilityCriteria(*a1, a2, a3, a4);
  v5 = 1;
LABEL_10:
  sub_19BA48CA4(a1, v9, 1, v10);
  if ((objc_msgSend_firstUpdateEnabled(*a1, v11, v12, v13) & 1) == 0)
  {
    if (objc_msgSend_periodicUpdatesEnabled(*a1, v14, v15, v16))
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return v5;
}

uint64_t sub_19BA42B88(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v262 = *MEMORY[0x1E69E9840];
  result = 1;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      a1[24] = 0;
      a1[25] = 0;
      sub_19BA4759C((a1 + 3), 4);
    }

    else
    {
      objc_msgSend_firstUpdateTimeout(*a1, a2, a3, a4);
      sub_19BA469A0((a1 + 3), v101);
      if (a1[20])
      {
        updated = objc_msgSend_locationUpdateUsabilityCriteria(*a1, v102, v103, v104);
        if (sub_19BA49B28(a1, updated, a1[20], v106))
        {

          a1[24] = a1[20];
        }

        v110 = objc_msgSend_locationUpdateUsabilityCriteria(*a1, v107, v108, v109);
        if (sub_19BA48598(a1, v110, a1[20], v111))
        {

          a1[25] = a1[20];
        }
      }
    }

    return 1;
  }

  if (a2 == 2)
  {
    return 3;
  }

  if (a2 == 3)
  {
    v49 = objc_msgSend_locationUpdateUsabilityCriteria(*a1, a2, a3, a4);
    if (sub_19BA49B28(a1, v49, a1[19], v50))
    {

      a1[24] = a1[19];
    }

    v54 = objc_msgSend_locationUpdateUsabilityCriteria(*a1, v51, v52, v53);
    if (!*a1)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v112 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 134283521;
        *&buf[4] = a1;
        _os_log_impl(&dword_19B873000, v112, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,isAltitudeUsableForFirstUpdate,this:%{private}p,nil fConfig,early return", buf, 0xCu);
      }

      v113 = sub_19B87DD40();
      if ((*(v113 + 160) & 0x80000000) != 0 && (*(v113 + 164) & 0x80000000) != 0 && (*(v113 + 168) & 0x80000000) != 0 && !*(v113 + 152))
      {
        goto LABEL_122;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      LODWORD(v252[0]) = 134283521;
      *(v252 + 4) = a1;
      v100 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#CLELS,CLEmergencyLocationSelectorInternal,isAltitudeUsableForFirstUpdate,this:%{private}p,nil fConfig,early return", v252, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLEmergencyLocationSelectorInternal::isAltitudeUsableForFirstUpdate(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n");
LABEL_60:
      if (v100 != buf)
      {
        free(v100);
      }

      goto LABEL_122;
    }

    v56 = a1[19];
    if (!sub_19BA48598(a1, v54, v56, v55))
    {
LABEL_122:
      v185 = objc_msgSend_locationUpdateUsabilityCriteria(*a1, v57, v58, v59);
      if (sub_19BA47A64(a1, v185, a1[19], v186))
      {

        a1[22] = a1[19];
        v190 = objc_msgSend_locationUpdateUsabilityCriteria(*a1, v187, v188, v189);
        if (objc_msgSend_altitudeStitchingEnabled(v190, v191, v192, v193))
        {
          v197 = objc_msgSend_locationUpdateUsabilityCriteria(*a1, v194, v195, v196);
          if (sub_19BA48598(a1, v197, a1[19], v198))
          {

            a1[23] = a1[19];
          }
        }
      }

      return 1;
    }

    v60 = a1[25];
    if (v60)
    {
      objc_msgSend_verticalAccuracy(v60, v57, v58, v59);
      v62 = v61;
      objc_msgSend_verticalAccuracy(v56, v63, v64, v65);
      if (v62 >= v69)
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v169 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          v173 = objc_msgSend_feature(*a1, v170, v171, v172);
          *buf = 138543362;
          *&buf[4] = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v174, v173, v175);
          _os_log_impl(&dword_19B873000, v169, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isAltitudeUsableForFirstUpdate,YES,received Vunc better than cached Vunc", buf, 0xCu);
        }

        v176 = sub_19B87DD40();
        if (*(v176 + 160) <= 1 && *(v176 + 164) <= 1 && *(v176 + 168) <= 1 && !*(v176 + 152))
        {
          goto LABEL_121;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v180 = qword_1ED519090;
        v181 = objc_msgSend_feature(*a1, v177, v178, v179);
        LODWORD(v252[0]) = 138543362;
        *(v252 + 4) = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v182, v181, v183);
        v168 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v180, 0, "#CLELS,%{public}@,isAltitudeUsableForFirstUpdate,YES,received Vunc better than cached Vunc", v252, 12);
      }

      else
      {
        objc_msgSend_ellipsoidalAltitude(a1[25], v66, v67, v68);
        v71 = v70;
        objc_msgSend_ellipsoidalAltitude(v56, v72, v73, v74);
        v76 = vabdd_f64(v71, v75);
        objc_msgSend_locationUpdateChangeInAltitudeToSendEarly(*a1, v77, v78, v79);
        if (v76 < v83 || (objc_msgSend_verticalAccuracy(v56, v80, v81, v82), v76 < v84 * 0.5))
        {
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v85 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            v89 = objc_msgSend_feature(*a1, v86, v87, v88);
            *buf = 138543362;
            *&buf[4] = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v90, v89, v91);
            _os_log_impl(&dword_19B873000, v85, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isAltitudeUsableForFirstUpdate,NO", buf, 0xCu);
          }

          v92 = sub_19B87DD40();
          if (*(v92 + 160) <= 1 && *(v92 + 164) <= 1 && *(v92 + 168) <= 1 && !*(v92 + 152))
          {
            goto LABEL_122;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v96 = qword_1ED519090;
          v97 = objc_msgSend_feature(*a1, v93, v94, v95);
          LODWORD(v252[0]) = 138543362;
          *(v252 + 4) = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v98, v97, v99);
          v100 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v96, 0, "#CLELS,%{public}@,isAltitudeUsableForFirstUpdate,NO", v252, 12);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isAltitudeUsableForFirstUpdate(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n");
          goto LABEL_60;
        }

        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
        }

        v235 = qword_1EAFE4718;
        if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
        {
          v239 = objc_msgSend_feature(*a1, v236, v237, v238);
          *buf = 138543618;
          *&buf[4] = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v240, v239, v241);
          *&buf[12] = 2050;
          *&buf[14] = v76;
          _os_log_impl(&dword_19B873000, v235, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isAltitudeUsableForFirstUpdate,YES,altitude change significant,%{public}f", buf, 0x16u);
        }

        v242 = sub_19B87DD40();
        if (*(v242 + 160) <= 1 && *(v242 + 164) <= 1 && *(v242 + 168) <= 1 && !*(v242 + 152))
        {
          goto LABEL_121;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
        }

        v246 = qword_1EAFE4718;
        v247 = objc_msgSend_feature(*a1, v243, v244, v245);
        LODWORD(v252[0]) = 138543618;
        *(v252 + 4) = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v248, v247, v249);
        WORD6(v252[0]) = 2050;
        *(v252 + 14) = v76;
        v168 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v246, 0, "#CLELS,%{public}@,isAltitudeUsableForFirstUpdate,YES,altitude change significant,%{public}f", v252, 22);
      }
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v153 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v157 = objc_msgSend_feature(*a1, v154, v155, v156);
        *buf = 138543362;
        *&buf[4] = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v158, v157, v159);
        _os_log_impl(&dword_19B873000, v153, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isAltitudeUsableForFirstUpdate,YES,FirstUpdateVerticalLocation being saved first time", buf, 0xCu);
      }

      v160 = sub_19B87DD40();
      if (*(v160 + 160) <= 1 && *(v160 + 164) <= 1 && *(v160 + 168) <= 1 && !*(v160 + 152))
      {
        goto LABEL_121;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v164 = qword_1ED519090;
      v165 = objc_msgSend_feature(*a1, v161, v162, v163);
      LODWORD(v252[0]) = 138543362;
      *(v252 + 4) = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v166, v165, v167);
      v168 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v164, 0, "#CLELS,%{public}@,isAltitudeUsableForFirstUpdate,YES,FirstUpdateVerticalLocation being saved first time", v252, 12);
    }

    v184 = v168;
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isAltitudeUsableForFirstUpdate(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n", v168);
    if (v184 != buf)
    {
      free(v184);
    }

LABEL_121:

    a1[25] = a1[19];
    goto LABEL_122;
  }

  if (a2 != 4)
  {
    return result;
  }

  if (!*a1)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v114 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      *&buf[4] = a1;
      _os_log_impl(&dword_19B873000, v114, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,FirstUpdate,SendLocationTimeout,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v115 = sub_19B87DD40();
    if ((*(v115 + 160) & 0x80000000) == 0 || (*(v115 + 164) & 0x80000000) == 0 || (*(v115 + 168) & 0x80000000) == 0 || *(v115 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      LODWORD(v252[0]) = 134283521;
      *(v252 + 4) = a1;
      v116 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#CLELS,CLEmergencyLocationSelectorInternal,FirstUpdate,SendLocationTimeout,this:%{private}p,nil fConfig,early return", v252, 12);
      sub_19B885924("Generic", 1, 0, 0, "CLEmergencyLocationSelectorInternal::State CLEmergencyLocationSelectorInternal::handler_FirstUpdate(CLEmergencyLocationSelectorInternal::Event)", "CoreLocation: %s\n", v116);
      if (v116 != buf)
      {
        free(v116);
      }
    }

    return 1;
  }

  v6 = a1[24];
  if (!v6)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v117 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v121 = objc_msgSend_feature(*a1, v118, v119, v120);
      *buf = 138543362;
      *&buf[4] = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v122, v121, v123);
      _os_log_impl(&dword_19B873000, v117, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendFirstUpdateLocation,send nil Location", buf, 0xCu);
    }

    v124 = sub_19B87DD40();
    if (*(v124 + 160) > 1 || *(v124 + 164) > 1 || *(v124 + 168) > 1 || *(v124 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v128 = qword_1ED519090;
      v129 = objc_msgSend_feature(*a1, v125, v126, v127);
      LODWORD(v252[0]) = 138543362;
      *(v252 + 4) = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v130, v129, v131);
      v132 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v128, 0, "#CLELS,%{public}@,sendFirstUpdateLocation,send nil Location", v252, 12);
      sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::sendFirstUpdateLocation()", "CoreLocation: %s\n", v132);
      if (v132 != buf)
      {
        free(v132);
      }
    }

    sub_19BA4B368(a1, 0);
    goto LABEL_144;
  }

  objc_msgSend_trustedTimestamp(v6, a2, a3, a4);
  v11 = v10;
  v257 = 0u;
  memset(v258, 0, 28);
  v255 = 0u;
  v256 = 0u;
  v253 = 0u;
  v254 = 0u;
  memset(v252, 0, sizeof(v252));
  v12 = a1[24];
  if (v12)
  {
    objc_msgSend_clientLocation(v12, v7, v8, v9);
  }

  v13 = a1[25];
  if (v13)
  {
    objc_msgSend_verticalAccuracy(v13, v7, v8, v9);
    v15 = v14;
    objc_msgSend_verticalAccuracy(a1[24], v16, v17, v18);
    if (v15 == v22)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v199 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v203 = objc_msgSend_feature(*a1, v200, v201, v202);
        v206 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v204, v203, v205);
        *buf = 138543362;
        *&buf[4] = v206;
        _os_log_impl(&dword_19B873000, v199, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendFirstUpdateLocation,FirstUpdateHorizontalLocation,as-is", buf, 0xCu);
      }

      v207 = sub_19B87DD40();
      if (*(v207 + 160) <= 1 && *(v207 + 164) <= 1 && *(v207 + 168) <= 1 && !*(v207 + 152))
      {
        goto LABEL_141;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v211 = qword_1ED519090;
      v212 = objc_msgSend_feature(*a1, v208, v209, v210);
      LODWORD(v250[0]) = 138543362;
      *(v250 + 4) = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v213, v212, v214);
      v48 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v211, 0, "#CLELS,%{public}@,sendFirstUpdateLocation,FirstUpdateHorizontalLocation,as-is", v250, 12);
    }

    else
    {
      objc_msgSend_altitude(a1[25], v19, v20, v21);
      *(&v252[1] + 12) = v23;
      objc_msgSend_ellipsoidalAltitude(a1[25], v24, v25, v26);
      *&v258[1] = v27;
      objc_msgSend_verticalAccuracy(a1[25], v28, v29, v30);
      *(&v252[2] + 4) = v31;
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v32 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v36 = objc_msgSend_feature(*a1, v33, v34, v35);
        v39 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v37, v36, v38);
        *buf = 138543362;
        *&buf[4] = v39;
        _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendFirstUpdateLocation,FirstUpdateHorizontalLocation,with altitude stitching", buf, 0xCu);
      }

      v40 = sub_19B87DD40();
      if (*(v40 + 160) <= 1 && *(v40 + 164) <= 1 && *(v40 + 168) <= 1 && !*(v40 + 152))
      {
        goto LABEL_141;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v44 = qword_1ED519090;
      v45 = objc_msgSend_feature(*a1, v41, v42, v43);
      LODWORD(v250[0]) = 138543362;
      *(v250 + 4) = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v46, v45, v47);
      v48 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v44, 0, "#CLELS,%{public}@,sendFirstUpdateLocation,FirstUpdateHorizontalLocation,with altitude stitching", v250, 12);
    }
  }

  else
  {
    *(&v252[1] + 12) = 0;
    *&v258[1] = 0;
    objc_msgSend_verticalAccuracy(a1[23], v7, v8, v9);
    *(&v252[2] + 4) = v136;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v137 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v141 = objc_msgSend_feature(*a1, v138, v139, v140);
      v144 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v142, v141, v143);
      *buf = 138543362;
      *&buf[4] = v144;
      _os_log_impl(&dword_19B873000, v137, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendFirstUpdateLocation,FirstUpdateHorizontalLocation,with altitude cleared", buf, 0xCu);
    }

    v145 = sub_19B87DD40();
    if (*(v145 + 160) <= 1 && *(v145 + 164) <= 1 && *(v145 + 168) <= 1 && !*(v145 + 152))
    {
      goto LABEL_141;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v149 = qword_1ED519090;
    v150 = objc_msgSend_feature(*a1, v146, v147, v148);
    LODWORD(v250[0]) = 138543362;
    *(v250 + 4) = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v151, v150, v152);
    v48 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v149, 0, "#CLELS,%{public}@,sendFirstUpdateLocation,FirstUpdateHorizontalLocation,with altitude cleared", v250, 12);
  }

  v215 = v48;
  sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::sendFirstUpdateLocation()", "CoreLocation: %s\n", v48);
  if (v215 != buf)
  {
    free(v215);
  }

LABEL_141:
  v216 = objc_alloc(MEMORY[0x1E6985C40]);
  v250[6] = v256;
  v250[7] = v257;
  v251[0] = v258[0];
  *(v251 + 12) = *(v258 + 12);
  v250[2] = v252[2];
  v250[3] = v253;
  v250[4] = v254;
  v250[5] = v255;
  v250[0] = v252[0];
  v250[1] = v252[1];
  *buf = xmmword_19BA8A740;
  *&buf[16] = 0xBFF0000000000000;
  v260 = v11;
  memcpy(v261, &unk_19BA8A760, sizeof(v261));
  v218 = objc_msgSend_initWithClientLocation_clientLocationPrivate_(v216, v217, v250, buf);
  sub_19BA4B368(a1, v218);
  if (v218)
  {
    *(a1 + 232) = 1;
    *(a1 + 62) = objc_msgSend_integrity(v218, v219, v220, v221);
    *(a1 + 59) = objc_msgSend_type(v218, v222, v223, v224);
    objc_msgSend_horizontalAccuracy(v218, v225, v226, v227);
    *(a1 + 60) = v228;
    objc_msgSend_verticalAccuracy(v218, v229, v230, v231);
    *(a1 + 61) = v232;
    *(a1 + 63) = sub_19BA4A7E8(a1, v218, v233, v234);
  }

LABEL_144:
  if (objc_msgSend_periodicUpdatesEnabled(*a1, v133, v134, v135))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_19BA43E20(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v269 = *MEMORY[0x1E69E9840];
  result = 2;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      sub_19BA4759C(a1 + 24, 4);
      return 2;
    }

    if (*(a1 + 176))
    {
      updated = objc_msgSend_locationUpdateUsabilityCriteria(*a1, a2, a3, a4);
      if ((sub_19BA47A64(a1, updated, *(a1 + 176), v45) & 1) == 0)
      {

        *(a1 + 176) = 0;
      }
    }

    if (*(a1 + 184))
    {
      v46 = objc_msgSend_locationUpdateUsabilityCriteria(*a1, a2, a3, a4);
      if (!sub_19BA47A64(a1, v46, *(a1 + 184), v47) || (v51 = objc_msgSend_locationUpdateUsabilityCriteria(*a1, v48, v49, v50), (sub_19BA48598(a1, v51, *(a1 + 184), v52) & 1) == 0))
      {

        *(a1 + 184) = 0;
      }
    }

    goto LABEL_157;
  }

  if (a2 == 2)
  {
    return 3;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      return result;
    }

    if (*a1)
    {
      if (*(a1 + 176))
      {
        v6 = objc_msgSend_locationUpdateUsabilityCriteria(*a1, a2, a3, a4);
        if ((sub_19BA4962C(a1, v6, *(a1 + 176), v7) & 1) == 0)
        {

          *(a1 + 176) = 0;
        }
      }

LABEL_156:
      v250 = objc_msgSend_locationUpdateUsabilityCriteria(*a1, a2, a3, a4);
      sub_19BA48CA4(a1, v250, 0, v251);
LABEL_157:
      objc_msgSend_locationUpdateTimeout(*a1, a2, a3, a4);
      sub_19BA469A0(a1 + 24, v252);
      return 2;
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v53 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v264 = a1;
      _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,PeriodicUpdates,SendLocationTimeout,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v54 = sub_19B87DD40();
    if ((*(v54 + 160) & 0x80000000) != 0 && (*(v54 + 164) & 0x80000000) != 0 && (*(v54 + 168) & 0x80000000) != 0 && !*(v54 + 152))
    {
      return 2;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v257 = 134283521;
    v258 = a1;
    v55 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#CLELS,CLEmergencyLocationSelectorInternal,PeriodicUpdates,SendLocationTimeout,this:%{private}p,nil fConfig,early return", &v257, 12);
    sub_19B885924("Generic", 1, 0, 0, "CLEmergencyLocationSelectorInternal::State CLEmergencyLocationSelectorInternal::handler_PeriodicUpdates(CLEmergencyLocationSelectorInternal::Event)", "CoreLocation: %s\n", v55);
    goto LABEL_59;
  }

  v8 = objc_msgSend_locationUpdateUsabilityCriteria(*a1, a2, a3, a4);
  if (sub_19BA47A64(a1, v8, *(a1 + 152), v9))
  {

    *(a1 + 176) = *(a1 + 152);
    v13 = objc_msgSend_locationUpdateUsabilityCriteria(*a1, v10, v11, v12);
    if (objc_msgSend_altitudeStitchingEnabled(v13, v14, v15, v16))
    {
      v20 = objc_msgSend_locationUpdateUsabilityCriteria(*a1, v17, v18, v19);
      if (sub_19BA48598(a1, v20, *(a1 + 152), v21))
      {

        *(a1 + 184) = *(a1 + 152);
      }
    }

    if (!*a1)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v56 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 134283521;
        v264 = a1;
        _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,shouldSendLocationUpdateEarly,this:%{private}p,nil fConfig,early return", buf, 0xCu);
      }

      v57 = sub_19B87DD40();
      if ((*(v57 + 160) & 0x80000000) != 0 && (*(v57 + 164) & 0x80000000) != 0 && (*(v57 + 168) & 0x80000000) != 0 && !*(v57 + 152))
      {
        return 2;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v257 = 134283521;
      v258 = a1;
      v55 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#CLELS,CLEmergencyLocationSelectorInternal,shouldSendLocationUpdateEarly,this:%{private}p,nil fConfig,early return", &v257, 12);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLEmergencyLocationSelectorInternal::shouldSendLocationUpdateEarly()", "CoreLocation: %s\n", v55);
LABEL_59:
      if (v55 == buf)
      {
        return 2;
      }

      goto LABEL_73;
    }

    if (*(a1 + 176))
    {
      if (*(a1 + 160))
      {
        v22 = mach_continuous_time();
        v23 = sub_19B994BF4(v22) - *(a1 + 168);
        objc_msgSend_locationUpdateMinDelay(*a1, v24, v25, v26);
        if (v23 < v27)
        {
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v28 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            v32 = objc_msgSend_feature(*a1, v29, v30, v31);
            *buf = 138543618;
            v264 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v33, v32, v34);
            v265 = 2050;
            v266 = v23;
            _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,not sending,last send was too recent,tDiff,%{public}f", buf, 0x16u);
          }

          v35 = sub_19B87DD40();
          if (*(v35 + 160) <= 1 && *(v35 + 164) <= 1 && *(v35 + 168) <= 1 && !*(v35 + 152))
          {
            return 2;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v39 = qword_1ED519090;
          v40 = objc_msgSend_feature(*a1, v36, v37, v38);
          v257 = 138543618;
          v258 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v41, v40, v42);
          v259 = 2050;
          v260 = v23;
          v43 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v39, 0, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,not sending,last send was too recent,tDiff,%{public}f", &v257, 22);
LABEL_72:
          v55 = v43;
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::shouldSendLocationUpdateEarly()", "CoreLocation: %s\n", v43);
          if (v55 != buf)
          {
LABEL_73:
            free(v55);
            return 2;
          }

          return 2;
        }

        v255 = 0.0;
        v256 = 0.0;
        sub_19BA4ABBC(*(a1 + 176), &v256, &v255);
        v253 = 0.0;
        v254 = 0.0;
        sub_19BA4ABBC(*(a1 + 160), &v254, &v253);
        v89 = v254;
        v90 = v256;
        v91 = v254 - v256;
        objc_msgSend_locationUpdateHuncReductionToSendEarly(*a1, v92, v93, v94);
        if (v91 >= v98)
        {
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
          }

          v176 = qword_1EAFE4718;
          if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
          {
            v180 = objc_msgSend_feature(*a1, v177, v178, v179);
            v183 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v181, v180, v182);
            *buf = 138543874;
            v264 = v183;
            v265 = 2050;
            v266 = v89;
            v267 = 2050;
            v268 = v90;
            _os_log_impl(&dword_19B873000, v176, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,higher hunc reduction,previous,%{public}f,current,%{public}f", buf, 0x20u);
          }

          v184 = sub_19B87DD40();
          if (*(v184 + 160) <= 1 && *(v184 + 164) <= 1 && *(v184 + 168) <= 1 && !*(v184 + 152))
          {
            goto LABEL_156;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
          }

          v188 = qword_1EAFE4718;
          v189 = objc_msgSend_feature(*a1, v185, v186, v187);
          v192 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v190, v189, v191);
          v257 = 138543874;
          v258 = v192;
          v259 = 2050;
          v260 = v89;
          v261 = 2050;
          v262 = v90;
          v88 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v188, 0, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,higher hunc reduction,previous,%{public}f,current,%{public}f", &v257, 32);
        }

        else
        {
          objc_msgSend_coordinate(*(a1 + 160), v95, v96, v97);
          v100 = v99;
          objc_msgSend_coordinate(*(a1 + 160), v101, v102, v103);
          v105 = v104;
          objc_msgSend_coordinate(*(a1 + 176), v106, v107, v108);
          v110 = v109;
          objc_msgSend_coordinate(*(a1 + 176), v111, v112, v113);
          v115 = sub_19B87E164(v100, v105, v110, v114);
          objc_msgSend_locationUpdateDistanceMovedToSendEarly(*a1, v116, v117, v118);
          if (v115 < v122 || (objc_msgSend_horizontalAccuracy(*(a1 + 160), v119, v120, v121), v115 < v196) && (objc_msgSend_horizontalAccuracy(*(a1 + 176), v193, v194, v195), v115 < v197))
          {
            v123 = objc_msgSend_locationUpdateUsabilityCriteria(*a1, v119, v120, v121);
            if (!sub_19BA48598(a1, v123, *(a1 + 176), v124))
            {
              return 2;
            }

            v128 = objc_msgSend_locationUpdateUsabilityCriteria(*a1, v125, v126, v127);
            if (sub_19BA48598(a1, v128, *(a1 + 160), v129))
            {
              v133 = v253;
              v134 = v255;
              v135 = v253 - v255;
              objc_msgSend_locationUpdateVuncReductionToSendEarly(*a1, v130, v131, v132);
              if (v135 >= v139)
              {
                if (qword_1EAFE46E0 != -1)
                {
                  dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
                }

                v232 = qword_1EAFE4718;
                if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
                {
                  v236 = objc_msgSend_feature(*a1, v233, v234, v235);
                  v239 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v237, v236, v238);
                  *buf = 138543874;
                  v264 = v239;
                  v265 = 2050;
                  v266 = v133;
                  v267 = 2050;
                  v268 = v134;
                  _os_log_impl(&dword_19B873000, v232, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,higher vunc reduction,previous,%{public}f,current,%{public}f", buf, 0x20u);
                }

                v240 = sub_19B87DD40();
                if (*(v240 + 160) <= 1 && *(v240 + 164) <= 1 && *(v240 + 168) <= 1 && !*(v240 + 152))
                {
                  goto LABEL_156;
                }

                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46E0 != -1)
                {
                  dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
                }

                v244 = qword_1EAFE4718;
                v245 = objc_msgSend_feature(*a1, v241, v242, v243);
                v248 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v246, v245, v247);
                v257 = 138543874;
                v258 = v248;
                v259 = 2050;
                v260 = v133;
                v261 = 2050;
                v262 = v134;
                v88 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v244, 0, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,higher vunc reduction,previous,%{public}f,current,%{public}f", &v257, 32);
              }

              else
              {
                objc_msgSend_ellipsoidalAltitude(*(a1 + 160), v136, v137, v138);
                v141 = v140;
                objc_msgSend_ellipsoidalAltitude(*(a1 + 176), v142, v143, v144);
                v146 = vabdd_f64(v141, v145);
                objc_msgSend_locationUpdateChangeInAltitudeToSendEarly(*a1, v147, v148, v149);
                if (v146 < v153)
                {
                  return 2;
                }

                objc_msgSend_verticalAccuracy(*(a1 + 160), v150, v151, v152);
                if (v146 < v157 * 0.5)
                {
                  objc_msgSend_verticalAccuracy(*(a1 + 176), v154, v155, v156);
                  if (v146 < v158 * 0.5)
                  {
                    return 2;
                  }
                }

                if (qword_1EAFE46E0 != -1)
                {
                  dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
                }

                v159 = qword_1EAFE4718;
                if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
                {
                  v163 = objc_msgSend_feature(*a1, v160, v161, v162);
                  v166 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v164, v163, v165);
                  *buf = 138543618;
                  v264 = v166;
                  v265 = 2050;
                  v266 = v146;
                  _os_log_impl(&dword_19B873000, v159, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,higher altitude change,%{public}f", buf, 0x16u);
                }

                v167 = sub_19B87DD40();
                if (*(v167 + 160) <= 1 && *(v167 + 164) <= 1 && *(v167 + 168) <= 1 && !*(v167 + 152))
                {
                  goto LABEL_156;
                }

                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46E0 != -1)
                {
                  dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
                }

                v171 = qword_1EAFE4718;
                v172 = objc_msgSend_feature(*a1, v168, v169, v170);
                v175 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v173, v172, v174);
                v257 = 138543618;
                v258 = v175;
                v259 = 2050;
                v260 = v146;
                v88 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v171, 0, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,higher altitude change,%{public}f", &v257, 22);
              }
            }

            else
            {
              if (qword_1EAFE46E0 != -1)
              {
                dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
              }

              v215 = qword_1EAFE4718;
              if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
              {
                v219 = objc_msgSend_feature(*a1, v216, v217, v218);
                v222 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v220, v219, v221);
                *buf = 138543362;
                v264 = v222;
                _os_log_impl(&dword_19B873000, v215, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,altitude is usable now", buf, 0xCu);
              }

              v223 = sub_19B87DD40();
              if (*(v223 + 160) <= 1 && *(v223 + 164) <= 1 && *(v223 + 168) <= 1 && !*(v223 + 152))
              {
                goto LABEL_156;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46E0 != -1)
              {
                dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
              }

              v227 = qword_1EAFE4718;
              v228 = objc_msgSend_feature(*a1, v224, v225, v226);
              v231 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v229, v228, v230);
              v257 = 138543362;
              v258 = v231;
              v88 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v227, 0, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,altitude is usable now", &v257, 12);
            }
          }

          else
          {
            if (qword_1EAFE46E0 != -1)
            {
              dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
            }

            v198 = qword_1EAFE4718;
            if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
            {
              v202 = objc_msgSend_feature(*a1, v199, v200, v201);
              v205 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v203, v202, v204);
              *buf = 138543618;
              v264 = v205;
              v265 = 2050;
              v266 = v115;
              _os_log_impl(&dword_19B873000, v198, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,location changed significantly,dist,%{public}f", buf, 0x16u);
            }

            v206 = sub_19B87DD40();
            if (*(v206 + 160) <= 1 && *(v206 + 164) <= 1 && *(v206 + 168) <= 1 && !*(v206 + 152))
            {
              goto LABEL_156;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46E0 != -1)
            {
              dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
            }

            v210 = qword_1EAFE4718;
            v211 = objc_msgSend_feature(*a1, v207, v208, v209);
            v214 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v212, v211, v213);
            v257 = 138543618;
            v258 = v214;
            v259 = 2050;
            v260 = v115;
            v88 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v210, 0, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,location changed significantly,dist,%{public}f", &v257, 22);
          }
        }
      }

      else
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v73 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          v77 = objc_msgSend_feature(*a1, v74, v75, v76);
          *buf = 138543362;
          v264 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v78, v77, v79);
          _os_log_impl(&dword_19B873000, v73, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,first valid fix being sent after sending no fix or nil fix", buf, 0xCu);
        }

        v80 = sub_19B87DD40();
        if (*(v80 + 160) <= 1 && *(v80 + 164) <= 1 && *(v80 + 168) <= 1 && !*(v80 + 152))
        {
          goto LABEL_156;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v84 = qword_1ED519090;
        v85 = objc_msgSend_feature(*a1, v81, v82, v83);
        v257 = 138543362;
        v258 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v86, v85, v87);
        v88 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v84, 0, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,first valid fix being sent after sending no fix or nil fix", &v257, 12);
      }

      v249 = v88;
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::shouldSendLocationUpdateEarly()", "CoreLocation: %s\n", v88);
      if (v249 != buf)
      {
        free(v249);
      }

      goto LABEL_156;
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v58 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v62 = objc_msgSend_feature(*a1, v59, v60, v61);
      *buf = 138543362;
      v264 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v63, v62, v64);
      _os_log_impl(&dword_19B873000, v58, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,not sending,invalid cached location", buf, 0xCu);
    }

    v65 = sub_19B87DD40();
    if (*(v65 + 160) <= 1 && *(v65 + 164) <= 1 && *(v65 + 168) <= 1 && !*(v65 + 152))
    {
      return 2;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v69 = qword_1ED519090;
    v70 = objc_msgSend_feature(*a1, v66, v67, v68);
    v257 = 138543362;
    v258 = objc_msgSend_featureString_(CLEmergencyLocationSelectorConfig, v71, v70, v72);
    v43 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v69, 0, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,not sending,invalid cached location", &v257, 12);
    goto LABEL_72;
  }

  return 2;
}