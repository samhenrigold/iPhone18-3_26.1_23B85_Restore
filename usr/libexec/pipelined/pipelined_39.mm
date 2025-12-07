uint64_t sub_10026E2B0(uint64_t result)
{
  *result = 0x7FF8000000000000;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 892857142;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

void sub_10026E2D4(uint64_t *a1@<X0>, char **a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_u64[0];
  if (*a1 <= a3.n128_f64[0])
  {
    v6 = *a1;
  }

  else
  {
    v6 = a3.n128_f64[0];
  }

  v7 = v6;
  __p = 0;
  v26 = 0;
  v27 = 0;
  v8 = a1[1];
  v9 = a1[2];
  *&v22 = &__p;
  BYTE8(v22) = 0;
  if (v9 != v8)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1002AE7DC(a2);
  if (__p != v26 && v7 > 0.0)
  {
    v10 = sub_10026E5B8(a1, &__p, v7);
    sub_1002AE7F4(&__p, &v22, v7 * v10);
    v11 = *a2;
    if (*a2)
    {
      v12 = a2[1];
      v13 = *a2;
      if (v12 != v11)
      {
        do
        {
          v14 = v12 - 40;
          nullsub_68();
          v12 = v14;
        }

        while (v14 != v11);
        v13 = *a2;
      }

      a2[1] = v11;
      operator delete(v13);
    }

    *a2 = v22;
    a2[2] = v23;
    *(a2 + 3) = v24;
  }

  v16 = a1[1];
  v15 = a1[2];
  if (v15 != v16)
  {
    do
    {
      v17 = v15 - 40;
      nullsub_68();
      v15 = v17;
    }

    while (v17 != v16);
  }

  a1[2] = v16;
  *a1 = v3;
  v18 = __p;
  if (__p)
  {
    v19 = v26;
    v20 = __p;
    if (v26 != __p)
    {
      do
      {
        v21 = v19 - 40;
        nullsub_68();
        v19 = v21;
      }

      while (v21 != v18);
      v20 = __p;
    }

    v26 = v18;
    operator delete(v20);
  }
}

void sub_10026E520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_10026E248(v23);
  sub_10026E248(&a15);
  _Unwind_Resume(a1);
}

void sub_10026E55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10026E248(va);
  _Unwind_Resume(a1);
}

void sub_10026E584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    v11 = -v9;
    do
    {
      nullsub_68();
      v11 += 40;
    }

    while (v11);
  }

  sub_10026F228(&a9);
  _Unwind_Resume(a1);
}

double sub_10026E5B8(uint64_t *a1, uint64_t **a2, double a3)
{
  result = 0.0;
  if (a3 != 0.0)
  {
    v5 = *a2;
    v6 = a2[1];
    if (*a2 != v6)
    {
      do
      {
        v19 = *v5;
        sub_10012A31C(&v20, (v5 + 1));
        *&v18 = sub_100218048(&v19);
        *(&v18 + 1) = a3;
        sub_1000277F8((a1 + 5), &v18);
        sub_1000462CC(a1 + 4, ((a1[6] - a1[5]) >> 4) - 1);
        nullsub_68();
        v5 += 5;
      }

      while (v5 != v6);
      v9 = a1[5];
      v8 = a1[6];
      if (v9 == v8)
      {
        v11 = 0.0;
      }

      else
      {
        v10 = v8 - v9 - 16;
        if (v10 > 0xF)
        {
          v13 = (v10 >> 4) + 1;
          v12 = v9 + 16 * (v13 & 0x1FFFFFFFFFFFFFFELL);
          v14 = (v9 + 24);
          v11 = 0.0;
          v15 = v13 & 0x1FFFFFFFFFFFFFFELL;
          do
          {
            v16 = *(v14 - 2);
            v17 = *v14;
            v14 += 4;
            v11 = v11 + v16 + v17;
            v15 -= 2;
          }

          while (v15);
          if (v13 == (v13 & 0x1FFFFFFFFFFFFFFELL))
          {
            return a3 / v11;
          }
        }

        else
        {
          v11 = 0.0;
          v12 = a1[5];
        }

        do
        {
          v11 = v11 + *(v12 + 8);
          v12 += 16;
        }

        while (v12 != v8);
      }

      return a3 / v11;
    }
  }

  return result;
}

void sub_10026E71C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 32);
  (*(*a3 + 96))(a3);
  sub_1002253B8(a3, &v12);
  sub_1001F969C(a4);
  v14 = v8;
  v9 = a1[17];
  if (v9 >= a1[18])
  {
    v10 = sub_10026EEF4(a1 + 16, &v14, v12);
  }

  else
  {
    sub_100217E8C(a1[17], v8, v12);
    v10 = v9 + 40;
    a1[17] = v9 + 40;
  }

  a1[17] = v10;
  a1[14] = *(a2 + 32);
  v11 = v13;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_10026E848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 136) = v4;
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_10026E860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10026E874(__n128 *a1, uint64_t a2, uint64_t a3, void (***a4)(void, uint64_t, uint64_t *, uint64_t, uint64_t), _BYTE *a5, int a6, uint64_t a7, uint64_t a8)
{
  (*(*a3 + 104))(a3);
  sub_100322264(&v30, a2);
  v16.n128_f64[0] = sub_1002253C0(a3, &v30);
  sub_10026E2D4(&a1[7].n128_i64[1], &__p, v16);
  if (a6)
  {
    v29 = 0x3FF0000000000000;
  }

  v17 = *(a2 + 32);
  v18 = *(a7 + 24);
  if (!v18)
  {
    goto LABEL_6;
  }

  if (v18 != a7)
  {
    v18 = (*(*v18 + 16))(v18);
LABEL_6:
    v32 = v18;
    goto LABEL_8;
  }

  v32 = v31;
  (*(*v18 + 24))(v18, v31);
LABEL_8:
  v19 = sub_10026EADC(a1, v17, &__p, a3, a4, a5, v31, a8);
  v21 = v20;
  if (v32 == v31)
  {
    (*(*v32 + 32))(v32, v19);
    a1[7].n128_u64[0] = *(a2 + 32);
    v22 = __p;
    if (!__p)
    {
      return v21;
    }

    goto LABEL_14;
  }

  if (v32)
  {
    (*(*v32 + 40))(v19);
  }

  a1[7].n128_u64[0] = *(a2 + 32);
  v22 = __p;
  if (__p)
  {
LABEL_14:
    v23 = v28;
    v24 = v22;
    if (v28 != v22)
    {
      do
      {
        v25 = v23 - 40;
        nullsub_68();
        v23 = v25;
      }

      while (v25 != v22);
      v24 = __p;
    }

    v28 = v22;
    operator delete(v24);
  }

  return v21;
}

void sub_10026EAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10026E248(va);
  _Unwind_Resume(a1);
}

void sub_10026EABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, char *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_1001D3E18(va1);
  sub_10026E248(va);
  _Unwind_Resume(a1);
}

__n128 sub_10026EADC(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (***a5)(void, uint64_t, uint64_t *, uint64_t, uint64_t), _BYTE *a6, uint64_t a7, uint64_t a8)
{
  result.n128_u64[0] = *(a3 + 32);
  if (result.n128_f64[0] != 0.0 && sub_1001F82BC(a5))
  {
    sub_10022536C(a4, a3);
    if (*a3 == *(a3 + 8))
    {
      sub_1003846E0(&v25, v19);
      sub_10003F5D0(&v25);
    }

    sub_1002258B8(a4, a2, v19);
    if (!sub_10025B310(v19))
    {
      *&v25.__r_.__value_.__l.__data_ = 0uLL;
      v17 = *(a7 + 24);
      if (v17)
      {
        if (v17 == a7)
        {
          v24 = v23;
          (*(*v17 + 24))(v17, v23);
LABEL_10:
          sub_100229A40(a6, a2, &v25, v23, a5, a8);
          if (v24 == v23)
          {
            (*(*v24 + 32))(v24);
          }

          else if (v24)
          {
            (*(*v24 + 40))();
          }

          size = v25.__r_.__value_.__l.__size_;
          if (v25.__r_.__value_.__l.__size_ && !atomic_fetch_add((v25.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (size->__on_zero_shared)(size);
            std::__shared_weak_count::__release_weak(size);
          }

          v22 = 0;
          LOBYTE(__p) = 0;
          memset(&v25, 0, sizeof(v25));
          std::string::assign(&v25, "Need the following code here: pfilter->updateHeadingNonuniformTimestep(headingMotion, currentUpdateWalkingState);");
          sub_1000E661C(&__p, &v25, 1);
          if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25.__r_.__value_.__l.__data_);
          }

          if (v22 < 0)
          {
            operator delete(__p);
          }

          sub_10003F5D0(&v20);
        }

        v17 = (*(*v17 + 16))(v17);
      }

      v24 = v17;
      goto LABEL_10;
    }

    sub_1001F96EC(a5, a3);
    if (a1[4].n128_u8[0] == 1)
    {
      result.n128_u64[0] = *(a3 + 32);
      if (result.n128_f64[0] > a1[6].n128_f64[1])
      {
        if (&a1[4].n128_i8[8] != a3)
        {
          sub_10026F2A4(&a1[4].n128_i64[1], *a3, *(a3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 3));
        }

        result = *(a3 + 24);
        a1[6] = result;
      }
    }

    else
    {
      a1[4].n128_u64[1] = 0;
      a1[5].n128_u64[0] = 0;
      a1[5].n128_u64[1] = 0;
      sub_10026F108(&a1[4].n128_i64[1], *a3, *(a3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 3));
      result = *(a3 + 24);
      a1[6] = result;
      a1[4].n128_u8[0] = 1;
    }
  }

  return result;
}

void sub_10026EE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (*(v22 - 73) < 0)
  {
    operator delete(*(v22 - 96));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_10026EEB4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = v1 + 1;
  if (v1 != v2 && v3 != v2)
  {
    v5 = *v1;
    v6 = v1 + 1;
    do
    {
      v7 = *v6++;
      v8 = v7;
      if (v5 < v7)
      {
        v5 = v8;
        v1 = v3;
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  return *v1;
}

void *sub_10026EEF4(void **a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    sub_10000FC84();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_10000D444();
  }

  v13 = (8 * ((a1[1] - *a1) >> 3));
  sub_100217E8C(v13, *a2, a3);
  v7 = (40 * v3 + 40);
  v14 = v7;
  v8 = *a1;
  v9 = a1[1];
  v10 = v13 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = 0;
    do
    {
      *&v10[v11] = *&v8[v11];
      sub_10012A31C(&v10[v11 + 8], &v8[v11 + 8]);
      v11 += 40;
    }

    while (&v8[v11] != v9);
    do
    {
      nullsub_68();
      v8 += 40;
    }

    while (v8 != v9);
    v8 = *a1;
    v7 = v14;
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

void sub_10026F06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10026F0B0(va);
  _Unwind_Resume(a1);
}

void sub_10026F080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    v5 = -v3;
    do
    {
      nullsub_68();
      v5 += 40;
    }

    while (v5);
  }

  sub_10026F0B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10026F0B0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    nullsub_68();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10026F108(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      operator new();
    }

    sub_10000FC84();
  }
}

void sub_10026F1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v11)
  {
    v13 = -v11;
    do
    {
      nullsub_68();
      v13 += 40;
    }

    while (v13);
  }

  *(v9 + 8) = v10;
  sub_10026F228(&a9);
  _Unwind_Resume(a1);
}

void ***sub_10026F228(void ***result)
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
          v6 = v4 - 40;
          nullsub_68();
          v4 = v6;
        }

        while (v6 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_10026F2A4(uint64_t *a1, void *a2, void *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = v10 - 40;
          nullsub_68();
          v10 = v12;
        }

        while (v12 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x666666666666666)
    {
      v13 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v14 = 2 * v13;
      if (2 * v13 <= a4)
      {
        v14 = a4;
      }

      if (v13 >= 0x333333333333333)
      {
        v15 = 0x666666666666666;
      }

      else
      {
        v15 = v14;
      }

      if (v15 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v16 = a1[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v16 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v23 = a2;
      v24 = *a1;
      do
      {
        v25 = *v23;
        v23 += 5;
        *v24 = v25;
        v24 += 5;
        sub_10012A358(v8 + 8, (v5 + 1));
        v8 = v24;
        v5 = v23;
      }

      while (v23 != a3);
      v16 = a1[1];
      v8 = v24;
    }

    for (; v16 != v8; v16 -= 40)
    {
      nullsub_68();
    }

    a1[1] = v8;
  }

  else
  {
    v17 = (a2 + v16 - v8);
    if (v16 != v8)
    {
      v18 = a2;
      v19 = *a1;
      do
      {
        v20 = *v18;
        v18 += 5;
        *v19 = v20;
        v19 += 5;
        sub_10012A358(v8 + 8, (v5 + 1));
        v8 = v19;
        v5 = v18;
      }

      while (v18 != v17);
      v16 = a1[1];
    }

    v21 = v16;
    if (v17 != a3)
    {
      v22 = 0;
      do
      {
        *(v16 + v22 * 8) = v17[v22];
        sub_10012A31C(v16 + v22 * 8 + 8, &v17[v22 + 1]);
        v22 += 5;
      }

      while (&v17[v22] != a3);
      v21 = v16 + v22 * 8;
    }

    a1[1] = v21;
  }
}

void sub_10026F548(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    v5 = -v3;
    do
    {
      nullsub_68();
      v5 += 40;
    }

    while (v5);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_10026F574()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10026F5E4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void *sub_10026F654(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t *sub_10026F678@<X0>(uint64_t *result@<X0>, void *a2@<X1>, int a3@<W2>, unsigned __int8 *a4@<X3>, unsigned __int8 *a5@<X4>, unsigned __int8 *a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *result;
  *v19 = result[1];
  *&v19[7] = *(result + 15);
  v11 = *(result + 23);
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  v12 = *a4;
  if (v12 == 1)
  {
    v18 = *(a4 + 8);
    v13 = *a5;
    if (v13 != 1)
    {
LABEL_3:
      v14 = *a6;
      if (v14 != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v13 = *a5;
    if (v13 != 1)
    {
      goto LABEL_3;
    }
  }

  v17 = *(a5 + 8);
  v14 = *a6;
  if (v14 != 1)
  {
LABEL_4:
    v15 = *a7;
    if (v15 != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  v8 = *(a6 + 1);
  v15 = *a7;
  if (v15 == 1)
  {
LABEL_5:
    v9 = *(a7 + 1);
  }

LABEL_6:
  *a8 = v10;
  *(a8 + 8) = *v19;
  *(a8 + 15) = *&v19[7];
  *(a8 + 23) = v11;
  v16 = a2[1];
  *(a8 + 24) = *a2;
  *(a8 + 32) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(a8 + 40) = 0;
  *(a8 + 56) = a3;
  *(a8 + 64) = 0;
  if (v12)
  {
    *(a8 + 72) = v18;
    *(a8 + 64) = 1;
    *(a8 + 88) = 0;
    if (!v13)
    {
LABEL_10:
      *(a8 + 112) = 0;
      if (!v14)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else
  {
    *(a8 + 88) = 0;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  *(a8 + 96) = v17;
  *(a8 + 88) = 1;
  *(a8 + 112) = 0;
  if (!v14)
  {
LABEL_11:
    *(a8 + 128) = 0;
    if (!v15)
    {
      return result;
    }

LABEL_20:
    *(a8 + 136) = v9;
    *(a8 + 128) = 1;
    return result;
  }

LABEL_19:
  *(a8 + 120) = v8;
  *(a8 + 112) = 1;
  *(a8 + 128) = 0;
  if (v15)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10026F808(uint64_t result, uint64_t a2, uint64_t *a3, void *a4, int a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8)
{
  v9 = *a3;
  *v17 = a3[1];
  *&v17[7] = *(a3 + 15);
  v10 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v11 = *a6;
  if (v11 == 1)
  {
    v16 = *(a6 + 8);
    v12 = *a7;
    if (v12 != 1)
    {
LABEL_3:
      v13 = *a8;
      if (v13 != 1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v12 = *a7;
    if (v12 != 1)
    {
      goto LABEL_3;
    }
  }

  v15 = *(a7 + 8);
  v13 = *a8;
  if (v13 == 1)
  {
LABEL_4:
    v8 = *(a8 + 1);
  }

LABEL_5:
  *result = v9;
  *(result + 8) = *v17;
  *(result + 15) = *&v17[7];
  *(result + 23) = v10;
  v14 = a4[1];
  *(result + 24) = *a4;
  *(result + 32) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 40) = 1;
  *(result + 48) = a2;
  *(result + 56) = a5;
  *(result + 64) = 0;
  if (!v11)
  {
    *(result + 88) = 0;
    if (!v12)
    {
      goto LABEL_9;
    }

LABEL_16:
    *(result + 96) = v15;
    *(result + 88) = 1;
    *(result + 112) = 0;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *(result + 72) = v16;
  *(result + 64) = 1;
  *(result + 88) = 0;
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_9:
  *(result + 112) = 0;
  if (v13)
  {
LABEL_10:
    *(result + 120) = v8;
    *(result + 112) = 1;
  }

LABEL_11:
  *(result + 128) = 0;
  return result;
}

uint64_t sub_10026F950(uint64_t result, uint64_t a2, uint64_t *a3, void *a4, int a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8, unsigned __int8 *a9)
{
  v11 = *a3;
  *v21 = a3[1];
  *&v21[7] = *(a3 + 15);
  v12 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v13 = *a6;
  if (v13 == 1)
  {
    v20 = *(a6 + 8);
    v14 = a9;
    v15 = *a7;
    if (v15 != 1)
    {
LABEL_3:
      v16 = *a8;
      if (v16 != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v14 = a9;
    v15 = *a7;
    if (v15 != 1)
    {
      goto LABEL_3;
    }
  }

  v19 = *(a7 + 8);
  v16 = *a8;
  if (v16 != 1)
  {
LABEL_4:
    v17 = *v14;
    if (v17 != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  v9 = *(a8 + 1);
  v17 = *v14;
  if (v17 == 1)
  {
LABEL_5:
    v10 = *(v14 + 1);
  }

LABEL_6:
  *result = v11;
  *(result + 8) = *v21;
  *(result + 15) = *&v21[7];
  *(result + 23) = v12;
  v18 = a4[1];
  *(result + 24) = *a4;
  *(result + 32) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 40) = 1;
  *(result + 48) = a2;
  *(result + 56) = a5;
  *(result + 64) = 0;
  if (v13)
  {
    *(result + 72) = v20;
    *(result + 64) = 1;
    *(result + 88) = 0;
    if (!v15)
    {
LABEL_10:
      *(result + 112) = 0;
      if (!v16)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else
  {
    *(result + 88) = 0;
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  *(result + 96) = v19;
  *(result + 88) = 1;
  *(result + 112) = 0;
  if (!v16)
  {
LABEL_11:
    *(result + 128) = 0;
    if (!v17)
    {
      return result;
    }

LABEL_20:
    *(result + 136) = v10;
    *(result + 128) = 1;
    return result;
  }

LABEL_19:
  *(result + 120) = v9;
  *(result + 112) = 1;
  *(result + 128) = 0;
  if (v17)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10026FB18@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 64) == 1)
  {
    *(a2 + 8) = *(result + 80);
    *a2 = 1;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10026FB60@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 88) == 1)
  {
    *(a2 + 8) = *(result + 104);
    *a2 = 1;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10026FB98@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 64) == 1)
  {
    v2 = *(result + 80);
    if (*(result + 88))
    {
      if (v2 <= *(result + 104))
      {
        v2 = *(result + 104);
      }
    }

    *(a2 + 8) = v2;
    *a2 = 1;
  }

  else if (*(result + 88))
  {
    *(a2 + 8) = *(result + 104);
    *a2 = 1;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10026FBEC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  if (*(result + 128) == 1)
  {
    *(a2 + 8) = *(result + 136);
    *a2 = 1;
  }

  return result;
}

void sub_10026FC10()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10026FC80()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_10026FCF0(uint64_t result, int a2)
{
  *result = off_100445118;
  *(result + 8) = a2;
  return result;
}

void sub_10026FD14(int a1)
{
  switch(a1)
  {
    case 0:
      operator new();
    case 1:
    case 3:
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v3, "Localizer type not ported");
      std::runtime_error::runtime_error(&v9, &v3);
      v9.__vftable = &off_100444338;
      sub_10010A984(&v8);
    case 2:
    case 10:
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v3, "Localizer type deleted to simplify life.");
      std::runtime_error::runtime_error(&v9, &v3);
      v9.__vftable = &off_100444338;
      sub_10010A984(&v7);
    case 4:
    case 5:
    case 7:
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v3, "Localizer type not ported");
      std::runtime_error::runtime_error(&v9, &v3);
      v9.__vftable = &off_100444338;
      sub_10010A984(&v6);
    case 6:
      operator new();
    case 8:
      operator new();
    case 9:
      operator new();
    case 11:
    case 12:
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v3, "Localizer type not ported");
      std::runtime_error::runtime_error(&v9, &v3);
      v9.__vftable = &off_100444338;
      sub_10010A984(&v4);
    case 13:

      sub_1000B9E3C();
    case 14:
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v3, "make_shared<specs::MultiphonePdrNoMag>()");
      std::runtime_error::runtime_error(&v9, &v3);
      v9.__vftable = &off_100444338;
      sub_10010A984(&v5);
    case 15:

      sub_1000C010C();
    default:
      __cxa_allocate_exception(0x40uLL);
      std::logic_error::logic_error(&v9, "Unrecognized localizer type");
      sub_10010A984(&v2);
  }
}

void sub_1002703CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error((v29 - 48));
  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void sub_100270504(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v7 = *a2;
  *a2 = 0uLL;
  v10 = *a7;
  v11 = v7;
  *a7 = 0uLL;
  (*(*a1 + 72))(a1, &v11, a3, a4, a5, a6, &v10);
  v8 = *(&v10 + 1);
  if (*(&v10 + 1) && !atomic_fetch_add((*(&v10 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(&v11 + 1);
  if (*(&v11 + 1))
  {
    if (!atomic_fetch_add((*(&v11 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void sub_100270608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002BB1C(&a9);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_100270644(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100445180;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002707C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_10002BB1C(va);
  sub_10014C254(&a9);
  operator delete();
}

void *sub_1002708FC(void *a1)
{
  *a1 = off_100438CA0;
  v1 = a1[8];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  v3 = a1;
  sub_10014C254((a1 + 1));
  return v3;
}

void sub_100270994(void *a1)
{
  *a1 = off_100438CA0;
  v1 = a1[8];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  sub_10014C254((a1 + 1));

  operator delete();
}

void sub_100270A78(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100445298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100270B14(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004452E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100270E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002BB1C(&a9);
  sub_10002BB1C(va);
  operator delete();
}

void sub_100270ECC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004453B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10027139C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1002713E0(va);
  _Unwind_Resume(a1);
}

void sub_1002713B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1002713E0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002713E0(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void sub_10027148C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002714FC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10027156C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = off_10043D6F8;
  *(a4 + 8) = 0u;
  v31 = (a4 + 8);
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 64) &= 0xF8u;
  *(a4 + 56) = a3[7];
  v5 = a3[1];
  if (a3[2] != v5)
  {
    for (i = 0; i < (a3[2] - v5) >> 3; ++i)
    {
      v39 = 0;
      v40 = 0;
      v41 &= 0xFCu;
      v10 = *(v5 + 8 * i);
      v38 = off_10043DB08;
      v39 = v10;
      v40 = *(a3[4] + 8 * i);
      sub_10012D378(v33, &v38);
      sub_1000B90F4(a2, v33, v34);
      sub_10012DA9C(v42, v34);
      sub_1000B9228(a1 + 72, v42, v43);
      sub_1000B93B4(v43, v35);
      nullsub_76();
      nullsub_76();
      nullsub_75();
      v12 = *(a4 + 16);
      v11 = *(a4 + 24);
      if (v12 >= v11)
      {
        v14 = *v31;
        v15 = v12 - *v31;
        v16 = v15 >> 3;
        v17 = (v15 >> 3) + 1;
        if (v17 >> 61)
        {
          goto LABEL_31;
        }

        v18 = v11 - v14;
        if (v18 >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (!(v19 >> 61))
          {
            operator new();
          }

LABEL_32:
          sub_10000D444();
        }

        *(8 * v16) = v36;
        v13 = 8 * v16 + 8;
        memcpy(0, v14, v15);
        *(a4 + 8) = 0;
        *(a4 + 16) = v13;
        *(a4 + 24) = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v12 = v36;
        v13 = (v12 + 8);
      }

      *(a4 + 16) = v13;
      v21 = *(a4 + 40);
      v20 = *(a4 + 48);
      if (v21 < v20)
      {
        *v21 = v37;
        v9 = v21 + 8;
      }

      else
      {
        v22 = *(a4 + 32);
        v23 = v21 - v22;
        v24 = (v21 - v22) >> 3;
        v25 = v24 + 1;
        if ((v24 + 1) >> 61)
        {
LABEL_31:
          sub_10000FC84();
        }

        v26 = v20 - v22;
        if (v26 >> 2 > v25)
        {
          v25 = v26 >> 2;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          if (!(v27 >> 61))
          {
            operator new();
          }

          goto LABEL_32;
        }

        v28 = (v21 - v22) >> 3;
        v29 = (8 * v24);
        v30 = (8 * v24 - 8 * v28);
        *v29 = v37;
        v9 = v29 + 1;
        memcpy(v30, v22, v23);
        *(a4 + 32) = v30;
        *(a4 + 40) = v9;
        *(a4 + 48) = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      *(a4 + 40) = v9;
      nullsub_75();
      nullsub_75();
      v5 = a3[1];
    }
  }
}

void sub_100271878(_Unwind_Exception *a1)
{
  nullsub_75();
  nullsub_75();
  sub_100119E80(v1);
  _Unwind_Resume(a1);
}

double sub_1002718E8(uint64_t a1, uint64_t a2)
{
  sub_10012DA9C(&v15, a2);
  sub_1000B9228(a1 + 72, &v15, &v17);
  sub_1000B93B4(&v17, v14);
  nullsub_76();
  v17 = *&v14[8];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v4 == v3)
  {
LABEL_24:
    v18 = &off_10043FEC8;
    v15.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/throw_on_empty_input.hpp";
    v15.i64[1] = "void boost::geometry::detail::throw_on_empty_input(const Geometry &) [Geometry = boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>>]";
    v16 = 54;
    sub_10016B3C8(&v18, &v15);
  }

  v5 = *(a1 + 40);
  while (1)
  {
    if (*v5 != v5[1])
    {
      goto LABEL_10;
    }

    v6 = v5[3];
    v7 = v5[4];
    if (v6 != v7)
    {
      break;
    }

LABEL_3:
    v5 += 6;
    if (v5 == v3)
    {
      goto LABEL_24;
    }
  }

  while (*v6 == *(v6 + 1))
  {
    v6 += 3;
    if (v6 == v7)
    {
      goto LABEL_3;
    }
  }

  do
  {
LABEL_10:
    if ((sub_100272884(&v17, v4) & 0x80000000) == 0)
    {
      v8 = 0.0;
      goto LABEL_13;
    }

    v4 += 6;
  }

  while (v4 != *(a1 + 48));
  v8 = sub_100272638(&v17, (a1 + 40));
  v9 = 0.0;
  if (v8 > 0.0)
  {
    goto LABEL_21;
  }

LABEL_13:
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  if (v10 == v11)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8;
    do
    {
      if (sub_100272884(&v17, v10) >= 1)
      {
        v12 = *(v10 + 8);
        if (v12 != *v10)
        {
          if (((v12 - *v10) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_10000FC84();
        }

        v18 = &off_10043FEC8;
        v15.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/throw_on_empty_input.hpp";
        v15.i64[1] = "void boost::geometry::detail::throw_on_empty_input(const Geometry &) [Geometry = boost::geometry::model::linestring<boost::geometry::model::d2::point_xy<double>>]";
        v16 = 54;
        sub_10016B3C8(&v18, &v15);
      }

      v10 += 48;
    }

    while (v10 != v11);
  }

LABEL_21:
  nullsub_75();
  return v9;
}

void sub_100271EC8(_Unwind_Exception *a1)
{
  std::exception::~exception((v1 - 88));
  nullsub_75();
  _Unwind_Resume(a1);
}

BOOL sub_100271F80(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 1;
  }

  v3 = (a1 + 16);
  while (1)
  {
    v3 = *v3;
    result = v3 != 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_1001EDFC8(a2, v3 + 2);
    if (!v5 || !sub_1001182C8(v3 + 2, v5 + 2))
    {
      return 1;
    }
  }

  return result;
}

void sub_100271FF8(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    while (v4)
    {
      v5 = v4;
      v4 = *v4;
      v6 = v5[3];
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = v5;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        v5 = v7;
      }

      operator delete(v5);
    }

    *(a1 + 16) = 0;
    v8 = *(a1 + 8);
    if (v8)
    {
      bzero(*a1, 8 * v8);
    }

    *(a1 + 24) = 0;
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  if (v10 != v9)
  {
    do
    {
      v11 = *(v10 - 24);
      if (v11)
      {
        v12 = *(v10 - 16);
        v13 = *(v10 - 24);
        if (v12 != v11)
        {
          v14 = *(v10 - 16);
          do
          {
            v16 = *(v14 - 24);
            v14 -= 24;
            v15 = v16;
            if (v16)
            {
              *(v12 - 16) = v15;
              operator delete(v15);
            }

            v12 = v14;
          }

          while (v14 != v11);
          v13 = *(v10 - 24);
        }

        *(v10 - 16) = v11;
        operator delete(v13);
      }

      v17 = v10 - 48;
      v18 = *(v10 - 48);
      if (v18)
      {
        *(v10 - 40) = v18;
        operator delete(v18);
      }

      v10 -= 48;
    }

    while (v17 != v9);
  }

  *(a1 + 48) = v9;
  if (*a2 != a2[1])
  {
    sub_100273F34(a1, (*a2 + 8));
  }
}

void sub_100272514(_Unwind_Exception *a1)
{
  sub_1000B9C50(&STACK[0x7D0]);
  sub_10011B04C(&STACK[0x860]);
  _Unwind_Resume(a1);
}

void sub_100272544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10011B04C(va);
  sub_100273E68(&STACK[0x848]);
  _Unwind_Resume(a1);
}

void sub_100272594(_Unwind_Exception *a1)
{
  sub_1002725B0(&STACK[0x818]);
  sub_100273E68(&STACK[0x848]);
  _Unwind_Resume(a1);
}

uint64_t sub_1002725B0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      v5 = *(a1 + 32);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

double sub_100272638(double *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v36 = 0;
  *&v37 = v4;
  *(&v37 + 1) = v5;
  *&v38 = 0;
  BYTE8(v38) = 0;
  *v39 = 0;
  v39[8] = 0;
  memset(&v39[16], 0, 25);
  memset(&v39[48], 0, 25);
  sub_100273164(&v37);
  v40[4] = *&v39[32];
  v40[5] = *&v39[48];
  v40[6] = *&v39[64];
  v40[0] = v37;
  v40[1] = v38;
  v40[2] = *v39;
  v40[3] = *&v39[16];
  memset(&v42[7], 0, 25);
  *&v39[9] = *v42;
  v6 = a2[1];
  memset(&v41[7], 0, 25);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v31 = 0;
  v30 = 0;
  v32 = 0;
  v33 = 0;
  v35 = 0;
  v34 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v25 = 0;
  v24 = 0;
  *&v37 = v6;
  *(&v37 + 1) = v6;
  *&v38 = 0;
  BYTE8(v38) = 0;
  *v39 = 0;
  v39[8] = 0;
  *&v39[25] = 0u;
  *&v39[41] = *v41;
  *&v39[57] = 0u;
  sub_100272C34(a1, v40, &v37, &v22, v23, &v36);
  v7 = v24;
  if (v24 == v26)
  {
    v8 = v35;
    v7 = v34;
  }

  else
  {
    v8 = v25;
  }

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 + 2;
  }

  v10 = v7[1];
  v11 = v9[1];
  v12 = *a1;
  v13 = a1[1];
  v14 = *v9 - *v7;
  v15 = v11 - v10;
  v16 = *a1 - *v7;
  v17 = (v11 - v10) * (v13 - v10) + v16 * v14;
  if (v17 <= 0.0)
  {
    v20 = v16 * v16 + 0.0 + (v13 - v10) * (v13 - v10);
  }

  else
  {
    v18 = v15 * v15 + v14 * v14;
    if (v18 <= v17)
    {
      v20 = (v12 - *v9) * (v12 - *v9) + 0.0 + (v13 - v11) * (v13 - v11);
    }

    else
    {
      v19 = v12 - (*v7 + v14 * (v17 / v18));
      v20 = v19 * v19 + 0.0 + (v13 - (v10 + v15 * (v17 / v18))) * (v13 - (v10 + v15 * (v17 / v18)));
    }
  }

  return sqrt(v20);
}

uint64_t sub_100272884(double *a1, double **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if ((v3 - *a2) < 0x40)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v44) = 0;
  BYTE4(v44) = 0;
  if (v2 + 2 == v3)
  {
    return 0xFFFFFFFFLL;
  }

  do
  {
    if (!sub_10016C110(a1, v2, v2 + 2, &v44))
    {
      break;
    }

    v7 = v2 + 4;
    v2 += 2;
  }

  while (v7 != v3);
  if (LODWORD(v44))
  {
    result = 1;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  if (BYTE4(v44))
  {
    return 0;
  }

  if (!LODWORD(v44))
  {
    return 0xFFFFFFFFLL;
  }

  v10 = a2[3];
  v9 = a2[4];
  if (v10 == v9)
  {
    return 1;
  }

  v43 = result;
  while (1)
  {
    v11 = *(v10 + 1);
    v12 = (*v10 + 16);
    if (v11 - *v10 >= 0x40 && v12 != v11)
    {
      break;
    }

LABEL_13:
    v10 += 3;
    if (v10 == v9)
    {
      return result;
    }
  }

  v14 = 0;
  do
  {
    v17 = v12 - 2;
    v18 = *(v12 - 2);
    v6.n128_f64[0] = *a1;
    if (v18 == *a1)
    {
      v19 = 1;
      v20 = *v12;
      if (*v12 == v6.n128_f64[0])
      {
        goto LABEL_29;
      }
    }

    else if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v6.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v28 = fabs(v18);
      v29 = fabs(v6.n128_f64[0]);
      v30 = vabdd_f64(v18, v6.n128_f64[0]);
      if (v28 < v29)
      {
        v28 = v29;
      }

      if (v28 < 1.0)
      {
        v28 = 1.0;
      }

      v19 = v30 <= v28 * 2.22044605e-16;
      v20 = *v12;
      if (*v12 == v6.n128_f64[0])
      {
LABEL_29:
        v21 = 1;
        if (v19)
        {
          goto LABEL_30;
        }

LABEL_60:
        if (v19)
        {
LABEL_61:
          if (v20 <= v6.n128_f64[0])
          {
            v34 = -1;
          }

          else
          {
            v34 = 1;
          }

          if (!v19)
          {
            v17 = v12;
          }

          v35 = a1[1];
          v36 = v17[1];
          if (v35 == v36)
          {
            return 0;
          }

          goto LABEL_73;
        }

        if (v21)
        {
          if (v18 <= v6.n128_f64[0])
          {
            v34 = 1;
          }

          else
          {
            v34 = -1;
          }

          v35 = a1[1];
          v36 = v12[1];
          if (v35 == v36)
          {
            return 0;
          }

LABEL_73:
          if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v36 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v37 = fabs(v35);
            v38 = fabs(v36);
            v39 = vabdd_f64(v35, v36);
            if (v37 < v38)
            {
              v37 = v38;
            }

            if (v37 < 1.0)
            {
              v37 = 1.0;
            }

            if (v39 <= v37 * 2.22044605e-16)
            {
              return 0;
            }
          }

          if (v35 >= v36)
          {
            v15 = v34;
          }

          else
          {
            v15 = -v34;
          }

          goto LABEL_22;
        }

        goto LABEL_81;
      }
    }

    else
    {
      v19 = 0;
      v20 = *v12;
      if (*v12 == v6.n128_f64[0])
      {
        goto LABEL_29;
      }
    }

    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v6.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v31 = fabs(v20);
      v32 = fabs(v6.n128_f64[0]);
      v33 = vabdd_f64(v20, v6.n128_f64[0]);
      if (v31 < v32)
      {
        v31 = v32;
      }

      if (v31 < 1.0)
      {
        v31 = 1.0;
      }

      v21 = v33 <= v31 * 2.22044605e-16;
      if (v19 && v21)
      {
LABEL_30:
        v22 = a1[1];
        v23 = *(v12 - 1);
        v24 = v12[1];
        if (v23 <= v22 && v24 >= v22)
        {
          return 0;
        }

        if (v23 >= v22 && v24 <= v22)
        {
          return 0;
        }

        goto LABEL_26;
      }

      goto LABEL_60;
    }

    if (v19)
    {
      goto LABEL_61;
    }

LABEL_81:
    if (v18 < v6.n128_f64[0] && v20 > v6.n128_f64[0])
    {
      v34 = 2;
LABEL_92:
      v44 = 1.0;
      v6.n128_f64[0] = sub_10016C468(v12 - 2, v12, a1, &v44, v6);
      if (v6.n128_f64[0] == 0.0)
      {
        return 0;
      }

      if ((v6.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000)
      {
        v42 = fabs(v6.n128_f64[0]);
        if (v6.n128_f64[0] > 0.0)
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
        }

        if (v42 <= v44 * 2.22044605e-16)
        {
          return 0;
        }

        result = v43;
      }

      else
      {
        if (v6.n128_f64[0] > 0.0)
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
        }

        result = v43;
      }

LABEL_22:
      if (v34 * v15 <= 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = v34;
      }

      v14 += v16;
      goto LABEL_26;
    }

    if (v18 > v6.n128_f64[0] && v20 < v6.n128_f64[0])
    {
      v34 = -2;
      goto LABEL_92;
    }

LABEL_26:
    v12 += 2;
  }

  while (v12 != v11);
  if (!v14)
  {
    v9 = a2[4];
    goto LABEL_13;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100272C34(double *a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5, double *a6)
{
  *a5 = *a2;
  v11 = *(a2 + 1);
  *(a5 + 8) = v11;
  if (*a2 != v11)
  {
    v12 = a2[1];
    *(a5 + 25) = *(a2 + 25);
    *(a5 + 16) = v12;
    *(a5 + 48) = *(a2 + 6);
    v13 = *(a2 + 7);
    *(a5 + 56) = v13;
    if (*(a2 + 6) != v13)
    {
      v14 = *(a2 + 8);
      *(a5 + 72) = *(a2 + 72);
      *(a5 + 64) = v14;
    }

    *(a5 + 80) = *(a2 + 10);
    v15 = *(a2 + 11);
    *(a5 + 88) = v15;
    if (*(a2 + 10) != v15)
    {
      v16 = *(a2 + 12);
      *(a5 + 104) = *(a2 + 104);
      *(a5 + 96) = v16;
    }
  }

  v18 = (a5 + 16);
  v17 = *(a5 + 16);
  if (v17 == *(a5 + 32))
  {
    v19 = *(a5 + 104);
    v17 = *(a5 + 96);
  }

  else
  {
    v19 = *(a5 + 24);
  }

  if (v19)
  {
    v20 = v17;
  }

  else
  {
    v20 = v17 + 2;
  }

  v21 = v17[1];
  v22 = v20[1];
  v23 = *a1;
  v24 = a1[1];
  v25 = *v20 - *v17;
  v26 = v22 - v21;
  v27 = *a1 - *v17;
  v28 = (v22 - v21) * (v24 - v21) + v27 * v25;
  if (v28 <= 0.0)
  {
    v30 = v27 * v27 + 0.0 + (v24 - v21) * (v24 - v21);
  }

  else
  {
    v29 = v26 * v26 + v25 * v25;
    if (v29 <= v28)
    {
      v30 = (v23 - *v20) * (v23 - *v20) + 0.0 + (v24 - v22) * (v24 - v22);
    }

    else
    {
      v30 = (v23 - (*v17 + v25 * (v28 / v29))) * (v23 - (*v17 + v25 * (v28 / v29))) + 0.0 + (v24 - (v21 + v26 * (v28 / v29))) * (v24 - (v21 + v26 * (v28 / v29)));
    }
  }

  *a6 = v30;
  result = sub_10027303C(a2);
  v32 = a2[5];
  v60 = a2[4];
  v61 = v32;
  v62 = a2[6];
  v33 = a2[1];
  v57 = *a2;
  *v58 = v33;
  v34 = a2[3];
  *&v58[16] = a2[2];
  v59 = v34;
  while (1)
  {
    v35 = v57;
    if (v57 == *a3)
    {
      if (v57 == *(&v57 + 1))
      {
        return result;
      }

      v36 = *v58;
      if (*v58 == a3[2] && v61 == a3[10] && (v61 == *(&v61 + 1) || v62 == a3[12]))
      {
        return result;
      }
    }

    else
    {
      v36 = *v58;
    }

    if (v36 == *&v58[16])
    {
      v37 = BYTE8(v62);
      v36 = v62;
    }

    else
    {
      v37 = v58[8];
    }

    v38 = v37 ? v36 : v36 + 2;
    v39 = v36[1];
    v40 = v38[1];
    v41 = *a1;
    v42 = a1[1];
    v43 = *v38 - *v36;
    v44 = v40 - v39;
    v45 = *a1 - *v36;
    v46 = (v40 - v39) * (v42 - v39) + v45 * v43;
    if (v46 <= 0.0)
    {
      v48 = v45 * v45 + 0.0 + (v42 - v39) * (v42 - v39);
      if (v48 == 0.0)
      {
        break;
      }
    }

    else
    {
      v47 = v44 * v44 + v43 * v43;
      if (v47 <= v46)
      {
        v48 = (v41 - *v38) * (v41 - *v38) + 0.0 + (v42 - v40) * (v42 - v40);
        if (v48 == 0.0)
        {
          break;
        }
      }

      else
      {
        v48 = (v41 - (*v36 + v43 * (v46 / v47))) * (v41 - (*v36 + v43 * (v46 / v47))) + 0.0 + (v42 - (v39 + v44 * (v46 / v47))) * (v42 - (v39 + v44 * (v46 / v47)));
        if (v48 == 0.0)
        {
          break;
        }
      }
    }

    if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v49 = fabs(v48);
      v50 = v49 >= 1.0 ? v49 : 1.0;
      if (v49 <= v50 * 2.22044605e-16)
      {
        break;
      }
    }

    if (v48 < *a6)
    {
      *a6 = v48;
      v51 = *(&v57 + 1);
      *a5 = v35;
      *(a5 + 8) = v51;
      if (v51 != v35)
      {
        *v18 = *v58;
        *(a5 + 25) = *&v58[9];
        v52 = v59;
        *(a5 + 48) = v59;
        if (v52 != *(&v52 + 1))
        {
          *(a5 + 64) = v60;
          *(a5 + 72) = BYTE8(v60);
        }

        v53 = v61;
        *(a5 + 80) = v61;
        if (v53 != *(&v53 + 1))
        {
          *(a5 + 96) = v62;
          *(a5 + 104) = BYTE8(v62);
        }
      }
    }

    result = sub_10027303C(&v57);
  }

  *a6 = v48;
  v54 = *(&v57 + 1);
  *a5 = v35;
  *(a5 + 8) = v54;
  if (v54 != v35)
  {
    *v18 = *v58;
    *(a5 + 25) = *&v58[9];
    v55 = v59;
    *(a5 + 48) = v59;
    if (v55 != *(&v55 + 1))
    {
      *(a5 + 64) = v60;
      *(a5 + 72) = BYTE8(v60);
    }

    v56 = v61;
    *(a5 + 80) = v61;
    if (v56 != *(&v56 + 1))
    {
      *(a5 + 96) = v62;
      *(a5 + 104) = BYTE8(v62);
    }
  }

  return result;
}

uint64_t sub_10027303C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == *(result + 32))
  {
    v2 = *(result + 96) + 16;
    *(result + 96) = v2;
    v3 = *(result + 80);
    v4 = v3[1];
    v5 = -16;
    if ((v4 - *v3) < 0x11)
    {
      v5 = 0;
    }

    if (v2 == v4 + v5)
    {
      v15 = v3 + 3;
      *(result + 80) = v15;
      v16 = *(result + 88);
      if (v15 != v16)
      {
        while (1)
        {
          v17 = *v15;
          v18 = v15[1];
          v19 = v18 - *v15;
          v20 = v19 >= 0x11 ? -16 : 0;
          if (v17 != v18 + v20)
          {
            break;
          }

          v15 += 3;
          *(result + 80) = v15;
          if (v15 == v16)
          {
            goto LABEL_6;
          }
        }

        *(result + 96) = v17;
        *(result + 104) = v19 < 0x11;
      }
    }
  }

  else
  {
    v1 += 16;
    *(result + 16) = v1;
  }

LABEL_6:
  v6 = *(*result + 8);
  v8 = *(*result + 24);
  v7 = *(*result + 32);
  if (v8 != v7)
  {
    do
    {
      v9 = *v8;
      v10 = v8[1];
      v8 += 3;
      if ((v10 - v9) >= 0x11)
      {
        v11 = -16;
      }

      else
      {
        v11 = 0;
      }
    }

    while (v9 == v10 + v11 && v8 != v7);
  }

  v13 = -16;
  if ((v6 - **result) < 0x11)
  {
    v13 = 0;
  }

  v14 = v1 == v6 + v13 && *(result + 80) == v7;
  if (v14 && (v7 == *(result + 88) || !*(result + 96)))
  {
    *result += 48;
    return sub_100273164(result);
  }

  return result;
}

uint64_t sub_100273164(uint64_t result)
{
  v2 = *result;
  v1 = *(result + 8);
  if (*result == v1)
  {
    return result;
  }

  while (1)
  {
    v4 = *v2;
    v3 = v2[1];
    v6 = v2[3];
    v5 = v2[4];
    v7 = v6;
    if (v6 != v5)
    {
      break;
    }

    if ((v3 - v4) >= 0x11)
    {
      v22 = -16;
    }

    else
    {
      v22 = 0;
    }

    v23 = v3 + v22;
    v12 = v2[3];
    if (v4 != v23)
    {
      goto LABEL_39;
    }

LABEL_36:
    if (v12 != v5)
    {
      goto LABEL_39;
    }

    v2 += 6;
    *result = v2;
    if (v2 == v1)
    {
      return result;
    }
  }

  do
  {
    v8 = *v7;
    v9 = v7[1];
    v7 += 3;
    if ((v9 - v8) >= 0x11)
    {
      v10 = -16;
    }

    else
    {
      v10 = 0;
    }
  }

  while (v8 == v9 + v10 && v7 != v5);
  v12 = v2[3];
  while (1)
  {
    v13 = v12[1];
    v14 = (v13 - *v12) >= 0x11 ? -16 : 0;
    if (*v12 != v13 + v14)
    {
      break;
    }

    v12 += 3;
    if (v12 == v5)
    {
      v12 = v2[4];
      break;
    }
  }

  if ((v3 - v4) >= 0x11)
  {
    v15 = -16;
  }

  else
  {
    v15 = 0;
  }

  v16 = v3 + v15;
  v17 = v2[3];
  do
  {
    v18 = *v17;
    v19 = v17[1];
    v17 += 3;
    if ((v19 - v18) >= 0x11)
    {
      v20 = -16;
    }

    else
    {
      v20 = 0;
    }
  }

  while (v18 == v19 + v20 && v17 != v5);
  if (v4 == v16)
  {
    goto LABEL_36;
  }

LABEL_39:
  if (v6 == v5)
  {
    v29 = 0;
    v25 = 0;
    v30 = 0;
    v31 = 0;
    v24 = v6;
  }

  else
  {
    v24 = v2[3];
    while (1)
    {
      v25 = *v24;
      v26 = v24[1];
      v27 = v26 - *v24;
      v28 = v27 >= 0x11 ? -16 : 0;
      if (v25 != v26 + v28)
      {
        break;
      }

      v24 += 3;
      if (v24 == v5)
      {
        v25 = 0;
        v29 = 0;
        v24 = v5;
        goto LABEL_49;
      }
    }

    v29 = v27 < 0x11;
LABEL_49:
    while (1)
    {
      v31 = *v6;
      v32 = v6[1];
      v33 = v32 - *v6;
      v34 = v33 >= 0x11 ? -16 : 0;
      if (v31 != v32 + v34)
      {
        break;
      }

      v6 += 3;
      if (v6 == v5)
      {
        v30 = 0;
        v31 = 0;
        v6 = v5;
        goto LABEL_56;
      }
    }

    v30 = v33 < 0x11;
  }

LABEL_56:
  v35 = (v3 - v4) < 0x11;
  *(result + 16) = v4;
  *(result + 24) = v35;
  if ((v3 - v4) >= 0x11)
  {
    v36 = -16;
  }

  else
  {
    v36 = 0;
  }

  *(result + 32) = v3 + v36;
  *(result + 40) = v35;
  *(result + 48) = v24;
  *(result + 56) = v5;
  if (v24 != v5)
  {
    *(result + 64) = v25;
    *(result + 72) = v29;
  }

  *(result + 80) = v6;
  *(result + 88) = v5;
  if (v6 != v5)
  {
    *(result + 96) = v31;
    *(result + 104) = v30;
  }

  return result;
}

void sub_10027334C(uint64_t *a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 24);
          if (v12)
          {
            v13 = *(v10 - 16);
            v14 = *(v10 - 24);
            if (v13 != v12)
            {
              v15 = *(v10 - 16);
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
              v14 = *(v10 - 24);
            }

            *(v10 - 16) = v12;
            operator delete(v14);
          }

          v18 = v10 - 48;
          v19 = *(v10 - 48);
          if (v19)
          {
            *(v10 - 40) = v19;
            operator delete(v19);
          }

          v10 -= 48;
        }

        while (v18 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x555555555555555)
    {
      v23 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v24 = 2 * v23;
      if (2 * v23 <= a4)
      {
        v24 = a4;
      }

      if (v23 >= 0x2AAAAAAAAAAAAAALL)
      {
        v25 = 0x555555555555555;
      }

      else
      {
        v25 = v24;
      }

      if (v25 <= 0x555555555555555)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v20 = a1[1];
  v21 = v20 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v20 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          sub_100273AA0(v8, *v5, *(v5 + 1), (*(v5 + 1) - *v5) >> 4);
          sub_100273BFC((v8 + 24), *(v5 + 3), *(v5 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 4) - *(v5 + 3)) >> 3));
        }

        v5 += 48;
        v8 += 48;
      }

      while (v5 != a3);
      v20 = a1[1];
    }

    if (v20 != v8)
    {
      do
      {
        v27 = *(v20 - 24);
        if (v27)
        {
          v28 = *(v20 - 16);
          v29 = *(v20 - 24);
          if (v28 != v27)
          {
            v30 = *(v20 - 16);
            do
            {
              v32 = *(v30 - 24);
              v30 -= 24;
              v31 = v32;
              if (v32)
              {
                *(v28 - 16) = v31;
                operator delete(v31);
              }

              v28 = v30;
            }

            while (v30 != v27);
            v29 = *(v20 - 24);
          }

          *(v20 - 16) = v27;
          operator delete(v29);
        }

        v33 = v20 - 48;
        v34 = *(v20 - 48);
        if (v34)
        {
          *(v20 - 40) = v34;
          operator delete(v34);
        }

        v20 -= 48;
      }

      while (v33 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    v22 = &a2[v21];
    if (v20 != v8)
    {
      do
      {
        if (v5 != v8)
        {
          sub_100273AA0(v8, *v5, *(v5 + 1), (*(v5 + 1) - *v5) >> 4);
          sub_100273BFC((v8 + 24), *(v5 + 3), *(v5 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 4) - *(v5 + 3)) >> 3));
        }

        v5 += 48;
        v8 += 48;
        v21 -= 48;
      }

      while (v21);
      v20 = a1[1];
    }

    v35 = v20;
    v26 = v20;
    if (v22 != a3)
    {
      v26 = v20;
      do
      {
        sub_1002737CC(v26, v22);
        v22 += 48;
        v26 = (v35 + 48);
        v35 += 48;
      }

      while (v22 != a3);
    }

    a1[1] = v26;
  }
}

void sub_1002736DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10027370C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1002736F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10027370C(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_10027370C(uint64_t a1)
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
        v7 = *(v4 - 24);
        if (v7)
        {
          v8 = *(v4 - 16);
          v9 = *(v4 - 24);
          if (v8 != v7)
          {
            v10 = *(v4 - 16);
            do
            {
              v12 = *(v10 - 24);
              v10 -= 24;
              v11 = v12;
              if (v12)
              {
                *(v8 - 16) = v11;
                operator delete(v11);
              }

              v8 = v10;
            }

            while (v10 != v7);
            v9 = *(v4 - 24);
          }

          *(v4 - 16) = v7;
          operator delete(v9);
        }

        v13 = v4 - 48;
        v14 = *(v4 - 48);
        if (v14)
        {
          *(v4 - 40) = v14;
          operator delete(v14);
        }

        v4 -= 48;
      }

      while (v13 != v5);
    }
  }

  return a1;
}

void *sub_1002737CC(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v4 = a2[3];
  v3 = a2[4];
  if (v3 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_10000FC84();
  }

  return a1;
}

void sub_1002738EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 32) = v10;
  sub_100209B28(&a9);
  v12 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void *sub_100273924(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_10000FC84();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_100273A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_100273A30(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100273A30(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

char *sub_100273AA0(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 4)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_100273BFC(char ***a1, void *a2, void *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 3;
          v13 = v14;
          if (v14)
          {
            *(v10 - 2) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v15 - v8) >= a4)
  {
    if (a2 == a3)
    {
      if (v15 == v8)
      {
LABEL_37:
        a1[1] = v8;
        return;
      }
    }

    else
    {
      do
      {
        if (v5 != v8)
        {
          sub_100273AA0(v8, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 4);
        }

        v5 += 24;
        v8 += 3;
      }

      while (v5 != a3);
      v15 = a1[1];
      if (v15 == v8)
      {
        goto LABEL_37;
      }
    }

    v22 = v15;
    do
    {
      v24 = *(v22 - 3);
      v22 -= 3;
      v23 = v24;
      if (v24)
      {
        *(v15 - 2) = v23;
        operator delete(v23);
      }

      v15 = v22;
    }

    while (v22 != v8);
    goto LABEL_37;
  }

  if (v15 != v8)
  {
    v17 = v15 - v8;
    v18 = a2;
    do
    {
      if (v18 != v8)
      {
        sub_100273AA0(v8, *v18, *(v18 + 8), (*(v18 + 8) - *v18) >> 4);
      }

      v18 += 24;
      v8 += 3;
      v17 -= 24;
    }

    while (v17);
    v15 = a1[1];
  }

  a1[1] = sub_100273924(a1, (v5 + v16), a3, v15);
}

char **sub_100273E68(char **a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            v8 = *(v3 - 2);
            do
            {
              v10 = *(v8 - 24);
              v8 -= 24;
              v9 = v10;
              if (v10)
              {
                *(v6 - 16) = v9;
                operator delete(v9);
              }

              v6 = v8;
            }

            while (v8 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v11 = v3 - 48;
        v12 = *(v3 - 6);
        if (v12)
        {
          *(v3 - 5) = v12;
          operator delete(v12);
        }

        v3 -= 48;
      }

      while (v11 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_100274144(double **result@<X0>, int8x16_t ***a2@<X1>, uint64_t a4@<X8>, int64x2_t a5@<Q7>, float64x2_t q0_0@<Q0>, int64x2_t a6@<Q1>, int64x2_t a7@<Q2>, int8x16_t a8@<Q3>, float64x2_t a9@<Q4>, int8x16_t a10@<Q5>, int8x16_t a11@<Q6>)
{
  v15 = *result;
  v16 = result[1];
  if (*result == v16)
  {
    v18 = result[3];
    v19 = result[4];
    if (v18 == v19)
    {
      v17 = 1;
    }

    else
    {
      do
      {
        v20 = *v18;
        v21 = *(v18 + 1);
        v18 += 3;
        v22 = v20 == v21;
        v17 = v20 == v21;
        v22 = !v22 || v18 == v19;
      }

      while (!v22);
    }
  }

  else
  {
    v17 = 0;
  }

  for (i = *a2; ; i += 6)
  {
    if (i == a2[1])
    {
      if (v17)
      {
        v27 = 0.0;
        goto LABEL_123;
      }

      if (v15 != v16)
      {
        v33 = *v15;
        v32 = v15 + 2;
        a5.i64[0] = v33.i64[0];
        v79 = v33;
        v80 = v33;
        v12 = *&v33.i64[1];
        v26 = *&v33.i64[1];
        *&v13.f64[0] = v33.i64[0];
        while (1)
        {
          if (v32 == v16)
          {
            goto LABEL_109;
          }

          v34 = *v32;
          if (*v32 < *a5.i64)
          {
            v79.i64[0] = *v32;
            *a5.i64 = v34;
            if (v34 <= v13.f64[0])
            {
LABEL_42:
              v35 = v32[1];
              if (v35 < v12)
              {
                goto LABEL_47;
              }

              goto LABEL_43;
            }
          }

          else if (v34 <= v13.f64[0])
          {
            goto LABEL_42;
          }

          v80.f64[0] = v34;
          v13.f64[0] = v34;
          v35 = v32[1];
          if (v35 < v12)
          {
LABEL_47:
            *&v79.i64[1] = v35;
            v12 = v35;
            if (v35 <= v26)
            {
              goto LABEL_38;
            }

            goto LABEL_48;
          }

LABEL_43:
          if (v35 <= v26)
          {
            goto LABEL_38;
          }

LABEL_48:
          v80.f64[1] = v35;
          v26 = v35;
LABEL_38:
          v32 += 2;
        }
      }

      v48 = result[3];
      v49 = result[4];
      if (v48 == v49)
      {
        goto LABEL_107;
      }

      v50 = 0;
      while (1)
      {
        v58 = *v48;
        v59 = *(v48 + 1);
        if (*v48 != v59)
        {
          v61 = *v58;
          v60 = v58 + 1;
          v62 = v61;
          v63 = v61;
          if (v60 == v59)
          {
            v65 = v62;
            if (v50)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v64 = v62;
            v65 = v62;
            do
            {
              v66 = *v60++;
              v67 = vcgtq_f64(v64, v66);
              v68 = vcgtq_f64(v66, v62);
              v65 = vbslq_s8(v67, v66, v65);
              v64 = vbslq_s8(v67, v66, v64);
              v63 = vbslq_s8(v68, v66, v63);
              v62 = vbslq_s8(v68, v66, v62);
            }

            while (v60 != v59);
            if (v50)
            {
LABEL_69:
              v51 = vcgtq_f64(a5, v65);
              if (vmovn_s64(vcgtq_f64(v65, v13)).u8[0])
              {
                v52 = v65.f64[0];
              }

              else
              {
                v52 = v13.f64[0];
              }

              v53.f64[0] = v63.f64[0];
              v53.f64[1] = v65.f64[1];
              v13.f64[0] = v52;
              v54 = vbslq_s8(vcgtq_f64(v53, v13), v53, v13);
              v55 = vbslq_s8(v51, v65, a5);
              a5 = vbslq_s8(vcgtq_f64(v55, v63), v63, v55);
              v56.i64[0] = *&v54.f64[0];
              v56.i64[1] = *&v63.f64[1];
              if (vmovn_s64(vcgtq_f64(v63, v54)).i32[1])
              {
                v57 = -1;
              }

              else
              {
                v57 = 0;
              }

              v13 = vbslq_s8(vdupq_n_s64(v57), v56, v54);
              v50 = 1;
              goto LABEL_76;
            }
          }

          v50 = 1;
          a5 = v65;
          v13 = v63;
        }

LABEL_76:
        v48 += 3;
        if (v48 == v49)
        {
          if ((v50 & 1) == 0)
          {
LABEL_107:
            v13 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
            a5 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
          }

          v79 = a5;
          v80 = v13;
          v12 = *&a5.i64[1];
          v26 = v13.f64[1];
          goto LABEL_109;
        }
      }
    }

    if (*i != i[1])
    {
      goto LABEL_19;
    }

    v24 = i[3];
    v25 = i[4];
    if (v24 != v25)
    {
      break;
    }

LABEL_12:
    ;
  }

  while (v24->i64[0] == v24->i64[1])
  {
    v24 = (v24 + 24);
    if (v24 == v25)
    {
      goto LABEL_12;
    }
  }

LABEL_19:
  if (v17)
  {
    sub_100274740(a2, &v79, q0_0.f64[0], *a6.i64, a7, *a8.i64, a9.f64[0], a10, a11);
    v26 = v80.f64[1];
    v13.f64[0] = v80.f64[0];
    v12 = *&v79.i64[1];
    a5.i64[0] = v79.i64[0];
    goto LABEL_109;
  }

  if (v15 != v16)
  {
    v29 = *v15;
    v28 = v15 + 2;
    a5.i64[0] = v29.i64[0];
    v79 = v29;
    v80 = v29;
    v12 = *&v29.i64[1];
    if (v28 == v16)
    {
      v30 = v12;
      *&v13.f64[0] = a5.i64[0];
      goto LABEL_89;
    }

    *&v13.f64[0] = a5.i64[0];
    v30 = v12;
    while (2)
    {
      v31 = *v28;
      if (*v28 < *a5.i64)
      {
        v79.i64[0] = *v28;
        *a5.i64 = v31;
        if (v31 > v13.f64[0])
        {
          goto LABEL_33;
        }

LABEL_29:
        q0_0.f64[0] = v28[1];
        if (q0_0.f64[0] >= v12)
        {
          goto LABEL_30;
        }

LABEL_34:
        v79.i64[1] = *&q0_0.f64[0];
        v12 = q0_0.f64[0];
        if (q0_0.f64[0] > v30)
        {
LABEL_35:
          v80.f64[1] = q0_0.f64[0];
          v30 = q0_0.f64[0];
        }
      }

      else
      {
        if (v31 <= v13.f64[0])
        {
          goto LABEL_29;
        }

LABEL_33:
        v80.f64[0] = v31;
        v13.f64[0] = v31;
        q0_0.f64[0] = v28[1];
        if (q0_0.f64[0] < v12)
        {
          goto LABEL_34;
        }

LABEL_30:
        if (q0_0.f64[0] > v30)
        {
          goto LABEL_35;
        }
      }

      v28 += 2;
      if (v28 == v16)
      {
        goto LABEL_89;
      }

      continue;
    }
  }

  v36 = result[3];
  v37 = result[4];
  if (v36 == v37)
  {
    goto LABEL_87;
  }

  v38 = 0;
  while (2)
  {
    v43 = *v36;
    v44 = *(v36 + 1);
    if (*v36 != v44)
    {
      v46 = *v43;
      v45 = (v43 + 1);
      a7 = v46;
      q0_0 = v46;
      if (v45 == v44)
      {
        a6 = a7;
        if ((v38 & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        a8 = a7;
        a6 = a7;
        do
        {
          v47 = *v45++;
          a9.f64[0] = v47.f64[0];
          a10 = vcgtq_f64(a8, v47);
          a11 = vcgtq_f64(v47, a7);
          a6 = vbslq_s8(a10, v47, a6);
          a8 = vbslq_s8(a10, v47, a8);
          q0_0 = vbslq_s8(a11, v47, q0_0);
          a7 = vbslq_s8(a11, v47, a7);
        }

        while (v45 != v44);
        if ((v38 & 1) == 0)
        {
LABEL_66:
          v38 = 1;
          a5 = a6;
          v13 = q0_0;
          goto LABEL_58;
        }
      }

      v39 = vcgtq_f64(a5, a6);
      if (vmovn_s64(vcgtq_f64(a6, v13)).u8[0])
      {
        v40 = *a6.i64;
      }

      else
      {
        v40 = v13.f64[0];
      }

      a9.f64[0] = q0_0.f64[0];
      *&a9.f64[1] = a6.i64[1];
      v13.f64[0] = v40;
      a8 = vbslq_s8(vcgtq_f64(a9, v13), a9, v13);
      v41 = vbslq_s8(v39, a6, a5);
      a7 = vcgtq_f64(v41, q0_0);
      a5 = vbslq_s8(a7, q0_0, v41);
      a6.i64[0] = a8.i64[0];
      a6.i64[1] = *&q0_0.f64[1];
      if (vmovn_s64(vcgtq_f64(q0_0, *&a8)).i32[1])
      {
        v42 = -1;
      }

      else
      {
        v42 = 0;
      }

      q0_0 = vdupq_n_s64(v42);
      v13 = vbslq_s8(q0_0, a6, a8);
      v38 = 1;
    }

LABEL_58:
    v36 += 3;
    if (v36 != v37)
    {
      continue;
    }

    break;
  }

  if ((v38 & 1) == 0)
  {
LABEL_87:
    v13 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    a5 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  v79 = a5;
  v80 = v13;
  v12 = *&a5.i64[1];
  v30 = v13.f64[1];
LABEL_89:
  v77 = v13.f64[0];
  v78 = a5.i64[0];
  sub_100274740(a2, &v81, q0_0.f64[0], *a6.i64, a7, *a8.i64, a9.f64[0], a10, a11);
  a5.i64[0] = v78;
  if (v81 < *&v78)
  {
    *v79.i64 = v81;
    *a5.i64 = v81;
    v69 = v82;
    v13.f64[0] = v77;
    if (v81 > v77)
    {
      goto LABEL_99;
    }

LABEL_91:
    if (v69 >= v12)
    {
      goto LABEL_92;
    }

LABEL_100:
    *&v79.i64[1] = v69;
    v12 = v69;
    v70 = v83;
    if (v69 > v30)
    {
      goto LABEL_101;
    }

LABEL_93:
    if (v70 >= *a5.i64)
    {
      goto LABEL_94;
    }

LABEL_102:
    *v79.i64 = v70;
    *a5.i64 = v70;
    v26 = v84;
    if (v70 > v13.f64[0])
    {
      goto LABEL_103;
    }

LABEL_95:
    if (v26 >= v12)
    {
      goto LABEL_96;
    }

LABEL_104:
    *&v79.i64[1] = v26;
    v12 = v26;
    if (v26 <= v30)
    {
      goto LABEL_105;
    }

LABEL_97:
    v80.f64[1] = v26;
  }

  else
  {
    v69 = v82;
    v13.f64[0] = v77;
    if (v81 <= v77)
    {
      goto LABEL_91;
    }

LABEL_99:
    v80.f64[0] = v81;
    v13.f64[0] = v81;
    if (v69 < v12)
    {
      goto LABEL_100;
    }

LABEL_92:
    v70 = v83;
    if (v69 <= v30)
    {
      goto LABEL_93;
    }

LABEL_101:
    v80.f64[1] = v69;
    v30 = v69;
    if (v70 < *a5.i64)
    {
      goto LABEL_102;
    }

LABEL_94:
    v26 = v84;
    if (v70 <= v13.f64[0])
    {
      goto LABEL_95;
    }

LABEL_103:
    v80.f64[0] = v70;
    v13.f64[0] = v70;
    if (v26 < v12)
    {
      goto LABEL_104;
    }

LABEL_96:
    if (v26 > v30)
    {
      goto LABEL_97;
    }

LABEL_105:
    v26 = v30;
  }

LABEL_109:
  v71 = vabdd_f64(v26, v12);
  v72 = vabdd_f64(v13.f64[0], *a5.i64);
  if (v71 >= v72)
  {
    v72 = v71;
  }

  v27 = 1.0;
  if (v72 != 0.0)
  {
    v73 = v72 == INFINITY;
    if (v72 >= 1.0)
    {
      v74 = v72;
    }

    else
    {
      v74 = 1.0;
    }

    if (v72 > v74 * 2.22044605e-16)
    {
      v73 = 1;
    }

    if (v72 != INFINITY && v72 < 10000000.0 && v73)
    {
      v76 = 10000000.0 / v72 + 0.5;
      sub_100274990(v76);
      v27 = floor(v76);
      v12 = *&v79.i64[1];
      a5.i64[0] = v79.i64[0];
    }
  }

LABEL_123:
  *a4 = a5.i64[0];
  *(a4 + 8) = v12;
  *(a4 + 16) = vdupq_n_s64(0xFFFFFFFFFFB3B4C0);
  *(a4 + 32) = v27;
}

double sub_100274740(int8x16_t ***a1, uint64_t a2, double result, double a4, int8x16_t a5, double a6, double a7, int8x16_t i, int8x16_t a9)
{
  v9 = *a1;
  v10 = a1[1];
  if (*a1 == v10)
  {
    goto LABEL_47;
  }

  v11 = 0;
  v12 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v13 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  do
  {
    while (1)
    {
      v14 = *v9;
      v15 = v9[1];
      if (*v9 == v15)
      {
        break;
      }

      v44 = *v14;
      v43 = v14 + 1;
      a9 = vextq_s8(v44, v44, 8uLL);
      v40 = a9;
      v45 = a9;
      for (i = a9; v43 != v15; v45 = vbslq_s8(v49, v47, v45))
      {
        v46 = *v43++;
        v47 = vextq_s8(v46, v46, 8uLL);
        v48 = vcgtq_f64(a9, v47);
        v49 = vcgtq_f64(v47, v45);
        v40 = vbslq_s8(v48, v47, v40);
        a9 = vbslq_s8(v48, v47, a9);
        i = vbslq_s8(v49, v47, i);
      }

LABEL_29:
      a9.i64[0] = i.i64[1];
      if (v11)
      {
        v41 = vcgtq_f64(a5, v40);
        if (v40.f64[1] > result)
        {
          result = v40.f64[1];
        }

        if (v40.f64[0] > a4)
        {
          a4 = v40.f64[0];
        }

        if (*&i.i64[1] > result)
        {
          result = *&i.i64[1];
        }

        v42 = vbslq_s8(v41, v40, a5);
        a9 = vcgtq_f64(v42, i);
        a5 = vbslq_s8(a9, i, v42);
        if (*i.i64 > a4)
        {
          a4 = *i.i64;
        }

        v9 += 6;
        v11 = 1;
        if (v9 == v10)
        {
          goto LABEL_46;
        }
      }

      else
      {
        result = *&i.i64[1];
        a4 = *i.i64;
        a5 = v40;
        v9 += 6;
        v11 = 1;
        if (v9 == v10)
        {
          goto LABEL_46;
        }
      }
    }

    v16 = v9[3];
    v17 = v9[4];
    v18 = v16;
    if (v16 != v17)
    {
      while (v18->i64[0] == v18->i64[1])
      {
        v18 = (v18 + 24);
        if (v18 == v17)
        {
          goto LABEL_3;
        }
      }

      v19 = 0;
      while (1)
      {
        v27 = v16->i64[0];
        v28 = v16->i64[1];
        if (v16->i64[0] != v28)
        {
          v30 = *v27;
          v29 = v27 + 1;
          v31 = vextq_s8(v30, v30, 8uLL);
          v25 = v31;
          if (v29 == v28)
          {
            v33 = v31;
            if (v19)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v32 = v31;
            v33 = v31;
            do
            {
              v34 = *v29++;
              v35 = vextq_s8(v34, v34, 8uLL);
              v36 = vcgtq_f64(v32, v35);
              v37 = vcgtq_f64(v35, v31);
              v33 = vbslq_s8(v36, v35, v33);
              v32 = vbslq_s8(v36, v35, v32);
              v25 = vbslq_s8(v37, v35, v25);
              v31 = vbslq_s8(v37, v35, v31);
            }

            while (v29 != v28);
            if (v19)
            {
LABEL_10:
              v20 = vcgtq_f64(i, v33);
              v21 = *&v33.f64[1];
              if (v33.f64[1] <= *&a9.i64[1])
              {
                v21 = a9.i64[1];
              }

              v22 = vbslq_s8(v20, v33, i);
              v33.f64[1] = v25.f64[1];
              a9.i64[1] = v21;
              v23 = vbslq_s8(vcgtq_f64(v33, a9), v33, a9);
              i = vbslq_s8(vcgtq_f64(v22, v25), v25, v22);
              v24 = vmovn_s64(vcgtq_f64(v25, v23)).u8[0];
              v25.f64[1] = v23.f64[1];
              if (v24)
              {
                v26 = -1;
              }

              else
              {
                v26 = 0;
              }

              a9 = vbslq_s8(vdupq_n_s64(v26), v25, v23);
              v19 = 1;
              goto LABEL_16;
            }
          }

          v19 = 1;
          i = v33;
          a9 = v25;
        }

LABEL_16:
        v16 = (v16 + 24);
        if (v16 == v17)
        {
          if (v19)
          {
            v38 = -1;
          }

          else
          {
            v38 = 0;
          }

          v39 = vdupq_n_s64(v38);
          v40 = vbslq_s8(v39, i, v12);
          i = vbslq_s8(v39, a9, v13);
          goto LABEL_29;
        }
      }
    }

LABEL_3:
    v9 += 6;
  }

  while (v9 != v10);
  if (v11)
  {
LABEL_46:
    *a2 = a5.i64[1];
    *(a2 + 8) = a5.i64[0];
    *(a2 + 16) = result;
    *(a2 + 24) = a4;
    return result;
  }

LABEL_47:
  result = -1.79769313e308;
  *a2 = 0x7FEFFFFFFFFFFFFFLL;
  *(a2 + 8) = 0x7FEFFFFFFFFFFFFFLL;
  *(a2 + 16) = 0xFFEFFFFFFFFFFFFFLL;
  *(a2 + 24) = 0xFFEFFFFFFFFFFFFFLL;
  return result;
}

void sub_100274990(double a1)
{
  v1 = 2 * (a1 >= 9.22337204e18);
  if (a1 <= -9.22337204e18)
  {
    v1 = 1;
  }

  if (v1 == 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_1000D8810(exception);
  }

  if (v1 == 1)
  {
    v4 = __cxa_allocate_exception(8uLL);
    v4->__vftable = 0;
    v5 = sub_1000D87D8(v4);
  }
}

uint64_t sub_100274A30(double **a1, double ***a2, void *a3, uint64_t a4, _OWORD *a5, void *a6)
{
  v7 = a4;
  if (*a1 == a1[1])
  {
    v12 = a1[3];
    v13 = a1[4];
    if (v12 == v13)
    {
      v11 = 1;
    }

    else
    {
      do
      {
        v14 = *v12;
        v15 = *(v12 + 1);
        v12 += 3;
        v16 = v14 == v15;
        v11 = v14 == v15;
        v16 = !v16 || v12 == v13;
      }

      while (!v16);
    }
  }

  else
  {
    v11 = 0;
  }

  for (i = *a2; ; i += 6)
  {
    if (i == a2[1])
    {
      if (v11)
      {
        return v7;
      }

      goto LABEL_33;
    }

    if (*i != i[1])
    {
      goto LABEL_19;
    }

    v18 = i[3];
    v19 = i[4];
    if (v18 != v19)
    {
      break;
    }

LABEL_12:
    ;
  }

  while (*v18 == *(v18 + 1))
  {
    v18 += 3;
    if (v18 == v19)
    {
      goto LABEL_12;
    }
  }

LABEL_19:
  if (v11)
  {
LABEL_33:

    return sub_100275348(a1, a2, a4, a5);
  }

  v80 = 0u;
  v81 = 0u;
  __p = 0u;
  sub_100277FC4(0, a1, 1, a2, a5, a3, &__p, &v78);
  if (*(&v81 + 1))
  {
    if (a1[4] != a1[3])
    {
      sub_100280A3C(a1, a5, a3, &__p, &v78, 0, 0);
    }

    v21 = a2[1] - *a2;
    if (0xAAAAAAAAAAAAAAABLL * (v21 >> 4) > 1 || v21 == 48 && (*a2)[4] != (*a2)[3])
    {
      sub_100284288(a2, a5, a3, &__p, &v78, 1, 0);
    }
  }

  v77[0] = 0;
  v77[1] = 0;
  v75[1] = 0;
  v76 = v77;
  v74 = v75;
  v75[0] = 0;
  sub_100275500(&__p, &v76, a1, a2, a3);
  v72 = 0u;
  v73 = 0u;
  v71 = 0u;
  sub_100275D5C(a1, a2, a5, a3, &__p, &v71, &v74, &v76, a6);
  sub_100275F28(&v74, &__p, &v76);
  v70[0] = 0;
  v70[1] = 0;
  v69 = v70;
  v83[0] = 0;
  v83[1] = 0;
  v82 = v83;
  *&v84[0] = 0;
  *(&v84[0] + 1) = -1;
  *&v84[1] = -1;
  sub_1002A5C5C(a1, a2, v84, &v82);
  v22 = *a2;
  if (*a2 != a2[1])
  {
    v23 = 0;
    do
    {
      *&v84[0] = 1;
      *(&v84[0] + 1) = v23;
      *&v84[1] = -1;
      sub_1002A62FC(v22, a1, v84, &v82);
      ++v23;
      v22 += 6;
    }

    while (v22 != a2[1]);
  }

  sub_1002A5FF8(a1, a2, &v74, &v82, &v69, a5);
  sub_1002A6A9C(&v82, v83[0]);
  v24 = *(&v71 + 1);
  v25 = v72;
  v26 = (*(&v71 + 1) + 8 * (v73 / 0xAA));
  v67 = v7;
  v65 = a1;
  v66 = a2;
  if (v72 == *(&v71 + 1))
  {
    v27 = 0;
  }

  else
  {
    v27 = (*v26 + 24 * (v73 % 0xAA));
  }

  v29 = 0;
LABEL_39:
  if (v25 == v24)
  {
    if (!v27)
    {
      goto LABEL_85;
    }

LABEL_43:
    memset(v84 + 6, 255, 24);
    v30 = *v27;
    v31 = v27[1];
    v32 = v31 - *v27;
    v33 = 0.0;
    if (v32 < 0x40 || (v34 = v30 + 2, v30 + 2 == v31))
    {
LABEL_52:
      if (v30 != v31)
      {
        v68 = *v30;
      }

      v46 = v30 != v31;
      v47 = v70[0];
      if (!v70[0])
      {
LABEL_66:
        operator new();
      }

      while (1)
      {
        v49 = v47;
        v50 = v47[4];
        if (v50 != 2)
        {
          break;
        }

        v51 = v49[5];
        if (v29 == v51)
        {
          v48 = v49[6];
          if ((v48 & 0x8000000000000000) == 0)
          {
            goto LABEL_57;
          }

          if (v48 == -1)
          {
            v53 = v49 + 16;
            v52 = v49[16];
            *(v49 + 56) = v46;
            *(v49 + 4) = v68;
            *(v49 + 10) = v33;
            *(v49 + 44) = 0;
            *(v49 + 90) = v84[0];
            *(v49 + 13) = *(v84 + 14);
            v49[15] = 0xBFF0000000000000;
            if (v52)
            {
              v49[17] = v52;
              operator delete(v52);
              *v53 = 0;
              v49[17] = 0;
              v49[18] = 0;
            }

            *v53 = 0;
            v49[17] = 0;
            v49[18] = 0;
            v54 = v70[0];
            if (!v70[0])
            {
LABEL_81:
              operator new();
            }

            while (1)
            {
              v56 = v54;
              v57 = v54[4];
              if (v57 == 2)
              {
                v58 = v56[5];
                if (v29 == v58)
                {
                  v55 = v56[6];
                  if ((v55 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_72;
                  }

                  if (v55 == -1)
                  {
                    *(v56 + 88) = 0;
                    v27 += 3;
                    if ((v27 - *v26) == 4080)
                    {
                      v59 = v26[1];
                      ++v26;
                      v27 = v59;
                    }

                    ++v29;
                    v24 = *(&v71 + 1);
                    v25 = v72;
                    goto LABEL_39;
                  }
                }

                else if (v29 < v58)
                {
                  goto LABEL_72;
                }
              }

              else if (v57 > 2)
              {
LABEL_72:
                v54 = *v56;
                if (!*v56)
                {
                  goto LABEL_81;
                }

                continue;
              }

              v54 = v56[1];
              if (!v54)
              {
                goto LABEL_81;
              }
            }
          }

LABEL_65:
          v47 = v49[1];
          if (!v47)
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v29 >= v51)
          {
            goto LABEL_65;
          }

LABEL_57:
          v47 = *v49;
          if (!*v49)
          {
            goto LABEL_66;
          }
        }
      }

      if (v50 <= 2)
      {
        goto LABEL_65;
      }

      goto LABEL_57;
    }

    v35 = v32 - 32;
    if (v35 > 0x2F)
    {
      v38 = (v35 >> 4) + 1;
      v39 = 2 * (v38 & 0x1FFFFFFFFFFFFFFCLL);
      v34 = (v34 + v39 * 8);
      v37 = &v30[v39];
      v40 = v30 + 4;
      v36 = 0.0;
      v41 = v38 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v42 = v40 - 4;
        v86 = vld2q_f64(v42);
        v87 = vld2q_f64(v40);
        v43 = v40 - 2;
        v44 = v40 + 2;
        v88 = vld2q_f64(v43);
        v89 = vld2q_f64(v44);
        v86.val[0] = vmulq_f64(vaddq_f64(v86.val[0], v88.val[0]), vsubq_f64(v86.val[1], v88.val[1]));
        v86.val[1] = vmulq_f64(vaddq_f64(v87.val[0], v89.val[0]), vsubq_f64(v87.val[1], v89.val[1]));
        v36 = v36 + v86.val[0].f64[0] + v86.val[0].f64[1] + v86.val[1].f64[0] + v86.val[1].f64[1];
        v40 += 8;
        v41 -= 4;
      }

      while (v41);
      if (v38 == (v38 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v36 = 0.0;
      v37 = *v27;
    }

    do
    {
      v45 = *v34;
      v34 += 2;
      v36 = v36 + (*v37 + v45) * (v37[1] - v37[3]);
      v37 += 2;
    }

    while (v34 != v31);
LABEL_51:
    v33 = v36 * 0.5;
    goto LABEL_52;
  }

  if (v27 != (*(v24 + 8 * ((*(&v73 + 1) + v73) / 0xAAuLL)) + 24 * ((*(&v73 + 1) + v73) % 0xAAuLL)))
  {
    goto LABEL_43;
  }

LABEL_85:
  sub_100276D48(v65, v66, &v71, &v69, a5);
  v7 = sub_10027746C(&v69, v65, v66, &v71, v67, a5, 0);
  sub_1002A6A9C(&v69, v70[0]);
  sub_100277E30(&v71);
  sub_1000275F4(&v74, v75[0]);
  sub_1002AABB8(&v76, v77[0]);
  v60 = *(&__p + 1);
  v61 = v80;
  *(&v81 + 1) = 0;
  v62 = (v80 - *(&__p + 1)) >> 3;
  if (v62 >= 3)
  {
    do
    {
      operator delete(*v60);
      v61 = v80;
      v60 = (*(&__p + 1) + 8);
      *(&__p + 1) = v60;
      v62 = (v80 - v60) >> 3;
    }

    while (v62 > 2);
  }

  if (v62 == 1)
  {
    v63 = 8;
LABEL_91:
    *&v81 = v63;
  }

  else if (v62 == 2)
  {
    v63 = 16;
    goto LABEL_91;
  }

  if (v60 != v61)
  {
    do
    {
      v64 = *v60++;
      operator delete(v64);
    }

    while (v60 != v61);
    if (v80 != *(&__p + 1))
    {
      *&v80 = v80 + ((*(&__p + 1) - v80 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_1002752C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_1000275F4(&a28, a29);
  sub_1002AABB8(&a31, a32);
  sub_1002AAC1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100275348(double **a1, double ***a2, uint64_t a3, _OWORD *a4)
{
  v18[0] = 0;
  v18[1] = 0;
  v16[1] = 0;
  v17 = v18;
  v15 = v16;
  v16[0] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  *&v12 = 0;
  *(&v12 + 1) = -1;
  *&v13 = -1;
  sub_1002A5C5C(a1, a2, &v12, &v19);
  v8 = *a2;
  if (*a2 != a2[1])
  {
    v9 = 0;
    do
    {
      *&v12 = 1;
      *(&v12 + 1) = v9;
      *&v13 = -1;
      sub_1002A62FC(v8, a1, &v12, &v19);
      ++v9;
      v8 += 6;
    }

    while (v8 != a2[1]);
  }

  sub_1002A5FF8(a1, a2, &v17, &v19, &v15, a4);
  sub_1002A6A9C(&v19, v20[0]);
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  sub_100276D48(a1, a2, &v12, &v15, a4);
  v10 = sub_10027746C(&v15, a1, a2, &v12, a3, a4, 0);
  sub_100277E30(&v12);
  sub_1002A6A9C(&v15, v16[0]);
  sub_1000275F4(&v17, v18[0]);
  return v10;
}

void sub_1002754BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_100277E30(&a9);
  sub_1002A6A9C(&a16, a17);
  sub_1000275F4(&a19, a20);
  _Unwind_Resume(a1);
}

void sub_100275500(void *a1, uint64_t **a2, double **a3, double ***a4, uint64_t a5)
{
  sub_100287B0C(a1, a3, a4);
  sub_1002896FC(a1, a2, a5, v10);
  v11 = a2[2];
  v12 = a1[4];
  v13 = a1[1];
  v14 = a1[2];
  if (v11)
  {
    if (v14 != v13)
    {
      v15 = (v13 + 8 * (v12 >> 4));
      v16 = *v15;
      v17 = *v15 + 376 * (a1[4] & 0xFLL);
      v18 = *(v13 + (((a1[5] + v12) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(a1 + 10) + v12) & 0xF);
      while (v17 != v18)
      {
        *(v17 + 24) = -1;
        v17 += 376;
        if (v17 - v16 == 6016)
        {
          v19 = v15[1];
          ++v15;
          v16 = v19;
          v17 = v19;
        }
      }
    }

    v20 = (a2 + 1);
    v21 = *a2;
    if (*a2 != (a2 + 1))
    {
      v22 = *a2;
      do
      {
        v23 = v22[5];
        if (v23 != v22 + 6)
        {
          v24 = v22[4];
          do
          {
            *(*(v13 + (((v23[4] + v12) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(v23 + 8) + v12) & 0xF) + 24) = v24;
            v25 = v23[1];
            if (v25)
            {
              do
              {
                v26 = v25;
                v25 = *v25;
              }

              while (v25);
            }

            else
            {
              do
              {
                v26 = v23[2];
                v27 = *v26 == v23;
                v23 = v26;
              }

              while (!v27);
            }

            v23 = v26;
          }

          while (v26 != v22 + 6);
        }

        v28 = v22[1];
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = v22[2];
            v27 = *v29 == v22;
            v22 = v29;
          }

          while (!v27);
        }

        v22 = v29;
      }

      while (v29 != v20);
      v12 = a1[4];
      v13 = a1[1];
      do
      {
        v30 = v21[5];
        v31 = v21 + 6;
        if (v30 != v21 + 6)
        {
          v32 = v21[5];
          while (1)
          {
            v33 = *(v13 + (((v32[4] + v12) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(v32 + 8) + v12) & 0xF);
            if (*(v33 + 40) == 1 && *(v33 + 208) == 1)
            {
              break;
            }

            v34 = v32[1];
            if (v34)
            {
              do
              {
                v35 = v34;
                v34 = *v34;
              }

              while (v34);
            }

            else
            {
              do
              {
                v35 = v32[2];
                v27 = *v35 == v32;
                v32 = v35;
              }

              while (!v27);
            }

            v32 = v35;
            if (v35 == v31)
            {
              goto LABEL_46;
            }
          }

          do
          {
            *(*(v13 + (((v30[4] + v12) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(v30 + 8) + v12) & 0xF) + 33) = 1;
            v36 = v30[1];
            if (v36)
            {
              do
              {
                v37 = v36;
                v36 = *v36;
              }

              while (v36);
            }

            else
            {
              do
              {
                v37 = v30[2];
                v27 = *v37 == v30;
                v30 = v37;
              }

              while (!v27);
            }

            v30 = v37;
          }

          while (v37 != v31);
        }

LABEL_46:
        v38 = v21[1];
        if (v38)
        {
          do
          {
            v39 = v38;
            v38 = *v38;
          }

          while (v38);
        }

        else
        {
          do
          {
            v39 = v21[2];
            v27 = *v39 == v21;
            v21 = v39;
          }

          while (!v27);
        }

        v21 = v39;
      }

      while (v39 != v20);
    }
  }

  v40 = (v13 + 8 * (v12 >> 4));
  if (v14 == v13)
  {
    v41 = 0;
  }

  else
  {
    v41 = *v40 + 376 * (v12 & 0xF);
  }

  v42 = 0;
  v43 = (v13 + 8 * (v12 >> 4));
  v79 = v11;
LABEL_56:
  v44 = v41 - 6016;
  while (v14 != v13)
  {
    if (v41 == *(v13 + (((a1[5] + v12) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(a1 + 10) + v12) & 0xF))
    {
      v47 = *v40 + 376 * (v12 & 0xF);
      goto LABEL_82;
    }

LABEL_63:
    v45 = *(v41 + 40);
    if (v45 == 3)
    {
      if (*(v41 + 208) == 3)
      {
        goto LABEL_57;
      }
    }

    else if (v45 == 2)
    {
      if (*(v41 + 208) == 2)
      {
        goto LABEL_57;
      }
    }

    else if (!v45 && !*(v41 + 208))
    {
      goto LABEL_57;
    }

    if (*(v41 + 48) != *(v41 + 216) || *(v41 + 24) > 0)
    {
      if (v45 == 4 && (*(v41 + 32) & 1) == 0)
      {
        v42 |= *(v41 + 208) == 4;
      }

      goto LABEL_58;
    }

    if (v45 != 1 || *(v41 + 208) != 1)
    {
LABEL_57:
      *(v41 + 32) = 1;
      *(v41 + 24) = -1;
    }

LABEL_58:
    v41 += 376;
    v44 += 376;
    if (*v43 == v44)
    {
      v46 = v43[1];
      ++v43;
      v41 = v46;
      goto LABEL_56;
    }
  }

  if (v41)
  {
    goto LABEL_63;
  }

  v47 = 0;
LABEL_82:
  while (v14 != v13)
  {
    v48 = a1[5] + a1[4];
    if (v47 == *(v13 + ((v48 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * (v48 & 0xF))
    {
      goto LABEL_99;
    }

LABEL_86:
    if ((*(v47 + 32) & 1) == 0)
    {
      v49 = *(v47 + 48);
      if (v49 == *(v47 + 216))
      {
        if (v49)
        {
          if (sub_100272884(v47, a3) <= 0)
          {
            goto LABEL_91;
          }

LABEL_90:
          *(v47 + 32) = 1;
          goto LABEL_91;
        }

        v51 = *a4;
        if (*a4 != a4[1])
        {
          while (1)
          {
            v52 = sub_100272884(v47, v51);
            if ((v52 & 0x80000000) == 0)
            {
              break;
            }

            v51 += 6;
            if (v51 == a4[1])
            {
              goto LABEL_91;
            }
          }

          if (v52)
          {
            goto LABEL_90;
          }
        }
      }
    }

LABEL_91:
    v47 += 376;
    if (v47 - *v40 == 6016)
    {
      v50 = v40[1];
      ++v40;
      v47 = v50;
    }

    v13 = a1[1];
    v14 = a1[2];
  }

  if (v47)
  {
    goto LABEL_86;
  }

LABEL_99:
  v82[0] = 0;
  v82[1] = 0;
  v81 = v82;
  sub_100288264(a1, &v81);
  v53 = v81;
  if (v81 != v82)
  {
    do
    {
      v54 = v53[7];
      v55 = v53[8];
      v56 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v55 - v54) >> 3));
      v83[0] = a1;
      v83[1] = a3;
      v83[2] = a4;
      v83[3] = a5;
      v83[4] = &v80;
      if (v55 == v54)
      {
        v57 = 0;
      }

      else
      {
        v57 = v56;
      }

      sub_10028C408(v54, v55, v83, v57, 1);
      v58 = v53[1];
      if (v58)
      {
        do
        {
          v59 = v58;
          v58 = *v58;
        }

        while (v58);
      }

      else
      {
        do
        {
          v59 = v53[2];
          v27 = *v59 == v53;
          v53 = v59;
        }

        while (!v27);
      }

      v53 = v59;
    }

    while (v59 != v82);
  }

  if (v79)
  {
    sub_10028873C(a2, a1, 1, a3, a4);
    sub_100288C60(a1, a2);
  }

  v60 = v81;
  if (v81 != v82)
  {
    do
    {
      sub_100288EC8(v60 + 7, a1, 1);
      v66 = v60[1];
      if (v66)
      {
        do
        {
          v67 = v66;
          v66 = *v66;
        }

        while (v66);
      }

      else
      {
        do
        {
          v67 = v60[2];
          v27 = *v67 == v60;
          v60 = v67;
        }

        while (!v27);
      }

      v60 = v67;
    }

    while (v67 != v82);
  }

  if (v42)
  {
    v61 = a1[4];
    v62 = a1[1];
    v63 = a1[2];
    v64 = (v62 + 8 * (v61 >> 4));
    if (v63 == v62)
    {
      v65 = 0;
    }

    else
    {
      v65 = *v64 + 376 * (a1[4] & 0xFLL);
    }

    v68 = a1[5] + v61;
    v69 = v68 >> 4;
    v70 = v68 & 0xF;
    while (2)
    {
      v71 = v65 - 6016;
LABEL_128:
      if (v63 == v62)
      {
        if (!v65)
        {
          break;
        }
      }

      else if (v65 == *(v62 + 8 * v69) + 376 * v70)
      {
        break;
      }

      if (*(v65 + 112) == 0.0 && *(v65 + 280) == 0.0)
      {
        v72 = *(v65 + 136);
        if (v72 == -1)
        {
          v72 = *(v65 + 128);
          v73 = *(v65 + 304);
          if (v73 == -1)
          {
            goto LABEL_139;
          }

LABEL_136:
          if ((v72 & 0x8000000000000000) == 0)
          {
LABEL_140:
            if ((v73 & 0x8000000000000000) == 0 && v72 != v73)
            {
              v74 = (*(v62 + (((v72 + v61) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((v72 + v61) & 0xF));
              v75 = *v65;
              v76 = *(v65 + 8);
              *(v65 + 112) = (v76 - v74[1]) * (v76 - v74[1]) + (*v65 - *v74) * (*v65 - *v74);
              v77 = (*(v62 + (((v73 + v61) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((v73 + v61) & 0xF));
              *(v65 + 280) = (v76 - v77[1]) * (v76 - v77[1]) + (v75 - *v77) * (v75 - *v77);
            }
          }
        }

        else
        {
          v73 = *(v65 + 304);
          if (v73 != -1)
          {
            goto LABEL_136;
          }

LABEL_139:
          v73 = *(v65 + 296);
          if ((v72 & 0x8000000000000000) == 0)
          {
            goto LABEL_140;
          }
        }
      }

      v65 += 376;
      v71 += 376;
      if (*v64 == v71)
      {
        v78 = v64[1];
        ++v64;
        v65 = v78;
        continue;
      }

      goto LABEL_128;
    }
  }

  sub_1002927C8(&v81, v82[0]);
}

void sub_100275D5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, unint64_t *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v26[0] = a1;
  v26[1] = a2;
  v26[2] = a5;
  v26[3] = a8;
  v27 = v28;
  v28[0] = 0;
  v30[0] = 0;
  v30[1] = 0;
  v28[1] = 0;
  v29 = v30;
  v30[2] = a4;
  v30[3] = a9;
  sub_10029282C(v26);
  v17 = a5[1];
  if (a5[2] != v17)
  {
    v18 = a5[4];
    v19 = (v17 + 8 * (v18 >> 4));
    v20 = *v19;
    v21 = *v19 + 376 * (v18 & 0xF);
    v22 = *(v17 + (((a5[5] + v18) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(a5 + 10) + v18) & 0xF);
    while (v21 != v22)
    {
      *(v21 + 200) = 0;
      *(v21 + 204) = 0;
      *(v21 + 368) = 0;
      *(v21 + 372) = 0;
      v21 += 376;
      if (v21 - v20 == 6016)
      {
        v23 = v19[1];
        ++v19;
        v20 = v23;
        v21 = v23;
      }
    }
  }

  v31[0] = a1;
  v31[1] = a2;
  v31[2] = a5;
  v31[3] = a8;
  v31[4] = a4;
  v31[6] = a9;
  v31[7] = a1;
  v31[8] = a2;
  v31[9] = a5;
  v31[10] = a7;
  v31[11] = a8;
  v31[12] = a3;
  v31[13] = a4;
  v31[14] = a9;
  v25 = a6[5];
  v24 = 257;
  sub_100292E64(v31, a6, &v25, &v24);
  sub_1002941F4(&v29, v30[0]);
  sub_100294190(&v27, v28[0]);
}

void sub_100275F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002A5C20(va);
  _Unwind_Resume(a1);
}

void sub_100275F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002A5C20(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100275F28(uint64_t *result, void *a2, uint64_t a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = (v3 + 8 * (a2[4] >> 4));
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5 + 376 * (a2[4] & 0xFLL);
  }

  v7 = result + 1;
  v46 = (a3 + 8);
  while (v4 != v3)
  {
    v8 = a2[5] + a2[4];
    if (v6 == *(v3 + ((v8 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * (v8 & 0xF))
    {
      return result;
    }

LABEL_10:
    v45 = v5;
    if (*(v6 + 48) != *(v6 + 216) || (*(v6 + 32) & 1) == 0)
    {
      v48 = 0;
      v50 = 0;
      v9 = v6 + 40;
      v47 = (v6 + 40);
      v10 = 40;
      v49 = v6;
      do
      {
        v12 = *(v9 + 8);
        v11 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (*(v6 + 48) != *(v6 + 216) && *(v9 + 112))
        {
          v14 = *v7;
          if (!*v7)
          {
LABEL_33:
            operator new();
          }

          while (1)
          {
            v15 = v14;
            v16 = *(v14 + 32);
            if (v12 == v16)
            {
              v17 = *(v15 + 40);
              if (v11 == v17)
              {
                v18 = *(v15 + 48);
                if (v13 < v18)
                {
                  goto LABEL_21;
                }

                if (v18 >= v13)
                {
                  goto LABEL_134;
                }
              }

              else
              {
                if (v11 < v17)
                {
LABEL_21:
                  v14 = *v15;
                  if (!*v15)
                  {
                    goto LABEL_33;
                  }

                  continue;
                }

                if (v17 >= v11)
                {
                  goto LABEL_134;
                }
              }
            }

            else
            {
              if (v12 < v16)
              {
                goto LABEL_21;
              }

              if (v16 >= v12)
              {
                goto LABEL_134;
              }
            }

            v14 = *(v15 + 8);
            if (!v14)
            {
              goto LABEL_33;
            }
          }
        }

        if (*v47 != 3 && *(v6 + 208) != 3)
        {
          v23 = *v7;
          if (*v7)
          {
            goto LABEL_56;
          }

LABEL_67:
          operator new();
        }

        v19 = *v7;
        if (!*v7)
        {
LABEL_50:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            result = v19;
            v20 = v19[4];
            if (v12 != v20)
            {
              if (v12 >= v20)
              {
                if (v20 >= v12)
                {
                  goto LABEL_53;
                }

                goto LABEL_49;
              }

              goto LABEL_38;
            }

            v21 = result[5];
            if (v11 != v21)
            {
              break;
            }

            v22 = result[6];
            if (v13 >= v22)
            {
              if (v22 >= v13)
              {
                goto LABEL_53;
              }

              goto LABEL_49;
            }

LABEL_38:
            v19 = *result;
            if (!*result)
            {
              goto LABEL_50;
            }
          }

          if (v11 < v21)
          {
            goto LABEL_38;
          }

          if (v21 >= v11)
          {
            break;
          }

LABEL_49:
          v19 = result[1];
          if (!v19)
          {
            goto LABEL_50;
          }
        }

LABEL_53:
        *(result + 57) = 1;
        v23 = *v7;
        if (!*v7)
        {
          goto LABEL_67;
        }

LABEL_56:
        while (2)
        {
          while (2)
          {
            v24 = v23;
            v25 = *(v23 + 32);
            if (v12 != v25)
            {
              if (v12 < v25)
              {
                goto LABEL_55;
              }

              if (v25 >= v12)
              {
                goto LABEL_68;
              }

              goto LABEL_66;
            }

            v26 = *(v24 + 40);
            if (v11 == v26)
            {
              v27 = *(v24 + 48);
              if (v13 < v27)
              {
                goto LABEL_55;
              }

              if (v27 >= v13)
              {
                goto LABEL_68;
              }

LABEL_66:
              v23 = *(v24 + 8);
              if (!v23)
              {
                goto LABEL_67;
              }

              continue;
            }

            break;
          }

          if (v11 < v26)
          {
LABEL_55:
            v23 = *v24;
            if (!*v24)
            {
              goto LABEL_67;
            }

            continue;
          }

          break;
        }

        if (v26 < v11)
        {
          goto LABEL_66;
        }

LABEL_68:
        if (*(v24 + 56))
        {
          v6 = v49;
          goto LABEL_16;
        }

        v28 = *v7;
        if (!*v7)
        {
LABEL_84:
          operator new();
        }

        while (2)
        {
          while (2)
          {
            v29 = v28;
            v30 = *(v28 + 32);
            if (v12 != v30)
            {
              if (v12 < v30)
              {
                goto LABEL_72;
              }

              if (v30 >= v12)
              {
                goto LABEL_85;
              }

              goto LABEL_83;
            }

            v31 = *(v29 + 40);
            if (v11 == v31)
            {
              v32 = *(v29 + 48);
              if (v13 < v32)
              {
                goto LABEL_72;
              }

              if (v32 >= v13)
              {
                goto LABEL_85;
              }

LABEL_83:
              v28 = *(v29 + 8);
              if (!v28)
              {
                goto LABEL_84;
              }

              continue;
            }

            break;
          }

          if (v11 < v31)
          {
LABEL_72:
            v28 = *v29;
            if (!*v29)
            {
              goto LABEL_84;
            }

            continue;
          }

          break;
        }

        if (v31 < v11)
        {
          goto LABEL_83;
        }

LABEL_85:
        v6 = v49;
        if (*(v29 + 57))
        {
          goto LABEL_16;
        }

        if (v48)
        {
LABEL_87:
          v48 = 1;
          if (v50)
          {
LABEL_88:
            v50 = 1;
            v33 = *v7;
            if (*v7)
            {
              goto LABEL_122;
            }

            goto LABEL_133;
          }

LABEL_112:
          if (*v9 == 2)
          {
            goto LABEL_113;
          }

LABEL_15:
          v50 = 0;
          goto LABEL_16;
        }

        v34 = *(v49 + 24);
        if (v34 < 1)
        {
          v48 = 0;
          if (v50)
          {
            goto LABEL_88;
          }

          goto LABEL_112;
        }

        v35 = (a3 + 8);
        v36 = *v46;
        if (*v46)
        {
          do
          {
            if (v36[4] >= v34)
            {
              v35 = v36;
            }

            v36 = v36[v36[4] < v34];
          }

          while (v36);
          if (v35 != v46 && v35[4] <= v34)
          {
            v37 = v35[5];
            if (v37 != v35 + 6)
            {
              v50 = 0;
              do
              {
                v38 = *(a2[1] + (((v37[4] + a2[4]) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(v37 + 8) + a2[4]) & 0xF);
                if (*(v38 + 40) == 3 || *(v38 + 208) == 3)
                {
                  v50 = 1;
                }

                v39 = v37[1];
                if (v39)
                {
                  do
                  {
                    v40 = v39;
                    v39 = *v39;
                  }

                  while (v39);
                }

                else
                {
                  do
                  {
                    v40 = v37[2];
                    v41 = *v40 == v37;
                    v37 = v40;
                  }

                  while (!v41);
                }

                v37 = v40;
              }

              while (v40 != v35 + 6);
              goto LABEL_87;
            }
          }
        }

        v48 = 1;
        if (*v9 != 2)
        {
          goto LABEL_15;
        }

LABEL_113:
        if (*(v49 + 33))
        {
          goto LABEL_15;
        }

        if (*v47 == 2 && *(v49 + 208) == 2)
        {
          v50 = 0;
          if (*(v49 + 48) == *(v49 + 216))
          {
            goto LABEL_16;
          }

          v33 = *v7;
          if (*v7)
          {
            goto LABEL_122;
          }

LABEL_133:
          operator new();
        }

        v50 = 0;
        v33 = *v7;
        if (!*v7)
        {
          goto LABEL_133;
        }

LABEL_122:
        while (2)
        {
          while (2)
          {
            v15 = v33;
            v42 = *(v33 + 32);
            if (v12 != v42)
            {
              if (v12 < v42)
              {
                goto LABEL_121;
              }

              if (v42 >= v12)
              {
                goto LABEL_135;
              }

              goto LABEL_132;
            }

            v43 = *(v15 + 40);
            if (v11 == v43)
            {
              v44 = *(v15 + 48);
              if (v13 < v44)
              {
                goto LABEL_121;
              }

              if (v44 >= v13)
              {
                goto LABEL_135;
              }

LABEL_132:
              v33 = *(v15 + 8);
              if (!v33)
              {
                goto LABEL_133;
              }

              continue;
            }

            break;
          }

          if (v11 < v43)
          {
LABEL_121:
            v33 = *v15;
            if (!*v15)
            {
              goto LABEL_133;
            }

            continue;
          }

          break;
        }

        if (v43 < v11)
        {
          goto LABEL_132;
        }

LABEL_135:
        v6 = v49;
LABEL_134:
        *(v15 + 57) = 1;
LABEL_16:
        v10 += 168;
        v9 = v6 + v10;
      }

      while (v10 != 376);
    }

    v6 += 376;
    v5 = v45;
    if (v6 - *v45 == 6016)
    {
      v5 = v45 + 1;
      v6 = v45[1];
    }

    v3 = a2[1];
    v4 = a2[2];
  }

  if (v6)
  {
    goto LABEL_10;
  }

  return result;
}

void sub_100276D48(float64_t **a1, void *a2, void *a3, uint64_t **a4, _OWORD *a5)
{
  v9 = a4[2];
  __p = 0;
  v83 = 0;
  v84 = 0;
  if (v9)
  {
    if (v9 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v10 = 0;
  v12 = (a4 + 1);
  v11 = *a4;
  if (*a4 == (a4 + 1))
  {
    v64 = 1;
    goto LABEL_75;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v17 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  __asm { FMOV            V2.2D, #1.0 }

  v23 = vdupq_n_s64(0x3CB0000000000000uLL);
  do
  {
    v24 = *(v11 + 10);
    v25 = -v24;
    if (!*(v11 + 88))
    {
      v25 = *(v11 + 10);
    }

    v26 = v10 + 72 * v15;
    v27 = *(v11 + 2);
    *(v26 + 2) = v11[6];
    *v26 = v27;
    *(v26 + 3) = v25;
    *(v26 + 4) = fabs(v24);
    v28 = v78;
    *(v26 + 56) = v79;
    *(v26 + 40) = v28;
    v10 = __p;
    v29 = __p + 72 * v15;
    v30 = v11[4];
    if (v30)
    {
      if (v30 != 1)
      {
        if (v30 != 2)
        {
          v41 = *(v29 + 56);
          v40 = *(v29 + 40);
          goto LABEL_64;
        }

        v31 = a3[4];
        v32 = a3[1];
        v33 = (v32 + 8 * (v31 / 0xAA));
        if (a3[2] == v32)
        {
          v34 = 0;
          v35 = v11[5];
          if (!v35)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v34 = (*v33 + 24 * (v31 % 0xAA));
          v35 = v11[5];
          if (!v35)
          {
            goto LABEL_50;
          }
        }

        v54 = v35 - 0x5555555555555555 * ((v34 - *v33) >> 3);
        if (v54 < 1)
        {
          v34 = (v33[-((169 - v54) / 0xAAuLL)] + 24 * (170 * ((169 - v54) / 0xAAuLL) - (169 - v54)) + 4056);
        }

        else
        {
          v34 = (v33[v54 / 0xAAuLL] + 24 * (v54 % 0xAAuLL));
        }

LABEL_50:
        v40 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v56 = *v34;
        v55 = v34[1];
        *(v29 + 40) = v40;
        v41 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
        *(v29 + 56) = v41;
        if (v56 == v55)
        {
          goto LABEL_64;
        }

        v40.f64[0] = *v56;
        *(v29 + 5) = *v56;
        v42 = v56[1];
        *(v29 + 6) = v42;
        v41.f64[0] = *v56;
        *(v29 + 7) = *v56;
        v43 = v56[1];
        *(v29 + 8) = v43;
        v57 = v56 + 2;
        if (v56 + 2 == v55)
        {
          goto LABEL_52;
        }

        while (1)
        {
          v58 = *v57;
          if (*v57 >= v40.f64[0])
          {
            if (v58 <= v41.f64[0])
            {
LABEL_56:
              v59 = v57[1];
              if (v59 < v42)
              {
                goto LABEL_57;
              }

              goto LABEL_61;
            }
          }

          else
          {
            *(v29 + 5) = v58;
            v40.f64[0] = v58;
            if (v58 <= v41.f64[0])
            {
              goto LABEL_56;
            }
          }

          *(v29 + 7) = v58;
          v41.f64[0] = v58;
          v59 = v57[1];
          if (v59 < v42)
          {
LABEL_57:
            *(v29 + 6) = v59;
            v42 = v59;
            if (v59 > v43)
            {
              goto LABEL_62;
            }

            goto LABEL_53;
          }

LABEL_61:
          if (v59 > v43)
          {
LABEL_62:
            *(v29 + 8) = v59;
            v43 = v59;
          }

LABEL_53:
          v57 += 2;
          if (v57 == v55)
          {
            goto LABEL_63;
          }
        }
      }

      v36 = v11[6];
      v37 = (*a2 + 48 * v11[5]);
      if ((v36 & 0x8000000000000000) == 0)
      {
        v37 = &v37[3][3 * v36];
      }

      v39 = *v37;
      v38 = v37[1];
      *(v29 + 40) = v16;
      *(v29 + 56) = v17;
      v40 = v16;
      v41 = v17;
      if (v39 != v38)
      {
        v40.f64[0] = *v39;
        *(v29 + 5) = *v39;
        v42 = v39[1];
        *(v29 + 6) = v42;
        v41.f64[0] = *v39;
        *(v29 + 7) = *v39;
        v43 = v39[1];
        *(v29 + 8) = v43;
        v44 = v39 + 2;
        if (v44 == v38)
        {
LABEL_52:
          v40.f64[1] = v42;
          v41.f64[1] = v43;
          goto LABEL_64;
        }

        while (2)
        {
          v45 = *v44;
          if (*v44 >= v40.f64[0])
          {
            if (v45 > v41.f64[0])
            {
              goto LABEL_27;
            }

LABEL_23:
            v46 = v44[1];
            if (v46 < v42)
            {
              goto LABEL_24;
            }

LABEL_28:
            if (v46 > v43)
            {
LABEL_29:
              *(v29 + 8) = v46;
              v43 = v46;
            }
          }

          else
          {
            *(v29 + 5) = v45;
            v40.f64[0] = v45;
            if (v45 <= v41.f64[0])
            {
              goto LABEL_23;
            }

LABEL_27:
            *(v29 + 7) = v45;
            v41.f64[0] = v45;
            v46 = v44[1];
            if (v46 >= v42)
            {
              goto LABEL_28;
            }

LABEL_24:
            *(v29 + 6) = v46;
            v42 = v46;
            if (v46 > v43)
            {
              goto LABEL_29;
            }
          }

          v44 += 2;
          if (v44 == v38)
          {
            goto LABEL_63;
          }

          continue;
        }
      }
    }

    else
    {
      v47 = v11[6];
      v48 = a1;
      if ((v47 & 0x8000000000000000) == 0)
      {
        v48 = &a1[3][3 * v47];
      }

      v50 = *v48;
      v49 = *(v48 + 1);
      *(v29 + 40) = v16;
      *(v29 + 56) = v17;
      v40 = v16;
      v41 = v17;
      if (v50 != v49)
      {
        v40.f64[0] = *v50;
        *(v29 + 5) = *v50;
        v42 = v50[1];
        *(v29 + 6) = v42;
        v41.f64[0] = *v50;
        *(v29 + 7) = *v50;
        v43 = v50[1];
        *(v29 + 8) = v43;
        v51 = v50 + 2;
        if (v51 == v49)
        {
          goto LABEL_52;
        }

        while (2)
        {
          v52 = *v51;
          if (*v51 >= v40.f64[0])
          {
            if (v52 > v41.f64[0])
            {
              goto LABEL_42;
            }

LABEL_38:
            v53 = v51[1];
            if (v53 < v42)
            {
              goto LABEL_39;
            }

LABEL_43:
            if (v53 > v43)
            {
LABEL_44:
              *(v29 + 8) = v53;
              v43 = v53;
            }
          }

          else
          {
            *(v29 + 5) = v52;
            v40.f64[0] = v52;
            if (v52 <= v41.f64[0])
            {
              goto LABEL_38;
            }

LABEL_42:
            *(v29 + 7) = v52;
            v41.f64[0] = v52;
            v53 = v51[1];
            if (v53 >= v42)
            {
              goto LABEL_43;
            }

LABEL_39:
            *(v29 + 6) = v53;
            v42 = v53;
            if (v53 > v43)
            {
              goto LABEL_44;
            }
          }

          v51 += 2;
          if (v51 == v49)
          {
LABEL_63:
            v41.f64[1] = v43;
            v40.f64[1] = v42;
            break;
          }

          continue;
        }
      }
    }

LABEL_64:
    v60 = vabsq_f64(v40);
    v61 = vabsq_f64(v41);
    *(v29 + 40) = vsubq_f64(v40, vmulq_f64(vbslq_s8(vcgtq_f64(_Q2, v60), _Q2, v60), v23));
    *(v29 + 56) = vaddq_f64(v41, vmulq_f64(vbslq_s8(vcgtq_f64(_Q2, v61), _Q2, v61), v23));
    if (*(v29 + 3) > 0.0)
    {
      v14 = v15;
      ++v13;
    }

    v62 = v11[1];
    if (v62)
    {
      do
      {
        v63 = v62;
        v62 = *v62;
      }

      while (v62);
    }

    else
    {
      do
      {
        v63 = v11[2];
        _ZF = *v63 == v11;
        v11 = v63;
      }

      while (!_ZF);
    }

    ++v15;
    v11 = v63;
  }

  while (v63 != v12);
  if (!v13)
  {
    goto LABEL_73;
  }

  if (v13 == 1)
  {
    v71 = v10 + 72 * v14;
    v72 = *v71;
    *&v79 = *(v71 + 2);
    v78 = v72;
    v85 = &v78;
    v73 = sub_1002A6E6C(a4, &v78, &unk_1003DB4B0, &v85);
    v74 = v83;
    if (v10 != v83)
    {
      v75 = v73;
      do
      {
        if (v14)
        {
          v85 = v10;
          v76 = sub_1002A6E6C(a4, v10, &unk_1003DB4B0, &v85);
          *(v76 + 6) = v78;
          v76[14] = v79;
          sub_1002A6FD8((v75 + 16), v10);
          v74 = v83;
        }

        v10 = (v10 + 72);
        --v14;
      }

      while (v10 != v74);
    }

LABEL_73:
    v64 = 1;
    v65 = __p;
    if (__p)
    {
LABEL_74:
      v83 = v65;
      operator delete(v65);
    }
  }

  else
  {
    *&v78 = a1;
    *(&v78 + 1) = a2;
    *&v79 = a3;
    *(&v79 + 1) = a4;
    v80 = a5;
    v81 = 0;
    v85 = a5;
    v77 = a5;
    sub_1002A7124(&__p, &v78, &v85, &v77, 0x10uLL);
    v64 = 0;
    v65 = __p;
    if (__p)
    {
      goto LABEL_74;
    }
  }

LABEL_75:
  v66 = *a4;
  if (*a4 == v12)
  {
    v67 = 1;
  }

  else
  {
    v67 = v64;
  }

  if ((v67 & 1) == 0)
  {
    do
    {
      if ((v66[12] & 0x8000000000000000) == 0)
      {
        *&v78 = v66 + 12;
        v68 = sub_1002A6E6C(a4, v66 + 12, &unk_1003DB4B0, &v78);
        sub_1002A6FD8((v68 + 16), v66 + 2);
      }

      v69 = v66[1];
      if (v69)
      {
        do
        {
          v70 = v69;
          v69 = *v69;
        }

        while (v69);
      }

      else
      {
        do
        {
          v70 = v66[2];
          _ZF = *v70 == v66;
          v66 = v70;
        }

        while (!_ZF);
      }

      v66 = v70;
    }

    while (v70 != v12);
  }
}

void sub_100277448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10027746C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = a1 + 1;
  v9 = *a1;
  if (*a1 != a1 + 1)
  {
    while ((*(v9 + 89) & 1) != 0 || v9[12] != -1)
    {
LABEL_133:
      v110 = v9[1];
      if (v110)
      {
        do
        {
          v111 = v110;
          v110 = *v110;
        }

        while (v110);
      }

      else
      {
        do
        {
          v111 = v9[2];
          v30 = *v111 == v9;
          v9 = v111;
        }

        while (!v30);
      }

      v9 = v111;
      if (v111 == v8)
      {
        return a5;
      }
    }

    *__p = 0u;
    v125 = 0u;
    *v123 = 0u;
    v11 = v9[4];
    v12 = v9[5];
    v13 = *(v9 + 88);
    if (v11 != 2)
    {
      v14 = v9[6];
      if (v11 == 1)
      {
        v15 = *a3 + 48 * v12;
        if ((v14 & 0x8000000000000000) == 0)
        {
          v15 = *(v15 + 24) + 24 * v14;
          if (v123 == v15)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

      else
      {
        if (v11)
        {
          goto LABEL_25;
        }

        v15 = a2;
        if ((v14 & 0x8000000000000000) == 0)
        {
          v15 = *(a2 + 24) + 24 * v14;
          if (v123 == v15)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

      goto LABEL_17;
    }

    v16 = a4[4];
    v17 = a4[1];
    v18 = (v17 + 8 * (v16 / 0xAA));
    if (a4[2] == v17)
    {
      v15 = 0;
      if (!v12)
      {
LABEL_17:
        if (v123 == v15)
        {
LABEL_19:
          if (v13)
          {
            if (v123[0] != v123[1])
            {
              v19 = v123[1] - 16;
              if (v123[1] - 16 > v123[0])
              {
                v20 = v123[0] + 16;
                do
                {
                  v21 = *(v20 - 1);
                  *(v20 - 1) = *v19;
                  *v19 = v21;
                  v19 -= 16;
                  v22 = v20 >= v19;
                  v20 += 16;
                }

                while (!v22);
              }
            }
          }

LABEL_25:
          v23 = v9[16];
          if (v23 != v9[17])
          {
            v24 = *v8;
            if (*v8)
            {
LABEL_27:
              v26 = *v23;
              v25 = v23[1];
              v27 = v8;
              v28 = v23[2];
              do
              {
                v32 = v24[4];
                v33 = v32 < v26;
                if (v32 == v26)
                {
                  v34 = v24[5];
                  v33 = v34 < v25;
                  if (v34 == v25)
                  {
                    v33 = v24[6] < v28;
                  }
                }

                v29 = v33;
                v30 = v29 == 0;
                if (v29)
                {
                  v31 = 1;
                }

                else
                {
                  v31 = 0;
                }

                if (v30)
                {
                  v27 = v24;
                }

                v24 = v24[v31];
              }

              while (v24);
              if (v27 != v8)
              {
                v35 = v27[4];
                v36 = v26 < v35;
                if (v26 == v35)
                {
                  v37 = v27[5];
                  v36 = v25 < v37;
                  if (v25 == v37)
                  {
                    v36 = v28 < v27[6];
                  }
                }

                if (!v36 && (*(v27 + 89) & 1) == 0)
                {
                  v38 = *(v27 + 88);
                  if (v26 == 2)
                  {
                    v40 = a4[4];
                    v41 = a4[1];
                    v42 = (v41 + 8 * (v40 / 0xAA));
                    if (a4[2] == v41)
                    {
                      v39 = 0;
                      if (!v25)
                      {
                        goto LABEL_58;
                      }
                    }

                    else
                    {
                      v39 = *v42 + 24 * (v40 % 0xAA);
                      if (!v25)
                      {
                        goto LABEL_58;
                      }
                    }

                    v57 = v25 - 0x5555555555555555 * ((v39 - *v42) >> 3);
                    if (v57 < 1)
                    {
                      v58 = 169 - v57;
                      v59 = v58 / 0xAA;
                      v39 = v42[-v59] + 24 * (170 * v59 - v58) + 4056;
                      if (*(v42[-v59] + 24 * (170 * v59 - v58) + 4064) - *v39 < 0x31uLL)
                      {
                        goto LABEL_84;
                      }
                    }

                    else
                    {
                      v39 = v42[v57 / 0xAAuLL] + 24 * (v57 % 0xAAuLL);
                      if (*(v39 + 8) - *v39 < 0x31uLL)
                      {
                        goto LABEL_84;
                      }
                    }

                    goto LABEL_59;
                  }

                  if (v26 != 1)
                  {
                    if (v26)
                    {
                      goto LABEL_84;
                    }

                    v39 = a2;
                    if ((v28 & 0x8000000000000000) == 0)
                    {
                      v39 = *(a2 + 24) + 24 * v28;
                      if (*(v39 + 8) - *v39 < 0x31uLL)
                      {
                        goto LABEL_84;
                      }

                      goto LABEL_59;
                    }

LABEL_58:
                    if (*(v39 + 8) - *v39 < 0x31uLL)
                    {
                      goto LABEL_84;
                    }

                    goto LABEL_59;
                  }

                  v39 = *a3 + 48 * v25;
                  if (v28 < 0)
                  {
                    goto LABEL_58;
                  }

                  v39 = *(v39 + 24) + 24 * v28;
                  if (*(v39 + 8) - *v39 < 0x31uLL)
                  {
                    goto LABEL_84;
                  }

LABEL_59:
                  v43 = a2;
                  v44 = a5;
                  v46 = __p[1];
                  v45 = v125;
                  if (v125 - __p[1] == -24)
                  {
                    if (v125 != __p[1])
                    {
                      v47 = v125;
                      do
                      {
                        v49 = *(v47 - 3);
                        v47 -= 24;
                        v48 = v49;
                        if (v49)
                        {
                          *(v45 - 2) = v48;
                          operator delete(v48);
                        }

                        v45 = v47;
                      }

                      while (v47 != v46);
                    }

                    *&v125 = v46;
                    v50 = (v46 - 24);
                    if (v46 - 24 != v39)
                    {
LABEL_68:
                      sub_100273AA0(v50, *v39, *(v39 + 8), (*(v39 + 8) - *v39) >> 4);
                    }
                  }

                  else
                  {
                    sub_1002A9F14(&__p[1], 1uLL);
                    v50 = (v125 - 24);
                    if (v125 - 24 != v39)
                    {
                      goto LABEL_68;
                    }
                  }

                  a5 = v44;
                  a2 = v43;
                  if (v38)
                  {
                    v51 = *(v125 - 24);
                    v52 = *(v125 - 16);
                    v53 = (v52 - 16);
                    if (v51 != v52 && v53 > v51)
                    {
                      v55 = v51 + 16;
                      do
                      {
                        v56 = *(v55 - 16);
                        *(v55 - 16) = *v53;
                        *v53-- = v56;
                        v22 = v55 >= v53;
                        v55 += 16;
                      }

                      while (!v22);
                    }
                  }
                }
              }

LABEL_84:
              while (1)
              {
                v23 += 3;
                if (v23 == v9[17])
                {
                  break;
                }

                v24 = *v8;
                if (*v8)
                {
                  goto LABEL_27;
                }
              }
            }
          }

          v60 = v123[1] - v123[0];
          v61 = (v123[1] - v123[0]) >> 4;
          v62 = __p[1];
          if (__p[1] != v125)
          {
            v63 = v125 - __p[1] - 24;
            v64 = __p[1];
            if (v63 >= 0x60)
            {
              v65 = v63 / 0x18 + 1;
              v66 = v65 & 3;
              if ((v65 & 3) == 0)
              {
                v66 = 4;
              }

              v67 = v65 - v66;
              v64 = (__p[1] + 24 * v67);
              v68 = 0uLL;
              v69 = ((v123[1] - v123[0]) >> 4);
              v70 = __p[1];
              do
              {
                v71 = v70;
                v70 += 12;
                v134 = vld3q_f64(v71);
                v71 += 6;
                v69 = vsraq_n_s64(v69, vsubq_s64(v134.val[1], v134.val[0]), 4uLL);
                v135 = vld3q_f64(v71);
                v68 = vsraq_n_s64(v68, vsubq_s64(v135.val[1], v135.val[0]), 4uLL);
                v67 -= 4;
              }

              while (v67);
              v61 = vaddvq_s64(vaddq_s64(v68, v69));
            }

            do
            {
              v72 = *v64;
              v73 = v64[1];
              v64 += 3;
              v61 += (v73 - v72) >> 4;
            }

            while (v64 != v125);
          }

          if (v61 < 4)
          {
LABEL_123:
            if (v62)
            {
              v105 = v125;
              v106 = v62;
              if (v125 != v62)
              {
                v107 = v125;
                do
                {
                  v109 = *(v107 - 3);
                  v107 -= 24;
                  v108 = v109;
                  if (v109)
                  {
                    *(v105 - 2) = v108;
                    operator delete(v108);
                  }

                  v105 = v107;
                }

                while (v107 != v62);
                v106 = __p[1];
              }

              *&v125 = v62;
              operator delete(v106);
            }

            if (v123[0])
            {
              v123[1] = v123[0];
              operator delete(v123[0]);
            }

            goto LABEL_133;
          }

          v74 = 0.0;
          v75 = 0.0;
          if (v60 < 0x40 || (v76 = (v123[0] + 16), v123[0] + 16 == v123[1]))
          {
LABEL_109:
            if (__p[1] != v125)
            {
              v74 = 0.0;
              v88 = __p[1];
              while (2)
              {
                v91 = *v88;
                v90 = v88[1];
                v92 = v90 - *v88;
                v89 = 0.0;
                if (v92 < 0x40)
                {
                  goto LABEL_112;
                }

                v93 = v91 + 2;
                if (v91 + 2 == v90)
                {
                  goto LABEL_112;
                }

                v94 = v92 - 32;
                if (v94 <= 0x2F)
                {
                  v95 = *v88;
                  goto LABEL_120;
                }

                v96 = (v94 >> 4) + 1;
                v97 = 2 * (v96 & 0x1FFFFFFFFFFFFFFCLL);
                v93 = (v93 + v97 * 8);
                v95 = &v91[v97];
                v98 = v91 + 4;
                v99 = v96 & 0x1FFFFFFFFFFFFFFCLL;
                do
                {
                  v100 = v98 - 4;
                  v127 = vld2q_f64(v100);
                  v129 = vld2q_f64(v98);
                  v101 = v98 - 2;
                  v102 = v98 + 2;
                  v132 = vld2q_f64(v101);
                  v133 = vld2q_f64(v102);
                  v127.val[0] = vmulq_f64(vaddq_f64(v127.val[0], v132.val[0]), vsubq_f64(v127.val[1], v132.val[1]));
                  v127.val[1] = vmulq_f64(vaddq_f64(v129.val[0], v133.val[0]), vsubq_f64(v129.val[1], v133.val[1]));
                  v89 = v89 + v127.val[0].f64[0] + v127.val[0].f64[1] + v127.val[1].f64[0] + v127.val[1].f64[1];
                  v98 += 8;
                  v99 -= 4;
                }

                while (v99);
                if (v96 != (v96 & 0x1FFFFFFFFFFFFFFCLL))
                {
                  do
                  {
LABEL_120:
                    v103 = *v93;
                    v93 += 2;
                    v89 = v89 + (*v95 + v103) * (v95[1] - v95[3]);
                    v95 += 2;
                  }

                  while (v93 != v90);
                }

                v89 = v89 * 0.5;
LABEL_112:
                v74 = v74 + v89;
                v88 += 3;
                if (v88 == v125)
                {
                  break;
                }

                continue;
              }
            }

            v104 = v75 + v74;
            if (v104 != 0.0)
            {
              if ((*&v104 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || ((v112 = fabs(v104), v112 >= 1.0) ? (v113 = v112) : (v113 = 1.0), v112 > v113 * 2.22044605e-16))
              {
                if (a7 == 1 || v104 > 0.0)
                {
                  v114 = *(a5 + 8);
                  if (v114 >= *(a5 + 16))
                  {
                    v115 = sub_1002AA110(a5, v123);
                  }

                  else
                  {
                    sub_1002737CC(*(a5 + 8), v123);
                    v115 = (v114 + 48);
                    *(a5 + 8) = v114 + 48;
                  }

                  *(a5 + 8) = v115;
                  v62 = __p[1];
                }

                else if (a7 == 2)
                {
                  v122 = &off_100445760;
                  v120.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/overlay/add_rings.hpp";
                  v120.i64[1] = "OutputIterator boost::geometry::detail::overlay::add_rings(const SelectionMap &, const Geometry1 &, const Geometry2 &, const RingCollection &, OutputIterator, const Strategy &, add_rings_error_handling) [GeometryOut = boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>, SelectionMap = std::map<boost::geometry::ring_identifier, boost::geometry::detail::overlay::ring_properties<boost::geometry::model::d2::point_xy<double>, double>>, Geometry1 = boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>, Geometry2 = boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>>, RingCollection = std::deque<boost::geometry::model::ring<boost::geometry::model::d2::point_xy<double>>>, OutputIterator = boost::geometry::range::back_insert_iterator<boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>>>, Strategy = boost::geometry::strategies::relate::cartesian<>]";
                  v121 = 157;
                  sub_1002A9EA8(&v122, &v120);
                }
              }
            }

            goto LABEL_123;
          }

          v77 = v60 - 32;
          if (v77 > 0x2F)
          {
            v80 = (v77 >> 4) + 1;
            v81 = 16 * (v80 & 0x1FFFFFFFFFFFFFFCLL);
            v76 = (v76 + v81);
            v78 = (v123[0] + v81);
            v82 = (v123[0] + 32);
            v83 = v80 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v84 = v82 - 4;
              v126 = vld2q_f64(v84);
              v128 = vld2q_f64(v82);
              v85 = v82 - 2;
              v86 = v82 + 2;
              v130 = vld2q_f64(v85);
              v131 = vld2q_f64(v86);
              v126.val[0] = vmulq_f64(vaddq_f64(v126.val[0], v130.val[0]), vsubq_f64(v126.val[1], v130.val[1]));
              v126.val[1] = vmulq_f64(vaddq_f64(v128.val[0], v131.val[0]), vsubq_f64(v128.val[1], v131.val[1]));
              v75 = v75 + v126.val[0].f64[0] + v126.val[0].f64[1] + v126.val[1].f64[0] + v126.val[1].f64[1];
              v82 += 8;
              v83 -= 4;
            }

            while (v83);
            if (v80 == (v80 & 0x1FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_108;
            }
          }

          else
          {
            v78 = v123[0];
          }

          do
          {
            v87 = *v76;
            v76 += 2;
            v75 = v75 + (*v78 + v87) * (v78[1] - v78[3]);
            v78 += 2;
          }

          while (v76 != v123[1]);
LABEL_108:
          v75 = v75 * 0.5;
          goto LABEL_109;
        }

LABEL_18:
        sub_100273AA0(v123, *v15, *(v15 + 8), (*(v15 + 8) - *v15) >> 4);
        goto LABEL_19;
      }
    }

    else
    {
      v15 = *v18 + 24 * (v16 % 0xAA);
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    v79 = v12 - 0x5555555555555555 * ((v15 - *v18) >> 3);
    if (v79 < 1)
    {
      v15 = v18[-((169 - v79) / 0xAAuLL)] + 24 * (170 * ((169 - v79) / 0xAAuLL) - (169 - v79)) + 4056;
      if (v123 == v15)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v15 = v18[v79 / 0xAAuLL] + 24 * (v79 % 0xAAuLL);
      if (v123 == v15)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

  return a5;
}

void sub_100277DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_100277DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v16 + 8) = v17;
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_100277DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::exception a16, ...)
{
  va_start(va, a16);
  std::exception::~exception(&a16);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_100277E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_100277E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100277E30(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 / 0xAA];
    v6 = *v5;
    v7 = *v5 + 24 * (v4 % 0xAA);
    v8 = v2[(*(a1 + 40) + v4) / 0xAA] + 24 * ((*(a1 + 40) + v4) % 0xAA);
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

        v7 += 24;
        if (v7 - v6 == 4080)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 85;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 170;
LABEL_17:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      *(a1 + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100277FC4(int a1, double **a2, int a3, double ***a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = 0;
  v49 = 0;
  v50 = 0;
  __p = 0;
  v46 = 0;
  v47 = 0;
  v16 = *a2;
  v17 = a2[1];
  if ((v17 - v16) >= 0x11)
  {
    *&v38 = 0;
    *(&v38 + 1) = -1;
    v39 = -1;
    sub_100278258(&v48, v16, v17, a6, a5, &v38, 0xAuLL);
  }

  v32 = a1;
  v33 = a3;
  v34 = a7;
  v35 = a8;
  v19 = a2[3];
  v18 = a2[4];
  if (v19 != v18)
  {
    v20 = 0;
    do
    {
      v21 = *v19;
      v22 = v19[1];
      if ((v22 - *v19) >= 0x11)
      {
        v38 = xmmword_1003C6FC0;
        v39 = v20;
        sub_100278258(&v48, v21, v22, a6, a5, &v38, 0xAuLL);
        v18 = a2[4];
      }

      v19 += 3;
      ++v20;
    }

    while (v19 != v18);
  }

  v46 = 0;
  v23 = *a4;
  if (*a4 != a4[1])
  {
    v24 = 0;
    do
    {
      v25 = *v23;
      v26 = v23[1];
      if ((v26 - *v23) >= 0x11)
      {
        *&v38 = 1;
        *(&v38 + 1) = v24;
        v39 = -1;
        sub_100278258(&__p, v25, v26, a6, a5, &v38, 0xAuLL);
      }

      v28 = v23[3];
      v27 = v23[4];
      if (v28 != v27)
      {
        v29 = 0;
        do
        {
          v30 = *v28;
          v31 = v28[1];
          if ((v31 - *v28) >= 0x11)
          {
            *&v38 = 1;
            *(&v38 + 1) = v24;
            v39 = v29;
            sub_100278258(&__p, v30, v31, a6, a5, &v38, 0xAuLL);
            v27 = v23[4];
          }

          v28 += 3;
          ++v29;
        }

        while (v28 != v27);
      }

      v23 += 6;
      ++v24;
    }

    while (v23 != a4[1]);
  }

  LODWORD(v38) = v32;
  *(&v38 + 1) = a2;
  LODWORD(v39) = v33;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = v34;
  v44 = v35;
  v36 = a5;
  v37 = a5;
  sub_1002788AC(&v48, &__p, &v38, &v37, &v36, &v37, &v36, 0x10uLL);
  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }
}

void sub_10027820C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
    v29 = *(v27 - 112);
    if (!v29)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v29 = *(v27 - 112);
    if (!v29)
    {
      goto LABEL_3;
    }
  }

  *(v27 - 104) = v29;
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

void sub_100278258(void *a1, double *a2, double *a3, uint64_t a4, uint64_t a5, __int128 *a6, unint64_t a7)
{
  v7 = a3 - a2;
  if (a3 == a2)
  {
    return;
  }

  *(&v56 + 1) = -1;
  v57 = -1;
  v60 = -1;
  v61 = -1;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = -1;
  v66 = 0;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v43 = vnegq_f64(0);
  v44 = vnegq_f64(v12);
  v58 = v44;
  v59 = v43;
  v55 = 0;
  *&v56 = -1;
  v13 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v14 = *(a4 + 24) + (a2[1] - *(a4 + 8)) * *(a4 + 32);
  if (v14 >= 0.0)
  {
    v15 = 0.5;
  }

  else
  {
    v15 = -0.5;
  }

  v53 = v14 + v15;
  sub_100274990(v14 + v15);
  v17 = *(a4 + 16) + (*a2 - *a4) * *(a4 + 32);
  if (v17 >= 0.0)
  {
    v18 = 0.5;
  }

  else
  {
    v18 = -0.5;
  }

  v50 = v17 + v18;
  sub_100274990(v17 + v18);
  v19 = a2 + 2;
  if (a2 + 2 == a3)
  {
    goto LABEL_56;
  }

  v20 = 0;
  v21 = 0;
  v22.f64[0] = v50;
  v22.f64[1] = v53;
  v23 = vcvtq_s64_f64(vbslq_s8(vcltzq_f64(v22), vrndpq_f64(v22), vrndmq_f64(v22)));
  v41 = v13;
  v45 = 1;
  do
  {
    v54 = v23;
    v25 = *(a4 + 24) + (v19[1] - *(a4 + 8)) * *(a4 + 32);
    if (v25 >= 0.0)
    {
      v26 = 0.5;
    }

    else
    {
      v26 = -0.5;
    }

    v51 = v25 + v26;
    sub_100274990(v25 + v26);
    v27 = *(a4 + 16) + (*v19 - *a4) * *(a4 + 32);
    if (v27 >= 0.0)
    {
      v28 = 0.5;
    }

    else
    {
      v28 = -0.5;
    }

    v48 = v27 + v28;
    sub_100274990(v27 + v28);
    v29.f64[0] = v48;
    v29.f64[1] = v51;
    v30 = vbslq_s8(vcltzq_f64(v29), vrndpq_f64(v29), vrndmq_f64(v29));
    v31 = v54;
    v23 = vcvtq_s64_f64(v30);
    v32 = vmovn_s64(vcgtq_s64(v23, v54));
    v33 = vmovn_s64(vcgtq_s64(v54, v23));
    v34 = vbsl_s8(v32, 0x100000001, v33);
    if (v34.i32[0])
    {
      v35 = 0;
      v36 = v62;
      if (!v62)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v37 = vmovn_s64(vceqq_s64(v54, v23));
      v34.i32[0] = 0;
      v35 = v37.i8[0] & v37.i8[4];
      if (v37.i32[0] & v37.i32[1])
      {
        v38 = -1;
      }

      else
      {
        v38 = 0;
      }

      v34 = vbsl_s8(vdup_n_s32(v38), 0x9D0000009DLL, v34);
      v36 = v62;
      if (!v62)
      {
        goto LABEL_36;
      }
    }

    if (v55.i32[0] != v34.i8[0] || v36 > a7 || v55.i32[1] != v34.i8[4])
    {
      v46 = v34;
      v47 = v33;
      v49 = v32;
      v52 = v23;
      if ((v64 & 1) == 0)
      {
        v41 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
      }

      sub_100278730(a1, &v55);
      *(&v56 + 1) = -1;
      v57 = -1;
      *&v56 = -1;
      v60 = -1;
      v61 = -1;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v55 = 0;
      v58 = v44;
      v59 = v43;
      v65 = -1;
      v66 = 0;
      v23 = v52;
      v31 = v54;
      v33 = v47;
      v32 = v49;
      v34 = v46;
LABEL_36:
      v56 = *a6;
      v57 = *(a6 + 2);
      v64 = v35 & 1;
      v65 = v20;
      v60 = v21;
      v63 = v7 >> 4;
      if (v35 & 1 | ((v45 & 1) == 0))
      {
        v55 = vshr_n_s32(vshl_n_s32(v34, 0x18uLL), 0x18uLL);
        v58 = v31;
        v59 = v31;
        if ((v33.i8[0] & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v45 = 0;
        LOBYTE(v66) = 1;
        v55 = vshr_n_s32(vshl_n_s32(v34, 0x18uLL), 0x18uLL);
        v58 = v31;
        v59 = v31;
        if ((v33.i8[0] & 1) == 0)
        {
LABEL_38:
          if ((v32.i8[0] & 1) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_44;
        }
      }

      *&v58.f64[0] = v23.i64[0];
      if ((v32.i8[0] & 1) == 0)
      {
LABEL_39:
        if ((v33.i8[4] & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_45:
        *&v58.f64[1] = v23.i64[1];
        v36 = 0;
        if (v32.i8[4])
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }

LABEL_44:
      *&v59.f64[0] = v23.i64[0];
      if ((v33.i8[4] & 1) == 0)
      {
LABEL_40:
        v36 = 0;
        if (v32.i8[4])
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }

      goto LABEL_45;
    }

    if (*&v58.f64[0] > v23.i64[0])
    {
      *&v58.f64[0] = v23.i64[0];
      if (*&v59.f64[0] < v23.i64[0])
      {
LABEL_48:
        v39 = v23.i64[1];
        *&v59.f64[0] = v23.i64[0];
        if (*&v58.f64[1] <= v23.i64[1])
        {
LABEL_34:
          if (*&v59.f64[1] < v39)
          {
            goto LABEL_10;
          }

          goto LABEL_11;
        }

        goto LABEL_49;
      }
    }

    else if (*&v59.f64[0] < v23.i64[0])
    {
      goto LABEL_48;
    }

    v39 = v23.i64[1];
    if (*&v58.f64[1] <= v23.i64[1])
    {
      goto LABEL_34;
    }

LABEL_49:
    *&v58.f64[1] = v39;
    if (*&v59.f64[1] < v39)
    {
LABEL_10:
      *&v59.f64[1] = v23.i64[1];
    }

LABEL_11:
    ++v21;
    v24 = v36 + 1;
    v61 = v21;
    v62 = v24;
    v20 += (v35 & 1) == 0;
    v19 += 2;
  }

  while (v19 != a3);
  if (v24)
  {
    v13 = v41;
    if ((v64 & 1) == 0)
    {
      v13 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
    }

    sub_100278730(a1, &v55);
  }

  else
  {
    v13 = v41;
  }

LABEL_56:
  if (v13 < 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3))
  {
    v40 = *a1 + 120 * v13;
    if ((*(v40 + 96) & 1) == 0)
    {
      *(v40 + 113) = 1;
    }
  }
}

void sub_100278730(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    *(v3 + 32) = a2[2];
    *(v3 + 48) = v7;
    *v3 = v5;
    *(v3 + 16) = v6;
    v8 = a2[4];
    v9 = a2[5];
    v10 = a2[6];
    *(v3 + 112) = *(a2 + 14);
    *(v3 + 80) = v9;
    *(v3 + 96) = v10;
    *(v3 + 64) = v8;
    v11 = v3 + 120;
LABEL_3:
    *(a1 + 8) = v11;
    return;
  }

  v12 = *a1;
  v13 = 0xEEEEEEEEEEEEEEEFLL * ((v3 - *a1) >> 3);
  v14 = v13 + 1;
  if (v13 + 1 > 0x222222222222222)
  {
    sub_10000FC84();
  }

  v15 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - v12) >> 3);
  if (2 * v15 > v14)
  {
    v14 = 2 * v15;
  }

  if (v15 >= 0x111111111111111)
  {
    v16 = 0x222222222222222;
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    if (v16 <= 0x222222222222222)
    {
      operator new();
    }

    sub_10000D444();
  }

  v17 = a2[5];
  v18 = 8 * ((v3 - *a1) >> 3);
  *(v18 + 64) = a2[4];
  *(v18 + 80) = v17;
  *(v18 + 96) = a2[6];
  *(v18 + 112) = *(a2 + 14);
  v19 = a2[1];
  *v18 = *a2;
  *(v18 + 16) = v19;
  v20 = a2[3];
  v11 = 120 * v13 + 120;
  v21 = 120 * v13 - (v3 - v12);
  *(v18 + 32) = a2[2];
  *(v18 + 48) = v20;
  memcpy((v18 - (v3 - v12)), v12, v3 - v12);
  *a1 = v21;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  *(a1 + 8) = v11;
}

uint64_t sub_1002788AC(uint64_t *a1, int **a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v12 = *a1;
  v11 = a1[1];
  if (0xEEEEEEEEEEEEEEEFLL * ((v11 - *a1) >> 3) <= a8 || (v14 = *a2, v13 = a2[1], 0xEEEEEEEEEEEEEEEFLL * ((v13 - *a2) >> 3) <= a8))
  {
    if (v12 != v11)
    {
      v24 = a2[1];
      if (*a2 != v24)
      {
        do
        {
          v26 = *a2;
          if (*a2 != v24)
          {
            do
            {
              if (*(v12 + 48) >= *(v26 + 4) && *(v12 + 32) <= *(v26 + 6) && *(v12 + 56) >= *(v26 + 5) && *(v12 + 40) <= *(v26 + 7))
              {
                result = sub_10027A9E0(*a3, *(a3 + 1), v12, a3[4], *(a3 + 3), v26, 0, 0, *(a3 + 4), *(a3 + 5), *(a3 + 6));
                if (!result)
                {
                  return result;
                }

                v24 = a2[1];
              }

              v26 += 30;
            }

            while (v26 != v24);
            v11 = a1[1];
          }

          v12 += 120;
        }

        while (v12 != v11);
      }
    }

    return 1;
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
    __p = 0;
    v41 = 0;
    v42 = 0;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v38 = vnegq_f64(v15);
    v39 = vnegq_f64(0);
    if (v12 != v11)
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      v17 = 0x8000000000000000;
      v18 = 0x8000000000000000;
      v19 = 0x7FFFFFFFFFFFFFFFLL;
      v20 = *(v12 + 32);
      if (v20 != 0x7FFFFFFFFFFFFFFFLL && (v38.f64[0] = *(v12 + 32), v19 = v20, v20 == 0x8000000000000000))
      {
        v21 = *(v12 + 40);
        if (v21 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *&v39.f64[0] = v20;
        v18 = v20;
        v21 = *(v12 + 40);
        if (v21 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_16;
        }
      }

      *&v38.f64[1] = v21;
      v16 = v21;
      if (v21 == 0x8000000000000000)
      {
        v22 = *(v12 + 48);
        if (v22 < v19)
        {
          goto LABEL_17;
        }

        goto LABEL_9;
      }

LABEL_16:
      *&v39.f64[1] = v21;
      v17 = v21;
      v22 = *(v12 + 48);
      if (v22 < v19)
      {
LABEL_17:
        *&v38.f64[0] = v22;
        if (v22 > v18)
        {
LABEL_18:
          *&v39.f64[0] = v22;
          v23 = *(v12 + 56);
          if (v23 < v16)
          {
LABEL_19:
            *&v38.f64[1] = v23;
            if (v23 > v17)
            {
              goto LABEL_20;
            }

            goto LABEL_21;
          }

LABEL_11:
          if (v23 > v17)
          {
LABEL_20:
            *&v39.f64[1] = v23;
          }

LABEL_21:
          operator new();
        }

LABEL_10:
        v23 = *(v12 + 56);
        if (v23 < v16)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

LABEL_9:
      if (v22 > v18)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    v28 = 0x7FFFFFFFFFFFFFFFLL;
    v29 = 0x8000000000000000;
    v30 = 0x8000000000000000;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    if (v14 != v13)
    {
      v32 = *(v14 + 4);
      if (v32 != 0x7FFFFFFFFFFFFFFFLL && (v38.f64[0] = *(v14 + 4), v31 = v32, v32 == 0x8000000000000000))
      {
        v33 = *(v14 + 5);
        if (v33 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_52;
        }
      }

      else
      {
        *&v39.f64[0] = v32;
        v30 = v32;
        v33 = *(v14 + 5);
        if (v33 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_52;
        }
      }

      *&v38.f64[1] = v33;
      v28 = v33;
      if (v33 == 0x8000000000000000)
      {
        v34 = *(v14 + 6);
        if (v34 < v31)
        {
          goto LABEL_53;
        }

        goto LABEL_45;
      }

LABEL_52:
      *&v39.f64[1] = v33;
      v29 = v33;
      v34 = *(v14 + 6);
      if (v34 < v31)
      {
LABEL_53:
        *&v38.f64[0] = v34;
        if (v34 > v30)
        {
LABEL_54:
          *&v39.f64[0] = v34;
          v35 = *(v14 + 7);
          if (v35 < v28)
          {
LABEL_55:
            *&v38.f64[1] = v35;
            if (v35 > v29)
            {
              goto LABEL_56;
            }

            goto LABEL_57;
          }

LABEL_47:
          if (v35 > v29)
          {
LABEL_56:
            *&v39.f64[1] = v35;
          }

LABEL_57:
          operator new();
        }

LABEL_46:
        v35 = *(v14 + 7);
        if (v35 < v28)
        {
          goto LABEL_55;
        }

        goto LABEL_47;
      }

LABEL_45:
      if (v34 > v30)
      {
        goto LABEL_54;
      }

      goto LABEL_46;
    }

    result = sub_100278F1C(&v38, &v43, &__p, 0, a8, a3, a4, a5, a6, a7, v46);
    if (__p)
    {
      v41 = __p;
      v36 = result;
      operator delete(__p);
      result = v36;
    }

    if (v43)
    {
      v44 = v43;
      v37 = result;
      operator delete(v43);
      return v37;
    }
  }

  return result;
}

void sub_100278EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
    v30 = *(v28 - 120);
    if (!v30)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v30 = *(v28 - 120);
    if (!v30)
    {
      goto LABEL_3;
    }
  }

  *(v28 - 112) = v30;
  operator delete(v30);
  _Unwind_Resume(exception_object);
}

uint64_t sub_100278F1C(__n128 *a1, uint64_t *a2, uint64_t *a3, unint64_t a4, unint64_t a5, unsigned int *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a1[1].n128_i64[0];
  v16 = a1[1];
  v17 = a1->n128_u64[0] / 2;
  v184 = *a1;
  v185[1] = v16.n128_i64[1];
  v182 = *(&v184 + 1);
  v183 = v16;
  v18 = v15 % 2 + v184 - 2 * v17;
  v19 = v15 / 2 + v17 + ((v18 + ((v18 & 0x80) >> 7)) << 24 >> 25);
  v185[0] = v19;
  v180 = 0;
  v181 = v19;
  v178 = 0;
  v179 = 0;
  v175 = 0;
  v176 = 0;
  v177 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v169 = 0;
  v170 = 0;
  v171 = 0;
  v166 = 0;
  v167 = 0;
  v168 = 0;
  __p = 0;
  v164 = 0;
  v165 = 0;
  v21 = *a2;
  v20 = a2[1];
  if (*a2 != v20)
  {
    do
    {
      v23 = *v21;
      v24 = *(*v21 + 32);
      if (v185[0] >= v24 && v184 <= v23[6])
      {
        v25 = v185[1] >= v23[5] && *(&v184 + 1) <= v23[7];
        if (v183.n128_i64[0] < v24)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v25 = 0;
        if (v183.n128_i64[0] < v24)
        {
          goto LABEL_16;
        }
      }

      if (v19 <= v23[6])
      {
        v28 = v23[5];
        v29 = v23[7];
        v30 = v183.n128_i64[1] >= v28 && v182 <= v29;
        v31 = v30;
        v32 = v30 || v25;
        if ((v25 & v31) != 0)
        {
          v33 = &v172;
        }

        else
        {
          v33 = &v178;
        }

        if (v25)
        {
          v27 = v33;
        }

        else
        {
          v27 = &v175;
        }

        if ((v32 & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_34;
      }

LABEL_16:
      if (v25)
      {
        v27 = &v178;
LABEL_34:
        sub_100279BF0(v27, v21);
        v20 = a2[1];
      }

LABEL_3:
      ++v21;
    }

    while (v21 != v20);
  }

  v35 = *a3;
  v34 = a3[1];
  if (*a3 != v34)
  {
    do
    {
      v36 = *v35;
      v37 = *(*v35 + 32);
      if (v185[0] >= v37 && v184 <= v36[6])
      {
        v38 = v185[1] >= v36[5] && *(&v184 + 1) <= v36[7];
        if (v183.n128_i64[0] < v37)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v38 = 0;
        if (v183.n128_i64[0] < v37)
        {
          goto LABEL_50;
        }
      }

      if (v19 <= v36[6])
      {
        v41 = v36[5];
        v42 = v36[7];
        v43 = v183.n128_i64[1] >= v41 && v182 <= v42;
        v44 = v43;
        v45 = v43 || v38;
        if ((v38 & v44) != 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = &v169;
        }

        if (v38)
        {
          v40 = p_p;
        }

        else
        {
          v40 = &v166;
        }

        if ((v45 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_68;
      }

LABEL_50:
      if (v38)
      {
        v40 = &v169;
LABEL_68:
        sub_100279BF0(v40, v35);
        v34 = a3[1];
      }

LABEL_37:
      ++v35;
    }

    while (v35 != v34);
  }

  v48 = v172;
  v47 = v173;
  if (v172 == v173)
  {
    goto LABEL_142;
  }

  v50 = __p;
  v49 = v164;
  if (a5 > (v173 - v172) >> 3 || a4 > 0x63 || (v164 - __p) >> 3 < a5)
  {
    if (__p != v164)
    {
      do
      {
        v51 = __p;
        if (__p != v49)
        {
          do
          {
            v52 = *v48;
            v53 = *v51;
            if (*(*v48 + 48) >= *(*v51 + 32) && *(v52 + 32) <= *(v53 + 48) && *(v52 + 56) >= *(v53 + 40) && *(v52 + 40) <= *(v53 + 56))
            {
              if (!sub_10027A9E0(*a6, *(a6 + 1), v52, a6[4], *(a6 + 3), v53, 0, 0, *(a6 + 4), *(a6 + 5), *(a6 + 6)))
              {
                goto LABEL_227;
              }

              v49 = v164;
            }

            v51 += 8;
          }

          while (v51 != v49);
          v47 = v173;
        }

        v48 += 8;
      }

      while (v48 != v47);
    }
  }

  else
  {
    v161 = 0u;
    v162 = 0u;
    v55 = vnegq_f64(0);
    v56.f64[0] = NAN;
    v56.f64[1] = NAN;
    v57 = vnegq_f64(v56);
    v58 = v57;
    v59 = v55;
    do
    {
      v60 = *v48;
      v48 += 8;
      v61 = v60[2];
      v62 = v60[3];
      v63 = vcgtq_s64(v57, v61);
      v64 = vbslq_s8(v63, v61, v58);
      v65 = vbslq_s8(v63, v61, v57);
      v66 = vcgtq_s64(v65, v62);
      v58 = vbslq_s8(v66, v62, v64);
      v57 = vbslq_s8(v66, v62, v65);
      v67 = vcgtq_s64(v61, v55);
      v68 = vbslq_s8(v67, v61, v59);
      v69 = vbslq_s8(v67, v61, v55);
      v70 = vcgtq_s64(v62, v69);
      v59 = vbslq_s8(v70, v62, v68);
      v55 = vbslq_s8(v70, v62, v69);
    }

    while (v48 != v173);
    v161 = v58;
    v162 = v59;
    if (__p != v164)
    {
      v71 = v58;
      v72 = v59;
      do
      {
        v73 = *v50++;
        v74 = v73[2];
        v75 = v73[3];
        v76 = vcgtq_s64(v58, v74);
        v77 = vbslq_s8(v76, v74, v71);
        v78 = vbslq_s8(v76, v74, v58);
        v79 = vcgtq_s64(v78, v75);
        v71 = vbslq_s8(v79, v75, v77);
        v58 = vbslq_s8(v79, v75, v78);
        v80 = vcgtq_s64(v74, v59);
        v81 = vbslq_s8(v80, v74, v72);
        v82 = vbslq_s8(v80, v74, v59);
        v83 = vcgtq_s64(v75, v82);
        v72 = vbslq_s8(v83, v75, v81);
        v59 = vbslq_s8(v83, v75, v82);
      }

      while (v50 != v164);
      v161 = v71;
      v162 = v72;
    }

    if ((sub_100279D08(&v161, &v172, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
    {
      goto LABEL_227;
    }
  }

  v84 = v170;
  if (a5 <= (v170 - v169) >> 3)
  {
    v86 = v172;
    v85 = v173;
    if (a5 <= (v167 - v166) >> 3 && a4 <= 0x63 && (v173 - v172) >> 3 >= a5)
    {
      v96.f64[0] = NAN;
      v96.f64[1] = NAN;
      v97 = vnegq_f64(v96);
      v98 = vnegq_f64(0);
      v161 = v97;
      v162 = v98;
      if (v172 != v173)
      {
        v99 = v97;
        v100 = v98;
        do
        {
          v101 = *v86;
          v86 += 8;
          v102 = v101[2];
          v103 = v101[3];
          v104 = vcgtq_s64(v97, v102);
          v105 = vbslq_s8(v104, v102, v99);
          v106 = vbslq_s8(v104, v102, v97);
          v107 = vcgtq_s64(v106, v103);
          v99 = vbslq_s8(v107, v103, v105);
          v97 = vbslq_s8(v107, v103, v106);
          v108 = vcgtq_s64(v102, v98);
          v109 = vbslq_s8(v108, v102, v100);
          v110 = vbslq_s8(v108, v102, v98);
          v111 = vcgtq_s64(v103, v110);
          v100 = vbslq_s8(v111, v103, v109);
          v98 = vbslq_s8(v111, v103, v110);
        }

        while (v86 != v173);
        v161 = v99;
        v162 = v100;
      }

      if (!sub_100279D08(&v161, &v172, &v169, a4 + 1, a5, a6, a7, a8, a9, a10, a11) || (sub_100279D08(&v161, &v172, &v166, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_227;
      }

      goto LABEL_142;
    }
  }

  else
  {
    v86 = v172;
    v85 = v173;
  }

  if (v86 == v85 || v169 == v170)
  {
    if (v86 == v85)
    {
      goto LABEL_142;
    }

    goto LABEL_102;
  }

  do
  {
    v88 = v169;
    if (v169 != v84)
    {
      do
      {
        v89 = *v86;
        v90 = *v88;
        if (*(*v86 + 48) >= *(*v88 + 32) && *(v89 + 32) <= *(v90 + 48) && *(v89 + 56) >= *(v90 + 40) && *(v89 + 40) <= *(v90 + 56))
        {
          if (!sub_10027A9E0(*a6, *(a6 + 1), v89, a6[4], *(a6 + 3), v90, 0, 0, *(a6 + 4), *(a6 + 5), *(a6 + 6)))
          {
            goto LABEL_227;
          }

          v84 = v170;
        }

        v88 += 8;
      }

      while (v88 != v84);
      v85 = v173;
    }

    v86 += 8;
  }

  while (v86 != v85);
  v86 = v172;
  if (v172 != v85)
  {
LABEL_102:
    v87 = v167;
    if (v166 != v167)
    {
      do
      {
        v92 = v166;
        if (v166 != v87)
        {
          do
          {
            v93 = *v86;
            v94 = *v92;
            if (*(*v86 + 48) >= *(*v92 + 32) && *(v93 + 32) <= *(v94 + 48) && *(v93 + 56) >= *(v94 + 40) && *(v93 + 40) <= *(v94 + 56))
            {
              if (!sub_10027A9E0(*a6, *(a6 + 1), v93, a6[4], *(a6 + 3), v94, 0, 0, *(a6 + 4), *(a6 + 5), *(a6 + 6)))
              {
                goto LABEL_227;
              }

              v87 = v167;
            }

            v92 += 8;
          }

          while (v92 != v87);
          v85 = v173;
        }

        v86 += 8;
      }

      while (v86 != v85);
    }
  }

LABEL_142:
  v113 = __p;
  v112 = v164;
  if (__p != v164)
  {
    v115 = v178;
    v114 = v179;
    if (a5 > (v179 - v178) >> 3 || a5 > (v176 - v175) >> 3 || a4 > 0x63 || (v164 - __p) >> 3 < a5)
    {
      while (v115 != v114)
      {
        v132 = __p;
        if (__p != v112)
        {
          do
          {
            v133 = *v115;
            v134 = *v132;
            if (*(*v115 + 48) >= *(*v132 + 32) && *(v133 + 32) <= *(v134 + 48) && *(v133 + 56) >= *(v134 + 40) && *(v133 + 40) <= *(v134 + 56))
            {
              if (!sub_10027A9E0(*a6, *(a6 + 1), v133, a6[4], *(a6 + 3), v134, 0, 0, *(a6 + 4), *(a6 + 5), *(a6 + 6)))
              {
                goto LABEL_227;
              }

              v112 = v164;
            }

            v132 += 8;
          }

          while (v132 != v112);
          v114 = v179;
        }

        v115 += 8;
      }

      v137 = v175;
      v136 = v176;
      if (v175 != v176 && __p != v112)
      {
        do
        {
          v145 = __p;
          if (__p != v112)
          {
            do
            {
              v146 = *v137;
              v147 = *v145;
              if (*(*v137 + 48) >= *(*v145 + 32) && *(v146 + 32) <= *(v147 + 48) && *(v146 + 56) >= *(v147 + 40) && *(v146 + 40) <= *(v147 + 56))
              {
                if (!sub_10027A9E0(*a6, *(a6 + 1), v146, a6[4], *(a6 + 3), v147, 0, 0, *(a6 + 4), *(a6 + 5), *(a6 + 6)))
                {
                  goto LABEL_227;
                }

                v112 = v164;
              }

              v145 += 8;
            }

            while (v145 != v112);
            v136 = v176;
          }

          v137 += 8;
        }

        while (v137 != v136);
      }
    }

    else
    {
      v161 = 0u;
      v162 = 0u;
      v116 = vnegq_f64(0);
      v117.f64[0] = NAN;
      v117.f64[1] = NAN;
      v118 = vnegq_f64(v117);
      v119 = v118;
      v120 = v116;
      do
      {
        v121 = *v113++;
        v122 = v121[2];
        v123 = v121[3];
        v124 = vcgtq_s64(v118, v122);
        v125 = vbslq_s8(v124, v122, v119);
        v126 = vbslq_s8(v124, v122, v118);
        v127 = vcgtq_s64(v126, v123);
        v119 = vbslq_s8(v127, v123, v125);
        v118 = vbslq_s8(v127, v123, v126);
        v128 = vcgtq_s64(v122, v116);
        v129 = vbslq_s8(v128, v122, v120);
        v130 = vbslq_s8(v128, v122, v116);
        v131 = vcgtq_s64(v123, v130);
        v120 = vbslq_s8(v131, v123, v129);
        v116 = vbslq_s8(v131, v123, v130);
      }

      while (v113 != v164);
      v161 = v119;
      v162 = v120;
      if (!sub_100279D08(&v161, &v178, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) || (sub_100279D08(&v161, &v175, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_227;
      }
    }
  }

  v139 = v178;
  v138 = v179;
  if (a5 > (v179 - v178) >> 3 || a4 > 0x63 || (v170 - v169) >> 3 < a5)
  {
    if (v178 != v179)
    {
      v140 = v170;
      if (v169 != v170)
      {
        do
        {
          v141 = v169;
          if (v169 != v140)
          {
            do
            {
              v142 = *v139;
              v143 = *v141;
              if (*(*v139 + 48) >= *(*v141 + 32) && *(v142 + 32) <= *(v143 + 48) && *(v142 + 56) >= *(v143 + 40) && *(v142 + 40) <= *(v143 + 56))
              {
                if (!sub_10027A9E0(*a6, *(a6 + 1), v142, a6[4], *(a6 + 3), v143, 0, 0, *(a6 + 4), *(a6 + 5), *(a6 + 6)))
                {
                  goto LABEL_227;
                }

                v140 = v170;
              }

              v141 += 8;
            }

            while (v141 != v140);
            v138 = v179;
          }

          v139 += 8;
        }

        while (v139 != v138);
      }
    }
  }

  else if ((sub_100279D08(&v184, &v178, &v169, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
  {
    goto LABEL_227;
  }

  v150 = v175;
  v149 = v176;
  if (a5 <= (v176 - v175) >> 3 && a4 <= 0x63 && (v167 - v166) >> 3 >= a5)
  {
    if (sub_100279D08(&v181, &v175, &v166, a4 + 1, a5, a6, a7, a8, a9, a10, a11))
    {
      goto LABEL_225;
    }

LABEL_227:
    v156 = 0;
    v157 = __p;
    if (!__p)
    {
      goto LABEL_229;
    }

    goto LABEL_228;
  }

  if (v175 != v176)
  {
    v151 = v167;
    if (v166 != v167)
    {
      do
      {
        v152 = v166;
        if (v166 != v151)
        {
          do
          {
            v153 = *v150;
            v154 = *v152;
            if (*(*v150 + 48) >= *(*v152 + 32) && *(v153 + 32) <= *(v154 + 48) && *(v153 + 56) >= *(v154 + 40) && *(v153 + 40) <= *(v154 + 56))
            {
              if (!sub_10027A9E0(*a6, *(a6 + 1), v153, a6[4], *(a6 + 3), v154, 0, 0, *(a6 + 4), *(a6 + 5), *(a6 + 6)))
              {
                goto LABEL_227;
              }

              v151 = v167;
            }

            v152 += 8;
          }

          while (v152 != v151);
          v149 = v176;
        }

        v150 += 8;
      }

      while (v150 != v149);
    }
  }

LABEL_225:
  v156 = 1;
  v157 = __p;
  if (__p)
  {
LABEL_228:
    v164 = v157;
    operator delete(v157);
  }

LABEL_229:
  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (v169)
  {
    v170 = v169;
    operator delete(v169);
  }

  if (v172)
  {
    v173 = v172;
    operator delete(v172);
  }

  if (v175)
  {
    v176 = v175;
    operator delete(v175);
  }

  if (v178)
  {
    v179 = v178;
    operator delete(v178);
  }

  return v156;
}

void sub_100279B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a22;
    if (!a22)
    {
LABEL_3:
      v35 = a25;
      if (!a25)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v34 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v34);
  v35 = a25;
  if (!a25)
  {
LABEL_4:
    v36 = a28;
    if (!a28)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v35);
  v36 = a28;
  if (!a28)
  {
LABEL_5:
    v37 = a31;
    if (!a31)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a31;
  if (!a31)
  {
LABEL_6:
    v38 = *(v32 - 184);
    if (!v38)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = *(v32 - 184);
  if (!v38)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  *(v32 - 176) = v38;
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

void sub_100279BF0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_10000FC84();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t sub_100279D08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unsigned int *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = *(a1 + 24);
  v16 = *a1;
  v182 = *(a1 + 16);
  v183 = v16;
  v17 = *(a1 + 8);
  v18 = v15 / 2 + v17 / 2;
  v181.n128_u64[0] = v16.n128_u64[0];
  LODWORD(v15) = v15 % 2 + v17 % 2;
  v19 = v18 + ((v15 + ((v15 & 0x80) >> 7)) << 24 >> 25);
  v184 = v182;
  v185 = v19;
  v181.n128_u64[1] = v19;
  v178 = 0;
  v179 = 0;
  v180 = 0;
  v175 = 0;
  v176 = 0;
  v177 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v169 = 0;
  v170 = 0;
  v171 = 0;
  v166 = 0;
  v167 = 0;
  v168 = 0;
  __p = 0;
  v164 = 0;
  v165 = 0;
  v21 = *a2;
  v20 = *(a2 + 8);
  if (*a2 != v20)
  {
    do
    {
      v23 = *v21;
      v24 = *(*v21 + 32);
      if (v184 >= v24 && v183.n128_i64[0] <= v23[6])
      {
        v25 = v185 >= v23[5] && v183.n128_u64[1] <= v23[7];
        if (v182 < v24)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v25 = 0;
        if (v182 < v24)
        {
          goto LABEL_16;
        }
      }

      if (v181.n128_i64[0] <= v23[6])
      {
        v28 = v23[5];
        v29 = v23[7];
        v30 = *(&v182 + 1) >= v28 && v19 <= v29;
        v31 = v30;
        v32 = v30 || v25;
        if ((v25 & v31) != 0)
        {
          v33 = &v172;
        }

        else
        {
          v33 = &v178;
        }

        if (v25)
        {
          v27 = v33;
        }

        else
        {
          v27 = &v175;
        }

        if ((v32 & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_34;
      }

LABEL_16:
      if (v25)
      {
        v27 = &v178;
LABEL_34:
        sub_100279BF0(v27, v21);
        v20 = *(a2 + 8);
      }

LABEL_3:
      ++v21;
    }

    while (v21 != v20);
  }

  v35 = *a3;
  v34 = *(a3 + 8);
  if (*a3 != v34)
  {
    do
    {
      v36 = *v35;
      v37 = *(*v35 + 32);
      if (v184 >= v37 && v183.n128_i64[0] <= v36[6])
      {
        v38 = v185 >= v36[5] && v183.n128_u64[1] <= v36[7];
        if (v182 < v37)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v38 = 0;
        if (v182 < v37)
        {
          goto LABEL_50;
        }
      }

      if (v181.n128_i64[0] <= v36[6])
      {
        v41 = v36[5];
        v42 = v36[7];
        v43 = *(&v182 + 1) >= v41 && v19 <= v42;
        v44 = v43;
        v45 = v43 || v38;
        if ((v38 & v44) != 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = &v169;
        }

        if (v38)
        {
          v40 = p_p;
        }

        else
        {
          v40 = &v166;
        }

        if ((v45 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_68;
      }

LABEL_50:
      if (v38)
      {
        v40 = &v169;
LABEL_68:
        sub_100279BF0(v40, v35);
        v34 = *(a3 + 8);
      }

LABEL_37:
      ++v35;
    }

    while (v35 != v34);
  }

  v48 = v172;
  v47 = v173;
  if (v172 == v173)
  {
    goto LABEL_142;
  }

  v50 = __p;
  v49 = v164;
  if (a5 > (v173 - v172) >> 3 || a4 > 0x63 || (v164 - __p) >> 3 < a5)
  {
    if (__p != v164)
    {
      do
      {
        v51 = __p;
        if (__p != v49)
        {
          do
          {
            v52 = *v48;
            v53 = *v51;
            if (*(*v48 + 48) >= *(*v51 + 32) && *(v52 + 32) <= *(v53 + 48) && *(v52 + 56) >= *(v53 + 40) && *(v52 + 40) <= *(v53 + 56))
            {
              if (!sub_10027A9E0(*a6, *(a6 + 1), v52, a6[4], *(a6 + 3), v53, 0, 0, *(a6 + 4), *(a6 + 5), *(a6 + 6)))
              {
                goto LABEL_227;
              }

              v49 = v164;
            }

            v51 += 8;
          }

          while (v51 != v49);
          v47 = v173;
        }

        v48 += 8;
      }

      while (v48 != v47);
    }
  }

  else
  {
    v161 = 0u;
    v162 = 0u;
    v55 = vnegq_f64(0);
    v56.f64[0] = NAN;
    v56.f64[1] = NAN;
    v57 = vnegq_f64(v56);
    v58 = v57;
    v59 = v55;
    do
    {
      v60 = *v48;
      v48 += 8;
      v61 = v60[2];
      v62 = v60[3];
      v63 = vcgtq_s64(v57, v61);
      v64 = vbslq_s8(v63, v61, v58);
      v65 = vbslq_s8(v63, v61, v57);
      v66 = vcgtq_s64(v65, v62);
      v58 = vbslq_s8(v66, v62, v64);
      v57 = vbslq_s8(v66, v62, v65);
      v67 = vcgtq_s64(v61, v55);
      v68 = vbslq_s8(v67, v61, v59);
      v69 = vbslq_s8(v67, v61, v55);
      v70 = vcgtq_s64(v62, v69);
      v59 = vbslq_s8(v70, v62, v68);
      v55 = vbslq_s8(v70, v62, v69);
    }

    while (v48 != v173);
    v161 = v58;
    v162 = v59;
    if (__p != v164)
    {
      v71 = v58;
      v72 = v59;
      do
      {
        v73 = *v50++;
        v74 = v73[2];
        v75 = v73[3];
        v76 = vcgtq_s64(v58, v74);
        v77 = vbslq_s8(v76, v74, v71);
        v78 = vbslq_s8(v76, v74, v58);
        v79 = vcgtq_s64(v78, v75);
        v71 = vbslq_s8(v79, v75, v77);
        v58 = vbslq_s8(v79, v75, v78);
        v80 = vcgtq_s64(v74, v59);
        v81 = vbslq_s8(v80, v74, v72);
        v82 = vbslq_s8(v80, v74, v59);
        v83 = vcgtq_s64(v75, v82);
        v72 = vbslq_s8(v83, v75, v81);
        v59 = vbslq_s8(v83, v75, v82);
      }

      while (v50 != v164);
      v161 = v71;
      v162 = v72;
    }

    if ((sub_100278F1C(&v161, &v172, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
    {
      goto LABEL_227;
    }
  }

  v84 = v170;
  if (a5 <= (v170 - v169) >> 3)
  {
    v86 = v172;
    v85 = v173;
    if (a5 <= (v167 - v166) >> 3 && a4 <= 0x63 && (v173 - v172) >> 3 >= a5)
    {
      v96.f64[0] = NAN;
      v96.f64[1] = NAN;
      v97 = vnegq_f64(v96);
      v98 = vnegq_f64(0);
      v161 = v97;
      v162 = v98;
      if (v172 != v173)
      {
        v99 = v97;
        v100 = v98;
        do
        {
          v101 = *v86;
          v86 += 8;
          v102 = v101[2];
          v103 = v101[3];
          v104 = vcgtq_s64(v97, v102);
          v105 = vbslq_s8(v104, v102, v99);
          v106 = vbslq_s8(v104, v102, v97);
          v107 = vcgtq_s64(v106, v103);
          v99 = vbslq_s8(v107, v103, v105);
          v97 = vbslq_s8(v107, v103, v106);
          v108 = vcgtq_s64(v102, v98);
          v109 = vbslq_s8(v108, v102, v100);
          v110 = vbslq_s8(v108, v102, v98);
          v111 = vcgtq_s64(v103, v110);
          v100 = vbslq_s8(v111, v103, v109);
          v98 = vbslq_s8(v111, v103, v110);
        }

        while (v86 != v173);
        v161 = v99;
        v162 = v100;
      }

      if (!sub_100278F1C(&v161, &v172, &v169, a4 + 1, a5, a6, a7, a8, a9, a10, a11) || (sub_100278F1C(&v161, &v172, &v166, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_227;
      }

      goto LABEL_142;
    }
  }

  else
  {
    v86 = v172;
    v85 = v173;
  }

  if (v86 == v85 || v169 == v170)
  {
    if (v86 == v85)
    {
      goto LABEL_142;
    }

    goto LABEL_102;
  }

  do
  {
    v88 = v169;
    if (v169 != v84)
    {
      do
      {
        v89 = *v86;
        v90 = *v88;
        if (*(*v86 + 48) >= *(*v88 + 32) && *(v89 + 32) <= *(v90 + 48) && *(v89 + 56) >= *(v90 + 40) && *(v89 + 40) <= *(v90 + 56))
        {
          if (!sub_10027A9E0(*a6, *(a6 + 1), v89, a6[4], *(a6 + 3), v90, 0, 0, *(a6 + 4), *(a6 + 5), *(a6 + 6)))
          {
            goto LABEL_227;
          }

          v84 = v170;
        }

        v88 += 8;
      }

      while (v88 != v84);
      v85 = v173;
    }

    v86 += 8;
  }

  while (v86 != v85);
  v86 = v172;
  if (v172 != v85)
  {
LABEL_102:
    v87 = v167;
    if (v166 != v167)
    {
      do
      {
        v92 = v166;
        if (v166 != v87)
        {
          do
          {
            v93 = *v86;
            v94 = *v92;
            if (*(*v86 + 48) >= *(*v92 + 32) && *(v93 + 32) <= *(v94 + 48) && *(v93 + 56) >= *(v94 + 40) && *(v93 + 40) <= *(v94 + 56))
            {
              if (!sub_10027A9E0(*a6, *(a6 + 1), v93, a6[4], *(a6 + 3), v94, 0, 0, *(a6 + 4), *(a6 + 5), *(a6 + 6)))
              {
                goto LABEL_227;
              }

              v87 = v167;
            }

            v92 += 8;
          }

          while (v92 != v87);
          v85 = v173;
        }

        v86 += 8;
      }

      while (v86 != v85);
    }
  }

LABEL_142:
  v113 = __p;
  v112 = v164;
  if (__p != v164)
  {
    v115 = v178;
    v114 = v179;
    if (a5 > (v179 - v178) >> 3 || a5 > (v176 - v175) >> 3 || a4 > 0x63 || (v164 - __p) >> 3 < a5)
    {
      while (v115 != v114)
      {
        v132 = __p;
        if (__p != v112)
        {
          do
          {
            v133 = *v115;
            v134 = *v132;
            if (*(*v115 + 48) >= *(*v132 + 32) && *(v133 + 32) <= *(v134 + 48) && *(v133 + 56) >= *(v134 + 40) && *(v133 + 40) <= *(v134 + 56))
            {
              if (!sub_10027A9E0(*a6, *(a6 + 1), v133, a6[4], *(a6 + 3), v134, 0, 0, *(a6 + 4), *(a6 + 5), *(a6 + 6)))
              {
                goto LABEL_227;
              }

              v112 = v164;
            }

            v132 += 8;
          }

          while (v132 != v112);
          v114 = v179;
        }

        v115 += 8;
      }

      v137 = v175;
      v136 = v176;
      if (v175 != v176 && __p != v112)
      {
        do
        {
          v145 = __p;
          if (__p != v112)
          {
            do
            {
              v146 = *v137;
              v147 = *v145;
              if (*(*v137 + 48) >= *(*v145 + 32) && *(v146 + 32) <= *(v147 + 48) && *(v146 + 56) >= *(v147 + 40) && *(v146 + 40) <= *(v147 + 56))
              {
                if (!sub_10027A9E0(*a6, *(a6 + 1), v146, a6[4], *(a6 + 3), v147, 0, 0, *(a6 + 4), *(a6 + 5), *(a6 + 6)))
                {
                  goto LABEL_227;
                }

                v112 = v164;
              }

              v145 += 8;
            }

            while (v145 != v112);
            v136 = v176;
          }

          v137 += 8;
        }

        while (v137 != v136);
      }
    }

    else
    {
      v161 = 0u;
      v162 = 0u;
      v116 = vnegq_f64(0);
      v117.f64[0] = NAN;
      v117.f64[1] = NAN;
      v118 = vnegq_f64(v117);
      v119 = v118;
      v120 = v116;
      do
      {
        v121 = *v113++;
        v122 = v121[2];
        v123 = v121[3];
        v124 = vcgtq_s64(v118, v122);
        v125 = vbslq_s8(v124, v122, v119);
        v126 = vbslq_s8(v124, v122, v118);
        v127 = vcgtq_s64(v126, v123);
        v119 = vbslq_s8(v127, v123, v125);
        v118 = vbslq_s8(v127, v123, v126);
        v128 = vcgtq_s64(v122, v116);
        v129 = vbslq_s8(v128, v122, v120);
        v130 = vbslq_s8(v128, v122, v116);
        v131 = vcgtq_s64(v123, v130);
        v120 = vbslq_s8(v131, v123, v129);
        v116 = vbslq_s8(v131, v123, v130);
      }

      while (v113 != v164);
      v161 = v119;
      v162 = v120;
      if (!sub_100278F1C(&v161, &v178, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) || (sub_100278F1C(&v161, &v175, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_227;
      }
    }
  }

  v139 = v178;
  v138 = v179;
  if (a5 > (v179 - v178) >> 3 || a4 > 0x63 || (v170 - v169) >> 3 < a5)
  {
    if (v178 != v179)
    {
      v140 = v170;
      if (v169 != v170)
      {
        do
        {
          v141 = v169;
          if (v169 != v140)
          {
            do
            {
              v142 = *v139;
              v143 = *v141;
              if (*(*v139 + 48) >= *(*v141 + 32) && *(v142 + 32) <= *(v143 + 48) && *(v142 + 56) >= *(v143 + 40) && *(v142 + 40) <= *(v143 + 56))
              {
                if (!sub_10027A9E0(*a6, *(a6 + 1), v142, a6[4], *(a6 + 3), v143, 0, 0, *(a6 + 4), *(a6 + 5), *(a6 + 6)))
                {
                  goto LABEL_227;
                }

                v140 = v170;
              }

              v141 += 8;
            }

            while (v141 != v140);
            v138 = v179;
          }

          v139 += 8;
        }

        while (v139 != v138);
      }
    }
  }

  else if ((sub_100278F1C(&v183, &v178, &v169, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
  {
    goto LABEL_227;
  }

  v150 = v175;
  v149 = v176;
  if (a5 <= (v176 - v175) >> 3 && a4 <= 0x63 && (v167 - v166) >> 3 >= a5)
  {
    if (sub_100278F1C(&v181, &v175, &v166, a4 + 1, a5, a6, a7, a8, a9, a10, a11))
    {
      goto LABEL_225;
    }

LABEL_227:
    v156 = 0;
    v157 = __p;
    if (!__p)
    {
      goto LABEL_229;
    }

    goto LABEL_228;
  }

  if (v175 != v176)
  {
    v151 = v167;
    if (v166 != v167)
    {
      do
      {
        v152 = v166;
        if (v166 != v151)
        {
          do
          {
            v153 = *v150;
            v154 = *v152;
            if (*(*v150 + 48) >= *(*v152 + 32) && *(v153 + 32) <= *(v154 + 48) && *(v153 + 56) >= *(v154 + 40) && *(v153 + 40) <= *(v154 + 56))
            {
              if (!sub_10027A9E0(*a6, *(a6 + 1), v153, a6[4], *(a6 + 3), v154, 0, 0, *(a6 + 4), *(a6 + 5), *(a6 + 6)))
              {
                goto LABEL_227;
              }

              v151 = v167;
            }

            v152 += 8;
          }

          while (v152 != v151);
          v149 = v176;
        }

        v150 += 8;
      }

      while (v150 != v149);
    }
  }

LABEL_225:
  v156 = 1;
  v157 = __p;
  if (__p)
  {
LABEL_228:
    v164 = v157;
    operator delete(v157);
  }

LABEL_229:
  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (v169)
  {
    v170 = v169;
    operator delete(v169);
  }

  if (v172)
  {
    v173 = v172;
    operator delete(v172);
  }

  if (v175)
  {
    v176 = v175;
    operator delete(v175);
  }

  if (v178)
  {
    v179 = v178;
    operator delete(v178);
  }

  return v156;
}