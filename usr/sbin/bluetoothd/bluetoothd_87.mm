void sub_10063B850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063B8B0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_10063B93C((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10063B93C(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10063BAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063BB10(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_10063BBDC((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10063BBDC(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10063BD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063BDB0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_10063BE7C((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10063BE7C(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10063C018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063C050(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_10063C11C((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10063C11C(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10063C2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063C2F0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_10063C37C((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10063C37C(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10063C518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063C550(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_10063C61C((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10063C61C(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10063C7B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063C7F0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_10063C8BC((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10063C8BC(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10063CA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063CA90(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void sub_10063CB68(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void sub_10063CC40(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void sub_10063CD18(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void sub_10063CDF0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

uint64_t *sub_10063CEC8(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_10063D2BC(v2);
    operator delete();
  }

  v3 = a1[1];
  if (v3)
  {
    if (*(v3 + 159) < 0)
    {
      operator delete(*(v3 + 136));
    }

    operator delete();
  }

  if (a1[2])
  {
    operator delete();
  }

  if (a1[6])
  {
    operator delete();
  }

  if (a1[7])
  {
    operator delete();
  }

  v4 = a1[3];
  if (v4)
  {
    sub_10047F5B0(v4);
    operator delete();
  }

  if (a1[4])
  {
    operator delete();
  }

  return a1;
}

uint64_t sub_10063CFD4(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = qword_100B6F7A0;
  v6 = qword_100B6F7A0;
  if (!qword_100B6F7A0)
  {
    v7 = *off_100B02FB0;
    v8 = 0;
    v4[3] = _sl_dlopen();
    qword_100B6F7A0 = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_10063D0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10063D100(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100B6F7A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10063D198(uint64_t a1)
{
  v2 = sub_10063D1E8();
  result = dlsym(v2, "tailspin_dump_output_with_options");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100B6F7A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10063D1E8()
{
  v5 = 0;
  v0 = sub_10063CFD4(&v5);
  if (!v0)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *BT::libtailspinLibrary()"];
    [v1 handleFailureInFunction:v4 file:@"AudioLinkManager.mm" lineNumber:90 description:{@"%s", v5}];

    __break(1u);
    goto LABEL_5;
  }

  v1 = v0;
  v2 = v5;
  if (v5)
  {
LABEL_5:
    free(v2);
  }

  return v1;
}

uint64_t sub_10063D2BC(uint64_t a1)
{
  v2 = *(a1 + 328);
  for (i = *(a1 + 336); v2 != i; ++v2)
  {
    if (*v2)
    {
      operator delete();
    }
  }

  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  v4 = *(a1 + 352);
  if (v4)
  {
    *(a1 + 360) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 328);
  if (v5)
  {
    *(a1 + 336) = v5;
    operator delete(v5);
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  return a1;
}

uint64_t sub_10063D370(uint64_t a1, uint64_t a2, __int16 a3, char a4, char a5, int a6)
{
  *a1 = xmmword_1008AA9C0;
  *(a1 + 16) = 0xFFFFFF6A00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 80) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  sub_100007E30((a1 + 168), "2.4G");
  *(a1 + 192) = 0;
  *(a1 + 232) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 150;
  *(a1 + 320) = a4;
  *(a1 + 321) = a5;
  *(a1 + 324) = 0u;
  *(a1 + 340) = 0u;
  *(a1 + 356) = 0u;
  *(a1 + 372) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 412) = a6;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 4294967196;
  *(a1 + 448) = 0;
  sub_100007E30((a1 + 456), "Unknown");
  sub_100007E30((a1 + 480), "Unknown");
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  return a1;
}

void sub_10063D498(_Unwind_Exception *exception_object)
{
  if (*(v1 + 479) < 0)
  {
    operator delete(*(v1 + 456));
  }

  v3 = *(v1 + 352);
  if (v3)
  {
    *(v1 + 360) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 328);
  if (v4)
  {
    *(v1 + 336) = v4;
    operator delete(v4);
  }

  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10063D4EC(uint64_t a1)
{
  *a1 = xmmword_1008AA9C0;
  *(a1 + 16) = 0xFFFFFF6A00000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_100007E30((a1 + 40), "");
  sub_100007E30((a1 + 64), "");
  sub_100007E30((a1 + 88), "");
  sub_100007E30((a1 + 112), "");
  *(a1 + 136) = xmmword_1008AA9E0;
  *(a1 + 152) = 0x7E0000007ELL;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  return a1;
}

void sub_10063D598(_Unwind_Exception *exception_object)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10063D5E4(uint64_t a1, uint64_t a2, __int16 a3, char a4, char a5, char a6)
{
  *a1 = xmmword_1008AA9C0;
  *(a1 + 16) = 0xFFFFFF6A00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  sub_100007E30((a1 + 136), "2.4G");
  *(a1 + 160) = 0;
  *(a1 + 161) = a4;
  *(a1 + 162) = a5;
  *(a1 + 164) = 0;
  *(a1 + 192) = 0;
  *(a1 + 180) = 0;
  *(a1 + 172) = 0;
  *(a1 + 188) = 0;
  *(a1 + 204) = 0xFFFFFF9C00000000;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 229) = 0;
  *(a1 + 237) = a6;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  return a1;
}

void sub_10063D6A4(uint64_t a1, uint64_t *a2)
{
  os_unfair_lock_lock(a1);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = (a1 + 8);
  if (v6 == v5)
  {
    goto LABEL_11;
  }

  do
  {
    v7 = v6[1];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      v9 = *a2;
      if (v8)
      {
        v10 = *v6;
        sub_100117644(v8);
        if (v10 == v9)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v9 = *a2;
    }

    if (!v9)
    {
      goto LABEL_10;
    }

LABEL_8:
    v6 += 2;
  }

  while (v6 != v5);
  v6 = v5;
LABEL_10:
  v5 = *(a1 + 16);
LABEL_11:
  if (v6 == v5)
  {
    v11 = *a2;
    v12 = a2[1];
    if (*(&v11 + 1))
    {
      atomic_fetch_add_explicit((*(&v11 + 1) + 16), 1uLL, memory_order_relaxed);
      v5 = *(a1 + 16);
    }

    v13 = *(a1 + 24);
    if (v5 >= v13)
    {
      v15 = *v4;
      v16 = v5 - *v4;
      v17 = (v16 >> 4) + 1;
      if (v17 >> 60)
      {
        sub_1000C7698();
      }

      v18 = v13 - v15;
      if (v18 >> 3 > v17)
      {
        v17 = v18 >> 3;
      }

      v19 = v18 >= 0x7FFFFFFFFFFFFFF0;
      v20 = 0xFFFFFFFFFFFFFFFLL;
      if (!v19)
      {
        v20 = v17;
      }

      v24[4] = (a1 + 8);
      if (v20)
      {
        sub_10042A610(a1 + 8, v20);
      }

      v21 = (16 * (v16 >> 4));
      *v21 = v11;
      v14 = v21 + 1;
      memcpy(0, v15, v16);
      v22 = *(a1 + 8);
      *(a1 + 8) = 0;
      *(a1 + 16) = v14;
      v23 = *(a1 + 24);
      *(a1 + 24) = 0;
      v24[2] = v22;
      v24[3] = v23;
      v24[0] = v22;
      v24[1] = v22;
      sub_10063D92C(v24);
    }

    else
    {
      *v5 = v11;
      v5[1] = v12;
      v14 = v5 + 2;
    }

    *(a1 + 16) = v14;
    sub_10063D85C((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

void sub_10063D844(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_10063D85C(void **result)
{
  v3 = result[1];
  v4 = *result;
  v5 = result[2] - *result;
  v6 = v3 - *result;
  if (v5 > v6)
  {
    v19 = v1;
    v20 = v2;
    v7 = result;
    v8 = v6 >> 4;
    v18 = result;
    if (v3 != v4)
    {
      sub_10042A610(result, v6 >> 4);
    }

    v9 = 16 * v8;
    v14 = 0;
    v15 = 16 * v8;
    v16 = 16 * v8;
    v17 = 0;
    if (v5 >> 4)
    {
      v10 = (result[1] - v4);
      v11 = (v9 - v10);
      memcpy((v9 - v10), v4, v10);
      v12 = *v7;
      *v7 = v11;
      v7[1] = v9;
      v13 = v7[2];
      v7[2] = 0;
      v16 = v12;
      v17 = v13;
      v14 = v12;
      v15 = v12;
    }

    return sub_10063D92C(&v14);
  }

  return result;
}

void **sub_10063D92C(void **a1)
{
  sub_10063D960(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10063D960(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void sub_10063D9B4(uint64_t a1, uint64_t *a2)
{
  os_unfair_lock_lock(a1);
  v4 = sub_10063DA4C(*(a1 + 8), *(a1 + 16), a2);
  sub_10063DBB0(&v9, v4 + 1, *(a1 + 16), v4);
  v6 = v5;
  v7 = *(a1 + 16);
  if (v7 != v5)
  {
    do
    {
      v8 = *(v7 - 8);
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      v7 -= 16;
    }

    while (v7 != v6);
  }

  *(a1 + 16) = v6;
  sub_10063D85C((a1 + 8));
  os_unfair_lock_unlock(a1);
}

uint64_t *sub_10063DA4C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a1;
  if (a1 != a2)
  {
    while (1)
    {
      v17 = v5[1];
      if (!v17)
      {
        goto LABEL_2;
      }

      v18 = std::__shared_weak_count::lock(v17);
      if (!v18)
      {
        goto LABEL_2;
      }

      v19 = v18;
      if (!*v5)
      {
        break;
      }

      v20 = v5[1];
      if (v20 && (v21 = std::__shared_weak_count::lock(v20)) != 0)
      {
        v22 = *v5;
        v23 = *a3;
        sub_100117644(v21);
        sub_100117644(v19);
        if (v22 == v23)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v24 = *a3;
        sub_100117644(v19);
        if (!v24)
        {
          goto LABEL_2;
        }
      }

      v5 += 2;
      if (v5 == a2)
      {
        return a2;
      }
    }

    sub_100117644(v18);
  }

LABEL_2:
  if (v5 != a2)
  {
    for (i = v5 + 2; ; i += 2)
    {
      if (i == a2)
      {
        return v5;
      }

      v7 = i[1];
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          if (!*i)
          {
            sub_100117644(v8);
            continue;
          }

          v10 = i[1];
          if (v10 && (v11 = std::__shared_weak_count::lock(v10)) != 0)
          {
            v12 = *i;
            v13 = *a3;
            sub_100117644(v11);
            sub_100117644(v9);
            if (v12 == v13)
            {
              continue;
            }
          }

          else
          {
            v14 = *a3;
            sub_100117644(v9);
            if (!v14)
            {
              continue;
            }
          }

          v15 = *i;
          *i = 0;
          i[1] = 0;
          v16 = v5[1];
          *v5 = v15;
          if (v16)
          {
            std::__shared_weak_count::__release_weak(v16);
          }

          v5 += 2;
        }
      }
    }
  }

  return v5;
}

__int128 *sub_10063DBB0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_10063DC1C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_10063DCE8((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10063DCE8(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10063DE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063DEBC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void *sub_10063DF94(uint64_t a1)
{
  v2 = sub_10063D1E8();
  result = dlsym(v2, "tailspin_config_create_with_current_state");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100B6F7B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10063DFE4(uint64_t a1)
{
  v2 = sub_10063D1E8();
  result = dlsym(v2, "tailspin_enabled_set");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100B6F7B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10063E034(uint64_t a1)
{
  v2 = sub_10063D1E8();
  result = dlsym(v2, "tailspin_kdbg_filter_subclass_set");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100B6F7C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10063E084(uint64_t a1)
{
  v2 = sub_10063D1E8();
  result = dlsym(v2, "tailspin_config_apply_sync");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100B6F7C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10063E0D4(uint64_t a1)
{
  v2 = sub_10063D1E8();
  result = dlsym(v2, "tailspin_config_free");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100B6F7D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10063E124(uint64_t a1)
{
  v2 = sub_10063D1E8();
  result = dlsym(v2, "tailspin_config_create_with_default_config");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100B6F7D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10063E174(uint64_t a1)
{
  v2 = sub_100007E30(a1, "Unknown");
  sub_100007E30(v2 + 3, "Unknown");
  sub_100007E30((a1 + 48), "Unknown");
  *(a1 + 72) = -1;
  *(a1 + 80) = -1;
  sub_100007E30((a1 + 88), "Unknown");
  *(a1 + 112) = -1;
  *(a1 + 120) = -1;
  sub_100007E30((a1 + 128), "Unknown");
  *(a1 + 152) = 0;
  return a1;
}

void sub_10063E204(_Unwind_Exception *exception_object)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063E95C(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_10063E9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10063EA08(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10063EA08(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1003A636C(v2);
    operator delete();
  }

  return a1;
}

void sub_10063EA54(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10063EA8C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1003A636C(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10063EAD4(uint64_t result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (a2 - v8 <= 2)
    {
      if ((a2 - v8) < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v77 = *(a2 - 1);
        v78 = *v8;
        if (v77 < v78)
        {
          *v8 = v77;
          *(a2 - 1) = v78;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v82 = v8 + 1;
      v83 = v8[1];
      v84 = v8 + 2;
      v85 = v8[2];
      v86 = *v8;
      if (v83 >= v86)
      {
        if (v85 >= v83)
        {
          goto LABEL_187;
        }

        *v82 = v85;
        *v84 = v83;
        v87 = v8;
        v88 = v8 + 1;
        result = v83;
        if (v85 < v86)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v87 = v8;
        v88 = v8 + 2;
        result = *v8;
        if (v85 >= v83)
        {
          *v8 = v8[1];
          v8[1] = v86;
          v87 = v8 + 1;
          v88 = v8 + 2;
          result = v86;
          if (v85 >= v86)
          {
LABEL_187:
            LODWORD(v83) = v85;
            goto LABEL_188;
          }
        }

LABEL_180:
        *v87 = v85;
        *v88 = v86;
        LODWORD(v83) = result;
      }

LABEL_188:
      v129 = *(a2 - 1);
      if (v129 < v83)
      {
        *v84 = v129;
        *(a2 - 1) = v83;
        v130 = *v84;
        v131 = *v82;
        if (v130 < v131)
        {
          v8[1] = v130;
          v8[2] = v131;
          v132 = *v8;
          if (v130 < v132)
          {
            *v8 = v130;
            v8[1] = v132;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {
      v68 = v8 + 1;
      v69 = v8[1];
      v71 = v8 + 2;
      v70 = v8[2];
      v72 = *v8;
      if (v69 >= v72)
      {
        if (v70 >= v69)
        {
          v75 = *v8;
          LODWORD(v72) = v8[1];
        }

        else
        {
          v73 = v8;
          v74 = v8 + 1;
          *v68 = v8[2];
          *v71 = v69;
          v75 = v70;
          result = v72;
          v76 = v69;
          if (v70 < v72)
          {
            goto LABEL_193;
          }

          v75 = v72;
          LODWORD(v72) = v70;
          LODWORD(v70) = v69;
        }
      }

      else
      {
        if (v70 < v69)
        {
          v73 = v8;
          v74 = v8 + 2;
          v75 = v8[2];
          result = v8[1];
          v76 = *v8;
          goto LABEL_193;
        }

        v73 = v8 + 1;
        v74 = v8 + 2;
        *v8 = v8[1];
        v8[1] = v72;
        v75 = v69;
        result = v70;
        v76 = v72;
        if (v70 >= v72)
        {
          v75 = v69;
        }

        else
        {
LABEL_193:
          *v73 = v70;
          *v74 = v72;
          LODWORD(v72) = result;
          LODWORD(v70) = v76;
        }
      }

      v134 = v8[3];
      if (v134 >= v70)
      {
        LODWORD(v70) = v8[3];
      }

      else
      {
        v8[2] = v134;
        v8[3] = v70;
        if (v134 < v72)
        {
          *v68 = v134;
          *v71 = v72;
          if (v134 < v75)
          {
            *v8 = v134;
            v8[1] = v75;
          }
        }
      }

      v135 = *(a2 - 1);
      if (v135 >= v70)
      {
        return result;
      }

      v8[3] = v135;
      *(a2 - 1) = v70;
      v126 = v8[3];
      v136 = v8[2];
      if (v126 >= v136)
      {
        return result;
      }

      v8[2] = v126;
      v8[3] = v136;
      v137 = v8[1];
      if (v126 >= v137)
      {
        return result;
      }

      v8[1] = v126;
      v8[2] = v137;
LABEL_208:
      v138 = *v8;
      if (v126 < v138)
      {
        *v8 = v126;
        v8[1] = v138;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v89 = v8 + 1;
      v91 = v8 == a2 || v89 == a2;
      if (a4)
      {
        if (!v91)
        {
          v92 = 0;
          v93 = v8;
          do
          {
            v94 = v93[1];
            v95 = *v93;
            v93 = v89;
            if (v94 < v95)
            {
              v96 = v92;
              while (1)
              {
                v8[v96 + 1] = v95;
                if (!v96)
                {
                  break;
                }

                v95 = v8[--v96];
                if (v94 >= v95)
                {
                  v97 = &v8[v96 + 1];
                  goto LABEL_129;
                }
              }

              v97 = v8;
LABEL_129:
              *v97 = v94;
            }

            v89 = v93 + 1;
            ++v92;
          }

          while (v93 + 1 != a2);
        }
      }

      else if (!v91)
      {
        do
        {
          v127 = v7[1];
          v128 = *v7;
          v7 = v89;
          if (v127 < v128)
          {
            do
            {
              *v89 = v128;
              v128 = *(v89 - 2);
              --v89;
            }

            while (v127 < v128);
            *v89 = v127;
          }

          v89 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v98 = (a2 - v8 - 2) >> 1;
      v99 = v98;
      do
      {
        v100 = v99;
        if (v98 >= v99)
        {
          v101 = (2 * v99) | 1;
          v102 = &v8[v101];
          if (2 * v100 + 2 >= v9)
          {
            LOBYTE(v104) = *v102;
          }

          else
          {
            v103 = *v102;
            v104 = v102[1];
            v105 = v103 < v104;
            if (v103 > v104)
            {
              LOBYTE(v104) = *v102;
            }

            if (v105)
            {
              ++v102;
              v101 = 2 * v100 + 2;
            }
          }

          v106 = &v8[v100];
          v107 = v8[v100];
          if (v107 <= v104)
          {
            do
            {
              *v106 = v104;
              v106 = v102;
              if (v98 < v101)
              {
                break;
              }

              v108 = (2 * v101) | 1;
              v102 = &v8[v108];
              v101 = 2 * v101 + 2;
              if (v101 >= v9)
              {
                LOBYTE(v104) = *v102;
                v101 = v108;
              }

              else
              {
                v104 = *v102;
                result = v102[1];
                v109 = v104 < result;
                if (v104 <= result)
                {
                  LOBYTE(v104) = v102[1];
                }

                if (v109)
                {
                  ++v102;
                }

                else
                {
                  v101 = v108;
                }
              }
            }

            while (v107 <= v104);
            *v106 = v107;
          }
        }

        v99 = v100 - 1;
      }

      while (v100);
      while (2)
      {
        v110 = 0;
        LOBYTE(v111) = *v8;
        v112 = v8;
        do
        {
          v113 = &v112[v110];
          v114 = &v112[v110 + 1];
          v115 = (2 * v110) | 1;
          v110 = 2 * v110 + 2;
          if (v110 >= v9)
          {
            v116 = *v114;
            v110 = v115;
          }

          else
          {
            v118 = v113[2];
            v117 = v113 + 2;
            v116 = v118;
            v119 = *(v117 - 1);
            v120 = v119 < v118;
            if (v119 > v118)
            {
              v116 = *(v117 - 1);
            }

            if (v120)
            {
              v114 = v117;
            }

            else
            {
              v110 = v115;
            }
          }

          *v112 = v116;
          v112 = v114;
        }

        while (v110 <= ((v9 - 2) >> 1));
        if (v114 == --a2)
        {
LABEL_169:
          *v114 = v111;
        }

        else
        {
          *v114 = *a2;
          *a2 = v111;
          v121 = v114 - v8 - 1;
          if (v114 - v8 + 1 >= 2)
          {
            v122 = &v8[v121 >> 1];
            v123 = *v122;
            v111 = *v114;
            if (v123 < v111)
            {
              v124 = v121 >> 1;
              do
              {
                *v114 = v123;
                v114 = v122;
                if (!v124)
                {
                  break;
                }

                v125 = v124 - 1;
                v124 = (v124 - 1) >> 1;
                v122 = &v8[v125 >> 1];
                v123 = *v122;
              }

              while (v123 < v111);
              goto LABEL_169;
            }
          }
        }

        v105 = v9-- <= 2;
        if (v105)
        {
          return result;
        }

        continue;
      }
    }

    v10 = &v8[v9 >> 1];
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = *v10;
      v13 = *v8;
      if (v12 >= v13)
      {
        if (v11 < v12)
        {
          *v10 = v11;
          *(a2 - 1) = v12;
          v16 = *v10;
          v17 = *v8;
          if (v16 < v17)
          {
            *v8 = v16;
            *v10 = v17;
          }
        }
      }

      else
      {
        if (v11 < v12)
        {
          *v8 = v11;
          goto LABEL_27;
        }

        *v8 = v12;
        *v10 = v13;
        v20 = *(a2 - 1);
        if (v20 < v13)
        {
          *v10 = v20;
LABEL_27:
          *(a2 - 1) = v13;
        }
      }

      v21 = v9 >> 1;
      v22 = &v8[v9 >> 1];
      v25 = *(v22 - 1);
      v23 = v22 - 1;
      v24 = v25;
      v26 = v8[1];
      v27 = *(a2 - 2);
      if (v25 >= v26)
      {
        if (v27 < v24)
        {
          *v23 = v27;
          *(a2 - 2) = v24;
          v28 = *v23;
          v29 = v8[1];
          if (v28 < v29)
          {
            v8[1] = v28;
            *v23 = v29;
          }
        }
      }

      else
      {
        if (v27 < v24)
        {
          v8[1] = v27;
          goto LABEL_39;
        }

        v8[1] = v24;
        *v23 = v26;
        v31 = *(a2 - 2);
        if (v31 < v26)
        {
          *v23 = v31;
LABEL_39:
          *(a2 - 2) = v26;
        }
      }

      v32 = &v8[v21];
      v35 = v32[1];
      v33 = v32 + 1;
      v34 = v35;
      v36 = v8[2];
      v37 = *(a2 - 3);
      if (v35 >= v36)
      {
        if (v37 < v34)
        {
          *v33 = v37;
          *(a2 - 3) = v34;
          v38 = *v33;
          v39 = v8[2];
          if (v38 < v39)
          {
            v8[2] = v38;
            *v33 = v39;
          }
        }
      }

      else
      {
        if (v37 < v34)
        {
          v8[2] = v37;
          goto LABEL_48;
        }

        v8[2] = v34;
        *v33 = v36;
        v40 = *(a2 - 3);
        if (v40 < v36)
        {
          *v33 = v40;
LABEL_48:
          *(a2 - 3) = v36;
        }
      }

      v41 = *v10;
      v42 = *v23;
      v43 = *v33;
      if (v41 >= v42)
      {
        if (v43 >= v41)
        {
          goto LABEL_56;
        }

        *v10 = v43;
        *v33 = v41;
        v33 = v10;
        LOBYTE(v41) = v42;
        if (v43 >= v42)
        {
          LOBYTE(v41) = v43;
          goto LABEL_56;
        }
      }

      else if (v43 >= v41)
      {
        *v23 = v41;
        *v10 = v42;
        v23 = v10;
        LOBYTE(v41) = v43;
        if (v43 >= v42)
        {
          LOBYTE(v41) = v42;
LABEL_56:
          v44 = *v8;
          *v8 = v41;
          *v10 = v44;
          goto LABEL_57;
        }
      }

      *v23 = v43;
      *v33 = v42;
      goto LABEL_56;
    }

    v14 = *v8;
    v15 = *v10;
    if (v14 >= v15)
    {
      if (v11 < v14)
      {
        *v8 = v11;
        *(a2 - 1) = v14;
        v18 = *v8;
        v19 = *v10;
        if (v18 < v19)
        {
          *v10 = v18;
          *v8 = v19;
        }
      }

      goto LABEL_57;
    }

    if (v11 >= v14)
    {
      *v10 = v14;
      *v8 = v15;
      v30 = *(a2 - 1);
      if (v30 >= v15)
      {
        goto LABEL_57;
      }

      *v8 = v30;
    }

    else
    {
      *v10 = v11;
    }

    *(a2 - 1) = v15;
LABEL_57:
    --a3;
    v45 = *v8;
    if ((a4 & 1) != 0 || *(v8 - 1) < v45)
    {
      v46 = 0;
      do
      {
        v47 = v8[++v46];
      }

      while (v47 < v45);
      v48 = &v8[v46];
      v49 = a2;
      if (v46 == 1)
      {
        v49 = a2;
        do
        {
          if (v48 >= v49)
          {
            break;
          }

          v51 = *--v49;
        }

        while (v51 >= v45);
      }

      else
      {
        do
        {
          v50 = *--v49;
        }

        while (v50 >= v45);
      }

      if (v48 >= v49)
      {
        v57 = v48 - 1;
      }

      else
      {
        v52 = *v49;
        v53 = &v8[v46];
        v54 = v49;
        do
        {
          *v53 = v52;
          *v54 = v47;
          do
          {
            v55 = *++v53;
            LOBYTE(v47) = v55;
          }

          while (v55 < v45);
          do
          {
            v56 = *--v54;
            v52 = v56;
          }

          while (v56 >= v45);
        }

        while (v53 < v54);
        v57 = v53 - 1;
      }

      if (v57 != v8)
      {
        *v8 = *v57;
      }

      *v57 = v45;
      if (v48 < v49)
      {
        goto LABEL_80;
      }

      v58 = sub_10063F480(v8, v57);
      v8 = v57 + 1;
      result = sub_10063F480(v57 + 1, a2);
      if (result)
      {
        a2 = v57;
        if (v58)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v58)
      {
LABEL_80:
        result = sub_10063EAD4(v7, v57, a3, a4 & 1);
        a4 = 0;
        v8 = v57 + 1;
      }
    }

    else
    {
      if (v45 >= *(a2 - 1))
      {
        v60 = (v8 + 1);
        do
        {
          v8 = v60;
          if (v60 >= a2)
          {
            break;
          }

          ++v60;
        }

        while (v45 >= *v8);
      }

      else
      {
        do
        {
          v59 = *++v8;
        }

        while (v45 >= v59);
      }

      v61 = a2;
      if (v8 < a2)
      {
        v61 = a2;
        do
        {
          v62 = *--v61;
        }

        while (v45 < v62);
      }

      if (v8 < v61)
      {
        v63 = *v8;
        v64 = *v61;
        do
        {
          *v8 = v64;
          *v61 = v63;
          do
          {
            v65 = *++v8;
            v63 = v65;
          }

          while (v45 >= v65);
          do
          {
            v66 = *--v61;
            v64 = v66;
          }

          while (v45 < v66);
        }

        while (v8 < v61);
      }

      v67 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v67;
      }

      a4 = 0;
      *v67 = v45;
    }
  }

  v79 = v8[1];
  v80 = *v8;
  v81 = *(a2 - 1);
  if (v79 >= v80)
  {
    if (v81 >= v79)
    {
      return result;
    }

    v8[1] = v81;
    *(a2 - 1) = v79;
    v126 = v8[1];
    goto LABEL_208;
  }

  if (v81 >= v79)
  {
    *v8 = v79;
    v8[1] = v80;
    v133 = *(a2 - 1);
    if (v133 >= v80)
    {
      return result;
    }

    v8[1] = v133;
  }

  else
  {
    *v8 = v81;
  }

  *(a2 - 1) = v80;
  return result;
}

BOOL sub_10063F480(char *a1, char *a2)
{
  v2 = a2 - a1;
  if (a2 - a1 > 2)
  {
    if (v2 == 3)
    {
      v16 = a1[1];
      v17 = *a1;
      v18 = *(a2 - 1);
      if (v16 < v17)
      {
        if (v18 >= v16)
        {
          *a1 = v16;
          a1[1] = v17;
          v45 = *(a2 - 1);
          if (v45 >= v17)
          {
            return 1;
          }

          a1[1] = v45;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v17;
        return 1;
      }

      if (v18 >= v16)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v16;
      v33 = a1[1];
LABEL_68:
      v50 = *a1;
      if (v33 < v50)
      {
        *a1 = v33;
        a1[1] = v50;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= v8)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = a1[2];
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v46 = a1[3];
          if (v46 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v46;
            a1[3] = v6;
            if (v46 < v8)
            {
              *v4 = v46;
              *v7 = v8;
              if (v46 < v11)
              {
                *a1 = v46;
                a1[1] = v11;
              }
            }
          }

          v47 = *(a2 - 1);
          if (v47 >= v6)
          {
            return 1;
          }

          a1[3] = v47;
          *(a2 - 1) = v6;
          v33 = a1[3];
          v48 = a1[2];
          if (v33 >= v48)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v48;
          v49 = a1[1];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v49;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = a1[1];
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= v29)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v41 = *(a2 - 1);
        if (v41 < v26)
        {
          *v27 = v41;
          *(a2 - 1) = v26;
          v42 = *v27;
          v43 = *v25;
          if (v42 < v43)
          {
            a1[1] = v42;
            a1[2] = v43;
            v44 = *a1;
            if (v42 < v44)
            {
              *a1 = v42;
              a1[1] = v44;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if ((a2 - a1) < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < v15)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= v22)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  v36 = 0;
  while (1)
  {
    v37 = *v34;
    v38 = *v20;
    if (v37 < v38)
    {
      v39 = v35;
      while (1)
      {
        a1[v39 + 3] = v38;
        if (v39 == -2)
        {
          break;
        }

        v38 = a1[v39-- + 1];
        if (v37 >= v38)
        {
          v40 = &a1[v39 + 3];
          goto LABEL_37;
        }
      }

      v40 = a1;
LABEL_37:
      *v40 = v37;
      if (++v36 == 8)
      {
        return v34 + 1 == a2;
      }
    }

    v20 = v34;
    ++v35;
    if (++v34 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_10063F91C(uint64_t a1)
{
  v2 = sub_10032F49C(a1, 22);
  *v2 = off_100B03260;
  *(v2 + 256) = off_100B03340;
  *(v2 + 264) = off_100B03390;
  *(v2 + 272) = off_100B033C0;
  sub_100044BBC((v2 + 280));
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = a1 + 376;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0;
  sub_100044BBC((a1 + 560));
  *(a1 + 640) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 649) = 0;
  *(a1 + 653) = 0;
  for (i = 1; i != 3; ++i)
  {
    v5 = i;
    v6 = &v5;
    *(sub_1000DB17C(a1 + 368, &v5, &unk_1008A9BD0, &v6) + 8) = 0;
  }

  return a1;
}

void sub_10063FA64(_Unwind_Exception *a1)
{
  v4 = v1[50];
  if (v4)
  {
    v1[51] = v4;
    operator delete(v4);
  }

  sub_10000CEDC((v1 + 46), *v2);
  v5 = v1[43];
  if (v5)
  {
    v1[44] = v5;
    operator delete(v5);
  }

  sub_10007A068((v1 + 35));
  sub_10032F580(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10063FAD8(uint64_t a1)
{
  *(a1 + 424) = 0;
  *(a1 + 536) = 0;
  *(a1 + 552) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0;
  *(a1 + 486) = 0;
  if (qword_100B508C0 != -1)
  {
    sub_100854F74();
  }

  v2 = sub_1007BF384(off_100B508B8, a1 + 272);
  v4 = sub_10000C7D0(v2, v3);
  *(a1 + 655) = sub_10009BF08(v4) > 1;
  return 0;
}

BOOL sub_10063FB54()
{
  v3 = 0;
  sub_1000216B4(&v3);
  if (sub_1002E9AF0(off_100B033D8) || sub_1002CE244(&unk_100B03488))
  {
    v0 = 1;
  }

  else
  {
    sub_1002DB89C(off_100B034B8);
    v0 = v2 != 0;
  }

  sub_10002249C(&v3);
  return v0;
}

BOOL sub_10063FBE0()
{
  v2 = 0;
  sub_1000216B4(&v2);
  sub_1002DB960(off_100B034B8);
  sub_1002CE3E4(&unk_100B03488);
  v0 = sub_1002E9EE4() != 0;
  sub_10002249C(&v2);
  return v0;
}

uint64_t sub_10063FC58(uint64_t a1)
{
  v3 = *(a1 + 344);
  v2 = *(a1 + 352);
  if (v3 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        v5 = *(v4 + 80);
        if (v5)
        {
          *(v4 + 88) = v5;
          operator delete(v5);
        }

        operator delete();
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *(a1 + 344);
  }

  *(a1 + 352) = v3;
  v6 = *(a1 + 624);
  v7 = *(a1 + 632);
  if (v6 != v7)
  {
    do
    {
      if (*v6)
      {
        sub_100507E2C(*v6);
        operator delete();
      }

      ++v6;
    }

    while (v6 != v7);
    v6 = *(a1 + 624);
  }

  *(a1 + 632) = v6;
  sub_10000CEDC(a1 + 368, *(a1 + 376));
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = a1 + 376;
  v8 = *(a1 + 536);
  if (v8)
  {
    v8[3] = 0;
    sub_10064A338(v8);
    operator delete();
  }

  *(a1 + 536) = 0;
  sub_10063FD78(a1);
  return 0;
}

void sub_10063FD78(uint64_t a1)
{
  v2 = *(a1 + 552);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 552));
    *(a1 + 552) = 0;
  }
}

void sub_10063FDB0(os_unfair_lock_s *a1, uint64_t a2)
{
  v5 = *&a1[86]._os_unfair_lock_opaque;
  v4 = *&a1[88]._os_unfair_lock_opaque;
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        return;
      }
    }
  }

  if (v5 != v4)
  {
    v18 = *(a2 + 20);
    *buf = &v18;
    if ((sub_1000DB17C(&a1[92], &v18, &unk_1008A9BD0, buf)[4] & 0x80000000) != 0)
    {
      v18 = *(a2 + 20);
      *buf = &v18;
      if ((sub_1000DB17C(&a1[92], &v18, &unk_1008A9BD0, buf)[4] & 0x80000000) == 0)
      {
        v7 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_FAULT))
        {
          sub_100854F88(v7, v8, v9, v10, v11, v12, v13, v14);
        }
      }
    }

    else
    {
      v18 = *(a2 + 20);
      *buf = &v18;
      v6 = sub_1000DB17C(&a1[92], &v18, &unk_1008A9BD0, buf);
      --*(v6 + 8);
      *buf = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_100642D58;
      v22 = &unk_100B034D0;
      v23 = a1;
      sub_100642C8C(a1 + 98, buf);
    }

    v15 = *&a1[88]._os_unfair_lock_opaque;
    v16 = v15 - (v5 + 8);
    if (v15 != v5 + 8)
    {
      memmove(v5, v5 + 8, v15 - (v5 + 8));
    }

    *&a1[88]._os_unfair_lock_opaque = &v5[v16];
    v17 = *(a2 + 80);
    if (v17)
    {
      *(a2 + 88) = v17;
      operator delete(v17);
    }

    operator delete();
  }
}

uint64_t sub_100640024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10067DF0C(a2, a3);
  if (result)
  {
    operator new();
  }

  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1006400F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10067E020(a2, a3);
  if (result)
  {
    operator new();
  }

  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_1006401BC(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 280);
  v5 = *(a1 + 344);
  v4 = *(a1 + 352);
  if (v5 != v4)
  {
    while (1)
    {
      v6 = *v5;
      if (*(*v5 + 40) == a2)
      {
        break;
      }

      if (*(v6 + 56) == a2)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (++v5 == v4)
      {
        return sub_1000088CC(v11);
      }
    }

    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
    {
      sub_100855014(v15, v6);
    }

    sub_10067E134(v6);
    if (*(v6 + 56) == a2)
    {
LABEL_8:
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
      {
        sub_100855074(v14, v6);
      }

      sub_10067E134(v6);
    }

    v10 = 0;
    sub_1000216B4(&v10);
    v7 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v6 + 8);
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Disconnect stalled device %@", buf, 0xCu);
    }

    sub_1002EA804(*v6);
    sub_100022214(&v10);
    sub_10002249C(&v10);
    v4 = *(a1 + 352);
    goto LABEL_14;
  }

  return sub_1000088CC(v11);
}

void sub_100640390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006403C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 280);
  for (i = *(a1 + 344); i != *(a1 + 352); ++i)
  {
    v8 = *i;
    if (**i == a2)
    {
      v9 = *(v8 + 1);
      if (qword_100B508D0 != -1)
      {
        sub_1008550D4();
      }

      v10 = off_100B508C8;
      sub_100007E30(__p, "IsPrimaryHearingAid");
      v11 = sub_10004EB40(v10, v9, __p);
      v12 = v11;
      if (v23 < 0)
      {
        operator delete(__p[0]);
        if (!v12)
        {
          goto LABEL_14;
        }
      }

      else if (!v11)
      {
        goto LABEL_14;
      }

      if (qword_100B508D0 != -1)
      {
        sub_1008550D4();
      }

      sub_10078380C(off_100B508C8, v9, @"IsPrimaryHearingAid");
LABEL_14:
      v13 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v14 = "No";
        if (a4)
        {
          v14 = "Yes";
        }

        *buf = 138412546;
        v26 = v9;
        v27 = 2080;
        v28 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Disconnected from device %@ wakeUp %s", buf, 0x16u);
      }

      for (j = *(a1 + 344); j != *(a1 + 352); ++j)
      {
        v16 = *j;
        if (*j != v8)
        {
          goto LABEL_23;
        }
      }

      v16 = 0;
LABEL_23:
      v17 = v8[12];
      if (v8[6] == 2)
      {
        if (v16)
        {
          sub_1003A58A4(**(a1 + 536), 0);
        }

        sub_10063FD78(a1);
      }

      if (v17 == 3)
      {
        if (qword_100B508D0 != -1)
        {
          sub_1008550D4();
        }

        v18 = sub_100046458(off_100B508C8, v9, 0);
        if (qword_100B50910 != -1)
        {
          sub_1008550FC();
        }

        sub_1005BC3E8(off_100B50908, 0, v18);
      }

      sub_10063FDB0(a1, v8);
      if (v16 && v17 != 3 && v16[8] >= 7 && v16[12] == 3)
      {
        v19 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(v16 + 1);
          *buf = 138412290;
          v26 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Notify session is ready for device %@", buf, 0xCu);
        }

        sub_100640700(a1);
      }

      return sub_1000088CC(v24);
    }
  }

  return sub_1000088CC(v24);
}

uint64_t sub_100640700(uint64_t result)
{
  v1 = result;
  v2 = *(result + 344);
  v3 = *(result + 352);
  if (v2 == v3)
  {
    goto LABEL_8;
  }

  v4 = 1;
  do
  {
    v5 = *(*v2 + 32) == 8 && *(*v2 + 48) == 3;
    v4 &= v5;
    v2 += 8;
  }

  while (v2 != v3);
  if (v4)
  {
LABEL_8:
    sub_1003A3254(**(result + 536));
    v8.tv_sec = 0;
    *&v8.tv_usec = 0;
    result = gettimeofday(&v8, 0);
    *(v1 + 448) = v8.tv_usec / 1000.0 + (1000 * v8.tv_sec);
    for (i = *(v1 + 344); i != *(v1 + 352); ++i)
    {
      v7 = *i;
      result = sub_100641828(v1, v7, 1);
    }
  }

  return result;
}

uint64_t sub_1006407DC(void *a1, uint64_t a2, unsigned int a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, (a1 + 35));
  for (i = a1[43]; i != a1[44]; ++i)
  {
    v7 = *i;
    if (**i == a2)
    {
      v8 = qword_100BCEA90;
      v9 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        v10 = *(v7 + 1);
        *buf = 134218242;
        v14 = a3 * 1.25;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Connection updated (%fms) with device %@", buf, 0x16u);
      }

      if (v7[8] < 7)
      {
        sub_1006400F0(v9, v7, 0);
      }

      else if (*(*(a1[67] + 8) + 1) == a3)
      {
        sub_1006400F0(v9, v7, 3);
        sub_100640700(a1);
      }

      else
      {
        sub_1006400F0(v9, v7, 1);
        sub_100640980(a1, v7);
      }

      return sub_1000088CC(v12);
    }
  }

  return sub_1000088CC(v12);
}

_BYTE *sub_100640980(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 3)
  {
    v4 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_FAULT))
    {
      sub_100855124(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v14 = 0;
  sub_1000216B4(&v14);
  v12 = sub_1002EA7BC(*a2, *(*(*(a1 + 536) + 8) + 1), *(a2 + 24));
  sub_1006400F0(v12, a2, 2);
  return sub_10002249C(&v14);
}

uint64_t sub_100640A34(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 280);
  for (i = *(a1 + 344); i != *(a1 + 352); ++i)
  {
    v5 = *i;
    if (**i == a2)
    {
      v6 = qword_100BCEA90;
      v7 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        v8 = v5[1];
        *buf = 138412290;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Encryption refreshed with device %@", buf, 0xCu);
      }

      if (*(v5 + 8) == 4)
      {
        sub_100640024(v7, v5, 6);
        if (sub_1003A5564(**(a1 + 536)))
        {
          sub_100640B80(a1, v5);
        }
      }

      return sub_1000088CC(v10);
    }
  }

  return sub_1000088CC(v10);
}

_BYTE *sub_100640B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C7D0(a1, a2);
  v6 = sub_100410864(v4, v5);
  v28 = 0;
  sub_1000216B4(&v28);
  sub_1002EA948(*a2);
  sub_100022214(&v28);
  sub_1006423B0(a1, a2);
  v8 = *(a2 + 32);
  if ((v8 - 4) >= 2)
  {
    if (v8 != 6)
    {
      if (v8 == 3)
      {
        sub_100642544(v7, a2);
        return sub_10002249C(&v28);
      }

      v9 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_FAULT))
      {
        sub_10085519C(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    if (*(a2 + 112) == 1)
    {
      sub_10064264C(a1, a2);
    }

    else
    {
      v17 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a2 + 8);
        *buf = 138412290;
        v30 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending 'start stream' command to device %@", buf, 0xCu);
      }

      v19 = *(a2 + 24);
      sub_1000618AC(&v28);
      if (v19 == 2)
      {
        v20 = 2500;
      }

      else
      {
        v20 = 1250;
      }

      if (*(a2 + 18))
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      v22 = sub_1002EA154(*a2, (*(a2 + 72) >> 1) & 1, v19, v21, v6 ^ 1u);
      if (v22)
      {
        v23 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
        {
          sub_100855214(v22, v23);
        }
      }

      v24 = sub_1002EA7EC(*a2, *(*(*(a1 + 536) + 8) + 1), *(a2 + 24));
      v25 = sub_100022214(&v28);
      *(a1 + 432) = 0;
      if (*(a2 + 48) != 2)
      {
        if (v24)
        {
          v25 = sub_1006400F0(v25, a2, 3);
        }

        else
        {
          sub_1006400F0(v25, a2, 1);
          v25 = sub_100640980(a1, a2);
        }
      }

      if ((*(a2 + 72) & 0x20) != 0)
      {
        sub_100640024(v25, a2, 7);
      }

      else
      {
        sub_100640024(v25, a2, 8);
        sub_100640700(a1);
      }

      if (qword_100B508D0 != -1)
      {
        sub_1008550D4();
      }

      v26 = sub_100046458(off_100B508C8, *(a2 + 8), 0);
      if (qword_100B50910 != -1)
      {
        sub_1008550FC();
      }

      sub_1005BC3E8(off_100B50908, 1, v26);
    }
  }

  return sub_10002249C(&v28);
}

uint64_t sub_100640E64(os_unfair_lock_s *a1, uint64_t a2)
{
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, &a1[70]);
  for (i = *&a1[86]._os_unfair_lock_opaque; i != *&a1[88]._os_unfair_lock_opaque; ++i)
  {
    v5 = *i;
    if (*(*i + 104) == a2)
    {
      if (qword_100B508D0 != -1)
      {
        sub_1008550D4();
      }

      v6 = off_100B508C8;
      v7 = (v5 + 8);
      v8 = *(v5 + 8);
      sub_100007E30(v21, "IsMFiAuthenticated");
      if (sub_10004EB40(v6, v8, v21))
      {
        v9 = 1;
      }

      else
      {
        if (qword_100B508D0 != -1)
        {
          sub_1008550D4();
        }

        v10 = off_100B508C8;
        v11 = *v7;
        sub_100007E30(v19, "IsMFiAuthenticated_CertClass0B");
        if (sub_10004EB40(v10, v11, v19))
        {
          v9 = 1;
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_1008550D4();
          }

          v12 = off_100B508C8;
          v13 = *v7;
          sub_100007E30(__p, "IsMFiAuthenticated_Ce");
          v9 = sub_10004EB40(v12, v13, __p);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (v20 < 0)
        {
          operator delete(v19[0]);
        }
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      v14 = qword_100BCEA90;
      if (v9)
      {
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *v7;
          *buf = 141558275;
          v25 = 1752392040;
          v26 = 2113;
          v27 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "MFi authentication succeeded for device %{private, mask.hash}@", buf, 0x16u);
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
        {
          sub_10085528C((v5 + 8));
        }

        sub_10063FDB0(a1, v5);
      }

      return sub_1000088CC(v23);
    }
  }

  return sub_1000088CC(v23);
}

void sub_1006410E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_1000088CC(&a28);
  _Unwind_Resume(a1);
}

void sub_100641168(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 32) >= 3)
  {
    v4 = qword_100BCEA90;
    if (!*(a2 + 120))
    {
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a2 + 8);
        v7 = 138412546;
        v8 = v6;
        v9 = 1024;
        v10 = a3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'set volume' command to device %@ %u", &v7, 0x12u);
      }

      LOBYTE(v7) = 0;
      sub_1000216B4(&v7);
      sub_1002EA2E0(*a2, a3);
      sub_100022214(&v7);
      *(a2 + 128) = a3;
      operator new();
    }

    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Volume hysteresis timer active", &v7, 2u);
    }
  }
}

uint64_t sub_100641344(uint64_t **a1, uint64_t a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, (a1 + 35));
  v5 = a1[43];
  for (i = a1[44]; v5 != i; ++v5)
  {
    v6 = *v5;
    if (*(*v5 + 120) == a2)
    {
      *(v6 + 120) = 0;
      v10 = 0.0;
      v7 = sub_1003A3484(*a1[67], &v10);
      if (v7)
      {
        v8 = (v10 * 255.0);
        if (*(v6 + 128) != v8)
        {
          sub_100641168(v7, v6, v8);
        }
      }

      i = a1[44];
    }
  }

  return sub_1000088CC(v11);
}

void sub_100641408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100641420(uint64_t **a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, (a1 + 35));
  v4 = a1[67];
  if (v4 && *v4 == a2)
  {
    v5 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received 'stream will start' notification from HAL", v9, 2u);
    }

    v7 = a1[43];
    v6 = a1[44];
    while (v7 != v6)
    {
      if (*(*v7 + 32) >= 3)
      {
        sub_100640B80(a1, *v7);
        v6 = a1[44];
      }

      ++v7;
    }

    sub_1006017D4(a1[67], a1);
    sub_1003A3604(a2, 3);
  }

  return sub_1000088CC(v10);
}

void sub_10064150C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100641534(uint64_t a1, uint64_t a2)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 280);
  v4 = *(a1 + 536);
  if (v4 && *v4 == a2)
  {
    v5 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.tv_sec) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received 'stream did stop' notification from HAL", &buf, 2u);
      v4 = *(a1 + 536);
    }

    v4[3] = 0;
    v20 = 0;
    sub_1000216B4(&v20);
    sub_1002EA7B4();
    sub_100022214(&v20);
    buf.tv_sec = 0;
    *&buf.tv_usec = 0;
    v6 = gettimeofday(&buf, 0);
    *(a1 + 456) = buf.tv_usec / 1000.0 + (1000 * buf.tv_sec);
    v9 = *(a1 + 344);
    for (i = *(a1 + 352); v9 != i; ++v9)
    {
      v10 = *v9;
      if (*(*v9 + 32) >= 7)
      {
        v11 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(v10 + 8);
          LODWORD(buf.tv_sec) = 138412290;
          *(&buf.tv_sec + 4) = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending 'stop stream' command to device %@", &buf, 0xCu);
        }

        sub_1000618AC(&v20);
        sub_1002EA244(*v10);
        v13 = sub_100022214(&v20);
        sub_100640024(v13, v10, 6);
        sub_100641828(a1, v10, 0);
        if (qword_100B508D0 != -1)
        {
          sub_1008550D4();
        }

        v14 = off_100B508C8;
        v15 = *(v10 + 8);
        v16 = sub_100046458(v14, v15, 0);

        if (qword_100B50910 != -1)
        {
          sub_1008550FC();
        }

        v6 = sub_1005BC3E8(off_100B50908, 0, v16);
        i = *(a1 + 352);
      }
    }

    v17 = sub_10000C7D0(v6, v7);
    if (sub_10009BF08(v17) == 1)
    {
      sub_100641B04(a1, v18);
    }

    sub_10063FD78(a1);
    sub_1003A3604(a2, 0);
    sub_10002249C(&v20);
  }

  return sub_1000088CC(v21);
}

void sub_1006417E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_100641828(uint64_t a1, unsigned __int16 **a2, uint64_t a3)
{
  v31 = 0;
  sub_1000216B4(&v31);
  v6 = *a2;
  if (sub_1000ABD24(v6))
  {
    v7 = *v6;
    v29 = *(v6 + 49);
    v30 = *(v6 + 53);
    sub_100022214(&v31);
    v8 = qword_100BCEA90;
    v9 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      v11 = "Disabling";
      if (a3)
      {
        v11 = "Enabling";
      }

      *buf = 136315394;
      v33 = v11;
      v34 = 1024;
      v35 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s LEA Link Quality Mode for handle 0x%x", buf, 0x12u);
    }

    v12 = sub_10000C7D0(v9, v10);
    v13 = (*(*v12 + 544))(v12, a3, 1, v6);
    v15 = sub_10000C7D0(v13, v14);
    v16 = (*(*v15 + 2280))(v15);
    if (v16)
    {
      v18 = sub_10000C7D0(v16, v17);
      v16 = (*(*v18 + 2320))(v18, &v29, a3, 1, 2066, 0, 0, 0, 0);
    }

    v19 = sub_10000C7D0(v16, v17);
    v20 = sub_10009BF08(v19);
    if (v20 == 1)
    {
      v22 = (a1 + 464);
      if (a3)
      {
        *(a1 + 528) = 0;
        *(a1 + 496) = 0u;
        *(a1 + 512) = 0u;
        *v22 = 0u;
        *(a1 + 480) = 0u;
        *(a1 + 464) = -1;
        *(a1 + 484) = -1;
      }

      else if (*v22 == -1)
      {
        *v22 = v7;
      }

      else
      {
        *(a1 + 484) = v7;
      }
    }

    v23 = sub_10000C7D0(v20, v21);
    if (*(v23 + 800) >> 3 >= 0x271u)
    {
      v25 = sub_10000C7D0(v23, v24);
      if (*(v25 + 800) >> 4 <= 0x176u)
      {
        v27 = sub_10000C7D0(v25, v26);
        (*(*v27 + 1048))(v27, v6, a3, a3);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
  {
    sub_100855360();
  }

  return sub_10002249C(&v31);
}

void sub_100641B04(uint64_t result, uint64_t a2)
{
  v2 = *(result + 536);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = result;
      v5 = *(result + 344);
      if (v5 == *(result + 352))
      {
        v7 = 0;
        v6 = 0;
        v12 = 0;
LABEL_16:
        v13 = vcvtmd_u64_f64((*(v4 + 456) - *(v4 + 448)) / 1000.0);
        memset(v23, 0, 32);
        v14 = *(v4 + 440);
        v15 = *v3;
        v16 = *(v2 + 16);
        v17 = *(v4 + 466);
        v18 = *(v4 + 486);
        v20 = v12;
        v21 = v14;
        v22 = v15;
        LOBYTE(v23[0]) = v16;
        DWORD1(v23[0]) = v13;
        BYTE8(v23[0]) = v6;
        WORD5(v23[0]) = v17;
        *(v23 + 12) = *(v4 + 468);
        BYTE12(v23[1]) = v7;
        HIWORD(v23[1]) = v18;
        v23[2] = *(v4 + 488);
        v19 = sub_10000F034(result, a2);
        (*(*v19 + 136))(v19, &v20);
      }

      else
      {
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v8 = **v5;
          v9 = *v8;
          result = sub_1000ABD24(v8);
          if ((result & 1) == 0)
          {
            break;
          }

          v10 = *v5;
          if (((*v5)[9] & 8) != 0)
          {
            v11 = 2;
          }

          else
          {
            v11 = 1;
          }

          if (v9 == *(v4 + 464))
          {
            v6 = v11;
          }

          else if (v9 == *(v4 + 484))
          {
            v7 = v11;
          }

          if (++v5 == *(v4 + 352))
          {
            v12 = *(v10 + 8);
            v2 = *(v4 + 536);
            v3 = *(v2 + 8);
            goto LABEL_16;
          }
        }

        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
        {
          sub_100855394();
        }
      }
    }
  }
}

uint64_t sub_100641CAC(void *a1, uint64_t a2, float a3)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, (a1 + 35));
  v6 = a1[67];
  if (v6 && *v6 == a2)
  {
    v8 = qword_100BCEA90;
    v9 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      *buf = 134218240;
      v13 = a3;
      v14 = 1024;
      v15 = (a3 * 255.0);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'volume update %f (%d)' event from HAL", buf, 0x12u);
    }

    for (i = a1[43]; i != a1[44]; ++i)
    {
      sub_100641168(v9, *i, (a3 * 255.0));
    }
  }

  return sub_1000088CC(v11);
}

uint64_t sub_100641DFC(void *a1, uint64_t a2, int a3)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, (a1 + 35));
  v6 = a1[67];
  if (v6 && *v6 == a2)
  {
    v8 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'select codec (%d)' command from HAL", buf, 8u);
      v6 = a1[67];
    }

    v9 = v6[1];
    v10 = sub_100641F84(a1, a3);
    if (v10)
    {
      v11 = v10;
      *(a1[67] + 8) = v10;
      *buf = 0;
      sub_1003A5884(a2, buf);
      if (buf[0])
      {
        if (v9 && *(v9 + 3) != v11[3])
        {
          sub_1006420F4(a1[67]);
        }

        sub_100642154(a1[67]);
      }

      v12 = a1[43];
      for (i = a1[44]; v12 != i; *(v14 + 112) = 1)
      {
        v14 = *v12++;
      }
    }
  }

  return sub_1000088CC(v15);
}

char *sub_100641F84(uint64_t a1, int a2)
{
  v2 = *(a1 + 424);
  if (v2 <= 59)
  {
    if (v2 == 40)
    {
      result = &byte_1008AAA08;
    }

    else
    {
      if (v2 != 56)
      {
        goto LABEL_16;
      }

      result = &byte_1008AAA8C;
    }
  }

  else
  {
    if (v2 != 60)
    {
      if (v2 == 90 || v2 == 120)
      {
        result = &byte_1008AAB64;
        goto LABEL_11;
      }

LABEL_16:
      v6 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
      {
        v14 = 134217984;
        v15 = v2;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Invalid LEA packet size %lu", &v14, 0xCu);
        v6 = qword_100BCEA90;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1008267F8(v6, v7, v8, v9, v10, v11, v12, v13);
      }

      return 0;
    }

    result = &byte_1008AAABC;
  }

LABEL_11:
  v4 = *result;
  if (!*result)
  {
LABEL_14:
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
    {
      sub_1008553C8();
    }

    return 0;
  }

  while (v4 != a2)
  {
    v5 = result[12];
    result += 12;
    v4 = v5;
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_1006420F4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*v1)
    {
      operator delete[]();
    }

    operator delete();
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_100642154(uint64_t result)
{
  if (!*(result + 32))
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006421FC(void *a1, uint64_t a2, int a3)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, (a1 + 35));
  v6 = a1[67];
  if (v6 && *v6 == a2)
  {
    v8 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v15 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'change audio content type (%d)' command from HAL", buf, 8u);
      v6 = a1[67];
    }

    if (*(v6 + 16) == a3)
    {
      v9 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio content type has no change", buf, 2u);
      }
    }

    else
    {
      *(v6 + 16) = a3;
      v10 = a1[43];
      for (i = a1[44]; v10 != i; *(v12 + 112) = 1)
      {
        v12 = *v10++;
      }
    }
  }

  return sub_1000088CC(v13);
}

void sub_100642368()
{
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
  {
    sub_1008553FC();
  }
}

void sub_1006423B0(void *a1, uint64_t a2)
{
  sub_100647518(a1);
  sub_1006477B4(a1, a2);
  if (*(a2 + 28) != *(a2 + 24) || *(a2 + 19) != *(a2 + 18))
  {
    v4 = qword_100BCEA90;
    v5 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v7 = *(a2 + 8);
      v8 = v7;
      v9 = *(a2 + 24);
      v10 = *(a2 + 18);
      v13 = 141558787;
      if (v10)
      {
        v11 = "Tail";
      }

      else
      {
        v11 = "Head";
      }

      v14 = 1752392040;
      v15 = 2113;
      v16 = v7;
      v17 = 1024;
      v18 = v9;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LEA: Retagging device %{private, mask.hash}@, streamMode=%d slot=%s", &v13, 0x26u);
    }

    v12 = sub_10000C7D0(v5, v6);
    (*(*v12 + 432))(v12, *a2, *(a2 + 24), *(a2 + 18), 1);
    *(a2 + 28) = *(a2 + 24);
    *(a2 + 19) = *(a2 + 18);
  }
}

_BYTE *sub_100642544(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2 + 8);
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restarting encryption to device %@", &v7, 0xCu);
  }

  LOBYTE(v7) = 0;
  sub_1000216B4(&v7);
  sub_1002EA900(*a2);
  v5 = sub_100022214(&v7);
  sub_100640024(v5, a2, 4);
  return sub_10002249C(&v7);
}

_BYTE *sub_10064264C(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    v5 = **(*(a1 + 536) + 8);
    v6 = *(a2 + 8);
    v17[0] = 67109378;
    v17[1] = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'select codec %d' command to device %@", v17, 0x12u);
  }

  if (*(a2 + 32) != 6)
  {
    v7 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_FAULT))
    {
      sub_10085519C(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  LOBYTE(v17[0]) = 0;
  sub_1000216B4(v17);
  sub_1002EA118(*a2, **(*(a1 + 536) + 8), *(*(*(a1 + 536) + 8) + 4), *(*(*(a1 + 536) + 8) + 1), *(*(a1 + 536) + 16));
  v15 = sub_100022214(v17);
  *(a2 + 112) = 0;
  sub_100640024(v15, a2, 5);
  return sub_10002249C(v17);
}

_BYTE *sub_1006427BC(uint64_t a1, __int128 *a2, char a3, __int16 a4)
{
  v7 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
  {
    sub_100855430(a3, a4, v7);
  }

  v9 = 0;
  sub_1000216B4(&v9);
  sub_1002EA2A4(a2, a3, a4);
  return sub_10002249C(&v9);
}

void sub_10064285C(uint64_t a1, unsigned __int8 *__src, size_t __n, uint64_t a4)
{
  v4 = *(a1 + 536);
  if (v4)
  {
    v5 = *(v4 + 32);
    if (v5 && (v6 = *v5) != 0)
    {
      v8 = __n;
      if (!__src && __n)
      {
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
        {
          sub_1008554C0();
        }

        return;
      }

      v11 = *(v4 + 8);
      if (*v11 == 15)
      {
        v12 = 0;
        v13 = 1;
        if (!__n)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v13 = v11[5] ^ 1;
        if (v11[5])
        {
          v12 = 2;
        }

        else
        {
          v12 = 0;
        }

        if (!__n)
        {
          goto LABEL_20;
        }
      }

      if (v11[3] < __n)
      {
LABEL_20:
        v14 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
        {
          sub_1008554F4(v8, v14);
        }

        v8 = 0;
        goto LABEL_23;
      }

      if (v11[6] != 1)
      {
        memcpy(&v6[v12], __src, __n);
LABEL_23:
        if ((v13 & 1) == 0)
        {
          v15 = *(a1 + 432);
          *(a1 + 432) = v15 + 1;
          **v5 = v15;
          *(*v5 + 1) = v8;
        }

        v16 = *(a1 + 536);
        v17 = *v16;
        v18 = *v5;
        v19 = v8 + v12;
        if (*(v16[1] + 5) == 1)
        {
          sub_1003A3150(v17, v18, v19, a4);
        }

        else
        {
          sub_1003A2DA4(v17, v18, v19, a4);
        }

        v20 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEBUG))
        {
          sub_10085556C(v8 + v12, v20);
        }

        return;
      }

      v21 = *__src;
      v29 = v21 >> 2;
      v22 = v21 & 3;
      v23 = *(v5 + 16);
      if (v23 == v21 >> 2 && *(v5 + 17) <= v22)
      {
        v24 = *(v5 + 8);
      }

      else
      {
        if ((*(v5 + 18) & 1) == 0)
        {
          log = qword_100BCEA90;
          if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
          {
            v27 = *(v5 + 17);
            *buf = 67109376;
            v31 = v27;
            v32 = 1024;
            v33 = v23;
            _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Only received %u packets for frameId %u", buf, 0xEu);
            v6 = *v5;
          }
        }

        v24 = 0;
        *(v5 + 15) = 0;
        *(v5 + 8) = 0;
      }

      v25 = v8 - 1;
      memcpy(&v6[v24 + v12], __src + 1, v25);
      *(v5 + 16) = v29;
      v26 = *(v5 + 17);
      *(v5 + 17) = v26 + 1;
      v8 = *(v5 + 8) + v25;
      *(v5 + 8) = v8;
      if (v26 == v22)
      {
        *(v5 + 18) = 1;
        goto LABEL_23;
      }
    }

    else if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
    {
      sub_1008555E4();
    }
  }

  else if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
  {
    sub_100855618();
  }
}

BOOL sub_100642B78(uint64_t a1)
{
  v1 = *(a1 + 344);
  if (*(a1 + 352) - v1 != 16)
  {
    v3 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_FAULT))
    {
      v8 = 136446210;
      v9 = "fSessionList.size() == 2";
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &v8, 0xCu);
      v1 = *(a1 + 344);
    }
  }

  v4 = v1[1];
  if (*(*v1 + 64) != *(v4 + 64))
  {
    return 0;
  }

  v5 = *(*v1 + 72);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 72);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if ((v5 & 4) != 0)
  {
    return (v6 & 4) != 0 && ((v6 | v5) & 8) != 0;
  }

  return (v6 & 4) == 0;
}

void sub_100642C8C(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, &a1[2]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

void sub_100642D58(uint64_t a1, void (***a2)(void, void *))
{
  sub_1005C19D8(v3, *(a1 + 32) + 368);
  (**a2)(a2, v3);
  sub_10000CEDC(v3, v3[1]);
}

void sub_100642DE0(uint64_t a1, uint64_t a2)
{
  if (qword_100B508B0 != -1)
  {
    sub_10085564C();
  }

  v4 = sub_1000ACEE4(off_100B508A8, *a2);
  v52 = 0;
  v5 = sub_10000E92C();
  sub_100007E30(buf, "LEA");
  sub_100007E30(v54, "IgnoreMFi");
  (*(*v5 + 72))(v5, buf, v54, &v52);
  if (v55 < 0)
  {
    operator delete(*v54);
  }

  if (v57 < 0)
  {
    operator delete(*buf);
  }

  if (qword_100B508D0 != -1)
  {
    sub_1008550D4();
  }

  v6 = off_100B508C8;
  v7 = (a2 + 8);
  v8 = *(a2 + 8);
  sub_100007E30(v50, "IsMFiAuthenticated");
  if (sub_10004EB40(v6, v8, v50))
  {
    v9 = 1;
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_1008550D4();
    }

    v10 = off_100B508C8;
    v11 = *v7;
    sub_100007E30(v48, "IsMFiAuthenticated_CertClass0B");
    if (sub_10004EB40(v10, v11, v48))
    {
      v9 = 1;
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_1008550D4();
      }

      v12 = off_100B508C8;
      v13 = *v7;
      sub_100007E30(__p, "IsMFiAuthenticated_Ce");
      v9 = sub_10004EB40(v12, v13, __p);
      if (v47 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v49 < 0)
    {
      operator delete(v48[0]);
    }
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (v9)
  {
    v14 = qword_100BCEA90;
    v15 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      v17 = *v7;
      *buf = 138412290;
      *&buf[4] = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Device %@ is MFi authenticated", buf, 0xCu);
    }
  }

  else
  {
    v18 = qword_100BCEA90;
    if (v52 != 1)
    {
      v19 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        v21 = *v7;
        *buf = 138412290;
        *&buf[4] = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Device %@ is not MFi authenticated yet, authenticating...", buf, 0xCu);
      }

      v22 = sub_100432610(v19, v20);
      v23 = *v7;
      (*(*v22 + 24))(v22, v23);

      operator new();
    }

    v15 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR);
    if (v15)
    {
      sub_100855660();
    }
  }

  if (*(a1 + 536))
  {
    if (sub_100642B78(a1))
    {
      *v54 = 0;
      v24 = sub_1003A3484(**(a1 + 536), v54);
      if (v24)
      {
        sub_100641168(v24, a2, (*v54 * 255.0));
      }

      v25 = *(a1 + 536);
      if (v25[1])
      {
        *(a2 + 112) = 1;
      }

      LODWORD(v53) = 0;
      sub_1003A5884(*v25, &v53);
      if ((v53 & 1) == 0)
      {
        goto LABEL_57;
      }

      if (qword_100B508D0 != -1)
      {
        sub_1008550D4();
      }

      v26 = off_100B508C8;
      if (qword_100B508B0 != -1)
      {
        sub_1008556C8();
      }

      v27 = sub_1000ACEE4(off_100B508A8, *a2);
      sub_100007E30(v44, "Enable Input");
      v28 = sub_10004EB40(v26, v27, v44);
      if (v45 < 0)
      {
        operator delete(v44[0]);
      }

      if (v28)
      {
        v29 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *v7;
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2113;
          *&buf[14] = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Enable device %{private, mask.hash}@ input", buf, 0x16u);
        }

        v31 = 1;
        sub_1003A58A4(**(a1 + 536), 1);
      }

      else
      {
LABEL_57:
        v35 = qword_100BCEA90;
        v31 = 0;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *v7;
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2113;
          *&buf[14] = v36;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Disable device %{private, mask.hash}@ input", buf, 0x16u);

          v31 = 0;
        }
      }

      *(a2 + 129) = v31;
      if (sub_1003A5564(**(a1 + 536)))
      {
        sub_100640B80(a1, a2);
      }

      v37 = **(a1 + 536);
      sub_1003A5D88(buf, (a2 + 80));
      sub_1003A5678(v37, buf);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (qword_100B508B0 != -1)
      {
        sub_1008556C8();
      }

      v38 = sub_1000ACEE4(off_100B508A8, *a2);
      if (*(a1 + 648) == 1)
      {
        sub_100643EB0(a1, v38);
      }

      else
      {
        if (qword_100B50920 != -1)
        {
          sub_100855724();
        }

        sub_100643F54(qword_100B50918, v38);
      }

      v39 = sub_100643FDC(a1, v38);
      if (v39)
      {
        sub_100508C08(v39, *(a2 + 16));
      }
    }

    else
    {
      v33 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR);
      if (v33)
      {
        sub_100855694();
      }

      v34 = sub_1006427BC(v33, *a2, 12, 8);
      sub_100640024(v34, a2, 0);
    }
  }

  else
  {
    v32 = sub_10000C7D0(v15, v16);
    if (!(*(*v32 + 440))(v32, a1 + 424))
    {
      v40 = *(a2 + 64);
      v41 = *(a1 + 424);
      if (v40 < v41)
      {
        v42 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v41;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "LEA FW max packet size is %zu bytes", buf, 0xCu);
          v40 = *(a2 + 64);
        }

        *(a1 + 424) = v40;
        v41 = v40;
      }

      if (*(a1 + 440) == 1 && v41 >= 0x3D)
      {
        v41 = 60;
        *(a1 + 424) = 60;
      }

      v43 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v41;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "LEA max packet size is %zu bytes", buf, 0xCu);
      }

      operator new();
    }

    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
    {
      sub_1008556F0();
    }
  }
}

void sub_100643CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 105) < 0)
  {
    operator delete(*(v47 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_100643EB0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = sub_100643FDC(a1, v5);
  v4 = v3;
  if (v3)
  {
    if (sub_100508BF0(v3))
    {
      sub_100508BC4(v4);
    }

    else
    {
      sub_100507E60(v4);
    }
  }

  else
  {
    sub_100648108(a1, (a1 + 649), a1 + 264, v5);
  }
}

void sub_100643F54(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = sub_100643FDC(a1, v4);
  if (v3)
  {
    sub_100508BA8(v3, 1);
  }

  else
  {
    sub_100648108(a1, (a1 + 649), a1 + 264, v4);
  }
}

id *sub_100643FDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 560);
  for (i = *(a1 + 624); i != *(a1 + 632); ++i)
  {
    v5 = *i;
    v6 = sub_100508BF8(*i);
    v7 = [v6 UUIDString];
    v8 = [v3 UUIDString];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  sub_1000088CC(v11);

  return v5;
}

void sub_1006440F4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v9 = a4;
  v10 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10085564C();
  }

  v13 = sub_1000ACEE4(off_100B508A8, a2);
  v14 = v13;
  if (!v13)
  {
    sub_1006427BC(0, a2, 1, 3);
    goto LABEL_39;
  }

  if (!sub_1006447FC(v13, v13))
  {
    v44[0] = 0;
    v44[1] = 0;
    v16 = sub_100007F88(v44, a1 + 280);
    for (i = *(a1 + 344); i != *(a1 + 352); ++i)
    {
      if (**i == a2)
      {
        goto LABEL_38;
      }
    }

    v43 = 0;
    v19 = sub_10000C7D0(v16, v17);
    v20 = sub_10009BF08(v19);
    v21 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138413314;
      *&buf[1] = v14;
      v46 = 1024;
      *v47 = v10;
      *&v47[4] = 1024;
      *&v47[6] = v9;
      v48 = 1024;
      v49 = a5;
      v50 = 1024;
      LODWORD(v51) = a6;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received 'version' command from device %@ with version: %d, companyID: %d, hwVersion: %d, swVersion: %d", buf, 0x24u);
    }

    if (qword_100B508D0 != -1)
    {
      sub_1008550D4();
    }

    v22 = off_100B508C8;
    sub_100007E30(__p, "IsPrimaryHearingAid");
    v23 = sub_10004EB40(v22, v14, __p);
    v24 = v23;
    if (v42 < 0)
    {
      operator delete(__p[0]);
      if (!v24)
      {
        goto LABEL_23;
      }
    }

    else if (!v23)
    {
      goto LABEL_23;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1008550D4();
    }

    sub_10078380C(off_100B508C8, v14, @"IsPrimaryHearingAid");
LABEL_23:
    if (qword_100B508D0 != -1)
    {
      sub_1008550D4();
    }

    v25 = off_100B508C8;
    sub_100007E30(v39, "DisableLEA");
    v26 = sub_10004EB40(v25, v14, v39);
    if (v20)
    {
      v27 = v26;
    }

    else
    {
      v27 = 1;
    }

    if (v40 < 0)
    {
      operator delete(v39[0]);
      if (v27)
      {
        goto LABEL_30;
      }
    }

    else if (v27)
    {
LABEL_30:
      v28 = qword_100BCEA90;
      v26 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
      if (v26)
      {
        buf[0] = 138412290;
        *&buf[1] = v14;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Rejecting LEA connection for device %@ as it is disabled", buf, 0xCu);
      }

      v29 = 7;
      goto LABEL_37;
    }

    if (v10 != 2 || v20 != 1)
    {
      v30 = *(a1 + 344);
      v31 = *(a1 + 352);
      if (v30 == v31)
      {
        if (qword_100B508D0 != -1)
        {
          sub_1008550D4();
        }

        v32 = off_100B508C8;
        sub_100007E30(v37, "Enable Input");
        v33 = sub_10004EB40(v32, v14, v37);
        if (v38 < 0)
        {
          operator delete(v37[0]);
        }

        v34 = qword_100BCEA90;
        v35 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
        if (v33)
        {
          if (v35)
          {
            buf[0] = 141558275;
            *&buf[1] = 1752392040;
            v46 = 2113;
            *v47 = v14;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "LEA: Set device %{private, mask.hash}@ to Tail", buf, 0x16u);
          }
        }

        else if (v35)
        {
          buf[0] = 141558275;
          *&buf[1] = 1752392040;
          v46 = 2113;
          *v47 = v14;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "LEA: Set device %{private, mask.hash}@ to Head", buf, 0x16u);
        }
      }

      else if (v31 - v30 != 8)
      {
        v36 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR);
        if (v36)
        {
          sub_1008557E4();
        }

        sub_1006427BC(v36, a2, 1, 7);
        goto LABEL_38;
      }

      operator new();
    }

    v29 = 2;
LABEL_37:
    sub_1006427BC(v26, a2, 1, v29);
LABEL_38:
    sub_1000088CC(v44);
    goto LABEL_39;
  }

  v15 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Connecting over LE Audio over MFi LEA", buf, 2u);
  }

LABEL_39:
}

void sub_100644748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_1000088CC(&a29);

  _Unwind_Resume(a1);
}

uint64_t sub_1006447FC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _os_feature_enabled_impl();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableHALEAudio", @"com.apple.bluetooth", &keyExistsAndHasValidFormat);
  v5 = sub_100017E6C();
  v6 = (*(*v5 + 272))(v5);
  v7 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v11 = v3;
    v12 = 1024;
    v13 = AppBooleanValue != 0;
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LE Audio OS Feature Enabled: %u. Developer HA Mode: %u. Developer Mode On: %u", buf, 0x14u);
  }

  return v3 | ((AppBooleanValue != 0) & v6);
}

char *sub_100644970(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_100644B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100644B44(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v31[0] = 0;
  v31[1] = 0;
  v6 = sub_100007F88(v31, a1 + 280);
  for (i = *(a1 + 344); ; ++i)
  {
    if (i == *(a1 + 352))
    {
      goto LABEL_28;
    }

    v8 = *i;
    if (**i == a2)
    {
      break;
    }
  }

  v9 = qword_100BCEA90;
  v6 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    sub_10000C250(a3, &__p);
    if ((v30 & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v11 = v8[1];
    *buf = 136446466;
    v33 = p_p;
    v34 = 2112;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'supported codec list (%{public}s)' command from device %@", buf, 0x16u);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p);
    }
  }

  if (*(v8 + 8) != 2)
  {
LABEL_28:
    sub_1006427BC(v6, a2, 2, 3);
    return sub_1000088CC(v31);
  }

  sub_100640024(v6, v8, 3);
  v12 = 0;
  __p = 0;
  v29 = 0;
  v30 = 0;
  while (sub_10000C5E0(a3) > v12)
  {
    v13 = sub_10072502C(a3, v12);
    v14 = v29;
    if (v29 >= v30)
    {
      v16 = __p;
      v17 = v29 - __p;
      v18 = (v29 - __p) >> 2;
      v19 = v18 + 1;
      if ((v18 + 1) >> 62)
      {
        sub_1000C7698();
      }

      v20 = v30 - __p;
      if ((v30 - __p) >> 1 > v19)
      {
        v19 = v20 >> 1;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        sub_10036F560(&__p, v21);
      }

      *(4 * v18) = v13;
      v15 = 4 * v18 + 4;
      memcpy(0, v16, v17);
      v22 = __p;
      __p = 0;
      v29 = v15;
      v30 = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v29 = v13;
      v15 = (v14 + 4);
    }

    v29 = v15;
    ++v12;
  }

  v25 = 0;
  __dst = 0;
  v27 = 0;
  if (v29 != __p)
  {
    sub_1003A4F88(&v25, (v29 - __p) >> 2);
  }

  v24 = 0;
  if (v8 + 10 != &v25)
  {
    sub_1003A5C5C(v8 + 10, 0, 0, 0);
    v24 = v25;
  }

  if (v24)
  {
    __dst = v24;
    operator delete(v24);
  }

  sub_100642DE0(a1, v8);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  return sub_1000088CC(v31);
}

void sub_100644E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100644EA0(uint64_t a1, __int128 *a2, int a3)
{
  v12[0] = 0;
  v12[1] = 0;
  v6 = sub_100007F88(v12, a1 + 280);
  for (i = *(a1 + 344); ; ++i)
  {
    if (i == *(a1 + 352))
    {
      goto LABEL_10;
    }

    v8 = *i;
    if (**i == a2)
    {
      break;
    }
  }

  v9 = qword_100BCEA90;
  v6 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v10 = v8[1];
    *buf = 138412290;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'codec ready' command from device %@", buf, 0xCu);
  }

  if (*(v8 + 8) != 5)
  {
LABEL_10:
    sub_1006427BC(v6, a2, 4, 3);
    return sub_1000088CC(v12);
  }

  sub_100640024(v6, v8, 6);
  sub_1003A34D0(**(a1 + 536), (a3 + 1250));
  if (sub_1003A5564(**(a1 + 536)))
  {
    sub_100640B80(a1, v8);
  }

  return sub_1000088CC(v12);
}

uint64_t sub_100645020(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v22[0] = 0;
  v22[1] = 0;
  v6 = sub_100007F88(v22, a1 + 280);
  v8 = *(a1 + 344);
  v7 = *(a1 + 352);
  if (v8 == v7)
  {
LABEL_5:
    sub_1006427BC(v6, a2, 7, 3);
  }

  else
  {
    v9 = *(a1 + 344);
    while (1)
    {
      v10 = *v9;
      if (**v9 == a2)
      {
        break;
      }

      if (++v9 == v7)
      {
        goto LABEL_5;
      }
    }

    v11 = qword_100BCEA90;
    v12 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      sub_10000C250(a3, __p);
      if (v21 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      v14 = v10[1];
      *buf = 136446466;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received 'passthrough [ %{public}s ]' command from device %@", buf, 0x16u);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = *(a1 + 344);
      v7 = *(a1 + 352);
    }

    if (v8 == v7)
    {
      goto LABEL_22;
    }

    v15 = 0;
    do
    {
      while (*v8 != v10 && *(*v8 + 8) == *(v10 + 8))
      {
        LOBYTE(__p[0]) = 0;
        sub_1000216B4(__p);
        v16 = **v8;
        v17 = sub_10000C5F8(a3);
        v18 = sub_10000C5E0(a3);
        sub_1002EA290(v16, v17, v18);
        v12 = sub_10002249C(__p);
        v7 = *(a1 + 352);
        ++v8;
        v15 = 1;
        if (v8 == v7)
        {
          return sub_1000088CC(v22);
        }
      }

      ++v8;
    }

    while (v8 != v7);
    if ((v15 & 1) == 0)
    {
LABEL_22:
      sub_1006427BC(v12, a2, 7, 6);
    }
  }

  return sub_1000088CC(v22);
}

void sub_100645230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100645268(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 280);
  v8 = *(a1 + 344);
  v9 = *(a1 + 352);
  while (v8 != v9)
  {
    v10 = *v8;
    if (**v8 == a2)
    {
      v11 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
      {
        v13 = v10[1];
        *buf = 67109634;
        v16 = a3;
        v17 = 1024;
        v18 = a4;
        v19 = 2112;
        v20 = v13;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Received 'error (%u/%u)' command from device %@", buf, 0x18u);
      }

      return sub_1000088CC(v14);
    }

    ++v8;
  }

  return sub_1000088CC(v14);
}

uint64_t sub_10064538C(os_unfair_lock_s *a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, &a1[70]);
  for (i = *&a1[86]._os_unfair_lock_opaque; i != *&a1[88]._os_unfair_lock_opaque; ++i)
  {
    v5 = *i;
    if (**i == a2)
    {
      v6 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v5[1];
        *buf = 138412290;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received 'restart' command from device %@", buf, 0xCu);
      }

      sub_10063FDB0(a1, v5);
      return sub_1000088CC(v9);
    }
  }

  return sub_1000088CC(v9);
}

uint64_t sub_1006454B0(uint64_t **a1, __int128 *a2, int a3)
{
  v15[0] = 0;
  v15[1] = 0;
  v6 = sub_100007F88(v15, (a1 + 35));
  for (i = a1[43]; ; ++i)
  {
    if (i == a1[44])
    {
      goto LABEL_13;
    }

    v8 = *i;
    if (**i == a2)
    {
      break;
    }
  }

  v9 = qword_100BCEA90;
  v6 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v10 = *(v8 + 8);
    *buf = 67109378;
    v17 = a3;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'set volume (%u)' command from device %@", buf, 0x12u);
  }

  if (*(v8 + 32) < 3)
  {
LABEL_13:
    sub_1006427BC(v6, a2, 10, 3);
    return sub_1000088CC(v15);
  }

  sub_1003A2788(*a1[67], a3 / 255.0);
  *(v8 + 128) = a3;
  v13 = a1[43];
  v12 = a1[44];
  while (v13 != v12)
  {
    if (*v13 != v8)
    {
      sub_100641168(v11, *v13, a3);
      v12 = a1[44];
    }

    ++v13;
  }

  return sub_1000088CC(v15);
}

uint64_t sub_100645650(uint64_t a1, __int128 *a2, unsigned int a3, int a4)
{
  v15[0] = 0;
  v15[1] = 0;
  v8 = sub_100007F88(v15, a1 + 280);
  v9 = *(a1 + 344);
  v10 = *(a1 + 352);
  while (v9 != v10)
  {
    v11 = *v9;
    if (**v9 == a2)
    {
      v12 = qword_100BCEA90;
      v8 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        v13 = v11[1];
        *buf = 67109891;
        v17 = a3;
        v18 = 1024;
        v19 = a4;
        v20 = 2160;
        v21 = 1752392040;
        v22 = 2113;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received 'capabilities (%u/%u)' command from device %{private, mask.hash}@", buf, 0x22u);
      }

      if (*(v11 + 8) == 1)
      {
        sub_100640024(v8, v11, 2);
        v11[8] = a3;
        *(v11 + 18) = a4;
        return sub_1000088CC(v15);
      }

      break;
    }

    ++v9;
  }

  sub_1006427BC(v8, a2, 12, 3);
  return sub_1000088CC(v15);
}

uint64_t sub_1006457E0(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 280);
  for (i = *(a1 + 344); i != *(a1 + 352); ++i)
  {
    v5 = *i;
    if (**i == a2)
    {
      v6 = qword_100BCEA90;
      v7 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        v8 = v5[1];
        *buf = 138412290;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received 'stream ready' command from device %@", buf, 0xCu);
      }

      if (*(v5 + 8) == 7)
      {
        sub_100640024(v7, v5, 8);
        sub_100640700(a1);
      }

      return sub_1000088CC(v10);
    }
  }

  return sub_1000088CC(v10);
}

uint64_t sub_100645918(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, (a1 + 35));
  for (i = a1[43]; ; ++i)
  {
    if (i == a1[44])
    {
      return sub_1000088CC(v25);
    }

    v9 = *i;
    if (**i == a2)
    {
      break;
    }
  }

  v10 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEBUG))
  {
    sub_10000C250(a3, __p);
    if (v24 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    v19 = v9[1];
    v20 = v19;
    v21 = "No";
    *buf = 136446722;
    *v27 = v18;
    if (a4)
    {
      v21 = "Yes";
    }

    *&v27[8] = 2112;
    v28 = v19;
    v29 = 2080;
    v30 = v21;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Received 'audio (%{public}s)' from device %@ wakeUpEvent %s", buf, 0x20u);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(v9 + 8) != 8)
  {
    v15 = qword_100BCEA90;
    if (!os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
    {
      return sub_1000088CC(v25);
    }

    v16 = 0;
LABEL_24:
    v22 = *(v9 + 6);
    *buf = 67109376;
    *v27 = v16;
    *&v27[4] = 1024;
    *&v27[6] = v22;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Skipping recvAudioEvent, canStreamAudio: %u, Streaming mode: %u", buf, 0xEu);
    return sub_1000088CC(v25);
  }

  v11 = *(v9 + 12);
  if (v11 != 3 || *(v9 + 6) != 2)
  {
    v15 = qword_100BCEA90;
    if (!os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
    {
      return sub_1000088CC(v25);
    }

    v16 = v11 == 3;
    goto LABEL_24;
  }

  v12 = sub_10000C5F8(a3);
  v13 = sub_10000C5E0(a3);
  sub_10064285C(a1, v12, v13, a4);
  v14 = *(a1[67] + 8);
  if (*(v14 + 5) == 1)
  {
    a1[68] = dispatch_time(0, 3750000 * *(v14 + 1) + 2500000);
    sub_100645BCC(a1, a2);
  }

  return sub_1000088CC(v25);
}

void sub_100645BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100645BCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 552);
  if (v3)
  {
    dispatch_suspend(v3);
  }

  else
  {
    v5 = sub_100007EE8(0, a2);
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, *(v5 + 8));
    *(a1 + 552) = v6;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1006474C4;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a2;
    dispatch_source_set_event_handler(v6, handler);
  }

  v7 = *(a1 + 552);
  if (v7)
  {
    dispatch_source_set_timer(v7, *(a1 + 544), 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    dispatch_resume(*(a1 + 552));
  }
}

uint64_t sub_100645C9C(uint64_t a1, uint64_t a2, int a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 280);
  v6 = *(a1 + 344);
  v7 = *(a1 + 352);
  while (v6 != v7)
  {
    v8 = *v6;
    if (**v6 == a2)
    {
      v9 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v8[1];
        *buf = 67109378;
        v14 = a3;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'state noti (%u)' command from device %@", buf, 0x12u);
      }

      return sub_1000088CC(v12);
    }

    ++v6;
  }

  return sub_1000088CC(v12);
}

uint64_t sub_100645DAC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 280);
  v8 = *(a1 + 344);
  v9 = *(a1 + 352);
  while (v8 != v9)
  {
    v10 = *v8;
    if (**v8 == a2)
    {
      v11 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v10[1];
        *buf = 67109634;
        v16 = a3;
        v17 = 1024;
        v18 = a4;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received 'link quality noti (%d, %u)' command from device %@", buf, 0x18u);
      }

      return sub_1000088CC(v14);
    }

    ++v8;
  }

  return sub_1000088CC(v14);
}

uint64_t sub_100645ECC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 280);
  for (i = *(a1 + 344); i != *(a1 + 352); ++i)
  {
    v7 = *i;
    if (**i == a2)
    {
      v8 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v7[1];
        *buf = 67109378;
        v17 = a3;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'bonding status response (%u)' command from device %@", buf, 0x12u);
      }

      if (a3 >= 3)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0x10102u >> (8 * a3);
      }

      v11 = v7[1];
      v12 = sub_100643FDC(a1, v11);
      if (v12)
      {
        if (qword_100B508D0 != -1)
        {
          sub_1008550D4();
        }

        v13 = sub_100046458(off_100B508C8, v11, 0);
        buf[0] = BYTE5(v13);
        buf[1] = BYTE4(v13);
        buf[2] = BYTE3(v13);
        buf[3] = BYTE2(v13);
        LOBYTE(v17) = BYTE1(v13);
        BYTE1(v17) = v13;
        sub_100508134(v12, buf, (a1 + 649), v10);
      }

      return sub_1000088CC(v15);
    }
  }

  return sub_1000088CC(v15);
}

uint64_t sub_1006460B0(uint64_t a1, uint64_t a2, int a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 280);
  v6 = *(a1 + 344);
  v7 = *(a1 + 352);
  while (v6 != v7)
  {
    v8 = *v6;
    if (**v6 == a2)
    {
      v9 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v8[1];
        *buf = 67109378;
        v14 = a3;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'siri (%u)' command from device %@", buf, 0x12u);
      }

      return sub_1000088CC(v12);
    }

    ++v6;
  }

  return sub_1000088CC(v12);
}

void sub_1006461C0(uint64_t a1, __int16 a2, __int16 a3, __int16 a4, __int16 a5)
{
  v10 = sub_1000CB318(a1);
  v11 = v10;
  v13 = sub_100007EE8(v10, v12);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100646278;
  v14[3] = &unk_100AEAF08;
  v14[4] = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = v11;
  sub_10000CA94(v13, v14);
}

void sub_100646278(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 42);
  v6 = *(a1 + 44);
  v7 = *(a1 + 46);
  v8 = *(a1 + 48);

  sub_1006440F4(v2, v3, v4, v5, v6, v7, v8);
}

void sub_1006462E0(uint64_t a1, const void *a2, unsigned int a3)
{
  v10 = 0;
  v11 = 0;
  v4 = sub_10000C704(&v10, a2, a3);
  v6 = sub_100007EE8(v4, v5);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_100646430;
  v7[3] = &unk_100B02E08;
  v7[4] = a1;
  v8 = &off_100AE0A78;
  v9 = v11;
  if (v11)
  {
    sub_10000C69C(v11);
  }

  sub_10000CA94(v6, v7);
  v8 = &off_100AE0A78;
  if (v9)
  {
    sub_10000C808(v9);
  }

  v10 = &off_100AE0A78;
  if (v11)
  {
    sub_10000C808(v11);
  }
}

void sub_1006463E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, atomic_uint *a16)
{
  if (a16)
  {
    sub_10000C808(a16);
  }

  *(v16 - 32) = &off_100AE0A78;
  v18 = *(v16 - 24);
  if (v18)
  {
    sub_10000C808(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100646430(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);

  return sub_100644B44(v2, v3, a1 + 40);
}

void sub_100646488(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100007EE8(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10064650C;
  v5[3] = &unk_100AEB940;
  v5[4] = a1;
  v6 = v2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_10064650C(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_100644EA0(v2, v3, v4);
}

void sub_100646564(uint64_t a1, const void *a2, unsigned int a3)
{
  v10 = 0;
  v11 = 0;
  v4 = sub_10000C704(&v10, a2, a3);
  v6 = sub_100007EE8(v4, v5);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_1006466B4;
  v7[3] = &unk_100B02E08;
  v7[4] = a1;
  v8 = &off_100AE0A78;
  v9 = v11;
  if (v11)
  {
    sub_10000C69C(v11);
  }

  sub_10000CA94(v6, v7);
  v8 = &off_100AE0A78;
  if (v9)
  {
    sub_10000C808(v9);
  }

  v10 = &off_100AE0A78;
  if (v11)
  {
    sub_10000C808(v11);
  }
}

void sub_100646664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, atomic_uint *a16)
{
  if (a16)
  {
    sub_10000C808(a16);
  }

  *(v16 - 32) = &off_100AE0A78;
  v18 = *(v16 - 24);
  if (v18)
  {
    sub_10000C808(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006466B4(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);

  return sub_100645020(v2, v3, a1 + 40);
}

void sub_10064670C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = a2;
  v6 = sub_100007EE8(a1, a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006467A0;
  v7[3] = &unk_100AF5948;
  v7[4] = a1;
  v9 = v4;
  v8 = a3;
  sub_10000CA94(v6, v7);
}

uint64_t sub_1006467A0(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 42);
  v5 = *(a1 + 40);

  return sub_100645268(v2, v3, v4, v5);
}

void sub_1006467FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100646878;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

uint64_t sub_100646878(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);

  return sub_10064538C(v2, v3);
}

void sub_1006468CC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100007EE8(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100646950;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = v2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_100646950(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1006454B0(v2, v3, v4);
}

void sub_1006469A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v6 = sub_100007EE8(a1, a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100646A3C;
  v7[3] = &unk_100AEB940;
  v7[4] = a1;
  v8 = v4;
  v9 = a3;
  sub_10000CA94(v6, v7);
}

uint64_t sub_100646A3C(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 41);

  return sub_100645650(v2, v3, v4, v5);
}

void sub_100646A98(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100646B14;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

uint64_t sub_100646B14(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);

  return sub_1006457E0(v2, v3);
}

void sub_100646B68(uint64_t a1, const void *a2, unsigned int a3, char a4)
{
  v13 = 0;
  v14 = 0;
  v6 = sub_10000C704(&v13, a2, a3);
  v8 = sub_100007EE8(v6, v7);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_100646CC8;
  v9[3] = &unk_100B034F0;
  v9[4] = a1;
  v10 = &off_100AE0A78;
  v11 = v14;
  if (v14)
  {
    sub_10000C69C(v14);
  }

  v12 = a4;
  sub_10000CA94(v8, v9);
  v10 = &off_100AE0A78;
  if (v11)
  {
    sub_10000C808(v11);
  }

  v13 = &off_100AE0A78;
  if (v14)
  {
    sub_10000C808(v14);
  }
}

void sub_100646C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, atomic_uint *a15)
{
  if (a15)
  {
    sub_10000C808(a15);
  }

  *(v15 - 48) = &off_100AE0A78;
  v17 = *(v15 - 40);
  if (v17)
  {
    sub_10000C808(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100646CC8(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);

  return sub_100645918(v2, v3, a1 + 40, v4);
}

void sub_100646D24(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100007EE8(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100646DA8;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = v2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_100646DA8(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_100645C9C(v2, v3, v4);
}

void sub_100646E00(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v6 = sub_100007EE8(a1, a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100646E94;
  v7[3] = &unk_100AEB940;
  v7[4] = a1;
  v8 = v4;
  v9 = a3;
  sub_10000CA94(v6, v7);
}

uint64_t sub_100646E94(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 41);

  return sub_100645DAC(v2, v3, v4, v5);
}

void sub_100646EF0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100007EE8(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100646F74;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = v2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_100646F74(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_100645ECC(v2, v3, v4);
}

void sub_100646FCC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100007EE8(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100647050;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = v2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_100647050(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1006460B0(v2, v3, v4);
}

void sub_1006470A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v6 = sub_100007EE8(a1, a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10064713C;
  v7[3] = &unk_100AF2A50;
  v7[4] = a1;
  v8 = v4;
  v9 = a3;
  sub_10000CA94(v6, v7);
}

uint64_t sub_10064713C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v4 = qword_100B50918;
  v5 = *(a1 + 32);
  v6 = *(a1 + 44);

  return sub_1006403C0(v4, v5, a3, v6);
}

void sub_100647194(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100007EE8(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100647218;
  v5[3] = &unk_100AEB940;
  v5[4] = a1;
  v6 = v2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_100647218(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1006407DC(v2, v3, v4);
}

void sub_100647270(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100007EE8(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006472F4;
  v5[3] = &unk_100ADF940;
  v5[4] = a1;
  v6 = v2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_1006472F4(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);

  return sub_100640A34(v2, v3);
}

uint64_t sub_100647348(void *a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, (a1 + 35));
  for (i = a1[43]; i != a1[44]; ++i)
  {
    v5 = *i;
    if (**i == a2)
    {
      v6 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v5[1];
        *buf = 138412290;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No Audio from device %@, add empty packet for PLC", buf, 0xCu);
      }

      if (*(v5 + 8) == 8 && *(v5 + 12) == 3)
      {
        sub_10064285C(a1, 0, 0, 0);
        a1[68] = dispatch_time(0, 2500000 * *(*(a1[67] + 8) + 1));
        sub_100645BCC(a1, a2);
      }

      return sub_1000088CC(v9);
    }
  }

  return sub_1000088CC(v9);
}

uint64_t sub_1006474C4(uint64_t a1)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v2 = qword_100B50918;
  v3 = *(a1 + 32);

  return sub_100647348(v2, v3);
}

void sub_100647518(void *a1)
{
  v2 = a1[43];
  if (v2 != a1[44])
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *v2;
      if (!*(*v2 + 18))
      {
        v3 = *v2;
      }

      v7 = a1[67];
      if (*(v7 + 16) != 2)
      {
        break;
      }

      v8 = qword_100BCEA90;
      if (*(v6 + 129) != 1)
      {
        goto LABEL_11;
      }

      *(v6 + 24) = 2;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(v6 + 8);
        *buf = 138412290;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Set device %@ as Bidirectional", buf, 0xCu);

        v7 = a1[67];
      }

      v5 = 1;
      sub_1003A58A4(*v7, 1);
LABEL_14:
      if (++v2 == a1[44])
      {
        if (v5)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }
    }

    v8 = qword_100BCEA90;
LABEL_11:
    *(v6 + 24) = 0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v6 + 8);
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Set device %@ as output", buf, 0xCu);
    }

    v4 = 1;
    goto LABEL_14;
  }

  v3 = 0;
  v4 = 0;
LABEL_18:
  v11 = a1[67];
  if (*(v11 + 16) == 2)
  {
    v12 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No Input device found. Disable InputAudio", buf, 2u);
      v11 = a1[67];
    }

    sub_1003A58A4(*v11, 0);
  }

LABEL_22:
  if ((v4 & 1) == 0 && a1[44] - a1[43] == 16 && v3 != 0)
  {
    v14 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(v3 + 8);
      *buf = 138412290;
      v17 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Both devices set to Bidirectional, set head session(%@) to output", buf, 0xCu);
    }

    *(v3 + 24) = 0;
  }
}

void sub_1006477B4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 352) - *(a1 + 344) == 8)
  {
    if (*(a2 + 129) == 1)
    {
      if (*(a2 + 18))
      {
        return;
      }

      v3 = qword_100BCEA90;
      if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a2 + 8);
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reset device %@ to tail", &v9, 0xCu);
      }

      v5 = 1;
    }

    else
    {
      if (!*(a2 + 18))
      {
        return;
      }

      v6 = qword_100BCEA90;
      v7 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
      v5 = 0;
      if (v7)
      {
        v8 = *(a2 + 8);
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reset device %@ to head", &v9, 0xCu);

        v5 = 0;
      }
    }

    *(a2 + 18) = v5;
  }
}

void sub_10064790C(uint64_t a1, uint64_t a2, char a3, __int16 a4, char a5, char a6, char a7, char a8, char a9, char a10)
{
  v16 = a2;
  v17 = sub_100007EE8(a1, a2);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1006479E8;
  v18[3] = &unk_100AF5948;
  v19 = v16;
  v21 = a3;
  v20 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v27 = a10;
  sub_10000CA94(v17, v18);
}

void sub_1006479E8(uint64_t result, uint64_t a2)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }
}

void sub_100647A14(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    *(a1 + 464) = 0u;
    *(a1 + 480) = 0u;
    *(a1 + 528) = 0;
    *(a1 + 496) = 0u;
    *(a1 + 512) = 0u;
    *(a1 + 464) = -1;
    *(a1 + 484) = -1;
  }

  v4 = *(a2 + 2);
  if (v4 != 0xFFFF)
  {
    ++*(a1 + 528);
    *(a1 + 464) = v4;
    *(a1 + 504) += *(a2 + 4);
    *(a1 + 468) += *(a2 + 5);
    *(a1 + 472) += *(a2 + 6);
    *(a1 + 512) += *(a2 + 7);
    v5 = *(a2 + 13);
    if (*(a2 + 13))
    {
      if (v5 != 255)
      {
        *(a1 + 476) += *(a2 + 9);
        *(a1 + 480) += *(a2 + 11);
        *(a1 + 516) += v5;
      }
    }
  }

  v6 = *(a2 + 16);
  if (v6 != 0xFFFF)
  {
    ++*(a1 + 530);
    *(a1 + 484) = v6;
    *(a1 + 508) += *(a2 + 18);
    *(a1 + 488) += *(a2 + 19);
    *(a1 + 492) += *(a2 + 20);
    *(a1 + 520) += *(a2 + 21);
    v7 = *(a2 + 27);
    if (*(a2 + 27))
    {
      if (v7 != 255)
      {
        *(a1 + 496) += *(a2 + 23);
        *(a1 + 500) += *(a2 + 25);
        *(a1 + 524) += v7;
      }
    }
  }

  if (v4 != 0xFFFF)
  {
    v8 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a2 + 7);
      v10 = *(a2 + 5);
      v11 = *(a2 + 6);
      v12 = *(a2 + 13);
      v13 = *(a2 + 9);
      v14 = *(a2 + 11);
      v15 = *(a2 + 4);
      v16 = *(a2 + 14);
      v17 = *(a2 + 15);
      *buf = 67111424;
      *&buf[4] = v4;
      v51 = 1024;
      v52 = v9;
      v53 = 1024;
      v54 = v10;
      v55 = 1024;
      v56 = v11;
      v57 = 1024;
      v58 = v12;
      v59 = 1024;
      v60 = v13;
      v61 = 1024;
      v62 = v14;
      v63 = 1024;
      v64 = v15;
      v65 = 1024;
      v66 = v16;
      v67 = 1024;
      v68 = v17;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "LEA Stats Report - handle(0x%2X):TxTotal(%d), TxR(%d), TxF(%d), RxTotal(%d), RxE(%d), RxM(%d), rssi(%d), TxST(%d), TxSE(%d)", buf, 0x3Eu);
      v6 = *(a2 + 16);
    }
  }

  if (v6 != 0xFFFF)
  {
    v18 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a2 + 21);
      v20 = *(a2 + 19);
      v21 = *(a2 + 20);
      v22 = *(a2 + 27);
      v23 = *(a2 + 23);
      v24 = *(a2 + 25);
      v25 = *(a2 + 18);
      v26 = *(a2 + 28);
      v27 = *(a2 + 29);
      *buf = 67111424;
      *&buf[4] = v6;
      v51 = 1024;
      v52 = v19;
      v53 = 1024;
      v54 = v20;
      v55 = 1024;
      v56 = v21;
      v57 = 1024;
      v58 = v22;
      v59 = 1024;
      v60 = v23;
      v61 = 1024;
      v62 = v24;
      v63 = 1024;
      v64 = v25;
      v65 = 1024;
      v66 = v26;
      v67 = 1024;
      v68 = v27;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "LEA Stats Report - handle(0x%2X):TxTotal(%d), TxR(%d), TxF(%d), RxTotal(%d), RxE(%d), RxM(%d), rssi(%d), TxST(%d), TxSE(%d)", buf, 0x3Eu);
    }
  }

  if (!*a2)
  {
    v28 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "===Stats Report Total===", buf, 2u);
      v28 = qword_100BCEA90;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_10085582C(a1, v28, buf);
      v28 = *buf;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_100855928(a1, v28);
    }

    if (*(a1 + 528))
    {
      v29 = *(a1 + 512);
      if (v29)
      {
        *(a1 + 466) = *(a1 + 504) / *(a1 + 528);
        *(a1 + 468) = (100 * *(a1 + 468) + (v29 >> 1)) / v29;
        *(a1 + 472) = (100 * *(a1 + 472) + (v29 >> 1)) / v29;
        v30 = *(a1 + 516);
        if (v30)
        {
          *(a1 + 476) = (v30 + 100 * *(a1 + 476)) / (2 * v30);
          *(a1 + 480) = (100 * *(a1 + 480) + (v30 >> 1)) / v30;
        }
      }
    }

    if (*(a1 + 530))
    {
      v31 = *(a1 + 520);
      if (v31)
      {
        *(a1 + 486) = *(a1 + 508) / *(a1 + 530);
        *(a1 + 488) = (100 * *(a1 + 488) + (v31 >> 1)) / v31;
        *(a1 + 492) = (100 * *(a1 + 492) + (v31 >> 1)) / v31;
        v32 = *(a1 + 524);
        if (v32)
        {
          *(a1 + 496) = (v32 + 100 * *(a1 + 496)) / (2 * v32);
          *(a1 + 500) = (100 * *(a1 + 500) + (v32 >> 1)) / v32;
        }
      }
    }

    v33 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "===All sessions are ready to report session stats===", buf, 2u);
      v33 = qword_100BCEA90;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 464);
      v35 = *(a1 + 466);
      v36 = *(a1 + 468);
      v37 = *(a1 + 472);
      v38 = *(a1 + 476);
      v39 = *(a1 + 480);
      *buf = 67110400;
      *&buf[4] = v34;
      v51 = 1024;
      v52 = v35;
      v53 = 1024;
      v54 = v36;
      v55 = 1024;
      v56 = v37;
      v57 = 1024;
      v58 = v38;
      v59 = 1024;
      v60 = v39;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "handle(0x%2X):rssi(%d), TxRR(%u), TxFR(%u), RxER(%u), RxMR(%u)", buf, 0x26u);
      v33 = qword_100BCEA90;
    }

    v40 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    if (v40)
    {
      v42 = *(a1 + 484);
      v43 = *(a1 + 486);
      v44 = *(a1 + 488);
      v45 = *(a1 + 492);
      v46 = *(a1 + 496);
      v47 = *(a1 + 500);
      *buf = 67110400;
      *&buf[4] = v42;
      v51 = 1024;
      v52 = v43;
      v53 = 1024;
      v54 = v44;
      v55 = 1024;
      v56 = v45;
      v57 = 1024;
      v58 = v46;
      v59 = 1024;
      v60 = v47;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "handle(0x%2X):rssi(%d), TxRR(%u), TxFR(%u), RxER(%u), RxMR(%u)", buf, 0x26u);
    }

    v48 = sub_100007EE8(v40, v41);
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100648098;
    v49[3] = &unk_100ADF8F8;
    v49[4] = a1;
    sub_10000CA94(v48, v49);
  }
}

double sub_100648098(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  sub_100641B04(qword_100B50918, a2);
  result = 0.0;
  *(v2 + 464) = 0u;
  *(v2 + 480) = 0u;
  *(v2 + 528) = 0;
  *(v2 + 496) = 0u;
  *(v2 + 512) = 0u;
  *(v2 + 464) = -1;
  *(v2 + 484) = -1;
  return result;
}

uint64_t sub_100648108(void *a1, int *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = _os_feature_enabled_impl();
  v7 = qword_100BCEA90;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating LEA easy pairing agent", buf, 2u);
    }

    *buf = 0;
    v17 = 0;
    sub_100007F88(buf, (a1 + 70));
    if (qword_100B508D0 != -1)
    {
      sub_1008550D4();
    }

    v8 = sub_100046458(off_100B508C8, v5, 0);
    v10 = BYTE5(v8);
    v11 = BYTE4(v8);
    v12 = BYTE3(v8);
    v13 = BYTE2(v8);
    v14 = BYTE1(v8);
    v15 = v8;
    operator new();
  }

  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
  {
    sub_100855A08();
  }

  return 0;
}

void sub_10064836C(uint64_t a1, void *a2)
{
  v3 = a2;
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 560);
  v4 = *(a1 + 624);
  if (v4 != *(a1 + 632))
  {
    v5 = (v4 + 1);
    while (1)
    {
      v6 = *v4;
      v7 = sub_100508BF8(*v4);
      v8 = [v7 UUIDString];
      v9 = [v3 UUIDString];
      v10 = [v8 isEqualToString:v9];

      if (v10)
      {
        break;
      }

      ++v4;
      v5 += 8;
      if (v4 == *(a1 + 632))
      {
        goto LABEL_12;
      }
    }

    v11 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Deleting easy pairing agent", v14, 2u);
    }

    v12 = *(a1 + 632);
    v13 = v12 - v5;
    if (v12 != v5)
    {
      memmove(v5 - 8, v5, v12 - v5);
    }

    *(a1 + 632) = &v5[v13 - 8];
    if (v6)
    {
      sub_100507E2C(v6);
      operator delete();
    }
  }

LABEL_12:
  sub_1000088CC(v15);
}

uint64_t sub_100648524(uint64_t a1)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 560);
  v2 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting LEA easy pairing agents", v10, 2u);
  }

  v3 = *(a1 + 624);
  v4 = *(a1 + 632) - v3;
  v5 = (v4 >> 3);
  if ((v4 >> 3))
  {
    v6 = 0;
    do
    {
      v7 = v6;
      v8 = *v3;
      v6 = sub_100508BF8(*v3);

      if (sub_100508BE0(v8))
      {
        sub_100643EB0(a1, v6);
      }

      else if (sub_100508BE8(v8))
      {
        sub_100648658(a1, v6);
      }

      ++v3;
      --v5;
    }

    while (v5);
  }

  return sub_1000088CC(v11);
}

void sub_100648640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100648658(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 648) == 1)
  {
    v4 = sub_100643FDC(a1, v3);
    if (v4 || (v4 = sub_100648108(a1, (a1 + 649), a1 + 264, v3)) != 0)
    {
      if (sub_100320F74(v4))
      {
        sub_100508BD8(v4);
      }

      else
      {
        sub_100508BB0(v4, 0);
        sub_100508924(v4, 1, 1);
        v5 = sub_100508C00(v4);
        v9[0] = 256;
        v9[1] = v5;
        v7 = sub_10000F034(v5, v6);
        (*(*v7 + 144))(v7, v9);
      }
    }
  }

  sub_10064836C(a1, v3);

  return 1;
}

void sub_100648768(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = sub_100643FDC(a1, v4);
  if (v3 || (v3 = sub_100648108(a1, (a1 + 649), a1 + 264, v4)) != 0)
  {
    sub_100508BB0(v3, 1);
  }
}

void sub_1006487F0(_BYTE *a1, void *a2)
{
  v3 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_100855A3C();
  }

  v4 = sub_100046458(off_100B508C8, v3, 0);
  a1[649] = BYTE5(v4);
  a1[650] = BYTE4(v4);
  a1[651] = BYTE3(v4);
  a1[652] = BYTE2(v4);
  a1[653] = BYTE1(v4);
  a1[654] = v4;
  a1[648] = 1;
  v5 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(a1 + 649, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315138;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Magnet link connected with device %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100648524(a1);
}

void sub_100648960(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_100855A3C();
  }

  v4 = sub_100046458(off_100B508C8, v3, 0);
  LOBYTE(v11) = BYTE5(v4);
  BYTE1(v11) = BYTE4(v4);
  BYTE2(v11) = BYTE3(v4);
  HIBYTE(v11) = BYTE2(v4);
  LOBYTE(v12) = BYTE1(v4);
  HIBYTE(v12) = v4;
  v5 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100063D0C(v4);
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "magnet link disconnected with device %@", buf, 0xCu);
  }

  v7 = (a1 + 649);
  if (v11 == *(a1 + 649) && v12 == *(a1 + 653))
  {
    *(a1 + 648) = 0;
  }

  else
  {
    v9 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_100063D0C(v4);
      sub_1000BE6F8(v7, buf);
      sub_100855A50(v10, buf, v15, v9);
    }
  }
}

void sub_100648B30(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (*(a1 + 648) == 1)
  {
    v8[0] = 0;
    v8[1] = 0;
    if (qword_100B508D0 != -1)
    {
      sub_100855A3C();
    }

    sub_1000498D4(off_100B508C8, (*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5], 0, 0, 0, 0, v8);
    v6 = sub_10004DF60(v8);
    v7 = sub_100643FDC(a1, v6);
    if (v7)
    {
      sub_100508134(v7, a1 + 649, a2, a3);
    }
  }
}

void sub_100648C58(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (*(a1 + 648) == 1)
  {
    v8[0] = 0;
    v8[1] = 0;
    if (qword_100B508D0 != -1)
    {
      sub_100855A3C();
    }

    sub_1000498D4(off_100B508C8, (*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5], 0, 0, 0, 0, v8);
    v6 = sub_10004DF60(v8);
    v7 = sub_100643FDC(a1, v6);
    if (v7)
    {
      sub_1005087CC(v7, (a1 + 649), a2, a3);
    }
  }
}

void sub_100648D80(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_100B508D0 != -1)
  {
    sub_100855A3C();
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_1000498D4(off_100B508C8, (*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5], 0, 0, 0, 0, v6);
  v4 = sub_10004DF60(v6);
  v5 = sub_100643FDC(a1, v4);
  if (v5)
  {
    sub_100508BB8(v5);
  }
}

void sub_100648E84(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_100B508D0 != -1)
  {
    sub_100855A3C();
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_1000498D4(off_100B508C8, (*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5], 0, 0, 0, 0, v6);
  v4 = sub_10004DF60(v6);
  v5 = sub_100643FDC(a1, v4);
  if (v5)
  {
    sub_100508BCC(v5);
  }
}

void sub_100648F88(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v7 = a4;
  v8 = *a2 == *(a1 + 649) && *(a2 + 4) == *(a1 + 653);
  v9 = !v8;
  v10 = qword_100BCEA90;
  v11 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      sub_1000BE6F8(a2, &__p);
      if (v34 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136315138;
      v36 = p_p;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sending pair status request to LEA device %s", buf, 0xCu);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p);
      }
    }

    for (i = *(a1 + 344); i != *(a1 + 352); ++i)
    {
      v14 = *i;
      v15 = (*i)[1];
      v16 = [v15 UUIDString];
      v17 = [v7 UUIDString];
      v18 = [v16 isEqualToString:v17];

      if (v18)
      {
        LOBYTE(__p) = 0;
        sub_1000216B4(&__p);
        sub_1002EA310(*v14, a3, 0);
        sub_100022214(&__p);
        sub_10002249C(&__p);
        break;
      }
    }
  }

  else
  {
    if (v11)
    {
      sub_1000BE6F8(a3, &__p);
      v19 = v34 >= 0 ? &__p : __p;
      *buf = 136315138;
      v36 = v19;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sending pair status request to magnet for device %s", buf, 0xCu);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p);
      }
    }

    __p = 0;
    v33 = 0;
    v34 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_1008550D4();
    }

    sub_100788FA0(off_100B508C8, v7, &__p);
    v20 = objc_alloc_init(NSMutableArray);
    v22 = v20;
    v23 = __p;
    if (__p != &v33)
    {
      do
      {
        v24 = [NSString alloc];
        v25 = v23 + 32;
        if (v23[55] < 0)
        {
          v25 = *v25;
        }

        v26 = [v24 initWithUTF8String:v25];
        [v22 addObject:v26];

        v27 = *(v23 + 1);
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = *(v23 + 2);
            v8 = *v28 == v23;
            v23 = v28;
          }

          while (!v8);
        }

        v23 = v28;
      }

      while (v28 != &v33);
    }

    v29 = sub_100432610(v20, v21);
    sub_1000BE6F8(a3, v30);
    (*(*v29 + 168))(v29, v30, v7, v22);
    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    sub_10004B61C(&__p, v33);
  }
}

void sub_100649384(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t *a5, _OWORD *a6, _OWORD *a7, void *a8)
{
  v15 = a8;
  if (*a2 == *(a1 + 649) && *(a2 + 4) == *(a1 + 653))
  {
    v28[0] = 0;
    v28[1] = 0;
    v29 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_100855A3C();
    }

    sub_10004FFDC(off_100B508C8, v15, v28);
    v17 = qword_100BCEA90;
    v18 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      sub_1000BE6F8(a3, __p);
      v20 = v27 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v31 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "sending store bonding info request to magnet link for device %s", buf, 0xCu);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v21 = sub_100432610(v18, v19);
    sub_1000BE6F8(a3, v24);
    if (SHIBYTE(v29) < 0)
    {
      sub_100008904(v22, v28[0], v28[1]);
    }

    else
    {
      *v22 = *v28;
      v23 = v29;
    }

    (*(*v21 + 176))(v21, v24, v22, a4, a5, a6, a7);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
    }
  }

  else
  {
    sub_100649620(a1, a3, a4, a5, a6, a7, v15);
  }
}

void sub_1006495B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void sub_100649620(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, _OWORD *a5, _OWORD *a6, void *a7)
{
  v10 = a7;
  v11 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending bonding info to LEA device", buf, 2u);
  }

  for (i = *(a1 + 344); i != *(a1 + 352); ++i)
  {
    v13 = *i;
    v14 = *(*i + 8);
    v15 = [v14 UUIDString];
    v16 = [v10 UUIDString];
    v17 = [v15 isEqualToString:v16];

    if (v17)
    {
      if (a3)
      {
        v18 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(v13 + 8);
          *buf = 138412290;
          v29 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending 'central identification' command to device %@", buf, 0xCu);
        }

        v27 = 0;
        sub_1000216B4(&v27);
        sub_1002EA368(*v13, a2, a3, a4);
        sub_100022214(&v27);
        v20 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(v13 + 8);
          *buf = 138412290;
          v29 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Sending 'identity information' command to device %@", buf, 0xCu);
        }

        sub_1000618AC(&v27);
        sub_1002EA3FC(*v13, a2, a6);
        sub_100022214(&v27);
        v22 = qword_100BCEA90;
        if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(v13 + 8);
          *buf = 138412290;
          v29 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Sending 'encryption information' command to device %@", buf, 0xCu);
        }

        sub_1000618AC(&v27);
        sub_1002EA484(*v13, a2, a5);
        sub_100022214(&v27);
        sub_10002249C(&v27);
      }

      break;
    }
  }
}

void sub_10064993C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4)
{
  if (qword_100B508D0 != -1)
  {
    sub_100855A3C();
  }

  v31[0] = 0;
  v31[1] = 0;
  sub_1000498D4(off_100B508C8, (*a3 << 40) | (a3[1] << 32) | (a3[2] << 24) | (a3[3] << 16) | (a3[4] << 8) | a3[5], 0, 0, 0, 0, v31);
  v8 = sub_10004DF60(v31);
  v9 = sub_100643FDC(a1, v8);
  v10 = v9;
  if (v9)
  {
    v11 = sub_100508C00(v9);
    LOWORD(v25[0]) = a4;
    WORD1(v25[0]) = v11;
    v13 = sub_10000F034(v11, v12);
    (*(*v13 + 144))(v13, v25);
    sub_100508BA8(v10, 0);
  }

  v14 = qword_100BCEA90;
  if (a4 == 2)
  {
    if (!os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    sub_1000BE6F8(a2, v25);
    v15 = v26;
    v16 = v25[0];
    sub_1000BE6F8(a3, __p);
    v17 = v25;
    if (v15 < 0)
    {
      v17 = v16;
    }

    if (v24 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    *buf = 136315394;
    v28 = v17;
    v29 = 2080;
    v30 = v18;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "LEA easy pair failed between devices %s and %s", buf, 0x16u);
  }

  else
  {
    if (!os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    sub_1000BE6F8(a2, v25);
    v19 = v26;
    v20 = v25[0];
    sub_1000BE6F8(a3, __p);
    v21 = v25;
    if (v19 < 0)
    {
      v21 = v20;
    }

    if (v24 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    *buf = 136315394;
    v28 = v21;
    v29 = 2080;
    v30 = v22;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "LEA easy pair succeeded between devices %s and %s", buf, 0x16u);
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

LABEL_24:
}

void sub_100649BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100649C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = 0;
  v7[1] = 0;
  v5[1] = 0;
  v6 = 0;
  v5[0] = 0;
  return (*(*a1 + 184))(a1, a2, a3, 0, &v6, v7, v5, a4);
}

uint64_t sub_100649CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = 0;
  v7[1] = 0;
  v5[1] = 0;
  v6 = 0;
  v5[0] = 0;
  return (*(*(a1 - 264) + 184))(a1 - 264, a2, a3, 0, &v6, v7, v5, a4);
}

void sub_100649D48(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100649E14;
  v7[3] = &unk_100AE1200;
  v9 = a1;
  v6 = v3;
  v8 = v6;
  sub_10000CA94(v5, v7);
}

void sub_100649E14(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCEA90;
  v4 = os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received lePairingCompleted", buf, 2u);
  }

  if (sub_1006447FC(v4, *(a1 + 32)))
  {
    v5 = qword_100BCEA90;
    if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connecting LE Audio over MFi LEA", buf, 2u);
    }
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_1008550D4();
    }

    v6 = off_100B508C8;
    v7 = *(a1 + 32);
    sub_100007E30(v13, "IsHearingAid");
    if (sub_10004EB40(v6, v7, v13))
    {
      if (qword_100B508D0 != -1)
      {
        sub_1008550D4();
      }

      v8 = off_100B508C8;
      v9 = *(a1 + 32);
      sub_100007E30(__p, "HearingAidSupportsWatch");
      v10 = sub_10004EB40(v8, v9, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v10 = 0;
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
      if (!v10)
      {
        return;
      }
    }

    else if (!v10)
    {
      return;
    }

    if (*(v2 + 655))
    {
      if (*(v2 + 648) == 1)
      {
        if (qword_100B50920 != -1)
        {
          sub_100855724();
        }

        sub_100643EB0(qword_100B50918, *(a1 + 32));
      }

      else
      {
        if (qword_100B50920 != -1)
        {
          sub_100855724();
        }

        sub_100643F54(qword_100B50918, *(a1 + 32));
      }
    }
  }
}

void sub_100649FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10064A038(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10064A104;
  v7[3] = &unk_100AE1200;
  v9 = a1;
  v6 = v3;
  v8 = v6;
  sub_10000CA94(v5, v7);
}

void sub_10064A104(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCEA90;
  if (os_log_type_enabled(qword_100BCEA90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received leDeviceUnpaired", buf, 2u);
  }

  if (qword_100B508D0 != -1)
  {
    sub_1008550D4();
  }

  v4 = off_100B508C8;
  v5 = *(a1 + 32);
  sub_100007E30(v11, "IsHearingAid");
  if (sub_10004EB40(v4, v5, v11))
  {
    if (qword_100B508D0 != -1)
    {
      sub_1008550D4();
    }

    v6 = off_100B508C8;
    v7 = *(a1 + 32);
    sub_100007E30(__p, "HearingAidSupportsWatch");
    v8 = sub_10004EB40(v6, v7, __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
    if (!v8)
    {
      return;
    }
  }

  else if (!v8)
  {
    return;
  }

  if (*(v2 + 655))
  {
    if (*(v2 + 648) == 1)
    {
      if (qword_100B50920 != -1)
      {
        sub_100855724();
      }

      sub_100648658(qword_100B50918, *(a1 + 32));
    }

    else
    {
      if (qword_100B50920 != -1)
      {
        sub_100855724();
      }

      sub_100648768(qword_100B50918, *(a1 + 32));
    }
  }
}

void sub_10064A2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10064A2E8(uint64_t a1)
{
  sub_10064A4B8(a1);

  operator delete();
}

uint64_t *sub_10064A338(uint64_t *a1)
{
  if (a1[4])
  {
    sub_1006420F4(a1);
  }

  sub_1003A2794(*a1);
  return a1;
}

uint64_t sub_10064A38C(uint64_t a1, uint64_t a2)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v3 = qword_100B50918;

  return sub_1006401BC(v3, a1);
}

uint64_t sub_10064A3F8(uint64_t a1, uint64_t a2)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v3 = qword_100B50918;

  return sub_100641344(v3, a1);
}

uint64_t sub_10064A464(uint64_t a1, uint64_t a2)
{
  if (qword_100B50920 != -1)
  {
    sub_100855818();
  }

  v3 = qword_100B50918;

  return sub_100640E64(v3, a1);
}

uint64_t sub_10064A4B8(uint64_t a1)
{
  *a1 = off_100B03260;
  *(a1 + 256) = off_100B03340;
  *(a1 + 264) = off_100B03390;
  *(a1 + 272) = off_100B033C0;
  v2 = *(a1 + 624);
  if (v2)
  {
    *(a1 + 632) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 560);
  v3 = *(a1 + 400);
  if (v3)
  {
    *(a1 + 408) = v3;
    operator delete(v3);
  }

  sub_10000CEDC(a1 + 368, *(a1 + 376));
  v4 = *(a1 + 344);
  if (v4)
  {
    *(a1 + 352) = v4;
    operator delete(v4);
  }

  sub_10007A068(a1 + 280);

  return sub_10032F580(a1);
}

void *sub_10064A990(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1000C7698();
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
      sub_100008108(a1, v10);
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
  return (v6 - 8);
}

void *sub_10064AA68(void *a1, xpc_connection_t connection)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = connection;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10064AB5C;
  handler[3] = &unk_100AEB340;
  handler[4] = a1;
  xpc_connection_set_event_handler(connection, handler);
  v4 = +[AudioDeviceManager sharedManager];
  xpc_connection_set_target_queue(connection, [v4 getXpcQueue]);

  xpc_connection_resume(connection);
  return a1;
}

void sub_10064AB34(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void sub_10064AB64(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    if (xpc_dictionary_get_uint64(object, "kBTAudioMsgMethod") == 13)
    {
      remote_connection = xpc_dictionary_get_remote_connection(object);
      *v31 = 0u;
      v32 = 0u;
      xpc_connection_get_audit_token();
      v9 = xpc_copy_code_signing_identity_for_token();
      v10 = v9;
      if (v9 && (!strcmp(v9, "com.apple.mediaserverd") || !strcmp(v10, "com.apple.audio.coreaudiod") || !strcmp(v10, "com.apple.audio.Core-Audio-Driver-Service") || !strcmp(v10, "com.apple.audiomxd")))
      {
        v11 = 1;
        v12 = v10;
      }

      else
      {
        v11 = 0;
        v12 = "";
      }

      std::string::assign((a1 + 8), v12);
      free(v10);
      v15 = sub_10000E92C();
      v16 = (*(*v15 + 8))(v15);
      if (v16)
      {
        v30 = 0;
        v17 = sub_10064B074(v16, remote_connection);
        v18 = sub_10000E92C();
        sub_100007E30(buf, "BTHALAudioPlugin");
        sub_100007E30(__p, "BypassAllowlist");
        (*(*v18 + 72))(v18, buf, __p, &v30);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        if (v36 < 0)
        {
          operator delete(*buf);
        }

        v19 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          v20 = "No";
          if (v17)
          {
            v21 = "Yes";
          }

          else
          {
            v21 = "No";
          }

          if (v30)
          {
            v20 = "Yes";
          }

          *buf = 136446466;
          *&buf[4] = v21;
          v34 = 2082;
          v35 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Bypassing proc check for audio plugin clients via entitlement = %{public}s , allowList = %{public}s", buf, 0x16u);
        }

        v22 = v17 | v30;
      }

      else
      {
        v22 = 0;
      }

      if ((v11 | v22))
      {
        v23 = +[AudioDeviceManager sharedManager];
        [v23 republishAllAudioDevices];
      }

      else
      {
        v24 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
        {
          sub_100855BD0(remote_connection, v24);
        }

        xpc_connection_cancel(remote_connection);
      }
    }

    else
    {
      v31[0] = 0;
      v31[1] = 0;
      *&v32 = 0;
      string = xpc_dictionary_get_string(object, "kBTAudioMsgDeviceUid");
      sub_100007E30(v31, string);
      v14 = +[AudioDeviceManager sharedManager];
      if (SBYTE7(v32) < 0)
      {
        sub_100008904(v26, v31[0], v31[1]);
      }

      else
      {
        *v26 = *v31;
        v27 = v32;
      }

      [v14 forwardEvent:object forUid:v26];
      if (SHIBYTE(v27) < 0)
      {
        operator delete(v26[0]);
      }

      if (SBYTE7(v32) < 0)
      {
        operator delete(v31[0]);
      }
    }
  }

  else if (type == &_xpc_type_error)
  {
    v5 = xpc_dictionary_get_string(object, _xpc_error_key_description);
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100855AE0(v5, v6);
    }

    if (object == &_xpc_error_connection_invalid)
    {
      v25 = +[AudioDeviceManager sharedManager];
      [v25 removeXpcClient:a1];
    }

    else
    {
      v7 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
      {
        sub_100855B58(v5, v7);
      }
    }
  }
}

void sub_10064AF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10064B018(uint64_t a1)
{
  xpc_connection_cancel(*a1);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_10064B054(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10064B074(uint64_t a1, uint64_t a2)
{
  v2 = xpc_connection_copy_entitlement_value();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = xpc_get_type(v2) == &_xpc_type_BOOL && xpc_BOOL_get_value(v3);
  xpc_release(v3);
  return v4;
}

char *sub_10064B0E0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[31] < 0)
  {
    return sub_100008904(a2, *(result + 1), *(result + 2));
  }

  *a2 = *(result + 8);
  *(a2 + 16) = *(result + 3);
  return result;
}

void sub_10064B108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100375F94(a1, "LEASendThread");
  *v4 = off_100B03698;
  *(v4 + 168) = a2;
  *(v4 + 184) = **(a2 + 536);
  *(v4 + 200) = 0;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  operator new[]();
}

uint64_t sub_10064B1C8(void *a1)
{
  *a1 = off_100B03698;
  if (a1[26])
  {
    operator delete[]();
  }

  return sub_100375A90(a1);
}

uint64_t sub_10064B250(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, *(a1 + 168) + 280);
  v2 = *(*(a1 + 168) + 536);
  if (v2 && *(v2 + 24) == a1)
  {
    v5 = *(a1 + 240);
    v3 = 1;
    if (v5 <= 1)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (!(*(*a1 + 112))(a1))
        {
          goto LABEL_4;
        }

        *(a1 + 240) = 1;
      }

      (*(*a1 + 120))(a1);
      *(a1 + 240) = 2;
    }

    else if (v5 != 2)
    {
      if (v5 != 3)
      {
        if (v5 != 4)
        {
          goto LABEL_4;
        }

        goto LABEL_21;
      }

LABEL_19:
      ++*(a1 + 200);
      if (!(*(*a1 + 136))(a1))
      {
        goto LABEL_4;
      }

      *(a1 + 240) = 4;
LABEL_21:
      ++*(a1 + 201);
      *(a1 + 224) = 0;
      *(a1 + 232) = 0;
      *(a1 + 240) = 0;
      goto LABEL_4;
    }

    (*(*a1 + 128))(a1);
    *(a1 + 240) = 3;
    goto LABEL_19;
  }

  v3 = 0;
LABEL_4:
  sub_1000088CC(v6);
  return v3;
}

BOOL sub_10064B404(uint64_t a1)
{
  v1 = *(a1 + 168);
  v2 = *(v1 + 344);
  v3 = *(v1 + 352);
  if (v2 == v3)
  {
    return sub_1002EA50C(0);
  }

  v4 = 0;
  do
  {
    if (*(*v2 + 32) == 8 && *(*v2 + 48) == 3)
    {
      ++v4;
    }

    v2 += 8;
  }

  while (v2 != v3);
  return sub_1002EA50C(v4);
}

void sub_10064B44C(uint64_t result, uint64_t a2)
{
  v4 = *(result + 192);
  v5 = v4[2];
  if (v5 == 4)
  {
    if (v4[4])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if (v8 + 1 >= v4[3] && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
        {
          sub_100855C60(&v10, v11);
        }

        *(a2 + v9++) = *(a2 + v8 + 1) | (16 * *(a2 + v8));
        v4 = *(result + 192);
        v8 += 2;
      }

      while (v9 < v4[4]);
    }
  }

  else if (v5 == 6)
  {
    if (v4[4])
    {
      v6 = 0;
      do
      {
        v7 = (8 * v6) / 6u;
        if (v7 + 1 >= v4[3] && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
        {
          sub_100855C60(&v10, v11);
        }

        *(a2 + v6) = ((*(a2 + v7 + 1) >> 2) >> ((4 - (8 * v6 - 6 * v7)) & 0xFE)) | (*(a2 + v7) >> 2 << (8 * v6 - 6 * v7 + 2));
        ++v6;
        v4 = *(result + 192);
      }

      while (v6 < v4[4]);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
  {
    sub_100855CAC();
  }
}

void sub_10064B640(void *result)
{
  v1 = result[24];
  if (*(v1 + 2) != 8)
  {
    if (result[28] != *(v1 + 3) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_100855D2C();
    }

    sub_10064B44C(result, result[26]);
    result[28] = *(result[24] + 4);
  }
}

uint64_t sub_10064B760(uint64_t a1)
{
  *a1 = off_100B03738;
  free(*(a1 + 248));

  return sub_10064B1C8(a1);
}

void sub_10064B7B8(uint64_t a1)
{
  *a1 = off_100B03738;
  free(*(a1 + 248));
  sub_10064B1C8(a1);

  operator delete();
}

BOOL sub_10064B824(uint64_t *a1)
{
  v1 = a1 + 28;
  v2 = a1[28];
  v3 = a1[24];
  v4 = v3[3];
  v5 = v4 - v2;
  if (v4 == v2)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_100855FE0();
    }

    return 1;
  }

  if ((v3[5] & 1) == 0)
  {
    v9 = sub_1003A2C24(a1[23], (a1[26] + v2), v4 - v2);
    a1[28] += v9;
    return v9 == v5;
  }

  v7 = a1[27];
  if (v3[4])
  {
    if (!(v4 % v5))
    {
      goto LABEL_19;
    }

    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_100855DAC();
    }

    result = 0;
    *v1 = 0;
    v1[1] = 0;
    return result;
  }

  if (v2)
  {
    return 1;
  }

  do
  {
LABEL_19:
    if (v7 < v2)
    {
      v12 = qword_100BCE8D0;
      result = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100855F68(v7, v12);
      return 0;
    }

    v10 = sub_1003A2C94(a1[23], (a1[26] + v2), v7 - v2);
    if (!v10)
    {
      v13 = qword_100BCE8D0;
      result = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      sub_100855EEC(v1, v13);
      return 0;
    }

    v11 = a1[24];
    if (!*(v11 + 4))
    {
      v14 = *v1 + v10;
      *v1 = v14;
      if (v14 > *(v11 + 3) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_26;
      }

      return 1;
    }

    if (*(v11 + 3) % v10)
    {
      result = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      sub_100855E14();
      return 0;
    }

    v2 = *v1 + v10;
    *v1 = v2;
    v5 -= v10;
  }

  while (v5);
  if (v2 != *(v11 + 3) && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
  {
LABEL_26:
    sub_100855E80();
  }

  return 1;
}

BOOL sub_10064BA88(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C7D0(a1, a2);
  v5 = sub_100410864(v3, v4);
  v6 = *(a1 + 232);
  if (*(*(a1 + 192) + 6) == 1)
  {
    if (!v6)
    {
      v7 = (*(a1 + 224) - 1) / (*(a1 + 176) - 1);
      if ((v7 & 0xFC) != 0 && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
      {
        sub_10085609C();
      }

      **(a1 + 248) = v7 | (4 * *(a1 + 201));
      v6 = *(a1 + 232);
    }

    v8 = (a1 + 248);
    v9 = *(a1 + 224) - v6;
    v10 = *(a1 + 176) - 1;
    v11 = v9 <= v10;
    if (v9 >= v10)
    {
      v12 = *(a1 + 176) - 1;
    }

    else
    {
      v12 = *(a1 + 224) - v6;
    }

    memcpy((*(a1 + 248) + 1), (*(a1 + 208) + v6), v12);
    v13 = v12 + 1;
  }

  else
  {
    if (v6 && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_10085601C();
    }

    v8 = (a1 + 208);
    v12 = *(a1 + 224);
    if (v12 > *(a1 + 176))
    {
      v14 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        v22 = "fAudioBuffer.getFillLevel() <= fMaxPacketSize";
        _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
        v12 = *(a1 + 224);
      }
    }

    v11 = 1;
    v13 = v12;
  }

  v15 = *v8;
  *(a1 + 232) += v12;
  v20 = 0;
  sub_1000216B4(&v20);
  if ((v5 & 1) != 0 || sub_10064B404(a1))
  {
    v16 = *(a1 + 168);
    v17 = *(v16 + 344);
    if (v17 != *(v16 + 352))
    {
      do
      {
        v18 = *v17;
        if (*(*v17 + 32) == 8 && *(v18 + 48) == 3 && sub_1002EA5B0(*v18, v15, v13, *(a1 + 200), v5 ^ 1u) == 410 && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
        {
          sub_10085615C(buf, &v22);
        }

        ++v17;
      }

      while (v17 != *(*(a1 + 168) + 352));
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_10085611C();
  }

  sub_10002249C(&v20);
  return v11;
}