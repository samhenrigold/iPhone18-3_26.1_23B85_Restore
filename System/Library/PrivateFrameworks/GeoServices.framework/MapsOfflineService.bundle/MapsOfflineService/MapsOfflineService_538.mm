void *sub_1DA6238(void *a1)
{
  *a1 = off_27255C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1DA62A4(void *a1)
{
  *a1 = off_27255C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1DA6330(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_1DA6384(std::locale *a1)
{
  a1->__locale_ = off_2725680;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1DA6410(std::locale *a1)
{
  a1->__locale_ = off_2725680;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1DA64BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
LABEL_13:
    result = 0;
    goto LABEL_19;
  }

  v6 = *(a2 + 16);
  if (v6 == v5)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v8 = *(v6 - 1);
LABEL_11:
      if (v8 == 95)
      {
        result = 1;
      }

      else
      {
        result = (*(**(a1 + 24) + 24))(*(a1 + 24), 1280);
      }

      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (v6 == v4)
  {
    v7 = *(a2 + 88);
    if ((v7 & 0x80) == 0)
    {
      if ((v7 & 4) == 0)
      {
        v8 = *v6;
        goto LABEL_11;
      }

      goto LABEL_13;
    }
  }

  v9 = *v6;
  if (*(v6 - 1) == 95)
  {
    v10 = 1;
  }

  else
  {
    v10 = (*(**(a1 + 24) + 24))(*(a1 + 24), 1280);
  }

  if (v9 == 95)
  {
    v12 = 1;
  }

  else
  {
    v12 = (*(**(a1 + 24) + 24))(*(a1 + 24), 1280, v9);
  }

  result = v10 != v12;
LABEL_19:
  if (*(a1 + 40) == result)
  {
    v13 = 0;
    v14 = -993;
  }

  else
  {
    v13 = *(a1 + 8);
    v14 = -994;
  }

  *a2 = v14;
  *(a2 + 80) = v13;
  return result;
}

uint64_t sub_1DA6628(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = off_27256C8;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *sub_1DA66B8(std::locale *a1)
{
  a1->__locale_ = off_27256C8;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_1220A18(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1DA6754(std::locale *a1)
{
  a1->__locale_ = off_27256C8;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_1220A18(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

void sub_1DA6810(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0uLL;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  __p = 0;
  v19 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v20 = 0;
  *&v21 = v5;
  *(&v21 + 1) = v5;
  v22 = 0;
  sub_1DA6DBC(&__p, v4, &v21);
  v23 = v6;
  v24 = v6;
  v25 = 0;
  v26 = v21;
  v27 = v22;
  v29 = v6;
  v28 = 1;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == sub_1DA6A0C(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v9 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v9 = __p;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v19 - __p) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!v9)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &v9[24 * v14];
    v16 = v12 + 24 * v11;
    *v16 = *v15;
    *(v16 + 16) = v15[16];
    v14 = v13;
    ++v11;
  }

  while (v10 > v13++);
LABEL_11:
  v19 = v9;
  operator delete(v9);
}

void sub_1DA6978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1DA6998(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5)
{
  *(a1 + 24) = a4;
  v8 = (a1 + 24);
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  result = sub_1DA6DBC(a1, a2, (a1 + 24));
  *(a1 + 48) = a3;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = *v8;
  *(a1 + 88) = *(a1 + 40);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = a3;
  }

  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_1DA6A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  *&v40 = a3;
  *(&v40 + 1) = a3;
  v41 = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  sub_1DA6FC4(&v42, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v43;
  *(v43 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  sub_1DA705C((v13 - 64), *(a1 + 28), &v40);
  sub_1DA7098((v43 - 40), *(a1 + 32));
  v14 = v43;
  *(v43 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= ((a3 - a2) >> 2))
    {
      sub_17AB8();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          sub_1DA76D8(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          sub_1DA7758(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          sub_1DA6FC4(&v42, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          sub_17B10();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v43;
    ++v15;
    if (v42 == v43)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v43 - 96;
    sub_1DA734C((v43 - 96));
    v43 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v42;
  sub_1DA7808(v36);
  return v24;
}

void sub_1DA6D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_17A74(&a11);
  a11 = v16 - 112;
  sub_1DA7808(&a11);
  _Unwind_Resume(a1);
}

char *sub_1DA6DBC(char **a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      sub_1DA6F20(a1, v9);
    }

    sub_1794();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = *(a3 + 16);
    v15 = result;
    do
    {
      *v15 = v13;
      v15[16] = v14;
      v15 += 24;
      --v12;
    }

    while (v12);
  }

  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v16 = &v10[24 * (a2 - v11)];
    v17 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v18 = *a3;
      *(v10 + 2) = *(a3 + 2);
      *v10 = v18;
      v10 += 24;
      v17 -= 24;
    }

    while (v17);
    a1[1] = v16;
  }

  return result;
}

void sub_1DA6F20(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1DA6F6C(a1, a2);
  }

  sub_1794();
}

void sub_1DA6F6C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1DA6FC4(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1DA70C8(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

void sub_1DA705C(void **result, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_1DA73F4(result, v5, a3);
  }

  else if (!v4)
  {
    result[1] = *result + 24 * a2;
  }
}

void sub_1DA7098(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    sub_1DA757C(result, a2 - v2);
  }
}

uint64_t sub_1DA70C8(unint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_1DA7240(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = a1[1];
  v11 = 96 * v2 + *a1 - v10;
  sub_1DA7298(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1DA73A4(&v16);
  return v15;
}

void sub_1DA722C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1DA73A4(va);
  _Unwind_Resume(a1);
}

void sub_1DA7240(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1808();
}

void sub_1DA7298(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 72) = *(v6 + 72);
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      v8 = *(v6 + 80);
      *(a4 + 85) = *(v6 + 85);
      *(a4 + 80) = v8;
      v6 += 96;
      a4 += 96;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_1DA734C(v5);
      v5 += 12;
    }
  }
}

void sub_1DA734C(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t sub_1DA73A4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    sub_1DA734C((i - 96));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1DA73F4(void **a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 24 * a2;
      v12 = 24 * a2;
      do
      {
        v13 = *a3;
        *(v5 + 16) = *(a3 + 2);
        *v5 = v13;
        v5 += 24;
        v12 -= 24;
      }

      while (v12);
      v5 = v11;
    }

    a1[1] = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
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
      sub_1DA6F6C(a1, v10);
    }

    v14 = 24 * a2;
    v15 = 24 * v7;
    do
    {
      v16 = *a3;
      *(v15 + 16) = *(a3 + 2);
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    v17 = *a1;
    v18 = a1[1];
    v19 = *a1 + 24 * v7 - v18;
    if (v18 != *a1)
    {
      v20 = *a1 + 24 * v7 - v18;
      do
      {
        v21 = *v17;
        *(v20 + 16) = v17[2];
        *v20 = v21;
        v20 += 24;
        v17 += 3;
      }

      while (v17 != v18);
      v17 = *a1;
    }

    *a1 = v19;
    a1[1] = (24 * v7 + 24 * a2);
    a1[2] = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void sub_1DA757C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_1794();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1DA7690(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_1DA7690(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1808();
}

uint64_t *sub_1DA76D8(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_1DA6F20(result, a4);
  }

  return result;
}

void sub_1DA773C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1DA7758(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_1DA77CC(result, a4);
  }

  return result;
}

void sub_1DA77B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DA77CC(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1DA7690(a1, a2);
  }

  sub_1794();
}

void sub_1DA7808(void ***a1)
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
        v4 -= 12;
        sub_1DA734C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

int *sub_1DA788C(uint64_t a1, int *a2, int *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      sub_18720();
    }

    v7 = sub_1DA7CBC(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = sub_1DA7D74(a1, v3 + 1, a3), v7 == v5))
    {
      v8 = sub_1DA7E44(a1, v3 + 1, a3, 0);
      if (v8 != v5)
      {
        return v8;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

_DWORD *sub_1DA7934(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      sub_1DA90D8(a1, a2[1] == 94);
    }

    sub_1B2D8();
  }

  return a2;
}

uint64_t sub_1DA7A50(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1DA7AD8(uint64_t result, int a2)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

_DWORD *sub_1DA7B58(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x7800000080004F1) == 0;
    if (v5 && (v4 - 123) >= 3)
    {
      sub_1DA8338(a1, v4);
    }
  }

  return a2;
}

void *sub_1DA7BC4(void *a1)
{
  *a1 = off_27255C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1DA7C30(void *a1)
{
  *a1 = off_27255C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

int *sub_1DA7CBC(uint64_t a1, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (*a2 - 48);
    if (v4 == 48)
    {
      sub_1DA8338(a1, v5);
    }

    if ((v4 - 49) <= 8)
    {
      v6 = a2 + 1;
      if (v6 == a3)
      {
        goto LABEL_10;
      }

      do
      {
        v7 = *v6;
        if ((*v6 - 48) > 9)
        {
          break;
        }

        if (v5 >= 0x19999999)
        {
          goto LABEL_13;
        }

        ++v6;
        LODWORD(v5) = v7 + 10 * v5 - 48;
      }

      while (v6 != a3);
      if (v5)
      {
LABEL_10:
        if (v5 <= *(a1 + 28))
        {
          sub_1DA8478(a1, v5);
        }
      }

LABEL_13:
      sub_190B0();
    }
  }

  return a2;
}

int *sub_1DA7D74(uint64_t a1, int *a2, int *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (*a2 > 99)
  {
    if (v3 == 119)
    {
      v4 = 0;
LABEL_14:
      sub_1DA90D8(a1, v4);
    }

    if (v3 == 115)
    {
      v6 = 0;
LABEL_17:
      sub_1DA90D8(a1, v6);
    }

    if (v3 != 100)
    {
      return a2;
    }

    v5 = 0;
LABEL_12:
    sub_1DA90D8(a1, v5);
  }

  switch(v3)
  {
    case 'D':
      v5 = 1;
      goto LABEL_12;
    case 'S':
      v6 = 1;
      goto LABEL_17;
    case 'W':
      v4 = 1;
      goto LABEL_14;
  }

  return a2;
}

unsigned int *sub_1DA7E44(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t **a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = a4;
  v7 = a1;
  v8 = *a2;
  if (*a2 <= 113)
  {
    if (v8 > 101)
    {
      if (v8 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = (&dword_0 + 1);
            v5 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v23 = 12;
          goto LABEL_92;
        }

        v11 = 12;
      }

      else
      {
        if (v8 != 110)
        {
          goto LABEL_74;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = (&dword_0 + 1);
            v5 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v23 = 10;
          goto LABEL_92;
        }

        v11 = 10;
      }
    }

    else
    {
      if (v8 != 48)
      {
        if (v8 == 99)
        {
          v4 = a2 + 1;
          if (a2 + 1 == a3)
          {
            goto LABEL_95;
          }

          v10 = *v4;
          if (*v4 < 65 || v10 >= 0x5B && v10 - 97 > 0x19)
          {
            goto LABEL_95;
          }

          v11 = v10 & 0x1F;
          if (a4)
          {
            goto LABEL_76;
          }

LABEL_16:
          a1 = v7;
          goto LABEL_72;
        }

        if (v8 == 95)
        {
          goto LABEL_95;
        }

LABEL_74:
        if ((*(**(a1 + 8) + 24))(*(a1 + 8), 1280))
        {
          goto LABEL_95;
        }

        v11 = *v4;
        if (v5)
        {
LABEL_76:
          if (*(v5 + 23) < 0)
          {
            v5[1] = (&dword_0 + 1);
            v5 = *v5;
          }

          else
          {
            *(v5 + 23) = 1;
          }

          *v5 = v11;
          *(v5 + 1) = 0;
          return ++v4;
        }

        goto LABEL_16;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = (&dword_0 + 1);
          v5 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *v5 = 0;
        return ++v4;
      }

      v11 = 0;
    }

    goto LABEL_72;
  }

  if (v8 <= 116)
  {
    if (v8 == 114)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = (&dword_0 + 1);
          v5 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v23 = 13;
        goto LABEL_92;
      }

      v11 = 13;
    }

    else
    {
      if (v8 != 116)
      {
        goto LABEL_74;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = (&dword_0 + 1);
          v5 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v23 = 9;
        goto LABEL_92;
      }

      v11 = 9;
    }

LABEL_72:
    sub_1DA8338(a1, v11);
  }

  if (v8 != 117)
  {
    if (v8 != 118)
    {
      if (v8 == 120)
      {
        v9 = 0;
        goto LABEL_47;
      }

      goto LABEL_74;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = (&dword_0 + 1);
        v5 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v23 = 11;
LABEL_92:
      *v5 = v23;
      return ++v4;
    }

    v11 = 11;
    goto LABEL_72;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_95;
  }

  v12 = (*(**(a1 + 8) + 104))(*(a1 + 8), a2[1], 0);
  v13 = v12;
  v14 = -48;
  if ((v12 & 0xFFFFFFF8) != 0x30 && (v12 & 0xFFFFFFFE) != 0x38)
  {
    v13 = v12 | 0x20;
    if (((v12 | 0x20) - 97) >= 6u)
    {
      goto LABEL_95;
    }

    v14 = -87;
  }

  v4 += 2;
  if (v4 == a3)
  {
    goto LABEL_95;
  }

  v15 = (*(**(v7 + 8) + 104))(*(v7 + 8), *v4, 0);
  v16 = -48;
  if ((v15 & 0xFFFFFFF8) != 0x30 && (v15 & 0xFFFFFFFE) != 0x38)
  {
    v15 |= 0x20u;
    if ((v15 - 97) >= 6u)
    {
      goto LABEL_95;
    }

    v16 = -87;
  }

  v9 = ((v14 + v13) << 8) + 16 * (v16 + v15);
LABEL_47:
  if (v4 + 1 == a3)
  {
    goto LABEL_95;
  }

  v17 = (*(**(v7 + 8) + 104))(*(v7 + 8), v4[1], 0);
  v18 = v17;
  v19 = -48;
  if ((v17 & 0xFFFFFFF8) != 0x30 && (v17 & 0xFFFFFFFE) != 0x38)
  {
    v18 = v17 | 0x20;
    if (((v17 | 0x20) - 97) >= 6u)
    {
      goto LABEL_95;
    }

    v19 = -87;
  }

  if (v4 + 2 == a3)
  {
    goto LABEL_95;
  }

  v20 = (*(**(v7 + 8) + 104))(*(v7 + 8), v4[2], 0);
  v21 = -48;
  if ((v20 & 0xFFFFFFF8) == 0x30 || (v20 & 0xFFFFFFFE) == 0x38)
  {
    goto LABEL_57;
  }

  v20 |= 0x20u;
  if ((v20 - 97) >= 6u)
  {
LABEL_95:
    sub_18720();
  }

  v21 = -87;
LABEL_57:
  v22 = (v21 + v20 + 16 * (v19 + v9 + v18));
  if (!v5)
  {
    sub_1DA8338(v7, v22);
  }

  if (*(v5 + 23) < 0)
  {
    v5[1] = (&dword_0 + 1);
    v5 = *v5;
  }

  else
  {
    *(v5 + 23) = 1;
  }

  *v5 = v22;
  v4 += 3;
  return v4;
}

void sub_1DA8338(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1DA8478(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_1DA85A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_2725758;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 72))(*(a2 + 8), a3);
  return a1;
}

void sub_1DA8634(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  v1->__locale_ = off_27255C0;
  locale = v1[1].__locale_;
  if (locale)
  {
    sub_1DAF3D4(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *sub_1DA8674(std::locale *a1)
{
  a1->__locale_ = off_2725758;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1DA8700(std::locale *a1)
{
  a1->__locale_ = off_2725758;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1DA87AC(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 72))(*(result + 24), *v3), result != *(v4 + 40)))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) += 4;
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_1DA8840(std::locale *a1)
{
  a1->__locale_ = off_27257A0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1DA88CC(std::locale *a1)
{
  a1->__locale_ = off_27257A0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1DA8978(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void *sub_1DA89C0(void *a1)
{
  *a1 = off_27255C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1DA8A2C(void *a1)
{
  *a1 = off_27255C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1DA8AB8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *sub_1DA8B00(std::locale *a1)
{
  a1->__locale_ = off_2725830;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1DA8B8C(std::locale *a1)
{
  a1->__locale_ = off_2725830;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1DA8C38(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      if (v4 >> 2 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v8 = 0;
      while (1)
      {
        v9 = (*(**(v7 + 24) + 72))(*(v7 + 24), *(*v3 + 4 * v8));
        result = (*(**(v7 + 24) + 72))(*(v7 + 24), *(*(a2 + 16) + 4 * v8));
        if (v9 != result)
        {
          break;
        }

        if (v4 >> 2 == ++v8)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *sub_1DA8D60(std::locale *a1)
{
  a1->__locale_ = off_2725878;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1DA8DEC(std::locale *a1)
{
  a1->__locale_ = off_2725878;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t sub_1DA8E98(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = v4 >> 2;
      if (v4 >> 2 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void *sub_1DA8F24(void *a1)
{
  *a1 = off_27255C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1DA8F90(void *a1)
{
  *a1 = off_27255C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

unsigned int *sub_1DA901C(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_190B0();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void sub_1DA916C(uint64_t a1, int a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 72))(*(a1 + 24));
    v3 = (a1 + 40);
    v4 = &v6;
LABEL_5:
    sub_1B01004(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = (a1 + 40);
    v4 = &v5;
    goto LABEL_5;
  }

  sub_1B01004((a1 + 40), &v7);
}

uint64_t sub_1DA9208(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = off_2725908;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_1DA9348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  sub_195E3E8(&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  sub_1965604(&a10);
  v15 = v10[8].__locale_;
  if (v15)
  {
    v10[9].__locale_ = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[6].__locale_ = v16;
    operator delete(v16);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v11;
  v17 = v10[1].__locale_;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void sub_1DA93E4(std::locale *a1)
{
  sub_1DA9BC4(a1);

  operator delete();
}

void sub_1DA941C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v27 = 0;
    v28 = *(a1 + 168);
    goto LABEL_103;
  }

  if (*(a1 + 171) != 1 || v4 + 4 == v5)
  {
    goto LABEL_46;
  }

  v6 = *(v4 + 4);
  v71.i32[0] = *v4;
  v71.i32[1] = v6;
  if (*(a1 + 169) == 1)
  {
    v71.i32[0] = (*(**(a1 + 24) + 72))(*(a1 + 24));
    v71.i32[1] = (*(**(a1 + 24) + 72))(*(a1 + 24), v6);
  }

  sub_1DA9DD0(a1 + 16, &v71, &v72, &__p);
  if (v70 < 0)
  {
    v29 = v69;
    operator delete(__p);
    if (v29)
    {
      goto LABEL_8;
    }

LABEL_46:
    v28 = 0;
    v27 = 1;
    goto LABEL_47;
  }

  if (!v70)
  {
    goto LABEL_46;
  }

LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    v9 = v8 >> 3;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      v10 = vceq_s32(v71, *v7);
      if (v10.i32[0] & v10.i32[1])
      {
        goto LABEL_123;
      }

      ++v7;
    }

    while (--v9);
  }

  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    sub_1DA9CAC(a1 + 16, &v71, &v72);
    v11 = *(a1 + 88);
    if (*(a1 + 96) == v11)
    {
LABEL_20:
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      while (sub_1DA9D68((v11 + v12), &__p) > 0 || sub_1DA9D68(&__p, (*(a1 + 88) + v12 + 24)) >= 1)
      {
        ++v13;
        v11 = *(a1 + 88);
        v12 += 48;
        if (v13 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - v11) >> 4))
        {
          goto LABEL_20;
        }
      }

      v15 = 5;
      v14 = 1;
    }

    if (v70 < 0)
    {
      operator delete(__p);
    }

    if (v14)
    {
      goto LABEL_115;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    goto LABEL_117;
  }

  sub_1DAA178(a1 + 16, &v71, &v72, &__p);
  v17 = *(a1 + 136);
  v16 = *(a1 + 144);
  if (v16 == v17)
  {
LABEL_43:
    v26 = 0;
    v15 = 0;
    goto LABEL_112;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = v17 + v18;
    if (v70 >= 0)
    {
      v21 = v70;
    }

    else
    {
      v21 = v69;
    }

    v22 = *(v20 + 23);
    v23 = v22;
    if ((v22 & 0x80u) != 0)
    {
      v22 = *(v20 + 8);
    }

    if (v21 != v22)
    {
      goto LABEL_42;
    }

    if (!v21)
    {
      break;
    }

    v24 = v23 >= 0 ? (v17 + v18) : *v20;
    v25 = v70 >= 0 ? &__p : __p;
    if (!wmemcmp(v25, v24, v21))
    {
      break;
    }

    v17 = *(a1 + 136);
    v16 = *(a1 + 144);
LABEL_42:
    ++v19;
    v18 += 24;
    if (v19 >= 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 3))
    {
      goto LABEL_43;
    }
  }

  v15 = 5;
  v26 = 1;
LABEL_112:
  if (v70 < 0)
  {
    operator delete(__p);
  }

  if ((v26 & 1) == 0)
  {
LABEL_117:
    v60 = v71.i32[0];
    v61 = *(a1 + 160);
    if (((*(**(a1 + 24) + 24))(*(a1 + 24), v61, v71.u32[0]) & 1) == 0 && (v60 != 95 || (v61 & 0x80) == 0) || (v62 = v71.i32[1], v63 = *(a1 + 160), ((*(**(a1 + 24) + 24))(*(a1 + 24), v63, v71.u32[1]) & 1) == 0) && (v62 != 95 || (v63 & 0x80) == 0))
    {
      v64 = v71.i32[0];
      v65 = *(a1 + 164);
      if ((*(**(a1 + 24) + 24))(*(a1 + 24), v65, v71.u32[0]) & 1) != 0 || v64 == 95 && (v65 & 0x80) != 0 || (v66 = v71.i32[1], v67 = *(a1 + 164), ((*(**(a1 + 24) + 24))(*(a1 + 24), v67, v71.u32[1])) || (v28 = 1, v66 == 95) && (v67 & 0x80) != 0)
      {
        v28 = 0;
      }

      goto LABEL_131;
    }

LABEL_123:
    v28 = 1;
LABEL_131:
    v27 = 2;
    goto LABEL_103;
  }

LABEL_115:
  v28 = 1;
  v27 = 2;
  if (v15)
  {
    goto LABEL_103;
  }

LABEL_47:
  v30 = **(a2 + 16);
  v71.i32[0] = **(a2 + 16);
  if (*(a1 + 169) == 1)
  {
    v30 = (*(**(a1 + 24) + 72))(*(a1 + 24), v30);
    v71.i32[0] = v30;
  }

  v31 = *(a1 + 40);
  v32 = *(a1 + 48) - v31;
  if (v32)
  {
    v33 = v32 >> 2;
    if (v33 <= 1)
    {
      v33 = 1;
    }

    do
    {
      v34 = *v31++;
      if (v30 == v34)
      {
        goto LABEL_102;
      }

      --v33;
    }

    while (v33);
  }

  v35 = *(a1 + 164);
  if (v35 || *(a1 + 64) != *(a1 + 72))
  {
    if ((*(**(a1 + 24) + 24))(*(a1 + 24), *(a1 + 164), v30))
    {
      v36 = 1;
    }

    else
    {
      v36 = (v30 == 95) & (v35 >> 7);
    }

    v37 = *(a1 + 64);
    v38 = *(a1 + 72);
    if (v37 != v38)
    {
      while (*v37 != v30)
      {
        if (++v37 == v38)
        {
          v37 = *(a1 + 72);
          break;
        }
      }
    }

    if (((v37 == v38) & ~v36) != 0)
    {
      goto LABEL_102;
    }
  }

  v39 = *(a1 + 88);
  v40 = *(a1 + 96);
  if (v39 != v40)
  {
    if (*(a1 + 170) == 1)
    {
      sub_1DA9CAC(a1 + 16, &v71, &v71 + 4);
      v39 = *(a1 + 88);
      v40 = *(a1 + 96);
    }

    else
    {
      v70 = 1;
      __p = v30;
    }

    if (v40 == v39)
    {
LABEL_73:
      v43 = 0;
    }

    else
    {
      v41 = 0;
      v42 = 0;
      while (sub_1DA9D68((v39 + v41), &__p) > 0 || sub_1DA9D68(&__p, (*(a1 + 88) + v41 + 24)) >= 1)
      {
        ++v42;
        v39 = *(a1 + 88);
        v41 += 48;
        if (v42 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - v39) >> 4))
        {
          goto LABEL_73;
        }
      }

      v43 = 1;
      v28 = 1;
    }

    if (v70 < 0)
    {
      operator delete(__p);
    }

    if (v43)
    {
      goto LABEL_103;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    goto LABEL_101;
  }

  sub_1DAA178(a1 + 16, &v71, &v71 + 4, &__p);
  v45 = *(a1 + 136);
  v44 = *(a1 + 144);
  if (v44 == v45)
  {
LABEL_96:
    v54 = 0;
    goto LABEL_98;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = v45 + v46;
    if (v70 >= 0)
    {
      v49 = v70;
    }

    else
    {
      v49 = v69;
    }

    v50 = *(v48 + 23);
    v51 = v50;
    if ((v50 & 0x80u) != 0)
    {
      v50 = *(v48 + 8);
    }

    if (v49 != v50)
    {
LABEL_95:
      ++v47;
      v46 += 24;
      if (v47 >= 0xAAAAAAAAAAAAAAABLL * ((v44 - v45) >> 3))
      {
        goto LABEL_96;
      }

      continue;
    }

    break;
  }

  if (v49)
  {
    v52 = v51 >= 0 ? (v45 + v46) : *v48;
    v53 = v70 >= 0 ? &__p : __p;
    if (wmemcmp(v53, v52, v49))
    {
      v45 = *(a1 + 136);
      v44 = *(a1 + 144);
      goto LABEL_95;
    }
  }

  v54 = 1;
  v28 = 1;
LABEL_98:
  if (v70 < 0)
  {
    operator delete(__p);
  }

  if ((v54 & 1) == 0)
  {
LABEL_101:
    v55 = v71.i32[0];
    v56 = *(a1 + 160);
    if ((*(**(a1 + 24) + 24))(*(a1 + 24), v56, v71.u32[0]))
    {
LABEL_102:
      v28 = 1;
    }

    else
    {
      v59 = (v56 >> 7) & 1;
      if (v55 != 95)
      {
        LOBYTE(v59) = 0;
      }

      v28 |= v59;
    }
  }

LABEL_103:
  if (*(a1 + 168) == (v28 & 1))
  {
    v57 = 0;
    v58 = -993;
  }

  else
  {
    *(a2 + 16) += 4 * v27;
    v57 = *(a1 + 8);
    v58 = -995;
  }

  *a2 = v58;
  *(a2 + 80) = v57;
}

std::locale *sub_1DA9BC4(std::locale *a1)
{
  a1->__locale_ = off_2725908;
  v7 = a1 + 17;
  sub_195E3E8(&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  sub_1965604(&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_27255C0;
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_1DA9CAC(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_1DA48A4(__p, a2, a3, (a3 - a2) >> 2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + 4 * v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1DA9D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DA9D68(uint64_t *a1, const __int32 *a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = a1[1];
  }

  v4 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v9[0] = v3;
  v9[1] = v2;
  v6 = sub_1DAA124(v9, a2, v5);
  if (v6 < 0)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

void sub_1DA9DD0(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  p_p = &__p;
  sub_1DA48A4(&__p, a2, a3, (a3 - a2) >> 2);
  memset(&v18, 0, sizeof(v18));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::reserve(&v18, size);
  v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v10 = __p.__r_.__value_.__l.__size_;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (!v11)
  {
LABEL_12:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    if (v9 < 0)
    {
      v8 = v10;
    }

    if (!v8)
    {
      goto LABEL_27;
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v18;
    }

    else
    {
      v13 = v18.__r_.__value_.__r.__words[0];
    }

    std::__get_collation_name(&v17, v13);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    v18 = v17;
    v14 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v14 = v18.__r_.__value_.__l.__size_;
      if (v18.__r_.__value_.__l.__size_)
      {
        v15 = v18.__r_.__value_.__r.__words[0];
        goto LABEL_26;
      }
    }

    else if (*(&v17.__r_.__value_.__s + 23))
    {
      v15 = &v18;
LABEL_26:
      sub_1DAA058(a4, v15, v15 + v14, v14);
      goto LABEL_27;
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (__p.__r_.__value_.__l.__size_ >= 3)
      {
        goto LABEL_27;
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) >= 3)
    {
      goto LABEL_27;
    }

    (*(**(a1 + 16) + 32))(&v17);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v17;
    v16 = *(a4 + 23);
    if (v16 < 0)
    {
      if ((*(a4 + 8) & 0xFFFFFFFFFFFFFFFDLL) != 1)
      {
        **a4 = 0;
        *(a4 + 8) = 0;
        goto LABEL_27;
      }
    }

    else if ((v16 & 0x7D) != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_27;
    }

    std::wstring::operator=(a4, &__p);
    goto LABEL_27;
  }

  v12 = 4 * v11;
  while (p_p->__r_.__value_.__s.__data_[0] < 0x7Fu)
  {
    std::string::push_back(&v18, p_p->__r_.__value_.__s.__data_[0]);
    p_p = (p_p + 4);
    v12 -= 4;
    if (!v12)
    {
      v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v10 = __p.__r_.__value_.__l.__size_;
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      goto LABEL_12;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_27:
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1DAA008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 23) < 0)
  {
    operator delete(*v24);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DAA058(std::wstring *this, char *a2, char *a3, std::wstring::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 4)
    {
      goto LABEL_11;
    }

    v10 = 4;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::wstring::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 4);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

uint64_t sub_1DAA124(uint64_t a1, const __int32 *a2, size_t a3)
{
  v3 = a3;
  v4 = *(a1 + 8);
  if (a3 >= v4)
  {
    a3 = *(a1 + 8);
  }

  if (a3)
  {
    result = wmemcmp(*a1, a2, a3);
    if (result)
    {
      return result;
    }

    v4 = *(a1 + 8);
  }

  v7 = v4 == v3;
  if (v4 < v3)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

void sub_1DAA178(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DA48A4(__p, a2, a3, (a3 - a2) >> 2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + 4 * v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 3)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[2] = *v10;
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1DAA270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_1DAA28C(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 == 93)
  {
    return v4;
  }

  v6 = a4;
  v9 = 0;
  v10 = 0;
  v29 = 0uLL;
  v30 = 0;
  if (a2 + 1 != a3 && v5 == 91)
  {
    v11 = a2[1];
    switch(v11)
    {
      case '.':
        v4 = sub_1DAA944(a1, a2 + 2, a3, &v29);
        v9 = HIBYTE(v30);
        v10 = *(&v29 + 1);
        break;
      case ':':
        v12 = sub_1DAA85C(a1, a2 + 2, a3, a4);
        goto LABEL_10;
      case '=':
        v12 = sub_1DAA65C(a1, a2 + 2, a3, a4);
LABEL_10:
        v6 = v12;
        v13 = 0;
        goto LABEL_47;
      default:
        v10 = 0;
        v9 = 0;
        break;
    }
  }

  v14 = *(a1 + 24) & 0x1F0;
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  if (!v10)
  {
    if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
    {
      v15 = *v4;
      if (*v4 == 92)
      {
        if (v14)
        {
          v16 = sub_1DAABB8(a1, v4 + 1, a3, &v29);
        }

        else
        {
          v16 = sub_1DAAA58(a1, v4 + 1, a3, &v29, v6);
        }

        v4 = v16;
        goto LABEL_27;
      }
    }

    else
    {
      v15 = *v4;
    }

    if ((v9 & 0x80) != 0)
    {
      v17 = v29;
      *(&v29 + 1) = 1;
    }

    else
    {
      HIBYTE(v30) = 1;
      v17 = &v29;
    }

    *v17 = v15;
    v17[1] = 0;
    ++v4;
  }

LABEL_27:
  if (v4 != a3 && *v4 != 93)
  {
    v19 = v4 + 1;
    if (v4 + 1 != a3 && *v4 == 45 && *v19 != 93)
    {
      v27[0] = 0;
      v27[1] = 0;
      v28 = 0;
      v4 += 2;
      if (v19 + 1 != a3 && *v19 == 91 && *v4 == 46)
      {
        v20 = sub_1DAA944(a1, v19 + 2, a3, v27);
LABEL_59:
        v4 = v20;
        goto LABEL_60;
      }

      if ((v14 | 0x40) == 0x40)
      {
        v22 = *v19;
        if (v22 == 92)
        {
          if (v14)
          {
            v20 = sub_1DAABB8(a1, v4, a3, v27);
          }

          else
          {
            v20 = sub_1DAAA58(a1, v4, a3, v27, v6);
          }

          goto LABEL_59;
        }
      }

      else
      {
        v22 = *v19;
      }

      HIBYTE(v28) = 1;
      v27[0] = v22;
LABEL_60:
      *v25 = v29;
      v26 = v30;
      v30 = 0;
      v29 = 0uLL;
      *__p = *v27;
      v24 = v28;
      v27[0] = 0;
      v27[1] = 0;
      v28 = 0;
      sub_1DAAEAC(v6, v25, __p);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }

      goto LABEL_46;
    }
  }

  if (SHIBYTE(v30) < 0)
  {
    if (*(&v29 + 1))
    {
      if (*(&v29 + 1) != 1)
      {
        v18 = v29;
LABEL_45:
        sub_1DAB2AC(v6, *v18, v18[1]);
        goto LABEL_46;
      }

      v18 = v29;
      goto LABEL_36;
    }
  }

  else if (HIBYTE(v30))
  {
    v18 = &v29;
    if (HIBYTE(v30) != 1)
    {
      goto LABEL_45;
    }

LABEL_36:
    sub_1DA916C(v6, *v18);
  }

LABEL_46:
  v13 = 1;
LABEL_47:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  if (v13)
  {
    return v4;
  }

  return v6;
}

void sub_1DAA5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1DAA65C(uint64_t a1, _DWORD *a2, _BYTE *a3, uint64_t a4)
{
  v21 = 0x5D0000003DLL;
  LOBYTE(__p[0]) = 0;
  v8 = sub_1DAB370(a2, a3, &v21, &v22);
  if (v8 == a3)
  {
    sub_1B2D8();
  }

  sub_1DAB3F4(a1, a2, v8, &v18);
  v9 = v20;
  if ((v20 & 0x8000000000000000) == 0)
  {
    if (v20)
    {
      v10 = &v18;
      goto LABEL_7;
    }

LABEL_27:
    sub_1CA14();
  }

  v9 = v19;
  if (!v19)
  {
    goto LABEL_27;
  }

  v10 = v18;
LABEL_7:
  sub_1DAB67C(a1, v10, &v10[4 * v9], __p);
  v11 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v11 = __p[1];
  }

  if (v11)
  {
    sub_1DAB790((a4 + 136), __p);
  }

  else
  {
    v12 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v12 = v19;
    }

    if (v12 == 2)
    {
      v14 = &v18;
      if ((v20 & 0x80u) != 0)
      {
        v14 = v18;
      }

      sub_1DAB2AC(a4, *v14, v14[1]);
    }

    else
    {
      if (v12 != 1)
      {
        sub_1CA14();
      }

      v13 = &v18;
      if ((v20 & 0x80u) != 0)
      {
        v13 = v18;
      }

      sub_1DA916C(a4, *v13);
    }
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 < 0)
  {
    operator delete(v18);
  }

  return v8 + 8;
}

void sub_1DAA81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1DAA85C(uint64_t a1, _DWORD *a2, _BYTE *a3, uint64_t a4)
{
  v12 = 0x5D0000003ALL;
  v8 = sub_1DAB370(a2, a3, &v12, &v13);
  if (v8 == a3)
  {
    sub_1B2D8();
  }

  v9 = v8;
  v10 = sub_1DABA04(a1, a2, v8, *(a1 + 24) & 1);
  if (!v10)
  {
    sub_1D0A4();
  }

  *(a4 + 160) |= v10;
  return v9 + 8;
}

_BYTE *sub_1DAA944(uint64_t a1, _DWORD *a2, _BYTE *a3, uint64_t a4)
{
  v16 = 0x5D0000002ELL;
  v15 = 0;
  v8 = sub_1DAB370(a2, a3, &v16, &v17);
  if (v8 == a3)
  {
    sub_1B2D8();
  }

  v9 = v8;
  sub_1DAB3F4(a1, a2, v8, &v13);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v13;
  v10 = v14;
  *(a4 + 16) = v14;
  v11 = HIBYTE(v10);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a4 + 8);
  }

  if (v11 - 1 >= 2)
  {
    sub_1CA14();
  }

  return v9 + 8;
}

unsigned int *sub_1DAAA58(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t *a4, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_18720();
  }

  v6 = *a2;
  if (*a2 > 97)
  {
    if (v6 > 114)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          return sub_1DA7E44(a1, a2, a3, a4);
        }

        *(a5 + 160) |= 0x500u;
        sub_1DA916C(a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v6 != 100)
      {
        return sub_1DA7E44(a1, a2, a3, a4);
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (v6 <= 82)
  {
    if (!v6)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v6 == 68)
    {
      v7 = *(a5 + 164) | 0x400;
LABEL_22:
      *(a5 + 164) = v7;
      return a2 + 1;
    }

    return sub_1DA7E44(a1, a2, a3, a4);
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_22;
  }

  if (v6 != 87)
  {
    return sub_1DA7E44(a1, a2, a3, a4);
  }

  *(a5 + 164) |= 0x500u;
  sub_1DABB80(a5, 95);
  return a2 + 1;
}

unsigned int *sub_1DAABB8(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_83:
    sub_18720();
  }

  v5 = *a2;
  if (v5 > 101)
  {
    if (v5 <= 113)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v10 = 12;
          goto LABEL_78;
        }

        v5 = 12;
        goto LABEL_62;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v10 = 10;
          goto LABEL_78;
        }

        v5 = 10;
        goto LABEL_62;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v10 = 13;
            goto LABEL_78;
          }

          v5 = 13;
          goto LABEL_62;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v10 = 9;
            goto LABEL_78;
          }

          v5 = 9;
          goto LABEL_62;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v10 = 11;
            goto LABEL_78;
          }

          v5 = 11;
          goto LABEL_62;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 91)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_62;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v10 = 7;
        goto LABEL_78;
      }

      v5 = 7;
LABEL_62:
      sub_1DA8338(a1, v5);
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v10 = 8;
LABEL_78:
        *a4 = v10;
        return a2 + 1;
      }

      v5 = 8;
      goto LABEL_62;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_83;
  }

  v6 = (v5 - 48);
  v7 = a2 + 1;
  if (a2 + 1 == a3)
  {
LABEL_51:
    v7 = a3;
    goto LABEL_52;
  }

  if ((*v7 & 0xFFFFFFF8) == 0x30)
  {
    v6 = *v7 + 8 * v6 - 48;
    v8 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v9 = *v8 & 0xFFFFFFF8;
      if (v9 == 48)
      {
        v7 = a2 + 3;
      }

      else
      {
        v7 = a2 + 2;
      }

      if (v9 == 48)
      {
        v6 = *v8 + 8 * v6 - 48;
      }

      else
      {
        v6 = v6;
      }

      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_52:
  if (!a4)
  {
    sub_1DA8338(a1, v6);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v6;
  *(a4 + 1) = 0;
  return v7;
}

void sub_1DAAEAC(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = *(v4 + 23);
        v8 = v7 < 0 ? *(v4 + 1) : *(v4 + 23);
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 72))(*(a1 + 24), v9[i]);
        v11 = v4;
        if (*(v4 + 23) < 0)
        {
          v11 = *v4;
        }

        v11[i] = v10;
      }

      for (j = 0; ; ++j)
      {
        v20 = *(v3 + 23);
        v21 = v20 < 0 ? *(v3 + 1) : *(v3 + 23);
        if (j >= v21)
        {
          break;
        }

        v22 = v3;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = *v3;
        }

        v23 = (*(**(a1 + 24) + 72))(*(a1 + 24), v22[j]);
        v24 = v3;
        if (*(v3 + 23) < 0)
        {
          v24 = *v3;
        }

        v24[j] = v23;
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v15 = *(a2 + 23);
        v16 = v15 < 0 ? *(a2 + 1) : *(a2 + 23);
        if (k >= v16)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        v18 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *a2;
        }

        v18[k] = v17[k];
      }

      for (m = 0; ; ++m)
      {
        v26 = *(a3 + 23);
        v27 = v26 < 0 ? *(a3 + 1) : *(a3 + 23);
        if (m >= v27)
        {
          break;
        }

        v28 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = *a3;
        }

        v29 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v29 = *a3;
        }

        v29[m] = v28[m];
      }
    }

    v30 = *(v4 + 23);
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = *(v31 + 1);
    }

    sub_1DABD7C(a1 + 16, v4, &v4[v30]);
    v32 = *(v3 + 23);
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    sub_1DABD7C(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    sub_1DABC1C((a1 + 88), v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  else
  {
    v12 = *(a2 + 23);
    if (v12 < 0)
    {
      v13 = *(a2 + 1);
    }

    else
    {
      v13 = *(a2 + 23);
    }

    if (v13 != 1)
    {
      goto LABEL_74;
    }

    v34 = *(a3 + 23);
    if (v34 < 0)
    {
      v34 = *(a3 + 1);
    }

    if (v34 != 1)
    {
LABEL_74:
      sub_1D778();
    }

    if (*(a1 + 169) == 1)
    {
      v35 = a2;
      if ((v12 & 0x80000000) != 0)
      {
        v35 = *a2;
      }

      v36 = (*(**(a1 + 24) + 72))(*(a1 + 24), *v35);
      v37 = v4;
      if (*(v4 + 23) < 0)
      {
        v37 = *v4;
      }

      *v37 = v36;
      v38 = v3;
      if (*(v3 + 23) < 0)
      {
        v38 = *v3;
      }

      v39 = (*(**(a1 + 24) + 72))(*(a1 + 24), *v38);
      v40 = v3;
      if (*(v3 + 23) < 0)
      {
        v40 = *v3;
      }

      *v40 = v39;
    }

    *v45 = *v4;
    v46 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *__p = *v3;
    v48 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    sub_1DABC1C((a1 + 88), v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }
}

void sub_1DAB2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 72))(*(a1 + 24), a2);
    v6 = v5 | ((*(**(a1 + 24) + 72))(*(a1 + 24), a3) << 32);
  }

  else
  {
    v6 = a2 | (a3 << 32);
  }

  v7 = v6;
  sub_1DABE38(a1 + 112, &v7);
}

_DWORD *sub_1DAB370(_DWORD *result, uint64_t a2, char *a3, char *a4)
{
  v4 = a4 - a3;
  if (a4 != a3)
  {
    v5 = (a2 - result) >> 2;
    if (v5 < v4 >> 2)
    {
      return a2;
    }

    v6 = &result[v5 - (v4 >> 2) + 1];
    if (v6 == result)
    {
      return a2;
    }

    else
    {
      v9 = *a3;
      v7 = a3 + 4;
      v8 = v9;
      while (*result != v8)
      {
LABEL_11:
        if (++result == v6)
        {
          return a2;
        }
      }

      v10 = result + 1;
      v11 = v7;
      while (v11 != a4)
      {
        v13 = *v10++;
        v12 = v13;
        v14 = *v11;
        v11 += 4;
        if (v12 != v14)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

void sub_1DAB3F4(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  p_p = &__p;
  sub_1DA48A4(&__p, a2, a3, (a3 - a2) >> 2);
  memset(&v18, 0, sizeof(v18));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::reserve(&v18, size);
  v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v10 = __p.__r_.__value_.__l.__size_;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (!v11)
  {
LABEL_12:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    if (v9 < 0)
    {
      v8 = v10;
    }

    if (!v8)
    {
      goto LABEL_27;
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v18;
    }

    else
    {
      v13 = v18.__r_.__value_.__r.__words[0];
    }

    std::__get_collation_name(&v17, v13);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    v18 = v17;
    v14 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v14 = v18.__r_.__value_.__l.__size_;
      if (v18.__r_.__value_.__l.__size_)
      {
        v15 = v18.__r_.__value_.__r.__words[0];
        goto LABEL_26;
      }
    }

    else if (*(&v17.__r_.__value_.__s + 23))
    {
      v15 = &v18;
LABEL_26:
      sub_1DAA058(a4, v15, v15 + v14, v14);
      goto LABEL_27;
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (__p.__r_.__value_.__l.__size_ >= 3)
      {
        goto LABEL_27;
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) >= 3)
    {
      goto LABEL_27;
    }

    (*(**(a1 + 16) + 32))(&v17);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v17;
    v16 = *(a4 + 23);
    if (v16 < 0)
    {
      if ((*(a4 + 8) & 0xFFFFFFFFFFFFFFFDLL) != 1)
      {
        **a4 = 0;
        *(a4 + 8) = 0;
        goto LABEL_27;
      }
    }

    else if ((v16 & 0x7D) != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_27;
    }

    std::wstring::operator=(a4, &__p);
    goto LABEL_27;
  }

  v12 = 4 * v11;
  while (p_p->__r_.__value_.__s.__data_[0] < 0x7Fu)
  {
    std::string::push_back(&v18, p_p->__r_.__value_.__s.__data_[0]);
    p_p = (p_p + 4);
    v12 -= 4;
    if (!v12)
    {
      v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v10 = __p.__r_.__value_.__l.__size_;
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      goto LABEL_12;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
LABEL_27:
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1DAB62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 + 23) < 0)
  {
    operator delete(*v24);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DAB67C(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DA48A4(__p, a2, a3, (a3 - a2) >> 2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + 4 * v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 3)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[2] = *v10;
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1DAB774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DAB790(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1DAB830(a1, a2);
  }

  else
  {
    sub_1DAB7D0(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_1DAB7D0(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_1DAF300(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_1DAB830(uint64_t a1, __int128 *a2)
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
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_195CC74(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1DAF300(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *&dword_10[6 * v2] = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1DAB970(&v17);
  return v11;
}

void sub_1DAB95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1DAB970(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1DAB970(uint64_t a1)
{
  sub_1DAB9A8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1DAB9A8(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1DABA04(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  sub_1DA48A4(&__dst, a2, a3, (a3 - a2) >> 2);
  v6 = v18;
  if ((v18 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v18 & 0x80u) != 0)
  {
    v6 = v17;
  }

  (*(**(a1 + 8) + 80))(*(a1 + 8), p_dst, p_dst + 4 * v6);
  memset(&__p, 0, sizeof(__p));
  if ((v18 & 0x80u) == 0)
  {
    v8 = v18;
  }

  else
  {
    v8 = v17;
  }

  std::string::reserve(&__p, v8);
  v9 = v18;
  if ((v18 & 0x80u) == 0)
  {
    v10 = &__dst;
  }

  else
  {
    v10 = __dst;
  }

  if ((v18 & 0x80u) != 0)
  {
    v9 = v17;
  }

  if (v9)
  {
    v11 = 4 * v9;
    while (*v10 <= 0x7Eu)
    {
      std::string::push_back(&__p, *v10++);
      v11 -= 4;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    classname = 0;
  }

  else
  {
LABEL_18:
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    classname = std::__get_classname(p_p, a4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(__dst);
  }

  return classname;
}

void sub_1DABB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DABB80(uint64_t a1, int a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 72))(*(a1 + 24));
    v3 = (a1 + 64);
    v4 = &v6;
LABEL_5:
    sub_1B01004(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = (a1 + 64);
    v4 = &v5;
    goto LABEL_5;
  }

  sub_1B01004((a1 + 64), &v7);
}

const void **sub_1DABC1C(const void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_1794();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = result;
    if (v12)
    {
      sub_1965518(result, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = result[1] - *result;
    v17 = (v13 - v16);
    memcpy((v13 - v16), *result, v16);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v8;
    v19 = v3[2];
    v3[2] = 0;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = sub_1A9C0E4(v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 2) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 5) = *(a2 + 5);
    *(v4 + 24) = v7;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v8 = (v4 + 48);
  }

  v3[1] = v8;
  return result;
}

void sub_1DABD7C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_1DA48A4(__p, a2, a3, (a3 - a2) >> 2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + 4 * v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1DABE1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DABE38(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1794();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1232E30(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *sub_1DABF0C(void *a1)
{
  *a1 = off_27255C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1DABF78(void *a1)
{
  *a1 = off_27255C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1DAC004(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1DAC034(void *a1)
{
  *a1 = off_27255C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1DAC0A0(void *a1)
{
  *a1 = off_27255C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1DAC12C(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *sub_1DAC2F4(uint64_t a1, unsigned int *a2, unsigned int *a3, int *a4)
{
  v4 = a2;
  if (a2 != a3)
  {
    v8 = (*(**(a1 + 8) + 104))(*(a1 + 8), *a2, 0);
    if ((v8 & 0xFFFFFFF8) == 0x30 || (v8 & 0xFFFFFFFE) == 0x38)
    {
      *a4 = v8 - 48;
      if (++v4 == a3)
      {
        return a3;
      }

      else
      {
        while (1)
        {
          v9 = (*(**(a1 + 8) + 104))(*(a1 + 8), *v4, 0);
          if ((v9 & 0xFFFFFFF8) != 0x30 && (v9 & 0xFFFFFFFE) != 0x38)
          {
            break;
          }

          if (*a4 >= 214748364)
          {
            sub_1DCE0();
          }

          *a4 = v9 + 10 * *a4 - 48;
          if (++v4 == a3)
          {
            return a3;
          }
        }
      }
    }
  }

  return v4;
}

void sub_1DAC41C(void *a1)
{
  sub_1DAC570(a1);

  operator delete();
}

unsigned int *sub_1DAC454(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return sub_1DAC624(result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *sub_1DAC504(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return sub_1DAC624(result, a3);
  }

  return result;
}

void sub_1DAC538(void *a1)
{
  sub_1DAC570(a1);

  operator delete();
}

void *sub_1DAC570(void *a1)
{
  *a1 = off_2725A40;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_27255C0;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned int *sub_1DAC624(unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1DAC68C(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_1DAC6A4(void *a1)
{
  sub_1DAC570(a1);

  operator delete();
}

uint64_t sub_1DAC6E8(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_1DAC724(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t sub_1DAC738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    v5 = a2;
    a2 = sub_1DAC784(a1, a2, a3);
  }

  while (v5 != a2);
  return v5;
}

unsigned int *sub_1DAC784(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_1DAC820(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v10 = *(a1 + 28) + 1;

  return sub_1DAC92C(a1, v8, a3, v6, v7 + 1, v10);
}

unsigned int *sub_1DAC820(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a3;
  v6 = sub_1DACB04(a1, a2, a3);
  v7 = v6;
  if (v6 != a2)
  {
    return v6;
  }

  if (a2 == v3 || a2 + 1 == v3 || *v6 != 92)
  {
    return a2;
  }

  v8 = a2[1];
  if (v8 == 40)
  {
    v9 = a2 + 2;
  }

  else
  {
    v9 = v6;
  }

  if (v9 != a2)
  {
    sub_1DA7A50(a1);
    v11 = *(a1 + 28);
    v12 = sub_1DAC738(a1, v9, v3);
    if (v12 != v3)
    {
      if (v12 + 1 == v3 || *v12 != 92)
      {
        goto LABEL_23;
      }

      if (v12[1] == 41)
      {
        v3 = v12 + 2;
      }

      else
      {
        v3 = v12;
      }
    }

    if (v3 != v12)
    {
      sub_1DA7AD8(a1, v11);
      return v3;
    }

LABEL_23:
    sub_16ACC();
  }

  if (sub_1DACE10(a1, v8))
  {
    return a2 + 2;
  }

  else
  {
    return v7;
  }
}

unsigned int *sub_1DAC92C(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4, int a5, int a6)
{
  if (a2 != a3)
  {
    if (*a2 == 42)
    {
      sub_1DAC164(a1, 0, -1, a4, a5, a6, 1);
    }

    v11 = a3;
    if (a2 + 1 != a3 && *a2 == 92)
    {
      v12 = a2[1] == 123 ? a2 + 2 : a2;
      if (v12 != a2)
      {
        v22 = 0;
        v13 = sub_1DAC2F4(a1, v12, a3, &v22);
        if (v13 == v12)
        {
          goto LABEL_34;
        }

        if (v13 != v11)
        {
          if (*v13 == 44)
          {
            v21 = -1;
            v14 = sub_1DAC2F4(a1, v13 + 1, v11, &v21);
            if (v14 != v11)
            {
              if (v14 + 1 == v11 || *v14 != 92)
              {
                goto LABEL_33;
              }

              if (v14[1] == 125)
              {
                v11 = v14 + 2;
              }

              else
              {
                v11 = v14;
              }
            }

            if (v11 != v14)
            {
              v16 = v21;
              v15 = v22;
              if (v21 != -1)
              {
                if (v21 >= v22)
                {
                  v17 = a5;
                  v18 = a6;
                  v19 = a1;
                  goto LABEL_32;
                }

LABEL_34:
                sub_1DCE0();
              }

              v17 = a5;
              v18 = a6;
              v19 = a1;
              v16 = -1;
LABEL_32:
              sub_1DAC164(v19, v15, v16, a4, v17, v18, 1);
            }
          }

          else if (v13 + 1 != v11 && *v13 == 92)
          {
            v20 = (v13[1] == 125 ? v13 + 2 : v13);
            if (v13 != v20)
            {
              v15 = v22;
              v17 = a5;
              v18 = a6;
              v19 = a1;
              v16 = v22;
              goto LABEL_32;
            }
          }
        }

LABEL_33:
        sub_1DD38();
      }
    }
  }

  return a2;
}

unsigned int *sub_1DACB04(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v6 = sub_1DACBF4(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_1DACC60(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return sub_1DA7934(a1, a2, a3);
}

unsigned int *sub_1DACBF4(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    if ((a2 + 1 != a3 || v4 != 36) && ((v4 - 46) > 0x2E || ((1 << (v4 - 46)) & 0x600000000001) == 0))
    {
      sub_1DA8338(a1, v4);
    }
  }

  return a2;
}

unsigned int *sub_1DACC60(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
    {
      sub_1DA8338(a1, v4);
    }
  }

  return a2;
}

void *sub_1DACCD8(void *a1)
{
  *a1 = off_27255C0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1DACD44(void *a1)
{
  *a1 = off_27255C0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t sub_1DACDD0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_1DACE10(uint64_t a1, uint64_t a2)
{
  v3 = (*(**(a1 + 8) + 104))(*(a1 + 8), a2, 0);
  if (((v3 & 0xFFFFFFF8) == 0x30 || (v3 & 0xFFFFFFFE) == 0x38) && (v3 - 49) <= 8)
  {
    if ((v3 - 48) <= *(a1 + 28))
    {
      sub_1DA8478(a1, v3 - 48);
    }

    sub_190B0();
  }

  return 0;
}

unsigned int *sub_1DACEA8(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v6 = sub_1DACF08(a1, a2, a3);
  if (v6 == a2)
  {
    sub_1E550();
  }

  do
  {
    v7 = v6;
    v6 = sub_1DACF08(a1, v6, a3);
  }

  while (v7 != v6);
  return v7;
}

unsigned int *sub_1DACF08(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_1DAD04C(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    if (*v8 == 36)
    {
      sub_1DA5F20(a1);
    }

    if (v10 == 40)
    {
      sub_1DA7A50(a1);
      v11 = *(a1 + 28);
      ++*(a1 + 36);
      v12 = sub_1DA4E68(a1, (v9 + 1), a3);
      if (v12 == a3 || (v13 = v12, *v12 != 41))
      {
        sub_16ACC();
      }

      sub_1DA7AD8(a1, v11);
      --*(a1 + 36);
      v9 = v13 + 1;
    }

    else if (v10 == 94)
    {
      sub_1DA5E9C(a1);
    }
  }

  if (v9 == a2)
  {
    return a2;
  }

  v14 = (*(a1 + 28) + 1);

  return sub_1DA5B94(a1, v9, a3, v6, (v7 + 1), v14);
}

unsigned int *sub_1DAD04C(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v6 = sub_1DAD13C(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = sub_1DAD1C4(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return sub_1DA7934(a1, a2, a3);
}

unsigned int *sub_1DAD13C(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (v4 - 36);
    if (v5 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (v4 - 36)) & 0x5800000080004D1) != 0)
    {
      return a2;
    }

    if (v5 == 5)
    {
      if (*(a1 + 36))
      {
        return a2;
      }

      v4 = 41;
    }

    else
    {
LABEL_8:
      if ((v4 - 123) < 2)
      {
        return a2;
      }
    }

    sub_1DA8338(a1, v4);
  }

  return a2;
}

unsigned int *sub_1DAD1C4(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x5800000080004F1) == 0;
    if (!v5 || (v4 - 123) < 3)
    {
      sub_1DA8338(a1, v4);
    }

    if ((*(a1 + 24) & 0x1F0) == 0x40)
    {
      return sub_1DAABB8(a1, v3 + 1, a3, 0);
    }

    else if (sub_1DACE10(a1, v4))
    {
      v3 += 2;
    }
  }

  return v3;
}

uint64_t sub_1DAD280(uint64_t a1, char *a2, char *a3, uint64_t a4, unsigned int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  sub_1DA6998(a4, *(a1 + 28) + 1, a2, a3, (v9 & 0x800) >> 11);
  if (sub_1DAD5D0(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
  {
    if (*(a4 + 8) == *a4)
    {
      v10 = (a4 + 24);
    }

    else
    {
      v10 = *a4;
    }

LABEL_19:
    v16 = *v10;
    *(a4 + 56) = *v10;
    *(a4 + 64) = *(a4 + 48) != v16;
    v17 = v10[1];
    *(a4 + 72) = v17;
    *(a4 + 88) = v17 != *(a4 + 80);
    return 1;
  }

  if (a2 != a3 && (v9 & 0x40) == 0)
  {
    v11 = a2 + 4;
    if (v11 != a3)
    {
      v12 = (a4 + 24);
      do
      {
        sub_1DA6DBC(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
        v13 = sub_1DAD5D0(a1, v11, a3, a4, v9 | 0x80, 0);
        v15 = *a4;
        v14 = *(a4 + 8);
        if (v13)
        {
          goto LABEL_16;
        }

        sub_1DA6DBC(a4, 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3), (a4 + 24));
        v11 += 4;
      }

      while (v11 != a3);
    }

    v12 = (a4 + 24);
    sub_1DA6DBC(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), (a4 + 24));
    if (sub_1DAD5D0(a1, v11, a3, a4, v9 | 0x80, 0))
    {
      v15 = *a4;
      v14 = *(a4 + 8);
LABEL_16:
      if (v14 == v15)
      {
        v10 = v12;
      }

      else
      {
        v10 = v15;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  *(a4 + 8) = *a4;
  return result;
}

void sub_1DAD44C(void **a1, uint64_t a2, void *a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  sub_1DAF038(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  v11 = *a1;
  if (a1[1] == *a1)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      *&v11[v12] = v14 + *v19;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12);
      }

      *(*a1 + v12 + 8) = v14 + v20[1];
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12);
      }

      v22 = *(v21 + 16);
      v11 = *a1;
      v23 = a1[1];
      *(*a1 + v12 + 16) = v22;
      ++v13;
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v11) >> 3));
  }

  a1[3] = a3;
  a1[4] = a3;
  *(a1 + 40) = 0;
  v24 = v14 + a4[6];
  a1[6] = v24;
  a1[7] = (v14 + a4[7]);
  *(a1 + 64) = *(a4 + 64);
  a1[9] = (v14 + a4[9]);
  a1[10] = (v14 + a4[10]);
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    a1[13] = v24;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t sub_1DAD5D0(uint64_t a1, char *a2, void *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    return sub_1DA6A0C(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 28))
  {
    return sub_1DADB50(a1, a2, a3, a4, a5, a6);
  }

  return sub_1DAD5F0(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DAD5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_70;
  }

  *v56 = 0;
  memset(&v56[8], 0, 32);
  v57 = 0uLL;
  *__p = 0uLL;
  memset(v59, 0, 21);
  sub_1DAE04C(&v60, v56);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v56[32])
  {
    *&v57 = *&v56[32];
    operator delete(*&v56[32]);
  }

  v52 = a4;
  v13 = v60.i64[1];
  v14 = *(&v62 + 1) + v62 - 1;
  v15 = v14 / 0x2A;
  v16 = *(v60.i64[1] + 8 * (v14 / 0x2A));
  v17 = 3 * (v14 % 0x2A);
  v18 = v16 + 32 * v17;
  *v18 = 0;
  *(v18 + 8) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 16) = a2;
  *(*(v13 + 8 * v15) + 32 * v17 + 24) = a3;
  sub_1DA7098((*(v13 + 8 * v15) + 32 * v17 + 56), *(a1 + 32));
  v55 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *(&v62 + 1);
  v22 = v60.i64[1];
  v23 = *(&v62 + 1) + v62 - 1;
  v24 = v23 / 0x2A;
  v25 = 3 * (v23 % 0x2A);
  *(*(v60.i64[1] + 8 * v24) + 32 * v25 + 80) = v6;
  v54 = a2;
  v53 = (a3 - a2) >> 2;
  v26 = *(v22 + 8 * v24) + 32 * v25;
  *(v26 + 88) = a5;
  *(v26 + 92) = a6;
  v27 = (a3 - a2) >> 2;
  do
  {
    if ((++v19 & 0xFFF) == 0 && (v19 >> 12) >= v27)
    {
      sub_17AB8();
    }

    v29 = *(v60.i64[1] + 8 * ((v21 + v62 - 1) / 0x2AuLL)) + 96 * ((v21 + v62 - 1) % 0x2AuLL);
    v30 = *(v29 + 80);
    if (v30)
    {
      (*(*v30 + 16))(v30, v29);
    }

    v31 = *v29;
    if (*v29 <= -995)
    {
      if (v31 != -1000)
      {
        if (v31 == -999)
        {
          goto LABEL_52;
        }

        if (v31 != -995)
        {
          goto LABEL_72;
        }

        sub_1DAE1D8(&v60, v29);
        goto LABEL_51;
      }

      v32 = *(v29 + 16);
      v34 = (a5 & 0x1000) == 0 || v32 == a3;
      v35 = v32 != v54 || (a5 & 0x20) == 0;
      if (!v35 || !v34)
      {
        goto LABEL_51;
      }

      v36 = v32 - *(v29 + 8);
      v37 = v36 >> 2;
      if (v20 <= v36 >> 2)
      {
        v38 = v36 >> 2;
      }

      else
      {
        v38 = v20;
      }

      if (v55)
      {
        v20 = v38;
      }

      else
      {
        v20 = v37;
      }

      if (v20 != v53)
      {
        sub_1DAE150(&v60);
        v55 = 1;
        goto LABEL_52;
      }

      v39 = v60.i64[1];
      v40 = v61;
      if (v61 == v60.i64[1])
      {
        v40 = v60.i64[1];
      }

      else
      {
        v41 = (v60.i64[1] + 8 * (v62 / 0x2A));
        v42 = (*v41 + 96 * (v62 % 0x2A));
        v43 = *(v60.i64[1] + 8 * ((*(&v62 + 1) + v62) / 0x2AuLL)) + 96 * ((*(&v62 + 1) + v62) % 0x2AuLL);
        if (v42 != v43)
        {
          do
          {
            sub_1DA734C(v42);
            v42 += 12;
            if ((v42 - *v41) == &stru_FB8.dylib.name.offset)
            {
              v44 = v41[1];
              ++v41;
              v42 = v44;
            }
          }

          while (v42 != v43);
          v39 = v60.i64[1];
          v40 = v61;
        }
      }

      *(&v62 + 1) = 0;
      v47 = (v40 - v39) >> 3;
      if (v47 >= 3)
      {
        do
        {
          operator delete(*v39);
          v39 = (v60.i64[1] + 8);
          v60.i64[1] = v39;
          v47 = (v61 - v39) >> 3;
        }

        while (v47 > 2);
      }

      if (v47 == 1)
      {
        v48 = 21;
      }

      else
      {
        if (v47 != 2)
        {
LABEL_67:
          v55 = 1;
          v20 = v53;
          goto LABEL_52;
        }

        v48 = 42;
      }

      *&v62 = v48;
      goto LABEL_67;
    }

    if (v31 <= -993)
    {
      if (v31 == -994)
      {
        goto LABEL_52;
      }

      if (v31 != -993)
      {
        goto LABEL_72;
      }

LABEL_51:
      sub_1DAE150(&v60);
      goto LABEL_52;
    }

    if (v31 == -992)
    {
      v45 = *(v29 + 16);
      *v56 = *v29;
      *&v56[16] = v45;
      v57 = 0uLL;
      *&v56[32] = 0;
      sub_1DA76D8(&v56[32], *(v29 + 32), *(v29 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 40) - *(v29 + 32)) >> 3));
      __p[0] = 0;
      __p[1] = 0;
      v59[0] = 0;
      sub_1DA7758(__p, *(v29 + 56), *(v29 + 64), (*(v29 + 64) - *(v29 + 56)) >> 4);
      v46 = *(v29 + 80);
      *(&v59[1] + 5) = *(v29 + 85);
      v59[1] = v46;
      (*(**(v29 + 80) + 24))(*(v29 + 80), 1, v29);
      (*(*v59[1] + 24))(v59[1], 0, v56);
      sub_1DAE04C(&v60, v56);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*&v56[32])
      {
        *&v57 = *&v56[32];
        operator delete(*&v56[32]);
      }
    }

    else if (v31 != -991)
    {
LABEL_72:
      sub_17B10();
    }

LABEL_52:
    v21 = *(&v62 + 1);
  }

  while (*(&v62 + 1));
  if ((v55 & 1) == 0)
  {
LABEL_70:
    v50 = 0;
    goto LABEL_71;
  }

  v49 = *v52;
  *v49 = v54;
  *(v49 + 8) = v54 + 4 * v20;
  v50 = 1;
  *(v49 + 16) = 1;
LABEL_71:
  sub_1DAEBD8(&v60);
  return v50;
}

void sub_1DADB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_1DAEBD8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1DADB50(uint64_t a1, char *a2, void *a3, uint64_t *a4, int a5, char a6)
{
  v54 = 0;
  v55 = 0;
  v56 = 0;
  *v51 = 0;
  memset(&v51[8], 0, 32);
  v52 = 0u;
  memset(v53, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_47;
  }

  *&v49 = a3;
  *(&v49 + 1) = a3;
  v50 = 0;
  *v45 = 0;
  memset(&v45[8], 0, 32);
  v46 = 0uLL;
  *__p = 0uLL;
  memset(v48, 0, 21);
  sub_1DA6FC4(&v54, v45);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v45[32])
  {
    *&v46 = *&v45[32];
    operator delete(*&v45[32]);
  }

  v41 = a4;
  v13 = v55;
  *(v55 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  sub_1DA705C(v13 - 8, *(a1 + 28), &v49);
  sub_1DA7098(v55 - 5, *(a1 + 32));
  v14 = 0;
  v44 = 0;
  v15 = 0;
  v42 = (a3 - a2) >> 2;
  v43 = a3;
  v16 = v55;
  *(v55 - 2) = v6;
  *(v16 - 2) = a5;
  *(v16 - 4) = a6;
  v17 = (a3 - a2) >> 2;
  do
  {
    v18 = (++v15 & 0xFFF) != 0 || (v15 >> 12) < v17;
    if (!v18)
    {
      sub_17AB8();
    }

    v20 = v16 - 2;
    v19 = *(v16 - 2);
    v21 = v16 - 12;
    if (v19)
    {
      (*(*v19 + 16))(v19, v16 - 12);
    }

    v22 = *v21;
    if (*v21 > -994)
    {
      switch(v22)
      {
        case -993:
          goto LABEL_33;
        case -992:
          v30 = *(v16 - 5);
          *v45 = *v21;
          *&v45[16] = v30;
          v46 = 0uLL;
          *&v45[32] = 0;
          sub_1DA76D8(&v45[32], *(v16 - 8), *(v16 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v16 - 7) - *(v16 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v48[0] = 0;
          sub_1DA7758(__p, *(v16 - 5), *(v16 - 4), (*(v16 - 4) - *(v16 - 5)) >> 4);
          v31 = *v20;
          *(&v48[1] + 5) = *(v16 - 11);
          v48[1] = v31;
          (*(**v20 + 24))(*v20, 1, v16 - 12);
          (*(*v48[1] + 24))(v48[1], 0, v45);
          sub_1DA6FC4(&v54, v45);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v45[32])
          {
            *&v46 = *&v45[32];
            operator delete(*&v45[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_53:
          sub_17B10();
      }
    }

    else
    {
      if ((v22 + 995) < 2)
      {
        goto LABEL_38;
      }

      if (v22 != -1000)
      {
        goto LABEL_53;
      }

      v23 = *(v16 - 10);
      if ((a5 & 0x20) != 0 && v23 == a2 || (a5 & 0x1000) != 0 && v23 != v43)
      {
LABEL_33:
        v29 = v55 - 12;
        sub_1DA734C(v55 - 12);
        v55 = v29;
        goto LABEL_38;
      }

      v24 = (v23 - *(v16 - 11)) >> 2;
      if ((v44 & (v14 >= v24)) == 0)
      {
        v25 = *(v16 - 5);
        *v51 = *v21;
        *&v51[16] = v25;
        if (v51 != v21)
        {
          sub_1DAED88(&v51[32], *(v16 - 8), *(v16 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v16 - 7) - *(v16 - 8)) >> 3));
          sub_1DAEF14(v53, *(v16 - 5), *(v16 - 4), (*(v16 - 4) - *(v16 - 5)) >> 4);
        }

        v26 = *v20;
        *(&v53[3] + 5) = *(v16 - 11);
        v53[3] = v26;
        v14 = v24;
      }

      v27 = v55;
      if (v14 == v42)
      {
        v28 = v54;
        while (v27 != v28)
        {
          v27 -= 12;
          sub_1DA734C(v27);
        }

        v55 = v28;
        v44 = 1;
        v14 = v42;
      }

      else
      {
        v32 = v55 - 12;
        sub_1DA734C(v55 - 12);
        v55 = v32;
        v44 = 1;
      }
    }

LABEL_38:
    v16 = v55;
  }

  while (v54 != v55);
  if ((v44 & 1) == 0)
  {
LABEL_47:
    v39 = 0;
    goto LABEL_48;
  }

  v33 = *v41;
  *v33 = a2;
  *(v33 + 8) = &a2[4 * v14];
  *(v33 + 16) = 1;
  if (v52 != *&v51[32])
  {
    v34 = 0xAAAAAAAAAAAAAAABLL * ((v52 - *&v51[32]) >> 3);
    v35 = (*&v51[32] + 16);
    v36 = 1;
    do
    {
      v37 = v33 + 24 * v36;
      *v37 = *(v35 - 1);
      v38 = *v35;
      v35 += 24;
      *(v37 + 16) = v38;
      v18 = v34 > v36++;
    }

    while (v18);
  }

  v39 = 1;
LABEL_48:
  if (v53[0])
  {
    v53[1] = v53[0];
    operator delete(v53[0]);
  }

  if (*&v51[32])
  {
    *&v52 = *&v51[32];
    operator delete(*&v51[32]);
  }

  *v51 = &v54;
  sub_1DA7808(v51);
  return v39;
}

void sub_1DADFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_17A74(&a13);
  sub_17A74(&a29);
  a29 = v29 - 120;
  sub_1DA7808(&a29);
  _Unwind_Resume(a1);
}

__n128 sub_1DAE04C(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 42 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1DAE2CC(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x2A)) + 96 * (v7 % 0x2A);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = 0;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  result = *(a2 + 56);
  *(v8 + 56) = result;
  *(v8 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v11 = *(a2 + 80);
  *(v8 + 85) = *(a2 + 85);
  *(v8 + 80) = v11;
  ++a1[5];
  return result;
}

uint64_t sub_1DAE150(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_1DA734C((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  --a1[5];

  return sub_1DAE910(a1, 1);
}

int64x2_t sub_1DAE1D8(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_1DAE988(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_22661F0);
  a1[2] = result;
  return result;
}

void sub_1DAE2CC(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_1DAE8C8(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1DAE4A0(a1, &v9);
}

void sub_1DAE454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1DAE4A0(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_1DAE8C8(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_1DAE5A8(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1DAE8C8(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_1DAE6B4(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_1DAE8C8(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_1DAE7BC(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1DAE8C8(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_1DAE8C8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1DAE910(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void sub_1DAE988(const void **a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = a1[4];
  if ((v4 - (a1[5] + v5)) < 0x2A)
  {
    v6 = a1[3];
    v7 = *a1;
    v8 = v6 - *a1;
    if (v3 < v8)
    {
      if (v1 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v10[4] = a1;
    sub_1DAE8C8(a1, v9);
  }

  a1[4] = (v5 + 42);
  v10[0] = *(v2 - 8);
  a1[2] = (v2 - 8);
  sub_1DAE5A8(a1, v10);
}

void sub_1DAEB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1DAEBD8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        sub_1DA734C(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_1DAED38(a1);
}

uint64_t sub_1DAED38(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

char *sub_1DAED88(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_1DA6F20(a1, v11);
    }

    sub_1794();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[16] = *(v5 + 16);
      v5 = (v5 + 24);
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        result[16] = *(v5 + 16);
        v5 = (v5 + 24);
        result += 24;
      }

      while (v5 != v13);
    }

    if (v13 == a3)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 2);
        *v12 = v15;
        v12 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

char *sub_1DAEF14(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1DA77CC(a1, v10);
    }

    sub_1794();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      v18 = v5[1];
      v5 += 2;
      *result = v17;
      *(result + 1) = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        v13 = *v5;
        v14 = v5[1];
        v5 += 2;
        *result = v13;
        *(result + 1) = v14;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v12;
        v12 += 2;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void sub_1DAF038(void **result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_1DAF074(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 24 * a2;
  }
}

void sub_1DAF074(void **a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1DA6F6C(a1, v9);
    }

    v12 = 24 * a2;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = *a1 + 24 * v6 - v15;
    if (v15 != *a1)
    {
      v17 = *a1 + 24 * v6 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 16) = v14[2];
        *v17 = v18;
        v17 += 24;
        v14 += 3;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = (24 * v6 + 24 * a2);
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t sub_1DAF1F0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    v3 = (a1 + 16);
    v4 = *(a2 + 16);
    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(a1 + 39) = v5;
    if (v5)
    {
      memmove(v3, v4, v5);
    }

    *(v3 + v6) = 0;
    *(a1 + 40) = 1;
  }

  return a1;
}

void sub_1DAF2D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1 && *(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1DAF300(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 4)
  {
    if (a3 < 0x3FFFFFFFFFFFFFF8)
    {
      if ((a3 | 1) == 5)
      {
        v3 = 7;
      }

      else
      {
        v3 = (a3 | 1) + 1;
      }

      sub_196396C(__dst, v3);
    }

    sub_3244();
  }

  __dst[23] = a3;
  v4 = 4 * a3 + 4;

  return memmove(__dst, __src, v4);
}

void sub_1DAF39C(std::codecvt<wchar_t, char, mbstate_t> *a1)
{
  std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(a1);

  operator delete();
}

void sub_1DAF3F8(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t **a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = (a3 + 1);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v9 = *v4;
      sub_19E26A4(v9, a2, v7);
      if (v8 == 1)
      {
        sub_1DAF4D0(a3, &v9, &v9, v7);
        if (v8)
        {
          sub_165674C(v7);
        }
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_1DAF49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a43 == 1)
  {
    sub_165674C(&a10);
  }

  sub_19C591C(v43, *(v43 + 8));
  _Unwind_Resume(a1);
}

uint64_t *sub_1DAF4D0(uint64_t **a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_8:
    sub_1DAF594();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_1DAF618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_3608D0(&v1253, "AW");
  sub_3608D0(&v1250, "ABW");
  v1252 = 40;
  sub_195E43C(v1255, &v1253, &v1250);
  sub_3608D0(&v1248, "AF");
  sub_3608D0(&v1245, "AFG");
  v1247 = 41;
  sub_195E43C(&v1256, &v1248, &v1245);
  sub_3608D0(&v1243, "AO");
  sub_3608D0(&v1240, "AGO");
  v1242 = 42;
  sub_195E43C(&v1257, &v1243, &v1240);
  sub_3608D0(&v1238, "AI");
  sub_3608D0(&v1235, "AIA");
  v1237 = 43;
  sub_195E43C(&v1258, &v1238, &v1235);
  sub_3608D0(&v1233, "AX");
  sub_3608D0(&v1230, "ALA");
  v1232 = 246;
  sub_195E43C(&v1259, &v1233, &v1230);
  sub_3608D0(&v1228, "AL");
  sub_3608D0(&v1225, "ALB");
  v1227 = 76;
  sub_195E43C(&v1260, &v1228, &v1225);
  sub_3608D0(&v1223, "AD");
  sub_3608D0(&v1220, "AND");
  v1222 = 78;
  sub_195E43C(&v1261, &v1223, &v1220);
  sub_3608D0(&v1218, "AN");
  sub_3608D0(&v1215, "ANT");
  v1217 = 44;
  sub_195E43C(&v1262, &v1218, &v1215);
  sub_3608D0(&v1213, "AE");
  sub_3608D0(&v1210, "ARE");
  v1212 = 2;
  sub_195E43C(&v1263, &v1213, &v1210);
  sub_3608D0(&v1208, "AR");
  sub_3608D0(&v1205, "ARG");
  v1207 = 80;
  sub_195E43C(&v1264, &v1208, &v1205);
  sub_3608D0(&v1203, "AM");
  sub_3608D0(&v1200, "ARM");
  v1202 = 45;
  sub_195E43C(&v1265, &v1203, &v1200);
  sub_3608D0(&v1198, "AS");
  sub_3608D0(&v1195, "ASM");
  v1197 = 77;
  sub_195E43C(&v1266, &v1198, &v1195);
  sub_3608D0(&v1193, "AQ");
  sub_3608D0(&v1190, "ATA");
  v1192 = 46;
  sub_195E43C(&v1267, &v1193, &v1190);
  sub_3608D0(&v1188, "TF");
  sub_3608D0(&v1185, "ATF");
  v1187 = 125;
  sub_195E43C(&v1268, &v1188, &v1185);
  sub_3608D0(&v1183, "AG");
  sub_3608D0(&v1180, "ATG");
  v1182 = 79;
  sub_195E43C(&v1269, &v1183, &v1180);
  sub_3608D0(&v1178, "AU");
  sub_3608D0(&v1175, "AUS");
  v1177 = 22;
  sub_195E43C(&v1270, &v1178, &v1175);
  sub_3608D0(&v1173, "AT");
  sub_3608D0(&v1170, "AUT");
  v1172 = 81;
  sub_195E43C(&v1271, &v1173, &v1170);
  sub_3608D0(&v1168, "AZ");
  sub_3608D0(&v1165, "AZE");
  v1167 = 82;
  sub_195E43C(&v1272, &v1168, &v1165);
  sub_3608D0(&v1163, "BI");
  sub_3608D0(&v1160, "BDI");
  v1162 = 96;
  sub_195E43C(&v1273, &v1163, &v1160);
  sub_3608D0(&v1158, "BE");
  sub_3608D0(&v1155, "BEL");
  v1157 = 87;
  sub_195E43C(&v1274, &v1158, &v1155);
  sub_3608D0(&v1153, "BJ");
  sub_3608D0(&v1150, "BEN");
  v1152 = 3;
  sub_195E43C(&v1275, &v1153, &v1150);
  sub_3608D0(&v1148, "BQ");
  sub_3608D0(&v1145, "BES");
  v1147 = 248;
  sub_195E43C(&v1276, &v1148, &v1145);
  sub_3608D0(&v1143, "BF");
  sub_3608D0(&v1140, "BFA");
  v1142 = 11;
  sub_195E43C(&v1277, &v1143, &v1140);
  sub_3608D0(&v1138, "BD");
  sub_3608D0(&v1135, "BGD");
  v1137 = 84;
  sub_195E43C(&v1278, &v1138, &v1135);
  sub_3608D0(&v1133, "BG");
  sub_3608D0(&v1130, "BGR");
  v1132 = 95;
  sub_195E43C(&v1279, &v1133, &v1130);
  sub_3608D0(&v1128, "BH");
  sub_3608D0(&v1125, "BHR");
  v1127 = 12;
  sub_195E43C(&v1280, &v1128, &v1125);
  sub_3608D0(&v1123, "BS");
  sub_3608D0(&v1120, "BHS");
  v1122 = 83;
  sub_195E43C(&v1281, &v1123, &v1120);
  sub_3608D0(&v1118, "BA");
  sub_3608D0(&v1115, "BIH");
  v1117 = 92;
  sub_195E43C(&v1282, &v1118, &v1115);
  sub_3608D0(&v1113, "BL");
  sub_3608D0(&v1110, "BLM");
  v1112 = 237;
  sub_195E43C(&v1283, &v1113, &v1110);
  sub_3608D0(&v1108, "BY");
  sub_3608D0(&v1105, "BLR");
  v1107 = 86;
  sub_195E43C(&v1284, &v1108, &v1105);
  sub_3608D0(&v1103, "BZ");
  sub_3608D0(&v1100, "BLZ");
  v1102 = 88;
  sub_195E43C(&v1285, &v1103, &v1100);
  sub_3608D0(&v1098, "BM");
  sub_3608D0(&v1095, "BMU");
  v1097 = 89;
  sub_195E43C(&v1286, &v1098, &v1095);
  sub_3608D0(&v1093, "BO");
  sub_3608D0(&v1090, "BOL");
  v1092 = 91;
  sub_195E43C(&v1287, &v1093, &v1090);
  sub_3608D0(&v1088, "BR");
  sub_3608D0(&v1085, "BRA");
  v1087 = 25;
  sub_195E43C(&v1288, &v1088, &v1085);
  sub_3608D0(&v1083, "BB");
  sub_3608D0(&v1080, "BRB");
  v1082 = 85;
  sub_195E43C(&v1289, &v1083, &v1080);
  sub_3608D0(&v1078, "BN");
  sub_3608D0(&v1075, "BRN");
  v1077 = 94;
  sub_195E43C(&v1290, &v1078, &v1075);
  sub_3608D0(&v1073, "BT");
  sub_3608D0(&v1070, "BTN");
  v1072 = 90;
  sub_195E43C(&v1291, &v1073, &v1070);
  sub_3608D0(&v1068, "BV");
  sub_3608D0(&v1065, "BVT");
  v1067 = 245;
  sub_195E43C(&v1292, &v1068, &v1065);
  sub_3608D0(&v1063, "BW");
  sub_3608D0(&v1060, "BWA");
  v1062 = 93;
  sub_195E43C(&v1293, &v1063, &v1060);
  sub_3608D0(&v1058, "CF");
  sub_3608D0(&v1055, "CAF");
  v1057 = 63;
  sub_195E43C(&v1294, &v1058, &v1055);
  sub_3608D0(&v1053, "CA");
  sub_3608D0(&v1050, "CAN");
  v1052 = 98;
  sub_195E43C(&v1295, &v1053, &v1050);
  sub_3608D0(&v1048, "CC");
  sub_3608D0(&v1045, "CCK");
  v1047 = 47;
  sub_195E43C(&v1296, &v1048, &v1045);
  sub_3608D0(&v1043, "CH");
  sub_3608D0(&v1040, "CHE");
  v1042 = 211;
  sub_195E43C(&v1297, &v1043, &v1040);
  sub_3608D0(&v1038, "CL");
  sub_3608D0(&v1035, "CHL");
  v1037 = 102;
  sub_195E43C(&v1298, &v1038, &v1035);
  sub_3608D0(&v1033, "CN");
  sub_3608D0(&v1030, "CHN");
  v1032 = 4;
  sub_195E43C(&v1299, &v1033, &v1030);
  sub_3608D0(&v1028, "CI");
  sub_3608D0(&v1025, "CIV");
  v1027 = 26;
  sub_195E43C(&v1300, &v1028, &v1025);
  sub_3608D0(&v1023, "CM");
  sub_3608D0(&v1020, "CMR");
  v1022 = 27;
  sub_195E43C(&v1301, &v1023, &v1020);
  sub_3608D0(&v1018, "CD");
  sub_3608D0(&v1015, "COD");
  v1017 = 106;
  sub_195E43C(&v1302, &v1018, &v1015);
  sub_3608D0(&v1013, "CG");
  sub_3608D0(&v1010, "COG");
  v1012 = 105;
  sub_195E43C(&v1303, &v1013, &v1010);
  sub_3608D0(&v1008, "CK");
  sub_3608D0(&v1005, "COK");
  v1007 = 107;
  sub_195E43C(&v1304, &v1008, &v1005);
  sub_3608D0(&v1003, "CO");
  sub_3608D0(&v1000, "COL");
  v1002 = 28;
  sub_195E43C(&v1305, &v1003, &v1000);
  sub_3608D0(&v998, "KM");
  sub_3608D0(&v995, "COM");
  v997 = 104;
  sub_195E43C(&v1306, &v998, &v995);
  sub_3608D0(&v993, "CV");
  sub_3608D0(&v990, "CPV");
  v992 = 99;
  sub_195E43C(&v1307, &v993, &v990);
  sub_3608D0(&v988, "CR");
  sub_3608D0(&v985, "CRI");
  v987 = 13;
  sub_195E43C(&v1308, &v988, &v985);
  sub_3608D0(&v983, "CU");
  sub_3608D0(&v980, "CUB");
  v982 = 109;
  sub_195E43C(&v1309, &v983, &v980);
  sub_3608D0(&v978, "CW");
  sub_3608D0(&v975, "CUW");
  v977 = 247;
  sub_195E43C(&v1310, &v978, &v975);
  sub_3608D0(&v973, "CX");
  sub_3608D0(&v970, "CXR");
  v972 = 103;
  sub_195E43C(&v1311, &v973, &v970);
  sub_3608D0(&v968, "KY");
  sub_3608D0(&v965, "CYM");
  v967 = 100;
  sub_195E43C(&v1312, &v968, &v965);
  sub_3608D0(&v963, "CY");
  sub_3608D0(&v960, "CYP");
  v962 = 110;
  sub_195E43C(&v1313, &v963, &v960);
  sub_3608D0(&v958, "CZ");
  sub_3608D0(&v955, "CZE");
  v957 = 111;
  sub_195E43C(&v1314, &v958, &v955);
  sub_3608D0(&v953, "DE");
  sub_3608D0(&v950, "DEU");
  v952 = 129;
  sub_195E43C(&v1315, &v953, &v950);
  sub_3608D0(&v948, "DJ");
  sub_3608D0(&v945, "DJI");
  v947 = 113;
  sub_195E43C(&v1316, &v948, &v945);
  sub_3608D0(&v943, "DM");
  sub_3608D0(&v940, "DMA");
  v942 = 114;
  sub_195E43C(&v1317, &v943, &v940);
  sub_3608D0(&v938, "DK");
  sub_3608D0(&v935, "DNK");
  v937 = 112;
  sub_195E43C(&v1318, &v938, &v935);
  sub_3608D0(&v933, "DO");
  sub_3608D0(&v930, "DOM");
  v932 = 29;
  sub_195E43C(&v1319, &v933, &v930);
  sub_3608D0(&v928, "DZ");
  sub_3608D0(&v925, "DZA");
  v927 = 0;
  sub_195E43C(&v1320, &v928, &v925);
  sub_3608D0(&v923, "EC");
  sub_3608D0(&v920, "ECU");
  v922 = 30;
  sub_195E43C(&v1321, &v923, &v920);
  sub_3608D0(&v918, "EG");
  sub_3608D0(&v915, "EGY");
  v917 = 64;
  sub_195E43C(&v1322, &v918, &v915);
  sub_3608D0(&v913, "ER");
  sub_3608D0(&v910, "ERI");
  v912 = 116;
  sub_195E43C(&v1323, &v913, &v910);
  sub_3608D0(&v908, "EH");
  sub_3608D0(&v905, "ESH");
  v907 = 65;
  sub_195E43C(&v1324, &v908, &v905);
  sub_3608D0(&v903, "ES");
  sub_3608D0(&v900, "ESP");
  v902 = 206;
  sub_195E43C(&v1325, &v903, &v900);
  sub_3608D0(&v898, "EE");
  sub_3608D0(&v895, "EST");
  v897 = 117;
  sub_195E43C(&v1326, &v898, &v895);
  sub_3608D0(&v893, "ET");
  sub_3608D0(&v890, "ETH");
  v892 = 31;
  sub_195E43C(&v1327, &v893, &v890);
  sub_3608D0(&v888, "FI");
  sub_3608D0(&v885, "FIN");
  v887 = 121;
  sub_195E43C(&v1328, &v888, &v885);
  sub_3608D0(&v883, "FJ");
  sub_3608D0(&v880, "FJI");
  v882 = 120;
  sub_195E43C(&v1329, &v883, &v880);
  sub_3608D0(&v878, "FK");
  sub_3608D0(&v875, "FLK");
  v877 = 118;
  sub_195E43C(&v1330, &v878, &v875);
  sub_3608D0(&v873, "FR");
  sub_3608D0(&v870, "FRA");
  v872 = 122;
  sub_195E43C(&v1331, &v873, &v870);
  sub_3608D0(&v868, "FO");
  sub_3608D0(&v865, "FRO");
  v867 = 119;
  sub_195E43C(&v1332, &v868, &v865);
  sub_3608D0(&v863, "FM");
  sub_3608D0(&v860, "FSM");
  v862 = 166;
  sub_195E43C(&v1333, &v863, &v860);
  sub_3608D0(&v858, "GA");
  sub_3608D0(&v855, "GAB");
  v857 = 126;
  sub_195E43C(&v1334, &v858, &v855);
  sub_3608D0(&v853, "GB");
  sub_3608D0(&v850, "GBR");
  v852 = 225;
  sub_195E43C(&v1335, &v853, &v850);
  sub_3608D0(&v848, "GE");
  sub_3608D0(&v845, "GEO");
  v847 = 128;
  sub_195E43C(&v1336, &v848, &v845);
  sub_3608D0(&v843, "GG");
  sub_3608D0(&v840, "GGY");
  v842 = 256;
  sub_195E43C(&v1337, &v843, &v840);
  sub_3608D0(&v838, "GH");
  sub_3608D0(&v835, "GHA");
  v837 = 66;
  sub_195E43C(&v1338, &v838, &v835);
  sub_3608D0(&v833, "GI");
  sub_3608D0(&v830, "GIB");
  v832 = 67;
  sub_195E43C(&v1339, &v833, &v830);
  sub_3608D0(&v828, "GN");
  sub_3608D0(&v825, "GIN");
  v827 = 135;
  sub_195E43C(&v1340, &v828, &v825);
  sub_3608D0(&v823, "GP");
  sub_3608D0(&v820, "GLP");
  v822 = 133;
  sub_195E43C(&v1341, &v823, &v820);
  sub_3608D0(&v818, "GM");
  sub_3608D0(&v815, "GMB");
  v817 = 127;
  sub_195E43C(&v1342, &v818, &v815);
  sub_3608D0(&v813, "GW");
  sub_3608D0(&v810, "GNB");
  v812 = 68;
  sub_195E43C(&v1343, &v813, &v810);
  sub_3608D0(&v808, "GQ");
  sub_3608D0(&v805, "GNQ");
  v807 = 115;
  sub_195E43C(&v1344, &v808, &v805);
  sub_3608D0(&v803, "GR");
  sub_3608D0(&v800, "GRC");
  v802 = 130;
  sub_195E43C(&v1345, &v803, &v800);
  sub_3608D0(&v798, "GD");
  sub_3608D0(&v795, "GRD");
  v797 = 132;
  sub_195E43C(&v1346, &v798, &v795);
  sub_3608D0(&v793, "GL");
  sub_3608D0(&v790, "GRL");
  v792 = 131;
  sub_195E43C(&v1347, &v793, &v790);
  sub_3608D0(&v788, "GT");
  sub_3608D0(&v785, "GTM");
  v787 = 32;
  sub_195E43C(&v1348, &v788, &v785);
  sub_3608D0(&v783, "GF");
  sub_3608D0(&v780, "GUF");
  v782 = 123;
  sub_195E43C(&v1349, &v783, &v780);
  sub_3608D0(&v778, "GU");
  sub_3608D0(&v775, "GUM");
  v777 = 134;
  sub_195E43C(&v1350, &v778, &v775);
  sub_3608D0(&v773, "GY");
  sub_3608D0(&v770, "GUY");
  v772 = 136;
  sub_195E43C(&v1351, &v773, &v770);
  sub_3608D0(&v768, "HK");
  sub_3608D0(&v765, "HKG");
  v767 = 5;
  sub_195E43C(&v1352, &v768, &v765);
  sub_3608D0(&v763, "HM");
  sub_3608D0(&v760, "HMD");
  v762 = 240;
  sub_195E43C(&v1353, &v763, &v760);
  sub_3608D0(&v758, "HN");
  sub_3608D0(&v755, "HND");
  v757 = 14;
  sub_195E43C(&v1354, &v758, &v755);
  sub_3608D0(&v753, "HR");
  sub_3608D0(&v750, "HRV");
  v752 = 108;
  sub_195E43C(&v1355, &v753, &v750);
  sub_3608D0(&v748, "HT");
  sub_3608D0(&v745, "HTI");
  v747 = 137;
  sub_195E43C(&v1356, &v748, &v745);
  sub_3608D0(&v743, "HU");
  sub_3608D0(&v740, "HUN");
  v742 = 138;
  sub_195E43C(&v1357, &v743, &v740);
  sub_3608D0(&v738, "ID");
  sub_3608D0(&v735, "IDN");
  v737 = 69;
  sub_195E43C(&v1358, &v738, &v735);
  sub_3608D0(&v733, "IM");
  sub_3608D0(&v730, "IMN");
  v732 = 255;
  sub_195E43C(&v1359, &v733, &v730);
  sub_3608D0(&v728, "IN");
  sub_3608D0(&v725, "IND");
  v727 = 140;
  sub_195E43C(&v1360, &v728, &v725);
  sub_3608D0(&v723, "IO");
  sub_3608D0(&v720, "IOT");
  v722 = 48;
  sub_195E43C(&v1361, &v723, &v720);
  sub_3608D0(&v718, "IE");
  sub_3608D0(&v715, "IRL");
  v717 = 143;
  sub_195E43C(&v1362, &v718, &v715);
  sub_3608D0(&v713, "IR");
  sub_3608D0(&v710, "IRN");
  v712 = 141;
  sub_195E43C(&v1363, &v713, &v710);
  sub_3608D0(&v708, "IQ");
  sub_3608D0(&v705, "IRQ");
  v707 = 142;
  sub_195E43C(&v1364, &v708, &v705);
  sub_3608D0(&v703, "IS");
  sub_3608D0(&v700, "ISL");
  v702 = 139;
  sub_195E43C(&v1365, &v703, &v700);
  sub_3608D0(&v698, "IL");
  sub_3608D0(&v695, "ISR");
  v697 = 75;
  sub_195E43C(&v1366, &v698, &v695);
  sub_3608D0(&v693, "IT");
  sub_3608D0(&v690, "ITA");
  v692 = 144;
  sub_195E43C(&v1367, &v693, &v690);
  sub_3608D0(&v688, "JM");
  sub_3608D0(&v685, "JAM");
  v687 = 15;
  sub_195E43C(&v1368, &v688, &v685);
  sub_3608D0(&v683, "JE");
  sub_3608D0(&v680, "JEY");
  v682 = 254;
  sub_195E43C(&v1369, &v683, &v680);
  sub_3608D0(&v678, "JO");
  sub_3608D0(&v675, "JOR");
  v677 = 33;
  sub_195E43C(&v1370, &v678, &v675);
  sub_3608D0(&v673, "JP");
  sub_3608D0(&v670, "JPN");
  v672 = 10;
  sub_195E43C(&v1371, &v673, &v670);
  sub_3608D0(&v668, "KZ");
  sub_3608D0(&v665, "KAZ");
  v667 = 145;
  sub_195E43C(&v1372, &v668, &v665);
  sub_3608D0(&v663, "KE");
  sub_3608D0(&v660, "KEN");
  v662 = 34;
  sub_195E43C(&v1373, &v663, &v660);
  sub_3608D0(&v658, "KG");
  sub_3608D0(&v655, "KGZ");
  v657 = 149;
  sub_195E43C(&v1374, &v658, &v655);
  sub_3608D0(&v653, "KH");
  sub_3608D0(&v650, "KHM");
  v652 = 97;
  sub_195E43C(&v1375, &v653, &v650);
  sub_3608D0(&v648, "KI");
  sub_3608D0(&v645, "KIR");
  v647 = 146;
  sub_195E43C(&v1376, &v648, &v645);
  sub_3608D0(&v643, "KN");
  sub_3608D0(&v640, "KNA");
  v642 = 193;
  sub_195E43C(&v1377, &v643, &v640);
  sub_3608D0(&v638, "KR");
  sub_3608D0(&v635, "KOR");
  v637 = 148;
  sub_195E43C(&v1378, &v638, &v635);
  sub_3608D0(&v633, "KW");
  sub_3608D0(&v630, "KWT");
  v632 = 16;
  sub_195E43C(&v1379, &v633, &v630);
  sub_3608D0(&v628, "LA");
  sub_3608D0(&v625, "LAO");
  v627 = 150;
  sub_195E43C(&v1380, &v628, &v625);
  sub_3608D0(&v623, "LB");
  sub_3608D0(&v620, "LBN");
  v622 = 152;
  sub_195E43C(&v1381, &v623, &v620);
  sub_3608D0(&v618, "LR");
  sub_3608D0(&v615, "LBR");
  v617 = 153;
  sub_195E43C(&v1382, &v618, &v615);
  sub_3608D0(&v613, "LY");
  sub_3608D0(&v610, "LBY");
  v612 = 154;
  sub_195E43C(&v1383, &v613, &v610);
  sub_3608D0(&v608, "LC");
  sub_3608D0(&v605, "LCA");
  v607 = 194;
  sub_195E43C(&v1384, &v608, &v605);
  sub_3608D0(&v603, "LI");
  sub_3608D0(&v600, "LIE");
  v602 = 70;
  sub_195E43C(&v1385, &v603, &v600);
  sub_3608D0(&v598, "LK");
  sub_3608D0(&v595, "LKA");
  v597 = 207;
  sub_195E43C(&v1386, &v598, &v595);
  sub_3608D0(&v593, "LS");
  sub_3608D0(&v590, "LSO");
  v592 = 49;
  sub_195E43C(&v1387, &v593, &v590);
  sub_3608D0(&v588, "LT");
  sub_3608D0(&v585, "LTU");
  v587 = 155;
  sub_195E43C(&v1388, &v588, &v585);
  sub_3608D0(&v583, "LU");
  sub_3608D0(&v580, "LUX");
  v582 = 156;
  sub_195E43C(&v1389, &v583, &v580);
  sub_3608D0(&v578, "LV");
  sub_3608D0(&v575, "LVA");
  v577 = 151;
  sub_195E43C(&v1390, &v578, &v575);
  sub_3608D0(&v573, "MO");
  sub_3608D0(&v570, "MAC");
  v572 = 157;
  sub_195E43C(&v1391, &v573, &v570);
  sub_3608D0(&v568, "MF");
  sub_3608D0(&v565, "MAF");
  v567 = 236;
  sub_195E43C(&v1392, &v568, &v565);
  sub_3608D0(&v563, "MA");
  sub_3608D0(&v560, "MAR");
  v562 = 171;
  sub_195E43C(&v1393, &v563, &v560);
  sub_3608D0(&v558, "MC");
  sub_3608D0(&v555, "MCO");
  v557 = 71;
  sub_195E43C(&v1394, &v558, &v555);
  sub_3608D0(&v553, "MD");
  sub_3608D0(&v550, "MDA");
  v552 = 167;
  sub_195E43C(&v1395, &v553, &v550);
  sub_3608D0(&v548, "MG");
  sub_3608D0(&v545, "MDG");
  v547 = 159;
  sub_195E43C(&v1396, &v548, &v545);
  sub_3608D0(&v543, "MV");
  sub_3608D0(&v540, "MDV");
  v542 = 50;
  sub_195E43C(&v1397, &v543, &v540);
  sub_3608D0(&v538, "MX");
  sub_3608D0(&v535, "MEX");
  v537 = 165;
  sub_195E43C(&v1398, &v538, &v535);
  sub_3608D0(&v533, "MH");
  sub_3608D0(&v530, "MHL");
  v532 = 51;
  sub_195E43C(&v1399, &v533, &v530);
  sub_3608D0(&v528, "MK");
  sub_3608D0(&v525, "MKD");
  v527 = 158;
  sub_195E43C(&v1400, &v528, &v525);
  sub_3608D0(&v523, "ML");
  sub_3608D0(&v520, "MLI");
  v522 = 17;
  sub_195E43C(&v1401, &v523, &v520);
  sub_3608D0(&v518, "MT");
  sub_3608D0(&v515, "MLT");
  v517 = 162;
  sub_195E43C(&v1402, &v518, &v515);
  sub_3608D0(&v513, "MM");
  sub_3608D0(&v510, "MMR");
  v512 = 173;
  sub_195E43C(&v1403, &v513, &v510);
  sub_3608D0(&v508, "ME");
  sub_3608D0(&v505, "MNE");
  v507 = 169;
  sub_195E43C(&v1404, &v508, &v505);
  sub_3608D0(&v503, "MN");
  sub_3608D0(&v500, "MNG");
  v502 = 168;
  sub_195E43C(&v1405, &v503, &v500);
  sub_3608D0(&v498, "MP");
  sub_3608D0(&v495, "MNP");
  v497 = 179;
  sub_195E43C(&v1406, &v498, &v495);
  sub_3608D0(&v493, "MZ");
  sub_3608D0(&v490, "MOZ");
  v492 = 172;
  sub_195E43C(&v1407, &v493, &v490);
  sub_3608D0(&v488, "MR");
  sub_3608D0(&v485, "MRT");
  v487 = 163;
  sub_195E43C(&v1408, &v488, &v485);
  sub_3608D0(&v483, "MS");
  sub_3608D0(&v480, "MSR");
  v482 = 170;
  sub_195E43C(&v1409, &v483, &v480);
  sub_3608D0(&v478, "MQ");
  sub_3608D0(&v475, "MTQ");
  v477 = 52;
  sub_195E43C(&v1410, &v478, &v475);
  sub_3608D0(&v473, "MU");
  sub_3608D0(&v470, "MUS");
  v472 = 164;
  sub_195E43C(&v1411, &v473, &v470);
  sub_3608D0(&v468, "MW");
  sub_3608D0(&v465, "MWI");
  v467 = 160;
  sub_195E43C(&v1412, &v468, &v465);
  sub_3608D0(&v463, "MY");
  sub_3608D0(&v460, "MYS");
  v462 = 161;
  sub_195E43C(&v1413, &v463, &v460);
  sub_3608D0(&v458, "YT");
  sub_3608D0(&v455, "MYT");
  v457 = 53;
  sub_195E43C(&v1414, &v458, &v455);
  sub_3608D0(&v453, "NA");
  sub_3608D0(&v450, "NAM");
  v452 = 174;
  sub_195E43C(&v1415, &v453, &v450);
  sub_3608D0(&v448, "NC");
  sub_3608D0(&v445, "NCL");
  v447 = 177;
  sub_195E43C(&v1416, &v448, &v445);
  sub_3608D0(&v443, "NE");
  sub_3608D0(&v440, "NER");
  v442 = 35;
  sub_195E43C(&v1417, &v443, &v440);
  sub_3608D0(&v438, "NF");
  sub_3608D0(&v435, "NFK");
  v437 = 23;
  sub_195E43C(&v1418, &v438, &v435);
  sub_3608D0(&v433, "NG");
  sub_3608D0(&v430, "NGA");
  v432 = 6;
  sub_195E43C(&v1419, &v433, &v430);
  sub_3608D0(&v428, "NI");
  sub_3608D0(&v425, "NIC");
  v427 = 18;
  sub_195E43C(&v1420, &v428, &v425);
  sub_3608D0(&v423, "NU");
  sub_3608D0(&v420, "NIU");
  v422 = 178;
  sub_195E43C(&v1421, &v423, &v420);
  sub_3608D0(&v418, "NL");
  sub_3608D0(&v415, "NLD");
  v417 = 176;
  sub_195E43C(&v1422, &v418, &v415);
  sub_3608D0(&v413, "NO");
  sub_3608D0(&v410, "NOR");
  v412 = 180;
  sub_195E43C(&v1423, &v413, &v410);
  sub_3608D0(&v408, "NP");
  sub_3608D0(&v405, "NPL");
  v407 = 175;
  sub_195E43C(&v1424, &v408, &v405);
  sub_3608D0(&v403, "NR");
  sub_3608D0(&v400, "NRU");
  v402 = 54;
  sub_195E43C(&v1425, &v403, &v400);
  sub_3608D0(&v398, "NZ");
  sub_3608D0(&v395, "NZL");
  v397 = 24;
  sub_195E43C(&v1426, &v398, &v395);
  sub_3608D0(&v393, "OM");
  sub_3608D0(&v390, "OMN");
  v392 = 7;
  sub_195E43C(&v1427, &v393, &v390);
  sub_3608D0(&v388, "PA");
  sub_3608D0(&v385, "PAN");
  v387 = 19;
  sub_195E43C(&v1428, &v388, &v385);
  sub_3608D0(&v383, "PE");
  sub_3608D0(&v380, "PER");
  v382 = 184;
  sub_195E43C(&v1429, &v383, &v380);
  sub_3608D0(&v378, "PF");
  sub_3608D0(&v375, "PYF");
  v377 = 124;
  sub_195E43C(&v1430, &v378, &v375);
  sub_3608D0(&v373, "PG");
  sub_3608D0(&v370, "PNG");
  v372 = 56;
  sub_195E43C(&v1431, &v373, &v370);
  sub_3608D0(&v368, "PH");
  sub_3608D0(&v365, "PHL");
  v367 = 185;
  sub_195E43C(&v1432, &v368, &v365);
  sub_3608D0(&v363, "PK");
  sub_3608D0(&v360, "PAK");
  v362 = 181;
  sub_195E43C(&v1433, &v363, &v360);
  sub_3608D0(&v358, "PL");
  sub_3608D0(&v355, "POL");
  v357 = 186;
  sub_195E43C(&v1434, &v358, &v355);
  sub_3608D0(&v353, "PM");
  sub_3608D0(&v350, "SPM");
  v352 = 241;
  sub_195E43C(&v1435, &v353, &v350);
  sub_3608D0(&v348, "PN");
  sub_3608D0(&v345, "PCN");
  v347 = 55;
  sub_195E43C(&v1436, &v348, &v345);
  sub_3608D0(&v343, "PR");
  sub_3608D0(&v340, "PRI");
  v342 = 253;
  sub_195E43C(&v1437, &v343, &v340);
  sub_3608D0(&v338, "PS");
  sub_3608D0(&v335, "PSE");
  v337 = 36;
  sub_195E43C(&v1438, &v338, &v335);
  sub_3608D0(&v333, "PT");
  sub_3608D0(&v330, "PRT");
  v332 = 187;
  sub_195E43C(&v1439, &v333, &v330);
  sub_3608D0(&v328, "PW");
  sub_3608D0(&v325, "PLW");
  v327 = 182;
  sub_195E43C(&v1440, &v328, &v325);
  sub_3608D0(&v323, "PY");
  sub_3608D0(&v320, "PRY");
  v322 = 183;
  sub_195E43C(&v1441, &v323, &v320);
  sub_3608D0(&v318, "QA");
  sub_3608D0(&v315, "QAT");
  v317 = 8;
  sub_195E43C(&v1442, &v318, &v315);
  sub_3608D0(&v313, "RE");
  sub_3608D0(&v310, "REU");
  v312 = 188;
  sub_195E43C(&v1443, &v313, &v310);
  sub_3608D0(&v308, "RO");
  sub_3608D0(&v305, "ROU");
  v307 = 189;
  sub_195E43C(&v1444, &v308, &v305);
  sub_3608D0(&v303, "RS");
  sub_3608D0(&v300, "SRB");
  v302 = 199;
  sub_195E43C(&v1445, &v303, &v300);
  sub_3608D0(&v298, "RU");
  sub_3608D0(&v295, "RUS");
  v297 = 190;
  sub_195E43C(&v1446, &v298, &v295);
  sub_3608D0(&v293, "RW");
  sub_3608D0(&v290, "RWA");
  v292 = 191;
  sub_195E43C(&v1447, &v293, &v290);
  sub_3608D0(&v288, "SA");
  sub_3608D0(&v285, "SAU");
  v287 = 20;
  sub_195E43C(&v1448, &v288, &v285);
  sub_3608D0(&v283, "SB");
  sub_3608D0(&v280, "SLB");
  v282 = 58;
  sub_195E43C(&v1449, &v283, &v280);
  sub_3608D0(&v278, "SC");
  sub_3608D0(&v275, "SYC");
  v277 = 200;
  sub_195E43C(&v1450, &v278, &v275);
  sub_3608D0(&v273, "SD");
  sub_3608D0(&v270, "SDN");
  v272 = 208;
  sub_195E43C(&v1451, &v273, &v270);
  sub_3608D0(&v268, "SE");
  sub_3608D0(&v265, "SWE");
  v267 = 210;
  sub_195E43C(&v1452, &v268, &v265);
  sub_3608D0(&v263, "SG");
  sub_3608D0(&v260, "SGP");
  v262 = 202;
  sub_195E43C(&v1453, &v263, &v260);
  sub_3608D0(&v258, "SH");
  sub_3608D0(&v255, "SHN");
  v257 = 192;
  sub_195E43C(&v1454, &v258, &v255);
  sub_3608D0(&v253, "SI");
  sub_3608D0(&v250, "SVN");
  v252 = 204;
  sub_195E43C(&v1455, &v253, &v250);
  sub_3608D0(&v248, "SJ");
  sub_3608D0(&v245, "SJM");
  v247 = 72;
  sub_195E43C(&v1456, &v248, &v245);
  sub_3608D0(&v243, "SK");
  sub_3608D0(&v240, "SVK");
  v242 = 203;
  sub_195E43C(&v1457, &v243, &v240);
  sub_3608D0(&v238, "SL");
  sub_3608D0(&v235, "SLE");
  v237 = 201;
  sub_195E43C(&v1458, &v238, &v235);
  sub_3608D0(&v233, "SM");
  sub_3608D0(&v230, "SMR");
  v232 = 197;
  sub_195E43C(&v1459, &v233, &v230);
  sub_3608D0(&v228, "SN");
  sub_3608D0(&v225, "SEN");
  v227 = 37;
  sub_195E43C(&v1460, &v228, &v225);
  sub_3608D0(&v223, "SO");
  sub_3608D0(&v220, "SOM");
  v222 = 205;
  sub_195E43C(&v1461, &v223, &v220);
  sub_3608D0(&v218, "SR");
  sub_3608D0(&v215, "SUR");
  v217 = 209;
  sub_195E43C(&v1462, &v218, &v215);
  sub_3608D0(&v213, "SS");
  sub_3608D0(&v210, "SSD");
  v212 = 243;
  sub_195E43C(&v1463, &v213, &v210);
  sub_3608D0(&v208, "ST");
  sub_3608D0(&v205, "STP");
  v207 = 198;
  sub_195E43C(&v1464, &v208, &v205);
  sub_3608D0(&v203, "SV");
  sub_3608D0(&v200, "SLV");
  v202 = 21;
  sub_195E43C(&v1465, &v203, &v200);
  sub_3608D0(&v198, "SX");
  sub_3608D0(&v195, "SXM");
  v197 = 234;
  sub_195E43C(&v1466, &v198, &v195);
  sub_3608D0(&v193, "SY");
  sub_3608D0(&v190, "SYR");
  v192 = 212;
  sub_195E43C(&v1467, &v193, &v190);
  sub_3608D0(&v188, "SZ");
  sub_3608D0(&v185, "SWZ");
  v187 = 59;
  sub_195E43C(&v1468, &v188, &v185);
  sub_3608D0(&v183, "TC");
  sub_3608D0(&v180, "TCA");
  v182 = 222;
  sub_195E43C(&v1469, &v183, &v180);
  sub_3608D0(&v178, "TD");
  sub_3608D0(&v175, "TCD");
  v177 = 101;
  sub_195E43C(&v1470, &v178, &v175);
  sub_3608D0(&v173, "TF");
  sub_3608D0(&v170, "ATF");
  v172 = 125;
  sub_195E43C(&v1471, &v173, &v170);
  sub_3608D0(&v168, "TG");
  sub_3608D0(&v165, "TGO");
  v167 = 216;
  sub_195E43C(&v1472, &v168, &v165);
  sub_3608D0(&v163, "TH");
  sub_3608D0(&v160, "THA");
  v162 = 214;
  sub_195E43C(&v1473, &v163, &v160);
  sub_3608D0(&v158, "TJ");
  sub_3608D0(&v155, "TJK");
  v157 = 213;
  sub_195E43C(&v1474, &v158, &v155);
  sub_3608D0(&v153, "TK");
  sub_3608D0(&v150, "TKL");
  v152 = 244;
  sub_195E43C(&v1475, &v153, &v150);
  sub_3608D0(&v148, "TL");
  sub_3608D0(&v145, "TLS");
  v147 = 215;
  sub_195E43C(&v1476, &v148, &v145);
  sub_3608D0(&v143, "TM");
  sub_3608D0(&v140, "TKM");
  v142 = 221;
  sub_195E43C(&v1477, &v143, &v140);
  sub_3608D0(&v138, "TN");
  sub_3608D0(&v135, "TUN");
  v137 = 219;
  sub_195E43C(&v1478, &v138, &v135);
  sub_3608D0(&v133, "TO");
  sub_3608D0(&v130, "TON");
  v132 = 217;
  sub_195E43C(&v1479, &v133, &v130);
  sub_3608D0(&v128, "TR");
  sub_3608D0(&v125, "TUR");
  v127 = 220;
  sub_195E43C(&v1480, &v128, &v125);
  sub_3608D0(&v123, "TT");
  sub_3608D0(&v120, "TTO");
  v122 = 218;
  sub_195E43C(&v1481, &v123, &v120);
  sub_3608D0(&v118, "TV");
  sub_3608D0(&v115, "TUV");
  v117 = 60;
  sub_195E43C(&v1482, &v118, &v115);
  sub_3608D0(&v113, "TZ");
  sub_3608D0(&v110, "TZA");
  v112 = 38;
  sub_195E43C(&v1483, &v113, &v110);
  sub_3608D0(&v108, "UA");
  sub_3608D0(&v105, "UKR");
  v107 = 224;
  sub_195E43C(&v1484, &v108, &v105);
  sub_3608D0(&v103, "UG");
  sub_3608D0(&v100, "UGA");
  v102 = 223;
  sub_195E43C(&v1485, &v103, &v100);
  sub_3608D0(&v98, "UM");
  sub_3608D0(&v95, "UMI");
  v97 = 251;
  sub_195E43C(&v1486, &v98, &v95);
  sub_3608D0(&v93, "US");
  sub_3608D0(&v90, "USA");
  v92 = 226;
  sub_195E43C(&v1487, &v93, &v90);
  sub_3608D0(&v88, "UY");
  sub_3608D0(&v85, "URY");
  v87 = 1;
  sub_195E43C(&v1488, &v88, &v85);
  sub_3608D0(&v83, "UZ");
  sub_3608D0(&v80, "UZB");
  v82 = 227;
  sub_195E43C(&v1489, &v83, &v80);
  sub_3608D0(&v78, "VA");
  sub_3608D0(&v75, "VAT");
  v77 = 74;
  sub_195E43C(&v1490, &v78, &v75);
  sub_3608D0(&v73, "VC");
  sub_3608D0(&v70, "VCT");
  v72 = 195;
  sub_195E43C(&v1491, &v73, &v70);
  sub_3608D0(&v68, "VE");
  sub_3608D0(&v65, "VEN");
  v67 = 39;
  sub_195E43C(&v1492, &v68, &v65);
  sub_3608D0(&v63, "VG");
  sub_3608D0(&v60, "VGB");
  v62 = 229;
  sub_195E43C(&v1493, &v63, &v60);
  sub_3608D0(&v58, "VI");
  sub_3608D0(&v55, "VIR");
  v57 = 242;
  sub_195E43C(&v1494, &v58, &v55);
  sub_3608D0(&v53, "VN");
  sub_3608D0(&v50, "VNM");
  v52 = 9;
  sub_195E43C(&v1495, &v53, &v50);
  sub_3608D0(&v48, "VU");
  sub_3608D0(&v45, "VUT");
  v47 = 228;
  sub_195E43C(&v1496, &v48, &v45);
  sub_3608D0(&v43, "WF");
  sub_3608D0(&v40, "WLF");
  v42 = 230;
  sub_195E43C(&v1497, &v43, &v40);
  sub_3608D0(&v38, "WS");
  sub_3608D0(&v35, "WSM");
  v37 = 196;
  sub_195E43C(&v1498, &v38, &v35);
  sub_3608D0(&v33, "YE");
  sub_3608D0(&v30, "YEM");
  v32 = 231;
  sub_195E43C(&v1499, &v33, &v30);
  sub_3608D0(&v28, "YT");
  sub_3608D0(&v25, "MYT");
  v27 = 53;
  sub_195E43C(&v1500, &v28, &v25);
  sub_3608D0(&v23, "ZA");
  sub_3608D0(v20, "ZAF");
  v22 = 62;
  sub_195E43C(&v1501, &v23, v20);
  sub_3608D0(v18, "ZM");
  sub_3608D0(v15, "ZMB");
  v17 = 232;
  sub_195E43C(&v1502, v18, v15);
  sub_3608D0(v13, "ZW");
  sub_3608D0(__p, "ZWE");
  v12 = 233;
  sub_195E43C(&v1503, v13, __p);
  sub_1966280(qword_27EF830, v1255, 249);
  v8 = &v1504;
  v9 = -13944;
  do
  {
    if (*v8 < 0)
    {
      operator delete(*(v8 - 23));
    }

    if (*(v8 - 24) < 0)
    {
      operator delete(*(v8 - 47));
    }

    v8 -= 56;
    v9 += 56;
  }

  while (v9);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (v49 < 0)
  {
    operator delete(v48);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v59 < 0)
  {
    operator delete(v58);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  if (v69 < 0)
  {
    operator delete(v68);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (v74 < 0)
  {
    operator delete(v73);
  }

  if (v76 < 0)
  {
    operator delete(v75);
  }

  if (v79 < 0)
  {
    operator delete(v78);
  }

  if (v81 < 0)
  {
    operator delete(v80);
  }

  if (v84 < 0)
  {
    operator delete(v83);
  }

  if (v86 < 0)
  {
    operator delete(v85);
  }

  if (v89 < 0)
  {
    operator delete(v88);
  }

  if (v91 < 0)
  {
    operator delete(v90);
  }

  if (v94 < 0)
  {
    operator delete(v93);
  }

  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (v99 < 0)
  {
    operator delete(v98);
  }

  if (v101 < 0)
  {
    operator delete(v100);
  }

  if (v104 < 0)
  {
    operator delete(v103);
  }

  if (v106 < 0)
  {
    operator delete(v105);
  }

  if (v109 < 0)
  {
    operator delete(v108);
  }

  if (v111 < 0)
  {
    operator delete(v110);
  }

  if (v114 < 0)
  {
    operator delete(v113);
  }

  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (v119 < 0)
  {
    operator delete(v118);
  }

  if (v121 < 0)
  {
    operator delete(v120);
  }

  if (v124 < 0)
  {
    operator delete(v123);
  }

  if (v126 < 0)
  {
    operator delete(v125);
  }

  if (v129 < 0)
  {
    operator delete(v128);
  }

  if (v131 < 0)
  {
    operator delete(v130);
  }

  if (v134 < 0)
  {
    operator delete(v133);
  }

  if (v136 < 0)
  {
    operator delete(v135);
  }

  if (v139 < 0)
  {
    operator delete(v138);
  }

  if (v141 < 0)
  {
    operator delete(v140);
  }

  if (v144 < 0)
  {
    operator delete(v143);
  }

  if (v146 < 0)
  {
    operator delete(v145);
  }

  if (v149 < 0)
  {
    operator delete(v148);
  }

  if (v151 < 0)
  {
    operator delete(v150);
  }

  if (v154 < 0)
  {
    operator delete(v153);
  }

  if (v156 < 0)
  {
    operator delete(v155);
  }

  if (v159 < 0)
  {
    operator delete(v158);
  }

  if (v161 < 0)
  {
    operator delete(v160);
  }

  if (v164 < 0)
  {
    operator delete(v163);
  }

  if (v166 < 0)
  {
    operator delete(v165);
  }

  if (v169 < 0)
  {
    operator delete(v168);
  }

  if (v171 < 0)
  {
    operator delete(v170);
  }

  if (v174 < 0)
  {
    operator delete(v173);
  }

  if (v176 < 0)
  {
    operator delete(v175);
  }

  if (v179 < 0)
  {
    operator delete(v178);
  }

  if (v181 < 0)
  {
    operator delete(v180);
  }

  if (v184 < 0)
  {
    operator delete(v183);
  }

  if (v186 < 0)
  {
    operator delete(v185);
  }

  if (v189 < 0)
  {
    operator delete(v188);
  }

  if (v191 < 0)
  {
    operator delete(v190);
  }

  if (v194 < 0)
  {
    operator delete(v193);
  }

  if (v196 < 0)
  {
    operator delete(v195);
  }

  if (v199 < 0)
  {
    operator delete(v198);
  }

  if (v201 < 0)
  {
    operator delete(v200);
  }

  if (v204 < 0)
  {
    operator delete(v203);
  }

  if (v206 < 0)
  {
    operator delete(v205);
  }

  if (v209 < 0)
  {
    operator delete(v208);
  }

  if (v211 < 0)
  {
    operator delete(v210);
  }

  if (v214 < 0)
  {
    operator delete(v213);
  }

  if (v216 < 0)
  {
    operator delete(v215);
  }

  if (v219 < 0)
  {
    operator delete(v218);
  }

  if (v221 < 0)
  {
    operator delete(v220);
  }

  if (v224 < 0)
  {
    operator delete(v223);
  }

  if (v226 < 0)
  {
    operator delete(v225);
  }

  if (v229 < 0)
  {
    operator delete(v228);
  }

  if (v231 < 0)
  {
    operator delete(v230);
  }

  if (v234 < 0)
  {
    operator delete(v233);
  }

  if (v236 < 0)
  {
    operator delete(v235);
  }

  if (v239 < 0)
  {
    operator delete(v238);
  }

  if (v241 < 0)
  {
    operator delete(v240);
  }

  if (v244 < 0)
  {
    operator delete(v243);
  }

  if (v246 < 0)
  {
    operator delete(v245);
  }

  if (v249 < 0)
  {
    operator delete(v248);
  }

  if (v251 < 0)
  {
    operator delete(v250);
  }

  if (v254 < 0)
  {
    operator delete(v253);
  }

  if (v256 < 0)
  {
    operator delete(v255);
  }

  if (v259 < 0)
  {
    operator delete(v258);
  }

  if (v261 < 0)
  {
    operator delete(v260);
  }

  if (v264 < 0)
  {
    operator delete(v263);
  }

  if (v266 < 0)
  {
    operator delete(v265);
  }

  if (v269 < 0)
  {
    operator delete(v268);
  }

  if (v271 < 0)
  {
    operator delete(v270);
  }

  if (v274 < 0)
  {
    operator delete(v273);
  }

  if (v276 < 0)
  {
    operator delete(v275);
  }

  if (v279 < 0)
  {
    operator delete(v278);
  }

  if (v281 < 0)
  {
    operator delete(v280);
  }

  if (v284 < 0)
  {
    operator delete(v283);
  }

  if (v286 < 0)
  {
    operator delete(v285);
  }

  if (v289 < 0)
  {
    operator delete(v288);
  }

  if (v291 < 0)
  {
    operator delete(v290);
  }

  if (v294 < 0)
  {
    operator delete(v293);
  }

  if (v296 < 0)
  {
    operator delete(v295);
  }

  if (v299 < 0)
  {
    operator delete(v298);
  }

  if (v301 < 0)
  {
    operator delete(v300);
  }

  if (v304 < 0)
  {
    operator delete(v303);
  }

  if (v306 < 0)
  {
    operator delete(v305);
  }

  if (v309 < 0)
  {
    operator delete(v308);
  }

  if (v311 < 0)
  {
    operator delete(v310);
  }

  if (v314 < 0)
  {
    operator delete(v313);
  }

  if (v316 < 0)
  {
    operator delete(v315);
  }

  if (v319 < 0)
  {
    operator delete(v318);
  }

  if (v321 < 0)
  {
    operator delete(v320);
  }

  if (v324 < 0)
  {
    operator delete(v323);
  }

  if (v326 < 0)
  {
    operator delete(v325);
  }

  if (v329 < 0)
  {
    operator delete(v328);
  }

  if (v331 < 0)
  {
    operator delete(v330);
  }

  if (v334 < 0)
  {
    operator delete(v333);
  }

  if (v336 < 0)
  {
    operator delete(v335);
  }

  if (v339 < 0)
  {
    operator delete(v338);
  }

  if (v341 < 0)
  {
    operator delete(v340);
  }

  if (v344 < 0)
  {
    operator delete(v343);
  }

  if (v346 < 0)
  {
    operator delete(v345);
  }

  if (v349 < 0)
  {
    operator delete(v348);
  }

  if (v351 < 0)
  {
    operator delete(v350);
  }

  if (v354 < 0)
  {
    operator delete(v353);
  }

  if (v356 < 0)
  {
    operator delete(v355);
  }

  if (v359 < 0)
  {
    operator delete(v358);
  }

  if (v361 < 0)
  {
    operator delete(v360);
  }

  if (v364 < 0)
  {
    operator delete(v363);
  }

  if (v366 < 0)
  {
    operator delete(v365);
  }

  if (v369 < 0)
  {
    operator delete(v368);
  }

  if (v371 < 0)
  {
    operator delete(v370);
  }

  if (v374 < 0)
  {
    operator delete(v373);
  }

  if (v376 < 0)
  {
    operator delete(v375);
  }

  if (v379 < 0)
  {
    operator delete(v378);
  }

  if (v381 < 0)
  {
    operator delete(v380);
  }

  if (v384 < 0)
  {
    operator delete(v383);
  }

  if (v386 < 0)
  {
    operator delete(v385);
  }

  if (v389 < 0)
  {
    operator delete(v388);
  }

  if (v391 < 0)
  {
    operator delete(v390);
  }

  if (v394 < 0)
  {
    operator delete(v393);
  }

  if (v396 < 0)
  {
    operator delete(v395);
  }

  if (v399 < 0)
  {
    operator delete(v398);
  }

  if (v401 < 0)
  {
    operator delete(v400);
  }

  if (v404 < 0)
  {
    operator delete(v403);
  }

  if (v406 < 0)
  {
    operator delete(v405);
  }

  if (v409 < 0)
  {
    operator delete(v408);
  }

  if (v411 < 0)
  {
    operator delete(v410);
  }

  if (v414 < 0)
  {
    operator delete(v413);
  }

  if (v416 < 0)
  {
    operator delete(v415);
  }

  if (v419 < 0)
  {
    operator delete(v418);
  }

  if (v421 < 0)
  {
    operator delete(v420);
  }

  if (v424 < 0)
  {
    operator delete(v423);
  }

  if (v426 < 0)
  {
    operator delete(v425);
  }

  if (v429 < 0)
  {
    operator delete(v428);
  }

  if (v431 < 0)
  {
    operator delete(v430);
  }

  if (v434 < 0)
  {
    operator delete(v433);
  }

  if (v436 < 0)
  {
    operator delete(v435);
  }

  if (v439 < 0)
  {
    operator delete(v438);
  }

  if (v441 < 0)
  {
    operator delete(v440);
  }

  if (v444 < 0)
  {
    operator delete(v443);
  }

  if (v446 < 0)
  {
    operator delete(v445);
  }

  if (v449 < 0)
  {
    operator delete(v448);
  }

  if (v451 < 0)
  {
    operator delete(v450);
  }

  if (v454 < 0)
  {
    operator delete(v453);
  }

  if (v456 < 0)
  {
    operator delete(v455);
  }

  if (v459 < 0)
  {
    operator delete(v458);
  }

  if (v461 < 0)
  {
    operator delete(v460);
  }

  if (v464 < 0)
  {
    operator delete(v463);
  }

  if (v466 < 0)
  {
    operator delete(v465);
  }

  if (v469 < 0)
  {
    operator delete(v468);
  }

  if (v471 < 0)
  {
    operator delete(v470);
  }

  if (v474 < 0)
  {
    operator delete(v473);
  }

  if (v476 < 0)
  {
    operator delete(v475);
  }

  if (v479 < 0)
  {
    operator delete(v478);
  }

  if (v481 < 0)
  {
    operator delete(v480);
  }

  if (v484 < 0)
  {
    operator delete(v483);
  }

  if (v486 < 0)
  {
    operator delete(v485);
  }

  if (v489 < 0)
  {
    operator delete(v488);
  }

  if (v491 < 0)
  {
    operator delete(v490);
  }

  if (v494 < 0)
  {
    operator delete(v493);
  }

  if (v496 < 0)
  {
    operator delete(v495);
  }

  if (v499 < 0)
  {
    operator delete(v498);
  }

  if (v501 < 0)
  {
    operator delete(v500);
  }

  if (v504 < 0)
  {
    operator delete(v503);
  }

  if (v506 < 0)
  {
    operator delete(v505);
  }

  if (v509 < 0)
  {
    operator delete(v508);
  }

  if (v511 < 0)
  {
    operator delete(v510);
  }

  if (v514 < 0)
  {
    operator delete(v513);
  }

  if (v516 < 0)
  {
    operator delete(v515);
  }

  if (v519 < 0)
  {
    operator delete(v518);
  }

  if (v521 < 0)
  {
    operator delete(v520);
  }

  if (v524 < 0)
  {
    operator delete(v523);
  }

  if (v526 < 0)
  {
    operator delete(v525);
  }

  if (v529 < 0)
  {
    operator delete(v528);
  }

  if (v531 < 0)
  {
    operator delete(v530);
  }

  if (v534 < 0)
  {
    operator delete(v533);
  }

  if (v536 < 0)
  {
    operator delete(v535);
  }

  if (v539 < 0)
  {
    operator delete(v538);
  }

  if (v541 < 0)
  {
    operator delete(v540);
  }

  if (v544 < 0)
  {
    operator delete(v543);
  }

  if (v546 < 0)
  {
    operator delete(v545);
  }

  if (v549 < 0)
  {
    operator delete(v548);
  }

  if (v551 < 0)
  {
    operator delete(v550);
  }

  if (v554 < 0)
  {
    operator delete(v553);
  }

  if (v556 < 0)
  {
    operator delete(v555);
  }

  if (v559 < 0)
  {
    operator delete(v558);
  }

  if (v561 < 0)
  {
    operator delete(v560);
  }

  if (v564 < 0)
  {
    operator delete(v563);
  }

  if (v566 < 0)
  {
    operator delete(v565);
  }

  if (v569 < 0)
  {
    operator delete(v568);
  }

  if (v571 < 0)
  {
    operator delete(v570);
  }

  if (v574 < 0)
  {
    operator delete(v573);
  }

  if (v576 < 0)
  {
    operator delete(v575);
  }

  if (v579 < 0)
  {
    operator delete(v578);
  }

  if (v581 < 0)
  {
    operator delete(v580);
  }

  if (v584 < 0)
  {
    operator delete(v583);
  }

  if (v586 < 0)
  {
    operator delete(v585);
  }

  if (v589 < 0)
  {
    operator delete(v588);
  }

  if (v591 < 0)
  {
    operator delete(v590);
  }

  if (v594 < 0)
  {
    operator delete(v593);
  }

  if (v596 < 0)
  {
    operator delete(v595);
  }

  if (v599 < 0)
  {
    operator delete(v598);
  }

  if (v601 < 0)
  {
    operator delete(v600);
  }

  if (v604 < 0)
  {
    operator delete(v603);
  }

  if (v606 < 0)
  {
    operator delete(v605);
  }

  if (v609 < 0)
  {
    operator delete(v608);
  }

  if (v611 < 0)
  {
    operator delete(v610);
  }

  if (v614 < 0)
  {
    operator delete(v613);
  }

  if (v616 < 0)
  {
    operator delete(v615);
  }

  if (v619 < 0)
  {
    operator delete(v618);
  }

  if (v621 < 0)
  {
    operator delete(v620);
  }

  if (v624 < 0)
  {
    operator delete(v623);
  }

  if (v626 < 0)
  {
    operator delete(v625);
  }

  if (v629 < 0)
  {
    operator delete(v628);
  }

  if (v631 < 0)
  {
    operator delete(v630);
  }

  if (v634 < 0)
  {
    operator delete(v633);
  }

  if (v636 < 0)
  {
    operator delete(v635);
  }

  if (v639 < 0)
  {
    operator delete(v638);
  }

  if (v641 < 0)
  {
    operator delete(v640);
  }

  if (v644 < 0)
  {
    operator delete(v643);
  }

  if (v646 < 0)
  {
    operator delete(v645);
  }

  if (v649 < 0)
  {
    operator delete(v648);
  }

  if (v651 < 0)
  {
    operator delete(v650);
  }

  if (v654 < 0)
  {
    operator delete(v653);
  }

  if (v656 < 0)
  {
    operator delete(v655);
  }

  if (v659 < 0)
  {
    operator delete(v658);
  }

  if (v661 < 0)
  {
    operator delete(v660);
  }

  if (v664 < 0)
  {
    operator delete(v663);
  }

  if (v666 < 0)
  {
    operator delete(v665);
  }

  if (v669 < 0)
  {
    operator delete(v668);
  }

  if (v671 < 0)
  {
    operator delete(v670);
  }

  if (v674 < 0)
  {
    operator delete(v673);
  }

  if (v676 < 0)
  {
    operator delete(v675);
  }

  if (v679 < 0)
  {
    operator delete(v678);
  }

  if (v681 < 0)
  {
    operator delete(v680);
  }

  if (v684 < 0)
  {
    operator delete(v683);
  }

  if (v686 < 0)
  {
    operator delete(v685);
  }

  if (v689 < 0)
  {
    operator delete(v688);
  }

  if (v691 < 0)
  {
    operator delete(v690);
  }

  if (v694 < 0)
  {
    operator delete(v693);
  }

  if (v696 < 0)
  {
    operator delete(v695);
  }

  if (v699 < 0)
  {
    operator delete(v698);
  }

  if (v701 < 0)
  {
    operator delete(v700);
  }

  if (v704 < 0)
  {
    operator delete(v703);
  }

  if (v706 < 0)
  {
    operator delete(v705);
  }

  if (v709 < 0)
  {
    operator delete(v708);
  }

  if (v711 < 0)
  {
    operator delete(v710);
  }

  if (v714 < 0)
  {
    operator delete(v713);
  }

  if (v716 < 0)
  {
    operator delete(v715);
  }

  if (v719 < 0)
  {
    operator delete(v718);
  }

  if (v721 < 0)
  {
    operator delete(v720);
  }

  if (v724 < 0)
  {
    operator delete(v723);
  }

  if (v726 < 0)
  {
    operator delete(v725);
  }

  if (v729 < 0)
  {
    operator delete(v728);
  }

  if (v731 < 0)
  {
    operator delete(v730);
  }

  if (v734 < 0)
  {
    operator delete(v733);
  }

  if (v736 < 0)
  {
    operator delete(v735);
  }

  if (v739 < 0)
  {
    operator delete(v738);
  }

  if (v741 < 0)
  {
    operator delete(v740);
  }

  if (v744 < 0)
  {
    operator delete(v743);
  }

  if (v746 < 0)
  {
    operator delete(v745);
  }

  if (v749 < 0)
  {
    operator delete(v748);
  }

  if (v751 < 0)
  {
    operator delete(v750);
  }

  if (v754 < 0)
  {
    operator delete(v753);
  }

  if (v756 < 0)
  {
    operator delete(v755);
  }

  if (v759 < 0)
  {
    operator delete(v758);
  }

  if (v761 < 0)
  {
    operator delete(v760);
  }

  if (v764 < 0)
  {
    operator delete(v763);
  }

  if (v766 < 0)
  {
    operator delete(v765);
  }

  if (v769 < 0)
  {
    operator delete(v768);
  }

  if (v771 < 0)
  {
    operator delete(v770);
  }

  if (v774 < 0)
  {
    operator delete(v773);
  }

  if (v776 < 0)
  {
    operator delete(v775);
  }

  if (v779 < 0)
  {
    operator delete(v778);
  }

  if (v781 < 0)
  {
    operator delete(v780);
  }

  if (v784 < 0)
  {
    operator delete(v783);
  }

  if (v786 < 0)
  {
    operator delete(v785);
  }

  if (v789 < 0)
  {
    operator delete(v788);
  }

  if (v791 < 0)
  {
    operator delete(v790);
  }

  if (v794 < 0)
  {
    operator delete(v793);
  }

  if (v796 < 0)
  {
    operator delete(v795);
  }

  if (v799 < 0)
  {
    operator delete(v798);
  }

  if (v801 < 0)
  {
    operator delete(v800);
  }

  if (v804 < 0)
  {
    operator delete(v803);
  }

  if (v806 < 0)
  {
    operator delete(v805);
  }

  if (v809 < 0)
  {
    operator delete(v808);
  }

  if (v811 < 0)
  {
    operator delete(v810);
  }

  if (v814 < 0)
  {
    operator delete(v813);
  }

  if (v816 < 0)
  {
    operator delete(v815);
  }

  if (v819 < 0)
  {
    operator delete(v818);
  }

  if (v821 < 0)
  {
    operator delete(v820);
  }

  if (v824 < 0)
  {
    operator delete(v823);
  }

  if (v826 < 0)
  {
    operator delete(v825);
  }

  if (v829 < 0)
  {
    operator delete(v828);
  }

  if (v831 < 0)
  {
    operator delete(v830);
  }

  if (v834 < 0)
  {
    operator delete(v833);
  }

  if (v836 < 0)
  {
    operator delete(v835);
  }

  if (v839 < 0)
  {
    operator delete(v838);
  }

  if (v841 < 0)
  {
    operator delete(v840);
  }

  if (v844 < 0)
  {
    operator delete(v843);
  }

  if (v846 < 0)
  {
    operator delete(v845);
  }

  if (v849 < 0)
  {
    operator delete(v848);
  }

  if (v851 < 0)
  {
    operator delete(v850);
  }

  if (v854 < 0)
  {
    operator delete(v853);
  }

  if (v856 < 0)
  {
    operator delete(v855);
  }

  if (v859 < 0)
  {
    operator delete(v858);
  }

  if (v861 < 0)
  {
    operator delete(v860);
  }

  if (v864 < 0)
  {
    operator delete(v863);
  }

  if (v866 < 0)
  {
    operator delete(v865);
  }

  if (v869 < 0)
  {
    operator delete(v868);
  }

  if (v871 < 0)
  {
    operator delete(v870);
  }

  if (v874 < 0)
  {
    operator delete(v873);
  }

  if (v876 < 0)
  {
    operator delete(v875);
  }

  if (v879 < 0)
  {
    operator delete(v878);
  }

  if (v881 < 0)
  {
    operator delete(v880);
  }

  if (v884 < 0)
  {
    operator delete(v883);
  }

  if (v886 < 0)
  {
    operator delete(v885);
  }

  if (v889 < 0)
  {
    operator delete(v888);
  }

  if (v891 < 0)
  {
    operator delete(v890);
  }

  if (v894 < 0)
  {
    operator delete(v893);
  }

  if (v896 < 0)
  {
    operator delete(v895);
  }

  if (v899 < 0)
  {
    operator delete(v898);
  }

  if (v901 < 0)
  {
    operator delete(v900);
  }

  if (v904 < 0)
  {
    operator delete(v903);
  }

  if (v906 < 0)
  {
    operator delete(v905);
  }

  if (v909 < 0)
  {
    operator delete(v908);
  }

  if (v911 < 0)
  {
    operator delete(v910);
  }

  if (v914 < 0)
  {
    operator delete(v913);
  }

  if (v916 < 0)
  {
    operator delete(v915);
  }

  if (v919 < 0)
  {
    operator delete(v918);
  }

  if (v921 < 0)
  {
    operator delete(v920);
  }

  if (v924 < 0)
  {
    operator delete(v923);
  }

  if (v926 < 0)
  {
    operator delete(v925);
  }

  if (v929 < 0)
  {
    operator delete(v928);
  }

  if (v931 < 0)
  {
    operator delete(v930);
  }

  if (v934 < 0)
  {
    operator delete(v933);
  }

  if (v936 < 0)
  {
    operator delete(v935);
  }

  if (v939 < 0)
  {
    operator delete(v938);
  }

  if (v941 < 0)
  {
    operator delete(v940);
  }

  if (v944 < 0)
  {
    operator delete(v943);
  }

  if (v946 < 0)
  {
    operator delete(v945);
  }

  if (v949 < 0)
  {
    operator delete(v948);
  }

  if (v951 < 0)
  {
    operator delete(v950);
  }

  if (v954 < 0)
  {
    operator delete(v953);
  }

  if (v956 < 0)
  {
    operator delete(v955);
  }

  if (v959 < 0)
  {
    operator delete(v958);
  }

  if (v961 < 0)
  {
    operator delete(v960);
  }

  if (v964 < 0)
  {
    operator delete(v963);
  }

  if (v966 < 0)
  {
    operator delete(v965);
  }

  if (v969 < 0)
  {
    operator delete(v968);
  }

  if (v971 < 0)
  {
    operator delete(v970);
  }

  if (v974 < 0)
  {
    operator delete(v973);
  }

  if (v976 < 0)
  {
    operator delete(v975);
  }

  if (v979 < 0)
  {
    operator delete(v978);
  }

  if (v981 < 0)
  {
    operator delete(v980);
  }

  if (v984 < 0)
  {
    operator delete(v983);
  }

  if (v986 < 0)
  {
    operator delete(v985);
  }

  if (v989 < 0)
  {
    operator delete(v988);
  }

  if (v991 < 0)
  {
    operator delete(v990);
  }

  if (v994 < 0)
  {
    operator delete(v993);
  }

  if (v996 < 0)
  {
    operator delete(v995);
  }

  if (v999 < 0)
  {
    operator delete(v998);
  }

  if (v1001 < 0)
  {
    operator delete(v1000);
  }

  if (v1004 < 0)
  {
    operator delete(v1003);
  }

  if (v1006 < 0)
  {
    operator delete(v1005);
  }

  if (v1009 < 0)
  {
    operator delete(v1008);
  }

  if (v1011 < 0)
  {
    operator delete(v1010);
  }

  if (v1014 < 0)
  {
    operator delete(v1013);
  }

  if (v1016 < 0)
  {
    operator delete(v1015);
  }

  if (v1019 < 0)
  {
    operator delete(v1018);
  }

  if (v1021 < 0)
  {
    operator delete(v1020);
  }

  if (v1024 < 0)
  {
    operator delete(v1023);
  }

  if (v1026 < 0)
  {
    operator delete(v1025);
  }

  if (v1029 < 0)
  {
    operator delete(v1028);
  }

  if (v1031 < 0)
  {
    operator delete(v1030);
  }

  if (v1034 < 0)
  {
    operator delete(v1033);
  }

  if (v1036 < 0)
  {
    operator delete(v1035);
  }

  if (v1039 < 0)
  {
    operator delete(v1038);
  }

  if (v1041 < 0)
  {
    operator delete(v1040);
  }

  if (v1044 < 0)
  {
    operator delete(v1043);
  }

  if (v1046 < 0)
  {
    operator delete(v1045);
  }

  if (v1049 < 0)
  {
    operator delete(v1048);
  }

  if (v1051 < 0)
  {
    operator delete(v1050);
  }

  if (v1054 < 0)
  {
    operator delete(v1053);
  }

  if (v1056 < 0)
  {
    operator delete(v1055);
  }

  if (v1059 < 0)
  {
    operator delete(v1058);
  }

  if (v1061 < 0)
  {
    operator delete(v1060);
  }

  if (v1064 < 0)
  {
    operator delete(v1063);
  }

  if (v1066 < 0)
  {
    operator delete(v1065);
  }

  if (v1069 < 0)
  {
    operator delete(v1068);
  }

  if (v1071 < 0)
  {
    operator delete(v1070);
  }

  if (v1074 < 0)
  {
    operator delete(v1073);
  }

  if (v1076 < 0)
  {
    operator delete(v1075);
  }

  if (v1079 < 0)
  {
    operator delete(v1078);
  }

  if (v1081 < 0)
  {
    operator delete(v1080);
  }

  if (v1084 < 0)
  {
    operator delete(v1083);
  }

  if (v1086 < 0)
  {
    operator delete(v1085);
  }

  if (v1089 < 0)
  {
    operator delete(v1088);
  }

  if (v1091 < 0)
  {
    operator delete(v1090);
  }

  if (v1094 < 0)
  {
    operator delete(v1093);
  }

  if (v1096 < 0)
  {
    operator delete(v1095);
  }

  if (v1099 < 0)
  {
    operator delete(v1098);
  }

  if (v1101 < 0)
  {
    operator delete(v1100);
  }

  if (v1104 < 0)
  {
    operator delete(v1103);
  }

  if (v1106 < 0)
  {
    operator delete(v1105);
  }

  if (v1109 < 0)
  {
    operator delete(v1108);
  }

  if (v1111 < 0)
  {
    operator delete(v1110);
  }

  if (v1114 < 0)
  {
    operator delete(v1113);
  }

  if (v1116 < 0)
  {
    operator delete(v1115);
  }

  if (v1119 < 0)
  {
    operator delete(v1118);
  }

  if (v1121 < 0)
  {
    operator delete(v1120);
  }

  if (v1124 < 0)
  {
    operator delete(v1123);
  }

  if (v1126 < 0)
  {
    operator delete(v1125);
  }

  if (v1129 < 0)
  {
    operator delete(v1128);
  }

  if (v1131 < 0)
  {
    operator delete(v1130);
  }

  if (v1134 < 0)
  {
    operator delete(v1133);
  }

  if (v1136 < 0)
  {
    operator delete(v1135);
  }

  if (v1139 < 0)
  {
    operator delete(v1138);
  }

  if (v1141 < 0)
  {
    operator delete(v1140);
  }

  if (v1144 < 0)
  {
    operator delete(v1143);
  }

  if (v1146 < 0)
  {
    operator delete(v1145);
  }

  if (v1149 < 0)
  {
    operator delete(v1148);
  }

  if (v1151 < 0)
  {
    operator delete(v1150);
  }

  if (v1154 < 0)
  {
    operator delete(v1153);
  }

  if (v1156 < 0)
  {
    operator delete(v1155);
  }

  if (v1159 < 0)
  {
    operator delete(v1158);
  }

  if (v1161 < 0)
  {
    operator delete(v1160);
  }

  if (v1164 < 0)
  {
    operator delete(v1163);
  }

  if (v1166 < 0)
  {
    operator delete(v1165);
  }

  if (v1169 < 0)
  {
    operator delete(v1168);
  }

  if (v1171 < 0)
  {
    operator delete(v1170);
  }

  if (v1174 < 0)
  {
    operator delete(v1173);
  }

  if (v1176 < 0)
  {
    operator delete(v1175);
  }

  if (v1179 < 0)
  {
    operator delete(v1178);
  }

  if (v1181 < 0)
  {
    operator delete(v1180);
  }

  if (v1184 < 0)
  {
    operator delete(v1183);
  }

  if (v1186 < 0)
  {
    operator delete(v1185);
  }

  if (v1189 < 0)
  {
    operator delete(v1188);
  }

  if (v1191 < 0)
  {
    operator delete(v1190);
  }

  if (v1194 < 0)
  {
    operator delete(v1193);
  }

  if (v1196 < 0)
  {
    operator delete(v1195);
  }

  if (v1199 < 0)
  {
    operator delete(v1198);
  }

  if (v1201 < 0)
  {
    operator delete(v1200);
  }

  if (v1204 < 0)
  {
    operator delete(v1203);
  }

  if (v1206 < 0)
  {
    operator delete(v1205);
  }

  if (v1209 < 0)
  {
    operator delete(v1208);
  }

  if (v1211 < 0)
  {
    operator delete(v1210);
  }

  if (v1214 < 0)
  {
    operator delete(v1213);
  }

  if (v1216 < 0)
  {
    operator delete(v1215);
  }

  if (v1219 < 0)
  {
    operator delete(v1218);
  }

  if (v1221 < 0)
  {
    operator delete(v1220);
  }

  if (v1224 < 0)
  {
    operator delete(v1223);
  }

  if (v1226 < 0)
  {
    operator delete(v1225);
  }

  if (v1229 < 0)
  {
    operator delete(v1228);
  }

  if (v1231 < 0)
  {
    operator delete(v1230);
  }

  if (v1234 < 0)
  {
    operator delete(v1233);
  }

  if (v1236 < 0)
  {
    operator delete(v1235);
  }

  if (v1239 < 0)
  {
    operator delete(v1238);
  }

  if (v1241 < 0)
  {
    operator delete(v1240);
  }

  if (v1244 < 0)
  {
    operator delete(v1243);
  }

  if (v1246 < 0)
  {
    operator delete(v1245);
  }

  if (v1249 < 0)
  {
    operator delete(v1248);
  }

  if (v1251 < 0)
  {
    operator delete(v1250);
  }

  if (v1254 < 0)
  {
    operator delete(v1253);
  }
}