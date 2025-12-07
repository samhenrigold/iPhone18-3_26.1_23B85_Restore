void sub_E24BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E24BC4(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E24D1C(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_E24ED0(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_E24EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E24ED0(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E25028(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_E251DC(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_E251C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E251DC(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E25334(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_E254E8(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_E254D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E254E8(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_E25640(__int128 **a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = a1[1] - *a1;
  sub_E257F4(v17 * 16, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = &(*a1)[v17] - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = &(*a1)[v17] - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 3;
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

void sub_E257E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E257F4(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

void *sub_E2594C(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2674138[v4])(&v12, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = a1[12];
  a1[12] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    a1[10] = v6;
    operator delete(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    a1[7] = v7;
    operator delete(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = a1[4];
    v10 = a1[3];
    if (v9 != v8)
    {
      do
      {
        v9 = sub_A30978(v9 - 29);
      }

      while (v9 != v8);
      v10 = a1[3];
    }

    a1[4] = v8;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_E25A54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, _OWORD *a8)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  sub_D71F30(a1 + 32, a7);
  __p = 0;
  v27 = 0;
  v28 = 0;
  sub_E22244(&__p, 0x6FB586FB586FB587 * ((a2[1] - *a2) >> 3));
  v11 = *a2;
  v12 = a2[1];
  if (*a2 == v12)
  {
    v14 = __p;
    v13 = v27;
    if (__p != v27)
    {
LABEL_9:
      while (*(v14 + 44) != 1)
      {
        v14 += 440;
        if (v14 == v13)
        {
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    v13 = v27;
    do
    {
      while (v13 >= v28)
      {
        v13 = sub_4EA43C(&__p, v11);
        v27 = v13;
        v11 += 440;
        if (v11 == v12)
        {
          goto LABEL_6;
        }
      }

      sub_4E9DA4(v13, v11);
      v13 += 440;
      v27 = v13;
      v11 += 440;
    }

    while (v11 != v12);
LABEL_6:
    v14 = __p;
    if (__p != v13)
    {
      goto LABEL_9;
    }
  }

  if (v14 == v13)
  {
LABEL_13:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v14 = &unk_27337E8;
  }

  sub_4E9DA4(a1 + 232, v14);
  v15 = __p;
  if (__p)
  {
    v16 = v27;
    v17 = __p;
    if (v27 != __p)
    {
      do
      {
        v16 = sub_44FDEC(v16 - 440);
      }

      while (v16 != v15);
      v17 = __p;
    }

    v27 = v15;
    operator delete(v17);
  }

  __p = 0;
  v27 = 0;
  v28 = 0;
  sub_E22244(&__p, 0x6FB586FB586FB587 * ((a2[1] - *a2) >> 3));
  v18 = *a2;
  v19 = a2[1];
  if (*a2 == v19)
  {
    v21 = __p;
    v20 = v27;
    if (__p != v27)
    {
LABEL_28:
      while (*(v21 + 44) != 2)
      {
        v21 += 440;
        if (v21 == v20)
        {
          goto LABEL_32;
        }
      }
    }
  }

  else
  {
    v20 = v27;
    do
    {
      while (v20 >= v28)
      {
        v20 = sub_4EA43C(&__p, v18);
        v27 = v20;
        v18 += 440;
        if (v18 == v19)
        {
          goto LABEL_25;
        }
      }

      sub_4E9DA4(v20, v18);
      v20 += 440;
      v27 = v20;
      v18 += 440;
    }

    while (v18 != v19);
LABEL_25:
    v21 = __p;
    if (__p != v20)
    {
      goto LABEL_28;
    }
  }

  if (v21 == v20)
  {
LABEL_32:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v21 = &unk_27337E8;
  }

  sub_4E9DA4(a1 + 672, v21);
  v22 = __p;
  if (__p)
  {
    v23 = v27;
    v24 = __p;
    if (v27 != __p)
    {
      do
      {
        v23 = sub_44FDEC(v23 - 440);
      }

      while (v23 != v22);
      v24 = __p;
    }

    v27 = v22;
    operator delete(v24);
  }

  *(a1 + 1112) = *a8;
  return a1;
}

void sub_E25D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_guard_abort(&qword_27339A0);
  sub_44FD90(va);
  sub_44FDEC(v3 + 232);
  sub_D71D0C(v3 + 32);
  _Unwind_Resume(a1);
}

void sub_E25DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_44FD90(va);
  sub_D71D0C(v3 + 32);
  _Unwind_Resume(a1);
}

uint64_t sub_E25E10(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
      if (v3 != v2)
      {
        do
        {
          v3 -= 36;
          sub_93ABFC(v3);
        }

        while (v3 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_15:
      operator delete(v4);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v6 != v5)
      {
        do
        {
          if (*(v6 - 1) < 0)
          {
            operator delete(*(v6 - 24));
          }

          v6 -= 32;
        }

        while (v6 != v5);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v5;
      goto LABEL_15;
    }
  }

  return a1;
}

uint64_t sub_E25EC8(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 72) != 1)
    {
      return a1;
    }

    v2 = *(a1 + 40);
    if (v2)
    {
      *(a1 + 48) = v2;
      operator delete(v2);
    }

    if ((*(a1 + 39) & 0x80000000) == 0)
    {
      return a1;
    }

    operator delete(*(a1 + 16));
    return a1;
  }

  else
  {
    v4 = *(a1 + 24);
    if (!v4)
    {
      return a1;
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 24);
    if (v5 != v4)
    {
      do
      {
        if (*(v5 - 1) < 0)
        {
          operator delete(*(v5 - 24));
        }

        v5 -= 32;
      }

      while (v5 != v4);
      v6 = *(a1 + 24);
    }

    *(a1 + 32) = v4;
    operator delete(v6);
    return a1;
  }
}

void sub_E25F9C()
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
  xmmword_27B9210 = 0u;
  unk_27B9220 = 0u;
  dword_27B9230 = 1065353216;
  sub_3A9A34(&xmmword_27B9210, v0, v0);
  sub_3A9A34(&xmmword_27B9210, v3, v3);
  sub_3A9A34(&xmmword_27B9210, __p, __p);
  sub_3A9A34(&xmmword_27B9210, v9, v9);
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
    qword_27B91E8 = 0;
    qword_27B91F0 = 0;
    qword_27B91E0 = 0;
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

void sub_E261E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B91F8)
  {
    qword_27B9200 = qword_27B91F8;
    operator delete(qword_27B91F8);
  }

  _Unwind_Resume(exception_object);
}

void sub_E26290(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *sub_3B8500(a2);
  v53 = a4;
  v54 = a3;
  LOBYTE(v42[0]) = 0;
  v44 = 0;
  LOBYTE(v45) = 0;
  v46 = 0;
  LOBYTE(v47) = 0;
  v48 = 0;
  LOBYTE(v49) = 0;
  v50 = 0;
  LOBYTE(v51) = 0;
  v52 = 0;
  __p = 0uLL;
  v39 = 1851878480;
  v40 = 4;
  v30 = 0;
  sub_D89468(&v41, &__p);
  v9 = __p;
  if (__p)
  {
    v10 = *(&__p + 1);
    v11 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p;
    }

    *(&__p + 1) = v9;
    operator delete(v11);
  }

  HIBYTE(v30) = 12;
  strcpy(&__p, "Plan.Started");
  sub_7BDA0(27, &__p, v8);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  sub_7E9A4(v38);
  if ((sub_E6A348(a1) & 1) == 0)
  {
    operator new();
  }

  *&__p = a1;
  DWORD2(__p) = 6;
  v30 = a2;
  LOBYTE(v31) = sub_E88F70(&__p);
  v32 = 0;
  sub_D11BD4(&__p, v33);
  if ((v33[0] & 1) == 0)
  {
    operator new();
  }

  v42[0] = v36[0];
  v42[1] = v36[1];
  v42[2] = v36[2];
  if (v44 == 1)
  {
    LODWORD(v43) = v37;
  }

  else
  {
    v43 = v37;
    v44 = 1;
  }

  sub_D73D78(v36, &__p);
  sub_7C9C0(27, &__p, v8);
  v13 = v31;
  if (v31)
  {
    v14 = v32;
    v15 = v31;
    if (v32 != v31)
    {
      do
      {
        v16 = *(v14 - 25);
        v14 -= 6;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v31;
    }

    v32 = v13;
    operator delete(v15);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v17 = v34;
    v18 = v35;
    if (v34 != v35)
    {
LABEL_28:
      v19 = 0;
      do
      {
        while (v19 >= v23)
        {
          v19 = sub_4EA43C(&v21, v17);
          v22 = v19;
          v17 += 440;
          if (v17 == v18)
          {
            goto LABEL_32;
          }
        }

        sub_4E9DA4(v19, v17);
        v19 += 440;
        v22 = v19;
        v17 += 440;
      }

      while (v17 != v18);
LABEL_32:
      v20 = v21;
LABEL_35:
      v26 = 0;
      memset(v27, 0, 24);
      __dst[0] = a1;
      memset(&__dst[1], 0, 24);
      LOBYTE(v25) = 0;
      v27[164] = v27;
      LOBYTE(v28) = 0;
      if (v19 != v20)
      {
        if ((0x6FB586FB586FB587 * ((v19 - v20) >> 3)) < 0x94F2094F2094F3)
        {
          operator new();
        }

        sub_1794();
      }

      sub_D213E0(__dst, a2, 27);
    }
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v17 = v34;
    v18 = v35;
    if (v34 != v35)
    {
      goto LABEL_28;
    }
  }

  v19 = 0;
  v20 = 0;
  goto LABEL_35;
}

void sub_E27008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p)
{
  sub_9DA0(&__p);
  sub_DE6C64(&a10);
  sub_DE6D00(v39 - 160);
  sub_E276B4(&STACK[0x758]);
  sub_D28608(&STACK[0x7A8]);
  sub_D130AC(&STACK[0xE28]);
  sub_9DA0(&STACK[0xEA0]);
  _Unwind_Resume(a1);
}

void *sub_E272A0(void *a1, uint64_t **a2, unsigned int *a3, uint64_t a4)
{
  if (!sub_7E7E4(3u))
  {
    goto LABEL_24;
  }

  sub_19594F8(&v21);
  v8 = sub_4A5C(&v21, "[transit nearby payment method lookup] ", 39);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = a2[1];
  }

  sub_4A5C(v8, v10, v11);
  if ((v31 & 0x10) != 0)
  {
    v13 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v13 = v27;
    }

    v14 = v26;
    v12 = v13 - v26;
    if (v13 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_29:
      sub_3244();
    }

LABEL_14:
    if (v12 >= 0x17)
    {
      operator new();
    }

    v20 = v12;
    if (v12)
    {
      memmove(&__p, v14, v12);
    }

    goto LABEL_19;
  }

  if ((v31 & 8) != 0)
  {
    v14 = v24;
    v12 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v12 = 0;
  v20 = 0;
LABEL_19:
  *(&__p + v12) = 0;
  sub_7E854(&__p, 3u);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  std::locale::~locale(&v23);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_24:
  sub_18FD3D0(&v21, 0, 0);
  v15 = sub_EC7E5C(*a3);
  LODWORD(v25) = v25 | 0x20;
  v32 = v15;
  v16 = *(*a1 + 24);
  if (v16)
  {
    (*(*v16 + 48))(v16, a4);
  }

  v17 = *(a1[1] + 24);
  if (!v17)
  {
    sub_2B7420();
  }

  (*(*v17 + 48))(v17, &v21);
  return sub_18FDA18(&v21);
}

void sub_E275BC(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_E27600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_18FDA18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E27614(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2B7420();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_E2765C(uint64_t a1)
{
  if (*(a1 + 288) == 1)
  {
    v2 = *(a1 + 264);
    if (v2)
    {
      *(a1 + 272) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 240);
    if (v3)
    {
      *(a1 + 248) = v3;
      operator delete(v3);
    }

    sub_49AEC0(a1);
  }

  return a1;
}

uint64_t sub_E276B4(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 32);
          if (v5)
          {
            *(v3 - 24) = v5;
            operator delete(v5);
          }

          v3 -= 40;
        }

        while (v3 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_18:
      operator delete(v4);
    }
  }

  else
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v7 != v6)
      {
        do
        {
          if (*(v7 - 1) < 0)
          {
            operator delete(*(v7 - 24));
          }

          v7 -= 32;
        }

        while (v7 != v6);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v6;
      goto LABEL_18;
    }
  }

  return a1;
}

void sub_E2777C()
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
  xmmword_27B9268 = 0u;
  unk_27B9278 = 0u;
  dword_27B9288 = 1065353216;
  sub_3A9A34(&xmmword_27B9268, v0, v0);
  sub_3A9A34(&xmmword_27B9268, v3, v3);
  sub_3A9A34(&xmmword_27B9268, __p, __p);
  sub_3A9A34(&xmmword_27B9268, v9, v9);
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
    qword_27B9240 = 0;
    qword_27B9248 = 0;
    qword_27B9238 = 0;
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

void sub_E279C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B9250)
  {
    qword_27B9258 = qword_27B9250;
    operator delete(qword_27B9250);
  }

  _Unwind_Resume(exception_object);
}

void sub_E27A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v8;
  v16 = *sub_3B8500(v13);
  v59 = v10;
  v60 = v12;
  LOBYTE(v44) = 0;
  v48 = 0;
  LOBYTE(v49) = 0;
  v50 = 0;
  LOBYTE(v51) = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  LOBYTE(v55) = 0;
  v56 = 0;
  LOBYTE(v57) = 0;
  v58 = 0;
  __p = 0uLL;
  v41 = 1851878480;
  v42 = 4;
  v32 = 0;
  sub_D89468(&v43, &__p);
  v17 = __p;
  if (__p)
  {
    v18 = *(&__p + 1);
    v19 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        v20 = *(v18 - 25);
        v18 -= 6;
        if (v20 < 0)
        {
          operator delete(*v18);
        }
      }

      while (v18 != v17);
      v19 = __p;
    }

    *(&__p + 1) = v17;
    operator delete(v19);
  }

  HIBYTE(v32) = 12;
  strcpy(&__p, "Plan.Started");
  sub_7BDA0(19, &__p, v16);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  sub_7E9A4(&v40);
  if ((sub_E6A348(v15) & 1) == 0)
  {
    operator new();
  }

  *&__p = v15;
  DWORD2(__p) = 6;
  v32 = v14;
  LOBYTE(v33) = sub_E88F70(&__p);
  v34 = 0;
  sub_D11BD4(&__p, v35);
  if ((v35[0] & 1) == 0)
  {
    operator new();
  }

  v44 = v38[0];
  v45 = v38[1];
  v46 = v38[2];
  if (v48 == 1)
  {
    LODWORD(v47) = v39;
  }

  else
  {
    v47 = v39;
    v48 = 1;
  }

  sub_D73D78(v38, &__p);
  sub_7C9C0(19, &__p, v16);
  v21 = v33;
  if (v33)
  {
    v22 = v34;
    v23 = v33;
    if (v34 != v33)
    {
      do
      {
        v24 = *(v22 - 25);
        v22 -= 6;
        if (v24 < 0)
        {
          operator delete(*v22);
        }
      }

      while (v22 != v21);
      v23 = v33;
    }

    v34 = v21;
    operator delete(v23);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
    __dst = 0;
    v29 = 0;
    v30 = 0;
    v25 = v36;
    v26 = v37;
    if (v36 == v37)
    {
      goto LABEL_34;
    }
  }

  else
  {
    __dst = 0;
    v29 = 0;
    v30 = 0;
    v25 = v36;
    v26 = v37;
    if (v36 == v37)
    {
      goto LABEL_34;
    }
  }

  v27 = 0;
  do
  {
    while (v27 >= v30)
    {
      v27 = sub_4EA43C(&__dst, v25);
      v29 = v27;
      v25 += 440;
      if (v25 == v26)
      {
        goto LABEL_34;
      }
    }

    sub_4E9DA4(v27, v25);
    v27 += 440;
    v29 = v27;
    v25 += 440;
  }

  while (v25 != v26);
LABEL_34:
  sub_D4E0A4(&__p, v15, &__dst);
  sub_D4CE54(&__p, v14);
}

void sub_E28A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p)
{
  sub_9DA0(&__p);
  sub_DE6C64(&a12);
  sub_DE6D00(v41 - 160);
  sub_DE6E78(&STACK[0x770]);
  sub_D28608(&STACK[0x9B0]);
  sub_D4D890(&STACK[0x1030]);
  sub_D130AC(&STACK[0x1178]);
  sub_9DA0(&STACK[0x11F0]);
  _Unwind_Resume(a1);
}

void *sub_E28D88(void *a1, uint64_t **a2, unsigned int *a3, uint64_t a4)
{
  if (!sub_7E7E4(3u))
  {
    goto LABEL_24;
  }

  sub_19594F8(&v21);
  v8 = sub_4A5C(&v21, "[transit nearby schedule lookup] ", 33);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = a2[1];
  }

  sub_4A5C(v8, v10, v11);
  if ((v31 & 0x10) != 0)
  {
    v13 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v13 = v27;
    }

    v14 = v26;
    v12 = v13 - v26;
    if (v13 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_29:
      sub_3244();
    }

LABEL_14:
    if (v12 >= 0x17)
    {
      operator new();
    }

    v20 = v12;
    if (v12)
    {
      memmove(&__p, v14, v12);
    }

    goto LABEL_19;
  }

  if ((v31 & 8) != 0)
  {
    v14 = v24;
    v12 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v12 = 0;
  v20 = 0;
LABEL_19:
  *(&__p + v12) = 0;
  sub_7E854(&__p, 3u);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  std::locale::~locale(&v23);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_24:
  sub_18FD3D0(&v21, 0, 0);
  v15 = sub_EC7E5C(*a3);
  LODWORD(v25) = v25 | 0x20;
  v32 = v15;
  v16 = *(*a1 + 24);
  if (v16)
  {
    (*(*v16 + 48))(v16, a4);
  }

  v17 = *(a1[1] + 24);
  if (!v17)
  {
    sub_2B7420();
  }

  (*(*v17 + 48))(v17, &v21);
  return sub_18FDA18(&v21);
}

void sub_E290A4(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_E290E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_18FDA18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E290FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2B7420();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void *sub_E29144(void *a1)
{
  sub_D4EE94((a1 + 3));
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 30;
        sub_D4ED7C(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_E291B0()
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
  xmmword_27B92C0 = 0u;
  *algn_27B92D0 = 0u;
  dword_27B92E0 = 1065353216;
  sub_3A9A34(&xmmword_27B92C0, v0, v0);
  sub_3A9A34(&xmmword_27B92C0, v3, v3);
  sub_3A9A34(&xmmword_27B92C0, __p, __p);
  sub_3A9A34(&xmmword_27B92C0, v9, v9);
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
    qword_27B9298 = 0;
    qword_27B92A0 = 0;
    qword_27B9290 = 0;
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

void sub_E293F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B92A8)
  {
    qword_27B92B0 = qword_27B92A8;
    operator delete(qword_27B92A8);
  }

  _Unwind_Resume(exception_object);
}

void sub_E294A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v14 = *sub_3B8500(v11);
  v83[3] = v12;
  v83[4] = v13;
  v83[5] = v10;
  __p[1] = 0;
  __p[0] = 0;
  v60[0] = 0;
  v81 = 1851878480;
  v82 = 4;
  sub_D89468(v83, __p);
  v15 = __p[0];
  if (__p[0])
  {
    v16 = __p[1];
    v17 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v18 = *(v16 - 25);
        v16 -= 6;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __p[0];
    }

    __p[1] = v15;
    operator delete(v17);
  }

  HIBYTE(v60[0]) = 12;
  strcpy(__p, "Plan.Started");
  sub_7BDA0(16, __p, v14);
  if (SHIBYTE(v60[0]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_7E9A4(v80);
  sub_EA51A8(v13, __p);
  v79 = *__p;
  v19 = v60[0];
  if (v60[0])
  {
    v20 = v60[1];
    v21 = v60[0];
    if (v60[1] != v60[0])
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
      v21 = v60[0];
    }

    v60[1] = v19;
    operator delete(v21);
  }

  if (*(&v79 + 1) != &off_2669FE0 || v79 != 0)
  {
    operator new();
  }

  v23 = *(sub_3B6890(v12) + 4);
  __p[0] = v13;
  LODWORD(__p[1]) = 5;
  v60[0] = v12;
  LOBYTE(v60[1]) = sub_E88F70(__p);
  *v61 = 0;
  sub_D11BD4(__p, v75);
  if (v75[0])
  {
    sub_D73D78(v78, __p);
    sub_7C9C0(16, __p, v14);
    v24 = v60[1];
    if (v60[1])
    {
      v25 = *v61;
      v26 = v60[1];
      if (*v61 != v60[1])
      {
        do
        {
          v27 = *(v25 - 25);
          v25 -= 6;
          if (v27 < 0)
          {
            operator delete(*v25);
          }
        }

        while (v25 != v24);
        v26 = v60[1];
      }

      *v61 = v24;
      operator delete(v26);
    }

    if (SHIBYTE(v60[0]) < 0)
    {
      operator delete(__p[0]);
    }

    sub_D48EC8(v13, v12, 16, v71);
    if (v71[0])
    {
      *v61 = 0u;
      *v60 = 0u;
      *__p = 0u;
      sub_195A048(__p, "TransitJourneyParserModule", 0x1AuLL);
      v69[0] = 1;
      v28 = *v61;
      if (*v61 >= *&v61[2])
      {
        v29 = sub_CCEBC0(&v60[1], "Runtime", v69, &v74);
      }

      else
      {
        sub_CCED74(*v61, "Runtime", v69, &v74);
        v29 = v28 + 48;
      }

      *v61 = v29;
      sub_7C9C0(16, __p, v14);
      v30 = v60[1];
      if (v60[1])
      {
        v31 = *v61;
        v32 = v60[1];
        if (*v61 != v60[1])
        {
          do
          {
            v33 = *(v31 - 25);
            v31 -= 6;
            if (v33 < 0)
            {
              operator delete(*v31);
            }
          }

          while (v31 != v30);
          v32 = v60[1];
        }

        *v61 = v30;
        operator delete(v32);
      }

      if (SHIBYTE(v60[0]) < 0)
      {
        operator delete(__p[0]);
      }

      sub_E89410(v13, __p);
      memset(v61, 0, sizeof(v61));
      v60[1] = 0;
      sub_A30F68(&v60[1], v72, v73, 0x34F72C234F72C235 * ((v73 - v72) >> 3));
      v62 = v23;
      v63 = sub_E7DD30(v13);
      v64 = sub_E7DD60(v13);
      v65 = sub_E85CC8(v13);
      v68 = 0;
      v66 = 0;
      v67 = 0;
      sub_D4C6F0(__p, v12, v34, v35, v36, v37, v38, v39);
      v40 = v66;
      if (v66)
      {
        v41 = v67;
        v42 = v66;
        if (v67 != v66)
        {
          do
          {
            v43 = *(v41 - 1);
            v41 -= 3;
            if (v43 < 0)
            {
              operator delete(*v41);
            }
          }

          while (v41 != v40);
          v42 = v66;
        }

        v67 = v40;
        operator delete(v42);
      }

      v44 = v60[1];
      if (v60[1])
      {
        v45 = *v61;
        v46 = v60[1];
        if (*v61 != v60[1])
        {
          do
          {
            v45 = sub_A30978(v45 - 29);
          }

          while (v45 != v44);
          v46 = v60[1];
        }

        *v61 = v44;
        operator delete(v46);
      }

      if (v69[0])
      {
        sub_CC6E68(v70, __p);
        sub_7C9C0(16, __p, v14);
        v47 = v60[1];
        if (v60[1])
        {
          v48 = *v61;
          v49 = v60[1];
          if (*v61 != v60[1])
          {
            do
            {
              v50 = *(v48 - 25);
              v48 -= 6;
              if (v50 < 0)
              {
                operator delete(*v48);
              }
            }

            while (v48 != v47);
            v49 = v60[1];
          }

          *v61 = v47;
          operator delete(v49);
        }

        if (SHIBYTE(v60[0]) < 0)
        {
          operator delete(__p[0]);
        }

        sub_E85CF8(v13, &v54);
        v57 = 0;
        v56 = 0;
        v58 = 0;
        v51 = v76;
        v52 = v77;
        if (v76 != v77)
        {
          v53 = 0;
          do
          {
            if (v53 >= v58)
            {
              v53 = sub_4EA43C(&v56, v51);
            }

            else
            {
              sub_4E9DA4(v53, v51);
              v53 += 440;
            }

            v57 = v53;
            v51 += 440;
          }

          while (v51 != v52);
        }

        sub_E7C7DC(v55);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_E2A234(_Unwind_Exception *a1)
{
  sub_E2B594(&STACK[0x1030]);
  sub_E2B64C(&STACK[0x10A0]);
  sub_E2B708(&STACK[0x1128]);
  sub_D130AC(&STACK[0x1150]);
  sub_9DA0(v1 - 168);
  _Unwind_Resume(a1);
}

void sub_E2A4D8(_Unwind_Exception *a1)
{
  if (*(v1 + 2943) < 0)
  {
    operator delete(*(v2 - 168));
  }

  sub_9E38(&STACK[0x670]);
  _Unwind_Resume(a1);
}

void *sub_E2A4FC(uint64_t *a1, uint64_t **a2, unsigned int *a3)
{
  if (!sub_7E7E4(3u))
  {
    goto LABEL_24;
  }

  sub_19594F8(&v18);
  v6 = sub_4A5C(&v18, "[transit route update] ", 23);
  v7 = *(a2 + 23);
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
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  sub_4A5C(v6, v8, v9);
  if ((v28 & 0x10) != 0)
  {
    v11 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v11 = v24;
    }

    v12 = v23;
    v10 = v11 - v23;
    if (v11 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_27:
      sub_3244();
    }

LABEL_14:
    if (v10 >= 0x17)
    {
      operator new();
    }

    v17 = v10;
    if (v10)
    {
      memmove(&__p, v12, v10);
    }

    goto LABEL_19;
  }

  if ((v28 & 8) != 0)
  {
    v12 = v21;
    v10 = v22 - v21;
    if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  v10 = 0;
  v17 = 0;
LABEL_19:
  *(&__p + v10) = 0;
  sub_7E854(&__p, 3u);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  std::locale::~locale(&v20);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_24:
  sub_143ACEC(&v18, 0, 0);
  v13 = sub_EC7E5C(*a3);
  LODWORD(v22) = v22 | 0x20;
  v29[0] = v13;
  sub_F256DC(*a1, *(a1[1] + 120) & 0xFFFFFFFFFFFFFFFELL, &v18);
  v14 = *(a1[2] + 24);
  if (!v14)
  {
    sub_2B7420();
  }

  (*(*v14 + 48))(v14, &v18);
  return sub_143B10C(&v18);
}

void sub_E2A7F4(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_E2A838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_143B10C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E2A84C@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "TransitGuidanceUpdaterModule", 0x1CuLL);
  v15 = 1;
  v14 = round(*a1);
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    v5 = sub_D8B2BC(a2 + 3, "Runtime", &v15, &v14);
  }

  else
  {
    sub_D8B470(a2[4], "Runtime", &v15, &v14);
    v5 = v4 + 48;
  }

  a2[4] = v5;
  v15 = 1;
  v14 = round(a1[1]);
  if (v5 >= a2[5])
  {
    v6 = sub_E22580(a2 + 3, "Runtime.RouteBuilder", &v15, &v14);
  }

  else
  {
    sub_E22734(v5, "Runtime.RouteBuilder", &v15, &v14);
    v6 = v5 + 48;
  }

  a2[4] = v6;
  v15 = 1;
  v14 = round(a1[2]);
  if (v6 >= a2[5])
  {
    v7 = sub_E2288C(a2 + 3, "Runtime.RouteBuilder.FeatureDataBuilder", &v15, &v14);
  }

  else
  {
    sub_E22A40(v6, "Runtime.RouteBuilder.FeatureDataBuilder", &v15, &v14);
    v7 = v6 + 48;
  }

  a2[4] = v7;
  v15 = 1;
  v14 = round(a1[3]);
  if (v7 >= a2[5])
  {
    v8 = sub_E231B0(a2 + 3, "Runtime.TimeDisplayTypeAnnotation", &v15, &v14);
  }

  else
  {
    sub_E23364(v7, "Runtime.TimeDisplayTypeAnnotation", &v15, &v14);
    v8 = v7 + 48;
  }

  a2[4] = v8;
  v15 = 1;
  v14 = round(a1[4]);
  if (v8 >= a2[5])
  {
    v9 = sub_E234BC(a2 + 3, "Runtime.BoardingInfoAnnotation", &v15, &v14);
  }

  else
  {
    sub_E23670(v8, "Runtime.BoardingInfoAnnotation", &v15, &v14);
    v9 = v8 + 48;
  }

  a2[4] = v9;
  v15 = 1;
  v14 = round(a1[5]);
  if (v9 >= a2[5])
  {
    v10 = sub_E23AD4(a2 + 3, "Runtime.VehiclePositionInfoAnnotation", &v15, &v14);
  }

  else
  {
    sub_E23C88(v9, "Runtime.VehiclePositionInfoAnnotation", &v15, &v14);
    v10 = v9 + 48;
  }

  a2[4] = v10;
  v15 = 1;
  v14 = round(a1[6]);
  if (v10 >= a2[5])
  {
    v11 = sub_E234BC(a2 + 3, "Runtime.ScheduleInfoAnnotation", &v15, &v14);
  }

  else
  {
    sub_E23670(v10, "Runtime.ScheduleInfoAnnotation", &v15, &v14);
    v11 = v10 + 48;
  }

  a2[4] = v11;
  v15 = 1;
  v14 = round(a1[7]);
  if (v11 >= a2[5])
  {
    v12 = sub_E24704(a2 + 3, "Runtime.RouteHandleAnnotation", &v15, &v14);
  }

  else
  {
    sub_E248B8(v11, "Runtime.RouteHandleAnnotation", &v15, &v14);
    v12 = v11 + 48;
  }

  a2[4] = v12;
  v15 = 1;
  v14 = round(a1[8]);
  if (v12 >= a2[5])
  {
    result = sub_E234BC(a2 + 3, "Runtime.GuidanceUpdatesBuilder", &v15, &v14);
    a2[4] = result;
  }

  else
  {
    sub_E23670(v12, "Runtime.GuidanceUpdatesBuilder", &v15, &v14);
    result = v12 + 48;
    a2[4] = v12 + 48;
  }

  return result;
}

void sub_E2AC24(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_E2AD10@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "TransitRouteUpdateResponseBuilderModule", 0x27uLL);
  v7 = 1;
  v6 = round(*a1);
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    result = sub_D8B2BC(a2 + 3, "Runtime", &v7, &v6);
    a2[4] = result;
  }

  else
  {
    sub_D8B470(a2[4], "Runtime", &v7, &v6);
    result = v4 + 48;
    a2[4] = v4 + 48;
  }

  return result;
}

void sub_E2ADE8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_E2AE14(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2B7420();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void *sub_E2AE5C(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
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
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  v6 = a1[3];
  if (v6)
  {
    v7 = a1[4];
    v8 = a1[3];
    if (v7 != v6)
    {
      do
      {
        v7 = sub_A30978(v7 - 29);
      }

      while (v7 != v6);
      v8 = a1[3];
    }

    a1[4] = v6;
    operator delete(v8);
  }

  return a1;
}

void *sub_E2AF08(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v8 = *a3;
  v9 = a3[1];
  __p = a1 + 1;
  LOBYTE(v26) = 0;
  if (v9 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  a1[4] = a6;
  sub_D28710((a1 + 5), a5);
  __p = 0;
  v26 = 0;
  v27 = 0;
  sub_E22244(&__p, 0x6FB586FB586FB587 * ((a4[1] - *a4) >> 3));
  v10 = *a4;
  v11 = a4[1];
  if (*a4 == v11)
  {
    v12 = v26;
  }

  else
  {
    v12 = v26;
    do
    {
      if (v12 >= v27)
      {
        v12 = sub_4EA43C(&__p, v10);
      }

      else
      {
        sub_4E9DA4(v12, v10);
        v12 += 440;
      }

      v26 = v12;
      v10 += 440;
    }

    while (v10 != v11);
  }

  v13 = __p;
  if (__p != v12)
  {
    while (*(v13 + 44) != 1)
    {
      v13 += 440;
      if (v13 == v12)
      {
        goto LABEL_16;
      }
    }
  }

  if (v13 == v12)
  {
LABEL_16:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v13 = &unk_27337E8;
  }

  sub_4E9DA4((a1 + 202), v13);
  v14 = __p;
  if (__p)
  {
    v15 = v26;
    v16 = __p;
    if (v26 != __p)
    {
      do
      {
        v15 = sub_44FDEC(v15 - 440);
      }

      while (v15 != v14);
      v16 = __p;
    }

    v26 = v14;
    operator delete(v16);
  }

  __p = 0;
  v26 = 0;
  v27 = 0;
  sub_E22244(&__p, 0x6FB586FB586FB587 * ((a4[1] - *a4) >> 3));
  v18 = *a4;
  v17 = a4[1];
  if (v18 == v17)
  {
    v20 = __p;
    v19 = v26;
    if (__p != v26)
    {
LABEL_31:
      while (*(v20 + 44) != 2)
      {
        v20 += 440;
        if (v20 == v19)
        {
          goto LABEL_35;
        }
      }
    }
  }

  else
  {
    v19 = v26;
    do
    {
      while (v19 >= v27)
      {
        v19 = sub_4EA43C(&__p, v18);
        v26 = v19;
        v18 += 440;
        if (v18 == v17)
        {
          goto LABEL_28;
        }
      }

      sub_4E9DA4(v19, v18);
      v19 += 440;
      v26 = v19;
      v18 += 440;
    }

    while (v18 != v17);
LABEL_28:
    v20 = __p;
    if (__p != v19)
    {
      goto LABEL_31;
    }
  }

  if (v20 == v19)
  {
LABEL_35:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v20 = &unk_27337E8;
  }

  sub_4E9DA4((a1 + 257), v20);
  v21 = __p;
  if (__p)
  {
    v22 = v26;
    v23 = __p;
    if (v26 != __p)
    {
      do
      {
        v22 = sub_44FDEC(v22 - 440);
      }

      while (v22 != v21);
      v23 = __p;
    }

    v26 = v21;
    operator delete(v23);
  }

  return a1;
}

void sub_E2B27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_guard_abort(&qword_27339A0);
  sub_44FD90(va);
  sub_44FDEC(v3 + 1616);
  sub_528AB4(v3 + 40);
  sub_1AA90(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_E2B348(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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

void sub_E2B424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_2C19CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_E2B448(uint64_t a1)
{
  sub_44FDEC(a1 + 2056);
  sub_44FDEC(a1 + 1616);
  sub_528AB4(a1 + 40);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 16) = v2;
      operator delete(v4);
      return a1;
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
        v4 = *(a1 + 8);
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t sub_E2B4F8(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_143B10C((a1 + 8));
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

uint64_t sub_E2B594(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
      if (v3 != v2)
      {
        do
        {
          v3 -= 1064;
          sub_9C0DEC(v3);
        }

        while (v3 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_15:
      operator delete(v4);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v6 != v5)
      {
        do
        {
          if (*(v6 - 1) < 0)
          {
            operator delete(*(v6 - 24));
          }

          v6 -= 32;
        }

        while (v6 != v5);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v5;
      goto LABEL_15;
    }
  }

  return a1;
}

uint64_t sub_E2B64C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
      if (v3 != v2)
      {
        do
        {
          v5 = v3 - 240;
          sub_A30978((v3 - 232));
          v3 = v5;
        }

        while (v5 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_15:
      operator delete(v4);
    }
  }

  else
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v7 != v6)
      {
        do
        {
          if (*(v7 - 1) < 0)
          {
            operator delete(*(v7 - 24));
          }

          v7 -= 32;
        }

        while (v7 != v6);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v6;
      goto LABEL_15;
    }
  }

  return a1;
}

uint64_t sub_E2B708(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      v2 = *(result + 16);
      v3 = *(result + 8);
      if (v2 != v1)
      {
        v4 = result;
        do
        {
          v2 -= 29;
          sub_A30978(v2);
        }

        while (v2 != v1);
        result = v4;
        v3 = *(v4 + 8);
      }

      *(result + 16) = v1;
      v5 = result;
      operator delete(v3);
      return v5;
    }
  }

  return result;
}

void sub_E2B788()
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
  xmmword_27B92E8 = 0u;
  unk_27B92F8 = 0u;
  dword_27B9308 = 1065353216;
  sub_3A9A34(&xmmword_27B92E8, v0, v0);
  sub_3A9A34(&xmmword_27B92E8, v3, v3);
  sub_3A9A34(&xmmword_27B92E8, __p, __p);
  sub_3A9A34(&xmmword_27B92E8, v9, v9);
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
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_E2B958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27B92E8);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_E2B9D0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *sub_3B8500(a2);
  v31 = a4;
  v32 = a3;
  LOBYTE(v25) = 0;
  v26 = 0;
  LOBYTE(v27) = 0;
  v28 = 0;
  LOBYTE(v29) = 0;
  v30 = 0;
  __p = 0uLL;
  v22 = 1851878480;
  v23 = 4;
  v20 = 0;
  sub_D89468(&v24, &__p);
  v9 = __p;
  if (__p)
  {
    v10 = *(&__p + 1);
    v11 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p;
    }

    *(&__p + 1) = v9;
    operator delete(v11);
  }

  HIBYTE(v20) = 12;
  strcpy(&__p, "Plan.Started");
  sub_7BDA0(29, &__p, v8);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  sub_7E9A4(v21);
  if (sub_E6A348(a1))
  {
    v15 = 0;
    v18 = 0;
    v16 = 0;
    v17 = 0;
    __dst[0] = a1;
    memset(&__dst[1], 0, 24);
    LOBYTE(v14) = 0;
    sub_D213E0(__dst, a2, 29);
  }

  operator new();
}

void sub_E2C3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DE6C64(va);
  sub_DE6D00(v3 - 144);
  sub_D28608(&STACK[0x758]);
  sub_9DA0(&STACK[0xDF0]);
  _Unwind_Resume(a1);
}

void sub_E2C494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39)
{
  sub_DE6A10(&a39);
  sub_D28608(&STACK[0x758]);
  sub_9DA0(&STACK[0xDF0]);
  _Unwind_Resume(a1);
}

void sub_E2C4B8(_Unwind_Exception *a1)
{
  sub_D28608(&STACK[0x758]);
  sub_9DA0(&STACK[0xDF0]);
  _Unwind_Resume(a1);
}

void sub_E2C4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
    sub_D28608(&STACK[0x758]);
    sub_9DA0(&STACK[0xDF0]);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xE2C52CLL);
}

void sub_E2C504(_Unwind_Exception *a1)
{
  sub_D28608(&STACK[0x758]);
  sub_9DA0(&STACK[0xDF0]);
  _Unwind_Resume(a1);
}

void sub_E2C520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_9DA0(&a39);
  sub_D28608(&STACK[0x758]);
  sub_9DA0(&STACK[0xDF0]);
  _Unwind_Resume(a1);
}

void sub_E2C544(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x76F]) < 0)
  {
    operator delete(STACK[0x758]);
    sub_9DA0(&STACK[0xDF0]);
    _Unwind_Resume(a1);
  }

  sub_9DA0(&STACK[0xDF0]);
  _Unwind_Resume(a1);
}

void *sub_E2C5D4(void *a1, uint64_t **a2, unsigned int *a3, uint64_t a4)
{
  if (!sub_7E7E4(3u))
  {
    goto LABEL_24;
  }

  sub_19594F8(&v21);
  v8 = sub_4A5C(&v21, "[transit vehicle position] ", 27);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = a2[1];
  }

  sub_4A5C(v8, v10, v11);
  if ((v31 & 0x10) != 0)
  {
    v13 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v13 = v27;
    }

    v14 = v26;
    v12 = v13 - v26;
    if (v13 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_29:
      sub_3244();
    }

LABEL_14:
    if (v12 >= 0x17)
    {
      operator new();
    }

    v20 = v12;
    if (v12)
    {
      memmove(&__p, v14, v12);
    }

    goto LABEL_19;
  }

  if ((v31 & 8) != 0)
  {
    v14 = v24;
    v12 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v12 = 0;
  v20 = 0;
LABEL_19:
  *(&__p + v12) = 0;
  sub_7E854(&__p, 3u);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  std::locale::~locale(&v23);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_24:
  sub_18FD3D0(&v21, 0, 0);
  v15 = sub_EC7E5C(*a3);
  LODWORD(v25) = v25 | 0x20;
  v32 = v15;
  v16 = *(*a1 + 24);
  if (v16)
  {
    (*(*v16 + 48))(v16, a4);
  }

  v17 = *(a1[1] + 24);
  if (!v17)
  {
    sub_2B7420();
  }

  (*(*v17 + 48))(v17, &v21);
  return sub_18FDA18(&v21);
}

void sub_E2C8F0(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_E2C934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_18FDA18(va);
  _Unwind_Resume(a1);
}

void sub_E2C948()
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
  xmmword_27B9340 = 0u;
  *algn_27B9350 = 0u;
  dword_27B9360 = 1065353216;
  sub_3A9A34(&xmmword_27B9340, v0, v0);
  sub_3A9A34(&xmmword_27B9340, v3, v3);
  sub_3A9A34(&xmmword_27B9340, __p, __p);
  sub_3A9A34(&xmmword_27B9340, v9, v9);
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
    qword_27B9318 = 0;
    qword_27B9320 = 0;
    qword_27B9310 = 0;
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

void sub_E2CB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B9328)
  {
    qword_27B9330 = qword_27B9328;
    operator delete(qword_27B9328);
  }

  _Unwind_Resume(exception_object);
}

void sub_E2CC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  v12 = *sub_3B8500(v9);
  sub_7E9A4(&v15);
  v14 = 30;
  sub_DEB6E0(30, v11, v10);
  sub_D72984(&v13, v11, 0x1Eu, v12, v10);
}

void sub_E357B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __cxa_guard_abort(&qword_2733CA8);
  if (*(v11 + 967) < 0)
  {
    operator delete(STACK[0x2E40]);
  }

  sub_1959728(&STACK[0x3130]);
  sub_E1EB50(&STACK[0x37E0]);
  sub_D35A8C(va);
  if (*(v11 + 943) < 0)
  {
    operator delete(STACK[0x2E28]);
  }

  sub_454784(&STACK[0x2370]);
  sub_419F70(&STACK[0x23A0]);
  sub_1758FB8(&STACK[0x2668]);
  sub_1758FB8(&STACK[0x2428]);
  sub_CD5434(&STACK[0x28A8]);
  sub_785D84(&STACK[0x29F0]);
  sub_9B91D8(&STACK[0x2A10]);
  sub_E36548(&STACK[0x2A30]);
  sub_49AE64(&STACK[0x2A50]);
  v13 = STACK[0x2A70];
  if (STACK[0x2A70])
  {
    STACK[0x2A78] = v13;
    operator delete(v13);
  }

  sub_44FD90(&STACK[0x2A90]);
  v14 = STACK[0x2AA8];
  if (STACK[0x2AA8])
  {
    STACK[0x2AB0] = v14;
    operator delete(v14);
  }

  sub_5287C0(&STACK[0x2AC0]);
  sub_454784(&STACK[0x2D70]);
  sub_CF3C94(&STACK[0x2DA8]);
  _Unwind_Resume(a1);
}

uint64_t sub_E364AC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_E02D74((a1 + 8));
      v3 = *v2;
LABEL_12:
      operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = *(a1 + 32);
      v3 = *(a1 + 24);
      if (v5 != v4)
      {
        do
        {
          if (*(v5 - 1) < 0)
          {
            operator delete(*(v5 - 24));
          }

          v5 -= 32;
        }

        while (v5 != v4);
        v3 = *(a1 + 24);
      }

      *(a1 + 32) = v4;
      goto LABEL_12;
    }
  }

  return a1;
}

void ***sub_E36548(void ***a1)
{
  if (*a1)
  {
    sub_E02D74(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_E36584(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X8>)
{
  ++*(a1 + 80);
  *a4 = 1;
  *(a4 + 8) = 0;
  if (*(a1 + 8) == &off_2669FE0 && *a1 == 0)
  {
    sub_7E9A4(v11);
    sub_E3716C(v10, *a2, a2[1], a2[2], a2[3], a2[4]);
  }

  sub_434934(v12, a1);
  v6 = v14;
  v7 = v15;
  v8 = *__p;
  *(a4 + 8) = *v12;
  *(a4 + 24) = v8;
  *(a4 + 40) = v6;
  *(a4 + 48) = v7;
  *a4 = 0;
}

void sub_E3703C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2733CC8);
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  sub_1959728(&STACK[0x2D0]);
  sub_E37894(&STACK[0x250]);
  sub_CD6274(v1);
  _Unwind_Resume(a1);
}

void sub_E3716C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = sub_E7A738(a2);
  *(a1 + 17) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = a5;
  *(a1 + 80) = a6;
  *(a1 + 88) = xmmword_2297C10;
  operator new();
}

void sub_E375E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(&a10);
  sub_5C010(&a21);
  sub_1A104((v21 + 48));
  sub_1A104(v22);
  _Unwind_Resume(a1);
}

void sub_E37644(_Unwind_Exception *a1)
{
  sub_1A104((v1 + 48));
  sub_1A104(v2);
  _Unwind_Resume(a1);
}

void sub_E37660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void **a18)
{
  sub_1A104(&a18);
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1A104((v18 + 48));
    sub_1A104(v19);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xE37624);
}

uint64_t sub_E3769C(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_E3779C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "CustomRouteRequestValidationModule", 0x22uLL);
  v6 = 1;
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    result = sub_D0ACE4(a2 + 3, "Runtime", &v6, a1);
    a2[4] = result;
  }

  else
  {
    sub_D0AE98(a2[4], "Runtime", &v6, a1);
    result = v4 + 48;
    a2[4] = v4 + 48;
  }

  return result;
}

void sub_E37868(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void *sub_E37894(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[6];
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
      v4 = a1[6];
    }

    a1[7] = v2;
    operator delete(v4);
  }

  v6 = a1[3];
  if (v6)
  {
    v7 = a1[4];
    v8 = a1[3];
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
      v8 = a1[3];
    }

    a1[4] = v6;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_E37950(uint64_t a1, uint64_t a2)
{
  if (*a1 != 1)
  {
    if (*a2)
    {
      sub_E37A64(a1, a1 + 8, a1 + 8, (a2 + 8));
      goto LABEL_10;
    }

LABEL_9:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_10;
  }

  if (!*a2)
  {
    sub_DE37FC(a1, a1 + 8);
    goto LABEL_9;
  }

  sub_CEBD3C(a1 + 8, (a2 + 8));
  v4 = (a1 + 48);
  if (*(a1 + 48))
  {
    sub_E02D74((a1 + 48));
    operator delete(*v4);
    *v4 = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
LABEL_10:
  *a1 = *a2;
  return a1;
}

__n128 sub_E37A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = *(a3 + 24);
    v9 = *(a3 + 16);
    if (v8 != v6)
    {
      do
      {
        if (*(v8 - 1) < 0)
        {
          operator delete(*(v8 - 24));
        }

        v8 -= 32;
      }

      while (v8 != v6);
      v9 = *(a3 + 16);
    }

    *(a3 + 24) = v6;
    operator delete(v9);
  }

  v10 = *a4;
  v11 = a4[1];
  *a4 = 0;
  *a2 = v10;
  *(a2 + 8) = v11;
  a4[1] = 0;
  v12 = a4[2];
  *(a2 + 16) = v12;
  v13 = a4[3];
  *(a2 + 24) = v13;
  *(a2 + 32) = *(a4 + 8);
  if (v13)
  {
    v14 = *(v12 + 8);
    v15 = *(a2 + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v14 >= v15)
      {
        v14 %= v15;
      }
    }

    else
    {
      v14 &= v15 - 1;
    }

    *(v10 + 8 * v14) = a2 + 16;
    a4[2] = 0;
    a4[3] = 0;
  }

  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = *(a4 + 5);
  *(a2 + 56) = a4[7];
  a4[5] = 0;
  a4[6] = 0;
  a4[7] = 0;
  result = *(a4 + 4);
  v17 = *(a4 + 5);
  v18 = *(a4 + 7);
  *(a2 + 96) = *(a4 + 6);
  *(a2 + 112) = v18;
  *(a2 + 64) = result;
  *(a2 + 80) = v17;
  return result;
}

uint64_t sub_E37B7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, char a6, void *a7, void *a8, int a9)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0u;
  v17 = a1 + 32;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = sub_6EECC();
  v18 = sub_3B6890(a4);
  v19 = *v18;
  *(a1 + 92) = *(v18 + 8);
  *(a1 + 84) = v19;
  *(a1 + 96) = sub_E7A3D0(a2);
  *(a1 + 97) = sub_E7A124(a2);
  *(a1 + 105) = v20;
  *(a1 + 112) = a4;
  *(a1 + 120) = a5;
  *(a1 + 128) = sub_E81AFC(a2);
  *(a1 + 136) = v21;
  *(a1 + 144) = sub_E7AAC4(a2);
  *(a1 + 152) = 0x7FFFFFFFFFFFFFFELL;
  *(a1 + 160) = sub_E80EE4(a2);
  *(a1 + 168) = 0;
  *(a1 + 176) = *a7;
  *(a1 + 184) = sub_E7A5E0(a2);
  *(a1 + 192) = *a8;
  *(a1 + 200) = a6;
  HIBYTE(__p[2]) = 19;
  strcpy(__p, "WalkingRouteFinding");
  v50[0] = 0;
  v50[1] = 0;
  v51 = 0;
  v22 = sub_3AEC94(a4, __p, v50);
  v23 = v50[0];
  if (v50[0])
  {
    v24 = v50[1];
    v25 = v50[0];
    if (v50[1] != v50[0])
    {
      do
      {
        v26 = *(v24 - 1);
        v24 -= 3;
        if (v26 < 0)
        {
          operator delete(*v24);
        }
      }

      while (v24 != v23);
      v25 = v50[0];
    }

    v50[1] = v23;
    operator delete(v25);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 208) = v22;
  *(a1 + 216) = sub_102B908(a4, (a1 + 97), *(a1 + 144), v22);
  *(a1 + 224) = a9;
  sub_101A994(a3, a4, __p);
  v27 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v27;
    operator delete(v27);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *__p;
  v28 = __p[2];
  v29 = __p[3];
  memset(__p, 0, 24);
  *(a1 + 16) = v28;
  *(a1 + 24) = v29;
  v30 = *(a1 + 32);
  if (v30)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 32);
    if (v31 != v30)
    {
      v33 = *(a1 + 40);
      do
      {
        v35 = *(v33 - 32);
        v33 -= 32;
        v34 = v35;
        if (v35)
        {
          *(v31 - 24) = v34;
          operator delete(v34);
        }

        v31 = v33;
      }

      while (v33 != v30);
      v32 = *v17;
    }

    *(a1 + 40) = v30;
    operator delete(v32);
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
  }

  *(a1 + 32) = v46;
  *(a1 + 48) = v47;
  v47 = 0;
  v46 = 0uLL;
  v36 = *(a1 + 56);
  if (v36)
  {
    v37 = *(a1 + 64);
    v38 = *(a1 + 56);
    if (v37 != v36)
    {
      v39 = *(a1 + 64);
      do
      {
        v41 = *(v39 - 40);
        v39 -= 40;
        v40 = v41;
        if (v41)
        {
          *(v37 - 32) = v40;
          operator delete(v40);
        }

        v37 = v39;
      }

      while (v39 != v36);
      v38 = *(a1 + 56);
    }

    *(a1 + 64) = v36;
    operator delete(v38);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  *(a1 + 56) = v48;
  *(a1 + 72) = v49;
  v49 = 0;
  v48 = 0uLL;
  *(a1 + 168) = sub_DE195C(a1);
  v42 = *(a1 + 208);
  HIBYTE(v51) = 12;
  strcpy(v50, "max_distance");
  v43 = sub_5F8FC(v42, v50);
  *(a1 + 152) = sub_A89E58(v43);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

  sub_D78EB0(__p);
  return a1;
}

void sub_E37ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_D78EB0(&__p);
  sub_5ECEBC((v14 + 56));
  sub_39393C(v15);
  v17 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v17;
    operator delete(v17);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E37F98(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_E38098(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = a1 + 8;
      if (*(a1 + 8))
      {
        sub_E02D74(v4);
        operator delete(*v4);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

LABEL_20:
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a1 + 32) = *(a2 + 32);
      goto LABEL_21;
    }

    v8 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_E02D74(v8);
      operator delete(*v8);
    }

    *v8 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 24);
        if (v6 != v5)
        {
          do
          {
            if (*(v6 - 1) < 0)
            {
              operator delete(*(v6 - 24));
            }

            v6 -= 32;
          }

          while (v6 != v5);
          v7 = *(a1 + 24);
        }

        *(a1 + 32) = v5;
        operator delete(v7);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      goto LABEL_20;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_21:
  *a1 = *a2;
  return a1;
}

void sub_E382F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E38400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E3841C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  operator new();
}

void sub_E3873C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_5C010(va);
  sub_5C010(va1);
  sub_1A104((v3 + 32));
  sub_1A104(v4);
  _Unwind_Resume(a1);
}

void sub_E38798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void **a18)
{
  sub_1A104(&a18);
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1A104((v18 + 32));
    sub_1A104(v19);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xE38780);
}

void sub_E387D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0x7FFFFFFFFFFFFFFFLL;
  sub_E99EA8(a2, &v3);
  operator new();
}

void sub_E38B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(&a20);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_CF3C94(&a33);
  sub_5C010(v33 - 88);
  _Unwind_Resume(a1);
}

void sub_E38BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
    sub_5C010(v32 - 88);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xE38BACLL);
}

void sub_E38BE8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v8 = 0;
  LOBYTE(__p) = 0;
  sub_5FB24(&__p, v9, a1, a2);
  if (v8 < 0)
  {
    operator delete(__p);
    v6 = v10;
    v5 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v6 = v9[1];
    }

    if (!v6)
    {
LABEL_5:
      if ((v5 & 0x80) == 0)
      {
        return;
      }

LABEL_11:
      operator delete(v9[0]);
      return;
    }
  }

  else
  {
    v4 = v10;
    v5 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v4 = v9[1];
    }

    if (!v4)
    {
      goto LABEL_5;
    }
  }

  *a3 = sub_A89E58(v9);
  if ((v10 & 0x80) != 0)
  {
    goto LABEL_11;
  }
}

void sub_E38C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_E38CC4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
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
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  v6 = a1[1];
  if (v6)
  {
    v7 = a1[2];
    v8 = a1[1];
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
      v8 = a1[1];
    }

    a1[2] = v6;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_E38D80(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_E38E80@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "WalkingCustomRouteSelectionModule", 0x21uLL);
  v8 = 1;
  v4 = a2[4];
  if (v4 >= a2[5])
  {
    v5 = sub_CCEBC0(a2 + 3, "Runtime", &v8, a1);
    a2[4] = v5;
    v7 = 4;
    if (v5 >= a2[5])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_CCED74(a2[4], "Runtime", &v8, a1);
    v5 = v4 + 48;
    a2[4] = v5;
    v7 = 4;
    if (v5 >= a2[5])
    {
LABEL_3:
      result = sub_D7AD4C(a2 + 3, "Routes", &v7, a1 + 1);
      a2[4] = result;
      return result;
    }
  }

  sub_D7AF00(v5, "Routes", &v7, a1 + 1);
  result = v5 + 48;
  a2[4] = v5 + 48;
  return result;
}

void sub_E38FA0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void *sub_E38FF8(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
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
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  v6 = a1[5];
  if (v6)
  {
    v7 = a1[6];
    v8 = a1[5];
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
      v8 = a1[5];
    }

    a1[6] = v6;
    operator delete(v8);
  }

  return a1;
}

void sub_E390B4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *v9 = 0u;
  *v10 = 0u;
  v11 = 1065353216;
  memset(__p, 0, sizeof(__p));
  sub_E1BA68(a2, v2, v3, v4, v5, v6, v7, v9, __p);
}

void sub_E39184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_616CD4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E391A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  *a1 = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  sub_D7EBF4(a1 + 80, *a8, a8[1], 0xEEEEEEEEEEEEEEEFLL * ((a8[1] - *a8) >> 4));
  *(a1 + 104) = 0;
  sub_4ED880(a9, a1 + 112);
  *(a1 + 144) = a9;
  *(a1 + 152) = sub_4EF390(a9);
  *(a1 + 160) = v10;
  sub_E80194(*(a1 + 16), a1 + 168);
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  *(a1 + 344) = -1;
  *(a1 + 352) = 0x7FFFFFFF;
  *(a1 + 360) = -1;
  *(a1 + 368) = -1;
  *(a1 + 376) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 384) = 0;
  *(a1 + 392) = -1935635296;
  *(a1 + 400) = 0;
  *(a1 + 407) = 0;
  *(a1 + 416) = 0;
  *(a1 + 440) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 448) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 456) = 100;
  *(a1 + 464) = 0u;
  *(a1 + 480) = vnegq_f64(v11);
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 520) = 1;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 728) = -1;
  *(a1 + 736) = -1;
  *(a1 + 744) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 760) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  return a1;
}

void sub_E39310(_Unwind_Exception *a1)
{
  sub_4F3AA4(v1 + 112);
  sub_49AE64((v1 + 80));
  _Unwind_Resume(a1);
}

uint64_t sub_E3932C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, _OWORD *a6, uint64_t *a7, uint64_t *a8)
{
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v77 = *a7;
  v14 = sub_3B2E6C(a5);
  sub_2C1B08(v59, v14);
  v65 = 1;
  sub_E85008(a2, v59, &v66);
  v42 = a6;
  v15 = sub_3B6890(a5);
  v16 = *v15;
  v17 = *(v15 + 8);
  sub_559C9C(v55);
  bzero(&v56, 0x348uLL);
  sub_5C0A00(v58);
  v18 = sub_E7A5E0(a2);
  v19 = sub_E1E518(a2, a4, a3, a5);
  v20 = sub_E7FD98(a2);
  v52 = 0;
  v53 = sub_E80738(a2);
  v54 = v21;
  v50 = 0;
  v51 = 0;
  v49 = *a8;
  LOBYTE(a8) = sub_E7AAC4(a2);
  sub_5F328(v47);
  __p = 0;
  v45 = 0;
  v46 = 0;
  v22 = sub_E89630(a2);
  sub_E1E688(a1, a3, a4, a5, v42, &v78, &v77, &v66, v16, v17, v55, v18, v19, v20 & 0xFFFFFFFFFFLL, &v53, &v50, &v49, a8, v47, &__p, v22);
  v23 = __p;
  if (__p)
  {
    v24 = v45;
    v25 = __p;
    if (v45 == __p)
    {
LABEL_13:
      v45 = v23;
      operator delete(v25);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v24 - 1) < 0)
      {
        operator delete(*(v24 - 3));
        v26 = *(v24 - 6);
        if (v26)
        {
          do
          {
LABEL_7:
            v27 = *v26;
            operator delete(v26);
            v26 = v27;
          }

          while (v27);
        }
      }

      else
      {
        v26 = *(v24 - 6);
        if (v26)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v24 - 8);
      *(v24 - 8) = 0;
      if (v28)
      {
        operator delete(v28);
      }

      v24 -= 9;
      if (v24 == v23)
      {
        v25 = __p;
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  v29 = v48;
  if (v48)
  {
    do
    {
      v30 = *v29;
      v31 = *(v29 + 12);
      if (v31 != -1)
      {
        (off_2674180[v31])(&v77, v29 + 5);
      }

      *(v29 + 12) = -1;
      if (*(v29 + 39) < 0)
      {
        operator delete(v29[2]);
      }

      operator delete(v29);
      v29 = v30;
    }

    while (v30);
  }

  v32 = v47[0];
  v47[0] = 0;
  if (v32)
  {
    operator delete(v32);
  }

  v33 = v50;
  if (v50)
  {
    v34 = v51;
    v35 = v50;
    if (v51 != v50)
    {
      do
      {
        v36 = *(v34 - 1);
        v34 -= 3;
        if (v36 < 0)
        {
          operator delete(*v34);
        }
      }

      while (v34 != v33);
      v35 = v50;
    }

    v51 = v33;
    operator delete(v35);
  }

  sub_5C0F34(v58);
  v37 = v56;
  if (v56)
  {
    v38 = v57;
    v39 = v56;
    if (v57 != v56)
    {
      do
      {
        v38 = sub_3A9518(v38 - 1120);
      }

      while (v38 != v37);
      v39 = v56;
    }

    v57 = v37;
    operator delete(v39);
  }

  sub_559E70(v55);
  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v74 < 0)
  {
    operator delete(v73);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (v65 == 1)
  {
    if (v64 < 0)
    {
      operator delete(v63);
      if ((v62 & 0x80000000) == 0)
      {
LABEL_49:
        if ((v60 & 0x80000000) == 0)
        {
          goto LABEL_50;
        }

LABEL_55:
        operator delete(v59[0]);
        v40 = v78;
        if (!v78)
        {
          return a1;
        }

        goto LABEL_51;
      }
    }

    else if ((v62 & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    operator delete(v61);
    if (v60 < 0)
    {
      goto LABEL_55;
    }
  }

LABEL_50:
  v40 = v78;
  if (v78)
  {
LABEL_51:
    v79 = v40;
    operator delete(v40);
  }

  return a1;
}

void sub_E39714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_D0AA6C(&a38);
  sub_D71D0C(&STACK[0x8C0]);
  sub_D71D80(&STACK[0x870]);
  v40 = *(v38 - 112);
  if (v40)
  {
    *(v38 - 104) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

void sub_E397A8()
{
  byte_27B9437 = 3;
  LODWORD(qword_27B9420) = 5136193;
  byte_27B944F = 3;
  LODWORD(qword_27B9438) = 5136194;
  byte_27B9467 = 3;
  LODWORD(qword_27B9450) = 5136195;
  byte_27B947F = 15;
  strcpy(&qword_27B9468, "vehicle_mass_kg");
  byte_27B9497 = 21;
  strcpy(&xmmword_27B9480, "vehicle_cargo_mass_kg");
  byte_27B94AF = 19;
  strcpy(&qword_27B9498, "vehicle_aux_power_w");
  byte_27B94C7 = 15;
  strcpy(&qword_27B94B0, "dcdc_efficiency");
  strcpy(&qword_27B94C8, "drive_train_efficiency");
  HIBYTE(word_27B94DE) = 22;
  operator new();
}

void sub_E39C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_objecta, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (qword_27B93B0)
  {
    qword_27B93B8 = qword_27B93B0;
    operator delete(qword_27B93B0);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_E39D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  v12 = *sub_3B8500(v9);
  sub_7E9A4(&v15);
  v14 = 15;
  sub_DEB6E0(15, v11, v10);
  sub_D72984(&v13, v11, 0xFu, v12, v10);
}

void sub_E43E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __cxa_guard_abort(&qword_2733CA8);
  if (*(v16 + 23) < 0)
  {
    operator delete(STACK[0x3000]);
  }

  sub_1959728(&STACK[0x30C0]);
  sub_E1EB50(&STACK[0x3800]);
  sub_D35A8C(va);
  if (*(v16 + 1935) < 0)
  {
    operator delete(STACK[0x3778]);
  }

  sub_454784(&STACK[0x2380]);
  sub_419F70(&STACK[0x23B0]);
  sub_1758FB8(&STACK[0x2678]);
  sub_1758FB8(&STACK[0x2438]);
  sub_CD5434(&STACK[0x28B8]);
  sub_785D84(&STACK[0x2A00]);
  sub_9B91D8(&STACK[0x2A20]);
  sub_E36548(&STACK[0x2A40]);
  sub_49AE64(&STACK[0x2A60]);
  sub_44FD90(&STACK[0x2A80]);
  if (LOBYTE(STACK[0x2AB8]) == 1)
  {
    v18 = STACK[0x2AA0];
    if (STACK[0x2AA0])
    {
      STACK[0x2AA8] = v18;
      operator delete(v18);
    }
  }

  sub_E450A4(&STACK[0x2AC0]);
  sub_5287C0(&STACK[0x2AF8]);
  sub_CF3C94(&STACK[0x2DA8]);
  _Unwind_Resume(a1);
}

uint64_t sub_E44EA8(__int128 **a1, uint64_t a2, char *a3, double *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) + 1;
  if (v5 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v5)
  {
    v5 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 16 * (a1[1] - *a1);
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
  }

  *(v8 + 24) = v9;
  *(v8 + 32) = v10;
  *(v8 + 40) = v11;
  v12 = *a1;
  v13 = a1[1];
  v14 = &(*a1)[v8 / 0x10] - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = &(*a1)[v8 / 0x10] - v13;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 3;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = (v8 + 48);
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v8 + 48;
}

void sub_E45090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

void **sub_E450A4(void **result)
{
  if (*(result + 48) == 1)
  {
    v1 = result;
    if (*(result + 47) < 0)
    {
      operator delete(result[3]);
      result = v1;
    }

    v2 = *result;
    if (*result)
    {
      v3 = result[1];
      v4 = *result;
      if (v3 != v2)
      {
        do
        {
          v3 -= 552;
          sub_4547F0(v3);
        }

        while (v3 != v2);
        result = v1;
        v4 = *v1;
      }

      result[1] = v2;
      operator delete(v4);
      return v1;
    }
  }

  return result;
}

void sub_E45134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  HIBYTE(v8[2]) = 21;
  strcpy(v8, "WalkingRouteSelection");
  memset(__p, 0, sizeof(__p));
  v6 = sub_3AEC94(a3, v8, __p);
  sub_E45254(a1, a2, a3, v6);
}

void sub_E45230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E45254(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = 17;
  strcpy(__p, "return_all_routes");
  v7 = sub_5F9D0(a4, __p);
  if (v21 < 0)
  {
    v8 = v7;
    operator delete(*__p);
    v7 = v8;
  }

  *a1 = v7;
  v21 = 13;
  strcpy(__p, "filter_config");
  v9 = sub_5F8FC(a4, __p);
  v10 = sub_DE2824(v9);
  if (v21 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 4) = v10;
  v21 = 14;
  strcpy(__p, "max_num_routes");
  v12 = sub_353010(a4, __p);
  v13 = sub_E89098(a2);
  if (v13 < v12)
  {
    v12 = v13;
  }

  if (v21 < 0)
  {
    operator delete(*__p);
  }

  *(a1 + 8) = v12;
  v21 = 20;
  strcpy(__p, "max_relative_sharing");
  v14 = sub_63D34(a4, __p);
  if (v21 < 0)
  {
    v15 = v14;
    operator delete(*__p);
    v14 = v15;
  }

  *(a1 + 16) = v14;
  v21 = 20;
  strcpy(__p, "min_line_distance_cm");
  v16 = sub_353010(a4, __p);
  if (v21 < 0)
  {
    v17 = v16;
    operator delete(*__p);
    v16 = v17;
  }

  *(a1 + 24) = v16;
  strcpy(__p, "score_threshold_factor");
  v21 = 22;
  v18 = sub_63D34(a4, __p);
  if (v21 < 0)
  {
    v19 = v18;
    operator delete(*__p);
    v18 = v19;
  }

  *(a1 + 32) = v18;
  operator new();
}

void sub_E45808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_5C010(v32 - 120);
  v34 = *(v31 + 24);
  if (v34)
  {
    *(v30 + 248) = v34;
    operator delete(v34);
    v35 = *v31;
    if (!*v31)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v35 = *v31;
    if (!*v31)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  *(v30 + 224) = v35;
  operator delete(v35);
  goto LABEL_6;
}

uint64_t sub_E458FC(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_E459FC(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

void sub_E45AFC()
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
  xmmword_27B9558 = 0u;
  unk_27B9568 = 0u;
  dword_27B9578 = 1065353216;
  sub_3A9A34(&xmmword_27B9558, v0, v0);
  sub_3A9A34(&xmmword_27B9558, v3, v3);
  sub_3A9A34(&xmmword_27B9558, __p, __p);
  sub_3A9A34(&xmmword_27B9558, v9, v9);
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
    byte_27B9597 = 3;
    LODWORD(qword_27B9580) = 5136193;
    byte_27B95AF = 3;
    LODWORD(qword_27B9598) = 5136194;
    byte_27B95C7 = 3;
    LODWORD(qword_27B95B0) = 5136195;
    byte_27B95DF = 15;
    strcpy(&qword_27B95C8, "vehicle_mass_kg");
    byte_27B95F7 = 21;
    strcpy(&xmmword_27B95E0, "vehicle_cargo_mass_kg");
    byte_27B960F = 19;
    strcpy(&qword_27B95F8, "vehicle_aux_power_w");
    byte_27B9627 = 15;
    strcpy(&qword_27B9610, "dcdc_efficiency");
    strcpy(&qword_27B9628, "drive_train_efficiency");
    HIBYTE(word_27B963E) = 22;
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

void sub_E45F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B9540)
  {
    qword_27B9548 = qword_27B9540;
    operator delete(qword_27B9540);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_E46008(_BYTE *a1, void *a2)
{
  v8 = 6;
  strcpy(__p, "limits");
  v3 = sub_5F8FC(a2, __p);
  v4 = sub_E9A5F0(v3);
  if (v8 < 0)
  {
    v6 = v4;
    operator delete(__p[0]);
    *a1 = v6;
  }

  else
  {
    *a1 = v4;
  }

  return a1;
}

void sub_E460A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E460BC(uint64_t a1@<X0>, unsigned __int8 *a3@<X2>, __n128 *a4@<X8>)
{
  *v8 = 0;
  *&v8[8] = &off_2669FE0;
  sub_434934(a4, v8);
  if (sub_E81734(a1))
  {
    sub_E9B4D4(v9, a1, *a3, a4, v7);
    if (sub_585D8(v9))
    {
      operator new();
    }

    if (v11 < 0)
    {
      operator delete(v10);
    }
  }
}

void sub_E462DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_CF3C94(&a9);
  if ((a27 & 0x80000000) == 0)
  {
    sub_CF3C94(v27);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_CF3C94(v27);
  _Unwind_Resume(a1);
}

void sub_E46490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E46860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 16);
  if (v16)
  {
    *(v14 + 24) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_E468C4(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a4@<X8>)
{
  v9.n128_u64[0] = 0;
  v9.n128_u64[1] = &off_2669FE0;
  sub_434934(a4, &v9);
  sub_E99EA8(a1, &v6);
  HIBYTE(v8[2]) = 19;
  strcpy(v8, "EVRequestValidation");
  memset(v7, 0, sizeof(v7));
  sub_3AEC94(a2, v8, v7);
  operator new();
}

void sub_E46F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  sub_CF3C94(&a10);
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
    sub_CF3C94(v37);
    _Unwind_Resume(a1);
  }

  sub_CF3C94(v37);
  _Unwind_Resume(a1);
}

void sub_E47464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *(v14 + 16);
  if (v16)
  {
    *(v14 + 24) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_E474B4(uint64_t a1, uint64_t a2)
{
  sub_E9A4CC(a1, a2, &v4);
  v6 = 19;
  strcpy(__p, "EVRequestValidation");
  memset(v7, 0, sizeof(v7));
  sub_3AEC94(a2, __p, v7);
  operator new();
}

void sub_E47B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_CF3C94(&a9);
  if (*(v10 - 145) < 0)
  {
    operator delete(*(v10 - 168));
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  sub_CF3C94(v9);
  v12 = *(v10 - 128);
  if (v12)
  {
    *(v10 - 120) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_E47C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1A104((v9 - 216));
  if (*(v9 - 169) < 0)
  {
    operator delete(*(v9 - 192));
    sub_1A104((v9 - 168));
    if (SLOBYTE(STACK[0x2C7]) < 0)
    {
LABEL_5:
      operator delete(STACK[0x2B0]);
      sub_6BB60(&a9);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104((v9 - 168));
    if (SLOBYTE(STACK[0x2C7]) < 0)
    {
      goto LABEL_5;
    }
  }

  JUMPOUT(0xE47BFCLL);
}

void sub_E480CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 16);
  if (v16)
  {
    *(v14 + 24) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_E48138(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned __int8 *a4)
{
  if (sub_585D8(a4))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = v8 ? v8 + 8 : 0;
    if (v7)
    {
      v10 = 8 * v7;
      while (*(*v9 + 80))
      {
        v9 += 8;
        v10 -= 8;
        if (!v10)
        {
          return;
        }
      }

      if ((v7 & ~(v7 >> 31)) != 0)
      {
        v11 = 0;
        v12 = v7;
        do
        {
          v13 = *(*(a1 + 40) + 8 * v11 + 8);
          if ((*(v13 + 40) & 2) != 0)
          {
            v15 = sub_1218A44(v22, 0, 0);
            if (sub_194DB28(v15, *(v13 + 464) & 0xFFFFFFFFFFFFFFFELL))
            {
              operator new();
            }

            operator new();
          }

          if (*(a1 + 32) != 1 || v11 != *(a1 + 32) - 1)
          {
            operator new();
          }

          v16 = *a2;
          v17 = a2[1];
          if (v16 != -1 || v17 != -1)
          {
            v19 = *a3;
            v20 = a3[1];
            if (__PAIR64__(v20, v19) != -1)
            {
              v21 = sqrt(((v16 - v19) * (v16 - v19) + (v17 - v20) * (v17 - v20))) / 100.0 * 100.0;
              if (v21 < 4.50359963e15)
              {
                v21 = (((v21 + v21) + 1) >> 1);
              }

              if (v21 >= 9.22337204e18 || v21 >= 50001)
              {
                operator new();
              }
            }
          }

          ++v11;
        }

        while (v11 != v12);
      }
    }
  }
}

void sub_E4873C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  sub_1218EBC(v56 - 184);
  _Unwind_Resume(a1);
}

void sub_E487B8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  if (sub_585D8(a3) && (*(a1 + 40) & 1) == 0)
  {
    operator new();
  }

  if (sub_585D8(a4) && !*(a1 + 80))
  {
    operator new();
  }

  v9 = *(a1 + 56);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = &v11[v9];
  v13 = 0;
  do
  {
    v14 = *v11++;
    sub_E48AA8(v14, a2, a4, a5);
    v13 += *(v14 + 84);
  }

  while (v11 != v12);
  if ((*(a1 + 40) & 2) != 0 && !v13)
  {
    v15 = sub_E9BBF0(a5);
    if (v16 == &off_2669FE0 && !v15)
    {
      operator new();
    }
  }
}

void sub_E48A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E48AA8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v6 = *(a1 + 40);
  if ((v6 & 8) == 0)
  {
    operator new();
  }

  if ((v6 & 0x10) == 0)
  {
    operator new();
  }

  if (sub_585D8(a4))
  {
    v7 = *(a1 + 40);
    if ((v7 & 0x40) == 0)
    {
      operator new();
    }

    if ((v7 & 0x80) != 0)
    {
      operator new();
    }
  }

  if (sub_585D8(a3))
  {
    if ((*(a1 + 88) & 0x80000000) != 0)
    {
      operator new();
    }
  }
}

void sub_E48D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E48D58(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7)
{
  if ((*(a1 + 16) & 4) == 0)
  {
    operator new();
  }

  if (!*(a1 + 32))
  {
    operator new();
  }

  sub_E48138(a1, a2, a3, a7);
  v12 = *(a1 + 32);
  if (v12 >= 1)
  {
    v13 = 8;
    do
    {
      sub_E487B8(*(*(a1 + 40) + v13), a4, a5, a6, a7);
      v13 += 8;
      --v12;
    }

    while (v12);
  }
}

void sub_E48EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E48F10(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v6.n128_u64[0] = 0;
  v6.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v6);
  sub_E9A3AC(a1, a2, &v6);
  HIBYTE(v7[2]) = 19;
  strcpy(v7, "EVRequestValidation");
  memset(v5, 0, sizeof(v5));
  sub_3AEC94(a2, v7, v5);
  operator new();
}

void sub_E49AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, void *a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{
  if (*(v50 - 153) < 0)
  {
    operator delete(*(v50 - 176));
  }

  if (*(v50 - 89) < 0)
  {
    operator delete(*(v50 - 112));
  }

  sub_CF3C94(&a32);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  sub_5287C0(&a49);
  v52 = *(v50 - 232);
  if (v52)
  {
    *(v50 - 224) = v52;
    operator delete(v52);
    sub_CF3C94(v49);
    _Unwind_Resume(a1);
  }

  sub_CF3C94(v49);
  _Unwind_Resume(a1);
}

void sub_E49FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void **a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1A104(&a22);
    if ((*(v22 - 49) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a22);
    if ((*(v22 - 49) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v22 - 72));
  _Unwind_Resume(a1);
}

void sub_E4A06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == 1)
  {
    if (sub_E6F45C(a3) == 16777220 && sub_E6F018(a3))
    {
      v5 = sub_74700();
      sub_73EC4(v5);
    }

    v6 = *(a1 + 32);
    v13 = 9;
    strcpy(__p, "EVRouting");
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v7 = sub_3AEC94(v6, __p, &v14);
    sub_5ADDC(v17, v7);
    v8 = v14;
    if (v14)
    {
      v9 = v15;
      v10 = v14;
      if (v15 != v14)
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
        v10 = v14;
      }

      v15 = v8;
      operator delete(v10);
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    sub_448F9C(v17, a3);
  }
}

void sub_E4A704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_6BC10((v26 - 176));
  if (*(v26 - 129) < 0)
  {
    operator delete(*(v26 - 152));
  }

  sub_6BB60(v26 - 128);
  _Unwind_Resume(a1);
}

void *sub_E4A7B8(uint64_t a1, void *a2, void *a3)
{
  v11 = 9;
  strcpy(__p, "connector");
  v4 = sub_5F8FC(a2, __p);
  if (v11 < 0)
  {
    v5 = v4;
    operator delete(__p[0]);
    v4 = v5;
  }

  v6 = sub_99114(v4);
  v11 = 7;
  strcpy(__p, "power_w");
  v7 = sub_6470C();
  if (v11 < 0)
  {
    v8 = v7;
    operator delete(__p[0]);
    v7 = v8;
  }

  return sub_E6F47C(a3, v6, v7, 0x7FFFFFFF);
}

void sub_E4A89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E4A8BC(uint64_t a1, void *a2, void *a3)
{
  v19 = 7;
  strcpy(__p, "adapter");
  v5 = sub_5F8FC(a2, __p);
  if (v19 < 0)
  {
    v6 = v5;
    operator delete(*__p);
    v5 = v6;
  }

  v7 = sub_99114(v5);
  v19 = 20;
  strcpy(__p, "associated_connector");
  v8 = sub_5F8FC(a2, __p);
  if (v19 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  v10 = sub_99114(v8);
  sub_E6F038(a3, __p);
  v11 = *__p;
  if (*__p != *&__p[8])
  {
    while (*v11 != v10)
    {
      v11 += 16;
      if (v11 == *&__p[8])
      {
        v11 = *&__p[8];
        break;
      }
    }
  }

  sub_E6F038(a3, __p);
  if (v11 != *&__p[8] && sub_96DDC(v11))
  {
    return sub_E6F6F0(a3, v7, *(v11 + 1), *(v11 + 2));
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(__p);
    sub_4A5C(__p, "Trying to add EV adapter without valid associated connector.", 60);
    if ((v27 & 0x10) != 0)
    {
      v14 = v26;
      if (v26 < v23)
      {
        v26 = v23;
        v14 = v23;
      }

      v15 = v22;
      v13 = v14 - v22;
      if (v14 - v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if ((v27 & 8) == 0)
      {
        v13 = 0;
        v17 = 0;
LABEL_25:
        *(&__dst + v13) = 0;
        sub_7E854(&__dst, 3u);
        if (v17 < 0)
        {
          operator delete(__dst);
        }

        if (v25 < 0)
        {
          operator delete(v24);
        }

        std::locale::~locale(&__p[16]);
        std::ostream::~ostream();
        return std::ios::~ios();
      }

      v15 = v20;
      v13 = v21 - v20;
      if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_31:
        sub_3244();
      }
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v17 = v13;
    if (v13)
    {
      memmove(&__dst, v15, v13);
    }

    goto LABEL_25;
  }

  return result;
}

void sub_E4AC3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

void sub_E4AC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E4AC8C(uint64_t a1, unsigned int **a2, void *a3)
{
  sub_E6F038(a3, v11);
  sub_455B80((a1 + 16), v11, a2, &v12);
  a3[3] = a3[2];
  a3[5] = 0;
  v6 = v12;
  v7 = v13;
  if (v12 == v13)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_3;
  }

  do
  {
    v8 = *v6;
    v9 = *(v6 + 1);
    v10 = *(v6 + 2);
    if (v6[12] == 1)
    {
      sub_E6F6F0(a3, v8, v9, v10);
    }

    else
    {
      sub_E6F47C(a3, v8, v9, v10);
    }

    v6 += 16;
  }

  while (v6 != v7);
  v6 = v12;
  if (v12)
  {
LABEL_3:
    v13 = v6;
    operator delete(v6);
  }
}

void sub_E4AD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E4AD68(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, __n128 *a4@<X8>)
{
  v53.n128_u64[0] = 0;
  v53.n128_u64[1] = &off_2669FE0;
  sub_434934(a4, &v53);
  if (!sub_E7F33C(a1) || !sub_3B6984(a2))
  {
    return;
  }

  v9 = sub_E9B4D4(v56, a1, *a3, a4, v8);
  if (sub_585D8(v9))
  {
    v11 = &off_2772E28;
    if (*(a1 + 336))
    {
      v11 = *(a1 + 336);
    }

    v12 = v11[11];
    if (!v12)
    {
      v12 = &off_2773678;
    }

    v13 = v12[4];
    if (!v13)
    {
      v13 = &off_2773608;
    }

    v14 = v13[4];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = &off_2773580;
    }

    sub_E4B348(v15, (a3 + 8), a2, &v53);
    sub_E9BBFC(v56, &v53);
    v16 = __p;
    if (__p)
    {
      v17 = v55;
      v18 = __p;
      if (v55 != __p)
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

      v55 = v16;
      operator delete(v18);
    }
  }

  sub_E9B4D4(v50, a1, a3[1], a4, v10);
  if (sub_585D8(v50))
  {
    v20 = *(a1 + 336);
    if (!v20)
    {
      v20 = &off_2772E28;
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
    v24 = sub_3B6890(a2);
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = &off_2773580;
    }

    sub_E4D0E0(v25, *(v24 + 4), &v53);
    sub_E9BBFC(v50, &v53);
    v26 = __p;
    if (__p)
    {
      v27 = v55;
      v28 = __p;
      if (v55 != __p)
      {
        do
        {
          if (*(v27 - 1) < 0)
          {
            operator delete(*(v27 - 3));
          }

          v27 -= 4;
        }

        while (v27 != v26);
        v28 = __p;
      }

      v55 = v26;
      operator delete(v28);
    }
  }

  sub_E9B4D4(v47, a1, a3[2], a4, v19);
  if (sub_585D8(v47))
  {
    if (*(a1 + 42))
    {
      v30 = *(a1 + 336);
      if (!v30)
      {
        v30 = &off_2772E28;
      }

      v31 = v30[11];
      if (!v31)
      {
        v31 = &off_2773678;
      }

      v32 = v31[4];
      if (!v32)
      {
        v32 = &off_2773608;
      }

      v33 = v32[4];
      if (v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = &off_2773580;
      }

      sub_E5A340(*(a1 + 424), v34, &v53);
    }

    else
    {
      v45.n128_u64[0] = 0;
      v45.n128_u64[1] = &off_2669FE0;
      sub_434934(&v53, &v45);
    }

    sub_E9BBFC(v47, &v53);
    v35 = __p;
    if (__p)
    {
      v36 = v55;
      v37 = __p;
      if (v55 != __p)
      {
        do
        {
          if (*(v36 - 1) < 0)
          {
            operator delete(*(v36 - 3));
          }

          v36 -= 4;
        }

        while (v36 != v35);
        v37 = __p;
      }

      v55 = v35;
      operator delete(v37);
    }
  }

  sub_E9B4D4(&v45, a1, a3[3], a4, v29);
  if (sub_585D8(&v45))
  {
    v38 = *(a1 + 336);
    if (!v38)
    {
      v38 = &off_2772E28;
    }

    v39 = v38[11];
    if (!v39)
    {
      v39 = &off_2773678;
    }

    v40 = v39[3];
    v41 = &off_2773640;
    if (v40)
    {
      v41 = v40;
    }

    sub_E4D634((v41 + 3), a2, &v53);
    sub_E9BBFC(&v45, &v53);
    v42 = __p;
    if (__p)
    {
      v43 = v55;
      v44 = __p;
      if (v55 != __p)
      {
        do
        {
          if (*(v43 - 1) < 0)
          {
            operator delete(*(v43 - 3));
          }

          v43 -= 4;
        }

        while (v43 != v42);
        v44 = __p;
      }

      v55 = v42;
      operator delete(v44);
    }
  }

  sub_E4DC0C(a1, a2, a4);
  sub_E4DF50(a1, &a4[1]);
  if ((v46 & 0x80000000) == 0)
  {
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_81:
    operator delete(v48);
    if ((v52 & 0x80000000) == 0)
    {
LABEL_78:
      if ((v58 & 0x80000000) == 0)
      {
        return;
      }

LABEL_83:
      operator delete(v57);
      return;
    }

    goto LABEL_82;
  }

  operator delete(v45.n128_u64[1]);
  if (v49 < 0)
  {
    goto LABEL_81;
  }

LABEL_77:
  if ((v52 & 0x80000000) == 0)
  {
    goto LABEL_78;
  }

LABEL_82:
  operator delete(v51);
  if (v58 < 0)
  {
    goto LABEL_83;
  }
}

void sub_E4B1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  sub_CF3C94(&a33);
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a31 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  if ((a31 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v34 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a26);
  if ((*(v34 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    sub_CF3C94(v33);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(*(v34 - 96));
  sub_CF3C94(v33);
  _Unwind_Resume(a1);
}

void sub_E4B348(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  *v127 = 0;
  *&v127[8] = &off_2669FE0;
  v8 = sub_434934(a4, v127);
  v9 = *(a1 + 76);
  v10 = (~*(a1 + 16) & 0x480) != 0 || v9 == 0;
  v11 = !v10;
  if (v10)
  {
    v127[0] = 11;
    v12 = a4[1].n128_u64[1];
    if (v12 >= a4[2].n128_u64[0])
    {
      v13 = sub_E5F610(&a4[1], v127, "Got an EV request that is missing the minimum, current or maximum battery charge.");
    }

    else
    {
      sub_E5F790(a4[1].n128_u64[1], v127, "Got an EV request that is missing the minimum, current or maximum battery charge.");
      v13 = v12 + 32;
    }

    a4[1].n128_u64[1] = v13;
    v9 = *(a1 + 76);
  }

  v14 = *(a1 + 72);
  v15 = v14 < *(a1 + 84) || v14 > v9;
  if (v15 && sub_7E7E4(1u))
  {
    sub_19594F8(v127);
    sub_4A5C(v127, "Got an EV request where current charge is outside of the [min,max] interval: current charge is ", 95);
    v16 = std::ostream::operator<<();
    sub_4A5C(v16, " Wh, but the interval of allowed battery charges is [", 53);
    v17 = std::ostream::operator<<();
    sub_4A5C(v17, ",", 1);
    v18 = std::ostream::operator<<();
    sub_4A5C(v18, "]", 1);
    if ((v135 & 0x10) != 0)
    {
      v20 = v134;
      if (v134 < v131)
      {
        v134 = v131;
        v20 = v131;
      }

      v21 = v130;
      v19 = v20 - v130;
      if (v20 - v130 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_118;
      }
    }

    else
    {
      if ((v135 & 8) == 0)
      {
        v19 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_30:
        __dst.__r_.__value_.__s.__data_[v19] = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (v133 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v127[16]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_35;
      }

      v21 = v128;
      v19 = v129 - v128;
      if ((v129 - v128) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_118:
        sub_3244();
      }
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v19;
    if (v19)
    {
      memmove(&__dst, v21, v19);
    }

    goto LABEL_30;
  }

LABEL_35:
  v22 = *(a1 + 76);
  if (*(a1 + 84) >= v22)
  {
    v127[0] = 11;
    v23 = a4[1].n128_u64[1];
    if (v23 >= a4[2].n128_u64[0])
    {
      v24 = sub_E5F8B0(&a4[1], v127, "Got an EV request that has an equal or higher minimum battery charge than the maximum charge.");
    }

    else
    {
      sub_E5FA30(a4[1].n128_u64[1], v127, "Got an EV request that has an equal or higher minimum battery charge than the maximum charge.");
      v24 = v23 + 32;
    }

    v11 = 0;
    a4[1].n128_u64[1] = v24;
    v22 = *(a1 + 76);
  }

  v8.n128_u32[0] = *(a1 + 72);
  if (v22 * 1.1 < v8.n128_u64[0])
  {
    v127[0] = 11;
    v25 = a4[1].n128_u64[1];
    if (v25 >= a4[2].n128_u64[0])
    {
      v26 = sub_E5FB50(&a4[1], v127, "Got an EV request that has a significantly higher current battery charge than the maximum charge.");
    }

    else
    {
      sub_E5FCD0(a4[1].n128_u64[1], v127, "Got an EV request that has a significantly higher current battery charge than the maximum charge.");
      v26 = v25 + 32;
    }

    v11 = 0;
    a4[1].n128_u64[1] = v26;
  }

  if (*(a1 + 84) >> 5 >= 0x271u && sub_7E7E4(1u))
  {
    sub_19594F8(v127);
    v27 = sub_4A5C(v127, "Got an EV request with a minimum battery charge >= 20 kWh.", 58);
    sub_E5B05C(a1, &__dst);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    sub_4A5C(v27, p_dst, size);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
      v30 = v135;
      if ((v135 & 0x10) == 0)
      {
LABEL_55:
        if ((v30 & 8) == 0)
        {
          v31 = 0;
          *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_66:
          __dst.__r_.__value_.__s.__data_[v31] = 0;
          sub_7E854(&__dst, 1u);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (v133 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v127[16]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_71;
        }

        v33 = v128;
        v31 = v129 - v128;
        if ((v129 - v128) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_120:
          sub_3244();
        }

LABEL_61:
        if (v31 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v31;
        if (v31)
        {
          memmove(&__dst, v33, v31);
        }

        goto LABEL_66;
      }
    }

    else
    {
      v30 = v135;
      if ((v135 & 0x10) == 0)
      {
        goto LABEL_55;
      }
    }

    v32 = v134;
    if (v134 < v131)
    {
      v134 = v131;
      v32 = v131;
    }

    v33 = v130;
    v31 = v32 - v130;
    if (v32 - v130 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_120;
    }

    goto LABEL_61;
  }

LABEL_71:
  v34 = *(a1 + 76);
  if (v34 <= 0x3E8)
  {
    v127[0] = 11;
    v35 = a4[1].n128_u64[1];
    if (v35 >= a4[2].n128_u64[0])
    {
      v36 = sub_E5FDF0(&a4[1], v127, "Got an EV request with a maximum battery charge <= 1 kWh.");
    }

    else
    {
      sub_E5FF70(a4[1].n128_u64[1], v127, "Got an EV request with a maximum battery charge <= 1 kWh.");
      v36 = v35 + 32;
    }

    a4[1].n128_u64[1] = v36;
    v34 = *(a1 + 76);
  }

  if (v34 >> 6 >= 0xC35)
  {
    v127[0] = 11;
    v37 = a4[1].n128_u64[1];
    if (v37 >= a4[2].n128_u64[0])
    {
      v38 = sub_E5F610(&a4[1], v127, "Got an EV request with a maximum battery charge higher than 200kWh (Fargo patch).");
    }

    else
    {
      sub_E5F790(a4[1].n128_u64[1], v127, "Got an EV request with a maximum battery charge higher than 200kWh (Fargo patch).");
      v38 = v37 + 32;
    }

    a4[1].n128_u64[1] = v38;
    if (*(a1 + 76) >= 0x20C49Cu)
    {
      v127[0] = 11;
      v39 = a4[1].n128_u64[1];
      if (v39 >= a4[2].n128_u64[0])
      {
        v40 = sub_E60090(&a4[1], v127, "Got an EV request with a maximum battery charge higher than the maximum supported Energy.");
      }

      else
      {
        sub_E60210(a4[1].n128_u64[1], v127, "Got an EV request with a maximum battery charge higher than the maximum supported Energy.");
        v40 = v39 + 32;
      }

      v11 = 0;
      a4[1].n128_u64[1] = v40;
    }
  }

  if ((*(a1 + 16) & 0x20) != 0)
  {
    v43 = *(a1 + 64);
    if (v43 < 0x65)
    {
      goto LABEL_97;
    }

    LOBYTE(v121[0]) = 11;
    LODWORD(__dst.__r_.__value_.__l.__data_) = v43;
    sub_E5B2FC(v127, "%).", "Got an EV request where the current_battery_percentage is invalid (", v121[0], v121[1]);
    v44 = a4[1].n128_u64[1];
    if (v44 >= a4[2].n128_u64[0])
    {
      a4[1].n128_u64[1] = sub_E5C160(&a4[1], v121, v127);
      if ((v127[23] & 0x80000000) == 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      *v44 = v121[0];
      v45 = (v44 + 8);
      if ((v127[23] & 0x80000000) != 0)
      {
        sub_325C(v45, *v127, *&v127[8]);
        a4[1].n128_u64[1] = v44 + 32;
        if ((v127[23] & 0x80000000) == 0)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v46 = *v127;
        *(v44 + 24) = *&v127[16];
        *v45 = v46;
        a4[1].n128_u64[1] = v44 + 32;
        if ((v127[23] & 0x80000000) == 0)
        {
          goto LABEL_97;
        }
      }
    }

    operator delete(*v127);
    goto LABEL_97;
  }

  v127[0] = 11;
  v41 = a4[1].n128_u64[1];
  if (v41 >= a4[2].n128_u64[0])
  {
    v42 = sub_E60330(&a4[1], v127, "Got an EV request where the current_battery_percentage is not provided.");
  }

  else
  {
    sub_E604B0(a4[1].n128_u64[1], v127, "Got an EV request where the current_battery_percentage is not provided.");
    v42 = v41 + 32;
  }

  a4[1].n128_u64[1] = v42;
LABEL_97:
  v47 = 1000 * *(a1 + 84);
  v48 = 1000 * *(a1 + 76);
  if (!v11)
  {
    v47 = 0;
    v48 = 0;
  }

  v126[0] = v47;
  v126[1] = v48;
  if ((*(a1 + 16) & 0x40) != 0)
  {
    v49 = *(a1 + 68);
    if (v49 >= 0x7AE147AF)
    {
      v127[0] = 11;
      v50 = a4[1].n128_u64[1];
      if (v50 >= a4[2].n128_u64[0])
      {
        v51 = sub_E605D0(&a4[1], v127, "Got an EV request with a max range that exceeds the maximum supported Length.");
      }

      else
      {
        sub_E60750(a4[1].n128_u64[1], v127, "Got an EV request with a max range that exceeds the maximum supported Length.");
        v51 = v50 + 32;
      }

      a4[1].n128_u64[1] = v51;
      v49 = *(a1 + 68);
    }

    if (v49 >= 0x4C4B41 && sub_7E7E4(1u))
    {
      sub_19594F8(v127);
      v52 = sub_4A5C(v127, "Got an EV request with a max range of more than 5000 km.", 56);
      sub_E5B05C(a1, &__dst);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &__dst;
      }

      else
      {
        v53 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v54 = __dst.__r_.__value_.__l.__size_;
      }

      sub_4A5C(v52, v53, v54);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        v55 = v135;
        if ((v135 & 0x10) == 0)
        {
LABEL_115:
          if ((v55 & 8) == 0)
          {
            v56 = 0;
            *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_132:
            __dst.__r_.__value_.__s.__data_[v56] = 0;
            sub_7E854(&__dst, 1u);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (v133 < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v127[16]);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_137;
          }

          v58 = v128;
          v56 = v129 - v128;
          if ((v129 - v128) > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_305:
            sub_3244();
          }

LABEL_127:
          if (v56 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v56;
          if (v56)
          {
            memmove(&__dst, v58, v56);
          }

          goto LABEL_132;
        }
      }

      else
      {
        v55 = v135;
        if ((v135 & 0x10) == 0)
        {
          goto LABEL_115;
        }
      }

      v57 = v134;
      if (v134 < v131)
      {
        v134 = v131;
        v57 = v131;
      }

      v58 = v130;
      v56 = v57 - v130;
      if (v57 - v130 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_305;
      }

      goto LABEL_127;
    }
  }

LABEL_137:
  v59 = *(a1 + 56);
  if (v59)
  {
    v60 = *(a1 + 56);
  }

  else
  {
    v60 = &off_2772268;
  }

  if (!*(v60 + 12))
  {
    v124 = -1;
    v125 = -1;
    sub_66E3C((*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), &__dst);
    if (LODWORD(__dst.__r_.__value_.__r.__words[1]) != 5)
    {
      sub_5AF20();
    }

    sub_5ADDC(v127, __dst.__r_.__value_.__l.__data_);
    if (LODWORD(__dst.__r_.__value_.__r.__words[1]) != -1)
    {
      (off_2674330[LODWORD(__dst.__r_.__value_.__r.__words[1])])(v121, &__dst);
    }

    sub_66E3C((*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v121);
    if (LODWORD(v121[1]) != 5)
    {
      sub_5AF20();
    }

    sub_5ADDC(&__dst, v121[0]);
    if (LODWORD(v121[1]) != -1)
    {
      (off_2674330[LODWORD(v121[1])])(v136, v121);
    }

    HIBYTE(v122) = 8;
    strcpy(v121, "model_id");
    v61 = sub_5FC3C(v127, v121);
    if (SHIBYTE(v122) < 0)
    {
      v62 = v61;
      operator delete(v121[0]);
      if (!v62)
      {
        goto LABEL_153;
      }
    }

    else if (!v61)
    {
      goto LABEL_153;
    }

    HIBYTE(v122) = 8;
    strcpy(v121, "model_id");
    v125 = sub_353010(v127, v121);
    if (SHIBYTE(v122) < 0)
    {
      operator delete(v121[0]);
    }

LABEL_153:
    HIBYTE(v122) = 8;
    strcpy(v121, "model_id");
    v63 = sub_5FC3C(&__dst, v121);
    if (SHIBYTE(v122) < 0)
    {
      v64 = v63;
      operator delete(v121[0]);
      if (!v64)
      {
        goto LABEL_158;
      }
    }

    else if (!v63)
    {
      goto LABEL_158;
    }

    HIBYTE(v122) = 8;
    strcpy(v121, "model_id");
    v124 = sub_353010(&__dst, v121);
    if (SHIBYTE(v122) < 0)
    {
      operator delete(v121[0]);
      v65 = __dst.__r_.__value_.__r.__words[2];
      if (!__dst.__r_.__value_.__r.__words[2])
      {
        goto LABEL_166;
      }

      goto LABEL_161;
    }

LABEL_158:
    v65 = __dst.__r_.__value_.__r.__words[2];
    if (!__dst.__r_.__value_.__r.__words[2])
    {
      goto LABEL_166;
    }

    do
    {
LABEL_161:
      v66 = *v65;
      v67 = *(v65 + 12);
      if (v67 != -1)
      {
        (off_2674330[v67])(v121, v65 + 5);
      }

      *(v65 + 12) = -1;
      if (*(v65 + 39) < 0)
      {
        operator delete(v65[2]);
      }

      operator delete(v65);
      v65 = v66;
    }

    while (v66);
LABEL_166:
    v68 = __dst.__r_.__value_.__r.__words[0];
    __dst.__r_.__value_.__r.__words[0] = 0;
    if (v68)
    {
      operator delete(v68);
    }

    v69 = *&v127[16];
    if (*&v127[16])
    {
      do
      {
        v70 = *v69;
        v71 = *(v69 + 12);
        if (v71 != -1)
        {
          (off_2674330[v71])(&__dst, v69 + 5);
        }

        *(v69 + 12) = -1;
        if (*(v69 + 39) < 0)
        {
          operator delete(v69[2]);
        }

        operator delete(v69);
        v69 = v70;
      }

      while (v70);
    }

    v72 = *v127;
    *v127 = 0;
    if (v72)
    {
      operator delete(v72);
    }

    if (v125 == -1 || v124 == -1)
    {
      v75 = "Got an EV request without any supported charger plug in charger_plugs_info.supported_charger_plug";
      if ((*(a1 + 16) & 0x10) == 0)
      {
        v75 = "Got an EV request without charger_plugs_info set";
      }

      __dst.__r_.__value_.__r.__words[0] = v75;
      LOBYTE(v121[0]) = 11;
      sub_E5B894(&__dst.__r_.__value_.__l.__data_, " (consumption or charging model id invalid)", v127);
    }

    else
    {
      v73 = *a2;
      v74 = *(a2 + 8);
      if (*a2 != v74)
      {
        while (*v73 != v125)
        {
          if (++v73 == v74)
          {
            goto LABEL_187;
          }
        }
      }

      if (v73 != v74)
      {
        goto LABEL_196;
      }

LABEL_187:
      v76 = "Got an EV request without any supported charger plug in charger_plugs_info.supported_charger_plug";
      if ((*(a1 + 16) & 0x10) == 0)
      {
        v76 = "Got an EV request without charger_plugs_info set";
      }

      __dst.__r_.__value_.__r.__words[0] = v76;
      LOBYTE(v121[0]) = 11;
      sub_E5B598(&__dst.__r_.__value_.__l.__data_, " (consumption_model_id=", ", charging_model_id=", ").", v127);
    }

    v77 = a4[1].n128_u64[1];
    if (v77 >= a4[2].n128_u64[0])
    {
      a4[1].n128_u64[1] = sub_E5C160(&a4[1], v121, v127);
      if ((v127[23] & 0x80000000) != 0)
      {
        goto LABEL_195;
      }
    }

    else
    {
      *v77 = v121[0];
      v78 = (v77 + 8);
      if ((v127[23] & 0x80000000) != 0)
      {
        sub_325C(v78, *v127, *&v127[8]);
        a4[1].n128_u64[1] = v77 + 32;
        if ((v127[23] & 0x80000000) == 0)
        {
          goto LABEL_196;
        }

        goto LABEL_195;
      }

      v79 = *v127;
      *(v77 + 24) = *&v127[16];
      *v78 = v79;
      a4[1].n128_u64[1] = v77 + 32;
      if ((v127[23] & 0x80000000) != 0)
      {
LABEL_195:
        operator delete(*v127);
      }
    }

LABEL_196:
    v59 = *(a1 + 56);
  }

  if (v59)
  {
    v80 = v59;
  }

  else
  {
    v80 = &off_2772268;
  }

  v81 = *(v80 + 12);
  v82 = v80[7];
  v83 = v82 + 1;
  if (!v82)
  {
    v83 = 0;
  }

  if (!v81)
  {
    goto LABEL_231;
  }

  v84 = 8 * v81;
  while (*(*v83 + 6))
  {
    ++v83;
    v84 -= 8;
    if (!v84)
    {
      v85 = v82 + 1;
      if (!v82)
      {
        v85 = 0;
      }

      goto LABEL_215;
    }
  }

  v127[0] = 11;
  v86 = a4[1].n128_u64[1];
  if (v86 >= a4[2].n128_u64[0])
  {
    v87 = sub_E5FDF0(&a4[1], v127, "Got an EV request with an UNKNOWN supported charger plug.");
  }

  else
  {
    sub_E5FF70(a4[1].n128_u64[1], v127, "Got an EV request with an UNKNOWN supported charger plug.");
    v87 = v86 + 32;
  }

  a4[1].n128_u64[1] = v87;
  v81 = *(v80 + 12);
  v82 = v80[7];
  v85 = v82 + 1;
  if (!v82)
  {
    v85 = 0;
  }

  if (!v81)
  {
    goto LABEL_231;
  }

LABEL_215:
  v88 = 8 * v81;
  do
  {
    if ((*(*v85 + 16) & 2) == 0)
    {
      v127[0] = 11;
      v90 = a4[1].n128_u64[1];
      if (v90 >= a4[2].n128_u64[0])
      {
        v91 = sub_E60870(&a4[1], v127, "Got an EV request with a supported charger plug with unknown maximum power.");
      }

      else
      {
        sub_E609F0(a4[1].n128_u64[1], v127, "Got an EV request with a supported charger plug with unknown maximum power.");
        v91 = v90 + 32;
      }

      a4[1].n128_u64[1] = v91;
      v81 = *(v80 + 12);
      v92 = v80[7];
      if (v92)
      {
        v89 = v92 + 1;
      }

      else
      {
        v89 = 0;
      }

      if (v81)
      {
        goto LABEL_228;
      }

LABEL_231:
      if ((*(a1 + 16) & 1) == 0)
      {
        goto LABEL_251;
      }

LABEL_232:
      v94 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if ((*(v94 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v94 + 8))
        {
          goto LABEL_251;
        }
      }

      else if (!*(v94 + 23))
      {
        goto LABEL_251;
      }

      v127[23] = 19;
      strcpy(v127, "EVConsumptionModels");
      memset(&__dst, 0, sizeof(__dst));
      sub_3AEC94(a3, v127, &__dst);
      v95 = __dst.__r_.__value_.__r.__words[0];
      if (__dst.__r_.__value_.__r.__words[0])
      {
        v96 = __dst.__r_.__value_.__l.__size_;
        v97 = __dst.__r_.__value_.__r.__words[0];
        if (__dst.__r_.__value_.__l.__size_ != __dst.__r_.__value_.__r.__words[0])
        {
          do
          {
            v98 = *(v96 - 1);
            v96 -= 3;
            if (v98 < 0)
            {
              operator delete(*v96);
            }
          }

          while (v96 != v95);
          v97 = __dst.__r_.__value_.__r.__words[0];
        }

        __dst.__r_.__value_.__l.__size_ = v95;
        operator delete(v97);
      }

      if ((v127[23] & 0x80000000) != 0)
      {
        operator delete(*v127);
      }

      operator new();
    }

    ++v85;
    v88 -= 8;
  }

  while (v88);
  if (v82)
  {
    v89 = v82 + 1;
  }

  else
  {
    v89 = 0;
  }

LABEL_228:
  v93 = 8 * v81;
  while ((*(*v89 + 7) - 1000001) >= 0xFFF0BDC0)
  {
    ++v89;
    v93 -= 8;
    if (!v93)
    {
      goto LABEL_231;
    }
  }

  v127[0] = 11;
  v99 = a4[1].n128_u64[1];
  if (v99 >= a4[2].n128_u64[0])
  {
    v100 = sub_E60B10(&a4[1], v127, "Got an EV request with a supported charger plug with an invalid maximum power.");
  }

  else
  {
    sub_E60C90(a4[1].n128_u64[1], v127, "Got an EV request with a supported charger plug with an invalid maximum power.");
    v100 = v99 + 32;
  }

  a4[1].n128_u64[1] = v100;
  if (*(a1 + 16))
  {
    goto LABEL_232;
  }

LABEL_251:
  v127[0] = 12;
  v101 = a4[1].n128_u64[1];
  if (v101 >= a4[2].n128_u64[0])
  {
    v102 = sub_E5FDF0(&a4[1], v127, "Got an EV request with no or empty consumption arguments.");
  }

  else
  {
    sub_E5FF70(a4[1].n128_u64[1], v127, "Got an EV request with no or empty consumption arguments.");
    v102 = v101 + 32;
  }

  a4[1].n128_u64[1] = v102;
  if (v11)
  {
    if ((*(a1 + 16) & 2) == 0)
    {
      goto LABEL_265;
    }

    v103 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v103 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v103 + 8))
      {
        goto LABEL_265;
      }

LABEL_258:
      v127[23] = 16;
      strcpy(v127, "EVChargingModels");
      memset(&__dst, 0, sizeof(__dst));
      v104 = sub_3AEC94(a3, v127, &__dst);
      v105 = __dst.__r_.__value_.__r.__words[0];
      if (__dst.__r_.__value_.__r.__words[0])
      {
        v106 = __dst.__r_.__value_.__l.__size_;
        v107 = __dst.__r_.__value_.__r.__words[0];
        if (__dst.__r_.__value_.__l.__size_ != __dst.__r_.__value_.__r.__words[0])
        {
          do
          {
            v108 = *(v106 - 1);
            v106 -= 3;
            if (v108 < 0)
            {
              operator delete(*v106);
            }
          }

          while (v106 != v105);
          v107 = __dst.__r_.__value_.__r.__words[0];
        }

        __dst.__r_.__value_.__l.__size_ = v105;
        operator delete(v107);
      }

      if ((v127[23] & 0x80000000) != 0)
      {
        operator delete(*v127);
      }

      sub_66E3C((*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v127);
      if (*&v127[8] != 5)
      {
        sub_5AF20();
      }

      sub_5ADDC(&__dst, *v127);
      if (*&v127[8] != -1)
      {
        (off_2674330[*&v127[8]])(v121, v127);
      }

      sub_5F328(v121);
      sub_E50990(&__dst, v104, v121, 1, v126, v127);
      sub_434B40(a4, v127);
      v110 = *&v127[16];
      if (*&v127[16])
      {
        v111 = v128;
        v112 = *&v127[16];
        if (v128 != *&v127[16])
        {
          do
          {
            if (*(v111 - 1) < 0)
            {
              operator delete(*(v111 - 3));
            }

            v111 -= 4;
          }

          while (v111 != v110);
          v112 = *&v127[16];
        }

        v128 = v110;
        operator delete(v112);
      }

      v113 = v122;
      if (v122)
      {
        do
        {
          v114 = *v113;
          v115 = *(v113 + 12);
          if (v115 != -1)
          {
            (off_2674330[v115])(v127, v113 + 5);
          }

          *(v113 + 12) = -1;
          if (*(v113 + 39) < 0)
          {
            operator delete(v113[2]);
          }

          operator delete(v113);
          v113 = v114;
        }

        while (v114);
      }

      v116 = v121[0];
      v121[0] = 0;
      if (v116)
      {
        operator delete(v116);
      }

      v117 = __dst.__r_.__value_.__r.__words[2];
      if (__dst.__r_.__value_.__r.__words[2])
      {
        do
        {
          v118 = *v117;
          v119 = *(v117 + 12);
          if (v119 != -1)
          {
            (off_2674330[v119])(v127, v117 + 5);
          }

          *(v117 + 12) = -1;
          if (*(v117 + 39) < 0)
          {
            operator delete(v117[2]);
          }

          operator delete(v117);
          v117 = v118;
        }

        while (v118);
      }

      v120 = __dst.__r_.__value_.__r.__words[0];
      __dst.__r_.__value_.__r.__words[0] = 0;
      if (v120)
      {
        operator delete(v120);
      }
    }

    else
    {
      if (*(v103 + 23))
      {
        goto LABEL_258;
      }

LABEL_265:
      v127[0] = 12;
      v109 = a4[1].n128_u64[1];
      if (v109 >= a4[2].n128_u64[0])
      {
        a4[1].n128_u64[1] = sub_E61050(&a4[1], v127, "Got an EV request with no or empty charging arguments.");
      }

      else
      {
        sub_E611D0(a4[1].n128_u64[1], v127, "Got an EV request with no or empty charging arguments.");
        a4[1].n128_u64[1] = v109 + 32;
      }
    }
  }

  a4->n128_u64[0] = 2 * (a4[1].n128_u64[0] != a4[1].n128_u64[1]);
  a4->n128_u64[1] = &off_2669FE0;
}

void sub_E4CA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  *(v32 + 24) = v33;
  if (a32 < 0)
  {
    operator delete(__p);
    sub_CF3C94(v32);
    _Unwind_Resume(a1);
  }

  sub_CF3C94(v32);
  _Unwind_Resume(a1);
}

double sub_E4D0E0@<D0>(uint64_t a1@<X0>, int a2@<W1>, __n128 *a3@<X8>)
{
  if ((*(a1 + 17) & 8) == 0)
  {
    operator new();
  }

  v4 = *(a1 + 88) + 978307200;
  if (*(a1 + 88) == 1169176447)
  {
    operator new();
  }

  if (v4 > a2 + 10)
  {
    sub_35CC(&__p, v4);
    operator new();
  }

  __p.n128_u64[0] = 0;
  __p.n128_u64[1] = &off_2669FE0;
  *&result = sub_434934(a3, &__p).n128_u64[0];
  return result;
}

void sub_E4D4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (*(v37 - 41) < 0)
  {
    operator delete(*(v37 - 64));
    if (*(v37 - 73) < 0)
    {
LABEL_5:
      operator delete(*(v37 - 96));
      if (a30 < 0)
      {
LABEL_8:
        operator delete(__p);
        if ((a18 & 0x80000000) == 0)
        {
LABEL_13:
          sub_3874(&a19);
          if ((*(v37 - 105) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

LABEL_11:
        operator delete(a13);
        sub_3874(&a19);
        if ((*(v37 - 105) & 0x80000000) == 0)
        {
LABEL_15:
          if (*(v37 - 137) < 0)
          {
            operator delete(*(v37 - 160));
            if ((*(v37 - 161) & 0x80000000) == 0)
            {
              goto LABEL_17;
            }
          }

          else if ((*(v37 - 161) & 0x80000000) == 0)
          {
LABEL_17:
            if ((a36 & 0x80000000) == 0)
            {
LABEL_22:
              sub_3874(&a37);
              _Unwind_Resume(a1);
            }

LABEL_21:
            operator delete(a31);
            goto LABEL_22;
          }

          operator delete(*(v37 - 184));
          if ((a36 & 0x80000000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_14:
        operator delete(*(v37 - 128));
        goto LABEL_15;
      }

LABEL_10:
      if ((a18 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  else if (*(v37 - 73) < 0)
  {
    goto LABEL_5;
  }

  if (a30 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

void sub_E4D614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E4D634(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    v28.n128_u64[0] = 0;
    v28.n128_u64[1] = &off_2669FE0;
    sub_434934(a3, &v28);
    return;
  }

  v37 = 0u;
  v38 = 0u;
  v39 = 1065353216;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = 8 * v4;
  do
  {
    v10 = *v8;
    if (!*(*v8 + 32))
    {
      operator new();
    }

    v11 = *(v10 + 24);
    if (!v11)
    {
      v11 = &off_27734E8;
    }

    if ((v11[2] & 1) == 0)
    {
      operator new();
    }

    v12 = sub_3B1FA0(a2);
    nullsub_1();
    sub_3AF114();
    v14 = *v13;
    if (v14 && (sub_2D5658(v14) & 1) == 0 && (sub_2AB144(v12) & 1) == 0 && sub_7E7E4(3u))
    {
      sub_19594F8(v28.n128_f64);
      sub_4A5C(&v28, "Preferred network with (encrypted) muid=", 40);
      nullsub_1();
      v15 = std::ostream::operator<<();
      sub_4A5C(v15, " is not an active charging network in the current environment.", 62);
      if ((v36 & 0x10) != 0)
      {
        v17 = v35;
        v18 = &v31;
        if (v35 < v32)
        {
          v35 = v32;
          v17 = v32;
          v18 = &v31;
        }
      }

      else
      {
        if ((v36 & 8) == 0)
        {
          v16 = 0;
          v27 = 0;
LABEL_26:
          *(&__dst + v16) = 0;
          sub_7E854(&__dst, 3u);
          if (v27 < 0)
          {
            operator delete(__dst);
          }

          v28.n128_f64[0] = v25;
          *(v28.n128_u64 + *(*&v25 - 24)) = v24;
          if (v34 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v29);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_31;
        }

        v17 = v30[2];
        v18 = v30;
      }

      v19 = *v18;
      v16 = v17 - *v18;
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v27 = v17 - *v18;
      if (v16)
      {
        memmove(&__dst, v19, v16);
      }

      goto LABEL_26;
    }

LABEL_31:
    v20 = *(v10 + 24);
    if (!v20)
    {
      v20 = &off_27734E8;
    }

    v28.n128_u64[0] = v20[3];
    sub_E616A8(&v37, v28.n128_u64, &v28);
    ++v8;
    v9 -= 8;
  }

  while (v9);
  if (*(&v38 + 1) < *(a1 + 8))
  {
    operator new();
  }

  v28.n128_u64[0] = 0;
  v28.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v28);
  v21 = v38;
  if (v38)
  {
    do
    {
      v22 = *v21;
      operator delete(v21);
      v21 = v22;
    }

    while (v22);
  }

  v23 = v37;
  *&v37 = 0;
  if (v23)
  {
    operator delete(v23);
  }
}

void sub_E4DB5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    sub_11BD8(v26 - 128);
    _Unwind_Resume(a1);
  }

  sub_11BD8(v26 - 128);
  _Unwind_Resume(a1);
}

void *sub_E4DC0C(void *result, uint64_t a2, _DWORD *a3)
{
  if (!*a3)
  {
    result = sub_E83024(result);
    if (result)
    {
      v9 = 9;
      strcpy(__p, "EVRouting");
      v10 = 0;
      v11 = 0;
      v12 = 0;
      sub_3AEC94(a2, __p, &v10);
      v4 = v10;
      if (v10)
      {
        v5 = v11;
        v6 = v10;
        if (v11 != v10)
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
          v6 = v10;
        }

        v11 = v4;
        operator delete(v6);
      }

      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      operator new();
    }
  }

  return result;
}

void sub_E4DEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  if (*(v21 - 209) < 0)
  {
    operator delete(*(v21 - 232));
  }

  sub_44FA80((v21 - 208));
  _Unwind_Resume(a1);
}

void sub_E4DF50(uint64_t a1, uint64_t *a2)
{
  if (*a2 != a2[1])
  {
    v3 = &off_2772E28;
    if (*(a1 + 336))
    {
      v3 = *(a1 + 336);
    }

    v4 = v3[11];
    if (!v4)
    {
      v4 = &off_2773678;
    }

    v5 = v4[4];
    if (!v5)
    {
      v5 = &off_2773608;
    }

    v6 = v5[4];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = &off_2773580;
    }

    sub_E5B05C(v7, &__p);
    v9 = *a2;
    for (i = a2[1]; v9 != i; v9 += 32)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::append((v9 + 8), p_p, size);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_E4E044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E4E060(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, __n128 *a4@<X8>)
{
  v49.n128_u64[0] = 0;
  v49.n128_u64[1] = &off_2669FE0;
  sub_434934(a4, &v49);
  if (!sub_E7F8D4(a1) || !sub_3B6984(a2))
  {
    return;
  }

  v8 = sub_E9BBEC(v52, a1, *a3, a4);
  if (sub_585D8(v8))
  {
    v9 = &off_2772E28;
    if (*(a1 + 312))
    {
      v9 = *(a1 + 312);
    }

    v10 = v9[11];
    if (!v10)
    {
      v10 = &off_2773678;
    }

    v11 = v10[4];
    if (!v11)
    {
      v11 = &off_2773608;
    }

    v12 = v11[4];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = &off_2773580;
    }

    sub_E4B348(v13, (a3 + 8), a2, &v49);
    sub_E9BBFC(v52, &v49);
    v14 = __p;
    if (__p)
    {
      v15 = v51;
      v16 = __p;
      if (v51 != __p)
      {
        do
        {
          if (*(v15 - 1) < 0)
          {
            operator delete(*(v15 - 3));
          }

          v15 -= 4;
        }

        while (v15 != v14);
        v16 = __p;
      }

      v51 = v14;
      operator delete(v16);
    }
  }

  sub_E9BBEC(v46, a1, a3[1], a4);
  if (sub_585D8(v46))
  {
    v17 = *(a1 + 312);
    if (!v17)
    {
      v17 = &off_2772E28;
    }

    v18 = v17[11];
    if (!v18)
    {
      v18 = &off_2773678;
    }

    v19 = v18[4];
    if (!v19)
    {
      v19 = &off_2773608;
    }

    v20 = v19[4];
    v21 = sub_3B6890(a2);
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &off_2773580;
    }

    sub_E4D0E0(v22, *(v21 + 4), &v49);
    sub_E9BBFC(v46, &v49);
    v23 = __p;
    if (__p)
    {
      v24 = v51;
      v25 = __p;
      if (v51 != __p)
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
        v25 = __p;
      }

      v51 = v23;
      operator delete(v25);
    }
  }

  sub_E9BBEC(v43, a1, a3[2], a4);
  if (sub_585D8(v43))
  {
    if ((*(a1 + 41) & 0x10) != 0)
    {
      v26 = *(a1 + 312);
      if (!v26)
      {
        v26 = &off_2772E28;
      }

      v27 = v26[11];
      if (!v27)
      {
        v27 = &off_2773678;
      }

      v28 = v27[4];
      if (!v28)
      {
        v28 = &off_2773608;
      }

      v29 = v28[4];
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = &off_2773580;
      }

      sub_E4F448(*(a1 + 360), v30, &v49);
    }

    else
    {
      v41.n128_u64[0] = 0;
      v41.n128_u64[1] = &off_2669FE0;
      sub_434934(&v49, &v41);
    }

    sub_E9BBFC(v43, &v49);
    v31 = __p;
    if (__p)
    {
      v32 = v51;
      v33 = __p;
      if (v51 != __p)
      {
        do
        {
          if (*(v32 - 1) < 0)
          {
            operator delete(*(v32 - 3));
          }

          v32 -= 4;
        }

        while (v32 != v31);
        v33 = __p;
      }

      v51 = v31;
      operator delete(v33);
    }
  }

  sub_E9BBEC(&v41, a1, a3[3], a4);
  if (sub_585D8(&v41))
  {
    v34 = *(a1 + 312);
    if (!v34)
    {
      v34 = &off_2772E28;
    }

    v35 = v34[11];
    if (!v35)
    {
      v35 = &off_2773678;
    }

    v36 = v35[3];
    v37 = &off_2773640;
    if (v36)
    {
      v37 = v36;
    }

    sub_E4D634((v37 + 3), a2, &v49);
    sub_E9BBFC(&v41, &v49);
    v38 = __p;
    if (__p)
    {
      v39 = v51;
      v40 = __p;
      if (v51 != __p)
      {
        do
        {
          if (*(v39 - 1) < 0)
          {
            operator delete(*(v39 - 3));
          }

          v39 -= 4;
        }

        while (v39 != v38);
        v40 = __p;
      }

      v51 = v38;
      operator delete(v40);
    }
  }

  sub_E4E640(a1, a2, a4);
  sub_E4E984(a1, &a4[1]);
  if ((v42 & 0x80000000) == 0)
  {
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_81:
    operator delete(v44);
    if ((v48 & 0x80000000) == 0)
    {
LABEL_78:
      if ((v54 & 0x80000000) == 0)
      {
        return;
      }

LABEL_83:
      operator delete(v53);
      return;
    }

    goto LABEL_82;
  }

  operator delete(v41.n128_u64[1]);
  if (v45 < 0)
  {
    goto LABEL_81;
  }

LABEL_77:
  if ((v48 & 0x80000000) == 0)
  {
    goto LABEL_78;
  }

LABEL_82:
  operator delete(v47);
  if (v54 < 0)
  {
    goto LABEL_83;
  }
}

void sub_E4E4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  sub_CF3C94(&a33);
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a31 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  if ((a31 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v34 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a26);
  if ((*(v34 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    sub_CF3C94(v33);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(*(v34 - 96));
  sub_CF3C94(v33);
  _Unwind_Resume(a1);
}

void *sub_E4E640(void *result, uint64_t a2, _DWORD *a3)
{
  if (!*a3)
  {
    result = sub_E8305C(result);
    if (result)
    {
      v9 = 9;
      strcpy(__p, "EVRouting");
      v10 = 0;
      v11 = 0;
      v12 = 0;
      sub_3AEC94(a2, __p, &v10);
      v4 = v10;
      if (v10)
      {
        v5 = v11;
        v6 = v10;
        if (v11 != v10)
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
          v6 = v10;
        }

        v11 = v4;
        operator delete(v6);
      }

      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      operator new();
    }
  }

  return result;
}

void sub_E4E8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  if (*(v21 - 209) < 0)
  {
    operator delete(*(v21 - 232));
  }

  sub_44FA80((v21 - 208));
  _Unwind_Resume(a1);
}

void sub_E4E984(uint64_t a1, uint64_t *a2)
{
  if (*a2 != a2[1])
  {
    v3 = &off_2772E28;
    if (*(a1 + 312))
    {
      v3 = *(a1 + 312);
    }

    v4 = v3[11];
    if (!v4)
    {
      v4 = &off_2773678;
    }

    v5 = v4[4];
    if (!v5)
    {
      v5 = &off_2773608;
    }

    v6 = v5[4];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = &off_2773580;
    }

    sub_E5B05C(v7, &__p);
    v9 = *a2;
    for (i = a2[1]; v9 != i; v9 += 32)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::append((v9 + 8), p_p, size);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_E4EA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E4EA94(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, __n128 *a4@<X8>)
{
  v47.n128_u64[0] = 0;
  v47.n128_u64[1] = &off_2669FE0;
  sub_434934(a4, &v47);
  v8 = *(a1 + 320);
  if (!v8)
  {
    v8 = &off_2773678;
  }

  v9 = v8[4];
  if (!v9)
  {
    v9 = &off_2773608;
  }

  if ((v9[2] & 2) == 0 || !sub_3B6984(a2))
  {
    return;
  }

  v10 = sub_E9B860(v50, a1, *a3, a4);
  if (sub_585D8(v10))
  {
    v11 = *(a1 + 320);
    if (!v11)
    {
      v11 = &off_2773678;
    }

    v12 = v11[4];
    if (!v12)
    {
      v12 = &off_2773608;
    }

    v13 = v12[4];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = &off_2773580;
    }

    sub_E4B348(v14, (a3 + 8), a2, &v47);
    sub_E9BBFC(v50, &v47);
    v15 = __p;
    if (__p)
    {
      v16 = v49;
      v17 = __p;
      if (v49 != __p)
      {
        do
        {
          if (*(v16 - 1) < 0)
          {
            operator delete(*(v16 - 3));
          }

          v16 -= 4;
        }

        while (v16 != v15);
        v17 = __p;
      }

      v49 = v15;
      operator delete(v17);
    }
  }

  sub_E9B860(v44, a1, a3[1], a4);
  if (sub_585D8(v44))
  {
    v18 = *(a1 + 320);
    if (!v18)
    {
      v18 = &off_2773678;
    }

    v19 = v18[4];
    if (!v19)
    {
      v19 = &off_2773608;
    }

    v20 = v19[4];
    v21 = sub_3B6890(a2);
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &off_2773580;
    }

    sub_E4D0E0(v22, *(v21 + 4), &v47);
    sub_E9BBFC(v44, &v47);
    v23 = __p;
    if (__p)
    {
      v24 = v49;
      v25 = __p;
      if (v49 != __p)
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
        v25 = __p;
      }

      v49 = v23;
      operator delete(v25);
    }
  }

  sub_E9B860(v41, a1, a3[2], a4);
  if (sub_585D8(v41))
  {
    if ((*(a1 + 42) & 2) != 0)
    {
      v26 = *(a1 + 320);
      if (!v26)
      {
        v26 = &off_2773678;
      }

      v27 = v26[4];
      if (!v27)
      {
        v27 = &off_2773608;
      }

      v28 = v27[4];
      if (v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = &off_2773580;
      }

      sub_E5A340(*(a1 + 384), v29, &v47);
    }

    else
    {
      v39.n128_u64[0] = 0;
      v39.n128_u64[1] = &off_2669FE0;
      sub_434934(&v47, &v39);
    }

    sub_E9BBFC(v41, &v47);
    v30 = __p;
    if (__p)
    {
      v31 = v49;
      v32 = __p;
      if (v49 != __p)
      {
        do
        {
          if (*(v31 - 1) < 0)
          {
            operator delete(*(v31 - 3));
          }

          v31 -= 4;
        }

        while (v31 != v30);
        v32 = __p;
      }

      v49 = v30;
      operator delete(v32);
    }
  }

  sub_E9B860(&v39, a1, a3[3], a4);
  if (sub_585D8(&v39))
  {
    v33 = *(a1 + 320);
    if (!v33)
    {
      v33 = &off_2773678;
    }

    v34 = v33[3];
    v35 = &off_2773640;
    if (v34)
    {
      v35 = v34;
    }

    sub_E4D634((v35 + 3), a2, &v47);
    sub_E9BBFC(&v39, &v47);
    v36 = __p;
    if (__p)
    {
      v37 = v49;
      v38 = __p;
      if (v49 != __p)
      {
        do
        {
          if (*(v37 - 1) < 0)
          {
            operator delete(*(v37 - 3));
          }

          v37 -= 4;
        }

        while (v37 != v36);
        v38 = __p;
      }

      v49 = v36;
      operator delete(v38);
    }
  }

  sub_E4F008(a1, a2, a4);
  sub_E4F34C(a1, &a4[1]);
  if ((v40 & 0x80000000) == 0)
  {
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_77:
    operator delete(v42);
    if ((v46 & 0x80000000) == 0)
    {
LABEL_74:
      if ((v52 & 0x80000000) == 0)
      {
        return;
      }

LABEL_79:
      operator delete(v51);
      return;
    }

    goto LABEL_78;
  }

  operator delete(v39.n128_u64[1]);
  if (v43 < 0)
  {
    goto LABEL_77;
  }

LABEL_73:
  if ((v46 & 0x80000000) == 0)
  {
    goto LABEL_74;
  }

LABEL_78:
  operator delete(v45);
  if (v52 < 0)
  {
    goto LABEL_79;
  }
}

void sub_E4EE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  sub_CF3C94(&a33);
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a31 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  if ((a31 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v34 - 89) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a26);
  if ((*(v34 - 89) & 0x80000000) == 0)
  {
LABEL_5:
    sub_CF3C94(v33);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(*(v34 - 112));
  sub_CF3C94(v33);
  _Unwind_Resume(a1);
}

void *sub_E4F008(void *result, uint64_t a2, _DWORD *a3)
{
  if (!*a3)
  {
    result = sub_E83040(result);
    if (result)
    {
      v9 = 9;
      strcpy(__p, "EVRouting");
      v10 = 0;
      v11 = 0;
      v12 = 0;
      sub_3AEC94(a2, __p, &v10);
      v4 = v10;
      if (v10)
      {
        v5 = v11;
        v6 = v10;
        if (v11 != v10)
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
          v6 = v10;
        }

        v11 = v4;
        operator delete(v6);
      }

      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      operator new();
    }
  }

  return result;
}

void sub_E4F2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  if (*(v21 - 209) < 0)
  {
    operator delete(*(v21 - 232));
  }

  sub_44FA80((v21 - 208));
  _Unwind_Resume(a1);
}

void sub_E4F34C(uint64_t a1, uint64_t *a2)
{
  if (*a2 != a2[1])
  {
    v3 = *(a1 + 320);
    if (!v3)
    {
      v3 = &off_2773678;
    }

    v4 = v3[4];
    if (!v4)
    {
      v4 = &off_2773608;
    }

    v5 = v4[4];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = &off_2773580;
    }

    sub_E5B05C(v6, &__p);
    v8 = *a2;
    for (i = a2[1]; v8 != i; v8 += 32)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::append((v8 + 8), p_p, size);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_E4F42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E4F448(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a4@<X8>)
{
  v22[0] = 0;
  v22[1] = &off_2669FE0;
  sub_434934(a4, v22);
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = &v8[v9];
    do
    {
      sub_E5A7A8(*v8, a2, v22);
      sub_434BB0(a4, v22);
      v12 = __p;
      if (__p)
      {
        v13 = v24;
        v11 = __p;
        if (v24 != __p)
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
          v11 = __p;
        }

        v24 = v12;
        operator delete(v11);
      }

      ++v8;
    }

    while (v8 != v10);
    v14 = *(a1 + 32);
    if (v14 >= 2)
    {
      v15 = 1 - v14;
      for (i = 2; v15 + i != 2; ++i)
      {
        v21 = i - 1;
        if ((*(*(*(a1 + 40) + 8 * i) + 40) & 8) == 0)
        {
          v20 = 11;
          sub_E5AAB8("Got an EV request where the ETATrafficUpdateWaypointRoute contains a leg at position ", " of ", " without an origin_waypoint_info.", v22);
          v17 = a4[1].n128_u64[1];
          if (v17 >= a4[2].n128_u64[0])
          {
            a4[1].n128_u64[1] = sub_E5C160(&a4[1], &v20, v22);
            if (SHIBYTE(__p) < 0)
            {
              goto LABEL_25;
            }
          }

          else
          {
            *v17 = v20;
            v18 = (v17 + 8);
            if (SHIBYTE(__p) < 0)
            {
              sub_325C(v18, v22[0], v22[1]);
              a4[1].n128_u64[1] = v17 + 32;
              if ((SHIBYTE(__p) & 0x80000000) == 0)
              {
                continue;
              }

LABEL_25:
              operator delete(v22[0]);
              continue;
            }

            v19 = *v22;
            *(v17 + 24) = __p;
            *v18 = v19;
            a4[1].n128_u64[1] = v17 + 32;
            if (SHIBYTE(__p) < 0)
            {
              goto LABEL_25;
            }
          }
        }
      }
    }
  }

  a4->n128_u64[0] = 2 * (a4[1].n128_u64[0] != a4[1].n128_u64[1]);
  a4->n128_u64[1] = &off_2669FE0;
}

void sub_E4F66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v16 + 24) = v17;
  if (a16 < 0)
  {
    operator delete(__p);
    sub_CF3C94(v16);
    _Unwind_Resume(a1);
  }

  sub_CF3C94(v16);
  _Unwind_Resume(a1);
}

BOOL sub_E4F6D0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 0x10) == 0)
  {
    return (*(a2 + 16) & 0x10) == 0;
  }

  if ((*(a2 + 16) & 0x10) != 0)
  {
    v3 = *(a1 + 56);
    v4 = *(a2 + 56);
    v5 = &off_2772268;
    if (*(v3 + 24))
    {
      v6 = *(v3 + 24);
    }

    else
    {
      v6 = &off_2772268;
    }

    if (!v4)
    {
      v4 = &off_27722B0;
    }

    if (v4[3])
    {
      v5 = v4[3];
    }

    v7 = *(v6 + 6);
    if (v7 == *(v5 + 6))
    {
      v8 = *(v6 + 12);
      if (v8 == *(v5 + 12))
      {
        if (v7 < 1)
        {
LABEL_18:
          if (v8 < 1)
          {
LABEL_23:
            if (*(v3 + 32) == *(v4 + 8) && *(v3 + 40) == *(v4 + 10))
            {
              return *(v3 + 36) == *(v4 + 9);
            }
          }

          else
          {
            v11 = (v6[7] + 1);
            v12 = (v5[7] + 1);
            while (*(*v11 + 24) == *(*v12 + 24) && *(*v11 + 28) == *(*v12 + 28))
            {
              v12 += 8;
              v11 += 8;
              if (!--v8)
              {
                goto LABEL_23;
              }
            }
          }
        }

        else
        {
          v9 = (v6[4] + 1);
          v10 = (v5[4] + 1);
          while (*(*v9 + 24) == *(*v10 + 24) && *(*v9 + 28) == *(*v10 + 28))
          {
            v10 += 8;
            v9 += 8;
            if (!--v7)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }
  }

  return 0;
}

void sub_E4F824(_BYTE *a1, void *a2)
{
  v11[7] = 7;
  strcpy(__p, "ev_info");
  v4 = sub_5F8FC(a2, __p);
  v5 = sub_E9A5F0(v4);
  if ((v11[7] & 0x80000000) != 0)
  {
    v6 = v5;
    operator delete(__p[0]);
    v5 = v6;
  }

  *a1 = v5;
  v11[7] = 15;
  strcpy(__p, "last_soc_update");
  v7 = sub_5F8FC(a2, __p);
  v8 = sub_E9A5F0(v7);
  if ((v11[7] & 0x80000000) != 0)
  {
    v9 = v8;
    operator delete(__p[0]);
    v8 = v9;
  }

  a1[1] = v8;
  operator new();
}

void sub_E4F9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E4FB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_E4FC1C(void *a1@<X0>, uint64_t *a2@<X1>, __n128 *a3@<X8>)
{
  v5 = sub_5F5AC(a1, a2);
  v18[23] = 8;
  strcpy(v18, "disabled");
  LOBYTE(v15[0]) = 0;
  v6 = sub_5FBE4(v5, v18, v15);
  if ((v18[23] & 0x80000000) != 0)
  {
    v7 = v6;
    operator delete(*v18);
    if (v7)
    {
LABEL_3:
      sub_E501C0("Got an EV request with a disabled consumption_arguments.model_id (", a2, ").", v15);
      v14[0] = &dword_0 + 2;
      v14[1] = &off_2669FE0;
      v18[0] = 0;
      if (SHIBYTE(v16) < 0)
      {
        sub_325C(&v18[8], v15[0], v15[1]);
      }

      else
      {
        *&v18[8] = *v15;
        v19 = v16;
      }

      sub_435A00(&__p, v18, 1uLL);
      sub_4349A4(a3, v14, &__p);
      v10 = __p.n128_u64[0];
      if (__p.n128_u64[0])
      {
        v11 = __p.n128_u64[1];
        v12 = __p.n128_u64[0];
        if (__p.n128_u64[1] == __p.n128_u64[0])
        {
          goto LABEL_27;
        }

        do
        {
          if (*(v11 - 1) < 0)
          {
            operator delete(*(v11 - 24));
          }

          v11 -= 32;
        }

        while (v11 != v10);
LABEL_26:
        v12 = __p.n128_u64[0];
LABEL_27:
        __p.n128_u64[1] = v10;
        operator delete(v12);
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  else if (v6)
  {
    goto LABEL_3;
  }

  sub_2A5CCC(v18, v5);
  if (*v18 >= 1)
  {
    v8.i64[0] = 0x100000001;
    v8.i64[1] = *&v18[12];
    v9.i32[0] = vmovn_s32(vcgtq_s32(v8, *&v18[4])).u32[0];
    v9.i32[1] = vmovn_s32(vceqq_s32(*(v18 + 4), v8)).i32[1];
    if ((vaddvq_s32(vandq_s8(vmovl_s16(v9), xmmword_22671F0)) & 0xF) == 0 && *&v18[20] > 0)
    {
      sub_5F328(v15);
      sub_2A4EF8(v18, -1, 0, 100000000, v5);
    }
  }

  sub_E50470("Got an EV request where the corresponding physics model parameters are invalid for model id ", a2, v15);
  v14[0] = &dword_0 + 2;
  v14[1] = &off_2669FE0;
  v18[0] = 12;
  if (SHIBYTE(v16) < 0)
  {
    sub_325C(&v18[8], v15[0], v15[1]);
  }

  else
  {
    *&v18[8] = *v15;
    v19 = v16;
  }

  sub_435A00(&__p, v18, 1uLL);
  sub_4349A4(a3, v14, &__p);
  v10 = __p.n128_u64[0];
  if (__p.n128_u64[0])
  {
    v13 = __p.n128_u64[1];
    v12 = __p.n128_u64[0];
    if (__p.n128_u64[1] == __p.n128_u64[0])
    {
      goto LABEL_27;
    }

    do
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 24));
      }

      v13 -= 32;
    }

    while (v13 != v10);
    goto LABEL_26;
  }

LABEL_28:
  if (SHIBYTE(v19) < 0)
  {
    operator delete(*&v18[8]);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    return;
  }

  operator delete(v15[0]);
}

void sub_E500A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a20 < 0)
  {
    operator delete(__p);
    sub_AD01C(&a36);
    sub_5C010(&a21);
    _Unwind_Resume(a1);
  }

  sub_AD01C(&a36);
  sub_5C010(&a21);
  _Unwind_Resume(a1);
}

void sub_E50128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_5C010(va);
  _Unwind_Resume(a1);
}