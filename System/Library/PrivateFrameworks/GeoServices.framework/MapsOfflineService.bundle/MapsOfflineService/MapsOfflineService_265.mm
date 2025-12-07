void sub_101DF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void ***a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  sub_454784(&a49);
  if (a29 < 0)
  {
    operator delete(__p);
    if ((a35 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a35 & 0x80000000) == 0)
  {
LABEL_3:
    if (a42 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  operator delete(a30);
  if (a42 < 0)
  {
LABEL_4:
    operator delete(a37);
    if ((a48 & 0x80000000) == 0)
    {
LABEL_10:
      sub_C6579C(&a56);
      sub_101E2B0(&STACK[0x1080]);
      sub_CDCD6C(a23);
      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a43);
    goto LABEL_10;
  }

LABEL_8:
  if ((a48 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_101E1BC()
{
  v1 = *v0;
  if (*v0)
  {
    *(v0 + 8) = v1;
    operator delete(v1);
  }

  STACK[0x1088] = v0;
  JUMPOUT(0x101E1F0);
}

void sub_101E1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void ***a23)
{
  sub_C65AF0(&STACK[0x10C8]);
  v24 = STACK[0x10B0];
  if (STACK[0x10B0])
  {
    STACK[0x10B8] = v24;
    operator delete(v24);
    v25 = STACK[0x1098];
    if (!STACK[0x1098])
    {
LABEL_3:
      v26 = STACK[0x1080];
      if (!STACK[0x1080])
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v25 = STACK[0x1098];
    if (!STACK[0x1098])
    {
      goto LABEL_3;
    }
  }

  STACK[0x10A0] = v25;
  operator delete(v25);
  v26 = STACK[0x1080];
  if (!STACK[0x1080])
  {
LABEL_4:
    sub_CDCD6C(a23);
    _Unwind_Resume(a1);
  }

LABEL_7:
  v27 = STACK[0x1088];
  v28 = v26;
  if (STACK[0x1088] != v26)
  {
    v29 = STACK[0x1088];
    do
    {
      v31 = *(v29 - 32);
      v29 -= 32;
      v30 = v31;
      if (v31)
      {
        *(v27 - 24) = v30;
        operator delete(v30);
      }

      v27 = v29;
    }

    while (v29 != v26);
    v28 = STACK[0x1080];
  }

  STACK[0x1088] = v26;
  operator delete(v28);
  sub_CDCD6C(a23);
  _Unwind_Resume(a1);
}

char **sub_101E2B0(char **a1)
{
  sub_C65AF0(a1 + 9);
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

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      v7 = a1[1];
      do
      {
        v9 = *(v7 - 4);
        v7 -= 32;
        v8 = v9;
        if (v9)
        {
          *(v5 - 3) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_101E350(uint64_t a1, uint64_t *a2)
{
  *a1 = a2;
  *(a1 + 34) = 0;
  *(a1 + 24) = 0x3E4CCCCD3F000000;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 32;
  *(a1 + 72) = 0xFFFFFFFF00000000;
  v3 = (a1 + 72);
  *(a1 + 80) = 0;
  v4 = a1 + 80;
  *(a1 + 8) = xmmword_2267060;
  *(a1 + 32) = 0;
  v5 = sub_101E508(a2);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_101EA90((a1 + 88), v5, &__p);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  *(a1 + 33) = 1;
  *(a1 + 72) = 0xFFFFFFFF00000000;
  v6 = malloc_type_malloc(8 * *(a1 + 64), 0x100004000313F17uLL);
  *(a1 + 80) = v6;
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = (v6 + 8 * v7);
    v9 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v9 < 0xF || v6 < v4 && v3 < v8)
    {
      goto LABEL_14;
    }

    v10 = v9 + 1;
    v11 = vld1q_dup_f64(v3);
    v12 = v6 + 1;
    v13 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v12[-1] = v11;
      *v12 = v11;
      v12 += 2;
      v13 -= 4;
    }

    while (v13);
    v6 = (v6 + 8 * (v10 & 0x3FFFFFFFFFFFFFFCLL));
    if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_14:
      do
      {
        v6->f64[0] = *v3;
        v6 = (v6 + 8);
      }

      while (v6 != v8);
    }
  }

  return a1;
}

void sub_101E4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_34BE0((v11 + 88));
  if (!*v12)
  {
    _Unwind_Resume(a1);
  }

  free(*v12);
  _Unwind_Resume(a1);
}

uint64_t sub_101E508(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3872);
  if (v2 != -1)
  {
    return v2;
  }

  v2 = 1;
  v4 = sub_101E790(*a1, 1u, 1);
  if (!v4)
  {
    return v2;
  }

  v5 = &v4[-*v4];
  v6 = *v5;
  if (v6 < 0xB)
  {
    if (v6 < 9)
    {
      return 1;
    }
  }

  else if (*(v5 + 5))
  {
    v7 = &v4[*(v5 + 5) + *&v4[*(v5 + 5)]];
    v8 = &v7[-*v7];
    if (*v8 >= 5u && (v9 = *(v8 + 2)) != 0)
    {
      return v7[v9];
    }

    else
    {
      return 0;
    }
  }

  v10 = *(v5 + 4);
  if (!v10)
  {
    return 1;
  }

  v11 = sub_101E640(&v4[v10 + *&v4[v10]], 0);
  v12 = (v11 - *v11);
  if (*v12 >= 5u && (v13 = v12[2]) != 0)
  {
    v14 = *(v11 + v13);
    *(v1 + 3872) = v14;
    return v14;
  }

  else
  {
    *(v1 + 3872) = 0;
    return 0;
  }
}

uint64_t sub_101E640(unsigned int *a1, unsigned int a2)
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

void sub_101E710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

char *sub_101E790(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 688) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 696) = v3;
    v4 = *(a1 + 704);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 712) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 720) = v3;
    v4 = *(a1 + 728);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 736) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 744) = v3;
    v4 = *(a1 + 752);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 760) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 768) = v3;
    v4 = *(a1 + 776);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 744);
    v8 = *(a1 + 720);
    v9 = *(a1 + 696);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 696);
    }

    v11 = 28;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 720);
    }

    v13 = 29;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 744);
    }

    v15 = *(a1 + 768);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 30;
    }

    v18 = sub_2D52A4(*a1, 7, a2, 1);
    v19 = 31;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_101E964(v21);
  return 0;
}

uint64_t sub_101E964(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(7u);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_101EA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101EA90(void *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_101EC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  *(v9 + 8) = v10;
  sub_35390(&a9);
  _Unwind_Resume(a1);
}

void **sub_101EC2C(void ***a1, uint64_t *a2, __int128 *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 32 * v3;
  v8 = *a2;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = -1;
  sub_1015104(32 * v3, v8, a3);
  v9 = (32 * v3 + 32);
  v10 = *a1;
  v11 = a1[1];
  v12 = (v18 + *a1 - v11);
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = (v18 + *a1 - v11);
    do
    {
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      *v14 = *v13;
      v15 = *(v13 + 3);
      v14[2] = *(v13 + 2);
      *v13 = 0;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      v14[3] = v15;
      v13 += 32;
      v14 += 4;
    }

    while (v13 != v11);
    do
    {
      v16 = *v10;
      if (*v10)
      {
        *(v10 + 1) = v16;
        operator delete(v16);
      }

      v10 += 32;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_101EDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  sub_DA13F4(va);
  _Unwind_Resume(a1);
}

void sub_101EDCC(int32x2_t *a1, unint64_t *a2)
{
  v31 = 0;
  sub_101F030(a1, a2, &v31);
  v3 = a1[11];
  v4 = a1[12];
  if (v3 == v4)
  {
    return;
  }

  while (2)
  {
    v5 = *v3;
    v6 = v3[1];
    while (v5 != v6)
    {
      if (!*v5 || *(v5 + 1) == -1)
      {
        goto LABEL_7;
      }

      sub_101F9D8(&a1[1], 1);
      v7 = *&a1[8] - 1;
      v8 = *v5;
      v9 = __ROR8__(*v5, 32);
      v10 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) >> 33));
      v11 = v10 ^ (v10 >> 33);
      v12 = a1[10];
      v13 = a1[9].i32[0];
      v14 = a1[9].i32[1];
      v15 = v11 & v7;
      v16 = (*&v12 + 8 * (v11 & v7));
      v17 = *v16;
      v18 = v16[1];
      v19 = a1[6];
      if (v13 == v17 && v14 == v18)
      {
        goto LABEL_28;
      }

      if (v19)
      {
        v21 = -1;
        v22 = 1;
        do
        {
          if (a1[5].i32[0] == v17 && a1[5].i32[1] == v18)
          {
            if (v21 == -1)
            {
              v21 = v15;
            }
          }

          else if (__PAIR64__(v18, v17) == v8)
          {
            goto LABEL_39;
          }

          v15 = (v15 + v22) & v7;
          v23 = (*&v12 + 8 * v15);
          v17 = *v23;
          v18 = v23[1];
          ++v22;
        }

        while (v13 != v17 || v14 != v18);
        if (v21 == -1)
        {
LABEL_28:
          v21 = v15;
        }

        v25 = a1[7];
        if (*&v25 - *&v19 >= 0x1FFFFFFFFFFFFFFFuLL)
        {
          goto LABEL_41;
        }

LABEL_30:
        if (*&v19 && (v26 = vceq_s32(a1[5], *(*&v12 + 8 * v21)), (v26.i32[0] & v26.i32[1] & 1) != 0))
        {
          a1[6] = (*&v19 - 1);
        }

        else
        {
          a1[7] = (*&v25 + 1);
        }

        *(*&v12 + 8 * v21) = *v5;
        goto LABEL_7;
      }

      v27 = 1;
      while (__PAIR64__(v18, v17) != v8)
      {
        v15 = (v15 + v27) & v7;
        v28 = (*&v12 + 8 * v15);
        v17 = *v28;
        v18 = v28[1];
        ++v27;
        if (v13 == v17 && v14 == v18)
        {
          goto LABEL_28;
        }
      }

LABEL_39:
      if (v15 == -1)
      {
        v21 = -1;
        v25 = a1[7];
        if (*&v25 - *&v19 >= 0x1FFFFFFFFFFFFFFFuLL)
        {
LABEL_41:
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A000(exception, "insert overflow");
        }

        goto LABEL_30;
      }

LABEL_7:
      ++v5;
    }

    v3 += 3;
    if (v3 != v4)
    {
      continue;
    }

    break;
  }
}

void sub_101F030(uint64_t a1, unint64_t *a2, int *a3)
{
  v7 = *(a1 + 88);
  v6 = *(a1 + 96);
  if (v7 != v6)
  {
    v8 = v6 - v7 - 24;
    v9 = *(a1 + 88);
    if (v8 < 0x18)
    {
      goto LABEL_52;
    }

    v10 = v8 / 0x18 + 1;
    v9 = &v7[24 * (v10 & 0x1FFFFFFFFFFFFFFELL)];
    v11 = (v7 + 24);
    v12 = v10 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      v13 = *v11;
      *(v11 - 2) = *(v11 - 3);
      v11[1] = v13;
      v11 += 6;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_52:
      do
      {
        *(v9 + 1) = *v9;
        v9 += 24;
      }

      while (v9 != v6);
    }
  }

  v14 = *a1;
  v15 = *a2;
  v48 = 1;
  v16 = sub_101F374(*v14, v15 & 0xFFFFFFFFFFFFFFFLL, &v48);
  v17 = *a3;
  v18 = v17 + 1;
  v19 = sub_101E508(*a1);
  if (v17 + 1 > v19)
  {
    v20 = v17 + 1;
  }

  else
  {
    v20 = v19;
  }

  if (v18 < v19)
  {
    while (1)
    {
      v22 = *a1;
      v23 = *a2;
      v49 = v18;
      v24 = sub_101F854(*v22, v23 & 0xFFFFFFFFFFFFFFFLL, (v23 & 0x1000000000000000) != 0, &v49);
      if (v24 > 0xFFFFFFFEFFFFFFFFLL || v24 == 0)
      {
        goto LABEL_14;
      }

      v26 = *(a1 + 88) + 24 * v18;
      v28 = *(v26 + 8);
      v27 = *(v26 + 16);
      if (v28 < v27)
      {
        break;
      }

      v29 = *v26;
      v30 = v28 - *v26;
      v31 = v30 >> 3;
      v32 = (v30 >> 3) + 1;
      if (v32 >> 61)
      {
        goto LABEL_48;
      }

      v33 = v27 - v29;
      if (v33 >> 2 > v32)
      {
        v32 = v33 >> 2;
      }

      if (v33 >= 0x7FFFFFFFFFFFFFF8)
      {
        v34 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        if (!(v34 >> 61))
        {
          operator new();
        }

LABEL_49:
        sub_1808();
      }

      *(8 * v31) = v24;
      v35 = 8 * v31 + 8;
      memcpy(0, v29, v30);
      *v26 = 0;
      *(v26 + 8) = v35;
      *(v26 + 16) = 0;
      if (v29)
      {
        operator delete(v29);
      }

      *(v26 + 8) = v35;
      if (v16)
      {
        goto LABEL_34;
      }

LABEL_14:
      if (v20 == ++v18)
      {
        return;
      }
    }

    *v28 = v24;
    *(v26 + 8) = v28 + 1;
    if (!v16)
    {
      goto LABEL_14;
    }

LABEL_34:
    v36 = *(a1 + 88) + 24 * v18;
    v37 = *a1;
    v38 = *a2;
    v50 = v18;
    v39 = sub_101F854(*v37, v38 & 0xFFFFFFFFFFFFFFFLL, (v38 & 0x1000000000000000) == 0, &v50);
    v41 = *(v36 + 8);
    v40 = *(v36 + 16);
    if (v41 < v40)
    {
      *v41 = v39;
      v21 = (v41 + 1);
    }

    else
    {
      v42 = *v36;
      v43 = v41 - *v36;
      v44 = v43 >> 3;
      v45 = (v43 >> 3) + 1;
      if (v45 >> 61)
      {
LABEL_48:
        sub_1794();
      }

      v46 = v40 - v42;
      if (v46 >> 2 > v45)
      {
        v45 = v46 >> 2;
      }

      if (v46 >= 0x7FFFFFFFFFFFFFF8)
      {
        v47 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        if (!(v47 >> 61))
        {
          operator new();
        }

        goto LABEL_49;
      }

      *(8 * v44) = v39;
      v21 = 8 * v44 + 8;
      memcpy(0, v42, v43);
      *v36 = 0;
      *(v36 + 8) = v21;
      *(v36 + 16) = 0;
      if (v42)
      {
        operator delete(v42);
      }
    }

    *(v36 + 8) = v21;
    goto LABEL_14;
  }
}

BOOL sub_101F374(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v5 = 1;
  v6 = sub_101E790(a1, a2, 1);
  if (!v6)
  {
    return v5;
  }

  v7 = &v6[-*v6];
  if (*v7 < 5u)
  {
    return v5;
  }

  v8 = *(v7 + 2);
  if (!v8)
  {
    return v5;
  }

  v9 = HIDWORD(a2);
  v10 = v6;
  v11 = &v6[v8];
  v12 = *&v6[v8];
  v13 = *sub_101F5B8(&v6[v8 + v12], v9);
  if (v13 == *(sub_101F5B8(&v11[v12], v9) + 1))
  {
    return 0;
  }

  v15 = (v10 - *v10);
  if (*v15 >= 5u && (v16 = v15[2]) != 0 && ((v17 = *sub_101F5B8((v10 + v16 + *(v10 + v16)), v9), v18 = (v10 - *v10), *v18 < 7u) || (v19 = v18[3]) == 0 ? (v20 = 0) : (v20 = (v10 + v19 + *(v10 + v19))), (v21 = sub_101F704(v20, v17), v22 = (v21 - *v21), *v22 >= 5u) && (v23 = v22[2]) != 0))
  {
    v24 = (v21 + v23 + *(v21 + v23));
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_C54264(v24, *a3 - 1);
  v26 = (v10 - *v10);
  if (*v26 >= 5u && (v27 = v26[2]) != 0 && ((v28 = *(sub_101F5B8((v10 + v27 + *(v10 + v27)), v9) + 1), v29 = (v10 - *v10), *v29 < 7u) || (v30 = v29[3]) == 0 ? (v31 = 0) : (v31 = (v10 + v30 + *(v10 + v30))), (v32 = sub_101F704(v31, v28), v33 = (v32 - *v32), *v33 >= 5u) && (v34 = v33[2]) != 0))
  {
    v35 = (v32 + v34 + *(v32 + v34));
  }

  else
  {
    v35 = 0;
  }

  v36 = sub_C54264(v35, *a3 - 1);
  return v25[1] != v36[1] || *v25 != *v36;
}

unsigned int *sub_101F5B8(unsigned int *a1, unsigned int a2)
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

  return &a1[a2 + 1];
}

void sub_101F684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t sub_101F704(unsigned int *a1, unsigned int a2)
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

void sub_101F7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t sub_101F854(uint64_t a1, unint64_t a2, int a3, _DWORD *a4)
{
  v8 = sub_101E790(a1, a2, 1);
  if (!v8)
  {
    return 0xFFFFFFFF00000000;
  }

  v9 = &v8[-*v8];
  if (*v9 < 5u)
  {
    goto LABEL_13;
  }

  v10 = *(v9 + 2);
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = HIDWORD(a2);
  v12 = v8;
  v13 = sub_101F5B8(&v8[v10 + *&v8[v10]], v11);
  v14 = 2;
  if (a3)
  {
    v14 = 0;
  }

  v15 = *(v13 + v14);
  v16 = (v12 - *v12);
  if (*v16 >= 7u && (v17 = v16[3]) != 0)
  {
    v18 = sub_101F704((v12 + v17 + *(v12 + v17)), v15);
    v19 = (v18 - *v18);
    if (*v19 < 5u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18 = sub_101F704(0, v15);
    v19 = (v18 - *v18);
    if (*v19 < 5u)
    {
LABEL_13:
      v21 = 0;
      goto LABEL_14;
    }
  }

  v20 = v19[2];
  if (!v20)
  {
    goto LABEL_13;
  }

  v21 = (v18 + v20 + *(v18 + v20));
LABEL_14:
  v22 = sub_C54264(v21, *a4 - 1);
  v23 = *v22;
  v24 = v22[1];
  if (*(a1 + 3876) != 1)
  {
    return (v24 << 32) | v23;
  }

  v25 = sub_101E790(a1, v23, 1);
  if (v25)
  {
    v26 = &v25[-*v25];
    if (*v26 >= 9u)
    {
      v27 = *(v26 + 4);
      if (v27)
      {
        if (*&v25[v27 + *&v25[v27]])
        {
          return (v24 << 32) | v23;
        }
      }
    }
  }

  return 0xFFFFFFFF00000000;
}

uint64_t sub_101F9D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_101FCA4(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 48);
  if (v5 >= ~a2)
  {
    goto LABEL_27;
  }

  v6 = *(a1 + 56);
  v7 = v5 + a2;
  if (v6 < 4 || v7 > *a1)
  {
    v8 = *(a1 + 16);
    v9 = vcvts_n_u32_f32(v8, 2uLL);
    v10 = 4;
    if (v7 >= v9)
    {
      while ((v10 & 0x8000000000000000) == 0)
      {
        v10 *= 2;
        if (v7 < (v8 * v10))
        {
          goto LABEL_10;
        }
      }

LABEL_27:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

LABEL_10:
    if (v10 > v6)
    {
      v11 = *(a1 + 40);
      v12 = v5 - v11 + a2;
      v13 = 4;
      if (v6 > 4)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (v12 >= (v8 * v13))
      {
LABEL_13:
        while ((v13 & 0x8000000000000000) == 0)
        {
          v13 *= 2;
          if (v13 >= v6)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_27;
      }

      v14 = v7 - (v11 >> 2);
      v15 = 4;
      if (v14 >= v9)
      {
        while ((v15 & 0x8000000000000000) == 0)
        {
          v15 *= 2;
          if (v14 < (v8 * v15))
          {
            goto LABEL_19;
          }
        }

        goto LABEL_27;
      }

LABEL_19:
      if (v13 <= 0x7FFFFFFFFFFFFFFELL && v13 < v15 && v12 >= (*(a1 + 20) * (2 * v13)))
      {
        v13 *= 2;
      }

      sub_101FDDC(&v24, a1, v13);
      v17 = *a1;
      v16 = *(a1 + 16);
      v18 = v25;
      *a1 = v24;
      *(a1 + 16) = v18;
      v24 = v17;
      v25 = v16;
      v19 = *(a1 + 32);
      *(a1 + 32) = v26;
      v26 = v19;
      v20 = *(a1 + 48);
      *(a1 + 48) = v27;
      v27 = v20;
      *&v16 = v28;
      v21 = *(a1 + 56);
      *(a1 + 56) = v28;
      v28 = v21;
      v22 = *(a1 + 72);
      *(a1 + 72) = v29;
      v29 = v22;
      *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v16)));
      *(a1 + 24) = 0;
      v24 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v25, v21)));
      BYTE8(v25) = 0;
      if (v22)
      {
        free(v22);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_101FCA4(uint64_t a1)
{
  v2 = *(a1 + 48) - *(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 56), v5 < 0x21))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = v2;
    do
    {
      v7 = v5;
      v5 >>= 1;
    }

    while (v7 >= 0x42 && (*(a1 + 20) * v5) > v6);
    sub_101FDDC(&v16, a1, v5);
    v9 = *a1;
    v8 = *(a1 + 16);
    v10 = v17;
    *a1 = v16;
    *(a1 + 16) = v10;
    v16 = v9;
    v17 = v8;
    v11 = *(a1 + 32);
    *(a1 + 32) = v18;
    v18 = v11;
    v12 = *(a1 + 48);
    *(a1 + 48) = v19;
    v19 = v12;
    *&v8 = v20;
    v13 = *(a1 + 56);
    *(a1 + 56) = v20;
    v20 = v13;
    v14 = *(a1 + 72);
    *(a1 + 72) = v21;
    v21 = v14;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v8)));
    *(a1 + 24) = 0;
    v16 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v17, v13)));
    BYTE8(v17) = 0;
    if (v14)
    {
      free(v14);
    }

    result = 1;
    *(a1 + 24) = 0;
  }

  return result;
}

float sub_101FDDC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*(a1 + 16), 0)));
    *(a1 + 24) = 0;
    sub_101FF10(a1, a2, a3);
  }

  else
  {
    v6 = 4;
    if (a3 > 4)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v7 = *(a1 + 16) * v6;
      if (*(a2 + 48) - *(a2 + 40) < v7)
      {
        break;
      }

      do
      {
LABEL_5:
        if ((v6 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v6 *= 2;
      }

      while (v6 < a3);
    }

    *(a1 + 56) = v6;
    result = *(a1 + 20) * v6;
    *a1 = v7;
    *(a1 + 8) = result;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_101FF10(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a2 + 48) - *(a2 + 40);
  v6 = 4;
  if (a3 > 4)
  {
    goto LABEL_3;
  }

  while (v5 >= (*(a1 + 16) * v6))
  {
    do
    {
LABEL_3:
      if ((v6 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v6 *= 2;
    }

    while (v6 < a3);
  }

  sub_D5B9C0(a1, v6);
  v7 = *(a2 + 56);
  if (v7)
  {
    v8 = *(a2 + 64);
    v9 = *(a2 + 68);
    if (*(a2 + 40))
    {
      v10 = 8 * v7;
      v11 = *(a2 + 72);
      while (1)
      {
        v12 = *(v11 + 4);
        if ((v8 != *v11 || v9 != v12) && (*(a2 + 32) != *v11 || *(a2 + 36) != v12))
        {
          break;
        }

        v11 += 8;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v34 = 8 * v7;
      v11 = *(a2 + 72);
      while (v8 == *v11 && v9 == *(v11 + 4))
      {
        v11 += 8;
        v34 -= 8;
        if (!v34)
        {
          goto LABEL_60;
        }
      }
    }
  }

  else
  {
    v11 = *(a2 + 72);
  }

  v15 = *(a2 + 72) + 8 * v7;
  if (v11 != v15)
  {
    do
    {
      v16 = *(a1 + 56) - 1;
      v17 = __ROR8__(*v11, 32);
      v18 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v17 ^ (v17 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v17 ^ (v17 >> 33))) >> 33));
      v19 = v18 ^ (v18 >> 33);
      v20 = *(a1 + 72);
      v21 = *(a1 + 64);
      v22 = *(a1 + 68);
      v23 = v19 & v16;
      v24 = (v20 + 8 * v23);
      if (v21 != *v24 || v22 != v24[1])
      {
        v26 = 1;
        do
        {
          v23 = (v23 + v26) & v16;
          v24 = (v20 + 8 * v23);
          ++v26;
        }

        while (v21 != *v24 || v22 != v24[1]);
      }

      *v24 = *v11;
      ++*(a1 + 48);
      v11 += 8;
      if (v11 != v15)
      {
        v28 = *(a2 + 64);
        v29 = *(a2 + 68);
        if (*(a2 + 40))
        {
          do
          {
            v30 = *(v11 + 4);
            if ((v28 != *v11 || v29 != v30) && (*(a2 + 32) != *v11 || *(a2 + 36) != v30))
            {
              break;
            }

            v11 += 8;
          }

          while (v11 != v15);
        }

        else
        {
          do
          {
            if (v28 != *v11 || v29 != *(v11 + 4))
            {
              break;
            }

            v11 += 8;
          }

          while (v11 != v15);
        }
      }
    }

    while (v11 != *(a2 + 72) + 8 * *(a2 + 56));
  }

LABEL_60:
  ++*(a1 + 28);
}

void **sub_1020178(void ***a1, uint64_t *a2, __int128 *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 32 * v3;
  v8 = *a2;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = -1;
  sub_1015104(32 * v3, v8, a3);
  v9 = (32 * v3 + 32);
  v10 = *a1;
  v11 = a1[1];
  v12 = (v18 + *a1 - v11);
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = (v18 + *a1 - v11);
    do
    {
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      *v14 = *v13;
      v15 = *(v13 + 3);
      v14[2] = *(v13 + 2);
      *v13 = 0;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      v14[3] = v15;
      v13 += 32;
      v14 += 4;
    }

    while (v13 != v11);
    do
    {
      v16 = *v10;
      if (*v10)
      {
        *(v10 + 1) = v16;
        operator delete(v16);
      }

      v10 += 32;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_10202F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  sub_DA13F4(va);
  _Unwind_Resume(a1);
}

void **sub_1020318(void ***a1, uint64_t *a2, __int128 *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 32 * v3;
  v8 = *a2;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = -1;
  sub_1015104(32 * v3, v8, a3);
  v9 = (32 * v3 + 32);
  v10 = *a1;
  v11 = a1[1];
  v12 = (v18 + *a1 - v11);
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = (v18 + *a1 - v11);
    do
    {
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      *v14 = *v13;
      v15 = *(v13 + 3);
      v14[2] = *(v13 + 2);
      *v13 = 0;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      v14[3] = v15;
      v13 += 32;
      v14 += 4;
    }

    while (v13 != v11);
    do
    {
      v16 = *v10;
      if (*v10)
      {
        *(v10 + 1) = v16;
        operator delete(v16);
      }

      v10 += 32;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_1020494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  sub_DA13F4(va);
  _Unwind_Resume(a1);
}

unint64_t sub_10204B8(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_10205B0(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_10205B0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v2 = (&dword_0 + 1);
LABEL_4:
    sub_10205E0(a1, v2);
  }

  if (*(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    v2 = ((2 * v1) | 1);
    goto LABEL_4;
  }

  return sub_10207F8(a1);
}

uint64_t sub_10207F8(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_27;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_27:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = (*(result + 8) + 32 * i);
        v19 = *v18;
        LODWORD(v18) = v18[1];
        v20 = 0x2127599BF4325C37 * ((((v19 << 32) + 16 * v18) | (v18 >> 29) & 2 | (v18 >> 31) | (v18 >> 27) & 4 | (v18 >> 25) & 8) ^ (((v19 << 32) + 16 * v18) >> 23));
        v21 = (v20 ^ ~(v20 >> 47)) + ((v20 ^ (v20 >> 47)) << 21);
        v22 = 21 * ((265 * (v21 ^ (v21 >> 24))) ^ ((265 * (v21 ^ (v21 >> 24))) >> 14));
        v23 = 2147483649u * (v22 ^ (v22 >> 28));
        v24 = v13 & (v23 >> 7);
        v25 = *(v17->i64 + v24) & (~*(v17->i64 + v24) << 7) & 0x8080808080808080;
        if (v25)
        {
          v15 = v13 & (v23 >> 7);
        }

        else
        {
          v26 = 8;
          v15 = v13 & (v23 >> 7);
          do
          {
            v15 = (v15 + v26) & v13;
            v26 += 8;
            v25 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v25);
        }

        v16 = (v15 + (__clz(__rbit64(v25)) >> 3)) & v13;
        if ((((v16 - v24) ^ (i - v24)) & v13) > 7)
        {
          v27 = v17->u8[v16];
          v17->i8[v16] = v23 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v23 & 0x7F;
          v28 = *(result + 8);
          if (v27 == 128)
          {
            v29 = (v28 + 32 * v16);
            v30 = v28 + 32 * i;
            *v29 = *v30;
            v29[1] = 0;
            v29[2] = 0;
            v29[3] = 0;
            *(v29 + 1) = *(v30 + 8);
            v29[3] = *(v30 + 24);
            *(v30 + 16) = 0;
            *(v30 + 24) = 0;
            *(v30 + 8) = 0;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v31 = (v28 + 32 * i);
            v32 = *v31;
            v33 = v31[3];
            v34 = *(v31 + 1);
            v31[2] = 0;
            v31[3] = 0;
            v31[1] = 0;
            v35 = *(result + 8);
            v36 = (v35 + 32 * i);
            v37 = 32 * v16;
            v38 = v35 + v37;
            *v36 = *v38;
            v36[1] = 0;
            v36[2] = 0;
            v36[3] = 0;
            *(v36 + 1) = *(v38 + 8);
            v36[3] = *(v38 + 24);
            *(v38 + 16) = 0;
            *(v38 + 24) = 0;
            *(v38 + 8) = 0;
            v39 = *(result + 8) + v37;
            *v39 = v32;
            *(v39 + 8) = v34;
            *(v39 + 24) = v33;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v23 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v23 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v40 = i - (i >> 3);
    v41 = i == 7;
    v42 = 6;
    if (!v41)
    {
      v42 = v40;
    }

    *(result + 40) = v42 - *(result + 16);
  }

  else
  {
    *(result + 40) = -*(result + 16);
  }

  return result;
}

void *sub_1020B2C(void ***a1, void *a2)
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

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  v8 = a2[1];
  if (v8 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *&dword_18[8 * v2] = a2[3];
  v9 = *a1;
  v10 = a1[1];
  v11 = (v7 + *a1 - v10);
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = (v7 + *a1 - v10);
    do
    {
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      *v13 = *v12;
      v14 = *(v12 + 3);
      v13[2] = *(v12 + 2);
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      v13[3] = v14;
      v12 += 32;
      v13 += 4;
    }

    while (v12 != v10);
    do
    {
      v15 = *v9;
      if (*v9)
      {
        *(v9 + 1) = v15;
        operator delete(v15);
      }

      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = (v7 + 32);
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return (v7 + 32);
}

void sub_1020D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  sub_DA13F4(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1020D4C(_DWORD *a1, _DWORD *a2, double *a3)
{
  v3 = *a3;
  v4 = 1.0;
  v5 = 1.0 - *a3;
  LODWORD(v4) = *a1;
  v6 = v5 * v4;
  if (v6 >= 0.0)
  {
    if (v6 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v7 = (v6 + v6) + 1;
  }

  else
  {
    if (v6 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v7 = (v6 + v6) - 1 + (((v6 + v6) - 1) >> 63);
  }

  v6 = (v7 >> 1);
LABEL_7:
  v8 = v5 * a1[1];
  if (v8 >= 0.0)
  {
    HIDWORD(v9) = 1127219200;
    if (v8 >= 4.50359963e15)
    {
      goto LABEL_13;
    }

    v10 = (v8 + v8) + 1;
  }

  else
  {
    HIDWORD(v9) = -1020264448;
    if (v8 <= -4.50359963e15)
    {
      goto LABEL_13;
    }

    v10 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
  }

  v8 = (v10 >> 1);
LABEL_13:
  LODWORD(v9) = *a2;
  v11 = v3 * v9;
  if (v11 >= 0.0)
  {
    if (v11 >= 4.50359963e15)
    {
      goto LABEL_19;
    }

    v12 = (v11 + v11) + 1;
  }

  else
  {
    if (v11 <= -4.50359963e15)
    {
      goto LABEL_19;
    }

    v12 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
  }

  v11 = (v12 >> 1);
LABEL_19:
  v13 = v3 * a2[1];
  if (v13 >= 0.0)
  {
    if (v13 < 4.50359963e15)
    {
      v14 = (v13 + v13) + 1;
      goto LABEL_24;
    }
  }

  else if (v13 > -4.50359963e15)
  {
    v14 = (v13 + v13) - 1 + (((v13 + v13) - 1) >> 63);
LABEL_24:
    v13 = (v14 >> 1);
  }

  return (v11 + v6) | ((v13 + v8) << 32);
}

void sub_1020EE8()
{
  byte_27C0EB7 = 3;
  LODWORD(qword_27C0EA0) = 5136193;
  byte_27C0ECF = 3;
  LODWORD(qword_27C0EB8) = 5136194;
  byte_27C0EE7 = 3;
  LODWORD(qword_27C0ED0) = 5136195;
  byte_27C0EFF = 15;
  strcpy(&qword_27C0EE8, "vehicle_mass_kg");
  byte_27C0F17 = 21;
  strcpy(&xmmword_27C0F00, "vehicle_cargo_mass_kg");
  byte_27C0F2F = 19;
  strcpy(&qword_27C0F18, "vehicle_aux_power_w");
  byte_27C0F47 = 15;
  strcpy(&qword_27C0F30, "dcdc_efficiency");
  strcpy(&qword_27C0F48, "drive_train_efficiency");
  HIBYTE(word_27C0F5E) = 22;
  operator new();
}

void sub_10210C4(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C0F5E) < 0)
  {
    sub_21E6954();
  }

  sub_21E6960();
  _Unwind_Resume(a1);
}

void sub_10210E4(uint64_t *a1, uint64_t a2, void *a3)
{
  *a1 = sub_3AF6B4(a2);
  a1[1] = sub_3B1348(a2);
  a1[2] = sub_3B1AF0(a2);
  a1[3] = sub_3AF144(a2);
  sub_FCDE30(__p, a3);
  sub_FCC968((a1 + 4), __p, a2);
  operator new();
}

void sub_1021220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_4199F0((v15 + 32));
  _Unwind_Resume(a1);
}

unint64_t sub_1021280(uint64_t a1, uint64_t a2)
{
  v3 = sub_F6D17C(*a2, *(a2 + 8));
  v4 = (*v3 - **v3);
  if (*v4 >= 0x2Fu && (v5 = v4[23]) != 0 && ((v6 = *(*v3 + v5), v7 = v6 > 0x2D, v8 = (1 << v6) & 0x208040000000, !v7) ? (v9 = v8 == 0) : (v9 = 1), !v9 && (v10 = sub_F6D17C(*(a2 + 16), *(a2 + 24)), v11 = (*v10 - **v10), *v11 >= 0x2Fu) && (v12 = v11[23]) != 0 && (v13 = *(*v10 + v12), v13 <= 0x2D)))
  {
    return (0x208040000000uLL >> v13) & 1;
  }

  else
  {
    return 0;
  }
}

int **sub_1021344(int **result, unint64_t a2, void *a3, unint64_t a4, double **a5)
{
  v9 = result;
  if (result)
  {
    result = sub_F6D024(result);
    v10 = result;
    if (a3)
    {
      result = sub_F6D024(a3);
      if (a2 >= v10 || a4 >= result)
      {
        if (a2 < v10 == a4 < result)
        {
          return result;
        }
      }

      else
      {
        v11 = sub_F6D17C(v9, a2);
        result = sub_F6D17C(a3, a4);
        if (v11 == result)
        {
          return result;
        }
      }

      goto LABEL_13;
    }

    if (a2 < result)
    {
      v12 = 1;
      goto LABEL_22;
    }
  }

  else if (a3)
  {
    result = sub_F6D024(a3);
    if (a4 < result)
    {
LABEL_13:
      v12 = 0;
      while (1)
      {
LABEL_22:
        v17 = a2++;
        if (v9)
        {
          result = sub_F6D024(v9);
          v18 = result;
          if (v12)
          {
            if (a2 >= result)
            {
              return result;
            }
          }

          else
          {
            result = sub_F6D024(a3);
            if (a2 >= v18 || a4 >= result)
            {
              if (a2 < v18 == a4 < result)
              {
                return result;
              }
            }

            else
            {
              v19 = sub_F6D17C(v9, a2);
              result = sub_F6D17C(a3, a4);
              if (v19 == result)
              {
                return result;
              }
            }
          }
        }

        else
        {
          if (v12)
          {
            return result;
          }

          result = sub_F6D024(a3);
          if (a4 >= result)
          {
            return result;
          }
        }

        v20 = sub_F6D17C(v9, v17);
        result = sub_F6D17C(v9, a2);
        v21 = (*v20 - **v20);
        v22 = *v21;
        if (*(v20 + 38))
        {
          if (v22 >= 0x49)
          {
            v23 = v21[36];
            if (v23)
            {
              goto LABEL_40;
            }
          }
        }

        else if (v22 >= 0x4B)
        {
          v23 = v21[37];
          if (v23)
          {
LABEL_40:
            v24 = *(*v20 + v23);
            v25 = *result;
            v26 = (*result - **result);
            v27 = *v26;
            if (*(result + 38))
            {
              goto LABEL_45;
            }

            goto LABEL_41;
          }
        }

        v24 = -1;
        v25 = *result;
        v26 = (*result - **result);
        v27 = *v26;
        if (*(result + 38))
        {
LABEL_45:
          if (v27 < 0x4B)
          {
            goto LABEL_14;
          }

          v28 = v26[37];
          if (!v28)
          {
            goto LABEL_14;
          }

          goto LABEL_47;
        }

LABEL_41:
        if (v27 < 0x49 || (v28 = v26[36]) == 0)
        {
LABEL_14:
          v13 = 0xFFFF;
          goto LABEL_15;
        }

LABEL_47:
        v13 = *(v25 + v28);
LABEL_15:
        v14 = v24 + 18000;
        v15 = v24 - 18000;
        if ((v14 >> 5) < 0x465u)
        {
          v15 = v14;
        }

        v16 = v13 - v15;
        if (v16 > 18000)
        {
          v16 -= 36000;
        }

        if (v16 < -17999)
        {
          v16 += 36000;
        }

        **a5 = **a5 + v16 / 100.0;
      }
    }
  }

  return result;
}

uint64_t sub_10215EC(uint64_t a1, int ***a2)
{
  if (sub_10217A4(a1, a2))
  {
    return 1;
  }

  v5 = sub_F6D17C(*a2, a2[1]);
  v6 = sub_F6D17C(a2[2], a2[3]);
  v7 = v5[1];
  v8 = (v7 - *v7);
  v9 = *v8;
  if (*(v5 + 38))
  {
    if (v9 < 5)
    {
      goto LABEL_13;
    }

    v10 = v8[2];
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else if (v9 < 9 || (v10 = v8[4]) == 0)
  {
LABEL_13:
    v11 = 0;
    v12 = v6[1];
    v13 = (v12 - *v12);
    v14 = *v13;
    if (*(v6 + 38))
    {
      goto LABEL_14;
    }

LABEL_10:
    if (v14 >= 5)
    {
      v15 = v13[2];
      if (v15)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v11 = *(v7 + v10);
  v12 = v6[1];
  v13 = (v12 - *v12);
  v14 = *v13;
  if (!*(v6 + 38))
  {
    goto LABEL_10;
  }

LABEL_14:
  if (v14 < 9)
  {
    goto LABEL_17;
  }

  v15 = v13[4];
  if (!v15)
  {
    goto LABEL_17;
  }

LABEL_16:
  v16 = *(v12 + v15);
LABEL_18:
  v17 = v11 + 18000;
  v18 = v11 - 18000;
  if ((v17 >> 5) < 0x465u)
  {
    v18 = v17;
  }

  v19 = v16 - v18;
  if (v19 > 18000)
  {
    v19 -= 36000;
  }

  if (v19 < -17999)
  {
    v19 += 36000;
  }

  v20 = v19 / 100.0;
  if (fabs(v20) < *(a1 + 1024))
  {
    return 0;
  }

  v21 = (*v5 - **v5);
  if (*v21 >= 0x9Bu && (v22 = v21[77]) != 0)
  {
    v23 = *(*v5 + v22 + 1) >> 7;
  }

  else
  {
    v23 = 0;
  }

  return (v20 < 0.0) ^ v23;
}

BOOL sub_10217A4(uint64_t a1, int ***a2)
{
  v4 = *a2;
  v6 = a2[2];
  v5 = a2[3];
  if (*a2)
  {
    v7 = a2[1];
    v8 = sub_F6D024(*a2);
    v9 = v8;
    if (!v6)
    {
      if (v7 < v8)
      {
        goto LABEL_16;
      }

      return 0;
    }

    v10 = sub_F6D024(v6);
    if (v7 < v9 && v5 < v10)
    {
      v12 = sub_F6D17C(v4, v7);
      if (v12 != sub_F6D17C(v6, v5))
      {
        goto LABEL_16;
      }

      return 0;
    }

    if (v7 < v9 == v5 < v10)
    {
      return 0;
    }
  }

  else if (!v6 || v5 >= sub_F6D024(a2[2]))
  {
    return 0;
  }

LABEL_16:
  v13 = sub_F6D17C(*a2, a2[1]);
  v14 = sub_F6D17C(a2[2], a2[3]);
  if (*(v13 + 18) == *(v14 + 18) && *(v13 + 8) == *(v14 + 8))
  {
    return 1;
  }

  v16 = (*v13 - **v13);
  if (*v16 < 0x9Bu)
  {
    return 0;
  }

  v17 = v16[77];
  if (!v17)
  {
    return 0;
  }

  if ((*(*v13 + v17) & 4) == 0)
  {
    return 0;
  }

  v18 = (*v14 - **v14);
  if (*v18 < 0x9Bu)
  {
    return 0;
  }

  v19 = v18[77];
  if (!v19 || (*(*v14 + v19) & 4) == 0)
  {
    return 0;
  }

  v21 = *a2;
  v22 = a2[1];
  v23 = a2[2];
  v24 = a2[3];
  v25 = &v26;
  v26 = 0.0;
  sub_1021344(v21, v22, v23, v24 + 1, &v25);
  return fabs(v26) >= *(a1 + 1016);
}

uint64_t sub_1021940(uint64_t a1, uint64_t *a2)
{
  v3 = sub_F6D17C(*a2, a2[1]);
  v4 = (*v3 - **v3);
  if (*v4 < 0x9Bu)
  {
    return 0;
  }

  v5 = v4[77];
  if (!v5 || (*(*v3 + v5 + 3) & 2) == 0)
  {
    return 0;
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];

  return sub_1027E74(v7, v8, v9, v10);
}

uint64_t sub_10219BC(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = v3 + 1;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  if (*a2)
  {
    v7 = sub_F6D024(*a2);
    v8 = v7;
    if (v5)
    {
      v9 = sub_F6D024(v5);
      if (v4 < v8 && v6 < v9)
      {
        v16 = sub_F6D17C(v2, v3 + 1);
        if (v16 != sub_F6D17C(v5, v6))
        {
          goto LABEL_19;
        }

        return 0;
      }

      if (v4 < v8 == v6 < v9)
      {
        return 0;
      }
    }

    else if (v4 >= v7)
    {
      return 0;
    }

LABEL_19:
    v15 = 0;
    for (i = v3 + 2; ; ++i)
    {
      v18 = sub_F6D17C(v2, i - 1);
      v19 = (*v18 - **v18);
      if (*v19 >= 9u && (v20 = v19[4]) != 0)
      {
        v15 += *(*v18 + v20);
        v21 = sub_F6D024(v2);
        if (!v5)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v21 = sub_F6D024(v2);
        if (!v5)
        {
LABEL_20:
          if (i >= v21)
          {
            return v15;
          }

          continue;
        }
      }

      v22 = sub_F6D024(v5);
      if (i >= v21 || v6 >= v22)
      {
        if (i < v21 == v6 < v22)
        {
          return v15;
        }
      }

      else
      {
        v23 = sub_F6D17C(v2, i);
        if (v23 == sub_F6D17C(v5, v6))
        {
          return v15;
        }
      }
    }
  }

  if (!v5 || v6 >= sub_F6D024(*(a2 + 16)))
  {
    return 0;
  }

  v12 = sub_F6D17C(0, v3 + 1);
  v13 = (*v12 - **v12);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = *(*v12 + v14);
    if (v6 < sub_F6D024(v5))
    {
LABEL_34:
      v24 = v3 + 2;
      do
      {
        while (1)
        {
          v25 = sub_F6D17C(0, v24);
          v26 = (*v25 - **v25);
          if (*v26 >= 9u)
          {
            v27 = v26[4];
            if (v27)
            {
              break;
            }
          }

          ++v24;
          if (v6 >= sub_F6D024(v5))
          {
            return v15;
          }
        }

        v15 += *(*v25 + v27);
        ++v24;
      }

      while (v6 < sub_F6D024(v5));
    }
  }

  else
  {
    v15 = 0;
    if (v6 < sub_F6D024(v5))
    {
      goto LABEL_34;
    }
  }

  return v15;
}

double sub_1021C74(uint64_t *a1, void **a2, int a3)
{
  sub_1021E7C(a1, a2, 1, a1 + 151);
  v6 = sub_F6D17C(*a2, a2[1])[4];
  v7 = sub_3E916C(a1[1], v6 & 0xFFFFFFFFFFFFFFLL);
  v8 = v7;
  if (a3)
  {
    v9 = a1[1];
    v10 = sub_4345A0(v9, v6 & 0xFFFFFFFFFFFFLL);
    v11 = sub_4345A0(v9, v6 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
    if (v11 <= v10)
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = v8 / v11;
    }

    else
    {
      v12 = 0.0;
    }
  }

  else
  {
    v12 = v7;
  }

  v13 = sub_F6D17C(a2[2], a2[3])[4];
  v14 = v13 & 0xFFFFFFFFFFFFLL;
  v15 = sub_3E916C(a1[1], v13 & 0xFFFFFFFFFFFFLL | (((v13 & 0xFF000000000000) == 0) << 48));
  v16 = v15;
  if (a3)
  {
    v17 = a1[1];
    v18 = sub_4345A0(v17, v14);
    v19 = sub_4345A0(v17, v14 | 0x1000000000000);
    if (v19 <= v18)
    {
      v19 = v18;
    }

    i = 0.0;
    v21 = 0.0;
    if (v19)
    {
      v21 = v16 / v19;
    }

    v22 = a1[151];
    v23 = a1[152];
    while (v22 != v23)
    {
      v24 = *v22;
      v25 = sub_3E916C(a1[1], *v22);
      v26 = a1[1];
      v27 = sub_4345A0(v26, v24 & 0xFFFFFFFFFFFFLL);
      v28 = sub_4345A0(v26, v24 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
      if (v28 <= v27)
      {
        v28 = v27;
      }

      v29 = 0.0;
      if (v28)
      {
        v29 = v25 / v28;
      }

      i = i + v29;
      ++v22;
    }
  }

  else
  {
    v21 = v15;
    v30 = a1[151];
    v31 = a1[152];
    for (i = 0.0; v30 != v31; i = i + sub_3E916C(a1[1], v32))
    {
      v32 = *v30++;
    }
  }

  return v12 + v21 + i;
}

void sub_1021E7C(unint64_t *a1, void **a2, int a3, void **a4)
{
  v4 = a4;
  a4[1] = *a4;
  a1[158] = a1[157];
  v8 = sub_F6D17C(*a2, a2[1]);
  v9 = sub_3116D0(v8);
  v113 = (a1 + 161);
  v10 = a1[162];
  v11 = a1[161];
  v12 = ((v10 - v11) << 6) - 1;
  if (v10 == v11)
  {
    v12 = 0;
  }

  v13 = a1[165] + a1[164];
  if (v12 == v13)
  {
    sub_102724C(a1 + 160);
    v11 = a1[161];
    v13 = a1[165] + a1[164];
  }

  *(*(v11 + ((v13 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v13 & 0x1FF)) = v9;
  ++a1[165];
  v14 = a1[158];
  v15 = a1[159];
  v115 = a3;
  if (v14 < v15)
  {
    *v14 = v9;
    a1[158] = (v14 + 1);
    v16 = a1[165];
    if (!v16)
    {
      return;
    }

    goto LABEL_20;
  }

  v17 = a1[157];
  v18 = v14 - v17;
  v19 = (v14 - v17) >> 3;
  v20 = v19 + 1;
  if ((v19 + 1) >> 61)
  {
LABEL_126:
    sub_1794();
  }

  v21 = v15 - v17;
  if (v21 >> 2 > v20)
  {
    v20 = v21 >> 2;
  }

  if (v21 >= 0x7FFFFFFFFFFFFFF8)
  {
    v22 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v22 = v20;
  }

  if (v22)
  {
    if (!(v22 >> 61))
    {
      operator new();
    }

LABEL_125:
    sub_1808();
  }

  v23 = (v14 - v17) >> 3;
  v24 = (8 * v19);
  v25 = (8 * v19 - 8 * v23);
  *v24 = v9;
  v26 = (v24 + 1);
  memcpy(v25, v17, v18);
  a1[157] = v25;
  a1[158] = v26;
  a1[159] = 0;
  if (v17)
  {
    operator delete(v17);
  }

  a3 = v115;
  a1[158] = v26;
  v16 = a1[165];
  if (v16)
  {
LABEL_20:
    v114 = v4;
    while (1)
    {
      v27 = a1[161];
      v28 = a1[164];
      v29 = (*(v27 + ((v28 >> 6) & 0x3FFFFFFFFFFFFF8)))[v28 & 0x1FF];
      a1[165] = v16 - 1;
      a1[164] = v28 + 1;
      if (v28 + 1 >= 0x400)
      {
        operator delete(*v27);
        a1[161] += 8;
        a1[164] -= 512;
      }

      sub_31BA24(*a1, v29, a1 + 148, a3 == 1, 0, 0);
      v30 = a1[148];
      v31 = a1[149];
      if (v30 != v31)
      {
        break;
      }

LABEL_21:
      v16 = a1[165];
      if (!v16)
      {
        return;
      }
    }

    v116 = a1[149];
    while (1)
    {
      v33 = *v30;
      v34 = (*v30 - **v30);
      v35 = *v34;
      if (a3)
      {
        if (!*(v30 + 38))
        {
          if (v35 < 5)
          {
            goto LABEL_62;
          }

          v37 = v34[2];
          if (!v37)
          {
            if (v35 < 0x77)
            {
              goto LABEL_62;
            }

            v38 = v34[59];
            if (!v38)
            {
              goto LABEL_62;
            }

LABEL_60:
            v39 = *(v33 + v38);
            LODWORD(v40) = *(v30 + 8);
            v41 = a1[157];
            v42 = a1[158];
            if (v41 != v42)
            {
              goto LABEL_65;
            }

            goto LABEL_67;
          }

          goto LABEL_42;
        }

        if (v34[3])
        {
          v36 = v34[3];
          goto LABEL_43;
        }

        v43 = *(v33 + v34[60]);
        v44 = *(v30 + 8);
        v39 = HIWORD(v43);
        v45 = sub_57A90(v44);
        v46 = v45 >> 1;
        v47 = v45 & 0xFE;
        v48 = v44 & ~(-1 << (v45 & 0xFE));
        v49 = sub_581D8(v48);
        v50 = sub_581D8(v48 >> 1);
        v51 = v49 + v43;
        a3 = v115;
        v52 = v50 + (v43 >> 8);
        v53 = ((((((v51 & ~(v51 >> 31)) - v51 + (v51 >> 31)) >> v46) + (v51 >> 31)) << v46) + v51) % (1 << v46);
        v54 = ((((((v52 & ~(v52 >> 31)) - v52 + (v52 >> 31)) >> v46) + (v52 >> 31)) << v46) + v52) % (1 << v46);
        v55 = -1 << v46;
        v31 = v116;
      }

      else
      {
        if (*(v30 + 38))
        {
          if (v35 < 5)
          {
            goto LABEL_62;
          }

          v37 = v34[2];
          if (!v37)
          {
            if (v35 < 0x77 || (v38 = v34[59]) == 0)
            {
LABEL_62:
              v39 = 0;
              LODWORD(v40) = *(v30 + 8);
              v41 = a1[157];
              v42 = a1[158];
              if (v41 != v42)
              {
                goto LABEL_65;
              }

              goto LABEL_67;
            }

            goto LABEL_60;
          }

LABEL_42:
          v36 = v37;
LABEL_43:
          v39 = __ROR8__(*(v33 + v36), 32);
          v40 = HIDWORD(v39);
          v41 = a1[157];
          v42 = a1[158];
          if (v41 != v42)
          {
            goto LABEL_65;
          }

          goto LABEL_67;
        }

        if (v34[3])
        {
          v39 = __ROR8__(*(v33 + v34[3]), 32);
          v40 = HIDWORD(v39);
          v41 = a1[157];
          v42 = a1[158];
          if (v41 != v42)
          {
            goto LABEL_65;
          }

          goto LABEL_67;
        }

        v56 = *(v33 + v34[60]);
        v57 = *(v30 + 8);
        v39 = HIWORD(v56);
        v58 = sub_57A90(v57);
        v59 = v58 >> 1;
        v47 = v58 & 0xFE;
        v60 = v57 & ~(-1 << (v58 & 0xFE));
        v61 = sub_581D8(v60);
        v62 = sub_581D8(v60 >> 1);
        v63 = v61 + v56;
        a3 = v115;
        v64 = v62 + (v56 >> 8);
        v31 = v116;
        v53 = ((((((v63 & ~(v63 >> 31)) - v63 + (v63 >> 31)) >> v59) + (v63 >> 31)) << v59) + v63) % (1 << v59);
        v54 = ((((((v64 & ~(v64 >> 31)) - v64 + (v64 >> 31)) >> v59) + (v64 >> 31)) << v59) + v64) % (1 << v59);
        v55 = -1 << v59;
      }

      if (~v55 < v53)
      {
        v65 = ~v55;
      }

      else
      {
        v65 = v53;
      }

      if (~v55 < v54)
      {
        v66 = ~v55;
      }

      else
      {
        v66 = v54;
      }

      v67 = 1 << v47;
      v4 = v114;
      sub_58168(v65, v66);
      LODWORD(v40) = v68 | v67;
      v41 = a1[157];
      v42 = a1[158];
      if (v41 != v42)
      {
LABEL_65:
        while (*v41 != v40 || v41[1] != v39)
        {
          v41 += 2;
          if (v41 == v42)
          {
            goto LABEL_68;
          }
        }
      }

LABEL_67:
      if (v41 != v42)
      {
        goto LABEL_29;
      }

LABEL_68:
      v69 = *(v30 + 18);
      v70 = *(v30 + 8);
      v71 = sub_F6D17C(*a2, a2[1]);
      if (v70 == *(v71 + 8) && v69 == *(v71 + 18))
      {
        goto LABEL_29;
      }

      v73 = *(v30 + 18);
      v74 = *(v30 + 8);
      v75 = sub_F6D17C(a2[2], a2[3]);
      if (v74 == *(v75 + 8) && v73 == *(v75 + 18))
      {
        goto LABEL_29;
      }

      v77 = *v30;
      v78 = (*v30 - **v30);
      v79 = *v78;
      if (v79 >= 0x9B && v78[77] && (v80 = *(v77 + v78[77]), (v80 & 0x2000000) != 0))
      {
        if ((v80 & 0x4000000) == 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v81 = v30[1];
        if (v81 && (v82 = (v81 - *v81), *v82 >= 0x11u) && (v83 = v82[8]) != 0)
        {
          v84 = *(v81 + v83);
          if (v79 < 0x9B || (v84 & 4) != 0)
          {
            if ((v84 & 4) == 0)
            {
              goto LABEL_91;
            }

            goto LABEL_102;
          }
        }

        else if (v79 < 0x9B)
        {
          goto LABEL_91;
        }

        v86 = v78[77];
        if (!v86 || (*(v77 + v86 + 2) & 1) == 0)
        {
LABEL_91:
          v87 = v30[4];
          v89 = v4[1];
          v88 = v4[2];
          if (v89 < v88)
          {
            *v89 = v87 & 0xFFFFFFFFFFFFFFLL;
            v32 = (v89 + 1);
          }

          else
          {
            v90 = *v4;
            v91 = v89 - *v4;
            v92 = v91 >> 3;
            v93 = (v91 >> 3) + 1;
            if (v93 >> 61)
            {
              sub_1794();
            }

            v94 = v88 - v90;
            if (v94 >> 2 > v93)
            {
              v93 = v94 >> 2;
            }

            if (v94 >= 0x7FFFFFFFFFFFFFF8)
            {
              v95 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v95 = v93;
            }

            if (v95)
            {
              if (!(v95 >> 61))
              {
                operator new();
              }

              goto LABEL_125;
            }

            *(8 * v92) = v87 & 0xFFFFFFFFFFFFFFLL;
            v32 = 8 * v92 + 8;
            memcpy(0, v90, v91);
            *v4 = 0;
            v4[1] = v32;
            v4[2] = 0;
            if (v90)
            {
              operator delete(v90);
            }
          }

          a3 = v115;
          v4[1] = v32;
          goto LABEL_28;
        }
      }

LABEL_102:
      v96 = v40 | (v39 << 32);
      v97 = a1[158];
      v98 = a1[159];
      if (v97 >= v98)
      {
        v100 = a1[157];
        v101 = v97 - v100;
        v102 = (v97 - v100) >> 3;
        v103 = v102 + 1;
        if ((v102 + 1) >> 61)
        {
          goto LABEL_126;
        }

        v104 = v98 - v100;
        if (v104 >> 2 > v103)
        {
          v103 = v104 >> 2;
        }

        if (v104 >= 0x7FFFFFFFFFFFFFF8)
        {
          v105 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v105 = v103;
        }

        if (v105)
        {
          if (!(v105 >> 61))
          {
            operator new();
          }

          goto LABEL_125;
        }

        v106 = (v97 - v100) >> 3;
        v107 = (8 * v102);
        v108 = (8 * v102 - 8 * v106);
        *v107 = v96;
        v99 = (v107 + 1);
        memcpy(v108, v100, v101);
        a1[157] = v108;
        a1[158] = v99;
        a1[159] = 0;
        if (v100)
        {
          operator delete(v100);
        }

        a3 = v115;
      }

      else
      {
        *v97 = v96;
        v99 = (v97 + 8);
      }

      v109 = a1[162];
      v110 = *v113;
      v111 = ((v109 - *v113) << 6) - 1;
      a1[158] = v99;
      if (v109 == v110)
      {
        v111 = 0;
      }

      v112 = a1[165] + a1[164];
      if (v111 == v112)
      {
        sub_102724C(a1 + 160);
        v110 = a1[161];
        v112 = a1[165] + a1[164];
      }

      *(*(v110 + ((v112 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v112 & 0x1FF)) = v96;
      ++a1[165];
LABEL_28:
      v31 = v116;
LABEL_29:
      v30 += 5;
      if (v30 == v31)
      {
        goto LABEL_21;
      }
    }
  }
}

double sub_10226C8(uint64_t a1, void **a2, char a3)
{
  v4 = *(a1 + 1008);
  v11 = a3;
  v5 = sub_FCE098((a1 + 32), a2, v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = 0.0;
  if (*v5 != v7)
  {
    do
    {
      v12[0] = &v11;
      v12[1] = a1;
      sub_10280C4(v6, v12);
      v8 = v8 + v9;
      v6 += 4;
    }

    while (v6 != v7);
  }

  return v8;
}

void sub_10229BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1022CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1022D30(double *a1, void *a2)
{
  v6 = 16;
  strcpy(__p, "min_u_turn_angle");
  v3 = sub_63D34(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_1023198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1023200(uint64_t *a1, uint64_t a2, void *a3)
{
  *a1 = sub_3AF6B4(a2);
  a1[1] = sub_3B1348(a2);
  a1[2] = sub_3B1AF0(a2);
  a1[3] = sub_3AF144(a2);
  sub_FCC964(__p, a3);
  sub_FCC968((a1 + 4), __p, a2);
  operator new();
}

void sub_102333C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_4199F0((v15 + 32));
  _Unwind_Resume(a1);
}

unint64_t sub_102339C(uint64_t a1, uint64_t a2)
{
  v3 = sub_4D1F50(*a2, *(a2 + 8));
  v4 = (*v3 - **v3);
  if (*v4 >= 0x2Fu && (v5 = v4[23]) != 0 && ((v6 = *(*v3 + v5), v7 = v6 > 0x2D, v8 = (1 << v6) & 0x208040000000, !v7) ? (v9 = v8 == 0) : (v9 = 1), !v9 && (v10 = sub_4D1F50(*(a2 + 16), *(a2 + 24)), v11 = (*v10 - **v10), *v11 >= 0x2Fu) && (v12 = v11[23]) != 0 && (v13 = *(*v10 + v12), v13 <= 0x2D)))
  {
    return (0x208040000000uLL >> v13) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1023460(uint64_t a1, void **a2, unsigned int a3)
{
  v6 = sub_4D1F50(*a2, a2[1]);
  v7 = sub_4D1F50(a2[2], a2[3]);
  v8 = (*v6 - **v6);
  if (*v8 < 0x9Bu)
  {
    return 1;
  }

  v9 = v8[77];
  if (!v9)
  {
    return 1;
  }

  if ((~*(*v6 + v9) & 0xA000000) != 0)
  {
    return 1;
  }

  v10 = (*v7 - **v7);
  if (*v10 < 0x9Bu)
  {
    return 1;
  }

  v11 = v10[77];
  if (!v11 || (~*(*v7 + v11) & 0xA000000) != 0)
  {
    return 1;
  }

  if (*(a1 + 1048 + 8 * a3) == 0.0)
  {
    return sub_312358(v6, v7[4] & 0xFFFFFFFFFFFFFFLL, 1, 0);
  }

  v12 = v7;
  v13 = *(a1 + 1008);
  v20 = a3;
  v14 = sub_FCCD60((a1 + 32), a2, v13);
  v15 = *v14;
  v16 = v14[1];
  v17 = 0.0;
  if (*v14 != v16)
  {
    do
    {
      v21[0] = &v20;
      v21[1] = a1;
      sub_10280C4(v15, v21);
      v17 = v17 + v18;
      v15 += 4;
    }

    while (v15 != v16);
  }

  v7 = v12;
  if (v17 >= *(a1 + 1048 + 8 * a3))
  {
    return sub_312358(v6, v7[4] & 0xFFFFFFFFFFFFFFLL, 1, 0);
  }

  else
  {
    return 1;
  }
}

double sub_10235B8(uint64_t a1, int ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = &v8;
  v8 = 0.0;
  sub_10235F8(v2, v3, v4, v5 + 1, &v7);
  return v8;
}

int **sub_10235F8(int **result, unint64_t a2, void *a3, unint64_t a4, double **a5)
{
  v9 = result;
  if (result)
  {
    result = sub_4D1DC0(result);
    v10 = result;
    if (a3)
    {
      result = sub_4D1DC0(a3);
      if (a2 >= v10 || a4 >= result)
      {
        if (a2 < v10 == a4 < result)
        {
          return result;
        }
      }

      else
      {
        v11 = sub_4D1F50(v9, a2);
        result = sub_4D1F50(a3, a4);
        if (v11 == result)
        {
          return result;
        }
      }

      goto LABEL_13;
    }

    if (a2 < result)
    {
      v12 = 1;
      goto LABEL_22;
    }
  }

  else if (a3)
  {
    result = sub_4D1DC0(a3);
    if (a4 < result)
    {
LABEL_13:
      v12 = 0;
      while (1)
      {
LABEL_22:
        v17 = a2++;
        if (v9)
        {
          result = sub_4D1DC0(v9);
          v18 = result;
          if (v12)
          {
            if (a2 >= result)
            {
              return result;
            }
          }

          else
          {
            result = sub_4D1DC0(a3);
            if (a2 >= v18 || a4 >= result)
            {
              if (a2 < v18 == a4 < result)
              {
                return result;
              }
            }

            else
            {
              v19 = sub_4D1F50(v9, a2);
              result = sub_4D1F50(a3, a4);
              if (v19 == result)
              {
                return result;
              }
            }
          }
        }

        else
        {
          if (v12)
          {
            return result;
          }

          result = sub_4D1DC0(a3);
          if (a4 >= result)
          {
            return result;
          }
        }

        v20 = sub_4D1F50(v9, v17);
        result = sub_4D1F50(v9, a2);
        v21 = (*v20 - **v20);
        v22 = *v21;
        if (*(v20 + 38))
        {
          if (v22 >= 0x49)
          {
            v23 = v21[36];
            if (v23)
            {
              goto LABEL_40;
            }
          }
        }

        else if (v22 >= 0x4B)
        {
          v23 = v21[37];
          if (v23)
          {
LABEL_40:
            v24 = *(*v20 + v23);
            v25 = *result;
            v26 = (*result - **result);
            v27 = *v26;
            if (*(result + 38))
            {
              goto LABEL_45;
            }

            goto LABEL_41;
          }
        }

        v24 = -1;
        v25 = *result;
        v26 = (*result - **result);
        v27 = *v26;
        if (*(result + 38))
        {
LABEL_45:
          if (v27 < 0x4B)
          {
            goto LABEL_14;
          }

          v28 = v26[37];
          if (!v28)
          {
            goto LABEL_14;
          }

          goto LABEL_47;
        }

LABEL_41:
        if (v27 < 0x49 || (v28 = v26[36]) == 0)
        {
LABEL_14:
          v13 = 0xFFFF;
          goto LABEL_15;
        }

LABEL_47:
        v13 = *(v25 + v28);
LABEL_15:
        v14 = v24 + 18000;
        v15 = v24 - 18000;
        if ((v14 >> 5) < 0x465u)
        {
          v15 = v14;
        }

        v16 = v13 - v15;
        if (v16 > 18000)
        {
          v16 -= 36000;
        }

        if (v16 < -17999)
        {
          v16 += 36000;
        }

        **a5 = **a5 + v16 / 100.0;
      }
    }
  }

  return result;
}

uint64_t sub_10238A0(uint64_t a1, int ***a2)
{
  if (sub_1023A58(a1, a2))
  {
    return 1;
  }

  v5 = sub_4D1F50(*a2, a2[1]);
  v6 = sub_4D1F50(a2[2], a2[3]);
  v7 = v5[1];
  v8 = (v7 - *v7);
  v9 = *v8;
  if (*(v5 + 38))
  {
    if (v9 < 5)
    {
      goto LABEL_13;
    }

    v10 = v8[2];
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else if (v9 < 9 || (v10 = v8[4]) == 0)
  {
LABEL_13:
    v11 = 0;
    v12 = *(v6 + 8);
    v13 = (v12 - *v12);
    v14 = *v13;
    if (*(v6 + 38))
    {
      goto LABEL_14;
    }

LABEL_10:
    if (v14 >= 5)
    {
      v15 = v13[2];
      if (v15)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v11 = *(v7 + v10);
  v12 = *(v6 + 8);
  v13 = (v12 - *v12);
  v14 = *v13;
  if (!*(v6 + 38))
  {
    goto LABEL_10;
  }

LABEL_14:
  if (v14 < 9)
  {
    goto LABEL_17;
  }

  v15 = v13[4];
  if (!v15)
  {
    goto LABEL_17;
  }

LABEL_16:
  v16 = *(v12 + v15);
LABEL_18:
  v17 = v11 + 18000;
  v18 = v11 - 18000;
  if ((v17 >> 5) < 0x465u)
  {
    v18 = v17;
  }

  v19 = v16 - v18;
  if (v19 > 18000)
  {
    v19 -= 36000;
  }

  if (v19 < -17999)
  {
    v19 += 36000;
  }

  v20 = v19 / 100.0;
  if (fabs(v20) < *(a1 + 1024))
  {
    return 0;
  }

  v21 = (*v5 - **v5);
  if (*v21 >= 0x9Bu && (v22 = v21[77]) != 0)
  {
    v23 = *(*v5 + v22 + 1) >> 7;
  }

  else
  {
    v23 = 0;
  }

  return (v20 < 0.0) ^ v23;
}

BOOL sub_1023A58(uint64_t a1, int ***a2)
{
  v4 = *a2;
  v6 = a2[2];
  v5 = a2[3];
  if (*a2)
  {
    v7 = a2[1];
    v8 = sub_4D1DC0(*a2);
    v9 = v8;
    if (!v6)
    {
      if (v7 < v8)
      {
        goto LABEL_16;
      }

      return 0;
    }

    v10 = sub_4D1DC0(v6);
    if (v7 < v9 && v5 < v10)
    {
      v12 = sub_4D1F50(v4, v7);
      if (v12 != sub_4D1F50(v6, v5))
      {
        goto LABEL_16;
      }

      return 0;
    }

    if (v7 < v9 == v5 < v10)
    {
      return 0;
    }
  }

  else if (!v6 || v5 >= sub_4D1DC0(a2[2]))
  {
    return 0;
  }

LABEL_16:
  v13 = sub_4D1F50(*a2, a2[1]);
  v14 = sub_4D1F50(a2[2], a2[3]);
  if (*(v13 + 18) == *(v14 + 18) && *(v13 + 8) == *(v14 + 8))
  {
    return 1;
  }

  v16 = (*v13 - **v13);
  if (*v16 < 0x9Bu)
  {
    return 0;
  }

  v17 = v16[77];
  if (!v17)
  {
    return 0;
  }

  if ((*(*v13 + v17) & 4) == 0)
  {
    return 0;
  }

  v18 = (*v14 - **v14);
  if (*v18 < 0x9Bu)
  {
    return 0;
  }

  v19 = v18[77];
  if (!v19 || (*(*v14 + v19) & 4) == 0)
  {
    return 0;
  }

  v21 = *a2;
  v22 = a2[1];
  v23 = a2[2];
  v24 = a2[3];
  v25 = &v26;
  v26 = 0.0;
  sub_10235F8(v21, v22, v23, v24 + 1, &v25);
  return fabs(v26) >= *(a1 + 1016);
}

uint64_t sub_1023BF4(uint64_t a1, int ***a2)
{
  result = sub_10238A0(a1, a2);
  if (result)
  {
    v5 = sub_4D1F50(*a2, a2[1]);
    v6 = (*v5 - **v5);
    if (*v6 < 0x9Bu)
    {
      return 0;
    }

    v7 = v6[77];
    if (!v7)
    {
      return 0;
    }

    if ((~*(*v5 + v7) & 0xA000000) != 0)
    {
      return 0;
    }

    v8 = v5;
    v9 = sub_4D1F50(a2[2], a2[3]);
    v10 = (*v9 - **v9);
    if (*v10 >= 0x9Bu)
    {
      v11 = v10[77];
      if (v11)
      {
        if (*(*v9 + v11 + 3) & 8) != 0 && (sub_312358(v8, v9[4] & 0xFFFFFFFFFFFFFFLL, 1, 1))
        {
          return 0;
        }
      }
    }

    if (sub_311A24(*v8, *(v8 + 38)) < *(a1 + 1040))
    {
      return 0;
    }

    v12 = v8;
    v13 = *v8;
    v14 = **v8;
    v15 = (*v8 - v14);
    if (*v15 < 0x9Bu || (v16 = v15[77]) == 0 || (*(v13 + v16) & 4) == 0)
    {
      if (sub_31223C(v8, 1))
      {
        return 0;
      }

      v12 = v8;
      v13 = *v8;
      v14 = **v8;
    }

    v17 = (v13 - v14);
    v18 = *v17;
    if (*(v12 + 38))
    {
      if (v18 < 0x9B)
      {
        return 0;
      }

      v19 = v17[77];
      if (!v19)
      {
        return 0;
      }

      v20 = 5;
    }

    else
    {
      if (v18 < 0x9B)
      {
        return 0;
      }

      v19 = v17[77];
      if (!v19)
      {
        return 0;
      }

      v20 = 6;
    }

    if ((*(v13 + v19) & v20) != 0)
    {
      operator new();
    }

    return 0;
  }

  return result;
}

void sub_1023DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1023E04(uint64_t a1, uint64_t *a2)
{
  v3 = sub_4D1F50(*a2, a2[1]);
  v4 = (*v3 - **v3);
  if (*v4 < 0x9Bu)
  {
    return 0;
  }

  v5 = v4[77];
  if (!v5 || (*(*v3 + v5 + 3) & 2) == 0)
  {
    return 0;
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];

  return sub_102821C(v7, v8, v9, v10);
}

uint64_t sub_1023E80(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = v3 + 1;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  if (*a2)
  {
    v7 = sub_4D1DC0(*a2);
    v8 = v7;
    if (v5)
    {
      v9 = sub_4D1DC0(v5);
      if (v4 < v8 && v6 < v9)
      {
        v16 = sub_4D1F50(v2, v3 + 1);
        if (v16 != sub_4D1F50(v5, v6))
        {
          goto LABEL_19;
        }

        return 0;
      }

      if (v4 < v8 == v6 < v9)
      {
        return 0;
      }
    }

    else if (v4 >= v7)
    {
      return 0;
    }

LABEL_19:
    v15 = 0;
    for (i = v3 + 2; ; ++i)
    {
      v18 = sub_4D1F50(v2, i - 1);
      v19 = (*v18 - **v18);
      if (*v19 >= 9u && (v20 = v19[4]) != 0)
      {
        v15 += *(*v18 + v20);
        v21 = sub_4D1DC0(v2);
        if (!v5)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v21 = sub_4D1DC0(v2);
        if (!v5)
        {
LABEL_20:
          if (i >= v21)
          {
            return v15;
          }

          continue;
        }
      }

      v22 = sub_4D1DC0(v5);
      if (i >= v21 || v6 >= v22)
      {
        if (i < v21 == v6 < v22)
        {
          return v15;
        }
      }

      else
      {
        v23 = sub_4D1F50(v2, i);
        if (v23 == sub_4D1F50(v5, v6))
        {
          return v15;
        }
      }
    }
  }

  if (!v5 || v6 >= sub_4D1DC0(*(a2 + 16)))
  {
    return 0;
  }

  v12 = sub_4D1F50(0, v3 + 1);
  v13 = (*v12 - **v12);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = *(*v12 + v14);
    if (v6 < sub_4D1DC0(v5))
    {
LABEL_34:
      v24 = v3 + 2;
      do
      {
        while (1)
        {
          v25 = sub_4D1F50(0, v24);
          v26 = (*v25 - **v25);
          if (*v26 >= 9u)
          {
            v27 = v26[4];
            if (v27)
            {
              break;
            }
          }

          ++v24;
          if (v6 >= sub_4D1DC0(v5))
          {
            return v15;
          }
        }

        v15 += *(*v25 + v27);
        ++v24;
      }

      while (v6 < sub_4D1DC0(v5));
    }
  }

  else
  {
    v15 = 0;
    if (v6 < sub_4D1DC0(v5))
    {
      goto LABEL_34;
    }
  }

  return v15;
}

uint64_t sub_1024138(uint64_t a1, void **a2, unsigned int a3, int a4)
{
  v97 = a3;
  if (a4 != 2 && *(a1 + 8 * a3 + 1104) != 0.0)
  {
    return 0;
  }

  v7 = sub_4D1F50(*a2, a2[1]);
  v8 = (*v7 - **v7);
  if (*v8 < 0x9Bu)
  {
    return 0;
  }

  v9 = v8[77];
  if (!v9 || (*(*v7 + v9 + 3) & 2) == 0)
  {
    return 0;
  }

  if (*(a1 + 1080) != 1)
  {
    *(a1 + 1240) = *(a1 + 1232);
    v25 = *a2;
    v26 = a2[1];
    v27 = a2[2];
    v28 = a2[3];
    v91 = a1;
    v92 = a1 + 1232;
    sub_1026E00(v25, v26, v27, v28 + 1, &v91);
    if (*(a1 + 1232) == *(a1 + 1240))
    {
      return 0;
    }

    v29 = *(sub_4D1F50(*a2, a2[1]) + 32);
    v30 = sub_3E916C(*(a1 + 8), v29 & 0xFFFFFFFFFFFFFFLL);
    v31 = v30;
    if (a3)
    {
      v32 = *(a1 + 8);
      v33 = sub_4345A0(v32, v29 & 0xFFFFFFFFFFFFLL);
      v34 = sub_4345A0(v32, v29 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
      if (v34 <= v33)
      {
        v34 = v33;
      }

      v35 = v34 ? v31 / v34 : 0.0;
    }

    else
    {
      v35 = v30;
    }

    v36 = *(sub_4D1F50(a2[2], a2[3]) + 32);
    v37 = sub_3E916C(*(a1 + 8), v36 & 0xFFFFFFFFFFFFFFLL);
    v38 = v37;
    if (a3)
    {
      v39 = *(a1 + 8);
      v40 = sub_4345A0(v39, v36 & 0xFFFFFFFFFFFFLL);
      v41 = sub_4345A0(v39, v36 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
      if (v41 <= v40)
      {
        v41 = v40;
      }

      v42 = v41 ? v38 / v41 : 0.0;
    }

    else
    {
      v42 = v37;
    }

    if (v42 >= v35)
    {
      v42 = v35;
    }

    v43 = a1 + 8 * a3;
    v44 = *(a1 + 1120) * v42 + 0.5;
    v45 = *(v43 + 1088) >= v44 ? *(v43 + 1088) : v44;
    v46 = *(a1 + 1232);
    v47 = *(a1 + 1240);
    if (v46 == v47)
    {
      return 0;
    }

    v90 = (a1 + 1104);
    while (1)
    {
      v48 = *v46 & 0xFFFFFFFFFFFFLL;
      v49 = v48 | (((*v46 & 0xFF000000000000) == 0) << 48);
      v50 = sub_3E916C(*(a1 + 8), v49);
      v51 = v50;
      if (a3)
      {
        v52 = *(a1 + 8);
        v53 = sub_4345A0(v52, v48);
        v54 = sub_4345A0(v52, v48 | 0x1000000000000);
        if (v54 <= v53)
        {
          v54 = v53;
        }

        if (v54)
        {
          if (v51 / v54 <= v45)
          {
            goto LABEL_62;
          }
        }

        else if (v45 >= 0.0)
        {
          goto LABEL_62;
        }
      }

      else if (v50 <= v45)
      {
        goto LABEL_62;
      }

      v55 = *(a1 + 24);
      v56 = sub_3E37C0(*(a1 + 16), v49);
      v57 = sub_2BC7A8(v55, v56);
      v58 = v57;
      if (a3)
      {
        v59 = *(a1 + 8);
        v60 = sub_4345A0(v59, v48);
        v61 = sub_4345A0(v59, v48 | 0x1000000000000);
        if (v61 <= v60)
        {
          v61 = v60;
        }

        if (v61)
        {
          if (v58 / v61 < v90[a3])
          {
            goto LABEL_62;
          }
        }

        else if (v90[a3] > 0.0)
        {
          goto LABEL_62;
        }
      }

      else if (v57 < *v90)
      {
        goto LABEL_62;
      }

      if (!sub_4BF020(*a1, v49, *(a1 + 1064), 1))
      {
        return (*(a1 + 1240) - *(a1 + 1232)) >> 3;
      }

LABEL_62:
      v62 = *v46;
      v63 = sub_3E916C(*(a1 + 8), *v46);
      v64 = v63;
      if (a3)
      {
        v65 = *(a1 + 8);
        v66 = sub_4345A0(v65, v62 & 0xFFFFFFFFFFFFLL);
        v67 = sub_4345A0(v65, v62 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
        if (v67 <= v66)
        {
          v67 = v66;
        }

        if (v67)
        {
          if (v64 / v67 <= v45)
          {
            goto LABEL_42;
          }
        }

        else if (v45 >= 0.0)
        {
          goto LABEL_42;
        }
      }

      else if (v63 <= v45)
      {
        goto LABEL_42;
      }

      v68 = *v46;
      v69 = *(a1 + 24);
      v70 = sub_3E37C0(*(a1 + 16), *v46);
      v71 = sub_2BC7A8(v69, v70);
      v72 = v71;
      if (a3)
      {
        v73 = *(a1 + 8);
        v74 = sub_4345A0(v73, v68 & 0xFFFFFFFFFFFFLL);
        v75 = sub_4345A0(v73, v68 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
        if (v75 <= v74)
        {
          v75 = v74;
        }

        if (v75)
        {
          if (v72 / v75 < v90[a3])
          {
            goto LABEL_42;
          }
        }

        else if (v90[a3] > 0.0)
        {
          goto LABEL_42;
        }
      }

      else if (v71 < *v90)
      {
        goto LABEL_42;
      }

      v76 = *a1;
      v77 = *v46;
      v78 = sub_2B51D8(*a1, *v46 & 0xFFFFFFFFFFFFLL);
      if (*(v76 + 7772) == 1)
      {
        v79 = sub_30C50C(v76 + 3896, v77, 0);
        v80 = &v79[-*v79];
        if (*v80 < 5u)
        {
          v81 = 0;
        }

        else
        {
          v81 = *(v80 + 2);
          if (v81)
          {
            v81 += &v79[*&v79[v81]];
          }
        }

        v82 = v81 + ((v77 >> 30) & 0x3FFFC) + 4 + *(v81 + ((v77 >> 30) & 0x3FFFC) + 4);
      }

      else
      {
        v82 = 0;
      }

      v83 = sub_31D7E8(v76, v77 & 0xFFFFFFFFFFFFLL, 1);
      v91 = v78;
      v92 = v82;
      v93 = v83;
      v94 = v84;
      v95 = v77;
      v85 = sub_319BB0(&v91, 1, *a1);
      LODWORD(__p[0]) = v85;
      BYTE6(__p[0]) = BYTE6(v85);
      WORD2(__p[0]) = WORD2(v85);
      if (v85)
      {
        v86 = *a2;
        v87 = a2[1];
        v88 = a2[2];
        v89 = a2[3];
        v91 = __p;
        if ((sub_1027CD0(v86, v87, v88, v89, &v91) & 1) == 0 && !sub_4BF020(*a1, __p[0], *(a1 + 1064), 1))
        {
          return (*(a1 + 1240) - *(a1 + 1232)) >> 3;
        }
      }

LABEL_42:
      v10 = 0;
      if (++v46 == v47)
      {
        return v10;
      }
    }
  }

  v12 = sub_FCCD60((a1 + 32), a2, *(a1 + 1008));
  if (*v12 == v12[1])
  {
    return 0;
  }

  v13 = v12;
  v14 = sub_4D1F50(*a2, a2[1]);
  v15 = sub_311A24(*v14, *(v14 + 38));
  v16 = sub_4D1F50(a2[2], a2[3]);
  v17 = sub_311A24(*v16, *(v16 + 38));
  if (v17 < v15)
  {
    v15 = v17;
  }

  v18 = *v13;
  if (v13[1] - *v13 == 32 && v18[2] - v18[1] == 8 && sub_59D570(*a1, *v18) < v15)
  {
    __p[0] = **(*v13 + 8);
    v19 = *a2;
    v20 = a2[1];
    v21 = a2[2];
    v22 = a2[3];
    v91 = __p;
    if (sub_1027840(v19, v20, v21, v22 + 1, &v91))
    {
      return 0;
    }
  }

  memset(__p, 0, sizeof(__p));
  v24 = *v13;
  v23 = v13[1];
  v91 = __p;
  LOBYTE(v92) = 0;
  if (v23 != v24)
  {
    if (((v23 - v24) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 0;
}

void sub_1024B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_4B5A18(va);
  _Unwind_Resume(a1);
}

void sub_1024B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_4B5A18(va);
  _Unwind_Resume(a1);
}

void sub_1024B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_37484(va);
  _Unwind_Resume(a1);
}

void sub_1024BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_37484(va);
  _Unwind_Resume(a1);
}

void sub_1024BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_37484(va);
  _Unwind_Resume(a1);
}

void sub_1024BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_37484(va);
  _Unwind_Resume(a1);
}

void sub_1024BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_37484(va);
  _Unwind_Resume(a1);
}

double sub_1024BF4(uint64_t *a1, void **a2, int a3)
{
  sub_1024DFC(a1, a2, 1, a1 + 151);
  v6 = *(sub_4D1F50(*a2, a2[1]) + 32);
  v7 = sub_3E916C(a1[1], v6 & 0xFFFFFFFFFFFFFFLL);
  v8 = v7;
  if (a3)
  {
    v9 = a1[1];
    v10 = sub_4345A0(v9, v6 & 0xFFFFFFFFFFFFLL);
    v11 = sub_4345A0(v9, v6 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
    if (v11 <= v10)
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = v8 / v11;
    }

    else
    {
      v12 = 0.0;
    }
  }

  else
  {
    v12 = v7;
  }

  v13 = *(sub_4D1F50(a2[2], a2[3]) + 32);
  v14 = v13 & 0xFFFFFFFFFFFFLL;
  v15 = sub_3E916C(a1[1], v13 & 0xFFFFFFFFFFFFLL | (((v13 & 0xFF000000000000) == 0) << 48));
  v16 = v15;
  if (a3)
  {
    v17 = a1[1];
    v18 = sub_4345A0(v17, v14);
    v19 = sub_4345A0(v17, v14 | 0x1000000000000);
    if (v19 <= v18)
    {
      v19 = v18;
    }

    i = 0.0;
    v21 = 0.0;
    if (v19)
    {
      v21 = v16 / v19;
    }

    v22 = a1[151];
    v23 = a1[152];
    while (v22 != v23)
    {
      v24 = *v22;
      v25 = sub_3E916C(a1[1], *v22);
      v26 = a1[1];
      v27 = sub_4345A0(v26, v24 & 0xFFFFFFFFFFFFLL);
      v28 = sub_4345A0(v26, v24 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
      if (v28 <= v27)
      {
        v28 = v27;
      }

      v29 = 0.0;
      if (v28)
      {
        v29 = v25 / v28;
      }

      i = i + v29;
      ++v22;
    }
  }

  else
  {
    v21 = v15;
    v30 = a1[151];
    v31 = a1[152];
    for (i = 0.0; v30 != v31; i = i + sub_3E916C(a1[1], v32))
    {
      v32 = *v30++;
    }
  }

  return v12 + v21 + i;
}

void sub_1024DFC(unint64_t *a1, void **a2, int a3, void **a4)
{
  v4 = a4;
  a4[1] = *a4;
  a1[158] = a1[157];
  v8 = sub_4D1F50(*a2, a2[1]);
  v9 = sub_3116D0(v8);
  v113 = (a1 + 161);
  v10 = a1[162];
  v11 = a1[161];
  v12 = ((v10 - v11) << 6) - 1;
  if (v10 == v11)
  {
    v12 = 0;
  }

  v13 = a1[165] + a1[164];
  if (v12 == v13)
  {
    sub_102724C(a1 + 160);
    v11 = a1[161];
    v13 = a1[165] + a1[164];
  }

  *(*(v11 + ((v13 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v13 & 0x1FF)) = v9;
  ++a1[165];
  v14 = a1[158];
  v15 = a1[159];
  v115 = a3;
  if (v14 < v15)
  {
    *v14 = v9;
    a1[158] = (v14 + 1);
    v16 = a1[165];
    if (!v16)
    {
      return;
    }

    goto LABEL_20;
  }

  v17 = a1[157];
  v18 = v14 - v17;
  v19 = (v14 - v17) >> 3;
  v20 = v19 + 1;
  if ((v19 + 1) >> 61)
  {
LABEL_126:
    sub_1794();
  }

  v21 = v15 - v17;
  if (v21 >> 2 > v20)
  {
    v20 = v21 >> 2;
  }

  if (v21 >= 0x7FFFFFFFFFFFFFF8)
  {
    v22 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v22 = v20;
  }

  if (v22)
  {
    if (!(v22 >> 61))
    {
      operator new();
    }

LABEL_125:
    sub_1808();
  }

  v23 = (v14 - v17) >> 3;
  v24 = (8 * v19);
  v25 = (8 * v19 - 8 * v23);
  *v24 = v9;
  v26 = (v24 + 1);
  memcpy(v25, v17, v18);
  a1[157] = v25;
  a1[158] = v26;
  a1[159] = 0;
  if (v17)
  {
    operator delete(v17);
  }

  a3 = v115;
  a1[158] = v26;
  v16 = a1[165];
  if (v16)
  {
LABEL_20:
    v114 = v4;
    while (1)
    {
      v27 = a1[161];
      v28 = a1[164];
      v29 = (*(v27 + ((v28 >> 6) & 0x3FFFFFFFFFFFFF8)))[v28 & 0x1FF];
      a1[165] = v16 - 1;
      a1[164] = v28 + 1;
      if (v28 + 1 >= 0x400)
      {
        operator delete(*v27);
        a1[161] += 8;
        a1[164] -= 512;
      }

      sub_31BA24(*a1, v29, a1 + 148, a3 == 1, 0, 0);
      v30 = a1[148];
      v31 = a1[149];
      if (v30 != v31)
      {
        break;
      }

LABEL_21:
      v16 = a1[165];
      if (!v16)
      {
        return;
      }
    }

    v116 = a1[149];
    while (1)
    {
      v33 = *v30;
      v34 = (*v30 - **v30);
      v35 = *v34;
      if (a3)
      {
        if (!*(v30 + 38))
        {
          if (v35 < 5)
          {
            goto LABEL_62;
          }

          v37 = v34[2];
          if (!v37)
          {
            if (v35 < 0x77)
            {
              goto LABEL_62;
            }

            v38 = v34[59];
            if (!v38)
            {
              goto LABEL_62;
            }

LABEL_60:
            v39 = *(v33 + v38);
            LODWORD(v40) = *(v30 + 8);
            v41 = a1[157];
            v42 = a1[158];
            if (v41 != v42)
            {
              goto LABEL_65;
            }

            goto LABEL_67;
          }

          goto LABEL_42;
        }

        if (v34[3])
        {
          v36 = v34[3];
          goto LABEL_43;
        }

        v43 = *(v33 + v34[60]);
        v44 = *(v30 + 8);
        v39 = HIWORD(v43);
        v45 = sub_57A90(v44);
        v46 = v45 >> 1;
        v47 = v45 & 0xFE;
        v48 = v44 & ~(-1 << (v45 & 0xFE));
        v49 = sub_581D8(v48);
        v50 = sub_581D8(v48 >> 1);
        v51 = v49 + v43;
        a3 = v115;
        v52 = v50 + (v43 >> 8);
        v53 = ((((((v51 & ~(v51 >> 31)) - v51 + (v51 >> 31)) >> v46) + (v51 >> 31)) << v46) + v51) % (1 << v46);
        v54 = ((((((v52 & ~(v52 >> 31)) - v52 + (v52 >> 31)) >> v46) + (v52 >> 31)) << v46) + v52) % (1 << v46);
        v55 = -1 << v46;
        v31 = v116;
      }

      else
      {
        if (*(v30 + 38))
        {
          if (v35 < 5)
          {
            goto LABEL_62;
          }

          v37 = v34[2];
          if (!v37)
          {
            if (v35 < 0x77 || (v38 = v34[59]) == 0)
            {
LABEL_62:
              v39 = 0;
              LODWORD(v40) = *(v30 + 8);
              v41 = a1[157];
              v42 = a1[158];
              if (v41 != v42)
              {
                goto LABEL_65;
              }

              goto LABEL_67;
            }

            goto LABEL_60;
          }

LABEL_42:
          v36 = v37;
LABEL_43:
          v39 = __ROR8__(*(v33 + v36), 32);
          v40 = HIDWORD(v39);
          v41 = a1[157];
          v42 = a1[158];
          if (v41 != v42)
          {
            goto LABEL_65;
          }

          goto LABEL_67;
        }

        if (v34[3])
        {
          v39 = __ROR8__(*(v33 + v34[3]), 32);
          v40 = HIDWORD(v39);
          v41 = a1[157];
          v42 = a1[158];
          if (v41 != v42)
          {
            goto LABEL_65;
          }

          goto LABEL_67;
        }

        v56 = *(v33 + v34[60]);
        v57 = *(v30 + 8);
        v39 = HIWORD(v56);
        v58 = sub_57A90(v57);
        v59 = v58 >> 1;
        v47 = v58 & 0xFE;
        v60 = v57 & ~(-1 << (v58 & 0xFE));
        v61 = sub_581D8(v60);
        v62 = sub_581D8(v60 >> 1);
        v63 = v61 + v56;
        a3 = v115;
        v64 = v62 + (v56 >> 8);
        v31 = v116;
        v53 = ((((((v63 & ~(v63 >> 31)) - v63 + (v63 >> 31)) >> v59) + (v63 >> 31)) << v59) + v63) % (1 << v59);
        v54 = ((((((v64 & ~(v64 >> 31)) - v64 + (v64 >> 31)) >> v59) + (v64 >> 31)) << v59) + v64) % (1 << v59);
        v55 = -1 << v59;
      }

      if (~v55 < v53)
      {
        v65 = ~v55;
      }

      else
      {
        v65 = v53;
      }

      if (~v55 < v54)
      {
        v66 = ~v55;
      }

      else
      {
        v66 = v54;
      }

      v67 = 1 << v47;
      v4 = v114;
      sub_58168(v65, v66);
      LODWORD(v40) = v68 | v67;
      v41 = a1[157];
      v42 = a1[158];
      if (v41 != v42)
      {
LABEL_65:
        while (*v41 != v40 || v41[1] != v39)
        {
          v41 += 2;
          if (v41 == v42)
          {
            goto LABEL_68;
          }
        }
      }

LABEL_67:
      if (v41 != v42)
      {
        goto LABEL_29;
      }

LABEL_68:
      v69 = *(v30 + 18);
      v70 = *(v30 + 8);
      v71 = sub_4D1F50(*a2, a2[1]);
      if (v70 == *(v71 + 32) && v69 == *(v71 + 36))
      {
        goto LABEL_29;
      }

      v73 = *(v30 + 18);
      v74 = *(v30 + 8);
      v75 = sub_4D1F50(a2[2], a2[3]);
      if (v74 == *(v75 + 32) && v73 == *(v75 + 36))
      {
        goto LABEL_29;
      }

      v77 = *v30;
      v78 = (*v30 - **v30);
      v79 = *v78;
      if (v79 >= 0x9B && v78[77] && (v80 = *(v77 + v78[77]), (v80 & 0x2000000) != 0))
      {
        if ((v80 & 0x4000000) == 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v81 = v30[1];
        if (v81 && (v82 = (v81 - *v81), *v82 >= 0x11u) && (v83 = v82[8]) != 0)
        {
          v84 = *(v81 + v83);
          if (v79 < 0x9B || (v84 & 4) != 0)
          {
            if ((v84 & 4) == 0)
            {
              goto LABEL_91;
            }

            goto LABEL_102;
          }
        }

        else if (v79 < 0x9B)
        {
          goto LABEL_91;
        }

        v86 = v78[77];
        if (!v86 || (*(v77 + v86 + 2) & 1) == 0)
        {
LABEL_91:
          v87 = v30[4];
          v89 = v4[1];
          v88 = v4[2];
          if (v89 < v88)
          {
            *v89 = v87 & 0xFFFFFFFFFFFFFFLL;
            v32 = (v89 + 1);
          }

          else
          {
            v90 = *v4;
            v91 = v89 - *v4;
            v92 = v91 >> 3;
            v93 = (v91 >> 3) + 1;
            if (v93 >> 61)
            {
              sub_1794();
            }

            v94 = v88 - v90;
            if (v94 >> 2 > v93)
            {
              v93 = v94 >> 2;
            }

            if (v94 >= 0x7FFFFFFFFFFFFFF8)
            {
              v95 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v95 = v93;
            }

            if (v95)
            {
              if (!(v95 >> 61))
              {
                operator new();
              }

              goto LABEL_125;
            }

            *(8 * v92) = v87 & 0xFFFFFFFFFFFFFFLL;
            v32 = 8 * v92 + 8;
            memcpy(0, v90, v91);
            *v4 = 0;
            v4[1] = v32;
            v4[2] = 0;
            if (v90)
            {
              operator delete(v90);
            }
          }

          a3 = v115;
          v4[1] = v32;
          goto LABEL_28;
        }
      }

LABEL_102:
      v96 = v40 | (v39 << 32);
      v97 = a1[158];
      v98 = a1[159];
      if (v97 >= v98)
      {
        v100 = a1[157];
        v101 = v97 - v100;
        v102 = (v97 - v100) >> 3;
        v103 = v102 + 1;
        if ((v102 + 1) >> 61)
        {
          goto LABEL_126;
        }

        v104 = v98 - v100;
        if (v104 >> 2 > v103)
        {
          v103 = v104 >> 2;
        }

        if (v104 >= 0x7FFFFFFFFFFFFFF8)
        {
          v105 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v105 = v103;
        }

        if (v105)
        {
          if (!(v105 >> 61))
          {
            operator new();
          }

          goto LABEL_125;
        }

        v106 = (v97 - v100) >> 3;
        v107 = (8 * v102);
        v108 = (8 * v102 - 8 * v106);
        *v107 = v96;
        v99 = (v107 + 1);
        memcpy(v108, v100, v101);
        a1[157] = v108;
        a1[158] = v99;
        a1[159] = 0;
        if (v100)
        {
          operator delete(v100);
        }

        a3 = v115;
      }

      else
      {
        *v97 = v96;
        v99 = (v97 + 8);
      }

      v109 = a1[162];
      v110 = *v113;
      v111 = ((v109 - *v113) << 6) - 1;
      a1[158] = v99;
      if (v109 == v110)
      {
        v111 = 0;
      }

      v112 = a1[165] + a1[164];
      if (v111 == v112)
      {
        sub_102724C(a1 + 160);
        v110 = a1[161];
        v112 = a1[165] + a1[164];
      }

      *(*(v110 + ((v112 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v112 & 0x1FF)) = v96;
      ++a1[165];
LABEL_28:
      v31 = v116;
LABEL_29:
      v30 += 5;
      if (v30 == v31)
      {
        goto LABEL_21;
      }
    }
  }
}

double sub_1025648(uint64_t a1, void **a2, char a3)
{
  v4 = *(a1 + 1008);
  v11 = a3;
  v5 = sub_FCCD60((a1 + 32), a2, v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = 0.0;
  if (*v5 != v7)
  {
    do
    {
      v12[0] = &v11;
      v12[1] = a1;
      sub_10280C4(v6, v12);
      v8 = v8 + v9;
      v6 += 4;
    }

    while (v6 != v7);
  }

  return v8;
}

double sub_10256CC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v24 = a3;
  v23 = a4;
  if (*(a1 + 1072))
  {
    v6 = sub_FCCD60((a1 + 32), a2, *(a1 + 1008));
    v7 = *v6;
    v8 = v6[1];
    j = 0.0;
    if (*v6 != v8)
    {
      do
      {
        v25 = a1;
        v26 = a2;
        v27 = &v23;
        v28 = &v24;
        v11 = sub_10286DC(&v25, *v7, 1);
        v12 = v7[1];
        v13 = v7[2];
        for (i = 0.0; v12 != v13; i = i + sub_10286DC(&v25, v15, 0))
        {
          v15 = *v12++;
        }

        if (i >= v11)
        {
          v10 = v11;
        }

        else
        {
          v10 = i;
        }

        j = j + v10;
        v7 += 4;
      }

      while (v7 != v8);
    }
  }

  else
  {
    *(a1 + 1240) = *(a1 + 1232);
    v16 = *a2;
    v17 = *(a2 + 8);
    v18 = *(a2 + 16);
    v19 = *(a2 + 24);
    v25 = a1;
    v26 = (a1 + 1232);
    sub_1026E00(v16, v17, v18, v19 + 1, &v25);
    v20 = *(a1 + 1232);
    v21 = *(a1 + 1240);
    v25 = a1;
    v26 = &v23;
    v27 = a2;
    v28 = &v24;
    for (j = 0.0; v20 != v21; ++v20)
    {
      j = sub_10279DC(&v25, v20, j);
    }
  }

  return j;
}

double sub_102582C(uint64_t a1, void **a2, unsigned int a3)
{
  v6 = 0.0;
  if (!sub_1027614(*a2, a2[1], a2[2], a2[3] + 1))
  {
    return v6;
  }

  v7 = sub_4D1F50(*a2, a2[1]);
  v8 = (*v7 - **v7);
  if (*v8 < 0x9Bu)
  {
    return v6;
  }

  v9 = v8[77];
  if (!v9 || (*(*v7 + v9 + 3) & 2) == 0)
  {
    return v6;
  }

  v11 = sub_4D1F50(*a2, a2[1]);
  v12 = (*v11 - **v11);
  if (*v12 >= 0x2Fu)
  {
    v13 = v12[23];
    if (v13)
    {
      v14 = *(*v11 + v13);
      v15 = v14 > 0x1A;
      v16 = (1 << v14) & 0x4810001;
      if (!v15 && v16 != 0)
      {
        v18 = sub_4D1F50(a2[2], a2[3]);
        v19 = (*v18 - **v18);
        if (*v19 >= 0x2Fu)
        {
          v20 = v19[23];
          if (v20)
          {
            v21 = *(*v18 + v20);
            v15 = v21 > 0x1A;
            v22 = (1 << v21) & 0x4810001;
            if (!v15 && v22 != 0)
            {
              return v6;
            }
          }
        }
      }
    }
  }

  v24 = sub_4D1F50(*a2, a2[1]);
  v25 = 24;
  if (!*(v24 + 38))
  {
    v25 = 16;
  }

  v26 = *(v24 + v25);
  if (v26)
  {
    v27 = (v26 - *v26);
    if (*v27 < 7u || (v28 = v27[3]) == 0 || (LOWORD(v26) = *(v26 + v28), v26 == 0xFFFF))
    {
      LOWORD(v26) = 0;
    }
  }

  v130 = *(a1 + 1136) * v26;
  if (*(a1 + 1128) == 1)
  {
    v29 = sub_FCCD60((a1 + 32), a2, *(a1 + 1008));
    if (*v29 == v29[1])
    {
      return v6;
    }

    v30 = v29;
    *&v123 = &v130;
    *(&v123 + 1) = a1;
    *&v124 = a2;
    v31 = *(a1 + 1168);
    v32 = *(sub_4D1F50(*a2, a2[1]) + 32);
    v33 = *(a1 + 24);
    v34 = sub_3E37C0(*(a1 + 16), v32 & 0xFFFFFFFFFFFFFFLL);
    v35 = sub_2BC7A8(v33, v34);
    v36 = v35;
    if (a3)
    {
      v37 = *(a1 + 8);
      v38 = sub_4345A0(v37, v32 & 0xFFFFFFFFFFFFLL);
      v39 = sub_4345A0(v37, v32 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
      if (v39 <= v38)
      {
        v39 = v38;
      }

      if (v39)
      {
        v40 = v36 / v39;
      }

      else
      {
        v40 = 0.0;
      }
    }

    else
    {
      v40 = v35;
    }

    v56 = *v30;
    v57 = v30[1];
    if (*v30 != v57)
    {
      v58 = v31 * v40 + *(a1 + 8 * a3 + 1152);
      v6 = 0.0;
      do
      {
        v60 = *a1;
        v61 = *v56;
        v62 = sub_2B51D8(*a1, *v56 & 0xFFFFFFFFFFFFLL);
        if (*(v60 + 7772) == 1)
        {
          v63 = sub_30C50C(v60 + 3896, v61, 0);
          v64 = &v63[-*v63];
          if (*v64 < 5u)
          {
            v65 = 0;
          }

          else
          {
            v65 = *(v64 + 2);
            if (v65)
            {
              v65 += &v63[*&v63[v65]];
            }
          }

          v66 = v65 + ((v61 >> 30) & 0x3FFFC) + 4 + *(v65 + ((v61 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v66 = 0;
        }

        v67 = sub_31D7E8(v60, v61 & 0xFFFFFFFFFFFFLL, 1);
        *&v127 = v62;
        *(&v127 + 1) = v66;
        *&v128 = v67;
        *(&v128 + 1) = v68;
        v129 = v61;
        if (*(a1 + 1177) != 1 || (v69 = (v62 - *v62), *v69 < 0x2Fu) || (v70 = v69[23]) == 0 || ((v71 = *(v62 + v70), v15 = v71 > 0x2A, v72 = (1 << v71) & 0x50426810004, !v15) ? (v73 = v72 == 0) : (v73 = 1), v73))
        {
          if (*(a1 + 1176) != 1 || (v74 = (v62 - *v62), *v74 < 0x2Fu) || (v75 = v74[23]) == 0 || *(v62 + v75) != 47)
          {
            if (sub_1026040(&v123, &v127))
            {
              v76 = v129;
              v77 = *(a1 + 24);
              v78 = sub_3E37C0(*(a1 + 16), v129 & 0xFFFFFFFFFFFFFFLL);
              v79 = sub_2BC7A8(v77, v78);
              v80 = v79;
              if (a3)
              {
                v81 = *(a1 + 8);
                v82 = sub_4345A0(v81, v76 & 0xFFFFFFFFFFFFLL);
                v83 = sub_4345A0(v81, v76 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
                if (v83 <= v82)
                {
                  v83 = v82;
                }

                if (v83)
                {
                  v59 = v80 / v83;
                }

                else
                {
                  v59 = 0.0;
                }
              }

              else
              {
                v59 = v79;
              }

              v6 = v6 + pow(fmax(v59 - v58, 0.0), *(a1 + 1144));
            }
          }
        }

        v56 += 4;
      }

      while (v56 != v57);
      return v6;
    }

    return 0.0;
  }

  *(a1 + 1240) = *(a1 + 1232);
  v41 = *a2;
  v42 = a2[1];
  v43 = a2[2];
  v44 = a2[3];
  *&v127 = a1;
  *(&v127 + 1) = a1 + 1232;
  sub_1026E00(v41, v42, v43, v44 + 1, &v127);
  if (*(a1 + 1232) == *(a1 + 1240))
  {
    return v6;
  }

  v126[0] = &v130;
  v126[1] = a1;
  v126[2] = a2;
  v45 = *(a1 + 8 * a3 + 1152);
  v46 = *(a1 + 1168);
  v47 = *(sub_4D1F50(*a2, a2[1]) + 32);
  v48 = *(a1 + 24);
  v49 = sub_3E37C0(*(a1 + 16), v47 & 0xFFFFFFFFFFFFFFLL);
  v50 = sub_2BC7A8(v48, v49);
  v51 = v50;
  if (a3)
  {
    v52 = *(a1 + 8);
    v53 = sub_4345A0(v52, v47 & 0xFFFFFFFFFFFFLL);
    v54 = sub_4345A0(v52, v47 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
    if (v54 <= v53)
    {
      v54 = v53;
    }

    if (v54)
    {
      v55 = v51 / v54;
    }

    else
    {
      v55 = 0.0;
    }
  }

  else
  {
    v55 = v50;
  }

  v84 = *(a1 + 1232);
  v85 = *(a1 + 1240);
  if (v84 == v85)
  {
    return 0.0;
  }

  v86 = v45 + v46 * v55;
  v6 = 0.0;
  do
  {
    v88 = *a1;
    v89 = *v84;
    v90 = (*v84 & 0xFF000000000000) == 0;
    v91 = *v84 & 0xFFFFFFFFFFFFLL;
    v92 = sub_2B51D8(*a1, v91);
    if (*(v88 + 7772) == 1)
    {
      v93 = sub_30C50C(v88 + 3896, v89, 0);
      v94 = &v93[-*v93];
      if (*v94 < 5u)
      {
        v95 = 0;
      }

      else
      {
        v95 = *(v94 + 2);
        if (v95)
        {
          v95 += &v93[*&v93[v95]];
        }
      }

      v96 = v95 + ((v89 >> 30) & 0x3FFFC) + 4 + *(v95 + ((v89 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v96 = 0;
    }

    v97 = sub_31D7E8(v88, v91, 1);
    *&v127 = v92;
    *(&v127 + 1) = v96;
    *&v128 = v97;
    *(&v128 + 1) = v98;
    v129 = v91 | (v90 << 48);
    if (*(a1 + 1177) != 1 || (v99 = (v92 - *v92), *v99 < 0x2Fu) || (v100 = v99[23]) == 0 || ((v101 = *(v92 + v100), v15 = v101 > 0x2A, v102 = (1 << v101) & 0x50426810004, !v15) ? (v103 = v102 == 0) : (v103 = 1), v103))
    {
      if (*(a1 + 1176) != 1 || (v104 = (v92 - *v92), *v104 < 0x2Fu) || (v105 = v104[23]) == 0 || *(v92 + v105) != 47)
      {
        if (sub_1026190(v126, &v127, 0))
        {
          v106 = v129;
          v107 = *(a1 + 24);
          v108 = sub_3E37C0(*(a1 + 16), v129 & 0xFFFFFFFFFFFFFFLL);
          v109 = sub_2BC7A8(v107, v108);
          v110 = v109;
          if (a3)
          {
            v111 = *(a1 + 8);
            v112 = sub_4345A0(v111, v106 & 0xFFFFFFFFFFFFLL);
            v113 = sub_4345A0(v111, v106 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
            if (v113 <= v112)
            {
              v113 = v112;
            }

            if (v113)
            {
              v114 = v110 / v113;
            }

            else
            {
              v114 = 0.0;
            }
          }

          else
          {
            v114 = v109;
          }

          v6 = v6 + pow(fmax(v114 - v86, 0.0), *(a1 + 1144));
        }

        v125 = v129;
        v123 = v127;
        v124 = v128;
        BYTE6(v125) = BYTE6(v129) == 0;
        if (sub_1026190(v126, &v123, 1))
        {
          v115 = v125;
          v116 = *(a1 + 24);
          v117 = sub_3E37C0(*(a1 + 16), v125 & 0xFFFFFFFFFFFFFFLL);
          v118 = sub_2BC7A8(v116, v117);
          v119 = v118;
          if (a3)
          {
            v120 = *(a1 + 8);
            v121 = sub_4345A0(v120, v115 & 0xFFFFFFFFFFFFLL);
            v122 = sub_4345A0(v120, v115 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
            if (v122 <= v121)
            {
              v122 = v121;
            }

            if (v122)
            {
              v87 = v119 / v122;
            }

            else
            {
              v87 = 0.0;
            }
          }

          else
          {
            v87 = v118;
          }

          v6 = v6 + pow(fmax(v87 - v86, 0.0), *(a1 + 1144));
        }
      }
    }

    ++v84;
  }

  while (v84 != v85);
  return v6;
}

uint64_t sub_1026040(uint64_t a1, uint64_t a2)
{
  v3 = 24;
  if (!*(a2 + 38))
  {
    v3 = 16;
  }

  v4 = *(a2 + v3);
  if (!v4 || (v5 = (v4 - *v4), *v5 >= 7u) && (v6 = v5[3]) != 0 && (LOWORD(v4) = *(v4 + v6), v4 != 0xFFFF))
  {
    if (**a1 < v4)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (**a1 >= 0)
  {
    return 0;
  }

LABEL_8:
  v7 = *(a1 + 8);
  result = sub_319BB0(a2, 0, *v7);
  v15 = result;
  v17 = BYTE6(result);
  v16 = WORD2(result);
  if (result)
  {
    v10 = *(a1 + 16);
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v18 = &v15;
    return (sub_1027CD0(v11, v12, v13, v14 + 1, &v18) & 1) == 0 && !sub_4BF020(*v7, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, v7[133], 1);
  }

  return result;
}

uint64_t sub_1026190(uint64_t a1, int **a2, int a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = (*a2 - **a2);
  v6 = *v5;
  if (*(a2 + 38))
  {
    if (v6 < 0x9B)
    {
      return 0;
    }

    v7 = v5[77];
    if (!v7 || (*&v4[v7] & 2) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6 < 0x9B)
    {
      return 0;
    }

    v8 = v5[77];
    if (!v8 || (*&v4[v8] & 1) == 0)
    {
      return 0;
    }
  }

  v9 = 3;
  if (!*(a2 + 38))
  {
    v9 = 2;
  }

  v10 = a2[v9];
  if (v10)
  {
    v11 = (v10 - *v10);
    if (*v11 < 7u || (v12 = v11[3]) == 0 || (LOWORD(v10) = *(v10 + v12), v10 == 0xFFFF))
    {
      LOWORD(v10) = 0;
    }
  }

  if (**a1 >= v10)
  {
    return 0;
  }

  result = sub_319BB0(a2, a3, *v3);
  v24 = result;
  v26 = BYTE6(result);
  v25 = WORD2(result);
  if (result)
  {
    v17 = *(a1 + 16);
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v17 + 24);
    v28 = &v24;
    if (sub_1027CD0(v18, v19, v20, v21 + 1, &v28))
    {
      return 0;
    }

    else
    {
      v22 = v24 | ((v25 | (v26 << 16)) << 32);
      if (a3)
      {
        v23 = v27 << 56;
      }

      else
      {
        v23 = 0;
      }

      if (!a3)
      {
        v22 = a2[4];
      }

      return !sub_4BF020(*v3, v23 & 0xFF00000000000000 | v22 & 0xFFFFFFFFFFFFFFLL, v3[133], 1);
    }
  }

  return result;
}

void sub_10265BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10268F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1026930(double *a1, void *a2)
{
  v6 = 16;
  strcpy(__p, "min_u_turn_angle");
  v3 = sub_63D34(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_1026D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1026E00(void *result, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v9 = result;
  if (result)
  {
    result = sub_4D1DC0(result);
    v10 = result;
    if (a3)
    {
      result = sub_4D1DC0(a3);
      if (a2 >= v10 || a4 >= result)
      {
        if (a2 < v10 != a4 < result)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = sub_4D1F50(v9, a2);
        result = sub_4D1F50(a3, a4);
        if (v11 != result)
        {
          while (1)
          {
LABEL_20:
            v20 = a2 + 1;
            v21 = sub_4D1DC0(v9);
            result = sub_4D1DC0(a3);
            if (a2 + 1 >= v21 || a4 >= result)
            {
              if (v20 < v21 == a4 < result)
              {
                return result;
              }
            }

            else
            {
              v22 = sub_4D1F50(v9, a2 + 1);
              result = sub_4D1F50(a3, a4);
              if (v22 == result)
              {
                return result;
              }
            }

            v18 = sub_4D1F50(v9, a2);
            v19 = sub_4D1F50(v9, v20);
            sub_1028978(a5, v18, v19);
            a2 = v20;
          }
        }
      }
    }

    else if (a2 < result)
    {
      result = sub_4D1DC0(v9);
      if (a2 + 1 < result)
      {
        do
        {
          v15 = sub_4D1F50(v9, a2);
          v16 = sub_4D1F50(v9, a2 + 1);
          sub_1028978(a5, v15, v16);
          result = sub_4D1DC0(v9);
          v17 = a2 + 2;
          ++a2;
        }

        while (v17 < result);
      }
    }
  }

  else if (a3)
  {
    result = sub_4D1DC0(a3);
    if (a4 < result)
    {
      for (result = sub_4D1DC0(a3); a4 < result; a2 = v12)
      {
        v12 = a2 + 1;
        v13 = sub_4D1F50(0, a2);
        v14 = sub_4D1F50(0, v12);
        sub_1028978(a5, v13, v14);
        result = sub_4D1DC0(a3);
      }
    }
  }

  return result;
}

BOOL sub_1027020(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v8 = sub_F6D024(a1);
        v9 = sub_F6D024(a3);
        if (a2 >= v8 || a4 >= v9)
        {
          if (a2 < v8 == a4 < v9)
          {
            return 1;
          }
        }

        else
        {
          v10 = sub_F6D17C(a1, a2);
          if (v10 == sub_F6D17C(a3, a4))
          {
            return 1;
          }
        }

        v11 = sub_F6D17C(a1, a2);
        v12 = (*v11 - **v11);
        v13 = *v12;
        if (*(v11 + 38))
        {
          if (v13 < 0x9B)
          {
            return 0;
          }

          v14 = v12[77];
          if (!v14)
          {
            return 0;
          }

          v15 = 2;
        }

        else
        {
          if (v13 < 0x9B)
          {
            return 0;
          }

          v14 = v12[77];
          if (!v14)
          {
            return 0;
          }

          v15 = 1;
        }

        ++a2;
        if ((*(*v11 + v14) & v15) == 0)
        {
          return 0;
        }
      }
    }

    while (1)
    {
      v16 = a2 >= sub_F6D024(a1);
      result = v16;
      if (v16)
      {
        break;
      }

      v18 = sub_F6D17C(a1, a2);
      v19 = (*v18 - **v18);
      v20 = *v19;
      if (*(v18 + 38))
      {
        if (v20 < 0x9B)
        {
          return 0;
        }

        v21 = v19[77];
        if (!v21)
        {
          return 0;
        }

        v22 = 2;
      }

      else
      {
        if (v20 < 0x9B)
        {
          return 0;
        }

        v21 = v19[77];
        if (!v21)
        {
          return 0;
        }

        v22 = 1;
      }

      ++a2;
      if ((*(*v18 + v21) & v22) == 0)
      {
        return 0;
      }
    }
  }

  else if (a3)
  {
    while (1)
    {
      v16 = a4 >= sub_F6D024(a3);
      result = v16;
      if (v16)
      {
        break;
      }

      v23 = sub_F6D17C(0, a2);
      v24 = (*v23 - **v23);
      v25 = *v24;
      if (*(v23 + 38))
      {
        if (v25 < 0x9B)
        {
          return 0;
        }

        v26 = v24[77];
        if (!v26)
        {
          return 0;
        }

        v27 = 2;
      }

      else
      {
        if (v25 < 0x9B)
        {
          return 0;
        }

        v26 = v24[77];
        if (!v26)
        {
          return 0;
        }

        v27 = 1;
      }

      ++a2;
      if ((*(*v23 + v26) & v27) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    return 1;
  }

  return result;
}

void sub_102724C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = (v4 + 1);
  sub_2133C(a1, &v10);
}

void sub_10275BC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

BOOL sub_1027614(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v8 = sub_4D1DC0(a1);
        v9 = sub_4D1DC0(a3);
        if (a2 >= v8 || a4 >= v9)
        {
          if (a2 < v8 == a4 < v9)
          {
            return 1;
          }
        }

        else
        {
          v10 = sub_4D1F50(a1, a2);
          if (v10 == sub_4D1F50(a3, a4))
          {
            return 1;
          }
        }

        v11 = sub_4D1F50(a1, a2);
        v12 = (*v11 - **v11);
        v13 = *v12;
        if (*(v11 + 38))
        {
          if (v13 < 0x9B)
          {
            return 0;
          }

          v14 = v12[77];
          if (!v14)
          {
            return 0;
          }

          v15 = 2;
        }

        else
        {
          if (v13 < 0x9B)
          {
            return 0;
          }

          v14 = v12[77];
          if (!v14)
          {
            return 0;
          }

          v15 = 1;
        }

        ++a2;
        if ((*(*v11 + v14) & v15) == 0)
        {
          return 0;
        }
      }
    }

    while (1)
    {
      v16 = a2 >= sub_4D1DC0(a1);
      result = v16;
      if (v16)
      {
        break;
      }

      v18 = sub_4D1F50(a1, a2);
      v19 = (*v18 - **v18);
      v20 = *v19;
      if (*(v18 + 38))
      {
        if (v20 < 0x9B)
        {
          return 0;
        }

        v21 = v19[77];
        if (!v21)
        {
          return 0;
        }

        v22 = 2;
      }

      else
      {
        if (v20 < 0x9B)
        {
          return 0;
        }

        v21 = v19[77];
        if (!v21)
        {
          return 0;
        }

        v22 = 1;
      }

      ++a2;
      if ((*(*v18 + v21) & v22) == 0)
      {
        return 0;
      }
    }
  }

  else if (a3)
  {
    while (1)
    {
      v16 = a4 >= sub_4D1DC0(a3);
      result = v16;
      if (v16)
      {
        break;
      }

      v23 = sub_4D1F50(0, a2);
      v24 = (*v23 - **v23);
      v25 = *v24;
      if (*(v23 + 38))
      {
        if (v25 < 0x9B)
        {
          return 0;
        }

        v26 = v24[77];
        if (!v26)
        {
          return 0;
        }

        v27 = 2;
      }

      else
      {
        if (v25 < 0x9B)
        {
          return 0;
        }

        v26 = v24[77];
        if (!v26)
        {
          return 0;
        }

        v27 = 1;
      }

      ++a2;
      if ((*(*v23 + v26) & v27) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    return 1;
  }

  return result;
}

BOOL sub_1027840(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a3)
    {
      do
      {
        v17 = sub_4D1DC0(a1);
        v18 = sub_4D1DC0(a3);
        if (a2 >= v17 || a4 >= v18)
        {
          if (a2 < v17 == a4 < v18)
          {
            return 0;
          }
        }

        else
        {
          v19 = sub_4D1F50(a1, a2);
          if (v19 == sub_4D1F50(a3, a4))
          {
            return 0;
          }
        }

        v15 = sub_4D1F50(a1, a2++);
      }

      while (*(v15 + 32) != **a5 || *(v15 + 36) != *(*a5 + 4));
      return 1;
    }

    else
    {
      while (1)
      {
        v12 = sub_4D1DC0(a1);
        v13 = a2 >= v12;
        result = a2 < v12;
        if (v13)
        {
          break;
        }

        v10 = sub_4D1F50(a1, a2++);
        if (*(v10 + 32) == **a5 && *(v10 + 36) == *(*a5 + 4))
        {
          return 1;
        }
      }
    }
  }

  else if (a3)
  {
    while (1)
    {
      v20 = sub_4D1DC0(a3);
      v13 = a4 >= v20;
      result = a4 < v20;
      if (v13)
      {
        break;
      }

      v21 = sub_4D1F50(0, a2++);
      if (*(v21 + 32) == **a5 && *(v21 + 36) == *(*a5 + 4))
      {
        return 1;
      }
    }
  }

  else
  {
    return 0;
  }

  return result;
}

double sub_10279DC(uint64_t a1, unint64_t *a2, double a3)
{
  v6 = *a1;
  v7 = *a2 & 0xFF000000000000;
  v8 = sub_2B51D8(**a1, *a2 & 0xFFFFFFFFFFFFLL);
  v9 = (v8 - *v8);
  v10 = *v9;
  if (v7)
  {
    if (v10 < 0x9B)
    {
      return a3;
    }

    v11 = v9[77];
    if (!v11 || (*(v8 + v11) & 1) == 0)
    {
      return a3;
    }
  }

  else
  {
    if (v10 < 0x9B)
    {
      return a3;
    }

    v12 = v9[77];
    if (!v12 || (*(v8 + v12) & 2) == 0)
    {
      return a3;
    }
  }

  if (**(a1 + 8) != 1)
  {
    goto LABEL_39;
  }

  v13 = sub_4D1F50(**(a1 + 16), *(*(a1 + 16) + 8));
  v14 = *v6;
  v15 = *a2;
  sub_2B51D8(*v6, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v14 + 7772) == 1)
  {
    v16 = sub_30C50C(v14 + 3896, v15, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = (v18 + ((v15 >> 30) & 0x3FFFC) + 4 + *(v18 + ((v15 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v19 = 0;
  }

  sub_31D7E8(v14, v15 & 0xFFFFFFFFFFFFLL, 1);
  v20 = *(v13 + 8);
  v21 = (v20 - *v20);
  v22 = *v21;
  if (*(v13 + 38))
  {
    if (v22 < 5)
    {
      goto LABEL_27;
    }

    v23 = v21[2];
    if (!v23)
    {
      goto LABEL_27;
    }

LABEL_23:
    v24 = *(v20 + v23);
    v25 = (v19 - *v19);
    v26 = *v25;
    if ((v15 & 0xFF000000000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  if (v22 >= 9)
  {
    v23 = v21[4];
    if (v23)
    {
      goto LABEL_23;
    }
  }

LABEL_27:
  v24 = 0;
  v25 = (v19 - *v19);
  v26 = *v25;
  if ((v15 & 0xFF000000000000) != 0)
  {
LABEL_28:
    if (v26 >= 9)
    {
      v27 = v25[4];
      if (!v27)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    goto LABEL_31;
  }

LABEL_24:
  if (v26 < 5)
  {
LABEL_31:
    v27 = 0;
    goto LABEL_32;
  }

  v27 = v25[2];
  if (v27)
  {
LABEL_30:
    v27 = *(v19 + v27);
  }

LABEL_32:
  v28 = v24 + 18000;
  v29 = v24 - 18000;
  if ((v28 >> 5) < 0x465u)
  {
    v29 = v28;
  }

  v30 = v27 - v29;
  if (v30 > 18000)
  {
    v30 -= 36000;
  }

  if (v30 < -17999)
  {
    v30 += 36000;
  }

  if (fabs(v30 / 100.0) <= *(v6 + 129))
  {
LABEL_39:
    v31 = (*a2 & 0xFF000000000000) == 0;
    v32 = *a2 & 0xFFFFFFFFFFFFLL;
    v33 = **(a1 + 24);
    v34 = v6[3];
    v35 = sub_3E37C0(v6[2], v32 | (v31 << 48));
    v36 = sub_2BC7A8(v34, v35);
    v37 = v36;
    if (v33)
    {
      v38 = v6[1];
      v39 = sub_4345A0(v38, v32);
      v40 = sub_4345A0(v38, v32 | 0x1000000000000);
      if (v40 <= v39)
      {
        v40 = v39;
      }

      if (v40)
      {
        v41 = v37 / v40;
      }

      else
      {
        v41 = 0.0;
      }
    }

    else
    {
      v41 = v36;
    }

    return v41 + a3;
  }

  return a3;
}

uint64_t sub_1027CD0(void *a1, unint64_t a2, void *a3, unint64_t a4, unint64_t **a5)
{
  v8 = a2;
  if (!a1)
  {
    if (a3 && a4 < sub_4D1DC0(a3))
    {
      while (1)
      {
        v18 = *(sub_4D1F50(0, v8) + 32);
        v19 = **a5;
        v17 = v18 == v19;
        v20 = HIDWORD(v18) & 0xFFFFFF;
        v21 = HIDWORD(v19) & 0xFFFFFF;
        if (v17 && v20 == v21)
        {
          break;
        }

        ++v8;
        if (a4 >= sub_4D1DC0(a3))
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  if (!a3)
  {
    if (a2 < sub_4D1DC0(a1))
    {
      while (1)
      {
        v23 = *(sub_4D1F50(a1, v8) + 32);
        v24 = **a5;
        v17 = v23 == v24;
        v25 = HIDWORD(v23) & 0xFFFFFF;
        v26 = HIDWORD(v24) & 0xFFFFFF;
        if (v17 && v25 == v26)
        {
          break;
        }

        if (++v8 >= sub_4D1DC0(a1))
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  while (1)
  {
    v10 = sub_4D1DC0(a1);
    v11 = sub_4D1DC0(a3);
    if (v8 >= v10 || a4 >= v11)
    {
      if (v8 < v10 == a4 < v11)
      {
        return 0;
      }
    }

    else
    {
      v12 = sub_4D1F50(a1, v8);
      if (v12 == sub_4D1F50(a3, a4))
      {
        return 0;
      }
    }

    v13 = *(sub_4D1F50(a1, v8) + 32);
    v14 = **a5;
    v17 = v13 == v14;
    v15 = HIDWORD(v13) & 0xFFFFFF;
    v16 = HIDWORD(v14) & 0xFFFFFF;
    v17 = v17 && v15 == v16;
    if (v17)
    {
      break;
    }

    ++v8;
  }

  return 1;
}

uint64_t sub_1027E74(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    if (!a3)
    {
      if (a2 >= sub_F6D024(a1))
      {
        return 1;
      }

      while (1)
      {
        v19 = sub_F6D17C(a1, v6);
        v20 = *v19;
        v21 = (*v19 - **v19);
        v22 = *v21;
        if (*(v19 + 38))
        {
          if (v22 >= 0x4D)
          {
            v23 = v21[38];
            if (v23)
            {
              v24 = *(v20 + v23);
              if ((v24 & 2) != 0)
              {
                return 0;
              }

              v25 = 8;
LABEL_21:
              if ((v24 & v25) != 0)
              {
                return 0;
              }
            }
          }
        }

        else if (v22 >= 0x4D)
        {
          v26 = v21[38];
          if (v26)
          {
            v24 = *(v20 + v26);
            if (v24)
            {
              return 0;
            }

            v25 = 4;
            goto LABEL_21;
          }
        }

        if (++v6 >= sub_F6D024(a1))
        {
          return 1;
        }
      }
    }

    while (1)
    {
      v8 = sub_F6D024(a1);
      v9 = sub_F6D024(a3);
      if (v6 >= v8 || a4 >= v9)
      {
        if (v6 < v8 == a4 < v9)
        {
          return 1;
        }
      }

      else
      {
        v10 = sub_F6D17C(a1, v6);
        if (v10 == sub_F6D17C(a3, a4))
        {
          return 1;
        }
      }

      v11 = sub_F6D17C(a1, v6);
      v12 = *v11;
      v13 = (*v11 - **v11);
      v14 = *v13;
      if (*(v11 + 38))
      {
        if (v14 < 0x4D)
        {
          goto LABEL_6;
        }

        v15 = v13[38];
        if (!v15)
        {
          goto LABEL_6;
        }

        v16 = *(v12 + v15);
        if ((v16 & 2) != 0)
        {
          return 0;
        }

        v17 = 8;
      }

      else
      {
        if (v14 < 0x4D)
        {
          goto LABEL_6;
        }

        v18 = v13[38];
        if (!v18)
        {
          goto LABEL_6;
        }

        v16 = *(v12 + v18);
        if (v16)
        {
          return 0;
        }

        v17 = 4;
      }

      if ((v16 & v17) != 0)
      {
        return 0;
      }

LABEL_6:
      ++v6;
    }
  }

  if (!a3 || a4 >= sub_F6D024(a3))
  {
    return 1;
  }

  while (1)
  {
    v28 = sub_F6D17C(0, v6);
    v29 = *v28;
    v30 = (*v28 - **v28);
    v31 = *v30;
    if (!*(v28 + 38))
    {
      break;
    }

    if (v31 < 0x4D)
    {
      goto LABEL_36;
    }

    v32 = v30[38];
    if (!v32)
    {
      goto LABEL_36;
    }

    v33 = *(v29 + v32);
    if ((v33 & 2) != 0)
    {
      return 0;
    }

    v34 = 8;
LABEL_35:
    if ((v33 & v34) != 0)
    {
      return 0;
    }

LABEL_36:
    ++v6;
    if (a4 >= sub_F6D024(a3))
    {
      return 1;
    }
  }

  if (v31 < 0x4D)
  {
    goto LABEL_36;
  }

  v35 = v30[38];
  if (!v35)
  {
    goto LABEL_36;
  }

  v33 = *(v29 + v35);
  if ((v33 & 1) == 0)
  {
    v34 = 4;
    goto LABEL_35;
  }

  return 0;
}

char *sub_10280C4(uint64_t *a1, unsigned __int8 **a2)
{
  v4 = *a1;
  v5 = a2[1];
  v6 = **a2;
  result = sub_3E916C(*(v5 + 1), *a1);
  if (v6)
  {
    v8 = *(v5 + 1);
    sub_4345A0(v8, v4 & 0xFFFFFFFFFFFFLL);
    result = sub_4345A0(v8, v4 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
  }

  v9 = a1[1];
  v10 = a1[2];
  v11 = 0.0;
  while (v9 != v10)
  {
    v13 = *v9;
    v14 = a2[1];
    v15 = **a2;
    result = sub_3E916C(*(v14 + 1), *v9);
    v16 = result;
    if (v15)
    {
      v17 = *(v14 + 1);
      v18 = sub_4345A0(v17, v13 & 0xFFFFFFFFFFFFLL);
      result = sub_4345A0(v17, v13 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
      v19 = result;
      if (result <= v18)
      {
        v19 = v18;
      }

      if (v19)
      {
        v12 = v16 / v19;
      }

      else
      {
        v12 = 0.0;
      }
    }

    else
    {
      v12 = result;
    }

    v11 = v11 + v12;
    ++v9;
  }

  return result;
}

uint64_t sub_102821C(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    if (!a3)
    {
      if (a2 >= sub_4D1DC0(a1))
      {
        return 1;
      }

      while (1)
      {
        v19 = sub_4D1F50(a1, v6);
        v20 = *v19;
        v21 = (*v19 - **v19);
        v22 = *v21;
        if (*(v19 + 38))
        {
          if (v22 >= 0x4D)
          {
            v23 = v21[38];
            if (v23)
            {
              v24 = *&v20[v23];
              if ((v24 & 2) != 0)
              {
                return 0;
              }

              v25 = 8;
LABEL_21:
              if ((v24 & v25) != 0)
              {
                return 0;
              }
            }
          }
        }

        else if (v22 >= 0x4D)
        {
          v26 = v21[38];
          if (v26)
          {
            v24 = *&v20[v26];
            if (v24)
            {
              return 0;
            }

            v25 = 4;
            goto LABEL_21;
          }
        }

        if (++v6 >= sub_4D1DC0(a1))
        {
          return 1;
        }
      }
    }

    while (1)
    {
      v8 = sub_4D1DC0(a1);
      v9 = sub_4D1DC0(a3);
      if (v6 >= v8 || a4 >= v9)
      {
        if (v6 < v8 == a4 < v9)
        {
          return 1;
        }
      }

      else
      {
        v10 = sub_4D1F50(a1, v6);
        if (v10 == sub_4D1F50(a3, a4))
        {
          return 1;
        }
      }

      v11 = sub_4D1F50(a1, v6);
      v12 = *v11;
      v13 = (*v11 - **v11);
      v14 = *v13;
      if (*(v11 + 38))
      {
        if (v14 < 0x4D)
        {
          goto LABEL_6;
        }

        v15 = v13[38];
        if (!v15)
        {
          goto LABEL_6;
        }

        v16 = *&v12[v15];
        if ((v16 & 2) != 0)
        {
          return 0;
        }

        v17 = 8;
      }

      else
      {
        if (v14 < 0x4D)
        {
          goto LABEL_6;
        }

        v18 = v13[38];
        if (!v18)
        {
          goto LABEL_6;
        }

        v16 = *&v12[v18];
        if (v16)
        {
          return 0;
        }

        v17 = 4;
      }

      if ((v16 & v17) != 0)
      {
        return 0;
      }

LABEL_6:
      ++v6;
    }
  }

  if (!a3 || a4 >= sub_4D1DC0(a3))
  {
    return 1;
  }

  while (1)
  {
    v28 = sub_4D1F50(0, v6);
    v29 = *v28;
    v30 = (*v28 - **v28);
    v31 = *v30;
    if (!*(v28 + 38))
    {
      break;
    }

    if (v31 < 0x4D)
    {
      goto LABEL_36;
    }

    v32 = v30[38];
    if (!v32)
    {
      goto LABEL_36;
    }

    v33 = *&v29[v32];
    if ((v33 & 2) != 0)
    {
      return 0;
    }

    v34 = 8;
LABEL_35:
    if ((v33 & v34) != 0)
    {
      return 0;
    }

LABEL_36:
    ++v6;
    if (a4 >= sub_4D1DC0(a3))
    {
      return 1;
    }
  }

  if (v31 < 0x4D)
  {
    goto LABEL_36;
  }

  v35 = v30[38];
  if (!v35)
  {
    goto LABEL_36;
  }

  v33 = *&v29[v35];
  if ((v33 & 1) == 0)
  {
    v34 = 4;
    goto LABEL_35;
  }

  return 0;
}

uint64_t *sub_102846C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      a4[1] = 0;
      *a4 = v6;
      a4[2] = 0;
      a4[3] = 0;
      v8 = v5[1];
      v7 = v5[2];
      if (v7 != v8)
      {
        if (((v7 - v8) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v5 += 4;
      a4 += 4;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_102855C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 16) = v12;
    operator delete(v12);
  }

  sub_4B59B4(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_1028584(unsigned __int8 **a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a1[1];
  v6 = **a1;
  v7 = sub_3E916C(v5[1], *a2);
  v8 = v7;
  if (v6)
  {
    v9 = v5[1];
    v10 = sub_4345A0(v9, v4 & 0xFFFFFFFFFFFFLL);
    v11 = sub_4345A0(v9, v4 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
    if (v11 <= v10)
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = v8 / v11;
    }

    else
    {
      v12 = 0.0;
    }
  }

  else
  {
    v12 = v7;
  }

  v13 = v5[3];
  v14 = sub_3E37C0(v5[2], *a2);
  v15 = sub_2BC7A8(v13, v14);
  v16 = a2[1];
  v17 = a2[2];
  for (i = 0.0; v16 != v17; i = i + sub_2BC7A8(v20, v21))
  {
    v19 = *v16++;
    v20 = v5[3];
    v21 = sub_3E37C0(v5[2], v19);
  }

  if (v12 < *a1[2])
  {
    return 0;
  }

  v23 = v15;
  if (i < v23)
  {
    v23 = i;
  }

  return v23 >= *&a1[3][8 * **a1 + 24];
}

double sub_10286DC(uint64_t a1, unint64_t a2, int a3)
{
  v6 = *a1;
  v7 = **a1;
  v8 = a2 & 0xFF000000000000;
  v9 = a2 & 0xFFFFFFFFFFFFLL;
  sub_2B51D8(v7, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v7 + 7772) == 1)
  {
    v10 = sub_30C50C(v7 + 3896, a2, 0);
    v11 = &v10[-*v10];
    if (*v11 < 5u)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(v11 + 2);
      if (v12)
      {
        v12 += &v10[*&v10[v12]];
      }
    }

    v13 = (v12 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v12 + ((a2 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v13 = 0;
  }

  sub_31D7E8(v7, v9, 1);
  v14 = sub_4D1F50(**(a1 + 8), *(*(a1 + 8) + 8));
  v15 = *(v14 + 8);
  v16 = (v15 - *v15);
  v17 = *v16;
  if (*(v14 + 38))
  {
    if (v17 < 5)
    {
      goto LABEL_18;
    }

    v18 = v16[2];
    if (!v18)
    {
      goto LABEL_18;
    }

LABEL_14:
    v19 = *(v15 + v18);
    v20 = (v13 - *v13);
    v21 = *v20;
    if (v8)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (v17 >= 9)
  {
    v18 = v16[4];
    if (v18)
    {
      goto LABEL_14;
    }
  }

LABEL_18:
  v19 = 0;
  v20 = (v13 - *v13);
  v21 = *v20;
  if (v8)
  {
LABEL_19:
    if (v21 >= 5)
    {
      v22 = v20[2];
      if (!v22)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    goto LABEL_22;
  }

LABEL_15:
  if (v21 < 9)
  {
LABEL_22:
    v22 = 0;
    goto LABEL_23;
  }

  v22 = v20[4];
  if (v22)
  {
LABEL_21:
    v22 = *(v13 + v22);
  }

LABEL_23:
  v23 = v19 + 18000;
  v24 = v19 - 18000;
  if ((v23 >> 5) < 0x465u)
  {
    v24 = v23;
  }

  v25 = v22 - v24;
  if (v25 > 18000)
  {
    v25 -= 36000;
  }

  if (v25 < -17999)
  {
    v25 += 36000;
  }

  if (a3 != 1 || **(a1 + 16) != 1 || (result = 0.0, fabs(v25 / 100.0) <= *(v6 + 129)))
  {
    v27 = **(a1 + 24);
    v28 = v6[3];
    v29 = sub_3E37C0(v6[2], a2);
    v30 = sub_2BC7A8(v28, v29);
    v31 = v30;
    if (v27)
    {
      v32 = v6[1];
      v33 = sub_4345A0(v32, v9);
      v34 = sub_4345A0(v32, v9 | 0x1000000000000);
      if (v34 <= v33)
      {
        v34 = v33;
      }

      if (v34)
      {
        return v31 / v34;
      }

      else
      {
        return 0.0;
      }
    }

    else
    {
      return v30;
    }
  }

  return result;
}

void sub_1028978(uint64_t a1, int **a2, uint64_t a3)
{
  v6 = *a1;
  v7 = **a1;
  v8 = sub_3116D0(a2);
  sub_2B365C(v7, v8, 0, v6 + 151);
  v9 = *(a3 + 32);
  v10 = (*a2 - **a2);
  if (*v10 >= 0x9Bu && (v11 = v10[77]) != 0)
  {
    v12 = *(*a2 + v11 + 1) >> 7;
    v13 = v6[151];
    v14 = v6[152];
    if (v13 == v14)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = 0;
    v13 = v6[151];
    v14 = v6[152];
    if (v13 == v14)
    {
LABEL_4:
      v15 = 0;
      v31 = BYTE6(v9);
      v32 = WORD2(v9);
      if (v12)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }
  }

  v16 = a2[4];
  v17 = v13;
  do
  {
    if (__PAIR64__(*(v17 + 4), *v17) == __PAIR64__(WORD2(v16), v16) && *(v17 + 6) == ((v16 & 0xFF000000000000) == 0))
    {
      v15 = (v17 - v13) >> 3;
      v31 = BYTE6(v9);
      v32 = WORD2(v9);
      if (v12)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v17 += 8;
  }

  while (v17 != v14);
  v15 = (v14 - v13) >> 3;
  v31 = BYTE6(v9);
  v32 = WORD2(v9);
  if (v12)
  {
    goto LABEL_32;
  }

LABEL_30:
  v28 = v6[151];
  v15 = (v15 + 1) % ((v6[152] - v28) >> 3);
  v29 = v28 + 8 * v15;
  if (*v29 != v9)
  {
    goto LABEL_15;
  }

LABEL_36:
  if (*(v29 + 4) != v32 || *(v29 + 6) != v31)
  {
    while (1)
    {
LABEL_15:
      v18 = *(a1 + 8);
      v20 = *(v18 + 8);
      v19 = *(v18 + 16);
      if (v20 >= v19)
      {
        v21 = *v18;
        v22 = v20 - *v18;
        v23 = (v22 >> 3) + 1;
        if (v23 >> 61)
        {
          sub_1794();
        }

        v24 = v19 - v21;
        if (v24 >> 2 > v23)
        {
          v23 = v24 >> 2;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          if (!(v25 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v26 = (8 * (v22 >> 3));
        *v26 = *v29;
        v27 = v26 + 1;
        memcpy(0, v21, v22);
        *v18 = 0;
        *(v18 + 8) = v27;
        *(v18 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }

        *(v18 + 8) = v27;
        if (!v12)
        {
          goto LABEL_30;
        }
      }

      else
      {
        *v20 = *v29;
        *(v18 + 8) = v20 + 1;
        if (!v12)
        {
          goto LABEL_30;
        }
      }

LABEL_32:
      v30 = v6[151];
      if (v15)
      {
        --v15;
        v29 = v30 + 8 * v15;
        if (*v29 == v9)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v15 = ((v6[152] - v30) >> 3) - 1;
        v29 = v30 + 8 * v15;
        if (*v29 == v9)
        {
          goto LABEL_36;
        }
      }
    }
  }
}

void sub_1028C50()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  sub_FBF440(v0);
  operator new();
}

void sub_1028F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_487EC4(v7);
  sub_487EC4(va);
  sub_4547F0(va1);
  sub_10294EC(&STACK[0x270]);
  sub_100CA00(&STACK[0x2520]);
  if (*(v8 + 23) < 0)
  {
    operator delete(*v8);
  }

  _Unwind_Resume(a1);
}

void sub_1028FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  sub_FBF440(v8);
  operator new();
}

void sub_10292E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_487EC4(v7);
  sub_487EC4(va);
  sub_4547F0(va1);
  sub_1029770(&STACK[0x270]);
  sub_C6579C(&STACK[0x2520]);
  if (*(v8 + 23) < 0)
  {
    operator delete(*v8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1029388(uint64_t *a1, __int128 *a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v5 = 0x76B981DAE6076BLL;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 552 * v2;
  v13 = 0;
  sub_49D2CC(552 * v2, a2);
  v12 = 552 * v2 + 552;
  sub_D05BD8(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 552;
    sub_4547F0(i - 552);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_10294D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

void *sub_10294EC(void *a1)
{
  v2 = a1[1104];
  if (v2)
  {
    a1[1105] = v2;
    operator delete(v2);
  }

  v3 = a1[1101];
  if (v3)
  {
    a1[1102] = v3;
    operator delete(v3);
  }

  v4 = a1[1092];
  if (v4)
  {
    a1[1093] = v4;
    operator delete(v4);
  }

  v5 = a1[1089];
  if (v5)
  {
    a1[1090] = v5;
    operator delete(v5);
  }

  v6 = a1[1086];
  if (v6)
  {
    a1[1087] = v6;
    operator delete(v6);
  }

  sub_360988((a1 + 989));
  sub_100DCF0((a1 + 494));
  sub_100CA00((a1 + 1));
  return a1;
}

void *sub_102957C(void *a1)
{
  v2 = a1[1104];
  if (v2)
  {
    a1[1105] = v2;
    operator delete(v2);
  }

  v3 = a1[1101];
  if (v3)
  {
    a1[1102] = v3;
    operator delete(v3);
  }

  v4 = a1[1092];
  if (v4)
  {
    a1[1093] = v4;
    operator delete(v4);
  }

  v5 = a1[1089];
  if (v5)
  {
    a1[1090] = v5;
    operator delete(v5);
  }

  v6 = a1[1086];
  if (v6)
  {
    a1[1087] = v6;
    operator delete(v6);
  }

  sub_360988((a1 + 989));
  sub_100E0D0((a1 + 494));
  sub_100CD54((a1 + 1));
  return a1;
}

uint64_t sub_102960C(uint64_t *a1, __int128 *a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v5 = 0x76B981DAE6076BLL;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 552 * v2;
  v13 = 0;
  sub_49F780(552 * v2, a2);
  v12 = 552 * v2 + 552;
  sub_D05BD8(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 552;
    sub_4547F0(i - 552);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_102975C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

char **sub_1029770(char **a1)
{
  v2 = a1[1104];
  if (v2)
  {
    a1[1105] = v2;
    operator delete(v2);
  }

  v3 = a1[1101];
  if (v3)
  {
    a1[1102] = v3;
    operator delete(v3);
  }

  v4 = a1[1092];
  if (v4)
  {
    a1[1093] = v4;
    operator delete(v4);
  }

  v5 = a1[1089];
  if (v5)
  {
    a1[1090] = v5;
    operator delete(v5);
  }

  v6 = a1[1086];
  if (v6)
  {
    a1[1087] = v6;
    operator delete(v6);
  }

  sub_360988((a1 + 989));
  sub_C66B9C((a1 + 494));
  sub_C6579C(a1 + 1);
  return a1;
}

uint64_t sub_1029800@<X0>(__int128 **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  if (sub_F6A05C(*a1))
  {
    v5 = *a1;

    return sub_49D2CC(a2, v5);
  }

  else
  {
    v7 = sub_102E1A8(a1[1], *a1[2], *(a1[2] + 1), *(a1[2] + 2), a1[3], 0, *a1[4], v4[1].n128_i32[2], v4[1].n128_u32[3]);
    v11[0].n128_u64[0] = sub_1031BFC(a1[1]);
    v11[0].n128_u64[1] = v8;
    sub_32114(v4 + 2, v11);
    if (v7 == -1 || (v7 & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
    {
      v4[3].n128_u32[1] = sub_1031BE8(a1[1]);
      return sub_F68960(a2);
    }

    else
    {
      sub_1030B4C(a1[1], v11);
      v10 = sub_F69D6C(v11);
      if (v10 && (sub_3B8508() & 1) == 0)
      {
        sub_74700();
        nullsub_1();
        sub_F68960(a2);
      }

      else
      {
        sub_49D2CC(a2, v11);
      }

      return sub_4547F0(v11);
    }
  }
}

void sub_102994C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_1029960(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, void ***a5)
{
  if (a1 != a2)
  {
    v9 = a1;
    do
    {
      v30 = **a5;
      if (v30 == (*a5)[1] || sub_F6BC64(v9, v30))
      {
        v31 = *v9;
        v55 = *(v9 + 16);
        v54 = v31;
        *(v9 + 8) = 0u;
        *v9 = 0;
        v56 = *(v9 + 24);
        v57 = *(v9 + 40);
        *(v9 + 24) = 0u;
        *(v9 + 40) = 0;
        v32 = *(v9 + 48);
        v33 = *(v9 + 64);
        v34 = *(v9 + 80);
        v61 = *(v9 + 96);
        v59 = v33;
        v60 = v34;
        v58 = v32;
        v62 = *(v9 + 104);
        v63 = *(v9 + 120);
        *(v9 + 104) = 0u;
        *(v9 + 120) = 0;
        v64 = *(v9 + 128);
        v35 = *(v9 + 144);
        *(v9 + 128) = 0u;
        *(v9 + 144) = 0;
        v66 = *(v9 + 152);
        v36 = *(v9 + 168);
        v65 = v35;
        v67 = v36;
        *(v9 + 152) = 0u;
        *(v9 + 168) = 0;
        v37 = *(v9 + 176);
        v38 = *(v9 + 192);
        v70 = *(v9 + 208);
        v68 = v37;
        v69 = v38;
        v71 = *(v9 + 216);
        v72 = *(v9 + 232);
        *(v9 + 216) = 0u;
        *(v9 + 232) = 0;
        v73 = *(v9 + 240);
        v39 = *(v9 + 256);
        *(v9 + 240) = 0u;
        *(v9 + 256) = 0;
        v40 = *(v9 + 264);
        v41 = *(v9 + 296);
        v76 = *(v9 + 280);
        v77 = v41;
        v75 = v40;
        v42 = *(v9 + 312);
        v43 = *(v9 + 328);
        v44 = *(v9 + 360);
        v80 = *(v9 + 344);
        v81 = v44;
        v78 = v42;
        v79 = v43;
        v45 = *(v9 + 376);
        v46 = *(v9 + 392);
        v47 = *(v9 + 424);
        v84 = *(v9 + 408);
        v85 = v47;
        v82 = v45;
        v83 = v46;
        v48 = *(v9 + 440);
        v49 = *(v9 + 456);
        v50 = *(v9 + 488);
        v88 = *(v9 + 472);
        v89 = v50;
        v86 = v48;
        v87 = v49;
        v51 = *(v9 + 504);
        v74 = v39;
        v90 = v51;
        *(v9 + 504) = 0;
        v52 = *(v9 + 528);
        v91 = *(v9 + 512);
        v92 = v52;
        v93 = *(v9 + 544);
        *(v9 + 512) = 0u;
        *(v9 + 528) = 0u;
        *(v9 + 544) = 0;
        v53 = a3[1];
        if (v53 < a3[2])
        {
          v10 = v55;
          *v53 = v54;
          *(v53 + 16) = v10;
          *(v53 + 24) = 0;
          *(v53 + 32) = 0;
          *(v53 + 40) = 0;
          *(v53 + 24) = v56;
          *(v53 + 40) = v57;
          v11 = v58;
          v12 = v60;
          v13 = v61;
          *(v53 + 64) = v59;
          *(v53 + 80) = v12;
          *(v53 + 48) = v11;
          *(v53 + 96) = v13;
          *(v53 + 104) = 0;
          *(v53 + 112) = 0;
          *(v53 + 120) = 0;
          *(v53 + 104) = v62;
          *(v53 + 120) = v63;
          *(v53 + 128) = 0;
          *(v53 + 136) = 0;
          *(v53 + 144) = 0;
          *(v53 + 128) = v64;
          *(v53 + 152) = 0;
          *(v53 + 160) = 0;
          *(v53 + 168) = 0;
          *(v53 + 152) = v66;
          v14 = v67;
          *(v53 + 144) = v65;
          v55 = 0;
          v54 = 0uLL;
          v56 = 0uLL;
          v57 = 0;
          v62 = 0uLL;
          v63 = 0;
          v64 = 0uLL;
          v65 = 0;
          *(v53 + 168) = v14;
          v66 = 0uLL;
          v67 = 0;
          v15 = v69;
          v16 = v70;
          *(v53 + 176) = v68;
          *(v53 + 192) = v15;
          *(v53 + 208) = v16;
          *(v53 + 216) = 0;
          *(v53 + 224) = 0;
          *(v53 + 232) = 0;
          *(v53 + 216) = v71;
          v71 = 0uLL;
          *(v53 + 232) = v72;
          *(v53 + 240) = 0;
          *(v53 + 248) = 0;
          *(v53 + 256) = 0;
          *(v53 + 240) = v73;
          *(v53 + 256) = v74;
          v72 = 0;
          v73 = 0uLL;
          v74 = 0;
          v17 = v75;
          v18 = v77;
          *(v53 + 280) = v76;
          *(v53 + 296) = v18;
          *(v53 + 264) = v17;
          v19 = v78;
          v20 = v79;
          v21 = v81;
          *(v53 + 344) = v80;
          *(v53 + 360) = v21;
          *(v53 + 312) = v19;
          *(v53 + 328) = v20;
          v22 = v82;
          v23 = v83;
          v24 = v85;
          *(v53 + 408) = v84;
          *(v53 + 424) = v24;
          *(v53 + 376) = v22;
          *(v53 + 392) = v23;
          v25 = v86;
          v26 = v87;
          v27 = v89;
          *(v53 + 472) = v88;
          *(v53 + 488) = v27;
          *(v53 + 440) = v25;
          *(v53 + 456) = v26;
          *(v53 + 504) = v90;
          *(v53 + 528) = 0;
          *(v53 + 544) = 0;
          *(v53 + 536) = 0;
          v28 = v92;
          *(v53 + 512) = v91;
          *(v53 + 528) = v28;
          v90 = 0;
          v91 = 0uLL;
          *(v53 + 544) = v93;
          v92 = 0uLL;
          v93 = 0;
          v29 = v53 + 552;
          a3[1] = v53 + 552;
        }

        else
        {
          sub_49B008(a3, &v54);
        }

        a3[1] = v29;
        sub_4547F0(&v54);
      }

      v9 += 552;
    }

    while (v9 != a2);
  }

  return a3;
}

uint64_t sub_1029CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  if (sub_F700E4(*a1))
  {
    v5 = *a1;

    return sub_49F780(a2, v5);
  }

  else
  {
    v7 = sub_10457EC(*(a1 + 8), **(a1 + 16), *(*(a1 + 16) + 8), *(*(a1 + 16) + 16), *(a1 + 24), 0, **(a1 + 32), v4[1].n128_i32[2], v4[1].n128_u32[3]);
    v11[0].n128_u64[0] = sub_10499B8(*(a1 + 8));
    v11[0].n128_u64[1] = v8;
    sub_32114(v4 + 2, v11);
    if (v7 == -1 || (v7 & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
    {
      v4[3].n128_u32[1] = sub_1031BE8(*(a1 + 8));
      return sub_F6EB3C(a2);
    }

    else
    {
      sub_104881C(*(a1 + 8), v11);
      v10 = sub_F6FDC8(v11);
      if (v10 && (sub_3B8508() & 1) == 0)
      {
        sub_74700();
        nullsub_1();
        sub_F6EB3C(a2);
      }

      else
      {
        sub_49F780(a2, v11);
      }

      return sub_4547F0(v11);
    }
  }
}

void sub_1029E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1029E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  if (a1 != a2)
  {
    v9 = a1;
    do
    {
      v30 = **a5;
      if (v30 == (*a5)[1] || sub_F71328(v9, v30))
      {
        v31 = *v9;
        v55 = *(v9 + 16);
        v54 = v31;
        *(v9 + 8) = 0u;
        *v9 = 0;
        v56 = *(v9 + 24);
        v57 = *(v9 + 40);
        *(v9 + 24) = 0u;
        *(v9 + 40) = 0;
        v32 = *(v9 + 48);
        v33 = *(v9 + 64);
        v34 = *(v9 + 80);
        v61 = *(v9 + 96);
        v59 = v33;
        v60 = v34;
        v58 = v32;
        v62 = *(v9 + 104);
        v63 = *(v9 + 120);
        *(v9 + 104) = 0u;
        *(v9 + 120) = 0;
        v64 = *(v9 + 128);
        v35 = *(v9 + 144);
        *(v9 + 128) = 0u;
        *(v9 + 144) = 0;
        v66 = *(v9 + 152);
        v36 = *(v9 + 168);
        v65 = v35;
        v67 = v36;
        *(v9 + 152) = 0u;
        *(v9 + 168) = 0;
        v37 = *(v9 + 176);
        v38 = *(v9 + 192);
        v70 = *(v9 + 208);
        v68 = v37;
        v69 = v38;
        v71 = *(v9 + 216);
        v72 = *(v9 + 232);
        *(v9 + 216) = 0u;
        *(v9 + 232) = 0;
        v73 = *(v9 + 240);
        v39 = *(v9 + 256);
        *(v9 + 240) = 0u;
        *(v9 + 256) = 0;
        v40 = *(v9 + 264);
        v41 = *(v9 + 296);
        v76 = *(v9 + 280);
        v77 = v41;
        v75 = v40;
        v42 = *(v9 + 312);
        v43 = *(v9 + 328);
        v44 = *(v9 + 360);
        v80 = *(v9 + 344);
        v81 = v44;
        v78 = v42;
        v79 = v43;
        v45 = *(v9 + 376);
        v46 = *(v9 + 392);
        v47 = *(v9 + 424);
        v84 = *(v9 + 408);
        v85 = v47;
        v82 = v45;
        v83 = v46;
        v48 = *(v9 + 440);
        v49 = *(v9 + 456);
        v50 = *(v9 + 488);
        v88 = *(v9 + 472);
        v89 = v50;
        v86 = v48;
        v87 = v49;
        v51 = *(v9 + 504);
        v74 = v39;
        v90 = v51;
        *(v9 + 504) = 0;
        v52 = *(v9 + 528);
        v91 = *(v9 + 512);
        v92 = v52;
        v93 = *(v9 + 544);
        *(v9 + 512) = 0u;
        *(v9 + 528) = 0u;
        *(v9 + 544) = 0;
        v53 = *(a3 + 8);
        if (v53 < *(a3 + 16))
        {
          v10 = v55;
          *v53 = v54;
          *(v53 + 16) = v10;
          *(v53 + 24) = 0;
          *(v53 + 32) = 0;
          *(v53 + 40) = 0;
          *(v53 + 24) = v56;
          *(v53 + 40) = v57;
          v11 = v58;
          v12 = v60;
          v13 = v61;
          *(v53 + 64) = v59;
          *(v53 + 80) = v12;
          *(v53 + 48) = v11;
          *(v53 + 96) = v13;
          *(v53 + 104) = 0;
          *(v53 + 112) = 0;
          *(v53 + 120) = 0;
          *(v53 + 104) = v62;
          *(v53 + 120) = v63;
          *(v53 + 128) = 0;
          *(v53 + 136) = 0;
          *(v53 + 144) = 0;
          *(v53 + 128) = v64;
          *(v53 + 152) = 0;
          *(v53 + 160) = 0;
          *(v53 + 168) = 0;
          *(v53 + 152) = v66;
          v14 = v67;
          *(v53 + 144) = v65;
          v55 = 0;
          v54 = 0uLL;
          v56 = 0uLL;
          v57 = 0;
          v62 = 0uLL;
          v63 = 0;
          v64 = 0uLL;
          v65 = 0;
          *(v53 + 168) = v14;
          v66 = 0uLL;
          v67 = 0;
          v15 = v69;
          v16 = v70;
          *(v53 + 176) = v68;
          *(v53 + 192) = v15;
          *(v53 + 208) = v16;
          *(v53 + 216) = 0;
          *(v53 + 224) = 0;
          *(v53 + 232) = 0;
          *(v53 + 216) = v71;
          v71 = 0uLL;
          *(v53 + 232) = v72;
          *(v53 + 240) = 0;
          *(v53 + 248) = 0;
          *(v53 + 256) = 0;
          *(v53 + 240) = v73;
          *(v53 + 256) = v74;
          v72 = 0;
          v73 = 0uLL;
          v74 = 0;
          v17 = v75;
          v18 = v77;
          *(v53 + 280) = v76;
          *(v53 + 296) = v18;
          *(v53 + 264) = v17;
          v19 = v78;
          v20 = v79;
          v21 = v81;
          *(v53 + 344) = v80;
          *(v53 + 360) = v21;
          *(v53 + 312) = v19;
          *(v53 + 328) = v20;
          v22 = v82;
          v23 = v83;
          v24 = v85;
          *(v53 + 408) = v84;
          *(v53 + 424) = v24;
          *(v53 + 376) = v22;
          *(v53 + 392) = v23;
          v25 = v86;
          v26 = v87;
          v27 = v89;
          *(v53 + 472) = v88;
          *(v53 + 488) = v27;
          *(v53 + 440) = v25;
          *(v53 + 456) = v26;
          *(v53 + 504) = v90;
          *(v53 + 528) = 0;
          *(v53 + 544) = 0;
          *(v53 + 536) = 0;
          v28 = v92;
          *(v53 + 512) = v91;
          *(v53 + 528) = v28;
          v90 = 0;
          v91 = 0uLL;
          *(v53 + 544) = v93;
          v92 = 0uLL;
          v93 = 0;
          v29 = (v53 + 552);
          *(a3 + 8) = v53 + 552;
        }

        else
        {
          v29 = sub_D59894(a3, &v54);
        }

        *(a3 + 8) = v29;
        sub_4547F0(&v54);
      }

      v9 += 552;
    }

    while (v9 != a2);
  }

  return a3;
}

void sub_102A1C8()
{
  byte_27C0FBF = 3;
  LODWORD(qword_27C0FA8) = 5136193;
  byte_27C0FD7 = 3;
  LODWORD(qword_27C0FC0) = 5136194;
  byte_27C0FEF = 3;
  LODWORD(qword_27C0FD8) = 5136195;
  byte_27C1007 = 15;
  strcpy(&qword_27C0FF0, "vehicle_mass_kg");
  byte_27C101F = 21;
  strcpy(&xmmword_27C1008, "vehicle_cargo_mass_kg");
  byte_27C1037 = 19;
  strcpy(&qword_27C1020, "vehicle_aux_power_w");
  byte_27C104F = 15;
  strcpy(&qword_27C1038, "dcdc_efficiency");
  strcpy(&qword_27C1050, "drive_train_efficiency");
  HIBYTE(word_27C1066) = 22;
  operator new();
}

void sub_102A3A4(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C1066) < 0)
  {
    sub_21E6A30();
  }

  sub_21E6A3C();
  _Unwind_Resume(a1);
}

void sub_102A3C4(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v4 = *a3;
  *&v6 = a3[1];
  *(&v6 + 7) = *(a3 + 15);
  v5 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *a1 = a4;
  *(a1 + 23) = *(&v6 + 7);
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 31) = v5;
  sub_102BB48(a1 + 32);
}

void sub_102A4F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_102A51C(uint64_t a1, void *a2)
{
  HIBYTE(v12[2]) = 13;
  strcpy(v12, "walking_speed");
  sub_65244(a2, v12, (a1 + 32));
  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }

  HIBYTE(v12[2]) = 21;
  strcpy(v12, "elevation_gain_factor");
  if (sub_5FC3C(a2, v12))
  {
    v4 = sub_5F5AC(a2, v12);
    *(a1 + 40) = sub_FD5B6C(v4);
    *(a1 + 48) = v5;
    *(a1 + 56) = v6;
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }

  HIBYTE(v12[2]) = 21;
  strcpy(v12, "elevation_loss_factor");
  if (sub_5FC3C(a2, v12))
  {
    v7 = sub_5F5AC(a2, v12);
    *(a1 + 64) = sub_FD5B6C(v7);
    *(a1 + 72) = v8;
    *(a1 + 80) = v9;
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }

  strcpy(v12, "elevation_gain_penalty");
  HIBYTE(v12[2]) = 22;
  if (sub_5FC3C(a2, v12))
  {
    v10 = sub_5F5AC(a2, v12);
    *(a1 + 112) = sub_F8DD60(v10);
    *(a1 + 120) = v11;
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }

  HIBYTE(v12[2]) = 17;
  strcpy(v12, "elevation_factors");
  sub_FD5C98(a2, v12, (a1 + 88));
  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }

  operator new();
}

void sub_102B81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_102B908(uint64_t *a1, _BYTE *a2, int a3, void *a4)
{
  if (a3)
  {
    *(&v19.__r_.__value_.__s + 23) = 9;
    strcpy(&v19, "hiking_cf");
    v6 = sub_5F8FC(a4, &v19);
    result = sub_3AF30C(a1, v6);
    goto LABEL_25;
  }

  v9 = a2[9];
  if (a2[11])
  {
    *(&v19.__r_.__value_.__s + 23) = 5;
    strcpy(&v19, "avoid");
    if (v9)
    {
      v10 = "_busy_roads";
    }

    else
    {
      v10 = "";
    }

    if ((v9 & 1) == 0)
    {
      v11 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v11 = 11;
    goto LABEL_12;
  }

  if (a2[9])
  {
    *(&v19.__r_.__value_.__s + 23) = 5;
    strcpy(&v19, "avoid");
    v10 = "_busy_roads";
    goto LABEL_11;
  }

  if (a2[10] != 1)
  {
    *(&v19.__r_.__value_.__s + 23) = 13;
    strcpy(&v19, "cost_function");
    v18 = sub_5F8FC(a4, &v19);
    result = sub_3AF30C(a1, v18);
    goto LABEL_25;
  }

  v11 = 0;
  *(&v19.__r_.__value_.__s + 23) = 5;
  strcpy(&v19, "avoid");
  v10 = "";
LABEL_12:
  std::string::append(&v19, v10, v11);
  if (a2[10])
  {
    v12 = "_hills";
  }

  else
  {
    v12 = "";
  }

  if (a2[10])
  {
    v13 = 6;
  }

  else
  {
    v13 = 0;
  }

  std::string::append(&v19, v12, v13);
  if (a2[11])
  {
    v14 = "_stairs";
  }

  else
  {
    v14 = "";
  }

  if (a2[11])
  {
    v15 = 7;
  }

  else
  {
    v15 = 0;
  }

  std::string::append(&v19, v14, v15);
  std::string::append(&v19, "_cf", 3uLL);
  v16 = sub_5F8FC(a4, &v19);
  result = sub_3AF30C(a1, v16);
LABEL_25:
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    v17 = result;
    operator delete(v19.__r_.__value_.__l.__data_);
    return v17;
  }

  return result;
}

void sub_102BB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_102BB48(uint64_t a1)
{
  *a1 = 0x4012CCCCCCCCCCCDLL;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  operator new();
}

void sub_102BE20(_Unwind_Exception *a1)
{
  v5 = v2;
  v7 = *v5;
  if (*v5)
  {
    v1[69] = v7;
    operator delete(v7);
    v8 = *v4;
    if (!*v4)
    {
LABEL_3:
      v9 = v1[62];
      if (!v9)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v8 = *v4;
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  v1[66] = v8;
  operator delete(v8);
  v9 = v1[62];
  if (!v9)
  {
LABEL_5:
    sub_21DB4B4((v1 + 56));
    v10 = v1[49];
    if (v10)
    {
      v1[50] = v10;
      operator delete(v10);
      v11 = v1[42];
      if (v11)
      {
LABEL_18:
        v1[43] = v11;
        operator delete(v11);
        v12 = v1[39];
        if (v12)
        {
LABEL_19:
          v1[40] = v12;
          operator delete(v12);
          v13 = *(v3 + 48);
          if (v13)
          {
LABEL_20:
            v1[37] = v13;
            operator delete(v13);
            v14 = *v3;
            if (*v3)
            {
LABEL_21:
              v1[31] = v14;
              operator delete(v14);
              v15 = v1[7];
              if (!v15)
              {
LABEL_16:
                _Unwind_Resume(a1);
              }

LABEL_15:
              v1[8] = v15;
              operator delete(v15);
              goto LABEL_16;
            }

LABEL_14:
            v15 = v1[7];
            if (!v15)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }

LABEL_13:
          v14 = *v3;
          if (*v3)
          {
            goto LABEL_21;
          }

          goto LABEL_14;
        }

LABEL_12:
        v13 = *(v3 + 48);
        if (v13)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v11 = v1[42];
      if (v11)
      {
        goto LABEL_18;
      }
    }

    v12 = v1[39];
    if (v12)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

LABEL_4:
  v1[63] = v9;
  operator delete(v9);
  goto LABEL_5;
}

void sub_102BF98()
{
  if (!*(v0 + 56))
  {
    JUMPOUT(0x102BEECLL);
  }

  JUMPOUT(0x102BEE4);
}

uint64_t sub_102C010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = sub_FBF404(a1, a2, a3, a4, a5, a6, 0);
  v9.n128_u64[0] = 0;
  v9.n128_u64[1] = &off_2669FE0;
  sub_434934(v7 + 4, &v9);
  return a1;
}

uint64_t sub_102C060()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  sub_FBF440(v0);
  sub_109D928(v13, v3->n128_i64[1]);
  sub_109D998(v13, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), -1, v3[1].n128_u32[2], v12);
  v3[3].n128_u32[1] = sub_109EC4C(v13);
  v18[0].n128_u64[0] = sub_109EC54(v13);
  v18[0].n128_u64[1] = v6;
  sub_32114(v3 + 2, v18);
  v7 = sub_109EC60(v13);
  sub_434D48(&v3[5], v3[5].n128_i64[1], *v7, v7[1], (v7[1] - *v7) >> 5);
  v3[3].n128_u8[1] = 1;
  if (!sub_F69D6C(v12))
  {
    sub_49D2CC(v18, v12);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v16 = v5;
    v17 = 0;
    operator new();
  }

  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  sub_4547F0(v12);
  v8 = __p;
  if (__p)
  {
    v9 = v15;
    v10 = __p;
    if (v15 != __p)
    {
      do
      {
        if (*(v9 - 1) < 0)
        {
          operator delete(*(v9 - 3));
        }

        v9 -= 4;
      }

      while (v9 != v8);
      v10 = __p;
    }

    v15 = v8;
    operator delete(v10);
  }

  return sub_100CA00(v13);
}

void sub_102C248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 8) = v4;
  sub_49D8D0(&STACK[0x11E0]);
  sub_4547F0(&STACK[0x11F0]);
  sub_4547F0(va);
  sub_102D10C(&STACK[0x230]);
  _Unwind_Resume(a1);
}

void sub_102C288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4547F0(va);
  sub_102D10C(&STACK[0x230]);
  _Unwind_Resume(a1);
}

uint64_t sub_102C2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  v13 = v12;
  sub_FBF440(v8);
  sub_109FD78(v21, v11->n128_i64[1]);
  sub_109FDE8(v21, *v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), -1, v11[1].n128_u32[2], v20);
  v11[3].n128_u32[1] = sub_109EC4C(v21);
  v26[0].n128_u64[0] = sub_109EC54(v21);
  v26[0].n128_u64[1] = v14;
  sub_32114(v11 + 2, v26);
  v15 = sub_109EC60(v21);
  sub_434D48(&v11[5], v11[5].n128_i64[1], *v15, v15[1], (v15[1] - *v15) >> 5);
  v11[3].n128_u8[1] = 1;
  if (!sub_F69D6C(v20))
  {
    sub_49EA74(v26, v20);
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    v24 = v13;
    v25 = 0;
    operator new();
  }

  *v13 = 0;
  v13[1] = 0;
  v13[2] = 0;
  sub_4547F0(v20);
  v16 = __p;
  if (__p)
  {
    v17 = v23;
    v18 = __p;
    if (v23 != __p)
    {
      do
      {
        if (*(v17 - 1) < 0)
        {
          operator delete(*(v17 - 3));
        }

        v17 -= 4;
      }

      while (v17 != v16);
      v18 = __p;
    }

    v23 = v16;
    operator delete(v18);
  }

  return sub_100CD54(v21);
}

void sub_102C4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 8) = v4;
  sub_49D8D0(&STACK[0x11E0]);
  sub_4547F0(&STACK[0x11F0]);
  sub_4547F0(va);
  sub_102C528(&STACK[0x230]);
  _Unwind_Resume(a1);
}

void sub_102C4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4547F0(va);
  sub_102C528(&STACK[0x230]);
  _Unwind_Resume(a1);
}

uint64_t sub_102C528(uint64_t a1)
{
  v2 = *(a1 + 3984);
  if (v2)
  {
    v3 = *(a1 + 3992);
    v4 = *(a1 + 3984);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(a1 + 3984);
    }

    *(a1 + 3992) = v2;
    operator delete(v4);
  }

  return sub_100CD54(a1);
}

uint64_t sub_102C5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  v13 = v12;
  sub_FBF440(v8);
  sub_109FD78(v29, v11->n128_i64[1]);
  v14 = *v10;
  v15 = *(v10 + 8);
  v16 = *(v10 + 16);
  if (*(v10 + 40))
  {
    sub_10A13E4(v29, v14, v15, v16, *(v10 + 24), -1, v11[1].n128_u32[2], &v26);
  }

  else
  {
    sub_10A115C(v29, v14, v15, v16, *(v10 + 24), -1, v11[1].n128_u32[2], &v26);
  }

  v11[3].n128_u32[1] = sub_109EC4C(v29);
  v34.n128_u64[0] = sub_109EC54(v29);
  v34.n128_u64[1] = v17;
  sub_32114(v11 + 2, &v34);
  v18 = sub_109EC60(v29);
  sub_434D48(&v11[5], v11[5].n128_i64[1], *v18, v18[1], (v18[1] - *v18) >> 5);
  v11[3].n128_u8[1] = 1;
  if (!sub_F63D58(&v26))
  {
    v34 = 0uLL;
    v35 = 0;
    v32 = &v34;
    v33 = 0;
    if (v26.__r_.__value_.__l.__size_ != v26.__r_.__value_.__r.__words[0])
    {
      if (0xF128CFC4A33F128DLL * ((v26.__r_.__value_.__l.__size_ - v26.__r_.__value_.__r.__words[0]) >> 3) < 0x76B981DAE6076CLL)
      {
        operator new();
      }

      sub_1794();
    }

    if (SHIBYTE(v28) < 0)
    {
      sub_325C(&v36, __p, *(&__p + 1));
    }

    else
    {
      v36 = __p;
      v37 = v28;
    }

    v13->n128_u64[0] = 0;
    v13->n128_u64[1] = 0;
    v13[1].n128_u64[0] = 0;
    v32 = v13;
    v33 = 0;
    operator new();
  }

  v13->n128_u64[0] = 0;
  v13->n128_u64[1] = 0;
  v13[1].n128_u64[0] = 0;
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }

  v19 = v26.__r_.__value_.__r.__words[0];
  if (v26.__r_.__value_.__r.__words[0])
  {
    size = v26.__r_.__value_.__l.__size_;
    v21 = v26.__r_.__value_.__r.__words[0];
    if (v26.__r_.__value_.__l.__size_ != v26.__r_.__value_.__r.__words[0])
    {
      do
      {
        size = sub_4547F0(size - 552);
      }

      while (size != v19);
      v21 = v26.__r_.__value_.__r.__words[0];
    }

    v26.__r_.__value_.__l.__size_ = v19;
    operator delete(v21);
  }

  v22 = v30;
  if (v30)
  {
    v23 = v31;
    v24 = v30;
    if (v31 != v30)
    {
      do
      {
        if (*(v23 - 1) < 0)
        {
          operator delete(*(v23 - 3));
        }

        v23 -= 4;
      }

      while (v23 != v22);
      v24 = v30;
    }

    v31 = v22;
    operator delete(v24);
  }

  return sub_100CD54(v29);
}

void sub_102C908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_487EC4((v3 - 136));
  sub_454784(va);
  sub_102C528(va1);
  _Unwind_Resume(a1);
}

void sub_102C92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  *(v3 + 8) = v4;
  sub_DC15BC((v5 - 152));
  sub_454784(v5 - 136);
  sub_454784(va);
  sub_102C528(va1);
  _Unwind_Resume(a1);
}

void sub_102C964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_49D8D0((v3 - 152));
  sub_454784(va);
  sub_102C528(va1);
  _Unwind_Resume(a1);
}

char **sub_102C9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  v13 = v12;
  sub_FBF440(v8);
  sub_10A2094(v21, v11->n128_i64[1]);
  sub_10A2104(v21, *v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), -1, v11[1].n128_u32[2], v20);
  v11[3].n128_u32[1] = sub_109EC4C(v21);
  v26[0].n128_u64[0] = sub_109EC54(v21);
  v26[0].n128_u64[1] = v14;
  sub_32114(v11 + 2, v26);
  v15 = sub_109EC60(v21);
  sub_434D48(&v11[5], v11[5].n128_i64[1], *v15, v15[1], (v15[1] - *v15) >> 5);
  v11[3].n128_u8[1] = 1;
  if (!sub_F6FDC8(v20))
  {
    sub_49F780(v26, v20);
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    v24 = v13;
    v25 = 0;
    operator new();
  }

  *v13 = 0;
  v13[1] = 0;
  v13[2] = 0;
  sub_4547F0(v20);
  v16 = __p;
  if (__p)
  {
    v17 = v23;
    v18 = __p;
    if (v23 != __p)
    {
      do
      {
        if (*(v17 - 1) < 0)
        {
          operator delete(*(v17 - 3));
        }

        v17 -= 4;
      }

      while (v17 != v16);
      v18 = __p;
    }

    v23 = v16;
    operator delete(v18);
  }

  return sub_C6579C(v21);
}

void sub_102CBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 8) = v4;
  sub_49D8D0(&STACK[0x11E0]);
  sub_4547F0(&STACK[0x11F0]);
  sub_4547F0(va);
  sub_102CC4C(&STACK[0x230]);
  _Unwind_Resume(a1);
}

void sub_102CC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4547F0(va);
  sub_102CC4C(&STACK[0x230]);
  _Unwind_Resume(a1);
}

char **sub_102CC4C(char **a1)
{
  v2 = a1[498];
  if (v2)
  {
    v3 = a1[499];
    v4 = a1[498];
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 3));
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = a1[498];
    }

    a1[499] = v2;
    operator delete(v4);
  }

  return sub_C6579C(a1);
}