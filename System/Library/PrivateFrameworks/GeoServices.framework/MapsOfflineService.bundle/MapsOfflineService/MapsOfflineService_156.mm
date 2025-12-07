void sub_98E70C(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, void *a10, uint64_t a11, char a12, __int16 _1A, __int16 _1C, char _1E, char arg1F, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  if (arg1F < 0)
  {
    operator delete(a10);
  }

  std::ios::~ios();
  sub_98F084((v29 - 112));
  _Unwind_Resume(a1);
}

void sub_98E7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_98ECD0(va);
  sub_98F084((v15 - 112));
  _Unwind_Resume(a1);
}

void sub_98E7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_11F069C(va);
  sub_98F084((v15 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_98E85C@<X0>(uint64_t *a1@<X0>, char **a2@<X1>, void *a3@<X2>, const void **a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0x7FFFFFFF00000002;
  *(a5 + 8) = 0u;
  v9 = (a5 + 8);
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0;
  result = sub_3B6890(*a1);
  *(a5 + 4) = *(result + 4);
  if (v9 != a4)
  {
    v11 = *(a4 + 23);
    if (*(a5 + 31) < 0)
    {
      if (v11 >= 0)
      {
        v12 = a4;
      }

      else
      {
        v12 = *a4;
      }

      if (v11 >= 0)
      {
        v13 = *(a4 + 23);
      }

      else
      {
        v13 = a4[1];
      }

      result = sub_13B38((a5 + 8), v12, v13);
    }

    else if ((*(a4 + 23) & 0x80) != 0)
    {
      result = sub_13A68((a5 + 8), *a4, a4[1]);
    }

    else
    {
      *v9 = *a4;
      *(a5 + 24) = a4[2];
    }
  }

  if (a2[1] - *a2 == 32 && (v14 = **a2, v15 = *(*a2 + 1), v15 - v14 == 104) && (v14 == v15 || (v17 = *(v14 + 8), v16 = *(v14 + 16), v17 == v16) || *(v16 - 5704) != 4))
  {
    *(a5 + 56) = 1;
  }

  else
  {
    sub_9D4074(v36, a2);
    while (1)
    {
      sub_9D4040(v36, v35);
      result = sub_9D427C(v36, v35);
      if ((result & 1) == 0)
      {
        break;
      }

      if (*sub_9D42B8(v36) == 2)
      {
        v18 = *(a5 + 40);
        v19 = *(a5 + 48);
        if (v18 >= v19)
        {
          v23 = *(a5 + 32);
          v24 = v18 - v23;
          v25 = (v18 - v23) >> 5;
          v26 = v25 + 1;
          if ((v25 + 1) >> 59)
          {
            sub_1794();
          }

          v27 = v19 - v23;
          if (v27 >> 4 > v26)
          {
            v26 = v27 >> 4;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFE0)
          {
            v28 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            if (!(v28 >> 59))
            {
              operator new();
            }

            sub_1808();
          }

          v29 = (32 * v25);
          *v29 = -1;
          v29[1] = -1;
          v29[2] = -1;
          v29[3] = 0x7FFFFFFFLL;
          v20 = 32 * v25 + 32;
          memcpy(0, v23, v24);
          *(a5 + 32) = 0;
          *(a5 + 40) = v20;
          *(a5 + 48) = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v18 = -1;
          *(v18 + 1) = -1;
          v20 = (v18 + 32);
          *(v18 + 2) = -1;
          *(v18 + 3) = 0x7FFFFFFFLL;
        }

        *(a5 + 40) = v20;
        v30 = *(sub_9D42B8(v36) + 48);
        if (0xCF3CF3CF3CF3CF3DLL * ((a3[1] - *a3) >> 3) <= v30)
        {
          sub_6FAB4();
        }

        *(v20 - 24) = *(*a3 + 168 * v30 + 88);
        v31 = sub_9D42B8(v36);
        if ((*(v31 + 792) & 1) == 0)
        {
          sub_4F0F0C();
        }

        v32 = *(v31 + 752);
        v33 = a3[9];
        if (0x66FD0EB66FD0EB67 * ((a3[10] - v33) >> 3) <= v32)
        {
          sub_6FAB4();
        }

        *(v20 - 32) = *(v33 + 696 * v32 + 48);
        v34 = *(v31 + 116);
        if (v34 == 0x7FFFFFFF)
        {
          v34 = *(sub_9D42B8(v36) + 40);
        }

        *(v20 - 8) = v34;
      }

      else if (*sub_9D42B8(v36) == 4)
      {
        v21 = *(a5 + 40);
        v22 = *(sub_9D42B8(v36) + 48);
        if (0xCF3CF3CF3CF3CF3DLL * ((a3[1] - *a3) >> 3) <= v22)
        {
          sub_6FAB4();
        }

        *(v21 - 16) = *(*a3 + 168 * v22 + 88);
      }

      sub_9D40D8(v36);
    }
  }

  return result;
}

uint64_t sub_98ECD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_98ED24(void *a1)
{
  v2 = a1[13];
  v3 = a1[14];
  if (v3 == v2)
  {
    a1[17] = 0;
    v11 = 0;
  }

  else
  {
    v4 = a1[16];
    v5 = &v2[v4 >> 7];
    v6 = *v5;
    v7 = *v5 + 32 * (v4 & 0x7F);
    v8 = *(v2 + (((a1[17] + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[17] + v4) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        if (*v7)
        {
          *(v7 + 8) = v9;
          operator delete(v9);
          v6 = *v5;
        }

        v7 += 32;
        if (v7 - v6 == 4096)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[13];
      v3 = a1[14];
    }

    a1[17] = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = a1[14];
        v2 = (a1[13] + 8);
        a1[13] = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 64;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 128;
LABEL_17:
    a1[16] = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = a1[13];
    v14 = a1[14];
    if (v14 != v15)
    {
      a1[14] = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v16 = a1[12];
  if (v16)
  {
    operator delete(v16);
  }

  v17 = a1[9];
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

  v19 = a1[7];
  a1[7] = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = a1[4];
  if (v20)
  {
    a1[5] = v20;
    operator delete(v20);
  }

  return a1;
}

uint64_t sub_98EEDC(uint64_t *a1, uint64_t a2)
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

  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = v2 << 6;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = *(a2 + 56);
  v8 = (v2 << 6) + 64;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 - v10;
  v12 = v7 + v11;
  if (*a1 != v10)
  {
    v13 = v7 + v11;
    v14 = *a1;
    do
    {
      *v13 = *v14;
      v15 = *(v14 + 8);
      *(v13 + 24) = *(v14 + 24);
      *(v13 + 8) = v15;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 8) = 0;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 32) = *(v14 + 32);
      *(v13 + 48) = *(v14 + 48);
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v13 + 56) = *(v14 + 56);
      v14 += 64;
      v13 += 64;
    }

    while (v14 != v10);
    do
    {
      v16 = *(v9 + 32);
      if (v16)
      {
        *(v9 + 40) = v16;
        operator delete(v16);
      }

      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 64;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v12;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

char **sub_98F084(char **a1)
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
        v5 = *(v3 - 4);
        if (v5)
        {
          *(v3 - 3) = v5;
          operator delete(v5);
        }

        if (*(v3 - 33) < 0)
        {
          operator delete(*(v3 - 7));
        }

        v3 -= 64;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_98F108(void *a1, unsigned int *a2, _DWORD *a3, int *a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (*(v9 + 4) == v4)
        {
          return v9;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
      {
        goto LABEL_23;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_23;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_98F43C()
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
  xmmword_27B1FE8 = 0u;
  unk_27B1FF8 = 0u;
  dword_27B2008 = 1065353216;
  sub_3A9A34(&xmmword_27B1FE8, v0, v0);
  sub_3A9A34(&xmmword_27B1FE8, v3, v3);
  sub_3A9A34(&xmmword_27B1FE8, __p, __p);
  sub_3A9A34(&xmmword_27B1FE8, v9, v9);
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
    qword_27B1FC0 = 0;
    qword_27B1FC8 = 0;
    qword_27B1FB8 = 0;
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

void sub_98F684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1FD0)
  {
    qword_27B1FD8 = qword_27B1FD0;
    operator delete(qword_27B1FD0);
  }

  _Unwind_Resume(exception_object);
}

void sub_98F730(unsigned int *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(a2 + 120) = *a1;
  v5 = *(a1 + 56);
  v6 = v4 | 0x110;
  *(a2 + 16) = v4 | 0x110;
  *(a2 + 104) = v5;
  v7 = a1[1];
  if (v7 != 0x7FFFFFFF)
  {
    v6 = v4 | 0x130;
    *(a2 + 16) = v4 | 0x130;
    *(a2 + 108) = v7;
  }

  v8 = *(a1 + 31);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 2);
  }

  if (v8)
  {
    *(a2 + 16) = v6 | 1;
    v9 = *(a2 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    sub_194EA1C((a2 + 72), (a1 + 2), v10);
  }

  v11 = *(a1 + 4);
  v12 = *(a1 + 5);
  while (v11 != v12)
  {
    v20 = *(a2 + 64);
    if (v20 && (v21 = *(a2 + 56), v21 < *v20))
    {
      *(a2 + 56) = v21 + 1;
      v14 = *&v20[2 * v21 + 2];
    }

    else
    {
      sub_11F1614(*(a2 + 48));
      v14 = sub_19593CC(a2 + 48, v13);
    }

    nullsub_1();
    *(v14 + 16) |= 1u;
    *(v14 + 24) = v15;
    nullsub_1();
    *(v14 + 16) |= 2u;
    *(v14 + 32) = v16;
    nullsub_1();
    v17 = *(v14 + 16);
    *(v14 + 16) = v17 | 4;
    *(v14 + 40) = v18;
    v19 = *(v11 + 24);
    *(v14 + 16) = v17 | 0xC;
    *(v14 + 48) = v19;
    v11 += 32;
  }
}

void sub_98F88C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    *a2 = 0x7FFFFFFF00000002;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0;
    return;
  }

  v29 = 0x7FFFFFFF00000002;
  v4 = *(a1 + 40);
  *v30 = 0u;
  *__p = 0u;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = 8 * v3;
  *&__p[16] = 0uLL;
  v32 = 0;
  while (1)
  {
    v7 = *v5;
    if ((*(*v5 + 16) & 0x80) != 0)
    {
      break;
    }

LABEL_6:
    ++v5;
    v6 -= 8;
    if (!v6)
    {
      v32 = *&__p[8] == *&__p[16];
      v22 = *(a1 + 16);
      if ((v22 & 0x20) != 0)
      {
        HIDWORD(v29) = *(a1 + 108);
      }

      if (v22)
      {
        v23 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
        if (v30 != v23)
        {
          v24 = *(v23 + 23);
          if ((__p[7] & 0x80000000) != 0)
          {
            if (v24 >= 0)
            {
              v26 = (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              v26 = *v23;
            }

            if (v24 >= 0)
            {
              v27 = *(v23 + 23);
            }

            else
            {
              v27 = *(v23 + 8);
            }

            sub_13B38(v30, v26, v27);
          }

          else if ((*(v23 + 23) & 0x80) != 0)
          {
            sub_13A68(v30, *v23, *(v23 + 8));
          }

          else
          {
            v25 = *v23;
            *__p = *(v23 + 16);
            *v30 = v25;
          }
        }
      }

      *a2 = v29;
      *(a2 + 8) = *v30;
      *(a2 + 24) = *__p;
      v30[0] = 0;
      v30[1] = 0;
      *__p = 0;
      *(a2 + 32) = *&__p[8];
      *(a2 + 48) = *&__p[24];
      memset(&__p[8], 0, 24);
      *(a2 + 56) = v32;
      if ((__p[7] & 0x80000000) == 0)
      {
        return;
      }

LABEL_45:
      operator delete(v30[0]);
      return;
    }
  }

  if (*(v7 + 56) >= 2 && *(v7 + 40))
  {
    v8 = *&__p[16];
    if (*&__p[16] >= *&__p[24])
    {
      v10 = *&__p[8];
      v11 = *&__p[16] - *&__p[8];
      v12 = (*&__p[16] - *&__p[8]) >> 5;
      v13 = v12 + 1;
      if ((v12 + 1) >> 59)
      {
        sub_1794();
      }

      v14 = *&__p[24] - *&__p[8];
      if ((*&__p[24] - *&__p[8]) >> 4 > v13)
      {
        v13 = v14 >> 4;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFE0)
      {
        v15 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (!(v15 >> 59))
        {
          operator new();
        }

        sub_1808();
      }

      v16 = (*&__p[16] - *&__p[8]) >> 5;
      v17 = (32 * v12);
      *v17 = -1;
      v17[1] = -1;
      v17[2] = -1;
      v17[3] = 0x7FFFFFFFLL;
      v9 = 32 * v12 + 32;
      v18 = &v17[-4 * v16];
      memcpy(v18, v10, v11);
      *&__p[8] = v18;
      *&__p[24] = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      **&__p[16] = -1;
      v8[1] = -1;
      v9 = (v8 + 4);
      v8[2] = -1;
      v8[3] = 0x7FFFFFFFLL;
    }

    *&__p[16] = v9;
    nullsub_1();
    *(v9 - 32) = v19;
    nullsub_1();
    *(v9 - 24) = v20;
    nullsub_1();
    *(v9 - 16) = v21;
    *(v9 - 8) = sub_96AE18(**(v7 + 48));
    goto LABEL_6;
  }

  *a2 = 0x7FFFFFFF00000002;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  if (*&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  if ((__p[7] & 0x80000000) != 0)
  {
    goto LABEL_45;
  }
}

void sub_98FBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_98ECD0(va);
  _Unwind_Resume(a1);
}

void sub_98FBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_98ECD0(va);
  _Unwind_Resume(a1);
}

void sub_98FBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_98ECD0(va);
  _Unwind_Resume(a1);
}

void sub_98FBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_98ECD0(va);
  _Unwind_Resume(a1);
}

void sub_98FC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_98ECD0(va);
  _Unwind_Resume(a1);
}

void sub_98FC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_98ECD0(va);
  _Unwind_Resume(a1);
}

void sub_98FC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_98ECD0(va);
  _Unwind_Resume(a1);
}

void sub_98FC40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = 0x7FFFFFFF00000002;
  memset(v43, 0, sizeof(v43));
  v44 = *(a1 + 104);
  v2 = *(a1 + 16);
  if ((v2 & 0x20) != 0)
  {
    HIDWORD(v42) = *(a1 + 108);
  }

  if (v2)
  {
    v3 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (v43 != v3)
    {
      if (*(v3 + 23) < 0)
      {
        v5 = a1;
        sub_13A68(v43, *v3, *(v3 + 8));
        a1 = v5;
      }

      else
      {
        v4 = *v3;
        *&v43[1] = *(v3 + 16);
        v43[0] = v4;
      }
    }
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 56);
  if (!v8)
  {
LABEL_28:
    *a2 = v42;
    *(a2 + 8) = v43[0];
    *(a2 + 24) = *&v43[1];
    memset(v43, 0, 24);
    *(a2 + 32) = *(&v43[1] + 8);
    *(a2 + 48) = *(&v43[2] + 1);
    memset(&v43[1] + 8, 0, 24);
    *(a2 + 56) = v44;
    goto LABEL_48;
  }

  v9 = 8 * v8;
  while (1)
  {
    v10 = *v7;
    v11 = *&v43[2];
    if (*&v43[2] >= *(&v43[2] + 1))
    {
      v13 = *(&v43[1] + 1);
      v14 = *&v43[2] - *(&v43[1] + 1);
      v15 = (*&v43[2] - *(&v43[1] + 1)) >> 5;
      v16 = v15 + 1;
      if ((v15 + 1) >> 59)
      {
        sub_1794();
      }

      v17 = *(&v43[2] + 1) - *(&v43[1] + 1);
      if ((*(&v43[2] + 1) - *(&v43[1] + 1)) >> 4 > v16)
      {
        v16 = v17 >> 4;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFE0)
      {
        v18 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (!(v18 >> 59))
        {
          operator new();
        }

        sub_1808();
      }

      v19 = (*&v43[2] - *(&v43[1] + 1)) >> 5;
      v20 = (32 * v15);
      *v20 = -1;
      v20[1] = -1;
      v20[2] = -1;
      v20[3] = 0x7FFFFFFFLL;
      v12 = 32 * v15 + 32;
      v21 = &v20[-4 * v19];
      memcpy(v21, v13, v14);
      *(&v43[1] + 1) = v21;
      v43[2] = v12;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      **&v43[2] = -1;
      v11[1] = -1;
      v12 = (v11 + 4);
      v11[2] = -1;
      v11[3] = 0x7FFFFFFFLL;
    }

    *&v43[2] = v12;
    if ((~*(v10 + 16) & 0xF) != 0)
    {
      break;
    }

    nullsub_1();
    *(v12 - 32) = v22;
    nullsub_1();
    *(v12 - 24) = v23;
    nullsub_1();
    *(v12 - 16) = v24;
    *(v12 - 8) = sub_96AE18(*(v10 + 48));
    ++v7;
    v9 -= 8;
    if (!v9)
    {
      goto LABEL_28;
    }
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v31);
    sub_4A5C(&v31, "Route handle leg is missing data", 32);
    if ((v41 & 0x10) != 0)
    {
      v26 = v40;
      if (v40 < v37)
      {
        v40 = v37;
        v26 = v37;
      }

      v27 = v36;
      v25 = v26 - v36;
      if (v26 - v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if ((v41 & 8) == 0)
      {
        v25 = 0;
        v30 = 0;
LABEL_41:
        *(&__dst + v25) = 0;
        sub_7E854(&__dst, 1u);
        if (v30 < 0)
        {
          operator delete(__dst);
        }

        if (v39 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v33);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_46;
      }

      v27 = v34;
      v25 = v35 - v34;
      if ((v35 - v34) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_52:
        sub_3244();
      }
    }

    if (v25 >= 0x17)
    {
      operator new();
    }

    v30 = v25;
    if (v25)
    {
      memmove(&__dst, v27, v25);
    }

    goto LABEL_41;
  }

LABEL_46:
  *a2 = 0x7FFFFFFF00000002;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  if (*(&v43[1] + 1))
  {
    *&v43[2] = *(&v43[1] + 1);
    operator delete(*(&v43[1] + 1));
  }

LABEL_48:
  if (SBYTE7(v43[1]) < 0)
  {
    operator delete(*&v43[0]);
  }
}

void sub_990110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a18);
    sub_98ECD0(v18 - 168);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a18);
  sub_98ECD0(v18 - 168);
  _Unwind_Resume(a1);
}

uint64_t sub_9901FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_11F0388(v23, 0, 0);
  if ((sub_194DB28(v4, a1) & 1) == 0)
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_37;
    }

    sub_19594F8(&v12);
    sub_4A5C(&v12, "Route handle could not be parsed", 32);
    if ((v22 & 0x10) != 0)
    {
      v6 = v21;
      if (v21 < v18)
      {
        v21 = v18;
        v6 = v18;
      }

      v7 = v17;
      v5 = v6 - v17;
      if (v6 - v17 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if ((v22 & 8) == 0)
      {
        v5 = 0;
        v11 = 0;
LABEL_32:
        *(&__p + v5) = 0;
        sub_7E854(&__p, 1u);
        if (v11 < 0)
        {
          operator delete(__p);
        }

        if (v20 < 0)
        {
          operator delete(v19);
        }

        std::locale::~locale(&v14);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_37;
      }

      v7 = v15;
      v5 = v16 - v15;
      if ((v16 - v15) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_23:
        sub_3244();
      }
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    v11 = v5;
    if (!v5)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v24 == 2)
  {
    sub_98FC40(v23, a2);
    return sub_11F069C(v23);
  }

  if (v24 != 1)
  {
    if (sub_7E7E4(1u))
    {
      sub_19594F8(&v12);
      sub_4A5C(&v12, "Got a route handle of unknown version: ", 39);
      std::ostream::operator<<();
      if ((v22 & 0x10) != 0)
      {
        v8 = v21;
        if (v21 < v18)
        {
          v21 = v18;
          v8 = v18;
        }

        v7 = v17;
        v5 = v8 - v17;
        if (v8 - v17 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if ((v22 & 8) == 0)
        {
          v5 = 0;
          v11 = 0;
          goto LABEL_32;
        }

        v7 = v15;
        v5 = v16 - v15;
        if ((v16 - v15) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_40:
          sub_3244();
        }
      }

      if (v5 >= 0x17)
      {
        operator new();
      }

      v11 = v5;
      if (!v5)
      {
        goto LABEL_32;
      }

LABEL_31:
      memmove(&__p, v7, v5);
      goto LABEL_32;
    }

LABEL_37:
    *a2 = 0x7FFFFFFF00000002;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0;
    return sub_11F069C(v23);
  }

  sub_98F88C(v23, a2);
  return sub_11F069C(v23);
}

void sub_9905EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_11F069C(v15 - 176);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_11F069C(v15 - 176);
  _Unwind_Resume(a1);
}

void sub_990680(uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  operator new();
}

void sub_990D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_990E44(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = sub_92FC60(a1, a2, 0, "line");
  v7 = (v6 - *v6);
  if (*v7 >= 0x21u)
  {
    v8 = v7[16];
    if (v8)
    {
      if (*(v6 + v8) != -1)
      {
        operator new();
      }
    }
  }

  v9 = sub_92FC60(a1, a2, 0, "line");
  v10 = (v9 - *v9);
  if (*v10 >= 0x39u)
  {
    v11 = v10[28];
    if (v11)
    {
      v12 = (v9 + v11 + *(v9 + v11));
      v13 = (v12 - *v12);
      if (*v13 >= 5u)
      {
        v14 = v13[2];
        if (v14)
        {
          v15 = (v12 + v14 + *(v12 + v14));
          v16 = (v15 - *v15);
          if (*v16 >= 9u)
          {
            v17 = v16[4];
            if (v17)
            {
              v18 = *(v15 + v17);
              if (v18 <= 6)
              {
                operator new();
              }

              if (v18 != 127)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Unexpected significance value");
              }
            }
          }
        }
      }
    }
  }

  v19 = sub_92FC60(a1, a2, 0, "line");
  v20 = (v19 - *v19);
  if (*v20 >= 0x3Bu)
  {
    v21 = v20[29];
    if (v21)
    {
      v22 = v19 + v21 + *(v19 + v21);
      if (*v22)
      {
        v23 = sub_992324(a1, *(v22 + 4), 0, "cartographic line group");
        v24 = (v23 - *v23);
        if (*v24 >= 5u)
        {
          v25 = v24[2];
          if (v25)
          {
            v26 = *(v23 + v25);
            if (v26 != -1)
            {
              operator new();
            }
          }
        }
      }
    }
  }

  v28 = sub_92FC60(a1, a2, 0, "line");
  v29 = (v28 - *v28);
  if (*v29 < 0x11u || (v30 = v29[8]) == 0 || (v31 = *(v28 + v30), v31 == 0x7FFF))
  {
    v31 = 700;
  }

  v32 = v31;
  v33 = a3[2];
  if (v33)
  {
    dword_0 = 37;
    dword_4[0] = v32;
    v34 = 8;
  }

  else
  {
    v35 = *a3;
    v36 = -*a3;
    v37 = (v36 >> 3) + 1;
    if (v37 >> 61)
    {
      sub_1794();
    }

    v38 = v33 - v35;
    if (v38 >> 2 > v37)
    {
      v37 = v38 >> 2;
    }

    if (v38 >= 0x7FFFFFFFFFFFFFF8)
    {
      v39 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v39 = v37;
    }

    if (v39)
    {
      if (!(v39 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v40 = (8 * (v36 >> 3));
    *v40 = 37;
    v40[1] = v32;
    v34 = (v40 + 2);
    memcpy(0, v35, v36);
    *a3 = 0;
    a3[2] = 0;
    if (v35)
    {
      operator delete(v35);
    }
  }

  a3[1] = v34;
  v41 = sub_92FC60(a1, a2, 0, "line");
  v42 = (v41 - *v41);
  if (*v42 >= 0x33u && (v43 = v42[25]) != 0)
  {
    if (*(v41 + v43 + *(v41 + v43)))
    {
      operator new();
    }

    v44 = a3[2];
    v45 = *a3;
    a3[1] = v34;
    a3[2] = v44;
    *a3 = v45;
  }

  else
  {
    a3[1] = v34;
  }
}

void sub_991574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_991D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_991DCC(uint64_t a1@<X1>, unint64_t a2@<X2>, char **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = sub_93E04C(a1, a2, 0, "system");
  v7 = (v6 - *v6);
  if (*v7 >= 0x11u)
  {
    v8 = v7[8];
    if (v8)
    {
      if (*(v6 + v8) != -1)
      {
        operator new();
      }
    }
  }

  v9 = sub_93E04C(a1, a2, 0, "system");
  v10 = (v9 - *v9);
  v11 = *v10;
  if (v11 < 0xF)
  {
    if (v11 < 0xD)
    {
      goto LABEL_21;
    }
  }

  else if (v10[7])
  {
    v12 = *(v9 + v10[7]);
    v13 = v10[6];
    if (!v10[6])
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v12 = 0x7FFF;
  v13 = v10[6];
  if (!v10[6])
  {
LABEL_8:
    if (v12 == 0x7FFF)
    {
      v14 = 0x7FFF;
    }

    else
    {
      v14 = v12;
    }

    if (v14 != 0x7FFF)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

LABEL_15:
  v15 = *(v9 + v13);
  if (v12 == 0x7FFF)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  if (v16 != 0x7FFF)
  {
LABEL_20:
    operator new();
  }

LABEL_21:
  v17 = sub_93E04C(a1, a2, 0, "system");
  v18 = (v17 - *v17);
  if (*v18 >= 0x19u)
  {
    v19 = v18[12];
    if (v19)
    {
      v20 = *(v17 + v19);
      if (v20 != 127)
      {
        operator new();
      }
    }
  }

  v21 = sub_93E04C(a1, a2, 0, "system");
  v22 = (v21 - *v21);
  if (*v22 >= 0x15u)
  {
    v23 = v22[10];
    if (v23)
    {
      if (*(v21 + v23 + *(v21 + v23)))
      {
        operator new();
      }

      *a3 = *a3;
    }
  }
}

void sub_9922AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_992324(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_2C939C(a1, a2, a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 9u)
  {
    v9 = *(v8 + 4);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v6)
      {
        return &v9[v6 + 1] + v9[v6 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v6;
      v20 = v12;
      v18[0] = sub_7FCF0(6u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v6 + 1] + v9[v6 + 1];
  }

  return 0;
}

void sub_992480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9924B0(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_99374C(a1 + 24, *(a2 + 3), *(a2 + 4), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 4) - *(a2 + 3)) >> 4));
  *(a1 + 144) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 148) = 0x8000000080000000;
  return a1;
}

void sub_992544(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_992560(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(a1 + 72));
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_5:
    v2 = *(a1 + 24);
    if (!v2)
    {
      goto LABEL_6;
    }

LABEL_12:
    v4 = *(a1 + 32);
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 -= 80;
        sub_993AF8(v4);
      }

      while (v4 != v2);
      v5 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v5);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_16;
  }

LABEL_11:
  operator delete(*(a1 + 48));
  v2 = *(a1 + 24);
  if (v2)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_16:
  operator delete(*a1);
  return a1;
}

void **sub_992654(uint64_t a1, void ***a2)
{
  result = (a1 + 48);
  if (result != a2)
  {
    if (*(a1 + 71) < 0)
    {
      v5 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v6 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v6 = v5;
      }

      return sub_13B38(result, a2, v6);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      return sub_13A68(result, *a2, a2[1]);
    }

    else
    {
      v4 = *a2;
      result[2] = a2[2];
      *result = v4;
    }
  }

  return result;
}

void **sub_9926AC(uint64_t a1, void ***a2)
{
  result = (a1 + 72);
  if (result != a2)
  {
    if (*(a1 + 95) < 0)
    {
      v5 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v6 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v6 = v5;
      }

      return sub_13B38(result, a2, v6);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      return sub_13A68(result, *a2, a2[1]);
    }

    else
    {
      v4 = *a2;
      result[2] = a2[2];
      *result = v4;
    }
  }

  return result;
}

void **sub_992704(uint64_t a1, int a2, void **a3)
{
  *(a1 + 148) = a2;
  result = (a1 + 96);
  if (result != a3)
  {
    v5 = *(a1 + 119);
    v6 = *(a3 + 23);
    if (v5 < 0)
    {
      if (v6 >= 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = *a3;
      }

      if (v6 >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = a3[1];
      }

      return sub_13B38(result, v8, v9);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      return sub_13A68(result, *a3, a3[1]);
    }

    else
    {
      v7 = *a3;
      result[2] = a3[2];
      *result = v7;
    }
  }

  return result;
}

void **sub_99275C(uint64_t a1, int a2, void **a3)
{
  *(a1 + 152) = a2;
  result = (a1 + 120);
  if (result != a3)
  {
    v5 = *(a1 + 143);
    v6 = *(a3 + 23);
    if (v5 < 0)
    {
      if (v6 >= 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = *a3;
      }

      if (v6 >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = a3[1];
      }

      return sub_13B38(result, v8, v9);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      return sub_13A68(result, *a3, a3[1]);
    }

    else
    {
      v7 = *a3;
      result[2] = a3[2];
      *result = v7;
    }
  }

  return result;
}

void sub_9927BC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 56);
  v5 = *(a2 + 64);
  if (v4 != v5 && *(a1 + 144))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void sub_992A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_992A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a10);
  _Unwind_Resume(a1);
}

void sub_992A58(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (a1 != 0x7FFFFFFFLL)
  {
    v5 = *(a2 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 8);
    }

    if (v5)
    {
      v6 = *(a3 + 23);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(a3 + 8);
      }

      if (v6)
      {
        sub_25BE0(v8, a2);
        sub_386C(&v7, a1, v8);
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
}

void sub_992B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15)
{
  sub_3874(&a9);
  sub_25F00(&a15);
  _Unwind_Resume(a1);
}

void sub_992B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_25F00(va);
  _Unwind_Resume(a1);
}

void sub_992B54(const void **__s2@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 24);
  if (v7 != v6)
  {
    if (*(__s2 + 23) >= 0)
    {
      v8 = *(__s2 + 23);
    }

    else
    {
      v8 = __s2[1];
    }

    if ((*(__s2 + 23) & 0x80) != 0)
    {
      v9 = *__s2;
      while (1)
      {
        v13 = *(v7 + 23);
        v14 = v13;
        if ((v13 & 0x80u) != 0)
        {
          v13 = *(v7 + 8);
        }

        if (v13 == v8)
        {
          v15 = v14 >= 0 ? v7 : *v7;
          if (!memcmp(v15, v9, v8))
          {
            break;
          }
        }

        v7 += 80;
        if (v7 == v6)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      while (1)
      {
        v10 = *(v7 + 23);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(v7 + 8);
        }

        if (v10 == v8)
        {
          v12 = v11 >= 0 ? v7 : *v7;
          if (!memcmp(v12, __s2, v8))
          {
            break;
          }
        }

        v7 += 80;
        if (v7 == v6)
        {
          goto LABEL_44;
        }
      }
    }
  }

  if (v7 == v6)
  {
    goto LABEL_44;
  }

  v16 = *(v7 + 24);
  if (v16 <= 2)
  {
    if (*(v7 + 24))
    {
      if (v16 == 1)
      {
        v31 = 0;
        v35 = 1;
        *&v37[8] = 0u;
        memset(v30, 0, 32);
        *&v30[28] = -1;
        v32 = 0u;
        v33 = 0u;
        memset(v34, 0, sizeof(v34));
        v36 = 0u;
        *v37 = 0u;
        *&v37[16] = 0x7FFFFFFF;
        if (*(a2 + 71) < 0)
        {
          sub_325C(a3, *(a2 + 48), *(a2 + 56));
        }

        else
        {
          *a3 = *(a2 + 48);
          *(a3 + 16) = *(a2 + 64);
        }
      }

      else
      {
        if (v16 != 2)
        {
          goto LABEL_44;
        }

        v31 = 0;
        v35 = 1;
        *&v37[8] = 0u;
        memset(v30, 0, 32);
        *&v30[28] = -1;
        v32 = 0u;
        v33 = 0u;
        memset(v34, 0, sizeof(v34));
        v36 = 0u;
        *v37 = 0u;
        *&v37[16] = 0x7FFFFFFF;
        if (*(a2 + 95) < 0)
        {
          sub_325C(a3, *(a2 + 72), *(a2 + 80));
        }

        else
        {
          *a3 = *(a2 + 72);
          *(a3 + 16) = *(a2 + 88);
        }
      }

      sub_55C01C(a3 + 24, v30);
      sub_53F320(v30);
      return;
    }

LABEL_44:
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 160) = 0;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 52) = -1;
    *(a3 + 108) = 0u;
    *(a3 + 124) = 1;
    *(a3 + 160) = 0x7FFFFFFF;
    return;
  }

  if (*(v7 + 24) <= 4u)
  {
    if (v16 == 3)
    {
      sub_992A58(*(a2 + 148), a2 + 96, v7 + 32, __p);
      v31 = 0;
      v35 = 1;
      *&v37[8] = 0u;
      memset(v30, 0, 32);
      *&v30[28] = -1;
      v32 = 0u;
      v33 = 0u;
      memset(v34, 0, sizeof(v34));
      v36 = 0u;
      *v37 = 0u;
      *&v37[16] = 0x7FFFFFFF;
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
        *a3 = *__p;
        *(a3 + 16) = v29;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v16 == 4)
    {
      sub_992A58(*(a2 + 152), a2 + 120, v7 + 32, __p);
      v31 = 0;
      v35 = 1;
      *&v37[8] = 0u;
      memset(v30, 0, 32);
      *&v30[28] = -1;
      v32 = 0u;
      v33 = 0u;
      memset(v34, 0, sizeof(v34));
      v36 = 0u;
      *v37 = 0u;
      *&v37[16] = 0x7FFFFFFF;
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
        *a3 = *__p;
        *(a3 + 16) = v29;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    goto LABEL_44;
  }

  if (v16 != 5)
  {
    if (v16 == 6)
    {
      if (*(__s2 + 23) >= 0)
      {
        v17 = *(__s2 + 23);
      }

      else
      {
        v17 = __s2[1];
      }

      if (v17 + 1 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v17 + 1 >= 0x17)
      {
        operator new();
      }

      *&v30[16] = 0;
      v30[23] = v17 + 1;
      *v30 = 0x7BuLL;
      if (v17)
      {
        if (*(__s2 + 23) >= 0)
        {
          v18 = __s2;
        }

        else
        {
          v18 = *__s2;
        }

        memmove(&v30[1], v18, v17);
      }

      v30[v17 + 1] = 0;
      v19 = std::string::append(v30, "}", 1uLL);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v29 = v19->__r_.__value_.__r.__words[2];
      *__p = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if ((v30[23] & 0x80000000) != 0)
      {
        operator delete(*v30);
      }

      sub_649B9C(v30, __p, 9);
      if (SHIBYTE(v29) < 0)
      {
        sub_325C(a3, __p[0], __p[1]);
      }

      else
      {
        *a3 = *__p;
        *(a3 + 16) = v29;
      }

      *(a3 + 24) = *v30;
      v21 = *&v30[16];
      v22 = *&v30[24];
      *&v30[8] = 0u;
      v23 = v32;
      v32 = 0u;
      v24 = v33;
      v33 = 0u;
      *(a3 + 64) = v23;
      *(a3 + 80) = v24;
      *(a3 + 96) = *v34;
      *v34 = 0u;
      v25 = v36;
      v36 = 0u;
      v26 = *v37;
      *v37 = 0u;
      *v30 = 0;
      *(a3 + 40) = v21;
      *(a3 + 48) = v22;
      *(a3 + 56) = *&v30[32];
      v27 = *&v34[16];
      *&v34[16] = 0;
      *(a3 + 112) = v27;
      LODWORD(v27) = *&v34[24];
      *(a3 + 124) = v35;
      *(a3 + 120) = v27;
      *(a3 + 128) = v25;
      *(a3 + 144) = v26;
      *(a3 + 160) = *&v37[16];
      sub_53F320(v30);
      if (SHIBYTE(v29) < 0)
      {
        goto LABEL_63;
      }

      return;
    }

    goto LABEL_44;
  }

  sub_9927BC(a2, v7, __p);
  v31 = 0;
  v35 = 1;
  *&v37[8] = 0u;
  memset(v30, 0, 32);
  *&v30[28] = -1;
  v32 = 0u;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v36 = 0u;
  *v37 = 0u;
  *&v37[16] = 0x7FFFFFFF;
  if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    *a3 = *__p;
    *(a3 + 16) = v29;
    goto LABEL_62;
  }

LABEL_61:
  sub_325C(a3, __p[0], __p[1]);
LABEL_62:
  sub_55C01C(a3 + 24, v30);
  sub_53F320(v30);
  if (SHIBYTE(v29) < 0)
  {
LABEL_63:
    operator delete(__p[0]);
  }
}

void sub_993178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_53F320(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_993224@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_9932C8(a2, v5);
  if (sub_4D1F6C(v5))
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    return sub_53A868(v5);
  }

  if (*(v5[0] + 23) < 0)
  {
    sub_325C(a1, *v5[0], *(v5[0] + 8));
    return sub_53A868(v5);
  }

  v4 = *v5[0];
  *(a1 + 16) = *(v5[0] + 16);
  *a1 = v4;
  return sub_53A868(v5);
}

uint64_t sub_9932C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_64B998(&v47);
  if (*(a1 + 23) < 0)
  {
    sub_325C(&v46, *a1, *(a1 + 8));
  }

  else
  {
    v46 = *a1;
  }

  v4 = 0;
  v5 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  size = v46.__r_.__value_.__l.__size_;
  if (v4 < v46.__r_.__value_.__l.__size_)
  {
    v7 = v46.__r_.__value_.__r.__words[0];
    while (1)
    {
      v8 = memchr(v7 + v4, 123, size - v4);
      v9 = v8 - v7;
      if (v8)
      {
        v10 = v9 == -1;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        break;
      }

      v11 = v9 + 1;
      v12 = v46.__r_.__value_.__l.__size_;
      v13 = (v5 & 0x80000000) == 0 ? v5 : v46.__r_.__value_.__l.__size_;
      if (v13 <= v11)
      {
        break;
      }

      v14 = v46.__r_.__value_.__r.__words[0];
      v15 = (v5 & 0x80000000) == 0 ? &v46 : v46.__r_.__value_.__r.__words[0];
      v16 = memchr(v15 + v11, 125, v13 - v11);
      v17 = v16 - v15;
      if (!v16 || v17 == -1)
      {
        break;
      }

      v19 = v17 - v9;
      v20 = v17 - v9 - 1;
      if (v17 - v9 == 1)
      {
        v4 = v17 + 1;
        v5 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          goto LABEL_7;
        }

        goto LABEL_9;
      }

      if ((v5 & 0x80000000) != 0)
      {
        if (v12 <= v9)
        {
LABEL_76:
          sub_49D4();
        }

        v5 = v12;
        if (v12 - v11 >= v20)
        {
          v21 = v17 - v9 - 1;
        }

        else
        {
          v21 = v12 - v11;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_77:
          sub_3244();
        }
      }

      else
      {
        if (v9 >= v5)
        {
          goto LABEL_76;
        }

        v14 = &v46;
        if (v5 - v11 >= v20)
        {
          v21 = v17 - v9 - 1;
        }

        else
        {
          v21 = v5 - v11;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_77;
        }
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v45 = v21;
      if (v5 != v11)
      {
        memmove(&__dst, v14 + v11, v21);
      }

      *(&__dst + v21) = 0;
      sub_992B54(&__dst, a1, &__p);
      v22 = v41;
      v23 = v41;
      v24 = v40;
      if ((v41 & 0x80u) == 0)
      {
        v25 = v41;
      }

      else
      {
        v25 = v40;
      }

      if (v25)
      {
        v26 = v43;
        if ((v43 & 0x80u) != 0)
        {
          v26 = *(&v42 + 1);
        }

        if (v26)
        {
          v27 = *(&v49 + 1);
          if (*(&v49 + 1) >= v50)
          {
            v28 = sub_650B18(&v49, &v42);
          }

          else
          {
            sub_55C01C(*(&v49 + 1), &v42);
            v28 = v27 + 144;
          }

          *(&v49 + 1) = v28;
          v22 = v41;
          v24 = v40;
          v23 = v41;
        }

        if ((v23 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v23 & 0x80u) == 0)
        {
          v30 = v22;
        }

        else
        {
          v30 = v24;
        }

        std::string::replace(&v46, v9, v19 + 1, p_p, v30);
        v31 = v41;
        if ((v41 & 0x80u) != 0)
        {
          v31 = v40;
        }

        v4 = v31 + v9;
        sub_53F320(&v42);
        if ((v41 & 0x80000000) == 0)
        {
LABEL_54:
          if ((v45 & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

          goto LABEL_69;
        }
      }

      else
      {
        sub_64B998(a2);
        sub_53F320(&v42);
        if ((v41 & 0x80000000) == 0)
        {
          goto LABEL_54;
        }
      }

      operator delete(__p);
      if ((v45 & 0x80000000) == 0)
      {
LABEL_55:
        if (!v25)
        {
          goto LABEL_73;
        }

        goto LABEL_70;
      }

LABEL_69:
      operator delete(__dst);
      if (!v25)
      {
        goto LABEL_73;
      }

LABEL_70:
      ++v4;
      v5 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        goto LABEL_7;
      }

LABEL_9:
      if (v4 >= v5)
      {
        break;
      }

      v7 = &v46;
      size = v5;
    }
  }

  sub_64C184(&v47, &v46);
  v32 = v50;
  *(a2 + 16) = v48;
  *a2 = v47;
  v47 = 0uLL;
  *(a2 + 24) = v49;
  *(a2 + 40) = v32;
  v50 = 0;
  v49 = 0uLL;
  *(a2 + 48) = v51;
  *(a2 + 64) = v52;
  v48 = 0;
  v51 = 0uLL;
  *(a2 + 72) = v53;
  v52 = 0;
  v53 = 0uLL;
  v34 = v54;
  v33 = v55;
  v54 = 0;
  v55 = 0;
  *(a2 + 88) = v34;
  *(a2 + 96) = v33;
  LODWORD(v33) = v56;
  *(a2 + 108) = v57;
  *(a2 + 104) = v33;
  v35 = v58;
  v36 = v61;
  *(a2 + 128) = v59;
  *(a2 + 112) = v35;
  v58 = 0uLL;
  v37 = v60;
  *(a2 + 152) = v36;
  *(a2 + 136) = v37;
  v59 = 0;
  v60 = 0uLL;
  v61 = 0;
LABEL_73:
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  return sub_53A868(&v47);
}

void sub_9936B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_9936CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_993C48(&a9);
  if (a35 < 0)
  {
    operator delete(__p);
    if ((a41 & 0x80000000) == 0)
    {
LABEL_3:
      sub_53A868(&a43);
      _Unwind_Resume(a1);
    }
  }

  else if ((a41 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a36);
  sub_53A868(&a43);
  _Unwind_Resume(a1);
}

void sub_99374C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x333333333333334)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_993830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v12)
  {
    v14 = v11 - 80;
    v15 = -v12;
    do
    {
      sub_993AF8(v14);
      v14 -= 80;
      v15 += 80;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_993BD0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_993868(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    *(a1 + 24) = *(a2 + 24);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a1 + 24) = *(a2 + 24);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 32), *(a2 + 4), *(a2 + 5));
LABEL_6:
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = *(a2 + 7);
  v6 = *(a2 + 8);
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_993998(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_9939F8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_325C(v4, *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        *(v4 + 16) = *(v6 + 2);
        *v4 = v8;
      }

      if (*(v6 + 47) < 0)
      {
        sub_325C((v4 + 24), *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v7 = *(v6 + 24);
        *(v4 + 40) = *(v6 + 5);
        *(v4 + 24) = v7;
      }

      v6 += 3;
      v4 = v10 + 48;
      v10 += 48;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_993AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_2C19CC(&a9);
  _Unwind_Resume(a1);
}

void sub_993AF8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 64) = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *(a1 + 56);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return;
  }

  v6 = *a1;

  operator delete(v6);
}

void ***sub_993BD0(void ***result)
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
          v4 -= 80;
          sub_993AF8(v4);
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

uint64_t sub_993C48(uint64_t a1)
{
  sub_53F320(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_993E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void sub_993E6C(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t **a3@<X2>, void *a4@<X8>)
{
  *v23 = 0u;
  *v24 = 0u;
  v25 = 1065353216;
  v7 = *a3;
  v8 = a3[1];
  if (*a3 != v8)
  {
    do
    {
      if (!v24[1])
      {
        v9 = sub_504BC8(*a1, *v7, 0, "transfer");
        *&v26 = *(v9 + *(v9 - *v9 + 6));
        LODWORD(v27) = 0;
        sub_995D50(v23, &v26, &v26, &v27);
      }

      v10 = sub_504BC8(*a1, *v7, 0, "transfer");
      *&v26 = *(v10 + *(v10 - *v10 + 8));
      v27 = v24[1];
      sub_9960C4(v23, &v26, &v26, &v27);
      ++v7;
    }

    while (v7 != v8);
  }

  v11 = *a1;
  v12 = sub_994FB4(*a1, a2, 0, "transfer graph");
  v14 = (v12 - *v12);
  if (*v14 >= 0xBu)
  {
    v15 = v14[5];
    if (v15)
    {
      v16 = (v12 + v15 + *(v12 + v15));
      v17 = *v16;
      if (v17)
      {
        v18 = 8 * v17;
        v19 = v16 + 1;
        do
        {
          if (*(v11 + 3888) != 1 || sub_2D5204(*(v11 + 3872)))
          {
            operator new();
          }

          v19 += 2;
          v18 -= 8;
        }

        while (v18);
      }
    }
  }

  sub_996438(0, 0, 0, 1, v13);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v20 = v24[0];
  if (v24[0])
  {
    do
    {
      v21 = *v20;
      operator delete(v20);
      v20 = v21;
    }

    while (v21);
  }

  v22 = v23[0];
  v23[0] = 0;
  if (v22)
  {
    operator delete(v22);
  }
}

void sub_9945C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, ...)
{
  va_start(va, __p);
  if (__p)
  {
    operator delete(__p);
    if (!a10)
    {
      goto LABEL_6;
    }
  }

  else if (!a10)
  {
LABEL_6:
    sub_11BD8(va);
    _Unwind_Resume(a1);
  }

  operator delete(a10);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_99470C(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a3 == *(a3 + 8) || (v6 = a1, v7 = sub_994FB4(*a1, a2, 0, "transfer graph"), v8 = (v7 - *v7), *v8 < 0xBu) || (v9 = v8[5]) == 0 || !*(v7 + v9 + *(v7 + v9)))
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 24) = 0;
    *(a5 + 16) = 0;
    return;
  }

  *(v6 + 24) = 1;
  sub_7E9A4(v76);
  sub_993E6C(v6, a2, a3, &v74);
  nullsub_1();
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 24) = 0;
  *(a5 + 16) = 0;
  v10 = v74;
  v63 = v75;
  if (v74 == v75)
  {
    goto LABEL_117;
  }

  v62 = v6;
  while (2)
  {
    v73 = *v10;
    v11 = sub_995140(*v6, v73, 0, "transfer instruction");
    v12 = (v11 - *v11);
    if (*v12 < 0xBu || (v13 = v12[5]) == 0)
    {
      v65 = 0;
      size = 0;
      v18 = 0;
      memset(&v72, 0, sizeof(v72));
      memset(&v71, 0, sizeof(v71));
      goto LABEL_52;
    }

    v14 = v11 + v13;
    v15 = *(v11 + v13);
    memset(&v68, 0, sizeof(v68));
    sub_9952CC(&v68.__r_.__value_.__l.__data_, *(v11 + v13 + v15));
    sub_995650(&v14[v15], &v68);
    v72 = v68;
    memset(&v71, 0, sizeof(v71));
    size = v68.__r_.__value_.__l.__size_;
    v17 = v68.__r_.__value_.__r.__words[0];
    v64 = v68.__r_.__value_.__r.__words[0] == v68.__r_.__value_.__l.__size_;
    v65 = v68.__r_.__value_.__r.__words[0];
    if (v68.__r_.__value_.__r.__words[0] == v68.__r_.__value_.__l.__size_)
    {
      v18 = 0;
LABEL_52:
      v64 = 1;
      v33 = 0;
      v34 = a5;
      v35 = *(a5 + 8);
      goto LABEL_74;
    }

    do
    {
      while (1)
      {
        sub_9D69F4(v17, &v68);
        v19 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
        v20 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
        v21 = v68.__r_.__value_.__l.__size_;
        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = v68.__r_.__value_.__l.__size_;
        }

        if (v22)
        {
          v23 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
          v24 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
          v25 = v71.__r_.__value_.__l.__size_;
          if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v26 = v71.__r_.__value_.__l.__size_;
          }

          if (v26)
          {
            std::string::append(&v71, ", ", 2uLL);
            v19 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
            v21 = v68.__r_.__value_.__l.__size_;
            v23 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
            v25 = v71.__r_.__value_.__l.__size_;
            v24 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
            v20 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
          }

          if (v20 >= 0)
          {
            v27 = &v68;
          }

          else
          {
            v27 = v68.__r_.__value_.__r.__words[0];
          }

          if (v20 >= 0)
          {
            v28 = v19;
          }

          else
          {
            v28 = v21;
          }

          if (v24 >= 0)
          {
            v29 = 22;
          }

          else
          {
            v29 = (v71.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if (v24 >= 0)
          {
            v30 = v23;
          }

          else
          {
            v30 = v25;
          }

          if (v29 - v30 < v28)
          {
            if (0x7FFFFFFFFFFFFFF6 - v29 >= v30 + v28 - v29)
            {
              operator new();
            }

            sub_3244();
          }

          if (v28)
          {
            if (v24 >= 0)
            {
              v31 = &v71;
            }

            else
            {
              v31 = v71.__r_.__value_.__r.__words[0];
            }

            memmove(v31 + v30, v27, v28);
            v32 = v30 + v28;
            if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
            {
              v71.__r_.__value_.__l.__size_ = v30 + v28;
            }

            else
            {
              *(&v71.__r_.__value_.__s + 23) = v32 & 0x7F;
            }

            v31->__r_.__value_.__s.__data_[v32] = 0;
          }
        }

        if ((v70 & 0x80000000) == 0)
        {
          break;
        }

        operator delete(__p);
        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_48;
        }

LABEL_14:
        v17 += 88;
        if (v17 == size)
        {
          goto LABEL_70;
        }
      }

      if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

LABEL_48:
      operator delete(v68.__r_.__value_.__l.__data_);
      v17 += 88;
    }

    while (v17 != size);
LABEL_70:
    v18 = v71.__r_.__value_.__l.__size_;
    v33 = SHIBYTE(v71.__r_.__value_.__r.__words[2]);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v45 = v71.__r_.__value_.__l.__size_;
    }

    v34 = a5;
    v35 = *(a5 + 8);
    if (v45)
    {
      if (*a5 == v35)
      {
        goto LABEL_65;
      }

      v36 = *(v35 - 9);
      v37 = v36;
      if ((v36 & 0x80u) != 0)
      {
        v36 = *(v35 - 24);
      }

      if (v36 != v45)
      {
LABEL_65:
        v40 = 0;
        v34 = a5;
        v67 = 0;
        if (v35 >= *(a5 + 16))
        {
          goto LABEL_75;
        }

        goto LABEL_66;
      }

      if (v37 >= 0)
      {
        v38 = (v35 - 32);
      }

      else
      {
        v38 = *(v35 - 32);
      }

      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v71;
      }

      else
      {
        v39 = v71.__r_.__value_.__r.__words[0];
      }

      v40 = memcmp(v38, v39, v45) == 0;
      v34 = a5;
      v67 = v40;
      if (v35 < *(a5 + 16))
      {
        goto LABEL_66;
      }

LABEL_75:
      v6 = v62;
      v42 = v65;
      *(a5 + 8) = sub_995AB0(v34, &v73, &v71, &v67);
      if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

LABEL_74:
    v40 = 1;
    v67 = 1;
    if (v35 >= v34[2])
    {
      goto LABEL_75;
    }

LABEL_66:
    v41 = v73;
    if (v33 < 0)
    {
      sub_325C(&v68, v71.__r_.__value_.__l.__data_, v18);
      v40 = v67;
      v6 = v62;
      v42 = v65;
      *v35 = v41;
      v43 = v35 + 8;
      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_108;
      }

LABEL_68:
      v44 = *&v68.__r_.__value_.__l.__data_;
      *(v43 + 16) = *(&v68.__r_.__value_.__l + 2);
      *v43 = v44;
      *(v35 + 32) = v40;
      *(a5 + 8) = v35 + 40;
      if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

LABEL_76:
      operator delete(v71.__r_.__value_.__l.__data_);
      goto LABEL_77;
    }

    v68 = v71;
    v6 = v62;
    v42 = v65;
    *v35 = v73;
    v43 = v35 + 8;
    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_108:
    sub_325C(v43, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
    v57 = SHIBYTE(v68.__r_.__value_.__r.__words[2]);
    *(v35 + 32) = v40;
    if (v57 < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
      *(a5 + 8) = v35 + 40;
      if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    *(a5 + 8) = v35 + 40;
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_76;
    }

LABEL_77:
    if (v42)
    {
      if (!v64)
      {
        do
        {
          v46 = *(size - 24);
          if (v46)
          {
            v47 = *(size - 16);
            v48 = *(size - 24);
            if (v47 != v46)
            {
              do
              {
                v49 = *(v47 - 3);
                if (v49)
                {
                  v50 = *(v47 - 2);
                  v51 = *(v47 - 3);
                  if (v50 != v49)
                  {
                    do
                    {
                      if (*(v50 - 1) < 0)
                      {
                        operator delete(*(v50 - 3));
                      }

                      v50 -= 4;
                    }

                    while (v50 != v49);
                    v51 = *(v47 - 3);
                  }

                  *(v47 - 2) = v49;
                  operator delete(v51);
                }

                v52 = v47 - 8;
                if (*(v47 - 41) < 0)
                {
                  operator delete(*v52);
                }

                v47 -= 8;
              }

              while (v52 != v46);
              v48 = *(size - 24);
            }

            *(size - 16) = v46;
            operator delete(v48);
          }

          v53 = *(size - 48);
          if (v53)
          {
            v54 = *(size - 40);
            v55 = *(size - 48);
            if (v54 != v53)
            {
              do
              {
                if (*(v54 - 1) < 0)
                {
                  operator delete(*(v54 - 24));
                }

                v54 -= 32;
              }

              while (v54 != v53);
              v55 = *(size - 48);
            }

            *(size - 40) = v53;
            operator delete(v55);
          }

          v56 = (size - 88);
          if (*(size - 65) < 0)
          {
            operator delete(*v56);
          }

          size -= 88;
        }

        while (v56 != v42);
      }

      operator delete(v42);
    }

    if (++v10 != v63)
    {
      continue;
    }

    break;
  }

  if (v74 != v75)
  {
    v58 = sub_504BC8(*v6, *(*(a3 + 8) - 8), 0, "transfer");
    v59 = *(v58 + *(v58 - *v58 + 8));
    v60 = sub_995140(*v6, *(v75 - 1), 0, "transfer instruction");
    *(a5 + 24) = v59 == *(v60 + *(v60 - *v60 + 6));
  }

LABEL_117:
  *(v6 + 2) = sub_7EA60(v76);
  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }
}

void sub_994EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void ***a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  sub_3108E8(a16);
  v37 = *(v35 - 144);
  if (v37)
  {
    *(v35 - 136) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void **sub_994F58(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_995430(v3 - 88);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_994FB4(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_2C939C(a1, a2, a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0x25u)
  {
    v9 = *(v8 + 18);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v6)
      {
        return &v9[v6 + 1] + v9[v6 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v6;
      v20 = v12;
      v18[0] = sub_7FCF0(6u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v6 + 1] + v9[v6 + 1];
  }

  return 0;
}

void sub_995110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_995140(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_2C939C(a1, a2, a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0x27u)
  {
    v9 = *(v8 + 19);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v6)
      {
        return &v9[v6 + 1] + v9[v6 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v6;
      v20 = v12;
      v18[0] = sub_7FCF0(6u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v6 + 1] + v9[v6 + 1];
  }

  return 0;
}

void sub_99529C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_9952CC(void **a1, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_1794();
  }
}

uint64_t sub_995430(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 64);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            do
            {
              if (*(v6 - 1) < 0)
              {
                operator delete(*(v6 - 3));
              }

              v6 -= 4;
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v8 = v3 - 8;
        if (*(v3 - 41) < 0)
        {
          operator delete(*v8);
        }

        v3 -= 8;
      }

      while (v8 != v2);
      v4 = *(a1 + 64);
    }

    *(a1 + 72) = v2;
    operator delete(v4);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    if (v10 != v9)
    {
      do
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 24));
        }

        v10 -= 32;
      }

      while (v10 != v9);
      v11 = *(a1 + 40);
    }

    *(a1 + 48) = v9;
    operator delete(v11);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void ***sub_995568(void ***a1)
{
  if (*a1)
  {
    sub_9955A4(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_9955A4(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 3);
      if (v4)
      {
        v5 = *(v3 - 2);
        v6 = *(v3 - 3);
        if (v5 != v4)
        {
          do
          {
            if (*(v5 - 1) < 0)
            {
              operator delete(*(v5 - 3));
            }

            v5 -= 4;
          }

          while (v5 != v4);
          v6 = *(v3 - 3);
        }

        *(v3 - 2) = v4;
        operator delete(v6);
      }

      v7 = v3 - 8;
      if (*(v3 - 41) < 0)
      {
        operator delete(*v7);
      }

      v3 -= 8;
    }

    while (v7 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_995650(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = 4 * v3;
    v5 = a1 + 1;
    do
    {
      sub_995754((v5 + *v5), &v10);
      v8 = *(a2 + 8);
      if (v8 < *(a2 + 16))
      {
        v6 = v10;
        *(v8 + 16) = v11;
        *v8 = v6;
        v11 = 0;
        v10 = 0uLL;
        *(v8 + 24) = v12;
        *(v8 + 48) = 0;
        *(v8 + 56) = 0;
        *(v8 + 40) = 0;
        *(v8 + 40) = v13;
        *(v8 + 56) = v14;
        *(v8 + 64) = 0;
        v13 = 0uLL;
        *(v8 + 72) = 0;
        *(v8 + 80) = 0;
        *(v8 + 64) = v15;
        *(v8 + 80) = v16;
        v14 = 0;
        v15 = 0uLL;
        v16 = 0;
        v7 = (v8 + 88);
      }

      else
      {
        v7 = sub_9958D0(a2, &v10);
      }

      *(a2 + 8) = v7;
      sub_995430(&v10);
      ++v5;
      v4 -= 4;
    }

    while (v4);
  }

  return a2;
}

void sub_995754(int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 2;
  *(a3 + 32) = sub_12331FC();
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  v5 = (a2 - *a2);
  if (*v5 >= 5u && (v6 = v5[2]) != 0)
  {
    v7 = (a2 + v6 + *(a2 + v6));
  }

  else
  {
    v7 = 0;
  }

  sub_509164(v7, &v14);
  *a3 = v14;
  *(a3 + 16) = v15;
  *(a3 + 24) = v16;
  v8 = v18;
  *(a3 + 40) = v17;
  *(a3 + 56) = v8;
  v9 = (a2 - *a2);
  if (*v9 >= 7u && (v10 = v9[3]) != 0)
  {
    v11 = (a2 + v10 + *(a2 + v10));
    v14 = 0uLL;
    v15 = 0;
    sub_943AEC(&v14, *v11);
    v20 = (v11 + 1);
    v19 = &v11[*v11 + 1];
    sub_943E24(&v20, &v19, &v14, sub_509164);
    v12 = v14;
    v13 = v15;
  }

  else
  {
    v13 = 0;
    v12 = 0uLL;
  }

  *(a3 + 64) = v12;
  *(a3 + 80) = v13;
}

void sub_9958A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_995568(&a9);
  sub_995430(v9);
  _Unwind_Resume(a1);
}

void *sub_9958D0(void **a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v4 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 8 * ((a1[1] - *a1) >> 3);
  *v5 = *a2;
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 40) = *(a2 + 40);
  *(v5 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = *(a2 + 80);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v6 = (v5 + 88);
  v7 = *a1;
  v8 = a1[1];
  v9 = (v5 + *a1 - v8);
  if (*a1 != v8)
  {
    v10 = *a1;
    v11 = (v5 + *a1 - v8);
    do
    {
      v12 = *v10;
      *(v11 + 2) = *(v10 + 2);
      *v11 = v12;
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      *(v11 + 24) = *(v10 + 24);
      *(v11 + 6) = 0;
      *(v11 + 7) = 0;
      *(v11 + 40) = *(v10 + 40);
      *(v11 + 7) = *(v10 + 7);
      *(v10 + 5) = 0;
      *(v10 + 6) = 0;
      *(v10 + 7) = 0;
      *(v11 + 9) = 0;
      *(v11 + 10) = 0;
      *(v11 + 4) = *(v10 + 4);
      *(v11 + 10) = *(v10 + 10);
      *(v10 + 8) = 0;
      *(v10 + 9) = 0;
      *(v10 + 10) = 0;
      v10 += 88;
      v11 += 88;
    }

    while (v10 != v8);
    do
    {
      v7 = (sub_995430(v7) + 88);
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

uint64_t sub_995AB0(unint64_t *a1, uint64_t *a2, uint64_t a3, char *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v7 = 0x666666666666666;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 8 * ((a1[1] - *a1) >> 3);
  sub_995C64(v16, a2, a3, a4);
  v8 = 40 * v4 + 40;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = v16 + *a1 - v10;
    v13 = *a1;
    do
    {
      *v12 = *v13;
      v14 = *(v13 + 8);
      *(v12 + 24) = *(v13 + 24);
      *(v12 + 8) = v14;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = 0;
      *(v12 + 32) = *(v13 + 32);
      v13 += 40;
      v12 += 40;
    }

    while (v13 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 40;
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

void sub_995C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_C5440(va);
  _Unwind_Resume(a1);
}

uint64_t sub_995C64(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4)
{
  v6 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C(__p, *a3, *(a3 + 8));
    v7 = *a4;
    *a1 = v6;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *__p = *a3;
    v12 = *(a3 + 16);
    v7 = *a4;
    *a1 = v6;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
LABEL_3:
      *v8 = *__p;
      *(v8 + 16) = v12;
      *(a1 + 32) = v7;
      return a1;
    }
  }

  sub_325C(v8, __p[0], __p[1]);
  v10 = SHIBYTE(v12);
  *(a1 + 32) = v7;
  if ((v10 & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(__p[0]);
  return a1;
}

void sub_995D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_995D50(void *a1, void *a2, void *a3, int *a4)
{
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_31;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6 ^ (v6 >> 33);
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v12[1];
      if (v15 == v7)
      {
        if (*(v12 + 4) == v4 && *(v12 + 5) == HIDWORD(v4))
        {
          return v12;
        }
      }

      else if ((v15 & (*&v8 - 1)) != v10)
      {
        goto LABEL_31;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v13 >= *&v8)
    {
      v13 %= *&v8;
    }

    if (v13 != v10)
    {
      goto LABEL_31;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  if (*(v12 + 4) != v4 || *(v12 + 5) != HIDWORD(v4))
  {
    goto LABEL_12;
  }

  return v12;
}

uint64_t *sub_9960C4(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_31;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6 ^ (v6 >> 33);
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v12[1];
      if (v15 == v7)
      {
        if (*(v12 + 4) == v4 && *(v12 + 5) == HIDWORD(v4))
        {
          return v12;
        }
      }

      else if ((v15 & (*&v8 - 1)) != v10)
      {
        goto LABEL_31;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v13 >= *&v8)
    {
      v13 %= *&v8;
    }

    if (v13 != v10)
    {
      goto LABEL_31;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  if (*(v12 + 4) != v4 || *(v12 + 5) != HIDWORD(v4))
  {
    goto LABEL_12;
  }

  return v12;
}

void sub_996438(unint64_t result, __n128 *a2, uint64_t a3, char a4, __n128 a5)
{
  while (2)
  {
    v9 = &a2[-2].n128_i8[8];
    v10 = &a2[-3];
    v11 = &a2[-5].n128_i8[8];
    v12 = result;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          result = v12;
          v13 = a2 - v12;
          v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
          if (v14 > 2)
          {
            switch(v14)
            {
              case 3:
                v223 = *(v12 + 32);
                v224 = *(v12 + 40);
                v225 = *(v12 + 16);
                v226 = v223 < *(v12 + 8);
                v220 = v224 == v225;
                v227 = v224 > v225;
                if (!v220)
                {
                  v226 = v227;
                }

                v228 = a2[-1].n128_u64[1];
                v229 = a2[-1].n128_u64[0] < v223;
                v220 = v228 == v224;
                v230 = v228 > v224;
                if (!v220)
                {
                  v229 = v230;
                }

                if (!v226)
                {
                  if (!v229)
                  {
                    return;
                  }

                  v310 = *(v12 + 24);
                  v311 = *(v12 + 40);
                  v312 = a2[-1].n128_i64[1];
                  *(v12 + 24) = *v9;
                  *(v12 + 40) = v312;
                  a2[-1].n128_u64[1] = v311;
                  *v9 = v310;
                  v313 = *(v12 + 40);
                  v314 = *(v12 + 16);
                  v216 = *(v12 + 32) < *(v12 + 8);
                  v220 = v313 == v314;
                  v315 = v313 > v314;
                  if (!v220)
                  {
                    v216 = v315;
                  }

                  goto LABEL_271;
                }

                if (v229)
                {
                  v376 = *(v12 + 16);
                  v352 = *v12;
                  v231 = *v9;
                  *(v12 + 16) = a2[-1].n128_u64[1];
                  *v12 = v231;
                  v232 = v352;
                  v233 = v376;
                }

                else
                {
                  v379 = *(v12 + 16);
                  v355 = *v12;
                  *v12 = *(v12 + 24);
                  *(v12 + 16) = *(v12 + 40);
                  *(v12 + 24) = v355;
                  *(v12 + 40) = v379;
                  v327 = a2[-1].n128_u64[1];
                  v328 = *(v12 + 40);
                  v329 = a2[-1].n128_u64[0] < *(v12 + 32);
                  v220 = v327 == v328;
                  v330 = v327 > v328;
                  if (!v220)
                  {
                    v329 = v330;
                  }

                  if (!v329)
                  {
                    return;
                  }

                  v232 = *(v12 + 24);
                  v233 = *(v12 + 40);
                  v331 = a2[-1].n128_i64[1];
                  *(v12 + 24) = *v9;
                  *(v12 + 40) = v331;
                }

                a2[-1].n128_u64[1] = v233;
                *v9 = v232;
                return;
              case 4:

                sub_9976B0(v12, (v12 + 24), (v12 + 48), (a2 - 24), a5);
                return;
              case 5:
                sub_9976B0(v12, (v12 + 24), (v12 + 48), (v12 + 72), a5);
                v194 = a2[-1].n128_u64[1];
                v195 = *(v12 + 88);
                v196 = a2[-1].n128_u64[0] < *(v12 + 80);
                v220 = v194 == v195;
                v197 = v194 > v195;
                if (!v220)
                {
                  v196 = v197;
                }

                if (!v196)
                {
                  return;
                }

                v198 = *(v12 + 72);
                v199 = *(v12 + 88);
                v200 = a2[-1].n128_i64[1];
                *(v12 + 72) = *(a2 - 24);
                *(v12 + 88) = v200;
                a2[-1].n128_u64[1] = v199;
                *(a2 - 24) = v198;
                v201 = *(v12 + 88);
                v202 = *(v12 + 64);
                v203 = *(v12 + 80) < *(v12 + 56);
                v220 = v201 == v202;
                v204 = v201 > v202;
                if (!v220)
                {
                  v203 = v204;
                }

                if (!v203)
                {
                  return;
                }

                v205 = *(v12 + 48);
                *(v12 + 48) = *(v12 + 72);
                v207 = *(v12 + 56);
                v206 = *(v12 + 64);
                *(v12 + 64) = *(v12 + 88);
                *(v12 + 72) = v205;
                *(v12 + 88) = v206;
                v208 = *(v12 + 64);
                v209 = *(v12 + 40);
                v220 = v208 == v209;
                v210 = v208 > v209;
                if (v220)
                {
                  v210 = v207 < *(v12 + 32);
                }

                if (!v210)
                {
                  return;
                }

                v211 = *(v12 + 24);
                *(v12 + 24) = *(v12 + 48);
                v213 = *(v12 + 32);
                v212 = *(v12 + 40);
                *(v12 + 40) = *(v12 + 64);
                *(v12 + 48) = v211;
                *(v12 + 64) = v212;
                v214 = *(v12 + 40);
                v215 = *(v12 + 16);
                v220 = v214 == v215;
                v216 = v214 > v215;
                if (v220)
                {
                  v216 = v213 < *(v12 + 8);
                }

LABEL_271:
                if (v216)
                {
                  v378 = *(v12 + 16);
                  v354 = *v12;
                  *v12 = *(v12 + 24);
                  *(v12 + 16) = *(v12 + 40);
                  *(v12 + 24) = v354;
                  *(v12 + 40) = v378;
                }

                return;
            }
          }

          else
          {
            if (v14 < 2)
            {
              return;
            }

            if (v14 == 2)
            {
              v217 = a2[-1].n128_u64[1];
              v218 = *(v12 + 16);
              v219 = a2[-1].n128_u64[0] < *(v12 + 8);
              v220 = v217 == v218;
              v221 = v217 > v218;
              if (!v220)
              {
                v219 = v221;
              }

              if (v219)
              {
                v375 = *(v12 + 16);
                v351 = *v12;
                v222 = *(&a2[-2] + 8);
                *(v12 + 16) = a2[-1].n128_u64[1];
                *v12 = v222;
                a2[-1].n128_u64[1] = v375;
                *(a2 - 24) = v351;
              }

              return;
            }
          }

          if (v13 <= 575)
          {
            v234 = (v12 + 24);
            v236 = v12 == a2 || v234 == a2;
            if (a4)
            {
              if (!v236)
              {
                v237 = 0;
                v238 = v12;
                do
                {
                  v240 = *(v238 + 32);
                  v241 = *(v238 + 40);
                  v242 = *(v238 + 8);
                  v243 = *(v238 + 16);
                  v238 = v234;
                  v244 = v240 < v242;
                  if (v241 != v243)
                  {
                    v244 = v241 > v243;
                  }

                  if (v244)
                  {
                    v245 = *v238;
                    v246 = v237;
                    do
                    {
                      v247 = v12 + v246;
                      *(v247 + 24) = *(v12 + v246);
                      *(v247 + 40) = *(v12 + v246 + 16);
                      if (!v246)
                      {
                        v239 = v12;
                        goto LABEL_204;
                      }

                      v249 = *(v247 - 16);
                      v248 = *(v247 - 8);
                      v250 = v240 < v249;
                      v220 = v241 == v248;
                      v251 = v241 > v248;
                      if (v220)
                      {
                        v251 = v250;
                      }

                      v246 -= 24;
                    }

                    while (v251);
                    v239 = (v12 + v246 + 24);
LABEL_204:
                    *v239 = v245;
                    v239[1] = v240;
                    v239[2] = v241;
                  }

                  v234 = (v238 + 24);
                  v237 += 24;
                }

                while ((v238 + 24) != a2);
              }
            }

            else if (!v236)
            {
              do
              {
                v316 = *(result + 32);
                v317 = *(result + 40);
                v318 = *(result + 8);
                v319 = *(result + 16);
                result = v234;
                v320 = v316 < v318;
                if (v317 != v319)
                {
                  v320 = v317 > v319;
                }

                if (v320)
                {
                  v321 = *result;
                  v322 = result;
                  do
                  {
                    *v322 = *(v322 - 24);
                    *(v322 + 16) = *(v322 - 8);
                    v323 = *(v322 - 40);
                    v324 = *(v322 - 32);
                    v322 -= 24;
                    v325 = v316 < v323;
                    v220 = v317 == v324;
                    v326 = v317 > v324;
                    if (!v220)
                    {
                      v325 = v326;
                    }
                  }

                  while (v325);
                  *v322 = v321;
                  *(v322 + 8) = v316;
                  *(v322 + 16) = v317;
                }

                v234 = (result + 24);
              }

              while ((result + 24) != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v12 != a2)
            {
              v252 = (v14 - 2) >> 1;
              v253 = v252;
              do
              {
                v254 = v253;
                if (v252 >= v253)
                {
                  v255 = (2 * v253) | 1;
                  v256 = (v12 + 24 * v255);
                  if (2 * v254 + 2 < v14)
                  {
                    v257 = v256[2];
                    v258 = v256[5];
                    v259 = v256[1] < v256[4];
                    v220 = v257 == v258;
                    v260 = v257 > v258;
                    if (!v220)
                    {
                      v259 = v260;
                    }

                    v261 = !v259;
                    if (v259)
                    {
                      v262 = 24;
                    }

                    else
                    {
                      v262 = 0;
                    }

                    v256 = (v256 + v262);
                    if (!v261)
                    {
                      v255 = 2 * v254 + 2;
                    }
                  }

                  v263 = (v12 + 24 * v254);
                  v264 = v256[2];
                  v265 = v263[1];
                  v266 = v263[2];
                  v267 = v256[1] < v265;
                  v220 = v264 == v266;
                  v268 = v264 > v266;
                  if (!v220)
                  {
                    v267 = v268;
                  }

                  if (!v267)
                  {
                    v269 = *v263;
                    do
                    {
                      v272 = v263;
                      v263 = v256;
                      v273 = *v256;
                      v272[2] = v256[2];
                      *v272 = v273;
                      if (v252 < v255)
                      {
                        break;
                      }

                      v274 = (2 * v255) | 1;
                      v256 = (v12 + 24 * v274);
                      v275 = 2 * v255 + 2;
                      if (v275 < v14)
                      {
                        v276 = v256[2];
                        v277 = v256[5];
                        v278 = v256[1] < v256[4];
                        v220 = v276 == v277;
                        v279 = v276 > v277;
                        if (!v220)
                        {
                          v278 = v279;
                        }

                        v280 = !v278;
                        if (v278)
                        {
                          v281 = 24;
                        }

                        else
                        {
                          v281 = 0;
                        }

                        v256 = (v256 + v281);
                        if (!v280)
                        {
                          v274 = v275;
                        }
                      }

                      v270 = v256[2];
                      v220 = v270 == v266;
                      v271 = v270 > v266;
                      if (v220)
                      {
                        v271 = v256[1] < v265;
                      }

                      v255 = v274;
                    }

                    while (!v271);
                    *v263 = v269;
                    v263[1] = v265;
                    v263[2] = v266;
                  }
                }

                v253 = v254 - 1;
              }

              while (v254);
              v282 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
              do
              {
                v284 = 0;
                v377 = *(v12 + 16);
                v353 = *v12;
                v285 = v12;
                do
                {
                  v293 = (v285 + 24 * v284);
                  v291 = (v293 + 3);
                  v294 = (2 * v284) | 1;
                  v284 = 2 * v284 + 2;
                  if (v284 < v282)
                  {
                    v286 = v293[5];
                    v287 = v293[8];
                    v288 = v293[4] < v293[7];
                    v220 = v286 == v287;
                    v289 = v286 > v287;
                    if (!v220)
                    {
                      v288 = v289;
                    }

                    v290 = (v293 + 6);
                    if (v288)
                    {
                      v291 = v290;
                    }

                    else
                    {
                      v284 = v294;
                    }
                  }

                  else
                  {
                    v284 = v294;
                  }

                  v292 = *v291;
                  *(v285 + 16) = v291[1].n128_u64[0];
                  *v285 = v292;
                  v285 = v291;
                }

                while (v284 <= ((v282 - 2) >> 1));
                a2 = (a2 - 24);
                if (v291 == a2)
                {
                  v291[1].n128_u64[0] = v377;
                  *v291 = v353;
                }

                else
                {
                  v295 = *a2;
                  v291[1].n128_u64[0] = a2[1].n128_u64[0];
                  *v291 = v295;
                  a2[1].n128_u64[0] = v377;
                  *a2 = v353;
                  v296 = &v291[1].n128_i64[1] - v12;
                  if (v296 >= 25)
                  {
                    v297 = (-2 - 0x5555555555555555 * (v296 >> 3)) >> 1;
                    v298 = v12 + 24 * v297;
                    v299 = *(v298 + 16);
                    v300 = v291->n128_u64[1];
                    v301 = v291[1].n128_u64[0];
                    v302 = *(v298 + 8) < v300;
                    v220 = v299 == v301;
                    v303 = v299 > v301;
                    if (!v220)
                    {
                      v302 = v303;
                    }

                    if (v302)
                    {
                      v304 = v291->n128_u64[0];
                      do
                      {
                        v305 = v291;
                        v291 = v298;
                        v306 = *v298;
                        v305[1].n128_u64[0] = *(v298 + 16);
                        *v305 = v306;
                        if (!v297)
                        {
                          break;
                        }

                        v297 = (v297 - 1) >> 1;
                        v298 = v12 + 24 * v297;
                        v307 = *(v298 + 16);
                        v308 = *(v298 + 8) < v300;
                        v220 = v307 == v301;
                        v309 = v307 > v301;
                        if (!v220)
                        {
                          v308 = v309;
                        }
                      }

                      while (v308);
                      v291->n128_u64[0] = v304;
                      v291->n128_u64[1] = v300;
                      v291[1].n128_u64[0] = v301;
                    }
                  }
                }
              }

              while (v282-- > 2);
            }

            return;
          }

          v15 = v14 >> 1;
          v16 = (v12 + 24 * (v14 >> 1));
          v18 = a2[-1].n128_u64[0];
          v17 = a2[-1].n128_u64[1];
          if (v13 < 0xC01)
          {
            v27 = *(v12 + 8);
            v28 = *(v12 + 16);
            v29 = v16[1].n128_u64[0];
            v30 = v27 < v16->n128_u64[1];
            v220 = v28 == v29;
            v31 = v28 > v29;
            if (!v220)
            {
              v30 = v31;
            }

            v32 = v18 < v27;
            v220 = v17 == v28;
            v33 = v17 > v28;
            if (!v220)
            {
              v32 = v33;
            }

            if (!v30)
            {
              if (v32)
              {
                v360 = *(v12 + 16);
                v336 = *v12;
                v41 = *v9;
                *(v12 + 16) = a2[-1].n128_u64[1];
                *v12 = v41;
                a5 = v336;
                a2[-1].n128_u64[1] = v360;
                *v9 = v336;
                v42 = *(v12 + 16);
                v43 = v16[1].n128_u64[0];
                v44 = *(v12 + 8) < v16->n128_u64[1];
                v220 = v42 == v43;
                v45 = v42 > v43;
                if (!v220)
                {
                  v44 = v45;
                }

                if (v44)
                {
                  v361 = v16[1].n128_u64[0];
                  v337 = *v16;
                  v46 = *v12;
                  v16[1].n128_u64[0] = *(v12 + 16);
                  *v16 = v46;
                  a5 = v337;
                  *(v12 + 16) = v361;
                  *v12 = v337;
                  --a3;
                  if (a4)
                  {
                    goto LABEL_60;
                  }

                  goto LABEL_101;
                }
              }

              goto LABEL_59;
            }

            if (v32)
            {
              v357 = v16[1].n128_u64[0];
              v333 = *v16;
              v34 = *v9;
              v16[1].n128_u64[0] = a2[-1].n128_u64[1];
              *v16 = v34;
            }

            else
            {
              v364 = v16[1].n128_u64[0];
              v340 = *v16;
              v74 = *v12;
              v16[1].n128_u64[0] = *(v12 + 16);
              *v16 = v74;
              a5 = v340;
              *(v12 + 16) = v364;
              *v12 = v340;
              v75 = a2[-1].n128_u64[1];
              v76 = *(v12 + 16);
              v77 = a2[-1].n128_u64[0] < *(v12 + 8);
              v220 = v75 == v76;
              v78 = v75 > v76;
              if (!v220)
              {
                v77 = v78;
              }

              if (!v77)
              {
LABEL_59:
                --a3;
                if (a4)
                {
                  goto LABEL_60;
                }

                goto LABEL_101;
              }

              v357 = *(v12 + 16);
              v333 = *v12;
              v79 = *v9;
              *(v12 + 16) = a2[-1].n128_u64[1];
              *v12 = v79;
            }

            a5 = v333;
            a2[-1].n128_u64[1] = v357;
            *v9 = v333;
            goto LABEL_59;
          }

          v19 = v16->n128_u64[1];
          v20 = v16[1].n128_u64[0];
          v21 = *(v12 + 16);
          v22 = v19 < *(v12 + 8);
          v220 = v20 == v21;
          v23 = v20 > v21;
          if (!v220)
          {
            v22 = v23;
          }

          v24 = v18 < v19;
          v220 = v17 == v20;
          v25 = v17 > v20;
          if (!v220)
          {
            v24 = v25;
          }

          if (v22)
          {
            if (v24)
            {
              v356 = *(v12 + 16);
              v332 = *v12;
              v26 = *v9;
              *(v12 + 16) = a2[-1].n128_u64[1];
              *v12 = v26;
LABEL_41:
              a2[-1].n128_u64[1] = v356;
              *v9 = v332;
              goto LABEL_42;
            }

            v362 = *(v12 + 16);
            v338 = *v12;
            v47 = *v16;
            *(v12 + 16) = v16[1].n128_u64[0];
            *v12 = v47;
            v16[1].n128_u64[0] = v362;
            *v16 = v338;
            v48 = a2[-1].n128_u64[1];
            v49 = v16[1].n128_u64[0];
            v50 = a2[-1].n128_u64[0] < v16->n128_u64[1];
            v220 = v48 == v49;
            v51 = v48 > v49;
            if (!v220)
            {
              v50 = v51;
            }

            if (v50)
            {
              v356 = v16[1].n128_u64[0];
              v332 = *v16;
              v52 = *v9;
              v16[1].n128_u64[0] = a2[-1].n128_u64[1];
              *v16 = v52;
              goto LABEL_41;
            }
          }

          else if (v24)
          {
            v358 = v16[1].n128_u64[0];
            v334 = *v16;
            v35 = *v9;
            v16[1].n128_u64[0] = a2[-1].n128_u64[1];
            *v16 = v35;
            a2[-1].n128_u64[1] = v358;
            *v9 = v334;
            v36 = v16[1].n128_u64[0];
            v37 = *(v12 + 16);
            v38 = v16->n128_u64[1] < *(v12 + 8);
            v220 = v36 == v37;
            v39 = v36 > v37;
            if (!v220)
            {
              v38 = v39;
            }

            if (v38)
            {
              v359 = *(v12 + 16);
              v335 = *v12;
              v40 = *v16;
              *(v12 + 16) = v16[1].n128_u64[0];
              *v12 = v40;
              v16[1].n128_u64[0] = v359;
              *v16 = v335;
            }
          }

LABEL_42:
          v53 = v12 + 24 * v15;
          v54 = (v53 - 24);
          v56 = *(v53 - 16);
          v55 = *(v53 - 8);
          v57 = *(v12 + 40);
          v58 = v56 < *(v12 + 32);
          v220 = v55 == v57;
          v59 = v55 > v57;
          if (!v220)
          {
            v58 = v59;
          }

          v60 = a2[-2].n128_u64[0];
          v61 = a2[-3].n128_u64[1] < v56;
          v220 = v60 == v55;
          v62 = v60 > v55;
          if (v220)
          {
            v62 = v61;
          }

          if (v58)
          {
            if (v62)
            {
              v63 = *(v12 + 24);
              v64 = *(v12 + 40);
              v65 = a2[-2].n128_i64[0];
              *(v12 + 24) = *v10;
              *(v12 + 40) = v65;
LABEL_65:
              a2[-2].n128_u64[0] = v64;
              *v10 = v63;
              goto LABEL_66;
            }

            v82 = *(v12 + 24);
            v83 = *(v12 + 40);
            v84 = v54[1].n128_i64[0];
            *(v12 + 24) = *v54;
            *(v12 + 40) = v84;
            v54[1].n128_u64[0] = v83;
            *v54 = v82;
            v85 = a2[-2].n128_u64[0];
            v86 = v54[1].n128_u64[0];
            v87 = a2[-3].n128_u64[1] < v54->n128_u64[1];
            v220 = v85 == v86;
            v88 = v85 > v86;
            if (!v220)
            {
              v87 = v88;
            }

            if (v87)
            {
              v365 = v54[1].n128_i64[0];
              v341 = *v54;
              v89 = *v10;
              v54[1].n128_u64[0] = a2[-2].n128_u64[0];
              *v54 = v89;
              v63 = v341;
              v64 = v365;
              goto LABEL_65;
            }
          }

          else if (v62)
          {
            v363 = v54[1].n128_i64[0];
            v339 = *v54;
            v66 = *v10;
            v54[1].n128_u64[0] = a2[-2].n128_u64[0];
            *v54 = v66;
            a2[-2].n128_u64[0] = v363;
            *v10 = v339;
            v67 = v54[1].n128_u64[0];
            v68 = *(v12 + 40);
            v69 = v54->n128_u64[1] < *(v12 + 32);
            v220 = v67 == v68;
            v70 = v67 > v68;
            if (!v220)
            {
              v69 = v70;
            }

            if (v69)
            {
              v71 = *(v12 + 24);
              v72 = *(v12 + 40);
              v73 = v54[1].n128_i64[0];
              *(v12 + 24) = *v54;
              *(v12 + 40) = v73;
              v54[1].n128_u64[0] = v72;
              *v54 = v71;
            }
          }

LABEL_66:
          v90 = v12 + 24 * v15;
          v91 = *(v90 + 32);
          v92 = *(v90 + 40);
          v93 = *(v12 + 64);
          v94 = v91 < *(v12 + 56);
          v220 = v92 == v93;
          v95 = v92 > v93;
          if (!v220)
          {
            v94 = v95;
          }

          v96 = a2[-4].n128_u64[1];
          v97 = a2[-4].n128_u64[0] < v91;
          v220 = v96 == v92;
          v98 = v96 > v92;
          if (!v220)
          {
            v97 = v98;
          }

          if (v94)
          {
            if (v97)
            {
              v99 = *(v12 + 48);
              v100 = *(v12 + 64);
              v101 = a2[-4].n128_i64[1];
              *(v12 + 48) = *v11;
              *(v12 + 64) = v101;
LABEL_82:
              a2[-4].n128_u64[1] = v100;
              *v11 = v99;
              goto LABEL_83;
            }

            v110 = *(v12 + 48);
            v111 = *(v12 + 64);
            v112 = *(v90 + 40);
            *(v12 + 48) = *(v90 + 24);
            *(v12 + 64) = v112;
            *(v90 + 40) = v111;
            *(v90 + 24) = v110;
            v113 = a2[-4].n128_u64[1];
            v114 = *(v90 + 40);
            v115 = a2[-4].n128_u64[0] < *(v90 + 32);
            v220 = v113 == v114;
            v116 = v113 > v114;
            if (!v220)
            {
              v115 = v116;
            }

            if (v115)
            {
              v367 = *(v90 + 40);
              v343 = *(v90 + 24);
              v117 = *v11;
              *(v90 + 40) = a2[-4].n128_u64[1];
              *(v90 + 24) = v117;
              v99 = v343;
              v100 = v367;
              goto LABEL_82;
            }
          }

          else if (v97)
          {
            v366 = *(v90 + 40);
            v342 = *(v90 + 24);
            v102 = *v11;
            *(v90 + 40) = a2[-4].n128_u64[1];
            *(v90 + 24) = v102;
            a2[-4].n128_u64[1] = v366;
            *v11 = v342;
            v103 = *(v90 + 40);
            v104 = *(v12 + 64);
            v105 = *(v90 + 32) < *(v12 + 56);
            v220 = v103 == v104;
            v106 = v103 > v104;
            if (!v220)
            {
              v105 = v106;
            }

            if (v105)
            {
              v107 = *(v12 + 48);
              v108 = *(v12 + 64);
              v109 = *(v90 + 40);
              *(v12 + 48) = *(v90 + 24);
              *(v12 + 64) = v109;
              *(v90 + 40) = v108;
              *(v90 + 24) = v107;
            }
          }

LABEL_83:
          v118 = v16->n128_u64[1];
          v119 = v16[1].n128_u64[0];
          v120 = v54[1].n128_u64[0];
          v121 = v118 < v54->n128_u64[1];
          v220 = v119 == v120;
          v122 = v119 > v120;
          if (!v220)
          {
            v121 = v122;
          }

          v123 = *(v90 + 40);
          v124 = *(v90 + 32) < v118;
          v220 = v123 == v119;
          v125 = v123 > v119;
          if (!v220)
          {
            v124 = v125;
          }

          if (v121)
          {
            if (v124)
            {
              v368 = v54[1].n128_u64[0];
              v344 = *v54;
              *v54 = *(v90 + 24);
              v54[1].n128_u64[0] = *(v90 + 40);
LABEL_99:
              *(v90 + 40) = v368;
              *(v90 + 24) = v344;
              goto LABEL_100;
            }

            v371 = v54[1].n128_u64[0];
            v347 = *v54;
            *v54 = *v16;
            v54[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v371;
            *v16 = v347;
            v130 = *(v90 + 40);
            v131 = v16[1].n128_u64[0];
            v132 = *(v90 + 32) < v16->n128_u64[1];
            v220 = v130 == v131;
            v133 = v130 > v131;
            if (!v220)
            {
              v132 = v133;
            }

            if (v132)
            {
              v368 = v16[1].n128_u64[0];
              v344 = *v16;
              *v16 = *(v90 + 24);
              v16[1].n128_u64[0] = *(v90 + 40);
              goto LABEL_99;
            }
          }

          else if (v124)
          {
            v369 = v16[1].n128_u64[0];
            v345 = *v16;
            *v16 = *(v90 + 24);
            v16[1].n128_u64[0] = *(v90 + 40);
            *(v90 + 40) = v369;
            *(v90 + 24) = v345;
            v126 = v16[1].n128_u64[0];
            v127 = v54[1].n128_u64[0];
            v128 = v16->n128_u64[1] < v54->n128_u64[1];
            v220 = v126 == v127;
            v129 = v126 > v127;
            if (!v220)
            {
              v128 = v129;
            }

            if (v128)
            {
              v370 = v54[1].n128_u64[0];
              v346 = *v54;
              *v54 = *v16;
              v54[1].n128_u64[0] = v16[1].n128_u64[0];
              v16[1].n128_u64[0] = v370;
              *v16 = v346;
            }
          }

LABEL_100:
          v372 = *(v12 + 16);
          v348 = *v12;
          v134 = *v16;
          *(v12 + 16) = v16[1].n128_u64[0];
          *v12 = v134;
          a5 = v348;
          v16[1].n128_u64[0] = v372;
          *v16 = v348;
          --a3;
          if (a4)
          {
LABEL_60:
            v80 = *(v12 + 8);
            v81 = *(v12 + 16);
            break;
          }

LABEL_101:
          v135 = *(v12 - 8);
          v80 = *(v12 + 8);
          v81 = *(v12 + 16);
          v136 = *(v12 - 16) < v80;
          v220 = v135 == v81;
          v137 = v135 > v81;
          if (!v220)
          {
            v136 = v137;
          }

          if (v136)
          {
            break;
          }

          v166 = a2[-1].n128_u64[1];
          v167 = v80 < a2[-1].n128_u64[0];
          v220 = v81 == v166;
          v168 = v81 > v166;
          if (!v220)
          {
            v167 = v168;
          }

          if (v167)
          {
            v169 = v12;
            do
            {
              v12 = v169 + 24;
              v171 = *(v169 + 32);
              v170 = *(v169 + 40);
              v172 = v80 < v171;
              v220 = v81 == v170;
              v173 = v81 > v170;
              if (!v220)
              {
                v172 = v173;
              }

              v169 = v12;
            }

            while (!v172);
          }

          else
          {
            v174 = v12 + 24;
            do
            {
              v12 = v174;
              if (v174 >= a2)
              {
                break;
              }

              v175 = *(v174 + 16);
              v176 = v80 < *(v174 + 8);
              v220 = v81 == v175;
              v177 = v81 > v175;
              if (v220)
              {
                v177 = v176;
              }

              v174 = v12 + 24;
            }

            while (!v177);
          }

          v178 = a2;
          if (v12 < a2)
          {
            v179 = a2;
            do
            {
              v178 = v179 - 24;
              v181 = *(v179 - 2);
              v180 = *(v179 - 1);
              v182 = v80 < v181;
              v220 = v81 == v180;
              v183 = v81 > v180;
              if (!v220)
              {
                v182 = v183;
              }

              v179 = v178;
            }

            while (v182);
          }

          v184 = *result;
          while (v12 < v178)
          {
            v374 = *(v12 + 16);
            v350 = *v12;
            v185 = *v178;
            *(v12 + 16) = *(v178 + 2);
            *v12 = v185;
            a5 = v350;
            *(v178 + 2) = v374;
            *v178 = v350;
            do
            {
              v186 = *(v12 + 32);
              v187 = *(v12 + 40);
              v12 += 24;
              v188 = v80 < v186;
              v220 = v81 == v187;
              v189 = v81 > v187;
              if (!v220)
              {
                v188 = v189;
              }
            }

            while (!v188);
            do
            {
              v190 = *(v178 - 2);
              v191 = *(v178 - 1);
              v178 -= 24;
              v192 = v80 < v190;
              v220 = v81 == v191;
              v193 = v81 > v191;
              if (!v220)
              {
                v192 = v193;
              }
            }

            while (v192);
          }

          if (v12 - 24 != result)
          {
            a5 = *(v12 - 24);
            *(result + 16) = *(v12 - 8);
            *result = a5;
          }

          a4 = 0;
          *(v12 - 24) = v184;
          *(v12 - 16) = v80;
          *(v12 - 8) = v81;
        }

        v138 = 0;
        v139 = *v12;
        do
        {
          v140 = *(v12 + v138 + 40);
          v220 = v140 == v81;
          v141 = v140 > v81;
          if (v220)
          {
            v141 = *(v12 + v138 + 32) < v80;
          }

          v138 += 24;
        }

        while (v141);
        v142 = v12 + v138;
        v143 = a2;
        if (v138 == 24)
        {
          v149 = a2;
          while (v142 < v149)
          {
            v144 = v149 - 24;
            v151 = *(v149 - 2);
            v150 = *(v149 - 1);
            v152 = v151 < v80;
            v220 = v150 == v81;
            v153 = v150 > v81;
            if (!v220)
            {
              v152 = v153;
            }

            v149 = v144;
            if (v152)
            {
              goto LABEL_118;
            }
          }

          v144 = v149;
          v12 = v142;
        }

        else
        {
          do
          {
            v144 = v143 - 24;
            v146 = *(v143 - 2);
            v145 = *(v143 - 1);
            v147 = v146 < v80;
            v220 = v145 == v81;
            v148 = v145 > v81;
            if (!v220)
            {
              v147 = v148;
            }

            v143 = v144;
          }

          while (!v147);
LABEL_118:
          v12 = v142;
          if (v142 < v144)
          {
            v154 = v144;
            do
            {
              v373 = *(v12 + 16);
              v349 = *v12;
              v155 = *v154;
              *(v12 + 16) = *(v154 + 16);
              *v12 = v155;
              a5 = v349;
              *(v154 + 16) = v373;
              *v154 = v349;
              do
              {
                v156 = *(v12 + 32);
                v157 = *(v12 + 40);
                v12 += 24;
                v158 = v156 < v80;
                v220 = v157 == v81;
                v159 = v157 > v81;
                if (!v220)
                {
                  v158 = v159;
                }
              }

              while (v158);
              do
              {
                v160 = *(v154 - 16);
                v161 = *(v154 - 8);
                v154 -= 24;
                v162 = v160 < v80;
                v220 = v161 == v81;
                v163 = v161 > v81;
                if (!v220)
                {
                  v162 = v163;
                }
              }

              while (!v162);
            }

            while (v12 < v154);
          }
        }

        if (v12 - 24 != result)
        {
          a5 = *(v12 - 24);
          *(result + 16) = *(v12 - 8);
          *result = a5;
        }

        *(v12 - 24) = v139;
        *(v12 - 16) = v80;
        *(v12 - 8) = v81;
        if (v142 >= v144)
        {
          break;
        }

LABEL_133:
        sub_996438(result, (v12 - 24), a3, a4 & 1);
        a4 = 0;
      }

      v164 = sub_9978B8(result, (v12 - 24), a5);
      if (sub_9978B8(v12, a2, v165))
      {
        break;
      }

      if (!v164)
      {
        goto LABEL_133;
      }
    }

    a2 = (v12 - 24);
    if (!v164)
    {
      continue;
    }

    break;
  }
}

__n128 sub_9976B0(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2->n128_u64[1];
  v6 = a2[1].n128_u64[0];
  v7 = a1[1].n128_u64[0];
  v8 = v5 < a1->n128_u64[1];
  v9 = v6 == v7;
  v10 = v6 > v7;
  if (!v9)
  {
    v8 = v10;
  }

  v11 = a3[1].n128_u64[0];
  v12 = a3->n128_u64[1] < v5;
  v9 = v11 == v6;
  v13 = v11 > v6;
  if (!v9)
  {
    v12 = v13;
  }

  if (v8)
  {
    if (v12)
    {
      v14 = a1[1].n128_u64[0];
      result = *a1;
      v15 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v15;
LABEL_17:
      *a3 = result;
      a3[1].n128_u64[0] = v14;
      goto LABEL_18;
    }

    v24 = a1[1].n128_u64[0];
    result = *a1;
    v25 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = result;
    a2[1].n128_u64[0] = v24;
    v26 = a3[1].n128_u64[0];
    v27 = a2[1].n128_u64[0];
    v28 = a3->n128_u64[1] < a2->n128_u64[1];
    v9 = v26 == v27;
    v29 = v26 > v27;
    if (!v9)
    {
      v28 = v29;
    }

    if (v28)
    {
      v14 = a2[1].n128_u64[0];
      result = *a2;
      v30 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v30;
      goto LABEL_17;
    }
  }

  else if (v12)
  {
    v16 = a2[1].n128_u64[0];
    result = *a2;
    v17 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v17;
    *a3 = result;
    a3[1].n128_u64[0] = v16;
    v18 = a2[1].n128_u64[0];
    v19 = a1[1].n128_u64[0];
    v20 = a2->n128_u64[1] < a1->n128_u64[1];
    v9 = v18 == v19;
    v21 = v18 > v19;
    if (!v9)
    {
      v20 = v21;
    }

    if (v20)
    {
      v22 = a1[1].n128_u64[0];
      result = *a1;
      v23 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v23;
      *a2 = result;
      a2[1].n128_u64[0] = v22;
    }
  }

LABEL_18:
  v31 = a4[1].n128_u64[0];
  v32 = a3[1].n128_u64[0];
  v33 = a4->n128_u64[1] < a3->n128_u64[1];
  v9 = v31 == v32;
  v34 = v31 > v32;
  if (!v9)
  {
    v33 = v34;
  }

  if (v33)
  {
    v35 = a3[1].n128_u64[0];
    result = *a3;
    v36 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v36;
    *a4 = result;
    a4[1].n128_u64[0] = v35;
    v37 = a3[1].n128_u64[0];
    v38 = a2[1].n128_u64[0];
    v39 = a3->n128_u64[1] < a2->n128_u64[1];
    v9 = v37 == v38;
    v40 = v37 > v38;
    if (!v9)
    {
      v39 = v40;
    }

    if (v39)
    {
      v41 = a2[1].n128_u64[0];
      result = *a2;
      v42 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v42;
      *a3 = result;
      a3[1].n128_u64[0] = v41;
      v43 = a2[1].n128_u64[0];
      v44 = a1[1].n128_u64[0];
      v45 = a2->n128_u64[1] < a1->n128_u64[1];
      v9 = v43 == v44;
      v46 = v43 > v44;
      if (!v9)
      {
        v45 = v46;
      }

      if (v45)
      {
        v47 = a1[1].n128_u64[0];
        result = *a1;
        v48 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v48;
        *a2 = result;
        a2[1].n128_u64[0] = v47;
      }
    }
  }

  return result;
}

BOOL sub_9978B8(uint64_t a1, void *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v40 = (a2 - 3);
        v41 = *(a1 + 32);
        v42 = *(a1 + 40);
        v43 = *(a1 + 16);
        v44 = v41 < *(a1 + 8);
        v7 = v42 == v43;
        v45 = v42 > v43;
        if (!v7)
        {
          v44 = v45;
        }

        v46 = *(a2 - 1);
        v47 = *(a2 - 2) < v41;
        v7 = v46 == v42;
        v48 = v46 > v42;
        if (!v7)
        {
          v47 = v48;
        }

        if (!v44)
        {
          if (v47)
          {
            v64 = *(a1 + 40);
            v65 = *(a1 + 24);
            v66 = *(a2 - 1);
            *(a1 + 24) = *v40;
            *(a1 + 40) = v66;
            *v40 = v65;
            *(a2 - 1) = v64;
            v67 = *(a1 + 40);
            v68 = *(a1 + 16);
            v69 = *(a1 + 32) < *(a1 + 8);
            v7 = v67 == v68;
            v70 = v67 > v68;
            if (!v7)
            {
              v69 = v70;
            }

            if (v69)
            {
              v71 = *(a1 + 16);
              v72 = *a1;
              *a1 = *(a1 + 24);
              *(a1 + 16) = *(a1 + 40);
              *(a1 + 24) = v72;
              *(a1 + 40) = v71;
              return 1;
            }
          }

          return 1;
        }

        if (v47)
        {
          v49 = *(a1 + 16);
          v50 = *a1;
          v51 = *(a2 - 1);
          *a1 = *v40;
          *(a1 + 16) = v51;
        }

        else
        {
          v81 = *(a1 + 16);
          v82 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 24) = v82;
          v83 = *(a1 + 32);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 40) = v81;
          v84 = *(a2 - 1);
          v85 = *(a1 + 40);
          v86 = *(a2 - 2) < v83;
          v7 = v84 == v85;
          v87 = v84 > v85;
          if (!v7)
          {
            v86 = v87;
          }

          if (!v86)
          {
            return 1;
          }

          v49 = *(a1 + 40);
          v50 = *(a1 + 24);
          v88 = *(a2 - 1);
          *(a1 + 24) = *v40;
          *(a1 + 40) = v88;
        }

        *v40 = v50;
        *(a2 - 1) = v49;
        return 1;
      case 4:
        sub_9976B0(a1, (a1 + 24), (a1 + 48), (a2 - 3), a3);
        return 1;
      case 5:
        sub_9976B0(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        v15 = *(a2 - 1);
        v16 = *(a1 + 88);
        v17 = *(a2 - 2) < *(a1 + 80);
        v7 = v15 == v16;
        v18 = v15 > v16;
        if (!v7)
        {
          v17 = v18;
        }

        if (v17)
        {
          v19 = *(a1 + 88);
          v20 = *(a1 + 72);
          v21 = *(a2 - 1);
          *(a1 + 72) = *(a2 - 3);
          *(a1 + 88) = v21;
          *(a2 - 3) = v20;
          *(a2 - 1) = v19;
          v22 = *(a1 + 88);
          v23 = *(a1 + 64);
          v24 = *(a1 + 80) < *(a1 + 56);
          v7 = v22 == v23;
          v25 = v22 > v23;
          if (!v7)
          {
            v24 = v25;
          }

          if (v24)
          {
            v26 = *(a1 + 48);
            *(a1 + 48) = *(a1 + 72);
            v28 = *(a1 + 56);
            v27 = *(a1 + 64);
            *(a1 + 64) = *(a1 + 88);
            *(a1 + 72) = v26;
            *(a1 + 88) = v27;
            v29 = *(a1 + 64);
            v30 = *(a1 + 40);
            v7 = v29 == v30;
            v31 = v29 > v30;
            if (v7)
            {
              v31 = v28 < *(a1 + 32);
            }

            if (v31)
            {
              v32 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 48);
              v34 = *(a1 + 32);
              v33 = *(a1 + 40);
              *(a1 + 40) = *(a1 + 64);
              *(a1 + 48) = v32;
              *(a1 + 64) = v33;
              v35 = *(a1 + 40);
              v36 = *(a1 + 16);
              v7 = v35 == v36;
              v37 = v35 > v36;
              if (v7)
              {
                v37 = v34 < *(a1 + 8);
              }

              if (v37)
              {
                v38 = *(a1 + 16);
                v39 = *a1;
                *a1 = *(a1 + 24);
                *(a1 + 16) = *(a1 + 40);
                *(a1 + 24) = v39;
                *(a1 + 40) = v38;
                return 1;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v4 = *(a2 - 1);
      v5 = *(a1 + 16);
      v6 = *(a2 - 2) < *(a1 + 8);
      v7 = v4 == v5;
      v8 = v4 > v5;
      if (!v7)
      {
        v6 = v8;
      }

      if (v6)
      {
        v9 = *(a1 + 16);
        v10 = *a1;
        v11 = *(a2 - 1);
        *a1 = *(a2 - 3);
        *(a1 + 16) = v11;
        *(a2 - 3) = v10;
        *(a2 - 1) = v9;
        return 1;
      }

      return 1;
    }
  }

  v52 = (a1 + 48);
  v53 = *(a1 + 32);
  v54 = *(a1 + 40);
  v56 = *(a1 + 8);
  v55 = *(a1 + 16);
  if (v54 == v55)
  {
    v57 = v53 < v56;
  }

  else
  {
    v57 = v54 > v55;
  }

  v59 = *(a1 + 56);
  v58 = *(a1 + 64);
  v60 = v59 < v53;
  v7 = v58 == v54;
  v61 = v58 > v54;
  if (!v7)
  {
    v60 = v61;
  }

  if (v57)
  {
    if (v60)
    {
      v62 = *(a1 + 16);
      v63 = *a1;
      *a1 = *v52;
      *(a1 + 16) = *(a1 + 64);
LABEL_59:
      *v52 = v63;
      *(a1 + 64) = v62;
      goto LABEL_60;
    }

    v89 = *(a1 + 16);
    v90 = *(a1 + 24);
    *(a1 + 24) = *a1;
    v91 = *(a1 + 32);
    *(a1 + 16) = *(a1 + 40);
    *a1 = v90;
    *(a1 + 40) = v89;
    v92 = *(a1 + 40);
    v7 = v58 == v92;
    v93 = v58 > v92;
    if (v7)
    {
      v93 = v59 < v91;
    }

    if (v93)
    {
      v62 = *(a1 + 40);
      v63 = *(a1 + 24);
      *(a1 + 24) = *v52;
      *(a1 + 40) = *(a1 + 64);
      goto LABEL_59;
    }
  }

  else if (v60)
  {
    v73 = *(a1 + 24);
    *(a1 + 24) = *v52;
    v75 = *(a1 + 32);
    v74 = *(a1 + 40);
    *(a1 + 40) = *(a1 + 64);
    *v52 = v73;
    *(a1 + 64) = v74;
    v76 = *(a1 + 40);
    v77 = v75 < v56;
    v7 = v76 == v55;
    v78 = v76 > v55;
    if (v7)
    {
      v78 = v77;
    }

    if (v78)
    {
      v79 = *(a1 + 16);
      v80 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v80;
      *(a1 + 40) = v79;
    }
  }

LABEL_60:
  v94 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v95 = 0;
  v96 = 0;
  while (1)
  {
    v97 = v94[1];
    v98 = v94[2];
    v100 = v52[1];
    v99 = v52[2];
    v101 = v97 < v100;
    v7 = v98 == v99;
    v102 = v98 > v99;
    if (v7)
    {
      v102 = v101;
    }

    if (v102)
    {
      break;
    }

LABEL_73:
    v52 = v94;
    v95 += 24;
    v94 += 3;
    if (v94 == a2)
    {
      return 1;
    }
  }

  v103 = *v94;
  v104 = v95;
  do
  {
    v105 = a1 + v104;
    *(v105 + 72) = *(a1 + v104 + 48);
    *(v105 + 88) = *(a1 + v104 + 64);
    if (v104 == -48)
    {
      *a1 = v103;
      *(a1 + 8) = v97;
      *(a1 + 16) = v98;
      if (++v96 != 8)
      {
        goto LABEL_73;
      }

      return v94 + 3 == a2;
    }

    v107 = *(v105 + 32);
    v106 = *(v105 + 40);
    v108 = v97 < v107;
    v7 = v98 == v106;
    v109 = v98 > v106;
    if (v7)
    {
      v109 = v108;
    }

    v104 -= 24;
  }

  while (v109);
  v110 = (a1 + v104);
  v110[9] = v103;
  v110[10] = v97;
  v110[11] = v98;
  if (++v96 != 8)
  {
    goto LABEL_73;
  }

  return v94 + 3 == a2;
}

void sub_997E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, void *a7)
{
  strcpy(v10, "TransitAdvisoryBuilder");
  HIBYTE(v10[2]) = 22;
  memset(__p, 0, sizeof(__p));
  v8 = sub_3AEC94(a7, v10, __p);
  sub_998080(a1, v8);
}

void sub_997FB8(_Unwind_Exception *a1)
{
  sub_6E3B8((v1 + 1712));
  sub_6E3B8((v1 + 1608));
  sub_528AB4(v1 + 32);
  _Unwind_Resume(a1);
}

void sub_997FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_99819C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_9981BC(void *result, uint64_t *a2)
{
  if (*a2 != a2[1])
  {
    sub_998F28(result, (a2 + 3), *a2);
  }

  return result;
}

void sub_998E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  sub_55A860(v54 - 136);
  sub_55A8B4(va);
  sub_559E14(&a15);
  sub_98ED24(&a18);
  sub_98ED24(&a37);
  _Unwind_Resume(a1);
}

void sub_998F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 1624);
  v6 = *(a1 + 1688);
  v7 = *(a1 + 1704);
  v9[0] = a2;
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v10 = *(a1 + 1632);
  v11 = *(a1 + 1648);
  v12 = *(a1 + 1664);
  v8 = *(a1 + 1680);
  v9[4] = v7;
  v13 = v8;
  sub_A06718(a3, v9);
}

void sub_9994E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  *(v7 + 8) = v8;
  sub_55A8B4(va);
  sub_559E14(&STACK[0x208]);
  sub_55A8B4(&STACK[0x220]);
  sub_98ED24(&STACK[0x410]);
  sub_559E14(v9);
  v12 = *(v10 - 200);
  *(v10 - 200) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  _Unwind_Resume(a1);
}

void sub_99962C(uint64_t a4@<X3>, char **a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if (*a4 == 2 && *(a4 + 5672) >= 2u)
  {
    sub_999BA8(v6);
  }

  sub_99B3D8(v6);
}

void sub_999AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  *(v31 + 8) = v32;
  sub_55A8B4(&STACK[0x4B8]);
  sub_55A8B4(&a31);
  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  sub_55A8B4(&STACK[0x2C8]);
  sub_559E14(v31);
  _Unwind_Resume(a1);
}

void sub_999BA8(uint64_t a6@<X8>)
{
  sub_64B998(a6);
  *(a6 + 168) = 0;
  *(a6 + 160) = 0;
  *(a6 + 176) = 0;
  *(a6 + 184) = 0;
  sub_64B998(a6 + 192);
  *(a6 + 384) = 0;
  *(a6 + 392) = -1;
  *(a6 + 395) = -1;
  *(a6 + 407) = 0;
  *(a6 + 415) = 0;
  *(a6 + 399) = 0;
  *(a6 + 423) = 0;
  *(a6 + 440) = 0;
  *(a6 + 448) = 0;
  *(a6 + 432) = 0;
  *(a6 + 456) = 0;
  *(a6 + 464) = 0u;
  *(a6 + 480) = 0u;
  *(a6 + 472) = sub_1CEE8(a6 + 464, "TRANSIT");
  *(a6 + 488) = 3;
  sub_587F3C(40);
}

void sub_99A4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  sub_55A8B4(v35);
  _Unwind_Resume(a1);
}

uint64_t sub_99A634(std::string *this, char *a2, uint64_t a3)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v6 = this;
  }

  else
  {
    v6 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v7 = a2[23];
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = a2[23];
  }

  else
  {
    v9 = *(a2 + 1);
  }

  if (!v9)
  {
    v11 = 0;
LABEL_17:
    v12 = *(a3 + 23);
    if (v12 >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    if (v12 >= 0)
    {
      v14 = *(a3 + 23);
    }

    else
    {
      v14 = *(a3 + 8);
    }

    std::string::replace(this, v11, v9, v13, v14);
    return 1;
  }

  if (size < v9)
  {
    return 0;
  }

  v15 = v6 + size;
  v16 = *v8;
  v17 = v6;
  while (1)
  {
    v18 = size - v9;
    if (v18 == -1)
    {
      return 0;
    }

    result = memchr(v17, v16, v18 + 1);
    if (!result)
    {
      return result;
    }

    v19 = result;
    result = memcmp(result, v8, v9);
    if (!result)
    {
      break;
    }

    v17 = (v19 + 1);
    size = &v15[-v19 - 1];
    if (size < v9)
    {
      return 0;
    }
  }

  if (v19 != v15)
  {
    v11 = v19 - v6;
    if (v19 - v6 != -1)
    {
      goto LABEL_17;
    }
  }

  return result;
}

void sub_99A770(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 8) != 1 || a2[1] - *a2 == 32 && (v4 = **a2, v5 = *(*a2 + 1), v5 - v4 == 104) && (v4 == v5 || (v7 = *(v4 + 8), v6 = *(v4 + 16), v7 == v6) || *(v6 - 5704) != 4))
  {
    sub_64B998(a3);
    *(a3 + 168) = 0;
    *(a3 + 160) = 0;
    *(a3 + 176) = 0;
    *(a3 + 184) = 0;
    sub_64B998(a3 + 192);
  }

  else
  {
    sub_9D4074(v9, a2);
    sub_9D4040(v9, &v10);
    if (!sub_9D427C(v9, &v10))
    {
LABEL_16:
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
      *(a3 + 472) = sub_1CEE8(a3 + 464, "TRANSIT");
      *(a3 + 488) = 1;
      sub_587F3C(39);
    }

    while (1)
    {
      if (*sub_9D42B8(v9) == 2)
      {
        v8 = sub_9D42B8(v9);
        if (*(v8 + 120) != 0x7FFFFFFF && *(v8 + 124) == 1)
        {
          break;
        }
      }

      sub_9D40D8(v9);
      sub_9D4040(v9, &v10);
      if (!sub_9D427C(v9, &v10))
      {
        goto LABEL_16;
      }
    }

    sub_64B998(a3);
    *(a3 + 168) = 0;
    *(a3 + 160) = 0;
    *(a3 + 176) = 0;
    *(a3 + 184) = 0;
    sub_64B998(a3 + 192);
  }

  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 392) = -1;
  *(a3 + 395) = -1;
  *(a3 + 399) = 0;
  *(a3 + 407) = 0;
  *(a3 + 415) = 0;
  *(a3 + 423) = 0;
  *(a3 + 432) = 0;
  *(a3 + 440) = 0;
  *(a3 + 448) = 0;
  *(a3 + 456) = 0;
  *(a3 + 480) = 0u;
}

void sub_99ABF4(_Unwind_Exception *a1)
{
  if (*(v2 - 57) < 0)
  {
    operator delete(*(v2 - 80));
    sub_55A8B4(v1);
    _Unwind_Resume(a1);
  }

  sub_55A8B4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_99ACA8@<X0>(uint64_t a1@<X0>, void **a2@<X1>, char **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_A07334(a2, v23);
  sub_99CA68(v23, v25);
  if (v24 < 0)
  {
    operator delete(v23[1]);
  }

  if (!sub_4D1F6C(v25))
  {
    v6 = a3[1];
    if (v6 >= a3[2])
    {
      v7 = sub_99EF1C(a3, v25);
    }

    else
    {
      sub_5F4668(a3[1], v25);
      v7 = v6 + 496;
    }

    a3[1] = v7;
  }

  sub_A124F0((a1 + 1696), a2, *(a1 + 1688), *(a1 + 1624) + 1177, v22);
  sub_99CF6C(v22, v23);
  sub_53A868(v22);
  if (!sub_4D1F6C(v23))
  {
    v8 = a3[1];
    if (v8 >= a3[2])
    {
      v9 = sub_99EF1C(a3, v23);
    }

    else
    {
      sub_5F4668(a3[1], v23);
      v9 = v8 + 496;
    }

    a3[1] = v9;
  }

  v10 = *(a1 + 1624);
  v11 = *a3;
  v12 = a3[1];
  if (*(v10 + 1415) == 1 && 0xEF7BDEF7BDEF7BDFLL * ((v12 - v11) >> 4) >= 2 && *(v10 + 1444) <= 1u)
  {
    sub_99D4B0(v22);
  }

  for (; v11 != v12; v11 += 496)
  {
    v13 = sub_53A634(v11, 0);
    v14 = v13;
    v15 = *(v13 + 23);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = *v13;
    }

    if ((v15 & 0x80u) != 0)
    {
      v15 = *(v13 + 8);
    }

    if (v15 >= 16)
    {
      v17 = &v16[v15];
      v18 = v16;
      do
      {
        v19 = memchr(v18, 123, v15 - 15);
        if (!v19)
        {
          break;
        }

        if (*v19 == 0x616E6F6974704F7BLL && *(v19 + 1) == 0x7D646F697265506CLL)
        {
          if (v19 != v17 && v19 - v16 != -1)
          {
            std::string::replace(v14, v19 - v16, 0x10uLL, byte_22A5B80, 0);
          }

          break;
        }

        v18 = v19 + 1;
        v15 = v17 - v18;
      }

      while (v17 - v18 >= 16);
    }
  }

  sub_55A8B4(v23);
  return sub_55A8B4(v25);
}

void sub_99AF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_55A8B4(&STACK[0x5D8]);
  sub_55A8B4(&a10);
  sub_55A8B4(&a65);
  sub_55A8B4(&STACK[0x3E8]);
  sub_559E14(v65);
  _Unwind_Resume(a1);
}

void sub_99B314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5EC004(va);
  sub_53A868(v3);
  sub_559E14((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_99B33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_55A8B4(va);
  sub_559E14((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_99B3D8(uint64_t a5@<X8>)
{
  sub_64B998(a5);
  *(a5 + 168) = 0;
  *(a5 + 160) = 0;
  *(a5 + 176) = 0;
  *(a5 + 184) = 0;
  sub_64B998(a5 + 192);
  *(a5 + 384) = 0;
  *(a5 + 392) = -1;
  *(a5 + 395) = -1;
  *(a5 + 407) = 0;
  *(a5 + 415) = 0;
  *(a5 + 399) = 0;
  *(a5 + 423) = 0;
  *(a5 + 440) = 0;
  *(a5 + 448) = 0;
  *(a5 + 432) = 0;
  *(a5 + 456) = 0;
  *(a5 + 464) = 0u;
  *(a5 + 480) = 0u;
  *(a5 + 472) = sub_1CEE8(a5 + 464, "TRANSIT");
  *(a5 + 488) = 2;
  sub_587F3C(4);
}

void sub_99B894(_Unwind_Exception *a1)
{
  if (v2 < 0)
  {
    operator delete(*(v3 - 112));
    sub_55A8B4(v1);
    _Unwind_Resume(a1);
  }

  sub_55A8B4(v1);
  _Unwind_Resume(a1);
}

void sub_99B960(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 1160);
  if (v5 == 0x7FFFFFFF)
  {
    goto LABEL_9;
  }

  v6 = *(a2 + 1191);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 1176);
  }

  v7 = !v6 || v5 == 0;
  if (v7 || *(*(a1 + 1624) + 1186))
  {
LABEL_9:
    sub_64B998(a4);
    *(a4 + 168) = 0;
    *(a4 + 160) = 0;
    *(a4 + 176) = 0;
    *(a4 + 184) = 0;
    sub_64B998(a4 + 192);
    *(a4 + 384) = 0u;
    *(a4 + 400) = 0u;
    *(a4 + 416) = 0u;
    *(a4 + 432) = 0u;
    *(a4 + 448) = 0u;
    *(a4 + 464) = 0u;
    *(a4 + 352) = 0u;
    *(a4 + 368) = 0u;
    *(a4 + 392) = -1;
    *(a4 + 395) = -1;
    *(a4 + 399) = 0;
    *(a4 + 407) = 0;
    *(a4 + 415) = 0;
    *(a4 + 423) = 0;
    *(a4 + 432) = 0;
    *(a4 + 440) = 0;
    *(a4 + 448) = 0;
    *(a4 + 456) = 0;
    *(a4 + 480) = 0u;
  }

  else
  {
    sub_9D4074(&__p, a2);
    v10 = 0;
    while (1)
    {
      sub_9D4040(&__p, &__dst);
      if (!sub_9D427C(&__p, &__dst))
      {
        break;
      }

      if (*sub_9D42B8(&__p) == 2)
      {
        ++v10;
        if (*(sub_9D42B8(&__p) + 2104) == 1)
        {
          v11 = sub_9D42B8(&__p);
          v12 = *(v11 + 2072);
          v13 = *(v11 + 2080);
          if (v12 != v13)
          {
            while (1)
            {
              v14 = *v12;
              v15 = sub_3AFEE8(*(a1 + 1704));
              if ((sub_9BD018(v14, v15) & 1) == 0)
              {
                break;
              }

              if (++v12 == v13)
              {
                if ((0x66FD0EB66FD0EB67 * ((a3[10] - a3[9]) >> 3)) > *(sub_9D42B8(&__p) + 752))
                {
                  operator new();
                }

                sub_6FAB4();
              }
            }
          }
        }
      }

      sub_9D40D8(&__p);
    }

    sub_64B998(a4);
    *(a4 + 168) = 0;
    *(a4 + 160) = 0;
    *(a4 + 176) = 0;
    *(a4 + 184) = 0;
    sub_64B998(a4 + 192);
    *(a4 + 384) = 0u;
    *(a4 + 400) = 0u;
    *(a4 + 416) = 0u;
    *(a4 + 432) = 0u;
    *(a4 + 448) = 0u;
    *(a4 + 464) = 0u;
    *(a4 + 352) = 0u;
    *(a4 + 368) = 0u;
    *(a4 + 392) = -1;
    *(a4 + 395) = -1;
    *(a4 + 399) = 0;
    *(a4 + 407) = 0;
    *(a4 + 415) = 0;
    *(a4 + 423) = 0;
    *(a4 + 432) = 0;
    *(a4 + 440) = 0;
    *(a4 + 448) = 0;
    *(a4 + 456) = 0;
    *(a4 + 480) = 0u;
  }
}

void sub_99C034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 - 137) < 0)
  {
    operator delete(*(v16 - 160));
  }

  if (*(v16 - 113) < 0)
  {
    operator delete(*(v16 - 136));
  }

  sub_1A104(&a11);
  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
    if (!__p)
    {
      goto LABEL_9;
    }
  }

  else if (!__p)
  {
LABEL_9:
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_99C1B8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = 0;
  v44 = 0;
  v45 = 0;
  sub_64B998(v29);
  sub_64B998(v30);
  v32 = 0;
  memset(v33, 255, sizeof(v33));
  v35 = 0;
  v34 = 0uLL;
  v36 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v40 = 0;
  sub_64B998(v41);
  sub_64B998(v42);
  v42[10] = xmmword_2291330;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = sub_9274F4(*(a1 + 16), "Advisory_Separator");
  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  sub_64FB18(v30, v6, __p);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    v9 = 0;
    do
    {
      v10 = *(v7 + 488);
      if (v10 == 5)
      {
        sub_99FE28(&v26, v27, *(v7 + 168), *(v7 + 176), 0x8F5C28F5C28F5C29 * ((*(v7 + 176) - *(v7 + 168)) >> 5));
      }

      else if (v10 == 2)
      {
        if ((v7 + 168) != &v43)
        {
          sub_6025E0(&v43, *(v7 + 168), *(v7 + 176), 0x8F5C28F5C28F5C29 * ((*(v7 + 176) - *(v7 + 168)) >> 5));
        }
      }

      else
      {
        sub_99D778(a1, v30, v7);
        ++v9;
      }

      v7 += 496;
    }

    while (v7 != v8);
    if (v9)
    {
      v11 = "Advisory_Title_Notices";
      if (v9 == 1)
      {
        v11 = "Advisory_Title_Notice";
      }

      *v24 = *v11;
      v25 = *(v11 + 2);
      v12 = sub_9274F4(*(a1 + 24), v24);
      sub_64BC20(__p, v12);
      sub_53D784(v29, __p);
      sub_53A868(__p);
      v13 = v27;
      if (v27 >= v28)
      {
        v14 = sub_55DBE0(&v26, v29);
        v27 = v14;
        v15 = *(v14 - 16);
        if (v15 >= *(v14 - 8))
        {
LABEL_17:
          *(v14 - 16) = sub_1CEE8(v14 - 24, "TRANSIT");
          if ((SHIBYTE(v25) & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

LABEL_30:
          operator delete(v24[0]);
          goto LABEL_18;
        }
      }

      else
      {
        sub_55BC9C(v27, v29);
        *(v13 + 768) = 2;
        *(v13 + 776) = 0;
        *(v13 + 792) = 0;
        *(v13 + 784) = 0;
        v14 = v13 + 800;
        v27 = v14;
        v15 = *(v14 - 16);
        if (v15 >= *(v14 - 8))
        {
          goto LABEL_17;
        }
      }

      *(v15 + 16) = 0x700000000000000;
      *v15 = *"TRANSIT";
      *(v14 - 16) = v15 + 24;
      *(v14 - 16) = v15 + 24;
      if ((SHIBYTE(v25) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    }
  }

LABEL_18:
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
  *(a3 + 160) = 1;
  sub_5410A0(a3 + 352, *a2 + 352);
  sub_99D230(a1, 0xEF7BDEF7BDEF7BDFLL * ((a2[1] - *a2) >> 4), v24);
  sub_64BC20(__p, v24);
  sub_53D784(a3, __p);
  sub_53A868(__p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  *(a3 + 488) = 1;
  v16 = *(a3 + 176);
  if (*(*a2 + 488) == 3)
  {
    sub_99FE28((a3 + 168), v16, v26, v27, 0x8F5C28F5C28F5C29 * ((v27 - v26) >> 5));
    v17 = &v43;
  }

  else
  {
    sub_99FE28((a3 + 168), v16, v43, v44, 0x8F5C28F5C28F5C29 * ((v44 - v43) >> 5));
    v17 = &v26;
  }

  sub_99FE28((a3 + 168), *(a3 + 176), *v17, v17[1], 0x8F5C28F5C28F5C29 * ((v17[1] - *v17) >> 5));
  v18 = 0x8F5C28F5C28F5C29 * ((*(a3 + 176) - *(a3 + 168)) >> 5);
  if (v18 >= 2)
  {
    sub_99D230(a1, v18, v24);
    sub_64BC20(__p, v24);
    sub_53D784(a3, __p);
    sub_53A868(__p);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }

    sub_587F3C(4);
  }

  sub_594568(a3, v29);
  v19 = *(a3 + 168);
  for (i = *(a3 + 176); v19 != i; v19 += 800)
  {
    sub_93FE4(a3 + 464, *(a3 + 472), *(v19 + 776), *(v19 + 784), 0xAAAAAAAAAAAAAAABLL * ((*(v19 + 784) - *(v19 + 776)) >> 3));
  }

  sub_93524((a3 + 464));
  __p[0] = &v26;
  sub_5EC004(__p);
  sub_53A868(v42);
  sub_53A868(v41);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v37);
    if ((v36 & 0x80000000) == 0)
    {
LABEL_35:
      v21 = v32;
      if (v32 == -1)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(*(&v34 + 1));
  v21 = v32;
  if (v32 != -1)
  {
LABEL_39:
    (off_266F3F0[v21])(__p, &v31);
  }

LABEL_40:
  v32 = -1;
  sub_53A868(v30);
  sub_53A868(v29);
  v29[0] = &v43;
  sub_5EC004(v29);
}

void sub_99C854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  a9 = &a38;
  sub_5EC004(&a9);
  sub_53F5F4(&a41);
  a41 = v41 - 112;
  sub_5EC004(&a41);
  _Unwind_Resume(a1);
}

void sub_99CA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_99CA68(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a2 != 0x7FFFFFFF)
  {
    v5 = *(a2 + 31);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 16);
    }

    if (v5)
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
      *(a4 + 472) = sub_1CEE8(a4 + 464, "TRANSIT");
      *(a4 + 488) = 1;
      sub_587F3C(39);
    }
  }

  sub_64B998(a4);
  *(a4 + 168) = 0;
  *(a4 + 160) = 0;
  *(a4 + 176) = 0;
  *(a4 + 184) = 0;
  sub_64B998(a4 + 192);
  *(a4 + 384) = 0u;
  *(a4 + 400) = 0u;
  *(a4 + 416) = 0u;
  *(a4 + 432) = 0u;
  *(a4 + 448) = 0u;
  *(a4 + 464) = 0u;
  *(a4 + 352) = 0u;
  *(a4 + 368) = 0u;
  *(a4 + 392) = -1;
  *(a4 + 395) = -1;
  *(a4 + 399) = 0;
  *(a4 + 407) = 0;
  *(a4 + 415) = 0;
  *(a4 + 423) = 0;
  *(a4 + 432) = 0;
  *(a4 + 440) = 0;
  *(a4 + 448) = 0;
  *(a4 + 456) = 0;
  *(a4 + 480) = 0u;
}

void sub_99CE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  *(v28 + 8) = v29;
  if (a28 < 0)
  {
    operator delete(__p);
    sub_55A8B4(v28);
    _Unwind_Resume(a1);
  }

  sub_55A8B4(v28);
  _Unwind_Resume(a1);
}

void sub_99CF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_5EC004(va);
  sub_53A868(v16);
  _Unwind_Resume(a1);
}

void sub_99CF6C(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = sub_4D1F6C(a1);
  sub_64B998(a2);
  *(a2 + 168) = 0;
  *(a2 + 160) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  if (!v3)
  {
    sub_64B998(a2 + 192);
    *(a2 + 384) = 0;
    *(a2 + 392) = -1;
    *(a2 + 395) = -1;
    *(a2 + 407) = 0;
    *(a2 + 415) = 0;
    *(a2 + 399) = 0;
    *(a2 + 423) = 0;
    *(a2 + 440) = 0;
    *(a2 + 448) = 0;
    *(a2 + 432) = 0;
    *(a2 + 456) = 0;
    *(a2 + 464) = 0u;
    *(a2 + 480) = 0u;
    *(a2 + 472) = sub_1CEE8(a2 + 464, "TRANSIT");
    *(a2 + 488) = 4;
    sub_587F3C(39);
  }

  sub_64B998(a2 + 192);
  *(a2 + 384) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 464) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 392) = -1;
  *(a2 + 395) = -1;
  *(a2 + 399) = 0;
  *(a2 + 407) = 0;
  *(a2 + 415) = 0;
  *(a2 + 423) = 0;
  *(a2 + 432) = 0;
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  *(a2 + 456) = 0;
  *(a2 + 480) = 0u;
}

void sub_99D1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5EC004(va);
  sub_53A868(v3);
  _Unwind_Resume(a1);
}

void sub_99D230(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_56AFC8(a1 + 32, a2, &v30);
  *v27 = 0u;
  *v28 = 0u;
  v29 = 1065353216;
  for (i = *(sub_58BBC(&v30) + 16); i; i = *i)
  {
    nullsub_1();
    v9 = v8;
    __p[0] = i + 2;
    v10 = sub_353894(v27, i + 2, &unk_229EB70, __p);
    v11 = v10 + 5;
    if (v10 + 5 != v9)
    {
      v12 = *(v10 + 63);
      v13 = *(v9 + 23);
      if (v12 < 0)
      {
        if (v13 >= 0)
        {
          v6 = v9;
        }

        else
        {
          v6 = *v9;
        }

        if (v13 >= 0)
        {
          v7 = *(v9 + 23);
        }

        else
        {
          v7 = v9[1];
        }

        sub_13B38(v11, v6, v7);
      }

      else if ((*(v9 + 23) & 0x80) != 0)
      {
        sub_13A68(v11, *v9, v9[1]);
      }

      else
      {
        v14 = *v9;
        v11[2] = v9[2];
        *v11 = v14;
      }
    }
  }

  sub_67F320(&v30, __p);
  sub_6A5584(__p, v27, *(a1 + 24), 0, a3);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = v28[0];
  if (v28[0])
  {
    do
    {
      v23 = *v15;
      if (*(v15 + 63) < 0)
      {
        operator delete(v15[5]);
        if (*(v15 + 39) < 0)
        {
LABEL_33:
          operator delete(v15[2]);
        }
      }

      else if (*(v15 + 39) < 0)
      {
        goto LABEL_33;
      }

      operator delete(v15);
      v15 = v23;
    }

    while (v23);
  }

  v16 = v27[0];
  v27[0] = 0;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = v33;
  if (v33)
  {
    do
    {
      v18 = *v17;
      sub_55F7FC((v17 + 2));
      operator delete(v17);
      v17 = v18;
    }

    while (v18);
  }

  v19 = v32;
  v32 = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = v30;
  if (v30)
  {
    v21 = v31;
    v22 = v30;
    if (v31 != v30)
    {
      do
      {
        v24 = *(v21 - 1);
        v21 -= 3;
        if (v24 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = v30;
    }

    v31 = v20;
    operator delete(v22);
  }
}

void sub_99D438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_2CD04(&a16);
    sub_53A58C(&a22);
    _Unwind_Resume(a1);
  }

  sub_2CD04(&a16);
  sub_53A58C(&a22);
  _Unwind_Resume(a1);
}

void sub_99D4B0(uint64_t a3@<X8>)
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
  *(a3 + 472) = sub_1CEE8(a3 + 464, "TRANSIT");
  *(a3 + 488) = 1;
  sub_587F3C(39);
}

void sub_99D714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_55A8B4(v15);
    _Unwind_Resume(a1);
  }

  sub_55A8B4(v15);
  _Unwind_Resume(a1);
}

void sub_99D778(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = sub_9274F4(*(a1 + 16), "Period");
  v7 = *a2;
  v6 = a2[1];
  v8 = sub_66242C(a3, 0);
  sub_64C184(a2, v8);
  v9 = a2[1];
  v12 = *(v9 - 24);
  v11 = v9 - 24;
  v10 = v12;
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 8);
  }

  if (v15 >= 16)
  {
    v16 = &v14[v15];
    v17 = v14;
    do
    {
      v18 = memchr(v17, 123, v15 - 15);
      if (!v18)
      {
        break;
      }

      if (*v18 == 0x616E6F6974704F7BLL && *(v18 + 1) == 0x7D646F697265506CLL)
      {
        if (v18 != v16 && v18 - v14 != -1)
        {
          v20 = *(v5 + 23);
          if (v20 >= 0)
          {
            v21 = v5;
          }

          else
          {
            v21 = *v5;
          }

          if (v20 >= 0)
          {
            v22 = *(v5 + 23);
          }

          else
          {
            v22 = v5[1];
          }

          std::string::replace(v11, v18 - v14, 0x10uLL, v21, v22);
        }

        break;
      }

      v17 = v18 + 1;
      v15 = v16 - v17;
    }

    while (v16 - v17 >= 16);
  }

  v23 = a3[3];
  v24 = a3[4];
  if (v23 != v24)
  {
    __val = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
    do
    {
      v30 = a2[4];
      if (v30 >= a2[5])
      {
        v31 = sub_650B18(a2 + 3, v23);
      }

      else
      {
        sub_55C01C(a2[4], v23);
        v31 = v30 + 144;
        a2[4] = v30 + 144;
      }

      a2[4] = v31;
      v32 = v23[23];
      v33 = v32;
      if ((v32 & 0x80u) != 0)
      {
        v32 = *(v23 + 1);
      }

      if (v32 == 6)
      {
        v25 = *v23;
        if (v33 >= 0)
        {
          v26 = v23;
        }

        else
        {
          v26 = *v23;
        }

        v27 = *v26;
        v28 = *(v26 + 2);
        if (v27 == 1952531579 && v28 == 32101)
        {
LABEL_50:
          if (v33 < 0)
          {
            sub_325C(&v74, v25, *(v23 + 1));
            v39 = SHIBYTE(v74.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

LABEL_52:
            v40 = v39 - 1;
            *(&v74.__r_.__value_.__s + 23) = v40 & 0x7F;
            v41 = &v74;
          }

          else
          {
            v38 = *v23;
            v74.__r_.__value_.__r.__words[2] = *(v23 + 2);
            *&v74.__r_.__value_.__l.__data_ = v38;
            v39 = SHIBYTE(v74.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
            {
              goto LABEL_52;
            }

LABEL_54:
            v41 = v74.__r_.__value_.__r.__words[0];
            v40 = --v74.__r_.__value_.__l.__size_;
          }

          v41->__r_.__value_.__s.__data_[v40] = 0;
          std::to_string(&v71, __val);
          v42 = std::string::append(&v71, "}", 1uLL);
          v43 = *&v42->__r_.__value_.__l.__data_;
          v73 = v42->__r_.__value_.__r.__words[2];
          *__p = v43;
          v42->__r_.__value_.__l.__size_ = 0;
          v42->__r_.__value_.__r.__words[2] = 0;
          v42->__r_.__value_.__r.__words[0] = 0;
          if (v73 >= 0)
          {
            v44 = __p;
          }

          else
          {
            v44 = __p[0];
          }

          if (v73 >= 0)
          {
            v45 = HIBYTE(v73);
          }

          else
          {
            v45 = __p[1];
          }

          std::string::append(&v74, v44, v45);
          if (SHIBYTE(v73) < 0)
          {
            operator delete(__p[0]);
            if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_66;
            }

LABEL_63:
            v46 = a2[4];
            v47 = v46 - 144;
            if ((v46 - 144) != &v74)
            {
LABEL_67:
              if (*(v46 - 121) < 0)
              {
                if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v49 = &v74;
                }

                else
                {
                  v49 = v74.__r_.__value_.__r.__words[0];
                }

                if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(v74.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v74.__r_.__value_.__l.__size_;
                }

                sub_13B38(v47, v49, size);
              }

              else if ((*(&v74.__r_.__value_.__s + 23) & 0x80) != 0)
              {
                sub_13A68(v47, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
              }

              else
              {
                v48 = *&v74.__r_.__value_.__l.__data_;
                *(v47 + 16) = *(&v74.__r_.__value_.__l + 2);
                *v47 = v48;
              }
            }
          }

          else
          {
            if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_63;
            }

LABEL_66:
            operator delete(v71.__r_.__value_.__l.__data_);
            v46 = a2[4];
            v47 = v46 - 144;
            if ((v46 - 144) != &v74)
            {
              goto LABEL_67;
            }
          }

          v51 = a2[1];
          v54 = *(v51 - 24);
          v53 = v51 - 24;
          v52 = v54;
          v55 = *(v53 + 23);
          if (v55 >= 0)
          {
            v56 = v53;
          }

          else
          {
            v56 = v52;
          }

          if (v55 >= 0)
          {
            v57 = *(v53 + 23);
          }

          else
          {
            v57 = *(v53 + 8);
          }

          v58 = v23[23];
          if (v58 >= 0)
          {
            v59 = v23;
          }

          else
          {
            v59 = *v23;
          }

          if (v58 >= 0)
          {
            v60 = v23[23];
          }

          else
          {
            v60 = *(v23 + 1);
          }

          if (v60)
          {
            if (v57 >= v60)
            {
              v61 = &v56[v57];
              v62 = *v59;
              v63 = v56;
              do
              {
                v64 = v57 - v60;
                if (v64 == -1)
                {
                  break;
                }

                v65 = memchr(v63, v62, v64 + 1);
                if (!v65)
                {
                  break;
                }

                v66 = v65;
                if (!memcmp(v65, v59, v60))
                {
                  if (v66 != v61)
                  {
                    v67 = v66 - v56;
                    if (v66 - v56 != -1)
                    {
                      goto LABEL_99;
                    }
                  }

                  break;
                }

                v63 = v66 + 1;
                v57 = v61 - (v66 + 1);
              }

              while (v57 >= v60);
            }
          }

          else
          {
            v67 = 0;
LABEL_99:
            if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v68 = &v74;
            }

            else
            {
              v68 = v74.__r_.__value_.__r.__words[0];
            }

            if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v69 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v69 = v74.__r_.__value_.__l.__size_;
            }

            std::string::replace(v53, v67, v60, v68, v69);
          }

          if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v74.__r_.__value_.__l.__data_);
          }
        }
      }

      else if (v32 == 11)
      {
        v25 = *v23;
        v34 = v33 >= 0 ? v23 : *v23;
        v35 = *v34;
        v36 = *(v34 + 3);
        if (v35 == 0x6557664F7961447BLL && v36 == 0x7D6B656557664F79)
        {
          goto LABEL_50;
        }
      }

      v23 += 144;
    }

    while (v23 != v24);
  }
}

void sub_99DBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_99DC70(uint64_t a1, void *a2, void *a3)
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

void sub_99DD58(void *a1)
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

void sub_99DDA0(unint64_t *a1, uint64_t *a2, char **a3, unint64_t a4)
{
  v7 = a1[5];
  if (v7 < a4)
  {
    if (v7)
    {
      v8 = v7 + ((a3 - *a2) >> 5);
      if (v8 >= 1)
      {
        v9 = &a2[v8 >> 7];
        v10 = (*v9 + 32 * (v8 & 0x7F));
        v11 = a1[4];
        v12 = a1[1];
        v13 = (v12 + 8 * (v11 >> 7));
        if (a1[2] == v12)
        {
          goto LABEL_15;
        }

LABEL_11:
        v21 = *v13 + 32 * (v11 & 0x7F);
LABEL_16:
        v25 = v13;
        v26 = v21;
        sub_99E3CC(a2, a3, v9, v10, &v25);
        sub_99DF88(a1, v9, v10, a4 - a1[5]);
        return;
      }

      v22 = 127 - v8;
      v9 = &a2[-(v22 >> 7)];
      v10 = (*v9 + 32 * (~v22 & 0x7F));
      v11 = a1[4];
      v23 = a1[1];
      v13 = (v23 + 8 * (v11 >> 7));
      if (a1[2] != v23)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = a3;
      v9 = a2;
      v11 = a1[4];
      v20 = a1[1];
      v13 = (v20 + 8 * (v11 >> 7));
      if (a1[2] != v20)
      {
        goto LABEL_11;
      }
    }

LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  v14 = a1[1];
  v15 = (v14 + 8 * (a1[4] >> 7));
  if (a1[2] == v14)
  {
    v16 = 0;
    if (a4)
    {
LABEL_8:
      v17 = a4 + ((a3 - *a2) >> 5);
      if (v17 < 1)
      {
        v24 = 127 - v17;
        v18 = &a2[-(v24 >> 7)];
        v19 = (*v18 + 32 * (~v24 & 0x7F));
      }

      else
      {
        v18 = &a2[v17 >> 7];
        v19 = (*v18 + 32 * (v17 & 0x7F));
      }

      goto LABEL_18;
    }
  }

  else
  {
    v16 = *v15 + 32 * (a1[4] & 0x7F);
    if (a4)
    {
      goto LABEL_8;
    }
  }

  v19 = a3;
  v18 = a2;
LABEL_18:
  v25 = v15;
  v26 = v16;
  sub_99E3CC(a2, a3, v18, v19, &v25);
  sub_99E1EC(a1, v25, v26);
}

void sub_99DF88(unint64_t *result, void *a2, void *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[1];
  v9 = result[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 16 * (v9 - v8) - 1;
  }

  v11 = result[5];
  v12 = v11 + result[4];
  v13 = v10 - v12;
  if (a4 > v13)
  {
    sub_99E694(result, a4 - v13);
    v11 = v7[5];
    v8 = v7[1];
    v9 = v7[2];
    v12 = v7[4] + v11;
  }

  v14 = (v8 + 8 * (v12 >> 7));
  if (v9 != v8)
  {
    v15 = (*v14 + 32 * (v12 & 0x7F));
    v16 = v15;
    if (a4)
    {
      goto LABEL_8;
    }

LABEL_12:
    v26 = (v8 + 8 * (v12 >> 7));
    if (v15 == v16)
    {
      return;
    }

    goto LABEL_15;
  }

  v15 = 0;
  v16 = 0;
  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_8:
  v17 = a4 + ((v16 - *v14) >> 5);
  if (v17 < 1)
  {
    v18 = 127 - v17;
    v26 = &v14[-(v18 >> 7)];
    v16 = *v26 + 32 * (~v18 & 0x7F);
    if (v15 == v16)
    {
      return;
    }
  }

  else
  {
    v26 = &v14[v17 >> 7];
    v16 = *v26 + 32 * (v17 & 0x7F);
    if (v15 == v16)
    {
      return;
    }
  }

LABEL_15:
  v23 = v7;
  v24 = v16;
  do
  {
    if (v14 != v26)
    {
      v16 = *v14 + 4096;
    }

    if (v15 == v16)
    {
      v16 = v15;
    }

    else
    {
      v19 = 0;
      v25 = v15;
      do
      {
        *v15 = 0;
        v15[1] = 0;
        v15[2] = 0;
        v20 = a3[1];
        if (v20 != *a3)
        {
          if (((v20 - *a3) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v15[3] = a3[3];
        a3 += 4;
        if (a3 - *a2 == "work/NaturalLanguage")
        {
          v21 = a2[1];
          ++a2;
          a3 = v21;
        }

        v15 += 4;
        v19 -= 32;
      }

      while (v15 != v16);
      v7 = v23;
      v11 = v23[5];
      v15 = v25;
    }

    v11 += (v16 - v15) >> 5;
    v7[5] = v11;
    v16 = v24;
    if (v14 == v26)
    {
      break;
    }

    v22 = v14[1];
    ++v14;
    v15 = v22;
  }

  while (v22 != v24);
}

void sub_99E1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v11;
    v12 = a1;
    operator delete(v11);
    a1 = v12;
  }

  *(a9 + 40) += -v9 >> 5;
  _Unwind_Resume(a1);
}

void sub_99E1EC(void *a1, char *a2, uint64_t a3)
{
  v5 = a1[4];
  v4 = a1[5];
  v7 = a1[1];
  v6 = a1[2];
  v8 = (v7 + 8 * ((v5 + v4) >> 7));
  if (v6 == v7)
  {
    v9 = 0;
    if (!a3)
    {
      return;
    }
  }

  else
  {
    v9 = *v8 + 32 * ((v5 + v4) & 0x7F);
    if (v9 == a3)
    {
      return;
    }
  }

  v10 = ((v9 - *v8) >> 5) + 16 * (v8 - a2);
  v11 = (a3 - *a2) >> 5;
  v12 = v10 - v11;
  if (v10 - v11 < 1)
  {
    return;
  }

  v13 = (v7 + 8 * (v5 >> 7));
  if (v6 == v7)
  {
    v14 = 0;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = *v13 + 32 * (a1[4] & 0x7FLL);
    if (a3 == v14)
    {
LABEL_13:
      if (v14 == v9)
      {
        goto LABEL_23;
      }

      do
      {
LABEL_18:
        v17 = *v14;
        if (*v14)
        {
          *(v14 + 8) = v17;
          operator delete(v17);
        }

        v14 += 32;
        if (v14 - *v13 == 4096)
        {
          v18 = *(v13 + 1);
          v13 += 8;
          v14 = v18;
        }
      }

      while (v14 != v9);
      v7 = a1[1];
      v6 = a1[2];
      v5 = a1[4];
      v4 = a1[5];
      goto LABEL_23;
    }
  }

  v15 = v11 + 16 * (a2 - v13);
  if (v15 == (v14 - *v13) >> 5)
  {
    goto LABEL_13;
  }

  if (v15 >= 1)
  {
    v13 += 8 * (v15 >> 7);
    v14 = *v13 + 32 * (v15 & 0x7F);
    goto LABEL_13;
  }

  v16 = 127 - v15;
  v13 -= 8 * (v16 >> 7);
  v14 = *v13 + 32 * (~v16 & 0x7F);
  if (v14 != v9)
  {
    goto LABEL_18;
  }

LABEL_23:
  if (v6 == v7)
  {
    v19 = 0;
  }

  else
  {
    v19 = 16 * (v6 - v7) - 1;
  }

  v20 = v4 - v12;
  a1[5] = v20;
  if (v19 - (v20 + v5) >= 0x100)
  {
    do
    {
      operator delete(*(v6 - 8));
      v21 = a1[1];
      v6 = a1[2] - 8;
      a1[2] = v6;
      if (v6 == v21)
      {
        v22 = 0;
      }

      else
      {
        v22 = 16 * (v6 - v21) - 1;
      }
    }

    while ((v22 - (a1[5] + a1[4])) > 0xFF);
  }
}

double sub_99E3CC(uint64_t *a1, char **a2, uint64_t *a3, char **a4, const void ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
  }

  else
  {
    v10 = a1 + 1;
    sub_99E480(a2, (*a1 + 4096), *a5, a5[1], &v13);
    v8 = *(&v14 + 1);
    v7 = v14;
    *a5 = v14;
    for (a5[1] = v8; v10 != a3; a5[1] = v8)
    {
      v11 = *v10++;
      sub_99E480(v11, v11 + 512, v7, v8, &v13);
      v8 = *(&v14 + 1);
      v7 = v14;
      *a5 = v14;
    }

    a2 = *v10;
  }

  sub_99E480(a2, a4, v7, v8, &v13);
  result = *&v14;
  *a5 = v14;
  return result;
}

void sub_99E480(char **a1@<X1>, char **a2@<X2>, const void **a3@<X3>, const void **a4@<X4>, const void ***a5@<X8>)
{
  v6 = a1;
  if (a1 == a2)
  {
    goto LABEL_36;
  }

  v24 = a5;
  v25 = a2;
  v7 = *a3;
  while (1)
  {
    v9 = (v7 - a4 + 4096) >> 5;
    if ((a2 - v6) >> 5 < v9)
    {
      v9 = (a2 - v6) >> 5;
    }

    if (v9)
    {
      break;
    }

LABEL_5:
    v8 = a3[1];
    ++a3;
    v7 = v8;
    a4 = v8;
  }

  v10 = 32 * v9;
  v26 = &v6[4 * v9];
  v27 = a3;
  do
  {
    if (v6 != a4)
    {
      v12 = *v6;
      v11 = v6[1];
      v13 = v11 - *v6;
      v14 = a4[2];
      v15 = *a4;
      if (v14 - *a4 < v13)
      {
        if (v15)
        {
          a4[1] = v15;
          operator delete(v15);
          v14 = 0;
          *a4 = 0;
          a4[1] = 0;
          a4[2] = 0;
        }

        v16 = v13 >> 3;
        if (!((v13 >> 3) >> 61))
        {
          if (v14 >> 2 > v16)
          {
            v16 = v14 >> 2;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (!(v17 >> 61))
          {
            operator new();
          }
        }

        sub_1794();
      }

      v18 = a4[1];
      v19 = v18 - v15;
      if (v18 - v15 >= v13)
      {
        if (v11 != v12)
        {
          v23 = *a4;
          memmove(v15, *v6, v11 - *v6);
          v15 = v23;
        }

        v22 = &v15[v13];
      }

      else
      {
        if (v18 != v15)
        {
          memmove(v15, *v6, v18 - v15);
          v18 = a4[1];
        }

        v20 = &v12[v19];
        v21 = v11 - &v12[v19];
        if (v21)
        {
          memmove(v18, v20, v21);
        }

        v22 = &v18[v21];
      }

      a4[1] = v22;
    }

    a4[3] = v6[3];
    v6 += 4;
    a4 += 4;
    v10 -= 32;
  }

  while (v10);
  a2 = v25;
  v6 = v26;
  if (v26 != v25)
  {
    a3 = v27;
    goto LABEL_5;
  }

  a3 = v27;
  if (a4 == (*v27 + 4096))
  {
    a3 = v27 + 1;
    a4 = v27[1];
  }

  a5 = v24;
LABEL_36:
  *a5 = v6;
  a5[1] = a3;
  a5[2] = a4;
}

void sub_99E694(unint64_t *a1, unint64_t a2)
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

  if ((v4 & 0x7F) != 0)
  {
    v5 = (v4 >> 7) + 1;
  }

  else
  {
    v5 = v4 >> 7;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 7)
  {
    v7 = v6 >> 7;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 7)
  {
    for (a1[4] = v6 - (v7 << 7); v7; --v7)
    {
      v12 = a1[1];
      v14 = *v12;
      a1[1] = (v12 + 1);
      sub_2133C(a1, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

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

    for (a1[4] -= v7 << 7; v7; --v7)
    {
      v13 = a1[1];
      v14 = *v13;
      a1[1] = (v13 + 1);
      sub_2133C(a1, &v14);
    }
  }
}

void sub_99ED24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_99ED90(void **a1, uint64_t a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x84210842108421)
  {
    sub_1794();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 4) >= 0x42108421084210)
  {
    v5 = 0x84210842108421;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x84210842108421)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 16 * ((a1[1] - *a1) >> 4);
  sub_5F4668(v15, a2);
  v6 = 496 * v2 + 496;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = &v9[v15];
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = &v9[v15];
    do
    {
      sub_55A4D0(v12, v11);
      v11 += 496;
      v12 = v13 + 496;
    }

    while (v11 != v8);
    do
    {
      sub_55A8B4(v7);
      v7 += 496;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_99EF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_55A860(va);
  _Unwind_Resume(a1);
}

void *sub_99EF1C(void **a1, uint64_t a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x84210842108421)
  {
    sub_1794();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 4) >= 0x42108421084210)
  {
    v5 = 0x84210842108421;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x84210842108421)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 16 * ((a1[1] - *a1) >> 4);
  sub_5F4668(v15, a2);
  v6 = 496 * v2 + 496;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = &v9[v15];
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = &v9[v15];
    do
    {
      sub_55A4D0(v12, v11);
      v11 += 496;
      v12 = v13 + 496;
    }

    while (v11 != v8);
    do
    {
      sub_55A8B4(v7);
      v7 += 496;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_99F094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_55A860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_99F0A8(uint64_t a1)
{
  v2 = *(a1 + 776);
  if (v2)
  {
    v3 = *(a1 + 784);
    v4 = *(a1 + 776);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 776);
    }

    *(a1 + 784) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 768);
  if (v6 != -1)
  {
    (off_266F418[v6])(&v8, a1);
  }

  *(a1 + 768) = -1;
  return a1;
}

uint64_t sub_99F154(uint64_t a1)
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
        v6 = *(v4 - 24);
        if (v6)
        {
          v7 = *(v4 - 16);
          v8 = *(v4 - 24);
          if (v7 != v6)
          {
            do
            {
              v9 = *(v7 - 1);
              v7 -= 3;
              if (v9 < 0)
              {
                operator delete(*v7);
              }
            }

            while (v7 != v6);
            v8 = *(v4 - 24);
          }

          *(v4 - 16) = v6;
          operator delete(v8);
        }

        v10 = v4 - 800;
        v11 = *(v4 - 32);
        if (v11 != -1)
        {
          (off_266F418[v11])(&v13, v4 - 800);
        }

        *(v4 - 32) = -1;
        v4 -= 800;
      }

      while (v10 != v5);
    }
  }

  return a1;
}

char *sub_99F244(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xEF7BDEF7BDEF7BDFLL * ((v9 - v10) >> 4)) >= a5)
    {
      v15 = v10 - a2;
      if ((0xEF7BDEF7BDEF7BDFLL * ((v10 - a2) >> 4)) >= a5)
      {
        v19 = 496 * a5;
        v20 = &a2[496 * a5];
        v21 = v10 - 496 * a5;
        for (i = a1[1]; v21 < v10; i = v23 + 496)
        {
          sub_55A4D0(i, v21);
          v21 += 496;
        }

        a1[1] = i;
        if (v10 != v20)
        {
          v24 = v10 - 496;
          v25 = &v5[v19 - v10];
          v26 = v24 - v19;
          do
          {
            sub_53B8B8(v24, v26);
            v24 -= 496;
            v26 -= 496;
            v25 += 496;
          }

          while (v25);
        }

        v27 = v7 + 496 * a5;
        v28 = v5;
        do
        {
          sub_60226C(v28, v7);
          v7 += 496;
          v28 += 496;
        }

        while (v7 != v27);
      }

      else
      {
        v17 = v15 + a3;
        if (v15 + a3 == a4)
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
          v45 = 0;
          do
          {
            sub_5F4668((v10 + v45), v17 + v45);
            v45 += 496;
          }

          while (v17 + v45 != a4);
          v18 = v10 + v45;
          a1[1] = v10 + v45;
          if (v15 < 1)
          {
            return v5;
          }
        }

        v46 = 496 * a5;
        v47 = &v5[496 * a5];
        v48 = v18 - 496 * a5;
        for (j = v18; v48 < v10; j = v50 + 496)
        {
          sub_55A4D0(j, v48);
          v48 += 496;
        }

        a1[1] = j;
        if (v18 != v47)
        {
          v51 = v18 - 496;
          v52 = &v5[v46 - v18];
          v53 = v51 - v46;
          do
          {
            sub_53B8B8(v51, v53);
            v51 -= 496;
            v53 -= 496;
            v52 += 496;
          }

          while (v52);
        }

        v54 = v5;
        do
        {
          sub_60226C(v54, v7);
          v7 += 496;
          v54 += 496;
        }

        while (v7 != v17);
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x1084210842108421 * ((v10 - *a1) >> 4);
      if (v12 > 0x84210842108421)
      {
        sub_1794();
      }

      v13 = 0xEF7BDEF7BDEF7BDFLL * ((v9 - v11) >> 4);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x42108421084210)
      {
        v14 = 0x84210842108421;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 <= 0x84210842108421)
        {
          operator new();
        }

        sub_1808();
      }

      v29 = (16 * (&a2[-v11] >> 4));
      v56 = v29;
      v30 = 496 * a5;
      v31 = &v29[62 * a5];
      do
      {
        sub_5F4668(v29, v7);
        v29 += 62;
        v7 += 496;
        v30 -= 496;
      }

      while (v30);
      v32 = a1[1];
      v33 = v5;
      if (v32 != v5)
      {
        v34 = v5;
        v35 = v31;
        do
        {
          sub_55A4D0(v35, v34);
          v34 += 496;
          v35 = v36 + 496;
        }

        while (v34 != v32);
        v37 = v5;
        do
        {
          v37 = sub_55A8B4(v37) + 496;
        }

        while (v37 != v32);
        v33 = a1[1];
      }

      v38 = v31 + v33 - v5;
      a1[1] = v5;
      v39 = *a1;
      v40 = *a1 - v5;
      v41 = v56 + v40;
      if (*a1 != v5)
      {
        v42 = *a1;
        v43 = v56 + v40;
        do
        {
          sub_55A4D0(v43, v42);
          v42 += 496;
          v43 = v44 + 496;
        }

        while (v42 != v5);
        do
        {
          sub_55A8B4(v39);
          v39 += 496;
        }

        while (v39 != v5);
        v39 = *a1;
      }

      *a1 = v41;
      a1[1] = v38;
      a1[2] = 0;
      if (v39)
      {
        operator delete(v39);
      }

      return v56;
    }
  }

  return v5;
}

void sub_99F624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_55A860(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_99F63C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
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