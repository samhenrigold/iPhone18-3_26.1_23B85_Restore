void sub_9D8458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v22 + 23) < 0)
  {
    operator delete(*v19);
  }

  if (v21 < 0)
  {
    operator delete(v20);
    if ((a19 & 0x80) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((a19 & 0x80) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void ***sub_9D84E8(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        if (*(v3 - 33) < 0)
        {
LABEL_9:
          operator delete(*(v3 - 7));
        }
      }

      else if (*(v3 - 33) < 0)
      {
        goto LABEL_9;
      }

      v3 -= 8;
      if (v3 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

void sub_9D8578(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_9D4608(a1, v6);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v3 = v6[1];
  }

  if (v3)
  {
    v4 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v4 = v9;
    }

    if (v4)
    {
      v5 = 0;
      a2[1] = sub_9D9AD8(a2, &v5, v6);
    }
  }

  if ((v10 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return;
    }

LABEL_12:
    operator delete(v6[0]);
    return;
  }

  operator delete(__p);
  if (v7 < 0)
  {
    goto LABEL_12;
  }
}

void sub_9D8634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9D84E8(v3);
  sub_509680(va);
  _Unwind_Resume(a1);
}

void sub_9D8650(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_9D4620(a1, v6);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v3 = v6[1];
  }

  if (v3)
  {
    v4 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v4 = v9;
    }

    if (v4)
    {
      v5 = 0;
      a2[1] = sub_9D9AD8(a2, &v5, v6);
    }
  }

  if ((v10 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return;
    }

LABEL_12:
    operator delete(v6[0]);
    return;
  }

  operator delete(__p);
  if (v7 < 0)
  {
    goto LABEL_12;
  }
}

void sub_9D870C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_9D84E8(v3);
  sub_509680(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9D8728(uint64_t a1)
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
        v7 = *(v4 - 3);
        if (v7)
        {
          v8 = *(v4 - 2);
          v9 = *(v4 - 3);
          if (v8 != v7)
          {
            do
            {
              if (*(v8 - 1) < 0)
              {
                operator delete(*(v8 - 3));
              }

              v8 -= 4;
            }

            while (v8 != v7);
            v9 = *(v4 - 3);
          }

          *(v4 - 2) = v7;
          operator delete(v9);
        }

        v10 = v4 - 8;
        if (*(v4 - 41) < 0)
        {
          operator delete(*v10);
        }

        v4 -= 8;
      }

      while (v10 != v5);
    }
  }

  return a1;
}

void sub_9D87E4(void ****a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          v7 = *(v4 - 2);
          v8 = *(v4 - 3);
          if (v7 != v6)
          {
            do
            {
              if (*(v7 - 1) < 0)
              {
                operator delete(*(v7 - 3));
              }

              v7 -= 4;
            }

            while (v7 != v6);
            v8 = *(v4 - 3);
          }

          *(v4 - 2) = v6;
          operator delete(v8);
        }

        v9 = v4 - 8;
        if (*(v4 - 41) < 0)
        {
          operator delete(*v9);
        }

        v4 -= 8;
      }

      while (v9 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_9D88D0(uint64_t a1, __int128 *a2)
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
  v5 = *(a2 + 6);
  *(a1 + 56) = 0;
  *(a1 + 48) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = *(a2 + 7);
  v6 = *(a2 + 8);
  if (v6 != v7)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v6 - v7) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_9D8A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 64) = v10;
  sub_9D8CE0(&a9);
  sub_9D8E70(v9);
  _Unwind_Resume(a1);
}

void sub_9D8A20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_9D8A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9D8CE0(&a9);
  sub_9D8E70(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_9D8A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 1);
      if (*(v6 + 23) < 0)
      {
        sub_325C((v4 + 8), *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *(v4 + 8) = v8;
      }

      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      sub_99374C(v4 + 32, *(v6 + 3), *(v6 + 4), 0xCCCCCCCCCCCCCCCDLL * ((*(v6 + 4) - *(v6 + 3)) >> 4));
      v4 = v10 + 56;
      v10 += 56;
      v6 = (v6 + 56);
    }

    while (v7 + 56 != a3);
  }

  return v4;
}

void sub_9D8B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 31) < 0)
  {
    operator delete(*v10);
  }

  sub_9D8B70(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_9D8B70(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    v1 = result;
    sub_9D8BA4(result);
    return v1;
  }

  return result;
}

void sub_9D8BA4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (!v3)
    {
      goto LABEL_26;
    }

    v4 = *(v1 - 16);
    v5 = *(v1 - 24);
    if (v4 != v3)
    {
      while (1)
      {
        v6 = *(v4 - 3);
        if (!v6)
        {
          goto LABEL_19;
        }

        v7 = *(v4 - 2);
        v8 = *(v4 - 3);
        if (v7 != v6)
        {
          break;
        }

LABEL_18:
        *(v4 - 2) = v6;
        operator delete(v8);
LABEL_19:
        if (*(v4 - 25) < 0)
        {
          operator delete(*(v4 - 6));
          v10 = v4 - 10;
          if (*(v4 - 57) < 0)
          {
LABEL_23:
            operator delete(*v10);
          }
        }

        else
        {
          v10 = v4 - 10;
          if (*(v4 - 57) < 0)
          {
            goto LABEL_23;
          }
        }

        v4 = v10;
        if (v10 == v3)
        {
          v5 = *(v1 - 24);
          goto LABEL_25;
        }
      }

      while (2)
      {
        if (*(v7 - 1) < 0)
        {
          operator delete(*(v7 - 3));
          v9 = v7 - 6;
          if (*(v7 - 25) < 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v9 = v7 - 6;
          if (*(v7 - 25) < 0)
          {
LABEL_16:
            operator delete(*v9);
          }
        }

        v7 = v9;
        if (v9 == v6)
        {
          v8 = *(v4 - 3);
          goto LABEL_18;
        }

        continue;
      }
    }

LABEL_25:
    *(v1 - 16) = v3;
    operator delete(v5);
LABEL_26:
    if (*(v1 - 25) < 0)
    {
      operator delete(*(v1 - 48));
    }

    v1 -= 56;
  }
}

void sub_9D8CE0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!v2)
  {
    return;
  }

  v4 = v1[1];
  v5 = **a1;
  if (v4 != v2)
  {
    while (1)
    {
      v6 = *(v4 - 3);
      if (v6)
      {
        break;
      }

LABEL_27:
      if (*(v4 - 25) < 0)
      {
        operator delete(*(v4 - 6));
      }

      v4 -= 56;
      if (v4 == v2)
      {
        v5 = **a1;
        goto LABEL_30;
      }
    }

    v7 = *(v4 - 2);
    v8 = *(v4 - 3);
    if (v7 == v6)
    {
LABEL_26:
      *(v4 - 2) = v6;
      operator delete(v8);
      goto LABEL_27;
    }

    while (1)
    {
      v9 = *(v7 - 3);
      if (!v9)
      {
        goto LABEL_20;
      }

      v10 = *(v7 - 2);
      v11 = *(v7 - 3);
      if (v10 != v9)
      {
        break;
      }

LABEL_19:
      *(v7 - 2) = v9;
      operator delete(v11);
LABEL_20:
      if (*(v7 - 25) < 0)
      {
        operator delete(*(v7 - 6));
        v13 = v7 - 10;
        if (*(v7 - 57) < 0)
        {
LABEL_24:
          operator delete(*v13);
        }
      }

      else
      {
        v13 = v7 - 10;
        if (*(v7 - 57) < 0)
        {
          goto LABEL_24;
        }
      }

      v7 = v13;
      if (v13 == v6)
      {
        v8 = *(v4 - 3);
        goto LABEL_26;
      }
    }

    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 3));
        v12 = v10 - 6;
        if (*(v10 - 25) < 0)
        {
LABEL_17:
          operator delete(*v12);
        }
      }

      else
      {
        v12 = v10 - 6;
        if (*(v10 - 25) < 0)
        {
          goto LABEL_17;
        }
      }

      v10 = v12;
      if (v12 == v9)
      {
        v11 = *(v7 - 3);
        goto LABEL_19;
      }
    }
  }

LABEL_30:
  v1[1] = v2;

  operator delete(v5);
}

uint64_t sub_9D8E70(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      do
      {
        v3 -= 80;
        sub_993AF8(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9D8EF8(uint64_t a1)
{
  v6 = (a1 + 56);
  sub_9D8CE0(&v6);
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      do
      {
        v3 -= 80;
        sub_993AF8(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_9D8F9C(uint64_t *a1)
{
  if ((a1[3] & 1) == 0)
  {
    v3 = a1[1];
    v2 = a1[2];
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 80;
        sub_9D9004(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_9D9004(uint64_t a1, uint64_t a2)
{
  v6 = (a2 + 56);
  sub_9D8CE0(&v6);
  v3 = *(a2 + 24);
  if (v3)
  {
    v4 = *(a2 + 32);
    v5 = *(a2 + 24);
    if (v4 != v3)
    {
      do
      {
        v4 -= 80;
        sub_993AF8(v4);
      }

      while (v4 != v3);
      v5 = *(a2 + 24);
    }

    *(a2 + 32) = v3;
    operator delete(v5);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_9D90A0(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 == v2)
    {
      goto LABEL_30;
    }

    while (1)
    {
      v15 = v4 - 3;
      sub_9D8CE0(&v15);
      v6 = *(v4 - 7);
      if (v6)
      {
        break;
      }

LABEL_27:
      v14 = v4 - 10;
      if (*(v4 - 57) < 0)
      {
        operator delete(*v14);
      }

      v4 -= 10;
      if (v14 == v2)
      {
        v5 = **a1;
LABEL_30:
        v1[1] = v2;
        operator delete(v5);
        return;
      }
    }

    v7 = *(v4 - 6);
    v8 = *(v4 - 7);
    if (v7 == v6)
    {
LABEL_26:
      *(v4 - 6) = v6;
      operator delete(v8);
      goto LABEL_27;
    }

    while (1)
    {
      v9 = *(v7 - 3);
      if (!v9)
      {
        goto LABEL_20;
      }

      v10 = *(v7 - 2);
      v11 = *(v7 - 3);
      if (v10 != v9)
      {
        break;
      }

LABEL_19:
      *(v7 - 2) = v9;
      operator delete(v11);
LABEL_20:
      if (*(v7 - 25) < 0)
      {
        operator delete(*(v7 - 6));
        v13 = v7 - 10;
        if (*(v7 - 57) < 0)
        {
LABEL_24:
          operator delete(*v13);
        }
      }

      else
      {
        v13 = v7 - 10;
        if (*(v7 - 57) < 0)
        {
          goto LABEL_24;
        }
      }

      v7 = v13;
      if (v13 == v6)
      {
        v8 = *(v4 - 7);
        goto LABEL_26;
      }
    }

    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 3));
        v12 = v10 - 6;
        if (*(v10 - 25) < 0)
        {
LABEL_17:
          operator delete(*v12);
        }
      }

      else
      {
        v12 = v10 - 6;
        if (*(v10 - 25) < 0)
        {
          goto LABEL_17;
        }
      }

      v10 = v12;
      if (v12 == v9)
      {
        v11 = *(v7 - 3);
        goto LABEL_19;
      }
    }
  }
}

uint64_t sub_9D9224(uint64_t *a1, uint64_t a2)
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

  v20 = a1;
  if (v7)
  {
    if (!(v7 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = v2 << 6;
  __p = 0;
  v17 = v8;
  v18 = v8;
  v19 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
  }

  *(v8 + 24) = *(a2 + 24);
  sub_39A3D8((v8 + 40), (a2 + 40));
  v18 += 64;
  sub_943C1C(a1, &__p);
  v9 = a1[1];
  v10 = v17;
  while (1)
  {
    v11 = v18;
    if (v18 == v10)
    {
      break;
    }

    v18 -= 64;
    v12 = *(v11 - 24);
    if (v12)
    {
      v13 = *(v11 - 16);
      v14 = *(v11 - 24);
      if (v13 != v12)
      {
        do
        {
          if (*(v13 - 1) < 0)
          {
            operator delete(*(v13 - 24));
          }

          v13 -= 32;
        }

        while (v13 != v12);
        v14 = *(v11 - 24);
      }

      *(v11 - 16) = v12;
      operator delete(v14);
    }

    if (*(v11 - 41) < 0)
    {
      operator delete(*(v11 - 64));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_9D93D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
    sub_943D6C(va);
    _Unwind_Resume(a1);
  }

  sub_943D6C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9D940C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      if ((*(i - 33) & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((*(i - 33) & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(*(i - 56));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9D9490(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  v3 = (a1[1] - *a1) >> 6;
  v4 = v3 + 1;
  if ((v3 + 1) >> 58)
  {
    sub_1794();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 5 > v4)
  {
    v4 = v7 >> 5;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFC0)
  {
    v8 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    if (!(v8 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v9 = v3 << 6;
  v19 = v9;
  v20 = v9;
  *v9 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C((v9 + 8), *a3, *(a3 + 8));
  }

  else
  {
    *(v9 + 8) = *a3;
    *(v9 + 24) = *(a3 + 16);
  }

  *(v9 + 32) = *(a3 + 24);
  if (*(a3 + 55) < 0)
  {
    sub_325C((v9 + 40), *(a3 + 32), *(a3 + 40));
  }

  else
  {
    *(v9 + 40) = *(a3 + 32);
    *(v9 + 56) = *(a3 + 48);
  }

  v10 = v9 + 64;
  v11 = *a1;
  v12 = a1[1];
  v13 = v9 + *a1 - v12;
  if (v12 != *a1)
  {
    v14 = *a1;
    v15 = v19 + *a1 - v12;
    do
    {
      *v15 = *v14;
      v16 = *(v14 + 8);
      *(v15 + 24) = *(v14 + 24);
      *(v15 + 8) = v16;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 8) = 0;
      *(v15 + 32) = *(v14 + 32);
      v17 = *(v14 + 40);
      *(v15 + 56) = *(v14 + 56);
      *(v15 + 40) = v17;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 40) = 0;
      v14 += 64;
      v15 += 64;
    }

    while (v14 != v12);
    while (1)
    {
      if (*(v11 + 63) < 0)
      {
        operator delete(*(v11 + 40));
        if (*(v11 + 31) < 0)
        {
LABEL_25:
          operator delete(*(v11 + 8));
        }
      }

      else if (*(v11 + 31) < 0)
      {
        goto LABEL_25;
      }

      v11 += 64;
      if (v11 == v12)
      {
        v11 = *a1;
        break;
      }
    }
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v20 + 64;
}

void sub_9D968C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v4 + 31) < 0)
  {
    operator delete(*v3);
    sub_9D940C(va);
    _Unwind_Resume(a1);
  }

  sub_9D940C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9D96C4(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  v3 = (a1[1] - *a1) >> 6;
  v4 = v3 + 1;
  if ((v3 + 1) >> 58)
  {
    sub_1794();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 5 > v4)
  {
    v4 = v7 >> 5;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFC0)
  {
    v8 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    if (!(v8 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v9 = v3 << 6;
  v19 = v9;
  v20 = v9;
  *v9 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C((v9 + 8), *a3, *(a3 + 8));
  }

  else
  {
    *(v9 + 8) = *a3;
    *(v9 + 24) = *(a3 + 16);
  }

  *(v9 + 32) = *(a3 + 24);
  if (*(a3 + 55) < 0)
  {
    sub_325C((v9 + 40), *(a3 + 32), *(a3 + 40));
  }

  else
  {
    *(v9 + 40) = *(a3 + 32);
    *(v9 + 56) = *(a3 + 48);
  }

  v10 = v9 + 64;
  v11 = *a1;
  v12 = a1[1];
  v13 = v9 + *a1 - v12;
  if (v12 != *a1)
  {
    v14 = *a1;
    v15 = v19 + *a1 - v12;
    do
    {
      *v15 = *v14;
      v16 = *(v14 + 8);
      *(v15 + 24) = *(v14 + 24);
      *(v15 + 8) = v16;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 8) = 0;
      *(v15 + 32) = *(v14 + 32);
      v17 = *(v14 + 40);
      *(v15 + 56) = *(v14 + 56);
      *(v15 + 40) = v17;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 40) = 0;
      v14 += 64;
      v15 += 64;
    }

    while (v14 != v12);
    while (1)
    {
      if (*(v11 + 63) < 0)
      {
        operator delete(*(v11 + 40));
        if (*(v11 + 31) < 0)
        {
LABEL_25:
          operator delete(*(v11 + 8));
        }
      }

      else if (*(v11 + 31) < 0)
      {
        goto LABEL_25;
      }

      v11 += 64;
      if (v11 == v12)
      {
        v11 = *a1;
        break;
      }
    }
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v20 + 64;
}

void sub_9D98C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v4 + 31) < 0)
  {
    operator delete(*v3);
    sub_9D940C(va);
    _Unwind_Resume(a1);
  }

  sub_9D940C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9D98F8(__int128 **a1, uint64_t a2)
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

  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v7 = 56 * v2 + 56;
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 + v6 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = *a1 + v6 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      *(v12 + 24) = *(v11 + 24);
      v14 = v11[2];
      *(v12 + 48) = *(v11 + 6);
      *(v12 + 32) = v14;
      *(v11 + 5) = 0;
      *(v11 + 6) = 0;
      *(v11 + 4) = 0;
      v11 = (v11 + 56);
      v12 += 56;
    }

    while (v11 != v9);
    while (1)
    {
      if (*(v8 + 55) < 0)
      {
        operator delete(*(v8 + 4));
        if (*(v8 + 23) < 0)
        {
LABEL_19:
          operator delete(*v8);
        }
      }

      else if (*(v8 + 23) < 0)
      {
        goto LABEL_19;
      }

      v8 = (v8 + 56);
      if (v8 == v9)
      {
        v8 = *a1;
        break;
      }
    }
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

uint64_t sub_9D9AD8(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  v3 = (a1[1] - *a1) >> 6;
  v4 = v3 + 1;
  if ((v3 + 1) >> 58)
  {
    sub_1794();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 5 > v4)
  {
    v4 = v7 >> 5;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFC0)
  {
    v8 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    if (!(v8 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v9 = v3 << 6;
  v19 = v9;
  v20 = v9;
  *v9 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C((v9 + 8), *a3, *(a3 + 8));
  }

  else
  {
    *(v9 + 8) = *a3;
    *(v9 + 24) = *(a3 + 16);
  }

  *(v9 + 32) = *(a3 + 24);
  if (*(a3 + 55) < 0)
  {
    sub_325C((v9 + 40), *(a3 + 32), *(a3 + 40));
  }

  else
  {
    *(v9 + 40) = *(a3 + 32);
    *(v9 + 56) = *(a3 + 48);
  }

  v10 = v9 + 64;
  v11 = *a1;
  v12 = a1[1];
  v13 = v9 + *a1 - v12;
  if (v12 != *a1)
  {
    v14 = *a1;
    v15 = v19 + *a1 - v12;
    do
    {
      *v15 = *v14;
      v16 = *(v14 + 8);
      *(v15 + 24) = *(v14 + 24);
      *(v15 + 8) = v16;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 8) = 0;
      *(v15 + 32) = *(v14 + 32);
      v17 = *(v14 + 40);
      *(v15 + 56) = *(v14 + 56);
      *(v15 + 40) = v17;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 40) = 0;
      v14 += 64;
      v15 += 64;
    }

    while (v14 != v12);
    while (1)
    {
      if (*(v11 + 63) < 0)
      {
        operator delete(*(v11 + 40));
        if (*(v11 + 31) < 0)
        {
LABEL_25:
          operator delete(*(v11 + 8));
        }
      }

      else if (*(v11 + 31) < 0)
      {
        goto LABEL_25;
      }

      v11 += 64;
      if (v11 == v12)
      {
        v11 = *a1;
        break;
      }
    }
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v20 + 64;
}

void sub_9D9CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v4 + 31) < 0)
  {
    operator delete(*v3);
    sub_9D940C(va);
    _Unwind_Resume(a1);
  }

  sub_9D940C(va);
  _Unwind_Resume(a1);
}

void *sub_9D9D0C(void *a1, uint64_t a2)
{
  v4 = sub_1232EA0(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v8);
  if (!v10)
  {
    return 0;
  }

  v9 = *v10;
  if (*v10)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v5 - 1;
      while (1)
      {
        v12 = v9[1];
        if (v12 == v6)
        {
          if (sub_1232EBC((v9 + 2), a2))
          {
            return v9;
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        v9 = *v9;
        if (!v9)
        {
          return v9;
        }
      }
    }

    do
    {
      v13 = v9[1];
      if (v13 == v6)
      {
        if (sub_1232EBC((v9 + 2), a2))
        {
          return v9;
        }
      }

      else
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

void *sub_9D9E48(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1232EA0(a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v7)
    {
      v9 = v5 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v11[1];
      if (v13 == v6)
      {
        if (sub_1232EBC((v11 + 2), a2))
        {
          return v11;
        }
      }

      else if ((v13 & (*&v7 - 1)) != v9)
      {
        goto LABEL_23;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_23;
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
      goto LABEL_23;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  if (!sub_1232EBC((v11 + 2), a2))
  {
    goto LABEL_12;
  }

  return v11;
}

void sub_9DA290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_9DA414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_9DA438(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  sub_64B998(a5);
  sub_64B998(a5 + 160);
  *(a5 + 352) = 0;
  *(a5 + 360) = -1;
  *(a5 + 363) = -1;
  *(a5 + 375) = 0;
  *(a5 + 383) = 0;
  *(a5 + 367) = 0;
  *(a5 + 391) = 0;
  *(a5 + 408) = 0;
  *(a5 + 416) = 0;
  *(a5 + 400) = 0;
  *(a5 + 424) = 0;
  *(a5 + 440) = 0;
  *(a5 + 448) = 0;
  *(a5 + 432) = 0;
  *(a5 + 456) = 0;
  if (a4)
  {
    sub_9DA718(a2, v25);
    v10 = *(a5 + 432);
    if (v10)
    {
      *(a5 + 440) = v10;
      operator delete(v10);
    }

    v11 = *v25;
    *(a5 + 432) = *v25;
    v12 = *&v25[8];
    *(a5 + 440) = *&v25[8];
    v13 = v12;
    if (v11 != v12)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  if (0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 4) <= a3)
  {
    sub_6FAB4();
  }

  sub_9DAA64(a1, *a2 + 144 * a3, v25);
  v13 = *(a5 + 440);
  if ((*v25 & *&v25[4]) != -1 && *&v25[16] != 0x7FFFFFFF)
  {
    v15 = *(a5 + 448);
    if (v13 >= v15)
    {
      v16 = *(a5 + 432);
      v17 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v16) >> 3);
      v18 = v17 + 1;
      if (v17 + 1 > 0x666666666666666)
      {
        sub_1794();
      }

      v19 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - v16) >> 3);
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x333333333333333)
      {
        v20 = 0x666666666666666;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (v20 <= 0x666666666666666)
        {
          operator new();
        }

        sub_1808();
      }

      v21 = *(a5 + 440);
      v22 = 8 * ((v13 - v16) >> 3);
      v23 = *&v25[16];
      *v22 = *v25;
      *(v22 + 16) = v23;
      *(v22 + 32) = v26;
      v13 = v22 + 40;
      v24 = 40 * v17 - (v21 - v16);
      memcpy((v22 - (v21 - v16)), v16, v21 - v16);
      *(a5 + 432) = v24;
      *(a5 + 440) = v13;
      *(a5 + 448) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v13 = *v25;
      *(v13 + 16) = *&v25[16];
      *(v13 + 32) = v26;
      v13 += 40;
    }

    *(a5 + 440) = v13;
  }

  v11 = *(a5 + 432);
  if (v11 == v13)
  {
LABEL_7:
    v14 = 0;
    goto LABEL_14;
  }

LABEL_5:
  while (*(v11 + 24) == 1)
  {
    v11 += 40;
    if (v11 == v13)
    {
      goto LABEL_7;
    }
  }

  v14 = 1;
LABEL_14:
  *(a5 + 456) = v14;
}

void sub_9DA718(uint64_t *a2@<X1>, void *a3@<X8>)
{
  v17 = 0uLL;
  v18 = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (0x8E38E38E38E38E39 * ((v4 - *a2) >> 4) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v19 = &v17;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_9DB79C(0, 0, 0, 1);
  v6 = *(&v17 + 1);
  v5 = v17;
  if (v17 != *(&v17 + 1))
  {
    do
    {
      v7 = a3[1];
      if (*a3 != v7 && *v5 == *(v7 - 40) && *(v5 + 4) == *(v7 - 36) && *(v5 + 8) == *(v7 - 32))
      {
        v8 = *(v5 + 16);
        if (v8 >= *(v7 - 24))
        {
          v8 = *(v7 - 24);
        }

        *(v7 - 24) = v8;
        v9 = *(v5 + 32);
        v10 = *(v7 - 8);
        v12 = v10 > 2 || v10 > v9;
        if (v9 >= 3 || !v12)
        {
          LOBYTE(v9) = *(v7 - 8);
        }

        *(v7 - 8) = v9;
        v13 = *(v5 + 12);
        v14 = *(v7 - 28);
        v15 = *(v5 + 12) == 0;
        if (v14 != 1)
        {
          v15 = v13 < 2;
        }

        if (v14 == 0 || !v15)
        {
          LOBYTE(v13) = *(v7 - 28);
        }

        *(v7 - 28) = v13;
        v16 = *(v7 - 16);
        if (v16 <= *(v5 + 24))
        {
          v16 = *(v5 + 24);
        }

        *(v7 - 16) = v16;
      }

      else
      {
        sub_9DB3EC(a3, v5);
      }

      v5 += 40;
    }

    while (v5 != v6);
    v5 = v17;
  }

  if (v5)
  {
    *(&v17 + 1) = v5;
    operator delete(v5);
  }
}

void sub_9DAA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_9DAA64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  v6 = v5;
  v7 = *(a2 + 16);
  while (v7 != v5)
  {
    v8 = v7 - 1136;
    v9 = *(v7 - 8);
    v7 -= 1136;
    if (!v9)
    {
      v6 = v8 + 1136;
      break;
    }
  }

  v10 = 0x193D4BB7E327A977 * ((v6 - v5) >> 4);
  v11 = v10 - 1;
  if (0x193D4BB7E327A977 * ((*(a2 + 16) - v5) >> 4) <= (v10 - 1))
  {
    sub_6FAB4();
  }

  v12 = (v5 + 1136 * v11);
  if (*(v12 + 282))
  {
    sub_5AF20();
  }

  v13 = *v12;
  v14 = v12[1];
  v15 = v12[3];
  v54 = v12[2];
  v55 = v15;
  v52 = v13;
  v53 = v14;
  v56 = 0;
  v50 = sub_503828(&v52);
  v48 = (v5 + 1136 * v11);
  if (v56 != -1)
  {
    (off_266F690[v56])(v57, &v52);
  }

  v47 = v10 - 1;
  v49 = a3;
  if (v6 != v5)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      --v10;
      v19 = (*(a2 + 8) + 1136 * v10);
      if (v19[282])
      {
        break;
      }

      sub_9DAF44(a1, (*(a2 + 8) + 1136 * v10), v50, v16, v17 == 0, v10 != 0, &v52);
      if (v52 && DWORD1(v52) != -1)
      {
        v44 = v52;
        v41 = DWORD2(v52);
        v45 = v53;
        v42 = v49;
        v43 = a1;
        goto LABEL_45;
      }

      v21 = v19[4];
      v20 = v19[5];
      if (v21 <= v20)
      {
        v22 = v19[5];
      }

      else
      {
        v22 = v19[4];
      }

      if (v20 <= v21)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0;
        do
        {
          v24 = v19[1];
          v25 = sub_3A231C(*(a1 + 24), v19[2] | (v24 << 32), 0);
          v26 = &v25[-*v25];
          if (*v26 < 5u)
          {
            v27 = 0;
          }

          else
          {
            v27 = *(v26 + 2);
            if (*(v26 + 2))
            {
              v27 += &v25[*&v25[v27]];
            }
          }

          v28 = (v27 + 4 * v24 + 4 + *(v27 + 4 * v24 + 4));
          v29 = (v28 - *v28);
          if (*v29 >= 0xDu && (v30 = v29[6]) != 0)
          {
            v23 = *(v28 + v30);
          }

          else
          {
            v23 = -1;
          }

          if (!v25[24 * v23 + 22 + 24 * v21 + *(v26 + 3) + *&v25[*(v26 + 3)]])
          {
            ++v18;
          }

          ++v21;
        }

        while (v22 != v21);
      }

      v16 += v18;
      ++v17;
    }

    while (v10);
  }

  v31 = v48[5] - 1;
  v32 = v48[1];
  v33 = sub_3A231C(*(a1 + 24), v48[2] | (v32 << 32), 0);
  v34 = &v33[-*v33];
  if (*v34 < 5u)
  {
    v35 = 0;
  }

  else
  {
    v35 = *(v34 + 2);
    if (*(v34 + 2))
    {
      v35 += &v33[*&v33[v35]];
    }
  }

  v36 = (v35 + 4 * v32 + 4 + *(v35 + 4 * v32 + 4));
  v37 = (v36 - *v36);
  if (*v37 >= 0xDu && (v38 = v37[6]) != 0)
  {
    v39 = *(v36 + v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = *&v33[24 * (v39 + v31) + 4 + *(v34 + 3) + *&v33[*(v34 + 3)]];
  v41 = 10 * (v50 - sub_9DAE24(a1, v48, v31, 1));
  if (!v47 && v48[5] - v48[4] == 1 && v41 <= *(a1 + 4))
  {
    *(v49 + 8) = 0u;
    *(v49 + 24) = 0u;
    result = NAN;
    *v49 = -1;
    *(v49 + 8) = 0x7FFFFFFF;
    *(v49 + 16) = 0x7FFFFFFF;
    *(v49 + 32) = 0;
  }

  else
  {
    v42 = v49;
    v43 = a1;
    v44 = v40;
    v45 = 1;
LABEL_45:
    sub_9DB270(v43, v44, v41, v45, v42);
  }

  return result;
}

void sub_9DAE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_9DB5E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9DAE24(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v18 = vrev64_s32(*(a2 + 4));
  v8 = sub_3A25A8(*(a1 + 24), v18, 0, "trip");
  v9 = (v8 - *v8);
  if (*v9 >= 0x13u && (v10 = v9[9]) != 0 && *(v8 + v10 + *(v8 + v10)))
  {
    v11 = sub_96A748(*(a1 + 24), &v18, *(a2 + 12), *(a2 + 16));
    v12 = *(a1 + 24);
    v13 = *(a2 + 12);
    if (a4)
    {
      v14 = sub_96A748(v12, &v18, v13, a3);
    }

    else
    {
      v14 = sub_96A8FC(v12, &v18, v13, a3);
    }

    return (v14 - v11 + *(a2 + 24));
  }

  else
  {
    v15 = *(a1 + 24);
    v16 = *(a2 + 12);
    if (a4)
    {
      return sub_96A748(v15, &v18, v16, a3);
    }

    else
    {
      return sub_96A8FC(v15, &v18, v16, a3);
    }
  }
}

int *sub_9DAF44@<X0>(int *result@<X0>, unsigned int *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, unint64_t *a7@<X8>)
{
  v7 = a2[5] + (a5 ^ 1);
  v8 = a2[4] + (a6 ^ 1);
  if (v7 <= v8)
  {
LABEL_29:
    v34 = 0;
    v35 = a7;
    *a7 = 0xFFFFFFFF00000000;
    v29 = 0x7FFFFFFF;
  }

  else
  {
    v10 = result;
    v11 = a2[1];
    v12 = a2[2] | (v11 << 32);
    v13 = 4 * v11;
    v14 = v7 - 1;
    while (1)
    {
      result = sub_3A231C(*(v10 + 3), v12, 0);
      v15 = (result - *result);
      if (*v15 < 5u)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15[2];
        if (v15[2])
        {
          v16 += result + *(result + v16);
        }
      }

      v17 = (v16 + v13 + 4 + *(v16 + v13 + 4));
      v18 = (v17 - *v17);
      if (*v18 >= 0xDu && (v19 = v18[6]) != 0)
      {
        v20 = *(v17 + v19);
      }

      else
      {
        v20 = -1;
      }

      --v7;
      if (!*(&result[6 * v20 + 5 + 6 * v7] + v15[3] + *(result + v15[3]) + 2))
      {
        v21 = sub_3A231C(*(v10 + 3), v12, 0);
        v22 = &v21[-*v21];
        if (*v22 < 5u)
        {
          v23 = 0;
        }

        else
        {
          v23 = *(v22 + 2);
          if (*(v22 + 2))
          {
            v23 += &v21[*&v21[v23]];
          }
        }

        v24 = (v23 + v13 + 4 + *(v23 + v13 + 4));
        v25 = (v24 - *v24);
        if (*v25 >= 0xDu && (v26 = v25[6]) != 0)
        {
          v27 = *(v24 + v26);
        }

        else
        {
          v27 = -1;
        }

        v28 = *&v21[24 * v27 + 4 + 24 * v7 + *(v22 + 3) + *&v21[*(v22 + 3)]];
        result = sub_9DAE24(v10, a2, v7, a2[5] > v7);
        v29 = 10 * (a3 - result);
        if (v29 > *v10)
        {
          goto LABEL_29;
        }

        result = sub_502FF8(*(v10 + 2), v28, 0, "stop");
        v30 = (result - *result);
        if (*v30 >= 0x3Fu)
        {
          v31 = v30[31];
          if (v31)
          {
            if (*(result + v31) == 1)
            {
              break;
            }
          }
        }
      }

      --v14;
      if (v8 >= v7)
      {
        goto LABEL_29;
      }
    }

    v32 = a2[5];
    if (v32 <= v7)
    {
      v33 = 0;
    }

    else
    {
      v33 = 0;
      if (v32 > v14)
      {
        v14 = a2[5];
      }

      do
      {
        v37 = a2[1];
        result = sub_3A231C(*(v10 + 3), a2[2] | (v37 << 32), 0);
        v38 = (result - *result);
        if (*v38 < 5u)
        {
          v39 = 0;
        }

        else
        {
          v39 = v38[2];
          if (v38[2])
          {
            v39 += result + *(result + v39);
          }
        }

        v40 = (v39 + 4 * v37 + 4 + *(v39 + 4 * v37 + 4));
        v41 = (v40 - *v40);
        if (*v41 >= 0xDu && (v42 = v41[6]) != 0)
        {
          v36 = *(v40 + v42);
        }

        else
        {
          v36 = -1;
        }

        if (!*(&result[6 * v36 + 5 + 6 * v7] + v38[3] + *(result + v38[3]) + 2))
        {
          ++v33;
        }

        ++v7;
      }

      while (v14 != v7);
    }

    v35 = a7;
    v34 = v33 + a4;
    *a7 = v28;
  }

  *(v35 + 2) = v29;
  v35[2] = v34;
  return result;
}

int *sub_9DB270@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_502FF8(*(a1 + 16), a2, 0, "stop");
  v11 = v10 + *(v10 - *v10 + 6);
  v12 = *v11;
  LODWORD(v11) = *(v11 + 4);
  if (v11 >= 0xFFFFFFFE)
  {
    v11 = 4294967294;
  }

  else
  {
    v11 = v11;
  }

  *a5 = v12 | (v11 << 32);
  *(a5 + 8) = 0x7FFFFFFF;
  result = sub_502FF8(*(a1 + 16), a2, 0, "stop");
  v14 = (result - *result);
  if (*v14 < 0x3Fu)
  {
    *(a5 + 12) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = a4;
    if (a4 > 1)
    {
LABEL_8:
      *(a5 + 32) = 2;
      return result;
    }
  }

  else
  {
    v15 = v14[31];
    if (v15)
    {
      LOBYTE(v15) = *(result + v15);
    }

    *(a5 + 12) = v15;
    *(a5 + 16) = 0;
    *(a5 + 24) = a4;
    if (a4 > 1)
    {
      goto LABEL_8;
    }
  }

  v16 = *(a1 + 8) * a3;
  if (v16 >= 0.0)
  {
    if (v16 < 4.50359963e15)
    {
      v17 = (v16 + v16) + 1;
      goto LABEL_15;
    }
  }

  else if (v16 > -4.50359963e15)
  {
    v17 = (v16 + v16) - 1 + (((v16 + v16) - 1) >> 63);
LABEL_15:
    v16 = (v17 >> 1);
  }

  *(a5 + 16) = v16;
  if (*(a1 + 4) >= a3)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  *(a5 + 32) = v18;
  return result;
}

void sub_9DB3EC(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v10 = v9 + 1;
  if (v9 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x333333333333333)
  {
    v12 = 0x666666666666666;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 8 * ((v3 - *a1) >> 3);
  v14 = a2[1];
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a2 + 4);
  v7 = 40 * v9 + 40;
  v15 = 40 * v9 - (v3 - v8);
  memcpy((v13 - (v3 - v8)), v8, v3 - v8);
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

uint64_t sub_9DB538(uint64_t a1)
{
  v2 = *(a1 + 432);
  if (v2)
  {
    *(a1 + 440) = v2;
    operator delete(v2);
  }

  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
    if ((*(a1 + 391) & 0x80000000) == 0)
    {
LABEL_5:
      v3 = *(a1 + 352);
      if (v3 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 391) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 368));
  v3 = *(a1 + 352);
  if (v3 != -1)
  {
LABEL_9:
    (off_266F668[v3])(&v5, a1 + 320);
  }

LABEL_10:
  *(a1 + 352) = -1;
  sub_6081F0(a1 + 160);
  return sub_6081F0(a1);
}

uint64_t sub_9DB5E8(uint64_t a1)
{
  v2 = *(a1 + 1128);
  if (v2 != -1)
  {
    (off_266F690[v2])(&v4, a1);
  }

  *(a1 + 1128) = -1;
  return a1;
}

uint64_t *sub_9DB644(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v7 = *v2;
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *v2) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      sub_1794();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v12 = result;
    v13 = 8 * ((v3 - *v2) >> 3);
    v14 = a2[1];
    *v13 = *a2;
    *(v13 + 16) = v14;
    *(v13 + 32) = *(a2 + 4);
    v15 = 40 * v8 + 40;
    v16 = 40 * v8 - (v3 - v7);
    memcpy((v13 - (v3 - v7)), v7, v3 - v7);
    *v2 = v16;
    *(v2 + 8) = v15;
    *(v2 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }

    result = v12;
    *(v2 + 8) = v15;
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    *(v2 + 8) = v3 + 40;
  }

  return result;
}

__n128 sub_9DB79C(char *a1, char *a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = a2 - 40;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = &a2[-v8];
    v10 = 0xCCCCCCCCCCCCCCCDLL * (&a2[-v8] >> 3);
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      v191 = *(a2 - 8);
      v192 = *(v8 + 8);
      if (v191 == 0x7FFFFFFF)
      {
        v193 = v192 != 0x7FFFFFFF;
      }

      else
      {
        if (v192 != 0x7FFFFFFF)
        {
          if (*v7 >= *v8)
          {
            v369 = 1;
          }

          else
          {
            v369 = -1;
          }

          if (*v7 == *v8)
          {
            v370 = *(v8 + 4);
            v371 = *(a2 - 9);
            v311 = v191 < v192;
            v375 = -1;
            if (!v311)
            {
              v375 = 0;
            }

            goto LABEL_980;
          }

LABEL_985:
          if (v369 < 0)
          {
            v492 = *(v8 + 32);
            v479 = *v8;
            v485 = *(v8 + 16);
            v423 = *v7;
            v424 = *(v7 + 1);
            *(v8 + 32) = v7[32];
            *v8 = v423;
            *(v8 + 16) = v424;
            result = v479;
            v7[32] = v492;
            *v7 = v479;
            *(v7 + 1) = v485;
          }

          return result;
        }

        v193 = 0;
      }

      if (*v7 >= *v8)
      {
        v369 = 1;
      }

      else
      {
        v369 = -1;
      }

      if (*v7 == *v8)
      {
        v370 = *(v8 + 4);
        v371 = *(a2 - 9);
        v27 = v191 == 0x7FFFFFFF;
        v372 = v191 != 0x7FFFFFFF;
        v373 = v27;
        v27 = (v193 & v373) == 0;
        v374 = -1;
        if (v27)
        {
          v374 = 1;
        }

        if (v372 != v193)
        {
          v375 = v374;
        }

        else
        {
          v375 = 0;
        }

LABEL_980:
        v422 = -1;
        if (v371 >= v370)
        {
          v422 = 1;
        }

        if (v371 == v370)
        {
          v369 = v375;
        }

        else
        {
          v369 = v422;
        }

        goto LABEL_985;
      }

      goto LABEL_985;
    }

LABEL_9:
    if (v9 <= 959)
    {
      v197 = (v8 + 40);
      v199 = v8 == a2 || v197 == a2;
      if (a4)
      {
        if (v199)
        {
          return result;
        }

        v200 = 0;
        v201 = v8;
        while (2)
        {
          v202 = v197;
          v203 = *(v201 + 48);
          v204 = *(v201 + 8);
          v205 = *v201;
          if (v203 == 0x7FFFFFFF)
          {
            v206 = v204 != 0x7FFFFFFF;
            v207 = *v202;
            if (*v202 >= v205)
            {
              v208 = 1;
            }

            else
            {
              v208 = -1;
            }

            if (v207 == v205)
            {
              goto LABEL_507;
            }
          }

          else
          {
            if (v204 == 0x7FFFFFFF)
            {
              v206 = 0;
              v207 = *v202;
              if (*v202 >= v205)
              {
                v208 = 1;
              }

              else
              {
                v208 = -1;
              }

              if (v207 != v205)
              {
                break;
              }

LABEL_507:
              v209 = *(v201 + 4);
              v210 = *(v201 + 44);
              if (v206 && v203 == 0x7FFFFFFF)
              {
                v211 = -1;
              }

              else
              {
                v211 = 1;
              }

              if ((v203 != 0x7FFFFFFF) != v206)
              {
                v212 = v211;
              }

              else
              {
                v212 = 0;
              }

              v213 = v210 == v209;
              if (v210 >= v209)
              {
                v214 = 1;
              }

              else
              {
                v214 = -1;
              }

              if (v213)
              {
                v214 = v212;
              }

              if (v214 < 0)
              {
LABEL_537:
                v220 = *(v201 + 44);
                *v475 = *(v201 + 52);
                *&v475[12] = *(v201 + 64);
                v221 = v200;
                if (v203 == 0x7FFFFFFF)
                {
                  while (1)
                  {
                    v235 = v221;
                    v236 = v8 + v221;
                    v237 = *(v8 + v221 + 16);
                    *(v236 + 40) = *(v8 + v221);
                    *(v236 + 56) = v237;
                    *(v236 + 72) = *(v8 + v221 + 32);
                    if (!v221)
                    {
                      break;
                    }

                    v238 = *(v236 - 40);
                    v239 = v205 == v238;
                    if (v205 >= v238)
                    {
                      v240 = 1;
                    }

                    else
                    {
                      v240 = 255;
                    }

                    if (v239)
                    {
                      v242 = *(v8 + v221 - 36);
                      v241 = *(v8 + v221 - 32);
                      v243 = v220 == v242;
                      if (v220 >= v242)
                      {
                        v240 = 1;
                      }

                      else
                      {
                        v240 = 255;
                      }

                      if (v243)
                      {
                        v240 = 255;
                      }

                      if (v243 && v241 == 0x7FFFFFFF)
                      {
                        goto LABEL_494;
                      }
                    }

                    v201 -= 40;
                    v221 = v235 - 40;
                    if (v240 < 0x80)
                    {
                      v201 = v8 + v235;
                      goto LABEL_494;
                    }
                  }
                }

                else
                {
                  v222 = v200;
                  while (1)
                  {
                    v223 = v8 + v222;
                    v224 = *(v8 + v222 + 16);
                    *(v223 + 40) = *(v8 + v222);
                    *(v223 + 56) = v224;
                    *(v223 + 72) = *(v8 + v222 + 32);
                    if (!v222)
                    {
                      break;
                    }

                    v225 = *(v223 - 32);
                    v226 = *(v223 - 40);
                    if (v225 == 0x7FFFFFFF)
                    {
                      v227 = v205 == v226;
                      if (v205 >= v226)
                      {
                        v228 = 1;
                      }

                      else
                      {
                        v228 = -1;
                      }

                      if (v227)
                      {
                        v229 = *(v8 + v222 - 36);
                        v230 = v220 == v229;
                        v228 = v220 >= v229 ? 1 : -1;
                        if (v230)
                        {
                          v228 = 1;
                        }
                      }
                    }

                    else
                    {
                      v231 = v205 == v226;
                      if (v205 >= v226)
                      {
                        v228 = 1;
                      }

                      else
                      {
                        v228 = -1;
                      }

                      if (v231)
                      {
                        v232 = *(v8 + v222 - 36);
                        v233 = v203 >= v225 ? 0 : -1;
                        v234 = v220 == v232;
                        v228 = v220 >= v232 ? 1 : -1;
                        if (v234)
                        {
                          v228 = v233;
                        }
                      }
                    }

                    v222 -= 40;
                    if ((v228 & 0x80) == 0)
                    {
                      v201 = v8 + v222 + 40;
                      goto LABEL_494;
                    }
                  }
                }

                v201 = v8;
LABEL_494:
                *v201 = v205;
                *(v201 + 4) = v220;
                *(v201 + 8) = v203;
                result = *v475;
                *(v201 + 25) = *&v475[13];
                *(v201 + 12) = *v475;
              }

LABEL_495:
              v197 = v202 + 40;
              v200 += 40;
              v201 = v202;
              if (v202 + 40 == a2)
              {
                return result;
              }

              continue;
            }

            v207 = *v202;
            if (*v202 >= v205)
            {
              v208 = 1;
            }

            else
            {
              v208 = -1;
            }

            if (v207 == v205)
            {
              v215 = *(v201 + 4);
              v216 = *(v201 + 44);
              if (v203 >= v204)
              {
                v217 = 0;
              }

              else
              {
                v217 = -1;
              }

              v218 = v216 == v215;
              if (v216 >= v215)
              {
                v219 = 1;
              }

              else
              {
                v219 = -1;
              }

              if (v218)
              {
                v219 = v217;
              }

              if (v219 < 0)
              {
                goto LABEL_537;
              }

              goto LABEL_495;
            }
          }

          break;
        }

        v205 = v207;
        if (v208 < 0)
        {
          goto LABEL_537;
        }

        goto LABEL_495;
      }

      if (v199)
      {
        return result;
      }

      while (2)
      {
        v384 = v197;
        v385 = *(a1 + 12);
        v386 = *(a1 + 2);
        v387 = *a1;
        if (v385 == 0x7FFFFFFF)
        {
          v388 = v386 != 0x7FFFFFFF;
          v389 = *v384;
          if (*v384 >= v387)
          {
            v390 = 1;
          }

          else
          {
            v390 = -1;
          }

          if (v389 == v387)
          {
            goto LABEL_897;
          }
        }

        else
        {
          if (v386 == 0x7FFFFFFF)
          {
            v388 = 0;
            v389 = *v384;
            if (*v384 >= v387)
            {
              v390 = 1;
            }

            else
            {
              v390 = -1;
            }

            if (v389 != v387)
            {
              break;
            }

LABEL_897:
            v391 = *(a1 + 1);
            v392 = *(a1 + 11);
            if (v388 && v385 == 0x7FFFFFFF)
            {
              v393 = -1;
            }

            else
            {
              v393 = 1;
            }

            if ((v385 != 0x7FFFFFFF) != v388)
            {
              v394 = v393;
            }

            else
            {
              v394 = 0;
            }

            v395 = v392 == v391;
            if (v392 >= v391)
            {
              v396 = 1;
            }

            else
            {
              v396 = -1;
            }

            if (v395)
            {
              v396 = v394;
            }

            if (v396 < 0)
            {
LABEL_927:
              v402 = *(a1 + 11);
              *v478 = *(a1 + 52);
              *&v478[12] = *(a1 + 4);
              if (v385 == 0x7FFFFFFF)
              {
                do
                {
                  v403 = a1;
                  v415 = *(a1 + 1);
                  *(a1 + 40) = *a1;
                  *(a1 + 56) = v415;
                  a1[72] = a1[32];
                  v416 = *(a1 - 10);
                  a1 -= 40;
                  v417 = v387 == v416;
                  if (v387 >= v416)
                  {
                    v418 = 1;
                  }

                  else
                  {
                    v418 = 255;
                  }

                  if (v417)
                  {
                    v419 = *(v403 - 9);
                    v420 = v402 == v419;
                    if (v402 >= v419)
                    {
                      v418 = 1;
                    }

                    else
                    {
                      v418 = 255;
                    }

                    if (v420)
                    {
                      v418 = 255;
                    }

                    if (v420 && *(v403 - 8) == 0x7FFFFFFF)
                    {
                      break;
                    }
                  }
                }

                while (v418 > 0x7F);
              }

              else
              {
                v403 = v384;
                do
                {
                  v404 = *(v403 - 24);
                  *v403 = *(v403 - 40);
                  *(v403 + 1) = v404;
                  v403[32] = *(v403 - 8);
                  v405 = *(v403 - 18);
                  v406 = *(v403 - 20);
                  if (v405 == 0x7FFFFFFF)
                  {
                    v407 = v387 == v406;
                    if (v387 >= v406)
                    {
                      v408 = 1;
                    }

                    else
                    {
                      v408 = -1;
                    }

                    if (v407)
                    {
                      v409 = *(v403 - 19);
                      v410 = v402 == v409;
                      v408 = v402 >= v409 ? 1 : -1;
                      if (v410)
                      {
                        v408 = 1;
                      }
                    }
                  }

                  else
                  {
                    v411 = v387 == v406;
                    if (v387 >= v406)
                    {
                      v408 = 1;
                    }

                    else
                    {
                      v408 = -1;
                    }

                    if (v411)
                    {
                      v412 = *(v403 - 19);
                      v413 = v385 >= v405 ? 0 : -1;
                      v414 = v402 == v412;
                      v408 = v402 >= v412 ? 1 : -1;
                      if (v414)
                      {
                        v408 = v413;
                      }
                    }
                  }

                  v403 -= 40;
                }

                while (v408 < 0);
              }

              *v403 = v387;
              *(v403 + 1) = v402;
              *(v403 + 2) = v385;
              result = *v478;
              *(v403 + 25) = *&v478[13];
              *(v403 + 12) = *v478;
            }

LABEL_885:
            v197 = v384 + 40;
            a1 = v384;
            if (v384 + 40 == a2)
            {
              return result;
            }

            continue;
          }

          v389 = *v384;
          if (*v384 >= v387)
          {
            v390 = 1;
          }

          else
          {
            v390 = -1;
          }

          if (v389 == v387)
          {
            v397 = *(a1 + 1);
            v398 = *(a1 + 11);
            if (v385 >= v386)
            {
              v399 = 0;
            }

            else
            {
              v399 = -1;
            }

            v400 = v398 == v397;
            if (v398 >= v397)
            {
              v401 = 1;
            }

            else
            {
              v401 = -1;
            }

            if (v400)
            {
              v401 = v399;
            }

            if (v401 < 0)
            {
              goto LABEL_927;
            }

            goto LABEL_885;
          }
        }

        break;
      }

      v387 = v389;
      if (v390 < 0)
      {
        goto LABEL_927;
      }

      goto LABEL_885;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v245 = (v10 - 2) >> 1;
      v246 = v245;
      while (2)
      {
        v247 = v246;
        if (v245 >= v246)
        {
          v248 = (2 * v246) | 1;
          v249 = v8 + 40 * v248;
          if (2 * v247 + 2 < v10)
          {
            v250 = *(v249 + 8);
            v251 = *(v249 + 48);
            if (v250 == 0x7FFFFFFF)
            {
              v252 = v251 != 0x7FFFFFFF;
              v255 = *(v249 + 40);
              if (*v249 >= v255)
              {
                v254 = 1;
              }

              else
              {
                v254 = -1;
              }

              if (*v249 != v255)
              {
                goto LABEL_627;
              }

              goto LABEL_605;
            }

            if (v251 == 0x7FFFFFFF)
            {
              v252 = 0;
              v253 = *(v249 + 40);
              if (*v249 >= v253)
              {
                v254 = 1;
              }

              else
              {
                v254 = -1;
              }

              if (*v249 != v253)
              {
                goto LABEL_627;
              }

LABEL_605:
              v256 = *(v249 + 44);
              v257 = *(v249 + 4);
              v27 = v250 == 0x7FFFFFFF;
              v258 = v250 != 0x7FFFFFFF;
              v259 = v27;
              if ((v252 & v259) != 0)
              {
                v260 = -1;
              }

              else
              {
                v260 = 1;
              }

              if (v258 != v252)
              {
                v261 = v260;
              }

              else
              {
                v261 = 0;
              }
            }

            else
            {
              v262 = *(v249 + 40);
              if (*v249 >= v262)
              {
                v254 = 1;
              }

              else
              {
                v254 = -1;
              }

              if (*v249 != v262)
              {
                goto LABEL_627;
              }

              v256 = *(v249 + 44);
              v257 = *(v249 + 4);
              if (v250 >= v251)
              {
                v261 = 0;
              }

              else
              {
                v261 = -1;
              }
            }

            if (v257 >= v256)
            {
              v263 = 1;
            }

            else
            {
              v263 = -1;
            }

            if (v257 == v256)
            {
              v254 = v261;
            }

            else
            {
              v254 = v263;
            }

LABEL_627:
            if (v254 < 0)
            {
              v249 += 40;
              v248 = 2 * v247 + 2;
            }
          }

          v264 = v8 + 40 * v247;
          v265 = *(v249 + 8);
          v266 = *(v264 + 8);
          if (v265 == 0x7FFFFFFF)
          {
            v267 = v266 != 0x7FFFFFFF;
            v268 = *v249;
            v269 = *v264;
            if (*v249 >= *v264)
            {
              v270 = 1;
            }

            else
            {
              v270 = -1;
            }

            if (v268 == v269)
            {
              goto LABEL_640;
            }
          }

          else
          {
            if (v266 == 0x7FFFFFFF)
            {
              v267 = 0;
              v268 = *v249;
              v269 = *v264;
              if (*v249 >= *v264)
              {
                v270 = 1;
              }

              else
              {
                v270 = -1;
              }

              if (v268 != v269)
              {
                goto LABEL_663;
              }

LABEL_640:
              v271 = *(v264 + 4);
              v272 = *(v249 + 4);
              v27 = v265 == 0x7FFFFFFF;
              v273 = v265 != 0x7FFFFFFF;
              v274 = v27;
              if ((v267 & v274) != 0)
              {
                v275 = -1;
              }

              else
              {
                v275 = 1;
              }

              if (v273 != v267)
              {
                v276 = v275;
              }

              else
              {
                v276 = 0;
              }

LABEL_656:
              v277 = v272 == v271;
              if (v272 >= v271)
              {
                v278 = 1;
              }

              else
              {
                v278 = -1;
              }

              if (v277)
              {
                v270 = v276;
              }

              else
              {
                v270 = v278;
              }

              v269 = v268;
              goto LABEL_663;
            }

            v268 = *v249;
            v269 = *v264;
            if (*v249 >= *v264)
            {
              v270 = 1;
            }

            else
            {
              v270 = -1;
            }

            if (v268 == v269)
            {
              v271 = *(v264 + 4);
              v272 = *(v249 + 4);
              if (v265 >= v266)
              {
                v276 = 0;
              }

              else
              {
                v276 = -1;
              }

              goto LABEL_656;
            }
          }

LABEL_663:
          if ((v270 & 0x80) == 0)
          {
            v279 = *(v264 + 4);
            *&v476[12] = *(v264 + 24);
            *v476 = *(v264 + 12);
            while (1)
            {
              v282 = v264;
              v264 = v249;
              v283 = *v249;
              v284 = *(v249 + 16);
              *(v282 + 32) = *(v249 + 32);
              *v282 = v283;
              *(v282 + 16) = v284;
              if (v245 < v248)
              {
LABEL_590:
                *v264 = v269;
                *(v264 + 4) = v279;
                *(v264 + 8) = v266;
                *(v264 + 25) = *&v476[13];
                *(v264 + 12) = *v476;
                goto LABEL_591;
              }

              v285 = (2 * v248) | 1;
              v249 = v8 + 40 * v285;
              v248 = 2 * v248 + 2;
              if (v248 < v10)
              {
                break;
              }

              v248 = v285;
LABEL_711:
              v300 = *(v249 + 8);
              v301 = v266 != 0x7FFFFFFF && v300 == 0x7FFFFFFF;
              v302 = *v249;
              if (v300 == 0x7FFFFFFF || v266 == 0x7FFFFFFF)
              {
                v304 = v302 == v269;
                if (v302 >= v269)
                {
                  v281 = 1;
                }

                else
                {
                  v281 = -1;
                }

                if (v304)
                {
                  v305 = *(v249 + 4);
                  v306 = v300 != 0x7FFFFFFF;
                  if (v301)
                  {
                    v307 = -1;
                  }

                  else
                  {
                    v307 = 1;
                  }

                  if (v306 != v301)
                  {
                    v308 = v307;
                  }

                  else
                  {
                    v308 = 0;
                  }

LABEL_665:
                  v280 = v305 == v279;
                  if (v305 >= v279)
                  {
                    v281 = 1;
                  }

                  else
                  {
                    v281 = -1;
                  }

                  if (v280)
                  {
                    v281 = v308;
                  }
                }
              }

              else
              {
                v309 = v302 == v269;
                if (v302 >= v269)
                {
                  v281 = 1;
                }

                else
                {
                  v281 = -1;
                }

                if (v309)
                {
                  v305 = *(v249 + 4);
                  if (v300 >= v266)
                  {
                    v308 = 0;
                  }

                  else
                  {
                    v308 = -1;
                  }

                  goto LABEL_665;
                }
              }

              if (v281 < 0)
              {
                goto LABEL_590;
              }
            }

            v286 = *(v249 + 8);
            v287 = *(v249 + 48);
            if (v286 != 0x7FFFFFFF)
            {
              if (v287 == 0x7FFFFFFF)
              {
                v288 = 0;
                v289 = *(v249 + 40);
                if (*v249 >= v289)
                {
                  v290 = 1;
                }

                else
                {
                  v290 = -1;
                }

                if (*v249 != v289)
                {
                  goto LABEL_708;
                }

LABEL_686:
                v292 = *(v249 + 44);
                v293 = *(v249 + 4);
                v27 = v286 == 0x7FFFFFFF;
                v294 = v286 != 0x7FFFFFFF;
                v295 = v27;
                if ((v288 & v295) != 0)
                {
                  v296 = -1;
                }

                else
                {
                  v296 = 1;
                }

                if (v294 != v288)
                {
                  v297 = v296;
                }

                else
                {
                  v297 = 0;
                }
              }

              else
              {
                v298 = *(v249 + 40);
                if (*v249 >= v298)
                {
                  v290 = 1;
                }

                else
                {
                  v290 = -1;
                }

                if (*v249 != v298)
                {
                  goto LABEL_708;
                }

                v292 = *(v249 + 44);
                v293 = *(v249 + 4);
                if (v286 >= v287)
                {
                  v297 = 0;
                }

                else
                {
                  v297 = -1;
                }
              }

              if (v293 >= v292)
              {
                v299 = 1;
              }

              else
              {
                v299 = -1;
              }

              if (v293 == v292)
              {
                v290 = v297;
              }

              else
              {
                v290 = v299;
              }

LABEL_708:
              if (v290 < 0)
              {
                v249 += 40;
              }

              else
              {
                v248 = v285;
              }

              goto LABEL_711;
            }

            v288 = v287 != 0x7FFFFFFF;
            v291 = *(v249 + 40);
            if (*v249 >= v291)
            {
              v290 = 1;
            }

            else
            {
              v290 = -1;
            }

            if (*v249 != v291)
            {
              goto LABEL_708;
            }

            goto LABEL_686;
          }
        }

LABEL_591:
        v246 = v247 - 1;
        if (v247)
        {
          continue;
        }

        break;
      }

      v310 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 3);
      while (2)
      {
        v312 = 0;
        v491 = *(v8 + 32);
        v477 = *v8;
        v484 = *(v8 + 16);
        v313 = v8;
LABEL_760:
        v327 = (v313 + 40 * v312);
        v323 = (v327 + 10);
        v324 = (2 * v312) | 1;
        v328 = 2 * v312 + 2;
        if (v328 >= v310)
        {
          goto LABEL_759;
        }

        v329 = (v327 + 20);
        v330 = v327[12];
        v331 = v327[22];
        if (v330 == 0x7FFFFFFF)
        {
          v332 = v331 != 0x7FFFFFFF;
          if (*v323 >= *v329)
          {
            v322 = 1;
          }

          else
          {
            v322 = -1;
          }

          if (*v323 != *v329)
          {
            goto LABEL_757;
          }

LABEL_742:
          v314 = v327[21];
          v315 = v327[11];
          v27 = v330 == 0x7FFFFFFF;
          v316 = v330 != 0x7FFFFFFF;
          v317 = v27;
          if ((v332 & v317) != 0)
          {
            v318 = -1;
          }

          else
          {
            v318 = 1;
          }

          if (v316 != v332)
          {
            v319 = v318;
          }

          else
          {
            v319 = 0;
          }
        }

        else
        {
          if (v331 == 0x7FFFFFFF)
          {
            v332 = 0;
            if (*v323 >= *v329)
            {
              v322 = 1;
            }

            else
            {
              v322 = -1;
            }

            if (*v323 == *v329)
            {
              goto LABEL_742;
            }

LABEL_757:
            if (v322 < 0)
            {
              v323 = v329;
              v324 = v328;
            }

LABEL_759:
            v325 = *v323;
            v326 = *(v323 + 1);
            *(v313 + 32) = v323[32];
            *v313 = v325;
            *(v313 + 16) = v326;
            v313 = v323;
            v312 = v324;
            if (v324 > ((v310 - 2) >> 1))
            {
              a2 -= 40;
              if (v323 == a2)
              {
                result = v477;
                v323[32] = v491;
                *v323 = v477;
                *(v323 + 1) = v484;
                goto LABEL_740;
              }

              v333 = *a2;
              v334 = *(a2 + 1);
              v323[32] = a2[32];
              *v323 = v333;
              *(v323 + 1) = v334;
              result = v477;
              a2[32] = v491;
              *a2 = v477;
              *(a2 + 1) = v484;
              v335 = &v323[-v8 + 40];
              if (v335 >= 41)
              {
                v336 = (0xCCCCCCCCCCCCCCCDLL * (v335 >> 3) - 2) >> 1;
                v337 = v8 + 40 * v336;
                v338 = *(v337 + 8);
                v339 = *(v323 + 2);
                if (v338 == 0x7FFFFFFF)
                {
                  v340 = v339 != 0x7FFFFFFF;
                  v341 = *v337;
                  v342 = *v323;
                  if (*v337 >= *v323)
                  {
                    v343 = 1;
                  }

                  else
                  {
                    v343 = -1;
                  }

                  if (v341 == v342)
                  {
                    goto LABEL_793;
                  }
                }

                else
                {
                  if (v339 == 0x7FFFFFFF)
                  {
                    v340 = 0;
                    v341 = *v337;
                    v342 = *v323;
                    if (*v337 >= *v323)
                    {
                      v343 = 1;
                    }

                    else
                    {
                      v343 = -1;
                    }

                    if (v341 != v342)
                    {
                      goto LABEL_816;
                    }

LABEL_793:
                    v344 = *(v323 + 1);
                    v345 = *(v337 + 4);
                    v27 = v338 == 0x7FFFFFFF;
                    v346 = v338 != 0x7FFFFFFF;
                    v347 = v27;
                    if ((v340 & v347) != 0)
                    {
                      v348 = -1;
                    }

                    else
                    {
                      v348 = 1;
                    }

                    if (v346 != v340)
                    {
                      v349 = v348;
                    }

                    else
                    {
                      v349 = 0;
                    }

LABEL_809:
                    v350 = v345 == v344;
                    if (v345 >= v344)
                    {
                      v351 = 1;
                    }

                    else
                    {
                      v351 = -1;
                    }

                    if (v350)
                    {
                      v343 = v349;
                    }

                    else
                    {
                      v343 = v351;
                    }

                    v342 = v341;
                    goto LABEL_816;
                  }

                  v341 = *v337;
                  v342 = *v323;
                  if (*v337 >= *v323)
                  {
                    v343 = 1;
                  }

                  else
                  {
                    v343 = -1;
                  }

                  if (v341 == v342)
                  {
                    v344 = *(v323 + 1);
                    v345 = *(v337 + 4);
                    if (v338 >= v339)
                    {
                      v349 = 0;
                    }

                    else
                    {
                      v349 = -1;
                    }

                    goto LABEL_809;
                  }
                }

LABEL_816:
                if (v343 < 0)
                {
                  v352 = *(v323 + 1);
                  *&v471[12] = *(v323 + 24);
                  *v471 = *(v323 + 12);
                  if (v339 == 0x7FFFFFFF)
                  {
                    do
                    {
                      v353 = v323;
                      v323 = v337;
                      v354 = *v337;
                      v355 = *(v337 + 16);
                      v353[32] = *(v337 + 32);
                      *v353 = v354;
                      *(v353 + 1) = v355;
                      if (!v336)
                      {
                        break;
                      }

                      v336 = (v336 - 1) >> 1;
                      v337 = v8 + 40 * v336;
                      v356 = *v337 >= v342 ? 1 : 255;
                      if (*v337 == v342)
                      {
                        v357 = *(v337 + 4);
                        v358 = v357 == v352;
                        v356 = v357 >= v352 ? 1 : 255;
                        if (v358)
                        {
                          break;
                        }
                      }
                    }

                    while (v356 >= 0x80);
LABEL_853:
                    *v323 = v342;
                    *(v323 + 1) = v352;
                    *(v323 + 2) = v339;
                    result = *v471;
                    *(v323 + 25) = *&v471[13];
                    *(v323 + 12) = *v471;
                    goto LABEL_740;
                  }

                  while (2)
                  {
                    v360 = v323;
                    v323 = v337;
                    v361 = *v337;
                    v362 = *(v337 + 16);
                    v360[32] = *(v337 + 32);
                    *v360 = v361;
                    *(v360 + 1) = v362;
                    if (!v336)
                    {
                      goto LABEL_853;
                    }

                    v336 = (v336 - 1) >> 1;
                    v337 = v8 + 40 * v336;
                    v363 = *(v337 + 8);
                    v364 = *v337;
                    if (v363 == 0x7FFFFFFF)
                    {
                      v365 = v364 == v342;
                      if (v364 >= v342)
                      {
                        v359 = 1;
                      }

                      else
                      {
                        v359 = 255;
                      }

                      if (!v365)
                      {
                        goto LABEL_832;
                      }

                      if (*(v337 + 4) > v352)
                      {
                        goto LABEL_853;
                      }
                    }

                    else
                    {
                      v366 = v364 == v342;
                      if (v364 >= v342)
                      {
                        v359 = 1;
                      }

                      else
                      {
                        v359 = 255;
                      }

                      if (!v366 || ((v367 = *(v337 + 4), v368 = v367 == v352, v367 >= v352) ? (v359 = 1) : (v359 = 255), !v368))
                      {
LABEL_832:
                        if (v359 <= 0x7F)
                        {
                          goto LABEL_853;
                        }

                        continue;
                      }

                      if (v363 >= v339)
                      {
                        goto LABEL_853;
                      }
                    }

                    break;
                  }

                  v359 = 255;
                  goto LABEL_832;
                }
              }

LABEL_740:
              v311 = v310-- <= 2;
              if (v311)
              {
                return result;
              }

              continue;
            }

            goto LABEL_760;
          }

          if (*v323 >= *v329)
          {
            v322 = 1;
          }

          else
          {
            v322 = -1;
          }

          if (*v323 != *v329)
          {
            goto LABEL_757;
          }

          v314 = v327[21];
          v315 = v327[11];
          if (v330 >= v331)
          {
            v319 = 0;
          }

          else
          {
            v319 = -1;
          }
        }

        break;
      }

      v320 = v315 == v314;
      if (v315 >= v314)
      {
        v321 = 1;
      }

      else
      {
        v321 = -1;
      }

      if (v320)
      {
        v322 = v319;
      }

      else
      {
        v322 = v321;
      }

      goto LABEL_757;
    }

    v11 = v10 >> 1;
    v12 = v8 + 40 * (v10 >> 1);
    if (v9 < 0x1401)
    {
      sub_9DD230(v12, a1, v7);
      --a3;
      if (a4)
      {
LABEL_21:
        v22 = *a1;
        v20 = *(a1 + 2);
        goto LABEL_54;
      }
    }

    else
    {
      sub_9DD230(a1, v12, v7);
      v13 = v7;
      v14 = 40 * v11;
      v15 = &a1[40 * v11 - 40];
      sub_9DD230((a1 + 40), v15, a2 - 5);
      sub_9DD230(a1 + 5, &a1[v14 + 40], (a2 - 120));
      v16 = &a1[v14 + 40];
      v7 = v13;
      sub_9DD230(v15, v12, v16);
      v488 = *(a1 + 4);
      v472 = *a1;
      v481 = *(a1 + 1);
      v17 = *v12;
      v18 = *(v12 + 16);
      a1[32] = *(v12 + 32);
      *a1 = v17;
      *(a1 + 1) = v18;
      *(v12 + 32) = v488;
      *v12 = v472;
      *(v12 + 16) = v481;
      --a3;
      if (a4)
      {
        goto LABEL_21;
      }
    }

    v19 = *(a1 - 8);
    v20 = *(a1 + 2);
    if (v19 == 0x7FFFFFFF)
    {
      v21 = v20 != 0x7FFFFFFF;
      v22 = *(a1 - 10);
      v23 = *a1;
      if (v22 >= *a1)
      {
        v24 = 1;
      }

      else
      {
        v24 = -1;
      }

      if (v22 != v23)
      {
LABEL_19:
        v22 = v23;
        goto LABEL_53;
      }

      goto LABEL_26;
    }

    if (v20 == 0x7FFFFFFF)
    {
      v21 = 0;
      v22 = *(a1 - 10);
      v23 = *a1;
      if (v22 >= *a1)
      {
        v24 = 1;
      }

      else
      {
        v24 = -1;
      }

      if (v22 != v23)
      {
        goto LABEL_19;
      }

LABEL_26:
      v25 = *(a1 + 1);
      v26 = *(a1 - 9);
      v27 = v26 == v25;
      if (v26 >= v25)
      {
        v24 = 1;
      }

      else
      {
        v24 = -1;
      }

      if (v27)
      {
        v27 = v19 == 0x7FFFFFFF;
        v28 = v19 != 0x7FFFFFFF;
        v29 = v27;
        v24 = (v21 & v29) != 0 ? -1 : 1;
        if (v28 == v21)
        {
          v24 = 0;
        }
      }

      goto LABEL_53;
    }

    v22 = *(a1 - 10);
    if (v22 >= *a1)
    {
      v24 = 1;
    }

    else
    {
      v24 = -1;
    }

    if (v22 == *a1)
    {
      v30 = *(a1 + 1);
      v31 = *(a1 - 9);
      v32 = v31 == v30;
      if (v31 >= v30)
      {
        v24 = 1;
      }

      else
      {
        v24 = -1;
      }

      if (v32)
      {
        if (v19 >= v20)
        {
          v24 = 0;
        }

        else
        {
          v24 = -1;
        }
      }
    }

    else
    {
      v22 = *a1;
    }

LABEL_53:
    if (v24 < 0)
    {
LABEL_54:
      v33 = *(a1 + 1);
      *&v469[12] = *(a1 + 24);
      *v469 = *(a1 + 12);
      v34 = a1 + 40;
      if (v20 != 0x7FFFFFFF)
      {
        while (1)
        {
          v35 = v34;
          v40 = *(v34 + 2);
          v41 = *v35;
          if (v40 == 0x7FFFFFFF)
          {
            v42 = v41 == v22;
            if (v41 >= v22)
            {
              v39 = 1;
            }

            else
            {
              v39 = 255;
            }

            if (!v42)
            {
              goto LABEL_68;
            }

            if (*(v35 + 1) > v33)
            {
              goto LABEL_88;
            }
          }

          else
          {
            v43 = v41 == v22;
            if (v41 >= v22)
            {
              v39 = 1;
            }

            else
            {
              v39 = 255;
            }

            if (!v43)
            {
              goto LABEL_68;
            }

            v44 = *(v35 + 1);
            v45 = v44 == v33;
            v39 = v44 >= v33 ? 1 : 255;
            if (!v45)
            {
              goto LABEL_68;
            }

            if (v40 >= v20)
            {
              goto LABEL_88;
            }
          }

          v39 = 255;
LABEL_68:
          v34 = v35 + 40;
          if (v39 < 0x80)
          {
            goto LABEL_88;
          }
        }
      }

      do
      {
        v35 = v34;
        if (*v34 >= v22)
        {
          v36 = 1;
        }

        else
        {
          v36 = 255;
        }

        if (*v34 == v22)
        {
          v37 = *(v34 + 1);
          v38 = v37 == v33;
          v36 = v37 >= v33 ? 1 : 255;
          if (v38)
          {
            break;
          }
        }

        v34 += 40;
      }

      while (v36 >= 0x80);
LABEL_88:
      v46 = a2;
      if (v35 - 40 == a1)
      {
        while (1)
        {
          if (v35 >= v46)
          {
            v49 = v46;
            goto LABEL_163;
          }

          v69 = v20 != 0x7FFFFFFF;
          v49 = v46 - 40;
          v70 = *(v46 - 10);
          v71 = *(v46 - 8);
          if (v71 != 0x7FFFFFFF)
          {
            v69 = 0;
          }

          if (v20 == 0x7FFFFFFF || v71 == 0x7FFFFFFF)
          {
            v75 = v70 == v22;
            if (v70 >= v22)
            {
              v68 = 1;
            }

            else
            {
              v68 = -1;
            }

            if (!v75)
            {
              goto LABEL_134;
            }

            v73 = *(v46 - 9);
            if (v69)
            {
              v76 = -1;
            }

            else
            {
              v76 = 1;
            }

            if (v71 == 0x7FFFFFFF && v20 == 0x7FFFFFFF)
            {
              v74 = 0;
            }

            else
            {
              v74 = v76;
            }
          }

          else
          {
            v72 = v70 == v22;
            if (v70 >= v22)
            {
              v68 = 1;
            }

            else
            {
              v68 = -1;
            }

            if (!v72)
            {
              goto LABEL_134;
            }

            v73 = *(v46 - 9);
            if (v71 >= v20)
            {
              v74 = 0;
            }

            else
            {
              v74 = -1;
            }
          }

          v66 = v73 == v33;
          if (v73 >= v33)
          {
            v67 = 1;
          }

          else
          {
            v67 = -1;
          }

          if (v66)
          {
            v68 = v74;
          }

          else
          {
            v68 = v67;
          }

LABEL_134:
          v46 = v49;
          if (v68 < 0)
          {
            goto LABEL_163;
          }
        }
      }

      v47 = v7;
      if (v20 != 0x7FFFFFFF)
      {
        while (1)
        {
          v49 = v47;
          v57 = *(v47 + 2);
          v58 = *v49;
          if (v57 == 0x7FFFFFFF)
          {
            v59 = v58 == v22;
            if (v58 >= v22)
            {
              v60 = 1;
            }

            else
            {
              v60 = 255;
            }

            if (v59)
            {
              v61 = *(v49 + 1);
              v62 = v61 == v33;
              v60 = v61 >= v33 ? 1 : 255;
              if (v62)
              {
                goto LABEL_163;
              }
            }
          }

          else
          {
            v63 = v58 == v22;
            if (v58 >= v22)
            {
              v60 = 1;
            }

            else
            {
              v60 = 255;
            }

            if (v63)
            {
              v64 = *(v49 + 1);
              v65 = v64 == v33;
              v60 = v64 >= v33 ? 1 : 255;
              if (v65)
              {
                if (v57 < v20)
                {
                  goto LABEL_163;
                }

                v60 = 0;
              }
            }
          }

          v47 = v49 - 40;
          if (v60 >= 0x80)
          {
            goto LABEL_163;
          }
        }
      }

      v48 = a2;
      v49 = a2;
      do
      {
        v50 = *(v49 - 10);
        v49 -= 40;
        v51 = v50 == v22;
        if (v50 >= v22)
        {
          v52 = 1;
        }

        else
        {
          v52 = 255;
        }

        if (v51)
        {
          v54 = v48 - 36;
          v53 = *(v48 - 9);
          v52 = *(v54 + 1) != 0x7FFFFFFF;
          v55 = v53 == v33;
          v56 = v53 >= v33 ? 1 : 255;
          if (!v55)
          {
            v52 = v56;
          }
        }

        v48 = v49;
      }

      while (v52 < 0x80);
LABEL_163:
      v8 = v35;
      if (v35 < v49)
      {
        v8 = v35;
        v78 = v49;
        do
        {
          v489 = *(v8 + 32);
          v473 = *v8;
          v482 = *(v8 + 16);
          v79 = *v78;
          v80 = *(v78 + 1);
          *(v8 + 32) = v78[32];
          *v8 = v79;
          *(v8 + 16) = v80;
          v78[32] = v489;
          *v78 = v473;
          *(v78 + 1) = v482;
          v81 = (v8 + 40);
          if (v20 != 0x7FFFFFFF)
          {
            while (1)
            {
              v8 = v81;
              v86 = v81[2];
              v87 = *v8;
              if (v86 == 0x7FFFFFFF)
              {
                v88 = v87 == v22;
                if (v87 >= v22)
                {
                  v85 = 1;
                }

                else
                {
                  v85 = 255;
                }

                if (!v88)
                {
                  goto LABEL_180;
                }

                if (*(v8 + 4) > v33)
                {
                  goto LABEL_208;
                }
              }

              else
              {
                v89 = v87 == v22;
                if (v87 >= v22)
                {
                  v85 = 1;
                }

                else
                {
                  v85 = 255;
                }

                if (!v89)
                {
                  goto LABEL_180;
                }

                v90 = *(v8 + 4);
                v91 = v90 == v33;
                v85 = v90 >= v33 ? 1 : 255;
                if (!v91)
                {
                  goto LABEL_180;
                }

                if (v86 >= v20)
                {
                  goto LABEL_208;
                }
              }

              v85 = 255;
LABEL_180:
              v81 = (v8 + 40);
              if (v85 <= 0x7F)
              {
                goto LABEL_208;
              }
            }
          }

          do
          {
            v8 = v81;
            if (*v81 >= v22)
            {
              v82 = 1;
            }

            else
            {
              v82 = 255;
            }

            if (*v81 == v22)
            {
              v83 = v81[1];
              v84 = v83 == v33;
              v82 = v83 >= v33 ? 1 : 255;
              if (v84)
              {
                break;
              }
            }

            v81 += 10;
          }

          while (v82 >= 0x80);
          do
          {
LABEL_208:
            v95 = v78;
            v96 = v20 != 0x7FFFFFFF;
            v98 = *(v78 - 10);
            v78 -= 40;
            v97 = v98;
            v99 = *(v78 + 2);
            if (v99 != 0x7FFFFFFF)
            {
              v96 = 0;
            }

            if (v20 == 0x7FFFFFFF || v99 == 0x7FFFFFFF)
            {
              v103 = v97 == v22;
              if (v97 >= v22)
              {
                v94 = 1;
              }

              else
              {
                v94 = -1;
              }

              if (v103)
              {
                v101 = *(v95 - 9);
                if (v96)
                {
                  v104 = -1;
                }

                else
                {
                  v104 = 1;
                }

                if (v99 == 0x7FFFFFFF && v20 == 0x7FFFFFFF)
                {
                  v102 = 0;
                }

                else
                {
                  v102 = v104;
                }

                goto LABEL_201;
              }
            }

            else
            {
              v100 = v97 == v22;
              if (v97 >= v22)
              {
                v94 = 1;
              }

              else
              {
                v94 = -1;
              }

              if (v100)
              {
                v101 = *(v95 - 9);
                if (v99 >= v20)
                {
                  v102 = 0;
                }

                else
                {
                  v102 = -1;
                }

LABEL_201:
                v92 = v101 == v33;
                if (v101 >= v33)
                {
                  v93 = 1;
                }

                else
                {
                  v93 = -1;
                }

                if (v92)
                {
                  v94 = v102;
                }

                else
                {
                  v94 = v93;
                }
              }
            }
          }

          while ((v94 & 0x80) == 0);
        }

        while (v8 < v78);
      }

      if ((v8 - 40) != a1)
      {
        v106 = *(v8 - 40);
        v107 = *(v8 - 24);
        a1[32] = *(v8 - 8);
        *a1 = v106;
        *(a1 + 1) = v107;
      }

      *(v8 - 40) = v22;
      *(v8 - 36) = v33;
      *(v8 - 32) = v20;
      *(v8 - 15) = *&v469[13];
      *(v8 - 28) = *v469;
      if (v35 < v49)
      {
LABEL_239:
        result.n128_u64[0] = sub_9DB79C(a1, (v8 - 40), a3, a4 & 1).n128_u64[0];
        a4 = 0;
      }

      else
      {
        v108 = sub_9DDDDC(a1, (v8 - 40));
        if (sub_9DDDDC(v8, a2))
        {
          a2 = (v8 - 40);
          if (v108)
          {
            return result;
          }

          goto LABEL_1;
        }

        if (!v108)
        {
          goto LABEL_239;
        }
      }
    }

    else
    {
      v110 = *(a1 + 1);
      *&v470[12] = *(a1 + 24);
      *v470 = *(a1 + 12);
      v111 = *(a2 - 8);
      if (v20 == 0x7FFFFFFF)
      {
        v112 = v111 != 0x7FFFFFFF;
LABEL_244:
        if (v22 >= *v7)
        {
          v113 = 1;
        }

        else
        {
          v113 = -1;
        }

        if (v22 == *v7)
        {
          v114 = *(a2 - 9);
          v115 = v110 == v114;
          v113 = v110 >= v114 ? 1 : -1;
          if (v115)
          {
            if (v112 && v20 == 0x7FFFFFFF)
            {
              v116 = -1;
            }

            else
            {
              v116 = 1;
            }

            if ((v20 != 0x7FFFFFFF) != v112)
            {
              v113 = v116;
            }

            else
            {
              v113 = 0;
            }
          }
        }

        goto LABEL_271;
      }

      if (v111 == 0x7FFFFFFF)
      {
        v112 = 0;
        goto LABEL_244;
      }

      if (v22 >= *v7)
      {
        v113 = 1;
      }

      else
      {
        v113 = -1;
      }

      if (v22 == *v7)
      {
        v117 = *(a2 - 9);
        v118 = v110 == v117;
        v113 = v110 >= v117 ? 1 : -1;
        if (v118)
        {
          if (v20 >= v111)
          {
            v113 = 0;
          }

          else
          {
            v113 = -1;
          }
        }
      }

LABEL_271:
      if ((v113 & 0x80) == 0)
      {
        v119 = a1 + 40;
        while (1)
        {
          v8 = v119;
          if (v119 >= a2)
          {
            goto LABEL_351;
          }

          v125 = *(v119 + 2);
          if (v20 == 0x7FFFFFFF)
          {
            v126 = v125 != 0x7FFFFFFF;
            if (v22 >= *v8)
            {
              v124 = 1;
            }

            else
            {
              v124 = -1;
            }

            if (v22 == *v8)
            {
LABEL_273:
              v120 = *(v8 + 4);
              if (v126 && v20 == 0x7FFFFFFF)
              {
                v121 = -1;
              }

              else
              {
                v121 = 1;
              }

              if ((v20 != 0x7FFFFFFF) != v126)
              {
                v122 = v121;
              }

              else
              {
                v122 = 0;
              }

LABEL_279:
              v123 = v110 == v120;
              if (v110 >= v120)
              {
                v124 = 1;
              }

              else
              {
                v124 = -1;
              }

              if (v123)
              {
                v124 = v122;
              }
            }
          }

          else if (v125 == 0x7FFFFFFF)
          {
            v126 = 0;
            if (v22 >= *v8)
            {
              v124 = 1;
            }

            else
            {
              v124 = -1;
            }

            if (v22 == *v8)
            {
              goto LABEL_273;
            }
          }

          else
          {
            if (v22 >= *v8)
            {
              v124 = 1;
            }

            else
            {
              v124 = -1;
            }

            if (v22 == *v8)
            {
              v120 = *(v8 + 4);
              if (v20 >= v125)
              {
                v122 = 0;
              }

              else
              {
                v122 = -1;
              }

              goto LABEL_279;
            }
          }

          v119 = (v8 + 40);
          if (v124 < 0)
          {
            goto LABEL_351;
          }
        }
      }

      if (v20 == 0x7FFFFFFF)
      {
        v140 = a1 + 40;
        do
        {
          v8 = v140;
          if (v22 >= *v140)
          {
            v141 = 1;
          }

          else
          {
            v141 = 255;
          }

          if (v22 == *v140)
          {
            v142 = *(v140 + 1);
            v143 = *(v140 + 2);
            v144 = v110 == v142;
            if (v110 >= v142)
            {
              v141 = 1;
            }

            else
            {
              v141 = 255;
            }

            if (v144)
            {
              v141 = 0;
            }

            if (v144 && v143 != 0x7FFFFFFF)
            {
              break;
            }
          }

          v140 = (v8 + 40);
        }

        while (v141 < 0x80);
      }

      else
      {
        v127 = a1;
        v8 = a1;
        do
        {
          v129 = *(v8 + 40);
          v8 += 40;
          v128 = v129;
          v130 = *(v8 + 8);
          if (v130 == 0x7FFFFFFF)
          {
            v131 = v22 == v128;
            if (v22 >= v128)
            {
              v132 = 1;
            }

            else
            {
              v132 = -1;
            }

            if (v131)
            {
              v133 = *(v127 + 11);
              v134 = v110 == v133;
              if (v110 >= v133)
              {
                v135 = 1;
              }

              else
              {
                v135 = -1;
              }

              if (v134)
              {
                v132 = 1;
              }

              else
              {
                v132 = v135;
              }
            }
          }

          else
          {
            v136 = v22 == v128;
            if (v22 >= v128)
            {
              v132 = 1;
            }

            else
            {
              v132 = -1;
            }

            if (v136)
            {
              v137 = *(v127 + 11);
              v132 = v20 >= v130 ? 0 : -1;
              v138 = v110 == v137;
              v139 = v110 >= v137 ? 1 : -1;
              if (!v138)
              {
                v132 = v139;
              }
            }
          }

          v127 = v8;
        }

        while ((v132 & 0x80) == 0);
      }

LABEL_351:
      v146 = a2;
      if (v8 < a2)
      {
        v147 = a2;
        v146 = a2;
        do
        {
          v154 = *(v146 - 10);
          v146 -= 40;
          v153 = v154;
          v155 = *(v146 + 2);
          if (v20 == 0x7FFFFFFF)
          {
            v156 = v155 != 0x7FFFFFFF;
            v158 = v22 == v153;
            if (v22 >= v153)
            {
              v150 = 1;
            }

            else
            {
              v150 = -1;
            }

            if (v158)
            {
LABEL_353:
              v148 = *(v147 - 9);
              if (v156 && v20 == 0x7FFFFFFF)
              {
                v149 = -1;
              }

              else
              {
                v149 = 1;
              }

              if ((v20 != 0x7FFFFFFF) != v156)
              {
                v150 = v149;
              }

              else
              {
                v150 = 0;
              }

LABEL_359:
              v151 = v110 == v148;
              if (v110 >= v148)
              {
                v152 = 1;
              }

              else
              {
                v152 = -1;
              }

              if (!v151)
              {
                v150 = v152;
              }
            }
          }

          else if (v155 == 0x7FFFFFFF)
          {
            v156 = 0;
            v157 = v22 == v153;
            if (v22 >= v153)
            {
              v150 = 1;
            }

            else
            {
              v150 = -1;
            }

            if (v157)
            {
              goto LABEL_353;
            }
          }

          else
          {
            v159 = v22 == v153;
            if (v22 >= v153)
            {
              v150 = 1;
            }

            else
            {
              v150 = -1;
            }

            if (v159)
            {
              v148 = *(v147 - 9);
              if (v20 >= v155)
              {
                v150 = 0;
              }

              else
              {
                v150 = -1;
              }

              goto LABEL_359;
            }
          }

          v147 = v146;
        }

        while (v150 < 0);
      }

      if (v8 < v146)
      {
LABEL_390:
        v490 = *(v8 + 32);
        v474 = *v8;
        v483 = *(v8 + 16);
        v160 = *v146;
        v161 = *(v146 + 1);
        *(v8 + 32) = v146[32];
        *v8 = v160;
        *(v8 + 16) = v161;
        v146[32] = v490;
        *v146 = v474;
        *(v146 + 1) = v483;
        if (v20 == 0x7FFFFFFF)
        {
          v175 = (v8 + 40);
          do
          {
            v8 = v175;
            if (v22 >= *v175)
            {
              v176 = 1;
            }

            else
            {
              v176 = 255;
            }

            if (v22 == *v175)
            {
              v177 = v175[1];
              v178 = v175[2];
              v179 = v110 == v177;
              if (v110 >= v177)
              {
                v176 = 1;
              }

              else
              {
                v176 = 255;
              }

              if (v179)
              {
                v176 = 0;
              }

              if (v179 && v178 != 0x7FFFFFFF)
              {
                break;
              }
            }

            v175 = (v8 + 40);
          }

          while (v176 < 0x80);
        }

        else
        {
          v162 = v8;
          do
          {
            v164 = *(v8 + 40);
            v8 += 40;
            v163 = v164;
            v165 = *(v8 + 8);
            if (v165 == 0x7FFFFFFF)
            {
              v166 = v22 == v163;
              if (v22 >= v163)
              {
                v167 = 1;
              }

              else
              {
                v167 = -1;
              }

              if (v166)
              {
                v168 = *(v162 + 44);
                v169 = v110 == v168;
                if (v110 >= v168)
                {
                  v170 = 1;
                }

                else
                {
                  v170 = -1;
                }

                if (v169)
                {
                  v167 = 1;
                }

                else
                {
                  v167 = v170;
                }
              }
            }

            else
            {
              v171 = v22 == v163;
              if (v22 >= v163)
              {
                v167 = 1;
              }

              else
              {
                v167 = -1;
              }

              if (v171)
              {
                v172 = *(v162 + 44);
                v167 = v20 >= v165 ? 0 : -1;
                v173 = v110 == v172;
                v174 = v110 >= v172 ? 1 : -1;
                if (!v173)
                {
                  v167 = v174;
                }
              }
            }

            v162 = v8;
          }

          while ((v167 & 0x80) == 0);
        }

        while (1)
        {
          v186 = v146;
          v146 -= 40;
          v187 = *(v186 - 8);
          if (v20 == 0x7FFFFFFF)
          {
            v188 = v187 != 0x7FFFFFFF;
            if (v22 >= *v146)
            {
              v183 = 1;
            }

            else
            {
              v183 = -1;
            }

            if (v22 == *v146)
            {
LABEL_436:
              v181 = *(v186 - 9);
              if (v188 && v20 == 0x7FFFFFFF)
              {
                v182 = -1;
              }

              else
              {
                v182 = 1;
              }

              if ((v20 != 0x7FFFFFFF) != v188)
              {
                v183 = v182;
              }

              else
              {
                v183 = 0;
              }

LABEL_442:
              v184 = v110 == v181;
              if (v110 >= v181)
              {
                v185 = 1;
              }

              else
              {
                v185 = -1;
              }

              if (!v184)
              {
                v183 = v185;
              }
            }
          }

          else if (v187 == 0x7FFFFFFF)
          {
            v188 = 0;
            if (v22 >= *v146)
            {
              v183 = 1;
            }

            else
            {
              v183 = -1;
            }

            if (v22 == *v146)
            {
              goto LABEL_436;
            }
          }

          else
          {
            if (v22 >= *v146)
            {
              v183 = 1;
            }

            else
            {
              v183 = -1;
            }

            if (v22 == *v146)
            {
              v181 = *(v186 - 9);
              if (v20 >= v187)
              {
                v183 = 0;
              }

              else
              {
                v183 = -1;
              }

              goto LABEL_442;
            }
          }

          if ((v183 & 0x80) == 0)
          {
            if (v8 >= v146)
            {
              break;
            }

            goto LABEL_390;
          }
        }
      }

      if ((v8 - 40) != a1)
      {
        v189 = *(v8 - 40);
        v190 = *(v8 - 24);
        a1[32] = *(v8 - 8);
        *a1 = v189;
        *(a1 + 1) = v190;
      }

      a4 = 0;
      *(v8 - 40) = v22;
      *(v8 - 36) = v110;
      *(v8 - 32) = v20;
      result = *v470;
      *(v8 - 15) = *&v470[13];
      *(v8 - 28) = *v470;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {
      sub_9DD230(v8, (v8 + 40), (v8 + 80));
      v194 = *(a2 - 8);
      v195 = *(v8 + 88);
      if (v194 == 0x7FFFFFFF)
      {
        v196 = v195 != 0x7FFFFFFF;
LABEL_869:
        v376 = *(v8 + 80);
        if (*v7 >= v376)
        {
          v377 = 1;
        }

        else
        {
          v377 = -1;
        }

        if (*v7 == v376)
        {
          v378 = *(v8 + 84);
          v379 = *(a2 - 9);
          v27 = v194 == 0x7FFFFFFF;
          v380 = v194 != 0x7FFFFFFF;
          v381 = v27;
          v27 = (v196 & v381) == 0;
          v382 = -1;
          if (v27)
          {
            v382 = 1;
          }

          if (v380 != v196)
          {
            v383 = v382;
          }

          else
          {
            v383 = 0;
          }

          goto LABEL_993;
        }
      }

      else
      {
        if (v195 == 0x7FFFFFFF)
        {
          v196 = 0;
          goto LABEL_869;
        }

        v425 = *(v8 + 80);
        if (*v7 >= v425)
        {
          v377 = 1;
        }

        else
        {
          v377 = -1;
        }

        if (*v7 == v425)
        {
          v378 = *(v8 + 84);
          v379 = *(a2 - 9);
          v311 = v194 < v195;
          v383 = -1;
          if (!v311)
          {
            v383 = 0;
          }

LABEL_993:
          v426 = -1;
          if (v379 >= v378)
          {
            v426 = 1;
          }

          if (v379 == v378)
          {
            v377 = v383;
          }

          else
          {
            v377 = v426;
          }
        }
      }

      if ((v377 & 0x80) == 0)
      {
        return result;
      }

      result = *(v8 + 80);
      v486 = *(v8 + 96);
      v427 = *(v8 + 112);
      v429 = *v7;
      v428 = *(v7 + 1);
      *(v8 + 112) = v7[32];
      *(v8 + 80) = v429;
      *(v8 + 96) = v428;
      v7[32] = v427;
      *v7 = result;
      *(v7 + 1) = v486;
      v430 = *(v8 + 88);
      v431 = *(v8 + 48);
      if (v430 == 0x7FFFFFFF)
      {
        v432 = v431 != 0x7FFFFFFF;
        goto LABEL_1003;
      }

      if (v431 == 0x7FFFFFFF)
      {
        v432 = 0;
LABEL_1003:
        v433 = *(v8 + 80);
        v434 = *(v8 + 40);
        v435 = v433 == v434;
        if (v433 >= v434)
        {
          v436 = 1;
        }

        else
        {
          v436 = -1;
        }

        if (v435)
        {
          v437 = *(v8 + 44);
          v438 = *(v8 + 84);
          v439 = v438 == v437;
          v436 = v438 >= v437 ? 1 : -1;
          if (v439)
          {
            v27 = v430 == 0x7FFFFFFF;
            v440 = v430 != 0x7FFFFFFF;
            v441 = v27;
            v27 = (v432 & v441) == 0;
            v436 = -1;
            if (v27)
            {
              v436 = 1;
            }

            if (v440 == v432)
            {
              v436 = 0;
            }
          }
        }
      }

      else
      {
        v442 = *(v8 + 80);
        v443 = *(v8 + 40);
        v444 = v442 == v443;
        if (v442 >= v443)
        {
          v436 = 1;
        }

        else
        {
          v436 = -1;
        }

        if (v444)
        {
          v445 = *(v8 + 44);
          v446 = *(v8 + 84);
          v447 = v446 == v445;
          v436 = v446 >= v445 ? 1 : -1;
          if (v447)
          {
            if (v430 >= v431)
            {
              v436 = 0;
            }

            else
            {
              v436 = -1;
            }
          }
        }
      }

      if ((v436 & 0x80) == 0)
      {
        return result;
      }

      v448 = *(v8 + 72);
      result = *(v8 + 40);
      v449 = *(v8 + 96);
      *(v8 + 40) = *(v8 + 80);
      v450 = *(v8 + 56);
      *(v8 + 56) = v449;
      *(v8 + 72) = *(v8 + 112);
      *(v8 + 80) = result;
      *(v8 + 96) = v450;
      *(v8 + 112) = v448;
      v451 = *(v8 + 48);
      v452 = *(v8 + 8);
      if (v451 != 0x7FFFFFFF)
      {
        if (v452 == 0x7FFFFFFF)
        {
          v453 = 0;
LABEL_1040:
          v454 = *(v8 + 40);
          v455 = v454 == *v8;
          if (v454 >= *v8)
          {
            v456 = 1;
          }

          else
          {
            v456 = -1;
          }

          if (v455)
          {
            v457 = *(v8 + 4);
            v458 = *(v8 + 44);
            v459 = v458 == v457;
            v456 = v458 >= v457 ? 1 : -1;
            if (v459)
            {
              v27 = v451 == 0x7FFFFFFF;
              v460 = v451 != 0x7FFFFFFF;
              v461 = v27;
              v27 = (v453 & v461) == 0;
              v456 = -1;
              if (v27)
              {
                v456 = 1;
              }

              if (v460 == v453)
              {
                v456 = 0;
              }
            }
          }
        }

        else
        {
          v462 = *(v8 + 40);
          v463 = v462 == *v8;
          if (v462 >= *v8)
          {
            v456 = 1;
          }

          else
          {
            v456 = -1;
          }

          if (v463)
          {
            v464 = *(v8 + 4);
            v465 = *(v8 + 44);
            v466 = v465 == v464;
            v456 = v465 >= v464 ? 1 : -1;
            if (v466)
            {
              if (v451 >= v452)
              {
                v456 = 0;
              }

              else
              {
                v456 = -1;
              }
            }
          }
        }

        if (v456 < 0)
        {
          v493 = *(v8 + 32);
          v480 = *v8;
          v487 = *(v8 + 16);
          v467 = *(v8 + 56);
          *v8 = *(v8 + 40);
          *(v8 + 16) = v467;
          *(v8 + 32) = *(v8 + 72);
          result = v480;
          *(v8 + 40) = v480;
          *(v8 + 56) = v487;
          *(v8 + 72) = v493;
        }

        return result;
      }

      v453 = v452 != 0x7FFFFFFF;
      goto LABEL_1040;
    }

    if (v10 == 5)
    {

      result.n128_u64[0] = sub_9DD6D0(v8, v8 + 40, v8 + 80, (v8 + 120), v7).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  sub_9DD230(v8, (v8 + 40), v7);
  return result;
}

__int128 *sub_9DD230(__int128 *result, unsigned int *a2, __int128 *a3)
{
  v3 = a2[2];
  v4 = *(result + 2);
  v5 = v3 != 0x7FFFFFFF;
  if (v3 == 0x7FFFFFFF)
  {
    v6 = v4 != 0x7FFFFFFF;
    v7 = *a2;
    if (*a2 >= *result)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    if (*a2 != *result)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v4 != 0x7FFFFFFF)
    {
      v7 = *a2;
      if (*a2 >= *result)
      {
        v8 = 1;
      }

      else
      {
        v8 = -1;
      }

      if (*a2 != *result)
      {
        goto LABEL_29;
      }

      v9 = *(result + 1);
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
    if (*a2 >= *result)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    if (*a2 != *result)
    {
      goto LABEL_29;
    }
  }

  v9 = *(result + 1);
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
  v16 = *(a3 + 2);
  if (v8 < 0)
  {
    if (v16 != 0x7FFFFFFF)
    {
      if (v3 != 0x7FFFFFFF)
      {
        v52 = *a3 == v7;
        if (*a3 >= v7)
        {
          v28 = 1;
        }

        else
        {
          v28 = -1;
        }

        if (v52)
        {
          v53 = a2[1];
          v54 = *(a3 + 1);
          v13 = v16 < v3;
          v55 = -1;
          if (!v13)
          {
            v55 = 0;
          }

          v14 = v54 >= v53;
          v56 = v54 == v53;
          v57 = -1;
          if (v14)
          {
            v57 = 1;
          }

          if (v56)
          {
            v28 = v55;
          }

          else
          {
            v28 = v57;
          }
        }

LABEL_110:
        if (v28 < 0)
        {
          v67 = *(result + 4);
          v68 = *result;
          v69 = result[1];
          v70 = *(a3 + 32);
          v71 = a3[1];
          *result = *a3;
          result[1] = v71;
          *(result + 32) = v70;
LABEL_181:
          *a3 = v68;
          a3[1] = v69;
          *(a3 + 32) = v67;
          return result;
        }

        v58 = *(result + 4);
        v59 = *result;
        v60 = result[1];
        v61 = *(a2 + 32);
        v62 = *(a2 + 1);
        *result = *a2;
        result[1] = v62;
        *(result + 32) = v61;
        *a2 = v59;
        *(a2 + 1) = v60;
        *(a2 + 32) = v58;
        v63 = *(a3 + 2);
        v64 = a2[2];
        if (v63 == 0x7FFFFFFF)
        {
          v65 = v64 != 0x7FFFFFFF;
          if (*a3 >= *a2)
          {
            v66 = 1;
          }

          else
          {
            v66 = -1;
          }

          if (*a3 != *a2)
          {
            goto LABEL_179;
          }
        }

        else
        {
          if (v64 != 0x7FFFFFFF)
          {
            if (*a3 >= *a2)
            {
              v66 = 1;
            }

            else
            {
              v66 = -1;
            }

            if (*a3 == *a2)
            {
              v91 = a2[1];
              v92 = *(a3 + 1);
              v13 = v63 < v64;
              v93 = -1;
              if (!v13)
              {
                v93 = 0;
              }

              v94 = -1;
              if (v92 >= v91)
              {
                v94 = 1;
              }

              if (v92 == v91)
              {
                v66 = v93;
              }

              else
              {
                v66 = v94;
              }
            }

            goto LABEL_179;
          }

          v65 = 0;
          if (*a3 >= *a2)
          {
            v66 = 1;
          }

          else
          {
            v66 = -1;
          }

          if (*a3 != *a2)
          {
LABEL_179:
            if ((v66 & 0x80) == 0)
            {
              return result;
            }

            v67 = *(a2 + 4);
            v68 = *a2;
            v69 = *(a2 + 1);
            v95 = *(a3 + 32);
            v96 = a3[1];
            *a2 = *a3;
            *(a2 + 1) = v96;
            *(a2 + 32) = v95;
            goto LABEL_181;
          }
        }

        v77 = a2[1];
        v78 = *(a3 + 1);
        v79 = v78 == v77;
        if (v78 >= v77)
        {
          v66 = 1;
        }

        else
        {
          v66 = -1;
        }

        if (v79)
        {
          v15 = v63 == 0x7FFFFFFF;
          v80 = v63 != 0x7FFFFFFF;
          v81 = v15;
          v15 = (v65 & v81) == 0;
          v66 = -1;
          if (v15)
          {
            v66 = 1;
          }

          if (v80 == v65)
          {
            v66 = 0;
          }
        }

        goto LABEL_179;
      }

      v5 = 0;
    }

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
      v30 = *(a3 + 1);
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

    goto LABEL_110;
  }

  if (v16 == 0x7FFFFFFF)
  {
    goto LABEL_33;
  }

  if (v3 == 0x7FFFFFFF)
  {
    v5 = 0;
LABEL_33:
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
      v20 = *(a3 + 1);
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
    v39 = *(a3 + 1);
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
    return result;
  }

  v43 = *(a2 + 4);
  v44 = *a2;
  v45 = *(a2 + 1);
  v46 = *(a3 + 32);
  v47 = a3[1];
  *a2 = *a3;
  *(a2 + 1) = v47;
  *(a2 + 32) = v46;
  *a3 = v44;
  a3[1] = v45;
  *(a3 + 32) = v43;
  v48 = a2[2];
  v49 = *(result + 2);
  if (v48 == 0x7FFFFFFF)
  {
    v50 = v49 != 0x7FFFFFFF;
    if (*a2 >= *result)
    {
      v51 = 1;
    }

    else
    {
      v51 = -1;
    }

    if (*a2 != *result)
    {
      goto LABEL_166;
    }

LABEL_123:
    v72 = *(result + 1);
    v73 = a2[1];
    v74 = v73 == v72;
    if (v73 >= v72)
    {
      v51 = 1;
    }

    else
    {
      v51 = -1;
    }

    if (v74)
    {
      v15 = v48 == 0x7FFFFFFF;
      v75 = v48 != 0x7FFFFFFF;
      v76 = v15;
      v15 = (v50 & v76) == 0;
      v51 = -1;
      if (v15)
      {
        v51 = 1;
      }

      if (v75 == v50)
      {
        v51 = 0;
      }
    }

    goto LABEL_166;
  }

  if (v49 != 0x7FFFFFFF)
  {
    if (*a2 >= *result)
    {
      v51 = 1;
    }

    else
    {
      v51 = -1;
    }

    if (*a2 == *result)
    {
      v82 = *(result + 1);
      v83 = a2[1];
      v13 = v48 < v49;
      v84 = -1;
      if (!v13)
      {
        v84 = 0;
      }

      v85 = -1;
      if (v83 >= v82)
      {
        v85 = 1;
      }

      if (v83 == v82)
      {
        v51 = v84;
      }

      else
      {
        v51 = v85;
      }
    }

    goto LABEL_166;
  }

  v50 = 0;
  if (*a2 >= *result)
  {
    v51 = 1;
  }

  else
  {
    v51 = -1;
  }

  if (*a2 == *result)
  {
    goto LABEL_123;
  }

LABEL_166:
  if (v51 < 0)
  {
    v86 = *(result + 4);
    v87 = *result;
    v88 = result[1];
    v89 = *(a2 + 32);
    v90 = *(a2 + 1);
    *result = *a2;
    result[1] = v90;
    *(result + 32) = v89;
    *a2 = v87;
    *(a2 + 1) = v88;
    *(a2 + 32) = v86;
  }

  return result;
}

__n128 sub_9DD6D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  sub_9DD230(a1, a2, a3);
  v11 = a4[2];
  v12 = *(a3 + 8);
  if (v11 == 0x7FFFFFFF)
  {
    v13 = v12 != 0x7FFFFFFF;
    if (*a4 >= *a3)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }

    if (*a4 != *a3)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v12 != 0x7FFFFFFF)
    {
      if (*a4 >= *a3)
      {
        v14 = 1;
      }

      else
      {
        v14 = -1;
      }

      if (*a4 != *a3)
      {
        goto LABEL_32;
      }

      v15 = *(a3 + 4);
      v16 = a4[1];
      v21 = v11 < v12;
      v20 = -1;
      if (!v21)
      {
        v20 = 0;
      }

      goto LABEL_27;
    }

    v13 = 0;
    if (*a4 >= *a3)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }

    if (*a4 != *a3)
    {
      goto LABEL_32;
    }
  }

  v15 = *(a3 + 4);
  v16 = a4[1];
  v33 = v11 == 0x7FFFFFFF;
  v17 = v11 != 0x7FFFFFFF;
  v18 = v33;
  v33 = (v13 & v18) == 0;
  v19 = -1;
  if (v33)
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
    goto LABEL_110;
  }

  v23 = *(a3 + 32);
  result = *a3;
  v24 = *(a3 + 16);
  v25 = *(a4 + 32);
  v26 = *(a4 + 1);
  *a3 = *a4;
  *(a3 + 16) = v26;
  *(a3 + 32) = v25;
  *a4 = result;
  *(a4 + 1) = v24;
  *(a4 + 32) = v23;
  v27 = *(a3 + 8);
  v28 = *(a2 + 8);
  if (v27 == 0x7FFFFFFF)
  {
    v29 = v28 != 0x7FFFFFFF;
    if (*a3 >= *a2)
    {
      v30 = 1;
    }

    else
    {
      v30 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_70;
    }

    goto LABEL_44;
  }

  if (v28 == 0x7FFFFFFF)
  {
    v29 = 0;
    if (*a3 >= *a2)
    {
      v30 = 1;
    }

    else
    {
      v30 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_70;
    }

LABEL_44:
    v31 = *(a2 + 4);
    v32 = *(a3 + 4);
    v33 = v32 == v31;
    if (v32 >= v31)
    {
      v30 = 1;
    }

    else
    {
      v30 = -1;
    }

    if (v33)
    {
      v33 = v27 == 0x7FFFFFFF;
      v34 = v27 != 0x7FFFFFFF;
      v35 = v33;
      v33 = (v29 & v35) == 0;
      v30 = -1;
      if (v33)
      {
        v30 = 1;
      }

      if (v34 == v29)
      {
        v30 = 0;
      }
    }

    goto LABEL_70;
  }

  if (*a3 >= *a2)
  {
    v30 = 1;
  }

  else
  {
    v30 = -1;
  }

  if (*a3 == *a2)
  {
    v36 = *(a2 + 4);
    v37 = *(a3 + 4);
    v38 = v37 == v36;
    v30 = v37 >= v36 ? 1 : -1;
    if (v38)
    {
      if (v27 >= v28)
      {
        v30 = 0;
      }

      else
      {
        v30 = -1;
      }
    }
  }

LABEL_70:
  if ((v30 & 0x80) == 0)
  {
    goto LABEL_110;
  }

  v39 = *(a2 + 32);
  result = *a2;
  v40 = *(a2 + 16);
  v41 = *(a3 + 32);
  v42 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v42;
  *(a2 + 32) = v41;
  *a3 = result;
  *(a3 + 16) = v40;
  *(a3 + 32) = v39;
  v43 = *(a2 + 8);
  v44 = *(a1 + 8);
  if (v43 == 0x7FFFFFFF)
  {
    v45 = v44 != 0x7FFFFFFF;
    if (*a2 >= *a1)
    {
      v46 = 1;
    }

    else
    {
      v46 = -1;
    }

    if (*a2 != *a1)
    {
      goto LABEL_108;
    }

LABEL_82:
    v47 = *(a1 + 4);
    v48 = *(a2 + 4);
    v49 = v48 == v47;
    if (v48 >= v47)
    {
      v46 = 1;
    }

    else
    {
      v46 = -1;
    }

    if (v49)
    {
      v33 = v43 == 0x7FFFFFFF;
      v50 = v43 != 0x7FFFFFFF;
      v51 = v33;
      v33 = (v45 & v51) == 0;
      v46 = -1;
      if (v33)
      {
        v46 = 1;
      }

      if (v50 == v45)
      {
        v46 = 0;
      }
    }

    goto LABEL_108;
  }

  if (v44 != 0x7FFFFFFF)
  {
    if (*a2 >= *a1)
    {
      v46 = 1;
    }

    else
    {
      v46 = -1;
    }

    if (*a2 == *a1)
    {
      v52 = *(a1 + 4);
      v53 = *(a2 + 4);
      v54 = v53 == v52;
      v46 = v53 >= v52 ? 1 : -1;
      if (v54)
      {
        if (v43 >= v44)
        {
          v46 = 0;
        }

        else
        {
          v46 = -1;
        }
      }
    }

    goto LABEL_108;
  }

  v45 = 0;
  if (*a2 >= *a1)
  {
    v46 = 1;
  }

  else
  {
    v46 = -1;
  }

  if (*a2 == *a1)
  {
    goto LABEL_82;
  }

LABEL_108:
  if (v46 < 0)
  {
    v55 = *(a1 + 32);
    result = *a1;
    v56 = *(a1 + 16);
    v57 = *(a2 + 32);
    v58 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v58;
    *(a1 + 32) = v57;
    *a2 = result;
    *(a2 + 16) = v56;
    *(a2 + 32) = v55;
  }

LABEL_110:
  v59 = *(a5 + 8);
  v60 = a4[2];
  v61 = *a4;
  if (v59 == 0x7FFFFFFF)
  {
    v62 = v60 != 0x7FFFFFFF;
    v65 = *a5 == v61;
    if (*a5 >= v61)
    {
      v64 = 1;
    }

    else
    {
      v64 = -1;
    }

    if (!v65)
    {
      goto LABEL_144;
    }
  }

  else
  {
    if (v60 != 0x7FFFFFFF)
    {
      v72 = *a5 == v61;
      if (*a5 >= v61)
      {
        v64 = 1;
      }

      else
      {
        v64 = -1;
      }

      if (!v72)
      {
        goto LABEL_144;
      }

      v66 = a4[1];
      v67 = *(a5 + 4);
      v21 = v59 < v60;
      v71 = -1;
      if (!v21)
      {
        v71 = 0;
      }

      goto LABEL_138;
    }

    v62 = 0;
    v63 = *a5 == v61;
    if (*a5 >= v61)
    {
      v64 = 1;
    }

    else
    {
      v64 = -1;
    }

    if (!v63)
    {
      goto LABEL_144;
    }
  }

  v66 = a4[1];
  v67 = *(a5 + 4);
  v33 = v59 == 0x7FFFFFFF;
  v68 = v59 != 0x7FFFFFFF;
  v69 = v33;
  v33 = (v62 & v69) == 0;
  v70 = -1;
  if (v33)
  {
    v70 = 1;
  }

  if (v68 != v62)
  {
    v71 = v70;
  }

  else
  {
    v71 = 0;
  }

LABEL_138:
  v73 = v67 >= v66;
  v74 = v67 == v66;
  v64 = -1;
  if (v73)
  {
    v64 = 1;
  }

  if (v74)
  {
    v64 = v71;
  }

LABEL_144:
  if ((v64 & 0x80) == 0)
  {
    return result;
  }

  v75 = *(a4 + 4);
  result = *a4;
  v76 = *(a4 + 1);
  v77 = *(a5 + 32);
  v78 = *(a5 + 16);
  *a4 = *a5;
  *(a4 + 1) = v78;
  *(a4 + 32) = v77;
  *a5 = result;
  *(a5 + 16) = v76;
  *(a5 + 32) = v75;
  v79 = a4[2];
  v80 = *(a3 + 8);
  if (v79 == 0x7FFFFFFF)
  {
    v81 = v80 != 0x7FFFFFFF;
    if (*a4 >= *a3)
    {
      v82 = 1;
    }

    else
    {
      v82 = -1;
    }

    if (*a4 != *a3)
    {
      goto LABEL_182;
    }

    goto LABEL_156;
  }

  if (v80 == 0x7FFFFFFF)
  {
    v81 = 0;
    if (*a4 >= *a3)
    {
      v82 = 1;
    }

    else
    {
      v82 = -1;
    }

    if (*a4 != *a3)
    {
      goto LABEL_182;
    }

LABEL_156:
    v83 = *(a3 + 4);
    v84 = a4[1];
    v85 = v84 == v83;
    if (v84 >= v83)
    {
      v82 = 1;
    }

    else
    {
      v82 = -1;
    }

    if (v85)
    {
      v33 = v79 == 0x7FFFFFFF;
      v86 = v79 != 0x7FFFFFFF;
      v87 = v33;
      v33 = (v81 & v87) == 0;
      v82 = -1;
      if (v33)
      {
        v82 = 1;
      }

      if (v86 == v81)
      {
        v82 = 0;
      }
    }

    goto LABEL_182;
  }

  if (*a4 >= *a3)
  {
    v82 = 1;
  }

  else
  {
    v82 = -1;
  }

  if (*a4 == *a3)
  {
    v88 = *(a3 + 4);
    v89 = a4[1];
    v90 = v89 == v88;
    v82 = v89 >= v88 ? 1 : -1;
    if (v90)
    {
      if (v79 >= v80)
      {
        v82 = 0;
      }

      else
      {
        v82 = -1;
      }
    }
  }

LABEL_182:
  if ((v82 & 0x80) == 0)
  {
    return result;
  }

  v91 = *(a3 + 32);
  result = *a3;
  v92 = *(a3 + 16);
  v93 = *(a4 + 32);
  v94 = *(a4 + 1);
  *a3 = *a4;
  *(a3 + 16) = v94;
  *(a3 + 32) = v93;
  *a4 = result;
  *(a4 + 1) = v92;
  *(a4 + 32) = v91;
  v95 = *(a3 + 8);
  v96 = *(a2 + 8);
  if (v95 == 0x7FFFFFFF)
  {
    v97 = v96 != 0x7FFFFFFF;
    if (*a3 >= *a2)
    {
      v98 = 1;
    }

    else
    {
      v98 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_220;
    }

    goto LABEL_194;
  }

  if (v96 == 0x7FFFFFFF)
  {
    v97 = 0;
    if (*a3 >= *a2)
    {
      v98 = 1;
    }

    else
    {
      v98 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_220;
    }

LABEL_194:
    v99 = *(a2 + 4);
    v100 = *(a3 + 4);
    v101 = v100 == v99;
    if (v100 >= v99)
    {
      v98 = 1;
    }

    else
    {
      v98 = -1;
    }

    if (v101)
    {
      v33 = v95 == 0x7FFFFFFF;
      v102 = v95 != 0x7FFFFFFF;
      v103 = v33;
      v33 = (v97 & v103) == 0;
      v98 = -1;
      if (v33)
      {
        v98 = 1;
      }

      if (v102 == v97)
      {
        v98 = 0;
      }
    }

    goto LABEL_220;
  }

  if (*a3 >= *a2)
  {
    v98 = 1;
  }

  else
  {
    v98 = -1;
  }

  if (*a3 == *a2)
  {
    v104 = *(a2 + 4);
    v105 = *(a3 + 4);
    v106 = v105 == v104;
    v98 = v105 >= v104 ? 1 : -1;
    if (v106)
    {
      if (v95 >= v96)
      {
        v98 = 0;
      }

      else
      {
        v98 = -1;
      }
    }
  }

LABEL_220:
  if ((v98 & 0x80) == 0)
  {
    return result;
  }

  v107 = *(a2 + 32);
  result = *a2;
  v108 = *(a2 + 16);
  v109 = *(a3 + 32);
  v110 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v110;
  *(a2 + 32) = v109;
  *a3 = result;
  *(a3 + 16) = v108;
  *(a3 + 32) = v107;
  v111 = *(a2 + 8);
  v112 = *(a1 + 8);
  if (v111 == 0x7FFFFFFF)
  {
    v113 = v112 != 0x7FFFFFFF;
  }

  else
  {
    if (v112 != 0x7FFFFFFF)
    {
      if (*a2 >= *a1)
      {
        v114 = 1;
      }

      else
      {
        v114 = -1;
      }

      if (*a2 == *a1)
      {
        v120 = *(a1 + 4);
        v121 = *(a2 + 4);
        v122 = v121 == v120;
        v114 = v121 >= v120 ? 1 : -1;
        if (v122)
        {
          if (v111 >= v112)
          {
            v114 = 0;
          }

          else
          {
            v114 = -1;
          }
        }
      }

      goto LABEL_255;
    }

    v113 = 0;
  }

  if (*a2 >= *a1)
  {
    v114 = 1;
  }

  else
  {
    v114 = -1;
  }

  if (*a2 == *a1)
  {
    v115 = *(a1 + 4);
    v116 = *(a2 + 4);
    v117 = v116 == v115;
    v114 = v116 >= v115 ? 1 : -1;
    if (v117)
    {
      v33 = v111 == 0x7FFFFFFF;
      v118 = v111 != 0x7FFFFFFF;
      v119 = v33;
      v33 = (v113 & v119) == 0;
      v114 = -1;
      if (v33)
      {
        v114 = 1;
      }

      if (v118 == v113)
      {
        v114 = 0;
      }
    }
  }

LABEL_255:
  if (v114 < 0)
  {
    v123 = *(a1 + 32);
    result = *a1;
    v124 = *(a1 + 16);
    v125 = *(a2 + 32);
    v126 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v126;
    *(a1 + 32) = v125;
    *a2 = result;
    *(a2 + 16) = v124;
    *(a2 + 32) = v123;
  }

  return result;
}

BOOL sub_9DDDDC(__int128 *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v2 <= 2)
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = a2 - 10;
      v5 = *(a2 - 8);
      v6 = *(a1 + 2);
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
            v61 = 1;
          }

          else
          {
            v61 = -1;
          }

          if (*v4 != *a1)
          {
            goto LABEL_151;
          }

          v62 = *(a1 + 1);
          v63 = *(a2 - 9);
          v76 = v5 < v6;
          v67 = -1;
          if (!v76)
          {
            v67 = 0;
          }

LABEL_146:
          v77 = -1;
          if (v63 >= v62)
          {
            v77 = 1;
          }

          if (v63 == v62)
          {
            v61 = v67;
          }

          else
          {
            v61 = v77;
          }

LABEL_151:
          if (v61 < 0)
          {
            v78 = *(a1 + 4);
            v79 = *a1;
            v80 = a1[1];
            v81 = *(a2 - 8);
            v82 = *(a2 - 24);
            *a1 = *v4;
            a1[1] = v82;
            *(a1 + 32) = v81;
            *v4 = v79;
            *(a2 - 24) = v80;
            result = 1;
            *(a2 - 8) = v78;
            return result;
          }

          return 1;
        }

        v7 = 0;
      }

      if (*v4 >= *a1)
      {
        v61 = 1;
      }

      else
      {
        v61 = -1;
      }

      if (*v4 != *a1)
      {
        goto LABEL_151;
      }

      v62 = *(a1 + 1);
      v63 = *(a2 - 9);
      v25 = v5 == 0x7FFFFFFF;
      v64 = v5 != 0x7FFFFFFF;
      v65 = v25;
      v25 = (v7 & v65) == 0;
      v66 = -1;
      if (v25)
      {
        v66 = 1;
      }

      if (v64 != v7)
      {
        v67 = v66;
      }

      else
      {
        v67 = 0;
      }

      goto LABEL_146;
    }

    goto LABEL_13;
  }

  if (v2 == 3)
  {
    sub_9DD230(a1, a1 + 10, (a2 - 40));
    return 1;
  }

  if (v2 != 4)
  {
    if (v2 == 5)
    {
      sub_9DD6D0(a1, a1 + 40, (a1 + 5), a1 + 30, a2 - 40);
      return 1;
    }

LABEL_13:
    v8 = (a1 + 5);
    sub_9DD230(a1, a1 + 10, a1 + 5);
    v11 = a1 + 30;
    if ((a1 + 120) == a2)
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
      if (v15 == 0x7FFFFFFF)
      {
        break;
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

        if ((v26 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_59;
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
        goto LABEL_58;
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
      *v134 = *(v11 + 3);
      *&v134[12] = *(v11 + 6);
      v33 = v12;
      v34 = v12;
      if (v15 == 0x7FFFFFFF)
      {
        while (1)
        {
          v47 = a1 + v34;
          v48 = *(a1 + v34 + 96);
          *(v47 + 120) = *(a1 + v34 + 80);
          *(v47 + 136) = v48;
          *(v47 + 152) = *(a1 + v34 + 112);
          if (v34 == -80)
          {
            break;
          }

          v14 = v8;
          v49 = *(v47 + 40);
          v50 = v17 == v49;
          if (v17 >= v49)
          {
            v51 = 1;
          }

          else
          {
            v51 = 255;
          }

          if (v50)
          {
            v52 = *(a1 + v34 + 44);
            v53 = v32 == v52;
            if (v32 >= v52)
            {
              v51 = 1;
            }

            else
            {
              v51 = 255;
            }

            if (v53)
            {
              v51 = 255;
            }

            if (v53 && *(a1 + v34 + 48) == 0x7FFFFFFF)
            {
              v14 = a1 + v34 + 80;
              goto LABEL_16;
            }
          }

          v8 -= 10;
          v34 -= 40;
          if (v51 < 0x80)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        while (1)
        {
          v35 = a1 + v33;
          v36 = *(a1 + v33 + 96);
          *(v35 + 120) = *(a1 + v33 + 80);
          *(v35 + 136) = v36;
          *(v35 + 152) = *(a1 + v33 + 112);
          if (v33 == -80)
          {
            break;
          }

          v37 = *(v35 + 48);
          v38 = *(v35 + 40);
          if (v37 == 0x7FFFFFFF)
          {
            v39 = v17 == v38;
            if (v17 >= v38)
            {
              v40 = 1;
            }

            else
            {
              v40 = -1;
            }

            if (v39)
            {
              v41 = *(a1 + v33 + 44);
              v42 = v32 == v41;
              v40 = v32 >= v41 ? 1 : -1;
              if (v42)
              {
                v40 = 1;
              }
            }
          }

          else
          {
            v43 = v17 == v38;
            if (v17 >= v38)
            {
              v40 = 1;
            }

            else
            {
              v40 = -1;
            }

            if (v43)
            {
              v44 = *(a1 + v33 + 44);
              v45 = v15 >= v37 ? 0 : -1;
              v46 = v32 == v44;
              v40 = v32 >= v44 ? 1 : -1;
              if (v46)
              {
                v40 = v45;
              }
            }
          }

          v33 -= 40;
          if ((v40 & 0x80) == 0)
          {
            v14 = a1 + v33 + 120;
            goto LABEL_16;
          }
        }
      }

      v14 = a1;
LABEL_16:
      *v14 = v17;
      *(v14 + 4) = v32;
      *(v14 + 8) = v15;
      *(v14 + 25) = *&v134[13];
      *(v14 + 12) = *v134;
      if (++v13 == 8)
      {
        return v11 + 10 == a2;
      }

LABEL_17:
      v8 = v11;
      v12 += 40;
      v11 += 10;
      if (v11 == a2)
      {
        return 1;
      }
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
LABEL_58:
      v17 = v19;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_59;
    }

    goto LABEL_29;
  }

  v55 = a2 - 40;
  sub_9DD230(a1, a1 + 10, a1 + 5);
  v58 = *(a2 - 8);
  v59 = *(a1 + 22);
  if (v58 == 0x7FFFFFFF)
  {
    v60 = v59 != 0x7FFFFFFF;
    goto LABEL_127;
  }

  if (v59 == 0x7FFFFFFF)
  {
    v60 = 0;
LABEL_127:
    v68 = *(a1 + 20);
    if (*v55 >= v68)
    {
      v69 = 1;
    }

    else
    {
      v69 = -1;
    }

    if (*v55 != v68)
    {
      goto LABEL_165;
    }

    v70 = *(a1 + 21);
    v71 = *(a2 - 9);
    v25 = v58 == 0x7FFFFFFF;
    v72 = v58 != 0x7FFFFFFF;
    v73 = v25;
    v25 = (v60 & v73) == 0;
    v74 = -1;
    if (v25)
    {
      v74 = 1;
    }

    if (v72 != v60)
    {
      v75 = v74;
    }

    else
    {
      v75 = 0;
    }

    goto LABEL_159;
  }

  v83 = *(a1 + 20);
  if (*v55 >= v83)
  {
    v69 = 1;
  }

  else
  {
    v69 = -1;
  }

  if (*v55 != v83)
  {
    goto LABEL_165;
  }

  v70 = *(a1 + 21);
  v71 = *(a2 - 9);
  v76 = v58 < v59;
  v75 = -1;
  if (!v76)
  {
    v75 = 0;
  }

LABEL_159:
  v84 = v71 >= v70;
  v85 = v71 == v70;
  v86 = -1;
  if (v84)
  {
    v86 = 1;
  }

  if (v85)
  {
    v69 = v75;
  }

  else
  {
    v69 = v86;
  }

LABEL_165:
  if ((v69 & 0x80) == 0)
  {
    return 1;
  }

  v87 = *(a1 + 14);
  v88 = a1[5];
  v89 = a1[6];
  v90 = *(v55 + 32);
  v91 = *(v55 + 16);
  a1[5] = *v55;
  a1[6] = v91;
  *(a1 + 112) = v90;
  *v55 = v88;
  *(v55 + 16) = v89;
  *(v55 + 32) = v87;
  v92 = *(a1 + 22);
  v93 = *(a1 + 12);
  if (v92 == 0x7FFFFFFF)
  {
    v94 = v93 != 0x7FFFFFFF;
LABEL_170:
    v95 = *(a1 + 20);
    v96 = *(a1 + 10);
    v97 = v95 == v96;
    if (v95 >= v96)
    {
      v98 = 1;
    }

    else
    {
      v98 = -1;
    }

    if (v97)
    {
      v99 = *(a1 + 11);
      v100 = *(a1 + 21);
      v101 = v100 == v99;
      v98 = v100 >= v99 ? 1 : -1;
      if (v101)
      {
        v25 = v92 == 0x7FFFFFFF;
        v102 = v92 != 0x7FFFFFFF;
        v103 = v25;
        v25 = (v94 & v103) == 0;
        v98 = -1;
        if (v25)
        {
          v98 = 1;
        }

        if (v102 == v94)
        {
          v98 = 0;
        }
      }
    }

    goto LABEL_203;
  }

  if (v93 == 0x7FFFFFFF)
  {
    v94 = 0;
    goto LABEL_170;
  }

  v104 = *(a1 + 20);
  v105 = *(a1 + 10);
  v106 = v104 == v105;
  if (v104 >= v105)
  {
    v98 = 1;
  }

  else
  {
    v98 = -1;
  }

  if (v106)
  {
    v107 = *(a1 + 11);
    v108 = *(a1 + 21);
    v109 = v108 == v107;
    v98 = v108 >= v107 ? 1 : -1;
    if (v109)
    {
      if (v92 >= v93)
      {
        v98 = 0;
      }

      else
      {
        v98 = -1;
      }
    }
  }

LABEL_203:
  if ((v98 & 0x80) == 0)
  {
    return 1;
  }

  v110 = *(a1 + 9);
  v111 = *(a1 + 40);
  v112 = a1[6];
  *(a1 + 40) = a1[5];
  v113 = *(a1 + 56);
  *(a1 + 56) = v112;
  *(a1 + 72) = *(a1 + 112);
  a1[5] = v111;
  a1[6] = v113;
  *(a1 + 112) = v110;
  v114 = *(a1 + 12);
  v115 = *(a1 + 2);
  if (v114 == 0x7FFFFFFF)
  {
    v116 = v115 != 0x7FFFFFFF;
LABEL_208:
    v117 = *(a1 + 10);
    v118 = v117 == *a1;
    if (v117 >= *a1)
    {
      v119 = 1;
    }

    else
    {
      v119 = -1;
    }

    if (v118)
    {
      v120 = *(a1 + 1);
      v121 = *(a1 + 11);
      v122 = v121 == v120;
      v119 = v121 >= v120 ? 1 : -1;
      if (v122)
      {
        v25 = v114 == 0x7FFFFFFF;
        v123 = v114 != 0x7FFFFFFF;
        v124 = v25;
        v25 = (v116 & v124) == 0;
        v119 = -1;
        if (v25)
        {
          v119 = 1;
        }

        if (v123 == v116)
        {
          v119 = 0;
        }
      }
    }

    goto LABEL_240;
  }

  if (v115 == 0x7FFFFFFF)
  {
    v116 = 0;
    goto LABEL_208;
  }

  v125 = *(a1 + 10);
  v126 = v125 == *a1;
  if (v125 >= *a1)
  {
    v119 = 1;
  }

  else
  {
    v119 = -1;
  }

  if (v126)
  {
    v127 = *(a1 + 1);
    v128 = *(a1 + 11);
    v129 = v128 == v127;
    v119 = v128 >= v127 ? 1 : -1;
    if (v129)
    {
      if (v114 >= v115)
      {
        v119 = 0;
      }

      else
      {
        v119 = -1;
      }
    }
  }

LABEL_240:
  if ((v119 & 0x80) == 0)
  {
    return 1;
  }

  v130 = *(a1 + 4);
  v132 = *a1;
  v131 = a1[1];
  v133 = *(a1 + 56);
  *a1 = *(a1 + 40);
  a1[1] = v133;
  *(a1 + 32) = *(a1 + 72);
  *(a1 + 40) = v132;
  *(a1 + 56) = v131;
  result = 1;
  *(a1 + 72) = v130;
  return result;
}

double sub_9DE500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  return result;
}

void sub_9DE520(uint64_t a1@<X0>, unint64_t **a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v4 = *a2;
  v56 = a2[1];
  if (*a2 != v56)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *v4;
      v9 = sub_3AFEE8(*(a1 + 8));
      v10 = sub_9E0278(v9, v8, 0, "payment_method_region");
      v11 = (v10 - *v10);
      if (*v11 >= 0xBu && (v12 = v11[5]) != 0)
      {
        v13 = (v10 + v12 + *(v10 + v12));
      }

      else
      {
        v13 = 0;
      }

      sub_9E0404(v13, &v64);
      v57 = v4;
      __src = v7;
      v60 = v6;
      v14 = v64.i64[1];
      v15 = v64.i64[0];
      if (v64.i64[0] == v64.i64[1])
      {
        goto LABEL_58;
      }

      do
      {
        if (v15[8] && (v15[10] != 1 || (sub_3B0454(*(a1 + 8)) & 1) != 0))
        {
          v16 = *v15;
          v17 = HIDWORD(*v15);
          v18 = *(a3 + 8);
          v19 = *a3;
          if (*a3 == v18)
          {
            goto LABEL_20;
          }

          while (*v19 != __PAIR64__(v17, v16))
          {
            if (++v19 == v18)
            {
              goto LABEL_11;
            }
          }

          if (v19 != v18)
          {
LABEL_20:
            v20 = a1;
            v21 = sub_3AFEE8(*(a1 + 8));
            v70 = 0;
            v71 = v16;
            v68 = "payment_method";
            v69[0] = &v70;
            v69[1] = &v71;
            v22 = *(v21 + 3856) + 1;
            *(v21 + 3856) = v22;
            if (!*v21)
            {
              exception = __cxa_allocate_exception(0x40uLL);
              v74 = v71;
              v72 = sub_7FCF0(6u);
              v73 = v40;
              sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v72, &v61);
              if ((v63 & 0x80u) == 0)
              {
                v41 = &v61;
              }

              else
              {
                v41 = v61;
              }

              if ((v63 & 0x80u) == 0)
              {
                v42 = v63;
              }

              else
              {
                v42 = v62;
              }

              v43 = sub_2D390(exception, v41, v42);
            }

            if (*(v21 + 592) == v16)
            {
              ++*(v21 + 3864);
              *(v21 + 600) = v22;
              v23 = *(v21 + 608);
              if (!v23)
              {
                goto LABEL_69;
              }
            }

            else if (*(v21 + 616) == v16)
            {
              ++*(v21 + 3864);
              *(v21 + 624) = v22;
              v23 = *(v21 + 632);
              if (!v23)
              {
                goto LABEL_69;
              }
            }

            else if (*(v21 + 640) == v16)
            {
              ++*(v21 + 3864);
              *(v21 + 648) = v22;
              v23 = *(v21 + 656);
              if (!v23)
              {
                goto LABEL_69;
              }
            }

            else if (*(v21 + 664) == v16)
            {
              ++*(v21 + 3864);
              *(v21 + 672) = v22;
              v23 = *(v21 + 680);
              if (!v23)
              {
LABEL_69:
                v44 = __cxa_allocate_exception(0x40uLL);
                v74 = v71;
                v72 = sub_7FCF0(6u);
                v73 = v45;
                sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v72, &v61);
                if ((v63 & 0x80u) == 0)
                {
                  v46 = &v61;
                }

                else
                {
                  v46 = v61;
                }

                if ((v63 & 0x80u) == 0)
                {
                  v47 = v63;
                }

                else
                {
                  v47 = v62;
                }

                v48 = sub_2D390(v44, v46, v47);
              }
            }

            else
            {
              v24 = *(v21 + 648);
              v25 = *(v21 + 624);
              v26 = *(v21 + 600);
              v54 = *(v21 + 672);
              __p = v21;
              v23 = sub_2D52A4(*v21, 6, v16, 1);
              if (v26 >= v22)
              {
                v27 = v22;
              }

              else
              {
                v27 = v26;
              }

              if (v26 >= v22)
              {
                v28 = 0;
              }

              else
              {
                v28 = 24;
              }

              if (v25 < v27)
              {
                v27 = v25;
                v28 = 25;
              }

              if (v24 < v27)
              {
                v28 = 26;
                v27 = v24;
              }

              v29 = v54 >= v27;
              v30 = 27;
              if (v29)
              {
                v30 = v28;
              }

              v31 = &__p[3 * v30 + 2];
              *v31 = v71;
              *(v31 + 8) = __p[482];
              *(v31 + 16) = v23;
              if (!v23)
              {
                sub_2C9894(v69);
LABEL_77:
                v49 = __cxa_allocate_exception(0x40uLL);
                LODWORD(v69[0]) = v16;
                v74 = v17;
                v72 = sub_7FCF0(6u);
                v73 = v50;
                sub_2C956C("Failed to acquire entity ", &v68, " in quad node ", " at position ", " on layer ", &v72, &v61);
                if ((v63 & 0x80u) == 0)
                {
                  v51 = &v61;
                }

                else
                {
                  v51 = v61;
                }

                if ((v63 & 0x80u) == 0)
                {
                  v52 = v63;
                }

                else
                {
                  v52 = v62;
                }

                v53 = sub_2D390(v49, v51, v52);
              }
            }

            v32 = (v23 + *v23);
            v33 = (v32 - *v32);
            if (*v33 < 0x31u)
            {
              goto LABEL_77;
            }

            v34 = v33[24];
            if (!v34)
            {
              goto LABEL_77;
            }

            v35 = (v32 + v34 + *(v32 + v34));
            if (*v35 <= v17)
            {
              goto LABEL_77;
            }

            v36 = (&v35[v17 + 1] + v35[v17 + 1]);
            v37 = (v36 - *v36);
            if (*v37 < 9u)
            {
              goto LABEL_10;
            }

            v38 = v37[4];
            a1 = v20;
            if (v38)
            {
              if (*(v36 + v38))
              {
                if (*(v36 + v38) != 1 || v15[9])
                {
                  operator new();
                }

LABEL_10:
                a1 = v20;
              }
            }
          }
        }

LABEL_11:
        v15 += 12;
      }

      while (v15 != v14);
      v15 = v64.i64[0];
LABEL_58:
      v6 = v60;
      if (v15)
      {
        v64.i64[1] = v15;
        operator delete(v15);
      }

      v7 = __src;
      v4 = v57 + 1;
    }

    while (v57 + 1 != v56);
  }
}

void sub_9DEFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, char **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  v25 = *(v23 - 192);
  if (!v25)
  {
    sub_30C2C4((v23 - 168));
    sub_951434(a12);
    _Unwind_Resume(a1);
  }

  *(v23 - 184) = v25;
  operator delete(v25);
  sub_30C2C4((v23 - 168));
  sub_951434(a12);
  _Unwind_Resume(a1);
}

void sub_9DF17C(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a4;
  v10 = a3;
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  *(a7 + 24) = -1;
  sub_64B998(a7 + 32);
  *(a7 + 192) = 0;
  *(a7 + 200) = 0;
  *(a7 + 208) = 0;
  sub_64B998(a7 + 216);
  sub_64B998(a7 + 376);
  *(a7 + 564) = 0;
  *(a7 + 536) = 0;
  *(a7 + 552) = 0;
  *(a7 + 544) = 0;
  *(a7 + 560) = 0;
  if (a7 != a6)
  {
    sub_31F64(a7, *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 3);
  }

  *(a7 + 560) = v10;
  v14 = a5 == 1;
  if (a5 == 2)
  {
    v14 = 2;
  }

  if (v9 != 1)
  {
    v14 = 0;
  }

  if (v9 == 2)
  {
    v15 = 3;
  }

  else
  {
    v15 = v14;
  }

  if (v9 == 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15;
  }

  *(a7 + 564) = v16;
  v17 = sub_3AFEE8(a1[1]);
  v18 = sub_9E0278(v17, a2, 0, "payment_method_region");
  v19 = (v18 - *v18);
  if (*v19 >= 5u && (v20 = v19[2]) != 0)
  {
    v21 = *(v18 + v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_2C939C(v17, 1u, 0);
  if (!v22 || (v23 = &v22[-*v22], *v23 < 0xDu) || (v24 = *(v23 + 6)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v85 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v25 = &v22[v24 + *&v22[v24]];
  v26 = &v25[-*v25];
  if (*v26 >= 0xBu)
  {
    v27 = *(v26 + 5);
    if (v27)
    {
      if (v25[v27])
      {
        nullsub_1();
        v21 = v28;
      }
    }
  }

  *(a7 + 24) = v21;
  nullsub_1();
  v29 = sub_3AFEE8(a1[1]);
  v30 = sub_9E0278(v29, a2, 0, "payment_method_region");
  v31 = (v30 - *v30);
  if (*v31 >= 0x11u && (v32 = v31[8]) != 0)
  {
    v33 = (v30 + v32 + *(v30 + v32));
  }

  else
  {
    v33 = 0;
  }

  sub_509164(v33, v105);
  sub_9D69F4(v105, v94);
  sub_64BC20(&v103, v94);
  sub_53D784(a7 + 216, &v103);
  sub_53A868(&v103);
  if (SHIBYTE(v98) < 0)
  {
    operator delete(__p);
    if ((v95 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_55:
    operator delete(v94[0]);
    goto LABEL_30;
  }

  if (v95 < 0)
  {
    goto LABEL_55;
  }

LABEL_30:
  v36 = a6;
  v34 = *a6;
  v35 = *(v36 + 8);
  v37 = sub_3AFEE8(a1[1]);
  v38 = sub_9E0278(v37, a2, 0, "payment_method_region");
  v39 = (v38 - *v38);
  if (*v39 >= 0x13u && (v40 = v39[9]) != 0)
  {
    v41 = (v38 + v40 + *(v38 + v40));
    v103 = 0uLL;
    v104 = 0;
    sub_9E16D4(&v103, *v41);
    v94[0] = v41 + 1;
    v92[0] = &v41[*v41 + 1];
    sub_9E1C00(v94, v92, &v103, sub_9E14D8);
    v42 = v103;
    v43 = v104;
  }

  else
  {
    v43 = 0;
    v42 = 0uLL;
  }

  v44 = v35 - v34;
  v101 = v42;
  v102 = v43;
  v104 = 0;
  v103 = 0uLL;
  sub_9E00F4(&v103);
  sub_9DFC5C(a1, &v101, v10, v9, v44 > 8, &v99);
  if (v99 != v100)
  {
    sub_594568(a7 + 376, v99);
  }

  v45 = sub_3AFEE8(a1[1]);
  v46 = sub_9E0278(v45, a2, 0, "payment_method_region");
  v47 = (v46 - *v46);
  if (*v47 >= 0xDu && (v48 = v47[6]) != 0)
  {
    v49 = (v46 + v48 + *(v46 + v48));
  }

  else
  {
    v49 = 0;
  }

  sub_509164(v49, v94);
  sub_9D69F4(v94, v92);
  sub_64BC20(&v103, v92);
  if (v93 < 0)
  {
    operator delete(v92[4]);
    if ((SHIBYTE(v92[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_57:
    operator delete(v92[0]);
    goto LABEL_42;
  }

  if (SHIBYTE(v92[2]) < 0)
  {
    goto LABEL_57;
  }

LABEL_42:
  v50 = sub_3AFEE8(a1[1]);
  v51 = sub_9E0278(v50, a2, 0, "payment_method_region");
  v52 = (v51 - *v51);
  if (*v52 >= 0xFu && (v53 = v52[7]) != 0)
  {
    v54 = (v51 + v53 + *(v51 + v53));
    memset(v92, 0, 24);
    sub_9E16D4(v92, *v54);
    v88 = (v54 + 1);
    v86 = &v54[*v54 + 1];
    sub_9E1C00(&v88, &v86, v92, sub_9E14D8);
    v55 = *v92;
    v56 = v92[2];
  }

  else
  {
    v56 = 0;
    v55 = 0uLL;
  }

  v90 = v55;
  v91 = v56;
  memset(v92, 0, 24);
  sub_9E00F4(v92);
  sub_9DFC5C(a1, &v90, v10, v9, v44 > 8, &v88);
  v57 = v88;
  if (v88 != v89)
  {
    if (!sub_4D1F6C(&v103))
    {
      sub_594568(a7 + 32, &v103);
      if ((a7 + 192) != &v88)
      {
        sub_5F9F30((a7 + 192), v88, v89, 0xCCCCCCCCCCCCCCCDLL * ((v89 - v88) >> 5));
      }

      v58 = sub_3AFEE8(a1[1]);
      v59 = sub_9E0278(v58, a2, 0, "payment_method_region");
      v60 = (v59 - *v59);
      if (*v60 >= 0x15u)
      {
        v61 = v60[10];
        if (v61)
        {
          v62 = *(v59 + v61);
          memset(v92, 0, 24);
          if (*(v59 + v61 + v62))
          {
            operator new();
          }

          sub_9E37C0((v59 + v61 + v62), v92);
          v63 = v92[0];
          v86 = v92[0];
          v87 = *&v92[1];
          v64 = v92[1];
          if (v92[0] != v92[1])
          {
            v65 = v92[0];
            do
            {
              v67 = *(v65 + 23);
              v68 = v67;
              if (v67 < 0)
              {
                v67 = v65[1];
              }

              if (v67)
              {
                v69 = *(v65 + 24) == 0;
              }

              else
              {
                v69 = 1;
              }

              if (!v69)
              {
                v70 = *(a7 + 544);
                if (v70 >= *(a7 + 552))
                {
                  v66 = sub_9E3A30((a7 + 536), v65);
                }

                else
                {
                  if (v68 < 0)
                  {
                    sub_325C(*(a7 + 544), *v65, v65[1]);
                  }

                  else
                  {
                    v71 = *v65;
                    *(v70 + 16) = v65[2];
                    *v70 = v71;
                  }

                  *(v70 + 24) = *(v65 + 24);
                  v66 = v70 + 32;
                }

                *(a7 + 544) = v66;
              }

              v65 += 4;
            }

            while (v65 != v64);
          }

          if (v63)
          {
            while (v64 != v63)
            {
              v77 = *(v64 - 9);
              v64 -= 4;
              if (v77 < 0)
              {
                operator delete(*v64);
              }
            }

            operator delete(v63);
          }
        }
      }
    }

    v57 = v88;
  }

  if (v57)
  {
    v72 = v89;
    v73 = v57;
    if (v89 != v57)
    {
      do
      {
        v72 = sub_53A868((v72 - 160));
      }

      while (v72 != v57);
      v73 = v88;
    }

    v89 = v57;
    operator delete(v73);
  }

  sub_9E00F4(&v90);
  sub_53A868(&v103);
  v74 = v97;
  if (v97)
  {
    v75 = v98;
    v76 = v97;
    if (v98 != v97)
    {
      do
      {
        if (*(v75 - 1) < 0)
        {
          operator delete(*(v75 - 3));
        }

        v75 -= 4;
      }

      while (v75 != v74);
      v76 = v97;
    }

    v98 = v74;
    operator delete(v76);
  }

  if (v95 < 0)
  {
    operator delete(v94[0]);
  }

  v78 = v99;
  if (v99)
  {
    v79 = v100;
    v80 = v99;
    if (v100 != v99)
    {
      do
      {
        v79 = sub_53A868(v79 - 160);
      }

      while (v79 != v78);
      v80 = v99;
    }

    v100 = v78;
    operator delete(v80);
  }

  sub_9E00F4(&v101);
  v81 = v107;
  if (v107)
  {
    v82 = v108;
    v83 = v107;
    if (v108 != v107)
    {
      do
      {
        if (*(v82 - 1) < 0)
        {
          operator delete(*(v82 - 3));
        }

        v82 -= 4;
      }

      while (v82 != v81);
      v83 = v107;
    }

    v108 = v81;
    operator delete(v83);
  }

  if (v106 < 0)
  {
    operator delete(v105[0]);
  }
}

void sub_9DFA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void **a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  sub_4B98C4(&a19);
  sub_5C0ED8(&a12);
  sub_9E00F4(&a15);
  sub_53A868(va);
  sub_395478(&a26);
  sub_5C0ED8(&a34);
  sub_9E00F4(&a37);
  sub_395478(v41 - 160);
  sub_9DFBBC(v40);
  _Unwind_Resume(a1);
}

uint64_t sub_9DFBBC(uint64_t a1)
{
  sub_938500((a1 + 24));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_9DFBF8(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_9D9004(a1, i))
    {
      i -= 80;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_9DFC5C(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  a6[1] = 0;
  a6[2] = 0;
  v8 = v6;
  *a6 = 0;
  if (v6 != v7)
  {
    if (a4 == 1)
    {
      v11 = 4;
      goto LABEL_13;
    }

    if (a4 == 4 || a4 == 2)
    {
      if (a3 == 2)
      {
        v11 = 3;
        goto LABEL_13;
      }

      if (a3 == 1)
      {
        if (a5)
        {
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }

LABEL_13:
        v12 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        do
        {
          if (*(v8 + 80) == v11)
          {
            if (v12 >= v43)
            {
              v12 = sub_9E0CD0(&v41, v8);
            }

            else
            {
              sub_9D88D0(v12, v8);
              v12 += 80;
            }

            v42 = v12;
          }

          v8 += 88;
        }

        while (v8 != v7);
        v13 = v41;
        if (v41 == v12)
        {
          if (!v41)
          {
            return;
          }

          goto LABEL_52;
        }

        while (1)
        {
          nullsub_1();
          sub_9D7320(v13, &v37);
          sub_9924B0(v36, &v37);
          sub_9927B4(v36, *(*a1 + 968));
          sub_9932C8(v36, v35);
          if (!sub_4D1F6C(v35))
          {
            v14 = a6[1];
            if (v14 >= a6[2])
            {
              v15 = sub_5C489C(a6, v35);
            }

            else
            {
              sub_55BD50(a6[1], v35);
              v15 = v14 + 160;
            }

            a6[1] = v15;
          }

          sub_53A868(v35);
          sub_992650(v36);
          v16 = v39;
          if (!v39)
          {
            goto LABEL_49;
          }

          v17 = v40;
          v18 = v39;
          if (v40 != v39)
          {
            break;
          }

LABEL_48:
          v40 = v16;
          operator delete(v18);
LABEL_49:
          if (v38 < 0)
          {
            operator delete(v37);
          }

          v13 += 80;
          if (v13 == v12)
          {
            v13 = v41;
            if (!v41)
            {
              return;
            }

LABEL_52:
            v24 = v42;
            v25 = v13;
            if (v42 == v13)
            {
              goto LABEL_80;
            }

            while (1)
            {
              if (*(v24 - 3))
              {
                sub_9E0F88(v24 - 3);
                operator delete(*(v24 - 3));
              }

              v26 = *(v24 - 7);
              if (!v26)
              {
                goto LABEL_77;
              }

              v27 = *(v24 - 6);
              v28 = *(v24 - 7);
              if (v27 != v26)
              {
                break;
              }

LABEL_76:
              *(v24 - 6) = v26;
              operator delete(v28);
LABEL_77:
              v34 = (v24 - 80);
              if (*(v24 - 57) < 0)
              {
                operator delete(*v34);
              }

              v24 -= 80;
              if (v34 == v13)
              {
                v25 = v41;
LABEL_80:
                v42 = v13;
                operator delete(v25);
                return;
              }
            }

            while (1)
            {
              v30 = *(v27 - 3);
              if (v30)
              {
                break;
              }

LABEL_72:
              if (*(v27 - 25) < 0)
              {
                operator delete(*(v27 - 6));
                v29 = v27 - 10;
                if ((*(v27 - 57) & 0x80000000) == 0)
                {
                  goto LABEL_61;
                }

LABEL_74:
                operator delete(*v29);
                v27 = v29;
                if (v29 == v26)
                {
LABEL_75:
                  v28 = *(v24 - 7);
                  goto LABEL_76;
                }
              }

              else
              {
                v29 = v27 - 10;
                if (*(v27 - 57) < 0)
                {
                  goto LABEL_74;
                }

LABEL_61:
                v27 = v29;
                if (v29 == v26)
                {
                  goto LABEL_75;
                }
              }
            }

            v31 = *(v27 - 2);
            v32 = *(v27 - 3);
            if (v31 == v30)
            {
LABEL_71:
              *(v27 - 2) = v30;
              operator delete(v32);
              goto LABEL_72;
            }

            while (1)
            {
              if (*(v31 - 1) < 0)
              {
                operator delete(*(v31 - 3));
                v33 = v31 - 6;
                if ((*(v31 - 25) & 0x80000000) == 0)
                {
                  goto LABEL_66;
                }

LABEL_69:
                operator delete(*v33);
                v31 = v33;
                if (v33 == v30)
                {
LABEL_70:
                  v32 = *(v27 - 3);
                  goto LABEL_71;
                }
              }

              else
              {
                v33 = v31 - 6;
                if (*(v31 - 25) < 0)
                {
                  goto LABEL_69;
                }

LABEL_66:
                v31 = v33;
                if (v33 == v30)
                {
                  goto LABEL_70;
                }
              }
            }
          }
        }

        while (1)
        {
          v20 = *(v17 - 3);
          if (v20)
          {
            break;
          }

LABEL_44:
          if (*(v17 - 25) < 0)
          {
            operator delete(*(v17 - 6));
            v19 = v17 - 10;
            if ((*(v17 - 57) & 0x80000000) == 0)
            {
              goto LABEL_33;
            }

LABEL_46:
            operator delete(*v19);
            v17 = v19;
            if (v19 == v16)
            {
LABEL_47:
              v18 = v39;
              goto LABEL_48;
            }
          }

          else
          {
            v19 = v17 - 10;
            if (*(v17 - 57) < 0)
            {
              goto LABEL_46;
            }

LABEL_33:
            v17 = v19;
            if (v19 == v16)
            {
              goto LABEL_47;
            }
          }
        }

        v21 = *(v17 - 2);
        v22 = *(v17 - 3);
        if (v21 == v20)
        {
LABEL_43:
          *(v17 - 2) = v20;
          operator delete(v22);
          goto LABEL_44;
        }

        while (1)
        {
          if (*(v21 - 1) < 0)
          {
            operator delete(*(v21 - 3));
            v23 = v21 - 6;
            if ((*(v21 - 25) & 0x80000000) == 0)
            {
              goto LABEL_38;
            }

LABEL_41:
            operator delete(*v23);
            v21 = v23;
            if (v23 == v20)
            {
LABEL_42:
              v22 = *(v17 - 3);
              goto LABEL_43;
            }
          }

          else
          {
            v23 = v21 - 6;
            if (*(v21 - 25) < 0)
            {
              goto LABEL_41;
            }

LABEL_38:
            v21 = v23;
            if (v23 == v20)
            {
              goto LABEL_42;
            }
          }
        }
      }
    }

    v11 = 0;
    goto LABEL_13;
  }
}