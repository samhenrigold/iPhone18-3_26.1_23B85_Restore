void sub_6B7DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char **sub_6B7DEC(uint64_t *a1, uint64_t a2, char **a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v16 = *a1;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) + 1;
    if (v17 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v16) >> 3);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x555555555555555)
    {
      v19 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v17;
    }

    v32 = a1;
    if (v19)
    {
      if (v19 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    __p = 0;
    v29 = 8 * ((a2 - v16) >> 3);
    v30 = v29;
    v31 = 0;
    sub_6B9338(&__p, a3);
    v4 = sub_6B95AC(a1, &__p, v4);
    v24 = v29;
LABEL_37:
    for (i = v30; i != v24; i -= 24)
    {
      v25 = *(i - 24);
      v30 = i - 24;
      if (v25)
      {
        *(i - 16) = v25;
        operator delete(v25);
        goto LABEL_37;
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (a2 == v7)
  {
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
    v23 = a3[1] - *a3;
    if (v23)
    {
      if ((v23 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    a1[1] = (v7 + 3);
  }

  else
  {
    v8 = v7 - 3;
    v9 = a1[1];
    if (v7 >= 0x18)
    {
      v9 = (v7 + 3);
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      *v7 = *v8;
      v7[2] = *(v7 - 1);
      *v8 = 0;
      *(v7 - 2) = 0;
      *(v7 - 1) = 0;
    }

    a1[1] = v9;
    if (v7 != (a2 + 24))
    {
      v10 = 0;
      v11 = a2 - v7 + 24;
      do
      {
        v13 = &v7[v10 / 8];
        v15 = &v7[v10 / 8 - 3];
        v14 = *v15;
        if (*v15)
        {
          *(v13 - 2) = v14;
          operator delete(v14);
          *v15 = 0;
          v7[v10 / 8 - 2] = 0;
          v7[v10 / 8 - 1] = 0;
        }

        v12 = v13 - 6;
        *v15 = *(v13 - 3);
        *(v13 - 1) = *(v13 - 4);
        *v12 = 0;
        v12[1] = 0;
        v12[2] = 0;
        v10 -= 24;
      }

      while (v11 != v10);
      v9 = a1[1];
    }

    v20 = v9 <= a3 || v4 > a3;
    v21 = 3;
    if (v20)
    {
      v21 = 0;
    }

    v22 = &a3[v21];
    if (v4 != v22)
    {
      sub_384B90(v4, *v22, v22[1], v22[1] - *v22);
    }
  }

  return v4;
}

void sub_6B8090(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_6B80B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_42F8B4(va);
  _Unwind_Resume(a1);
}

unint64_t sub_6B80C4(uint64_t a1, uint64_t a2, int **a3, _BYTE *a4, _BYTE *a5)
{
  sub_6E5620(a1 + 8, a3, 0, &v24);
  v8 = *v24;
  v9 = v24[1];
  if (*v24 == v9)
  {
LABEL_30:
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0x1000000000000;
    v22 = v25;
    if (!v25)
    {
      return v19 | v18 | v21 | v20;
    }

    goto LABEL_31;
  }

  while (1)
  {
    if (*(v8 + 241) != 1 || (*(v8 + 242) & 1) != 0)
    {
      goto LABEL_4;
    }

    v10 = *(v8 + 24);
    v11 = (v10 - 21) > 0x2D || ((1 << (v10 - 21)) & 0x250000002281) == 0;
    if (!v11 || v10 == 2)
    {
      v13 = 1;
      v14 = 1;
      v15 = v10 - 20;
      if ((v10 - 20) <= 0x2D)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = 0;
      v14 = 1;
      v15 = v10 - 20;
      if ((v10 - 20) <= 0x2D)
      {
LABEL_16:
        if (((1 << v15) & 0x250000002281) != 0)
        {
          goto LABEL_17;
        }
      }
    }

    if (v10 != 1)
    {
      v14 = 0;
    }

LABEL_17:
    if (*(v8 + 208) != -1 && *(v8 + 216) != 0x7FFFFFFFFFFFFFFFLL && (v13 && *a4 != 1 || v14 && (*a5 & 1) == 0))
    {
      v17 = *v8;
      v16 = *(v8 + 8);
      if (*v8 != v16)
      {
        break;
      }
    }

LABEL_3:
    *a4 |= v13;
    *a5 |= v14;
LABEL_4:
    v8 += 248;
    if (v8 == v9)
    {
      goto LABEL_30;
    }
  }

  while (!sub_312B7C(a3, *v17))
  {
    if (++v17 == v16)
    {
      goto LABEL_3;
    }
  }

  v20 = *v17 & 0xFF00000000000000;
  v21 = *v17 & 0xFF000000000000;
  v18 = *v17 & 0xFFFF00000000;
  v19 = *v17;
  v22 = v25;
  if (v25)
  {
LABEL_31:
    if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }

  return v19 | v18 | v21 | v20;
}

uint64_t sub_6B82E0(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(&v8, " failed", &v7);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_6B8398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

void sub_6B8418(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_6E5620((a1 + 1), a3, 0, &v22);
  v6 = *v22;
  v7 = v22[1];
  if (*v22 != v7)
  {
    while (1)
    {
      if (*(v6 + 241) == 1)
      {
        v8 = *(v6 + 24);
        if (!v8 || v8 == 3)
        {
          break;
        }
      }

      v6 += 248;
      if (v6 == v7)
      {
        goto LABEL_16;
      }
    }
  }

  if (v6 == v7 || (v11 = *v6, v10 = *(v6 + 8), v11 == v10))
  {
LABEL_16:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0x1000000000000;
    v18 = v23;
    if (!v23)
    {
      return;
    }

    goto LABEL_22;
  }

  v12 = *a1;
  v13 = *(v10 - 8);
  v14 = sub_2B51D8(*a1, v13 & 0xFFFFFFFFFFFFLL);
  if (*(v12 + 7772) == 1)
  {
    v15 = sub_30C50C(v12 + 3896, v13, 0);
    v16 = &v15[-*v15];
    if (*v16 < 5u)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v16 + 2);
      if (v17)
      {
        v17 += &v15[*&v15[v17]];
      }
    }

    v19 = v17 + ((v13 >> 30) & 0x3FFFC) + 4 + *(v17 + ((v13 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_31D7E8(v12, v13 & 0xFFFFFFFFFFFFLL, 1);
  *a4 = v14;
  *(a4 + 8) = v19;
  *(a4 + 16) = v20;
  *(a4 + 24) = v21;
  *(a4 + 32) = v13;
  v18 = v23;
  if (v23)
  {
LABEL_22:
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }
  }
}

void sub_6B85E0(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  sub_59DC48(a1, a2, 1, (a1 + 7776));
  v8 = *(a1 + 7776);
  v9 = *(a1 + 7784);
  if (v8 == v9)
  {
LABEL_14:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 6) = 1;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0x7FFFFFFFFFFFFFFFLL;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    return;
  }

  while (1)
  {
    if (__PAIR64__(*(v8 + 4), *v8) == __PAIR64__(WORD2(a2), a2) && *(v8 + 6) == BYTE6(a2))
    {
      goto LABEL_4;
    }

    v10 = sub_2B4EDC(a1, a2 & 0xFFFFFFFFFFFFLL, (a2 & 0xFF000000000000) == 0);
    if (v10 == sub_2B4EDC(a1, *v8 & 0xFFFFFFFFFFFFLL, (*v8 & 0xFF000000000000) == 0))
    {
      goto LABEL_4;
    }

    if (a3 == 1)
    {
      break;
    }

    if (!a3 && *(v8 + 40) == 1)
    {
      *a4 = *v8;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v12 != v11)
      {
        if (((v12 - v11) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      goto LABEL_18;
    }

LABEL_4:
    v8 += 48;
    if (v8 == v9)
    {
      goto LABEL_14;
    }
  }

  if (*(v8 + 41) != 1)
  {
    goto LABEL_4;
  }

  *a4 = *v8;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  v13 = *(v8 + 16);
  v14 = *(v8 + 24);
  if (v14 != v13)
  {
    if (((v14 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

LABEL_18:
  *(a4 + 40) = *(v8 + 40);
}

void sub_6B880C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 24) = v10;
  sub_4B5A18(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_6B8850(uint64_t a1, void *a2, int a3, int a4, unint64_t a5)
{
  if (a3 >= a4)
  {
    return 1;
  }

  v25 = v5;
  v26 = v6;
  v10 = a4;
  v11 = a3;
  do
  {
    v15 = sub_4D1F50(a2, v11);
    v14 = v11 + 1;
    v16 = sub_6B89EC(a1, a2, v11, v11 + 1);
    if (v16 == -1)
    {
      sub_6E5620(a1 + 8, v15, 0, &v23);
      for (i = *v23; ; i += 248)
      {
        if (i == v23[1])
        {
          v20 = 1;
          v21 = v24;
          if (!v24)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        if (*(i + 241) == 1 && (*(i + 243) & 1) == 0)
        {
          v18 = *(i + 24);
          if (v18 != 3 && v18 != 0)
          {
            break;
          }
        }
      }

      v20 = 0;
      v21 = v24;
      if (!v24)
      {
LABEL_19:
        if (v20)
        {
          goto LABEL_4;
        }

        return 0;
      }

LABEL_18:
      if (atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_19;
      }

      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
      if (v20)
      {
        goto LABEL_4;
      }

      return 0;
    }

    v12 = v16;
    v13 = sub_4D1F50(a2, v16);
    v14 = v12;
    if (sub_312B7C(v15, *(v13 + 32) & 0xFFFFFFFFFFFFFFLL) < a5)
    {
      return 0;
    }

LABEL_4:
    v11 = v14;
  }

  while (v14 < v10);
  return 1;
}

uint64_t sub_6B89EC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (sub_4D1DC0(a2) <= a4)
  {
    return -1;
  }

  v8 = sub_4D1F50(a2, a3);
  sub_311DB8(v8, (a1 + 7624));
  if (*(a1 + 7624) == *(a1 + 7632))
  {
    return -1;
  }

  sub_4D0560();
  v10 = v9;
  v12 = v11 + a4;
  v13 = *(*(a1 + 7568) + 2056) + a4;
  if (v13 < sub_4D1DC0(a2))
  {
    v14 = v12 + *(*(a1 + 7568) + 2056);
    v15 = v10;
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_30:
    if (!v15 || v14 >= sub_4D1DC0(v15))
    {
      goto LABEL_47;
    }

    do
    {
      v29 = sub_4D1F50(v10, v12);
      v30 = *(a1 + 7624);
      v31 = *(a1 + 7632);
      if (v30 != v31)
      {
        v32 = *(v29 + 32);
        while (__PAIR64__(*(v30 + 4), *v30) != __PAIR64__(WORD2(v32), v32) || *(v30 + 6) != BYTE6(v32))
        {
          v30 += 8;
          if (v30 == v31)
          {
            goto LABEL_34;
          }
        }
      }

      if (v30 != v31)
      {
        break;
      }

LABEL_34:
      ++v12;
    }

    while (v14 < sub_4D1DC0(v15));
LABEL_41:
    if (v10)
    {
      goto LABEL_42;
    }

LABEL_47:
    if (!v15 || v14 >= sub_4D1DC0(v15))
    {
      return -1;
    }

    goto LABEL_49;
  }

  sub_4D0568();
  v15 = v27;
  v14 = v28;
  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_5:
  if (v15)
  {
    while (1)
    {
      v16 = sub_4D1DC0(v10);
      v17 = sub_4D1DC0(v15);
      if (v12 >= v16 || v14 >= v17)
      {
        if (v12 < v16 == v14 < v17)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v18 = sub_4D1F50(v10, v12);
        if (v18 == sub_4D1F50(v15, v14))
        {
          goto LABEL_41;
        }
      }

      v19 = sub_4D1F50(v10, v12);
      v20 = *(a1 + 7624);
      v21 = *(a1 + 7632);
      if (v20 != v21)
      {
        v22 = *(v19 + 32);
        while (__PAIR64__(*(v20 + 4), *v20) != __PAIR64__(WORD2(v22), v22) || *(v20 + 6) != BYTE6(v22))
        {
          v20 += 8;
          if (v20 == v21)
          {
            goto LABEL_9;
          }
        }
      }

      if (v20 != v21)
      {
        goto LABEL_41;
      }

LABEL_9:
      ++v12;
    }
  }

  if (v12 < sub_4D1DC0(v10))
  {
    while (1)
    {
      v23 = sub_4D1F50(v10, v12);
      v24 = *(a1 + 7624);
      v25 = *(a1 + 7632);
      if (v24 != v25)
      {
        v26 = *(v23 + 32);
        while (__PAIR64__(*(v24 + 4), *v24) != __PAIR64__(WORD2(v26), v26) || *(v24 + 6) != BYTE6(v26))
        {
          v24 += 8;
          if (v24 == v25)
          {
            goto LABEL_22;
          }
        }
      }

      if (v24 != v25)
      {
        goto LABEL_41;
      }

LABEL_22:
      if (++v12 >= sub_4D1DC0(v10))
      {
        goto LABEL_41;
      }
    }
  }

LABEL_42:
  v33 = sub_4D1DC0(v10);
  v34 = v33;
  if (v15)
  {
    v35 = sub_4D1DC0(v15);
    if (v12 >= v34 || v14 >= v35)
    {
      if (v12 < v34 == v14 < v35)
      {
        return -1;
      }
    }

    else
    {
      v36 = sub_4D1F50(v10, v12);
      if (v36 == sub_4D1F50(v15, v14))
      {
        return -1;
      }
    }

LABEL_49:
    sub_4D0560();
    return v12 - v37;
  }

  if (v12 < v33)
  {
    goto LABEL_49;
  }

  return -1;
}

unint64_t sub_6B8D68(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3));
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

  return *a1 + 40 * a2;
}

void sub_6B8EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

__n128 sub_6B8F84(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *a1 = v2;
  *(a1 + 8) = v3;
  a2[1] = 0;
  v4 = a2[2];
  *(a1 + 16) = v4;
  v5 = a2[3];
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 8);
  if (v5)
  {
    v6 = *(v4 + 8);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v6 %= v7;
      }
    }

    else
    {
      v6 &= v7 - 1;
    }

    *(v2 + 8 * v6) = a1 + 16;
    a2[2] = 0;
    a2[3] = 0;
  }

  v8 = a2[7];
  *(a1 + 56) = v8;
  v9 = a2[5];
  *(a1 + 48) = a2[6];
  a2[5] = 0;
  *(a1 + 40) = v9;
  a2[6] = 0;
  v10 = a2[8];
  *(a1 + 64) = v10;
  *(a1 + 72) = *(a2 + 18);
  if (v10)
  {
    v11 = *(v8 + 8);
    v12 = *(a1 + 48);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(v9 + 8 * v11) = a1 + 56;
    a2[7] = 0;
    a2[8] = 0;
  }

  v13 = a2[12];
  *(a1 + 96) = v13;
  v14 = a2[10];
  *(a1 + 88) = a2[11];
  a2[10] = 0;
  *(a1 + 80) = v14;
  a2[11] = 0;
  v15 = a2[13];
  *(a1 + 104) = v15;
  *(a1 + 112) = *(a2 + 28);
  if (v15)
  {
    v16 = *(v13 + 8);
    v17 = *(a1 + 88);
    if ((v17 & (v17 - 1)) != 0)
    {
      if (v16 >= v17)
      {
        v16 %= v17;
      }
    }

    else
    {
      v16 &= v17 - 1;
    }

    *(v14 + 8 * v16) = a1 + 96;
    a2[12] = 0;
    a2[13] = 0;
  }

  v18 = a2[17];
  *(a1 + 136) = v18;
  v19 = a2[15];
  *(a1 + 128) = a2[16];
  a2[15] = 0;
  *(a1 + 120) = v19;
  a2[16] = 0;
  v20 = a2[18];
  *(a1 + 144) = v20;
  *(a1 + 152) = *(a2 + 38);
  if (v20)
  {
    v21 = *(v18 + 8);
    v22 = *(a1 + 128);
    if ((v22 & (v22 - 1)) != 0)
    {
      if (v21 >= v22)
      {
        v21 %= v22;
      }
    }

    else
    {
      v21 &= v22 - 1;
    }

    *(v19 + 8 * v21) = a1 + 136;
    a2[17] = 0;
    a2[18] = 0;
  }

  *(a1 + 160) = *(a2 + 40);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 184) = a2[23];
  a2[21] = 0;
  a2[22] = 0;
  a2[23] = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = *(a2 + 12);
  *(a1 + 208) = a2[26];
  a2[24] = 0;
  a2[25] = 0;
  a2[26] = 0;
  v23 = a2[27];
  *(a1 + 223) = *(a2 + 223);
  *(a1 + 216) = v23;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 248) = a2[31];
  a2[30] = 0;
  a2[31] = 0;
  a2[29] = 0;
  v25 = *(a2 + 20);
  v24 = *(a2 + 21);
  v26 = *(a2 + 19);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 320) = v25;
  *(a1 + 336) = v24;
  *(a1 + 304) = v26;
  result = *(a2 + 18);
  v28 = *(a2 + 16);
  *(a1 + 272) = *(a2 + 17);
  *(a1 + 288) = result;
  *(a1 + 256) = v28;
  return result;
}

uint64_t *sub_6B91D4(void **a1, uint64_t *a2)
{
  v2 = 0x4FA4FA4FA4FA4FA5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xB60B60B60B60B6)
  {
    sub_1794();
  }

  if (0x9F49F49F49F49F4ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9F49F49F49F49F4ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FA4FA4FA4FA4FA5 * ((a1[2] - *a1) >> 3)) >= 0x5B05B05B05B05BLL)
  {
    v5 = 0xB60B60B60B60B6;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xB60B60B60B60B6)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  sub_6B8F84(v6, a2);
  v7 = (360 * v2 + 360);
  v8 = *a1;
  v9 = a1[1];
  v10 = (v6 + *a1 - v9);
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      sub_6B8F84(v12, v11);
      v11 += 45;
      v12 = v13 + 360;
    }

    while (v11 != v9);
    do
    {
      sub_5C3168(v8);
      v8 += 45;
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

void sub_6B9338(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      v10 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      if (v4 == *a1)
      {
        v10 = 1;
      }

      if (v10 < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = (0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + 1) / -2;
    v5 = v6 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v7 >> 3) + 1) / 2);
    if (v6 != v4)
    {
      do
      {
        v9 = *v5;
        if (*v5)
        {
          *(v5 + 8) = v9;
          operator delete(v9);
          *v5 = 0;
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *v5 = *v6;
        *(v5 + 16) = *(v6 + 16);
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        v6 += 24;
        v5 += 24;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = v6 + 24 * v8;
    a1[2] = v5;
  }

  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v11 = a2[1] - *a2;
  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  a1[2] += 24;
}

void sub_6B9590(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6B95AC(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v9;
      v8[2] = *(v9 + 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      v9 += 24;
      v8 += 3;
    }

    while (v9 != v7);
    v10 = a3;
    do
    {
      v11 = *v10;
      if (*v10)
      {
        *(v10 + 8) = v11;
        operator delete(v11);
      }

      v10 += 24;
    }

    while (v10 != v7);
  }

  v12 = *a1;
  v13 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v14 = v13 + v12 - a3;
  if (v12 != a3)
  {
    v15 = v12;
    v16 = (v13 + v12 - a3);
    do
    {
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      *v16 = *v15;
      v16[2] = *(v15 + 16);
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      v15 += 24;
      v16 += 3;
    }

    while (v15 != a3);
    do
    {
      v17 = *v12;
      if (*v12)
      {
        *(v12 + 8) = v17;
        operator delete(v17);
      }

      v12 += 24;
    }

    while (v12 != a3);
  }

  a2[1] = v14;
  v18 = *a1;
  *a1 = v14;
  a1[1] = v18;
  a2[1] = v18;
  v19 = a1[1];
  a1[1] = a2[2];
  a2[2] = v19;
  v20 = a1[2];
  a1[2] = a2[3];
  a2[3] = v20;
  *a2 = a2[1];
  return v6;
}

void **sub_6B9710(void ***a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v3)
  {
    v3 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * (a1[1] - *a1);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = (24 * v2 + 24);
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
      v11 += 24;
      v12 += 24;
    }

    while (v11 != v9);
    do
    {
      v13 = *v8;
      if (*v8)
      {
        *(v8 + 1) = v13;
        operator delete(v13);
      }

      v8 += 24;
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

uint64_t sub_6B987C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(a1 + 16) = v2;
  *(a1 + 32) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  *(a1 + 72) = v2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = -1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = -1;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 256) = -1;
  *(a1 + 224) = v2;
  *(a1 + 240) = v2;
  *(a1 + 208) = v2;
  *(a1 + 264) = 0;
  *(a1 + 272) = -1;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 304) = xmmword_2297C80;
  *(a1 + 320) = 98;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = -1;
  *(a1 + 352) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 374) = 0;
  *(a1 + 384) = 5;
  *(a1 + 386) = 0;
  *(a1 + 456) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  sub_734CE0(a1 + 464);
  *(a1 + 616) = 0;
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *(a1 + 624) = v3;
  *(a1 + 640) = v3;
  *(a1 + 656) = v3;
  *(a1 + 672) = -1;
  *(a1 + 680) = 0;
  *(a1 + 688) = -1;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 769) = 0u;
  *(a1 + 824) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 804) = 0;
  *(a1 + 809) = 0;
  *(a1 + 788) = 0u;
  sub_734CE0(a1 + 848);
  *(a1 + 1000) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1008) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1016) = xmmword_2291180;
  sub_608080(a1 + 1032);
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 1984) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 1936) = 0u;
  *(a1 + 1920) = 0u;
  *(a1 + 1904) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 2041) = 0u;
  *(a1 + 2057) = 3;
  *(a1 + 2064) = 0;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 1;
  *(a1 + 2092) = 0;
  *(a1 + 2104) = -1;
  *(a1 + 2096) = -1;
  *(a1 + 2112) = -1;
  *(a1 + 2116) = 0x7FFFFFFF;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0;
  *(a1 + 2176) = 0xBFF0000000000000;
  *(a1 + 2184) = 0;
  *(a1 + 2192) = 0u;
  *(a1 + 2208) = 0x7FFFFFFF;
  *(a1 + 2212) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 2224) = 0;
  *(a1 + 2240) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2232) = off_266BB28;
  *(a1 + 2272) = 0;
  *(a1 + 2276) = 1;
  *(a1 + 2288) = 0u;
  *(a1 + 2304) = 0;
  *(a1 + 2280) = off_266BB60;
  *(a1 + 2312) = 0;
  *(a1 + 2314) = 0;
  *(a1 + 2328) = 0u;
  *(a1 + 2344) = 0;
  *(a1 + 2320) = off_266B8A8;
  *(a1 + 2352) = 0;
  *(a1 + 2408) = 0;
  *(a1 + 2392) = 0u;
  *(a1 + 2376) = 0;
  *(a1 + 2384) = 0;
  *(a1 + 2360) = 0u;
  *(a1 + 2416) = 1;
  *(a1 + 2433) = 0;
  *(a1 + 2440) = 0;
  *(a1 + 2417) = 0u;
  *(a1 + 2448) = 0x7FFFFFFF;
  *(a1 + 2464) = 0;
  *(a1 + 2456) = 0x7FFFFFFF;
  *(a1 + 2460) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 2472) = 0;
  *(a1 + 2480) = 0x8000000080000000;
  *(a1 + 2536) = 0;
  *(a1 + 2504) = 0u;
  *(a1 + 2520) = 0u;
  *(a1 + 2488) = 0u;
  *(a1 + 2540) = 0x7FFFFFFF;
  *(a1 + 2544) = 0x8000000080000000;
  *(a1 + 2560) = 0;
  *(a1 + 2568) = 0;
  *(a1 + 2576) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2592) = -1;
  *(a1 + 2584) = -1;
  *(a1 + 2600) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2608) = 0;
  return a1;
}

void sub_6B9B94(_Unwind_Exception *a1)
{
  sub_3E5388(v1 + 848);
  sub_5ED22C((v1 + 824));
  sub_528FAC((v1 + 792));
  sub_5ED8EC((v1 + 704));
  sub_3E5388(v1 + 464);
  sub_593FC8((v1 + 440));
  sub_593FC8((v1 + 416));
  sub_593FC8(v2);
  sub_5ECFBC(v1 + 136);
  _Unwind_Resume(a1);
}

void **sub_6B9BF8(void ***a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v2)
  {
    v2 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 8 * (a1[1] - *a1);
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = (v5 + 24);
  v8 = *a1;
  v9 = a1[1];
  v10 = (v5 + *a1 - v9);
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      *v12 = *v11;
      v12[2] = v11[2];
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      v11 += 3;
      v12 += 3;
    }

    while (v11 != v9);
    do
    {
      v13 = *v8;
      if (*v8)
      {
        v8[1] = v13;
        operator delete(v13);
      }

      v8 += 3;
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

void sub_6B9DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  sub_42F8B4(va);
  _Unwind_Resume(a1);
}

void *sub_6B9DE4(void *a1, unint64_t a2, uint64_t a3)
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

void sub_6B9F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
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

void sub_6B9F80()
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
  xmmword_27A2CD0 = 0u;
  unk_27A2CE0 = 0u;
  dword_27A2CF0 = 1065353216;
  sub_3A9A34(&xmmword_27A2CD0, v0, v0);
  sub_3A9A34(&xmmword_27A2CD0, v3, v3);
  sub_3A9A34(&xmmword_27A2CD0, __p, __p);
  sub_3A9A34(&xmmword_27A2CD0, v9, v9);
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
    qword_27A2CA8 = 0;
    qword_27A2CB0 = 0;
    qword_27A2CA0 = 0;
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

void sub_6BA1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A2CB8)
  {
    qword_27A2CC0 = qword_27A2CB8;
    operator delete(qword_27A2CB8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6BA274(uint64_t a1, void *a2, const void **a3, uint64_t a4)
{
  v7 = sub_67A1F8(a1, a2, 0, 0, a3);
  sub_6B0C24(v7 + 2568, a2, a1, a4);
  sub_6BAA30(a1 + 10312, a2, a1);
  sub_6C5170((a1 + 10784), a2, a1, a4);
  sub_92CC54(a1 + 10808, a2, a4, a1);
  return a1;
}

void sub_6BA310(_Unwind_Exception *a1)
{
  sub_6BA518((v1 + 2568));
  if (*(v1 + 2375) < 0)
  {
    operator delete(*(v1 + 2352));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_6BA350(void *a1, void *a2)
{
  sub_6B0CE8(a1 + 321, a2);
  sub_6BAA34(a1 + 1289, a2);
  sub_6C51A0(a1 + 1348, a2);
  v4 = a2[138];
  v5 = a2[139];
  while (v4 != v5)
  {
    if ((*(v4 + 160) - 89) <= 1)
    {
      v6 = *(v4 + 2016);
        ;
      }

      *(v4 + 2016) = i;
    }

    v4 += 2616;
  }

  return sub_92CC7C((a1 + 1351), a2);
}

void sub_6BA418(void *a1)
{
  nullsub_1();
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*v2 != v4)
  {
    do
    {
      sub_6B0CE8(a1 + 321, v3);
      sub_6BAA34(a1 + 1289, v3);
      sub_6C51A0(a1 + 1348, v3);
      v5 = v3[138];
      v6 = v3[139];
      while (v5 != v6)
      {
        if ((*(v5 + 160) - 89) <= 1)
        {
          v7 = *(v5 + 2016);
            ;
          }

          *(v5 + 2016) = i;
        }

        v5 += 2616;
      }

      sub_92CC7C((a1 + 1351), v3);
      v3 += 1582;
    }

    while (v3 != v4);
  }
}

void *sub_6BA518(void *a1)
{
  v2 = a1[965];
  if (v2)
  {
    a1[966] = v2;
    operator delete(v2);
  }

  v3 = a1[962];
  if (v3)
  {
    a1[963] = v3;
    operator delete(v3);
  }

  v4 = a1[959];
  if (v4)
  {
    a1[960] = v4;
    operator delete(v4);
  }

  v5 = a1[956];
  if (v5)
  {
    v6 = a1[957];
    v7 = a1[956];
    if (v6 != v5)
    {
      do
      {
        v9 = *(v6 - 32);
        if (v9)
        {
          v10 = *(v6 - 24);
          v8 = *(v6 - 32);
          if (v10 != v9)
          {
            do
            {
              v11 = *(v10 - 24);
              if (v11)
              {
                *(v10 - 16) = v11;
                operator delete(v11);
              }

              v10 -= 32;
            }

            while (v10 != v9);
            v8 = *(v6 - 32);
          }

          *(v6 - 24) = v9;
          operator delete(v8);
        }

        v6 -= 48;
      }

      while (v6 != v5);
      v7 = a1[956];
    }

    a1[957] = v5;
    operator delete(v7);
  }

  v12 = a1[953];
  if (v12)
  {
    a1[954] = v12;
    operator delete(v12);
  }

  sub_6D2D60(a1 + 1);
  return a1;
}

void sub_6BA610()
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
  xmmword_27A2D28 = 0u;
  unk_27A2D38 = 0u;
  dword_27A2D48 = 1065353216;
  sub_3A9A34(&xmmword_27A2D28, v0, v0);
  sub_3A9A34(&xmmword_27A2D28, v3, v3);
  sub_3A9A34(&xmmword_27A2D28, __p, __p);
  sub_3A9A34(&xmmword_27A2D28, v9, v9);
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
    qword_27A2D00 = 0;
    qword_27A2D08 = 0;
    qword_27A2CF8 = 0;
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

void sub_6BA858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A2D10)
  {
    qword_27A2D18 = qword_27A2D10;
    operator delete(qword_27A2D10);
  }

  _Unwind_Resume(exception_object);
}

void sub_6BA904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  HIBYTE(v6[2]) = 19;
  strcpy(v6, "GDFTimeDomainParser");
  memset(__p, 0, sizeof(__p));
  v4 = sub_3AEC94(a2, v6, __p);
  sub_EE90(a1, v4);
}

void sub_6BAA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_6BAA34(void *a1, void *a2)
{
  v4 = a2[138];
  v5 = a2[139];
  if (v4 != v5)
  {
    do
    {
      if (*(v4 + 2008) != *(v4 + 2016))
      {
        v6 = (v4 + 385);
        if (!*(v4 + 386))
        {
          v6 = a2 + 1097;
        }

        sub_6BAD38(a1, v4, *v6);
        sub_6BAFC8(a1, a2, v4);
      }

      v4 += 2616;
    }

    while (v4 != v5);
    v4 = a2[138];
    v5 = a2[139];
  }

  while (v4 != v5)
  {
    v7 = *(v4 + 2008);
    v8 = *(v4 + 2016);
    while (v7 != v8)
    {
      v9 = sub_6C6B88(v7);
      if (v9)
      {
        v10 = 0;
        v11 = v9;
        do
        {
          if (sub_6C784C(v7, v10))
          {
            if (sub_6BCFEC(a1, a2, v7, v10))
            {
              sub_6CA738(v7, v10);
            }
          }

          ++v10;
        }

        while (v11 != v10);
      }

      v7 += 360;
    }

    v4 += 2616;
  }

  sub_6BB414(a1, a2);
  v12 = sub_6BB604(a1, a2);
  v13 = sub_6BBDDC(v12, a2);
  v14 = a2[138];
  v15 = a2[139];
  if (v14 != v15)
  {
    do
    {
      v17 = *(v14 + 2016) - *(v14 + 2008);
      if (v17)
      {
        v18 = 0;
        v19 = 0x4FA4FA4FA4FA4FA5 * (v17 >> 3);
        do
        {
          v20 = sub_6B1BFC((v14 + 2008), v18);
          v13 = sub_6C6B88(v20);
          if (v13)
          {
            v21 = 0;
            v22 = v13;
            do
            {
              if (!sub_6C784C(v20, v21) || (v13 = sub_6C75FC(v20, v21), v13))
              {
                v31 = sub_6BDF88(a1, v14, v18, v21);
                v13 = sub_6CA720(v20, v21, &v31);
              }

              ++v21;
            }

            while (v22 != v21);
          }

          ++v18;
        }

        while (v18 != v19);
      }

      v16 = (v14 + 385);
      if (!*(v14 + 386))
      {
        v16 = a2 + 1097;
      }

      sub_6BC31C(v13, v14, *v16);
      v14 += 2616;
    }

    while (v14 != v15);
    v14 = a2[138];
    v15 = a2[139];
  }

  for (; v14 != v15; v14 += 2616)
  {
    v23 = *(v14 + 2008);
    for (i = *(v14 + 2016); v23 != i; v23 += 360)
    {
      if (*(v14 + 386))
      {
        v25 = (v14 + 385);
      }

      else
      {
        v25 = a2 + 1097;
      }

      v26 = *v25;
      v27 = sub_6C6E64(v23);
      if (v27)
      {
        sub_6BD830(v27, v23);
        sub_6BDAA4(v28, v23);
      }

      if (v26 != 1)
      {
        sub_6C9634(v23);
      }
    }
  }

  v29 = sub_74700();
  result = sub_74244(v29);
  if (result == 1)
  {
    return sub_6BC63C(result, a2);
  }

  return result;
}

uint64_t sub_6BAD38(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 160);
  if ((v3 - 25) <= 0x3F && ((1 << (v3 - 25)) & 0x9000000000000001) != 0 || v3 == 17)
  {
    return result;
  }

  v6 = *(a2 + 2008) + 360 * (*(a2 + 64) - *(a2 + 40));
  v7 = result;
  result = sub_6C9078(v6);
  if (!result || (*(*(v7 + 464) + 2501) & 1) == 0 && ((v3 - 41) < 0x13 || v3 == 7 || v3 == 26))
  {
    return result;
  }

  v10 = *(a2 + 160);
  if (v10 - 82 >= 3 && (v10 > 0x27 || ((1 << v10) & 0x8600050000) == 0))
  {
    goto LABEL_24;
  }

  if (sub_6C6B88(v6) < 2u)
  {
    v10 = *(a2 + 160);
    if (v10 - 82 < 3)
    {
LABEL_26:
      if (sub_6C6B88(v6) == 1)
      {
LABEL_36:
        v16 = v6;
        v17 = 0;
        v18 = 1;
        goto LABEL_39;
      }

LABEL_27:
      v13 = sub_6C6B88(v6);
      if (v13)
      {
        v14 = 0;
        v15 = v13;
        do
        {
          if ((sub_6C90A0(v6, v14) & 1) != 0 || sub_6CA980(v6, v14))
          {
            sub_6C90D0(v6, v14, 1);
          }

          ++v14;
        }

        while (v15 != v14);
      }

      if (sub_6CA980(v6, 0) || sub_6C6B88(v6) != 1)
      {
        goto LABEL_40;
      }

      goto LABEL_36;
    }

LABEL_24:
    if (v10 > 0x27 || ((1 << v10) & 0x8600050000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v3 == 33)
  {
    v12 = 0;
    v11 = 1;
  }

  else
  {
    if (v3 != 34)
    {
      v20 = sub_6C6B88(v6);
      if (v20)
      {
        v21 = 0;
        v22 = v20;
        do
        {
          sub_6C90D0(v6, v21++, 1);
        }

        while (v22 != v21);
      }

      goto LABEL_40;
    }

    v11 = 0;
    v12 = 1;
  }

  sub_6C90D0(v6, 0, v11 == a3);
  v19 = sub_6C6B88(v6) - 1;
  v18 = v12 == a3;
  v17 = v19;
  v16 = v6;
LABEL_39:
  sub_6C90D0(v16, v17, v18);
LABEL_40:

  return sub_6C7E98(v6, 4);
}

uint64_t sub_6BAFC8(uint64_t a1, void *a2, void *a3)
{
  v6 = a3[8];
  v7 = sub_6B1BFC(a3 + 251, v6 - a3[5]);
  sub_5F1934(v46, v7);
  v44 = a2;
  v8 = sub_4D1F50(a2, v6);
  v9 = (*v8 - **v8);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = *(*v8 + v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *sub_6BCA74(v44 + 1479, v6);
  v42 = sub_67A3D8(*(a1 + 464), v12);
  v41 = sub_67A3F4(*(a1 + 464), v12);
  v40 = sub_67A448(*(a1 + 464), v12);
  v39 = sub_67A410(*(a1 + 464), v12);
  v37 = sub_67A42C(*(a1 + 464), v12);
  v13 = *(a3 + 10);
  v14 = v13 - 1;
  v15 = v6 - 1;
  if (v13 - 1 >= v6 - 1)
  {
    v14 = v6 - 1;
  }

  v43 = v14;
  if (v15 >= v13)
  {
    v17 = v15;
    v18 = v11;
    v38 = a1;
    do
    {
      v19 = sub_6BCC6C(v17);
      sub_69D1C4(v44, v19, __p);
      v20 = sub_7494F0(__p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v21 = sub_6B1BFC(a3 + 251, v17 - a3[5]);
      if (((sub_6C8EE0(v21) & 1) != 0 || sub_6C8EEC(v21)) && !sub_6C6B88(v21))
      {
        goto LABEL_11;
      }

      v22 = sub_5DBECC(a3 + 251, v17 - a3[5]);
      v23 = sub_6C8EF8(v22);
      if ((v23 & 1) != 0 || (v24 = sub_6CA9B0(v22), v23 = sub_6C6B88(v22), v23 == v24) || (v23 = sub_6C6B88(v22), !v23))
      {
        v27 = 0;
      }

      else
      {
        v25 = 0;
        v26 = v23 - 1;
        do
        {
          v23 = sub_6C75FC(v22, v25);
          v27 = v23;
          if (v26 == v25++)
          {
            v29 = 1;
          }

          else
          {
            v29 = v23;
          }
        }

        while (v29 != 1);
        a1 = v38;
      }

      v30 = sub_6BCDA8(v23, a3, v17);
      v31 = v30;
      if (v18 <= v42 || v11 <= v41)
      {
        sub_6BCE8C(v30, a3, v17, v46);
      }

      if (!sub_6C7034(v21))
      {
        v32 = sub_6C6A34(__p);
        sub_6BCE8C(v32, a3, v17, __p);
        sub_5C3168(__p);
      }

      sub_5FB8BC(v46, v21);
      if (sub_6C7E90(v21))
      {
        goto LABEL_11;
      }

      sub_6C7E98(v21, 1);
      if (v18 < v40)
      {
        goto LABEL_11;
      }

      v33 = sub_6BCA74(v44 + 1479, v17);
      v34 = v27 & v31;
      v35 = *v33;
      if (v18 > v39)
      {
        v34 = 0;
      }

      if (v34 == 1)
      {
        sub_6C7E98(v21, 7);
        v41 = sub_67A3F4(*(a1 + 464), v35);
      }

      else
      {
        if (v31)
        {
          if (v18 <= v39)
          {
            v36 = 5;
          }

          else
          {
            v36 = 3;
          }
        }

        else
        {
          if (!v27)
          {
            goto LABEL_11;
          }

          if (v18 <= v37)
          {
            v36 = 6;
          }

          else
          {
            v36 = 3;
          }
        }

        sub_6C7E98(v21, v36);
        v41 = sub_67A3F4(*(a1 + 464), v35);
      }

      v11 = 0;
LABEL_11:
      v11 += v20;
      v18 += v20;
      --v17;
    }

    while (v43 != v17);
  }

  return sub_5C3168(v46);
}

void sub_6BB374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BB414(void *result, uint64_t a2)
{
  v2 = *(a2 + 1112);
  v3 = *(a2 + 1104);
  v4 = 0x3795876FF3795877 * ((v2 - v3) >> 3);
  if (v4 >= 3)
  {
    v7 = 2616;
    while (v2 + v7 - 2616 != v3)
    {
      v8 = *(v2 + v7 - 4848);
      v7 -= 2616;
      if (v8 == 5)
      {
        v9 = v4 + ~(0x3795876FF3795877 * (-v7 >> 3));
        v10 = v2 + v7;
        if (*(v10 - 608) != *(v10 - 600))
        {
          v11 = sub_6B1BFC((v10 - 608), *(v10 - 2552) - *(v10 - 2576));
          sub_6C94B4(v11, v11);
        }

        if (v9 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v9;
        }

        if (v9 >= 2)
        {
          v13 = 1;
          do
          {
            v14 = sub_578320((a2 + 1104), v13);
            if (v14[251] == v14[252])
            {
              ++v13;
            }

            else
            {
              v15 = v14;
              v16 = sub_6B1BFC(v14 + 251, v14[8] - v14[5]);
              v17 = sub_578320((a2 + 1104), ++v13);
              if (*(v17 + 1008) > sub_67A3D8(result[58], *(v17 + 2057)) || (v18 = sub_6C7034(v16), v18 <= 1u))
              {
                sub_6C94B4(v16, v16);
              }

              else if ((*(v17 + 2058) & 1) != 0 || v15[9] < v15[3] || (sub_6BD330(v18, v15, v17, v16), v18 = sub_6C6E64(v16), !v18))
              {
                v19 = v15 + 385;
                if (!*(v15 + 386))
                {
                  v19 = (a2 + 1097);
                }

                sub_6BD478(v18, v17, v16, *v19);
              }
            }
          }

          while (v13 != v12);
        }

        return;
      }
    }
  }
}

uint64_t sub_6BB604(uint64_t result, void *a2)
{
  v2 = a2[138];
  v65 = a2[139];
  v66 = result;
  if (v2 != v65)
  {
    v3 = 0x1020C0086475758;
    while (*(v2 + 2008) == *(v2 + 2016))
    {
LABEL_4:
      v2 += 2616;
      if (v2 == v65)
      {
        return result;
      }
    }

    v4 = *(v2 + 64);
    v5 = sub_6B57E8(a2 + 1479, v4);
    v67 = sub_67A42C(*(v66 + 464), *v5);
    sub_69D1C4(a2, v4, &__p);
    v6 = sub_7494F0(&__p);
    if (__p)
    {
      v75 = __p;
      operator delete(__p);
    }

    v7 = sub_6B1BFC((v2 + 2008), *(v2 + 64) - *(v2 + 40));
    sub_5F1934(&__p, v7);
    v8 = *(v2 + 64);
    v9 = v8 - 1;
    v10 = *(v2 + 40);
    if (v10 - 1 < v8 - 1)
    {
      v9 = v10 - 1;
    }

    v69 = v9;
    if (v8 <= v10)
    {
LABEL_71:
      v47 = sub_6B1BFC((v2 + 2008), v8 - v10);
      v48 = *(v2 + 160);
      if (v48 - 82 >= 3)
      {
        v49 = v47;
        if (v48 > 0x27 || ((1 << v48) & 0x8600050000) == 0)
        {
          v50 = *(v2 + 72);
          v51 = *(v2 + 24);
          v52 = v50 >= v51;
          if (v50 > v51)
          {
            v51 = *(v2 + 72);
          }

          v68 = v51;
          if (!v52)
          {
            do
            {
              v70 = v50;
              v53 = sub_6B1BFC((v2 + 2008), v50 - *(v2 + 40));
              v54 = sub_6C6B88(v49);
              if (v54)
              {
                v55 = 0;
                v56 = v54;
                do
                {
                  v57 = sub_6CA868(v49, v55);
                  v58 = v2;
                  v59 = v3;
                  v61 = *v57;
                  v60 = v57[1];
                  if (*v57 != v60)
                  {
                    do
                    {
                      v62 = *v61;
                      v63 = sub_6C784C(v49, v55);
                      sub_6C90D0(v53, v62, v63);
                      v64 = sub_6C9088(v49, v55);
                      sub_6C90F0(v53, v62, v64);
                      ++v61;
                    }

                    while (v61 != v60);
                  }

                  ++v55;
                  v3 = v59;
                  v2 = v58;
                }

                while (v55 != v56);
              }

              v49 = sub_6B1BFC((v2 + 2008), v70 - *(v2 + 40));
              v50 = v70 + 1;
            }

            while (v70 + 1 != v68);
          }
        }
      }

      result = sub_5C3168(&__p);
      goto LABEL_4;
    }

    v11 = v8 - 1;
    while (1)
    {
      v18 = sub_6B1BFC((v2 + 2008), v11 - *(v2 + 40));
      if (((sub_6C8EE0(v18) & 1) != 0 || sub_6C8EEC(v18)) && !sub_6C6B88(v18))
      {
        v46 = sub_6BCC6C(v11);
        sub_69D1C4(a2, v46, &v72);
        v30 = sub_7494F0(&v72);
        if (v72)
        {
          v73 = v72;
          operator delete(v72);
        }

        goto LABEL_14;
      }

      if (v6 <= v67)
      {
        if (sub_6C8EF8(v18) && !sub_6CA9B0(v18) && (v23 = sub_6C6B88(v18), sub_6C6B88(&__p) == v23))
        {
          sub_6C93D0(v18, &__p);
        }

        else
        {
          v24 = sub_6C6B88(v18);
          if (v24)
          {
            v25 = 0;
            v26 = v24;
            do
            {
              v27 = sub_6CA868(v18, v25);
              if (sub_6C784C(v18, v25))
              {
                v28 = sub_6CA128(&__p, v27);
              }

              else
              {
                v28 = 0;
              }

              sub_6C90F0(v18, v25++, v28);
            }

            while (v26 != v25);
          }

          if (!sub_6C6E64(v18))
          {
            sub_6BD594(v66, v2, v18);
          }
        }
      }

      else
      {
        v19 = sub_6C6B88(v18);
        if (v19)
        {
          v20 = 0;
          v21 = v19;
          do
          {
            if (sub_6C784C(v18, v20))
            {
              v22 = !sub_6C75FC(v18, v20);
            }

            else
            {
              v22 = 0;
            }

            sub_6C90F0(v18, v20++, v22);
          }

          while (v21 != v20);
        }
      }

      v29 = sub_6BCC6C(v11);
      sub_69D1C4(a2, v29, &v72);
      v30 = sub_7494F0(&v72);
      if (v72)
      {
        v73 = v72;
        operator delete(v72);
      }

      if (&__p != v18)
      {
        break;
      }

      v82 = *(v18 + 160);
      v12 = *(v18 + 223);
      v85[0] = *(v18 + 216);
      *(v85 + 7) = v12;
LABEL_13:
      v13 = *(v18 + 256);
      v14 = *(v18 + 288);
      v88 = *(v18 + 272);
      v89 = v14;
      v87 = v13;
      v15 = *(v18 + 304);
      v16 = *(v18 + 320);
      v17 = *(v18 + 336);
      v93 = *(v18 + 352);
      v91 = v16;
      v92 = v17;
      v90 = v15;
LABEL_14:
      v6 += v30;
      if (v69 == --v11)
      {
        v10 = *(v2 + 40);
        v8 = *(v2 + 64);
        goto LABEL_71;
      }
    }

    v78 = *(v18 + 32);
    v31 = *(v18 + 16);
    if (!*&v75 || (bzero(__p, 8 * *&v75), v32 = v76, v76 = 0, v77 = 0, !v32))
    {
LABEL_43:
      if (v31)
      {
        operator new();
      }

LABEL_67:
      v79[8] = *(v18 + 72);
      sub_5FC0A8(v79, *(v18 + 56), 0);
      v80[8] = *(v18 + 112);
      sub_5FC2D0(v80, *(v18 + 96), 0);
      v81[8] = *(v18 + 152);
      sub_5FC2D0(v81, *(v18 + 136), 0);
      v82 = *(v18 + 160);
      sub_5FC404(&v83, *(v18 + 168), *(v18 + 176), 0xAAAAAAAAAAAAAAABLL * ((*(v18 + 176) - *(v18 + 168)) >> 3));
      sub_5FC404(&v84, *(v18 + 192), *(v18 + 200), 0xAAAAAAAAAAAAAAABLL * ((*(v18 + 200) - *(v18 + 192)) >> 3));
      v45 = *(v18 + 216);
      *(v85 + 7) = *(v18 + 223);
      v85[0] = v45;
      sub_5FC668(v86, *(v18 + 232), *(v18 + 240), (*(v18 + 240) - *(v18 + 232)) >> 6);
      goto LABEL_13;
    }

    while (1)
    {
      v35 = v32;
      if (!v31)
      {
        do
        {
          v44 = *v35;
          operator delete(v35);
          v35 = v44;
        }

        while (v44);
        goto LABEL_67;
      }

      v36 = *(v31 + 16);
      v32[16] = v36;
      v37 = (v32 + 16);
      v32[17] = *(v31 + 17);
      v32 = *v32;
      v35[1] = v36;
      v38 = sub_5FBC6C(&__p, v36, v37);
      v39 = v75;
      v40 = v35[1];
      v41 = vcnt_s8(v75);
      v41.i16[0] = vaddlv_u8(v41);
      if (v41.u32[0] > 1uLL)
      {
        if (v40 >= *&v75)
        {
          v40 %= *&v75;
        }
      }

      else
      {
        v40 &= *&v75 - 1;
      }

      if (v38)
      {
        *v35 = *v38;
        *v38 = v35;
        if (!*v35)
        {
          goto LABEL_48;
        }

        v42 = *(*v35 + 8);
        if (v41.u32[0] > 1uLL)
        {
          if (v42 >= *&v39)
          {
            v42 %= *&v39;
          }
        }

        else
        {
          v42 &= *&v39 - 1;
        }

        if (v42 == v40)
        {
          goto LABEL_48;
        }

        v34 = __p + 8 * v42;
      }

      else
      {
        *v35 = v76;
        v76 = v35;
        v43 = __p;
        *(__p + v40) = &v76;
        if (!*v35)
        {
          goto LABEL_48;
        }

        v33 = *(*v35 + 8);
        if (v41.u32[0] <= 1uLL)
        {
          v33 &= *&v39 - 1;
        }

        else if (v33 >= *&v39)
        {
          v33 %= *&v39;
        }

        v34 = &v43[8 * v33];
      }

      *v34 = v35;
LABEL_48:
      ++v77;
      v31 = *v31;
      if (!v32)
      {
        goto LABEL_43;
      }
    }
  }

  return result;
}

uint64_t sub_6BBDDC(uint64_t a1, uint64_t a2)
{
  sub_6C6A3C(v41, 0);
  v38 = a2;
  v3 = *(a2 + 1112) - *(a2 + 1104);
  if (v3)
  {
    v4 = 0;
    v37 = 0x3795876FF3795877 * (v3 >> 3);
    do
    {
      v5 = sub_578320((v38 + 1104), v4);
      v6 = v5[251];
      if (v6 != v5[252])
      {
        if (sub_6C6E64(v41))
        {
          v7 = sub_6C6B88(v41);
          if (v7)
          {
            v8 = 0;
            v9 = v7;
            do
            {
              v10 = sub_6CA868(v41, v8);
              v11 = *v10;
              v12 = v10[1];
              while (v11 != v12)
              {
                v13 = *v11;
                if (v13 < sub_6C6B88(v6))
                {
                  if (sub_6C9088(v41, v8))
                  {
                    sub_6C911C(v6, v13, 1);
                  }
                }

                ++v11;
              }

              ++v8;
            }

            while (v8 != v9);
          }
        }

        else
        {
          v14 = sub_6C6B88(v6);
          if (v14)
          {
            v15 = 0;
            v16 = v14;
            do
            {
              sub_6C911C(v6, v15++, 1);
            }

            while (v16 != v15);
          }
        }

        v17 = sub_6C7168(v6);
        v39 = v4;
        if (v17 > sub_6C7034(v6) && sub_6C7E90(v6) <= 1)
        {
          sub_6C7E98(v6, 2);
        }

        v18 = 0x4FA4FA4FA4FA4FA5 * ((v5[252] - v5[251]) >> 3);
        if (v18 >= 2)
        {
          for (i = 1; i != v18; ++i)
          {
            v23 = sub_6B1BFC(v5 + 251, i - 1);
            v24 = sub_6B1BFC(v5 + 251, i);
            if (sub_6C7168(v23))
            {
              v25 = sub_6C6B88(v23);
              if (v25)
              {
                v26 = 0;
                v27 = v25;
                do
                {
                  if (sub_6C90B8(v23, v26))
                  {
                    v28 = sub_6CA868(v23, v26);
                    v29 = *v28;
                    v30 = v28[1];
                    while (v29 != v30)
                    {
                      v31 = *v29;
                      if (v31 < sub_6C6B88(v24))
                      {
                        sub_6C911C(v24, v31, 1);
                      }

                      ++v29;
                    }
                  }

                  v32 = sub_6C7168(v24);
                  if (sub_6C6B88(v24) == v32)
                  {
                    break;
                  }

                  ++v26;
                }

                while (v26 != v27);
              }
            }

            if (!sub_6C7168(v24))
            {
              v33 = sub_6C6B88(v24);
              if (v33)
              {
                v34 = 0;
                v35 = v33;
                do
                {
                  sub_6C911C(v24, v34++, 1);
                }

                while (v35 != v34);
              }
            }
          }
        }

        v19 = v5[9];
        v20 = v5[3];
        if (v19 == v20)
        {
          v21 = sub_6B1BFC(v5 + 251, v5[8] - v5[5]);
          v4 = v39;
LABEL_45:
          sub_5F1934(v40, v21);
          goto LABEL_4;
        }

        v4 = v39;
        if (v19 < v20)
        {
          v21 = v5[252] - 360;
          goto LABEL_45;
        }
      }

      sub_6C6A3C(v40, 0);
LABEL_4:
      sub_6BDD8C(v41, v40);
      sub_5C3168(v40);
      ++v4;
    }

    while (v4 != v37);
  }

  return sub_5C3168(v41);
}

void sub_6BC178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  sub_5C3168(va);
  _Unwind_Resume(a1);
}

void sub_6BC31C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 1;
  switch(*(a2 + 160))
  {
    case 1:
    case 0x1B:
      v3 = 3;
      v4 = *(a2 + 2008);
      v5 = *(a2 + 2016);
      if (v4 != v5)
      {
        goto LABEL_21;
      }

      return;
    case 2:
    case 0x1C:
      v3 = 4;
      v4 = *(a2 + 2008);
      v5 = *(a2 + 2016);
      if (v4 != v5)
      {
        goto LABEL_21;
      }

      return;
    case 4:
      v3 = 13;
      goto LABEL_18;
    case 0xB:
      if (a3)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }

      v4 = *(a2 + 2008);
      v5 = *(a2 + 2016);
      if (v4 == v5)
      {
        return;
      }

      goto LABEL_21;
    case 0x14:
    case 0x1D:
    case 0x3E:
    case 0x41:
LABEL_18:
      v4 = *(a2 + 2008);
      v5 = *(a2 + 2016);
      if (v4 != v5)
      {
        goto LABEL_21;
      }

      return;
    case 0x15:
    case 0x1E:
    case 0x3F:
    case 0x42:
      v3 = 2;
      v4 = *(a2 + 2008);
      v5 = *(a2 + 2016);
      if (v4 == v5)
      {
        return;
      }

      goto LABEL_21;
    case 0x3C:
      v3 = 5;
      v4 = *(a2 + 2008);
      v5 = *(a2 + 2016);
      if (v4 == v5)
      {
        return;
      }

      goto LABEL_21;
    case 0x3D:
      v3 = 6;
      v4 = *(a2 + 2008);
      v5 = *(a2 + 2016);
      if (v4 == v5)
      {
        return;
      }

      goto LABEL_21;
    default:
      v3 = 12;
      v4 = *(a2 + 2008);
      v5 = *(a2 + 2016);
      if (v4 == v5)
      {
        return;
      }

      break;
  }

  do
  {
LABEL_21:
    if ((sub_6C7D08(v4) & 1) != 0 || sub_6C7D24(v4))
    {
      v6 = sub_6C6B88(v4);
      if (v6)
      {
        v7 = 0;
        v8 = v6;
        do
        {
          if (sub_6C9088(v4, v7))
          {
            v9 = sub_6C8244(v4, v7);
            if (sub_6C7D24(v4))
            {
              v10 = v3;
            }

            else
            {
              v10 = 12;
            }

            v13 = v10;
            v11 = v9[1];
            v12 = *v9;
            if (*v9 != v11)
            {
              while (*v12 != v10)
              {
                if (++v12 == v11)
                {
                  v12 = v9[1];
                  break;
                }
              }
            }

            if (v11 == v12)
            {
              sub_6C82CC(v4, v7, &v13);
            }

            else
            {
              sub_6C8538(v4, v7, &v12[-*v9], 0);
            }
          }

          ++v7;
        }

        while (v7 != v8);
      }
    }

    v4 += 360;
  }

  while (v4 != v5);
}

uint64_t sub_6BC63C(uint64_t a1, void *a2)
{
  v3 = sub_74700();
  if (*sub_7424C(v3))
  {
    v4 = sub_7424C(v3);
    if (!*(*v4 + *(**v4 - 24) + 32))
    {
      v7 = sub_7424C(v3);
      sub_5DC0E8(*v7, a2);
      result = sub_7E7E4(1u);
      if (!result)
      {
        return result;
      }

      sub_19594F8(&v15);
      sub_4A5C(&v15, "Successfully wrote DOT graph.", 29);
      if ((v25 & 0x10) != 0)
      {
        v11 = v24;
        if (v24 < v21)
        {
          v24 = v21;
          v11 = v21;
        }

        v12 = v20;
        v8 = v11 - v20;
        if (v11 - v20 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if ((v25 & 8) == 0)
        {
          v8 = 0;
          v14 = 0;
LABEL_30:
          *(&__p + v8) = 0;
          sub_7E854(&__p, 1u);
          goto LABEL_31;
        }

        v12 = v18;
        v8 = v19 - v18;
        if ((v19 - v18) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_38:
          sub_3244();
        }
      }

      if (v8 >= 0x17)
      {
        operator new();
      }

      v14 = v8;
      if (v8)
      {
        memmove(&__p, v12, v8);
      }

      goto LABEL_30;
    }
  }

  result = sub_7E7E4(3u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v15);
  sub_4A5C(&v15, "Could not write DOT graph to debug stream!", 42);
  if ((v25 & 0x10) != 0)
  {
    v9 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v9 = v21;
    }

    v10 = v20;
    v6 = v9 - v20;
    if (v9 - v20 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_21:
      sub_3244();
    }

LABEL_14:
    if (v6 >= 0x17)
    {
      operator new();
    }

    v14 = v6;
    if (v6)
    {
      memmove(&__p, v10, v6);
    }

    goto LABEL_19;
  }

  if ((v25 & 8) != 0)
  {
    v10 = v18;
    v6 = v19 - v18;
    if ((v19 - v18) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v6 = 0;
  v14 = 0;
LABEL_19:
  *(&__p + v6) = 0;
  sub_7E854(&__p, 3u);
LABEL_31:
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  std::locale::~locale(&v17);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_6BC9FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

unint64_t sub_6BCA74(void *a1, unint64_t a2)
{
  if (a1[1] - *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, a1[1] - *a1);
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

  return *a1 + a2;
}

void sub_6BCB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_6BCC6C(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(&v8, " failed", &v7);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_6BCD28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t sub_6BCDA8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = sub_5DBECC((a2 + 2008), a3 - *(a2 + 40));
  if (sub_6C8EF8(v3))
  {
    return 0;
  }

  v4 = sub_6C6B88(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = v4;
  while (1)
  {
    v7 = sub_6C8244(v3, v5);
    if (v7[1] - *v7 >= 2uLL)
    {
      v8 = sub_6C8244(v3, v5);
      v9 = *v8;
      v10 = v8[1];
      if (*v8 != v10)
      {
        while (*v9 != 12)
        {
          if (++v9 == v10)
          {
            v9 = v8[1];
            break;
          }
        }
      }

      if (v9 != v10)
      {
        return 1;
      }
    }

    if (++v5 == v6)
    {
      return 0;
    }
  }
}

void sub_6BCE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_6B1BFC((a2 + 2008), a3 - *(a2 + 40));
  if (!sub_6CA9B0(v5) && (v6 = sub_6C6B88(v5), sub_6C6B88(a4) == v6) && sub_6C8EF8(v5))
  {

    sub_6C92F0(v5, a4);
  }

  else
  {
    v7 = sub_6C6B88(v5);
    if (v7)
    {
      v8 = 0;
      v9 = v7;
      do
      {
        v11 = sub_6CA868(v5, v8);
        if (*v11 == v11[1])
        {
          if (sub_6CA9B0(v5))
          {
            v10 = 0;
          }

          else
          {
            v10 = !sub_6C75FC(v5, v8);
          }
        }

        else
        {
          v12 = v11;
          v13 = sub_6C7034(a4);
          v14 = sub_6C6B88(a4);
          v10 = 1;
          if (v14 && v13)
          {
            v10 = sub_6CA0D8(a4, v12);
          }
        }

        sub_6C90D0(v5, v8++, v10);
      }

      while (v9 != v8);
    }
  }
}

uint64_t sub_6BCFEC(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (!sub_6C8C84(a3, a4))
  {
    return 0;
  }

  v8 = sub_6C8D70(a3, a4);
  v33 = 0;
  v34 = 0;
  v32 = 0;
  sub_353184(&v32, *v8, v8[1], 0xAAAAAAAAAAAAAAABLL * ((v8[1] - *v8) >> 3));
  v9 = v32;
  if (v32 != v33)
  {
    v10 = sub_6C6B4C(a3);
    v11 = sub_6BE3B8(a2 + 150, v10);
    v12 = sub_4D26AC(a2);
    v13 = *v11;
    v14 = *(a1 + 464);
    v15 = *(v14 + 2064) * (10 * (*v11 - v12));
    if (v15 >= 0.0)
    {
      if (v15 >= 4.50359963e15)
      {
        goto LABEL_12;
      }

      v16 = (v15 + v15) + 1;
    }

    else
    {
      if (v15 <= -4.50359963e15)
      {
        goto LABEL_12;
      }

      v16 = (v15 + v15) - 1 + (((v15 + v15) - 1) >> 63);
    }

    v15 = (v16 >> 1);
LABEL_12:
    v18 = *(v14 + 2060);
    v19 = v18 + v15;
    if (v19 < 0 != __OFADD__(v18, v15))
    {
      v20 = -5;
    }

    else
    {
      v20 = 5;
    }

    sub_4D26AC(a2);
    v21 = v19 / 10;
    v22 = (v20 + v19 % 10);
    v23 = *(a1 + 456);
    v24 = sub_6C6B4C(a3);
    v25 = sub_4D1F50(a2, v24);
    sub_320EC8(v23, *(v25 + 32) | (*(v25 + 36) << 32), v31);
    sub_386C(v30, v21 + v13 + (((103 * v22) >> 15) & 1) + ((103 * v22) >> 10), v31);
  }

  v17 = 1;
  if (v32)
  {
    v26 = v33;
    v27 = v32;
    if (v33 != v32)
    {
      do
      {
        v28 = *(v26 - 1);
        v26 -= 3;
        if (v28 < 0)
        {
          operator delete(*v26);
        }
      }

      while (v26 != v9);
      v27 = v32;
    }

    v33 = v9;
    operator delete(v27);
  }

  return v17;
}

void sub_6BD2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  sub_3874(va);
  sub_25F00(va1);
  sub_1A104((v15 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_6BD330(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 2008);
  v7 = *(a3 + 2016);
  if (v6 == v7)
  {
    v9 = *(a3 + 2008);
  }

  else
  {
    while (sub_6C8EEC(v6))
    {
      v6 += 360;
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v9 = v6;
    v7 = *(a3 + 2016);
    v6 = *(a3 + 2008);
  }

  if (v9 != v7)
  {
    v6 = v9;
  }

  v10 = a2[8] - a2[5];
  v11 = sub_6B1BFC(a2 + 251, v10);
  result = sub_6C6B88(v11);
  if (result)
  {
    v13 = 0;
    v14 = result;
    do
    {
      v16 = sub_6B1BFC(a2 + 251, v10);
      v17 = sub_6CA868(v16, v13);
      v18 = *v17;
      v19 = v17[1];
      if (*v17 == v19)
      {
        LOBYTE(v15) = 0;
      }

      else
      {
        v20 = 0;
        do
        {
          v21 = *v18;
          v22 = sub_6C6B88(v6);
          v23 = v21 >= v22;
          v15 = (v21 < v22) | v20;
          if (!v23 && (v20 & 1) == 0)
          {
            v15 = sub_6C784C(v6, v21);
          }

          ++v18;
          v20 = v15;
        }

        while (v18 != v19);
      }

      result = sub_6C90F0(a4, v13++, v15 & 1);
    }

    while (v13 != v14);
  }

  return result;
}

void sub_6BD478(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v6 = *(a2 + 160);
  v9 = (v6 - 20) <= 0x2D && ((1 << (v6 - 20)) & 0x250000002281) != 0 || v6 == 1;
  v10 = 1;
  if ((v6 - 21) <= 0x2D && ((1 << (v6 - 21)) & 0x250000002281) != 0)
  {
    v11 = sub_6C9DC8(a3);
    v12 = sub_6C9F58(a3);
    if (v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = v6 == 2;
    v11 = sub_6C9DC8(a3);
    v12 = sub_6C9F58(a3);
    if (v9)
    {
LABEL_13:
      if (a4 == 1)
      {
        v13 = v11;
      }

      else
      {
        v13 = v12;
      }

      goto LABEL_21;
    }
  }

  if (v10)
  {
    if (a4 == 1)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

LABEL_21:

    sub_6C90F0(a3, v13, 1);
    return;
  }

  sub_6C94B4(a3, a3);
}

void sub_6BD594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_6B1BFC((a2 + 2008), *(a2 + 64) - *(a2 + 40));
  v6 = sub_6C6E64(v5);
  if (!v6)
  {
    v9 = *(a2 + 160);
    v12 = (v9 - 20) <= 0x2D && ((1 << (v9 - 20)) & 0x250000002281) != 0 || v9 == 1;
    if (((v9 - 21) > 0x2D || ((1 << (v9 - 21)) & 0x250000002281) == 0) && v9 != 2 && !v12)
    {
      goto LABEL_4;
    }

    v13 = a3;
    v14 = 1;

LABEL_20:
    sub_6BD6CC(v6, v13, v14, v12);
    return;
  }

  v7 = v6;
  v8 = sub_6C9694(v5);
  v6 = sub_6C9718(v5);
  if (v8 & 1) != 0 || (v6)
  {
    v14 = v7;
    v13 = a3;
    v12 = v8;

    goto LABEL_20;
  }

LABEL_4:

  sub_6C94B4(a3, a3);
}

void sub_6BD6CC(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = a3;
  if (a3 <= sub_6C6B88(a2))
  {
    v7 = sub_6C6B88(a2);
    if (a4)
    {
      if (v7)
      {
        v8 = 0;
        v9 = v7;
        do
        {
          if (sub_6C784C(a2, v8))
          {
            v10 = (v5 != 0) & ~sub_6CA768(a2, v8);
          }

          else
          {
            v10 = 0;
          }

          sub_6C90F0(a2, v8, v10);
          v5 -= sub_6C9088(a2, v8++);
        }

        while (v9 != v8);
      }
    }

    else
    {
      v11 = (v7 - 1);
      if (v11 >= -1)
      {
        v12 = -1;
      }

      else
      {
        v12 = (v7 - 1);
      }

      if (((v7 - 1) & 0x80) == 0)
      {
        do
        {
          v14 = sub_6B59E0(v11);
          if (sub_6C784C(a2, v14))
          {
            v13 = (v5 != 0) & ~sub_6CA768(a2, v14);
          }

          else
          {
            v13 = 0;
          }

          sub_6C90F0(a2, v14, v13);
          v5 -= sub_6C9088(a2, v14);
          v11 = (v11 - 1);
        }

        while (v12 != v11);
      }
    }
  }

  else
  {

    sub_6C94B4(a2, a2);
  }
}

void sub_6BD830(uint64_t a1, uint64_t a2)
{
  if (sub_6C6B98(a2))
  {
    v3 = sub_6C6B88(a2);
    if (v3)
    {
      v4 = 0;
      v5 = v3;
      do
      {
        if (sub_6C6BA0(a2, v4))
        {
          operator new();
        }

        ++v4;
      }

      while (v5 != v4);
    }

    if (sub_6C7034(a2))
    {
      v6 = sub_6C6E64(a2);
      v7 = sub_6C6B88(a2);
      if (v7)
      {
        v8 = v7;
        if (v6)
        {
          v9 = 0;
          do
          {
            v10 = sub_6C9088(a2, v9);
            sub_6C90F0(a2, v9++, v10);
          }

          while (v8 != v9);
        }

        else
        {
          v11 = 0;
          do
          {
            v12 = sub_6C784C(a2, v11);
            sub_6C90F0(a2, v11++, v12);
          }

          while (v8 != v11);
        }
      }
    }
  }
}

void sub_6BDA6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_6BDAA4(uint64_t a1, uint64_t a2)
{
  if (!sub_6CA4E4(a2))
  {
    return;
  }

  __p = 0;
  v32 = 0;
  v33 = 0;
  v3 = sub_6C6B88(a2);
  if (v3)
  {
    v4 = 0;
    v5 = v3;
    do
    {
      while (1)
      {
        v6 = sub_6C9088(a2, v4);
        v7 = v32;
        if (v32 == v33 << 6)
        {
          if ((v32 + 1) < 0)
          {
            sub_1794();
          }

          v8 = v33 << 7;
          if (v33 << 7 <= (v32 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v8 = (v32 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          if (v32 <= 0x3FFFFFFFFFFFFFFELL)
          {
            v9 = v8;
          }

          else
          {
            v9 = 0x7FFFFFFFFFFFFFFFLL;
          }

          sub_3D41C(&__p, v9);
          v7 = v32;
        }

        v32 = v7 + 1;
        v10 = v7 >> 6;
        v11 = 1 << v7;
        if (v6)
        {
          break;
        }

        *(__p + v10) &= ~v11;
        if (v5 == ++v4)
        {
          goto LABEL_15;
        }
      }

      *(__p + v10) |= v11;
      ++v4;
    }

    while (v5 != v4);
  }

LABEL_15:
  v12 = sub_6C6B88(a2);
  if (v12)
  {
    v13 = 0;
    v14 = v12;
    do
    {
      if ((*(__p + (v13 >> 6)) & (1 << v13)) != 0 && sub_6CA768(a2, v13))
      {
        *(__p + (v13 >> 6)) &= ~(1 << v13);
      }

      ++v13;
    }

    while (v14 != v13);
  }

  v15 = __p;
  v16 = v32 - 64;
  if (v32 < 0x40)
  {
    v17 = 0;
    v19 = v32;
    v18 = __p;
  }

  else
  {
    if (v16 >= 0xC0)
    {
      v20 = (v16 >> 6) + 1;
      v18 = (__p + 8 * (v20 & 0x7FFFFFFFFFFFFFCLL));
      v19 = v32 - ((v20 & 0x7FFFFFFFFFFFFFCLL) << 6);
      v21 = (__p + 16);
      v22 = 0uLL;
      v23 = v20 & 0x7FFFFFFFFFFFFFCLL;
      v24 = 0uLL;
      do
      {
        v22 = vpadalq_u32(v22, vpaddlq_u16(vpaddlq_u8(vcntq_s8(v21[-1]))));
        v24 = vpadalq_u32(v24, vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v21))));
        v21 += 2;
        v23 -= 4;
      }

      while (v23);
      v17 = vaddvq_s64(vaddq_s64(v24, v22));
      if (v20 == (v20 & 0x7FFFFFFFFFFFFFCLL))
      {
        goto LABEL_29;
      }
    }

    else
    {
      v17 = 0;
      v18 = __p;
      v19 = v32;
    }

    do
    {
      v25 = *v18++;
      v26 = vcnt_s8(v25);
      v26.i16[0] = vaddlv_u8(v26);
      v17 += v26.u32[0];
      v19 -= 64;
    }

    while (v19 > 0x3F);
  }

LABEL_29:
  if (v19)
  {
    v27 = vcnt_s8((*v18 & (0xFFFFFFFFFFFFFFFFLL >> -v19)));
    v27.i16[0] = vaddlv_u8(v27);
    v17 += v27.u32[0];
  }

  v28 = v32;
  if (v17 >= 1 && v32 != 0)
  {
    v30 = 0;
    do
    {
      sub_6C90F0(a2, v30, (*(__p + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v30) & 1);
      ++v30;
    }

    while (v28 != v30);
    v15 = __p;
  }

  if (v15)
  {
    operator delete(v15);
  }
}

void sub_6BDD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6BDD8C(uint64_t a1, uint64_t a2)
{
  sub_6BE5B4(a1, a2);
  sub_6BE698(a1 + 40, (a2 + 40));
  sub_6BE5B4(a1 + 80, (a2 + 80));
  sub_6BE5B4(a1 + 120, (a2 + 120));
  v4 = (a1 + 168);
  v5 = *(a1 + 168);
  *(a1 + 160) = *(a2 + 160);
  if (v5)
  {
    v6 = *(a1 + 176);
    v7 = v5;
    if (v6 != v5)
    {
      v8 = *(a1 + 176);
      do
      {
        v10 = *(v8 - 3);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v6 - 2) = v9;
          operator delete(v9);
        }

        v6 = v8;
      }

      while (v8 != v5);
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
  v11 = (a1 + 192);
  v12 = *(a1 + 192);
  if (v12)
  {
    v13 = *(a1 + 200);
    v14 = *(a1 + 192);
    if (v13 != v12)
    {
      v15 = *(a1 + 200);
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v13 - 16) = v16;
          operator delete(v16);
        }

        v13 = v15;
      }

      while (v15 != v12);
      v14 = *v11;
    }

    *(a1 + 200) = v12;
    operator delete(v14);
    *v11 = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
  }

  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  v18 = *(a2 + 216);
  v19 = (a1 + 232);
  v20 = *(a1 + 232);
  *(a1 + 223) = *(a2 + 223);
  *(a1 + 216) = v18;
  if (v20)
  {
    v21 = *(a1 + 240);
    v22 = v20;
    if (v21 != v20)
    {
      do
      {
        v23 = *(v21 - 3);
        if (v23)
        {
          *(v21 - 2) = v23;
          operator delete(v23);
        }

        v24 = *(v21 - 6);
        if (v24)
        {
          *(v21 - 5) = v24;
          operator delete(v24);
        }

        v21 -= 64;
      }

      while (v21 != v20);
      v22 = *v19;
    }

    *(a1 + 240) = v20;
    operator delete(v22);
    *v19 = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
  }

  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 232) = 0;
  v26 = *(a2 + 320);
  v25 = *(a2 + 336);
  v27 = *(a2 + 304);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 320) = v26;
  *(a1 + 336) = v25;
  *(a1 + 304) = v27;
  v28 = *(a2 + 288);
  v29 = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v28;
  *(a1 + 256) = v29;
  return a1;
}

uint64_t sub_6BDF88(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  v8 = sub_6B1BFC((a2 + 2008), a3);
  if (a4 >= sub_6C6B88(v8))
  {
    return 0;
  }

  if (sub_6CA500(v8, a4) < 1)
  {
    if (a3)
    {
      v10 = 0;
      v11 = a3 - 1;
      if ((v11 & 0x80000000) == 0)
      {
        v12 = v11 & 0x7FFFFFFF;
        while (1)
        {
          v13 = sub_5DBECC((a2 + 2008), v12);
          if ((sub_6C8EEC(v13) & 1) == 0)
          {
            break;
          }

          sub_6CA4B8(v13, v19);
          v10 += sub_681630(v19);
          if (v12-- <= 0)
          {
            goto LABEL_18;
          }
        }

        if (sub_6CA9B0(v13))
        {
          v11 = v12;
        }
      }

LABEL_18:
      v15 = sub_6B1BFC((a2 + 2008), v11);
      sub_6C6B88(v15);
      v16 = sub_6C6B88(v8);
      v17 = sub_6BE124(v16, v15, a4, v16);
      sub_6CA4B8(v8, v19);
      v18 = sub_681630(v19) + v10;
      return v18 + sub_6BDF88(a1, a2, v11, v17);
    }

    else
    {
      sub_6CA4B8(v8, v19);
      return sub_681630(v19);
    }
  }

  else
  {

    return sub_6CA500(v8, a4);
  }
}

uint64_t sub_6BE124(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!sub_6CA9B0(a2) && (a4 == sub_6C6B88(a2) || (sub_6C8EE0(a2) & 1) != 0 || (sub_6C8EEC(a2) & 1) != 0))
  {
    return a3;
  }

  else
  {
    v14 = sub_6C6B88(a2);
    v7 = sub_6C6B88(a2);
    if (v7)
    {
      v8 = 0;
      v9 = v7;
      do
      {
        v10 = sub_6CA868(a2, v8);
        v11 = v10[1];
        if (*v10 != v11)
        {
          v12 = *v10;
          do
          {
            if (*v12 == a3)
            {
              break;
            }

            ++v12;
          }

          while (v12 != v11);
          if ((&v11[-*v10] & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        ++v8;
      }

      while (v8 != v9);
    }
  }

  return v14;
}

void sub_6BE3A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_6BE3B8(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, (a1[1] - *a1) >> 2);
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

  return *a1 + 4 * a2;
}

void sub_6BE4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_6BE5B4(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 16) = 0;
    v6 = *(a1 + 8);
    if (v6)
    {
      bzero(*a1, 8 * v6);
    }

    *(a1 + 24) = 0;
  }

  v7 = *a2;
  *a2 = 0;
  v8 = *a1;
  *a1 = v7;
  if (v8)
  {
    operator delete(v8);
  }

  v11 = a2[2];
  v10 = a2 + 2;
  v9 = v11;
  v12 = *(v10 - 1);
  *(a1 + 16) = v11;
  *(a1 + 8) = v12;
  *(v10 - 1) = 0;
  v13 = v10[1];
  *(a1 + 24) = v13;
  *(a1 + 32) = *(v10 + 4);
  if (v13)
  {
    v14 = *(v9 + 8);
    v15 = *(a1 + 8);
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

    *(*a1 + 8 * v14) = a1 + 16;
    *v10 = 0;
    v10[1] = 0;
  }
}

void sub_6BE698(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v16 = *v4;
        v17 = v4[3];
        if (v17)
        {
          v18 = v4[4];
          v15 = v4[3];
          if (v18 != v17)
          {
            do
            {
              v19 = *(v18 - 1);
              v18 -= 3;
              if (v19 < 0)
              {
                operator delete(*v18);
              }
            }

            while (v18 != v17);
            v15 = v4[3];
          }

          v4[4] = v17;
          operator delete(v15);
        }

        operator delete(v4);
        v4 = v16;
      }

      while (v16);
    }

    *(a1 + 16) = 0;
    v5 = *(a1 + 8);
    if (v5)
    {
      bzero(*a1, 8 * v5);
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

void sub_6BE7D0()
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
  xmmword_27A2D80 = 0u;
  *algn_27A2D90 = 0u;
  dword_27A2DA0 = 1065353216;
  sub_3A9A34(&xmmword_27A2D80, v0, v0);
  sub_3A9A34(&xmmword_27A2D80, v3, v3);
  sub_3A9A34(&xmmword_27A2D80, __p, __p);
  sub_3A9A34(&xmmword_27A2D80, v9, v9);
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
    qword_27A2D58 = 0;
    qword_27A2D60 = 0;
    qword_27A2D50 = 0;
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

void sub_6BEA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A2D68)
  {
    qword_27A2D70 = qword_27A2D68;
    operator delete(qword_27A2D68);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6BEAC4(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = a3;
  HIBYTE(v13[2]) = 21;
  strcpy(v13, "LaneGuidanceCountries");
  __p = 0;
  v11 = 0;
  v12 = 0;
  v4 = sub_3AEC94(a2, v13, &__p);
  v5 = __p;
  if (__p)
  {
    v6 = v11;
    v7 = __p;
    if (v11 != __p)
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
      v7 = __p;
    }

    v11 = v5;
    operator delete(v7);
  }

  if (SHIBYTE(v13[2]) < 0)
  {
    operator delete(v13[0]);
  }

  *(a1 + 8) = v4;
  return a1;
}

void sub_6BEB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_6BEBC4(uint64_t a1, uint64_t *a2)
{
  if (!sub_5FC3C(*(a1 + 8), a2))
  {
    return 0;
  }

  v4 = sub_5F5AC(*(a1 + 8), a2);
  sub_5ADDC(v13, v4);
  v12 = 14;
  strcpy(__p, "enabled_on_fwy");
  v5 = sub_5F9D0(v13, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
    v6 = v14;
    if (!v14)
    {
      goto LABEL_13;
    }

    do
    {
LABEL_9:
      v7 = *v6;
      v8 = *(v6 + 12);
      if (v8 != -1)
      {
        (off_266C198[v8])(__p, v6 + 5);
      }

      *(v6 + 12) = -1;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v7;
    }

    while (v7);
    goto LABEL_13;
  }

  v6 = v14;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_13:
  v9 = v13[0];
  v13[0] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v5;
}

void sub_6BECF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(&a15);
  _Unwind_Resume(a1);
}

BOOL sub_6BED18(uint64_t a1, uint64_t *a2)
{
  if (!sub_5FC3C(*(a1 + 8), a2))
  {
    return 0;
  }

  v4 = sub_5F5AC(*(a1 + 8), a2);
  sub_5ADDC(v13, v4);
  v12 = 18;
  strcpy(__p, "enabled_on_non_fwy");
  v5 = sub_5F9D0(v13, __p);
  if (v12 < 0)
  {
    operator delete(*__p);
    v6 = v14;
    if (!v14)
    {
      goto LABEL_13;
    }

    do
    {
LABEL_9:
      v7 = *v6;
      v8 = *(v6 + 12);
      if (v8 != -1)
      {
        (off_266C198[v8])(__p, v6 + 5);
      }

      *(v6 + 12) = -1;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v7;
    }

    while (v7);
    goto LABEL_13;
  }

  v6 = v14;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_13:
  v9 = v13[0];
  v13[0] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v5;
}

void sub_6BEE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(&a15);
  _Unwind_Resume(a1);
}

BOOL sub_6BEE6C(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  if (*a1)
  {
    return 1;
  }

  v7 = sub_5FC3C(*(a1 + 1), a3);
  result = 0;
  if (v7 && *(a2 + 160) != 97)
  {
    v8 = sub_6BEBC4(a1, a3);
    v9 = sub_6BED18(a1, a3);
    if (*(a2 + 2057))
    {
      if (*(a2 + 1028))
      {
        return v8;
      }

      else
      {
        v10 = v9;
        result = v8;
        if ((*(a2 + 1029) & 1) == 0)
        {
          if (*(a2 + 1030))
          {
            return v8;
          }

          else
          {
            return v10;
          }
        }
      }
    }

    else
    {
      return v8;
    }
  }

  return result;
}

uint64_t sub_6BEF4C(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  if ((*a1 & 1) == 0)
  {
    sub_5F5AC(*(a1 + 8), a3);
    if (!a2[2057] || (a2[1028] & 1) != 0 || (a2[1029] & 1) != 0 || a2[1030] == 1)
    {
      operator new();
    }

    operator new();
  }

  return 1;
}

void sub_6BF084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6BF0A8(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  if ((*a1 & 1) == 0)
  {
    sub_5F5AC(*(a1 + 8), a3);
    if (!a2[2057] || (a2[1028] & 1) != 0 || (a2[1029] & 1) != 0 || a2[1030] == 1)
    {
      operator new();
    }

    operator new();
  }

  return 1;
}

void sub_6BF1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6BF204()
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
  xmmword_27A2DD8 = 0u;
  unk_27A2DE8 = 0u;
  dword_27A2DF8 = 1065353216;
  sub_3A9A34(&xmmword_27A2DD8, v0, v0);
  sub_3A9A34(&xmmword_27A2DD8, v3, v3);
  sub_3A9A34(&xmmword_27A2DD8, __p, __p);
  sub_3A9A34(&xmmword_27A2DD8, v9, v9);
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
    qword_27A2DB0 = 0;
    qword_27A2DB8 = 0;
    qword_27A2DA8 = 0;
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

void sub_6BF44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A2DC0)
  {
    qword_27A2DC8 = qword_27A2DC0;
    operator delete(qword_27A2DC0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6BF4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_266C1F0;
  *(a1 + 8) = 0;
  v6 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_6C6A34(a1 + 32);
  sub_6C6A34(a1 + 392);
  v7 = *(a2 + 1104) + 2616 * a3;
  v8 = *(v7 + 2008);
  v9 = *(v7 + 2016);
  if (v8 != v9)
  {
    while (1)
    {
      if (sub_6C7CF8(v8) && sub_6C7864(a1 + 392))
      {
        sub_5FB8BC(a1 + 392, v8);
        v10 = *(a1 + 16);
        if (v10 < *(a1 + 24))
        {
          goto LABEL_11;
        }

LABEL_3:
        *(a1 + 16) = sub_6C1CA0(v6, v8);
        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }

      else if (sub_6C7CE4(v8) || sub_6C7C8C(v8))
      {
        v10 = *(a1 + 16);
        if (v10 >= *(a1 + 24))
        {
          goto LABEL_3;
        }

LABEL_11:
        sub_5F1934(*(a1 + 16), v8);
        *(a1 + 16) = v10 + 360;
        *(a1 + 16) = v10 + 360;
        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }

      else
      {
        if (sub_6C7D24(v8))
        {
          sub_5FB8BC(a1 + 32, v8);
        }

        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }
    }
  }

  *(a1 + 752) = *(v7 + 2056);
  return a1;
}

void sub_6BF660(_Unwind_Exception *a1)
{
  sub_5C3168(v2 + 32);
  sub_5ED5A8(v1);
  _Unwind_Resume(a1);
}

void sub_6BF690(_Unwind_Exception *a1)
{
  *(v2 + 16) = v3;
  sub_5C3168(v2 + 392);
  sub_5C3168(v2 + 32);
  sub_5ED5A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_6BF6C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_6C7D24(a1);
  if (result)
  {
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 56) = 1065353216;
    *(a2 + 64) = 1;
  }

  else
  {

    return sub_67E494(a2, "Continue_Sign");
  }

  return result;
}

uint64_t sub_6BF738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_6C7864(a2);
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if (sub_6C7D24(a2))
  {
    (*(*a1 + 40))(v8, a1, 1, 0);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  if (sub_6C7C8C(a2))
  {
    sub_6BF994(1, v8, a2);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  result = sub_6C7CE4(a2);
  if (result)
  {
    v7 = *(*a1 + 16);

    return v7(a1, a2);
  }

  else
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_6BF948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ****a9, uint64_t a10, void **a11)
{
  *(v11 + 8) = v12;
  sub_5F07DC(&a9);
  sub_662AC8(&a11);
  _Unwind_Resume(a1);
}

void sub_6BF994(int a1@<W2>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  sub_6BFEF4(a3, &v24);
  v5 = HIBYTE(v25);
  if (v25 >= 0)
  {
    v6 = HIBYTE(v25);
  }

  else
  {
    v6 = *(&v24 + 1);
  }

  if (!v6)
  {
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 56) = 1065353216;
    *(a2 + 64) = 1;
    *(a2 + 80) = 0;
    *(a2 + 95) = 0;
    if ((v5 & 0x80) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(v24);
    return;
  }

  if (!a1)
  {
    if (v6 + 17 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v6 + 17 > 0x16)
      {
        operator new();
      }

      v20[1] = 0;
      v21 = 0;
      v20[0] = 0;
      HIBYTE(v21) = v6 + 17;
      if (v25 >= 0)
      {
        v8 = &v24;
      }

      else
      {
        v8 = v24;
      }

      memmove(v20, v8, v6);
      v9 = v20 + v6;
      v9[16] = 121;
      *v9 = *"_Spoken_Secondary";
      *(&v21 + v6 + 1) = 0;
      if (SHIBYTE(v25) < 0)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }

LABEL_42:
    sub_3244();
  }

  if (v6 + 15 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_42;
  }

  if (v6 + 15 > 0x16)
  {
    operator new();
  }

  v20[1] = 0;
  v21 = 0;
  v20[0] = 0;
  HIBYTE(v21) = v6 + 15;
  if (v25 >= 0)
  {
    v7 = &v24;
  }

  else
  {
    v7 = v24;
  }

  memmove(v20, v7, v6);
  strcpy(v20 + v6, "_Spoken_Primary");
  if (SHIBYTE(v25) < 0)
  {
LABEL_23:
    operator delete(v24);
  }

LABEL_24:
  v24 = *v20;
  v25 = v21;
  sub_67E494(v20, &v24);
  v18 = 0;
  v19 = 0;
  sub_680484(a2, v20, 1, &v18);
  v10 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v23;
  if (v23)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v20[0];
  if (v20[0])
  {
    v15 = v20[1];
    v16 = v20[0];
    if (v20[1] != v20[0])
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v20[0];
    }

    v20[1] = v14;
    operator delete(v16);
  }

  if (v25 < 0)
  {
    goto LABEL_41;
  }
}

void sub_6BFCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  if (*(v3 - 57) < 0)
  {
    operator delete(*(v3 - 80));
  }

  _Unwind_Resume(a1);
}

void *sub_6BFCF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_6C6E64(a1);
  result = sub_6C6B88(a1);
  v6 = result;
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      result = sub_6C9088(a1, 1u);
      if (result)
      {
        *(a2 + 16) = 0x1000000000000000;
        *a2 = *"Left_Second_Lane";
        return result;
      }

      result = sub_6C9088(a1, v6 - 2);
      if (result)
      {
        v7 = "Right_Second_Lane";
        goto LABEL_15;
      }

      result = sub_6C9088(a1, 2u);
      if (result)
      {
        *(a2 + 16) = 0xF00000000000000;
        strcpy(a2, "Left_Third_Lane");
        return result;
      }

      result = sub_6C9088(a1, v6 - 3);
      if (result)
      {
        *(a2 + 16) = 0x1000000000000000;
        *a2 = *"Right_Third_Lane";
        return result;
      }
    }

    goto LABEL_20;
  }

  if (sub_6C9088(a1, 1u) && (result = sub_6C9088(a1, 2u), result))
  {
    if ((byte_27A348F & 0x80000000) == 0)
    {
      v7 = &xmmword_27A3478;
LABEL_15:
      *a2 = *v7;
      *(a2 + 16) = *(v7 + 2);
      return result;
    }

    v8 = &xmmword_27A3478;
  }

  else
  {
    result = sub_6C9088(a1, v6 - 2);
    if (!result || (result = sub_6C9088(a1, v6 - 3), !result))
    {
LABEL_20:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      return result;
    }

    if ((byte_27A34A7 & 0x80000000) == 0)
    {
      v7 = &xmmword_27A3490;
      goto LABEL_15;
    }

    v8 = &xmmword_27A3490;
  }

  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_325C(a2, v9, v10);
}

double sub_6BFEF4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  if (!sub_6C7D24(a1) || !sub_6C72BC(a1))
  {
    if (sub_6C7CE4(a1))
    {
      *(a2 + 16) = 0x800000000000000;
      result = *"Continue";
      *a2 = *"Continue";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_7;
    }

    if (sub_6C6CE8(a1))
    {
      v5 = "Left";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v6 = 0x400000000000000;
LABEL_12:
        __p.__r_.__value_.__r.__words[2] = v6;
        *&__p.__r_.__value_.__l.__data_ = *v5;
        goto LABEL_30;
      }

      v7 = 4;
    }

    else if (sub_6C6CF8(a1))
    {
      v5 = "Right";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *&__p.__r_.__value_.__l.__data_ = *"Right";
        __p.__r_.__value_.__r.__words[2] = 0x500000000000000;
        goto LABEL_30;
      }

      v7 = 5;
    }

    else
    {
      if (!sub_6C6C8C(a1))
      {
        if (sub_6C6D08(a1))
        {
          sub_6BFCF8(a1, &v20);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v20;
          size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
          if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v20.__r_.__value_.__l.__size_;
          }

          if (!size)
          {
            goto LABEL_68;
          }

          goto LABEL_55;
        }

LABEL_30:
        v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v9 = __p.__r_.__value_.__l.__size_;
        }

        if (!v9)
        {
          goto LABEL_68;
        }

        v10 = sub_6C6E64(a1);
        if (v10 > 4)
        {
          if (v10 <= 6)
          {
            if (v10 != 5)
            {
              v11 = "_Six_Lanes";
LABEL_41:
              v20 = *v11;
              v12 = 10;
              goto LABEL_53;
            }

            v13 = "_Five_Lanes";
            goto LABEL_49;
          }

          if (v10 == 7)
          {
            v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
            v14 = "_Seven_Lanes";
          }

          else
          {
            if (v10 != 8)
            {
              goto LABEL_3;
            }

            v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
            v14 = "_Eight_Lanes";
          }
        }

        else
        {
          if (v10 <= 2)
          {
            if (v10 != 1)
            {
              if (v10 != 2)
              {
                goto LABEL_3;
              }

              v11 = "_Two_Lanes";
              goto LABEL_41;
            }

            *&v20.__r_.__value_.__l.__data_ = *"_One_Lane";
            v20.__r_.__value_.__r.__words[2] = 0x900000000000000;
            v12 = 9;
LABEL_53:
            std::string::append(&__p, &v20, v12);
            if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v20.__r_.__value_.__l.__data_);
            }

LABEL_55:
            if (sub_6C7C8C(a1))
            {
              v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                v15 = __p.__r_.__value_.__l.__size_;
                v16 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v16 - __p.__r_.__value_.__l.__size_ < 5)
                {
                  if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 5 - v16)
                  {
                    sub_3244();
                  }

LABEL_61:
                  operator new();
                }

                p_p = __p.__r_.__value_.__r.__words[0];
              }

              else
              {
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 18) < 5)
                {
                  goto LABEL_61;
                }

                p_p = &__p;
              }

              v18 = p_p + v15;
              v18[4] = 121;
              *v18 = 1635013471;
              v19 = v15 + 5;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                __p.__r_.__value_.__l.__size_ = v15 + 5;
              }

              else
              {
                *(&__p.__r_.__value_.__s + 23) = v19 & 0x7F;
              }

              p_p->__r_.__value_.__s.__data_[v19] = 0;
            }

LABEL_68:
            result = *&__p.__r_.__value_.__l.__data_;
            *a2 = __p;
            memset(&__p, 0, sizeof(__p));
            return result;
          }

          if (v10 != 3)
          {
            v13 = "_Four_Lanes";
LABEL_49:
            v20 = *v13;
            v12 = 11;
            goto LABEL_53;
          }

          v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
          v14 = "_Three_Lanes";
        }

        *&v20.__r_.__value_.__l.__data_ = *v14;
        v12 = 12;
        goto LABEL_53;
      }

      v5 = "Middle";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v6 = 0x600000000000000;
        goto LABEL_12;
      }

      v7 = 6;
    }

    sub_13B38(&__p.__r_.__value_.__l.__data_, v5, v7);
    goto LABEL_30;
  }

LABEL_3:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return result;
  }

LABEL_7:
  operator delete(__p.__r_.__value_.__l.__data_);
  return result;
}

void sub_6C037C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6C03D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_266C238;
  *(a1 + 8) = 0;
  v6 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_6C6A34(a1 + 32);
  sub_6C6A34(a1 + 392);
  v7 = *(a2 + 1104) + 2616 * a3;
  v8 = *(v7 + 2008);
  v9 = *(v7 + 2016);
  if (v8 != v9)
  {
    while (1)
    {
      if (sub_6C7CF8(v8) && sub_6C7864(a1 + 392))
      {
        sub_5FB8BC(a1 + 392, v8);
        v10 = *(a1 + 16);
        if (v10 < *(a1 + 24))
        {
          goto LABEL_11;
        }

LABEL_3:
        *(a1 + 16) = sub_6C1CA0(v6, v8);
        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }

      else if (sub_6C7CE4(v8) || sub_6C7C8C(v8))
      {
        v10 = *(a1 + 16);
        if (v10 >= *(a1 + 24))
        {
          goto LABEL_3;
        }

LABEL_11:
        sub_5F1934(*(a1 + 16), v8);
        *(a1 + 16) = v10 + 360;
        *(a1 + 16) = v10 + 360;
        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }

      else
      {
        if (sub_6C7D24(v8))
        {
          sub_5FB8BC(a1 + 32, v8);
        }

        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }
    }
  }

  *(a1 + 752) = *(v7 + 2056);
  return a1;
}

void sub_6C0538(_Unwind_Exception *a1)
{
  sub_5C3168(v2 + 32);
  sub_5ED5A8(v1);
  _Unwind_Resume(a1);
}

void sub_6C0568(_Unwind_Exception *a1)
{
  *(v2 + 16) = v3;
  sub_5C3168(v2 + 392);
  sub_5C3168(v2 + 32);
  sub_5ED5A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_6C059C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_6C7864(a2);
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if (sub_6C7D24(a2))
  {
    (*(*a1 + 40))(v8, a1, 1, 0);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  if (sub_6C7C8C(a2))
  {
    sub_6C07F8(1, v8, a2);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  result = sub_6C7CE4(a2);
  if (result)
  {
    v7 = *(*a1 + 16);

    return v7(a1, a2);
  }

  else
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_6C07AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ****a9, uint64_t a10, void **a11)
{
  *(v11 + 8) = v12;
  sub_5F07DC(&a9);
  sub_662AC8(&a11);
  _Unwind_Resume(a1);
}

void sub_6C07F8(int a1@<W2>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  sub_6C0B5C(a3, &v24);
  v5 = HIBYTE(v25);
  if (v25 >= 0)
  {
    v6 = HIBYTE(v25);
  }

  else
  {
    v6 = *(&v24 + 1);
  }

  if (!v6)
  {
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 56) = 1065353216;
    *(a2 + 64) = 1;
    *(a2 + 80) = 0;
    *(a2 + 95) = 0;
    if ((v5 & 0x80) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(v24);
    return;
  }

  if (!a1)
  {
    if (v6 + 17 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v6 + 17 > 0x16)
      {
        operator new();
      }

      v20[1] = 0;
      v21 = 0;
      v20[0] = 0;
      HIBYTE(v21) = v6 + 17;
      if (v25 >= 0)
      {
        v8 = &v24;
      }

      else
      {
        v8 = v24;
      }

      memmove(v20, v8, v6);
      v9 = v20 + v6;
      v9[16] = 121;
      *v9 = *"_Spoken_Secondary";
      *(&v21 + v6 + 1) = 0;
      if (SHIBYTE(v25) < 0)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }

LABEL_42:
    sub_3244();
  }

  if (v6 + 15 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_42;
  }

  if (v6 + 15 > 0x16)
  {
    operator new();
  }

  v20[1] = 0;
  v21 = 0;
  v20[0] = 0;
  HIBYTE(v21) = v6 + 15;
  if (v25 >= 0)
  {
    v7 = &v24;
  }

  else
  {
    v7 = v24;
  }

  memmove(v20, v7, v6);
  strcpy(v20 + v6, "_Spoken_Primary");
  if (SHIBYTE(v25) < 0)
  {
LABEL_23:
    operator delete(v24);
  }

LABEL_24:
  v24 = *v20;
  v25 = v21;
  sub_67E494(v20, &v24);
  v18 = 0;
  v19 = 0;
  sub_680484(a2, v20, 1, &v18);
  v10 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v23;
  if (v23)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v20[0];
  if (v20[0])
  {
    v15 = v20[1];
    v16 = v20[0];
    if (v20[1] != v20[0])
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v20[0];
    }

    v20[1] = v14;
    operator delete(v16);
  }

  if (v25 < 0)
  {
    goto LABEL_41;
  }
}

void sub_6C0B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  if (*(v3 - 57) < 0)
  {
    operator delete(*(v3 - 80));
  }

  _Unwind_Resume(a1);
}

double sub_6C0B5C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  if (!sub_6C7D24(a1) || !sub_6C72BC(a1))
  {
    if (sub_6C7CE4(a1))
    {
      *(a2 + 16) = 0x800000000000000;
      result = *"Continue";
      *a2 = *"Continue";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_7;
    }

    if (sub_6C6CE8(a1))
    {
      v5 = "Left";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v6 = 0x400000000000000;
LABEL_12:
        __p.__r_.__value_.__r.__words[2] = v6;
        *&__p.__r_.__value_.__l.__data_ = *v5;
        goto LABEL_30;
      }

      v7 = 4;
    }

    else if (sub_6C6CF8(a1))
    {
      v5 = "Right";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *&__p.__r_.__value_.__l.__data_ = *"Right";
        __p.__r_.__value_.__r.__words[2] = 0x500000000000000;
        goto LABEL_30;
      }

      v7 = 5;
    }

    else
    {
      if (!sub_6C6C8C(a1))
      {
        if (sub_6C6D08(a1))
        {
          sub_6BFCF8(a1, &v20);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v20;
          size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
          if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v20.__r_.__value_.__l.__size_;
          }

          if (!size)
          {
            goto LABEL_68;
          }

          goto LABEL_55;
        }

LABEL_30:
        v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v9 = __p.__r_.__value_.__l.__size_;
        }

        if (!v9)
        {
          goto LABEL_68;
        }

        v10 = sub_6C6E64(a1);
        if (v10 > 4)
        {
          if (v10 <= 6)
          {
            if (v10 != 5)
            {
              v11 = "_Six_Lanes";
LABEL_41:
              v20 = *v11;
              v12 = 10;
              goto LABEL_53;
            }

            v13 = "_Five_Lanes";
            goto LABEL_49;
          }

          if (v10 == 7)
          {
            v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
            v14 = "_Seven_Lanes";
          }

          else
          {
            if (v10 != 8)
            {
              goto LABEL_3;
            }

            v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
            v14 = "_Eight_Lanes";
          }
        }

        else
        {
          if (v10 <= 2)
          {
            if (v10 != 1)
            {
              if (v10 != 2)
              {
                goto LABEL_3;
              }

              v11 = "_Two_Lanes";
              goto LABEL_41;
            }

            *&v20.__r_.__value_.__l.__data_ = *"_One_Lane";
            v20.__r_.__value_.__r.__words[2] = 0x900000000000000;
            v12 = 9;
LABEL_53:
            std::string::append(&__p, &v20, v12);
            if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v20.__r_.__value_.__l.__data_);
            }

LABEL_55:
            if (sub_6C7C8C(a1))
            {
              v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                v15 = __p.__r_.__value_.__l.__size_;
                v16 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v16 - __p.__r_.__value_.__l.__size_ < 5)
                {
                  if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 5 - v16)
                  {
                    sub_3244();
                  }

LABEL_61:
                  operator new();
                }

                p_p = __p.__r_.__value_.__r.__words[0];
              }

              else
              {
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 18) < 5)
                {
                  goto LABEL_61;
                }

                p_p = &__p;
              }

              v18 = p_p + v15;
              v18[4] = 121;
              *v18 = 1635013471;
              v19 = v15 + 5;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                __p.__r_.__value_.__l.__size_ = v15 + 5;
              }

              else
              {
                *(&__p.__r_.__value_.__s + 23) = v19 & 0x7F;
              }

              p_p->__r_.__value_.__s.__data_[v19] = 0;
            }

LABEL_68:
            result = *&__p.__r_.__value_.__l.__data_;
            *a2 = __p;
            memset(&__p, 0, sizeof(__p));
            return result;
          }

          if (v10 != 3)
          {
            v13 = "_Four_Lanes";
LABEL_49:
            v20 = *v13;
            v12 = 11;
            goto LABEL_53;
          }

          v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
          v14 = "_Three_Lanes";
        }

        *&v20.__r_.__value_.__l.__data_ = *v14;
        v12 = 12;
        goto LABEL_53;
      }

      v5 = "Middle";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v6 = 0x600000000000000;
        goto LABEL_12;
      }

      v7 = 6;
    }

    sub_13B38(&__p.__r_.__value_.__l.__data_, v5, v7);
    goto LABEL_30;
  }

LABEL_3:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return result;
  }

LABEL_7:
  operator delete(__p.__r_.__value_.__l.__data_);
  return result;
}

void sub_6C0FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6C1038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_266C280;
  *(a1 + 8) = 0;
  v6 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_6C6A34(a1 + 32);
  sub_6C6A34(a1 + 392);
  v7 = *(a2 + 1104) + 2616 * a3;
  v8 = *(v7 + 2008);
  v9 = *(v7 + 2016);
  if (v8 != v9)
  {
    while (1)
    {
      if (sub_6C7CF8(v8) && sub_6C7864(a1 + 392))
      {
        sub_5FB8BC(a1 + 392, v8);
        v10 = *(a1 + 16);
        if (v10 < *(a1 + 24))
        {
          goto LABEL_11;
        }

LABEL_3:
        *(a1 + 16) = sub_6C1CA0(v6, v8);
        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }

      else if (sub_6C7CE4(v8) || sub_6C7C8C(v8))
      {
        v10 = *(a1 + 16);
        if (v10 >= *(a1 + 24))
        {
          goto LABEL_3;
        }

LABEL_11:
        sub_5F1934(*(a1 + 16), v8);
        *(a1 + 16) = v10 + 360;
        *(a1 + 16) = v10 + 360;
        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }

      else
      {
        if (sub_6C7D24(v8))
        {
          sub_5FB8BC(a1 + 32, v8);
        }

        v8 += 360;
        if (v8 == v9)
        {
          break;
        }
      }
    }
  }

  *(a1 + 752) = *(v7 + 2056);
  return a1;
}

void sub_6C11A0(_Unwind_Exception *a1)
{
  sub_5C3168(v2 + 32);
  sub_5ED5A8(v1);
  _Unwind_Resume(a1);
}

void sub_6C11D0(_Unwind_Exception *a1)
{
  *(v2 + 16) = v3;
  sub_5C3168(v2 + 392);
  sub_5C3168(v2 + 32);
  sub_5ED5A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_6C1204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_6C7864(a2);
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if (sub_6C7D24(a2))
  {
    (*(*a1 + 40))(v8, a1, 1, 0);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  if (sub_6C7C8C(a2))
  {
    sub_6C1460(1, v8, a2);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  result = sub_6C7CE4(a2);
  if (result)
  {
    v7 = *(*a1 + 16);

    return v7(a1, a2);
  }

  else
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_6C1414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ****a9, uint64_t a10, void **a11)
{
  *(v11 + 8) = v12;
  sub_5F07DC(&a9);
  sub_662AC8(&a11);
  _Unwind_Resume(a1);
}

void sub_6C1460(int a1@<W2>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  sub_6C17C4(a3, &v24);
  v5 = HIBYTE(v25);
  if (v25 >= 0)
  {
    v6 = HIBYTE(v25);
  }

  else
  {
    v6 = *(&v24 + 1);
  }

  if (!v6)
  {
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 56) = 1065353216;
    *(a2 + 64) = 1;
    *(a2 + 80) = 0;
    *(a2 + 95) = 0;
    if ((v5 & 0x80) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(v24);
    return;
  }

  if (!a1)
  {
    if (v6 + 17 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v6 + 17 > 0x16)
      {
        operator new();
      }

      v20[1] = 0;
      v21 = 0;
      v20[0] = 0;
      HIBYTE(v21) = v6 + 17;
      if (v25 >= 0)
      {
        v8 = &v24;
      }

      else
      {
        v8 = v24;
      }

      memmove(v20, v8, v6);
      v9 = v20 + v6;
      v9[16] = 121;
      *v9 = *"_Spoken_Secondary";
      *(&v21 + v6 + 1) = 0;
      if (SHIBYTE(v25) < 0)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }

LABEL_42:
    sub_3244();
  }

  if (v6 + 15 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_42;
  }

  if (v6 + 15 > 0x16)
  {
    operator new();
  }

  v20[1] = 0;
  v21 = 0;
  v20[0] = 0;
  HIBYTE(v21) = v6 + 15;
  if (v25 >= 0)
  {
    v7 = &v24;
  }

  else
  {
    v7 = v24;
  }

  memmove(v20, v7, v6);
  strcpy(v20 + v6, "_Spoken_Primary");
  if (SHIBYTE(v25) < 0)
  {
LABEL_23:
    operator delete(v24);
  }

LABEL_24:
  v24 = *v20;
  v25 = v21;
  sub_67E494(v20, &v24);
  v18 = 0;
  v19 = 0;
  sub_680484(a2, v20, 1, &v18);
  v10 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v23;
  if (v23)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = __p;
  __p = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v20[0];
  if (v20[0])
  {
    v15 = v20[1];
    v16 = v20[0];
    if (v20[1] != v20[0])
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = v20[0];
    }

    v20[1] = v14;
    operator delete(v16);
  }

  if (v25 < 0)
  {
    goto LABEL_41;
  }
}

void sub_6C178C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  if (*(v3 - 57) < 0)
  {
    operator delete(*(v3 - 80));
  }

  _Unwind_Resume(a1);
}

double sub_6C17C4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  if (!sub_6C7D24(a1) || !sub_6C72BC(a1))
  {
    if (sub_6C7CE4(a1))
    {
      *(a2 + 16) = 0x800000000000000;
      result = *"Continue";
      *a2 = *"Continue";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_7;
    }

    if (sub_6C6CE8(a1))
    {
      v5 = "Left";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v6 = 0x400000000000000;
LABEL_12:
        __p.__r_.__value_.__r.__words[2] = v6;
        *&__p.__r_.__value_.__l.__data_ = *v5;
        goto LABEL_30;
      }

      v7 = 4;
    }

    else if (sub_6C6CF8(a1))
    {
      v5 = "Right";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *&__p.__r_.__value_.__l.__data_ = *"Right";
        __p.__r_.__value_.__r.__words[2] = 0x500000000000000;
        goto LABEL_30;
      }

      v7 = 5;
    }

    else
    {
      if (!sub_6C6C8C(a1))
      {
        if (sub_6C6D08(a1))
        {
          sub_6BFCF8(a1, &v20);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v20;
          size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
          if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v20.__r_.__value_.__l.__size_;
          }

          if (!size)
          {
            goto LABEL_68;
          }

          goto LABEL_55;
        }

LABEL_30:
        v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v9 = __p.__r_.__value_.__l.__size_;
        }

        if (!v9)
        {
          goto LABEL_68;
        }

        v10 = sub_6C6E64(a1);
        if (v10 > 4)
        {
          if (v10 <= 6)
          {
            if (v10 != 5)
            {
              v11 = "_Six_Lanes";
LABEL_41:
              v20 = *v11;
              v12 = 10;
              goto LABEL_53;
            }

            v13 = "_Five_Lanes";
            goto LABEL_49;
          }

          if (v10 == 7)
          {
            v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
            v14 = "_Seven_Lanes";
          }

          else
          {
            if (v10 != 8)
            {
              goto LABEL_3;
            }

            v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
            v14 = "_Eight_Lanes";
          }
        }

        else
        {
          if (v10 <= 2)
          {
            if (v10 != 1)
            {
              if (v10 != 2)
              {
                goto LABEL_3;
              }

              v11 = "_Two_Lanes";
              goto LABEL_41;
            }

            *&v20.__r_.__value_.__l.__data_ = *"_One_Lane";
            v20.__r_.__value_.__r.__words[2] = 0x900000000000000;
            v12 = 9;
LABEL_53:
            std::string::append(&__p, &v20, v12);
            if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v20.__r_.__value_.__l.__data_);
            }

LABEL_55:
            if (sub_6C7C8C(a1))
            {
              v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                v15 = __p.__r_.__value_.__l.__size_;
                v16 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v16 - __p.__r_.__value_.__l.__size_ < 5)
                {
                  if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 5 - v16)
                  {
                    sub_3244();
                  }

LABEL_61:
                  operator new();
                }

                p_p = __p.__r_.__value_.__r.__words[0];
              }

              else
              {
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 18) < 5)
                {
                  goto LABEL_61;
                }

                p_p = &__p;
              }

              v18 = p_p + v15;
              v18[4] = 121;
              *v18 = 1635013471;
              v19 = v15 + 5;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                __p.__r_.__value_.__l.__size_ = v15 + 5;
              }

              else
              {
                *(&__p.__r_.__value_.__s + 23) = v19 & 0x7F;
              }

              p_p->__r_.__value_.__s.__data_[v19] = 0;
            }

LABEL_68:
            result = *&__p.__r_.__value_.__l.__data_;
            *a2 = __p;
            memset(&__p, 0, sizeof(__p));
            return result;
          }

          if (v10 != 3)
          {
            v13 = "_Four_Lanes";
LABEL_49:
            v20 = *v13;
            v12 = 11;
            goto LABEL_53;
          }

          v20.__r_.__value_.__r.__words[2] = 0xC00000000000000;
          v14 = "_Three_Lanes";
        }

        *&v20.__r_.__value_.__l.__data_ = *v14;
        v12 = 12;
        goto LABEL_53;
      }

      v5 = "Middle";
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v6 = 0x600000000000000;
        goto LABEL_12;
      }

      v7 = 6;
    }

    sub_13B38(&__p.__r_.__value_.__l.__data_, v5, v7);
    goto LABEL_30;
  }

LABEL_3:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return result;
  }

LABEL_7:
  operator delete(__p.__r_.__value_.__l.__data_);
  return result;
}

void sub_6C1C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_6C1CA0(void **a1, uint64_t a2)
{
  v2 = 0x4FA4FA4FA4FA4FA5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xB60B60B60B60B6)
  {
    sub_1794();
  }

  if (0x9F49F49F49F49F4ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9F49F49F49F49F4ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FA4FA4FA4FA4FA5 * ((a1[2] - *a1) >> 3)) >= 0x5B05B05B05B05BLL)
  {
    v5 = 0xB60B60B60B60B6;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xB60B60B60B60B6)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_5F1934(v15, a2);
  v6 = (360 * v2 + 360);
  v7 = *a1;
  v8 = a1[1];
  v9 = (*a1 - v8);
  v10 = &v9[v15];
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = &v9[v15];
    do
    {
      sub_6B8F84(v12, v11);
      v11 += 45;
      v12 = v13 + 360;
    }

    while (v11 != v8);
    do
    {
      sub_5C3168(v7);
      v7 += 45;
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

void sub_6C1E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6C1E2C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6C1E2C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 360;
    sub_5C3168(i - 360);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_6C1E80()
{
  qword_27A2E08 = 0;
  qword_27A2E10 = 0;
  qword_27A2E00 = 0;
  operator new();
}

void sub_6C4ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SLOBYTE(STACK[0x377]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x378]);
  if ((SLOBYTE(STACK[0x377]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(STACK[0x360]);
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((SLOBYTE(STACK[0x347]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x348]);
  if ((SLOBYTE(STACK[0x347]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(STACK[0x330]);
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((SLOBYTE(STACK[0x317]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x318]);
  if ((SLOBYTE(STACK[0x317]) & 0x80000000) == 0)
  {
LABEL_8:
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(STACK[0x300]);
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SLOBYTE(STACK[0x2E7]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(STACK[0x2E8]);
  if ((SLOBYTE(STACK[0x2E7]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(STACK[0x2D0]);
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SLOBYTE(STACK[0x2B7]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(STACK[0x2B8]);
  if ((SLOBYTE(STACK[0x2B7]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(STACK[0x2A0]);
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SLOBYTE(STACK[0x287]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(STACK[0x288]);
  if ((SLOBYTE(STACK[0x287]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SLOBYTE(STACK[0x26F]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(STACK[0x270]);
  if ((SLOBYTE(STACK[0x26F]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(STACK[0x258]);
  if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(STACK[0x240]);
  if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(STACK[0x228]);
  if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SLOBYTE(STACK[0x20F]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(STACK[0x210]);
  if ((SLOBYTE(STACK[0x20F]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((a69 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(a70);
  if ((a69 & 0x80000000) == 0)
  {
LABEL_20:
    if ((a67 & 0x80000000) == 0)
    {
LABEL_42:
      if (a65 < 0)
      {
        operator delete(a63);
      }

      _Unwind_Resume(a1);
    }

LABEL_41:
    operator delete(a66);
    goto LABEL_42;
  }

LABEL_40:
  operator delete(a68);
  if ((a67 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  goto LABEL_41;
}

void *sub_6C5170(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  sub_6BEBC0((a1 + 1), a2, *(a4 + 1432));
  return a1;
}

void sub_6C51A0(uint64_t *result, void *a2)
{
  v2 = a2[138];
  v3 = a2[139];
  if (v2 != v3)
  {
    v6 = a2 + 1097;
    do
    {
      if (*(v2 + 2008) != *(v2 + 2016))
      {
        v7 = (v2 + 385);
        if (!*(v2 + 386))
        {
          v7 = v6;
        }

        v8 = *v7;
        sub_6C5338(result, (v2 + 2008));
        sub_6C5510(result, a2, v8, v2);
        sub_6C5700(v9, v2);
        sub_6C57D0(result, v2);
        sub_6C59A4(result, v2);
      }

      v2 += 2616;
    }

    while (v2 != v3);
    v2 = a2[138];
    v3 = a2[139];
  }

  while (v2 != v3)
  {
    v10 = *(v2 + 2008);
    v11 = *(v2 + 2016);
    if (v10 != v11)
    {
      while (sub_6C6B7C(v10))
      {
        v10 += 360;
        if (v10 == v11)
        {
          v10 = v11;
          goto LABEL_21;
        }
      }

      if (v10 != v11)
      {
        for (i = v10 + 360; i != v11; i += 360)
        {
          if (sub_6C6B7C(i))
          {
            sub_6BDD8C(v10, i);
            v10 += 360;
          }
        }
      }
    }

LABEL_21:
    v13 = *(v2 + 2016);
    if (v10 != v13)
    {
      while (v13 != v10)
      {
        v13 -= 360;
        sub_5C3168(v13);
      }

      *(v2 + 2016) = v10;
    }

    v2 += 2616;
  }
}

uint64_t sub_6C5338(uint64_t a1, uint64_t *a2)
{
  result = sub_6C6B5C(*a2, 1);
  v4 = 0x4FA4FA4FA4FA4FA5 * ((a2[1] - *a2) >> 3);
  if (v4 >= 2)
  {
    for (i = 1; i != v4; ++i)
    {
      while (1)
      {
        v14 = sub_6B1BFC(a2, i);
        v15 = *a2;
        v16 = a2[1] - 360 * (~i + 0x4FA4FA4FA4FA4FA5 * ((a2[1] - *a2) >> 3)) - 360;
        while (v16 != v15)
        {
          v16 -= 360;
          if (sub_6C6B7C(v16))
          {
            v15 = v16 + 360;
            break;
          }
        }

        v17 = (v15 - 360);
        if (sub_6C7E90(v15 - 360) == 2 || sub_6C7E90(v15 - 360) == 4 || sub_6C7E90(v15 - 360) <= 2 && sub_6CA178(v15 - 360, v14))
        {
          break;
        }

        result = sub_6C6B5C(v14, 1);
        if (v4 == ++i)
        {
          return result;
        }
      }

      v6 = sub_6C7D24(v15 - 360);
      if (v6)
      {
        v7 = (v15 - 360);
      }

      else
      {
        v7 = v14;
      }

      if (v6)
      {
        v8 = v14;
      }

      else
      {
        v8 = v17;
      }

      sub_6CA4B8(v17, v21);
      v9 = v21[0];
      sub_6CA4B8(v14, &v20);
      v10 = v20.n128_i64[1];
      sub_6CA4B8(v14, &v18);
      sub_681624(v22, v9, v10, v19);
      sub_6C901C(v7, v22);
      v11 = sub_6C7E90(v17);
      v12 = sub_6C7E90(v14);
      if (v11 <= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

      sub_6C7E98(v7, v13);
      sub_6C6B5C(v7, 1);
      result = sub_6C6B5C(v8, 0);
    }
  }

  return result;
}

void sub_6C5510(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = sub_66242C(a2 + 936, *(a4 + 16));
  v9 = *(a4 + 2016);
  v10 = *(a4 + 2008);
  while (v9 != v10)
  {
    v9 -= 360;
    if (sub_6C6B7C(v9))
    {
      v10 = v9 + 360;
      break;
    }
  }

  v11 = v10 - 360;
  if (sub_6C7D24(v10 - 360) && (sub_6C5AB0(a1, a2, a4, v10 - 360) & 1) == 0)
  {
    *(a4 + 2056) = 1;
  }

  v12 = *(a4 + 2016) - *(a4 + 2008);
  if (v12)
  {
    v13 = 0;
    v14 = 0x4FA4FA4FA4FA4FA5 * (v12 >> 3);
    while (1)
    {
      v16 = sub_6B1BFC((a4 + 2008), v13);
      if (sub_6C6B7C(v16))
      {
        sub_6C6B5C(v16, 0);
        if (sub_6C7864(v16))
        {
          if (sub_6C7BB0(v16, v5))
          {
            break;
          }
        }
      }

LABEL_12:
      if (v14 == ++v13)
      {
        return;
      }
    }

    sub_6CA85C(v16, &v18);
    if (sub_6C7D24(v16))
    {
      if ((sub_6C5AB0(a1, a2, a4, v16) & 1) == 0)
      {
        *(a4 + 2056) = 1;
      }
    }

    else if (!sub_6C7D08(v16) || !sub_6BEF4C((a1 + 1), a4, v8) || !sub_6C5C60(a1, a2, v11, v13, a4))
    {
LABEL_23:
      if (sub_6C7E90(v16) == 1)
      {
        v15 = v18;
      }

      else
      {
        sub_6CA4B8(v16, &v17);
        v15 = v17.n128_u64[1];
      }

      v18 = v15;
      goto LABEL_12;
    }

    sub_6C6B5C(v16, 1);
    goto LABEL_23;
  }
}

void sub_6C5700(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 2008);
  for (i = *(a2 + 2016); v2 != i; v2 += 45)
  {
    v4 = sub_6C6B88(v2);
    if (v4)
    {
      v5 = 0;
      v6 = v4;
      do
      {
        if (sub_6C6B7C(v2) && (sub_6C9088(v2, v5) & 1) == 0)
        {
          v7 = sub_6C8244(v2, v5);
          if (v7[1] - *v7 != 1)
          {
            v8 = 13;
            sub_6C879C(v2, v5, &v8);
          }
        }

        ++v5;
      }

      while (v6 != v5);
    }
  }
}

void sub_6C57D0(uint64_t *result, uint64_t *a2)
{
  v3 = a2[252];
  v4 = a2[251];
  v5 = v3 - v4;
  if (v3 != v4)
  {
    v7 = 0;
    v8 = a2 + 251;
    v9 = 0x4FA4FA4FA4FA4FA5 * (v5 >> 3);
    v10 = a2 + 126;
    while (1)
    {
      v11 = sub_6B1BFC(v8, v7);
      if (sub_6C6B7C(v11))
      {
        if (v7)
        {
          v12 = a2[251];
          v13 = a2[252] - 360 * (~v7 + 0x4FA4FA4FA4FA4FA5 * ((a2[252] - v12) >> 3)) - 360;
          while (v13 != v12)
          {
            v13 -= 360;
            if (sub_6C6B7C(v13))
            {
              v12 = v13 + 360;
              break;
            }
          }

          v14 = v10;
          if (v12 != *v8)
          {
            sub_6CA4B8((v12 - 360), &v15);
            v14 = &v15.n128_i64[1];
          }

          v16 = *v14;
          if (!sub_6C8FD0(v11))
          {
LABEL_16:
            sub_6C6280(result, a2, v11, &v16);
            goto LABEL_4;
          }
        }

        else
        {
          v16 = *v10;
          if (!sub_6C8FD0(v11))
          {
            goto LABEL_16;
          }
        }

        sub_6C63E0(result, a2, v11, &v16);
      }

LABEL_4:
      if (++v7 == v9)
      {
        v4 = a2[251];
        v3 = a2[252];
        break;
      }
    }
  }

  while (v4 != v3)
  {
    sub_6CA4CC(v4, &v15);
    if (sub_681630(&v15) < *(*result + 1928) && !sub_6C7D24(v4))
    {
      sub_6C6B5C(v4, 0);
    }

    v4 += 360;
  }
}

void sub_6C59A4(uint64_t *result, uint64_t *a2)
{
  v2 = a2[251];
  for (i = a2[252]; v2 != i; v2 = (v2 + 360))
  {
    if (sub_6C6B7C(v2))
    {
      sub_6CA4B8(v2, &v17);
      v15 = v17.n128_u64[0];
      sub_6CA4B8(v2, &v17);
      v16 = v17.n128_i64[1];
      if (sub_6C7D24(v2))
      {
        v6 = *result;
        v7 = sub_6C8FD0(v2);
        v8 = sub_67A480(v6, v7) + v15;
        sub_6CA4CC(v2, &v17);
        v9 = v17.n128_u64[0];
        if (v17.n128_i64[0] >= v8)
        {
          v9 = v8;
        }
      }

      else
      {
        sub_6CA4CC(v2, &v17);
        v9 = v17.n128_u64[0];
      }

      v10 = a2[16];
      v11 = v9 < v10;
      v12 = v9 - v10;
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      if (v16 >= v10)
      {
        v14 = v16 - v10;
      }

      else
      {
        v14 = 0;
      }

      sub_681624(&v17, v13, v14, a2[15]);
      sub_6C9048(v2, &v17);
    }
  }
}

uint64_t sub_6C5AB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_66242C((a2 + 7488), *(a3 + 16));
  result = sub_6BF0A8((a1 + 1), a3, v7);
  if (result)
  {
    v9 = *(a3 + 160);
    if ((v9 - 82) < 3)
    {
      return 0;
    }

    v10 = v9 - 16;
    if (v10 < 0x18 && ((0x860005u >> v10) & 1) != 0)
    {
      return 0;
    }

    if (sub_6C92BC(a4))
    {
      return 1;
    }

    if (sub_6C6B88(a4) < 2u || sub_6C72BC(a4) && !sub_6C7384(a4))
    {
      return 0;
    }

    if (*(a3 + 1029) & 1) != 0 || (*(a3 + 1028))
    {
      return 1;
    }

    result = 1;
    if ((*(a3 + 1030) & 1) == 0 && *(a3 + 2057))
    {
      if (*(a3 + 160) != 3)
      {
        return sub_6C5E14(result, a3, a4) ^ 1;
      }

      v11 = *(a3 + 1008);
      v12 = *(*a1 + 1920);
      v13 = __OFSUB__(v11, v12);
      v14 = v11 - v12;
      v15 = ((v14 < 0) ^ v13) | (v14 == 0) ? 0 : v14;
      v16 = sub_6C749C(a4);
      v17 = *a1;
      v18 = sub_6C8FD0(a4);
      result = sub_67A368(v17, v18);
      v19 = v15 >= result ? result : v15;
      if (v16 >= v19)
      {
        return sub_6C5E14(result, a3, a4) ^ 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_6C5C60(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4, void *a5)
{
  v10 = sub_6B1BFC(a5 + 251, a4);
  v11 = sub_6C6B88(v10);
  if (v11 < 2u)
  {
    return 0;
  }

  v13 = sub_6C5EC4(v11, a5, v10, a3);
  v14 = sub_6C5FEC(a1, v10, a3);
  if (sub_6C7E90(v10) == 5)
  {
    return v13;
  }

  if (((sub_6C7E90(v10) == 6) & v14) != 0)
  {
    return 1;
  }

  if (sub_6C7E90(v10) == 7)
  {
    if (v13)
    {
      sub_6C7E98(v10, 5);
      return 1;
    }

    sub_6C7E98(v10, 6);
    if (v14)
    {
      return 1;
    }
  }

  if (a5[125] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = a5[126];
  }

  else
  {
    v15 = a5[125];
  }

  v16 = *a1;
  v17 = sub_6C8FD0(v10);
  v18 = sub_67A34C(v16, v17);
  if (v15 <= v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v15 - v18;
  }

  sub_6CA4B8(v10, &v21);
  if (v21.n128_i64[1] < v19)
  {
    return sub_6C60DC(a1, a2, a5, a4);
  }

  v20 = sub_6C749C(v10);
  sub_6CA4B8(v10, &v21);
  if (*(*a1 + 1920) + v20 < (a5[126] - v21.n128_u64[1]))
  {
    return 0;
  }

  return sub_6C9600(v10);
}

uint64_t sub_6C5E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_6C6E64(a3) == 1 && (*(a2 + 2416) & 1) == 0)
  {
    v5 = *(a2 + 160);
    if (v5 == 2)
    {
      v6 = sub_6C9794(a3);
      v7 = a3;

      return sub_6C9088(v7, v6);
    }

    if (v5 == 1)
    {
      v6 = sub_394BD0();
      v7 = a3;

      return sub_6C9088(v7, v6);
    }
  }

  return 0;
}

BOOL sub_6C5EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_6C7E90(a4) != 4 || (*(a2 + 2056) & 1) != 0 || !sub_6C7034(a4))
  {
    return 0;
  }

  v7 = sub_394BD0();
  if (sub_6C784C(a4, v7))
  {
    v8 = sub_394BD0();
    v9 = sub_6C8244(a3, v8);
    v10 = v9[1] - *v9 > 1uLL;
    v11 = sub_6C9794(a4);
    if (!sub_6C784C(a4, v11))
    {
      return v10;
    }
  }

  else
  {
    v10 = 0;
    v13 = sub_6C9794(a4);
    if (!sub_6C784C(a4, v13))
    {
      return v10;
    }
  }

  v14 = sub_6C9794(a3);
  v15 = sub_6C8244(a3, v14);
  return v10 || v15[1] - *v15 > 1uLL;
}

uint64_t sub_6C5FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_6C7E90(a3) != 4)
  {
    return 0;
  }

  result = sub_6C9598(a3, a2);
  if (result)
  {
    if (!sub_6C8FD0(a2))
    {
      return 1;
    }

    v7 = sub_394BD0();
    if (sub_6C784C(a3, v7))
    {
      v8 = 0;
      if (!sub_6C75FC(a2, 0))
      {
LABEL_6:
        v9 = 0;
        return v9 >= *(*a1 + 1880);
      }
    }

    else
    {
      v8 = sub_6C9794(a2);
      if (!sub_6C75FC(a2, v8))
      {
        goto LABEL_6;
      }
    }

    v9 = sub_6CA500(a2, v8);
    return v9 >= *(*a1 + 1880);
  }

  return result;
}

uint64_t sub_6C60DC(uint64_t *a1, void *a2, void *a3, unint64_t a4)
{
  v4 = a4;
  v8 = sub_5DBECC(a3 + 251, a4);
  v9 = sub_6C749C(v8);
  v10 = *a1;
  v11 = sub_6C8FD0(v8);
  if (v9 < sub_67A368(v10, v11))
  {
    return 0;
  }

  if (!sub_6C8FD0(v8))
  {
    v13 = 0;
    v23 = a3[5];
    v24 = *(*a1 + 1904);
    if (0x4FA4FA4FA4FA4FA5 * ((a3[252] - a3[251]) >> 3) <= v4)
    {
      v14 = v4;
    }

    else
    {
      v14 = 0x4FA4FA4FA4FA4FA5 * ((a3[252] - a3[251]) >> 3);
    }

    do
    {
      if (v4 == v14)
      {
        break;
      }

      v15 = sub_5DBECC(a3 + 251, v4);
      v16 = sub_6C6B88(v15);
      if (!v16)
      {
        break;
      }

      v17 = 0;
      v18 = 0;
      v19 = v16;
      do
      {
        v18 += sub_6C7570(v15, v17++);
      }

      while (v19 != v17);
      if (!v18)
      {
        break;
      }

      v20 = sub_6C73CC(v15);
      v21 = (sub_6C6B88(v15) - (v18 + v20)) / v18;
      if (v21 <= *(*a1 + 1896))
      {
        return 1;
      }

      v13 += sub_4D23F8(a2, v4 + v23, v21);
      ++v4;
    }

    while (*(*a1 + 1912) == 1 && v13 < v24);
    return 0;
  }

  return 1;
}

double sub_6C6280(uint64_t *a1, uint64_t *a2, __n128 *a3, uint64_t *a4)
{
  sub_6CA4B8(a3, &v23);
  v8 = v23.n128_u64[0];
  sub_6CA4B8(a3, &v23);
  v9 = v23.n128_i64[1];
  if (sub_6CA854(a3) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = a2[126];
  }

  else
  {
    v10 = sub_6CA854(a3);
  }

  v11 = sub_6C7D24(a3);
  v12 = *a1;
  v13 = sub_6C8FD0(a3);
  if (v11)
  {
    v14 = sub_67A3D8(v12, v13);
    v9 = 0;
    if (*a4 >= a2[16] + v14)
    {
      v15 = a2[16] + v14;
    }

    else
    {
      v15 = *a4;
    }
  }

  else
  {
    v16 = sub_67A464(v12, v13) + v8;
    v17 = sub_6C6B88(a3);
    v18 = (v17 - sub_6C6E64(a3));
    if (v18 > 3)
    {
      v20 = v18 > 5;
      v19 = (*a1 + 1816);
      if (!v20)
      {
        v19 = (*a1 + 1808);
      }
    }

    else
    {
      v19 = (*a1 + 1800);
    }

    v21 = *v19 + v9;
    if (v21 >= v16)
    {
      v21 = v16;
    }

    if (v10 >= v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = v10;
    }
  }

  sub_681624(&v23, v15, v9, a2[15]);
  *&result = sub_6C9030(a3, &v23).n128_u64[0];
  return result;
}

double sub_6C63E0(uint64_t *a1, uint64_t a2, __n128 *a3, uint64_t *a4)
{
  sub_6CA4B8(a3, &v35);
  v8 = v35.n128_u64[0];
  sub_6CA4B8(a3, &v35);
  v9 = v35.n128_u64[1];
  if (sub_6CA854(a3) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *(a2 + 1008);
    if (!sub_6C7D24(a3))
    {
LABEL_3:
      v11 = *a1;
      v12 = sub_6C8FD0(a3);
      v13 = sub_67A49C(v11, v12) + v9;
      v14 = *a1;
      v15 = sub_6C8FD0(a3);
      v16 = sub_67A3D8(v14, v15) + v9;
      v17 = *a1;
      v18 = sub_6C8FD0(a3);
      v19 = sub_67A464(v17, v18) + v8;
      if (v13 > v19)
      {
        v19 = v13;
      }

      if (v19 >= v10)
      {
        v19 = v10;
      }

      if (v16 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v16;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v10 = sub_6CA854(a3);
    if (!sub_6C7D24(a3))
    {
      goto LABEL_3;
    }
  }

  v21 = *a1;
  if (*(a2 + 1028) == 1)
  {
    v22 = *(v21 + 792);
  }

  else
  {
    v23 = sub_6C8FD0(a3);
    v22 = sub_67A480(v21, v23);
    v21 = *a1;
  }

  v24 = v22 + v8;
  v25 = sub_6C8FD0(a3);
  v26 = *(a2 + 128) + sub_67A3D8(v21, v25);
  v27 = *a1;
  v28 = sub_6C8FD0(a3);
  v29 = sub_67A330(v27, v28);
  if (v26 >= *a4)
  {
    v30 = *a4;
  }

  else
  {
    v30 = v26;
  }

  if (*(a2 + 128) + v29 >= *a4)
  {
    v31 = *a4;
  }

  else
  {
    v31 = *(a2 + 128) + v29;
  }

  if (sub_6F390((a2 + 2064)) && (v32 = *(a2 + 160), v32 - 82 >= 3) && (v32 > 0x27 || ((1 << v32) & 0x8600050000) == 0))
  {
    v33 = *(a2 + 128) + **(a2 + 2064);
  }

  else
  {
    v33 = *(a2 + 1008);
  }

  v9 = 0;
  if (v33 >= v24)
  {
    v33 = v24;
  }

  if (v31 > v33)
  {
    v33 = v31;
  }

  if (v30 >= v33)
  {
    v20 = v33;
  }

  else
  {
    v20 = v30;
  }

LABEL_32:
  sub_681624(&v35, v20, v9, *(a2 + 120));
  *&result = sub_6C9030(a3, &v35).n128_u64[0];
  return result;
}

void sub_6C6608()
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
  xmmword_27A3EC0 = 0u;
  *algn_27A3ED0 = 0u;
  dword_27A3EE0 = 1065353216;
  sub_3A9A34(&xmmword_27A3EC0, v0, v0);
  sub_3A9A34(&xmmword_27A3EC0, v3, v3);
  sub_3A9A34(&xmmword_27A3EC0, __p, __p);
  sub_3A9A34(&xmmword_27A3EC0, v9, v9);
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
    qword_27A3E98 = 0;
    qword_27A3EA0 = 0;
    qword_27A3E90 = 0;
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

void sub_6C6850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A3EA8)
  {
    qword_27A3EB0 = qword_27A3EA8;
    operator delete(qword_27A3EA8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6C68FC(uint64_t a1, unsigned __int8 a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 168) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 3;
  *(a1 + 220) = 0;
  *(a1 + 224) = 0;
  *(a1 + 226) = 1;
  *(a1 + 264) = 0;
  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  v4 = vnegq_f64(v3);
  *(a1 + 272) = v4;
  *(a1 + 288) = v4;
  *(a1 + 304) = v4;
  *(a1 + 320) = v4;
  *(a1 + 336) = v4;
  *(a1 + 352) = *(a1 + 352) & 0x80 | 4;
  sub_6C6A44(a1, a2, 0, 0, 0);
  return a1;
}

void sub_6C69F0(_Unwind_Exception *a1)
{
  sub_6CAD50(v6);
  sub_34BE0((v1 + 192));
  sub_34BE0(v5);
  sub_11BD8(v4);
  sub_11BD8(v3);
  sub_5ED604(v2);
  sub_11BD8(v1);
  _Unwind_Resume(a1);
}

void sub_6C6A44(uint64_t a1, unsigned __int8 a2, char a3, int a4, int a5)
{
  v7 = *(a1 + 232);
  v8 = *(a1 + 240);
  v6 = (a1 + 232);
  if (a4)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 | a3;
  if (a5)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v16[0] = v10 | v11;
  v16[1] = -1;
  *v17 = 0u;
  v18 = 0u;
  *__p = 0u;
  v20 = 0;
  v12 = (v8 - v7) >> 6;
  if (a2 <= v12)
  {
    if (a2 < v12)
    {
      v13 = v7 + (a2 << 6);
      while (v8 != v13)
      {
        v14 = *(v8 - 24);
        if (v14)
        {
          *(v8 - 16) = v14;
          operator delete(v14);
        }

        v15 = *(v8 - 48);
        if (v15)
        {
          *(v8 - 40) = v15;
          operator delete(v15);
        }

        v8 -= 64;
      }

      *(a1 + 240) = v13;
    }
  }

  else
  {
    sub_6CB1CC(v6, a2 - v12, v16);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  if (v17[1])
  {
    *&v18 = v17[1];
    operator delete(v17[1]);
  }
}

uint64_t sub_6C6B5C(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 64;
  }

  else
  {
    v2 = 0;
  }

  *(result + 352) = *(result + 352) & 0xBF | v2;
  return result;
}

uint64_t sub_6C6BA0(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (v2 <= a2)
      {
        v4 = a2 % *(a1 + 128);
      }
    }

    else
    {
      v4 = (v2 - 1) & a2;
    }

    v5 = *(*(a1 + 120) + 8 * v4);
    if (v5)
    {
      v6 = *v5;
      if (v6)
      {
        if (v3.u32[0] < 2uLL)
        {
          v7 = v2 - 1;
          while (1)
          {
            v9 = v6[1];
            if (v9 == a2)
            {
              if (*(v6 + 16) == a2)
              {
                return 1;
              }
            }

            else if ((v9 & v7) != v4)
            {
              return 0;
            }

            v6 = *v6;
            if (!v6)
            {
              return 0;
            }
          }
        }

        do
        {
          v8 = v6[1];
          if (v8 == a2)
          {
            if (*(v6 + 16) == a2)
            {
              return 1;
            }
          }

          else
          {
            if (v8 >= v2)
            {
              v8 %= v2;
            }

            if (v8 != v4)
            {
              return 0;
            }
          }

          v6 = *v6;
        }

        while (v6);
      }
    }
  }

  return 0;
}

BOOL sub_6C6C8C(uint64_t a1)
{
  v1 = *(a1 + 232);
  v2 = *(a1 + 240);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = ((v2 - v1) >> 6) - 1;
  v4 = v2 - 64;
  v5 = 1;
  while (1)
  {
    v7 = *v1;
    v1 += 64;
    v6 = v7;
    v8 = *v4;
    v4 -= 64;
    v9 = v8 ^ v6;
    result = (v9 & 2) == 0;
    if ((v9 & 2) != 0)
    {
      break;
    }

    if (v5++ > --v3)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_6C6D08(uint64_t a1)
{
  v2 = sub_6B79D0((*(a1 + 240) - *(a1 + 232)) >> 6);
  if (v2 < 4u)
  {
    return 0;
  }

  v3 = v2;
  v5 = *(a1 + 232);
  v4 = *(a1 + 240);
  if (v5 == v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v6 = v4 - v5 - 64;
  if (v6 < 0x40)
  {
    v7 = 0;
    v8 = *(a1 + 232);
    do
    {
LABEL_9:
      v16 = *v8;
      v8 += 64;
      v7 += (v16 >> 1) & 1;
    }

    while (v8 != v4);
    goto LABEL_10;
  }

  v9 = 0;
  v10 = 0;
  v11 = (v6 >> 6) + 1;
  v8 = &v5[64 * (v11 & 0x7FFFFFFFFFFFFFELL)];
  v12 = v5 + 64;
  v13 = v11 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v14 = *(v12 - 64);
    v15 = *v12;
    v12 += 128;
    v9 += (v14 >> 1) & 1;
    v10 += (v15 >> 1) & 1;
    v13 -= 2;
  }

  while (v13);
  v7 = v10 + v9;
  if (v11 != (v11 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_9;
  }

LABEL_10:
  v17 = sub_6C6EF8(v7);
  if (v17 != 2)
  {
    if (v17 == 1)
    {
      v18 = *(a1 + 232);
      if ((*(v18 + 64) & 2) == 0)
      {
        v19 = v18 + (v3 << 6);
        if ((*(v19 - 128) & 2) == 0 && (*(v18 + 128) & 2) == 0)
        {
          return (*(v19 - 192) >> 1) & 1;
        }
      }

      return 1;
    }

    return 0;
  }

  v20 = *(a1 + 232);
  if ((*(v20 + 64) & 2) != 0 && (*(v20 + 128) & 2) != 0)
  {
    return 1;
  }

  v19 = v20 + (v3 << 6);
  if ((*(v19 - 128) & 2) == 0)
  {
    return 0;
  }

  return (*(v19 - 192) >> 1) & 1;
}

unint64_t sub_6C6E64(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  if (v2 == v1)
  {
    v4 = 0;
    return sub_6C6EF8(v4);
  }

  v3 = v1 - v2 - 64;
  if (v3 < 0x40)
  {
    v4 = 0;
    v5 = v2;
    do
    {
LABEL_9:
      v13 = *v5;
      v5 += 64;
      v4 += (v13 >> 1) & 1;
    }

    while (v5 != v1);
    return sub_6C6EF8(v4);
  }

  v6 = 0;
  v7 = 0;
  v8 = (v3 >> 6) + 1;
  v5 = &v2[64 * (v8 & 0x7FFFFFFFFFFFFFELL)];
  v9 = v2 + 64;
  v10 = v8 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v11 = *(v9 - 64);
    v12 = *v9;
    v9 += 128;
    v6 += (v11 >> 1) & 1;
    v7 += (v12 >> 1) & 1;
    v10 -= 2;
  }

  while (v10);
  v4 = v7 + v6;
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_9;
  }

  return sub_6C6EF8(v4);
}

unint64_t sub_6C6EF8(unint64_t result)
{
  if (result >= 0x100)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(&v8, " failed", &v7);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_6C6FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

unint64_t sub_6C7034(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  if (v2 == v1)
  {
    v4 = 0;
    return sub_6C6EF8(v4);
  }

  v3 = v1 - v2 - 64;
  if (v3 < 0x40)
  {
    v4 = 0;
    v5 = v2;
    do
    {
LABEL_9:
      v13 = *v5;
      v5 += 64;
      v4 += v13 & 1;
    }

    while (v5 != v1);
    return sub_6C6EF8(v4);
  }

  v6 = 0;
  v7 = 0;
  v8 = (v3 >> 6) + 1;
  v5 = &v2[64 * (v8 & 0x7FFFFFFFFFFFFFELL)];
  v9 = v2 + 64;
  v10 = v8 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v11 = *(v9 - 64);
    v12 = *v9;
    v9 += 128;
    v6 += v11 & 1;
    v7 += v12 & 1;
    v10 -= 2;
  }

  while (v10);
  v4 = v7 + v6;
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_9;
  }

  return sub_6C6EF8(v4);
}

unint64_t sub_6C70C8(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  if (v2 == v1)
  {
    v4 = 0;
    return sub_6C6EF8(v4);
  }

  v3 = v1 - v2 - 64;
  if (v3 < 0x40)
  {
    v4 = 0;
    v5 = v2;
    do
    {
LABEL_9:
      v13 = *v5;
      v5 += 64;
      v4 += (v13 & 1) == 0;
    }

    while (v5 != v1);
    return sub_6C6EF8(v4);
  }

  v6 = 0;
  v7 = 0;
  v8 = (v3 >> 6) + 1;
  v5 = &v2[64 * (v8 & 0x7FFFFFFFFFFFFFELL)];
  v9 = v2 + 64;
  v10 = v8 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v11 = ~*(v9 - 64);
    v12 = *v9;
    v9 += 128;
    v6 += v11 & 1;
    v7 += (v12 & 1) == 0;
    v10 -= 2;
  }

  while (v10);
  v4 = v7 + v6;
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_9;
  }

  return sub_6C6EF8(v4);
}

unint64_t sub_6C7168(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  if (v2 == v1)
  {
    v4 = 0;
    return sub_6C6EF8(v4);
  }

  v3 = v1 - v2 - 64;
  if (v3 < 0x40)
  {
    v4 = 0;
    v5 = v2;
    do
    {
LABEL_9:
      v13 = *v5;
      v5 += 64;
      v4 += (v13 >> 2) & 1;
    }

    while (v5 != v1);
    return sub_6C6EF8(v4);
  }

  v6 = 0;
  v7 = 0;
  v8 = (v3 >> 6) + 1;
  v5 = &v2[64 * (v8 & 0x7FFFFFFFFFFFFFELL)];
  v9 = v2 + 64;
  v10 = v8 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v11 = *(v9 - 64);
    v12 = *v9;
    v9 += 128;
    v6 += (v11 >> 2) & 1;
    v7 += (v12 >> 2) & 1;
    v10 -= 2;
  }

  while (v10);
  v4 = v7 + v6;
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_9;
  }

  return sub_6C6EF8(v4);
}

BOOL sub_6C71FC(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  if (v2 == v1)
  {
    return sub_6C6EF8(0) != 0;
  }

  v3 = v1 - v2 - 64;
  if (v3 >= 0x40)
  {
    v7 = 0;
    v8 = 0;
    v9 = (v3 >> 6) + 1;
    v5 = &v2[64 * (v9 & 0x7FFFFFFFFFFFFFELL)];
    v10 = v2 + 64;
    v11 = v9 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      v12 = *(v10 - 64);
      v13 = *v10;
      v10 += 128;
      v7 += (v12 >> 1) & 1;
      v8 += (v13 >> 1) & 1;
      v11 -= 2;
    }

    while (v11);
    v4 = v8 + v7;
    if (v9 == (v9 & 0x7FFFFFFFFFFFFFELL))
    {
      return sub_6C6EF8(v4) != 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = v2;
  }

  do
  {
    v14 = *v5;
    v5 += 64;
    v4 += (v14 >> 1) & 1;
  }

  while (v5 != v1);
  return sub_6C6EF8(v4) != 0;
}

BOOL sub_6C72BC(uint64_t a1)
{
  v3 = *(a1 + 232);
  v2 = *(a1 + 240);
  if (v3 == v2)
  {
    v5 = 0;
    return (*(a1 + 240) - *(a1 + 232)) >> 6 == sub_6C6EF8(v5);
  }

  v4 = v2 - v3 - 64;
  if (v4 < 0x40)
  {
    v5 = 0;
    v6 = v3;
    do
    {
LABEL_8:
      v14 = *v6;
      v6 += 64;
      v5 += (v14 >> 1) & 1;
    }

    while (v6 != v2);
    return (*(a1 + 240) - *(a1 + 232)) >> 6 == sub_6C6EF8(v5);
  }

  v7 = 0;
  v8 = 0;
  v9 = (v4 >> 6) + 1;
  v6 = &v3[64 * (v9 & 0x7FFFFFFFFFFFFFELL)];
  v10 = v3 + 64;
  v11 = v9 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v12 = *(v10 - 64);
    v13 = *v10;
    v10 += 128;
    v7 += (v12 >> 1) & 1;
    v8 += (v13 >> 1) & 1;
    v11 -= 2;
  }

  while (v11);
  v5 = v8 + v7;
  if (v9 != (v9 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_8;
  }

  return (*(a1 + 240) - *(a1 + 232)) >> 6 == sub_6C6EF8(v5);
}

unint64_t sub_6C7384(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  v3 = 0;
  v4 = v1 - v2;
  if (v4)
  {
    v5 = v4 >> 6;
    v6 = (v2 + 48);
    do
    {
      if ((*(v6 - 6) & 2) != 0 && *v6 - *(v6 - 1) > 1uLL)
      {
        ++v3;
      }

      v6 += 8;
      --v5;
    }

    while (v5);
  }

  return sub_6B79D0(v3);
}

uint64_t sub_6C73CC(uint64_t a1)
{
  v2 = *(a1 + 232);
  v1 = *(a1 + 240);
  result = 0;
  v4 = v1 - v2;
  if (v4)
  {
    v5 = v4 >> 6;
    v6 = (v2 + 48);
    do
    {
      if (*(v6 - 6))
      {
        if (*v6 - *(v6 - 1) <= 1uLL)
        {
          result = result;
        }

        else
        {
          result = (result + 1);
        }
      }

      v6 += 8;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_6C7414(uint64_t a1)
{
  v1 = *(a1 + 240) - *(a1 + 232);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = v1 >> 6;
  do
  {
    v6 = *(a1 + 232) + v3;
    if (*v6)
    {
      v7 = *(v6 + 48) - *(v6 + 40);
      if (v7 >= 2)
      {
        v4 = sub_6B79D0(v7 - 1) + v4;
      }
    }

    v3 += 64;
    --v5;
  }

  while (v5);
  return v4;
}

uint64_t sub_6C749C(uint64_t a1)
{
  v1 = (a1 + 232);
  v2 = 0;
  v3 = *(a1 + 240) - *(a1 + 232);
  if (v3)
  {
    v4 = 0;
    v5 = v3 >> 6;
    do
    {
      v6 = sub_6B79D0(v4);
      if ((*(*v1 + (v6 << 6)) & 1) == 0)
      {
        v7 = sub_6C7650(v1, v6);
        v8 = *(v7 + 40);
        v9 = *(v7 + 48);
        if (v8 != v9)
        {
          while (*v8 != 12)
          {
            if (++v8 == v9)
            {
              if (*(*v1 + (v6 << 6) + 8) != 0x7FFFFFFFFFFFFFFFLL && v2 <= *(*v1 + (v4 << 6) + 8))
              {
                v2 = *(*v1 + (v4 << 6) + 8);
              }

              break;
            }
          }
        }
      }

      ++v4;
    }

    while (v4 != v5);
  }

  return v2;
}

BOOL sub_6C7570(uint64_t a1, unsigned __int8 a2)
{
  v2 = (a1 + 232);
  v3 = a2;
  if ((*(*(a1 + 232) + (a2 << 6)) & 1) == 0)
  {
    v4 = sub_6C7650((a1 + 232), a2);
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    if (v5 != v6)
    {
      while (*v5 != 12)
      {
        if (++v5 == v6)
        {
          return *(*v2 + (v3 << 6) + 8) != 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }

  return 0;
}

BOOL sub_6C75FC(uint64_t a1, unsigned __int8 a2)
{
  v2 = sub_6C7650((a1 + 232), a2);
  v4 = *(v2 + 40);
  v3 = *(v2 + 48);
  if (v4 == v3)
  {
    return 0;
  }

  v5 = v4 + 1;
  do
  {
    v6 = *(v5 - 1);
    result = v6 != 12;
  }

  while (v6 != 12 && v5++ != v3);
  return result;
}

unint64_t sub_6C7650(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 6)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, (a1[1] - *a1) >> 6);
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

  return *a1 + (a2 << 6);
}

void sub_6C776C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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