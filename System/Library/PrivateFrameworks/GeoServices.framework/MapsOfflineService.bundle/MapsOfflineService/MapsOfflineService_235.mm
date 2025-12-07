uint64_t sub_E5FB50(uint64_t *a1, char *a2, char *a3)
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

  v16 = 32 * v3;
  sub_E5FCD0((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_E5FCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5FCD0(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E5FDF0(uint64_t *a1, char *a2, char *a3)
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

  v16 = 32 * v3;
  sub_E5FF70((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_E5FF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E5FF70(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E60090(uint64_t *a1, char *a2, char *a3)
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

  v16 = 32 * v3;
  sub_E60210((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_E601FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E60210(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E60330(uint64_t *a1, char *a2, char *a3)
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

  v16 = 32 * v3;
  sub_E604B0((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_E6049C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E604B0(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E605D0(uint64_t *a1, char *a2, char *a3)
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

  v16 = 32 * v3;
  sub_E60750((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_E6073C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E60750(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E60870(uint64_t *a1, char *a2, char *a3)
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

  v16 = 32 * v3;
  sub_E609F0((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_E609DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E609F0(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E60B10(uint64_t *a1, char *a2, char *a3)
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

  v16 = 32 * v3;
  sub_E60C90((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_E60C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E60C90(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E60DB0(uint64_t *a1, char *a2, char *a3)
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

  v16 = 32 * v3;
  sub_E60F30((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_E60F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E60F30(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E61050(uint64_t *a1, char *a2, char *a3)
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

  v16 = 32 * v3;
  sub_E611D0((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_E611BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E611D0(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

uint64_t sub_E612F0(uint64_t *a1, char *a2, char *a3)
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

  v16 = 32 * v3;
  sub_E61470((32 * v3), a2, a3);
  v8 = 32 * v3 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 32;
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

void sub_E6145C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E61470(_BYTE *a1, char *a2, char *__s)
{
  v5 = *a2;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v12) = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
    *(&__dst + v7) = 0;
    *a1 = v5;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = __dst;
    sub_325C(v8, __dst, *(&__dst + 1));
    operator delete(v9);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = v5;
  v8 = a1 + 8;
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v8 = __dst;
  *(v8 + 2) = v12;
  return a1;
}

void sub_E61590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  prime = vcvtps_u32_f32((*(a3 + 24) + *(a2 + 24)) / *(a2 + 32));
  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v5 = *(a2 + 8);
  if (prime > *&v5)
  {
    goto LABEL_6;
  }

  if (prime >= *&v5)
  {
    return;
  }

  v6 = vcvtps_u32_f32(*(a2 + 24) / *(a2 + 32));
  if (*&v5 < 3uLL || (v7 = vcnt_s8(v5), v7.i16[0] = vaddlv_u8(v7), v7.u32[0] > 1uLL))
  {
    v9 = prime;
    v10 = std::__next_prime(v6);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime >= *&v5)
    {
      return;
    }

LABEL_6:

    sub_B07C(a2, prime);
    return;
  }

  v8 = 1 << -__clz(v6 - 1);
  if (v6 >= 2)
  {
    v6 = v8;
  }

  if (prime <= v6)
  {
    prime = v6;
  }

  if (prime < *&v5)
  {
    goto LABEL_6;
  }
}

void *sub_E616A8(void *a1, unint64_t *a2, void *a3)
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

uint64_t sub_E619DC@<X0>(const char *a1@<X0>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v15);
  v7 = strlen(a1);
  sub_4A5C(&v16, a1, v7);
  v8 = std::ostream::operator<<();
  v9 = strlen(a3);
  sub_4A5C(v8, a3, v9);
  if ((v26 & 0x10) != 0)
  {
    v11 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v11 = v22;
    }

    v12 = v21;
    v10 = v11 - v21;
    if (v11 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v10 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v12 = v19;
    v10 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  a4[23] = v10;
  if (v10)
  {
    memmove(a4, v12, v10);
  }

LABEL_12:
  a4[v10] = 0;
  v16 = v13;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E61C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E61C78(uint64_t **a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_E893A4(a2);
  if (*(v6 + 23) < 0)
  {
    sub_325C(&v36, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v37 = *(v6 + 16);
    v36 = v7;
  }

  v8 = sub_E82FC4(a2);
  if (*(v8 + 23) < 0)
  {
    sub_325C(v34, *v8, *(v8 + 8));
  }

  else
  {
    v9 = *v8;
    v35 = *(v8 + 16);
    *v34 = v9;
  }

  if (v35 >= 0)
  {
    v10 = HIBYTE(v35);
  }

  else
  {
    v10 = v34[1];
  }

  if (v10 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v10 + 13 >= 0x17)
  {
    operator new();
  }

  v29.__r_.__value_.__s.__data_[13] = 0;
  HIWORD(v29.__r_.__value_.__r.__words[1]) = 0;
  v29.__r_.__value_.__r.__words[2] = 0;
  *(&v29.__r_.__value_.__s + 23) = v10 + 13;
  strcpy(&v29, " os_version=");
  if (v10)
  {
    if (v35 >= 0)
    {
      v11 = v34;
    }

    else
    {
      v11 = v34[0];
    }

    memmove(&v29.__r_.__value_.__r.__words[1] + 5, v11, v10);
  }

  *(&v29.__r_.__value_.__r.__words[1] + v10 + 5) = 0;
  v12 = std::string::append(&v29, " app_id=", 0xAuLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v37 >= 0)
  {
    v14 = &v36;
  }

  else
  {
    v14 = v36;
  }

  if (v37 >= 0)
  {
    v15 = HIBYTE(v37);
  }

  else
  {
    v15 = *(&v36 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, "", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v33 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_54:
    operator delete(v30.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_54;
  }

LABEL_26:
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_55:
  operator delete(v29.__r_.__value_.__l.__data_);
LABEL_27:
  v20 = &off_2772E28;
  if (*(a2 + 336))
  {
    v20 = *(a2 + 336);
  }

  v21 = v20[11];
  if (!v21)
  {
    v21 = &off_2773678;
  }

  v22 = v21[4];
  if (!v22)
  {
    v22 = &off_2773608;
  }

  v23 = v22[4];
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = &off_2773580;
  }

  sub_E5B05C(v24, &v31);
  v25 = sub_74700();
  v26 = sub_73F1C(v25);
  if (*(v26 + 23) >= 0)
  {
    v27 = *(v26 + 23);
  }

  else
  {
    v27 = *(v26 + 8);
  }

  if (v27 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v27 + 13 >= 0x17)
  {
    operator new();
  }

  v30.__r_.__value_.__s.__data_[13] = 0;
  HIWORD(v30.__r_.__value_.__r.__words[1]) = 0;
  v30.__r_.__value_.__r.__words[2] = 0;
  *(&v30.__r_.__value_.__s + 23) = v27 + 13;
  strcpy(&v30, " b64_request");
  if (v27)
  {
    if (*(v26 + 23) >= 0)
    {
      v28 = v26;
    }

    else
    {
      v28 = *v26;
    }

    memmove(&v30.__r_.__value_.__r.__words[1] + 5, v28, v27);
  }

  *(&v30.__r_.__value_.__r.__words[1] + v27 + 5) = 0;
  sub_E621C4(a1, __p, &v31, &v30, a3);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_49:
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_58;
    }
  }

  else if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
LABEL_50:
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_59;
  }

LABEL_58:
  operator delete(__p[0]);
  if ((SHIBYTE(v35) & 0x80000000) == 0)
  {
LABEL_51:
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      return;
    }

LABEL_60:
    operator delete(v36);
    return;
  }

LABEL_59:
  operator delete(v34[0]);
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_60;
  }
}

void sub_E62094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a35 & 0x80000000) == 0)
      {
LABEL_8:
        if (a42 < 0)
        {
          operator delete(a37);
          if ((*(v42 - 73) & 0x80000000) == 0)
          {
LABEL_10:
            _Unwind_Resume(exception_object);
          }
        }

        else if ((*(v42 - 73) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        operator delete(*(v42 - 96));
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a30);
      goto LABEL_8;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a23);
  if ((a35 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_E621C4@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X1>, uint64_t **a3@<X2>, uint64_t **a4@<X3>, _BYTE *a5@<X8>)
{
  sub_D7B0(v30);
  v10 = *(a1 + 23);
  if (v10 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = a1[1];
  }

  v13 = sub_4A5C(&v31, v11, v12);
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = a2[1];
  }

  v17 = sub_4A5C(v13, v15, v16);
  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v18 >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = a3[1];
  }

  v21 = sub_4A5C(v17, v19, v20);
  v22 = *(a4 + 23);
  if (v22 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = *a4;
  }

  if (v22 >= 0)
  {
    v24 = *(a4 + 23);
  }

  else
  {
    v24 = a4[1];
  }

  sub_4A5C(v21, v23, v24);
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
      goto LABEL_40;
    }
  }

  else
  {
    if ((v41 & 8) == 0)
    {
      v25 = 0;
      a5[23] = 0;
      goto LABEL_36;
    }

    v27 = v34;
    v25 = v35 - v34;
    if ((v35 - v34) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_40:
      sub_3244();
    }
  }

  if (v25 >= 0x17)
  {
    operator new();
  }

  a5[23] = v25;
  if (v25)
  {
    memmove(a5, v27, v25);
  }

LABEL_36:
  a5[v25] = 0;
  v31 = v28;
  if (v39 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v33);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E62490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E624A4(uint64_t **a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_E82FAC(a2);
  if (*(v6 + 23) < 0)
  {
    sub_325C(&v36, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v37 = *(v6 + 16);
    v36 = v7;
  }

  v8 = sub_E83004(a2);
  if (*(v8 + 23) < 0)
  {
    sub_325C(v34, *v8, *(v8 + 8));
  }

  else
  {
    v9 = *v8;
    v35 = *(v8 + 16);
    *v34 = v9;
  }

  if (v35 >= 0)
  {
    v10 = HIBYTE(v35);
  }

  else
  {
    v10 = v34[1];
  }

  if (v10 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v10 + 13 >= 0x17)
  {
    operator new();
  }

  v29.__r_.__value_.__s.__data_[13] = 0;
  HIWORD(v29.__r_.__value_.__r.__words[1]) = 0;
  v29.__r_.__value_.__r.__words[2] = 0;
  *(&v29.__r_.__value_.__s + 23) = v10 + 13;
  strcpy(&v29, " os_version=");
  if (v10)
  {
    if (v35 >= 0)
    {
      v11 = v34;
    }

    else
    {
      v11 = v34[0];
    }

    memmove(&v29.__r_.__value_.__r.__words[1] + 5, v11, v10);
  }

  *(&v29.__r_.__value_.__r.__words[1] + v10 + 5) = 0;
  v12 = std::string::append(&v29, " app_id=", 0xAuLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v37 >= 0)
  {
    v14 = &v36;
  }

  else
  {
    v14 = v36;
  }

  if (v37 >= 0)
  {
    v15 = HIBYTE(v37);
  }

  else
  {
    v15 = *(&v36 + 1);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v31, "", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v33 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_54:
    operator delete(v30.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_54;
  }

LABEL_26:
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_55:
  operator delete(v29.__r_.__value_.__l.__data_);
LABEL_27:
  v20 = &off_2772E28;
  if (*(a2 + 312))
  {
    v20 = *(a2 + 312);
  }

  v21 = v20[11];
  if (!v21)
  {
    v21 = &off_2773678;
  }

  v22 = v21[4];
  if (!v22)
  {
    v22 = &off_2773608;
  }

  v23 = v22[4];
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = &off_2773580;
  }

  sub_E5B05C(v24, &v31);
  v25 = sub_74700();
  v26 = sub_73F1C(v25);
  if (*(v26 + 23) >= 0)
  {
    v27 = *(v26 + 23);
  }

  else
  {
    v27 = *(v26 + 8);
  }

  if (v27 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v27 + 13 >= 0x17)
  {
    operator new();
  }

  v30.__r_.__value_.__s.__data_[13] = 0;
  HIWORD(v30.__r_.__value_.__r.__words[1]) = 0;
  v30.__r_.__value_.__r.__words[2] = 0;
  *(&v30.__r_.__value_.__s + 23) = v27 + 13;
  strcpy(&v30, " b64_request");
  if (v27)
  {
    if (*(v26 + 23) >= 0)
    {
      v28 = v26;
    }

    else
    {
      v28 = *v26;
    }

    memmove(&v30.__r_.__value_.__r.__words[1] + 5, v28, v27);
  }

  *(&v30.__r_.__value_.__r.__words[1] + v27 + 5) = 0;
  sub_E621C4(a1, __p, &v31, &v30, a3);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_49:
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_58;
    }
  }

  else if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
LABEL_50:
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_59;
  }

LABEL_58:
  operator delete(__p[0]);
  if ((SHIBYTE(v35) & 0x80000000) == 0)
  {
LABEL_51:
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      return;
    }

LABEL_60:
    operator delete(v36);
    return;
  }

LABEL_59:
  operator delete(v34[0]);
  if (SHIBYTE(v37) < 0)
  {
    goto LABEL_60;
  }
}

void sub_E628C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a35 & 0x80000000) == 0)
      {
LABEL_8:
        if (a42 < 0)
        {
          operator delete(a37);
          if ((*(v42 - 73) & 0x80000000) == 0)
          {
LABEL_10:
            _Unwind_Resume(exception_object);
          }
        }

        else if ((*(v42 - 73) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        operator delete(*(v42 - 96));
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a30);
      goto LABEL_8;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a23);
  if ((a35 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_E629F0(uint64_t **a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_E82FA0(a2);
  if (*(v6 + 23) < 0)
  {
    sub_325C(&v35, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v36 = *(v6 + 16);
    v35 = v7;
  }

  v8 = sub_E82FE4(a2);
  if (*(v8 + 23) < 0)
  {
    sub_325C(v33, *v8, *(v8 + 8));
  }

  else
  {
    v9 = *v8;
    v34 = *(v8 + 16);
    *v33 = v9;
  }

  if (v34 >= 0)
  {
    v10 = HIBYTE(v34);
  }

  else
  {
    v10 = v33[1];
  }

  if (v10 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v10 + 13 >= 0x17)
  {
    operator new();
  }

  v28.__r_.__value_.__s.__data_[13] = 0;
  HIWORD(v28.__r_.__value_.__r.__words[1]) = 0;
  v28.__r_.__value_.__r.__words[2] = 0;
  *(&v28.__r_.__value_.__s + 23) = v10 + 13;
  strcpy(&v28, " os_version=");
  if (v10)
  {
    if (v34 >= 0)
    {
      v11 = v33;
    }

    else
    {
      v11 = v33[0];
    }

    memmove(&v28.__r_.__value_.__r.__words[1] + 5, v11, v10);
  }

  *(&v28.__r_.__value_.__r.__words[1] + v10 + 5) = 0;
  v12 = std::string::append(&v28, " app_id=", 0xAuLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v36 >= 0)
  {
    v14 = &v35;
  }

  else
  {
    v14 = v35;
  }

  if (v36 >= 0)
  {
    v15 = HIBYTE(v36);
  }

  else
  {
    v15 = *(&v35 + 1);
  }

  v16 = std::string::append(&v29, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v30, "", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v32 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_52:
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_53:
  operator delete(v28.__r_.__value_.__l.__data_);
LABEL_27:
  v20 = *(a2 + 320);
  if (!v20)
  {
    v20 = &off_2773678;
  }

  v21 = v20[4];
  if (!v21)
  {
    v21 = &off_2773608;
  }

  v22 = v21[4];
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = &off_2773580;
  }

  sub_E5B05C(v23, &v30);
  v24 = sub_74700();
  v25 = sub_73F1C(v24);
  if (*(v25 + 23) >= 0)
  {
    v26 = *(v25 + 23);
  }

  else
  {
    v26 = *(v25 + 8);
  }

  if (v26 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v26 + 13 >= 0x17)
  {
    operator new();
  }

  v29.__r_.__value_.__s.__data_[13] = 0;
  HIWORD(v29.__r_.__value_.__r.__words[1]) = 0;
  v29.__r_.__value_.__r.__words[2] = 0;
  *(&v29.__r_.__value_.__s + 23) = v26 + 13;
  strcpy(&v29, " b64_request");
  if (v26)
  {
    if (*(v25 + 23) >= 0)
    {
      v27 = v25;
    }

    else
    {
      v27 = *v25;
    }

    memmove(&v29.__r_.__value_.__r.__words[1] + 5, v27, v26);
  }

  *(&v29.__r_.__value_.__r.__words[1] + v26 + 5) = 0;
  sub_E621C4(a1, __p, &v30, &v29, a3);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_47:
      if ((SHIBYTE(v32) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_56;
    }
  }

  else if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

  operator delete(v30.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32) & 0x80000000) == 0)
  {
LABEL_48:
    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_57;
  }

LABEL_56:
  operator delete(__p[0]);
  if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
LABEL_49:
    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
      return;
    }

LABEL_58:
    operator delete(v35);
    return;
  }

LABEL_57:
  operator delete(v33[0]);
  if (SHIBYTE(v36) < 0)
  {
    goto LABEL_58;
  }
}

void sub_E62DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a35 & 0x80000000) == 0)
      {
LABEL_8:
        if (a42 < 0)
        {
          operator delete(a37);
          if ((*(v42 - 73) & 0x80000000) == 0)
          {
LABEL_10:
            _Unwind_Resume(exception_object);
          }
        }

        else if ((*(v42 - 73) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        operator delete(*(v42 - 96));
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a30);
      goto LABEL_8;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a23);
  if ((a35 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_E62F28()
{
  byte_27B966F = 3;
  LODWORD(qword_27B9658) = 5136193;
  byte_27B9687 = 3;
  LODWORD(qword_27B9670) = 5136194;
  byte_27B969F = 3;
  LODWORD(qword_27B9688) = 5136195;
  byte_27B96B7 = 15;
  strcpy(&qword_27B96A0, "vehicle_mass_kg");
  byte_27B96CF = 21;
  strcpy(&xmmword_27B96B8, "vehicle_cargo_mass_kg");
  byte_27B96E7 = 19;
  strcpy(&qword_27B96D0, "vehicle_aux_power_w");
  byte_27B96FF = 15;
  strcpy(&qword_27B96E8, "dcdc_efficiency");
  strcpy(&qword_27B9700, "drive_train_efficiency");
  HIBYTE(word_27B9716) = 22;
  operator new();
}

void sub_E6307C(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27B9716) < 0)
  {
    sub_21E519C();
  }

  sub_21E51A8();
  _Unwind_Resume(a1);
}

char *sub_E6309C(char **a1, uint64_t a2)
{
  result = *a1;
  v3 = a1[1];
  v5 = v3 - result;
  if (v3 != result)
  {
    v6 = 0;
    v7 = 0x6FB586FB586FB587 * (v5 >> 3);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      if ((*(result + 44) - 4) >= 0xFFFFFFFE)
      {
        if (v6 == a2)
        {
          return result;
        }

        ++v6;
      }

      result += 440;
      --v7;
    }

    while (v7);
  }

  result = &unk_27B9740;
  if ((atomic_load_explicit(&qword_27B9730, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27B9730))
    {
      sub_78922C(&unk_27B9740);
      __cxa_guard_release(&qword_27B9730);
    }

    return &unk_27B9740;
  }

  return result;
}

void *sub_E63190(void *a1, unint64_t a2)
{
  if ((atomic_load_explicit(&qword_27B9738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27B9738))
  {
    sub_78922C(&unk_27B98F8);
    __cxa_guard_release(&qword_27B9738);
  }

  if (0x6FB586FB586FB587 * ((a1[1] - *a1) >> 3) <= a2)
  {
    return &unk_27B98F8;
  }

  return sub_E6325C(a1, a2);
}

unint64_t sub_E6325C(void *a1, unint64_t a2)
{
  if (0x6FB586FB586FB587 * ((a1[1] - *a1) >> 3) <= a2)
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
    std::to_string(&v15, 0x6FB586FB586FB587 * ((a1[1] - *a1) >> 3));
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

  return *a1 + 440 * a2;
}

void sub_E633B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

void sub_E63490(uint64_t a1, uint64_t a2, void *a3)
{
  HIBYTE(v6[2]) = 21;
  strcpy(v6, "InputPointTransformer");
  memset(__p, 0, sizeof(__p));
  v4 = sub_3AEC94(a2, v6, __p);
  sub_E635A0(a1, v4);
}

void sub_E63578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E63730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E63844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E63864(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(a2 + 2);
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v12 = *a2;
      sub_E63B10(a1, *a2, a3);
      sub_E80194(v12, &v18);
      if (v18 != -1 && v21 >> 5 <= 0x464u && v20 >> 5 <= 0x464u)
      {
        v14 = *a3;
        v15 = a3[1];
        while (v14 != v15)
        {
          if (*(v14 + 432) == 1)
          {
            v16 = v18;
            *(v14 + 8) = v19;
            *v14 = v16;
            *(v14 + 50) = v21;
            *(v14 + 48) = v20;
          }

          v14 += 440;
        }
      }
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_24;
      }

      v6 = *a2;
      sub_E63C00(a1, *a2, a3);
      sub_E8041C(v6, &v18);
      if (v18 != -1 && v21 >> 5 <= 0x464u && v20 >> 5 <= 0x464u)
      {
        v8 = *a3;
        v9 = a3[1];
        while (v8 != v9)
        {
          if (*(v8 + 432) == 1)
          {
            v10 = v18;
            *(v8 + 8) = v19;
            *v8 = v10;
            *(v8 + 50) = v21;
            *(v8 + 48) = v20;
          }

          v8 += 440;
        }
      }
    }

    if (__p)
    {
      operator delete(__p);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }

  else
  {
    switch(v3)
    {
      case 3:
        v11 = *a2;

        sub_E63F68(a1, v11, a3);
        break;
      case 5:
        if (*(*a2 + 80) > 1)
        {
          sub_E64948(a1, *a2 + 72, 3, a3);
          *(*a3 + 176) = 1;
          *(a3[1] - 264) = 2;
          return;
        }

        goto LABEL_24;
      case 6:
        v4 = *a2;
        v5 = *(v4 + 212);
        if (v5 != 57)
        {
          if (v5 == 50)
          {

            sub_E64298(a1, v4, a3);
            return;
          }

          goto LABEL_24;
        }

        sub_E645B4(a1, v4, a3);
        break;
      default:
LABEL_24:
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        return;
    }
  }
}

_BYTE *sub_E63B10@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 64);
  v5 = *(a2 + 112);
  if (v4 <= v5)
  {
    v6 = *(a2 + 112);
  }

  else
  {
    v6 = *(a2 + 64);
  }

  if (v5 >= v4)
  {
    v5 = *(a2 + 64);
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v6 >= 2 && v5 == 0)
  {
    if (v4 < 2)
    {
      sub_E64948(result, a2 + 104, 3, &v11);
    }

    else
    {
      sub_E646C8(result, a2 + 56, 3, &v11);
    }

    v9 = v11;
    *a3 = v11;
    v10 = v12;
    *(a3 + 1) = v12;
    *(v9 + 176) = 1;
    *(v10 - 264) = 2;
    result = sub_E88F24(a2);
    if (result)
    {
      *(v9 + 64) = 1;
    }
  }

  return result;
}

_BYTE *sub_E63C00@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = result;
  v5 = *(a2 + 56);
  v6 = *(a2 + 152);
  v7 = *(a2 + 104) + v5;
  if (v7 == 1 && v6 == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (v5 == 1)
    {
      sub_E64BC8(2, v27, result, *(*(a2 + 64) + 8));
    }

    else
    {
      sub_E64E10(result, *(*(a2 + 112) + 8), 2, v27);
    }

    v14 = a3[1];
    if (v14 >= a3[2])
    {
LABEL_22:
      v26 = sub_E66C88(a3, v27);
      goto LABEL_23;
    }

LABEL_21:
    *v14 = v27[0];
    v15 = v27[1];
    v16 = v27[2];
    v17 = *v28;
    *(v14 + 63) = *&v28[15];
    *(v14 + 32) = v16;
    *(v14 + 48) = v17;
    *(v14 + 16) = v15;
    *(v14 + 80) = 0;
    *(v14 + 88) = 0;
    *(v14 + 72) = 0;
    *(v14 + 72) = v29;
    *(v14 + 88) = v30;
    v29 = 0uLL;
    v18 = v31;
    *(v14 + 112) = v32;
    *(v14 + 96) = v18;
    v19 = v33;
    *(v14 + 136) = v34;
    *(v14 + 120) = v19;
    *(v14 + 152) = v35;
    *(v14 + 160) = v36;
    v30 = 0;
    v35 = 0;
    v36 = 0uLL;
    v20 = v37;
    *(v14 + 184) = v38;
    *(v14 + 176) = v20;
    v21 = v39;
    *(v14 + 208) = v40;
    *(v14 + 192) = v21;
    v39 = 0uLL;
    v22 = v41;
    *(v14 + 232) = v42;
    *(v14 + 216) = v22;
    v42 = 0;
    v40 = 0;
    v41 = 0uLL;
    v23 = v43;
    *(v14 + 256) = v44;
    *(v14 + 240) = v23;
    v43 = 0uLL;
    v24 = v45;
    *(v14 + 280) = v46;
    *(v14 + 264) = v24;
    v44 = 0;
    v45 = 0uLL;
    v46 = 0;
    v25 = v48;
    *(v14 + 288) = v47;
    *(v14 + 304) = v25;
    *(v14 + 312) = 0;
    *(v14 + 320) = 0;
    *(v14 + 328) = 0;
    *(v14 + 312) = v49;
    *(v14 + 320) = v50;
    v49 = 0;
    *&v50 = 0;
    *(v14 + 336) = 0;
    *(v14 + 344) = 0;
    *(v14 + 352) = 0;
    *(v14 + 360) = 0;
    *(v14 + 336) = v51;
    *(v14 + 352) = v52;
    *(&v50 + 1) = 0;
    v51 = 0uLL;
    v52 = 0;
    *(v14 + 368) = 0;
    *(v14 + 376) = 0;
    *(v14 + 360) = v53;
    *(v14 + 368) = v54;
    v53 = 0;
    *&v54 = 0;
    *(v14 + 384) = v55;
    *(v14 + 400) = 0;
    *(v14 + 408) = 0;
    *(v14 + 416) = 0;
    *(v14 + 400) = v56;
    *(v14 + 416) = v57;
    *(&v54 + 1) = 0;
    v56 = 0uLL;
    v57 = 0;
    *(v14 + 424) = v58;
    *(v14 + 432) = v59;
    v26 = v14 + 440;
LABEL_23:
    a3[1] = v26;
    return sub_44FDEC(v27);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 == 0;
  }

  if (!v9)
  {
    v10 = *(a2 + 160);
    if (v10)
    {
      v11 = (v10 + 8);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[v6 - 1];
    v60 = a3;
    if (v12 != v11)
    {
      do
      {
        sub_E64E10(v3, *v11, 3, v27);
        sub_E66F14(&v60, v27);
        sub_44FDEC(v27);
        ++v11;
      }

      while (v11 != v12);
      v6 = *(a2 + 152);
      v10 = *(a2 + 160);
    }

    sub_E64E10(v3, *(v10 + 8 * v6), 2, v27);
    v14 = a3[1];
    if (v14 >= a3[2])
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  return result;
}

void sub_E63F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_44FDEC(&a9);
  sub_44FD90(v9);
  _Unwind_Resume(a1);
}

void sub_E63F68(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v32 = 0uLL;
  v33 = 0;
  v6 = *(a2 + 40);
  if ((v6 & 0x100) != 0)
  {
    if ((v6 & 0x20) == 0)
    {
      if (*(a2 + 312))
      {
        v7 = *(a2 + 312);
      }

      else
      {
        v7 = &off_2776FB8;
      }

      sub_E64E10(a1, v7, 1, v31);
      goto LABEL_9;
    }

LABEL_12:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  if ((v6 & 0x20) == 0)
  {
    goto LABEL_12;
  }

  sub_E64BC8(1, v31, a1, *(a2 + 288));
LABEL_9:
  v8 = *(&v32 + 1);
  if (*(&v32 + 1) >= v33)
  {
    v9 = sub_E67100(&v32, v31);
    *(&v32 + 1) = v9;
    v10 = v32;
    if (v32 != v9)
    {
LABEL_14:
      while (sub_E67BDC(v10))
      {
        v10 += 440;
        if (v10 == v9)
        {
          v11 = *(a2 + 64);
          v12 = *(a2 + 88);
          v13 = v12 | v11;
          if (v12 >= v11)
          {
            v12 = *(a2 + 64);
          }

          if (v13)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 0;
          }

          if (v14)
          {
            sub_E64948(a1, a2 + 152, 3, &__p);
            v18 = __p;
            v19 = v30;
            v27 = &v32;
            if (__p != v30)
            {
              do
              {
                sub_E66F14(&v27, v18);
                v18 += 440;
              }

              while (v18 != v19);
            }

            if (v11)
            {
              sub_E646C8(a1, a2 + 56, 2, &v27);
            }

            else
            {
              sub_E64948(a1, a2 + 80, 2, &v27);
            }

            v20 = v27;
            v21 = v28;
            v34 = &v32;
            if (v27 != v28)
            {
              do
              {
                sub_E66F14(&v34, v20);
                v20 += 55;
              }

              while (v20 != v21);
              v20 = v27;
            }

            *a3 = v32;
            a3[2] = v33;
            v32 = 0uLL;
            v33 = 0;
            if (v20)
            {
              v22 = v28;
              v23 = v20;
              if (v28 != v20)
              {
                do
                {
                  v22 = sub_44FDEC(v22 - 440);
                }

                while (v22 != v20);
                v23 = v27;
              }

              v28 = v20;
              operator delete(v23);
            }

            v24 = __p;
            if (__p)
            {
              v25 = v30;
              v26 = __p;
              if (v30 != __p)
              {
                do
                {
                  v25 = sub_44FDEC(v25 - 440);
                }

                while (v25 != v24);
                v26 = __p;
              }

              v30 = v24;
              operator delete(v26);
            }

            goto LABEL_23;
          }

          break;
        }
      }
    }
  }

  else
  {
    sub_4E9DA4(*(&v32 + 1), v31);
    v9 = v8 + 440;
    *(&v32 + 1) = v9;
    v10 = v32;
    if (v32 != v9)
    {
      goto LABEL_14;
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
LABEL_23:
  sub_44FDEC(v31);
  v15 = v32;
  if (v32)
  {
    v16 = *(&v32 + 1);
    v17 = v32;
    if (*(&v32 + 1) != v32)
    {
      do
      {
        v16 = sub_44FDEC(v16 - 440);
      }

      while (v16 != v15);
      v17 = v32;
    }

    *(&v32 + 1) = v15;
    operator delete(v17);
  }
}

void sub_E64208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void *);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_44FD90(va);
  sub_44FDEC(va1);
  sub_44FD90((v9 - 96));
  _Unwind_Resume(a1);
}

void sub_E64298(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(a2 + 192);
  if (!v5)
  {
    v5 = &off_278AB30;
  }

  v6 = v5[55];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &off_278A980;
  }

  sub_E22244(a3, *(v7 + 8) + 1);
  v8 = *(v7 + 8);
  v9 = v7[5];
  if (v9)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  v59 = a3;
  if (v8)
  {
    v11 = 8 * v8;
    do
    {
      if (*(*v10 + 3))
      {
        v12 = *(*v10 + 3);
      }

      else
      {
        v12 = &off_2776FB8;
      }

      sub_E64E10(a1, v12, 1, v26);
      sub_E66F14(&v59, v26);
      sub_44FDEC(v26);
      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  if (v7[2])
  {
    sub_E64E10(a1, v7[6], 1, v26);
    v13 = a3[1];
    if (v13 >= a3[2])
    {
      v25 = sub_E66C88(a3, v26);
    }

    else
    {
      *v13 = v26[0];
      v14 = v26[1];
      v15 = v26[2];
      v16 = *v27;
      *(v13 + 63) = *&v27[15];
      *(v13 + 32) = v15;
      *(v13 + 48) = v16;
      *(v13 + 16) = v14;
      *(v13 + 80) = 0;
      *(v13 + 88) = 0;
      *(v13 + 72) = 0;
      *(v13 + 72) = v28;
      *(v13 + 88) = v29;
      v28 = 0uLL;
      v17 = v30;
      *(v13 + 112) = v31;
      *(v13 + 96) = v17;
      v18 = v32;
      *(v13 + 136) = v33;
      *(v13 + 120) = v18;
      *(v13 + 152) = v34;
      *(v13 + 160) = v35;
      v29 = 0;
      v34 = 0;
      v35 = 0uLL;
      v19 = v36;
      *(v13 + 184) = v37;
      *(v13 + 176) = v19;
      v20 = v38;
      *(v13 + 208) = v39;
      *(v13 + 192) = v20;
      v38 = 0uLL;
      v21 = v40;
      *(v13 + 232) = v41;
      *(v13 + 216) = v21;
      v41 = 0;
      v39 = 0;
      v40 = 0uLL;
      v22 = v42;
      *(v13 + 256) = v43;
      *(v13 + 240) = v22;
      v42 = 0uLL;
      v23 = v44;
      *(v13 + 280) = v45;
      *(v13 + 264) = v23;
      v43 = 0;
      v44 = 0uLL;
      v45 = 0;
      v24 = v47;
      *(v13 + 288) = v46;
      *(v13 + 304) = v24;
      *(v13 + 312) = 0;
      *(v13 + 320) = 0;
      *(v13 + 328) = 0;
      *(v13 + 312) = v48;
      *(v13 + 320) = v49;
      v48 = 0;
      *&v49 = 0;
      *(v13 + 336) = 0;
      *(v13 + 344) = 0;
      *(v13 + 352) = 0;
      *(v13 + 360) = 0;
      *(v13 + 336) = v50;
      *(v13 + 352) = v51;
      *(&v49 + 1) = 0;
      v50 = 0uLL;
      v51 = 0;
      *(v13 + 368) = 0;
      *(v13 + 376) = 0;
      *(v13 + 360) = v52;
      *(v13 + 368) = v53;
      v52 = 0;
      *&v53 = 0;
      *(v13 + 384) = v54;
      *(v13 + 400) = 0;
      *(v13 + 408) = 0;
      *(v13 + 416) = 0;
      *(v13 + 400) = v55;
      *(v13 + 416) = v56;
      *(&v53 + 1) = 0;
      v55 = 0uLL;
      v56 = 0;
      *(v13 + 424) = v57;
      *(v13 + 432) = v58;
      v25 = v13 + 440;
    }

    a3[1] = v25;
    sub_44FDEC(v26);
  }
}

void sub_E64558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_44FDEC(&a9);
  sub_44FD90(v9);
  _Unwind_Resume(a1);
}

void sub_E645B4(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = &off_278AB30;
  if (*(a2 + 192))
  {
    v5 = *(a2 + 192);
  }

  v6 = v5[62];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &off_278A9D8;
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_E22244(a3, *(v7 + 6));
  v8 = *(v7 + 6);
  v9 = v7[4];
  if (v9)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  v14 = a3;
  if (v8)
  {
    v11 = 8 * v8;
    do
    {
      if (*(*v10 + 3))
      {
        v12 = *(*v10 + 3);
      }

      else
      {
        v12 = &off_2776FB8;
      }

      sub_E64E10(a1, v12, 1, v13);
      sub_E66F14(&v14, v13);
      sub_44FDEC(v13);
      ++v10;
      v11 -= 8;
    }

    while (v11);
  }
}

void sub_E646AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_44FDEC(&a9);
  sub_44FD90(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_E646C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = a3;
    v9 = result;
    v10 = 8 * v7;
    do
    {
      sub_E64BC8(v8, v26, v9, *v6);
      v25 = a4[1];
      if (v25 < a4[2])
      {
        *v25 = v26[0];
        v11 = v26[1];
        v12 = v26[2];
        v13 = *v27;
        *(v25 + 63) = *&v27[15];
        *(v25 + 32) = v12;
        *(v25 + 48) = v13;
        *(v25 + 16) = v11;
        *(v25 + 80) = 0;
        *(v25 + 88) = 0;
        *(v25 + 72) = 0;
        *(v25 + 72) = v28;
        *(v25 + 88) = v29;
        v28 = 0uLL;
        v29 = 0;
        v14 = v30;
        *(v25 + 112) = v31;
        *(v25 + 96) = v14;
        v15 = v32;
        *(v25 + 136) = v33;
        *(v25 + 120) = v15;
        *(v25 + 152) = v34;
        *(v25 + 160) = v35;
        v34 = 0;
        v35 = 0uLL;
        v16 = v36;
        *(v25 + 184) = v37;
        *(v25 + 176) = v16;
        v17 = v38;
        *(v25 + 208) = v39;
        *(v25 + 192) = v17;
        v38 = 0uLL;
        v18 = v40;
        *(v25 + 232) = v41;
        *(v25 + 216) = v18;
        v41 = 0;
        v39 = 0;
        v40 = 0uLL;
        v19 = v42;
        *(v25 + 256) = v43;
        *(v25 + 240) = v19;
        v42 = 0uLL;
        v43 = 0;
        v20 = v44;
        *(v25 + 280) = v45;
        *(v25 + 264) = v20;
        v44 = 0uLL;
        v45 = 0;
        v21 = v47;
        *(v25 + 288) = v46;
        *(v25 + 304) = v21;
        *(v25 + 312) = 0;
        *(v25 + 320) = 0;
        *(v25 + 328) = 0;
        *(v25 + 312) = v48;
        *(v25 + 336) = 0;
        *(v25 + 344) = 0;
        *(v25 + 352) = 0;
        *(v25 + 360) = 0;
        v22 = v50;
        *(v25 + 320) = v49;
        *(v25 + 336) = v22;
        v48 = 0;
        *&v49 = 0;
        *(v25 + 368) = 0;
        *(v25 + 376) = 0;
        v23 = v52;
        *(v25 + 352) = v51;
        *(v25 + 360) = v23;
        *(&v49 + 1) = 0;
        v50 = 0uLL;
        v51 = 0;
        *(v25 + 368) = v53;
        v52 = 0;
        v53 = 0uLL;
        *(v25 + 384) = v54;
        *(v25 + 400) = 0;
        *(v25 + 408) = 0;
        *(v25 + 416) = 0;
        *(v25 + 400) = v55;
        *(v25 + 416) = v56;
        v55 = 0uLL;
        v56 = 0;
        *(v25 + 424) = v57;
        *(v25 + 432) = v58;
        v24 = v25 + 440;
      }

      else
      {
        v24 = sub_E66C88(a4, v26);
      }

      a4[1] = v24;
      result = sub_44FDEC(v26);
      ++v6;
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

void sub_E64918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_44FDEC(va);
  sub_44FD90(v3);
  _Unwind_Resume(a1);
}

_BYTE *sub_E64948@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = a3;
    v9 = result;
    v10 = 8 * v7;
    do
    {
      sub_E64E10(v9, *v6, v8, v26);
      v25 = a4[1];
      if (v25 < a4[2])
      {
        *v25 = v26[0];
        v11 = v26[1];
        v12 = v26[2];
        v13 = *v27;
        *(v25 + 63) = *&v27[15];
        *(v25 + 32) = v12;
        *(v25 + 48) = v13;
        *(v25 + 16) = v11;
        *(v25 + 80) = 0;
        *(v25 + 88) = 0;
        *(v25 + 72) = 0;
        *(v25 + 72) = v28;
        *(v25 + 88) = v29;
        v28 = 0uLL;
        v29 = 0;
        v14 = v30;
        *(v25 + 112) = v31;
        *(v25 + 96) = v14;
        v15 = v32;
        *(v25 + 136) = v33;
        *(v25 + 120) = v15;
        *(v25 + 152) = v34;
        *(v25 + 160) = v35;
        v34 = 0;
        v35 = 0uLL;
        v16 = v36;
        *(v25 + 184) = v37;
        *(v25 + 176) = v16;
        v17 = v38;
        *(v25 + 208) = v39;
        *(v25 + 192) = v17;
        v38 = 0uLL;
        v18 = v40;
        *(v25 + 232) = v41;
        *(v25 + 216) = v18;
        v41 = 0;
        v39 = 0;
        v40 = 0uLL;
        v19 = v42;
        *(v25 + 256) = v43;
        *(v25 + 240) = v19;
        v42 = 0uLL;
        v43 = 0;
        v20 = v44;
        *(v25 + 280) = v45;
        *(v25 + 264) = v20;
        v44 = 0uLL;
        v45 = 0;
        v21 = v47;
        *(v25 + 288) = v46;
        *(v25 + 304) = v21;
        *(v25 + 312) = 0;
        *(v25 + 320) = 0;
        *(v25 + 328) = 0;
        *(v25 + 312) = v48;
        *(v25 + 336) = 0;
        *(v25 + 344) = 0;
        *(v25 + 352) = 0;
        *(v25 + 360) = 0;
        v22 = v50;
        *(v25 + 320) = v49;
        *(v25 + 336) = v22;
        v48 = 0;
        *&v49 = 0;
        *(v25 + 368) = 0;
        *(v25 + 376) = 0;
        v23 = v52;
        *(v25 + 352) = v51;
        *(v25 + 360) = v23;
        *(&v49 + 1) = 0;
        v50 = 0uLL;
        v51 = 0;
        *(v25 + 368) = v53;
        v52 = 0;
        v53 = 0uLL;
        *(v25 + 384) = v54;
        *(v25 + 400) = 0;
        *(v25 + 408) = 0;
        *(v25 + 416) = 0;
        *(v25 + 400) = v55;
        *(v25 + 416) = v56;
        v55 = 0uLL;
        v56 = 0;
        *(v25 + 424) = v57;
        *(v25 + 432) = v58;
        v24 = v25 + 440;
      }

      else
      {
        v24 = sub_E66C88(a4, v26);
      }

      a4[1] = v24;
      result = sub_44FDEC(v26);
      ++v6;
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

void sub_E64B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_44FDEC(va);
  sub_44FD90(v3);
  _Unwind_Resume(a1);
}

void sub_E64BC8(int a1@<W2>, uint64_t a2@<X8>, uint64_t a3@<X0>, unint64_t a4@<X1>)
{
  sub_E65F04(a3, a4, a2);
  v7 = sub_E67BDC(a2);
  if (!v7)
  {
    v37 = sub_E65D70(v7, a4);
    v38 = v8;
    sub_E6793C(&v25, &v37);
    *a2 = v25;
    *(a2 + 8) = DWORD2(v25);
    v9 = v27;
    *(a2 + 16) = v26;
    *(a2 + 32) = v9;
    *(a2 + 48) = *v28;
    *(a2 + 63) = *&v28[15];
    v10 = *(a2 + 72);
    if (v10)
    {
      *(a2 + 80) = v10;
      operator delete(v10);
    }

    *(a2 + 72) = *__p;
    *(a2 + 88) = v30;
    __p[1] = 0;
    v30 = 0;
    __p[0] = 0;
    *(a2 + 96) = v31;
    *(a2 + 112) = v32;
    *(a2 + 120) = v33;
    *(a2 + 136) = v34;
    v11 = *(a2 + 152);
    if (v11)
    {
      operator delete(v11);
      v11 = __p[0];
    }

    *(a2 + 152) = v35;
    *(a2 + 160) = v36;
    v36 = 0uLL;
    v35 = 0;
    if (v11)
    {
      __p[1] = v11;
      operator delete(v11);
    }

    sub_E65594(a4, &v25);
    v12 = (a2 + 312);
    v13 = *(a2 + 312);
    if (v13)
    {
      v14 = *(a2 + 320);
      v15 = *(a2 + 312);
      if (v14 != v13)
      {
        do
        {
          v16 = *(v14 - 24);
          if (v16)
          {
            operator delete(v16);
          }

          v17 = *(v14 - 104);
          if (v17)
          {
            *(v14 - 96) = v17;
            operator delete(v17);
          }

          v14 -= 176;
        }

        while (v14 != v13);
        v15 = *v12;
      }

      *(a2 + 320) = v13;
      operator delete(v15);
    }

    *v12 = v25;
    *(a2 + 328) = v26;
    *(a2 + 384) = -1;
    *(a2 + 392) = -1;
    v18 = (a2 + 400);
    v19 = *(a2 + 400);
    if (v19)
    {
      v20 = *(a2 + 408);
      v21 = *(a2 + 400);
      if (v20 != v19)
      {
        v22 = *(a2 + 408);
        do
        {
          v24 = *(v22 - 24);
          v22 -= 24;
          v23 = v24;
          if (v24)
          {
            *(v20 - 16) = v23;
            operator delete(v23);
          }

          v20 = v22;
        }

        while (v22 != v19);
        v21 = *v18;
      }

      *(a2 + 408) = v19;
      operator delete(v21);
    }

    *v18 = 0;
    *(a2 + 408) = 0;
    *(a2 + 424) = 0;
    *(a2 + 416) = 0;
    *(a2 + 432) = 0;
  }

  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 16) = -1;
  *(a2 + 436) = 0;
  *(a2 + 180) = 0;
  *(a2 + 184) = 0;
  *(a2 + 176) = a1;
}

void sub_E64E10(_BYTE *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  sub_E665CC(a1, a2, a4);
  if (!sub_E67BDC(a4))
  {
    sub_E6581C(a2, v30, a1);
    *a4 = *v30;
    *(a4 + 8) = *&v30[8];
    v8 = v31;
    *(a4 + 16) = *&v30[16];
    *(a4 + 32) = v8;
    *(a4 + 48) = *v32;
    *(a4 + 63) = *&v32[15];
    v9 = *(a4 + 72);
    if (v9)
    {
      *(a4 + 80) = v9;
      operator delete(v9);
    }

    *(a4 + 72) = *__p;
    *(a4 + 88) = v34;
    __p[1] = 0;
    v34 = 0;
    __p[0] = 0;
    *(a4 + 96) = v35;
    *(a4 + 112) = v36;
    *(a4 + 120) = v37;
    *(a4 + 136) = v38;
    v10 = *(a4 + 152);
    if (v10)
    {
      operator delete(v10);
      v10 = __p[0];
    }

    *(a4 + 152) = v39;
    *(a4 + 160) = v40;
    v40 = 0uLL;
    v39 = 0;
    if (v10)
    {
      __p[1] = v10;
      operator delete(v10);
    }

    sub_E65380(a2, v30);
    v11 = *(a4 + 312);
    if (v11)
    {
      v12 = *(a4 + 320);
      v13 = *(a4 + 312);
      if (v12 != v11)
      {
        do
        {
          v14 = *(v12 - 24);
          if (v14)
          {
            operator delete(v14);
          }

          v15 = *(v12 - 104);
          if (v15)
          {
            *(v12 - 96) = v15;
            operator delete(v15);
          }

          v12 -= 176;
        }

        while (v12 != v11);
        v13 = *(a4 + 312);
      }

      *(a4 + 320) = v11;
      operator delete(v13);
    }

    *(a4 + 312) = *v30;
    *(a4 + 328) = *&v30[16];
    if (*(a2 + 80) != 3)
    {
      goto LABEL_22;
    }

    v16 = *(a2 + 32);
    if (!v16)
    {
      v16 = &off_2776ED0;
    }

    if ((v16[2] & 2) != 0)
    {
      sub_4B6854(v30, v16[7]);
    }

    else
    {
LABEL_22:
      *v30 = -1;
      *&v30[8] = -1;
      v31 = 0uLL;
      *&v30[16] = 0uLL;
    }

    *(a4 + 384) = *v30;
    v17 = *(a4 + 400);
    if (v17)
    {
      v18 = *(a4 + 408);
      v19 = *(a4 + 400);
      if (v18 != v17)
      {
        v20 = *(a4 + 408);
        do
        {
          v22 = *(v20 - 24);
          v20 -= 24;
          v21 = v22;
          if (v22)
          {
            *(v18 - 16) = v21;
            operator delete(v21);
          }

          v18 = v20;
        }

        while (v20 != v17);
        v19 = *(a4 + 400);
      }

      *(a4 + 408) = v17;
      operator delete(v19);
    }

    *(a4 + 400) = *&v30[16];
    *(a4 + 416) = v31;
    *(a4 + 424) = DWORD2(v31);
    *(a4 + 432) = *(a2 + 64);
  }

  sub_E88C3C(a2, v30);
  *(a4 + 288) = v30[0];
  *(a4 + 296) = *&v30[8];
  *(a4 + 176) = a3;
  v23 = *(a2 + 24);
  if (!v23)
  {
    v23 = &off_2776E58;
  }

  if ((v23[5] & 8) != 0)
  {
    nullsub_1();
  }

  else
  {
    v24 = -1;
  }

  *(a4 + 16) = v24;
  *(a4 + 436) = *(a2 + 72) == 1;
  v25 = *(a2 + 16);
  if ((v25 & 0x400) != 0)
  {
    v27 = *(a2 + 80);
    v28 = v27 - 2;
    v26 = v27 - 1;
    if (v28 >= 3)
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  if (((*(a2 + 76) < 5u) & (v25 >> 9)) != 0)
  {
    v29 = *(a2 + 76);
  }

  else
  {
    v29 = *(a2 + 64);
  }

  *(a4 + 180) = v26;
  *(a4 + 184) = v29;
  sub_E66AEC(a1, a2, a4);
}

BOOL sub_E65180(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  do
  {
    result = sub_E67BDC(v2);
    if (!result)
    {
      break;
    }

    v2 += 440;
  }

  while (v2 != v3);
  return result;
}

void sub_E651D8(void *a1, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x1745D1745D1745ELL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_E65380(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = &off_2776ED0;
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_E651D8(a2, *(v3 + 8));
  v4 = v3[5];
  if (v4)
  {
    v5 = (v4 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 8);
  if (v6)
  {
    v7 = 8 * v6;
    do
    {
      sub_EA40DC(*v5, v15);
      if (sub_E67BDC(v15))
      {
        v8 = a2[1];
        if (v8 >= a2[2])
        {
          v14 = sub_D4E5B4(a2, v15);
        }

        else
        {
          *v8 = v15[0];
          v9 = v15[1];
          v10 = v15[2];
          v11 = *v16;
          *(v8 + 63) = *&v16[15];
          *(v8 + 32) = v10;
          *(v8 + 48) = v11;
          *(v8 + 72) = 0;
          *(v8 + 16) = v9;
          *(v8 + 80) = 0;
          *(v8 + 88) = 0;
          if (v18 != v17)
          {
            if (((v18 - v17) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v12 = v19;
          *(v8 + 112) = v20;
          *(v8 + 96) = v12;
          v13 = v21;
          *(v8 + 136) = v22;
          *(v8 + 120) = v13;
          sub_81988((v8 + 152), &__p);
          v14 = v8 + 176;
        }

        a2[1] = v14;
      }

      if (__p)
      {
        operator delete(__p);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      ++v5;
      v7 -= 8;
    }

    while (v7);
  }
}

void sub_E65578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_44D36C(va);
  sub_48C9A4(v3);
  _Unwind_Resume(a1);
}

void sub_E65594(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_E651D8(a2, *(a1 + 56));
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = v4 + 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = 8 * v6;
    do
    {
      v8 = *(*v5 + 56);
      v9 = -1;
      if (v8 <= 180.0)
      {
        v10 = *(*v5 + 48);
        if (fabs(v10) <= 85.0511288 && v8 >= -180.0)
        {
          v11 = sin(fmin(fmax(v10, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
          LODWORD(v12) = ((log((v11 + 1.0) / (1.0 - v11)) / -12.5663706 + 0.5) * 4294967300.0);
          if (v12 >= 0xFFFFFFFE)
          {
            v12 = 4294967294;
          }

          else
          {
            v12 = v12;
          }

          v9 = ((v8 + 180.0) / 360.0 * 4294967300.0) | (v12 << 32);
        }
      }

      *&__src = v9;
      DWORD2(__src) = 0x7FFFFFFF;
      v13 = a2[1];
      if (v13 >= a2[2])
      {
        v14 = sub_E67264(a2, &__src);
      }

      else
      {
        sub_E6793C(a2[1], &__src);
        v14 = v13 + 176;
      }

      a2[1] = v14;
      __src = xmmword_22AC900;
      v16 = 0x800000007;
      sub_A74424((v14 - 104), &__src, &v17, 6uLL);
      v5 += 8;
      v7 -= 8;
    }

    while (v7);
  }
}

void sub_E657EC(_Unwind_Exception *a1)
{
  v3 = v2;
  *(v1 + 8) = v3;
  sub_48C9A4(v1);
  _Unwind_Resume(a1);
}

void sub_E6581C(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  *a2 = -1;
  *(a2 + 8) = 0x7FFFFFFF;
  *(a2 + 16) = -1;
  v6 = a2 + 16;
  *(a2 + 24) = -1;
  *(a2 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 40) = 0;
  *(a2 + 48) = -1935635296;
  *(a2 + 56) = 0;
  v7 = (a2 + 56);
  *(a2 + 72) = 0;
  v8 = (a2 + 72);
  *(a2 + 63) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 112) = 100;
  *(a2 + 120) = 0;
  *(a2 + 136) = vnegq_f64(v5);
  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v9 = sub_E65B6C(a3, a1);
  v44 = v9;
  v45 = v10;
  if (v9 == -1 && v9 > 0xFFFFFFFEFFFFFFFFLL)
  {
    v11 = *(a1 + 40);
    if (!v11)
    {
      v11 = &off_2776F10;
    }

    v12 = sub_194FEFC((v11 + 2), dword_278D158, qword_278D160);
    sub_E67B78(&v31, v12);
    v13 = *(a2 + 72);
    *a2 = v31;
    *(a2 + 8) = v32;
    v14 = v34;
    *v6 = v33;
    *(v6 + 16) = v14;
    *(v6 + 32) = *v35;
    *(v6 + 47) = *&v35[15];
    if (v13)
    {
      operator delete(v13);
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
    }
  }

  else
  {
    sub_E6793C(&v31, &v44);
    *a2 = v31;
    *(a2 + 8) = v32;
    v15 = v34;
    *v6 = v33;
    *(v6 + 16) = v15;
    *(v6 + 32) = *v35;
    *(v6 + 47) = *&v35[15];
  }

  *(a2 + 72) = __p;
  v16 = v37;
  v17 = v38;
  v37 = 0uLL;
  __p = 0;
  *(a2 + 80) = v16;
  *(a2 + 96) = v17;
  *(a2 + 112) = v39;
  *(a2 + 120) = v40;
  *(a2 + 136) = v41;
  v18 = *(a2 + 152);
  if (v18)
  {
    operator delete(v18);
    v18 = __p;
  }

  *(a2 + 152) = v42;
  *(a2 + 160) = v43;
  v43 = 0uLL;
  v42 = 0;
  if (v18)
  {
    *&v37 = v18;
    operator delete(v18);
  }

  if (*(a1 + 80) == 4)
  {
    v19 = *(a1 + 40);
    if (!v19)
    {
      v19 = &off_2776F10;
    }

    v20 = v19[6];
    v21 = &off_277E738;
    if (v20)
    {
      v21 = v20;
    }

    v22 = *(v21 + 10);
    if ((v22 & 0x20) != 0)
    {
      v23 = *(v21 + 11);
      if (v23 >= 0.0)
      {
        v24 = v23 * 3.6;
        v25 = 0x406F400000000000;
        if (v24 <= 250.0)
        {
          v25 = *&v24;
        }

        *v7 = v25;
      }
    }

    if ((v22 & 8) != 0)
    {
      v26 = *(v21 + 9);
      if (v26 >= 0.0)
      {
        *(a2 + 40) = v26;
      }
    }

    if ((v22 & 0x200) != 0)
    {
      v27 = *(v21 + 14);
      if (v27 >= 0.0)
      {
        v28 = llround(v27 * 100.0) % 36000;
        if (v28 > 0xFFFF735F)
        {
          LOWORD(v28) = v28 - 29536;
        }

        *(a2 + 50) = v28;
        if ((v22 & 0x400) != 0)
        {
          v29 = *(v21 + 15);
          if (v29 >= 0.0)
          {
            v30 = llround(v29 * 100.0) % 36000;
            if (v30 > 0xFFFF735F)
            {
              LOWORD(v30) = v30 - 29536;
            }

            *(a2 + 48) = v30;
          }
        }
      }
    }

    *(a2 + 66) = (v22 & 2) != 0;
  }
}

unint64_t sub_E65B6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  switch(v2)
  {
    case 2:
      v12 = *(a2 + 24);
      if (!v12)
      {
        v12 = &off_2776E58;
      }

      v4 = v12[10];
      if (!v4)
      {
        v4 = &off_277E5E8;
      }

      if ((~*(v4 + 10) & 3) != 0)
      {
        return -1;
      }

      break;
    case 4:
      v6 = *(a2 + 40);
      if (!v6)
      {
        v6 = &off_2776F10;
      }

      v7 = v6[6];
      if (!v7)
      {
        v7 = &off_277E738;
      }

      v4 = v7[6];
      if (!v4)
      {
        v4 = &off_277E5E8;
      }

      if ((~*(v4 + 10) & 3) != 0)
      {
        return -1;
      }

      break;
    case 3:
      v3 = *(a2 + 32);
      if (!v3)
      {
        v3 = &off_2776ED0;
      }

      v4 = v3[6];
      if (!v4)
      {
        v4 = &off_277E5E8;
      }

      if ((~*(v4 + 10) & 3) != 0)
      {
        return -1;
      }

      break;
    default:
      return -1;
  }

  v8 = *(v4 + 7);
  result = -1;
  if (v8 <= 180.0)
  {
    v9 = *(v4 + 6);
    if (fabs(v9) <= 85.0511288 && v8 >= -180.0)
    {
      v10 = sin(fmin(fmax(v9, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v11) = ((log((v10 + 1.0) / (1.0 - v10)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v11 >= 0xFFFFFFFE)
      {
        v11 = 4294967294;
      }

      else
      {
        v11 = v11;
      }

      return ((v8 + 180.0) / 360.0 * 4294967300.0) | (v11 << 32);
    }
  }

  return result;
}

unint64_t sub_E65D70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 80);
  }

  else
  {
    if ((v2 & 1) == 0 || (v3 = *(a2 + 72), (*(v3 + 17) & 8) == 0))
    {
      if (*(a2 + 56))
      {
        v4 = *(*(a2 + 64) + 8);
        if ((~*(v4 + 10) & 3) != 0)
        {
          return -1;
        }

        goto LABEL_11;
      }

      return -1;
    }

    v6 = *(v3 + 304);
  }

  v4 = *(v6 + 48);
  if (!v4)
  {
    v4 = &off_277E5E8;
  }

  if ((~*(v4 + 10) & 3) != 0)
  {
    return -1;
  }

LABEL_11:
  v7 = *(v4 + 7);
  result = -1;
  if (v7 <= 180.0)
  {
    v8 = *(v4 + 6);
    if (fabs(v8) <= 85.0511288 && v7 >= -180.0)
    {
      v9 = sin(fmin(fmax(v8, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v10) = ((log((v9 + 1.0) / (1.0 - v9)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v10 >= 0xFFFFFFFE)
      {
        v10 = 4294967294;
      }

      else
      {
        v10 = v10;
      }

      return ((v7 + 180.0) / 360.0 * 4294967300.0) | (v10 << 32);
    }
  }

  return result;
}

double sub_E65F04@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!sub_7E7E4(2u))
  {
    goto LABEL_22;
  }

  sub_19594F8(&v25);
  v6 = sub_4A5C(&v25, "get_place_details Waypoint=", 27);
  p_p = &__p;
  sub_1957658(a2, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v8 = strlen(p_p);
  sub_4A5C(v6, p_p, v8);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v9 = v35;
    if ((v35 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v11 = v34;
    if (v34 < v31)
    {
      v34 = v31;
      v11 = v31;
    }

    v12 = v30;
    v10 = v11 - v30;
    if (v11 - v30 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_33:
      sub_3244();
    }

LABEL_12:
    if (v10 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v10;
    if (v10)
    {
      memmove(&__p, v12, v10);
    }

    goto LABEL_17;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v9 = v35;
  if ((v35 & 0x10) != 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if ((v9 & 8) != 0)
  {
    v12 = v28;
    v10 = v29 - v28;
    if ((v29 - v28) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  v10 = 0;
  *(&__p.__r_.__value_.__s + 23) = 0;
LABEL_17:
  __p.__r_.__value_.__s.__data_[v10] = 0;
  sub_7E854(&__p, 2u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  std::locale::~locale(&v27);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_22:
  if (sub_194F918(a2 + 16, dword_278D148))
  {
    v13 = sub_1950CD0(a2 + 16, dword_278D148, qword_278D150);
    sub_E6D080(v13, a3);
    return result;
  }

  *(a1 + 7) = 1;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v25);
    v15 = sub_4A5C(&v25, "ERROR: Received a Waypoint without a corresponding PlaceSearchResponse extension. ", 82);
    v16 = sub_4A5C(v15, "Waypoint=", 9);
    sub_1957658(a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p.__r_.__value_.__r.__words[0];
    }

    v18 = strlen(v17);
    sub_4A5C(v16, v17, v18);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v19 = v35;
      if ((v35 & 0x10) == 0)
      {
LABEL_30:
        if ((v19 & 8) == 0)
        {
          v20 = 0;
          *(&__p.__r_.__value_.__s + 23) = 0;
LABEL_43:
          __p.__r_.__value_.__s.__data_[v20] = 0;
          sub_7E854(&__p, 2u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v33 < 0)
          {
            operator delete(v32);
          }

          std::locale::~locale(&v27);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_48;
        }

        v22 = v28;
        v20 = v29 - v28;
        if ((v29 - v28) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_50:
          sub_3244();
        }

LABEL_38:
        if (v20 >= 0x17)
        {
          operator new();
        }

        *(&__p.__r_.__value_.__s + 23) = v20;
        if (v20)
        {
          memmove(&__p, v22, v20);
        }

        goto LABEL_43;
      }
    }

    else
    {
      v19 = v35;
      if ((v35 & 0x10) == 0)
      {
        goto LABEL_30;
      }
    }

    v21 = v34;
    if (v34 < v31)
    {
      v34 = v31;
      v21 = v31;
    }

    v22 = v30;
    v20 = v21 - v30;
    if (v21 - v30 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_50;
    }

    goto LABEL_38;
  }

LABEL_48:
  v23.f64[0] = NAN;
  v23.f64[1] = NAN;
  *a3 = -1;
  *(a3 + 8) = 0x7FFFFFFF;
  *(a3 + 16) = -1;
  *(a3 + 24) = -1;
  *(a3 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 40) = 0;
  *(a3 + 48) = -1935635296;
  *(a3 + 56) = 0;
  *(a3 + 63) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 72) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 112) = 100;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = vnegq_f64(v23);
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  *(a3 + 176) = 1;
  *(a3 + 184) = 0;
  result = 0.0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0;
  *(a3 + 296) = 0u;
  *(a3 + 312) = 0u;
  *(a3 + 328) = 0u;
  *(a3 + 344) = 0u;
  *(a3 + 360) = 0u;
  *(a3 + 376) = 0;
  *(a3 + 384) = -1;
  *(a3 + 392) = -1;
  *(a3 + 400) = 0;
  *(a3 + 424) = 0;
  *(a3 + 408) = 0;
  *(a3 + 416) = 0;
  *(a3 + 432) = 0;
  *(a3 + 436) = 0;
  return result;
}

void sub_E66524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

double sub_E665CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 80) != 2)
  {
    goto LABEL_45;
  }

  if (*(a2 + 24))
  {
    v4 = *(a2 + 24);
  }

  else
  {
    v4 = &off_2776E58;
  }

  if ((v4[5] & 8) == 0)
  {
    if (sub_7E7E4(1u))
    {
      sub_19594F8(&v19);
      sub_4A5C(&v19, "Received a WaypointID without muid", 34);
      if ((v29 & 0x10) != 0)
      {
        v11 = v28;
        if (v28 < v25)
        {
          v28 = v25;
          v11 = v25;
        }

        v12 = v24;
        v5 = v11 - v24;
        if (v11 - v24 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if ((v29 & 8) == 0)
        {
          v5 = 0;
          v18 = 0;
LABEL_26:
          *(&__p + v5) = 0;
          sub_7E854(&__p, 1u);
LABEL_40:
          if (v18 < 0)
          {
            operator delete(__p);
          }

          if (v27 < 0)
          {
            operator delete(v26);
          }

          std::locale::~locale(&v21);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_45;
        }

        v12 = v22;
        v5 = v23 - v22;
        if (v23 - v22 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_28:
          sub_3244();
        }
      }

      if (v5 >= 0x17)
      {
        operator new();
      }

      v18 = v5;
      if (v5)
      {
        memmove(&__p, v12, v5);
      }

      goto LABEL_26;
    }

LABEL_45:
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    *a3 = -1;
    *(a3 + 8) = 0x7FFFFFFF;
    *(a3 + 16) = -1;
    *(a3 + 24) = -1;
    *(a3 + 32) = 0x7FFFFFFFFFFFFFFFLL;
    *(a3 + 40) = 0;
    *(a3 + 48) = -1935635296;
    *(a3 + 56) = 0;
    *(a3 + 63) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 72) = 0;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0x7FFFFFFFFFFFFFFFLL;
    *(a3 + 112) = 100;
    *(a3 + 120) = 0;
    *(a3 + 128) = 0;
    *(a3 + 136) = vnegq_f64(v16);
    *(a3 + 152) = 0;
    *(a3 + 160) = 0;
    *(a3 + 168) = 0;
    *(a3 + 176) = 1;
    *(a3 + 184) = 0;
    result = 0.0;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0;
    *(a3 + 296) = 0u;
    *(a3 + 312) = 0u;
    *(a3 + 328) = 0u;
    *(a3 + 344) = 0u;
    *(a3 + 360) = 0u;
    *(a3 + 376) = 0;
    *(a3 + 384) = -1;
    *(a3 + 392) = -1;
    *(a3 + 400) = 0;
    *(a3 + 424) = 0;
    *(a3 + 408) = 0;
    *(a3 + 416) = 0;
    *(a3 + 432) = 0;
    *(a3 + 436) = 0;
    return result;
  }

  if ((sub_194F918((v4 + 2), dword_278D138) & 1) == 0)
  {
    *(a1 + 6) = 1;
    if (!sub_7E7E4(3u))
    {
      goto LABEL_45;
    }

    sub_19594F8(&v19);
    sub_4A5C(&v19, "Received a WaypointID: ", 23);
    v9 = std::ostream::operator<<();
    sub_4A5C(v9, " without a corresponding PlaceResponse extension. Falling back to location hint", 79);
    if ((v29 & 0x10) != 0)
    {
      v13 = v28;
      if (v28 < v25)
      {
        v28 = v25;
        v13 = v25;
      }

      v14 = &v24;
    }

    else
    {
      if ((v29 & 8) == 0)
      {
        v10 = 0;
        v18 = 0;
LABEL_39:
        *(&__p + v10) = 0;
        sub_7E854(&__p, 3u);
        goto LABEL_40;
      }

      v14 = &v22;
      v13 = v23;
    }

    v15 = *v14;
    v10 = v13 - *v14;
    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v18 = v13 - *v14;
    if (v10)
    {
      memmove(&__p, v15, v10);
    }

    goto LABEL_39;
  }

  v7 = sub_1950CD0((v4 + 2), dword_278D138, qword_278D140);

  sub_E6D904(v7, a3);
  return result;
}

void sub_E66A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_E66AEC(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 184);
  v6 = a1 + 2;
  if (v5 != 3)
  {
    v6 = a1;
  }

  if (v5 == 4)
  {
    v7 = a1 + 4;
  }

  else
  {
    v7 = v6;
  }

  if ((v7[1] & 1) == 0)
  {
    sub_E675FC((a3 + 312), 0, 0, 0);
  }

  if (*v7 == 1)
  {
    v8 = *(a2 + 24);
    if (!v8)
    {
      v8 = &off_2776E58;
    }

    v9 = &off_277E5E8;
    v10 = v8[10];
    if (v10)
    {
      v9 = v10;
    }

    if ((~*(v9 + 10) & 3) == 0)
    {
      v11 = *(v9 + 7);
      v12 = -1;
      if (v11 <= 180.0)
      {
        v13 = *(v9 + 6);
        if (fabs(v13) <= 85.0511288 && v11 >= -180.0)
        {
          v14 = sin(fmin(fmax(v13, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
          LODWORD(v15) = ((log((v14 + 1.0) / (1.0 - v14)) / -12.5663706 + 0.5) * 4294967300.0);
          if (v15 >= 0xFFFFFFFE)
          {
            v15 = 4294967294;
          }

          else
          {
            v15 = v15;
          }

          v12 = ((v11 + 180.0) / 360.0 * 4294967300.0) | (v15 << 32);
        }
      }

      *a3 = v12;
      *(a3 + 8) = 0x7FFFFFFF;
    }
  }
}

uint64_t sub_E66C88(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6FB586FB586FB587 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x94F2094F2094F2)
  {
    sub_1794();
  }

  if (0xDF6B0DF6B0DF6B0ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDF6B0DF6B0DF6B0ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6FB586FB586FB587 * ((a1[2] - *a1) >> 3)) >= 0x4A7904A7904A79)
  {
    v5 = 0x94F2094F2094F2;
  }

  else
  {
    v5 = v3;
  }

  v28 = a1;
  if (v5)
  {
    if (v5 <= 0x94F2094F2094F2)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 440 * v2;
  __p = 0;
  v25 = v6;
  v7 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v7;
  *(v6 + 63) = *(a2 + 63);
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v8;
  *(v6 + 72) = *(a2 + 72);
  *(v6 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v6 + 112) = *(a2 + 112);
  *(v6 + 96) = *(a2 + 96);
  *(v6 + 136) = *(a2 + 136);
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 152) = *(a2 + 152);
  *(v6 + 160) = *(a2 + 160);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(v6 + 176) = *(a2 + 176);
  *(v6 + 184) = *(a2 + 184);
  v9 = *(a2 + 192);
  *(v6 + 208) = *(a2 + 208);
  *(v6 + 192) = v9;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  v10 = *(a2 + 216);
  *(v6 + 232) = *(a2 + 232);
  *(v6 + 216) = v10;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  v11 = *(a2 + 240);
  *(v6 + 256) = *(a2 + 256);
  *(v6 + 240) = v11;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  v12 = *(a2 + 264);
  *(v6 + 280) = *(a2 + 280);
  *(v6 + 264) = v12;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(v6 + 288) = *(a2 + 288);
  v13 = *(a2 + 312);
  *(v6 + 304) = *(a2 + 304);
  *(v6 + 312) = v13;
  v14 = *(a2 + 320);
  v15 = *(a2 + 336);
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  *(v6 + 320) = v14;
  *(v6 + 336) = v15;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  v16 = *(a2 + 352);
  v17 = *(a2 + 360);
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  *(v6 + 352) = v16;
  *(v6 + 360) = v17;
  v18 = *(a2 + 368);
  v19 = *(a2 + 384);
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 360) = 0;
  *(v6 + 368) = v18;
  *(v6 + 384) = v19;
  *(v6 + 400) = *(a2 + 400);
  *(v6 + 416) = *(a2 + 416);
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  *(v6 + 424) = *(a2 + 424);
  *(v6 + 432) = *(a2 + 432);
  v26 = 440 * v2 + 440;
  v27 = 0;
  sub_E22348(a1, &__p);
  v20 = a1[1];
  v22 = v25;
  for (i = v26; v26 != v22; i = v26)
  {
    v26 = i - 440;
    sub_44FDEC(i - 440);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v20;
}

void sub_E66F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4EA748(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_E66F14(uint64_t **result, uint64_t a2)
{
  v2 = *result;
  v3 = (*result)[1];
  if (v3 >= (*result)[2])
  {
    v15 = result;
    v16 = sub_E66C88(*result, a2);
    result = v15;
    v2[1] = v16;
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    v5 = *(a2 + 32);
    v6 = *(a2 + 48);
    *(v3 + 63) = *(a2 + 63);
    *(v3 + 32) = v5;
    *(v3 + 48) = v6;
    *(v3 + 16) = v4;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    *(v3 + 72) = 0;
    *(v3 + 72) = *(a2 + 72);
    *(v3 + 88) = *(a2 + 88);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    v7 = *(a2 + 96);
    *(v3 + 112) = *(a2 + 112);
    *(v3 + 96) = v7;
    v8 = *(a2 + 120);
    *(v3 + 136) = *(a2 + 136);
    *(v3 + 120) = v8;
    *(v3 + 152) = *(a2 + 152);
    *(v3 + 160) = *(a2 + 160);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    v9 = *(a2 + 176);
    *(v3 + 184) = *(a2 + 184);
    *(v3 + 176) = v9;
    v10 = *(a2 + 192);
    *(v3 + 208) = *(a2 + 208);
    *(v3 + 192) = v10;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 192) = 0;
    v11 = *(a2 + 216);
    *(v3 + 232) = *(a2 + 232);
    *(v3 + 216) = v11;
    *(a2 + 224) = 0;
    *(a2 + 232) = 0;
    *(a2 + 216) = 0;
    v12 = *(a2 + 240);
    *(v3 + 256) = *(a2 + 256);
    *(v3 + 240) = v12;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    v13 = *(a2 + 264);
    *(v3 + 280) = *(a2 + 280);
    *(v3 + 264) = v13;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 280) = 0;
    v14 = *(a2 + 304);
    *(v3 + 288) = *(a2 + 288);
    *(v3 + 304) = v14;
    *(v3 + 312) = 0;
    *(v3 + 320) = 0;
    *(v3 + 328) = 0;
    *(v3 + 312) = *(a2 + 312);
    *(v3 + 320) = *(a2 + 320);
    *(a2 + 312) = 0;
    *(a2 + 320) = 0;
    *(a2 + 328) = 0;
    *(v3 + 336) = 0;
    *(v3 + 344) = 0;
    *(v3 + 352) = 0;
    *(v3 + 336) = *(a2 + 336);
    *(v3 + 352) = *(a2 + 352);
    *(a2 + 336) = 0;
    *(a2 + 344) = 0;
    *(a2 + 352) = 0;
    *(v3 + 360) = 0;
    *(v3 + 368) = 0;
    *(v3 + 376) = 0;
    *(v3 + 360) = *(a2 + 360);
    *(v3 + 368) = *(a2 + 368);
    *(a2 + 368) = 0;
    *(a2 + 376) = 0;
    *(a2 + 360) = 0;
    *(v3 + 384) = *(a2 + 384);
    *(v3 + 408) = 0;
    *(v3 + 416) = 0;
    *(v3 + 400) = 0;
    *(v3 + 400) = *(a2 + 400);
    *(v3 + 416) = *(a2 + 416);
    *(a2 + 400) = 0;
    *(a2 + 408) = 0;
    *(a2 + 416) = 0;
    *(v3 + 424) = *(a2 + 424);
    *(v3 + 432) = *(a2 + 432);
    v2[1] = v3 + 440;
  }

  return result;
}

uint64_t sub_E67100(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6FB586FB586FB587 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x94F2094F2094F2)
  {
    sub_1794();
  }

  if (0xDF6B0DF6B0DF6B0ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDF6B0DF6B0DF6B0ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6FB586FB586FB587 * ((a1[2] - *a1) >> 3)) >= 0x4A7904A7904A79)
  {
    v5 = 0x94F2094F2094F2;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x94F2094F2094F2)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 440 * v2;
  v13 = 0;
  sub_4E9DA4(440 * v2, a2);
  v12 = 440 * v2 + 440;
  sub_E22348(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 440;
    sub_44FDEC(i - 440);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_E67250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4EA748(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E67264(uint64_t *a1, uint64_t *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v5 = 0x1745D1745D1745DLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v20 = 16 * ((a1[1] - *a1) >> 4);
  sub_E6793C(v20, a2);
  v6 = 176 * v2 + 176;
  v7 = *a1;
  v8 = a1[1];
  v9 = v20 + *a1 - v8;
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = v20 + *a1 - v8;
    do
    {
      *v11 = *v10;
      v12 = *(v10 + 1);
      v13 = *(v10 + 2);
      v14 = *(v10 + 3);
      *(v11 + 63) = *(v10 + 63);
      *(v11 + 32) = v13;
      *(v11 + 48) = v14;
      *(v11 + 16) = v12;
      *(v11 + 80) = 0;
      *(v11 + 88) = 0;
      *(v11 + 72) = 0;
      *(v11 + 72) = *(v10 + 9);
      *(v11 + 88) = v10[11];
      v10[9] = 0;
      v10[10] = 0;
      v10[11] = 0;
      v15 = *(v10 + 6);
      *(v11 + 112) = *(v10 + 112);
      *(v11 + 96) = v15;
      v16 = *(v10 + 15);
      *(v11 + 136) = *(v10 + 17);
      *(v11 + 120) = v16;
      *(v11 + 152) = v10[19];
      *(v11 + 160) = *(v10 + 10);
      v10[19] = 0;
      v10[20] = 0;
      v10[21] = 0;
      v10 += 22;
      v11 += 176;
    }

    while (v10 != v8);
    do
    {
      v17 = v7[19];
      if (v17)
      {
        operator delete(v17);
      }

      v18 = v7[9];
      if (v18)
      {
        v7[10] = v18;
        operator delete(v18);
      }

      v7 += 22;
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

void sub_E67468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_789B8C(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_E6747C(uint64_t **result, uint64_t a2, uint64_t a3)
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

void sub_E675CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void sub_E675FC(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4)
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

    sub_E6747C(a1, v14, a3);
  }
}

float64x2_t sub_E6793C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v2;
  *(a1 + 16) = -1;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1935635296;
  *(a1 + 56) = 0;
  *(a1 + 63) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 112) = 100;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  result = vnegq_f64(v3);
  *(a1 + 136) = result;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  return result;
}

uint64_t sub_E679A4(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 16) = -1;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1935635296;
  *(a1 + 72) = 0;
  v5 = a1 + 72;
  *(a1 + 56) = 0;
  *(a1 + 63) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 112) = 100;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  *(a1 + 152) = 0;
  *(a1 + 136) = vnegq_f64(v6);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v10 = 0uLL;
  v11 = 0;
  v7 = a3[1];
  if (v7 != *a3)
  {
    if (!((v7 - *a3) >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  v12 = &v10;
  v8 = *v5;
  if (*v5)
  {
    *(a1 + 80) = v8;
    operator delete(v8);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
  }

  *(a1 + 72) = v10;
  *(a1 + 88) = v11;
  return a1;
}

void sub_E67B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (*v12)
  {
    operator delete(*v12);
    v14 = *v11;
    if (!*v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = *v11;
    if (!*v11)
    {
      goto LABEL_3;
    }
  }

  *(v10 + 80) = v14;
  operator delete(v14);
  _Unwind_Resume(exception_object);
}

float64x2_t sub_E67B78(uint64_t a1, uint64_t a2)
{
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  *a1 = -1;
  *(a1 + 8) = 0x7FFFFFFF;
  *(a1 + 16) = -1;
  *(a1 + 24) = -1;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = -1935635296;
  *(a1 + 56) = 0;
  *(a1 + 63) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 112) = 100;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  result = vnegq_f64(v2);
  *(a1 + 136) = result;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return result;
}

BOOL sub_E67BDC(uint64_t a1)
{
  if (*a1 != -1)
  {
    return 1;
  }

  if (*(a1 + 4) != -1)
  {
    return 1;
  }

  v2 = *(a1 + 32);
  return v2 != 0x7FFFFFFFFFFFFFFFLL && v2 != 0;
}

uint64_t sub_E67C1C(uint64_t result)
{
  *result = -1;
  *(result + 8) = 0x7FFFFFFF;
  *(result + 32) = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

uint64_t sub_E67C38(uint64_t a1)
{
  v1 = 24;
  if (*(a1 + 24) == -1)
  {
    v1 = 16;
  }

  return *(a1 + v1);
}

BOOL sub_E67C54(double *a1, double *a2)
{
  v2 = a1[7];
  v4 = *(a1 + 9);
  v3 = *(a1 + 10);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = a2[7];
  v7 = *(a2 + 9);
  v6 = *(a2 + 10);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2) && *(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3) && a1[5] == a2[5] && *(a1 + 25) == *(a2 + 25))
  {
    if (v2 == v5)
    {
      return *(a1 + 112) == *(a2 + 112) && *(a1 + 13) == *(a2 + 13) && *(a1 + 64) == *(a2 + 64);
    }

    v9 = v2 - v5;
    if (v2 - v5 <= 0.0)
    {
      v9 = -(v2 - v5);
    }

    return v9 < 2.22044605e-16 && *(a1 + 112) == *(a2 + 112) && *(a1 + 13) == *(a2 + 13) && *(a1 + 64) == *(a2 + 64);
  }

  return v8;
}

void sub_E67EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_E67EF8(void *a1, uint64_t a2)
{
  v4 = sub_4A5C(a1, "(coordinate: ", 13);
  sub_35820(v4, a2, v5);
  sub_4A5C(a1, ", place_muid: ", 14);
  v6 = *(a2 + 16);
  if (v6 == -1)
  {
    sub_4A5C(a1, "n/a", 3);
  }

  else
  {
    std::ostream::operator<<(a1, v6);
  }

  sub_4A5C(a1, ", alewife_muid: ", 16);
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    sub_4A5C(a1, "n/a", 3);
    if (*(a2 + 72) == *(a2 + 80))
    {
      goto LABEL_15;
    }
  }

  else
  {
    std::ostream::operator<<(a1, v7);
    if (*(a2 + 72) == *(a2 + 80))
    {
      goto LABEL_15;
    }
  }

  v8 = sub_4A5C(a1, ", access_types_and_directions: [", 32);
  sub_E681E0(*(a2 + 72), *(a2 + 80), ",", __p);
  if ((v15 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v10 = v15;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = sub_4A5C(v8, v9, v10);
  sub_4A5C(v11, "]", 1);
  if (v15 < 0)
  {
    operator delete(__p[0]);
    if (*(a2 + 104) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (*(a2 + 104) != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_16:
    v12 = sub_4A5C(a1, ", access_point_distance: ", 25);
    sub_70FBC(v12, *(a2 + 104));
  }

LABEL_17:
  sub_4A5C(a1, ")", 1);
  return a1;
}

void sub_E680A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_E680C0(void *result, int a2)
{
  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v2 = "WALKING_EXIT";
        v3 = 12;
      }

      else if (a2 == 3)
      {
        v2 = "DRIVING_DESTINATION";
        v3 = 19;
      }

      else
      {
        v2 = "DRIVING_ENTRY";
        v3 = 13;
      }

      return sub_4A5C(result, v2, v3);
    }

    if (!a2)
    {
      v2 = "WALKING_DESTINATION";
      v3 = 19;
      return sub_4A5C(result, v2, v3);
    }

    if (a2 == 1)
    {
      v2 = "WALKING_ENTRY";
      v3 = 13;
      return sub_4A5C(result, v2, v3);
    }
  }

  else
  {
    if (a2 <= 7)
    {
      if (a2 == 5)
      {
        v2 = "DRIVING_EXIT";
        v3 = 12;
      }

      else if (a2 == 6)
      {
        v2 = "CYCLING_DESTINATION";
        v3 = 19;
      }

      else
      {
        v2 = "CYCLING_ENTRY";
        v3 = 13;
      }

      return sub_4A5C(result, v2, v3);
    }

    switch(a2)
    {
      case 8:
        v2 = "CYCLING_EXIT";
        v3 = 12;
        return sub_4A5C(result, v2, v3);
      case 9:
        v2 = "PARKING_ENTRY";
        v3 = 13;
        return sub_4A5C(result, v2, v3);
      case 10:
        v2 = "PARKING_EXIT";
        v3 = 12;
        return sub_4A5C(result, v2, v3);
    }
  }

  return result;
}

uint64_t sub_E681E0@<X0>(int *a1@<X0>, int *a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_19594F8(&v13);
  if (a1 != a2)
  {
    sub_E680C0(&v13, *a1);
    while (++a1 != a2)
    {
      v9 = strlen(a3);
      sub_4A5C(&v13, a3, v9);
      sub_E680C0(&v13, *a1);
    }
  }

  if ((v23 & 0x10) != 0)
  {
    v10 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v10 = v19;
    }

    v11 = v18;
    v8 = v10 - v18;
    if (v10 - v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((v23 & 8) == 0)
    {
      v8 = 0;
      a4[23] = 0;
      goto LABEL_16;
    }

    v11 = v16;
    v8 = v17 - v16;
    if ((v17 - v16) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_20:
      sub_3244();
    }
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a4[23] = v8;
  if (v8)
  {
    memmove(a4, v11, v8);
  }

LABEL_16:
  a4[v8] = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v15);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_E6843C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

_BYTE *sub_E6846C(_BYTE *a1, void *a2)
{
  v12 = 11;
  strcpy(__p, "consistency");
  v4 = sub_5F8FC(a2, __p);
  v5 = sub_E9A5F0(v4);
  if (v12 < 0)
  {
    v6 = v5;
    operator delete(__p[0]);
    v5 = v6;
  }

  *a1 = v5;
  v12 = 6;
  strcpy(__p, "limits");
  v7 = sub_5F8FC(a2, __p);
  v8 = sub_E9A5F0(v7);
  if (v12 < 0)
  {
    v9 = v8;
    operator delete(__p[0]);
    v8 = v9;
  }

  a1[1] = v8;
  return a1;
}

void sub_E6854C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E6856C(_DWORD *a1, void *a2)
{
  strcpy(__p, "max_num_user_waypoints");
  v6 = 22;
  v3 = sub_353010(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_E6866C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E686C4(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, __n128 *a3@<X8>)
{
  v28[0] = 0;
  v28[1] = &off_2669FE0;
  v6 = sub_434934(a3, v28);
  sub_E9B4D4(v34, a1, *a2, a3, v6);
  sub_E9B4D4(v31, a1, a2[1], a3, v7);
  v8 = sub_E7A5E0(a1);
  v9 = *(a1 + 40);
  v10 = sub_585D8(v34);
  if ((v9 & 0x10000) != 0 && ((v10 ^ 1) & 1) == 0 && v8 != 11 && *(a1 + 112))
  {
    v11 = *(a1 + 424);
    if (!v11)
    {
      v11 = &off_27721B8;
    }

    sub_E68B2C(v28, *(v11 + 8), v11[5]);
    sub_E9BBFC(v34, v28);
    v12 = __p_8;
    if (__p_8)
    {
      v13 = v30;
      v14 = __p_8;
      if (v30 != __p_8)
      {
        do
        {
          if (*(v13 - 1) < 0)
          {
            operator delete(*(v13 - 3));
          }

          v13 -= 4;
        }

        while (v13 != v12);
        v14 = __p_8;
      }

      v30 = v12;
      operator delete(v14);
    }

    v15 = *(a1 + 424);
    if (!v15)
    {
      v15 = &off_27721B8;
    }

    sub_E68DFC(v28, *(a1 + 112), *(v15 + 8), v15[5], 1, v8);
    sub_E9BBFC(v34, v28);
    v16 = __p_8;
    if (__p_8)
    {
      v17 = v30;
      v18 = __p_8;
      if (v30 != __p_8)
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
        v18 = __p_8;
      }

      v30 = v16;
      operator delete(v18);
    }
  }

  if (sub_E7A428(a1))
  {
    if (sub_585D8(v31))
    {
      sub_E68FFC(v28, 0, a1 + 104, 0, *(a2 + 2), *(a2 + 2));
      sub_E9BBFC(v31, v28);
      v19 = __p_8;
      if (__p_8)
      {
        v20 = v30;
        v21 = __p_8;
        if (v30 != __p_8)
        {
          do
          {
            if (*(v20 - 1) < 0)
            {
              operator delete(*(v20 - 3));
            }

            v20 -= 4;
          }

          while (v20 != v19);
          v21 = __p_8;
        }

        v30 = v19;
        operator delete(v21);
      }
    }

    if (sub_585D8(v34))
    {
      v24 = *(a1 + 424);
      if (!v24)
      {
        v24 = &off_27721B8;
      }

      sub_E690F4(v28, *(v24 + 8), v24[5]);
      sub_E9BBFC(v34, v28);
      v25 = __p_8;
      if (__p_8)
      {
        v26 = v30;
        v27 = __p_8;
        if (v30 != __p_8)
        {
          do
          {
            if (*(v26 - 1) < 0)
            {
              operator delete(*(v26 - 3));
            }

            v26 -= 4;
          }

          while (v26 != v25);
          v27 = __p_8;
        }

        v30 = v25;
        operator delete(v27);
      }
    }
  }

  else
  {
    v22 = sub_585D8(v34);
    if (v8 == 7)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 == 1 && *(a1 + 112) <= 1)
    {
      operator new();
    }
  }

  if ((v33 & 0x80000000) == 0)
  {
    if ((v36 & 0x80000000) == 0)
    {
      return;
    }

LABEL_56:
    operator delete(v35);
    return;
  }

  operator delete(v32);
  if (v36 < 0)
  {
    goto LABEL_56;
  }
}

void sub_E68A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_CF3C94(&a9);
  if (a24 < 0)
  {
    operator delete(__p);
    if (a32 < 0)
    {
LABEL_6:
      operator delete(a27);
      sub_CF3C94(v32);
      _Unwind_Resume(a1);
    }
  }

  else if (a32 < 0)
  {
    goto LABEL_6;
  }

  sub_CF3C94(v32);
  _Unwind_Resume(a1);
}

void sub_E68B2C(__n128 *a1, int a2, uint64_t a3)
{
  v3 = a3 + 8;
  if (!a3)
  {
    v3 = 0;
  }

  if (a2 >= 2)
  {
    v4 = a1;
    v5 = (v3 + 8);
    v6 = 8 * a2 - 8;
    v7 = 1;
    v8 = 1;
    v9 = 1;
    do
    {
      v10 = *v5;
      if (*(*(v5 - 1) + 80))
      {
        v11 = *(*(v5 - 1) + 80);
      }

      else
      {
        v11 = &off_2772310;
      }

      v12 = *(v10 + 72);
      if (!v12)
      {
        v12 = &off_2772310;
      }

      v7 &= *(v11 + 26) == *(v12 + 26);
      v8 &= v11[12] == v12[12];
      sub_E82D18(v11, &__p);
      if (*(v10 + 72))
      {
        v13 = *(v10 + 72);
      }

      else
      {
        v13 = &off_2772310;
      }

      sub_E82D18(v13, v14);
      v9 &= !sub_58918(&__p, v14);
      ++v5;
      v6 -= 8;
    }

    while (v6);
    if ((v7 & 1) == 0)
    {
      operator new();
    }

    if ((v8 & 1) == 0)
    {
      operator new();
    }

    a1 = v4;
    if ((v9 & 1) == 0)
    {
      operator new();
    }
  }

  __p.n128_u64[0] = 0;
  __p.n128_u64[1] = &off_2669FE0;
  sub_434934(a1, &__p);
}

void sub_E68DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E68DFC(__n128 *a1, int a2, int a3, uint64_t a4, int a5, int a6)
{
  if (a5 == 3 && !a2)
  {
    goto LABEL_3;
  }

  v6 = a6 - 7;
  if (a4)
  {
    v7 = (a4 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (a3)
  {
    v8 = 0;
    v9 = (a3 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v9)
    {
      v10 = 0;
      v11 = v9 + 1;
      v12 = (v9 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v13 = &v7[v12];
      v14 = v7 + 1;
      v15 = v12;
      do
      {
        v16 = *(*(v14 - 1) + 80);
        v17 = *(*v14 + 80);
        if (!v16)
        {
          v16 = &off_2772310;
        }

        if (!v17)
        {
          v17 = &off_2772310;
        }

        v18 = *(v17 + 26);
        if (*(v16 + 26) != 2)
        {
          ++v8;
        }

        if (v18 != 2)
        {
          ++v10;
        }

        v14 += 2;
        v15 -= 2;
      }

      while (v15);
      v8 += v10;
      if (v11 == v12)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v13 = v7;
    }

    v20 = &v7[a3];
    do
    {
      v21 = *v13++;
      v22 = *(v21 + 80);
      if (!v22)
      {
        v22 = &off_2772310;
      }

      if (*(v22 + 26) != 2)
      {
        ++v8;
      }
    }

    while (v13 != v20);
LABEL_29:
    v19 = v8 + 1;
    goto LABEL_30;
  }

  v19 = 1;
LABEL_30:
  v23 = a2 + 2;
  if (a5 == 2)
  {
    v23 = a2 + 1;
  }

  if (a5 == 1)
  {
    v23 = a2;
  }

  if (v6 >= 2 && v19 != v23)
  {
    operator new();
  }

LABEL_3:
  __p.n128_u64[0] = 0;
  __p.n128_u64[1] = &off_2669FE0;
  sub_434934(a1, &__p);
}

void sub_E68FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E68FFC(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = a5;
  v7 = *(a3 + 8);
  v8 = a2 != 0;
  if (a4)
  {
    ++v8;
  }

  v11 = v8 + v7;
  if (v8 + v7 <= a5)
  {

    sub_E97074(a2, a3, a4, a6, a1);
  }

  else
  {
    sub_E6A060("Total number of user-selected waypoints in the request (", ") exceeds the maximum that is allowed (", ").", __p);
    sub_434A40(14, __p, a1);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_E690D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E690F4(__n128 *a1, int a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a3 + 8;
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = 8 * a2;
    do
    {
      v6 = *(*v4 + 80);
      if (!v6)
      {
        v6 = &off_2772310;
      }

      if (!*(v6 + 26))
      {
        operator new();
      }

      v4 += 8;
      v5 -= 8;
    }

    while (v5);
    if (a2 >= 1)
    {
      if (*(*(a3 + 8 + 8 * (a2 - 1)) + 80))
      {
        v7 = *(*(a3 + 8 + 8 * (a2 - 1)) + 80);
      }

      else
      {
        v7 = &off_2772310;
      }

      sub_14741E8(__p, v7);
      if (v9 != 1)
      {
        operator new();
      }

      sub_147A260(__p);
    }
  }

  __p[0].n128_u64[0] = 0;
  __p[0].n128_u64[1] = &off_2669FE0;
  sub_434934(a1, __p);
}

void sub_E692E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_147A260(&a16);
  _Unwind_Resume(a1);
}

void sub_E69310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E6932C(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, __n128 *a3@<X8>)
{
  v67 = 0;
  v68[0] = &off_2669FE0;
  sub_434934(a3, &v67);
  sub_E9BBEC(v63, a1, *a2, a3);
  if ((sub_585D8(v63) & 1) == 0)
  {
    goto LABEL_104;
  }

  v6 = sub_394BD0();
  v7 = v6;
  if (*(a1 + 360))
  {
    v8 = *(a1 + 360);
  }

  else
  {
    v8 = &off_2773F38;
  }

  v9 = *(v8 + 8);
  v10 = v8[5];
  if (v10)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v9 >= 2)
  {
    v59 = v6;
    v12 = (v11 + 1);
    v13 = 8 * v9 - 8;
    v14 = 1;
    v15 = 1;
    v16 = 1;
    do
    {
      v17 = *v12;
      if (*(*(v12 - 1) + 488))
      {
        v18 = *(*(v12 - 1) + 488);
      }

      else
      {
        v18 = &off_2772310;
      }

      v19 = *(v17 + 480);
      if (!v19)
      {
        v19 = &off_2772310;
      }

      v20 = *(v18 + 26) == *(v19 + 26);
      v21 = v18[12] == v19[12];
      sub_E82D18(v18, &__p);
      if (*(v17 + 480))
      {
        v22 = *(v17 + 480);
      }

      else
      {
        v22 = &off_2772310;
      }

      sub_E82D18(v22, &v66);
      v14 &= v20;
      v15 &= v21;
      v16 &= !sub_58918(&__p, &v66);
      ++v12;
      v13 -= 8;
    }

    while (v13);
    if ((v14 & 1) == 0)
    {
      operator new();
    }

    v7 = v59;
    if ((v15 & 1) == 0)
    {
      operator new();
    }

    if ((v16 & 1) == 0)
    {
      operator new();
    }
  }

  __p = 0;
  v61[0] = &off_2669FE0;
  sub_434934(&v67, &__p);
  sub_E9BBFC(v63, &v67);
  v23 = v68[1];
  if (v68[1])
  {
    v24 = v69;
    v25 = v68[1];
    if (v69 != v68[1])
    {
      do
      {
        if (*(v24 - 1) < 0)
        {
          operator delete(*(v24 - 3));
        }

        v24 -= 4;
      }

      while (v24 != v23);
      v25 = v68[1];
    }

    v69 = v23;
    operator delete(v25);
  }

  v26 = *(a1 + 360);
  if (!v26)
  {
    v26 = &off_2773F38;
  }

  v27 = *(v26 + 8);
  v28 = v26[5];
  v29 = (v28 + 1);
  if (!v28)
  {
    v29 = 0;
  }

  if (!v27)
  {
    v41 = 1;
    if ((v7 - 7) >= 2u)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v30 = 0;
  v31 = (v27 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (!v31)
  {
    v35 = v29;
LABEL_55:
    v42 = &v29[v27];
    do
    {
      v43 = *v35++;
      v44 = *(v43 + 488);
      if (!v44)
      {
        v44 = &off_2772310;
      }

      if (*(v44 + 26) != 2)
      {
        ++v30;
      }
    }

    while (v35 != v42);
    goto LABEL_61;
  }

  v32 = 0;
  v33 = v31 + 1;
  v34 = (v31 + 1) & 0x3FFFFFFFFFFFFFFELL;
  v35 = &v29[v34];
  v36 = v29 + 1;
  v37 = v34;
  do
  {
    v38 = *(*(v36 - 1) + 488);
    v39 = *(*v36 + 488);
    if (!v38)
    {
      v38 = &off_2772310;
    }

    if (!v39)
    {
      v39 = &off_2772310;
    }

    v40 = *(v39 + 26);
    if (*(v38 + 26) != 2)
    {
      ++v30;
    }

    if (v40 != 2)
    {
      ++v32;
    }

    v36 += 2;
    v37 -= 2;
  }

  while (v37);
  v30 += v32;
  if (v33 != v34)
  {
    goto LABEL_55;
  }

LABEL_61:
  v41 = v30 + 1;
  if ((v7 - 7) >= 2u)
  {
LABEL_62:
    if (v41 != *(a1 + 152) + 1)
    {
      operator new();
    }
  }

LABEL_63:
  __p = 0;
  v61[0] = &off_2669FE0;
  sub_434934(&v67, &__p);
  sub_E9BBFC(v63, &v67);
  v45 = v68[1];
  if (v68[1])
  {
    v46 = v69;
    v47 = v68[1];
    if (v69 != v68[1])
    {
      do
      {
        if (*(v46 - 1) < 0)
        {
          operator delete(*(v46 - 3));
        }

        v46 -= 4;
      }

      while (v46 != v45);
      v47 = v68[1];
    }

    v69 = v45;
    operator delete(v47);
  }

  if (!*(a1 + 152))
  {
    operator new();
  }

  if (sub_E7C46C(a1))
  {
    if (*(a1 + 360))
    {
      v48 = *(a1 + 360);
    }

    else
    {
      v48 = &off_2773F38;
    }

    v49 = *(v48 + 8);
    v50 = v48[5];
    if (v50)
    {
      v51 = v50 + 1;
    }

    else
    {
      v51 = 0;
    }

    if (v49)
    {
      v52 = 8 * v49;
      do
      {
        v53 = *(*v51 + 61);
        if (!v53)
        {
          v53 = &off_2772310;
        }

        if (!*(v53 + 26))
        {
          operator new();
        }

        ++v51;
        v52 -= 8;
      }

      while (v52);
      if (v49 >= 1)
      {
        v54 = *(v50[(v49 - 1) + 1] + 61);
        if (v54)
        {
          v55 = v54;
        }

        else
        {
          v55 = &off_2772310;
        }

        sub_14741E8(&v67, v55);
        if (v70 != 1)
        {
          operator new();
        }

        sub_147A260(&v67);
      }
    }

    v67 = 0;
    v68[0] = &off_2669FE0;
    sub_434934(&__p, &v67);
    sub_E9BBFC(v63, &__p);
    v56 = v61[1];
    if (v61[1])
    {
      v57 = v62;
      v58 = v61[1];
      if (v62 != v61[1])
      {
        do
        {
          if (*(v57 - 1) < 0)
          {
            operator delete(*(v57 - 3));
          }

          v57 -= 4;
        }

        while (v57 != v56);
        v58 = v61[1];
      }

      v62 = v56;
      operator delete(v58);
    }
  }

LABEL_104:
  if (v65 < 0)
  {
    operator delete(v64);
  }
}

void sub_E69BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  sub_147A260(&a35);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_CF3C94(v40);
  _Unwind_Resume(a1);
}

void sub_E69CD8(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, __n128 *a3@<X8>)
{
  v23.n128_u64[0] = 0;
  v23.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v23);
  sub_E9B860(v29, a1, *a2, a3);
  sub_E9B860(v26, a1, a2[1], a3);
  if (sub_585D8(v29) && (*(a1 + 42) & 2) != 0)
  {
    v6 = sub_394BD0();
    v7 = *(a1 + 384);
    if (!v7)
    {
      v7 = &off_27721B8;
    }

    sub_E68B2C(&v23, *(v7 + 8), v7[5]);
    sub_E9BBFC(v29, &v23);
    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
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

      v25 = v8;
      operator delete(v10);
    }

    v11 = *(a1 + 384);
    if (!v11)
    {
      v11 = &off_27721B8;
    }

    sub_E68DFC(&v23, *(a1 + 160), *(v11 + 8), v11[5], 3, v6);
    sub_E9BBFC(v29, &v23);
    v12 = __p;
    if (__p)
    {
      v13 = v25;
      v14 = __p;
      if (v25 != __p)
      {
        do
        {
          if (*(v13 - 1) < 0)
          {
            operator delete(*(v13 - 3));
          }

          v13 -= 4;
        }

        while (v13 != v12);
        v14 = __p;
      }

      v25 = v12;
      operator delete(v14);
    }
  }

  if (sub_E84290(a1))
  {
    if (sub_585D8(v26))
    {
      v15 = *(a1 + 312) ? *(a1 + 312) : &off_2776FB8;
      sub_E68FFC(&v23, v15, a1 + 152, *(*(a1 + 96) + 8), *(a2 + 2), *(a2 + 2));
      sub_E9BBFC(v26, &v23);
      v16 = __p;
      if (__p)
      {
        v17 = v25;
        v18 = __p;
        if (v25 != __p)
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

        v25 = v16;
        operator delete(v18);
      }
    }

    if (sub_585D8(v29))
    {
      v19 = *(a1 + 384);
      if (!v19)
      {
        v19 = &off_27721B8;
      }

      sub_E690F4(&v23, *(v19 + 8), v19[5]);
      sub_E9BBFC(v29, &v23);
      v20 = __p;
      if (__p)
      {
        v21 = v25;
        v22 = __p;
        if (v25 != __p)
        {
          do
          {
            if (*(v21 - 1) < 0)
            {
              operator delete(*(v21 - 3));
            }

            v21 -= 4;
          }

          while (v21 != v20);
          v22 = __p;
        }

        v25 = v20;
        operator delete(v22);
      }
    }
  }

  if ((v28 & 0x80000000) == 0)
  {
    if ((v31 & 0x80000000) == 0)
    {
      return;
    }

LABEL_51:
    operator delete(v30);
    return;
  }

  operator delete(v27);
  if (v31 < 0)
  {
    goto LABEL_51;
  }
}

void sub_E69FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_CF3C94(&a9);
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      sub_CF3C94(v29);
      _Unwind_Resume(a1);
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  sub_CF3C94(v29);
  _Unwind_Resume(a1);
}

uint64_t sub_E6A060@<X0>(const char *a1@<X0>, const char *a3@<X2>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v20);
  v10 = strlen(a1);
  sub_4A5C(&v21, a1, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  v13 = std::ostream::operator<<();
  v14 = strlen(a5);
  sub_4A5C(v13, a5, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a6[23] = 0;
      goto LABEL_12;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a6[23] = v15;
  if (v15)
  {
    memmove(a6, v17, v15);
  }

LABEL_12:
  a6[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E6A324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_E6A348(uint64_t a1)
{
  v1 = *(a1 + 212);
  if (v1 <= 36)
  {
    switch(v1)
    {
      case 5:
        if ((*(a1 + 40) & 8) == 0)
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "Place request does not contain place request parameters", 55);
          if ((v126 & 0x10) != 0)
          {
            v40 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v40 = v122;
            }

            v41 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v41 = v119;
            v40 = v120;
          }

          v54 = *v41;
          v3 = v40 - *v41;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v40 - *v41;
          if (!v3)
          {
            goto LABEL_440;
          }

          goto LABEL_439;
        }

        if ((*(*(a1 + 192) + 40) & 0x10) == 0)
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "Place request parameters do not contain place lookup parameters", 63);
          if ((v126 & 0x10) != 0)
          {
            v58 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v58 = v122;
            }

            v59 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v59 = v119;
            v58 = v120;
          }

          v54 = *v59;
          v3 = v58 - *v59;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v58 - *v59;
          if (!v3)
          {
            goto LABEL_440;
          }

          goto LABEL_439;
        }

        break;
      case 21:
        if ((*(a1 + 40) & 8) == 0)
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "Place request does not contain place request parameters", 55);
          if ((v126 & 0x10) != 0)
          {
            v52 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v52 = v122;
            }

            v53 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v53 = v119;
            v52 = v120;
          }

          v54 = *v53;
          v3 = v52 - *v53;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v52 - *v53;
          if (!v3)
          {
            goto LABEL_440;
          }

          goto LABEL_439;
        }

        v14 = *(a1 + 192);
        if ((*(v14 + 42) & 0x10) == 0)
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "Place request parameters do not contain external transit lookup parameters", 74);
          if ((v126 & 0x10) != 0)
          {
            v70 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v70 = v122;
            }

            v71 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v71 = v119;
            v70 = v120;
          }

          v54 = *v71;
          v3 = v70 - *v71;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v70 - *v71;
          if (!v3)
          {
            goto LABEL_440;
          }

          goto LABEL_439;
        }

        v32 = *(v14 + 216);
        if ((*(v32 + 16) & 1) == 0)
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "External transit lookup parameters do not contain a source id", 61);
          if ((v126 & 0x10) != 0)
          {
            v74 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v74 = v122;
            }

            v75 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v75 = v119;
            v74 = v120;
          }

          v54 = *v75;
          v3 = v74 - *v75;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v74 - *v75;
          if (!v3)
          {
            goto LABEL_440;
          }

          goto LABEL_439;
        }

        v35 = *(v32 + 40);
        if (v35)
        {
          v36 = v35 + 8;
        }

        else
        {
          v36 = 0;
        }

        v37 = *(v32 + 32);
        if (v37)
        {
          v38 = 8 * v37;
          while (1)
          {
            v39 = *(*v36 + 23);
            if (v39 < 0)
            {
              v39 = *(*v36 + 8);
            }

            if (!v39)
            {
              break;
            }

            v36 += 8;
            v38 -= 8;
            if (!v38)
            {
              goto LABEL_143;
            }
          }

          result = sub_7E7E4(1u);
          if (result)
          {
            sub_19594F8(&v116);
            sub_4A5C(&v116, "External transit lookup parameters contain an empty external station code", 73);
            if ((v126 & 0x10) != 0)
            {
              v86 = v125;
              if (v125 < v122)
              {
                v125 = v122;
                v86 = v122;
              }

              v87 = &v121;
            }

            else
            {
              if ((v126 & 8) == 0)
              {
                v3 = 0;
                v115 = 0;
                goto LABEL_440;
              }

              v87 = v119;
              v86 = v120;
            }

            v54 = *v87;
            v3 = v86 - *v87;
            if (v3 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v3 >= 0x17)
            {
              operator new();
            }

            v115 = v86 - *v87;
            if (!v3)
            {
              goto LABEL_440;
            }

            goto LABEL_439;
          }

          return result;
        }

        break;
      case 23:
        if ((*(a1 + 40) & 8) == 0)
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "Place request does not contain place request parameters", 55);
          if ((v126 & 0x10) != 0)
          {
            v50 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v50 = v122;
            }

            v51 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v51 = v119;
            v50 = v120;
          }

          v54 = *v51;
          v3 = v50 - *v51;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v50 - *v51;
          if (!v3)
          {
            goto LABEL_440;
          }

LABEL_439:
          memmove(&__dst, v54, v3);
          goto LABEL_440;
        }

        v13 = *(a1 + 192);
        if ((*(v13 + 42) & 0x40) == 0)
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "Place request parameters do not contain maps identifier place lookup parameters", 79);
          if ((v126 & 0x10) != 0)
          {
            v68 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v68 = v122;
            }

            v69 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v69 = v119;
            v68 = v120;
          }

          v54 = *v69;
          v3 = v68 - *v69;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v68 - *v69;
          if (!v3)
          {
            goto LABEL_440;
          }

          goto LABEL_439;
        }

        v27 = *(v13 + 232);
        v28 = *(v27 + 64);
        if (v28)
        {
          v29 = v28 + 8;
        }

        else
        {
          v29 = 0;
        }

        v30 = *(v27 + 56);
        if (v30)
        {
          v31 = 8 * v30;
          while (1)
          {
            if ((*(*v29 + 40) & 1) == 0)
            {
              result = sub_7E7E4(1u);
              if (!result)
              {
                return result;
              }

              sub_19594F8(&v116);
              sub_4A5C(&v116, "Maps identifier does not contain a sharded id", 45);
              if ((v126 & 0x10) != 0)
              {
                v82 = v125;
                if (v125 < v122)
                {
                  v125 = v122;
                  v82 = v122;
                }

                v83 = &v121;
              }

              else
              {
                if ((v126 & 8) == 0)
                {
                  v3 = 0;
                  v115 = 0;
                  goto LABEL_440;
                }

                v83 = v119;
                v82 = v120;
              }

              v54 = *v83;
              v3 = v82 - *v83;
              if (v3 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v3 >= 0x17)
              {
                operator new();
              }

              v115 = v82 - *v83;
              if (v3)
              {
                goto LABEL_439;
              }

              goto LABEL_440;
            }

            if ((*(*(*v29 + 48) + 16) & 2) == 0)
            {
              break;
            }

            v29 += 8;
            v31 -= 8;
            if (!v31)
            {
              goto LABEL_143;
            }
          }

          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "Maps identifier contains a sharded id without a muid", 52);
          if ((v126 & 0x10) != 0)
          {
            v84 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v84 = v122;
            }

            v85 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v85 = v119;
            v84 = v120;
          }

          v54 = *v85;
          v3 = v84 - *v85;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v84 - *v85;
          if (v3)
          {
            goto LABEL_439;
          }

          goto LABEL_440;
        }

        break;
      default:
        goto LABEL_30;
    }

LABEL_143:
    v20 = 0;
    goto LABEL_144;
  }

  if (v1 > 49)
  {
    if (v1 != 50)
    {
      if (v1 != 57)
      {
        goto LABEL_30;
      }

      if ((*(a1 + 40) & 8) == 0)
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v116);
        sub_4A5C(&v116, "Place request does not contain place request parameters", 55);
        if ((v126 & 0x10) != 0)
        {
          v48 = v125;
          if (v125 < v122)
          {
            v125 = v122;
            v48 = v122;
          }

          v49 = &v121;
        }

        else
        {
          if ((v126 & 8) == 0)
          {
            v3 = 0;
            v115 = 0;
            goto LABEL_440;
          }

          v49 = v119;
          v48 = v120;
        }

        v54 = *v49;
        v3 = v48 - *v49;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v115 = v48 - *v49;
        if (!v3)
        {
          goto LABEL_440;
        }

        goto LABEL_439;
      }

      v12 = *(a1 + 192);
      if ((*(v12 + 46) & 0x80) == 0)
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v116);
        sub_4A5C(&v116, "Place request parameters do not contain transit nearby payment method lookup parameters", 87);
        if ((v126 & 0x10) != 0)
        {
          v66 = v125;
          if (v125 < v122)
          {
            v125 = v122;
            v66 = v122;
          }

          v67 = &v121;
        }

        else
        {
          if ((v126 & 8) == 0)
          {
            v3 = 0;
            v115 = 0;
            goto LABEL_440;
          }

          v67 = v119;
          v66 = v120;
        }

        v54 = *v67;
        v3 = v66 - *v67;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v115 = v66 - *v67;
        if (!v3)
        {
          goto LABEL_440;
        }

        goto LABEL_439;
      }

      v22 = *(v12 + 496);
      v23 = *(v22 + 32);
      if (v23)
      {
        v24 = v23 + 8;
      }

      else
      {
        v24 = 0;
      }

      v25 = *(v22 + 24);
      if (!v25)
      {
        return 1;
      }

      v26 = 8 * v25;
      result = 1;
      while ((*(*v24 + 16) & 1) != 0)
      {
        v24 += 8;
        v26 -= 8;
        if (!v26)
        {
          return result;
        }
      }

      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(&v116);
        sub_4A5C(&v116, "Transit nearby payment method lookup origin does not contain a waypoint typed", 77);
        if ((v126 & 0x10) != 0)
        {
          v78 = v125;
          if (v125 < v122)
          {
            v125 = v122;
            v78 = v122;
          }

          v79 = &v121;
        }

        else
        {
          if ((v126 & 8) == 0)
          {
            v3 = 0;
            v115 = 0;
            goto LABEL_440;
          }

          v79 = v119;
          v78 = v120;
        }

        v54 = *v79;
        v3 = v78 - *v79;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v115 = v78 - *v79;
        if (!v3)
        {
          goto LABEL_440;
        }

        goto LABEL_439;
      }

      return result;
    }

    if ((*(a1 + 40) & 8) == 0)
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v116);
      sub_4A5C(&v116, "Place request does not contain place request parameters", 55);
      if ((v126 & 0x10) != 0)
      {
        v44 = v125;
        if (v125 < v122)
        {
          v125 = v122;
          v44 = v122;
        }

        v45 = &v121;
      }

      else
      {
        if ((v126 & 8) == 0)
        {
          v3 = 0;
          v115 = 0;
          goto LABEL_440;
        }

        v45 = v119;
        v44 = v120;
      }

      v54 = *v45;
      v3 = v44 - *v45;
      if (v3 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v3 >= 0x17)
      {
        operator new();
      }

      v115 = v44 - *v45;
      if (!v3)
      {
        goto LABEL_440;
      }

      goto LABEL_439;
    }

    v10 = *(a1 + 192);
    if ((*(v10 + 46) & 1) == 0)
    {
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v116);
      sub_4A5C(&v116, "Place request parameters do not contain transit nearby schedule lookup parameters", 81);
      if ((v126 & 0x10) != 0)
      {
        v62 = v125;
        if (v125 < v122)
        {
          v125 = v122;
          v62 = v122;
        }

        v63 = &v121;
      }

      else
      {
        if ((v126 & 8) == 0)
        {
          v3 = 0;
          v115 = 0;
          goto LABEL_440;
        }

        v63 = v119;
        v62 = v120;
      }

      v54 = *v63;
      v3 = v62 - *v63;
      if (v3 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v3 >= 0x17)
      {
        operator new();
      }

      v115 = v62 - *v63;
      if (!v3)
      {
        goto LABEL_440;
      }

      goto LABEL_439;
    }

    v15 = *(v10 + 440);
    v16 = *(v15 + 40);
    if (v16)
    {
      v17 = v16 + 8;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v15 + 32);
    if (v18)
    {
      v19 = 8 * v18;
      while ((*(*v17 + 16) & 1) != 0)
      {
        v17 += 8;
        v19 -= 8;
        if (!v19)
        {
          goto LABEL_98;
        }
      }

      result = sub_7E7E4(1u);
      if (result)
      {
        sub_19594F8(&v116);
        sub_4A5C(&v116, "Transit nearby schedule lookup origin does not contain a waypoint typed", 71);
        if ((v126 & 0x10) != 0)
        {
          v76 = v125;
          if (v125 < v122)
          {
            v125 = v122;
            v76 = v122;
          }

          v77 = &v121;
        }

        else
        {
          if ((v126 & 8) == 0)
          {
            v3 = 0;
            v115 = 0;
            goto LABEL_440;
          }

          v77 = v119;
          v76 = v120;
        }

        v54 = *v77;
        v3 = v76 - *v77;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v115 = v76 - *v77;
        if (!v3)
        {
          goto LABEL_440;
        }

        goto LABEL_439;
      }

      return result;
    }

LABEL_98:
    v20 = 1;
LABEL_144:

    return sub_E6C67C(a1, v20);
  }

  if (v1 != 37)
  {
    if (v1 == 39)
    {
      if ((*(a1 + 40) & 8) == 0)
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v116);
        sub_4A5C(&v116, "Transit schedule lookup request does not contain place request parameters", 73);
        if ((v126 & 0x10) != 0)
        {
          v46 = v125;
          if (v125 < v122)
          {
            v125 = v122;
            v46 = v122;
          }

          v47 = &v121;
        }

        else
        {
          if ((v126 & 8) == 0)
          {
            v3 = 0;
            v115 = 0;
LABEL_440:
            *(&__dst + v3) = 0;
            sub_7E854(&__dst, 1u);
            if (v115 < 0)
            {
              operator delete(__dst);
            }

            if (v124 < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v118);
            std::ostream::~ostream();
            std::ios::~ios();
            return 0;
          }

          v47 = v119;
          v46 = v120;
        }

        v54 = *v47;
        v3 = v46 - *v47;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v115 = v46 - *v47;
        if (!v3)
        {
          goto LABEL_440;
        }

        goto LABEL_439;
      }

      v11 = *(a1 + 192);
      if ((*(v11 + 44) & 0x20) == 0)
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v116);
        sub_4A5C(&v116, "Transit schedule lookup request parameters do not contain transit schedule lookup parameters", 92);
        if ((v126 & 0x10) != 0)
        {
          v64 = v125;
          if (v125 < v122)
          {
            v125 = v122;
            v64 = v122;
          }

          v65 = &v121;
        }

        else
        {
          if ((v126 & 8) == 0)
          {
            v3 = 0;
            v115 = 0;
            goto LABEL_440;
          }

          v65 = v119;
          v64 = v120;
        }

        v54 = *v65;
        v3 = v64 - *v65;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v115 = v64 - *v65;
        if (!v3)
        {
          goto LABEL_440;
        }

        goto LABEL_439;
      }

      v21 = *(*(v11 + 352) + 40);
      if ((v21 & 8) == 0)
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v116);
        sub_4A5C(&v116, "Transit schedule lookup parameters does not have a reference trip id set", 72);
        if ((v126 & 0x10) != 0)
        {
          v72 = v125;
          if (v125 < v122)
          {
            v125 = v122;
            v72 = v122;
          }

          v73 = &v121;
        }

        else
        {
          if ((v126 & 8) == 0)
          {
            v3 = 0;
            v115 = 0;
            goto LABEL_440;
          }

          v73 = v119;
          v72 = v120;
        }

        v54 = *v73;
        v3 = v72 - *v73;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v115 = v72 - *v73;
        if (!v3)
        {
          goto LABEL_440;
        }

        goto LABEL_439;
      }

      if ((v21 & 4) == 0)
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v116);
        sub_4A5C(&v116, "Transit schedule lookup parameters does not have a transit id set", 65);
        if ((v126 & 0x10) != 0)
        {
          v80 = v125;
          if (v125 < v122)
          {
            v125 = v122;
            v80 = v122;
          }

          v81 = &v121;
        }

        else
        {
          if ((v126 & 8) == 0)
          {
            v3 = 0;
            v115 = 0;
            goto LABEL_440;
          }

          v81 = v119;
          v80 = v120;
        }

        v54 = *v81;
        v3 = v80 - *v81;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v115 = v80 - *v81;
        if (!v3)
        {
          goto LABEL_440;
        }

        goto LABEL_439;
      }

      result = sub_E6C67C(a1, 0);
      if (!result)
      {
        return result;
      }

      v56 = sub_E6CFB8(a1, 68);
      if (v56)
      {
        v57 = *(v56 + 24);
        if (!v57)
        {
          v57 = &off_2785290;
        }

        if ((*(v57 + 11) & 0x80000000) == 0)
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v116);
          sub_4A5C(&v116, "Transit trip stop time component does not have a transit trip stop time filter", 78);
          if ((v126 & 0x10) != 0)
          {
            v99 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v99 = v122;
            }

            v100 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v3 = 0;
              v115 = 0;
              goto LABEL_440;
            }

            v100 = v119;
            v99 = v120;
          }

          v54 = *v100;
          v3 = v99 - *v100;
          if (v3 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v3 >= 0x17)
          {
            operator new();
          }

          v115 = v99 - *v100;
          if (!v3)
          {
            goto LABEL_440;
          }

          goto LABEL_439;
        }

        v88 = v57[71];
        v113 = 14;
        strcpy(v112, "trip stop time");
        v89 = *(v88 + 10);
        if ((v89 & 2) != 0)
        {
          if (v89)
          {
            v101 = *(v88[7] + 3);
            if (!v101)
            {
              v101 = &off_27822F0;
            }

            if (*(v101 + 6) + 978307200 >= 0)
            {
              result = 1;
              goto LABEL_481;
            }

            result = sub_7E7E4(1u);
            if (!result)
            {
LABEL_481:
              if (v113 < 0)
              {
                v111 = result;
                operator delete(v112[0]);
                return v111;
              }

              return result;
            }

            sub_19594F8(&v116);
            v104 = sub_4A5C(&v116, "The start time in the transit ", 30);
            if (v113 >= 0)
            {
              v105 = v112;
            }

            else
            {
              v105 = v112[0];
            }

            if (v113 >= 0)
            {
              v106 = v113;
            }

            else
            {
              v106 = v112[1];
            }

            v107 = sub_4A5C(v104, v105, v106);
            sub_4A5C(v107, " filter cannot be cast to a time stamp: ", 40);
            std::ostream::operator<<();
            sub_1959680(&v116, &__dst);
            sub_7E854(&__dst, 1u);
            if (v115 < 0)
            {
              operator delete(__dst);
            }

            sub_1959728(&v116);
LABEL_480:
            result = 0;
            goto LABEL_481;
          }

          result = sub_7E7E4(1u);
          if (!result)
          {
            goto LABEL_481;
          }

          sub_19594F8(&v116);
          v95 = sub_4A5C(&v116, "Transit ", 8);
          if (v113 >= 0)
          {
            v96 = v112;
          }

          else
          {
            v96 = v112[0];
          }

          if (v113 >= 0)
          {
            v97 = v113;
          }

          else
          {
            v97 = v112[1];
          }

          v98 = sub_4A5C(v95, v96, v97);
          sub_4A5C(v98, " filter does not have a countdown departure predicate", 53);
          if ((v126 & 0x10) != 0)
          {
            v109 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v109 = v122;
            }

            v110 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v94 = 0;
              v115 = 0;
              goto LABEL_475;
            }

            v110 = v119;
            v109 = v120;
          }

          v108 = *v110;
          v94 = v109 - *v110;
          if (v94 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v94 >= 0x17)
          {
            operator new();
          }

          v115 = v109 - *v110;
          if (!v94)
          {
            goto LABEL_475;
          }
        }

        else
        {
          result = sub_7E7E4(1u);
          if (!result)
          {
            goto LABEL_481;
          }

          sub_19594F8(&v116);
          v90 = sub_4A5C(&v116, "Transit ", 8);
          if (v113 >= 0)
          {
            v91 = v112;
          }

          else
          {
            v91 = v112[0];
          }

          if (v113 >= 0)
          {
            v92 = v113;
          }

          else
          {
            v92 = v112[1];
          }

          v93 = sub_4A5C(v90, v91, v92);
          sub_4A5C(v93, " filter does not have a stamp departure predicate", 49);
          if ((v126 & 0x10) != 0)
          {
            v102 = v125;
            if (v125 < v122)
            {
              v125 = v122;
              v102 = v122;
            }

            v103 = &v121;
          }

          else
          {
            if ((v126 & 8) == 0)
            {
              v94 = 0;
              v115 = 0;
LABEL_475:
              *(&__dst + v94) = 0;
              sub_7E854(&__dst, 1u);
              if (v115 < 0)
              {
                operator delete(__dst);
              }

              if (v124 < 0)
              {
                operator delete(__p);
              }

              std::locale::~locale(&v118);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_480;
            }

            v103 = v119;
            v102 = v120;
          }

          v108 = *v103;
          v94 = v102 - *v103;
          if (v94 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v94 >= 0x17)
          {
            operator new();
          }

          v115 = v102 - *v103;
          if (!v94)
          {
            goto LABEL_475;
          }
        }

        memmove(&__dst, v108, v94);
        goto LABEL_475;
      }

      return 1;
    }

LABEL_30:
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v116);
    v5 = sub_4A5C(&v116, "Place request consistency check invoked with a request of unsupported type ", 75);
    v6 = sub_186996C(*(a1 + 212));
    v7 = *(v6 + 23);
    if (v7 >= 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = *v6;
    }

    if (v7 >= 0)
    {
      v9 = *(v6 + 23);
    }

    else
    {
      v9 = v6[1];
    }

    sub_4A5C(v5, v8, v9);
    if ((v126 & 0x10) != 0)
    {
      v33 = v125;
      if (v125 < v122)
      {
        v125 = v122;
        v33 = v122;
      }

      v34 = &v121;
    }

    else
    {
      if ((v126 & 8) == 0)
      {
        v3 = 0;
        v115 = 0;
        goto LABEL_440;
      }

      v34 = v119;
      v33 = v120;
    }

    v54 = *v34;
    v3 = v33 - *v34;
    if (v3 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    v115 = v33 - *v34;
    if (!v3)
    {
      goto LABEL_440;
    }

    goto LABEL_439;
  }

  if ((*(a1 + 40) & 8) == 0)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v116);
    sub_4A5C(&v116, "Place request does not contain place request parameters", 55);
    if ((v126 & 0x10) != 0)
    {
      v42 = v125;
      if (v125 < v122)
      {
        v125 = v122;
        v42 = v122;
      }

      v43 = &v121;
    }

    else
    {
      if ((v126 & 8) == 0)
      {
        v3 = 0;
        v115 = 0;
        goto LABEL_440;
      }

      v43 = v119;
      v42 = v120;
    }

    v54 = *v43;
    v3 = v42 - *v43;
    if (v3 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    v115 = v42 - *v43;
    if (!v3)
    {
      goto LABEL_440;
    }

    goto LABEL_439;
  }

  if ((*(*(a1 + 192) + 44) & 8) != 0)
  {
    return 1;
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v116);
    sub_4A5C(&v116, "Place request parameters do not contain transit vehicle position parameters", 75);
    if ((v126 & 0x10) != 0)
    {
      v60 = v125;
      if (v125 < v122)
      {
        v125 = v122;
        v60 = v122;
      }

      v61 = &v121;
    }

    else
    {
      if ((v126 & 8) == 0)
      {
        v3 = 0;
        v115 = 0;
        goto LABEL_440;
      }

      v61 = v119;
      v60 = v120;
    }

    v54 = *v61;
    v3 = v60 - *v61;
    if (v3 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    v115 = v60 - *v61;
    if (!v3)
    {
      goto LABEL_440;
    }

    goto LABEL_439;
  }

  return result;
}

void sub_E6C4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a22);
  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_E6C67C(uint64_t a1, int a2)
{
  v3 = sub_E6CFB8(a1, 11);
  if (!v3)
  {
    result = 1;
    if (!a2)
    {
      return result;
    }

    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v36);
    sub_4A5C(&v36, "Mandatory transit schedule component is not present in the request", 66);
    if ((v46 & 0x10) != 0)
    {
      v21 = v45;
      if (v45 < v42)
      {
        v45 = v42;
        v21 = v42;
      }

      v20 = v41;
      v6 = v21 - v41;
      if (v21 - v41 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if ((v46 & 8) == 0)
      {
        v6 = 0;
        v35 = 0;
        goto LABEL_61;
      }

      v20 = v39[0];
      v6 = v40 - v39[0];
      if (v40 - v39[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_77:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v35 = v6;
    if (!v6)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    v4 = &off_2785290;
  }

  if ((*(v4 + 41) & 4) == 0)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v36);
    sub_4A5C(&v36, "Transit schedule component does not have a transit schedule filter", 66);
    if ((v46 & 0x10) != 0)
    {
      v19 = v45;
      if (v45 < v42)
      {
        v45 = v42;
        v19 = v42;
      }

      v20 = v41;
      v6 = v19 - v41;
      if (v19 - v41 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if ((v46 & 8) == 0)
      {
        v6 = 0;
        v35 = 0;
LABEL_61:
        *(&__dst + v6) = 0;
        sub_7E854(&__dst, 1u);
        if (v35 < 0)
        {
          operator delete(__dst);
        }

        if (v44 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v38);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v20 = v39[0];
      v6 = v40 - v39[0];
      if (v40 - v39[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_55:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v35 = v6;
    if (!v6)
    {
      goto LABEL_61;
    }

LABEL_60:
    memmove(&__dst, v20, v6);
    goto LABEL_61;
  }

  v7 = v4[18];
  v33 = 8;
  strcpy(v32, "schedule");
  v8 = *(v7 + 4);
  if ((v8 & 2) == 0)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      goto LABEL_101;
    }

    sub_19594F8(&v36);
    v9 = sub_4A5C(&v36, "Transit ", 8);
    if (v33 >= 0)
    {
      v10 = v32;
    }

    else
    {
      v10 = v32[0];
    }

    if (v33 >= 0)
    {
      v11 = v33;
    }

    else
    {
      v11 = v32[1];
    }

    v12 = sub_4A5C(v9, v10, v11);
    sub_4A5C(v12, " filter does not have a stamp departure predicate", 49);
    if ((v46 & 0x10) != 0)
    {
      v22 = v45;
      if (v45 < v42)
      {
        v45 = v42;
        v22 = v42;
      }

      v23 = &v41;
    }

    else
    {
      if ((v46 & 8) == 0)
      {
        v13 = 0;
        v35 = 0;
LABEL_95:
        *(&__dst + v13) = 0;
        sub_7E854(&__dst, 1u);
        if (v35 < 0)
        {
          operator delete(__dst);
        }

        if (v44 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v38);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_100:
        result = 0;
        goto LABEL_101;
      }

      v23 = v39;
      v22 = v40;
    }

    v28 = *v23;
    v13 = v22 - *v23;
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v35 = v22 - *v23;
    if (!v13)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  if ((v8 & 1) == 0)
  {
    result = sub_7E7E4(1u);
    if (!result)
    {
      goto LABEL_101;
    }

    sub_19594F8(&v36);
    v14 = sub_4A5C(&v36, "Transit ", 8);
    if (v33 >= 0)
    {
      v15 = v32;
    }

    else
    {
      v15 = v32[0];
    }

    if (v33 >= 0)
    {
      v16 = v33;
    }

    else
    {
      v16 = v32[1];
    }

    v17 = sub_4A5C(v14, v15, v16);
    sub_4A5C(v17, " filter does not have a countdown departure predicate", 53);
    if ((v46 & 0x10) != 0)
    {
      v29 = v45;
      if (v45 < v42)
      {
        v45 = v42;
        v29 = v42;
      }

      v30 = &v41;
    }

    else
    {
      if ((v46 & 8) == 0)
      {
        v13 = 0;
        v35 = 0;
        goto LABEL_95;
      }

      v30 = v39;
      v29 = v40;
    }

    v28 = *v30;
    v13 = v29 - *v30;
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v35 = v29 - *v30;
    if (!v13)
    {
      goto LABEL_95;
    }

LABEL_94:
    memmove(&__dst, v28, v13);
    goto LABEL_95;
  }

  v18 = *(v7[4] + 3);
  if (!v18)
  {
    v18 = &off_27822F0;
  }

  if (*(v18 + 6) + 978307200 >= 0)
  {
    result = 1;
    goto LABEL_101;
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v36);
    v24 = sub_4A5C(&v36, "The start time in the transit ", 30);
    if (v33 >= 0)
    {
      v25 = v32;
    }

    else
    {
      v25 = v32[0];
    }

    if (v33 >= 0)
    {
      v26 = v33;
    }

    else
    {
      v26 = v32[1];
    }

    v27 = sub_4A5C(v24, v25, v26);
    sub_4A5C(v27, " filter cannot be cast to a time stamp: ", 40);
    std::ostream::operator<<();
    sub_1959680(&v36, &__dst);
    sub_7E854(&__dst, 1u);
    if (v35 < 0)
    {
      operator delete(__dst);
    }

    sub_1959728(&v36);
    goto LABEL_100;
  }

LABEL_101:
  if (v33 < 0)
  {
    v31 = result;
    operator delete(v32[0]);
    return v31;
  }

  return result;
}